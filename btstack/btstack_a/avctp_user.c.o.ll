; ModuleID = 'avctp_user.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/avctp_user.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.user_info_t = type { %struct.user_cmd_ctrl, %struct.run_loop, [1 x %struct.conn_info], %struct.user_core_data_t, %struct.btstack_timer_source, [6 x i8], [10 x [6 x i8]], [6 x i8], i8, i8, i16, [6 x i8], i8, i32 }
%struct.user_cmd_ctrl = type { i8, i8, i8, [30 x i8], i8*, i16, i8, i8, i8, [1 x i8], [1 x %struct.sniff_ctrl_config_t], [16 x i8], [10 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, [10 x i8], i32, [6 x i8], [6 x i8] }
%struct.sniff_ctrl_config_t = type { i16, i16, i16, i16, [6 x i8] }
%struct.run_loop = type { %struct.btstack_linked_item, void (%struct.run_loop*)*, i8* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.conn_info = type { [6 x i8], i16, i16, i8, i8, [5 x i8], i8, %struct.btstack_linked_item* }
%struct.user_core_data_t = type { i8, [6 x i8], [6 x i8], [6 x i8] }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.hci_cmd_t = type { i16, i8* }
%struct.profile_cmd_handle = type { i32 (i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i8*)*, i32 (i8*)* }
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.spp_ioctrl_str = type { [6 x i8], i8, i32, i32, i8* }
%struct.hfp_ioctrl_str = type { [6 x i8], i32, i8, %union.anon }
%union.anon = type { i32, [28 x i8] }
%struct.resend_t = type { %struct.btstack_linked_item, i16, [0 x i8] }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@__user_info = internal global %struct.user_info_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !400
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [38 x i8] c"<BT-log> :get not support channel %x\0A\00", align 1
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@btstack_update_flags = external constant %struct.hci_cmd_t, align 4
@btstack_emitter_support = external local_unnamed_addr constant i8, align 1
@hid_conn_depend_on_dev_company = external local_unnamed_addr constant i8, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"current channel:%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hci_disconn_6\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"<BT-log> : disconn current channel:%x\0A\0A\00", align 1
@iap_profile_support = external local_unnamed_addr global i8, align 1
@profile_cmd_hdl_str = external local_unnamed_addr global %struct.profile_cmd_handle, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"update active addr[sco]:\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"update active addr[acl]\0A\00", align 1
@btstack_update_state = external constant %struct.hci_cmd_t, align 4
@stack_configs_app = external local_unnamed_addr global %struct._stack_config, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"<BT-log> :hfp_flag1:%d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"<BT-log> :hfp_flag2:%d\0A\0A\00", align 1
@btstack_background_state = external constant %struct.hci_cmd_t, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"HFP_INDSTA_HANG_UP\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\0A\0A=====HFP_INDSTA_ONE_CALL_ON_HELD=%d ====\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"last device addr from vm:\00", align 1
@get_current_poweron_memory_search_index.invalid_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"<BT-log> : user_info_t %d\0A\0A\00", align 1
@g_user_cmd = internal unnamed_addr global %struct.user_cmd_ctrl* null, section ".bt_stack_data", align 4, !dbg !546
@base_table = hidden local_unnamed_addr constant [6 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000], section ".bt_stack_const", align 4, !dbg !383
@.str.16 = private unnamed_addr constant [31 x i8] c"<BT-log> :spp_send_buf_len:%d\0A\00", align 1
@user_at_cmd_send_support = external local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"tws_host_timeout_get\0A\00", align 1
@bt_suspend_user_cmd_loop_resumeuser_cmd_loop_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @user_cmd_loop_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @user_cmd_loop_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @user_cmd_loop_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !389
@bt_sleep_begin = external global [0 x %struct.bt_sleep], align 4
@bt_sleep_end = external global [0 x %struct.bt_sleep], align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"<BT-log> :release pend %x\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c" --- create add:\00", align 1
@config_btstask_auto_exit_sniff = external local_unnamed_addr constant i32, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"test key, not exit sniff\0A\00", align 1
@user_interface_app = external local_unnamed_addr global %struct.user_interface_handler, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"<BT-log> :conn %x\0A\0A\00", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.25 = private unnamed_addr constant [107 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/avctp_user.c\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"ASSERT-FAILD: conn != NULL \00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"create_bt_new_conn null\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"clear remote info\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"+++++ off 0\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"[hid] send vol inc\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"[avrcp] send vol inc\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"[hid] send vol dec\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"[avrcp] send vol dec\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"send spp err.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_user_cmd_loop_resumeuser_cmd_loop_release to i8*)], section "llvm.metadata"
@str.35 = private unnamed_addr constant [42 x i8] c"<BT-log> :\0Aavdtp_a2dp to hci disconn 111\0A\00"
@str.36 = private unnamed_addr constant [44 x i8] c"<BT-log> : conn->role_type = ROLE_EMITTER \0A\00"
@str.37 = private unnamed_addr constant [42 x i8] c"<BT-log> :user_cmd_timer add timer again\0A\00"
@str.38 = private unnamed_addr constant [28 x i8] c"<BT-log> :a2dp sink connect\00"
@str.39 = private unnamed_addr constant [31 x i8] c"<BT-log> :a2dp emitter connect\00"
@str.40 = private unnamed_addr constant [27 x i8] c"<BT-log> :updata mac --- \0A\00"

; Function Attrs: nounwind optsize
define hidden void @set_stack_exiting(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !553 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !557, metadata !DIExpression()), !dbg !558
  %2 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !559
  %3 = shl i8 %0, 7, !dbg !559
  %4 = zext i8 %3 to i16, !dbg !559
  %5 = and i16 %2, -129, !dbg !559
  %6 = or i16 %5, %4, !dbg !559
  store i16 %6, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !559
  ret void, !dbg !560
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: norecurse nounwind optsize
define hidden zeroext i8 @phone_sound_ctrl_flag_detect() local_unnamed_addr #2 section ".bt_stack_code" !dbg !561 {
  %1 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !565, !tbaa !567
  %2 = add i8 %1, -1, !dbg !579
  %3 = icmp ult i8 %2, 5, !dbg !579
  br i1 %3, label %4, label %5, !dbg !579

; <label>:4:                                      ; preds = %0
  store i8 %2, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !580, !tbaa !567
  br label %5, !dbg !582

; <label>:5:                                      ; preds = %4, %0
  %6 = phi i8 [ 1, %4 ], [ 0, %0 ]
  ret i8 %6, !dbg !583
}

; Function Attrs: norecurse nounwind optsize
define hidden zeroext i8 @tws_host_timer_cnt_detect() local_unnamed_addr #2 section ".bt_stack_code" !dbg !584 {
  %1 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !585, !tbaa !587
  %2 = icmp eq i8 %1, 0, !dbg !588
  br i1 %2, label %5, label %3, !dbg !589

; <label>:3:                                      ; preds = %0
  %4 = add i8 %1, -1, !dbg !590
  store i8 %4, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !590, !tbaa !587
  br label %5, !dbg !592

; <label>:5:                                      ; preds = %3, %0
  %6 = phi i8 [ 1, %3 ], [ 0, %0 ]
  ret i8 %6, !dbg !593
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @b_create_bt_new_conn(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !599, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i16 %1, metadata !600, metadata !DIExpression()), !dbg !602
  %3 = tail call fastcc %struct.conn_info* @create_bt_new_conn(i8* %0, i16 zeroext %1) #12, !dbg !603
  %4 = icmp ne %struct.conn_info* %3, null, !dbg !605
  %5 = zext i1 %4 to i8, !dbg !605
  ret i8 %5, !dbg !606
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.conn_info* @create_bt_new_conn(i8*, i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !607 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !614, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i16 %1, metadata !615, metadata !DIExpression()), !dbg !618
  %3 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !619, !tbaa !621
  %4 = and i8 %3, 32, !dbg !619
  %5 = icmp eq i8 %4, 0, !dbg !619
  br i1 %5, label %9, label %6, !dbg !622

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0)) #12, !dbg !623
  %8 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !621
  br label %9, !dbg !623

; <label>:9:                                      ; preds = %6, %2
  %10 = phi i8 [ %3, %2 ], [ %8, %6 ], !dbg !625
  %11 = and i8 %10, 64, !dbg !625
  %12 = icmp eq i8 %11, 0, !dbg !625
  br i1 %12, label %14, label %13, !dbg !627

; <label>:13:                                     ; preds = %9
  tail call void @put_buf(i8* %0, i32 6) #13, !dbg !628
  br label %14, !dbg !628

; <label>:14:                                     ; preds = %13, %9
  %15 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !630
  call void @llvm.dbg.value(metadata %struct.conn_info* %15, metadata !616, metadata !DIExpression()), !dbg !631
  %16 = icmp eq %struct.conn_info* %15, null, !dbg !632
  br i1 %16, label %17, label %18, !dbg !634

; <label>:17:                                     ; preds = %14
  br label %20, !dbg !635

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %15, i32 0, i32 1, !dbg !640
  store i16 %1, i16* %19, align 2, !dbg !642, !tbaa !643
  br label %49, !dbg !645

; <label>:20:                                     ; preds = %45, %17
  %21 = phi %struct.conn_info* [ %46, %45 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %17 ]
  %22 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %21, i32 0, i32 5, !dbg !635
  %23 = bitcast [5 x i8]* %22 to i40*, !dbg !635
  %24 = load i40, i40* %23, align 4, !dbg !635
  %25 = and i40 %24, 536870912, !dbg !646
  %26 = icmp eq i40 %25, 0, !dbg !646
  br i1 %26, label %27, label %45, !dbg !647

; <label>:27:                                     ; preds = %20
  %28 = or i40 %24, 536870912, !dbg !648
  store i40 %28, i40* %23, align 4, !dbg !648
  %29 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !650
  %30 = add i16 %29, 1, !dbg !650
  %31 = and i16 %30, 7, !dbg !650
  %32 = and i16 %29, -8, !dbg !650
  %33 = or i16 %31, %32, !dbg !650
  store i16 %33, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !650
  %34 = load i40, i40* %23, align 4, !dbg !651
  %35 = and i40 %34, -1044496, !dbg !651
  %36 = or i40 %35, 5, !dbg !651
  store i40 %36, i40* %23, align 4, !dbg !652
  %37 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %21, i32 0, i32 0, i32 0, !dbg !653
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* %0, i32 6, i32 1, i1 false), !dbg !653
  %38 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %21, i32 0, i32 3, !dbg !654
  store i8 0, i8* %38, align 2, !dbg !655, !tbaa !656
  %39 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %21, i32 0, i32 1, !dbg !657
  store i16 %1, i16* %39, align 2, !dbg !658, !tbaa !643
  %40 = and i40 %36, -515397120011, !dbg !659
  store i40 %40, i40* %23, align 4, !dbg !659
  %41 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !660, !tbaa !661
  %42 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %41, i32 0, i32 9, !dbg !662
  %43 = load i32, i32* %42, align 1, !dbg !663
  %44 = or i32 %43, 4194304, !dbg !663
  store i32 %44, i32* %42, align 1, !dbg !663
  br label %49, !dbg !664

; <label>:45:                                     ; preds = %20
  %46 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %21, i32 1, !dbg !665
  call void @llvm.dbg.value(metadata %struct.conn_info* %46, metadata !616, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata %struct.conn_info* %46, metadata !616, metadata !DIExpression()), !dbg !631
  %47 = icmp ult %struct.conn_info* %46, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !667
  br i1 %47, label %20, label %48, !dbg !669, !llvm.loop !671

; <label>:48:                                     ; preds = %45
  br label %49, !dbg !674

; <label>:49:                                     ; preds = %48, %27, %18
  %50 = phi %struct.conn_info* [ %15, %18 ], [ %21, %27 ], [ null, %48 ]
  ret %struct.conn_info* %50, !dbg !674
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @free_conn_for_addr(i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !675 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !679, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i8 %1, metadata !680, metadata !DIExpression()), !dbg !683
  %3 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !684
  call void @llvm.dbg.value(metadata %struct.conn_info* %3, metadata !681, metadata !DIExpression()), !dbg !685
  %4 = icmp ne i8 %1, 0, !dbg !686
  %5 = icmp ne %struct.conn_info* %3, null, !dbg !688
  %6 = and i1 %4, %5, !dbg !691
  br i1 %6, label %7, label %15, !dbg !691

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 5, !dbg !692
  %9 = bitcast [5 x i8]* %8 to i40*, !dbg !692
  %10 = load i40, i40* %9, align 4, !dbg !692
  %11 = and i40 %10, 274877906944, !dbg !695
  %12 = icmp eq i40 %11, 0, !dbg !695
  br i1 %12, label %14, label %13, !dbg !696

; <label>:13:                                     ; preds = %7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 7, i32 0), i8* %0, i32 6, i32 1, i1 false), !dbg !697
  br label %15, !dbg !699

; <label>:14:                                     ; preds = %7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 0), i8* %0, i32 6, i32 1, i1 false), !dbg !700
  br label %15

; <label>:15:                                     ; preds = %14, %13, %2
  br i1 %5, label %16, label %27, !dbg !702

; <label>:16:                                     ; preds = %15
  %17 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 5, !dbg !703
  %18 = bitcast [5 x i8]* %17 to i40*, !dbg !703
  %19 = load i40, i40* %18, align 4, !dbg !706
  %20 = and i40 %19, -536870913, !dbg !706
  store i40 %20, i40* %18, align 4, !dbg !706
  %21 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !707
  %22 = add i16 %21, 7, !dbg !707
  %23 = and i16 %22, 7, !dbg !707
  %24 = and i16 %21, -8, !dbg !707
  %25 = or i16 %23, %24, !dbg !707
  store i16 %25, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !707
  %26 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 0, i32 0, !dbg !708
  tail call void @llvm.memset.p0i8.i32(i8* %26, i8 0, i32 24, i32 4, i1 false), !dbg !708
  br label %27, !dbg !709

; <label>:27:                                     ; preds = %16, %15
  br label %28, !dbg !710

; <label>:28:                                     ; preds = %37, %27
  %29 = phi %struct.conn_info* [ %38, %37 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %27 ]
  %30 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 5, !dbg !710
  %31 = bitcast [5 x i8]* %30 to i40*, !dbg !710
  %32 = load i40, i40* %31, align 4, !dbg !710
  %33 = and i40 %32, 536870912, !dbg !715
  %34 = icmp eq i40 %33, 0, !dbg !715
  br i1 %34, label %37, label %35, !dbg !716

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !717
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0), i8* %36, i32 6, i32 4, i1 false), !dbg !717
  br label %41, !dbg !719

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 1, !dbg !720
  call void @llvm.dbg.value(metadata %struct.conn_info* %38, metadata !681, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata %struct.conn_info* %38, metadata !681, metadata !DIExpression()), !dbg !685
  %39 = icmp ult %struct.conn_info* %38, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !722
  br i1 %39, label %28, label %40, !dbg !724, !llvm.loop !726

; <label>:40:                                     ; preds = %37
  br label %41, !dbg !729

; <label>:41:                                     ; preds = %40, %35
  %42 = phi i8 [ 1, %35 ], [ 0, %40 ]
  ret i8 %42, !dbg !729
}

; Function Attrs: nounwind optsize readonly
define internal fastcc %struct.conn_info* @get_conn_for_addr(i8* nocapture readonly) unnamed_addr #3 section ".bt_stack_code" !dbg !730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !734, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !735, metadata !DIExpression()), !dbg !737
  br label %2, !dbg !738

; <label>:2:                                      ; preds = %13, %1
  %3 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %1 ], [ %14, %13 ]
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 0, i32 0, !dbg !741
  %5 = tail call i32 @memcmp(i8* %0, i8* %4, i32 6) #12, !dbg !741
  %6 = icmp eq i32 %5, 0, !dbg !741
  br i1 %6, label %7, label %13, !dbg !745

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 5, !dbg !746
  %9 = bitcast [5 x i8]* %8 to i40*, !dbg !746
  %10 = load i40, i40* %9, align 4, !dbg !746
  %11 = and i40 %10, 536870912, !dbg !748
  %12 = icmp eq i40 %11, 0, !dbg !748
  br i1 %12, label %13, label %16, !dbg !749

; <label>:13:                                     ; preds = %7, %2
  %14 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 1, !dbg !751
  call void @llvm.dbg.value(metadata %struct.conn_info* %14, metadata !735, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata %struct.conn_info* %14, metadata !735, metadata !DIExpression()), !dbg !737
  %15 = icmp ult %struct.conn_info* %14, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !753
  br i1 %15, label %2, label %16, !dbg !738, !llvm.loop !755

; <label>:16:                                     ; preds = %13, %7
  %17 = phi %struct.conn_info* [ %3, %7 ], [ null, %13 ]
  ret %struct.conn_info* %17, !dbg !758
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #4

; Function Attrs: nounwind optsize readonly
define hidden %struct.conn_info* @get_bt_current_conn(i8 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !759 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !763, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !766, metadata !DIExpression()), !dbg !769
  switch i8 %0, label %51 [
    i8 1, label %3
    i8 0, label %2
  ], !dbg !770

; <label>:2:                                      ; preds = %1
  br label %23, !dbg !771

; <label>:3:                                      ; preds = %1
  br label %4, !dbg !779

; <label>:4:                                      ; preds = %20, %3
  %5 = phi %struct.conn_info* [ %21, %20 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %3 ]
  %6 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !779
  %7 = bitcast [5 x i8]* %6 to i40*, !dbg !779
  %8 = load i40, i40* %7, align 4, !dbg !779
  %9 = and i40 %8, 536870912, !dbg !785
  %10 = icmp eq i40 %9, 0, !dbg !785
  br i1 %10, label %20, label %11, !dbg !786

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 1, !dbg !787
  %13 = load i16, i16* %12, align 2, !dbg !787, !tbaa !643
  %14 = icmp eq i16 %13, 0, !dbg !789
  br i1 %14, label %20, label %15, !dbg !790

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 2, !dbg !792
  %17 = load i16, i16* %16, align 4, !dbg !792, !tbaa !795
  %18 = and i16 %17, 8320, !dbg !796
  %19 = icmp eq i16 %18, 0, !dbg !796
  br i1 %19, label %20, label %53, !dbg !797

; <label>:20:                                     ; preds = %15, %11, %4
  %21 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 1, !dbg !798
  call void @llvm.dbg.value(metadata %struct.conn_info* %21, metadata !765, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata %struct.conn_info* %21, metadata !765, metadata !DIExpression()), !dbg !800
  %22 = icmp ult %struct.conn_info* %21, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !801
  br i1 %22, label %4, label %53, !dbg !803, !llvm.loop !805

; <label>:23:                                     ; preds = %44, %2
  %24 = phi %struct.conn_info* [ %46, %44 ], [ null, %2 ]
  %25 = phi %struct.conn_info* [ %47, %44 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %2 ]
  %26 = phi i32 [ %45, %44 ], [ 0, %2 ]
  %27 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %25, i32 0, i32 5, !dbg !771
  %28 = bitcast [5 x i8]* %27 to i40*, !dbg !771
  %29 = load i40, i40* %28, align 4, !dbg !771
  %30 = and i40 %29, 536870912, !dbg !808
  %31 = icmp eq i40 %30, 0, !dbg !808
  br i1 %31, label %44, label %32, !dbg !809

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %25, i32 0, i32 1, !dbg !810
  %34 = load i16, i16* %33, align 2, !dbg !810, !tbaa !643
  %35 = icmp eq i16 %34, 0, !dbg !812
  br i1 %35, label %44, label %36, !dbg !813

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %25, i32 0, i32 2, !dbg !815
  %38 = load i16, i16* %37, align 4, !dbg !815, !tbaa !795
  %39 = and i16 %38, 8320, !dbg !818
  %40 = icmp eq i16 %39, 0, !dbg !818
  call void @llvm.dbg.value(metadata %struct.conn_info* %25, metadata !766, metadata !DIExpression()), !dbg !769
  %41 = zext i1 %40 to i32, !dbg !819
  %42 = add nsw i32 %41, %26, !dbg !819
  %43 = select i1 %40, %struct.conn_info* %25, %struct.conn_info* %24, !dbg !819
  br label %44, !dbg !819

; <label>:44:                                     ; preds = %36, %32, %23
  %45 = phi i32 [ %26, %32 ], [ %26, %23 ], [ %42, %36 ]
  %46 = phi %struct.conn_info* [ %24, %32 ], [ %24, %23 ], [ %43, %36 ]
  call void @llvm.dbg.value(metadata %struct.conn_info* %46, metadata !766, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i32 %45, metadata !764, metadata !DIExpression()), !dbg !768
  %47 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %25, i32 1, !dbg !820
  call void @llvm.dbg.value(metadata %struct.conn_info* %47, metadata !765, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata %struct.conn_info* %46, metadata !766, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata %struct.conn_info* %47, metadata !765, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i32 %45, metadata !764, metadata !DIExpression()), !dbg !768
  %48 = icmp ult %struct.conn_info* %47, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !822
  br i1 %48, label %23, label %49, !dbg !824, !llvm.loop !826

; <label>:49:                                     ; preds = %44
  switch i32 %45, label %51 [
    i32 0, label %55
    i32 1, label %50
  ], !dbg !829

; <label>:50:                                     ; preds = %49
  br label %55, !dbg !830

; <label>:51:                                     ; preds = %49, %1
  %52 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0)) #12, !dbg !834
  br label %55, !dbg !835

; <label>:53:                                     ; preds = %20, %15
  %54 = phi %struct.conn_info* [ null, %20 ], [ %5, %15 ]
  br label %55, !dbg !836

; <label>:55:                                     ; preds = %53, %51, %50, %49
  %56 = phi %struct.conn_info* [ %46, %50 ], [ %52, %51 ], [ null, %49 ], [ %54, %53 ]
  ret %struct.conn_info* %56, !dbg !836
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @is_bt_conn_hfp_hangup(i8* nocapture readonly) local_unnamed_addr #3 section ".bt_stack_code" !dbg !837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !841, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !842, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !842, metadata !DIExpression()), !dbg !844
  br label %2, !dbg !845

; <label>:2:                                      ; preds = %20, %1
  %3 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %1 ], [ %21, %20 ]
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 0, i32 0, !dbg !848
  %5 = tail call i32 @memcmp(i8* %0, i8* %4, i32 6) #12, !dbg !848
  %6 = icmp eq i32 %5, 0, !dbg !848
  br i1 %6, label %7, label %20, !dbg !852

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 5, !dbg !853
  %9 = bitcast [5 x i8]* %8 to i40*, !dbg !853
  %10 = load i40, i40* %9, align 4, !dbg !853
  %11 = and i40 %10, 536870912, !dbg !855
  %12 = icmp eq i40 %11, 0, !dbg !855
  br i1 %12, label %20, label %13, !dbg !856

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 1, !dbg !857
  %15 = load i16, i16* %14, align 2, !dbg !857, !tbaa !643
  %16 = icmp eq i16 %15, 0, !dbg !859
  %17 = and i40 %10, 15, !dbg !860
  %18 = icmp eq i40 %17, 5, !dbg !860
  %19 = or i1 %18, %16, !dbg !863
  br i1 %19, label %20, label %23, !dbg !863

; <label>:20:                                     ; preds = %13, %7, %2
  %21 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 1, !dbg !865
  call void @llvm.dbg.value(metadata %struct.conn_info* %21, metadata !842, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata %struct.conn_info* %21, metadata !842, metadata !DIExpression()), !dbg !844
  %22 = icmp ult %struct.conn_info* %21, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !867
  br i1 %22, label %2, label %23, !dbg !845, !llvm.loop !869

; <label>:23:                                     ; preds = %20, %13
  %24 = phi i8 [ 0, %13 ], [ 1, %20 ]
  ret i8 %24, !dbg !872
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #5

; Function Attrs: norecurse nounwind optsize
define weak hidden void @btstack_avrcp_ch_creat_ok() local_unnamed_addr #2 section ".bt_stack_code" !dbg !873 {
  ret void, !dbg !876
}

; Function Attrs: nounwind optsize
define hidden void @updata_profile_channels_status(i8*, i32, i32, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !877 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !881, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i32 %1, metadata !882, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32 %2, metadata !883, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8 %3, metadata !884, metadata !DIExpression()), !dbg !889
  %5 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !890
  call void @llvm.dbg.value(metadata %struct.conn_info* %5, metadata !885, metadata !DIExpression()), !dbg !891
  %6 = icmp eq %struct.conn_info* %5, null, !dbg !892
  br i1 %6, label %385, label %7, !dbg !894

; <label>:7:                                      ; preds = %4
  switch i32 %1, label %367 [
    i32 2, label %8
    i32 1, label %19
    i32 0, label %267
  ], !dbg !895

; <label>:8:                                      ; preds = %7
  %9 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !896, !tbaa !621
  %10 = icmp slt i8 %9, 0, !dbg !896
  br i1 %10, label %11, label %13, !dbg !899

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %2) #12, !dbg !900
  br label %13, !dbg !900

; <label>:13:                                     ; preds = %11, %8
  %14 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 3, !dbg !902
  %15 = load i8, i8* %14, align 2, !dbg !903, !tbaa !656
  %16 = zext i8 %15 to i32, !dbg !903
  %17 = or i32 %16, %2, !dbg !903
  %18 = trunc i32 %17 to i8, !dbg !903
  store i8 %18, i8* %14, align 2, !dbg !903, !tbaa !656
  br label %367, !dbg !904

; <label>:19:                                     ; preds = %7
  %20 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !905, !tbaa !661
  %21 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %20, i32 0, i32 5, !dbg !907
  %22 = load i16, i16* %21, align 4, !dbg !907, !tbaa !908
  %23 = and i16 %22, 48, !dbg !910
  %24 = icmp eq i16 %23, 0, !dbg !910
  br i1 %24, label %38, label %25, !dbg !910

; <label>:25:                                     ; preds = %19
  %26 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !911, !tbaa !621
  %27 = icmp slt i8 %26, 0, !dbg !911
  br i1 %27, label %28, label %30, !dbg !914

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.36, i32 0, i32 0)), !dbg !915
  br label %30, !dbg !915

; <label>:30:                                     ; preds = %28, %25
  %31 = and i32 %2, 8320, !dbg !917
  %32 = icmp eq i32 %31, 0, !dbg !917
  br i1 %32, label %38, label %33, !dbg !919

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !920
  %35 = bitcast [5 x i8]* %34 to i40*, !dbg !920
  %36 = load i40, i40* %35, align 4, !dbg !922
  %37 = or i40 %36, 274877906944, !dbg !922
  store i40 %37, i40* %35, align 4, !dbg !922
  br label %38, !dbg !923

; <label>:38:                                     ; preds = %33, %30, %19
  %39 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 2, !dbg !924
  %40 = load i16, i16* %39, align 4, !dbg !924, !tbaa !795
  %41 = icmp eq i16 %40, 0, !dbg !926
  br i1 %41, label %42, label %123, !dbg !927

; <label>:42:                                     ; preds = %38
  store i8 10, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !928, !tbaa !587
  %43 = tail call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #13, !dbg !932
  %44 = icmp ne i8 %3, 0, !dbg !933
  br i1 %44, label %45, label %47, !dbg !935

; <label>:45:                                     ; preds = %42
  %46 = tail call i32 @user_send_cmd_prepare(i32 11, i16 zeroext 0, i8* null) #12, !dbg !936
  br label %47, !dbg !938

; <label>:47:                                     ; preds = %45, %42
  %48 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !939
  %49 = and i16 %48, 7, !dbg !939
  %50 = icmp eq i16 %49, 1, !dbg !941
  br i1 %50, label %51, label %54, !dbg !942

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !943
  tail call void @update_bt_current_status(i8* %52, i8 zeroext 6, i8 zeroext 45) #12, !dbg !945
  %53 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2
  br label %54, !dbg !946

; <label>:54:                                     ; preds = %51, %47
  %55 = phi i16 [ %53, %51 ], [ %48, %47 ], !dbg !947
  %56 = and i16 %55, 7, !dbg !947
  %57 = icmp eq i16 %56, 2, !dbg !949
  br i1 %57, label %58, label %60, !dbg !950

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !951
  tail call void @update_bt_current_status(i8* %59, i8 zeroext 7, i8 zeroext 45) #12, !dbg !953
  br label %60, !dbg !954

; <label>:60:                                     ; preds = %58, %54
  %61 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !955
  %62 = bitcast [5 x i8]* %61 to i40*, !dbg !955
  %63 = load i40, i40* %62, align 4, !dbg !955
  %64 = lshr i40 %63, 32, !dbg !955
  %65 = trunc i40 %64 to i32, !dbg !955
  %66 = and i32 %65, 1, !dbg !955
  tail call void @bt_event_update_to_user(i8* %0, i32 1129270784, i8 zeroext 29, i32 %66) #13, !dbg !956
  %67 = load i40, i40* %62, align 4, !dbg !957
  %68 = lshr i40 %67, 32, !dbg !957
  %69 = trunc i40 %68 to i32, !dbg !957
  %70 = and i32 %69, 1, !dbg !957
  %71 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 29, i32 %70, i8* %0) #13, !dbg !958
  %72 = icmp eq i32 %2, 2, !dbg !959
  %73 = and i1 %72, %44, !dbg !961
  br i1 %73, label %74, label %108, !dbg !961

; <label>:74:                                     ; preds = %60
  %75 = load i40, i40* %62, align 4, !dbg !962
  %76 = and i40 %75, 4294967296, !dbg !967
  %77 = icmp eq i40 %76, 0, !dbg !967
  br i1 %77, label %97, label %78, !dbg !968

; <label>:78:                                     ; preds = %74
  %79 = tail call i32 @__bt_profile_enable(i32 4) #13, !dbg !969
  %80 = icmp eq i32 %79, 0, !dbg !969
  br i1 %80, label %92, label %81, !dbg !972

; <label>:81:                                     ; preds = %78
  %82 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !973, !tbaa !661
  %83 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %82, i32 0, i32 9, !dbg !976
  %84 = load i32, i32* %83, align 1, !dbg !976
  %85 = and i32 %84, 8388608, !dbg !976
  %86 = icmp eq i32 %85, 0, !dbg !977
  br i1 %86, label %87, label %89, !dbg !978

; <label>:87:                                     ; preds = %81
  %88 = tail call i32 @user_send_cmd_prepare(i32 65, i16 zeroext 0, i8* null) #12, !dbg !979
  br label %128, !dbg !981

; <label>:89:                                     ; preds = %81
  %90 = load i40, i40* %62, align 4, !dbg !982
  %91 = and i40 %90, -4294967297, !dbg !982
  store i40 %91, i40* %62, align 4, !dbg !982
  br label %128

; <label>:92:                                     ; preds = %78
  %93 = tail call i32 @__bt_profile_enable(i32 8) #13, !dbg !984
  %94 = icmp eq i32 %93, 0, !dbg !984
  br i1 %94, label %128, label %95, !dbg !987

; <label>:95:                                     ; preds = %92
  %96 = tail call i32 @user_send_cmd_prepare(i32 62, i16 zeroext 0, i8* null) #12, !dbg !989
  br label %128, !dbg !991

; <label>:97:                                     ; preds = %74
  %98 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !992, !tbaa !661
  %99 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %98, i32 0, i32 9, !dbg !995
  %100 = load i32, i32* %99, align 1, !dbg !995
  %101 = and i32 %100, 8388608, !dbg !995
  %102 = icmp eq i32 %101, 0, !dbg !996
  br i1 %102, label %103, label %106, !dbg !997

; <label>:103:                                    ; preds = %97
  %104 = and i40 %75, -15728641, !dbg !998
  %105 = or i40 %104, 9437184, !dbg !998
  store i40 %105, i40* %62, align 4, !dbg !998
  br label %106, !dbg !1000

; <label>:106:                                    ; preds = %103, %97
  %107 = tail call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #12, !dbg !1001
  br label %128

; <label>:108:                                    ; preds = %60
  %109 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1002, !tbaa !621
  %110 = icmp ne i8 %109, 0, !dbg !1002
  %111 = icmp eq i32 %2, 128, !dbg !1004
  %112 = and i1 %111, %110, !dbg !1007
  br i1 %112, label %113, label %123, !dbg !1007

; <label>:113:                                    ; preds = %108
  %114 = load i40, i40* %62, align 4, !dbg !1008
  %115 = and i40 %114, 4294967296, !dbg !1010
  %116 = icmp eq i40 %115, 0, !dbg !1010
  br i1 %116, label %128, label %117, !dbg !1011

; <label>:117:                                    ; preds = %113
  %118 = load i16, i16* %39, align 4, !dbg !1013, !tbaa !795
  %119 = and i16 %118, 8192, !dbg !1016
  %120 = icmp eq i16 %119, 0, !dbg !1016
  br i1 %120, label %121, label %128, !dbg !1017

; <label>:121:                                    ; preds = %117
  %122 = tail call i32 @user_emitter_cmd_prepare(i32 65, i16 zeroext 0, i8* null) #12, !dbg !1018
  br label %128, !dbg !1020

; <label>:123:                                    ; preds = %108, %38
  %124 = icmp eq i32 %2, 16, !dbg !1021
  br i1 %124, label %125, label %128, !dbg !1023

; <label>:125:                                    ; preds = %123
  %126 = load i16, i16* %39, align 4, !dbg !1024, !tbaa !795
  %127 = icmp eq i16 %126, 0, !dbg !1026
  br i1 %127, label %128, label %135, !dbg !1027

; <label>:128:                                    ; preds = %125, %123, %121, %117, %113, %106, %95, %92, %89, %87
  %129 = load i16, i16* %39, align 4, !dbg !1028, !tbaa !795
  %130 = and i16 %129, 16, !dbg !1030
  %131 = icmp ne i16 %130, 0, !dbg !1030
  %132 = load i8, i8* @hid_conn_depend_on_dev_company, align 1, !dbg !1031
  %133 = icmp eq i8 %132, 1, !dbg !1034
  %134 = and i1 %131, %133, !dbg !1035
  br i1 %134, label %138, label %151, !dbg !1035

; <label>:135:                                    ; preds = %125
  %136 = load i8, i8* @hid_conn_depend_on_dev_company, align 1, !dbg !1031, !tbaa !621
  %137 = icmp eq i8 %136, 1, !dbg !1034
  br i1 %137, label %138, label %151, !dbg !1037

; <label>:138:                                    ; preds = %135, %128
  %139 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1038
  %140 = bitcast [5 x i8]* %139 to i40*, !dbg !1038
  %141 = load i40, i40* %140, align 4, !dbg !1038
  %142 = and i40 %141, 137438953472, !dbg !1040
  %143 = icmp eq i40 %142, 0, !dbg !1040
  br i1 %143, label %144, label %151, !dbg !1041

; <label>:144:                                    ; preds = %138
  %145 = tail call zeroext i8 @remote_dev_company_ioctrl(i8* %0, i8 zeroext 0, i8 zeroext 0) #13, !dbg !1043
  %146 = icmp eq i8 %145, 2, !dbg !1046
  br i1 %146, label %151, label %147, !dbg !1047

; <label>:147:                                    ; preds = %144
  %148 = load i40, i40* %140, align 4, !dbg !1048
  %149 = or i40 %148, 137438953472, !dbg !1048
  store i40 %149, i40* %140, align 4, !dbg !1048
  %150 = tail call i32 @user_send_cmd_prepare(i32 81, i16 zeroext 0, i8* null) #12, !dbg !1050
  br label %151, !dbg !1051

; <label>:151:                                    ; preds = %147, %144, %138, %135, %128
  %152 = phi i8 [ %132, %128 ], [ 1, %144 ], [ %136, %135 ], [ 1, %138 ], [ 1, %147 ], !dbg !1052
  %153 = load i16, i16* %39, align 4, !dbg !1058, !tbaa !795
  %154 = zext i16 %153 to i32, !dbg !1058
  %155 = or i32 %154, %2, !dbg !1058
  %156 = trunc i32 %155 to i16, !dbg !1058
  store i16 %156, i16* %39, align 4, !dbg !1058, !tbaa !795
  call void @llvm.dbg.value(metadata i32 2, metadata !1059, metadata !DIExpression()), !dbg !1064
  %157 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !1066, !tbaa !587
  %158 = icmp eq i8 %157, 0, !dbg !1068
  br i1 %158, label %161, label %159, !dbg !1069

; <label>:159:                                    ; preds = %151
  %160 = add i8 %157, 2, !dbg !1070
  store i8 %160, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !1070, !tbaa !587
  br label %161, !dbg !1072

; <label>:161:                                    ; preds = %159, %151
  %162 = and i32 %155, 65535, !dbg !1073
  %163 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %162) #12, !dbg !1074
  switch i32 %2, label %190 [
    i32 2, label %164
    i32 4, label %172
  ], !dbg !1075

; <label>:164:                                    ; preds = %161
  %165 = tail call i32 @__bt_profile_enable(i32 4) #13, !dbg !1077
  %166 = icmp eq i32 %165, 0, !dbg !1077
  br i1 %166, label %167, label %239, !dbg !1079

; <label>:167:                                    ; preds = %164
  %168 = tail call i32 @__bt_profile_enable(i32 16) #13, !dbg !1080
  %169 = icmp eq i32 %168, 0, !dbg !1080
  br i1 %169, label %239, label %170, !dbg !1081

; <label>:170:                                    ; preds = %167
  %171 = tail call i32 @user_send_cmd_prepare(i32 77, i16 zeroext 0, i8* null) #12, !dbg !1083
  br label %239, !dbg !1085

; <label>:172:                                    ; preds = %161
  %173 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1086
  %174 = bitcast [5 x i8]* %173 to i40*, !dbg !1086
  %175 = load i40, i40* %174, align 4, !dbg !1087
  %176 = and i40 %175, -15728641, !dbg !1087
  store i40 %176, i40* %174, align 4, !dbg !1087
  %177 = icmp eq i8 %3, 0, !dbg !1088
  %178 = and i40 %175, 4294967296, !dbg !1089
  %179 = icmp eq i40 %178, 0, !dbg !1089
  %180 = or i1 %177, %179, !dbg !1091
  br i1 %180, label %222, label %181, !dbg !1091

; <label>:181:                                    ; preds = %172
  %182 = icmp eq i8 %152, 1, !dbg !1092
  br i1 %182, label %183, label %188, !dbg !1093

; <label>:183:                                    ; preds = %181
  %184 = tail call zeroext i8 @remote_dev_company_ioctrl(i8* %0, i8 zeroext 0, i8 zeroext 0) #13, !dbg !1094
  %185 = icmp eq i8 %184, 2, !dbg !1097
  br i1 %185, label %186, label %222, !dbg !1098

; <label>:186:                                    ; preds = %183
  %187 = tail call i32 @user_send_cmd_prepare(i32 77, i16 zeroext 0, i8* null) #12, !dbg !1099
  br label %222, !dbg !1101

; <label>:188:                                    ; preds = %181
  %189 = tail call i32 @user_send_cmd_prepare(i32 77, i16 zeroext 0, i8* null) #12, !dbg !1102
  br label %222

; <label>:190:                                    ; preds = %161
  %191 = and i32 %2, 32, !dbg !1104
  %192 = icmp eq i32 %191, 0, !dbg !1104
  br i1 %192, label %216, label %193, !dbg !1106

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1107
  %195 = bitcast [5 x i8]* %194 to i40*, !dbg !1107
  %196 = load i40, i40* %195, align 4, !dbg !1107
  %197 = lshr i40 %196, 35, !dbg !1107
  %198 = trunc i40 %197 to i8, !dbg !1107
  %199 = and i8 %198, 3, !dbg !1107
  %200 = icmp eq i8 %199, 0, !dbg !1110
  br i1 %200, label %209, label %201, !dbg !1111

; <label>:201:                                    ; preds = %193
  %202 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1112, !tbaa !621
  %203 = icmp slt i8 %202, 0, !dbg !1112
  br i1 %203, label %204, label %206, !dbg !1115

; <label>:204:                                    ; preds = %201
  %205 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.35, i32 0, i32 0)), !dbg !1116
  br label %206, !dbg !1116

; <label>:206:                                    ; preds = %204, %201
  %207 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 1, !dbg !1118
  %208 = load i16, i16* %207, align 2, !dbg !1118, !tbaa !643
  tail call void @hci_disconnect_cmd(i16 zeroext %208, i8 zeroext 19) #13, !dbg !1119
  br label %216, !dbg !1120

; <label>:209:                                    ; preds = %193
  %210 = and i8 %198, 2, !dbg !1121
  %211 = or i8 %210, 1, !dbg !1121
  %212 = zext i8 %211 to i40, !dbg !1121
  %213 = shl nuw nsw i40 %212, 35, !dbg !1121
  %214 = and i40 %196, -103079215105, !dbg !1121
  %215 = or i40 %213, %214, !dbg !1121
  store i40 %215, i40* %195, align 4, !dbg !1121
  br label %216

; <label>:216:                                    ; preds = %209, %206, %190
  %217 = and i32 %2, 4, !dbg !1123
  %218 = icmp eq i32 %217, 0, !dbg !1123
  br i1 %218, label %239, label %219, !dbg !1125

; <label>:219:                                    ; preds = %216
  %220 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1126
  %221 = bitcast [5 x i8]* %220 to i40*, !dbg !1126
  br label %222, !dbg !1125

; <label>:222:                                    ; preds = %219, %188, %186, %183, %172
  %223 = phi i40* [ %221, %219 ], [ %174, %172 ], [ %174, %183 ], [ %174, %186 ], [ %174, %188 ], !dbg !1126
  %224 = tail call i32 @update_multi_bd_status(i8* %0, i8 zeroext 14, i8 zeroext -1) #13, !dbg !1128
  %225 = load i16, i16* %39, align 4, !dbg !1129, !tbaa !795
  %226 = zext i16 %225 to i32, !dbg !1130
  tail call void @bt_event_update_to_user(i8* %0, i32 1129270784, i8 zeroext 39, i32 %226) #13, !dbg !1131
  %227 = load i16, i16* %39, align 4, !dbg !1132, !tbaa !795
  %228 = zext i16 %227 to i32, !dbg !1133
  %229 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 39, i32 %228, i8* %0) #13, !dbg !1134
  %230 = load i40, i40* %223, align 4, !dbg !1135
  %231 = lshr i40 %230, 35, !dbg !1135
  %232 = trunc i40 %231 to i8, !dbg !1135
  %233 = and i8 %232, 1, !dbg !1135
  %234 = or i8 %233, 2, !dbg !1135
  %235 = zext i8 %234 to i40, !dbg !1135
  %236 = shl nuw nsw i40 %235, 35, !dbg !1135
  %237 = and i40 %230, -103079215105, !dbg !1135
  %238 = or i40 %236, %237, !dbg !1135
  store i40 %238, i40* %223, align 4, !dbg !1135
  br label %239, !dbg !1136

; <label>:239:                                    ; preds = %222, %216, %170, %167, %164
  %240 = load i16, i16* %39, align 4, !dbg !1137, !tbaa !795
  %241 = zext i16 %240 to i32, !dbg !1139
  %242 = and i32 %241, 4, !dbg !1140
  %243 = icmp eq i32 %242, 0, !dbg !1140
  %244 = and i32 %241, 8224, !dbg !1141
  %245 = icmp eq i32 %244, 0, !dbg !1141
  %246 = or i1 %243, %245, !dbg !1143
  br i1 %246, label %258, label %247, !dbg !1143

; <label>:247:                                    ; preds = %239
  %248 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1144
  %249 = bitcast [5 x i8]* %248 to i40*, !dbg !1144
  %250 = load i40, i40* %249, align 4, !dbg !1146
  %251 = and i40 %250, -103079215105, !dbg !1146
  store i40 %251, i40* %249, align 4, !dbg !1146
  %252 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1147, !tbaa !621
  %253 = icmp eq i8 %252, 0, !dbg !1147
  br i1 %253, label %258, label %254, !dbg !1149

; <label>:254:                                    ; preds = %247
  %255 = and i40 %250, -103094943745, !dbg !1150
  %256 = or i40 %255, 6291456, !dbg !1150
  store i40 %256, i40* %249, align 4, !dbg !1150
  %257 = tail call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #12, !dbg !1152
  br label %258, !dbg !1153

; <label>:258:                                    ; preds = %254, %247, %239
  %259 = and i32 %2, 8, !dbg !1154
  %260 = icmp eq i32 %259, 0, !dbg !1154
  br i1 %260, label %262, label %261, !dbg !1156

; <label>:261:                                    ; preds = %258
  tail call void @btstack_avrcp_ch_creat_ok() #12, !dbg !1157
  br label %262, !dbg !1159

; <label>:262:                                    ; preds = %261, %258
  %263 = icmp eq i8 %3, 0, !dbg !1160
  br i1 %263, label %367, label %264, !dbg !1162

; <label>:264:                                    ; preds = %262
  switch i32 %2, label %367 [
    i32 4096, label %265
    i32 128, label %265
    i32 2, label %265
    i32 1, label %265
  ], !dbg !1163

; <label>:265:                                    ; preds = %264, %264, %264, %264
  %266 = tail call i32 @user_send_cmd_prepare(i32 11, i16 zeroext 0, i8* null) #12, !dbg !1166
  br label %367, !dbg !1168

; <label>:267:                                    ; preds = %7
  switch i32 %2, label %282 [
    i32 128, label %268
    i32 2, label %268
  ], !dbg !1169

; <label>:268:                                    ; preds = %267, %267
  %269 = tail call i32 @user_at_cmd_free(%struct.conn_info* nonnull %5) #12, !dbg !1171
  %270 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1173
  %271 = bitcast [5 x i8]* %270 to i40*, !dbg !1173
  %272 = load i40, i40* %271, align 4, !dbg !1173
  %273 = and i40 %272, 15, !dbg !1175
  %274 = icmp eq i40 %273, 5, !dbg !1175
  br i1 %274, label %278, label %275, !dbg !1176

; <label>:275:                                    ; preds = %268
  %276 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !1177
  tail call void @update_bt_current_status(i8* %276, i8 zeroext 16, i8 zeroext 45) #12, !dbg !1179
  %277 = load i40, i40* %271, align 4
  br label %278, !dbg !1180

; <label>:278:                                    ; preds = %275, %268
  %279 = phi i40 [ %272, %268 ], [ %277, %275 ], !dbg !1181
  %280 = and i40 %279, -16, !dbg !1181
  %281 = or i40 %280, 5, !dbg !1181
  store i40 %281, i40* %271, align 4, !dbg !1181
  br label %282, !dbg !1182

; <label>:282:                                    ; preds = %278, %267
  %283 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 2, !dbg !1183
  %284 = load i16, i16* %283, align 4, !dbg !1183, !tbaa !795
  %285 = icmp eq i16 %284, 0, !dbg !1185
  br i1 %285, label %324, label %286, !dbg !1186

; <label>:286:                                    ; preds = %282
  %287 = xor i32 %2, 65535, !dbg !1187
  %288 = zext i16 %284 to i32, !dbg !1189
  %289 = and i32 %288, %287, !dbg !1189
  %290 = trunc i32 %289 to i16, !dbg !1189
  store i16 %290, i16* %283, align 4, !dbg !1189, !tbaa !795
  %291 = icmp eq i32 %289, 0, !dbg !1190
  br i1 %291, label %292, label %307, !dbg !1192

; <label>:292:                                    ; preds = %286
  %293 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !1193
  %294 = and i16 %293, 7, !dbg !1193
  %295 = icmp eq i16 %294, 2, !dbg !1196
  br i1 %295, label %296, label %299, !dbg !1197

; <label>:296:                                    ; preds = %292
  %297 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !1198
  tail call void @update_bt_current_status(i8* %297, i8 zeroext 10, i8 zeroext 43) #12, !dbg !1200
  %298 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2
  br label %299, !dbg !1201

; <label>:299:                                    ; preds = %296, %292
  %300 = phi i16 [ %298, %296 ], [ %293, %292 ], !dbg !1202
  %301 = and i16 %300, 7, !dbg !1202
  %302 = icmp eq i16 %301, 1, !dbg !1204
  br i1 %302, label %303, label %305, !dbg !1205

; <label>:303:                                    ; preds = %299
  %304 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !1206
  tail call void @update_bt_current_status(i8* %304, i8 zeroext 9, i8 zeroext 43) #12, !dbg !1208
  br label %305, !dbg !1209

; <label>:305:                                    ; preds = %303, %299
  %306 = load i16, i16* %283, align 4, !dbg !1210, !tbaa !795
  br label %307, !dbg !1210

; <label>:307:                                    ; preds = %305, %286
  %308 = phi i16 [ %306, %305 ], [ %290, %286 ], !dbg !1210
  switch i16 %308, label %324 [
    i16 0, label %309
    i16 1, label %309
    i16 64, label %309
  ], !dbg !1212

; <label>:309:                                    ; preds = %307, %307, %307
  %310 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1213, !tbaa !621
  %311 = and i8 %310, 32, !dbg !1213
  %312 = icmp eq i8 %311, 0, !dbg !1213
  br i1 %312, label %315, label %313, !dbg !1216

; <label>:313:                                    ; preds = %309
  %314 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #12, !dbg !1217
  br label %315, !dbg !1217

; <label>:315:                                    ; preds = %313, %309
  %316 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1219, !tbaa !661
  %317 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %316, i32 0, i32 15, !dbg !1221
  %318 = load i8, i8* %317, align 1, !dbg !1221
  %319 = and i8 %318, 1, !dbg !1221
  %320 = icmp eq i8 %319, 0, !dbg !1222
  br i1 %320, label %321, label %324, !dbg !1223

; <label>:321:                                    ; preds = %315
  %322 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 1, !dbg !1224
  %323 = load i16, i16* %322, align 2, !dbg !1224, !tbaa !643
  tail call void @hci_disconnect_cmd(i16 zeroext %323, i8 zeroext 19) #13, !dbg !1226
  br label %324, !dbg !1227

; <label>:324:                                    ; preds = %321, %315, %307, %282
  %325 = icmp eq i32 %2, 8, !dbg !1228
  br i1 %325, label %326, label %344, !dbg !1230

; <label>:326:                                    ; preds = %324
  %327 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1231
  %328 = bitcast [5 x i8]* %327 to i40*, !dbg !1231
  %329 = load i40, i40* %328, align 4, !dbg !1231
  %330 = and i40 %329, 103079215104, !dbg !1234
  %331 = icmp eq i40 %330, 0, !dbg !1234
  br i1 %331, label %344, label %332, !dbg !1235

; <label>:332:                                    ; preds = %326
  %333 = load i16, i16* %283, align 4, !dbg !1236, !tbaa !795
  %334 = and i16 %333, 36, !dbg !1239
  %335 = icmp eq i16 %334, 32, !dbg !1239
  br i1 %335, label %336, label %344, !dbg !1239

; <label>:336:                                    ; preds = %332
  %337 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1240, !tbaa !621
  %338 = icmp slt i8 %337, 0, !dbg !1240
  br i1 %338, label %339, label %341, !dbg !1243

; <label>:339:                                    ; preds = %336
  %340 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.35, i32 0, i32 0)), !dbg !1244
  br label %341, !dbg !1244

; <label>:341:                                    ; preds = %339, %336
  %342 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 1, !dbg !1246
  %343 = load i16, i16* %342, align 2, !dbg !1246, !tbaa !643
  tail call void @hci_disconnect_cmd(i16 zeroext %343, i8 zeroext 19) #13, !dbg !1247
  br label %344, !dbg !1248

; <label>:344:                                    ; preds = %341, %332, %326, %324
  %345 = load i16, i16* %283, align 4, !dbg !1249, !tbaa !795
  %346 = and i16 %345, 36, !dbg !1251
  %347 = icmp eq i16 %346, 0, !dbg !1251
  br i1 %347, label %348, label %353, !dbg !1251

; <label>:348:                                    ; preds = %344
  %349 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1252
  %350 = bitcast [5 x i8]* %349 to i40*, !dbg !1252
  %351 = load i40, i40* %350, align 4, !dbg !1254
  %352 = and i40 %351, -103079215105, !dbg !1254
  store i40 %352, i40* %350, align 4, !dbg !1254
  br label %353, !dbg !1255

; <label>:353:                                    ; preds = %348, %344
  %354 = and i16 %345, 16, !dbg !1256
  %355 = icmp eq i16 %354, 0, !dbg !1258
  br i1 %355, label %356, label %361, !dbg !1259

; <label>:356:                                    ; preds = %353
  %357 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1260
  %358 = bitcast [5 x i8]* %357 to i40*, !dbg !1260
  %359 = load i40, i40* %358, align 4, !dbg !1262
  %360 = and i40 %359, -137438953473, !dbg !1262
  store i40 %360, i40* %358, align 4, !dbg !1262
  br label %361, !dbg !1263

; <label>:361:                                    ; preds = %356, %353
  %362 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1264, !tbaa !621
  %363 = icmp slt i8 %362, 0, !dbg !1264
  br i1 %363, label %364, label %367, !dbg !1266

; <label>:364:                                    ; preds = %361
  %365 = zext i16 %345 to i32, !dbg !1267
  %366 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i32 %365) #12, !dbg !1267
  br label %367, !dbg !1267

; <label>:367:                                    ; preds = %364, %361, %265, %264, %262, %13, %7
  %368 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !1269
  %369 = bitcast [5 x i8]* %368 to i40*, !dbg !1269
  %370 = load i40, i40* %369, align 4, !dbg !1269
  %371 = and i40 %370, 4294967296, !dbg !1271
  %372 = icmp ne i40 %371, 0, !dbg !1271
  %373 = icmp eq i32 %2, 4, !dbg !1272
  %374 = and i1 %373, %372, !dbg !1275
  br i1 %374, label %375, label %385, !dbg !1275

; <label>:375:                                    ; preds = %367
  %376 = and i40 %370, -4294967297, !dbg !1276
  store i40 %376, i40* %369, align 4, !dbg !1276
  %377 = load i8, i8* @iap_profile_support, align 1, !dbg !1278, !tbaa !621
  %378 = icmp ne i8 %377, 0, !dbg !1278
  %379 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !1280
  %380 = icmp ne i32 (i8*, i32, i32)* %379, null, !dbg !1283
  %381 = and i1 %378, %380, !dbg !1284
  br i1 %381, label %382, label %385, !dbg !1284

; <label>:382:                                    ; preds = %375
  %383 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !1285
  %384 = tail call i32 %379(i8* %383, i32 0, i32 65226) #13, !dbg !1287
  br label %385, !dbg !1288

; <label>:385:                                    ; preds = %382, %375, %367, %4
  ret void, !dbg !1289
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden void @tws_host_timeout_set() local_unnamed_addr #0 section ".bt_stack_code" !dbg !929 {
  store i8 10, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !1291, !tbaa !587
  %1 = tail call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #12, !dbg !1292
  ret void, !dbg !1293
}

; Function Attrs: nounwind optsize
define hidden i32 @user_send_cmd_prepare(i32, i16 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1294 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1300, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i16 %1, metadata !1301, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %2, metadata !1302, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1322
  %4 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !1323, !tbaa !661
  %5 = icmp eq %struct.user_cmd_ctrl* %4, null, !dbg !1325
  br i1 %5, label %129, label %6, !dbg !1326

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression()), !dbg !1327
  switch i32 %0, label %115 [
    i32 32, label %7
    i32 8, label %13
    i32 25, label %18
    i32 31, label %22
    i32 109, label %29
    i32 6, label %38
    i32 3, label %39
    i32 1, label %39
    i32 19, label %53
    i32 131, label %68
    i32 130, label %72
    i32 16, label %72
    i32 74, label %76
    i32 132, label %92
    i32 133, label %94
    i32 88, label %96
    i32 135, label %107
    i32 136, label %110
    i32 134, label %113
  ], !dbg !1328

; <label>:7:                                      ; preds = %6
  %8 = icmp ult i16 %1, 3, !dbg !1329
  br i1 %8, label %129, label %9, !dbg !1331

; <label>:9:                                      ; preds = %7
  %10 = zext i16 %1 to i32, !dbg !1332
  %11 = trunc i16 %1 to i8, !dbg !1333
  store i8 %11, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 2), align 2, !dbg !1335, !tbaa !1336
  %12 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %4, i32 0, i32 3, i32 0, !dbg !1337
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %2, i32 %10, i32 1, i1 false), !dbg !1337
  br label %118, !dbg !1338

; <label>:13:                                     ; preds = %6
  %14 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !1339, !tbaa !567
  %15 = icmp eq i8 %14, 0, !dbg !1341
  br i1 %15, label %16, label %129, !dbg !1342

; <label>:16:                                     ; preds = %13
  store i8 4, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !1343, !tbaa !567
  %17 = tail call i32 @user_send_cmd_prepare(i32 135, i16 zeroext 0, i8* null) #12, !dbg !1345
  br label %118, !dbg !1346

; <label>:18:                                     ; preds = %6
  %19 = icmp eq i16 %1, 1, !dbg !1347
  br i1 %19, label %20, label %129, !dbg !1349

; <label>:20:                                     ; preds = %18
  %21 = load i8, i8* %2, align 1, !dbg !1350, !tbaa !621
  store i8 %21, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 6), align 2, !dbg !1351, !tbaa !1352
  br label %118, !dbg !1353

; <label>:22:                                     ; preds = %6
  %23 = icmp eq i16 %1, 1, !dbg !1354
  br i1 %23, label %24, label %129, !dbg !1356

; <label>:24:                                     ; preds = %22
  %25 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 7), align 1, !dbg !1357, !tbaa !1359
  %26 = icmp eq i8 %25, 0, !dbg !1360
  br i1 %26, label %27, label %129, !dbg !1361

; <label>:27:                                     ; preds = %24
  %28 = load i8, i8* %2, align 1, !dbg !1362, !tbaa !621
  store i8 %28, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 7), align 1, !dbg !1364, !tbaa !1359
  br label %118, !dbg !1365

; <label>:29:                                     ; preds = %6
  %30 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 5), align 4, !dbg !1366, !tbaa !1368
  %31 = icmp eq i16 %30, 0, !dbg !1369
  br i1 %31, label %32, label %129, !dbg !1370

; <label>:32:                                     ; preds = %29
  store i16 %1, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 5), align 4, !dbg !1371, !tbaa !1368
  store i8* %2, i8** getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 4), align 4, !dbg !1373, !tbaa !1374
  %33 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1375, !tbaa !621
  %34 = icmp slt i8 %33, 0, !dbg !1375
  br i1 %34, label %35, label %118, !dbg !1377

; <label>:35:                                     ; preds = %32
  %36 = zext i16 %1 to i32, !dbg !1378
  %37 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i32 %36) #12, !dbg !1378
  br label %118, !dbg !1378

; <label>:38:                                     ; preds = %6
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 2, i32 0), i8* %2, i32 6, i32 1, i1 false), !dbg !1380
  br label %118, !dbg !1381

; <label>:39:                                     ; preds = %6, %6
  %40 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !1382
  %41 = and i16 %40, 7, !dbg !1382
  %42 = zext i16 %41 to i32, !dbg !1382
  %43 = load i32, i32* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 9), align 1, !dbg !1389
  %44 = lshr i32 %43, 4, !dbg !1389
  %45 = and i32 %44, 3, !dbg !1389
  %46 = icmp eq i32 %42, %45, !dbg !1390
  br i1 %46, label %129, label %47, !dbg !1391

; <label>:47:                                     ; preds = %39
  %48 = trunc i16 %40 to i8, !dbg !1392
  %49 = icmp slt i8 %48, 0, !dbg !1392
  br i1 %49, label %118, label %50, !dbg !1394

; <label>:50:                                     ; preds = %47
  %51 = icmp eq i16 %1, 6, !dbg !1395
  br i1 %51, label %52, label %129, !dbg !1397

; <label>:52:                                     ; preds = %50
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 3, i32 0), i8* %2, i32 6, i32 1, i1 false), !dbg !1398
  br label %118, !dbg !1399

; <label>:53:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i16 14, metadata !1301, metadata !DIExpression()), !dbg !1320
  %54 = icmp ult i16 %1, 14, !dbg !1400
  %55 = select i1 %54, i16 %1, i16 14, !dbg !1400
  call void @llvm.dbg.value(metadata i16 %55, metadata !1301, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1304, metadata !DIExpression()), !dbg !1401
  br label %56, !dbg !1402

; <label>:56:                                     ; preds = %60, %53
  %57 = phi i8 [ 0, %53 ], [ 1, %60 ]
  call void @llvm.dbg.value(metadata i8 %57, metadata !1304, metadata !DIExpression()), !dbg !1401
  %58 = zext i8 %57 to i32, !dbg !1404
  %59 = icmp eq i8 %57, 1, !dbg !1407
  br i1 %59, label %128, label %60, !dbg !1407

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %4, i32 0, i32 9, i32 %58, !dbg !1409
  %62 = load i8, i8* %61, align 1, !dbg !1409, !tbaa !621
  %63 = icmp eq i8 %62, -1, !dbg !1412
  br i1 %63, label %64, label %56, !dbg !1413, !llvm.loop !1414

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %4, i32 0, i32 10, i32 %58, !dbg !1417
  %66 = bitcast %struct.sniff_ctrl_config_t* %65 to i8*, !dbg !1418
  %67 = zext i16 %55 to i32, !dbg !1419
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %2, i32 %67, i32 1, i1 false), !dbg !1418
  store i8 %57, i8* %61, align 1, !dbg !1420, !tbaa !621
  br label %118, !dbg !1421

; <label>:68:                                     ; preds = %6
  %69 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %4, i32 0, i32 21, !dbg !1422
  %70 = bitcast i8* %2 to i32*, !dbg !1423
  %71 = load i32, i32* %70, align 1, !dbg !1423
  store i32 %71, i32* %69, align 1, !dbg !1423
  br label %118, !dbg !1424

; <label>:72:                                     ; preds = %6, %6
  call void @llvm.dbg.value(metadata i16 1, metadata !1301, metadata !DIExpression()), !dbg !1320
  %73 = icmp ne i16 %1, 0, !dbg !1425
  %74 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %4, i32 0, i32 8, !dbg !1426
  %75 = zext i1 %73 to i32, !dbg !1427
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %2, i32 %75, i32 1, i1 false), !dbg !1428
  br label %118, !dbg !1429

; <label>:76:                                     ; preds = %6
  %77 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1430
  call void @llvm.dbg.value(metadata %struct.conn_info* %77, metadata !1306, metadata !DIExpression()), !dbg !1431
  %78 = icmp eq %struct.conn_info* %77, null, !dbg !1432
  br i1 %78, label %84, label %79, !dbg !1434

; <label>:79:                                     ; preds = %76
  %80 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %77, i32 0, i32 0, i32 0, !dbg !1435
  %81 = tail call zeroext i8 @sco_connection_disconnect(i8* %80) #13, !dbg !1438
  %82 = icmp eq i8 %81, 0, !dbg !1438
  br i1 %82, label %83, label %84, !dbg !1439

; <label>:83:                                     ; preds = %79
  tail call void @os_time_dly(i32 1) #13, !dbg !1440
  br label %84, !dbg !1442

; <label>:84:                                     ; preds = %83, %79, %76
  br label %85, !dbg !1327

; <label>:85:                                     ; preds = %89, %84
  %86 = phi i8 [ %90, %89 ], [ 0, %84 ]
  call void @llvm.dbg.value(metadata i8 %86, metadata !1305, metadata !DIExpression()), !dbg !1327
  %87 = tail call zeroext i8 bitcast (i8 (...)* @l2cap_disconnect_all_channel to i8 ()*)() #13, !dbg !1443
  %88 = icmp eq i8 %87, 0, !dbg !1445
  br i1 %88, label %117, label %89, !dbg !1446

; <label>:89:                                     ; preds = %85
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #13, !dbg !1447
  tail call void @os_time_dly(i32 3) #13, !dbg !1449
  %90 = add nuw nsw i8 %86, 1, !dbg !1450
  call void @llvm.dbg.value(metadata i8 %90, metadata !1305, metadata !DIExpression()), !dbg !1327
  %91 = icmp ugt i8 %90, 100, !dbg !1451
  br i1 %91, label %117, label %85, !dbg !1453, !llvm.loop !1454

; <label>:92:                                     ; preds = %6
  %93 = load i8, i8* %2, align 1, !dbg !1457, !tbaa !621
  store i8 %93, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 18), align 1, !dbg !1458, !tbaa !1459
  br label %118, !dbg !1460

; <label>:94:                                     ; preds = %6
  %95 = load i8, i8* %2, align 1, !dbg !1461, !tbaa !621
  store i8 %95, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 19), align 4, !dbg !1462, !tbaa !1463
  br label %118, !dbg !1464

; <label>:96:                                     ; preds = %6
  %97 = bitcast i8* %2 to i16*, !dbg !1465
  %98 = load i16, i16* %97, align 4, !dbg !1465, !tbaa !1466
  %99 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !1468
  %100 = bitcast i8* %99 to i8**, !dbg !1468
  %101 = load i8*, i8** %100, align 4, !dbg !1468, !tbaa !1469
  %102 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !1470
  %103 = bitcast i8* %102 to i16*, !dbg !1470
  %104 = load i16, i16* %103, align 2, !dbg !1470, !tbaa !1471
  %105 = tail call i32 @hid_diy_data_try_send(i16 zeroext %98, i8* %101, i16 zeroext %104) #13, !dbg !1472
  call void @llvm.dbg.value(metadata i32 %105, metadata !1303, metadata !DIExpression()), !dbg !1322
  %106 = icmp eq i32 %105, 0, !dbg !1473
  br i1 %106, label %118, label %129

; <label>:107:                                    ; preds = %6
  %108 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 1), align 4, !dbg !1475, !tbaa !1480
  %109 = icmp eq i32 %108, 0, !dbg !1481
  br i1 %109, label %118, label %129, !dbg !1483

; <label>:110:                                    ; preds = %6
  %111 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 1), align 4, !dbg !1484, !tbaa !1480
  %112 = icmp eq i32 %111, 0, !dbg !1487
  br i1 %112, label %129, label %118, !dbg !1488

; <label>:113:                                    ; preds = %6
  %114 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %4, i32 0, i32 20, i32 0, !dbg !1489
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %114, i8* %2, i32 10, i32 1, i1 false), !dbg !1489
  br label %118, !dbg !1490

; <label>:115:                                    ; preds = %6
  %116 = icmp ugt i32 %0, 142, !dbg !1491
  br i1 %116, label %129, label %118, !dbg !1493

; <label>:117:                                    ; preds = %89, %85
  br label %118, !dbg !1494

; <label>:118:                                    ; preds = %117, %115, %113, %110, %107, %96, %94, %92, %72, %68, %64, %52, %47, %38, %35, %32, %27, %20, %16, %9
  %119 = trunc i32 %0 to i8, !dbg !1494
  %120 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !1495, !tbaa !661
  %121 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 1), align 1, !dbg !1496, !tbaa !1497
  %122 = add i8 %121, 1, !dbg !1496
  store i8 %122, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 1), align 1, !dbg !1496, !tbaa !1497
  %123 = zext i8 %121 to i32, !dbg !1495
  %124 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %120, i32 0, i32 11, i32 %123, !dbg !1495
  store i8 %119, i8* %124, align 1, !dbg !1498, !tbaa !621
  %125 = icmp ugt i8 %122, 15, !dbg !1499
  br i1 %125, label %126, label %127, !dbg !1501

; <label>:126:                                    ; preds = %118
  store i8 0, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 1), align 1, !dbg !1502, !tbaa !1497
  br label %127, !dbg !1504

; <label>:127:                                    ; preds = %126, %118
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #13, !dbg !1505
  br label %129, !dbg !1506

; <label>:128:                                    ; preds = %56
  br label %129, !dbg !1507

; <label>:129:                                    ; preds = %128, %127, %115, %110, %107, %96, %50, %39, %29, %24, %22, %18, %13, %7, %3
  %130 = phi i32 [ 5, %3 ], [ 0, %127 ], [ %105, %96 ], [ 2, %7 ], [ 3, %13 ], [ 2, %18 ], [ 2, %22 ], [ 3, %24 ], [ 3, %29 ], [ 3, %39 ], [ 2, %50 ], [ 3, %107 ], [ 3, %110 ], [ 1, %115 ], [ 3, %128 ]
  ret i32 %130, !dbg !1507
}

; Function Attrs: nounwind optsize
define hidden void @update_bt_current_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1508 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1512, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 %1, metadata !1513, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8 %2, metadata !1514, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i32 170, metadata !1515, metadata !DIExpression()), !dbg !1520
  %4 = icmp eq i8* %0, null, !dbg !1521
  br i1 %4, label %52, label %5, !dbg !1523

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* nonnull %0) #12, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.conn_info* %6, metadata !1516, metadata !DIExpression()), !dbg !1525
  %7 = icmp eq %struct.conn_info* %6, null, !dbg !1526
  br i1 %7, label %52, label %8, !dbg !1528

; <label>:8:                                      ; preds = %5
  switch i8 %1, label %21 [
    i8 11, label %9
    i8 14, label %9
  ], !dbg !1529

; <label>:9:                                      ; preds = %8, %8
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0), i8* nonnull %0, i32 6, i32 1, i1 false), !dbg !1531
  %10 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1533, !tbaa !621
  %11 = and i8 %10, 32, !dbg !1533
  %12 = icmp eq i8 %11, 0, !dbg !1533
  br i1 %12, label %16, label %13, !dbg !1535

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #12, !dbg !1536
  %15 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !621
  br label %16, !dbg !1536

; <label>:16:                                     ; preds = %13, %9
  %17 = phi i8 [ %10, %9 ], [ %15, %13 ], !dbg !1538
  %18 = and i8 %17, 64, !dbg !1538
  %19 = icmp eq i8 %18, 0, !dbg !1538
  br i1 %19, label %37, label %20, !dbg !1540

; <label>:20:                                     ; preds = %16
  tail call void @put_buf(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0), i32 6) #13, !dbg !1541
  br label %37, !dbg !1541

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %6, i32 0, i32 1, !dbg !1543
  %23 = load i16, i16* %22, align 2, !dbg !1543, !tbaa !643
  %24 = icmp eq i16 %23, 0, !dbg !1547
  br i1 %24, label %37, label %25, !dbg !1548

; <label>:25:                                     ; preds = %21
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0), i8* nonnull %0, i32 6, i32 1, i1 false), !dbg !1549
  %26 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1551, !tbaa !621
  %27 = and i8 %26, 32, !dbg !1551
  %28 = icmp eq i8 %27, 0, !dbg !1551
  br i1 %28, label %32, label %29, !dbg !1553

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !1554
  %31 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !621
  br label %32, !dbg !1554

; <label>:32:                                     ; preds = %29, %25
  %33 = phi i8 [ %26, %25 ], [ %31, %29 ], !dbg !1556
  %34 = and i8 %33, 64, !dbg !1556
  %35 = icmp eq i8 %34, 0, !dbg !1556
  br i1 %35, label %37, label %36, !dbg !1558

; <label>:36:                                     ; preds = %32
  tail call void @put_buf(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0), i32 6) #13, !dbg !1559
  br label %37, !dbg !1559

; <label>:37:                                     ; preds = %36, %32, %21, %20, %16
  %38 = icmp eq i8 %2, 0, !dbg !1561
  %39 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %6, i32 0, i32 5
  %40 = bitcast [5 x i8]* %39 to i40*
  br i1 %38, label %47, label %41, !dbg !1563

; <label>:41:                                     ; preds = %37
  %42 = load i40, i40* %40, align 4, !dbg !1564
  %43 = and i40 %42, 15, !dbg !1567
  %44 = icmp eq i40 %43, 5, !dbg !1567
  %45 = select i1 %44, i8 %2, i8 46, !dbg !1568
  %46 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %6, i32 0, i32 4
  store i8 %45, i8* %46, align 1, !tbaa !1570
  tail call void @bt_status_change(i8 zeroext %45) #12, !dbg !1571
  br label %47, !dbg !1572

; <label>:47:                                     ; preds = %41, %37
  %48 = load i40, i40* %40, align 4, !dbg !1573
  %49 = lshr i40 %48, 38, !dbg !1573
  %50 = trunc i40 %49 to i32, !dbg !1573
  %51 = and i32 %50, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %51, metadata !1515, metadata !DIExpression()), !dbg !1520
  br label %52, !dbg !1574

; <label>:52:                                     ; preds = %47, %5, %3
  %53 = phi i32 [ 170, %3 ], [ 170, %5 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !1515, metadata !DIExpression()), !dbg !1520
  %54 = icmp eq i8 %1, 0, !dbg !1575
  br i1 %54, label %58, label %55, !dbg !1577

; <label>:55:                                     ; preds = %52
  %56 = zext i8 %1 to i32, !dbg !1578
  store i8 %1, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 8), align 4, !dbg !1579, !tbaa !1581
  tail call void @bt_event_update_to_user(i8* %0, i32 1129270784, i8 zeroext %1, i32 %53) #13, !dbg !1582
  %57 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_state, i32 %56) #13, !dbg !1583
  br label %58, !dbg !1584

; <label>:58:                                     ; preds = %55, %52
  ret void, !dbg !1585
}

; Function Attrs: optsize
declare void @bt_event_update_to_user(i8*, i32, i8 zeroext, i32) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @stack_send_infor_2_user(%struct.hci_cmd_t*, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @__bt_profile_enable(i32) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden i32 @user_emitter_cmd_prepare(i32, i16 zeroext, i8* readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1586 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1588, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i16 %1, metadata !1589, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8* %2, metadata !1590, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32 0, metadata !1591, metadata !DIExpression()), !dbg !1596
  %4 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1597, !tbaa !621
  %5 = icmp eq i8 %4, 0, !dbg !1597
  br i1 %5, label %54, label %6, !dbg !1599

; <label>:6:                                      ; preds = %3
  %7 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !1600, !tbaa !661
  %8 = icmp eq %struct.user_cmd_ctrl* %7, null, !dbg !1602
  br i1 %8, label %54, label %9, !dbg !1603

; <label>:9:                                      ; preds = %6
  %10 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1604, !tbaa !661
  %11 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %10, i32 0, i32 9, !dbg !1606
  %12 = load i32, i32* %11, align 1, !dbg !1606
  %13 = and i32 %12, 1048576, !dbg !1606
  %14 = icmp eq i32 %13, 0, !dbg !1607
  br i1 %14, label %54, label %15, !dbg !1608

; <label>:15:                                     ; preds = %9
  switch i32 %0, label %43 [
    i32 131, label %16
    i32 19, label %20
    i32 68, label %35
    i32 4, label %39
  ], !dbg !1609

; <label>:16:                                     ; preds = %15
  %17 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %7, i32 0, i32 21, !dbg !1610
  %18 = bitcast i8* %2 to i32*, !dbg !1612
  %19 = load i32, i32* %18, align 1, !dbg !1612
  store i32 %19, i32* %17, align 1, !dbg !1612
  br label %43, !dbg !1613

; <label>:20:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i16 14, metadata !1589, metadata !DIExpression()), !dbg !1594
  %21 = icmp ult i16 %1, 14, !dbg !1614
  %22 = select i1 %21, i16 %1, i16 14, !dbg !1614
  call void @llvm.dbg.value(metadata i16 %22, metadata !1589, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1615
  br label %23, !dbg !1616

; <label>:23:                                     ; preds = %27, %20
  %24 = phi i8 [ 0, %20 ], [ 1, %27 ]
  call void @llvm.dbg.value(metadata i8 %24, metadata !1592, metadata !DIExpression()), !dbg !1615
  %25 = zext i8 %24 to i32, !dbg !1618
  %26 = icmp eq i8 %24, 1, !dbg !1621
  br i1 %26, label %53, label %27, !dbg !1621

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %7, i32 0, i32 9, i32 %25, !dbg !1623
  %29 = load i8, i8* %28, align 1, !dbg !1623, !tbaa !621
  %30 = icmp eq i8 %29, -1, !dbg !1626
  br i1 %30, label %31, label %23, !dbg !1627, !llvm.loop !1628

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %7, i32 0, i32 10, i32 %25, !dbg !1631
  %33 = bitcast %struct.sniff_ctrl_config_t* %32 to i8*, !dbg !1632
  %34 = zext i16 %22 to i32, !dbg !1633
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %2, i32 %34, i32 1, i1 false), !dbg !1632
  store i8 %24, i8* %28, align 1, !dbg !1634, !tbaa !621
  br label %43, !dbg !1635

; <label>:35:                                     ; preds = %15
  %36 = icmp eq i8* %2, null, !dbg !1636
  br i1 %36, label %43, label %37, !dbg !1638

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %7, i32 0, i32 22, i32 0, !dbg !1639
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* nonnull %2, i32 6, i32 1, i1 false), !dbg !1639
  br label %43, !dbg !1641

; <label>:39:                                     ; preds = %15
  %40 = icmp eq i8* %2, null, !dbg !1642
  br i1 %40, label %43, label %41, !dbg !1644

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %7, i32 0, i32 23, i32 0, !dbg !1645
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* nonnull %2, i32 6, i32 1, i1 false), !dbg !1645
  br label %43, !dbg !1647

; <label>:43:                                     ; preds = %41, %39, %37, %35, %31, %16, %15
  %44 = trunc i32 %0 to i8, !dbg !1648
  %45 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 14), align 1, !dbg !1649, !tbaa !1650
  %46 = add i8 %45, 1, !dbg !1649
  store i8 %46, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 14), align 1, !dbg !1649, !tbaa !1650
  %47 = zext i8 %45 to i32, !dbg !1651
  %48 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %7, i32 0, i32 12, i32 %47, !dbg !1651
  store i8 %44, i8* %48, align 1, !dbg !1652, !tbaa !621
  %49 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 14), align 1, !dbg !1653, !tbaa !1650
  %50 = icmp ugt i8 %49, 9, !dbg !1655
  br i1 %50, label %51, label %52, !dbg !1656

; <label>:51:                                     ; preds = %43
  store i8 0, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 14), align 1, !dbg !1657, !tbaa !1650
  br label %52, !dbg !1659

; <label>:52:                                     ; preds = %51, %43
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #13, !dbg !1660
  br label %54, !dbg !1661

; <label>:53:                                     ; preds = %23
  br label %54, !dbg !1662

; <label>:54:                                     ; preds = %53, %52, %9, %6, %3
  %55 = phi i32 [ 0, %52 ], [ -1006, %3 ], [ 0, %6 ], [ -1006, %9 ], [ 3, %53 ]
  ret i32 %55, !dbg !1662
}

; Function Attrs: optsize
declare zeroext i8 @remote_dev_company_ioctrl(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden void @tws_host_timeout_reset(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1060 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1059, metadata !DIExpression()), !dbg !1663
  %2 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !1664, !tbaa !587
  %3 = icmp eq i8 %2, 0, !dbg !1665
  br i1 %3, label %8, label %4, !dbg !1666

; <label>:4:                                      ; preds = %1
  %5 = zext i8 %2 to i32, !dbg !1667
  %6 = add i32 %5, %0, !dbg !1667
  %7 = trunc i32 %6 to i8, !dbg !1667
  store i8 %7, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !1667, !tbaa !587
  br label %8, !dbg !1668

; <label>:8:                                      ; preds = %4, %1
  ret void, !dbg !1669
}

; Function Attrs: optsize
declare void @hci_disconnect_cmd(i16 zeroext, i8 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @update_multi_bd_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden i32 @user_at_cmd_free(%struct.conn_info*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1670 {
  call void @llvm.dbg.value(metadata %struct.conn_info* %0, metadata !1674, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* null, metadata !1675, metadata !DIExpression()), !dbg !1681
  %2 = load i8, i8* @user_at_cmd_send_support, align 1, !dbg !1682, !tbaa !621
  %3 = icmp eq i8 %2, 0, !dbg !1682
  br i1 %3, label %17, label %4, !dbg !1684

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %0, i32 0, i32 7, !dbg !1685
  %6 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %5, align 4, !dbg !1685, !tbaa !1686
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !1675, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !1675, metadata !DIExpression()), !dbg !1681
  %7 = icmp eq %struct.btstack_linked_item* %6, null, !dbg !1687
  br i1 %7, label %17, label %8, !dbg !1687

; <label>:8:                                      ; preds = %4
  br label %9, !dbg !1681

; <label>:9:                                      ; preds = %9, %8
  %10 = phi %struct.btstack_linked_item* [ %13, %9 ], [ %6, %8 ]
  %11 = bitcast %struct.btstack_linked_item* %10 to i8*, !dbg !1681
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %10, metadata !1676, metadata !DIExpression()), !dbg !1689
  %12 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 0, i32 0, !dbg !1690
  %13 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %12, align 4, !dbg !1690, !tbaa !1691
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %13, metadata !1675, metadata !DIExpression()), !dbg !1681
  %14 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %5, %struct.btstack_linked_item* nonnull %10) #13, !dbg !1692
  tail call void @free(i8* %11) #12, !dbg !1693
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %13, metadata !1675, metadata !DIExpression()), !dbg !1681
  %15 = icmp eq %struct.btstack_linked_item* %13, null, !dbg !1687
  br i1 %15, label %16, label %9, !dbg !1687, !llvm.loop !1694

; <label>:16:                                     ; preds = %9
  br label %17, !dbg !1697

; <label>:17:                                     ; preds = %16, %4, %1
  %18 = phi i32 [ -1, %1 ], [ 0, %4 ], [ 0, %16 ]
  ret i32 %18, !dbg !1697
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: nounwind optsize readonly
define hidden %struct.conn_info* @find_not_hangup_conn() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1698 {
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !1702, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !1702, metadata !DIExpression()), !dbg !1703
  br label %1, !dbg !1704

; <label>:1:                                      ; preds = %15, %0
  %2 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %16, %15 ]
  %3 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !1707
  %4 = bitcast [5 x i8]* %3 to i40*, !dbg !1707
  %5 = load i40, i40* %4, align 4, !dbg !1707
  %6 = and i40 %5, 536870912, !dbg !1711
  %7 = icmp eq i40 %6, 0, !dbg !1711
  br i1 %7, label %15, label %8, !dbg !1712

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 1, !dbg !1713
  %10 = load i16, i16* %9, align 2, !dbg !1713, !tbaa !643
  %11 = icmp eq i16 %10, 0, !dbg !1715
  %12 = and i40 %5, 15, !dbg !1716
  %13 = icmp eq i40 %12, 5, !dbg !1716
  %14 = or i1 %13, %11, !dbg !1719
  br i1 %14, label %15, label %18, !dbg !1719

; <label>:15:                                     ; preds = %8, %1
  %16 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 1, !dbg !1721
  call void @llvm.dbg.value(metadata %struct.conn_info* %16, metadata !1702, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata %struct.conn_info* %16, metadata !1702, metadata !DIExpression()), !dbg !1703
  %17 = icmp ult %struct.conn_info* %16, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !1723
  br i1 %17, label %1, label %18, !dbg !1704, !llvm.loop !1725

; <label>:18:                                     ; preds = %15, %8
  %19 = phi %struct.conn_info* [ %2, %8 ], [ null, %15 ]
  ret %struct.conn_info* %19, !dbg !1728
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @check_work_addr(i8* nocapture readnone) local_unnamed_addr #8 section ".bt_stack_code" !dbg !1729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1733, metadata !DIExpression()), !dbg !1734
  ret i32 0, !dbg !1735
}

; Function Attrs: nounwind optsize
define weak hidden void @bt_status_change(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1736 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1738, metadata !DIExpression()), !dbg !1739
  ret void, !dbg !1740
}

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #7

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_emitter_connect_status() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1741 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 1) #12, !dbg !1746
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1745, metadata !DIExpression()), !dbg !1747
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1748
  br i1 %2, label %6, label %3, !dbg !1750

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 4, !dbg !1751
  %5 = load i8, i8* %4, align 1, !dbg !1751, !tbaa !1570
  br label %6, !dbg !1753

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i8 [ %5, %3 ], [ 43, %0 ]
  ret i8 %7, !dbg !1754
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_bt_connect_status() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1755 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1758
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1757, metadata !DIExpression()), !dbg !1759
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1760
  br i1 %2, label %6, label %3, !dbg !1762

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 4, !dbg !1763
  %5 = load i8, i8* %4, align 1, !dbg !1763, !tbaa !1570
  br label %6, !dbg !1765

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i8 [ %5, %3 ], [ 43, %0 ]
  ret i8 %7, !dbg !1766
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_device_inband_ringtone_flag() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1767 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1770
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1769, metadata !DIExpression()), !dbg !1771
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1772
  br i1 %2, label %10, label %3, !dbg !1774

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 5, !dbg !1775
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1775
  %6 = load i40, i40* %5, align 4, !dbg !1775
  %7 = lshr i40 %6, 31, !dbg !1775
  %8 = trunc i40 %7 to i8, !dbg !1775
  %9 = and i8 %8, 1, !dbg !1775
  br label %10, !dbg !1777

; <label>:10:                                     ; preds = %3, %0
  %11 = phi i8 [ %9, %3 ], [ 0, %0 ]
  ret i8 %11, !dbg !1778
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @is_1t2_connection() local_unnamed_addr #9 section ".bt_stack_code" !dbg !1383 {
  %1 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !1779
  %2 = and i16 %1, 7, !dbg !1779
  %3 = zext i16 %2 to i32, !dbg !1779
  %4 = load i32, i32* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 9), align 1, !dbg !1780
  %5 = lshr i32 %4, 4, !dbg !1780
  %6 = and i32 %5, 3, !dbg !1780
  %7 = icmp eq i32 %3, %6, !dbg !1781
  %8 = zext i1 %7 to i8, !dbg !1782
  ret i8 %8, !dbg !1783
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_total_connect_dev() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1784 {
  call void @llvm.dbg.value(metadata i8 -86, metadata !763, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !766, metadata !DIExpression()), !dbg !1790
  %1 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0)) #13, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1786, metadata !DIExpression()), !dbg !1792
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1793
  br i1 %2, label %7, label %3, !dbg !1795

; <label>:3:                                      ; preds = %0
  %4 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !1796
  %5 = trunc i16 %4 to i8, !dbg !1796
  %6 = and i8 %5, 7, !dbg !1796
  br label %7, !dbg !1798

; <label>:7:                                      ; preds = %3, %0
  %8 = phi i8 [ %6, %3 ], [ 0, %0 ]
  ret i8 %8, !dbg !1799
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @get_curr_channel_state() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1800 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1805
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1804, metadata !DIExpression()), !dbg !1806
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1807
  br i1 %2, label %6, label %3, !dbg !1809

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 2, !dbg !1810
  %5 = load i16, i16* %4, align 4, !dbg !1810, !tbaa !795
  br label %6, !dbg !1812

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i16 [ %5, %3 ], [ 0, %0 ]
  ret i16 %7, !dbg !1813
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @get_emitter_curr_channel_state() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1814 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 1) #12, !dbg !1817
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1816, metadata !DIExpression()), !dbg !1818
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1819
  br i1 %2, label %6, label %3, !dbg !1821

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 2, !dbg !1822
  %5 = load i16, i16* %4, align 4, !dbg !1822, !tbaa !795
  br label %6, !dbg !1824

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i16 [ %5, %3 ], [ 0, %0 ]
  ret i16 %7, !dbg !1825
}

; Function Attrs: nounwind optsize readonly
define hidden i8* @get_cur_connect_phone_mac_addr() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1826 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1830, metadata !DIExpression()), !dbg !1832
  %2 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 0, i32 0, !dbg !1833
  ret i8* %2, !dbg !1836
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_unactive_device_call_status() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1837 {
  call void @llvm.dbg.value(metadata i8 2, metadata !763, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !766, metadata !DIExpression()), !dbg !1843
  %1 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0)) #13, !dbg !1844
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1839, metadata !DIExpression()), !dbg !1845
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1846
  br i1 %2, label %10, label %3, !dbg !1848

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 5, !dbg !1849
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1849
  %6 = load i40, i40* %5, align 4, !dbg !1849
  %7 = trunc i40 %6 to i8, !dbg !1849
  %8 = and i8 %7, 15, !dbg !1849
  %9 = icmp eq i8 %8, 5, !dbg !1851
  br i1 %9, label %10, label %11, !dbg !1852

; <label>:10:                                     ; preds = %3, %0
  br label %11, !dbg !1854

; <label>:11:                                     ; preds = %10, %3
  %12 = phi i8 [ 5, %10 ], [ %8, %3 ]
  ret i8 %12, !dbg !1855
}

; Function Attrs: nounwind optsize readonly
define hidden i8* @get_cur_connect_emitter_mac_addr() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1856 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 1) #12, !dbg !1859
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1858, metadata !DIExpression()), !dbg !1860
  %2 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 0, i32 0, !dbg !1861
  ret i8* %2, !dbg !1864
}

; Function Attrs: nounwind optsize
define weak hidden zeroext i8 @get_call_status() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1865 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1868
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1867, metadata !DIExpression()), !dbg !1869
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1870
  br i1 %2, label %10, label %3, !dbg !1872

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 5, !dbg !1873
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1873
  %6 = load i40, i40* %5, align 4, !dbg !1873
  %7 = trunc i40 %6 to i8, !dbg !1873
  %8 = and i8 %7, 15, !dbg !1873
  %9 = icmp eq i8 %8, 5, !dbg !1875
  br i1 %9, label %10, label %27, !dbg !1876

; <label>:10:                                     ; preds = %3, %0
  br label %11, !dbg !1878

; <label>:11:                                     ; preds = %22, %10
  %12 = phi %struct.conn_info* [ %23, %22 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %10 ]
  %13 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %12, i32 0, i32 5, !dbg !1878
  %14 = bitcast [5 x i8]* %13 to i40*, !dbg !1878
  %15 = load i40, i40* %14, align 4, !dbg !1878
  %16 = and i40 %15, 536870912, !dbg !1884
  %17 = icmp eq i40 %16, 0, !dbg !1884
  br i1 %17, label %22, label %18, !dbg !1885

; <label>:18:                                     ; preds = %11
  %19 = trunc i40 %15 to i8, !dbg !1886
  %20 = and i8 %19, 15, !dbg !1886
  %21 = icmp eq i8 %20, 5, !dbg !1889
  br i1 %21, label %22, label %25, !dbg !1890

; <label>:22:                                     ; preds = %18, %11
  %23 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %12, i32 1, !dbg !1891
  call void @llvm.dbg.value(metadata %struct.conn_info* %23, metadata !1867, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata %struct.conn_info* %23, metadata !1867, metadata !DIExpression()), !dbg !1869
  %24 = icmp ult %struct.conn_info* %23, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !1893
  br i1 %24, label %11, label %25, !dbg !1895, !llvm.loop !1897

; <label>:25:                                     ; preds = %22, %18
  %26 = phi i8 [ 5, %22 ], [ %20, %18 ]
  br label %27, !dbg !1900

; <label>:27:                                     ; preds = %25, %3
  %28 = phi i8 [ %8, %3 ], [ %26, %25 ]
  ret i8 %28, !dbg !1900
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @a2dp_get_status_for_conn(%struct.conn_info* readonly) local_unnamed_addr #3 section ".bt_stack_code" !dbg !1901 {
  call void @llvm.dbg.value(metadata %struct.conn_info* %0, metadata !1905, metadata !DIExpression()), !dbg !1906
  %2 = icmp eq %struct.conn_info* %0, null, !dbg !1907
  br i1 %2, label %15, label %3, !dbg !1909

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %0, i32 0, i32 5, !dbg !1910
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1910
  %6 = load i40, i40* %5, align 4, !dbg !1910
  %7 = lshr i40 %6, 16, !dbg !1910
  %8 = trunc i40 %7 to i8, !dbg !1910
  %9 = and i8 %8, 15, !dbg !1910
  %10 = icmp eq i8 %9, 0, !dbg !1913
  br i1 %10, label %11, label %15, !dbg !1914

; <label>:11:                                     ; preds = %3
  %12 = lshr i40 %6, 12, !dbg !1915
  %13 = trunc i40 %12 to i8, !dbg !1915
  %14 = and i8 %13, 15, !dbg !1915
  br label %15, !dbg !1917

; <label>:15:                                     ; preds = %11, %3, %1
  %16 = phi i8 [ %14, %11 ], [ %9, %3 ], [ 0, %1 ]
  ret i8 %16, !dbg !1918
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @a2dp_get_status() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1919 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1921, metadata !DIExpression()), !dbg !1923
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1924
  br i1 %2, label %22, label %3, !dbg !1926

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 5, !dbg !1927
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1927
  %6 = load i40, i40* %5, align 4, !dbg !1927
  %7 = and i40 %6, 983040, !dbg !1930
  %8 = icmp eq i40 %7, 0, !dbg !1930
  br i1 %8, label %18, label %9, !dbg !1931

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 0, i32 0, !dbg !1932
  %11 = tail call i32 @get_pp_key_statue(i8* %10) #13, !dbg !1935
  %12 = icmp eq i32 %11, 0, !dbg !1936
  br i1 %12, label %22, label %13, !dbg !1937

; <label>:13:                                     ; preds = %9
  %14 = load i40, i40* %5, align 4, !dbg !1938
  %15 = lshr i40 %14, 16, !dbg !1938
  %16 = trunc i40 %15 to i8, !dbg !1938
  %17 = and i8 %16, 15, !dbg !1938
  br label %22, !dbg !1940

; <label>:18:                                     ; preds = %3
  %19 = lshr i40 %6, 12, !dbg !1941
  %20 = trunc i40 %19 to i8, !dbg !1941
  %21 = and i8 %20, 15, !dbg !1941
  br label %22, !dbg !1943

; <label>:22:                                     ; preds = %18, %13, %9, %0
  %23 = phi i8 [ %17, %13 ], [ %21, %18 ], [ 2, %9 ], [ 0, %0 ]
  ret i8 %23, !dbg !1944
}

; Function Attrs: optsize
declare i32 @get_pp_key_statue(i8*) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden zeroext i8 @get_emitter_a2dp_status() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1945 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 1) #12, !dbg !1948
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1947, metadata !DIExpression()), !dbg !1949
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1950
  br i1 %2, label %22, label %3, !dbg !1952

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 5, !dbg !1953
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1953
  %6 = load i40, i40* %5, align 4, !dbg !1953
  %7 = and i40 %6, 983040, !dbg !1956
  %8 = icmp eq i40 %7, 0, !dbg !1956
  br i1 %8, label %18, label %9, !dbg !1957

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 0, i32 0, !dbg !1958
  %11 = tail call i32 @get_pp_key_statue(i8* %10) #13, !dbg !1961
  %12 = icmp eq i32 %11, 0, !dbg !1962
  br i1 %12, label %22, label %13, !dbg !1963

; <label>:13:                                     ; preds = %9
  %14 = load i40, i40* %5, align 4, !dbg !1964
  %15 = lshr i40 %14, 16, !dbg !1964
  %16 = trunc i40 %15 to i8, !dbg !1964
  %17 = and i8 %16, 15, !dbg !1964
  br label %22, !dbg !1966

; <label>:18:                                     ; preds = %3
  %19 = lshr i40 %6, 12, !dbg !1967
  %20 = trunc i40 %19 to i8, !dbg !1967
  %21 = and i8 %20, 15, !dbg !1967
  br label %22, !dbg !1969

; <label>:22:                                     ; preds = %18, %13, %9, %0
  %23 = phi i8 [ %17, %13 ], [ %21, %18 ], [ 2, %9 ], [ 0, %0 ]
  ret i8 %23, !dbg !1970
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_second_call_status() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1971 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1974
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1973, metadata !DIExpression()), !dbg !1975
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1976
  br i1 %2, label %10, label %3, !dbg !1978

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 5, !dbg !1979
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1979
  %6 = load i40, i40* %5, align 4, !dbg !1979
  %7 = lshr i40 %6, 8, !dbg !1979
  %8 = trunc i40 %7 to i8, !dbg !1979
  %9 = and i8 %8, 15, !dbg !1979
  br label %10, !dbg !1981

; <label>:10:                                     ; preds = %3, %0
  %11 = phi i8 [ %9, %3 ], [ 0, %0 ]
  ret i8 %11, !dbg !1982
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_a2dp_decoder_status() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1983 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !1986
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !1985, metadata !DIExpression()), !dbg !1987
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !1988
  br i1 %2, label %10, label %3, !dbg !1990

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 5, !dbg !1991
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !1991
  %6 = load i40, i40* %5, align 4, !dbg !1991
  %7 = lshr i40 %6, 30, !dbg !1991
  %8 = trunc i40 %7 to i8, !dbg !1991
  %9 = and i8 %8, 1, !dbg !1991
  br label %10, !dbg !1993

; <label>:10:                                     ; preds = %3, %0
  %11 = phi i8 [ %9, %3 ], [ 0, %0 ]
  ret i8 %11, !dbg !1994
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @check_phone_call_number() local_unnamed_addr #3 section ".bt_stack_code" !dbg !1995 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !1999
  br label %1, !dbg !2001

; <label>:1:                                      ; preds = %1, %0
  %2 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %11, %1 ]
  %3 = phi i8 [ 0, %0 ], [ %10, %1 ]
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !2004
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !2004
  %6 = load i40, i40* %5, align 4, !dbg !2004
  %7 = and i40 %6, 536870928, !dbg !2008
  %8 = icmp eq i40 %7, 536870928, !dbg !2008
  %9 = zext i1 %8 to i8, !dbg !2008
  %10 = add i8 %9, %3, !dbg !2008
  call void @llvm.dbg.value(metadata i8 %10, metadata !1997, metadata !DIExpression()), !dbg !1999
  %11 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 1, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.conn_info* %11, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata %struct.conn_info* %11, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 %10, metadata !1997, metadata !DIExpression()), !dbg !1999
  %12 = icmp ult %struct.conn_info* %11, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !2011
  br i1 %12, label %1, label %13, !dbg !2001, !llvm.loop !2013

; <label>:13:                                     ; preds = %1
  ret i8 %10, !dbg !2016
}

; Function Attrs: nounwind optsize
define hidden void @add_hfp_flag(i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2017 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2021, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %1, metadata !2022, metadata !DIExpression()), !dbg !2025
  %3 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !2026
  call void @llvm.dbg.value(metadata %struct.conn_info* %3, metadata !2023, metadata !DIExpression()), !dbg !2027
  %4 = icmp eq %struct.conn_info* %3, null, !dbg !2028
  br i1 %4, label %24, label %5, !dbg !2030

; <label>:5:                                      ; preds = %2
  %6 = zext i8 %1 to i32, !dbg !2031
  %7 = shl i32 1, %6, !dbg !2031
  %8 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 5, !dbg !2032
  %9 = bitcast [5 x i8]* %8 to i40*, !dbg !2032
  %10 = load i40, i40* %9, align 4, !dbg !2033
  %11 = lshr i40 %10, 4, !dbg !2033
  %12 = trunc i40 %11 to i32, !dbg !2033
  %13 = or i32 %12, %7, !dbg !2033
  %14 = shl i32 %13, 4, !dbg !2033
  %15 = and i32 %14, 240, !dbg !2033
  %16 = zext i32 %15 to i40, !dbg !2033
  %17 = and i40 %10, -241, !dbg !2033
  %18 = or i40 %16, %17, !dbg !2033
  store i40 %18, i40* %9, align 4, !dbg !2033
  %19 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2034, !tbaa !621
  %20 = icmp slt i8 %19, 0, !dbg !2034
  br i1 %20, label %21, label %24, !dbg !2036

; <label>:21:                                     ; preds = %5
  %22 = lshr exact i32 %15, 4, !dbg !2037
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %22) #12, !dbg !2037
  br label %24, !dbg !2037

; <label>:24:                                     ; preds = %21, %5, %2
  ret void, !dbg !2039
}

; Function Attrs: nounwind optsize
define hidden void @clr_hfp_flag(i8* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2043, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8 %1, metadata !2044, metadata !DIExpression()), !dbg !2047
  %3 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !2048
  call void @llvm.dbg.value(metadata %struct.conn_info* %3, metadata !2045, metadata !DIExpression()), !dbg !2049
  %4 = icmp eq %struct.conn_info* %3, null, !dbg !2050
  br i1 %4, label %25, label %5, !dbg !2052

; <label>:5:                                      ; preds = %2
  %6 = zext i8 %1 to i32, !dbg !2053
  %7 = shl i32 1, %6, !dbg !2053
  %8 = xor i32 %7, 15, !dbg !2054
  %9 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 5, !dbg !2055
  %10 = bitcast [5 x i8]* %9 to i40*, !dbg !2055
  %11 = load i40, i40* %10, align 4, !dbg !2056
  %12 = lshr i40 %11, 4, !dbg !2056
  %13 = trunc i40 %12 to i32, !dbg !2056
  %14 = and i32 %13, %8, !dbg !2056
  %15 = shl i32 %14, 4, !dbg !2056
  %16 = and i32 %15, 240, !dbg !2056
  %17 = zext i32 %16 to i40, !dbg !2056
  %18 = and i40 %11, -241, !dbg !2056
  %19 = or i40 %17, %18, !dbg !2056
  store i40 %19, i40* %10, align 4, !dbg !2056
  %20 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2057, !tbaa !621
  %21 = icmp slt i8 %20, 0, !dbg !2057
  br i1 %21, label %22, label %25, !dbg !2059

; <label>:22:                                     ; preds = %5
  %23 = lshr exact i32 %16, 4, !dbg !2060
  %24 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %23) #12, !dbg !2060
  br label %25, !dbg !2060

; <label>:25:                                     ; preds = %22, %5, %2
  ret void, !dbg !2062
}

; Function Attrs: nounwind optsize
define hidden void @bt_api_all_sniff_exit() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2064 {
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !2066, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !2066, metadata !DIExpression()), !dbg !2067
  br label %1, !dbg !2068

; <label>:1:                                      ; preds = %13, %0
  %2 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %14, %13 ]
  %3 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !2071
  %4 = bitcast [5 x i8]* %3 to i40*, !dbg !2071
  %5 = load i40, i40* %4, align 4, !dbg !2071
  %6 = and i40 %5, 536870912, !dbg !2075
  %7 = icmp eq i40 %6, 0, !dbg !2075
  br i1 %7, label %13, label %8, !dbg !2076

; <label>:8:                                      ; preds = %1
  %9 = lshr i40 %5, 33, !dbg !2077
  %10 = trunc i40 %9 to i8, !dbg !2077
  %11 = and i8 %10, 3, !dbg !2077
  %12 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 0, i32 0, !dbg !2079
  tail call void @hci_set_sniff_mode(i32 0, i8 zeroext %11, i8* %12, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0) #13, !dbg !2080
  br label %13, !dbg !2081

; <label>:13:                                     ; preds = %8, %1
  %14 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 1, !dbg !2082
  call void @llvm.dbg.value(metadata %struct.conn_info* %14, metadata !2066, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata %struct.conn_info* %14, metadata !2066, metadata !DIExpression()), !dbg !2067
  %15 = icmp ult %struct.conn_info* %14, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !2084
  br i1 %15, label %1, label %16, !dbg !2068, !llvm.loop !2086

; <label>:16:                                     ; preds = %13
  ret void, !dbg !2089
}

; Function Attrs: optsize
declare void @hci_set_sniff_mode(i32, i8 zeroext, i8*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define weak hidden void @user_hfp_call_hold_flag(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2094, metadata !DIExpression()), !dbg !2095
  ret void, !dbg !2096
}

; Function Attrs: nounwind optsize
define hidden void @update_profile_function_status(i8*, i32, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2097 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %1, metadata !2102, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %2, metadata !2103, metadata !DIExpression()), !dbg !2107
  %4 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !2108
  call void @llvm.dbg.value(metadata %struct.conn_info* %4, metadata !2104, metadata !DIExpression()), !dbg !2109
  %5 = icmp eq %struct.conn_info* %4, null, !dbg !2110
  br i1 %5, label %128, label %6, !dbg !2112

; <label>:6:                                      ; preds = %3
  switch i32 %1, label %128 [
    i32 2, label %7
    i32 6, label %20
    i32 3, label %20
    i32 4, label %33
    i32 5, label %45
    i32 7, label %63
    i32 9, label %65
    i32 8, label %74
    i32 14, label %83
    i32 13, label %95
    i32 16, label %104
    i32 11, label %113
  ], !dbg !2113

; <label>:7:                                      ; preds = %6
  tail call void @bt_api_all_sniff_exit() #12, !dbg !2114
  %8 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2116
  %9 = bitcast [5 x i8]* %8 to i40*, !dbg !2116
  %10 = load i40, i40* %9, align 4, !dbg !2116
  %11 = and i40 %10, 15, !dbg !2118
  %12 = icmp eq i40 %11, 2, !dbg !2118
  br i1 %12, label %128, label %13, !dbg !2119

; <label>:13:                                     ; preds = %7
  %14 = and i40 %10, -16, !dbg !2120
  %15 = or i40 %14, 2, !dbg !2120
  store i40 %15, i40* %9, align 4, !dbg !2120
  tail call void @add_hfp_flag(i8* %0, i8 zeroext 0) #12, !dbg !2122
  %16 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_background_state, i32 1, i32 1) #13, !dbg !2123
  %17 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !2124
  %18 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 23, i32 2, i8* %17) #13, !dbg !2125
  tail call void @bt_event_update_to_user(i8* %17, i32 1129270784, i8 zeroext 23, i32 11) #13, !dbg !2126
  tail call void @update_bt_current_status(i8* %17, i8 zeroext 11, i8 zeroext 46) #12, !dbg !2127
  %19 = tail call i32 @update_multi_bd_status(i8* %17, i8 zeroext 6, i8 zeroext -1) #13, !dbg !2128
  br label %128, !dbg !2129

; <label>:20:                                     ; preds = %6, %6
  tail call void @bt_api_all_sniff_exit() #12, !dbg !2130
  %21 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2131
  %22 = bitcast [5 x i8]* %21 to i40*, !dbg !2131
  %23 = load i40, i40* %22, align 4, !dbg !2131
  %24 = and i40 %23, 15, !dbg !2133
  %25 = icmp eq i40 %24, 3, !dbg !2133
  br i1 %25, label %128, label %26, !dbg !2134

; <label>:26:                                     ; preds = %20
  %27 = and i40 %23, -16, !dbg !2135
  %28 = or i40 %27, 3, !dbg !2135
  store i40 %28, i40* %22, align 4, !dbg !2135
  tail call void @add_hfp_flag(i8* %0, i8 zeroext 0) #12, !dbg !2137
  %29 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_background_state, i32 1, i32 1) #13, !dbg !2138
  %30 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !2139
  %31 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 23, i32 3, i8* %30) #13, !dbg !2140
  tail call void @bt_event_update_to_user(i8* %30, i32 1129270784, i8 zeroext 23, i32 14) #13, !dbg !2141
  tail call void @update_bt_current_status(i8* %30, i8 zeroext 14, i8 zeroext 46) #12, !dbg !2142
  %32 = tail call i32 @update_multi_bd_status(i8* %30, i8 zeroext 7, i8 zeroext -1) #13, !dbg !2143
  br label %128, !dbg !2144

; <label>:33:                                     ; preds = %6
  tail call void @bt_api_all_sniff_exit() #12, !dbg !2145
  %34 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2146
  %35 = bitcast [5 x i8]* %34 to i40*, !dbg !2146
  %36 = load i40, i40* %35, align 4, !dbg !2146
  %37 = and i40 %36, 15, !dbg !2148
  %38 = icmp eq i40 %37, 4, !dbg !2148
  br i1 %38, label %128, label %39, !dbg !2149

; <label>:39:                                     ; preds = %33
  tail call void @add_hfp_flag(i8* %0, i8 zeroext 0) #12, !dbg !2150
  %40 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_background_state, i32 1, i32 1) #13, !dbg !2152
  %41 = load i40, i40* %35, align 4, !dbg !2153
  %42 = and i40 %41, -16, !dbg !2153
  %43 = or i40 %42, 4, !dbg !2153
  store i40 %43, i40* %35, align 4, !dbg !2153
  %44 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !2154
  tail call void @update_bt_current_status(i8* %44, i8 zeroext 15, i8 zeroext 46) #12, !dbg !2155
  br label %128, !dbg !2156

; <label>:45:                                     ; preds = %6
  %46 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2157, !tbaa !621
  %47 = and i8 %46, 32, !dbg !2157
  %48 = icmp eq i8 %47, 0, !dbg !2157
  br i1 %48, label %51, label %49, !dbg !2159

; <label>:49:                                     ; preds = %45
  %50 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #12, !dbg !2160
  br label %51, !dbg !2160

; <label>:51:                                     ; preds = %49, %45
  %52 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2162
  %53 = bitcast [5 x i8]* %52 to i40*, !dbg !2162
  %54 = load i40, i40* %53, align 4, !dbg !2162
  %55 = and i40 %54, 15, !dbg !2164
  %56 = icmp eq i40 %55, 5, !dbg !2164
  br i1 %56, label %128, label %57, !dbg !2165

; <label>:57:                                     ; preds = %51
  tail call void @clr_hfp_flag(i8* %0, i8 zeroext 0) #12, !dbg !2166
  %58 = load i40, i40* %53, align 4, !dbg !2168
  %59 = and i40 %58, -16, !dbg !2168
  %60 = or i40 %59, 5, !dbg !2168
  store i40 %60, i40* %53, align 4, !dbg !2168
  %61 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !2169
  tail call void @update_bt_current_status(i8* %61, i8 zeroext 16, i8 zeroext 45) #12, !dbg !2170
  %62 = tail call i32 @update_multi_bd_status(i8* %61, i8 zeroext 8, i8 zeroext -1) #13, !dbg !2171
  br label %128, !dbg !2172

; <label>:63:                                     ; preds = %6
  tail call void @bt_event_update_to_user(i8* %0, i32 1129270784, i8 zeroext 24, i32 %2) #13, !dbg !2173
  %64 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 24, i32 %2, i8* %0) #13, !dbg !2174
  br label %128, !dbg !2175

; <label>:65:                                     ; preds = %6
  %66 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2176
  %67 = bitcast [5 x i8]* %66 to i40*, !dbg !2176
  %68 = load i40, i40* %67, align 4, !dbg !2177
  %69 = shl i32 %2, 31, !dbg !2177
  %70 = zext i32 %69 to i40, !dbg !2177
  %71 = and i40 %68, -2147483649, !dbg !2177
  %72 = or i40 %71, %70, !dbg !2177
  store i40 %72, i40* %67, align 4, !dbg !2177
  %73 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_update_flags, i32 35, i32 %2, i8* %0) #13, !dbg !2178
  br label %128, !dbg !2179

; <label>:74:                                     ; preds = %6
  %75 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2180
  %76 = bitcast [5 x i8]* %75 to i40*, !dbg !2180
  %77 = load i40, i40* %76, align 4, !dbg !2181
  %78 = shl i32 %2, 8, !dbg !2181
  %79 = and i32 %78, 3840, !dbg !2181
  %80 = zext i32 %79 to i40, !dbg !2181
  %81 = and i40 %77, -3841, !dbg !2181
  %82 = or i40 %81, %80, !dbg !2181
  store i40 %82, i40* %76, align 4, !dbg !2181
  br label %128, !dbg !2182

; <label>:83:                                     ; preds = %6
  %84 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2183
  %85 = bitcast [5 x i8]* %84 to i40*, !dbg !2183
  %86 = load i40, i40* %85, align 4, !dbg !2184
  %87 = shl i32 %2, 30, !dbg !2184
  %88 = and i32 %87, 1073741824, !dbg !2184
  %89 = and i40 %86, -1073803265, !dbg !2184
  %90 = shl i32 %2, 12, !dbg !2185
  %91 = and i32 %90, 61440, !dbg !2185
  %92 = or i32 %91, %88, !dbg !2184
  %93 = zext i32 %92 to i40, !dbg !2184
  %94 = or i40 %93, %89, !dbg !2185
  store i40 %94, i40* %85, align 4, !dbg !2185
  br label %128, !dbg !2186

; <label>:95:                                     ; preds = %6
  %96 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2187
  %97 = bitcast [5 x i8]* %96 to i40*, !dbg !2187
  %98 = load i40, i40* %97, align 4, !dbg !2188
  %99 = shl i32 %2, 12, !dbg !2188
  %100 = and i32 %99, 61440, !dbg !2188
  %101 = zext i32 %100 to i40, !dbg !2188
  %102 = and i40 %98, -61441, !dbg !2188
  %103 = or i40 %102, %101, !dbg !2188
  store i40 %103, i40* %97, align 4, !dbg !2188
  br label %128, !dbg !2189

; <label>:104:                                    ; preds = %6
  %105 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2190
  %106 = bitcast [5 x i8]* %105 to i40*, !dbg !2190
  %107 = load i40, i40* %106, align 4, !dbg !2191
  %108 = shl i32 %2, 16, !dbg !2191
  %109 = and i32 %108, 983040, !dbg !2191
  %110 = zext i32 %109 to i40, !dbg !2191
  %111 = and i40 %107, -983041, !dbg !2191
  %112 = or i40 %111, %110, !dbg !2191
  store i40 %112, i40* %106, align 4, !dbg !2191
  br label %128, !dbg !2192

; <label>:113:                                    ; preds = %6
  %114 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !2193
  %115 = bitcast [5 x i8]* %114 to i40*, !dbg !2193
  %116 = load i40, i40* %115, align 4, !dbg !2194
  %117 = shl i32 %2, 24, !dbg !2194
  %118 = and i32 %117, 50331648, !dbg !2194
  %119 = zext i32 %118 to i40, !dbg !2194
  %120 = and i40 %116, -50331649, !dbg !2194
  %121 = or i40 %120, %119, !dbg !2194
  store i40 %121, i40* %115, align 4, !dbg !2194
  %122 = lshr exact i32 %118, 24, !dbg !2195
  %123 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0), i32 %122) #12, !dbg !2196
  %124 = load i40, i40* %115, align 4, !dbg !2197
  %125 = lshr i40 %124, 24, !dbg !2197
  %126 = trunc i40 %125 to i32, !dbg !2197
  %127 = and i32 %126, 3, !dbg !2197
  tail call void @user_hfp_call_hold_flag(i32 %127) #12, !dbg !2198
  br label %128, !dbg !2199

; <label>:128:                                    ; preds = %113, %104, %95, %83, %74, %65, %63, %57, %51, %39, %33, %26, %20, %13, %7, %6, %3
  ret void, !dbg !2200
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @delete_last_device_from_vm() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2202 {
  %1 = alloca [6 x i8], align 1
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #14, !dbg !2206
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %1, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2205, metadata !DIExpression()), !dbg !2208
  %3 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_dev_info_index to i8 ()*)() #13, !dbg !2209
  %4 = call zeroext i8 @restore_remote_device_info_opt([6 x i8]* nonnull %1, i8 zeroext 1, i8 zeroext %3) #13, !dbg !2210
  call void @llvm.dbg.value(metadata i8 %4, metadata !2205, metadata !DIExpression()), !dbg !2208
  %5 = icmp eq i8 %4, 0, !dbg !2212
  br i1 %5, label %8, label %6, !dbg !2214

; <label>:6:                                      ; preds = %0
  %7 = call zeroext i8 bitcast (i8 (...)* @get_remote_dev_info_index to i8 ()*)() #13, !dbg !2215
  call void @delete_link_key([6 x i8]* nonnull %1, i8 zeroext %7) #13, !dbg !2217
  br label %8, !dbg !2219

; <label>:8:                                      ; preds = %6, %0
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #14, !dbg !2220
  ret i8 %4, !dbg !2221
}

; Function Attrs: optsize
declare zeroext i8 @restore_remote_device_info_opt([6 x i8]*, i8 zeroext, i8 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @get_remote_dev_info_index(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @delete_link_key([6 x i8]*, i8 zeroext) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden zeroext i8 @connect_last_device_from_vm() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2222 {
  %1 = alloca [6 x i8], align 1
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0, !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #14, !dbg !2226
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %1, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2225, metadata !DIExpression()), !dbg !2228
  %3 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_dev_info_index to i8 ()*)() #13, !dbg !2229
  %4 = call zeroext i8 @restore_remote_device_info_opt([6 x i8]* nonnull %1, i8 zeroext 1, i8 zeroext %3) #13, !dbg !2230
  call void @llvm.dbg.value(metadata i8 %4, metadata !2225, metadata !DIExpression()), !dbg !2228
  %5 = icmp eq i8 %4, 0, !dbg !2232
  br i1 %5, label %9, label %6, !dbg !2234

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #12, !dbg !2235
  call void @put_buf(i8* nonnull %2, i32 6) #13, !dbg !2237
  %8 = call i32 @user_send_cmd_prepare(i32 1, i16 zeroext 6, i8* nonnull %2) #12, !dbg !2238
  br label %9, !dbg !2239

; <label>:9:                                      ; preds = %6, %0
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #14, !dbg !2240
  ret i8 %4, !dbg !2241
}

; Function Attrs: nounwind optsize
define hidden void @get_remote_device_info_from_vm() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2242 {
  %1 = load i32, i32* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 9), align 1, !dbg !2243
  %2 = trunc i32 %1 to i8, !dbg !2243
  %3 = and i8 %2, 15, !dbg !2243
  %4 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2244, !tbaa !661
  %5 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %4, i32 0, i32 9, !dbg !2245
  %6 = load i32, i32* %5, align 1, !dbg !2245
  %7 = lshr i32 %6, 20, !dbg !2245
  %8 = trunc i32 %7 to i8, !dbg !2245
  %9 = and i8 %8, 1, !dbg !2245
  %10 = tail call zeroext i8 @restore_remote_device_info_opt([6 x i8]* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 6, i32 0), i8 zeroext %3, i8 zeroext %9) #13, !dbg !2246
  %11 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2247
  %12 = shl i8 %10, 3, !dbg !2247
  %13 = and i8 %12, 56, !dbg !2247
  %14 = zext i8 %13 to i16, !dbg !2247
  %15 = and i16 %11, -57, !dbg !2247
  %16 = or i16 %14, %15, !dbg !2247
  store i16 %16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2247
  ret void, !dbg !2248
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @get_current_poweron_memory_search_index(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2249 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2253
  tail call void @llvm.dbg.declare(metadata [6 x i8]* @get_current_poweron_memory_search_index.invalid_addr, metadata !2252, metadata !DIExpression()), !dbg !2254
  %2 = icmp eq i8* %0, null, !dbg !2255
  br i1 %2, label %26, label %3, !dbg !2257

; <label>:3:                                      ; preds = %1
  %4 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2
  %5 = lshr i16 %4, 3, !dbg !2258
  %6 = and i16 %5, 7, !dbg !2258
  %7 = icmp eq i16 %6, 0, !dbg !2259
  br i1 %7, label %26, label %8, !dbg !2260

; <label>:8:                                      ; preds = %3
  br label %9, !dbg !2258

; <label>:9:                                      ; preds = %16, %8
  %10 = phi i16 [ %23, %16 ], [ %6, %8 ]
  %11 = zext i16 %10 to i32, !dbg !2258
  %12 = add nsw i32 %11, -1, !dbg !2261
  %13 = getelementptr inbounds %struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 6, i32 %12, i32 0, !dbg !2263
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %0, i8* %13, i32 6, i32 1, i1 false), !dbg !2263
  %14 = tail call i32 @memcmp(i8* nonnull %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_current_poweron_memory_search_index.invalid_addr, i32 0, i32 0), i32 6) #12, !dbg !2264
  %15 = icmp eq i32 %14, 0, !dbg !2264
  br i1 %15, label %16, label %25, !dbg !2266

; <label>:16:                                     ; preds = %9
  %17 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2267
  %18 = add i16 %17, 56, !dbg !2267
  %19 = and i16 %18, 56, !dbg !2267
  %20 = and i16 %17, -57, !dbg !2267
  %21 = or i16 %19, %20, !dbg !2267
  store i16 %21, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2267
  %22 = lshr i16 %18, 3, !dbg !2258
  %23 = and i16 %22, 7, !dbg !2258
  %24 = icmp eq i16 %23, 0, !dbg !2259
  br i1 %24, label %25, label %9, !dbg !2260

; <label>:25:                                     ; preds = %16, %9
  br label %26, !dbg !2269

; <label>:26:                                     ; preds = %25, %3, %1
  %27 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2269
  %28 = lshr i16 %27, 3, !dbg !2269
  %29 = trunc i16 %28 to i8, !dbg !2269
  %30 = and i8 %29, 7, !dbg !2269
  ret i8 %30, !dbg !2270
}

; Function Attrs: nounwind optsize readnone
define hidden i8* @get_mac_memory_by_index(i8 zeroext) local_unnamed_addr #8 section ".bt_stack_code" !dbg !2271 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2275, metadata !DIExpression()), !dbg !2276
  %2 = zext i8 %0 to i32, !dbg !2277
  %3 = add i8 %0, -1, !dbg !2279
  %4 = icmp ult i8 %3, 9, !dbg !2279
  %5 = add nsw i32 %2, -1, !dbg !2280
  %6 = getelementptr inbounds %struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 6, i32 %5, i32 0, !dbg !2282
  %7 = select i1 %4, i8* %6, i8* null, !dbg !2279
  ret i8* %7, !dbg !2283
}

; Function Attrs: nounwind optsize
define hidden void @clear_current_poweron_memory_search_index(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2284 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2286, metadata !DIExpression()), !dbg !2287
  %2 = icmp eq i8 %0, 0, !dbg !2288
  %3 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2
  br i1 %2, label %14, label %4, !dbg !2290

; <label>:4:                                      ; preds = %1
  %5 = lshr i16 %3, 3, !dbg !2291
  %6 = and i16 %5, 7, !dbg !2294
  %7 = icmp eq i16 %6, 0, !dbg !2294
  br i1 %7, label %18, label %8, !dbg !2295

; <label>:8:                                      ; preds = %4
  %9 = shl nuw i16 %5, 3, !dbg !2296
  %10 = add i16 %9, 56, !dbg !2296
  %11 = and i16 %10, 56, !dbg !2296
  %12 = and i16 %3, -57, !dbg !2296
  %13 = or i16 %11, %12, !dbg !2296
  br label %16, !dbg !2298

; <label>:14:                                     ; preds = %1
  %15 = and i16 %3, -57, !dbg !2299
  br label %16

; <label>:16:                                     ; preds = %14, %8
  %17 = phi i16 [ %13, %8 ], [ %15, %14 ]
  store i16 %17, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2
  br label %18, !dbg !2301

; <label>:18:                                     ; preds = %16, %4
  ret void, !dbg !2301
}

; Function Attrs: nounwind optsize
define hidden void @user_cmd_timer_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2302 {
  %1 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !2308, !tbaa !567
  %2 = add i8 %1, -1, !dbg !2310
  %3 = icmp ult i8 %2, 5, !dbg !2310
  br i1 %3, label %4, label %5, !dbg !2310

; <label>:4:                                      ; preds = %0
  store i8 %2, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !2311, !tbaa !567
  br label %5, !dbg !2312

; <label>:5:                                      ; preds = %4, %0
  %6 = phi i8 [ 1, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i8 %6, metadata !2304, metadata !DIExpression()), !dbg !2313
  %7 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !2314, !tbaa !587
  %8 = icmp eq i8 %7, 0, !dbg !2316
  br i1 %8, label %11, label %9, !dbg !2317

; <label>:9:                                      ; preds = %5
  %10 = add i8 %7, -1, !dbg !2318
  store i8 %10, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !2318, !tbaa !587
  br label %11, !dbg !2319

; <label>:11:                                     ; preds = %9, %5
  %12 = phi i1 [ false, %9 ], [ true, %5 ]
  %13 = tail call fastcc zeroext i8 @connect_a2dp_w_phone_only_conn_hfp() #12, !dbg !2320
  call void @llvm.dbg.value(metadata i8 %13, metadata !2306, metadata !DIExpression()), !dbg !2321
  %14 = tail call zeroext i8 bitcast (i8 (...)* @__a2dp_conn_send_discover_cnt to i8 ()*)() #13, !dbg !2322
  call void @llvm.dbg.value(metadata i8 %14, metadata !2307, metadata !DIExpression()), !dbg !2323
  %15 = or i8 %13, %6, !dbg !2324
  %16 = or i8 %15, %14, !dbg !2324
  %17 = icmp eq i8 %16, 0, !dbg !2324
  %18 = and i1 %12, %17, !dbg !2324
  br i1 %18, label %31, label %19, !dbg !2324

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 1), align 4, !dbg !2326, !tbaa !1480
  %21 = icmp eq i32 %20, 0, !dbg !2328
  br i1 %21, label %22, label %26, !dbg !2329

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 2), align 4, !dbg !2330
  %24 = and i32 %23, -65536, !dbg !2330
  %25 = or i32 %24, 500, !dbg !2330
  store i32 %25, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 2), align 4, !dbg !2330
  store void (%struct.btstack_timer_source*)* @user_cmd_timeout_check, void (%struct.btstack_timer_source*)** getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 3), align 4, !dbg !2332, !tbaa !2333
  tail call void @btstack_set_timer(%struct.btstack_timer_source* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4), i16 signext 130) #13, !dbg !2334
  br label %31, !dbg !2335

; <label>:26:                                     ; preds = %19
  %27 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2336, !tbaa !621
  %28 = icmp slt i8 %27, 0, !dbg !2336
  br i1 %28, label %29, label %31, !dbg !2339

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.37, i32 0, i32 0)), !dbg !2340
  br label %31, !dbg !2340

; <label>:31:                                     ; preds = %29, %26, %22, %11
  ret void, !dbg !2342
}

; Function Attrs: optsize
declare zeroext i8 @__a2dp_conn_send_discover_cnt(...) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define internal void @user_cmd_timeout_check(%struct.btstack_timer_source* nocapture readnone) #0 section ".bt_stack_code" !dbg !2344 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !2349, metadata !DIExpression()), !dbg !2354
  %2 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !2355, !tbaa !567
  %3 = add i8 %2, -1, !dbg !2357
  %4 = icmp ult i8 %3, 5, !dbg !2357
  br i1 %4, label %5, label %6, !dbg !2357

; <label>:5:                                      ; preds = %1
  store i8 %3, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), align 4, !dbg !2358, !tbaa !567
  br label %6, !dbg !2359

; <label>:6:                                      ; preds = %5, %1
  %7 = phi i8 [ 1, %5 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i8 %7, metadata !2350, metadata !DIExpression()), !dbg !2360
  %8 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !2361, !tbaa !587
  %9 = icmp eq i8 %8, 0, !dbg !2363
  br i1 %9, label %12, label %10, !dbg !2364

; <label>:10:                                     ; preds = %6
  %11 = add i8 %8, -1, !dbg !2365
  store i8 %11, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !2365, !tbaa !587
  br label %12, !dbg !2366

; <label>:12:                                     ; preds = %10, %6
  %13 = phi i1 [ false, %10 ], [ true, %6 ]
  %14 = tail call fastcc zeroext i8 @connect_a2dp_w_phone_only_conn_hfp() #12, !dbg !2367
  call void @llvm.dbg.value(metadata i8 %14, metadata !2352, metadata !DIExpression()), !dbg !2368
  %15 = tail call zeroext i8 bitcast (i8 (...)* @__a2dp_conn_send_discover_cnt to i8 ()*)() #13, !dbg !2369
  call void @llvm.dbg.value(metadata i8 %15, metadata !2353, metadata !DIExpression()), !dbg !2370
  %16 = or i8 %14, %7, !dbg !2371
  %17 = or i8 %16, %15, !dbg !2371
  %18 = icmp eq i8 %17, 0, !dbg !2371
  %19 = and i1 %13, %18, !dbg !2371
  br i1 %19, label %20, label %22, !dbg !2371

; <label>:20:                                     ; preds = %12
  %21 = tail call i32 @user_send_cmd_prepare(i32 136, i16 zeroext 0, i8* null) #12, !dbg !2373
  br label %22, !dbg !2375

; <label>:22:                                     ; preds = %20, %12
  ret void, !dbg !2376
}

; Function Attrs: optsize
declare void @btstack_set_timer(%struct.btstack_timer_source*, i16 signext) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden void @remove_user_cmd_timer() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2377 {
  %1 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 1), align 4, !dbg !2378, !tbaa !1480
  %2 = icmp eq i32 %1, 0, !dbg !2380
  br i1 %2, label %5, label %3, !dbg !2381

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4)) #13, !dbg !2382
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.btstack_timer_source* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4) to i8*), i8 0, i32 20, i32 4, i1 false), !dbg !2384
  br label %5, !dbg !2385

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !2386
}

; Function Attrs: optsize
declare i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source*) local_unnamed_addr #7

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @check_user_cmd_timer_status() local_unnamed_addr #9 section ".bt_stack_code" !dbg !1477 {
  %1 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4, i32 1), align 4, !dbg !2387, !tbaa !1480
  %2 = icmp ne i32 %1, 0, !dbg !2388
  %3 = zext i1 %2 to i8, !dbg !2388
  ret i8 %3, !dbg !2389
}

; Function Attrs: nounwind optsize
define hidden void @user_cmd_ctrl_init(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2394, metadata !DIExpression()), !dbg !2395
  %2 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2396, !tbaa !621
  %3 = icmp slt i8 %2, 0, !dbg !2396
  br i1 %3, label %4, label %6, !dbg !2398

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i32 288) #12, !dbg !2399
  br label %6, !dbg !2399

; <label>:6:                                      ; preds = %4, %1
  store %struct.user_cmd_ctrl* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0), %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !2401, !tbaa !661
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 0), i8 0, i64 124, i32 4, i1 false), !dbg !2402
  tail call void @stack_run_loop_register(%struct.run_loop* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 1), void (%struct.run_loop*)* nonnull @user_operation_control, i8* %0) #13, !dbg !2403
  %7 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2404
  %8 = and i16 %7, -200, !dbg !2405
  store i16 %8, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2405
  store i8 -1, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 9, i32 0), align 1, !dbg !2406, !tbaa !621
  store i8 -1, i8* bitcast (i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 10, i32 0, i32 0) to i8*), align 2, !dbg !2407, !tbaa !621
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.btstack_timer_source* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4) to i8*), i8 0, i32 20, i32 4, i1 false), !dbg !2408
  ret void, !dbg !2409
}

; Function Attrs: optsize
declare void @stack_run_loop_register(%struct.run_loop*, void (%struct.run_loop*)*, i8*) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define internal void @user_operation_control(%struct.run_loop* nocapture readnone) #0 section ".bt_stack_code" !dbg !2410 {
  %2 = alloca %struct.spp_ioctrl_str, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.run_loop* %0, metadata !2412, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 -86, metadata !2413, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i16 0, metadata !2416, metadata !DIExpression()), !dbg !2428
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0, !dbg !2429
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #14, !dbg !2429
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !2417, metadata !DIExpression()), !dbg !2430
  %6 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 0), align 4, !dbg !2431, !tbaa !2433
  %7 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 1), align 1, !dbg !2434, !tbaa !1497
  %8 = icmp eq i8 %6, %7, !dbg !2435
  br i1 %8, label %13, label %9, !dbg !2436

; <label>:9:                                      ; preds = %1
  %10 = zext i8 %6 to i32, !dbg !2437
  %11 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !2437, !tbaa !661
  %12 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %11, i32 0, i32 11, i32 %10, !dbg !2438
  call void @llvm.dbg.value(metadata i8 0, metadata !2413, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 -86, metadata !2413, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 undef, metadata !2414, metadata !DIExpression()), !dbg !2440
  br label %24, !dbg !2441

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.value(metadata i8 -86, metadata !2413, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 undef, metadata !2414, metadata !DIExpression()), !dbg !2440
  %14 = load i8, i8* @btstack_emitter_support, align 1, !dbg !2443, !tbaa !621
  %15 = icmp eq i8 %14, 0, !dbg !2443
  br i1 %15, label %564, label %16, !dbg !2441

; <label>:16:                                     ; preds = %13
  %17 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 13), align 2, !dbg !2444, !tbaa !2447
  %18 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 14), align 1, !dbg !2448, !tbaa !1650
  %19 = icmp eq i8 %17, %18, !dbg !2449
  br i1 %19, label %564, label %20, !dbg !2450

; <label>:20:                                     ; preds = %16
  %21 = zext i8 %17 to i32, !dbg !2451
  %22 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !2451, !tbaa !661
  %23 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %22, i32 0, i32 12, i32 %21, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %28, metadata !2414, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 1, metadata !2413, metadata !DIExpression()), !dbg !2427
  br label %24

; <label>:24:                                     ; preds = %20, %9
  %25 = phi i8* [ %23, %20 ], [ %12, %9 ]
  %26 = phi i8 [ 1, %20 ], [ 0, %9 ]
  %27 = load i8, i8* %25, align 1, !tbaa !621
  %28 = zext i8 %27 to i32
  call void @llvm.dbg.value(metadata i8 %26, metadata !2413, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 %28, metadata !2414, metadata !DIExpression()), !dbg !2440
  %29 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext %26) #12, !dbg !2454
  call void @llvm.dbg.value(metadata %struct.conn_info* %29, metadata !2415, metadata !DIExpression()), !dbg !2455
  %30 = icmp ne %struct.conn_info* %29, null, !dbg !2456
  br i1 %30, label %31, label %46, !dbg !2458

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2459
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %5, i8* %32, i32 6, i32 1, i1 false), !dbg !2459
  %33 = load i32, i32* @config_btstask_auto_exit_sniff, align 4, !dbg !2461, !tbaa !2463
  %34 = icmp eq i32 %33, 0, !dbg !2461
  br i1 %34, label %46, label %35, !dbg !2464

; <label>:35:                                     ; preds = %31
  %36 = icmp eq i8 %27, -126, !dbg !2465
  br i1 %36, label %44, label %37, !dbg !2468

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 5, !dbg !2469
  %39 = bitcast [5 x i8]* %38 to i40*, !dbg !2469
  %40 = load i40, i40* %39, align 4, !dbg !2469
  %41 = lshr i40 %40, 33, !dbg !2469
  %42 = trunc i40 %41 to i8, !dbg !2469
  %43 = and i8 %42, 3, !dbg !2469
  tail call void @hci_set_sniff_mode(i32 0, i8 zeroext %43, i8* %32, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0) #13, !dbg !2471
  br label %46, !dbg !2472

; <label>:44:                                     ; preds = %35
  %45 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0)) #12, !dbg !2473
  br label %424, !dbg !2475

; <label>:46:                                     ; preds = %37, %31, %24
  %47 = add nsw i32 %28, -22, !dbg !2476
  %48 = icmp ult i32 %47, 27, !dbg !2476
  br i1 %48, label %49, label %51, !dbg !2476

; <label>:49:                                     ; preds = %46
  %50 = tail call i32 @user_hfp_send_cmd(%struct.conn_info* %29, i32 %28) #12, !dbg !2478
  br label %202, !dbg !2480

; <label>:51:                                     ; preds = %46
  %52 = add nsw i32 %28, -65, !dbg !2481
  %53 = icmp ult i32 %52, 8, !dbg !2481
  br i1 %53, label %54, label %82, !dbg !2481

; <label>:54:                                     ; preds = %51
  %55 = load i8, i8* @btstack_emitter_support, align 1, !dbg !2484, !tbaa !621
  %56 = icmp eq i8 %55, 0, !dbg !2484
  br i1 %56, label %202, label %57, !dbg !2487

; <label>:57:                                     ; preds = %54
  %58 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2488, !tbaa !661
  %59 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %58, i32 0, i32 9, !dbg !2490
  %60 = load i32, i32* %59, align 1, !dbg !2490
  %61 = and i32 %60, 1048576, !dbg !2490
  %62 = icmp ne i32 %61, 0, !dbg !2488
  %63 = icmp ult i32 %52, 2, !dbg !2491
  %64 = and i1 %63, %62, !dbg !2494
  br i1 %64, label %65, label %202, !dbg !2494

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %58, i32 0, i32 5, !dbg !2496
  store i16 0, i16* %66, align 4, !dbg !2498, !tbaa !908
  %67 = icmp eq i8 %26, 1, !dbg !2499
  %68 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !621
  %69 = icmp slt i8 %68, 0
  br i1 %67, label %70, label %73, !dbg !2501

; <label>:70:                                     ; preds = %65
  br i1 %69, label %71, label %76, !dbg !2502

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.39, i32 0, i32 0)), !dbg !2504
  br label %76, !dbg !2504

; <label>:73:                                     ; preds = %65
  br i1 %69, label %74, label %76, !dbg !2507

; <label>:74:                                     ; preds = %73
  %75 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.38, i32 0, i32 0)), !dbg !2509
  br label %76, !dbg !2509

; <label>:76:                                     ; preds = %74, %73, %71, %70
  %77 = phi i16 [ 2, %74 ], [ 2, %73 ], [ 32, %71 ], [ 32, %70 ]
  %78 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !tbaa !661
  %79 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %78, i32 0, i32 5
  %80 = load i16, i16* %79, align 4, !tbaa !908
  %81 = or i16 %80, %77
  store i16 %81, i16* %79, align 4, !tbaa !908
  br label %202, !dbg !2512

; <label>:82:                                     ; preds = %51
  %83 = add nsw i32 %28, -50, !dbg !2513
  %84 = icmp ult i32 %83, 13, !dbg !2513
  br i1 %84, label %202, label %85, !dbg !2513

; <label>:85:                                     ; preds = %82
  %86 = add nsw i32 %28, -77, !dbg !2516
  %87 = icmp ult i32 %86, 12, !dbg !2516
  br i1 %87, label %88, label %145, !dbg !2516

; <label>:88:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i32 0, metadata !2519, metadata !DIExpression()), !dbg !2526
  %89 = icmp eq %struct.conn_info* %29, null, !dbg !2529
  br i1 %89, label %90, label %100, !dbg !2531

; <label>:90:                                     ; preds = %88
  %91 = icmp eq i8 %27, 77, !dbg !2532
  br i1 %91, label %92, label %202, !dbg !2535

; <label>:92:                                     ; preds = %90
  %93 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2536, !tbaa !661
  %94 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %93, i32 0, i32 9, !dbg !2538
  %95 = load i32, i32* %94, align 1, !dbg !2538
  %96 = and i32 %95, 64, !dbg !2538
  %97 = icmp eq i32 %96, 0, !dbg !2536
  br i1 %97, label %552, label %98, !dbg !2539

; <label>:98:                                     ; preds = %92
  %99 = tail call i32 @user_send_cmd_prepare(i32 1, i16 zeroext 6, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 0)) #13, !dbg !2541
  br label %552, !dbg !2543

; <label>:100:                                    ; preds = %88
  %101 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 1), align 4, !dbg !2544, !tbaa !2546
  %102 = icmp eq i32 (i8*, i32)* %101, null, !dbg !2548
  br i1 %102, label %202, label %103, !dbg !2549

; <label>:103:                                    ; preds = %100
  switch i8 %27, label %202 [
    i8 77, label %104
    i8 81, label %107
    i8 78, label %121
    i8 79, label %121
    i8 80, label %121
    i8 82, label %124
    i8 83, label %127
    i8 84, label %130
    i8 85, label %133
    i8 86, label %136
    i8 87, label %139
    i8 88, label %142
  ], !dbg !2550

; <label>:104:                                    ; preds = %103
  %105 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2552
  %106 = tail call i32 %101(i8* %105, i32 8) #13, !dbg !2554
  br label %552, !dbg !2555

; <label>:107:                                    ; preds = %103
  %108 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2556, !tbaa !661
  %109 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %108, i32 0, i32 9, !dbg !2558
  %110 = load i32, i32* %109, align 1, !dbg !2558
  %111 = and i32 %110, 64, !dbg !2556
  %112 = icmp eq i32 %111, 0, !dbg !2556
  br i1 %112, label %118, label %113, !dbg !2559

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 1, !dbg !2560
  %115 = load i16, i16* %114, align 2, !dbg !2560, !tbaa !643
  %116 = icmp eq i16 %115, 0, !dbg !2564
  br i1 %116, label %552, label %117, !dbg !2565

; <label>:117:                                    ; preds = %113
  tail call void @hci_disconnect_cmd(i16 zeroext %115, i8 zeroext 19) #13, !dbg !2567
  br label %552, !dbg !2569

; <label>:118:                                    ; preds = %107
  %119 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2570
  %120 = tail call i32 %101(i8* %119, i32 9) #13, !dbg !2572
  br label %552

; <label>:121:                                    ; preds = %103, %103, %103
  %122 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2573
  %123 = tail call i32 %101(i8* %122, i32 2) #13, !dbg !2574
  br label %202, !dbg !2575

; <label>:124:                                    ; preds = %103
  %125 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2576
  %126 = tail call i32 %101(i8* %125, i32 4) #13, !dbg !2577
  br label %552, !dbg !2578

; <label>:127:                                    ; preds = %103
  %128 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2579
  %129 = tail call i32 %101(i8* %128, i32 5) #13, !dbg !2580
  br label %552, !dbg !2581

; <label>:130:                                    ; preds = %103
  %131 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2582
  %132 = tail call i32 %101(i8* %131, i32 6) #13, !dbg !2583
  br label %552, !dbg !2584

; <label>:133:                                    ; preds = %103
  %134 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2585
  %135 = tail call i32 %101(i8* %134, i32 7) #13, !dbg !2586
  br label %552, !dbg !2587

; <label>:136:                                    ; preds = %103
  %137 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2588
  %138 = tail call i32 %101(i8* %137, i32 10) #13, !dbg !2589
  br label %552, !dbg !2590

; <label>:139:                                    ; preds = %103
  %140 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2591
  %141 = tail call i32 %101(i8* %140, i32 11) #13, !dbg !2592
  br label %552, !dbg !2593

; <label>:142:                                    ; preds = %103
  %143 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2594
  %144 = tail call i32 %101(i8* %143, i32 12) #13, !dbg !2595
  br label %552, !dbg !2596

; <label>:145:                                    ; preds = %85
  %146 = add nsw i32 %28, -109, !dbg !2597
  %147 = icmp ult i32 %146, 4, !dbg !2597
  br i1 %147, label %148, label %202, !dbg !2597

; <label>:148:                                    ; preds = %145
  call void @llvm.dbg.value(metadata i32 0, metadata !2600, metadata !DIExpression()), !dbg !2615
  %149 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %2, i32 0, i32 0, i32 0, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %149) #14, !dbg !2618
  call void @llvm.dbg.value(metadata i32 0, metadata !2614, metadata !DIExpression()), !dbg !2619
  %150 = icmp eq %struct.conn_info* %29, null, !dbg !2620
  br i1 %150, label %160, label %151, !dbg !2622

; <label>:151:                                    ; preds = %148
  %152 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 2, !dbg !2623
  %153 = load i16, i16* %152, align 4, !dbg !2623, !tbaa !795
  %154 = zext i16 %153 to i32, !dbg !2626
  %155 = and i32 %154, 1, !dbg !2627
  %156 = icmp eq i32 %155, 0, !dbg !2627
  br i1 %156, label %157, label %161, !dbg !2628

; <label>:157:                                    ; preds = %151
  call void @llvm.dbg.value(metadata i32 1, metadata !2614, metadata !DIExpression()), !dbg !2619
  %158 = and i32 %154, 4096, !dbg !2630
  %159 = icmp eq i32 %158, 0, !dbg !2630
  call void @llvm.dbg.value(metadata i32 2, metadata !2614, metadata !DIExpression()), !dbg !2619
  br i1 %159, label %160, label %161

; <label>:160:                                    ; preds = %157, %148
  call void @llvm.dbg.value(metadata i32 %162, metadata !2614, metadata !DIExpression()), !dbg !2619
  store i16 0, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 5), align 4, !dbg !2634, !tbaa !1368
  store i8* null, i8** getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 4), align 4, !dbg !2637, !tbaa !1374
  br label %201, !dbg !2638

; <label>:161:                                    ; preds = %157, %151
  %162 = phi i32 [ 0, %151 ], [ 2, %157 ]
  call void @llvm.dbg.value(metadata i32 %162, metadata !2614, metadata !DIExpression()), !dbg !2619
  %163 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 2), align 4, !dbg !2639, !tbaa !2641
  %164 = icmp ne i32 (i8*)* %163, null, !dbg !2642
  %165 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 10), align 4, !dbg !2643
  %166 = icmp ne i32 (i8*)* %165, null, !dbg !2645
  %167 = or i1 %164, %166, !dbg !2646
  br i1 %167, label %168, label %201, !dbg !2646

; <label>:168:                                    ; preds = %161
  switch i8 %27, label %201 [
    i8 112, label %169
    i8 110, label %172
    i8 109, label %172
  ], !dbg !2647

; <label>:169:                                    ; preds = %168
  %170 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %2, i32 0, i32 2
  store i32 2, i32* %170, align 4, !tbaa !2649
  %171 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2651
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %149, i8* %171, i32 6, i32 4, i1 false) #14, !dbg !2651
  br label %183, !dbg !2653

; <label>:172:                                    ; preds = %168, %168
  %173 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 5), align 4, !dbg !2654, !tbaa !1368
  %174 = icmp eq i16 %173, 0, !dbg !2656
  br i1 %174, label %201, label %175, !dbg !2657

; <label>:175:                                    ; preds = %172
  %176 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %2, i32 0, i32 2
  store i32 3, i32* %176, align 4, !tbaa !2649
  %177 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 4) to i32*), align 4, !dbg !2658, !tbaa !1374
  %178 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %2, i32 0, i32 4, !dbg !2659
  %179 = bitcast i8** %178 to i32*, !dbg !2660
  store i32 %177, i32* %179, align 4, !dbg !2660, !tbaa !2661
  %180 = zext i16 %173 to i32, !dbg !2662
  %181 = getelementptr inbounds %struct.spp_ioctrl_str, %struct.spp_ioctrl_str* %2, i32 0, i32 3, !dbg !2663
  store i32 %180, i32* %181, align 4, !dbg !2664, !tbaa !2665
  %182 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2666
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %149, i8* %182, i32 6, i32 4, i1 false) #14, !dbg !2666
  br label %183, !dbg !2667

; <label>:183:                                    ; preds = %175, %169
  %184 = icmp eq i32 %162, 2, !dbg !2668
  br i1 %184, label %185, label %187, !dbg !2670

; <label>:185:                                    ; preds = %183
  %186 = call i32 %165(i8* nonnull %149) #13, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %186, metadata !2600, metadata !DIExpression()), !dbg !2615
  br label %189, !dbg !2673

; <label>:187:                                    ; preds = %183
  %188 = call i32 %163(i8* nonnull %149) #13, !dbg !2674
  call void @llvm.dbg.value(metadata i32 %188, metadata !2600, metadata !DIExpression()), !dbg !2615
  br label %189

; <label>:189:                                    ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  call void @llvm.dbg.value(metadata i32 %190, metadata !2600, metadata !DIExpression()), !dbg !2615
  %191 = icmp eq i32 %190, 0, !dbg !2676
  br i1 %191, label %192, label %193, !dbg !2678

; <label>:192:                                    ; preds = %189
  store i16 0, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 5), align 4, !dbg !2679, !tbaa !1368
  store i8* null, i8** getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 4), align 4, !dbg !2681, !tbaa !1374
  call void @user_spp_send_ok_callback(i32 0) #13, !dbg !2682
  br label %201, !dbg !2683

; <label>:193:                                    ; preds = %189
  %194 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2684, !tbaa !621
  %195 = and i8 %194, 32, !dbg !2684
  %196 = icmp eq i8 %195, 0, !dbg !2684
  br i1 %196, label %199, label %197, !dbg !2687

; <label>:197:                                    ; preds = %193
  %198 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0)) #13, !dbg !2688
  br label %199, !dbg !2688

; <label>:199:                                    ; preds = %197, %193
  call void @llvm.dbg.value(metadata i32 -1002, metadata !2600, metadata !DIExpression()), !dbg !2615
  %200 = call zeroext i16 @sys_timeout_add(i8* null, void (i8*)* nonnull @__bt_spp_data_try_send, i32 10) #13, !dbg !2690
  br label %201

; <label>:201:                                    ; preds = %199, %192, %172, %168, %161, %160
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %149) #14, !dbg !2691
  br label %202, !dbg !2692

; <label>:202:                                    ; preds = %201, %145, %121, %103, %100, %90, %82, %76, %57, %54, %49
  switch i8 %27, label %552 [
    i8 7, label %206
    i8 8, label %209
    i8 9, label %216
    i8 10, label %227
    i8 0, label %230
    i8 3, label %311
    i8 1, label %312
    i8 2, label %337
    i8 -127, label %343
    i8 4, label %356
    i8 74, label %365
    i8 -117, label %367
    i8 6, label %375
    i8 11, label %376
    i8 15, label %381
    i8 13, label %393
    i8 14, label %405
    i8 12, label %406
    i8 18, label %407
    i8 5, label %203
    i8 -126, label %424
    i8 -125, label %434
    i8 16, label %441
    i8 17, label %443
    i8 20, label %444
    i8 21, label %453
    i8 19, label %204
    i8 -119, label %481
    i8 -118, label %511
    i8 -124, label %541
    i8 -123, label %543
    i8 -121, label %545
    i8 -120, label %546
    i8 -122, label %547
  ], !dbg !2475

; <label>:203:                                    ; preds = %202
  br label %408, !dbg !2693

; <label>:204:                                    ; preds = %202
  %205 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4
  br label %454, !dbg !2702

; <label>:206:                                    ; preds = %202
  br i1 %30, label %207, label %552, !dbg !2703

; <label>:207:                                    ; preds = %206
  %208 = call i32 @music_player_ctrl(i8* nonnull %5, i8 zeroext 0) #13, !dbg !2704
  br label %552, !dbg !2707

; <label>:209:                                    ; preds = %202
  br i1 %30, label %210, label %552, !dbg !2708

; <label>:210:                                    ; preds = %209
  %211 = call zeroext i8 @sco_connection_setup_dis(i8* nonnull %5) #13, !dbg !2709
  call void @llvm.dbg.value(metadata i8 %211, metadata !2419, metadata !DIExpression()), !dbg !2710
  %212 = icmp eq i8 %211, 10, !dbg !2711
  br i1 %212, label %213, label %552, !dbg !2713

; <label>:213:                                    ; preds = %210
  %214 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !2714
  %215 = call i32 @hfp_send_bcc_cmd(i8* %214) #13, !dbg !2716
  br label %552, !dbg !2717

; <label>:216:                                    ; preds = %202
  br i1 %30, label %217, label %552, !dbg !2718

; <label>:217:                                    ; preds = %216
  %218 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 2, !dbg !2719
  %219 = load i16, i16* %218, align 4, !dbg !2719, !tbaa !795
  %220 = trunc i16 %219 to i8, !dbg !2723
  %221 = icmp slt i8 %220, 0, !dbg !2723
  %222 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0
  br i1 %221, label %223, label %225, !dbg !2724

; <label>:223:                                    ; preds = %217
  %224 = call zeroext i8 @setup_hfp_ag_esco_link(i8* %222) #13, !dbg !2725
  br label %552, !dbg !2727

; <label>:225:                                    ; preds = %217
  %226 = call i32 @hfp_send_bcc_cmd(i8* %222) #13, !dbg !2728
  br label %552

; <label>:227:                                    ; preds = %202
  br i1 %30, label %228, label %552, !dbg !2730

; <label>:228:                                    ; preds = %227
  %229 = call zeroext i8 @sco_connection_disconnect(i8* nonnull %5) #13, !dbg !2731
  br label %552, !dbg !2734

; <label>:230:                                    ; preds = %202
  %231 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2735
  %232 = and i16 %231, 7, !dbg !2735
  %233 = zext i16 %232 to i32, !dbg !2735
  %234 = load i32, i32* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 9), align 1, !dbg !2738
  %235 = lshr i32 %234, 4, !dbg !2738
  %236 = and i32 %235, 3, !dbg !2738
  %237 = icmp eq i32 %233, %236, !dbg !2739
  %238 = trunc i16 %231 to i8, !dbg !2740
  %239 = icmp slt i8 %238, 0, !dbg !2740
  %240 = or i1 %239, %237, !dbg !2742
  br i1 %240, label %552, label %241, !dbg !2742

; <label>:241:                                    ; preds = %230
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !2415, metadata !DIExpression()), !dbg !2455
  %242 = and i16 %231, 56, !dbg !2743
  %243 = icmp eq i16 %242, 0, !dbg !2744
  br i1 %243, label %291, label %244, !dbg !2745

; <label>:244:                                    ; preds = %241
  %245 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !2746
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %245) #14, !dbg !2746
  call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !2423, metadata !DIExpression()), !dbg !2747
  %246 = lshr i16 %231, 3, !dbg !2748
  %247 = and i16 %246, 7, !dbg !2748
  %248 = zext i16 %247 to i32, !dbg !2748
  %249 = add nsw i32 %248, -1, !dbg !2749
  %250 = getelementptr inbounds %struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 6, i32 %249, i32 0, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %245, i8* %250, i32 6, i32 1, i1 false), !dbg !2750
  %251 = add i16 %231, 56, !dbg !2751
  %252 = and i16 %251, 56, !dbg !2751
  %253 = and i16 %231, -57, !dbg !2751
  %254 = or i16 %252, %253, !dbg !2751
  store i16 %254, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2751
  %255 = call fastcc %struct.conn_info* @get_conn_for_addr(i8* nonnull %245) #12, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.conn_info* %255, metadata !2415, metadata !DIExpression()), !dbg !2455
  %256 = icmp eq %struct.conn_info* %255, null, !dbg !2753
  br i1 %256, label %257, label %261, !dbg !2755

; <label>:257:                                    ; preds = %244
  %258 = call fastcc %struct.conn_info* @create_bt_new_conn(i8* nonnull %245, i16 zeroext 0) #12, !dbg !2756
  call void @llvm.dbg.value(metadata %struct.conn_info* %258, metadata !2415, metadata !DIExpression()), !dbg !2455
  %259 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2758, !tbaa !621
  %260 = icmp slt i8 %259, 0, !dbg !2758
  br i1 %260, label %266, label %269, !dbg !2760

; <label>:261:                                    ; preds = %244
  %262 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 2), align 4, !dbg !2761, !tbaa !2764
  %263 = icmp eq void (i8*, i32)* %262, null, !dbg !2766
  br i1 %263, label %265, label %264, !dbg !2767

; <label>:264:                                    ; preds = %261
  call void %262(i8* null, i32 252) #13, !dbg !2768
  br label %290, !dbg !2770

; <label>:265:                                    ; preds = %261
  call void @bt_event_update_to_user(i8* null, i32 1212369152, i8 zeroext -8, i32 0) #13, !dbg !2771
  br label %290

; <label>:266:                                    ; preds = %257
  %267 = ptrtoint %struct.conn_info* %258 to i32, !dbg !2773
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 %267) #12, !dbg !2773
  br label %269, !dbg !2773

; <label>:269:                                    ; preds = %266, %257
  %270 = load i32, i32* @config_asser, align 4, !dbg !2775, !tbaa !2463
  %271 = icmp eq i32 %270, 0, !dbg !2775
  %272 = icmp ne %struct.conn_info* %258, null
  br i1 %271, label %277, label %273, !dbg !2779

; <label>:273:                                    ; preds = %269
  br i1 %272, label %279, label %274, !dbg !2781

; <label>:274:                                    ; preds = %273
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.25, i32 0, i32 0), i32 2494) #12, !dbg !2784
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0)) #12, !dbg !2788
  call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #13, !dbg !2790
  br label %279, !dbg !2784

; <label>:277:                                    ; preds = %269
  br i1 %272, label %279, label %278, !dbg !2792

; <label>:278:                                    ; preds = %277
  call fastcc void @cpu_reset() #12, !dbg !2795
  br label %279, !dbg !2795

; <label>:279:                                    ; preds = %278, %277, %274, %273
  %280 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %258, i32 0, i32 0, i32 0, !dbg !2799
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 0), i8* %280, i32 6, i32 1, i1 false), !dbg !2799
  call void @llvm.dbg.value(metadata %struct.conn_info* %258, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i16 0, metadata !2805, metadata !DIExpression()), !dbg !2808
  %281 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %258, i32 0, i32 5, !dbg !2809
  %282 = bitcast [5 x i8]* %281 to i40*, !dbg !2809
  %283 = load i40, i40* %282, align 4, !dbg !2810
  %284 = or i40 %283, 4294967296, !dbg !2810
  store i40 %284, i40* %282, align 4, !dbg !2810
  %285 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !2811, !tbaa !2813
  %286 = icmp eq i32 (i8*, i32, i32)* %285, null, !dbg !2814
  br i1 %286, label %289, label %287, !dbg !2815

; <label>:287:                                    ; preds = %279
  %288 = call i32 %285(i8* %280, i32 0, i32 0) #13, !dbg !2816
  br label %289

; <label>:289:                                    ; preds = %287, %279
  call void @update_bt_current_status(i8* %280, i8 zeroext 17, i8 zeroext 44) #12, !dbg !2820
  br label %290, !dbg !2821

; <label>:290:                                    ; preds = %289, %265, %264
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %245) #14, !dbg !2821
  br label %552

; <label>:291:                                    ; preds = %241
  %292 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 0), align 1, !dbg !2822, !tbaa !621
  %293 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 1), align 1, !dbg !2825
  %294 = or i8 %293, %292, !dbg !2827
  %295 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 2), align 1, !dbg !2828
  %296 = or i8 %294, %295, !dbg !2827
  %297 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 3), align 1, !dbg !2830
  %298 = or i8 %296, %297, !dbg !2827
  %299 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 4), align 1, !dbg !2831
  %300 = or i8 %298, %299, !dbg !2827
  %301 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 5), align 1, !dbg !2832
  %302 = or i8 %300, %301, !dbg !2827
  %303 = icmp eq i8 %302, 0, !dbg !2827
  br i1 %303, label %304, label %309, !dbg !2827

; <label>:304:                                    ; preds = %291
  %305 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 2), align 4, !dbg !2833, !tbaa !2764
  %306 = icmp eq void (i8*, i32)* %305, null, !dbg !2836
  br i1 %306, label %308, label %307, !dbg !2837

; <label>:307:                                    ; preds = %304
  call void %305(i8* null, i32 252) #13, !dbg !2838
  br label %552, !dbg !2840

; <label>:308:                                    ; preds = %304
  call void @bt_event_update_to_user(i8* null, i32 1212369152, i8 zeroext -8, i32 0) #13, !dbg !2841
  br label %552

; <label>:309:                                    ; preds = %291
  %310 = call i32 @user_send_cmd_prepare(i32 1, i16 zeroext 6, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 0)) #12, !dbg !2843
  br label %552

; <label>:311:                                    ; preds = %202
  call void @llvm.dbg.value(metadata i16 4353, metadata !2416, metadata !DIExpression()), !dbg !2428
  br label %312, !dbg !2845

; <label>:312:                                    ; preds = %311, %202
  %313 = phi i16 [ 0, %202 ], [ 4353, %311 ]
  call void @llvm.dbg.value(metadata i16 %313, metadata !2416, metadata !DIExpression()), !dbg !2428
  %314 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2846
  %315 = and i16 %314, 7, !dbg !2846
  %316 = zext i16 %315 to i32, !dbg !2846
  %317 = load i32, i32* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 9), align 1, !dbg !2849
  %318 = lshr i32 %317, 4, !dbg !2849
  %319 = and i32 %318, 3, !dbg !2849
  %320 = icmp eq i32 %316, %319, !dbg !2850
  %321 = trunc i16 %314 to i8, !dbg !2851
  %322 = icmp slt i8 %321, 0, !dbg !2851
  %323 = or i1 %322, %320, !dbg !2853
  br i1 %323, label %552, label %324, !dbg !2853

; <label>:324:                                    ; preds = %312
  %325 = call fastcc %struct.conn_info* @get_conn_for_addr(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 3, i32 0)) #12, !dbg !2854
  call void @llvm.dbg.value(metadata %struct.conn_info* %325, metadata !2415, metadata !DIExpression()), !dbg !2455
  %326 = icmp eq %struct.conn_info* %325, null, !dbg !2855
  br i1 %326, label %327, label %552, !dbg !2857

; <label>:327:                                    ; preds = %324
  %328 = call fastcc %struct.conn_info* @create_bt_new_conn(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 3, i32 0), i16 zeroext 0) #12, !dbg !2858
  call void @llvm.dbg.value(metadata %struct.conn_info* %328, metadata !2415, metadata !DIExpression()), !dbg !2455
  %329 = icmp eq %struct.conn_info* %328, null, !dbg !2860
  br i1 %329, label %330, label %336, !dbg !2862

; <label>:330:                                    ; preds = %327
  %331 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2863, !tbaa !621
  %332 = and i8 %331, 32, !dbg !2863
  %333 = icmp eq i8 %332, 0, !dbg !2863
  br i1 %333, label %552, label %334, !dbg !2866

; <label>:334:                                    ; preds = %330
  %335 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #12, !dbg !2867
  br label %552, !dbg !2867

; <label>:336:                                    ; preds = %327
  call void @hci_discoverable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !2869
  call void @hci_connectable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !2870
  call void @start_connection(%struct.conn_info* nonnull %328, i16 zeroext %313) #12, !dbg !2871
  br label %552, !dbg !2872

; <label>:337:                                    ; preds = %202
  %338 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2873
  %339 = trunc i16 %338 to i8, !dbg !2875
  %340 = icmp slt i8 %339, 0, !dbg !2875
  br i1 %340, label %552, label %341, !dbg !2876

; <label>:341:                                    ; preds = %337
  %342 = call i32 @user_send_cmd_prepare(i32 1, i16 zeroext 6, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 1, i32 0)) #12, !dbg !2877
  br label %552, !dbg !2878

; <label>:343:                                    ; preds = %202
  %344 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2879, !tbaa !621
  %345 = and i8 %344, 32, !dbg !2879
  %346 = icmp eq i8 %345, 0, !dbg !2879
  br i1 %346, label %349, label %347, !dbg !2881

; <label>:347:                                    ; preds = %343
  %348 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0)) #12, !dbg !2882
  br label %349, !dbg !2882

; <label>:349:                                    ; preds = %347, %343
  %350 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2884, !tbaa !661
  %351 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %350, i32 0, i32 9, !dbg !2885
  %352 = load i32, i32* %351, align 1, !dbg !2885
  %353 = lshr i32 %352, 20, !dbg !2885
  %354 = trunc i32 %353 to i8, !dbg !2885
  %355 = and i8 %354, 1, !dbg !2885
  call void @delete_link_key([6 x i8]* null, i8 zeroext %355) #13, !dbg !2886
  br label %552, !dbg !2887

; <label>:356:                                    ; preds = %202
  %357 = call zeroext i8 @emitter_hci_disconn_deal() #12, !dbg !2888
  %358 = icmp eq i8 %357, 0, !dbg !2890
  %359 = and i1 %30, %358, !dbg !2891
  br i1 %359, label %360, label %552, !dbg !2891

; <label>:360:                                    ; preds = %356
  %361 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 1, !dbg !2892
  %362 = load i16, i16* %361, align 2, !dbg !2892, !tbaa !643
  %363 = icmp eq i16 %362, 0, !dbg !2896
  br i1 %363, label %552, label %364, !dbg !2897

; <label>:364:                                    ; preds = %360
  call void @hci_disconnect_cmd(i16 zeroext %362, i8 zeroext 22) #13, !dbg !2899
  br label %552, !dbg !2901

; <label>:365:                                    ; preds = %202
  %366 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)) #12, !dbg !2902
  call void @user_disconn_for_poweroff() #12, !dbg !2903
  br label %552, !dbg !2904

; <label>:367:                                    ; preds = %202
  call void @hci_connectable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !2905
  call void @hci_discoverable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !2906
  %368 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2907, !tbaa !661
  %369 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %368, i32 0, i32 9, !dbg !2909
  %370 = load i32, i32* %369, align 1, !dbg !2909
  %371 = and i32 %370, 64, !dbg !2907
  %372 = icmp eq i32 %371, 0, !dbg !2907
  br i1 %372, label %374, label %373, !dbg !2910

; <label>:373:                                    ; preds = %367
  call void bitcast (void (...)* @set_hid_independent_info to void ()*)() #13, !dbg !2911
  br label %552, !dbg !2913

; <label>:374:                                    ; preds = %367
  call void bitcast (void (...)* @btstack_hci_init to void ()*)() #13, !dbg !2914
  br label %552

; <label>:375:                                    ; preds = %202
  call void @hci_remote_name_request_cmd(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 2, i32 0), i8 zeroext 0, i8 zeroext 0, i16 zeroext 0) #13, !dbg !2916
  br label %552, !dbg !2917

; <label>:376:                                    ; preds = %202
  %377 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !2918, !tbaa !2813
  %378 = icmp eq i32 (i8*, i32, i32)* %377, null, !dbg !2920
  br i1 %378, label %552, label %379, !dbg !2921

; <label>:379:                                    ; preds = %376
  %380 = call i32 %377(i8* null, i32 1, i32 0) #13, !dbg !2922
  br label %552, !dbg !2924

; <label>:381:                                    ; preds = %202
  %382 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2925
  %383 = and i16 %382, 7, !dbg !2925
  %384 = zext i16 %383 to i32, !dbg !2925
  %385 = load i32, i32* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 9), align 1, !dbg !2928
  %386 = lshr i32 %385, 4, !dbg !2928
  %387 = and i32 %386, 3, !dbg !2928
  %388 = icmp eq i32 %384, %387, !dbg !2929
  %389 = trunc i16 %382 to i8, !dbg !2930
  %390 = icmp slt i8 %389, 0, !dbg !2930
  %391 = or i1 %390, %388, !dbg !2932
  br i1 %391, label %552, label %392, !dbg !2932

; <label>:392:                                    ; preds = %381
  call void @hci_connectable_control(i8 zeroext 1, i8 zeroext 0) #13, !dbg !2933
  br label %552, !dbg !2934

; <label>:393:                                    ; preds = %202
  %394 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !2935
  %395 = and i16 %394, 7, !dbg !2935
  %396 = zext i16 %395 to i32, !dbg !2935
  %397 = load i32, i32* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 9), align 1, !dbg !2938
  %398 = lshr i32 %397, 4, !dbg !2938
  %399 = and i32 %398, 3, !dbg !2938
  %400 = icmp eq i32 %396, %399, !dbg !2939
  %401 = trunc i16 %394 to i8, !dbg !2940
  %402 = icmp slt i8 %401, 0, !dbg !2940
  %403 = or i1 %402, %400, !dbg !2942
  br i1 %403, label %552, label %404, !dbg !2942

; <label>:404:                                    ; preds = %393
  call void @hci_discoverable_control(i8 zeroext 1, i8 zeroext 0) #13, !dbg !2943
  br label %552, !dbg !2944

; <label>:405:                                    ; preds = %202
  call void @hci_connectable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !2945
  br label %552, !dbg !2946

; <label>:406:                                    ; preds = %202
  call void @hci_discoverable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !2947
  br label %552, !dbg !2948

; <label>:407:                                    ; preds = %202
  call void bitcast (void (...)* @hci_cancle_page to void ()*)() #13, !dbg !2949
  br label %552, !dbg !2950

; <label>:408:                                    ; preds = %421, %203
  %409 = phi %struct.conn_info* [ %422, %421 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %203 ]
  %410 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %409, i32 0, i32 5, !dbg !2693
  %411 = bitcast [5 x i8]* %410 to i40*, !dbg !2693
  %412 = load i40, i40* %411, align 4, !dbg !2693
  %413 = and i40 %412, 536870912, !dbg !2951
  %414 = icmp eq i40 %413, 0, !dbg !2951
  br i1 %414, label %421, label %415, !dbg !2952

; <label>:415:                                    ; preds = %408
  %416 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %409, i32 0, i32 2, !dbg !2953
  %417 = load i16, i16* %416, align 4, !dbg !2953, !tbaa !795
  %418 = icmp eq i16 %417, 0, !dbg !2956
  br i1 %418, label %419, label %421, !dbg !2957

; <label>:419:                                    ; preds = %415
  %420 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %409, i32 0, i32 0, i32 0, !dbg !2958
  call void @hci_connection_cancel(i8* %420) #13, !dbg !2960
  br label %421, !dbg !2961

; <label>:421:                                    ; preds = %419, %415, %408
  %422 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %409, i32 1, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.conn_info* %422, metadata !2700, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata %struct.conn_info* %422, metadata !2700, metadata !DIExpression()), !dbg !2964
  %423 = icmp ult %struct.conn_info* %422, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !2965
  br i1 %423, label %408, label %550, !dbg !2967, !llvm.loop !2969

; <label>:424:                                    ; preds = %202, %44
  %425 = call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #13, !dbg !2972
  %426 = icmp ne i8 %425, 0, !dbg !2972
  %427 = and i1 %30, %426, !dbg !2974
  br i1 %427, label %428, label %552, !dbg !2974

; <label>:428:                                    ; preds = %424
  %429 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 1, !dbg !2975
  %430 = load i16, i16* %429, align 2, !dbg !2975, !tbaa !643
  %431 = icmp eq i16 %430, 0, !dbg !2979
  br i1 %431, label %552, label %432, !dbg !2980

; <label>:432:                                    ; preds = %428
  %433 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 8), align 4, !dbg !2982, !tbaa !2984
  call void @hci_test_box_key_cmd(i8 zeroext %433, i16 zeroext %430) #13, !dbg !2985
  br label %552, !dbg !2986

; <label>:434:                                    ; preds = %202
  br i1 %30, label %435, label %552, !dbg !2987

; <label>:435:                                    ; preds = %434
  %436 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 1, !dbg !2989
  %437 = load i16, i16* %436, align 2, !dbg !2989, !tbaa !643
  %438 = icmp eq i16 %437, 0, !dbg !2991
  br i1 %438, label %552, label %439, !dbg !2992

; <label>:439:                                    ; preds = %435
  %440 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 21), align 4, !dbg !2994, !tbaa !2996
  call void @hci_send_user_info_cmd(i32 %440, i16 zeroext %437) #13, !dbg !2997
  br label %552, !dbg !2998

; <label>:441:                                    ; preds = %202
  %442 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 8), align 4, !dbg !2999, !tbaa !2984
  call void @hci_inquiry_start(i8 zeroext %442) #13, !dbg !3000
  br label %552, !dbg !3001

; <label>:443:                                    ; preds = %202
  call void bitcast (void (...)* @hci_cancel_inquiry to void ()*)() #13, !dbg !3002
  br label %552, !dbg !3003

; <label>:444:                                    ; preds = %202
  br i1 %30, label %445, label %552, !dbg !3004

; <label>:445:                                    ; preds = %444
  %446 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 5, !dbg !3005
  %447 = bitcast [5 x i8]* %446 to i40*, !dbg !3005
  %448 = load i40, i40* %447, align 4, !dbg !3005
  %449 = lshr i40 %448, 33, !dbg !3005
  %450 = trunc i40 %449 to i8, !dbg !3005
  %451 = and i8 %450, 3, !dbg !3005
  %452 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !3008
  call void @hci_set_sniff_mode(i32 0, i8 zeroext %451, i8* %452, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0) #13, !dbg !3009
  br label %552, !dbg !3010

; <label>:453:                                    ; preds = %202
  call void @bt_api_all_sniff_exit() #12, !dbg !3011
  br label %552, !dbg !3012

; <label>:454:                                    ; preds = %458, %204
  %455 = phi i8 [ 1, %458 ], [ 0, %204 ]
  call void @llvm.dbg.value(metadata i8 %455, metadata !2418, metadata !DIExpression()), !dbg !2702
  %456 = zext i8 %455 to i32, !dbg !3013
  %457 = icmp eq i8 %455, 1, !dbg !3017
  br i1 %457, label %551, label %458, !dbg !3017

; <label>:458:                                    ; preds = %454
  %459 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %205, i32 0, i32 9, i32 %456, !dbg !3019
  %460 = load i8, i8* %459, align 1, !dbg !3019, !tbaa !621
  %461 = icmp eq i8 %460, -1, !dbg !3022
  br i1 %461, label %454, label %462, !dbg !3023, !llvm.loop !3024

; <label>:462:                                    ; preds = %458
  %463 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %205, i32 0, i32 10, i32 %456, i32 4, i32 0, !dbg !3027
  %464 = call fastcc %struct.conn_info* @get_conn_for_addr(i8* %463) #12, !dbg !3028
  call void @llvm.dbg.value(metadata %struct.conn_info* %464, metadata !2415, metadata !DIExpression()), !dbg !2455
  store i8 -1, i8* %459, align 1, !dbg !3029, !tbaa !621
  %465 = icmp eq %struct.conn_info* %464, null, !dbg !3030
  br i1 %465, label %552, label %466, !dbg !3032

; <label>:466:                                    ; preds = %462
  %467 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %464, i32 0, i32 5, !dbg !3033
  %468 = bitcast [5 x i8]* %467 to i40*, !dbg !3033
  %469 = load i40, i40* %468, align 4, !dbg !3033
  %470 = lshr i40 %469, 33, !dbg !3033
  %471 = trunc i40 %470 to i8, !dbg !3033
  %472 = and i8 %471, 3, !dbg !3033
  %473 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %205, i32 0, i32 10, i32 %456, i32 0, !dbg !3035
  %474 = load i16, i16* %473, align 2, !dbg !3035, !tbaa !3036
  %475 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %205, i32 0, i32 10, i32 %456, i32 1, !dbg !3038
  %476 = load i16, i16* %475, align 2, !dbg !3038, !tbaa !3039
  %477 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %205, i32 0, i32 10, i32 %456, i32 2, !dbg !3040
  %478 = load i16, i16* %477, align 2, !dbg !3040, !tbaa !3041
  %479 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %205, i32 0, i32 10, i32 %456, i32 3, !dbg !3042
  %480 = load i16, i16* %479, align 2, !dbg !3042, !tbaa !3043
  call void @hci_set_sniff_mode(i32 1, i8 zeroext %472, i8* %463, i16 zeroext %474, i16 zeroext %476, i16 zeroext %478, i16 zeroext %480) #13, !dbg !3044
  br label %552, !dbg !3045

; <label>:481:                                    ; preds = %202
  br i1 %30, label %482, label %552, !dbg !3046

; <label>:482:                                    ; preds = %481
  %483 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !3047
  %484 = call zeroext i8 @remote_dev_company_ioctrl(i8* %483, i8 zeroext 0, i8 zeroext 0) #13, !dbg !3049
  %485 = icmp eq i8 %484, 2, !dbg !3050
  br i1 %485, label %488, label %486, !dbg !3051

; <label>:486:                                    ; preds = %482
  %487 = call i32 @user_send_cmd_prepare(i32 60, i16 zeroext 0, i8* null) #12, !dbg !3052
  br label %552, !dbg !3054

; <label>:488:                                    ; preds = %482
  %489 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 2, !dbg !3055
  %490 = load i16, i16* %489, align 4, !dbg !3055, !tbaa !795
  %491 = and i16 %490, 16, !dbg !3057
  %492 = icmp ne i16 %491, 0, !dbg !3057
  %493 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 1), align 4, !dbg !3058
  %494 = icmp ne i32 (i8*, i32)* %493, null, !dbg !3060
  %495 = and i1 %492, %494, !dbg !3061
  %496 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !621
  %497 = and i8 %496, 32
  %498 = icmp ne i8 %497, 0
  br i1 %495, label %499, label %506, !dbg !3061

; <label>:499:                                    ; preds = %488
  br i1 %498, label %500, label %503, !dbg !3062

; <label>:500:                                    ; preds = %499
  %501 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)) #12, !dbg !3064
  %502 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 1), align 4, !tbaa !2546
  br label %503, !dbg !3064

; <label>:503:                                    ; preds = %500, %499
  %504 = phi i32 (i8*, i32)* [ %502, %500 ], [ %493, %499 ], !dbg !3067
  %505 = call i32 %504(i8* nonnull %483, i32 10) #13, !dbg !3068
  br label %552, !dbg !3069

; <label>:506:                                    ; preds = %488
  br i1 %498, label %507, label %509, !dbg !3070

; <label>:507:                                    ; preds = %506
  %508 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0)) #12, !dbg !3072
  br label %509, !dbg !3072

; <label>:509:                                    ; preds = %507, %506
  %510 = call i32 @user_send_cmd_prepare(i32 60, i16 zeroext 0, i8* null) #12, !dbg !3075
  br label %552

; <label>:511:                                    ; preds = %202
  br i1 %30, label %512, label %552, !dbg !3076

; <label>:512:                                    ; preds = %511
  %513 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 0, i32 0, !dbg !3077
  %514 = call zeroext i8 @remote_dev_company_ioctrl(i8* %513, i8 zeroext 0, i8 zeroext 0) #13, !dbg !3079
  %515 = icmp eq i8 %514, 2, !dbg !3080
  br i1 %515, label %518, label %516, !dbg !3081

; <label>:516:                                    ; preds = %512
  %517 = call i32 @user_send_cmd_prepare(i32 60, i16 zeroext 0, i8* null) #12, !dbg !3082
  br label %552, !dbg !3084

; <label>:518:                                    ; preds = %512
  %519 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %29, i32 0, i32 2, !dbg !3085
  %520 = load i16, i16* %519, align 4, !dbg !3085, !tbaa !795
  %521 = and i16 %520, 16, !dbg !3087
  %522 = icmp ne i16 %521, 0, !dbg !3087
  %523 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 1), align 4, !dbg !3088
  %524 = icmp ne i32 (i8*, i32)* %523, null, !dbg !3090
  %525 = and i1 %522, %524, !dbg !3091
  %526 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !621
  %527 = and i8 %526, 32
  %528 = icmp ne i8 %527, 0
  br i1 %525, label %529, label %536, !dbg !3091

; <label>:529:                                    ; preds = %518
  br i1 %528, label %530, label %533, !dbg !3092

; <label>:530:                                    ; preds = %529
  %531 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #12, !dbg !3094
  %532 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 1), align 4, !tbaa !2546
  br label %533, !dbg !3094

; <label>:533:                                    ; preds = %530, %529
  %534 = phi i32 (i8*, i32)* [ %532, %530 ], [ %523, %529 ], !dbg !3097
  %535 = call i32 %534(i8* nonnull %513, i32 11) #13, !dbg !3098
  br label %552, !dbg !3099

; <label>:536:                                    ; preds = %518
  br i1 %528, label %537, label %539, !dbg !3100

; <label>:537:                                    ; preds = %536
  %538 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0)) #12, !dbg !3102
  br label %539, !dbg !3102

; <label>:539:                                    ; preds = %537, %536
  %540 = call i32 @user_send_cmd_prepare(i32 60, i16 zeroext 0, i8* null) #12, !dbg !3105
  br label %552

; <label>:541:                                    ; preds = %202
  %542 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 18), align 1, !dbg !3106, !tbaa !1459
  call void @user_send_keypress(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 11, i32 0), i8 zeroext %542) #12, !dbg !3107
  br label %552, !dbg !3108

; <label>:543:                                    ; preds = %202
  %544 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 19), align 4, !dbg !3109, !tbaa !1463
  call void @hci_user_confirmation_request(i8 zeroext %544, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 11, i32 0)) #13, !dbg !3110
  br label %552, !dbg !3111

; <label>:545:                                    ; preds = %202
  call void @user_cmd_timer_init() #12, !dbg !3112
  br label %552, !dbg !3113

; <label>:546:                                    ; preds = %202
  call void @remove_user_cmd_timer() #12, !dbg !3114
  br label %552, !dbg !3115

; <label>:547:                                    ; preds = %202
  %548 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !3116, !tbaa !661
  %549 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %548, i32 0, i32 20, i32 0, !dbg !3116
  call void @hci_tx_channel_chassification(i8* %549) #13, !dbg !3117
  br label %552, !dbg !3118

; <label>:550:                                    ; preds = %421
  br label %552, !dbg !3119

; <label>:551:                                    ; preds = %454
  br label %552, !dbg !3119

; <label>:552:                                    ; preds = %551, %550, %547, %546, %545, %543, %541, %539, %533, %516, %511, %509, %503, %486, %481, %466, %462, %453, %445, %444, %443, %441, %439, %435, %434, %432, %428, %424, %407, %406, %405, %404, %393, %392, %381, %379, %376, %375, %374, %373, %365, %364, %360, %356, %349, %341, %337, %336, %334, %330, %324, %312, %309, %308, %307, %290, %230, %228, %227, %225, %223, %216, %213, %210, %209, %207, %206, %202, %142, %139, %136, %133, %130, %127, %124, %118, %117, %113, %104, %98, %92
  %553 = icmp eq i8 %26, 1, !dbg !3119
  br i1 %553, label %554, label %559, !dbg !3121

; <label>:554:                                    ; preds = %552
  %555 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 13), align 2, !dbg !3122, !tbaa !2447
  %556 = add i8 %555, 1, !dbg !3122
  %557 = icmp ugt i8 %556, 9, !dbg !3125
  %558 = select i1 %557, i8 0, i8 %556, !dbg !3126
  store i8 %558, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 13), align 2, !dbg !3127
  br label %564, !dbg !3126

; <label>:559:                                    ; preds = %552
  %560 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 0), align 4, !dbg !3129, !tbaa !2433
  %561 = add i8 %560, 1, !dbg !3129
  %562 = icmp ugt i8 %561, 15, !dbg !3132
  %563 = select i1 %562, i8 0, i8 %561, !dbg !3133
  store i8 %563, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 0), align 4, !dbg !3134
  br label %564, !dbg !3133

; <label>:564:                                    ; preds = %559, %554, %16, %13
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #14, !dbg !3136
  ret void, !dbg !3137
}

; Function Attrs: nounwind optsize
define hidden void @connect_hfp_while_a2dp_connected() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3139 {
  %1 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 0), align 4, !dbg !3142, !tbaa !3144
  %2 = icmp eq i32 (i8*)* %1, null, !dbg !3145
  br i1 %2, label %34, label %3, !dbg !3146

; <label>:3:                                      ; preds = %0
  br label %4, !dbg !3147

; <label>:4:                                      ; preds = %30, %3
  %5 = phi %struct.conn_info* [ %31, %30 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %3 ]
  %6 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !3147
  %7 = bitcast [5 x i8]* %6 to i40*, !dbg !3147
  %8 = load i40, i40* %7, align 4, !dbg !3147
  %9 = and i40 %8, 536870912, !dbg !3153
  %10 = icmp eq i40 %9, 0, !dbg !3153
  br i1 %10, label %30, label %11, !dbg !3154

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 1, !dbg !3155
  %13 = load i16, i16* %12, align 2, !dbg !3155, !tbaa !643
  %14 = icmp eq i16 %13, 0, !dbg !3157
  br i1 %14, label %30, label %15, !dbg !3158

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 2, !dbg !3160
  %17 = load i16, i16* %16, align 4, !dbg !3160, !tbaa !795
  %18 = zext i16 %17 to i32, !dbg !3163
  %19 = and i32 %18, 36, !dbg !3164
  %20 = icmp ne i32 %19, 0, !dbg !3164
  %21 = and i32 %18, 2, !dbg !3165
  %22 = icmp eq i32 %21, 0, !dbg !3165
  %23 = and i1 %20, %22, !dbg !3167
  br i1 %23, label %24, label %30, !dbg !3167

; <label>:24:                                     ; preds = %15
  %25 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !3168, !tbaa !2813
  %26 = icmp eq i32 (i8*, i32, i32)* %25, null, !dbg !3171
  br i1 %26, label %34, label %27, !dbg !3172

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !3173
  %29 = tail call i32 %25(i8* %28, i32 0, i32 0) #13, !dbg !3175
  br label %34, !dbg !3176

; <label>:30:                                     ; preds = %15, %11, %4
  %31 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 1, !dbg !3177
  call void @llvm.dbg.value(metadata %struct.conn_info* %31, metadata !3141, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata %struct.conn_info* %31, metadata !3141, metadata !DIExpression()), !dbg !3179
  %32 = icmp ult %struct.conn_info* %31, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3180
  br i1 %32, label %4, label %33, !dbg !3182, !llvm.loop !3184

; <label>:33:                                     ; preds = %30
  br label %34, !dbg !3187

; <label>:34:                                     ; preds = %33, %27, %24, %0
  ret void, !dbg !3187
}

; Function Attrs: nounwind optsize
define hidden void @start_connection(%struct.conn_info*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2801 {
  call void @llvm.dbg.value(metadata %struct.conn_info* %0, metadata !2800, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i16 %1, metadata !2805, metadata !DIExpression()), !dbg !3190
  %3 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %0, i32 0, i32 5, !dbg !3191
  %4 = bitcast [5 x i8]* %3 to i40*, !dbg !3191
  %5 = load i40, i40* %4, align 4, !dbg !3192
  %6 = or i40 %5, 4294967296, !dbg !3192
  store i40 %6, i40* %4, align 4, !dbg !3192
  %7 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !3193, !tbaa !2813
  %8 = icmp eq i32 (i8*, i32, i32)* %7, null, !dbg !3194
  br i1 %8, label %16, label %9, !dbg !3195

; <label>:9:                                      ; preds = %2
  %10 = icmp eq i16 %1, 4353, !dbg !3196
  %11 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %0, i32 0, i32 0, i32 0
  br i1 %10, label %12, label %14, !dbg !3197

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 %7(i8* %11, i32 0, i32 4353) #13, !dbg !3198
  br label %16, !dbg !3200

; <label>:14:                                     ; preds = %9
  %15 = tail call i32 %7(i8* %11, i32 0, i32 0) #13, !dbg !3201
  br label %16

; <label>:16:                                     ; preds = %14, %12, %2
  ret void, !dbg !3202
}

; Function Attrs: nounwind optsize
define hidden void @user_disconn_for_poweroff() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3203 {
  call void @llvm.dbg.value(metadata i8 0, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8 0, metadata !3205, metadata !DIExpression()), !dbg !3207
  br label %1, !dbg !3209

; <label>:1:                                      ; preds = %14, %0
  %2 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %16, %14 ]
  %3 = phi i8 [ 0, %0 ], [ %15, %14 ]
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !3212
  %5 = bitcast [5 x i8]* %4 to i40*, !dbg !3212
  %6 = load i40, i40* %5, align 4, !dbg !3212
  %7 = and i40 %6, 536870912, !dbg !3216
  %8 = icmp eq i40 %7, 0, !dbg !3216
  br i1 %8, label %14, label %9, !dbg !3217

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 1, !dbg !3218
  %11 = load i16, i16* %10, align 2, !dbg !3218, !tbaa !643
  %12 = icmp eq i16 %11, 0, !dbg !3220
  br i1 %12, label %14, label %13, !dbg !3221

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8 1, metadata !3205, metadata !DIExpression()), !dbg !3207
  tail call void @hci_disconnect_cmd(i16 zeroext %11, i8 zeroext 22) #13, !dbg !3223
  br label %14, !dbg !3225

; <label>:14:                                     ; preds = %13, %9, %1
  %15 = phi i8 [ 1, %13 ], [ %3, %9 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata i8 %15, metadata !3205, metadata !DIExpression()), !dbg !3207
  %16 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 1, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.conn_info* %16, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata %struct.conn_info* %16, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8 %15, metadata !3205, metadata !DIExpression()), !dbg !3207
  %17 = icmp ult %struct.conn_info* %16, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3228
  br i1 %17, label %1, label %18, !dbg !3209, !llvm.loop !3230

; <label>:18:                                     ; preds = %14
  tail call void @hci_connectable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !3233
  tail call void @hci_discoverable_control(i8 zeroext 0, i8 zeroext 0) #13, !dbg !3234
  tail call void bitcast (void (...)* @hci_cancle_page to void ()*)() #13, !dbg !3235
  tail call void bitcast (void (...)* @hci_cancel_inquiry to void ()*)() #13, !dbg !3236
  %19 = icmp eq i8 %15, 0, !dbg !3237
  br i1 %19, label %20, label %21, !dbg !3239

; <label>:20:                                     ; preds = %18
  tail call void bitcast (void (...)* @hci_disconnect_all_standard_connect to void ()*)() #13, !dbg !3240
  br label %21, !dbg !3242

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !3243
}

; Function Attrs: optsize
declare void @hci_connectable_control(i8 zeroext, i8 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_discoverable_control(i8 zeroext, i8 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_cancle_page(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_cancel_inquiry(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_disconnect_all_standard_connect(...) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden void @update_connectiong_mac_addr(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3248, metadata !DIExpression()), !dbg !3249
  %2 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3250, !tbaa !621
  %3 = icmp slt i8 %2, 0, !dbg !3250
  br i1 %3, label %4, label %7, !dbg !3252

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.40, i32 0, i32 0)), !dbg !3253
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !621
  br label %7, !dbg !3253

; <label>:7:                                      ; preds = %4, %1
  %8 = phi i8 [ %6, %4 ], [ %2, %1 ], !dbg !3255
  %9 = and i8 %8, 64, !dbg !3255
  %10 = icmp eq i8 %9, 0, !dbg !3255
  br i1 %10, label %12, label %11, !dbg !3257

; <label>:11:                                     ; preds = %7
  tail call void @put_buf(i8* %0, i32 6) #13, !dbg !3258
  br label %12, !dbg !3258

; <label>:12:                                     ; preds = %11, %7
  store i32 0, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 13), align 4, !dbg !3260, !tbaa !3261
  store i8 6, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 12), align 2, !dbg !3262, !tbaa !3263
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 11, i32 0), i8* %0, i32 6, i32 1, i1 false), !dbg !3264
  ret void, !dbg !3265
}

; Function Attrs: nounwind optsize
define hidden void @user_send_keypress(i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 %1, metadata !3271, metadata !DIExpression()), !dbg !3273
  %3 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 12), align 2, !dbg !3274, !tbaa !3263
  %4 = icmp eq i8 %3, 0, !dbg !3276
  br i1 %4, label %16, label %5, !dbg !3277

; <label>:5:                                      ; preds = %2
  %6 = zext i8 %3 to i32, !dbg !3278
  %7 = zext i8 %1 to i32, !dbg !3279
  %8 = add nsw i32 %6, -1, !dbg !3280
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* @base_table, i32 0, i32 %8, !dbg !3281
  %10 = load i32, i32* %9, align 4, !dbg !3281, !tbaa !2463
  %11 = mul i32 %10, %7, !dbg !3282
  %12 = load i32, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 13), align 4, !dbg !3283, !tbaa !3261
  %13 = add i32 %12, %11, !dbg !3283
  store i32 %13, i32* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 13), align 4, !dbg !3283, !tbaa !3261
  tail call void @hci_send_keypress(i8* %0, i32 %13, i8 zeroext %3) #13, !dbg !3284
  %14 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 12), align 2, !dbg !3285, !tbaa !3263
  %15 = add i8 %14, -1, !dbg !3285
  store i8 %15, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 12), align 2, !dbg !3285, !tbaa !3263
  br label %16, !dbg !3286

; <label>:16:                                     ; preds = %5, %2
  ret void, !dbg !3287
}

; Function Attrs: optsize
declare void @hci_send_keypress(i8*, i32, i8 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @sco_connection_disconnect(i8*) local_unnamed_addr #7

; Function Attrs: optsize
declare void @os_time_dly(i32) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @l2cap_disconnect_all_channel(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @stack_run_loop_resume(...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @hid_diy_data_try_send(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #7

; Function Attrs: nounwind optsize readnone
define hidden i32 @unactice_device_cmd_prepare(i32, i16 zeroext, i8* nocapture readnone) local_unnamed_addr #8 section ".bt_stack_code" !dbg !3289 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3293, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i16 %1, metadata !3294, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8* %2, metadata !3295, metadata !DIExpression()), !dbg !3298
  ret i32 0, !dbg !3299
}

; Function Attrs: noinline nounwind optsize
define hidden i32 @user_hfp_send_cmd(%struct.conn_info*, i32) local_unnamed_addr #10 section ".bt_stack_code" !dbg !3300 {
  %3 = alloca %struct.hfp_ioctrl_str, align 4
  call void @llvm.dbg.value(metadata %struct.conn_info* %0, metadata !3302, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %1, metadata !3303, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 0, metadata !3306, metadata !DIExpression()), !dbg !3330
  %4 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 0, i32 0, !dbg !3331
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #14, !dbg !3331
  %5 = icmp eq %struct.conn_info* %0, null, !dbg !3332
  br i1 %5, label %151, label %6, !dbg !3334

; <label>:6:                                      ; preds = %2
  %7 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 0), align 4, !dbg !3335, !tbaa !3144
  %8 = icmp ne i32 (i8*)* %7, null, !dbg !3337
  %9 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 6), align 4, !dbg !3338
  %10 = icmp ne i32 (i8*)* %9, null, !dbg !3339
  %11 = or i1 %8, %10, !dbg !3340
  br i1 %11, label %12, label %151, !dbg !3340

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %0, i32 0, i32 0, i32 0, !dbg !3341
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* %13, i32 6, i32 4, i1 false), !dbg !3341
  switch i32 %1, label %116 [
    i32 22, label %15
    i32 23, label %21
    i32 24, label %24
    i32 25, label %27
    i32 26, label %32
    i32 27, label %14
    i32 28, label %50
    i32 29, label %52
    i32 30, label %54
    i32 34, label %56
    i32 35, label %58
    i32 36, label %60
    i32 37, label %62
    i32 38, label %64
    i32 39, label %66
    i32 46, label %68
    i32 41, label %71
    i32 42, label %74
    i32 45, label %77
    i32 32, label %80
    i32 31, label %89
    i32 40, label %101
    i32 47, label %103
  ], !dbg !3342

; <label>:14:                                     ; preds = %12
  br label %35, !dbg !3343

; <label>:15:                                     ; preds = %12
  %16 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !3349, !tbaa !2813
  %17 = icmp eq i32 (i8*, i32, i32)* %16, null, !dbg !3351
  br i1 %17, label %105, label %18, !dbg !3352

; <label>:18:                                     ; preds = %15
  %19 = tail call i32 %16(i8* %13, i32 0, i32 0) #13, !dbg !3353
  %20 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 0), align 4, !tbaa !3144
  br label %105, !dbg !3355

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3356
  store i32 19, i32* %22, align 4, !dbg !3357, !tbaa !3358
  %23 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3360
  store i32 0, i32* %23, align 4, !dbg !3361, !tbaa !621
  br label %105, !dbg !3362

; <label>:24:                                     ; preds = %12
  %25 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3363
  store i32 19, i32* %25, align 4, !dbg !3364, !tbaa !3358
  %26 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3365
  store i32 1, i32* %26, align 4, !dbg !3366, !tbaa !621
  br label %105, !dbg !3367

; <label>:27:                                     ; preds = %12
  %28 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3368
  store i32 19, i32* %28, align 4, !dbg !3369, !tbaa !3358
  %29 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3370
  store i32 2, i32* %29, align 4, !dbg !3371, !tbaa !621
  %30 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 6), align 2, !dbg !3372, !tbaa !1352
  %31 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 2, !dbg !3373
  store i8 %30, i8* %31, align 4, !dbg !3374, !tbaa !3375
  br label %105, !dbg !3376

; <label>:32:                                     ; preds = %12
  %33 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3377
  store i32 19, i32* %33, align 4, !dbg !3378, !tbaa !3358
  %34 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3379
  store i32 3, i32* %34, align 4, !dbg !3380, !tbaa !621
  br label %105, !dbg !3381

; <label>:35:                                     ; preds = %44, %14
  %36 = phi %struct.conn_info* [ %45, %44 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %14 ]
  %37 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %36, i32 0, i32 5, !dbg !3343
  %38 = bitcast [5 x i8]* %37 to i40*, !dbg !3343
  %39 = load i40, i40* %38, align 4, !dbg !3343
  %40 = and i40 %39, 536870927, !dbg !3382
  %41 = icmp eq i40 %40, 536870914, !dbg !3382
  br i1 %41, label %42, label %44, !dbg !3382

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %36, i32 0, i32 0, i32 0, !dbg !3383
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* %43, i32 6, i32 4, i1 false), !dbg !3383
  br label %48, !dbg !3387

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %36, i32 1, !dbg !3388
  call void @llvm.dbg.value(metadata %struct.conn_info* %45, metadata !3304, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata %struct.conn_info* %45, metadata !3304, metadata !DIExpression()), !dbg !3390
  %46 = icmp ult %struct.conn_info* %45, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3391
  br i1 %46, label %35, label %47, !dbg !3393, !llvm.loop !3395

; <label>:47:                                     ; preds = %44
  br label %48, !dbg !3398

; <label>:48:                                     ; preds = %47, %42
  %49 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3398
  store i32 0, i32* %49, align 4, !dbg !3399, !tbaa !3358
  br label %105, !dbg !3400

; <label>:50:                                     ; preds = %12
  %51 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3401
  store i32 1, i32* %51, align 4, !dbg !3402, !tbaa !3358
  br label %105, !dbg !3403

; <label>:52:                                     ; preds = %12
  %53 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3404
  store i32 2, i32* %53, align 4, !dbg !3405, !tbaa !3358
  br label %105, !dbg !3406

; <label>:54:                                     ; preds = %12
  %55 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3407
  store i32 6, i32* %55, align 4, !dbg !3408, !tbaa !3358
  br label %105, !dbg !3409

; <label>:56:                                     ; preds = %12
  %57 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3410
  store i32 7, i32* %57, align 4, !dbg !3411, !tbaa !3358
  br label %105, !dbg !3412

; <label>:58:                                     ; preds = %12
  %59 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3413
  store i32 8, i32* %59, align 4, !dbg !3414, !tbaa !3358
  br label %105, !dbg !3415

; <label>:60:                                     ; preds = %12
  %61 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3416
  store i32 9, i32* %61, align 4, !dbg !3417, !tbaa !3358
  br label %105, !dbg !3418

; <label>:62:                                     ; preds = %12
  %63 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3419
  store i32 10, i32* %63, align 4, !dbg !3420, !tbaa !3358
  br label %105, !dbg !3421

; <label>:64:                                     ; preds = %12
  %65 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3422
  store i32 13, i32* %65, align 4, !dbg !3423, !tbaa !3358
  br label %105, !dbg !3424

; <label>:66:                                     ; preds = %12
  %67 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3425
  store i32 11, i32* %67, align 4, !dbg !3426, !tbaa !3358
  br label %105, !dbg !3427

; <label>:68:                                     ; preds = %12
  %69 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3428
  store i32 16, i32* %69, align 4, !dbg !3429, !tbaa !3358
  %70 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3430
  store i32 0, i32* %70, align 4, !dbg !3431, !tbaa !621
  br label %105, !dbg !3432

; <label>:71:                                     ; preds = %12
  %72 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3433
  store i32 16, i32* %72, align 4, !dbg !3434, !tbaa !3358
  %73 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3435
  store i32 1, i32* %73, align 4, !dbg !3436, !tbaa !621
  br label %105, !dbg !3437

; <label>:74:                                     ; preds = %12
  %75 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3438
  store i32 16, i32* %75, align 4, !dbg !3439, !tbaa !3358
  %76 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3440
  store i32 3, i32* %76, align 4, !dbg !3441, !tbaa !621
  br label %105, !dbg !3442

; <label>:77:                                     ; preds = %12
  %78 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3443
  store i32 16, i32* %78, align 4, !dbg !3444, !tbaa !3358
  %79 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, i32 0, !dbg !3445
  store i32 5, i32* %79, align 4, !dbg !3446, !tbaa !621
  br label %105, !dbg !3447

; <label>:80:                                     ; preds = %12
  %81 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3448
  store i32 18, i32* %81, align 4, !dbg !3449, !tbaa !3358
  %82 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, !dbg !3450
  %83 = bitcast %union.anon* %82 to i8*, !dbg !3451
  %84 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !3452, !tbaa !661
  %85 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %84, i32 0, i32 3, i32 0, !dbg !3451
  %86 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 2), align 2, !dbg !3453, !tbaa !1336
  %87 = zext i8 %86 to i32, !dbg !3454
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %85, i32 %87, i32 1, i1 false), !dbg !3451
  %88 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 2, !dbg !3455
  store i8 %86, i8* %88, align 4, !dbg !3456, !tbaa !3375
  br label %105, !dbg !3457

; <label>:89:                                     ; preds = %12
  %90 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3458
  store i32 17, i32* %90, align 4, !dbg !3459, !tbaa !3358
  %91 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %0, i32 0, i32 5, !dbg !3460
  %92 = bitcast [5 x i8]* %91 to i40*, !dbg !3460
  %93 = load i40, i40* %92, align 4, !dbg !3460
  %94 = and i40 %93, 15, !dbg !3462
  %95 = icmp eq i40 %94, 4, !dbg !3462
  br i1 %95, label %96, label %99, !dbg !3463

; <label>:96:                                     ; preds = %89
  %97 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 7), align 1, !dbg !3464, !tbaa !1359
  %98 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 2, !dbg !3466
  store i8 %97, i8* %98, align 4, !dbg !3467, !tbaa !3375
  store i8 0, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 7), align 1, !dbg !3468, !tbaa !1359
  br label %105, !dbg !3469

; <label>:99:                                     ; preds = %89
  %100 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 2, !dbg !3470
  store i8 0, i8* %100, align 4, !dbg !3472, !tbaa !3375
  br label %116, !dbg !3473

; <label>:101:                                    ; preds = %12
  %102 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3474
  store i32 21, i32* %102, align 4, !dbg !3475, !tbaa !3358
  br label %105, !dbg !3476

; <label>:103:                                    ; preds = %12
  %104 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3477
  store i32 23, i32* %104, align 4, !dbg !3478, !tbaa !3358
  br label %105, !dbg !3479

; <label>:105:                                    ; preds = %103, %101, %96, %80, %77, %74, %71, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %32, %27, %24, %21, %18, %15
  %106 = phi i32 (i8*)* [ %7, %15 ], [ %20, %18 ], [ %7, %103 ], [ %7, %101 ], [ %7, %96 ], [ %7, %80 ], [ %7, %77 ], [ %7, %74 ], [ %7, %71 ], [ %7, %68 ], [ %7, %66 ], [ %7, %64 ], [ %7, %62 ], [ %7, %60 ], [ %7, %58 ], [ %7, %56 ], [ %7, %54 ], [ %7, %52 ], [ %7, %50 ], [ %7, %48 ], [ %7, %32 ], [ %7, %27 ], [ %7, %24 ], [ %7, %21 ], !dbg !3480
  %107 = icmp eq i32 (i8*)* %106, null, !dbg !3482
  br i1 %107, label %110, label %108, !dbg !3483

; <label>:108:                                    ; preds = %105
  %109 = call i32 %106(i8* nonnull %4) #13, !dbg !3484
  call void @llvm.dbg.value(metadata i32 %109, metadata !3306, metadata !DIExpression()), !dbg !3330
  br label %110, !dbg !3486

; <label>:110:                                    ; preds = %108, %105
  %111 = phi i32 [ %109, %108 ], [ 0, %105 ]
  call void @llvm.dbg.value(metadata i32 %111, metadata !3306, metadata !DIExpression()), !dbg !3330
  %112 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 6), align 4, !dbg !3487, !tbaa !3489
  %113 = icmp eq i32 (i8*)* %112, null, !dbg !3490
  br i1 %113, label %151, label %114, !dbg !3491

; <label>:114:                                    ; preds = %110
  %115 = call i32 %112(i8* nonnull %4) #13, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %115, metadata !3306, metadata !DIExpression()), !dbg !3330
  br label %151, !dbg !3494

; <label>:116:                                    ; preds = %99, %12
  %117 = phi i32 [ 0, %99 ], [ -1001, %12 ]
  call void @llvm.dbg.value(metadata i32 %117, metadata !3306, metadata !DIExpression()), !dbg !3330
  %118 = load i8, i8* @user_at_cmd_send_support, align 1, !dbg !3495, !tbaa !621
  %119 = icmp eq i8 %118, 0, !dbg !3495
  br i1 %119, label %151, label %120, !dbg !3496

; <label>:120:                                    ; preds = %116
  call void @llvm.dbg.value(metadata %struct.resend_t* null, metadata !3324, metadata !DIExpression()), !dbg !3497
  %121 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %0, i32 0, i32 7, !dbg !3498
  %122 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %121, align 4, !dbg !3498, !tbaa !1686
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %122, metadata !3327, metadata !DIExpression()), !dbg !3500
  %123 = icmp eq %struct.btstack_linked_item* %122, null, !dbg !3501
  br i1 %123, label %151, label %124, !dbg !3501

; <label>:124:                                    ; preds = %120
  %125 = bitcast %struct.btstack_linked_item* %122 to %struct.resend_t*, !dbg !3503
  call void @llvm.dbg.value(metadata %struct.resend_t* %125, metadata !3324, metadata !DIExpression()), !dbg !3497
  %126 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 1, !dbg !3506
  store i32 25, i32* %126, align 4, !dbg !3507, !tbaa !3358
  %127 = getelementptr inbounds %struct.resend_t, %struct.resend_t* %125, i32 0, i32 2, i32 0, !dbg !3508
  %128 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 3, !dbg !3509
  %129 = bitcast %union.anon* %128 to i8**, !dbg !3509
  store i8* %127, i8** %129, align 4, !dbg !3510, !tbaa !661
  %130 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %122, i32 1, !dbg !3511
  %131 = bitcast %struct.btstack_linked_item* %130 to i16*, !dbg !3511
  %132 = load i16, i16* %131, align 4, !dbg !3511, !tbaa !3512
  %133 = trunc i16 %132 to i8, !dbg !3514
  %134 = getelementptr inbounds %struct.hfp_ioctrl_str, %struct.hfp_ioctrl_str* %3, i32 0, i32 2, !dbg !3515
  store i8 %133, i8* %134, align 4, !dbg !3516, !tbaa !3375
  %135 = icmp eq i32 (i8*)* %7, null, !dbg !3517
  br i1 %135, label %139, label %136, !dbg !3519

; <label>:136:                                    ; preds = %124
  %137 = call i32 %7(i8* nonnull %4) #13, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %137, metadata !3306, metadata !DIExpression()), !dbg !3330
  %138 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 6), align 4, !tbaa !3489
  br label %139, !dbg !3522

; <label>:139:                                    ; preds = %136, %124
  %140 = phi i32 (i8*)* [ %138, %136 ], [ %9, %124 ], !dbg !3523
  %141 = phi i32 [ %137, %136 ], [ %117, %124 ]
  call void @llvm.dbg.value(metadata i32 %141, metadata !3306, metadata !DIExpression()), !dbg !3330
  %142 = icmp eq i32 (i8*)* %140, null, !dbg !3525
  br i1 %142, label %145, label %143, !dbg !3526

; <label>:143:                                    ; preds = %139
  %144 = call i32 %140(i8* nonnull %4) #13, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %144, metadata !3306, metadata !DIExpression()), !dbg !3330
  br label %145, !dbg !3529

; <label>:145:                                    ; preds = %143, %139
  %146 = phi i32 [ %144, %143 ], [ %141, %139 ]
  call void @llvm.dbg.value(metadata i32 %146, metadata !3306, metadata !DIExpression()), !dbg !3330
  %147 = icmp eq i32 %146, 0, !dbg !3530
  br i1 %147, label %148, label %151, !dbg !3532

; <label>:148:                                    ; preds = %145
  %149 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %121, %struct.btstack_linked_item* nonnull %122) #13, !dbg !3533
  %150 = bitcast %struct.btstack_linked_item* %122 to i8*, !dbg !3535
  call void @free(i8* %150) #12, !dbg !3536
  br label %151, !dbg !3537

; <label>:151:                                    ; preds = %148, %145, %120, %116, %114, %110, %6, %2
  %152 = phi i32 [ -1000, %2 ], [ -1006, %6 ], [ %115, %114 ], [ %111, %110 ], [ 0, %148 ], [ %146, %145 ], [ %117, %120 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #14, !dbg !3538
  ret i32 %152, !dbg !3538
}

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define weak hidden void @user_spp_send_ok_callback(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3541, metadata !DIExpression()), !dbg !3542
  ret void, !dbg !3543
}

; Function Attrs: nounwind optsize
define weak hidden void @user_pbg_send_ok_callback(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3546, metadata !DIExpression()), !dbg !3547
  ret void, !dbg !3548
}

; Function Attrs: nounwind optsize
define weak hidden void @user_adt_send_ok_callback(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3551, metadata !DIExpression()), !dbg !3552
  ret void, !dbg !3553
}

; Function Attrs: norecurse nounwind optsize
define weak hidden void @adt_key_open_mic() local_unnamed_addr #2 section ".bt_stack_code" !dbg !3554 {
  ret void, !dbg !3555
}

; Function Attrs: nounwind optsize
define hidden i32 @user_pan_send_cmd(i8* readonly, i32, i32, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3560, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i32 %1, metadata !3561, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %2, metadata !3562, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i8* %3, metadata !3563, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 0, metadata !3564, metadata !DIExpression()), !dbg !3571
  %5 = icmp eq i8* %0, null, !dbg !3572
  br i1 %5, label %8, label %6, !dbg !3574

; <label>:6:                                      ; preds = %4
  %7 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* nonnull %0) #12, !dbg !3575
  call void @llvm.dbg.value(metadata %struct.conn_info* %7, metadata !3565, metadata !DIExpression()), !dbg !3577
  br label %10, !dbg !3578

; <label>:8:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i8 -86, metadata !763, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !766, metadata !DIExpression()), !dbg !3583
  %9 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0)) #13, !dbg !3584
  call void @llvm.dbg.value(metadata %struct.conn_info* %9, metadata !3565, metadata !DIExpression()), !dbg !3577
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi %struct.conn_info* [ %7, %6 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata %struct.conn_info* %11, metadata !3565, metadata !DIExpression()), !dbg !3577
  %12 = icmp eq %struct.conn_info* %11, null, !dbg !3585
  br i1 %12, label %25, label %13, !dbg !3587

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %11, i32 0, i32 0, i32 0, !dbg !3588
  %15 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %11, i32 0, i32 5, !dbg !3590
  %16 = bitcast [5 x i8]* %15 to i40*, !dbg !3590
  %17 = load i40, i40* %16, align 4, !dbg !3590
  %18 = lshr i40 %17, 33, !dbg !3590
  %19 = trunc i40 %18 to i8, !dbg !3590
  %20 = and i8 %19, 3, !dbg !3590
  tail call void @hci_set_sniff_mode(i32 0, i8 zeroext %20, i8* %14, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext 0) #13, !dbg !3591
  %21 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 9), align 4, !dbg !3592, !tbaa !3594
  %22 = icmp eq i32 (i8*, i32, i32, i8*)* %21, null, !dbg !3595
  br i1 %22, label %25, label %23, !dbg !3596

; <label>:23:                                     ; preds = %13
  %24 = tail call i32 %21(i8* %14, i32 %1, i32 %2, i8* %3) #13, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %24, metadata !3564, metadata !DIExpression()), !dbg !3571
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #13, !dbg !3599
  br label %25, !dbg !3600

; <label>:25:                                     ; preds = %23, %13, %10
  %26 = phi i32 [ %24, %23 ], [ -1000, %10 ], [ -1006, %13 ]
  ret i32 %26, !dbg !3601
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_role_type_by_addr(i8* nocapture readonly) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3606, metadata !DIExpression()), !dbg !3608
  %2 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !3609
  call void @llvm.dbg.value(metadata %struct.conn_info* %2, metadata !3607, metadata !DIExpression()), !dbg !3610
  %3 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !3611
  %4 = bitcast [5 x i8]* %3 to i40*, !dbg !3611
  %5 = load i40, i40* %4, align 4, !dbg !3611
  %6 = lshr i40 %5, 38, !dbg !3613
  %7 = trunc i40 %6 to i8, !dbg !3613
  %8 = and i8 %7, 1, !dbg !3613
  ret i8 %8, !dbg !3615
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @emitter_hci_disconn_deal() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3616 {
  %1 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !3618, metadata !DIExpression()), !dbg !3620
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0, !dbg !3621
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #14, !dbg !3621
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %1, metadata !3619, metadata !DIExpression()), !dbg !3622
  call void @llvm.memset.p0i8.i32(i8* nonnull %2, i8 0, i32 6, i32 1, i1 false), !dbg !3622
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3618, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3618, metadata !DIExpression()), !dbg !3620
  br label %3, !dbg !3623

; <label>:3:                                      ; preds = %32, %0
  %4 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %33, %32 ]
  %5 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !3626
  %6 = bitcast [5 x i8]* %5 to i40*, !dbg !3626
  %7 = load i40, i40* %6, align 4, !dbg !3626
  %8 = and i40 %7, 536870912, !dbg !3630
  %9 = icmp eq i40 %8, 0, !dbg !3630
  br i1 %9, label %32, label %10, !dbg !3631

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 1, !dbg !3632
  %12 = load i16, i16* %11, align 2, !dbg !3632, !tbaa !643
  %13 = icmp eq i16 %12, 0, !dbg !3634
  br i1 %13, label %32, label %14, !dbg !3635

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 2, !dbg !3637
  %16 = load i16, i16* %15, align 4, !dbg !3637, !tbaa !795
  %17 = and i16 %16, 8320, !dbg !3640
  %18 = icmp eq i16 %17, 0, !dbg !3640
  br i1 %18, label %32, label %19, !dbg !3641

; <label>:19:                                     ; preds = %14
  %20 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !3642, !tbaa !661
  %21 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %20, i32 0, i32 23, i32 0, !dbg !3642
  %22 = call i32 @memcmp(i8* %21, i8* nonnull %2, i32 6) #12, !dbg !3645
  %23 = icmp eq i32 %22, 0, !dbg !3645
  br i1 %23, label %31, label %24, !dbg !3646

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !3647
  %26 = tail call i32 @memcmp(i8* %21, i8* %25, i32 6) #12, !dbg !3650
  %27 = icmp eq i32 %26, 0, !dbg !3650
  br i1 %27, label %28, label %32, !dbg !3651

; <label>:28:                                     ; preds = %24
  tail call void @hci_disconnect_cmd(i16 zeroext %12, i8 zeroext 22) #13, !dbg !3652
  %29 = load %struct.user_cmd_ctrl*, %struct.user_cmd_ctrl** @g_user_cmd, align 4, !dbg !3654, !tbaa !661
  %30 = getelementptr inbounds %struct.user_cmd_ctrl, %struct.user_cmd_ctrl* %29, i32 0, i32 23, i32 0, !dbg !3655
  tail call void @llvm.memset.p0i8.i32(i8* %30, i8 0, i32 6, i32 2, i1 false), !dbg !3655
  br label %36, !dbg !3656

; <label>:31:                                     ; preds = %19
  tail call void @hci_disconnect_cmd(i16 zeroext %12, i8 zeroext 22) #13, !dbg !3657
  br label %32

; <label>:32:                                     ; preds = %31, %24, %14, %10, %3
  %33 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 1, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.conn_info* %33, metadata !3618, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata %struct.conn_info* %33, metadata !3618, metadata !DIExpression()), !dbg !3620
  %34 = icmp ult %struct.conn_info* %33, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3661
  br i1 %34, label %3, label %35, !dbg !3623, !llvm.loop !3663

; <label>:35:                                     ; preds = %32
  br label %36, !dbg !3666

; <label>:36:                                     ; preds = %35, %28
  %37 = phi i8 [ 1, %28 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #14, !dbg !3666
  ret i8 %37, !dbg !3666
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @tws_host_timeout_get() local_unnamed_addr #9 section ".bt_stack_code" !dbg !3667 {
  %1 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !3668, !tbaa !587
  ret i8 %1, !dbg !3669
}

; Function Attrs: norecurse nounwind optsize
define hidden void @tws_host_timeout_del_event() local_unnamed_addr #2 section ".bt_stack_code" !dbg !3670 {
  store i8 0, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !3671, !tbaa !587
  ret void, !dbg !3672
}

; Function Attrs: norecurse nounwind optsize
define hidden void @tws_host_timeout_del() local_unnamed_addr #2 section ".bt_stack_code" !dbg !3673 {
  store i8 0, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !3674, !tbaa !587
  ret void, !dbg !3675
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @check_conn_channel_for_tws() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3676 {
  call void @llvm.dbg.value(metadata i16 0, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i16 0, metadata !3678, metadata !DIExpression()), !dbg !3680
  %1 = load i8, i8* @hid_conn_depend_on_dev_company, align 1
  %2 = icmp eq i8 %1, 1
  br label %3, !dbg !3682

; <label>:3:                                      ; preds = %84, %0
  %4 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %86, %84 ]
  %5 = phi i16 [ 0, %0 ], [ %85, %84 ]
  %6 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 2, !dbg !3685
  %7 = load i16, i16* %6, align 4, !dbg !3685, !tbaa !795
  %8 = icmp eq i16 %7, 0, !dbg !3689
  br i1 %8, label %84, label %9, !dbg !3690

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !3691
  %11 = bitcast [5 x i8]* %10 to i40*, !dbg !3691
  %12 = load i40, i40* %11, align 4, !dbg !3691
  %13 = and i40 %12, 536870912, !dbg !3693
  %14 = icmp eq i40 %13, 0, !dbg !3693
  br i1 %14, label %84, label %15, !dbg !3694

; <label>:15:                                     ; preds = %9
  %16 = load i16, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !3696, !tbaa !3699
  %17 = and i16 %7, 4, !dbg !3700
  %18 = and i16 %17, %16, !dbg !3700
  %19 = icmp eq i16 %18, 0, !dbg !3700
  %20 = or i16 %5, 36, !dbg !3701
  call void @llvm.dbg.value(metadata i16 %20, metadata !3678, metadata !DIExpression()), !dbg !3680
  %21 = select i1 %19, i16 %5, i16 %20, !dbg !3700
  call void @llvm.dbg.value(metadata i16 %21, metadata !3678, metadata !DIExpression()), !dbg !3680
  %22 = and i16 %16, 8, !dbg !3705
  %23 = icmp eq i16 %22, 0, !dbg !3705
  %24 = and i16 %7, 8, !dbg !3707
  %25 = select i1 %23, i16 0, i16 %24, !dbg !3710
  %26 = or i16 %21, %25, !dbg !3710
  call void @llvm.dbg.value(metadata i16 %26, metadata !3678, metadata !DIExpression()), !dbg !3680
  %27 = and i16 %16, 2, !dbg !3711
  %28 = icmp eq i16 %27, 0, !dbg !3711
  br i1 %28, label %39, label %29, !dbg !3713

; <label>:29:                                     ; preds = %15
  %30 = and i16 %7, 2, !dbg !3714
  %31 = icmp eq i16 %30, 0, !dbg !3714
  br i1 %31, label %32, label %37, !dbg !3717

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 3, !dbg !3718
  %34 = load i8, i8* %33, align 2, !dbg !3718, !tbaa !656
  %35 = and i8 %34, 2, !dbg !3720
  %36 = icmp eq i8 %35, 0, !dbg !3720
  br i1 %36, label %39, label %37, !dbg !3721

; <label>:37:                                     ; preds = %32, %29
  %38 = or i16 %26, 2, !dbg !3723
  call void @llvm.dbg.value(metadata i16 %38, metadata !3678, metadata !DIExpression()), !dbg !3680
  br label %39, !dbg !3725

; <label>:39:                                     ; preds = %37, %32, %15
  %40 = phi i16 [ %38, %37 ], [ %26, %32 ], [ %26, %15 ]
  call void @llvm.dbg.value(metadata i16 %40, metadata !3678, metadata !DIExpression()), !dbg !3680
  %41 = and i16 %16, 16, !dbg !3726
  %42 = icmp eq i16 %41, 0, !dbg !3726
  br i1 %42, label %65, label %43, !dbg !3728

; <label>:43:                                     ; preds = %39
  %44 = and i16 %7, 16, !dbg !3729
  %45 = icmp eq i16 %44, 0, !dbg !3729
  br i1 %45, label %46, label %51, !dbg !3732

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 3, !dbg !3733
  %48 = load i8, i8* %47, align 2, !dbg !3733, !tbaa !656
  %49 = and i8 %48, 16, !dbg !3735
  %50 = icmp eq i8 %49, 0, !dbg !3735
  br i1 %50, label %53, label %51, !dbg !3736

; <label>:51:                                     ; preds = %46, %43
  %52 = or i16 %40, 16, !dbg !3738
  call void @llvm.dbg.value(metadata i16 %52, metadata !3678, metadata !DIExpression()), !dbg !3680
  br label %53, !dbg !3740

; <label>:53:                                     ; preds = %51, %46
  %54 = phi i16 [ %52, %51 ], [ %40, %46 ]
  call void @llvm.dbg.value(metadata i16 %54, metadata !3678, metadata !DIExpression()), !dbg !3680
  br i1 %2, label %55, label %65, !dbg !3741

; <label>:55:                                     ; preds = %53
  %56 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !3742
  %57 = tail call zeroext i8 @remote_dev_company_ioctrl(i8* %56, i8 zeroext 0, i8 zeroext 0) #13, !dbg !3746
  %58 = icmp eq i8 %57, 2, !dbg !3747
  %59 = load i16, i16* %6, align 4, !tbaa !795
  br i1 %58, label %65, label %60, !dbg !3748

; <label>:60:                                     ; preds = %55
  %61 = and i16 %59, 16, !dbg !3749
  %62 = icmp eq i16 %61, 0, !dbg !3749
  br i1 %62, label %63, label %88, !dbg !3752

; <label>:63:                                     ; preds = %60
  %64 = or i16 %54, 16, !dbg !3753
  call void @llvm.dbg.value(metadata i16 %64, metadata !3678, metadata !DIExpression()), !dbg !3680
  br label %65, !dbg !3755

; <label>:65:                                     ; preds = %63, %55, %53, %39
  %66 = phi i16 [ %59, %63 ], [ %7, %53 ], [ %7, %39 ], [ %59, %55 ], !dbg !3756
  %67 = phi i16 [ %64, %63 ], [ %54, %53 ], [ %40, %39 ], [ %54, %55 ]
  call void @llvm.dbg.value(metadata i16 %67, metadata !3678, metadata !DIExpression()), !dbg !3680
  %68 = load i16, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !3758, !tbaa !3699
  %69 = and i16 %68, 1, !dbg !3760
  %70 = or i16 %69, %67, !dbg !3761
  call void @llvm.dbg.value(metadata i16 %70, metadata !3678, metadata !DIExpression()), !dbg !3680
  %71 = lshr i16 %66, 3, !dbg !3762
  %72 = and i16 %71, 512, !dbg !3762
  %73 = or i16 %70, %72, !dbg !3762
  call void @llvm.dbg.value(metadata i16 %73, metadata !3678, metadata !DIExpression()), !dbg !3680
  %74 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 9), align 1, !dbg !3763, !tbaa !587
  %75 = icmp eq i8 %74, 0, !dbg !3766
  br i1 %75, label %76, label %82, !dbg !3767

; <label>:76:                                     ; preds = %65
  %77 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3768, !tbaa !621
  %78 = and i8 %77, 32, !dbg !3768
  %79 = icmp eq i8 %78, 0, !dbg !3768
  br i1 %79, label %90, label %80, !dbg !3771

; <label>:80:                                     ; preds = %76
  %81 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)) #12, !dbg !3772
  br label %90, !dbg !3772

; <label>:82:                                     ; preds = %65
  %83 = icmp eq i16 %68, %73, !dbg !3774
  br i1 %83, label %88, label %84, !dbg !3776

; <label>:84:                                     ; preds = %82, %9, %3
  %85 = phi i16 [ %73, %82 ], [ %5, %9 ], [ %5, %3 ]
  call void @llvm.dbg.value(metadata i16 %85, metadata !3678, metadata !DIExpression()), !dbg !3680
  %86 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 1, !dbg !3777
  call void @llvm.dbg.value(metadata %struct.conn_info* %86, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata %struct.conn_info* %86, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i16 %85, metadata !3678, metadata !DIExpression()), !dbg !3680
  %87 = icmp ult %struct.conn_info* %86, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3779
  br i1 %87, label %3, label %88, !dbg !3682, !llvm.loop !3781

; <label>:88:                                     ; preds = %84, %82, %60
  %89 = phi i8 [ 1, %84 ], [ 0, %82 ], [ 1, %60 ]
  br label %90, !dbg !3784

; <label>:90:                                     ; preds = %88, %80, %76
  %91 = phi i8 [ 0, %76 ], [ 0, %80 ], [ %89, %88 ]
  ret i8 %91, !dbg !3784
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @bt_api_conn_mode_check(i8 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3785 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3789, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %1, metadata !3790, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8 0, metadata !3791, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i8 0, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 0, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i8 0, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i8 0, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 0, metadata !3791, metadata !DIExpression()), !dbg !3797
  %3 = icmp ne i8 %0, 0
  br label %4, !dbg !3801

; <label>:4:                                      ; preds = %31, %2
  %5 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %2 ], [ %35, %31 ]
  %6 = phi i8 [ 0, %2 ], [ %34, %31 ]
  %7 = phi i8 [ 0, %2 ], [ %33, %31 ]
  %8 = phi i8 [ 0, %2 ], [ %32, %31 ]
  %9 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 5, !dbg !3804
  %10 = bitcast [5 x i8]* %9 to i40*, !dbg !3804
  %11 = load i40, i40* %10, align 4, !dbg !3804
  %12 = and i40 %11, 536870912, !dbg !3808
  %13 = icmp eq i40 %12, 0, !dbg !3808
  br i1 %13, label %31, label %14, !dbg !3809

; <label>:14:                                     ; preds = %4
  %15 = add i8 %8, 1, !dbg !3810
  call void @llvm.dbg.value(metadata i8 %15, metadata !3791, metadata !DIExpression()), !dbg !3797
  %16 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 0, i32 0, i32 0, !dbg !3812
  %17 = tail call i32 @memcmp(i8* %16, i8* %1, i32 6) #12, !dbg !3814
  %18 = icmp eq i32 %17, 0, !dbg !3814
  br i1 %18, label %19, label %23, !dbg !3815

; <label>:19:                                     ; preds = %14
  %20 = and i40 %11, -25769803777
  %21 = or i40 %20, 17179869184, !dbg !3816
  %22 = select i1 %3, i40 %20, i40 %21, !dbg !3820
  store i40 %22, i40* %10, align 4
  br label %23, !dbg !3821

; <label>:23:                                     ; preds = %19, %14
  %24 = phi i40 [ %11, %14 ], [ %22, %19 ], !dbg !3822
  %25 = and i40 %24, 25769803776, !dbg !3824
  %26 = icmp eq i40 %25, 0, !dbg !3824
  br i1 %26, label %29, label %27, !dbg !3825

; <label>:27:                                     ; preds = %23
  %28 = add i8 %6, 1, !dbg !3826
  call void @llvm.dbg.value(metadata i8 %28, metadata !3793, metadata !DIExpression()), !dbg !3799
  br label %31, !dbg !3828

; <label>:29:                                     ; preds = %23
  %30 = add i8 %7, 1, !dbg !3829
  call void @llvm.dbg.value(metadata i8 %30, metadata !3792, metadata !DIExpression()), !dbg !3798
  br label %31

; <label>:31:                                     ; preds = %29, %27, %4
  %32 = phi i8 [ %15, %27 ], [ %15, %29 ], [ %8, %4 ]
  %33 = phi i8 [ %7, %27 ], [ %30, %29 ], [ %7, %4 ]
  %34 = phi i8 [ %28, %27 ], [ %6, %29 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i8 %34, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i8 %33, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 %32, metadata !3791, metadata !DIExpression()), !dbg !3797
  %35 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %5, i32 1, !dbg !3831
  call void @llvm.dbg.value(metadata %struct.conn_info* %35, metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata %struct.conn_info* %35, metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i8 %34, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i8 %33, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 %32, metadata !3791, metadata !DIExpression()), !dbg !3797
  %36 = icmp ult %struct.conn_info* %35, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3833
  br i1 %36, label %4, label %37, !dbg !3801, !llvm.loop !3835

; <label>:37:                                     ; preds = %31
  %38 = icmp eq i8 %32, 2, !dbg !3838
  br i1 %38, label %39, label %47, !dbg !3840

; <label>:39:                                     ; preds = %37
  %40 = icmp eq i8 %0, 0, !dbg !3841
  %41 = icmp eq i8 %33, 0, !dbg !3844
  %42 = or i1 %40, %41, !dbg !3846
  br i1 %42, label %43, label %47, !dbg !3846

; <label>:43:                                     ; preds = %39
  %44 = icmp eq i8 %34, 2, !dbg !3847
  %45 = and i1 %40, %44, !dbg !3850
  %46 = zext i1 %45 to i8, !dbg !3850
  ret i8 %46, !dbg !3850

; <label>:47:                                     ; preds = %39, %37
  ret i8 1, !dbg !3851
}

; Function Attrs: norecurse nounwind optsize
define weak hidden i32 @mic_coder_busy_flag() local_unnamed_addr #2 section ".bt_stack_code" !dbg !3852 {
  ret i32 0, !dbg !3855
}

; Function Attrs: norecurse nounwind optsize
define weak hidden i32 @filter_out_sbc_data_en() local_unnamed_addr #2 section ".bt_stack_code" !dbg !3856 {
  ret i32 0, !dbg !3857
}

; Function Attrs: norecurse nounwind optsize
define weak hidden i32 @update_check_sniff_en() local_unnamed_addr #2 section ".bt_stack_code" !dbg !3858 {
  ret i32 1, !dbg !3859
}

; Function Attrs: nounwind optsize
define hidden void @clear_sniff_cnt() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3860 {
  call void @llvm.dbg.value(metadata i8 0, metadata !3862, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !3863, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3863, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3863, metadata !DIExpression()), !dbg !3865
  br label %1, !dbg !3866

; <label>:1:                                      ; preds = %10, %0
  %2 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %11, %10 ]
  %3 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !3869
  %4 = bitcast [5 x i8]* %3 to i40*, !dbg !3869
  %5 = load i40, i40* %4, align 4, !dbg !3869
  %6 = and i40 %5, 536870912, !dbg !3873
  %7 = icmp eq i40 %6, 0, !dbg !3873
  br i1 %7, label %10, label %8, !dbg !3874

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 6, !dbg !3875
  store i8 0, i8* %9, align 1, !dbg !3877, !tbaa !3878
  br label %10, !dbg !3879

; <label>:10:                                     ; preds = %8, %1
  %11 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 1, !dbg !3880
  call void @llvm.dbg.value(metadata %struct.conn_info* %11, metadata !3863, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata %struct.conn_info* %11, metadata !3863, metadata !DIExpression()), !dbg !3865
  %12 = icmp ult %struct.conn_info* %11, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3882
  br i1 %12, label %1, label %13, !dbg !3866, !llvm.loop !3884

; <label>:13:                                     ; preds = %10
  ret void, !dbg !3887
}

; Function Attrs: norecurse nounwind optsize
define weak hidden zeroext i8 @bt_emitter_stu_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !3888 {
  ret i8 0, !dbg !3889
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @bt_api_enter_sniff_status_check(i16 zeroext, i8* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3890 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3894, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %1, metadata !3895, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i8 0, metadata !3896, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !3897, metadata !DIExpression()), !dbg !3901
  %3 = tail call i32 @update_check_sniff_en() #12, !dbg !3902
  %4 = icmp eq i32 %3, 0, !dbg !3902
  br i1 %4, label %70, label %5, !dbg !3904

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i8 0, metadata !3896, metadata !DIExpression()), !dbg !3900
  %6 = zext i16 %0 to i32
  br label %7, !dbg !3905

; <label>:7:                                      ; preds = %65, %5
  %8 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %5 ], [ %67, %65 ]
  %9 = phi i8 [ 0, %5 ], [ %66, %65 ]
  %10 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %8, i32 0, i32 5, !dbg !3908
  %11 = bitcast [5 x i8]* %10 to i40*, !dbg !3908
  %12 = load i40, i40* %11, align 4, !dbg !3908
  %13 = and i40 %12, 536870912, !dbg !3912
  %14 = icmp eq i40 %13, 0, !dbg !3912
  br i1 %14, label %65, label %15, !dbg !3913

; <label>:15:                                     ; preds = %7
  %16 = tail call zeroext i8 bitcast (i8 (...)* @get_esco_coder_busy_flag to i8 ()*)() #13, !dbg !3914
  %17 = icmp eq i8 %16, 0, !dbg !3914
  br i1 %17, label %18, label %52, !dbg !3917

; <label>:18:                                     ; preds = %15
  %19 = load i40, i40* %11, align 4, !dbg !3918
  %20 = and i40 %19, 25769803776, !dbg !3920
  %21 = icmp eq i40 %20, 0, !dbg !3920
  br i1 %21, label %22, label %52, !dbg !3921

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %8, i32 0, i32 4, !dbg !3922
  %24 = load i8, i8* %23, align 1, !dbg !3922, !tbaa !1570
  %25 = icmp eq i8 %24, 45, !dbg !3924
  %26 = and i40 %19, 15, !dbg !3925
  %27 = icmp eq i40 %26, 5, !dbg !3925
  %28 = and i1 %27, %25, !dbg !3926
  br i1 %28, label %29, label %52, !dbg !3926

; <label>:29:                                     ; preds = %22
  %30 = tail call zeroext i8 @a2dp_get_status_for_conn(%struct.conn_info* nonnull %8) #12, !dbg !3927
  %31 = icmp eq i8 %30, 1, !dbg !3928
  br i1 %31, label %52, label %32, !dbg !3929

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @mic_coder_busy_flag() #12, !dbg !3930
  %34 = icmp eq i32 %33, 0, !dbg !3930
  br i1 %34, label %35, label %52, !dbg !3931

; <label>:35:                                     ; preds = %32
  %36 = tail call i32 @filter_out_sbc_data_en() #12, !dbg !3932
  %37 = icmp eq i32 %36, 0, !dbg !3932
  br i1 %37, label %38, label %52, !dbg !3933

; <label>:38:                                     ; preds = %35
  %39 = tail call zeroext i8 @bt_emitter_stu_get() #12, !dbg !3934
  %40 = load i40, i40* %11, align 4
  %41 = and i40 %40, 274877906944, !dbg !3935
  %42 = icmp eq i8 %39, 0, !dbg !3936
  %43 = icmp ne i40 %41, 0, !dbg !3936
  %44 = and i1 %43, %42, !dbg !3936
  %45 = and i40 %40, 274877906944, !dbg !3937
  %46 = icmp eq i40 %45, 0, !dbg !3937
  %47 = or i1 %44, %46, !dbg !3936
  br i1 %47, label %48, label %52, !dbg !3936

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %8, i32 0, i32 6, !dbg !3938
  %50 = load i8, i8* %49, align 1, !dbg !3940, !tbaa !3878
  %51 = add i8 %50, 1, !dbg !3940
  store i8 %51, i8* %49, align 1, !dbg !3940, !tbaa !3878
  br label %54, !dbg !3941

; <label>:52:                                     ; preds = %38, %35, %32, %29, %22, %18, %15
  %53 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %8, i32 0, i32 6, !dbg !3942
  store i8 0, i8* %53, align 1, !dbg !3944, !tbaa !3878
  br label %54

; <label>:54:                                     ; preds = %52, %48
  %55 = phi i8* [ %53, %52 ], [ %49, %48 ], !dbg !3945
  %56 = phi i8 [ 0, %52 ], [ %51, %48 ], !dbg !3945
  %57 = zext i8 %56 to i32, !dbg !3947
  %58 = icmp ult i32 %57, %6, !dbg !3948
  br i1 %58, label %65, label %59, !dbg !3949

; <label>:59:                                     ; preds = %54
  store i8 0, i8* %55, align 1, !dbg !3950, !tbaa !3878
  %60 = zext i8 %9 to i32, !dbg !3952
  %61 = mul nuw nsw i32 %60, 6, !dbg !3953
  %62 = getelementptr inbounds i8, i8* %1, i32 %61, !dbg !3954
  %63 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %8, i32 0, i32 0, i32 0, !dbg !3955
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %62, i8* %63, i32 6, i32 1, i1 false), !dbg !3955
  %64 = add i8 %9, 1, !dbg !3956
  call void @llvm.dbg.value(metadata i8 %64, metadata !3896, metadata !DIExpression()), !dbg !3900
  br label %65, !dbg !3957

; <label>:65:                                     ; preds = %59, %54, %7
  %66 = phi i8 [ %64, %59 ], [ %9, %54 ], [ %9, %7 ]
  call void @llvm.dbg.value(metadata i8 %66, metadata !3896, metadata !DIExpression()), !dbg !3900
  %67 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %8, i32 1, !dbg !3958
  call void @llvm.dbg.value(metadata %struct.conn_info* %67, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata %struct.conn_info* %67, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i8 %66, metadata !3896, metadata !DIExpression()), !dbg !3900
  %68 = icmp ult %struct.conn_info* %67, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !3960
  br i1 %68, label %7, label %69, !dbg !3905, !llvm.loop !3962

; <label>:69:                                     ; preds = %65
  br label %70, !dbg !3965

; <label>:70:                                     ; preds = %69, %2
  %71 = phi i8 [ 0, %2 ], [ %66, %69 ]
  ret i8 %71, !dbg !3965
}

; Function Attrs: optsize
declare zeroext i8 @get_esco_coder_busy_flag(...) local_unnamed_addr #7

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @check_user_cmd_for_tws() local_unnamed_addr #9 section ".bt_stack_code" !dbg !3966 {
  %1 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 0), align 4, !dbg !3967, !tbaa !2433
  %2 = load i8, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 0, i32 1), align 1, !dbg !3969, !tbaa !1497
  %3 = icmp ne i8 %1, %2, !dbg !3970
  %4 = zext i1 %3 to i8, !dbg !3970
  ret i8 %4, !dbg !3972
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @get_auto_connect_state(i8* nocapture readonly) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3973 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3975, metadata !DIExpression()), !dbg !3977
  %2 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* %0) #12, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.conn_info* %2, metadata !3976, metadata !DIExpression()), !dbg !3979
  %3 = icmp eq %struct.conn_info* %2, null, !dbg !3980
  br i1 %3, label %11, label %4, !dbg !3982

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !3983
  %6 = bitcast [5 x i8]* %5 to i40*, !dbg !3983
  %7 = load i40, i40* %6, align 4, !dbg !3983
  %8 = lshr i40 %7, 32, !dbg !3983
  %9 = trunc i40 %8 to i8, !dbg !3983
  %10 = and i8 %9, 1, !dbg !3983
  br label %11, !dbg !3985

; <label>:11:                                     ; preds = %4, %1
  %12 = phi i8 [ %10, %4 ], [ 0, %1 ]
  ret i8 %12, !dbg !3986
}

; Function Attrs: nounwind optsize
define hidden i32 @user_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i16 %1, metadata !3992, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i8 0, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i8 19, metadata !3993, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), i32 19, i32 1, i1 false), !dbg !3997
  ret i32 19, !dbg !3998
}

; Function Attrs: nounwind optsize
define hidden void @user_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4003, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i16 %1, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i8 19, metadata !4005, metadata !DIExpression()), !dbg !4008
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0), i8* %0, i32 19, i32 1, i1 false), !dbg !4009
  ret void, !dbg !4010
}

; Function Attrs: nounwind optsize
define hidden i32 @get_music_sync_volume() local_unnamed_addr #0 section ".bt_stack_code" !dbg !4011 {
  %1 = tail call %struct.conn_info* @get_bt_current_conn(i8 zeroext 0) #12, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.conn_info* %1, metadata !4013, metadata !DIExpression()), !dbg !4015
  %2 = icmp eq %struct.conn_info* %1, null, !dbg !4016
  br i1 %2, label %6, label %3, !dbg !4018

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %1, i32 0, i32 0, i32 0, !dbg !4019
  %5 = tail call i32 @get_music_volume(i8* %4) #13, !dbg !4021
  br label %6, !dbg !4022

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ 255, %0 ]
  ret i32 %7, !dbg !4023
}

; Function Attrs: optsize
declare i32 @get_music_volume(i8*) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define hidden zeroext i8 @get_remote_dev_company() local_unnamed_addr #0 section ".bt_stack_code" !dbg !4024 {
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !4026, metadata !DIExpression()), !dbg !4027
  br label %1, !dbg !4028

; <label>:1:                                      ; preds = %11, %0
  %2 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %12, %11 ]
  %3 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !4031
  %4 = bitcast [5 x i8]* %3 to i40*, !dbg !4031
  %5 = load i40, i40* %4, align 4, !dbg !4031
  %6 = and i40 %5, 536870912, !dbg !4035
  %7 = icmp eq i40 %6, 0, !dbg !4035
  br i1 %7, label %11, label %8, !dbg !4036

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 0, i32 0, !dbg !4037
  %10 = tail call zeroext i8 @remote_dev_company_ioctrl(i8* %9, i8 zeroext 0, i8 zeroext 0) #13, !dbg !4039
  br label %15, !dbg !4040

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 1, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.conn_info* %12, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata %struct.conn_info* %12, metadata !4026, metadata !DIExpression()), !dbg !4027
  %13 = icmp ult %struct.conn_info* %12, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !4043
  br i1 %13, label %1, label %14, !dbg !4028, !llvm.loop !4045

; <label>:14:                                     ; preds = %11
  br label %15, !dbg !4048

; <label>:15:                                     ; preds = %14, %8
  %16 = phi i8 [ %10, %8 ], [ 0, %14 ]
  ret i8 %16, !dbg !4048
}

; Function Attrs: nounwind optsize
define hidden i32 @user_send_at_cmd_prepare(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !4049 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4051, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i16 %1, metadata !4052, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata %struct.resend_t* null, metadata !4053, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i8 -86, metadata !763, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata %struct.conn_info* null, metadata !766, metadata !DIExpression()), !dbg !4061
  %3 = tail call fastcc %struct.conn_info* @get_conn_for_addr(i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 5, i32 0)) #13, !dbg !4062
  call void @llvm.dbg.value(metadata %struct.conn_info* %3, metadata !4054, metadata !DIExpression()), !dbg !4063
  %4 = load i8, i8* @user_at_cmd_send_support, align 1, !dbg !4064, !tbaa !621
  %5 = icmp eq i8 %4, 0, !dbg !4064
  br i1 %5, label %20, label %6, !dbg !4066

; <label>:6:                                      ; preds = %2
  %7 = icmp eq %struct.conn_info* %3, null, !dbg !4067
  br i1 %7, label %20, label %8, !dbg !4069

; <label>:8:                                      ; preds = %6
  %9 = zext i16 %1 to i32, !dbg !4070
  %10 = add nuw nsw i32 %9, 8, !dbg !4071
  %11 = tail call i8* @malloc(i32 %10) #12, !dbg !4072
  %12 = icmp eq i8* %11, null, !dbg !4073
  br i1 %12, label %20, label %13, !dbg !4075

; <label>:13:                                     ; preds = %8
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %11, i8 0, i32 %10, i32 4, i1 false), !dbg !4076
  %14 = getelementptr inbounds i8, i8* %11, i32 4, !dbg !4077
  %15 = bitcast i8* %14 to i16*, !dbg !4077
  store i16 %1, i16* %15, align 4, !dbg !4078, !tbaa !3512
  %16 = getelementptr inbounds i8, i8* %11, i32 6, !dbg !4079
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %0, i32 %9, i32 1, i1 false), !dbg !4080
  %17 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %3, i32 0, i32 7, !dbg !4081
  %18 = bitcast i8* %11 to %struct.btstack_linked_item*, !dbg !4081
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** %17, %struct.btstack_linked_item* %18) #13, !dbg !4081
  %19 = tail call i32 @user_send_cmd_prepare(i32 48, i16 zeroext 0, i8* null) #12, !dbg !4082
  br label %20, !dbg !4083

; <label>:20:                                     ; preds = %13, %8, %6, %2
  %21 = phi i32 [ 0, %13 ], [ -1, %2 ], [ -2, %6 ], [ -3, %8 ]
  ret i32 %21, !dbg !4084
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #6

; Function Attrs: optsize
declare void @btstack_linked_list_add_tail(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #7

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @get_is_in_background_flag() local_unnamed_addr #9 section ".bt_stack_code" !dbg !4085 {
  %1 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4088
  %2 = and i16 %1, 256, !dbg !4088
  %3 = icmp eq i16 %2, 0, !dbg !4089
  br i1 %3, label %9, label %4, !dbg !4090

; <label>:4:                                      ; preds = %0
  %5 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !4091, !tbaa !661
  %6 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %5, i32 0, i32 8, !dbg !4093
  %7 = load i8, i8* %6, align 4, !dbg !4093, !tbaa !4094
  %8 = icmp ne i8 %7, 0, !dbg !4095
  br label %9

; <label>:9:                                      ; preds = %4, %0
  %10 = phi i1 [ false, %0 ], [ %8, %4 ]
  %11 = zext i1 %10 to i8, !dbg !4096
  ret i8 %11, !dbg !4098
}

; Function Attrs: nounwind optsize
define hidden i32 @bredr_suspend() local_unnamed_addr #0 section ".bt_stack_code" !dbg !4099 {
  call void @llvm.dbg.value(metadata %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), metadata !4101, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), metadata !4101, metadata !DIExpression()), !dbg !4103
  br i1 icmp ult (%struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_end, i32 0, i32 0)), label %1, label %10, !dbg !4104

; <label>:1:                                      ; preds = %0
  br label %2, !dbg !4107

; <label>:2:                                      ; preds = %2, %1
  %3 = phi %struct.bt_sleep* [ %7, %2 ], [ getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), %1 ]
  %4 = bitcast %struct.bt_sleep* %3 to i32 ()**, !dbg !4107
  %5 = load i32 ()*, i32 ()** %4, align 4, !dbg !4107, !tbaa !4110
  %6 = tail call i32 %5() #13, !dbg !4112
  %7 = getelementptr inbounds %struct.bt_sleep, %struct.bt_sleep* %3, i32 1, !dbg !4113
  call void @llvm.dbg.value(metadata %struct.bt_sleep* %7, metadata !4101, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.bt_sleep* %7, metadata !4101, metadata !DIExpression()), !dbg !4103
  %8 = icmp ult %struct.bt_sleep* %7, getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_end, i32 0, i32 0), !dbg !4115
  br i1 %8, label %2, label %9, !dbg !4104, !llvm.loop !4117

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !4120

; <label>:10:                                     ; preds = %9, %0
  tail call void @update_bt_current_status(i8* null, i8 zeroext 22, i8 zeroext 0) #12, !dbg !4120
  ret i32 1, !dbg !4121
}

; Function Attrs: nounwind optsize
define hidden void @bredr_resume() local_unnamed_addr #0 section ".bt_stack_code" !dbg !4122 {
  call void @llvm.dbg.value(metadata %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), metadata !4124, metadata !DIExpression()), !dbg !4125
  br i1 icmp ult (%struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_end, i32 0, i32 0)), label %1, label %11, !dbg !4126

; <label>:1:                                      ; preds = %0
  br label %2, !dbg !4129

; <label>:2:                                      ; preds = %2, %1
  %3 = phi %struct.bt_sleep* [ %8, %2 ], [ getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), %1 ]
  %4 = getelementptr inbounds %struct.bt_sleep, %struct.bt_sleep* %3, i32 0, i32 1, !dbg !4129
  %5 = bitcast i32 (...)** %4 to i32 ()**, !dbg !4129
  %6 = load i32 ()*, i32 ()** %5, align 4, !dbg !4129, !tbaa !4132
  %7 = tail call i32 %6() #13, !dbg !4133
  %8 = getelementptr inbounds %struct.bt_sleep, %struct.bt_sleep* %3, i32 1, !dbg !4134
  call void @llvm.dbg.value(metadata %struct.bt_sleep* %8, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata %struct.bt_sleep* %8, metadata !4124, metadata !DIExpression()), !dbg !4125
  %9 = icmp ult %struct.bt_sleep* %8, getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_end, i32 0, i32 0), !dbg !4136
  br i1 %9, label %2, label %10, !dbg !4126, !llvm.loop !4138

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !4141

; <label>:11:                                     ; preds = %10, %0
  tail call void @update_bt_current_status(i8* null, i8 zeroext 21, i8 zeroext 0) #12, !dbg !4141
  tail call void @update_bt_current_status(i8* null, i8 zeroext 20, i8 zeroext 0) #12, !dbg !4142
  ret void, !dbg !4143
}

; Function Attrs: nounwind optsize
define hidden i32 @bredr_release() local_unnamed_addr #0 section ".bt_stack_code" !dbg !4144 {
  call void @llvm.dbg.value(metadata i8 0, metadata !4146, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i8 0, metadata !4147, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), metadata !4148, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), metadata !4148, metadata !DIExpression()), !dbg !4151
  br i1 icmp ult (%struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), %struct.bt_sleep* getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_end, i32 0, i32 0)), label %1, label %24, !dbg !4152

; <label>:1:                                      ; preds = %0
  br label %2, !dbg !4155

; <label>:2:                                      ; preds = %18, %1
  %3 = phi %struct.bt_sleep* [ %19, %18 ], [ getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_begin, i32 0, i32 0), %1 ]
  %4 = phi i32 [ %21, %18 ], [ 0, %1 ]
  %5 = getelementptr inbounds %struct.bt_sleep, %struct.bt_sleep* %3, i32 0, i32 2, !dbg !4155
  %6 = bitcast i32 (...)** %5 to i32 ()**, !dbg !4155
  %7 = load i32 ()*, i32 ()** %6, align 4, !dbg !4155, !tbaa !4158
  %8 = tail call i32 %7() #13, !dbg !4159
  %9 = trunc i32 %8 to i8, !dbg !4159
  call void @llvm.dbg.value(metadata i8 %9, metadata !4147, metadata !DIExpression()), !dbg !4150
  %10 = icmp ne i8 %9, 0, !dbg !4160
  %11 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !4162
  %12 = icmp slt i8 %11, 0, !dbg !4162
  %13 = and i1 %10, %12, !dbg !4165
  br i1 %13, label %14, label %18, !dbg !4165

; <label>:14:                                     ; preds = %2
  %15 = bitcast i32 (...)** %5 to i32*, !dbg !4166
  %16 = load i32, i32* %15, align 4, !dbg !4166, !tbaa !4158
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 %16) #12, !dbg !4166
  br label %18, !dbg !4166

; <label>:18:                                     ; preds = %14, %2
  %19 = getelementptr inbounds %struct.bt_sleep, %struct.bt_sleep* %3, i32 1, !dbg !4168
  call void @llvm.dbg.value(metadata %struct.bt_sleep* %19, metadata !4148, metadata !DIExpression()), !dbg !4151
  %20 = add i32 %8, %4, !dbg !4170
  %21 = and i32 %20, 255, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.bt_sleep* %19, metadata !4148, metadata !DIExpression()), !dbg !4151
  %22 = icmp ult %struct.bt_sleep* %19, getelementptr inbounds ([0 x %struct.bt_sleep], [0 x %struct.bt_sleep]* @bt_sleep_end, i32 0, i32 0), !dbg !4171
  br i1 %22, label %2, label %23, !dbg !4152, !llvm.loop !4173

; <label>:23:                                     ; preds = %18
  br label %24, !dbg !4176

; <label>:24:                                     ; preds = %23, %0
  %25 = phi i32 [ 0, %0 ], [ %21, %23 ]
  ret i32 %25, !dbg !4176
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @get_remote_vol_sync() local_unnamed_addr #0 section ".bt_stack_code" !dbg !4177 {
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !4179, metadata !DIExpression()), !dbg !4180
  br label %1, !dbg !4181

; <label>:1:                                      ; preds = %11, %0
  %2 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %12, %11 ]
  %3 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 5, !dbg !4184
  %4 = bitcast [5 x i8]* %3 to i40*, !dbg !4184
  %5 = load i40, i40* %4, align 4, !dbg !4184
  %6 = and i40 %5, 536870912, !dbg !4188
  %7 = icmp eq i40 %6, 0, !dbg !4188
  br i1 %7, label %11, label %8, !dbg !4189

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 0, i32 0, i32 0, !dbg !4190
  %10 = tail call zeroext i8 @avctp_get_remote_vol_sync(i8* %9) #13, !dbg !4192
  br label %15, !dbg !4193

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %2, i32 1, !dbg !4194
  call void @llvm.dbg.value(metadata %struct.conn_info* %12, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata %struct.conn_info* %12, metadata !4179, metadata !DIExpression()), !dbg !4180
  %13 = icmp ult %struct.conn_info* %12, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !4196
  br i1 %13, label %1, label %14, !dbg !4181, !llvm.loop !4198

; <label>:14:                                     ; preds = %11
  br label %15, !dbg !4201

; <label>:15:                                     ; preds = %14, %8
  %16 = phi i8 [ %10, %8 ], [ 0, %14 ]
  ret i8 %16, !dbg !4201
}

; Function Attrs: optsize
declare zeroext i8 @avctp_get_remote_vol_sync(i8*) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @connect_a2dp_w_phone_only_conn_hfp() unnamed_addr #0 section ".bt_stack_code" !dbg !4202 {
  call void @llvm.dbg.value(metadata i8 0, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !4205, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata %struct.conn_info* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), metadata !4205, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i8 0, metadata !4204, metadata !DIExpression()), !dbg !4206
  %1 = load i8, i8* @btstack_emitter_support, align 1
  %2 = icmp eq i8 %1, 0
  br label %3, !dbg !4208

; <label>:3:                                      ; preds = %87, %0
  %4 = phi %struct.conn_info* [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %0 ], [ %89, %87 ]
  %5 = phi i8 [ 0, %0 ], [ %88, %87 ]
  %6 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 5, !dbg !4211
  %7 = bitcast [5 x i8]* %6 to i40*, !dbg !4211
  %8 = load i40, i40* %7, align 4, !dbg !4211
  %9 = and i40 %8, 536870912, !dbg !4215
  %10 = icmp eq i40 %9, 0, !dbg !4215
  br i1 %10, label %87, label %11, !dbg !4216

; <label>:11:                                     ; preds = %3
  %12 = lshr i40 %8, 20, !dbg !4217
  %13 = trunc i40 %12 to i8, !dbg !4217
  %14 = and i8 %13, 15, !dbg !4217
  %15 = icmp eq i8 %14, 0, !dbg !4220
  br i1 %15, label %82, label %16, !dbg !4221

; <label>:16:                                     ; preds = %11
  %17 = add i8 %13, 15, !dbg !4222
  %18 = and i8 %17, 15, !dbg !4222
  %19 = zext i8 %18 to i40, !dbg !4222
  %20 = shl nuw nsw i40 %19, 20, !dbg !4222
  %21 = and i40 %8, -15728641, !dbg !4222
  %22 = or i40 %20, %21, !dbg !4222
  store i40 %22, i40* %7, align 4, !dbg !4222
  %23 = icmp eq i8 %18, 1, !dbg !4224
  br i1 %23, label %24, label %82, !dbg !4225

; <label>:24:                                     ; preds = %16
  store i40 %21, i40* %7, align 4, !dbg !4227
  %25 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 2, !dbg !4229
  %26 = load i16, i16* %25, align 4, !dbg !4229, !tbaa !795
  %27 = and i16 %26, 6, !dbg !4231
  %28 = icmp eq i16 %27, 2, !dbg !4231
  br i1 %28, label %29, label %45, !dbg !4231

; <label>:29:                                     ; preds = %24
  %30 = tail call i32 @__bt_profile_enable(i32 4) #13, !dbg !4232
  %31 = icmp eq i32 %30, 0, !dbg !4232
  br i1 %31, label %40, label %32, !dbg !4235

; <label>:32:                                     ; preds = %29
  %33 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !4236, !tbaa !661
  %34 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %33, i32 0, i32 9, !dbg !4239
  %35 = load i32, i32* %34, align 1, !dbg !4239
  %36 = and i32 %35, 8388608, !dbg !4239
  %37 = icmp eq i32 %36, 0, !dbg !4240
  br i1 %37, label %38, label %45, !dbg !4241

; <label>:38:                                     ; preds = %32
  %39 = tail call i32 @user_send_cmd_prepare(i32 66, i16 zeroext 0, i8* null) #12, !dbg !4242
  br label %45, !dbg !4244

; <label>:40:                                     ; preds = %29
  %41 = tail call i32 @__bt_profile_enable(i32 8) #13, !dbg !4245
  %42 = icmp eq i32 %41, 0, !dbg !4245
  br i1 %42, label %45, label %43, !dbg !4248

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @user_send_cmd_prepare(i32 62, i16 zeroext 0, i8* null) #12, !dbg !4250
  br label %45, !dbg !4252

; <label>:45:                                     ; preds = %43, %40, %38, %32, %24
  br i1 %2, label %82, label %46, !dbg !4253

; <label>:46:                                     ; preds = %45
  %47 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !4254, !tbaa !661
  %48 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %47, i32 0, i32 9, !dbg !4258
  %49 = load i32, i32* %48, align 1, !dbg !4258
  %50 = and i32 %49, 1048576, !dbg !4254
  %51 = icmp eq i32 %50, 0, !dbg !4254
  br i1 %51, label %68, label %52, !dbg !4259

; <label>:52:                                     ; preds = %46
  %53 = tail call i32 @__bt_profile_enable(i32 128) #13, !dbg !4260
  %54 = icmp eq i32 %53, 0, !dbg !4260
  br i1 %54, label %82, label %55, !dbg !4263

; <label>:55:                                     ; preds = %52
  %56 = load i16, i16* %25, align 4, !dbg !4264, !tbaa !795
  %57 = trunc i16 %56 to i8, !dbg !4267
  %58 = icmp slt i8 %57, 0, !dbg !4267
  br i1 %58, label %82, label %59, !dbg !4268

; <label>:59:                                     ; preds = %55
  %60 = and i16 %56, 4, !dbg !4269
  %61 = icmp ne i16 %60, 0, !dbg !4269
  %62 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !4271
  %63 = icmp ne i32 (i8*, i32, i32)* %62, null, !dbg !4274
  %64 = and i1 %61, %63, !dbg !4275
  br i1 %64, label %65, label %82, !dbg !4275

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !4277
  %67 = tail call i32 %62(i8* %66, i32 0, i32 0) #13, !dbg !4279
  br label %82, !dbg !4280

; <label>:68:                                     ; preds = %46
  %69 = load i16, i16* %25, align 4, !dbg !4281, !tbaa !795
  %70 = zext i16 %69 to i32, !dbg !4284
  %71 = and i32 %70, 2, !dbg !4285
  %72 = icmp eq i32 %71, 0, !dbg !4285
  br i1 %72, label %73, label %82, !dbg !4286

; <label>:73:                                     ; preds = %68
  %74 = and i32 %70, 4, !dbg !4287
  %75 = icmp ne i32 %74, 0, !dbg !4287
  %76 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !4289
  %77 = icmp ne i32 (i8*, i32, i32)* %76, null, !dbg !4292
  %78 = and i1 %75, %77, !dbg !4293
  br i1 %78, label %79, label %82, !dbg !4293

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 0, i32 0, i32 0, !dbg !4295
  %81 = tail call i32 %76(i8* %80, i32 0, i32 0) #13, !dbg !4297
  br label %82, !dbg !4298

; <label>:82:                                     ; preds = %79, %73, %68, %65, %59, %55, %52, %45, %16, %11
  %83 = load i40, i40* %7, align 4, !dbg !4299
  %84 = and i40 %83, 15728640, !dbg !4301
  %85 = icmp eq i40 %84, 0, !dbg !4301
  call void @llvm.dbg.value(metadata i8 1, metadata !4204, metadata !DIExpression()), !dbg !4206
  %86 = select i1 %85, i8 %5, i8 1, !dbg !4302
  br label %87, !dbg !4302

; <label>:87:                                     ; preds = %82, %3
  %88 = phi i8 [ %5, %3 ], [ %86, %82 ]
  call void @llvm.dbg.value(metadata i8 %88, metadata !4204, metadata !DIExpression()), !dbg !4206
  %89 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %4, i32 1, !dbg !4303
  call void @llvm.dbg.value(metadata %struct.conn_info* %89, metadata !4205, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata %struct.conn_info* %89, metadata !4205, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i8 %88, metadata !4204, metadata !DIExpression()), !dbg !4206
  %90 = icmp ult %struct.conn_info* %89, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !4305
  br i1 %90, label %3, label %91, !dbg !4208, !llvm.loop !4307

; <label>:91:                                     ; preds = %87
  %92 = icmp ne i8 %88, 0, !dbg !4310
  %93 = zext i1 %92 to i8, !dbg !4310
  ret i8 %93, !dbg !4311
}

; Function Attrs: optsize
declare i32 @music_player_ctrl(i8*, i8 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @sco_connection_setup_dis(i8*) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @hfp_send_bcc_cmd(i8*) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @setup_hfp_ag_esco_link(i8*) local_unnamed_addr #7

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #11 !dbg !4312 {
  tail call void @p33_soft_reset() #13, !dbg !4313
  ret void, !dbg !4314
}

; Function Attrs: optsize
declare void @set_hid_independent_info(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @btstack_hci_init(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_remote_name_request_cmd(i8*, i8 zeroext, i8 zeroext, i16 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @get_remote_test_flag(...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_test_box_key_cmd(i8 zeroext, i16 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_send_user_info_cmd(i32, i16 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_inquiry_start(i8 zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_user_confirmation_request(i8 zeroext, i8*) local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_tx_channel_chassification(i8*) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i16 @sys_timeout_add(i8*, void (i8*)*, i32) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define internal void @__bt_spp_data_try_send(i8* nocapture readnone) #0 section ".bt_stack_code" !dbg !4315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4317, metadata !DIExpression()), !dbg !4318
  %2 = tail call i32 @user_send_cmd_prepare(i32 110, i16 zeroext 0, i8* null) #12, !dbg !4319
  ret void, !dbg !4320
}

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #7

; Function Attrs: optsize
declare void @hci_connection_cancel(i8*) local_unnamed_addr #7

; Function Attrs: norecurse nounwind optsize
define internal i32 @user_cmd_loop_suspend() #2 section ".bt_stack_code" !dbg !4321 {
  %1 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4322
  %2 = or i16 %1, 256, !dbg !4322
  store i16 %2, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4322
  ret i32 0, !dbg !4323
}

; Function Attrs: norecurse nounwind optsize
define internal i32 @user_cmd_loop_resume() #2 section ".bt_stack_code" !dbg !4324 {
  %1 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4325
  %2 = and i16 %1, -257, !dbg !4325
  store i16 %2, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4325
  ret i32 0, !dbg !4326
}

; Function Attrs: nounwind optsize
define internal i32 @user_cmd_loop_release() #0 section ".bt_stack_code" !dbg !4327 {
  %1 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4330
  %2 = and i16 %1, 64, !dbg !4330
  %3 = icmp eq i16 %2, 0, !dbg !4332
  br i1 %3, label %4, label %25, !dbg !4333

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !4334

; <label>:5:                                      ; preds = %16, %4
  %6 = phi %struct.conn_info* [ %17, %16 ], [ getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 2, i32 0), %4 ]
  %7 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %6, i32 0, i32 5, !dbg !4334
  %8 = bitcast [5 x i8]* %7 to i40*, !dbg !4334
  %9 = load i40, i40* %8, align 4, !dbg !4334
  %10 = and i40 %9, 536870912, !dbg !4339
  %11 = icmp eq i40 %10, 0, !dbg !4339
  br i1 %11, label %16, label %12, !dbg !4340

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %6, i32 0, i32 1, !dbg !4341
  %14 = load i16, i16* %13, align 2, !dbg !4341, !tbaa !643
  %15 = icmp eq i16 %14, 0, !dbg !4343
  br i1 %15, label %16, label %24, !dbg !4344

; <label>:16:                                     ; preds = %12, %5
  %17 = getelementptr inbounds %struct.conn_info, %struct.conn_info* %6, i32 1, !dbg !4346
  call void @llvm.dbg.value(metadata %struct.conn_info* %17, metadata !4329, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata %struct.conn_info* %17, metadata !4329, metadata !DIExpression()), !dbg !4348
  %18 = icmp ult %struct.conn_info* %17, bitcast (i8* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 3, i32 0) to %struct.conn_info*), !dbg !4349
  br i1 %18, label %5, label %19, !dbg !4351, !llvm.loop !4353

; <label>:19:                                     ; preds = %16
  tail call void @stack_run_loop_remove(%struct.run_loop* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 1)) #13, !dbg !4356
  %20 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 4)) #13, !dbg !4357
  %21 = load i16, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4358
  %22 = and i16 %21, -321, !dbg !4359
  %23 = or i16 %22, 64, !dbg !4359
  store i16 %23, i16* getelementptr inbounds (%struct.user_info_t, %struct.user_info_t* @__user_info, i32 0, i32 10), align 2, !dbg !4359
  br label %25, !dbg !4360

; <label>:24:                                     ; preds = %12
  br label %25, !dbg !4361

; <label>:25:                                     ; preds = %24, %19, %0
  %26 = phi i32 [ 0, %19 ], [ 0, %0 ], [ 1, %24 ]
  ret i32 %26, !dbg !4361
}

; Function Attrs: optsize
declare void @stack_run_loop_remove(%struct.run_loop*) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!550, !551}
!llvm.ident = !{!552}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !549, line: 190, type: !359, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !353, globals: !382)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/bredr/avctp_user.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !21, !27, !173, !226, !232, !249, !255, !265, !295, !301, !310, !316, !326, !341, !347}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!8 = !DIEnumerator(name: "HFP_INDSTA_BATTERY_CHG", value: 0)
!9 = !DIEnumerator(name: "HFP_INDSTA_SIGNAL_CHG", value: 1)
!10 = !DIEnumerator(name: "HFP_INDSTA_INCOMING_CALL", value: 2)
!11 = !DIEnumerator(name: "HFP_INDSTA_OUTGOING_CALL", value: 3)
!12 = !DIEnumerator(name: "HFP_INDSTA_CALL_ACTIVE", value: 4)
!13 = !DIEnumerator(name: "HFP_INDSTA_CALL_HANGUP", value: 5)
!14 = !DIEnumerator(name: "HFP_INDSTA_CALL_ALERT", value: 6)
!15 = !DIEnumerator(name: "HFP_INDSTA_VOL_CHANGED", value: 7)
!16 = !DIEnumerator(name: "HFP_INDSTA_SECOND_CALL_STATUS", value: 8)
!17 = !DIEnumerator(name: "HFP_INDSTA_INBAND_RINGTONE", value: 9)
!18 = !DIEnumerator(name: "HFP_INDSTA_AG_GET_ATCMD", value: 10)
!19 = !DIEnumerator(name: "HFP_INDSTA_CALL_HELD", value: 11)
!20 = !DIEnumerator(name: "HFP_INDSTA_MAX", value: 12)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 374, size: 32, elements: !23)
!22 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "BT_MUSIC_STATUS_IDLE", value: 0)
!25 = !DIEnumerator(name: "BT_MUSIC_STATUS_STARTING", value: 1)
!26 = !DIEnumerator(name: "BT_MUSIC_STATUS_SUSPENDING", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 12, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!29 = !DIEnumerator(name: "USER_CTRL_START_CONNECTION", value: 0)
!30 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR", value: 1)
!31 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR_MANUALLY", value: 2)
!32 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_SPP_VIA_ADDR", value: 3)
!33 = !DIEnumerator(name: "USER_CTRL_DISCONNECTION_HCI", value: 4)
!34 = !DIEnumerator(name: "USER_CTRL_CONNECTION_CANCEL", value: 5)
!35 = !DIEnumerator(name: "USER_CTRL_READ_REMOTE_NAME", value: 6)
!36 = !DIEnumerator(name: "USER_CTRL_PAUSE_MUSIC", value: 7)
!37 = !DIEnumerator(name: "USER_CTRL_SCO_LINK", value: 8)
!38 = !DIEnumerator(name: "USER_CTRL_CONN_SCO", value: 9)
!39 = !DIEnumerator(name: "USER_CTRL_DISCONN_SCO", value: 10)
!40 = !DIEnumerator(name: "USER_CTRL_DISCONN_SDP_MASTER", value: 11)
!41 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_DISABLE", value: 12)
!42 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_ENABLE", value: 13)
!43 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_DISABLE", value: 14)
!44 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_ENABLE", value: 15)
!45 = !DIEnumerator(name: "USER_CTRL_SEARCH_DEVICE", value: 16)
!46 = !DIEnumerator(name: "USER_CTRL_INQUIRY_CANCEL", value: 17)
!47 = !DIEnumerator(name: "USER_CTRL_PAGE_CANCEL", value: 18)
!48 = !DIEnumerator(name: "USER_CTRL_SNIFF_IN", value: 19)
!49 = !DIEnumerator(name: "USER_CTRL_SNIFF_EXIT", value: 20)
!50 = !DIEnumerator(name: "USER_CTRL_ALL_SNIFF_EXIT", value: 21)
!51 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_BEGIN", value: 22)
!52 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_UP", value: 23)
!53 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_DOWN", value: 24)
!54 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_SET_VOLUME", value: 25)
!55 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_GET_VOLUME", value: 26)
!56 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_ANSWER", value: 27)
!57 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_HANGUP", value: 28)
!58 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_LAST_NO", value: 29)
!59 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_CURRENT", value: 30)
!60 = !DIEnumerator(name: "USER_CTRL_HFP_DTMF_TONES", value: 31)
!61 = !DIEnumerator(name: "USER_CTRL_DIAL_NUMBER", value: 32)
!62 = !DIEnumerator(name: "USER_CTRL_SEND_BATTERY", value: 33)
!63 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_STATUS", value: 34)
!64 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_OPEN", value: 35)
!65 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_CLOSE", value: 36)
!66 = !DIEnumerator(name: "USER_CTRL_HFP_GET_PHONE_DATE_TIME", value: 37)
!67 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_SEND_BIA", value: 38)
!68 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_GET_MANUFACTURER", value: 39)
!69 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_UPDATE_BATTARY", value: 40)
!70 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1", value: 41)
!71 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2", value: 42)
!72 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1X", value: 43)
!73 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2X", value: 44)
!74 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER3", value: 45)
!75 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_REJECT", value: 46)
!76 = !DIEnumerator(name: "USER_CTRL_HFP_DISCONNECT", value: 47)
!77 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_END", value: 48)
!78 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_BEGIN", value: 49)
!79 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PLAY", value: 50)
!80 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PAUSE", value: 51)
!81 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_STOP", value: 52)
!82 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_NEXT", value: 53)
!83 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PREV", value: 54)
!84 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_FORWARD", value: 55)
!85 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REWIND", value: 56)
!86 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REPEAT_MODE", value: 57)
!87 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SHUFFLE_MODE", value: 58)
!88 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_PLAY_TIME", value: 59)
!89 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SEND_VOL", value: 60)
!90 = !DIEnumerator(name: "USER_CTRL_AVCTP_DISCONNECT", value: 61)
!91 = !DIEnumerator(name: "USER_CTRL_AVCTP_CONN", value: 62)
!92 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_END", value: 63)
!93 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_BEGIN", value: 64)
!94 = !DIEnumerator(name: "USER_CTRL_AUTO_CONN_A2DP", value: 65)
!95 = !DIEnumerator(name: "USER_CTRL_CONN_A2DP", value: 66)
!96 = !DIEnumerator(name: "USER_CTRL_DISCONN_A2DP", value: 67)
!97 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_START", value: 68)
!98 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_CLOSE", value: 69)
!99 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_SUSPEND", value: 70)
!100 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_GET_CONFIGURATION", value: 71)
!101 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_ABORT", value: 72)
!102 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_END", value: 73)
!103 = !DIEnumerator(name: "USER_CTRL_POWER_OFF", value: 74)
!104 = !DIEnumerator(name: "USER_CTRL_POWER_ON", value: 75)
!105 = !DIEnumerator(name: "USER_CTRL_HID_CMD_BEGIN", value: 76)
!106 = !DIEnumerator(name: "USER_CTRL_HID_CONN", value: 77)
!107 = !DIEnumerator(name: "USER_CTRL_HID_ANDROID", value: 78)
!108 = !DIEnumerator(name: "USER_CTRL_HID_IOS", value: 79)
!109 = !DIEnumerator(name: "USER_CTRL_HID_BOTH", value: 80)
!110 = !DIEnumerator(name: "USER_CTRL_HID_DISCONNECT", value: 81)
!111 = !DIEnumerator(name: "USER_CTRL_HID_HOME", value: 82)
!112 = !DIEnumerator(name: "USER_CTRL_HID_RETURN", value: 83)
!113 = !DIEnumerator(name: "USER_CTRL_HID_LEFTARROW", value: 84)
!114 = !DIEnumerator(name: "USER_CTRL_HID_RIGHTARROW", value: 85)
!115 = !DIEnumerator(name: "USER_CTRL_HID_VOL_UP", value: 86)
!116 = !DIEnumerator(name: "USER_CTRL_HID_VOL_DOWN", value: 87)
!117 = !DIEnumerator(name: "USER_CTRL_HID_SEND_DATA", value: 88)
!118 = !DIEnumerator(name: "USER_CTRL_HID_CMD_END", value: 89)
!119 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_BEGIN", value: 90)
!120 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN", value: 91)
!121 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN", value: 92)
!122 = !DIEnumerator(name: "USER_CTRL_MONITOR", value: 93)
!123 = !DIEnumerator(name: "USER_CTRL_TWS_CONNEC_VIA_ADDR", value: 94)
!124 = !DIEnumerator(name: "USER_CTRL_TWS_COTROL_CDM", value: 95)
!125 = !DIEnumerator(name: "USER_CTRL_TWS_CLEAR_INFO", value: 96)
!126 = !DIEnumerator(name: "USER_CTRL_TWS_DISCONNECTION_HCI", value: 97)
!127 = !DIEnumerator(name: "USER_CTRL_TWS_START_CONNECTION", value: 98)
!128 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM", value: 99)
!129 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_SBC_CDM", value: 100)
!130 = !DIEnumerator(name: "USER_CTRL_TWS_RESTART_SBC_CDM", value: 101)
!131 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_CANCEL", value: 102)
!132 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN_CANCEL", value: 103)
!133 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM_FUN", value: 104)
!134 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_START", value: 105)
!135 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_CLOSE", value: 106)
!136 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_END", value: 107)
!137 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_BEGIN", value: 108)
!138 = !DIEnumerator(name: "USER_CTRL_SPP_SEND_DATA", value: 109)
!139 = !DIEnumerator(name: "USER_CTRL_SPP_TRY_SEND_DATA", value: 110)
!140 = !DIEnumerator(name: "USER_CTRL_SPP_UPDATA_DATA", value: 111)
!141 = !DIEnumerator(name: "USER_CTRL_SPP_DISCONNECT", value: 112)
!142 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_END", value: 113)
!143 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_BEGIN", value: 114)
!144 = !DIEnumerator(name: "USER_CTRL_PBG_SEND_DATA", value: 115)
!145 = !DIEnumerator(name: "USER_CTRL_PBG_TRY_SEND_DATA", value: 116)
!146 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_END", value: 117)
!147 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_BEGIN", value: 118)
!148 = !DIEnumerator(name: "USER_CTRL_ADT_CONNECT", value: 119)
!149 = !DIEnumerator(name: "USER_CTRL_ADT_KEY_MIC_OPEN", value: 120)
!150 = !DIEnumerator(name: "USER_CTRL_ADT_SEND_DATA", value: 121)
!151 = !DIEnumerator(name: "USER_CTRL_ADT_TRY_SEND_DATA", value: 122)
!152 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_END", value: 123)
!153 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_BEGIN", value: 124)
!154 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_PART", value: 125)
!155 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_ALL", value: 126)
!156 = !DIEnumerator(name: "USER_CTRL_PBAP_STOP_READING", value: 127)
!157 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_END", value: 128)
!158 = !DIEnumerator(name: "USER_CTRL_DEL_ALL_REMOTE_INFO", value: 129)
!159 = !DIEnumerator(name: "USER_CTRL_TEST_KEY", value: 130)
!160 = !DIEnumerator(name: "USER_CTRL_SEND_USER_INFO", value: 131)
!161 = !DIEnumerator(name: "USER_CTRL_KEYPRESS", value: 132)
!162 = !DIEnumerator(name: "USER_CTRL_PAIR", value: 133)
!163 = !DIEnumerator(name: "USER_CTRL_AFH_CHANNEL", value: 134)
!164 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_CREATE", value: 135)
!165 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_DEL", value: 136)
!166 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_INC", value: 137)
!167 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_DEC", value: 138)
!168 = !DIEnumerator(name: "USER_CTRL_CMD_CHANGE_PROFILE_MODE", value: 139)
!169 = !DIEnumerator(name: "USER_CTRL_CMD_RESERVE_INDEX4", value: 140)
!170 = !DIEnumerator(name: "USER_CTRL_CMD_RESUME_STACK", value: 141)
!171 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_MUSIC_INFO", value: 142)
!172 = !DIEnumerator(name: "USER_CTRL_LAST", value: 143)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 299, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!175 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!176 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!177 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!178 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!179 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!180 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!181 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!182 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!183 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!184 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!185 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!186 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!187 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!188 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!189 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!190 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!191 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!192 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!193 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!194 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!195 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!196 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!197 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!198 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!199 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!200 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!201 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!202 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!203 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!204 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!205 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!206 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!207 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!208 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!209 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!210 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!211 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!212 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!213 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!214 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!215 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!216 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!217 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!218 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!219 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!220 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!221 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!222 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!223 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!224 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!225 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 631, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIEnumerator(name: "REMOTE_DEV_UNKNOWN", value: 0)
!229 = !DIEnumerator(name: "REMOTE_DEV_ANDROID", value: 1)
!230 = !DIEnumerator(name: "REMOTE_DEV_IOS", value: 2)
!231 = !DIEnumerator(name: "REMOTE_DEV_XIAOMI", value: 3)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 6, size: 32, elements: !234)
!233 = !DIFile(filename: "../btstack/Host/include/bredr/multi_bd.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!235 = !DIEnumerator(name: "MULTI_BD_SCO_REQ", value: 1)
!236 = !DIEnumerator(name: "MULTI_BD_SCO_CONNECTED", value: 2)
!237 = !DIEnumerator(name: "MULTI_BD_SCO_DISCONN", value: 3)
!238 = !DIEnumerator(name: "MULTI_BD_A2DP_ACTIVE", value: 4)
!239 = !DIEnumerator(name: "MULTI_BD_A2DP_STOP", value: 5)
!240 = !DIEnumerator(name: "MULTI_BD_CALL_INCOMING", value: 6)
!241 = !DIEnumerator(name: "MULTI_BD_CALL_OUTGOING", value: 7)
!242 = !DIEnumerator(name: "MULTI_BD_CALL_HANGUP", value: 8)
!243 = !DIEnumerator(name: "MULTI_BD_SET_WORK_TIME", value: 9)
!244 = !DIEnumerator(name: "MULTI_BD_CLR_WORK_TIME", value: 10)
!245 = !DIEnumerator(name: "MULTI_BD_SCAN_STATUS", value: 11)
!246 = !DIEnumerator(name: "MULTI_BD_SIRI_ACTIVE", value: 12)
!247 = !DIEnumerator(name: "MULTI_BD_SIRI_STOP", value: 13)
!248 = !DIEnumerator(name: "MULTI_BD_A2DP_CONN_CH", value: 14)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !250, line: 143, size: 32, elements: !251)
!250 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "SDP_CMD_CONNECT", value: 0)
!253 = !DIEnumerator(name: "SDP_CMD_DISCONNECT", value: 1)
!254 = !DIEnumerator(name: "SDP_CMD_GET_REMOTE_PNP_INFO", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 31, size: 32, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264}
!257 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!258 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!259 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!260 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!261 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!262 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!263 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!264 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 142, size: 32, elements: !267)
!266 = !DIFile(filename: "../btstack/Profile/include/bredr/hfp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!268 = !DIEnumerator(name: "HFP_CALL_ANSWER", value: 0)
!269 = !DIEnumerator(name: "HFP_CALL_HANGUP", value: 1)
!270 = !DIEnumerator(name: "HFP_CALL_LAST_NO", value: 2)
!271 = !DIEnumerator(name: "HFP_CALL_VOLUME_UP", value: 3)
!272 = !DIEnumerator(name: "HFP_CALL_VOLUME_DOWN", value: 4)
!273 = !DIEnumerator(name: "HFP_CALL_VOLUME_SET", value: 5)
!274 = !DIEnumerator(name: "HFP_CALL_CURRENT", value: 6)
!275 = !DIEnumerator(name: "HFP_GET_SIRI_STATUS", value: 7)
!276 = !DIEnumerator(name: "HFP_GET_SIRI_OPEN", value: 8)
!277 = !DIEnumerator(name: "HFP_GET_SIRI_CLOSE", value: 9)
!278 = !DIEnumerator(name: "HFP_GET_PHONE_DATE_TIME", value: 10)
!279 = !DIEnumerator(name: "HFP_CMD_GET_MANUFACTURER", value: 11)
!280 = !DIEnumerator(name: "HFP_CMD_GET_NUM_INFO", value: 12)
!281 = !DIEnumerator(name: "HFP_CMD_SEND_BIA", value: 13)
!282 = !DIEnumerator(name: "HFP_CMD_SEND_BCC", value: 14)
!283 = !DIEnumerator(name: "HFP_CMD_SIMPLE_CMD_TABLE_END", value: 15)
!284 = !DIEnumerator(name: "HFP_THREE_WAY_CALL", value: 16)
!285 = !DIEnumerator(name: "HFP_CMD_DTMF", value: 17)
!286 = !DIEnumerator(name: "HFP_CMD_DIAL", value: 18)
!287 = !DIEnumerator(name: "HFP_CMD_SPEAK_GAIN", value: 19)
!288 = !DIEnumerator(name: "HFP_CMD_CLEAR_SIRI_STATUS", value: 20)
!289 = !DIEnumerator(name: "HFP_CMD_UPDATE_BAT_NOW", value: 21)
!290 = !DIEnumerator(name: "HFP_CONNECT", value: 22)
!291 = !DIEnumerator(name: "HFP_DISCONNECT", value: 23)
!292 = !DIEnumerator(name: "HFP_AG_OUTGOING_CALL", value: 24)
!293 = !DIEnumerator(name: "HFP_SEND_USER_AT_CMD", value: 25)
!294 = !DIEnumerator(name: "HFP_NO_OPERATE", value: 255)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 124, size: 32, elements: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DIEnumerator(name: "HFP_GAIN_INC", value: 0)
!298 = !DIEnumerator(name: "HFP_GAIN_DEC", value: 1)
!299 = !DIEnumerator(name: "HFP_GAIN_SET_GAIN", value: 2)
!300 = !DIEnumerator(name: "HFP_GAIN_GET_GAIN", value: 3)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 132, size: 32, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309}
!303 = !DIEnumerator(name: "THREE_WAY_OP_0", value: 0)
!304 = !DIEnumerator(name: "THREE_WAY_OP_1", value: 1)
!305 = !DIEnumerator(name: "THREE_WAY_OP_1X", value: 2)
!306 = !DIEnumerator(name: "THREE_WAY_OP_2", value: 3)
!307 = !DIEnumerator(name: "THREE_WAY_OP_2X", value: 4)
!308 = !DIEnumerator(name: "THREE_WAY_OP_3", value: 5)
!309 = !DIEnumerator(name: "THREE_WAY_OP_4", value: 6)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !311, line: 11, size: 32, elements: !312)
!311 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!312 = !{!313, !314, !315}
!313 = !DIEnumerator(name: "ACTIVE_MODE", value: 0)
!314 = !DIEnumerator(name: "HOLD_MODE", value: 1)
!315 = !DIEnumerator(name: "SNIFF_MODE", value: 2)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 363, size: 32, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325}
!318 = !DIEnumerator(name: "BT_CALL_BATTERY_CHG", value: 0)
!319 = !DIEnumerator(name: "BT_CALL_SIGNAL_CHG", value: 1)
!320 = !DIEnumerator(name: "BT_CALL_INCOMING", value: 2)
!321 = !DIEnumerator(name: "BT_CALL_OUTGOING", value: 3)
!322 = !DIEnumerator(name: "BT_CALL_ACTIVE", value: 4)
!323 = !DIEnumerator(name: "BT_CALL_HANGUP", value: 5)
!324 = !DIEnumerator(name: "BT_CALL_ALERT", value: 6)
!325 = !DIEnumerator(name: "BT_CALL_VOL_CHANGED", value: 7)
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 70, size: 32, elements: !328)
!327 = !DIFile(filename: "../btstack/Profile/include/bredr/hid_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!329 = !DIEnumerator(name: "HID_CMD_ANDROID_SHUTTER", value: 1)
!330 = !DIEnumerator(name: "HID_CMD_IOS_SHUTTER", value: 2)
!331 = !DIEnumerator(name: "HID_CMD_BOTH_SHUTTER", value: 3)
!332 = !DIEnumerator(name: "HID_CMD_HOME_KEY", value: 4)
!333 = !DIEnumerator(name: "HID_CMD_RETURN_KEY", value: 5)
!334 = !DIEnumerator(name: "HID_CMD_LEFTARROW_KEY", value: 6)
!335 = !DIEnumerator(name: "HID_CMD_RIGHTARROW_KEY", value: 7)
!336 = !DIEnumerator(name: "HID_CMD_CONNECT", value: 8)
!337 = !DIEnumerator(name: "HID_CMD_DISCONNECT", value: 9)
!338 = !DIEnumerator(name: "HID_CMD_INCREASE_VOL", value: 10)
!339 = !DIEnumerator(name: "HID_CMD_DECREASE_VOL", value: 11)
!340 = !DIEnumerator(name: "HID_CMD_DIY_RESUME_SEND", value: 12)
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !342, line: 26, size: 32, elements: !343)
!342 = !DIFile(filename: "../btstack/Profile/include/bredr/iap_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!343 = !{!344, !345, !346}
!344 = !DIEnumerator(name: "IAP_CMD_CONNECT", value: 1)
!345 = !DIEnumerator(name: "IAP_CMD_DISCONNECT", value: 2)
!346 = !DIEnumerator(name: "IAP_CMD_SEND_DATA", value: 3)
!347 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !348, line: 26, size: 32, elements: !349)
!348 = !DIFile(filename: "../btstack/Profile/include/bredr/spp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!349 = !{!350, !351, !352}
!350 = !DIEnumerator(name: "SPP_CMD_CONNECT", value: 1)
!351 = !DIEnumerator(name: "SPP_CMD_DISCONNECT", value: 2)
!352 = !DIEnumerator(name: "SPP_CMD_SEND_DATA", value: 3)
!353 = !{!354, !355, !359, !360, !368, !380}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !357, line: 44, baseType: !358)
!357 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!358 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!359 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !362, line: 100, baseType: !363)
!362 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !362, line: 55, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !362, line: 53, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !362, line: 54, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "resend_t", file: !6, line: 74, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 70, size: 64, elements: !371)
!371 = !{!372, !373, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !370, file: !6, line: 71, baseType: !361, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !370, file: !6, line: 72, baseType: !374, size: 16, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !357, line: 46, baseType: !375)
!375 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !370, file: !6, line: 73, baseType: !377, offset: 48)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 0)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !357, line: 48, baseType: !381)
!381 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!382 = !{!0, !383, !389, !400, !546}
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "base_table", scope: !2, file: !3, line: 1288, type: !385, isLocal: false, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 192, elements: !387)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!387 = !{!388}
!388 = !DISubrange(count: 6)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "bt_suspend_user_cmd_loop_resumeuser_cmd_loop_release", scope: !2, file: !3, line: 3142, type: !391, isLocal: false, isDefinition: true)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !311, line: 313, size: 96, elements: !393)
!393 = !{!394, !398, !399}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !392, file: !311, line: 314, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!396 = !DISubroutineType(types: !397)
!397 = !{!359, null}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !392, file: !311, line: 315, baseType: !395, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !392, file: !311, line: 316, baseType: !395, size: 32, offset: 64)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "__user_info", scope: !2, file: !3, line: 127, type: !402, isLocal: true, isDefinition: true)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_info_t", file: !3, line: 125, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 106, size: 2304, elements: !404)
!404 = !{!405, !460, !471, !505, !513, !532, !533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_struct", scope: !403, file: !3, line: 107, baseType: !406, size: 992)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_cmd_ctrl", file: !3, line: 37, size: 992, elements: !407)
!407 = !{!408, !409, !410, !411, !415, !416, !417, !418, !419, !420, !424, !437, !441, !445, !446, !447, !451, !452, !453, !454, !455, !456, !457, !459}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pos_read", scope: !406, file: !3, line: 38, baseType: !356, size: 8)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pos_write", scope: !406, file: !3, line: 39, baseType: !356, size: 8, offset: 8)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "phone_num_len", scope: !406, file: !3, line: 40, baseType: !356, size: 8, offset: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "phone_num_buf", scope: !406, file: !3, line: 41, baseType: !412, size: 240, offset: 24)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 240, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 30)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "spp_send_buf_ptr", scope: !406, file: !3, line: 43, baseType: !355, size: 32, offset: 288)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "spp_send_buf_len", scope: !406, file: !3, line: 44, baseType: !374, size: 16, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "phone_hfp_set_vol", scope: !406, file: !3, line: 56, baseType: !356, size: 8, offset: 336)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dtmf_num", scope: !406, file: !3, line: 57, baseType: !356, size: 8, offset: 344)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_num_time", scope: !406, file: !3, line: 58, baseType: !356, size: 8, offset: 352)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_num", scope: !406, file: !3, line: 59, baseType: !421, size: 8, offset: 360)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 8, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 1)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_ctrl_config", scope: !406, file: !3, line: 60, baseType: !425, size: 112, offset: 368)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 112, elements: !422)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sniff_ctrl_config_t", file: !22, line: 399, size: 112, elements: !427)
!427 = !{!428, !431, !432, !433, !434}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_max_interval", scope: !426, file: !22, line: 400, baseType: !429, size: 16)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !430, line: 13, baseType: !375)
!430 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_mix_interval", scope: !426, file: !22, line: 401, baseType: !429, size: 16, offset: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_attemp", scope: !426, file: !22, line: 402, baseType: !429, size: 16, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_timeout", scope: !426, file: !22, line: 403, baseType: !429, size: 16, offset: 48)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_addr", scope: !426, file: !22, line: 404, baseType: !435, size: 48, offset: 64)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 48, elements: !387)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !430, line: 11, baseType: !358)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "user_cmd_buf", scope: !406, file: !3, line: 62, baseType: !438, size: 128, offset: 480)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 128, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "emitter_cmd_buf", scope: !406, file: !3, line: 63, baseType: !442, size: 80, offset: 608)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 80, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 10)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "emitter_pos_read", scope: !406, file: !3, line: 64, baseType: !356, size: 8, offset: 688)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "emitter_pos_write", scope: !406, file: !3, line: 65, baseType: !356, size: 8, offset: 696)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "unactive_cmd_buf", scope: !406, file: !3, line: 66, baseType: !448, size: 40, offset: 704)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 40, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 5)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "unactive_pos_read", scope: !406, file: !3, line: 67, baseType: !356, size: 8, offset: 744)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "unactive_pos_write", scope: !406, file: !3, line: 68, baseType: !356, size: 8, offset: 752)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "keypress", scope: !406, file: !3, line: 69, baseType: !356, size: 8, offset: 760)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !406, file: !3, line: 70, baseType: !356, size: 8, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "afh_channel", scope: !406, file: !3, line: 71, baseType: !442, size: 80, offset: 776)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !406, file: !3, line: 72, baseType: !380, size: 32, offset: 864)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "second_a2dp_source_addr", scope: !406, file: !3, line: 73, baseType: !458, size: 48, offset: 896)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 48, elements: !387)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hci_disconn_addr", scope: !406, file: !3, line: 74, baseType: !458, size: 48, offset: 944)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !403, file: !3, line: 108, baseType: !461, size: 96, offset: 992)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "run_loop", file: !462, line: 9, size: 96, elements: !463)
!462 = !DIFile(filename: "../btcommon/run_loop.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!463 = !{!464, !465, !470}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !461, file: !462, line: 10, baseType: !363, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !461, file: !462, line: 11, baseType: !466, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 32)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !461, file: !462, line: 12, baseType: !354, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "bt_conn", scope: !403, file: !3, line: 109, baseType: !472, size: 192, offset: 1088)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 192, elements: !422)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_info", file: !3, line: 79, size: 192, elements: !474)
!474 = !{!475, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mac_addr", scope: !473, file: !3, line: 80, baseType: !476, size: 48)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !477, line: 66, baseType: !478)
!477 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 48, elements: !387)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !357, line: 44, baseType: !358)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hci_connect_handle", scope: !473, file: !3, line: 81, baseType: !374, size: 16, offset: 48)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "curr_channel", scope: !473, file: !3, line: 82, baseType: !374, size: 16, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "remote_not_support_channel", scope: !473, file: !3, line: 83, baseType: !356, size: 8, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "connect_status", scope: !473, file: !3, line: 84, baseType: !356, size: 8, offset: 88)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_status", scope: !473, file: !3, line: 85, baseType: !356, size: 4, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bt_hfp_flag", scope: !473, file: !3, line: 86, baseType: !356, size: 4, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "second_call_status", scope: !473, file: !3, line: 87, baseType: !356, size: 4, offset: 104, flags: DIFlagBitField, extraData: i64 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_status", scope: !473, file: !3, line: 88, baseType: !356, size: 4, offset: 108, flags: DIFlagBitField, extraData: i64 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_ctrl_status", scope: !473, file: !3, line: 89, baseType: !356, size: 4, offset: 112, flags: DIFlagBitField, extraData: i64 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "connect_a2dp_cnt", scope: !473, file: !3, line: 90, baseType: !356, size: 4, offset: 116, flags: DIFlagBitField, extraData: i64 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "one_call_onheld", scope: !473, file: !3, line: 91, baseType: !356, size: 2, offset: 120, flags: DIFlagBitField, extraData: i64 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reserve2", scope: !473, file: !3, line: 92, baseType: !356, size: 3, offset: 122, flags: DIFlagBitField, extraData: i64 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !473, file: !3, line: 93, baseType: !356, size: 1, offset: 125, flags: DIFlagBitField, extraData: i64 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_decoder_status", scope: !473, file: !3, line: 94, baseType: !356, size: 1, offset: 126, flags: DIFlagBitField, extraData: i64 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "inband_ringtone", scope: !473, file: !3, line: 95, baseType: !356, size: 1, offset: 127, flags: DIFlagBitField, extraData: i64 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "auto_connect_a2dp", scope: !473, file: !3, line: 96, baseType: !356, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !473, file: !3, line: 97, baseType: !356, size: 2, offset: 129, flags: DIFlagBitField, extraData: i64 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "avdtp_a2dp_connect_state", scope: !473, file: !3, line: 98, baseType: !356, size: 2, offset: 131, flags: DIFlagBitField, extraData: i64 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hid_disconn_state", scope: !473, file: !3, line: 99, baseType: !356, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "role_type", scope: !473, file: !3, line: 100, baseType: !356, size: 1, offset: 134, flags: DIFlagBitField, extraData: i64 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !473, file: !3, line: 101, baseType: !356, size: 1, offset: 135, flags: DIFlagBitField, extraData: i64 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sniff_cnt", scope: !473, file: !3, line: 102, baseType: !356, size: 8, offset: 136)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "user_at_cmd_item", scope: !473, file: !3, line: 103, baseType: !503, size: 32, offset: 160)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !362, line: 101, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "user_core_data", scope: !403, file: !3, line: 110, baseType: !506, size: 152, offset: 1280)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_core_data_t", file: !3, line: 32, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 27, size: 152, elements: !508)
!508 = !{!509, !510, !511, !512}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "phone_sound_ctrl_flag", scope: !507, file: !3, line: 28, baseType: !356, size: 8)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "last_bd_addr", scope: !507, file: !3, line: 29, baseType: !476, size: 48, offset: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name_bd_addr", scope: !507, file: !3, line: 30, baseType: !476, size: 48, offset: 56)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "special_conn_addr", scope: !507, file: !3, line: 31, baseType: !476, size: 48, offset: 104)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "user_half_sec_loop", scope: !403, file: !3, line: 111, baseType: !514, size: 160, offset: 1440)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !515, line: 19, baseType: !516)
!515 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !515, line: 7, size: 160, elements: !517)
!517 = !{!518, !519, !521, !522, !523, !524, !525, !526, !531}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !516, file: !515, line: 8, baseType: !363, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !516, file: !515, line: 10, baseType: !520, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !357, line: 48, baseType: !381)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !516, file: !515, line: 11, baseType: !520, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !516, file: !515, line: 12, baseType: !520, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !516, file: !515, line: 13, baseType: !520, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !516, file: !515, line: 14, baseType: !520, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !516, file: !515, line: 15, baseType: !520, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !516, file: !515, line: 17, baseType: !527, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 32)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !516, file: !515, line: 18, baseType: !354, size: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "active_mac_addr", scope: !403, file: !3, line: 112, baseType: !476, size: 48, offset: 1600)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "more_mac_addr", scope: !403, file: !3, line: 113, baseType: !534, size: 480, offset: 1648)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 480, elements: !443)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "emitter_last_bd_addr", scope: !403, file: !3, line: 114, baseType: !476, size: 48, offset: 2128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "bt_newest_status", scope: !403, file: !3, line: 115, baseType: !356, size: 8, offset: 2176)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tws_host_timer_cnt", scope: !403, file: !3, line: 116, baseType: !356, size: 8, offset: 2184)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "total_connect_dev", scope: !403, file: !3, line: 117, baseType: !356, size: 3, offset: 2192, flags: DIFlagBitField, extraData: i64 2192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "current_search_index", scope: !403, file: !3, line: 118, baseType: !356, size: 3, offset: 2195, flags: DIFlagBitField, extraData: i64 2192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "stack_release", scope: !403, file: !3, line: 119, baseType: !356, size: 1, offset: 2198, flags: DIFlagBitField, extraData: i64 2192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "stack_exiting", scope: !403, file: !3, line: 120, baseType: !356, size: 1, offset: 2199, flags: DIFlagBitField, extraData: i64 2192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "in_background_flag", scope: !403, file: !3, line: 121, baseType: !356, size: 1, offset: 2200, flags: DIFlagBitField, extraData: i64 2192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "conning_mac_addr", scope: !403, file: !3, line: 122, baseType: !476, size: 48, offset: 2208)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "keypress_cnt", scope: !403, file: !3, line: 123, baseType: !356, size: 8, offset: 2256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "keypress", scope: !403, file: !3, line: 124, baseType: !380, size: 32, offset: 2272)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "g_user_cmd", scope: !2, file: !3, line: 76, type: !548, isLocal: true, isDefinition: true)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 32)
!549 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!550 = !{i32 2, !"Dwarf Version", i32 4}
!551 = !{i32 2, !"Debug Info Version", i32 3}
!552 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!553 = distinct !DISubprogram(name: "set_stack_exiting", scope: !3, file: !3, line: 141, type: !554, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !356}
!556 = !{!557}
!557 = !DILocalVariable(name: "exit", arg: 1, scope: !553, file: !3, line: 141, type: !356)
!558 = !DILocation(line: 141, column: 27, scope: !553)
!559 = !DILocation(line: 143, column: 30, scope: !553)
!560 = !DILocation(line: 144, column: 1, scope: !553)
!561 = distinct !DISubprogram(name: "phone_sound_ctrl_flag_detect", scope: !3, file: !3, line: 205, type: !562, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!356}
!564 = !{}
!565 = !DILocation(line: 207, column: 36, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 207, column: 9)
!567 = !{!568, !570, i64 160}
!568 = !{!"", !569, i64 0, !575, i64 124, !570, i64 136, !577, i64 160, !578, i64 180, !570, i64 200, !570, i64 206, !570, i64 266, !570, i64 272, !570, i64 273, !570, i64 274, !570, i64 274, !570, i64 274, !570, i64 274, !570, i64 275, !570, i64 276, !570, i64 282, !574, i64 284}
!569 = !{!"user_cmd_ctrl", !570, i64 0, !570, i64 1, !570, i64 2, !570, i64 3, !572, i64 36, !573, i64 40, !570, i64 42, !570, i64 43, !570, i64 44, !570, i64 45, !570, i64 46, !570, i64 60, !570, i64 76, !570, i64 86, !570, i64 87, !570, i64 88, !570, i64 93, !570, i64 94, !570, i64 95, !570, i64 96, !570, i64 97, !574, i64 108, !570, i64 112, !570, i64 118}
!570 = !{!"omnipotent char", !571, i64 0}
!571 = !{!"Simple C/C++ TBAA"}
!572 = !{!"any pointer", !570, i64 0}
!573 = !{!"short", !570, i64 0}
!574 = !{!"int", !570, i64 0}
!575 = !{!"run_loop", !576, i64 0, !572, i64 4, !572, i64 8}
!576 = !{!"btstack_linked_item", !572, i64 0}
!577 = !{!"", !570, i64 0, !570, i64 1, !570, i64 7, !570, i64 13}
!578 = !{!"btstack_timer_source", !576, i64 0, !574, i64 4, !574, i64 8, !574, i64 10, !574, i64 10, !574, i64 10, !574, i64 10, !572, i64 12, !572, i64 16}
!579 = !DILocation(line: 207, column: 63, scope: !566)
!580 = !DILocation(line: 208, column: 56, scope: !581)
!581 = distinct !DILexicalBlock(scope: !566, file: !3, line: 207, column: 121)
!582 = !DILocation(line: 209, column: 9, scope: !581)
!583 = !DILocation(line: 213, column: 1, scope: !561)
!584 = distinct !DISubprogram(name: "tws_host_timer_cnt_detect", scope: !3, file: !3, line: 215, type: !562, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!585 = !DILocation(line: 217, column: 20, scope: !586)
!586 = distinct !DILexicalBlock(scope: !584, file: !3, line: 217, column: 9)
!587 = !{!568, !570, i64 273}
!588 = !DILocation(line: 217, column: 39, scope: !586)
!589 = !DILocation(line: 217, column: 9, scope: !584)
!590 = !DILocation(line: 218, column: 38, scope: !591)
!591 = distinct !DILexicalBlock(scope: !586, file: !3, line: 217, column: 44)
!592 = !DILocation(line: 219, column: 9, scope: !591)
!593 = !DILocation(line: 223, column: 1, scope: !584)
!594 = distinct !DISubprogram(name: "b_create_bt_new_conn", scope: !3, file: !3, line: 316, type: !595, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !598)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !355, !374}
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !357, line: 44, baseType: !358)
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "addr", arg: 1, scope: !594, file: !3, line: 316, type: !355)
!600 = !DILocalVariable(name: "hci_handle", arg: 2, scope: !594, file: !3, line: 316, type: !374)
!601 = !DILocation(line: 316, column: 31, scope: !594)
!602 = !DILocation(line: 316, column: 41, scope: !594)
!603 = !DILocation(line: 318, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !594, file: !3, line: 318, column: 9)
!605 = !DILocation(line: 321, column: 5, scope: !594)
!606 = !DILocation(line: 322, column: 1, scope: !594)
!607 = distinct !DISubprogram(name: "create_bt_new_conn", scope: !3, file: !3, line: 284, type: !608, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !613)
!608 = !DISubroutineType(types: !609)
!609 = !{!610, !612, !374}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_info_t", file: !3, line: 104, baseType: !473)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 32)
!613 = !{!614, !615, !616}
!614 = !DILocalVariable(name: "addr", arg: 1, scope: !607, file: !3, line: 284, type: !612)
!615 = !DILocalVariable(name: "hci_handle", arg: 2, scope: !607, file: !3, line: 284, type: !374)
!616 = !DILocalVariable(name: "conn", scope: !607, file: !3, line: 286, type: !610)
!617 = !DILocation(line: 284, column: 50, scope: !607)
!618 = !DILocation(line: 284, column: 60, scope: !607)
!619 = !DILocation(line: 287, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !607, file: !3, line: 287, column: 5)
!621 = !{!570, !570, i64 0}
!622 = !DILocation(line: 287, column: 5, scope: !607)
!623 = !DILocation(line: 287, column: 5, scope: !624)
!624 = !DILexicalBlockFile(scope: !620, file: !3, discriminator: 1)
!625 = !DILocation(line: 288, column: 5, scope: !626)
!626 = distinct !DILexicalBlock(scope: !607, file: !3, line: 288, column: 5)
!627 = !DILocation(line: 288, column: 5, scope: !607)
!628 = !DILocation(line: 288, column: 5, scope: !629)
!629 = !DILexicalBlockFile(scope: !626, file: !3, discriminator: 1)
!630 = !DILocation(line: 289, column: 12, scope: !607)
!631 = !DILocation(line: 286, column: 18, scope: !607)
!632 = !DILocation(line: 290, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !607, file: !3, line: 290, column: 9)
!634 = !DILocation(line: 290, column: 9, scope: !607)
!635 = !DILocation(line: 296, column: 20, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 296, column: 13)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 295, column: 33)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 295, column: 5)
!639 = distinct !DILexicalBlock(scope: !607, file: !3, line: 295, column: 5)
!640 = !DILocation(line: 292, column: 15, scope: !641)
!641 = distinct !DILexicalBlock(scope: !633, file: !3, line: 290, column: 15)
!642 = !DILocation(line: 292, column: 34, scope: !641)
!643 = !{!644, !573, i64 6}
!644 = !{!"conn_info", !570, i64 0, !573, i64 6, !573, i64 8, !570, i64 10, !570, i64 11, !570, i64 12, !570, i64 12, !570, i64 13, !570, i64 13, !570, i64 14, !570, i64 14, !570, i64 15, !570, i64 15, !570, i64 15, !570, i64 15, !570, i64 15, !570, i64 16, !570, i64 16, !570, i64 16, !570, i64 16, !570, i64 16, !570, i64 16, !570, i64 17, !572, i64 20}
!645 = !DILocation(line: 293, column: 9, scope: !641)
!646 = !DILocation(line: 296, column: 14, scope: !636)
!647 = !DILocation(line: 296, column: 13, scope: !637)
!648 = !DILocation(line: 297, column: 26, scope: !649)
!649 = distinct !DILexicalBlock(scope: !636, file: !3, line: 296, column: 28)
!650 = !DILocation(line: 298, column: 41, scope: !649)
!651 = !DILocation(line: 299, column: 30, scope: !649)
!652 = !DILocation(line: 301, column: 37, scope: !649)
!653 = !DILocation(line: 302, column: 13, scope: !649)
!654 = !DILocation(line: 303, column: 19, scope: !649)
!655 = !DILocation(line: 303, column: 46, scope: !649)
!656 = !{!644, !570, i64 10}
!657 = !DILocation(line: 304, column: 19, scope: !649)
!658 = !DILocation(line: 304, column: 38, scope: !649)
!659 = !DILocation(line: 307, column: 29, scope: !649)
!660 = !DILocation(line: 308, column: 13, scope: !649)
!661 = !{!572, !572, i64 0}
!662 = !DILocation(line: 308, column: 33, scope: !649)
!663 = !DILocation(line: 308, column: 53, scope: !649)
!664 = !DILocation(line: 310, column: 13, scope: !649)
!665 = !DILocation(line: 295, column: 5, scope: !666)
!666 = !DILexicalBlockFile(scope: !638, file: !3, discriminator: 2)
!667 = !DILocation(line: 295, column: 5, scope: !668)
!668 = !DILexicalBlockFile(scope: !638, file: !3, discriminator: 1)
!669 = !DILocation(line: 295, column: 5, scope: !670)
!670 = !DILexicalBlockFile(scope: !639, file: !3, discriminator: 1)
!671 = distinct !{!671, !672, !673}
!672 = !DILocation(line: 295, column: 5, scope: !639)
!673 = !DILocation(line: 312, column: 5, scope: !639)
!674 = !DILocation(line: 314, column: 1, scope: !607)
!675 = distinct !DISubprogram(name: "free_conn_for_addr", scope: !3, file: !3, line: 328, type: !676, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{!597, !612, !356}
!678 = !{!679, !680, !681}
!679 = !DILocalVariable(name: "addr", arg: 1, scope: !675, file: !3, line: 328, type: !612)
!680 = !DILocalVariable(name: "conn_res", arg: 2, scope: !675, file: !3, line: 328, type: !356)
!681 = !DILocalVariable(name: "conn", scope: !675, file: !3, line: 330, type: !610)
!682 = !DILocation(line: 328, column: 35, scope: !675)
!683 = !DILocation(line: 328, column: 44, scope: !675)
!684 = !DILocation(line: 330, column: 25, scope: !675)
!685 = !DILocation(line: 330, column: 18, scope: !675)
!686 = !DILocation(line: 333, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !675, file: !3, line: 333, column: 9)
!688 = !DILocation(line: 334, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 334, column: 13)
!690 = distinct !DILexicalBlock(scope: !687, file: !3, line: 333, column: 19)
!691 = !DILocation(line: 333, column: 9, scope: !675)
!692 = !DILocation(line: 335, column: 23, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 335, column: 17)
!694 = distinct !DILexicalBlock(scope: !689, file: !3, line: 334, column: 19)
!695 = !DILocation(line: 335, column: 33, scope: !693)
!696 = !DILocation(line: 335, column: 17, scope: !694)
!697 = !DILocation(line: 336, column: 17, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !3, line: 335, column: 50)
!699 = !DILocation(line: 337, column: 13, scope: !698)
!700 = !DILocation(line: 338, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !693, file: !3, line: 337, column: 20)
!702 = !DILocation(line: 343, column: 9, scope: !675)
!703 = !DILocation(line: 345, column: 15, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 343, column: 15)
!705 = distinct !DILexicalBlock(scope: !675, file: !3, line: 343, column: 9)
!706 = !DILocation(line: 345, column: 22, scope: !704)
!707 = !DILocation(line: 346, column: 37, scope: !704)
!708 = !DILocation(line: 350, column: 9, scope: !704)
!709 = !DILocation(line: 351, column: 5, scope: !704)
!710 = !DILocation(line: 354, column: 19, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 354, column: 13)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 352, column: 33)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 352, column: 5)
!714 = distinct !DILexicalBlock(scope: !675, file: !3, line: 352, column: 5)
!715 = !DILocation(line: 354, column: 13, scope: !711)
!716 = !DILocation(line: 354, column: 13, scope: !712)
!717 = !DILocation(line: 356, column: 13, scope: !718)
!718 = distinct !DILexicalBlock(scope: !711, file: !3, line: 354, column: 27)
!719 = !DILocation(line: 357, column: 13, scope: !718)
!720 = !DILocation(line: 352, column: 5, scope: !721)
!721 = !DILexicalBlockFile(scope: !713, file: !3, discriminator: 2)
!722 = !DILocation(line: 352, column: 5, scope: !723)
!723 = !DILexicalBlockFile(scope: !713, file: !3, discriminator: 1)
!724 = !DILocation(line: 352, column: 5, scope: !725)
!725 = !DILexicalBlockFile(scope: !714, file: !3, discriminator: 1)
!726 = distinct !{!726, !727, !728}
!727 = !DILocation(line: 352, column: 5, scope: !714)
!728 = !DILocation(line: 359, column: 5, scope: !714)
!729 = !DILocation(line: 363, column: 1, scope: !675)
!730 = distinct !DISubprogram(name: "get_conn_for_addr", scope: !3, file: !3, line: 246, type: !731, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!610, !612}
!733 = !{!734, !735}
!734 = !DILocalVariable(name: "addr", arg: 1, scope: !730, file: !3, line: 246, type: !612)
!735 = !DILocalVariable(name: "conn", scope: !730, file: !3, line: 248, type: !610)
!736 = !DILocation(line: 246, column: 49, scope: !730)
!737 = !DILocation(line: 248, column: 18, scope: !730)
!738 = !DILocation(line: 249, column: 5, scope: !739)
!739 = !DILexicalBlockFile(scope: !740, file: !3, discriminator: 1)
!740 = distinct !DILexicalBlock(scope: !730, file: !3, line: 249, column: 5)
!741 = !DILocation(line: 250, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 250, column: 13)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 249, column: 33)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 249, column: 5)
!745 = !DILocation(line: 251, column: 13, scope: !742)
!746 = !DILocation(line: 251, column: 22, scope: !747)
!747 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 1)
!748 = !DILocation(line: 251, column: 16, scope: !747)
!749 = !DILocation(line: 250, column: 13, scope: !750)
!750 = !DILexicalBlockFile(scope: !743, file: !3, discriminator: 1)
!751 = !DILocation(line: 249, column: 5, scope: !752)
!752 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 2)
!753 = !DILocation(line: 249, column: 5, scope: !754)
!754 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!755 = distinct !{!755, !756, !757}
!756 = !DILocation(line: 249, column: 5, scope: !740)
!757 = !DILocation(line: 254, column: 5, scope: !740)
!758 = !DILocation(line: 256, column: 1, scope: !730)
!759 = distinct !DISubprogram(name: "get_bt_current_conn", scope: !3, file: !3, line: 364, type: !760, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!610, !356}
!762 = !{!763, !764, !765, !766}
!763 = !DILocalVariable(name: "device_type", arg: 1, scope: !759, file: !3, line: 364, type: !356)
!764 = !DILocalVariable(name: "receiver_number", scope: !759, file: !3, line: 366, type: !359)
!765 = !DILocalVariable(name: "conn", scope: !759, file: !3, line: 367, type: !610)
!766 = !DILocalVariable(name: "temp_conn", scope: !759, file: !3, line: 368, type: !610)
!767 = !DILocation(line: 364, column: 37, scope: !759)
!768 = !DILocation(line: 366, column: 9, scope: !759)
!769 = !DILocation(line: 368, column: 18, scope: !759)
!770 = !DILocation(line: 369, column: 9, scope: !759)
!771 = !DILocation(line: 384, column: 24, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 384, column: 17)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 383, column: 37)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 383, column: 9)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 383, column: 9)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 382, column: 46)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 382, column: 16)
!778 = distinct !DILexicalBlock(scope: !759, file: !3, line: 369, column: 9)
!779 = !DILocation(line: 372, column: 24, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 372, column: 17)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 371, column: 37)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 371, column: 9)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 371, column: 9)
!784 = distinct !DILexicalBlock(scope: !778, file: !3, line: 369, column: 38)
!785 = !DILocation(line: 372, column: 17, scope: !780)
!786 = !DILocation(line: 372, column: 32, scope: !780)
!787 = !DILocation(line: 372, column: 42, scope: !788)
!788 = !DILexicalBlockFile(scope: !780, file: !3, discriminator: 1)
!789 = !DILocation(line: 372, column: 61, scope: !788)
!790 = !DILocation(line: 372, column: 17, scope: !791)
!791 = !DILexicalBlockFile(scope: !781, file: !3, discriminator: 1)
!792 = !DILocation(line: 373, column: 27, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 373, column: 21)
!794 = distinct !DILexicalBlock(scope: !780, file: !3, line: 372, column: 68)
!795 = !{!644, !573, i64 8}
!796 = !DILocation(line: 373, column: 40, scope: !793)
!797 = !DILocation(line: 373, column: 21, scope: !794)
!798 = !DILocation(line: 371, column: 9, scope: !799)
!799 = !DILexicalBlockFile(scope: !782, file: !3, discriminator: 2)
!800 = !DILocation(line: 367, column: 18, scope: !759)
!801 = !DILocation(line: 371, column: 9, scope: !802)
!802 = !DILexicalBlockFile(scope: !782, file: !3, discriminator: 1)
!803 = !DILocation(line: 371, column: 9, scope: !804)
!804 = !DILexicalBlockFile(scope: !783, file: !3, discriminator: 1)
!805 = distinct !{!805, !806, !807}
!806 = !DILocation(line: 371, column: 9, scope: !783)
!807 = !DILocation(line: 378, column: 9, scope: !783)
!808 = !DILocation(line: 384, column: 17, scope: !772)
!809 = !DILocation(line: 384, column: 32, scope: !772)
!810 = !DILocation(line: 384, column: 42, scope: !811)
!811 = !DILexicalBlockFile(scope: !772, file: !3, discriminator: 1)
!812 = !DILocation(line: 384, column: 61, scope: !811)
!813 = !DILocation(line: 384, column: 17, scope: !814)
!814 = !DILexicalBlockFile(scope: !773, file: !3, discriminator: 1)
!815 = !DILocation(line: 385, column: 27, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 385, column: 21)
!817 = distinct !DILexicalBlock(scope: !772, file: !3, line: 384, column: 68)
!818 = !DILocation(line: 385, column: 40, scope: !816)
!819 = !DILocation(line: 385, column: 21, scope: !817)
!820 = !DILocation(line: 383, column: 9, scope: !821)
!821 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 2)
!822 = !DILocation(line: 383, column: 9, scope: !823)
!823 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 1)
!824 = !DILocation(line: 383, column: 9, scope: !825)
!825 = !DILexicalBlockFile(scope: !775, file: !3, discriminator: 1)
!826 = distinct !{!826, !827, !828}
!827 = !DILocation(line: 383, column: 9, scope: !775)
!828 = !DILocation(line: 392, column: 9, scope: !775)
!829 = !DILocation(line: 393, column: 13, scope: !776)
!830 = !DILocation(line: 396, column: 13, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 395, column: 42)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 395, column: 20)
!833 = distinct !DILexicalBlock(scope: !776, file: !3, line: 393, column: 13)
!834 = !DILocation(line: 407, column: 12, scope: !759)
!835 = !DILocation(line: 407, column: 5, scope: !759)
!836 = !DILocation(line: 408, column: 1, scope: !759)
!837 = distinct !DISubprogram(name: "is_bt_conn_hfp_hangup", scope: !3, file: !3, line: 409, type: !838, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{!436, !355}
!840 = !{!841, !842}
!841 = !DILocalVariable(name: "addr", arg: 1, scope: !837, file: !3, line: 409, type: !355)
!842 = !DILocalVariable(name: "conn", scope: !837, file: !3, line: 411, type: !610)
!843 = !DILocation(line: 409, column: 30, scope: !837)
!844 = !DILocation(line: 411, column: 18, scope: !837)
!845 = !DILocation(line: 412, column: 5, scope: !846)
!846 = !DILexicalBlockFile(scope: !847, file: !3, discriminator: 1)
!847 = distinct !DILexicalBlock(scope: !837, file: !3, line: 412, column: 5)
!848 = !DILocation(line: 413, column: 14, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 413, column: 13)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 412, column: 33)
!851 = distinct !DILexicalBlock(scope: !847, file: !3, line: 412, column: 5)
!852 = !DILocation(line: 414, column: 13, scope: !849)
!853 = !DILocation(line: 414, column: 23, scope: !854)
!854 = !DILexicalBlockFile(scope: !849, file: !3, discriminator: 1)
!855 = !DILocation(line: 414, column: 16, scope: !854)
!856 = !DILocation(line: 414, column: 31, scope: !854)
!857 = !DILocation(line: 414, column: 41, scope: !858)
!858 = !DILexicalBlockFile(scope: !849, file: !3, discriminator: 2)
!859 = !DILocation(line: 414, column: 60, scope: !858)
!860 = !DILocation(line: 415, column: 34, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 415, column: 17)
!862 = distinct !DILexicalBlock(scope: !849, file: !3, line: 414, column: 67)
!863 = !DILocation(line: 413, column: 13, scope: !864)
!864 = !DILexicalBlockFile(scope: !850, file: !3, discriminator: 1)
!865 = !DILocation(line: 412, column: 5, scope: !866)
!866 = !DILexicalBlockFile(scope: !851, file: !3, discriminator: 2)
!867 = !DILocation(line: 412, column: 5, scope: !868)
!868 = !DILexicalBlockFile(scope: !851, file: !3, discriminator: 1)
!869 = distinct !{!869, !870, !871}
!870 = !DILocation(line: 412, column: 5, scope: !847)
!871 = !DILocation(line: 419, column: 5, scope: !847)
!872 = !DILocation(line: 421, column: 1, scope: !837)
!873 = distinct !DISubprogram(name: "btstack_avrcp_ch_creat_ok", scope: !3, file: !3, line: 425, type: !874, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!874 = !DISubroutineType(types: !875)
!875 = !{null}
!876 = !DILocation(line: 427, column: 5, scope: !873)
!877 = distinct !DISubprogram(name: "updata_profile_channels_status", scope: !3, file: !3, line: 433, type: !878, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !355, !359, !359, !356}
!880 = !{!881, !882, !883, !884, !885}
!881 = !DILocalVariable(name: "addr", arg: 1, scope: !877, file: !3, line: 433, type: !355)
!882 = !DILocalVariable(name: "state", arg: 2, scope: !877, file: !3, line: 433, type: !359)
!883 = !DILocalVariable(name: "channel", arg: 3, scope: !877, file: !3, line: 433, type: !359)
!884 = !DILocalVariable(name: "conn_type", arg: 4, scope: !877, file: !3, line: 433, type: !356)
!885 = !DILocalVariable(name: "conn", scope: !877, file: !3, line: 435, type: !610)
!886 = !DILocation(line: 433, column: 41, scope: !877)
!887 = !DILocation(line: 433, column: 51, scope: !877)
!888 = !DILocation(line: 433, column: 62, scope: !877)
!889 = !DILocation(line: 433, column: 74, scope: !877)
!890 = !DILocation(line: 435, column: 25, scope: !877)
!891 = !DILocation(line: 435, column: 18, scope: !877)
!892 = !DILocation(line: 436, column: 14, scope: !893)
!893 = distinct !DILexicalBlock(scope: !877, file: !3, line: 436, column: 9)
!894 = !DILocation(line: 436, column: 9, scope: !877)
!895 = !DILocation(line: 440, column: 5, scope: !877)
!896 = !DILocation(line: 442, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 442, column: 9)
!898 = distinct !DILexicalBlock(scope: !877, file: !3, line: 440, column: 20)
!899 = !DILocation(line: 442, column: 9, scope: !898)
!900 = !DILocation(line: 442, column: 9, scope: !901)
!901 = !DILexicalBlockFile(scope: !897, file: !3, discriminator: 1)
!902 = !DILocation(line: 443, column: 15, scope: !898)
!903 = !DILocation(line: 443, column: 42, scope: !898)
!904 = !DILocation(line: 444, column: 9, scope: !898)
!905 = !DILocation(line: 446, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !898, file: !3, line: 446, column: 13)
!907 = !DILocation(line: 446, column: 34, scope: !906)
!908 = !{!909, !573, i64 12}
!909 = !{!"_stack_config", !574, i64 0, !573, i64 4, !573, i64 6, !573, i64 8, !573, i64 10, !573, i64 12, !570, i64 14, !570, i64 15, !570, i64 16, !570, i64 17, !570, i64 17, !570, i64 17, !570, i64 17, !570, i64 18, !570, i64 18, !570, i64 18, !570, i64 18, !570, i64 18, !570, i64 18, !570, i64 18, !570, i64 18, !570, i64 19, !570, i64 19, !570, i64 19, !570, i64 19, !570, i64 19, !570, i64 19, !570, i64 19, !570, i64 19, !570, i64 20, !570, i64 20, !570, i64 20, !570, i64 21, !570, i64 22, !570, i64 23, !570, i64 24, !570, i64 25, !570, i64 31, !570, i64 31}
!910 = !DILocation(line: 447, column: 13, scope: !906)
!911 = !DILocation(line: 449, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 449, column: 13)
!913 = distinct !DILexicalBlock(scope: !906, file: !3, line: 447, column: 86)
!914 = !DILocation(line: 449, column: 13, scope: !913)
!915 = !DILocation(line: 449, column: 13, scope: !916)
!916 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 1)
!917 = !DILocation(line: 450, column: 25, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 450, column: 17)
!919 = !DILocation(line: 450, column: 17, scope: !913)
!920 = !DILocation(line: 451, column: 23, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 450, column: 54)
!922 = !DILocation(line: 451, column: 33, scope: !921)
!923 = !DILocation(line: 452, column: 13, scope: !921)
!924 = !DILocation(line: 454, column: 19, scope: !925)
!925 = distinct !DILexicalBlock(scope: !898, file: !3, line: 454, column: 13)
!926 = !DILocation(line: 454, column: 32, scope: !925)
!927 = !DILocation(line: 454, column: 13, scope: !898)
!928 = !DILocation(line: 2776, column: 35, scope: !929, inlinedAt: !930)
!929 = distinct !DISubprogram(name: "tws_host_timeout_set", scope: !3, file: !3, line: 2774, type: !874, isLocal: false, isDefinition: true, scopeLine: 2775, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!930 = distinct !DILocation(line: 456, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !925, file: !3, line: 454, column: 38)
!932 = !DILocation(line: 2778, column: 5, scope: !929, inlinedAt: !930)
!933 = !DILocation(line: 458, column: 17, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 458, column: 17)
!935 = !DILocation(line: 458, column: 17, scope: !931)
!936 = !DILocation(line: 459, column: 17, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 458, column: 28)
!938 = !DILocation(line: 460, column: 13, scope: !937)
!939 = !DILocation(line: 462, column: 28, scope: !940)
!940 = distinct !DILexicalBlock(scope: !931, file: !3, line: 462, column: 17)
!941 = !DILocation(line: 462, column: 46, scope: !940)
!942 = !DILocation(line: 462, column: 17, scope: !931)
!943 = !DILocation(line: 463, column: 42, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 462, column: 52)
!945 = !DILocation(line: 463, column: 17, scope: !944)
!946 = !DILocation(line: 464, column: 13, scope: !944)
!947 = !DILocation(line: 465, column: 28, scope: !948)
!948 = distinct !DILexicalBlock(scope: !931, file: !3, line: 465, column: 17)
!949 = !DILocation(line: 465, column: 46, scope: !948)
!950 = !DILocation(line: 465, column: 17, scope: !931)
!951 = !DILocation(line: 466, column: 42, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !3, line: 465, column: 52)
!953 = !DILocation(line: 466, column: 17, scope: !952)
!954 = !DILocation(line: 467, column: 13, scope: !952)
!955 = !DILocation(line: 469, column: 105, scope: !931)
!956 = !DILocation(line: 469, column: 13, scope: !931)
!957 = !DILocation(line: 470, column: 92, scope: !931)
!958 = !DILocation(line: 470, column: 13, scope: !931)
!959 = !DILocation(line: 471, column: 25, scope: !960)
!960 = distinct !DILexicalBlock(scope: !931, file: !3, line: 471, column: 17)
!961 = !DILocation(line: 471, column: 17, scope: !931)
!962 = !DILocation(line: 474, column: 31, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 474, column: 25)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 473, column: 32)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 473, column: 21)
!966 = distinct !DILexicalBlock(scope: !960, file: !3, line: 471, column: 36)
!967 = !DILocation(line: 474, column: 25, scope: !963)
!968 = !DILocation(line: 474, column: 25, scope: !964)
!969 = !DILocation(line: 475, column: 29, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 475, column: 29)
!971 = distinct !DILexicalBlock(scope: !963, file: !3, line: 474, column: 50)
!972 = !DILocation(line: 475, column: 29, scope: !971)
!973 = !DILocation(line: 476, column: 33, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 476, column: 33)
!975 = distinct !DILexicalBlock(scope: !970, file: !3, line: 475, column: 78)
!976 = !DILocation(line: 476, column: 53, scope: !974)
!977 = !DILocation(line: 476, column: 85, scope: !974)
!978 = !DILocation(line: 476, column: 33, scope: !975)
!979 = !DILocation(line: 477, column: 33, scope: !980)
!980 = distinct !DILexicalBlock(scope: !974, file: !3, line: 476, column: 91)
!981 = !DILocation(line: 478, column: 29, scope: !980)
!982 = !DILocation(line: 479, column: 57, scope: !983)
!983 = distinct !DILexicalBlock(scope: !974, file: !3, line: 478, column: 36)
!984 = !DILocation(line: 481, column: 36, scope: !985)
!985 = !DILexicalBlockFile(scope: !986, file: !3, discriminator: 1)
!986 = distinct !DILexicalBlock(scope: !970, file: !3, line: 481, column: 36)
!987 = !DILocation(line: 481, column: 36, scope: !988)
!988 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 1)
!989 = !DILocation(line: 482, column: 29, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 481, column: 86)
!991 = !DILocation(line: 483, column: 25, scope: !990)
!992 = !DILocation(line: 485, column: 29, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 485, column: 29)
!994 = distinct !DILexicalBlock(scope: !963, file: !3, line: 484, column: 28)
!995 = !DILocation(line: 485, column: 49, scope: !993)
!996 = !DILocation(line: 485, column: 81, scope: !993)
!997 = !DILocation(line: 485, column: 29, scope: !994)
!998 = !DILocation(line: 486, column: 52, scope: !999)
!999 = distinct !DILexicalBlock(scope: !993, file: !3, line: 485, column: 87)
!1000 = !DILocation(line: 487, column: 25, scope: !999)
!1001 = !DILocation(line: 489, column: 25, scope: !994)
!1002 = !DILocation(line: 495, column: 17, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !931, file: !3, line: 495, column: 17)
!1004 = !DILocation(line: 496, column: 29, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 496, column: 21)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 495, column: 39)
!1007 = !DILocation(line: 495, column: 17, scope: !931)
!1008 = !DILocation(line: 496, column: 52, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1005, file: !3, discriminator: 1)
!1010 = !DILocation(line: 496, column: 45, scope: !1009)
!1011 = !DILocation(line: 496, column: 21, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1006, file: !3, discriminator: 1)
!1013 = !DILocation(line: 498, column: 33, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 498, column: 25)
!1015 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 496, column: 72)
!1016 = !DILocation(line: 498, column: 46, scope: !1014)
!1017 = !DILocation(line: 498, column: 25, scope: !1015)
!1018 = !DILocation(line: 499, column: 25, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 498, column: 62)
!1020 = !DILocation(line: 500, column: 21, scope: !1019)
!1021 = !DILocation(line: 506, column: 23, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !898, file: !3, line: 506, column: 13)
!1023 = !DILocation(line: 506, column: 34, scope: !1022)
!1024 = !DILocation(line: 506, column: 44, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 1)
!1026 = !DILocation(line: 506, column: 37, scope: !1025)
!1027 = !DILocation(line: 506, column: 59, scope: !1025)
!1028 = !DILocation(line: 506, column: 69, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 2)
!1030 = !DILocation(line: 506, column: 82, scope: !1029)
!1031 = !DILocation(line: 507, column: 23, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 507, column: 17)
!1033 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 506, column: 93)
!1034 = !DILocation(line: 507, column: 20, scope: !1032)
!1035 = !DILocation(line: 506, column: 13, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !898, file: !3, discriminator: 2)
!1037 = !DILocation(line: 507, column: 55, scope: !1032)
!1038 = !DILocation(line: 507, column: 65, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1032, file: !3, discriminator: 1)
!1040 = !DILocation(line: 507, column: 83, scope: !1039)
!1041 = !DILocation(line: 507, column: 17, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1033, file: !3, discriminator: 1)
!1043 = !DILocation(line: 509, column: 21, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 509, column: 21)
!1045 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 507, column: 90)
!1046 = !DILocation(line: 509, column: 59, scope: !1044)
!1047 = !DILocation(line: 509, column: 21, scope: !1045)
!1048 = !DILocation(line: 510, column: 45, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 509, column: 78)
!1050 = !DILocation(line: 511, column: 21, scope: !1049)
!1051 = !DILocation(line: 512, column: 17, scope: !1049)
!1052 = !DILocation(line: 535, column: 26, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 535, column: 21)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 534, column: 57)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 534, column: 17)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 532, column: 33)
!1057 = distinct !DILexicalBlock(scope: !898, file: !3, line: 532, column: 13)
!1058 = !DILocation(line: 516, column: 28, scope: !898)
!1059 = !DILocalVariable(name: "timeout", arg: 1, scope: !1060, file: !3, line: 2782, type: !380)
!1060 = distinct !DISubprogram(name: "tws_host_timeout_reset", scope: !3, file: !3, line: 2782, type: !1061, isLocal: false, isDefinition: true, scopeLine: 2783, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !380}
!1063 = !{!1059}
!1064 = !DILocation(line: 2782, column: 33, scope: !1060, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 518, column: 9, scope: !898)
!1066 = !DILocation(line: 2784, column: 20, scope: !1067, inlinedAt: !1065)
!1067 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 2784, column: 9)
!1068 = !DILocation(line: 2784, column: 9, scope: !1067, inlinedAt: !1065)
!1069 = !DILocation(line: 2784, column: 9, scope: !1060, inlinedAt: !1065)
!1070 = !DILocation(line: 2786, column: 39, scope: !1071, inlinedAt: !1065)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 2784, column: 40)
!1072 = !DILocation(line: 2787, column: 5, scope: !1071, inlinedAt: !1065)
!1073 = !DILocation(line: 520, column: 40, scope: !898)
!1074 = !DILocation(line: 520, column: 9, scope: !898)
!1075 = !DILocation(line: 524, column: 13, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !898, file: !3, line: 523, column: 13)
!1077 = !DILocation(line: 524, column: 18, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1076, file: !3, discriminator: 1)
!1079 = !DILocation(line: 525, column: 13, scope: !1076)
!1080 = !DILocation(line: 525, column: 16, scope: !1078)
!1081 = !DILocation(line: 523, column: 13, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !898, file: !3, discriminator: 1)
!1083 = !DILocation(line: 527, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 525, column: 64)
!1085 = !DILocation(line: 528, column: 9, scope: !1084)
!1086 = !DILocation(line: 533, column: 19, scope: !1056)
!1087 = !DILocation(line: 533, column: 36, scope: !1056)
!1088 = !DILocation(line: 534, column: 17, scope: !1055)
!1089 = !DILocation(line: 534, column: 30, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1055, file: !3, discriminator: 1)
!1091 = !DILocation(line: 534, column: 27, scope: !1055)
!1092 = !DILocation(line: 535, column: 23, scope: !1053)
!1093 = !DILocation(line: 535, column: 21, scope: !1054)
!1094 = !DILocation(line: 536, column: 25, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 536, column: 25)
!1096 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 535, column: 58)
!1097 = !DILocation(line: 536, column: 63, scope: !1095)
!1098 = !DILocation(line: 536, column: 25, scope: !1096)
!1099 = !DILocation(line: 537, column: 25, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 536, column: 82)
!1101 = !DILocation(line: 538, column: 21, scope: !1100)
!1102 = !DILocation(line: 540, column: 21, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 539, column: 24)
!1104 = !DILocation(line: 545, column: 21, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !898, file: !3, line: 545, column: 13)
!1106 = !DILocation(line: 545, column: 13, scope: !898)
!1107 = !DILocation(line: 546, column: 23, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 546, column: 17)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 545, column: 33)
!1110 = !DILocation(line: 546, column: 17, scope: !1108)
!1111 = !DILocation(line: 546, column: 17, scope: !1109)
!1112 = !DILocation(line: 547, column: 17, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 547, column: 17)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 546, column: 49)
!1115 = !DILocation(line: 547, column: 17, scope: !1114)
!1116 = !DILocation(line: 547, column: 17, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1113, file: !3, discriminator: 1)
!1118 = !DILocation(line: 548, column: 42, scope: !1114)
!1119 = !DILocation(line: 548, column: 17, scope: !1114)
!1120 = !DILocation(line: 549, column: 13, scope: !1114)
!1121 = !DILocation(line: 551, column: 48, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 549, column: 20)
!1123 = !DILocation(line: 555, column: 21, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !898, file: !3, line: 555, column: 13)
!1125 = !DILocation(line: 555, column: 13, scope: !898)
!1126 = !DILocation(line: 560, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 555, column: 32)
!1128 = !DILocation(line: 556, column: 13, scope: !1127)
!1129 = !DILocation(line: 557, column: 103, scope: !1127)
!1130 = !DILocation(line: 557, column: 97, scope: !1127)
!1131 = !DILocation(line: 557, column: 13, scope: !1127)
!1132 = !DILocation(line: 558, column: 90, scope: !1127)
!1133 = !DILocation(line: 558, column: 84, scope: !1127)
!1134 = !DILocation(line: 558, column: 13, scope: !1127)
!1135 = !DILocation(line: 560, column: 44, scope: !1127)
!1136 = !DILocation(line: 561, column: 9, scope: !1127)
!1137 = !DILocation(line: 563, column: 20, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !898, file: !3, line: 563, column: 13)
!1139 = !DILocation(line: 563, column: 14, scope: !1138)
!1140 = !DILocation(line: 563, column: 33, scope: !1138)
!1141 = !DILocation(line: 563, column: 67, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1138, file: !3, discriminator: 1)
!1143 = !DILocation(line: 563, column: 44, scope: !1138)
!1144 = !DILocation(line: 564, column: 19, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 563, column: 96)
!1146 = !DILocation(line: 564, column: 44, scope: !1145)
!1147 = !DILocation(line: 566, column: 17, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 566, column: 17)
!1149 = !DILocation(line: 566, column: 17, scope: !1145)
!1150 = !DILocation(line: 567, column: 40, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 566, column: 39)
!1152 = !DILocation(line: 569, column: 17, scope: !1151)
!1153 = !DILocation(line: 572, column: 13, scope: !1151)
!1154 = !DILocation(line: 575, column: 21, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !898, file: !3, line: 575, column: 13)
!1156 = !DILocation(line: 575, column: 13, scope: !898)
!1157 = !DILocation(line: 576, column: 13, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 575, column: 33)
!1159 = !DILocation(line: 577, column: 9, scope: !1158)
!1160 = !DILocation(line: 578, column: 13, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !898, file: !3, line: 578, column: 13)
!1162 = !DILocation(line: 578, column: 13, scope: !898)
!1163 = !DILocation(line: 579, column: 37, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 579, column: 17)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 578, column: 24)
!1166 = !DILocation(line: 581, column: 17, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 579, column: 110)
!1168 = !DILocation(line: 582, column: 13, scope: !1167)
!1169 = !DILocation(line: 587, column: 31, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !898, file: !3, line: 587, column: 13)
!1171 = !DILocation(line: 589, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 587, column: 56)
!1173 = !DILocation(line: 590, column: 23, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 590, column: 17)
!1175 = !DILocation(line: 590, column: 34, scope: !1174)
!1176 = !DILocation(line: 590, column: 17, scope: !1172)
!1177 = !DILocation(line: 591, column: 42, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 590, column: 61)
!1179 = !DILocation(line: 591, column: 17, scope: !1178)
!1180 = !DILocation(line: 592, column: 13, scope: !1178)
!1181 = !DILocation(line: 593, column: 30, scope: !1172)
!1182 = !DILocation(line: 594, column: 9, scope: !1172)
!1183 = !DILocation(line: 595, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !898, file: !3, line: 595, column: 13)
!1185 = !DILocation(line: 595, column: 13, scope: !1184)
!1186 = !DILocation(line: 595, column: 13, scope: !898)
!1187 = !DILocation(line: 596, column: 35, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 595, column: 33)
!1189 = !DILocation(line: 596, column: 32, scope: !1188)
!1190 = !DILocation(line: 597, column: 36, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 597, column: 17)
!1192 = !DILocation(line: 597, column: 17, scope: !1188)
!1193 = !DILocation(line: 599, column: 32, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 599, column: 21)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 597, column: 42)
!1196 = !DILocation(line: 599, column: 50, scope: !1194)
!1197 = !DILocation(line: 599, column: 21, scope: !1195)
!1198 = !DILocation(line: 600, column: 46, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 599, column: 56)
!1200 = !DILocation(line: 600, column: 21, scope: !1199)
!1201 = !DILocation(line: 601, column: 17, scope: !1199)
!1202 = !DILocation(line: 602, column: 32, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 602, column: 21)
!1204 = !DILocation(line: 602, column: 50, scope: !1203)
!1205 = !DILocation(line: 602, column: 21, scope: !1195)
!1206 = !DILocation(line: 603, column: 46, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 602, column: 56)
!1208 = !DILocation(line: 603, column: 21, scope: !1207)
!1209 = !DILocation(line: 604, column: 17, scope: !1207)
!1210 = !DILocation(line: 606, column: 23, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 606, column: 17)
!1212 = !DILocation(line: 606, column: 41, scope: !1211)
!1213 = !DILocation(line: 608, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 608, column: 17)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 606, column: 107)
!1216 = !DILocation(line: 608, column: 17, scope: !1215)
!1217 = !DILocation(line: 608, column: 17, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1214, file: !3, discriminator: 1)
!1219 = !DILocation(line: 610, column: 26, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 610, column: 21)
!1221 = !DILocation(line: 610, column: 46, scope: !1220)
!1222 = !DILocation(line: 610, column: 23, scope: !1220)
!1223 = !DILocation(line: 610, column: 21, scope: !1215)
!1224 = !DILocation(line: 611, column: 46, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 610, column: 64)
!1226 = !DILocation(line: 611, column: 21, scope: !1225)
!1227 = !DILocation(line: 612, column: 17, scope: !1225)
!1228 = !DILocation(line: 616, column: 21, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !898, file: !3, line: 616, column: 13)
!1230 = !DILocation(line: 616, column: 13, scope: !898)
!1231 = !DILocation(line: 617, column: 23, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 617, column: 17)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 616, column: 34)
!1234 = !DILocation(line: 617, column: 17, scope: !1232)
!1235 = !DILocation(line: 617, column: 17, scope: !1233)
!1236 = !DILocation(line: 618, column: 28, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 618, column: 21)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 617, column: 49)
!1239 = !DILocation(line: 618, column: 53, scope: !1237)
!1240 = !DILocation(line: 619, column: 21, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 619, column: 21)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 618, column: 95)
!1243 = !DILocation(line: 619, column: 21, scope: !1242)
!1244 = !DILocation(line: 619, column: 21, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1241, file: !3, discriminator: 1)
!1246 = !DILocation(line: 620, column: 46, scope: !1242)
!1247 = !DILocation(line: 620, column: 21, scope: !1242)
!1248 = !DILocation(line: 621, column: 17, scope: !1242)
!1249 = !DILocation(line: 625, column: 21, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !898, file: !3, line: 625, column: 13)
!1251 = !DILocation(line: 625, column: 52, scope: !1250)
!1252 = !DILocation(line: 626, column: 19, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 625, column: 94)
!1254 = !DILocation(line: 626, column: 44, scope: !1253)
!1255 = !DILocation(line: 627, column: 9, scope: !1253)
!1256 = !DILocation(line: 629, column: 33, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !898, file: !3, line: 629, column: 13)
!1258 = !DILocation(line: 629, column: 43, scope: !1257)
!1259 = !DILocation(line: 629, column: 13, scope: !898)
!1260 = !DILocation(line: 630, column: 19, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 629, column: 49)
!1262 = !DILocation(line: 630, column: 37, scope: !1261)
!1263 = !DILocation(line: 631, column: 9, scope: !1261)
!1264 = !DILocation(line: 633, column: 9, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !898, file: !3, line: 633, column: 9)
!1266 = !DILocation(line: 633, column: 9, scope: !898)
!1267 = !DILocation(line: 633, column: 9, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1265, file: !3, discriminator: 1)
!1269 = !DILocation(line: 637, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !877, file: !3, line: 637, column: 9)
!1271 = !DILocation(line: 637, column: 9, scope: !1270)
!1272 = !DILocation(line: 638, column: 21, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 638, column: 13)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 637, column: 34)
!1275 = !DILocation(line: 637, column: 9, scope: !877)
!1276 = !DILocation(line: 639, column: 37, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 638, column: 33)
!1278 = !DILocation(line: 651, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 651, column: 17)
!1280 = !DILocation(line: 652, column: 41, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 652, column: 21)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 651, column: 38)
!1283 = !DILocation(line: 652, column: 21, scope: !1281)
!1284 = !DILocation(line: 651, column: 17, scope: !1277)
!1285 = !DILocation(line: 653, column: 54, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 652, column: 55)
!1287 = !DILocation(line: 653, column: 21, scope: !1286)
!1288 = !DILocation(line: 654, column: 17, scope: !1286)
!1289 = !DILocation(line: 658, column: 1, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !877, file: !3, discriminator: 2)
!1291 = !DILocation(line: 2776, column: 35, scope: !929)
!1292 = !DILocation(line: 2778, column: 5, scope: !929)
!1293 = !DILocation(line: 2780, column: 1, scope: !929)
!1294 = distinct !DISubprogram(name: "user_send_cmd_prepare", scope: !3, file: !3, line: 1326, type: !1295, isLocal: false, isDefinition: true, scopeLine: 1327, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1299)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!1297, !1298, !374, !355}
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !430, line: 15, baseType: !381)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "USER_CMD_TYPE", file: !22, line: 295, baseType: !27)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1309}
!1300 = !DILocalVariable(name: "cmd", arg: 1, scope: !1294, file: !3, line: 1326, type: !1298)
!1301 = !DILocalVariable(name: "param_len", arg: 2, scope: !1294, file: !3, line: 1326, type: !374)
!1302 = !DILocalVariable(name: "param", arg: 3, scope: !1294, file: !3, line: 1326, type: !355)
!1303 = !DILocalVariable(name: "ret", scope: !1294, file: !3, line: 1328, type: !380)
!1304 = !DILocalVariable(name: "i", scope: !1294, file: !3, line: 1329, type: !356)
!1305 = !DILocalVariable(name: "disconn_cnt", scope: !1294, file: !3, line: 1333, type: !356)
!1306 = !DILocalVariable(name: "conn", scope: !1307, file: !3, line: 1473, type: !610)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1471, column: 5)
!1308 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1335, column: 18)
!1309 = !DILocalVariable(name: "send_ptr", scope: !1310, file: !3, line: 1502, type: !1311)
!1310 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1500, column: 35)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "hid_s_param_t", file: !22, line: 619, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 615, size: 64, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "chl_id", scope: !1313, file: !22, line: 616, baseType: !429, size: 16)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !1313, file: !22, line: 617, baseType: !429, size: 16, offset: 16)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !1313, file: !22, line: 618, baseType: !1318, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32)
!1319 = !DILocation(line: 1326, column: 41, scope: !1294)
!1320 = !DILocation(line: 1326, column: 50, scope: !1294)
!1321 = !DILocation(line: 1326, column: 65, scope: !1294)
!1322 = !DILocation(line: 1328, column: 9, scope: !1294)
!1323 = !DILocation(line: 1330, column: 9, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1330, column: 9)
!1325 = !DILocation(line: 1330, column: 20, scope: !1324)
!1326 = !DILocation(line: 1330, column: 9, scope: !1294)
!1327 = !DILocation(line: 1333, column: 8, scope: !1294)
!1328 = !DILocation(line: 1335, column: 5, scope: !1294)
!1329 = !DILocation(line: 1337, column: 23, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1337, column: 13)
!1331 = !DILocation(line: 1337, column: 13, scope: !1308)
!1332 = !DILocation(line: 1337, column: 13, scope: !1330)
!1333 = !DILocation(line: 1340, column: 41, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1339, column: 16)
!1335 = !DILocation(line: 1340, column: 39, scope: !1334)
!1336 = !{!569, !570, i64 2}
!1337 = !DILocation(line: 1342, column: 13, scope: !1334)
!1338 = !DILocation(line: 1344, column: 9, scope: !1308)
!1339 = !DILocation(line: 1347, column: 39, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1347, column: 13)
!1341 = !DILocation(line: 1347, column: 61, scope: !1340)
!1342 = !DILocation(line: 1347, column: 13, scope: !1308)
!1343 = !DILocation(line: 1348, column: 61, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1347, column: 67)
!1345 = !DILocation(line: 1350, column: 13, scope: !1344)
!1346 = !DILocation(line: 1356, column: 9, scope: !1308)
!1347 = !DILocation(line: 1358, column: 23, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1358, column: 13)
!1349 = !DILocation(line: 1358, column: 13, scope: !1308)
!1350 = !DILocation(line: 1361, column: 41, scope: !1308)
!1351 = !DILocation(line: 1361, column: 39, scope: !1308)
!1352 = !{!569, !570, i64 42}
!1353 = !DILocation(line: 1362, column: 9, scope: !1308)
!1354 = !DILocation(line: 1364, column: 23, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1364, column: 13)
!1356 = !DILocation(line: 1364, column: 13, scope: !1308)
!1357 = !DILocation(line: 1368, column: 25, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1368, column: 13)
!1359 = !{!569, !570, i64 43}
!1360 = !DILocation(line: 1368, column: 34, scope: !1358)
!1361 = !DILocation(line: 1368, column: 13, scope: !1308)
!1362 = !DILocation(line: 1369, column: 36, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 1368, column: 40)
!1364 = !DILocation(line: 1369, column: 34, scope: !1363)
!1365 = !DILocation(line: 1373, column: 9, scope: !1308)
!1366 = !DILocation(line: 1376, column: 25, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1376, column: 13)
!1368 = !{!569, !573, i64 40}
!1369 = !DILocation(line: 1376, column: 42, scope: !1367)
!1370 = !DILocation(line: 1376, column: 13, scope: !1308)
!1371 = !DILocation(line: 1377, column: 42, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1376, column: 48)
!1373 = !DILocation(line: 1378, column: 42, scope: !1372)
!1374 = !{!569, !572, i64 36}
!1375 = !DILocation(line: 1379, column: 13, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 1379, column: 13)
!1377 = !DILocation(line: 1379, column: 13, scope: !1372)
!1378 = !DILocation(line: 1379, column: 13, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1376, file: !3, discriminator: 1)
!1380 = !DILocation(line: 1419, column: 9, scope: !1308)
!1381 = !DILocation(line: 1420, column: 9, scope: !1308)
!1382 = !DILocation(line: 794, column: 24, scope: !1383, inlinedAt: !1387)
!1383 = distinct !DISubprogram(name: "is_1t2_connection", scope: !3, file: !3, line: 792, type: !1384, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !430, line: 11, baseType: !358)
!1387 = distinct !DILocation(line: 1423, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1423, column: 13)
!1389 = !DILocation(line: 794, column: 63, scope: !1383, inlinedAt: !1387)
!1390 = !DILocation(line: 794, column: 42, scope: !1383, inlinedAt: !1387)
!1391 = !DILocation(line: 1423, column: 13, scope: !1308)
!1392 = !DILocation(line: 1426, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1426, column: 13)
!1394 = !DILocation(line: 1426, column: 13, scope: !1308)
!1395 = !DILocation(line: 1430, column: 23, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1430, column: 13)
!1397 = !DILocation(line: 1430, column: 13, scope: !1308)
!1398 = !DILocation(line: 1433, column: 9, scope: !1308)
!1399 = !DILocation(line: 1434, column: 9, scope: !1308)
!1400 = !DILocation(line: 1436, column: 13, scope: !1308)
!1401 = !DILocation(line: 1329, column: 8, scope: !1294)
!1402 = !DILocation(line: 1440, column: 14, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1440, column: 9)
!1404 = !DILocation(line: 1440, column: 21, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !3, discriminator: 1)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 1440, column: 9)
!1407 = !DILocation(line: 1440, column: 9, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1403, file: !3, discriminator: 1)
!1409 = !DILocation(line: 1441, column: 17, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1441, column: 17)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1440, column: 48)
!1412 = !DILocation(line: 1441, column: 42, scope: !1410)
!1413 = !DILocation(line: 1441, column: 17, scope: !1411)
!1414 = distinct !{!1414, !1415, !1416}
!1415 = !DILocation(line: 1440, column: 9, scope: !1403)
!1416 = !DILocation(line: 1444, column: 9, scope: !1403)
!1417 = !DILocation(line: 1452, column: 26, scope: !1308)
!1418 = !DILocation(line: 1452, column: 9, scope: !1308)
!1419 = !DILocation(line: 1453, column: 23, scope: !1308)
!1420 = !DILocation(line: 1455, column: 34, scope: !1308)
!1421 = !DILocation(line: 1456, column: 9, scope: !1308)
!1422 = !DILocation(line: 1458, column: 29, scope: !1308)
!1423 = !DILocation(line: 1458, column: 9, scope: !1308)
!1424 = !DILocation(line: 1459, column: 9, scope: !1308)
!1425 = !DILocation(line: 1463, column: 13, scope: !1308)
!1426 = !DILocation(line: 1466, column: 38, scope: !1308)
!1427 = !DILocation(line: 1466, column: 64, scope: !1308)
!1428 = !DILocation(line: 1466, column: 9, scope: !1308)
!1429 = !DILocation(line: 1467, column: 9, scope: !1308)
!1430 = !DILocation(line: 1474, column: 16, scope: !1307)
!1431 = !DILocation(line: 1473, column: 22, scope: !1307)
!1432 = !DILocation(line: 1475, column: 13, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1475, column: 13)
!1434 = !DILocation(line: 1475, column: 13, scope: !1307)
!1435 = !DILocation(line: 1476, column: 44, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 1476, column: 17)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1475, column: 19)
!1438 = !DILocation(line: 1476, column: 18, scope: !1436)
!1439 = !DILocation(line: 1476, column: 17, scope: !1437)
!1440 = !DILocation(line: 1477, column: 17, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 1476, column: 61)
!1442 = !DILocation(line: 1478, column: 13, scope: !1441)
!1443 = !DILocation(line: 1481, column: 16, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1307, file: !3, discriminator: 1)
!1445 = !DILocation(line: 1481, column: 47, scope: !1444)
!1446 = !DILocation(line: 1481, column: 9, scope: !1444)
!1447 = !DILocation(line: 1482, column: 13, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1481, column: 53)
!1449 = !DILocation(line: 1483, column: 13, scope: !1448)
!1450 = !DILocation(line: 1485, column: 24, scope: !1448)
!1451 = !DILocation(line: 1487, column: 29, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1487, column: 17)
!1453 = !DILocation(line: 1487, column: 17, scope: !1448)
!1454 = distinct !{!1454, !1455, !1456}
!1455 = !DILocation(line: 1481, column: 9, scope: !1307)
!1456 = !DILocation(line: 1490, column: 9, scope: !1307)
!1457 = !DILocation(line: 1494, column: 32, scope: !1308)
!1458 = !DILocation(line: 1494, column: 30, scope: !1308)
!1459 = !{!569, !570, i64 95}
!1460 = !DILocation(line: 1495, column: 9, scope: !1308)
!1461 = !DILocation(line: 1497, column: 28, scope: !1308)
!1462 = !DILocation(line: 1497, column: 26, scope: !1308)
!1463 = !{!569, !570, i64 96}
!1464 = !DILocation(line: 1498, column: 9, scope: !1308)
!1465 = !DILocation(line: 1503, column: 47, scope: !1310)
!1466 = !{!1467, !573, i64 0}
!1467 = !{!"", !573, i64 0, !573, i64 2, !572, i64 4}
!1468 = !DILocation(line: 1503, column: 65, scope: !1310)
!1469 = !{!1467, !572, i64 4}
!1470 = !DILocation(line: 1503, column: 85, scope: !1310)
!1471 = !{!1467, !573, i64 2}
!1472 = !DILocation(line: 1503, column: 15, scope: !1310)
!1473 = !DILocation(line: 1504, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1504, column: 13)
!1475 = !DILocation(line: 1193, column: 39, scope: !1476, inlinedAt: !1478)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1193, column: 9)
!1477 = distinct !DISubprogram(name: "check_user_cmd_timer_status", scope: !3, file: !3, line: 1191, type: !562, isLocal: false, isDefinition: true, scopeLine: 1192, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!1478 = distinct !DILocation(line: 1512, column: 13, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1512, column: 13)
!1480 = !{!568, !574, i64 184}
!1481 = !DILocation(line: 1196, column: 9, scope: !1482, inlinedAt: !1478)
!1482 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1195, column: 12)
!1483 = !DILocation(line: 1512, column: 13, scope: !1308)
!1484 = !DILocation(line: 1193, column: 39, scope: !1476, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 1523, column: 13, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1523, column: 13)
!1487 = !DILocation(line: 1196, column: 9, scope: !1482, inlinedAt: !1485)
!1488 = !DILocation(line: 1523, column: 13, scope: !1308)
!1489 = !DILocation(line: 1533, column: 9, scope: !1308)
!1490 = !DILocation(line: 1534, column: 9, scope: !1308)
!1491 = !DILocation(line: 1537, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1537, column: 13)
!1493 = !DILocation(line: 1537, column: 13, scope: !1308)
!1494 = !DILocation(line: 1544, column: 57, scope: !1294)
!1495 = !DILocation(line: 1544, column: 5, scope: !1294)
!1496 = !DILocation(line: 1544, column: 51, scope: !1294)
!1497 = !{!569, !570, i64 1}
!1498 = !DILocation(line: 1544, column: 55, scope: !1294)
!1499 = !DILocation(line: 1545, column: 31, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1545, column: 9)
!1501 = !DILocation(line: 1545, column: 9, scope: !1294)
!1502 = !DILocation(line: 1546, column: 31, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1545, column: 48)
!1504 = !DILocation(line: 1547, column: 5, scope: !1503)
!1505 = !DILocation(line: 1549, column: 5, scope: !1294)
!1506 = !DILocation(line: 1552, column: 5, scope: !1294)
!1507 = !DILocation(line: 1553, column: 1, scope: !1294)
!1508 = distinct !DISubprogram(name: "update_bt_current_status", scope: !3, file: !3, line: 719, type: !1509, isLocal: false, isDefinition: true, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !355, !356, !356}
!1511 = !{!1512, !1513, !1514, !1515, !1516}
!1512 = !DILocalVariable(name: "addr", arg: 1, scope: !1508, file: !3, line: 719, type: !355)
!1513 = !DILocalVariable(name: "new_status", arg: 2, scope: !1508, file: !3, line: 719, type: !356)
!1514 = !DILocalVariable(name: "conn_status", arg: 3, scope: !1508, file: !3, line: 719, type: !356)
!1515 = !DILocalVariable(name: "temp_role_type", scope: !1508, file: !3, line: 721, type: !380)
!1516 = !DILocalVariable(name: "conn", scope: !1508, file: !3, line: 728, type: !610)
!1517 = !DILocation(line: 719, column: 35, scope: !1508)
!1518 = !DILocation(line: 719, column: 44, scope: !1508)
!1519 = !DILocation(line: 719, column: 59, scope: !1508)
!1520 = !DILocation(line: 721, column: 9, scope: !1508)
!1521 = !DILocation(line: 723, column: 14, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 723, column: 9)
!1523 = !DILocation(line: 723, column: 9, scope: !1508)
!1524 = !DILocation(line: 728, column: 25, scope: !1508)
!1525 = !DILocation(line: 728, column: 18, scope: !1508)
!1526 = !DILocation(line: 729, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 729, column: 9)
!1528 = !DILocation(line: 729, column: 9, scope: !1508)
!1529 = !DILocation(line: 734, column: 48, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 734, column: 9)
!1531 = !DILocation(line: 735, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 734, column: 88)
!1533 = !DILocation(line: 736, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 736, column: 9)
!1535 = !DILocation(line: 736, column: 9, scope: !1532)
!1536 = !DILocation(line: 736, column: 9, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1534, file: !3, discriminator: 1)
!1538 = !DILocation(line: 737, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 737, column: 9)
!1540 = !DILocation(line: 737, column: 9, scope: !1532)
!1541 = !DILocation(line: 737, column: 9, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1539, file: !3, discriminator: 1)
!1543 = !DILocation(line: 739, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 739, column: 13)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 738, column: 62)
!1546 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 738, column: 16)
!1547 = !DILocation(line: 739, column: 13, scope: !1544)
!1548 = !DILocation(line: 739, column: 13, scope: !1545)
!1549 = !DILocation(line: 740, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 739, column: 39)
!1551 = !DILocation(line: 741, column: 13, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 741, column: 13)
!1553 = !DILocation(line: 741, column: 13, scope: !1550)
!1554 = !DILocation(line: 741, column: 13, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1552, file: !3, discriminator: 1)
!1556 = !DILocation(line: 742, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 742, column: 13)
!1558 = !DILocation(line: 742, column: 13, scope: !1550)
!1559 = !DILocation(line: 742, column: 13, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1557, file: !3, discriminator: 1)
!1561 = !DILocation(line: 746, column: 21, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 746, column: 9)
!1563 = !DILocation(line: 746, column: 9, scope: !1508)
!1564 = !DILocation(line: 747, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 747, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 746, column: 27)
!1567 = !DILocation(line: 747, column: 30, scope: !1565)
!1568 = !DILocation(line: 749, column: 9, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 747, column: 57)
!1570 = !{!644, !570, i64 11}
!1571 = !DILocation(line: 752, column: 9, scope: !1566)
!1572 = !DILocation(line: 753, column: 5, scope: !1566)
!1573 = !DILocation(line: 754, column: 28, scope: !1508)
!1574 = !DILocation(line: 754, column: 5, scope: !1508)
!1575 = !DILocation(line: 756, column: 20, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 756, column: 9)
!1577 = !DILocation(line: 756, column: 9, scope: !1508)
!1578 = !DILocation(line: 756, column: 9, scope: !1576)
!1579 = !DILocation(line: 757, column: 37, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 756, column: 26)
!1581 = !{!568, !570, i64 272}
!1582 = !DILocation(line: 758, column: 9, scope: !1580)
!1583 = !DILocation(line: 759, column: 9, scope: !1580)
!1584 = !DILocation(line: 760, column: 5, scope: !1580)
!1585 = !DILocation(line: 761, column: 1, scope: !1508)
!1586 = distinct !DISubprogram(name: "user_emitter_cmd_prepare", scope: !3, file: !3, line: 1556, type: !1295, isLocal: false, isDefinition: true, scopeLine: 1557, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592}
!1588 = !DILocalVariable(name: "cmd", arg: 1, scope: !1586, file: !3, line: 1556, type: !1298)
!1589 = !DILocalVariable(name: "param_len", arg: 2, scope: !1586, file: !3, line: 1556, type: !374)
!1590 = !DILocalVariable(name: "param", arg: 3, scope: !1586, file: !3, line: 1556, type: !355)
!1591 = !DILocalVariable(name: "ret", scope: !1586, file: !3, line: 1558, type: !380)
!1592 = !DILocalVariable(name: "i", scope: !1586, file: !3, line: 1559, type: !356)
!1593 = !DILocation(line: 1556, column: 44, scope: !1586)
!1594 = !DILocation(line: 1556, column: 53, scope: !1586)
!1595 = !DILocation(line: 1556, column: 68, scope: !1586)
!1596 = !DILocation(line: 1558, column: 9, scope: !1586)
!1597 = !DILocation(line: 1560, column: 10, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1560, column: 9)
!1599 = !DILocation(line: 1560, column: 9, scope: !1586)
!1600 = !DILocation(line: 1563, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1563, column: 9)
!1602 = !DILocation(line: 1563, column: 20, scope: !1601)
!1603 = !DILocation(line: 1563, column: 9, scope: !1586)
!1604 = !DILocation(line: 1566, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1566, column: 9)
!1606 = !DILocation(line: 1566, column: 29, scope: !1605)
!1607 = !DILocation(line: 1566, column: 44, scope: !1605)
!1608 = !DILocation(line: 1566, column: 9, scope: !1586)
!1609 = !DILocation(line: 1569, column: 5, scope: !1586)
!1610 = !DILocation(line: 1571, column: 29, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1569, column: 18)
!1612 = !DILocation(line: 1571, column: 9, scope: !1611)
!1613 = !DILocation(line: 1572, column: 9, scope: !1611)
!1614 = !DILocation(line: 1574, column: 13, scope: !1611)
!1615 = !DILocation(line: 1559, column: 8, scope: !1586)
!1616 = !DILocation(line: 1578, column: 14, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1578, column: 9)
!1618 = !DILocation(line: 1578, column: 21, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !3, discriminator: 1)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1578, column: 9)
!1621 = !DILocation(line: 1578, column: 9, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1617, file: !3, discriminator: 1)
!1623 = !DILocation(line: 1579, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 1579, column: 17)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 1578, column: 48)
!1626 = !DILocation(line: 1579, column: 42, scope: !1624)
!1627 = !DILocation(line: 1579, column: 17, scope: !1625)
!1628 = distinct !{!1628, !1629, !1630}
!1629 = !DILocation(line: 1578, column: 9, scope: !1617)
!1630 = !DILocation(line: 1582, column: 9, scope: !1617)
!1631 = !DILocation(line: 1590, column: 26, scope: !1611)
!1632 = !DILocation(line: 1590, column: 9, scope: !1611)
!1633 = !DILocation(line: 1591, column: 23, scope: !1611)
!1634 = !DILocation(line: 1593, column: 34, scope: !1611)
!1635 = !DILocation(line: 1594, column: 9, scope: !1611)
!1636 = !DILocation(line: 1596, column: 13, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1596, column: 13)
!1638 = !DILocation(line: 1596, column: 13, scope: !1611)
!1639 = !DILocation(line: 1597, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1596, column: 20)
!1641 = !DILocation(line: 1598, column: 9, scope: !1640)
!1642 = !DILocation(line: 1602, column: 13, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1602, column: 13)
!1644 = !DILocation(line: 1602, column: 13, scope: !1611)
!1645 = !DILocation(line: 1603, column: 13, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 1602, column: 20)
!1647 = !DILocation(line: 1604, column: 13, scope: !1646)
!1648 = !DILocation(line: 1607, column: 68, scope: !1586)
!1649 = !DILocation(line: 1607, column: 62, scope: !1586)
!1650 = !{!569, !570, i64 87}
!1651 = !DILocation(line: 1607, column: 5, scope: !1586)
!1652 = !DILocation(line: 1607, column: 66, scope: !1586)
!1653 = !DILocation(line: 1608, column: 21, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1608, column: 9)
!1655 = !DILocation(line: 1608, column: 39, scope: !1654)
!1656 = !DILocation(line: 1608, column: 9, scope: !1586)
!1657 = !DILocation(line: 1609, column: 39, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 1608, column: 59)
!1659 = !DILocation(line: 1610, column: 5, scope: !1658)
!1660 = !DILocation(line: 1611, column: 5, scope: !1586)
!1661 = !DILocation(line: 1612, column: 5, scope: !1586)
!1662 = !DILocation(line: 1613, column: 1, scope: !1586)
!1663 = !DILocation(line: 2782, column: 33, scope: !1060)
!1664 = !DILocation(line: 2784, column: 20, scope: !1067)
!1665 = !DILocation(line: 2784, column: 9, scope: !1067)
!1666 = !DILocation(line: 2784, column: 9, scope: !1060)
!1667 = !DILocation(line: 2786, column: 39, scope: !1071)
!1668 = !DILocation(line: 2787, column: 5, scope: !1071)
!1669 = !DILocation(line: 2788, column: 1, scope: !1060)
!1670 = distinct !DISubprogram(name: "user_at_cmd_free", scope: !3, file: !3, line: 3091, type: !1671, isLocal: false, isDefinition: true, scopeLine: 3092, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!359, !610}
!1673 = !{!1674, !1675, !1676}
!1674 = !DILocalVariable(name: "conn", arg: 1, scope: !1670, file: !3, line: 3091, type: !610)
!1675 = !DILocalVariable(name: "it", scope: !1670, file: !3, line: 3093, type: !360)
!1676 = !DILocalVariable(name: "temp_it", scope: !1677, file: !3, line: 3098, type: !360)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 3097, column: 62)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 3097, column: 5)
!1679 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 3097, column: 5)
!1680 = !DILocation(line: 3091, column: 35, scope: !1670)
!1681 = !DILocation(line: 3093, column: 20, scope: !1670)
!1682 = !DILocation(line: 3094, column: 10, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 3094, column: 9)
!1684 = !DILocation(line: 3094, column: 9, scope: !1670)
!1685 = !DILocation(line: 3097, column: 38, scope: !1679)
!1686 = !{!644, !572, i64 20}
!1687 = !DILocation(line: 3097, column: 5, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 1)
!1689 = !DILocation(line: 3098, column: 24, scope: !1677)
!1690 = !DILocation(line: 3099, column: 18, scope: !1677)
!1691 = !{!576, !572, i64 0}
!1692 = !DILocation(line: 3101, column: 9, scope: !1677)
!1693 = !DILocation(line: 3102, column: 9, scope: !1677)
!1694 = distinct !{!1694, !1695, !1696}
!1695 = !DILocation(line: 3097, column: 5, scope: !1679)
!1696 = !DILocation(line: 3103, column: 5, scope: !1679)
!1697 = !DILocation(line: 3105, column: 1, scope: !1670)
!1698 = distinct !DISubprogram(name: "find_not_hangup_conn", scope: !3, file: !3, line: 659, type: !1699, isLocal: false, isDefinition: true, scopeLine: 660, isOptimized: true, unit: !2, variables: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!610}
!1701 = !{!1702}
!1702 = !DILocalVariable(name: "conn", scope: !1698, file: !3, line: 661, type: !610)
!1703 = !DILocation(line: 661, column: 18, scope: !1698)
!1704 = !DILocation(line: 662, column: 5, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1706, file: !3, discriminator: 1)
!1706 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 662, column: 5)
!1707 = !DILocation(line: 663, column: 20, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 663, column: 13)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 662, column: 33)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 662, column: 5)
!1711 = !DILocation(line: 663, column: 13, scope: !1708)
!1712 = !DILocation(line: 663, column: 28, scope: !1708)
!1713 = !DILocation(line: 663, column: 38, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1708, file: !3, discriminator: 1)
!1715 = !DILocation(line: 663, column: 57, scope: !1714)
!1716 = !DILocation(line: 664, column: 34, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 664, column: 17)
!1718 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 663, column: 64)
!1719 = !DILocation(line: 663, column: 13, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1709, file: !3, discriminator: 1)
!1721 = !DILocation(line: 662, column: 5, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1710, file: !3, discriminator: 2)
!1723 = !DILocation(line: 662, column: 5, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1710, file: !3, discriminator: 1)
!1725 = distinct !{!1725, !1726, !1727}
!1726 = !DILocation(line: 662, column: 5, scope: !1706)
!1727 = !DILocation(line: 668, column: 5, scope: !1706)
!1728 = !DILocation(line: 670, column: 1, scope: !1698)
!1729 = distinct !DISubprogram(name: "check_work_addr", scope: !3, file: !3, line: 682, type: !1730, isLocal: false, isDefinition: true, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!359, !355}
!1732 = !{!1733}
!1733 = !DILocalVariable(name: "addr", arg: 1, scope: !1729, file: !3, line: 682, type: !355)
!1734 = !DILocation(line: 682, column: 25, scope: !1729)
!1735 = !DILocation(line: 708, column: 5, scope: !1729)
!1736 = distinct !DISubprogram(name: "bt_status_change", scope: !3, file: !3, line: 714, type: !554, isLocal: false, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1737)
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "state", arg: 1, scope: !1736, file: !3, line: 714, type: !356)
!1739 = !DILocation(line: 714, column: 26, scope: !1736)
!1740 = !DILocation(line: 716, column: 5, scope: !1736)
!1741 = distinct !DISubprogram(name: "get_emitter_connect_status", scope: !3, file: !3, line: 763, type: !1742, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!436}
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "conn", scope: !1741, file: !3, line: 765, type: !610)
!1746 = !DILocation(line: 765, column: 25, scope: !1741)
!1747 = !DILocation(line: 765, column: 18, scope: !1741)
!1748 = !DILocation(line: 766, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 766, column: 9)
!1750 = !DILocation(line: 766, column: 9, scope: !1741)
!1751 = !DILocation(line: 767, column: 22, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 766, column: 15)
!1753 = !DILocation(line: 767, column: 9, scope: !1752)
!1754 = !DILocation(line: 771, column: 1, scope: !1741)
!1755 = distinct !DISubprogram(name: "get_bt_connect_status", scope: !3, file: !3, line: 772, type: !1742, isLocal: false, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1756)
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "conn", scope: !1755, file: !3, line: 774, type: !610)
!1758 = !DILocation(line: 774, column: 25, scope: !1755)
!1759 = !DILocation(line: 774, column: 18, scope: !1755)
!1760 = !DILocation(line: 775, column: 9, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 775, column: 9)
!1762 = !DILocation(line: 775, column: 9, scope: !1755)
!1763 = !DILocation(line: 776, column: 22, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 775, column: 15)
!1765 = !DILocation(line: 776, column: 9, scope: !1764)
!1766 = !DILocation(line: 780, column: 1, scope: !1755)
!1767 = distinct !DISubprogram(name: "get_device_inband_ringtone_flag", scope: !3, file: !3, line: 782, type: !562, isLocal: false, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1768)
!1768 = !{!1769}
!1769 = !DILocalVariable(name: "conn", scope: !1767, file: !3, line: 784, type: !610)
!1770 = !DILocation(line: 784, column: 25, scope: !1767)
!1771 = !DILocation(line: 784, column: 18, scope: !1767)
!1772 = !DILocation(line: 785, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 785, column: 9)
!1774 = !DILocation(line: 785, column: 9, scope: !1767)
!1775 = !DILocation(line: 786, column: 22, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 785, column: 15)
!1777 = !DILocation(line: 786, column: 9, scope: !1776)
!1778 = !DILocation(line: 790, column: 1, scope: !1767)
!1779 = !DILocation(line: 794, column: 24, scope: !1383)
!1780 = !DILocation(line: 794, column: 63, scope: !1383)
!1781 = !DILocation(line: 794, column: 42, scope: !1383)
!1782 = !DILocation(line: 794, column: 12, scope: !1383)
!1783 = !DILocation(line: 794, column: 5, scope: !1383)
!1784 = distinct !DISubprogram(name: "get_total_connect_dev", scope: !3, file: !3, line: 796, type: !1742, isLocal: false, isDefinition: true, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1785)
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "conn", scope: !1784, file: !3, line: 799, type: !610)
!1787 = !DILocation(line: 364, column: 37, scope: !759, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 799, column: 25, scope: !1784)
!1789 = !DILocation(line: 366, column: 9, scope: !759, inlinedAt: !1788)
!1790 = !DILocation(line: 368, column: 18, scope: !759, inlinedAt: !1788)
!1791 = !DILocation(line: 407, column: 12, scope: !759, inlinedAt: !1788)
!1792 = !DILocation(line: 799, column: 18, scope: !1784)
!1793 = !DILocation(line: 800, column: 9, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 800, column: 9)
!1795 = !DILocation(line: 800, column: 9, scope: !1784)
!1796 = !DILocation(line: 801, column: 27, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 800, column: 15)
!1798 = !DILocation(line: 801, column: 9, scope: !1797)
!1799 = !DILocation(line: 805, column: 1, scope: !1784)
!1800 = distinct !DISubprogram(name: "get_curr_channel_state", scope: !3, file: !3, line: 807, type: !1801, isLocal: false, isDefinition: true, scopeLine: 808, isOptimized: true, unit: !2, variables: !1803)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!429}
!1803 = !{!1804}
!1804 = !DILocalVariable(name: "conn", scope: !1800, file: !3, line: 809, type: !610)
!1805 = !DILocation(line: 809, column: 25, scope: !1800)
!1806 = !DILocation(line: 809, column: 18, scope: !1800)
!1807 = !DILocation(line: 810, column: 9, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 810, column: 9)
!1809 = !DILocation(line: 810, column: 9, scope: !1800)
!1810 = !DILocation(line: 811, column: 22, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 810, column: 15)
!1812 = !DILocation(line: 811, column: 9, scope: !1811)
!1813 = !DILocation(line: 814, column: 1, scope: !1800)
!1814 = distinct !DISubprogram(name: "get_emitter_curr_channel_state", scope: !3, file: !3, line: 815, type: !1801, isLocal: false, isDefinition: true, scopeLine: 816, isOptimized: true, unit: !2, variables: !1815)
!1815 = !{!1816}
!1816 = !DILocalVariable(name: "conn", scope: !1814, file: !3, line: 817, type: !610)
!1817 = !DILocation(line: 817, column: 25, scope: !1814)
!1818 = !DILocation(line: 817, column: 18, scope: !1814)
!1819 = !DILocation(line: 818, column: 9, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 818, column: 9)
!1821 = !DILocation(line: 818, column: 9, scope: !1814)
!1822 = !DILocation(line: 819, column: 22, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 818, column: 15)
!1824 = !DILocation(line: 819, column: 9, scope: !1823)
!1825 = !DILocation(line: 822, column: 1, scope: !1814)
!1826 = distinct !DISubprogram(name: "get_cur_connect_phone_mac_addr", scope: !3, file: !3, line: 824, type: !1827, isLocal: false, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!355}
!1829 = !{!1830}
!1830 = !DILocalVariable(name: "conn", scope: !1826, file: !3, line: 826, type: !610)
!1831 = !DILocation(line: 826, column: 25, scope: !1826)
!1832 = !DILocation(line: 826, column: 18, scope: !1826)
!1833 = !DILocation(line: 828, column: 16, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 827, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 827, column: 9)
!1836 = !DILocation(line: 831, column: 1, scope: !1826)
!1837 = distinct !DISubprogram(name: "get_unactive_device_call_status", scope: !3, file: !3, line: 832, type: !562, isLocal: false, isDefinition: true, scopeLine: 833, isOptimized: true, unit: !2, variables: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "conn", scope: !1837, file: !3, line: 834, type: !610)
!1840 = !DILocation(line: 364, column: 37, scope: !759, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 834, column: 25, scope: !1837)
!1842 = !DILocation(line: 366, column: 9, scope: !759, inlinedAt: !1841)
!1843 = !DILocation(line: 368, column: 18, scope: !759, inlinedAt: !1841)
!1844 = !DILocation(line: 407, column: 12, scope: !759, inlinedAt: !1841)
!1845 = !DILocation(line: 834, column: 18, scope: !1837)
!1846 = !DILocation(line: 835, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 835, column: 9)
!1848 = !DILocation(line: 835, column: 14, scope: !1847)
!1849 = !DILocation(line: 835, column: 24, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1847, file: !3, discriminator: 1)
!1851 = !DILocation(line: 835, column: 35, scope: !1850)
!1852 = !DILocation(line: 835, column: 9, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1837, file: !3, discriminator: 1)
!1854 = !DILocation(line: 838, column: 5, scope: !1837)
!1855 = !DILocation(line: 839, column: 1, scope: !1837)
!1856 = distinct !DISubprogram(name: "get_cur_connect_emitter_mac_addr", scope: !3, file: !3, line: 840, type: !1827, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1857)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "conn", scope: !1856, file: !3, line: 842, type: !610)
!1859 = !DILocation(line: 842, column: 25, scope: !1856)
!1860 = !DILocation(line: 842, column: 18, scope: !1856)
!1861 = !DILocation(line: 844, column: 16, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 843, column: 15)
!1863 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 843, column: 9)
!1864 = !DILocation(line: 847, column: 1, scope: !1856)
!1865 = distinct !DISubprogram(name: "get_call_status", scope: !3, file: !3, line: 851, type: !1742, isLocal: false, isDefinition: true, scopeLine: 852, isOptimized: true, unit: !2, variables: !1866)
!1866 = !{!1867}
!1867 = !DILocalVariable(name: "conn", scope: !1865, file: !3, line: 853, type: !610)
!1868 = !DILocation(line: 853, column: 25, scope: !1865)
!1869 = !DILocation(line: 853, column: 18, scope: !1865)
!1870 = !DILocation(line: 854, column: 9, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 854, column: 9)
!1872 = !DILocation(line: 854, column: 14, scope: !1871)
!1873 = !DILocation(line: 854, column: 24, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1871, file: !3, discriminator: 1)
!1875 = !DILocation(line: 854, column: 35, scope: !1874)
!1876 = !DILocation(line: 854, column: 9, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1865, file: !3, discriminator: 1)
!1878 = !DILocation(line: 859, column: 23, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 859, column: 17)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 858, column: 37)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 858, column: 9)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 858, column: 9)
!1883 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 857, column: 12)
!1884 = !DILocation(line: 859, column: 17, scope: !1879)
!1885 = !DILocation(line: 859, column: 17, scope: !1880)
!1886 = !DILocation(line: 860, column: 27, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 860, column: 21)
!1888 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 859, column: 31)
!1889 = !DILocation(line: 860, column: 38, scope: !1887)
!1890 = !DILocation(line: 860, column: 21, scope: !1888)
!1891 = !DILocation(line: 858, column: 9, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 2)
!1893 = !DILocation(line: 858, column: 9, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 1)
!1895 = !DILocation(line: 858, column: 9, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1882, file: !3, discriminator: 1)
!1897 = distinct !{!1897, !1898, !1899}
!1898 = !DILocation(line: 858, column: 9, scope: !1882)
!1899 = !DILocation(line: 865, column: 9, scope: !1882)
!1900 = !DILocation(line: 868, column: 1, scope: !1865)
!1901 = distinct !DISubprogram(name: "a2dp_get_status_for_conn", scope: !3, file: !3, line: 870, type: !1902, isLocal: false, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!356, !610}
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "conn", arg: 1, scope: !1901, file: !3, line: 870, type: !610)
!1906 = !DILocation(line: 870, column: 42, scope: !1901)
!1907 = !DILocation(line: 872, column: 9, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 872, column: 9)
!1909 = !DILocation(line: 872, column: 9, scope: !1901)
!1910 = !DILocation(line: 873, column: 19, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 873, column: 13)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 872, column: 15)
!1913 = !DILocation(line: 873, column: 37, scope: !1911)
!1914 = !DILocation(line: 873, column: 13, scope: !1912)
!1915 = !DILocation(line: 876, column: 26, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 875, column: 16)
!1917 = !DILocation(line: 876, column: 13, scope: !1916)
!1918 = !DILocation(line: 880, column: 1, scope: !1901)
!1919 = distinct !DISubprogram(name: "a2dp_get_status", scope: !3, file: !3, line: 883, type: !1742, isLocal: false, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1920)
!1920 = !{!1921}
!1921 = !DILocalVariable(name: "conn", scope: !1919, file: !3, line: 885, type: !610)
!1922 = !DILocation(line: 885, column: 25, scope: !1919)
!1923 = !DILocation(line: 885, column: 18, scope: !1919)
!1924 = !DILocation(line: 886, column: 9, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 886, column: 9)
!1926 = !DILocation(line: 886, column: 9, scope: !1919)
!1927 = !DILocation(line: 887, column: 19, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 887, column: 13)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 886, column: 15)
!1930 = !DILocation(line: 887, column: 37, scope: !1928)
!1931 = !DILocation(line: 887, column: 13, scope: !1929)
!1932 = !DILocation(line: 888, column: 35, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 888, column: 17)
!1934 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 887, column: 62)
!1935 = !DILocation(line: 888, column: 17, scope: !1933)
!1936 = !DILocation(line: 888, column: 51, scope: !1933)
!1937 = !DILocation(line: 888, column: 17, scope: !1934)
!1938 = !DILocation(line: 891, column: 30, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 890, column: 20)
!1940 = !DILocation(line: 891, column: 17, scope: !1939)
!1941 = !DILocation(line: 894, column: 26, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 893, column: 16)
!1943 = !DILocation(line: 894, column: 13, scope: !1942)
!1944 = !DILocation(line: 898, column: 1, scope: !1919)
!1945 = distinct !DISubprogram(name: "get_emitter_a2dp_status", scope: !3, file: !3, line: 901, type: !1742, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1946)
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "conn", scope: !1945, file: !3, line: 903, type: !610)
!1948 = !DILocation(line: 903, column: 25, scope: !1945)
!1949 = !DILocation(line: 903, column: 18, scope: !1945)
!1950 = !DILocation(line: 904, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 904, column: 9)
!1952 = !DILocation(line: 904, column: 9, scope: !1945)
!1953 = !DILocation(line: 905, column: 19, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 905, column: 13)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 904, column: 15)
!1956 = !DILocation(line: 905, column: 37, scope: !1954)
!1957 = !DILocation(line: 905, column: 13, scope: !1955)
!1958 = !DILocation(line: 906, column: 35, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 906, column: 17)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 905, column: 62)
!1961 = !DILocation(line: 906, column: 17, scope: !1959)
!1962 = !DILocation(line: 906, column: 51, scope: !1959)
!1963 = !DILocation(line: 906, column: 17, scope: !1960)
!1964 = !DILocation(line: 909, column: 30, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 908, column: 20)
!1966 = !DILocation(line: 909, column: 17, scope: !1965)
!1967 = !DILocation(line: 912, column: 26, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 911, column: 16)
!1969 = !DILocation(line: 912, column: 13, scope: !1968)
!1970 = !DILocation(line: 916, column: 1, scope: !1945)
!1971 = distinct !DISubprogram(name: "get_second_call_status", scope: !3, file: !3, line: 917, type: !562, isLocal: false, isDefinition: true, scopeLine: 918, isOptimized: true, unit: !2, variables: !1972)
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "conn", scope: !1971, file: !3, line: 919, type: !610)
!1974 = !DILocation(line: 919, column: 25, scope: !1971)
!1975 = !DILocation(line: 919, column: 18, scope: !1971)
!1976 = !DILocation(line: 920, column: 9, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 920, column: 9)
!1978 = !DILocation(line: 920, column: 9, scope: !1971)
!1979 = !DILocation(line: 921, column: 22, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 920, column: 15)
!1981 = !DILocation(line: 921, column: 9, scope: !1980)
!1982 = !DILocation(line: 924, column: 1, scope: !1971)
!1983 = distinct !DISubprogram(name: "get_a2dp_decoder_status", scope: !3, file: !3, line: 925, type: !1742, isLocal: false, isDefinition: true, scopeLine: 926, isOptimized: true, unit: !2, variables: !1984)
!1984 = !{!1985}
!1985 = !DILocalVariable(name: "conn", scope: !1983, file: !3, line: 927, type: !610)
!1986 = !DILocation(line: 927, column: 25, scope: !1983)
!1987 = !DILocation(line: 927, column: 18, scope: !1983)
!1988 = !DILocation(line: 928, column: 9, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 928, column: 9)
!1990 = !DILocation(line: 928, column: 9, scope: !1983)
!1991 = !DILocation(line: 929, column: 22, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 928, column: 15)
!1993 = !DILocation(line: 929, column: 9, scope: !1992)
!1994 = !DILocation(line: 932, column: 1, scope: !1983)
!1995 = distinct !DISubprogram(name: "check_phone_call_number", scope: !3, file: !3, line: 933, type: !562, isLocal: false, isDefinition: true, scopeLine: 934, isOptimized: true, unit: !2, variables: !1996)
!1996 = !{!1997, !1998}
!1997 = !DILocalVariable(name: "counter", scope: !1995, file: !3, line: 935, type: !356)
!1998 = !DILocalVariable(name: "conn", scope: !1995, file: !3, line: 936, type: !610)
!1999 = !DILocation(line: 935, column: 8, scope: !1995)
!2000 = !DILocation(line: 936, column: 18, scope: !1995)
!2001 = !DILocation(line: 937, column: 5, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !2003, file: !3, discriminator: 1)
!2003 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 937, column: 5)
!2004 = !DILocation(line: 938, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 938, column: 13)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 937, column: 33)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 937, column: 5)
!2008 = !DILocation(line: 938, column: 13, scope: !2006)
!2009 = !DILocation(line: 937, column: 5, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !2007, file: !3, discriminator: 2)
!2011 = !DILocation(line: 937, column: 5, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2007, file: !3, discriminator: 1)
!2013 = distinct !{!2013, !2014, !2015}
!2014 = !DILocation(line: 937, column: 5, scope: !2003)
!2015 = !DILocation(line: 943, column: 5, scope: !2003)
!2016 = !DILocation(line: 944, column: 5, scope: !1995)
!2017 = distinct !DISubprogram(name: "add_hfp_flag", scope: !3, file: !3, line: 946, type: !2018, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !355, !356}
!2020 = !{!2021, !2022, !2023}
!2021 = !DILocalVariable(name: "addr", arg: 1, scope: !2017, file: !3, line: 946, type: !355)
!2022 = !DILocalVariable(name: "flag_pos", arg: 2, scope: !2017, file: !3, line: 946, type: !356)
!2023 = !DILocalVariable(name: "conn", scope: !2017, file: !3, line: 948, type: !610)
!2024 = !DILocation(line: 946, column: 23, scope: !2017)
!2025 = !DILocation(line: 946, column: 32, scope: !2017)
!2026 = !DILocation(line: 948, column: 25, scope: !2017)
!2027 = !DILocation(line: 948, column: 18, scope: !2017)
!2028 = !DILocation(line: 949, column: 10, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 949, column: 9)
!2030 = !DILocation(line: 949, column: 9, scope: !2017)
!2031 = !DILocation(line: 952, column: 26, scope: !2017)
!2032 = !DILocation(line: 952, column: 11, scope: !2017)
!2033 = !DILocation(line: 952, column: 23, scope: !2017)
!2034 = !DILocation(line: 953, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 953, column: 5)
!2036 = !DILocation(line: 953, column: 5, scope: !2017)
!2037 = !DILocation(line: 953, column: 5, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2035, file: !3, discriminator: 1)
!2039 = !DILocation(line: 954, column: 1, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2017, file: !3, discriminator: 2)
!2041 = distinct !DISubprogram(name: "clr_hfp_flag", scope: !3, file: !3, line: 955, type: !2018, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2042)
!2042 = !{!2043, !2044, !2045}
!2043 = !DILocalVariable(name: "addr", arg: 1, scope: !2041, file: !3, line: 955, type: !355)
!2044 = !DILocalVariable(name: "flag_pos", arg: 2, scope: !2041, file: !3, line: 955, type: !356)
!2045 = !DILocalVariable(name: "conn", scope: !2041, file: !3, line: 957, type: !610)
!2046 = !DILocation(line: 955, column: 23, scope: !2041)
!2047 = !DILocation(line: 955, column: 32, scope: !2041)
!2048 = !DILocation(line: 957, column: 25, scope: !2041)
!2049 = !DILocation(line: 957, column: 18, scope: !2041)
!2050 = !DILocation(line: 958, column: 10, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 958, column: 9)
!2052 = !DILocation(line: 958, column: 9, scope: !2041)
!2053 = !DILocation(line: 961, column: 27, scope: !2041)
!2054 = !DILocation(line: 961, column: 26, scope: !2041)
!2055 = !DILocation(line: 961, column: 11, scope: !2041)
!2056 = !DILocation(line: 961, column: 23, scope: !2041)
!2057 = !DILocation(line: 962, column: 5, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 962, column: 5)
!2059 = !DILocation(line: 962, column: 5, scope: !2041)
!2060 = !DILocation(line: 962, column: 5, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2058, file: !3, discriminator: 1)
!2062 = !DILocation(line: 963, column: 1, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2041, file: !3, discriminator: 2)
!2064 = distinct !DISubprogram(name: "bt_api_all_sniff_exit", scope: !3, file: !3, line: 965, type: !874, isLocal: false, isDefinition: true, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2065)
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "conn", scope: !2064, file: !3, line: 967, type: !610)
!2067 = !DILocation(line: 967, column: 18, scope: !2064)
!2068 = !DILocation(line: 968, column: 5, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !3, discriminator: 1)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 968, column: 5)
!2071 = !DILocation(line: 969, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 969, column: 13)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 968, column: 33)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 968, column: 5)
!2075 = !DILocation(line: 969, column: 13, scope: !2072)
!2076 = !DILocation(line: 969, column: 13, scope: !2073)
!2077 = !DILocation(line: 970, column: 41, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 969, column: 27)
!2079 = !DILocation(line: 970, column: 55, scope: !2078)
!2080 = !DILocation(line: 970, column: 13, scope: !2078)
!2081 = !DILocation(line: 971, column: 9, scope: !2078)
!2082 = !DILocation(line: 968, column: 5, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2074, file: !3, discriminator: 2)
!2084 = !DILocation(line: 968, column: 5, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2074, file: !3, discriminator: 1)
!2086 = distinct !{!2086, !2087, !2088}
!2087 = !DILocation(line: 968, column: 5, scope: !2070)
!2088 = !DILocation(line: 972, column: 5, scope: !2070)
!2089 = !DILocation(line: 973, column: 1, scope: !2064)
!2090 = distinct !DISubprogram(name: "user_hfp_call_hold_flag", scope: !3, file: !3, line: 976, type: !2091, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !359}
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "flag", arg: 1, scope: !2090, file: !3, line: 976, type: !359)
!2095 = !DILocation(line: 976, column: 34, scope: !2090)
!2096 = !DILocation(line: 982, column: 1, scope: !2090)
!2097 = distinct !DISubprogram(name: "update_profile_function_status", scope: !3, file: !3, line: 984, type: !2098, isLocal: false, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !355, !380, !359}
!2100 = !{!2101, !2102, !2103, !2104}
!2101 = !DILocalVariable(name: "addr", arg: 1, scope: !2097, file: !3, line: 984, type: !355)
!2102 = !DILocalVariable(name: "sta", arg: 2, scope: !2097, file: !3, line: 984, type: !380)
!2103 = !DILocalVariable(name: "param", arg: 3, scope: !2097, file: !3, line: 984, type: !359)
!2104 = !DILocalVariable(name: "conn", scope: !2097, file: !3, line: 986, type: !610)
!2105 = !DILocation(line: 984, column: 41, scope: !2097)
!2106 = !DILocation(line: 984, column: 51, scope: !2097)
!2107 = !DILocation(line: 984, column: 60, scope: !2097)
!2108 = !DILocation(line: 986, column: 25, scope: !2097)
!2109 = !DILocation(line: 986, column: 18, scope: !2097)
!2110 = !DILocation(line: 987, column: 10, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 987, column: 9)
!2112 = !DILocation(line: 987, column: 9, scope: !2097)
!2113 = !DILocation(line: 990, column: 5, scope: !2097)
!2114 = !DILocation(line: 993, column: 9, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 990, column: 18)
!2116 = !DILocation(line: 994, column: 19, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 994, column: 13)
!2118 = !DILocation(line: 994, column: 30, scope: !2117)
!2119 = !DILocation(line: 994, column: 13, scope: !2115)
!2120 = !DILocation(line: 995, column: 30, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 994, column: 59)
!2122 = !DILocation(line: 996, column: 13, scope: !2121)
!2123 = !DILocation(line: 997, column: 13, scope: !2121)
!2124 = !DILocation(line: 999, column: 96, scope: !2121)
!2125 = !DILocation(line: 998, column: 13, scope: !2121)
!2126 = !DILocation(line: 1000, column: 13, scope: !2121)
!2127 = !DILocation(line: 1002, column: 13, scope: !2121)
!2128 = !DILocation(line: 1003, column: 13, scope: !2121)
!2129 = !DILocation(line: 1004, column: 9, scope: !2121)
!2130 = !DILocation(line: 1011, column: 9, scope: !2115)
!2131 = !DILocation(line: 1012, column: 19, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 1012, column: 13)
!2133 = !DILocation(line: 1012, column: 30, scope: !2132)
!2134 = !DILocation(line: 1012, column: 13, scope: !2115)
!2135 = !DILocation(line: 1013, column: 30, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 1012, column: 59)
!2137 = !DILocation(line: 1014, column: 13, scope: !2136)
!2138 = !DILocation(line: 1015, column: 13, scope: !2136)
!2139 = !DILocation(line: 1017, column: 96, scope: !2136)
!2140 = !DILocation(line: 1016, column: 13, scope: !2136)
!2141 = !DILocation(line: 1018, column: 13, scope: !2136)
!2142 = !DILocation(line: 1020, column: 13, scope: !2136)
!2143 = !DILocation(line: 1021, column: 13, scope: !2136)
!2144 = !DILocation(line: 1022, column: 9, scope: !2136)
!2145 = !DILocation(line: 1025, column: 9, scope: !2115)
!2146 = !DILocation(line: 1026, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 1026, column: 13)
!2148 = !DILocation(line: 1026, column: 30, scope: !2147)
!2149 = !DILocation(line: 1026, column: 13, scope: !2115)
!2150 = !DILocation(line: 1027, column: 13, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 1026, column: 57)
!2152 = !DILocation(line: 1028, column: 13, scope: !2151)
!2153 = !DILocation(line: 1029, column: 30, scope: !2151)
!2154 = !DILocation(line: 1030, column: 38, scope: !2151)
!2155 = !DILocation(line: 1030, column: 13, scope: !2151)
!2156 = !DILocation(line: 1031, column: 9, scope: !2151)
!2157 = !DILocation(line: 1034, column: 9, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 1034, column: 9)
!2159 = !DILocation(line: 1034, column: 9, scope: !2115)
!2160 = !DILocation(line: 1034, column: 9, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2158, file: !3, discriminator: 1)
!2162 = !DILocation(line: 1035, column: 19, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 1035, column: 13)
!2164 = !DILocation(line: 1035, column: 30, scope: !2163)
!2165 = !DILocation(line: 1035, column: 13, scope: !2115)
!2166 = !DILocation(line: 1036, column: 13, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 1035, column: 57)
!2168 = !DILocation(line: 1037, column: 30, scope: !2167)
!2169 = !DILocation(line: 1038, column: 38, scope: !2167)
!2170 = !DILocation(line: 1038, column: 13, scope: !2167)
!2171 = !DILocation(line: 1039, column: 13, scope: !2167)
!2172 = !DILocation(line: 1040, column: 9, scope: !2167)
!2173 = !DILocation(line: 1043, column: 9, scope: !2115)
!2174 = !DILocation(line: 1044, column: 9, scope: !2115)
!2175 = !DILocation(line: 1045, column: 9, scope: !2115)
!2176 = !DILocation(line: 1047, column: 15, scope: !2115)
!2177 = !DILocation(line: 1047, column: 31, scope: !2115)
!2178 = !DILocation(line: 1049, column: 9, scope: !2115)
!2179 = !DILocation(line: 1050, column: 9, scope: !2115)
!2180 = !DILocation(line: 1052, column: 15, scope: !2115)
!2181 = !DILocation(line: 1052, column: 34, scope: !2115)
!2182 = !DILocation(line: 1053, column: 9, scope: !2115)
!2183 = !DILocation(line: 1056, column: 15, scope: !2115)
!2184 = !DILocation(line: 1056, column: 35, scope: !2115)
!2185 = !DILocation(line: 1057, column: 27, scope: !2115)
!2186 = !DILocation(line: 1058, column: 9, scope: !2115)
!2187 = !DILocation(line: 1060, column: 15, scope: !2115)
!2188 = !DILocation(line: 1060, column: 27, scope: !2115)
!2189 = !DILocation(line: 1061, column: 9, scope: !2115)
!2190 = !DILocation(line: 1063, column: 15, scope: !2115)
!2191 = !DILocation(line: 1063, column: 33, scope: !2115)
!2192 = !DILocation(line: 1064, column: 9, scope: !2115)
!2193 = !DILocation(line: 1066, column: 15, scope: !2115)
!2194 = !DILocation(line: 1066, column: 31, scope: !2115)
!2195 = !DILocation(line: 1067, column: 74, scope: !2115)
!2196 = !DILocation(line: 1067, column: 9, scope: !2115)
!2197 = !DILocation(line: 1068, column: 39, scope: !2115)
!2198 = !DILocation(line: 1068, column: 9, scope: !2115)
!2199 = !DILocation(line: 1069, column: 9, scope: !2115)
!2200 = !DILocation(line: 1073, column: 1, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2097, file: !3, discriminator: 2)
!2202 = distinct !DISubprogram(name: "delete_last_device_from_vm", scope: !3, file: !3, line: 1079, type: !1742, isLocal: false, isDefinition: true, scopeLine: 1080, isOptimized: true, unit: !2, variables: !2203)
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "mac_addr", scope: !2202, file: !3, line: 1081, type: !476)
!2205 = !DILocalVariable(name: "flag", scope: !2202, file: !3, line: 1082, type: !356)
!2206 = !DILocation(line: 1081, column: 5, scope: !2202)
!2207 = !DILocation(line: 1081, column: 15, scope: !2202)
!2208 = !DILocation(line: 1082, column: 8, scope: !2202)
!2209 = !DILocation(line: 1083, column: 57, scope: !2202)
!2210 = !DILocation(line: 1083, column: 12, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2202, file: !3, discriminator: 1)
!2212 = !DILocation(line: 1084, column: 9, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 1084, column: 9)
!2214 = !DILocation(line: 1084, column: 9, scope: !2202)
!2215 = !DILocation(line: 1085, column: 35, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 1084, column: 15)
!2217 = !DILocation(line: 1085, column: 9, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2216, file: !3, discriminator: 1)
!2219 = !DILocation(line: 1086, column: 5, scope: !2216)
!2220 = !DILocation(line: 1089, column: 1, scope: !2202)
!2221 = !DILocation(line: 1088, column: 5, scope: !2202)
!2222 = distinct !DISubprogram(name: "connect_last_device_from_vm", scope: !3, file: !3, line: 1093, type: !1742, isLocal: false, isDefinition: true, scopeLine: 1094, isOptimized: true, unit: !2, variables: !2223)
!2223 = !{!2224, !2225}
!2224 = !DILocalVariable(name: "mac_addr", scope: !2222, file: !3, line: 1095, type: !476)
!2225 = !DILocalVariable(name: "flag", scope: !2222, file: !3, line: 1096, type: !356)
!2226 = !DILocation(line: 1095, column: 5, scope: !2222)
!2227 = !DILocation(line: 1095, column: 15, scope: !2222)
!2228 = !DILocation(line: 1096, column: 8, scope: !2222)
!2229 = !DILocation(line: 1097, column: 57, scope: !2222)
!2230 = !DILocation(line: 1097, column: 12, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2222, file: !3, discriminator: 1)
!2232 = !DILocation(line: 1098, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1098, column: 9)
!2234 = !DILocation(line: 1098, column: 9, scope: !2222)
!2235 = !DILocation(line: 1100, column: 9, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 1098, column: 15)
!2237 = !DILocation(line: 1101, column: 9, scope: !2236)
!2238 = !DILocation(line: 1102, column: 9, scope: !2236)
!2239 = !DILocation(line: 1103, column: 5, scope: !2236)
!2240 = !DILocation(line: 1106, column: 1, scope: !2222)
!2241 = !DILocation(line: 1105, column: 5, scope: !2222)
!2242 = distinct !DISubprogram(name: "get_remote_device_info_from_vm", scope: !3, file: !3, line: 1108, type: !874, isLocal: false, isDefinition: true, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!2243 = !DILocation(line: 1111, column: 57, scope: !2242)
!2244 = !DILocation(line: 1111, column: 79, scope: !2242)
!2245 = !DILocation(line: 1111, column: 99, scope: !2242)
!2246 = !DILocation(line: 1110, column: 39, scope: !2242)
!2247 = !DILocation(line: 1110, column: 37, scope: !2242)
!2248 = !DILocation(line: 1112, column: 1, scope: !2242)
!2249 = distinct !DISubprogram(name: "get_current_poweron_memory_search_index", scope: !3, file: !3, line: 1114, type: !838, isLocal: false, isDefinition: true, scopeLine: 1115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2250)
!2250 = !{!2251, !2252}
!2251 = !DILocalVariable(name: "temp_mac_addr", arg: 1, scope: !2249, file: !3, line: 1114, type: !355)
!2252 = !DILocalVariable(name: "invalid_addr", scope: !2249, file: !3, line: 1116, type: !458)
!2253 = !DILocation(line: 1114, column: 48, scope: !2249)
!2254 = !DILocation(line: 1116, column: 8, scope: !2249)
!2255 = !DILocation(line: 1119, column: 9, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1119, column: 9)
!2257 = !DILocation(line: 1119, column: 23, scope: !2256)
!2258 = !DILocation(line: 1120, column: 20, scope: !2256)
!2259 = !DILocation(line: 1120, column: 41, scope: !2256)
!2260 = !DILocation(line: 1120, column: 46, scope: !2256)
!2261 = !DILocation(line: 1122, column: 73, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1120, column: 88)
!2263 = !DILocation(line: 1121, column: 9, scope: !2262)
!2264 = !DILocation(line: 1124, column: 14, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1124, column: 13)
!2266 = !DILocation(line: 1124, column: 13, scope: !2262)
!2267 = !DILocation(line: 1125, column: 44, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 1124, column: 54)
!2269 = !DILocation(line: 1136, column: 23, scope: !2249)
!2270 = !DILocation(line: 1136, column: 5, scope: !2249)
!2271 = distinct !DISubprogram(name: "get_mac_memory_by_index", scope: !3, file: !3, line: 1139, type: !2272, isLocal: false, isDefinition: true, scopeLine: 1140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!355, !356}
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "index", arg: 1, scope: !2271, file: !3, line: 1139, type: !356)
!2276 = !DILocation(line: 1139, column: 32, scope: !2271)
!2277 = !DILocation(line: 1141, column: 9, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 1141, column: 9)
!2279 = !DILocation(line: 1141, column: 20, scope: !2278)
!2280 = !DILocation(line: 1142, column: 54, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1141, column: 35)
!2282 = !DILocation(line: 1142, column: 16, scope: !2281)
!2283 = !DILocation(line: 1145, column: 1, scope: !2271)
!2284 = distinct !DISubprogram(name: "clear_current_poweron_memory_search_index", scope: !3, file: !3, line: 1147, type: !554, isLocal: false, isDefinition: true, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2285)
!2285 = !{!2286}
!2286 = !DILocalVariable(name: "inc", arg: 1, scope: !2284, file: !3, line: 1147, type: !356)
!2287 = !DILocation(line: 1147, column: 51, scope: !2284)
!2288 = !DILocation(line: 1149, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1149, column: 9)
!2290 = !DILocation(line: 1149, column: 9, scope: !2284)
!2291 = !DILocation(line: 1150, column: 24, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 1150, column: 13)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 1149, column: 14)
!2294 = !DILocation(line: 1150, column: 13, scope: !2292)
!2295 = !DILocation(line: 1150, column: 13, scope: !2293)
!2296 = !DILocation(line: 1151, column: 44, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1150, column: 46)
!2298 = !DILocation(line: 1152, column: 9, scope: !2297)
!2299 = !DILocation(line: 1154, column: 41, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 1153, column: 12)
!2301 = !DILocation(line: 1156, column: 1, scope: !2284)
!2302 = distinct !DISubprogram(name: "user_cmd_timer_init", scope: !3, file: !3, line: 1158, type: !874, isLocal: false, isDefinition: true, scopeLine: 1159, isOptimized: true, unit: !2, variables: !2303)
!2303 = !{!2304, !2305, !2306, !2307}
!2304 = !DILocalVariable(name: "phone_sound_ctrl_flag_check", scope: !2302, file: !3, line: 1160, type: !356)
!2305 = !DILocalVariable(name: "tws_host_timer_cnt_check", scope: !2302, file: !3, line: 1161, type: !356)
!2306 = !DILocalVariable(name: "connect_a2dp_w_phone_only_conn_hfp_check", scope: !2302, file: !3, line: 1162, type: !356)
!2307 = !DILocalVariable(name: "a2dp_conn_send_discover_cnt_check", scope: !2302, file: !3, line: 1163, type: !356)
!2308 = !DILocation(line: 207, column: 36, scope: !566, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 1160, column: 38, scope: !2302)
!2310 = !DILocation(line: 207, column: 63, scope: !566, inlinedAt: !2309)
!2311 = !DILocation(line: 208, column: 56, scope: !581, inlinedAt: !2309)
!2312 = !DILocation(line: 209, column: 9, scope: !581, inlinedAt: !2309)
!2313 = !DILocation(line: 1160, column: 8, scope: !2302)
!2314 = !DILocation(line: 217, column: 20, scope: !586, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 1161, column: 35, scope: !2302)
!2316 = !DILocation(line: 217, column: 39, scope: !586, inlinedAt: !2315)
!2317 = !DILocation(line: 217, column: 9, scope: !584, inlinedAt: !2315)
!2318 = !DILocation(line: 218, column: 38, scope: !591, inlinedAt: !2315)
!2319 = !DILocation(line: 219, column: 9, scope: !591, inlinedAt: !2315)
!2320 = !DILocation(line: 1162, column: 51, scope: !2302)
!2321 = !DILocation(line: 1162, column: 8, scope: !2302)
!2322 = !DILocation(line: 1163, column: 44, scope: !2302)
!2323 = !DILocation(line: 1163, column: 8, scope: !2302)
!2324 = !DILocation(line: 1165, column: 44, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1165, column: 9)
!2326 = !DILocation(line: 1172, column: 39, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1172, column: 9)
!2328 = !DILocation(line: 1172, column: 47, scope: !2327)
!2329 = !DILocation(line: 1172, column: 9, scope: !2302)
!2330 = !DILocation(line: 1173, column: 56, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 1172, column: 53)
!2332 = !DILocation(line: 1174, column: 47, scope: !2331)
!2333 = !{!568, !572, i64 192}
!2334 = !DILocation(line: 1175, column: 9, scope: !2331)
!2335 = !DILocation(line: 1176, column: 5, scope: !2331)
!2336 = !DILocation(line: 1177, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1177, column: 9)
!2338 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 1176, column: 12)
!2339 = !DILocation(line: 1177, column: 9, scope: !2338)
!2340 = !DILocation(line: 1177, column: 9, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2337, file: !3, discriminator: 1)
!2342 = !DILocation(line: 1179, column: 1, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2302, file: !3, discriminator: 1)
!2344 = distinct !DISubprogram(name: "user_cmd_timeout_check", scope: !3, file: !3, line: 226, type: !2345, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2348)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 32)
!2348 = !{!2349, !2350, !2351, !2352, !2353}
!2349 = !DILocalVariable(name: "ts", arg: 1, scope: !2344, file: !3, line: 226, type: !2347)
!2350 = !DILocalVariable(name: "phone_sound_ctrl_flag_check", scope: !2344, file: !3, line: 230, type: !356)
!2351 = !DILocalVariable(name: "tws_host_timer_cnt_check", scope: !2344, file: !3, line: 231, type: !356)
!2352 = !DILocalVariable(name: "connect_a2dp_w_phone_only_conn_hfp_check", scope: !2344, file: !3, line: 232, type: !356)
!2353 = !DILocalVariable(name: "a2dp_conn_send_discover_cnt_check", scope: !2344, file: !3, line: 233, type: !356)
!2354 = !DILocation(line: 226, column: 60, scope: !2344)
!2355 = !DILocation(line: 207, column: 36, scope: !566, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 230, column: 38, scope: !2344)
!2357 = !DILocation(line: 207, column: 63, scope: !566, inlinedAt: !2356)
!2358 = !DILocation(line: 208, column: 56, scope: !581, inlinedAt: !2356)
!2359 = !DILocation(line: 209, column: 9, scope: !581, inlinedAt: !2356)
!2360 = !DILocation(line: 230, column: 8, scope: !2344)
!2361 = !DILocation(line: 217, column: 20, scope: !586, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 231, column: 35, scope: !2344)
!2363 = !DILocation(line: 217, column: 39, scope: !586, inlinedAt: !2362)
!2364 = !DILocation(line: 217, column: 9, scope: !584, inlinedAt: !2362)
!2365 = !DILocation(line: 218, column: 38, scope: !591, inlinedAt: !2362)
!2366 = !DILocation(line: 219, column: 9, scope: !591, inlinedAt: !2362)
!2367 = !DILocation(line: 232, column: 51, scope: !2344)
!2368 = !DILocation(line: 232, column: 8, scope: !2344)
!2369 = !DILocation(line: 233, column: 44, scope: !2344)
!2370 = !DILocation(line: 233, column: 8, scope: !2344)
!2371 = !DILocation(line: 236, column: 44, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 236, column: 9)
!2373 = !DILocation(line: 241, column: 9, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 239, column: 49)
!2375 = !DILocation(line: 243, column: 5, scope: !2374)
!2376 = !DILocation(line: 245, column: 1, scope: !2344)
!2377 = distinct !DISubprogram(name: "remove_user_cmd_timer", scope: !3, file: !3, line: 1181, type: !874, isLocal: false, isDefinition: true, scopeLine: 1182, isOptimized: true, unit: !2, variables: !564)
!2378 = !DILocation(line: 1183, column: 39, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1183, column: 9)
!2380 = !DILocation(line: 1183, column: 9, scope: !2379)
!2381 = !DILocation(line: 1183, column: 9, scope: !2377)
!2382 = !DILocation(line: 1184, column: 9, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 1183, column: 48)
!2384 = !DILocation(line: 1185, column: 9, scope: !2383)
!2385 = !DILocation(line: 1187, column: 5, scope: !2383)
!2386 = !DILocation(line: 1188, column: 1, scope: !2377)
!2387 = !DILocation(line: 1193, column: 39, scope: !1476)
!2388 = !DILocation(line: 1196, column: 9, scope: !1482)
!2389 = !DILocation(line: 1198, column: 1, scope: !1477)
!2390 = distinct !DISubprogram(name: "user_cmd_ctrl_init", scope: !3, file: !3, line: 1211, type: !2391, isLocal: false, isDefinition: true, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !354}
!2393 = !{!2394}
!2394 = !DILocalVariable(name: "var", arg: 1, scope: !2390, file: !3, line: 1211, type: !354)
!2395 = !DILocation(line: 1211, column: 31, scope: !2390)
!2396 = !DILocation(line: 1213, column: 5, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 1213, column: 5)
!2398 = !DILocation(line: 1213, column: 5, scope: !2390)
!2399 = !DILocation(line: 1213, column: 5, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2397, file: !3, discriminator: 1)
!2401 = !DILocation(line: 1214, column: 16, scope: !2390)
!2402 = !DILocation(line: 1216, column: 26, scope: !2390)
!2403 = !DILocation(line: 1218, column: 5, scope: !2390)
!2404 = !DILocation(line: 1220, column: 34, scope: !2390)
!2405 = !DILocation(line: 1222, column: 30, scope: !2390)
!2406 = !DILocation(line: 1224, column: 30, scope: !2390)
!2407 = !DILocation(line: 1225, column: 30, scope: !2390)
!2408 = !DILocation(line: 1227, column: 5, scope: !2390)
!2409 = !DILocation(line: 1233, column: 1, scope: !2390)
!2410 = distinct !DISubprogram(name: "user_operation_control", scope: !3, file: !3, line: 2348, type: !467, isLocal: true, isDefinition: true, scopeLine: 2349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2423}
!2412 = !DILocalVariable(name: "loop", arg: 1, scope: !2410, file: !3, line: 2348, type: !469)
!2413 = !DILocalVariable(name: "device_type", scope: !2410, file: !3, line: 2350, type: !356)
!2414 = !DILocalVariable(name: "cmd", scope: !2410, file: !3, line: 2351, type: !1298)
!2415 = !DILocalVariable(name: "conn", scope: !2410, file: !3, line: 2352, type: !610)
!2416 = !DILocalVariable(name: "connect_uuid", scope: !2410, file: !3, line: 2353, type: !374)
!2417 = !DILocalVariable(name: "mac_addr", scope: !2410, file: !3, line: 2354, type: !458)
!2418 = !DILocalVariable(name: "i", scope: !2410, file: !3, line: 2355, type: !356)
!2419 = !DILocalVariable(name: "flag", scope: !2420, file: !3, line: 2443, type: !356)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 2442, column: 19)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2442, column: 13)
!2422 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 2432, column: 18)
!2423 = !DILocalVariable(name: "temp_mac_addr", scope: !2424, file: !3, line: 2478, type: !476)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 2477, column: 92)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2477, column: 13)
!2426 = !DILocation(line: 2348, column: 53, scope: !2410)
!2427 = !DILocation(line: 2350, column: 8, scope: !2410)
!2428 = !DILocation(line: 2353, column: 9, scope: !2410)
!2429 = !DILocation(line: 2354, column: 5, scope: !2410)
!2430 = !DILocation(line: 2354, column: 8, scope: !2410)
!2431 = !DILocation(line: 2356, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 2356, column: 9)
!2433 = !{!569, !570, i64 0}
!2434 = !DILocation(line: 2356, column: 45, scope: !2432)
!2435 = !DILocation(line: 2356, column: 30, scope: !2432)
!2436 = !DILocation(line: 2356, column: 9, scope: !2410)
!2437 = !DILocation(line: 2356, column: 9, scope: !2432)
!2438 = !DILocation(line: 2358, column: 15, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 2357, column: 12)
!2440 = !DILocation(line: 2351, column: 19, scope: !2410)
!2441 = !DILocation(line: 2361, column: 30, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 2361, column: 9)
!2443 = !DILocation(line: 2361, column: 9, scope: !2442)
!2444 = !DILocation(line: 2362, column: 25, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 2362, column: 13)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 2361, column: 56)
!2447 = !{!569, !570, i64 86}
!2448 = !DILocation(line: 2362, column: 57, scope: !2445)
!2449 = !DILocation(line: 2362, column: 42, scope: !2445)
!2450 = !DILocation(line: 2362, column: 13, scope: !2446)
!2451 = !DILocation(line: 2362, column: 13, scope: !2445)
!2452 = !DILocation(line: 2364, column: 19, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 2363, column: 16)
!2454 = !DILocation(line: 2387, column: 12, scope: !2410)
!2455 = !DILocation(line: 2352, column: 18, scope: !2410)
!2456 = !DILocation(line: 2388, column: 9, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 2388, column: 9)
!2458 = !DILocation(line: 2388, column: 9, scope: !2410)
!2459 = !DILocation(line: 2389, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 2388, column: 15)
!2461 = !DILocation(line: 2390, column: 13, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 2390, column: 13)
!2463 = !{!574, !574, i64 0}
!2464 = !DILocation(line: 2390, column: 13, scope: !2460)
!2465 = !DILocation(line: 2391, column: 21, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 2391, column: 17)
!2467 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 2390, column: 45)
!2468 = !DILocation(line: 2391, column: 17, scope: !2467)
!2469 = !DILocation(line: 2392, column: 45, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 2391, column: 44)
!2471 = !DILocation(line: 2392, column: 17, scope: !2470)
!2472 = !DILocation(line: 2393, column: 13, scope: !2470)
!2473 = !DILocation(line: 2394, column: 17, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 2393, column: 20)
!2475 = !DILocation(line: 2432, column: 5, scope: !2410)
!2476 = !DILocation(line: 2399, column: 40, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 2399, column: 9)
!2478 = !DILocation(line: 2400, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 2399, column: 73)
!2480 = !DILocation(line: 2401, column: 5, scope: !2479)
!2481 = !DILocation(line: 2401, column: 47, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2483, file: !3, discriminator: 1)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 2401, column: 16)
!2484 = !DILocation(line: 2403, column: 13, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 2403, column: 13)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 2401, column: 80)
!2487 = !DILocation(line: 2403, column: 34, scope: !2485)
!2488 = !DILocation(line: 2403, column: 37, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2485, file: !3, discriminator: 1)
!2490 = !DILocation(line: 2403, column: 57, scope: !2489)
!2491 = !DILocation(line: 2404, column: 46, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 2404, column: 17)
!2493 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 2403, column: 73)
!2494 = !DILocation(line: 2403, column: 13, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2486, file: !3, discriminator: 1)
!2496 = !DILocation(line: 2405, column: 37, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 2404, column: 84)
!2498 = !DILocation(line: 2405, column: 64, scope: !2497)
!2499 = !DILocation(line: 2406, column: 33, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 2406, column: 21)
!2501 = !DILocation(line: 2406, column: 21, scope: !2497)
!2502 = !DILocation(line: 2407, column: 21, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 2406, column: 50)
!2504 = !DILocation(line: 2407, column: 21, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2506, file: !3, discriminator: 1)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 2407, column: 21)
!2507 = !DILocation(line: 2410, column: 21, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 2409, column: 24)
!2509 = !DILocation(line: 2410, column: 21, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2511, file: !3, discriminator: 1)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 2410, column: 21)
!2512 = !DILocation(line: 2413, column: 13, scope: !2497)
!2513 = !DILocation(line: 2416, column: 48, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2515, file: !3, discriminator: 1)
!2515 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 2416, column: 16)
!2516 = !DILocation(line: 2418, column: 46, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2518, file: !3, discriminator: 1)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 2418, column: 16)
!2519 = !DILocalVariable(name: "error", scope: !2520, file: !3, line: 1808, type: !359)
!2520 = distinct !DISubprogram(name: "user_hid_send_cmd", scope: !3, file: !3, line: 1806, type: !2521, isLocal: true, isDefinition: true, scopeLine: 1807, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!359, !610, !380}
!2523 = !{!2524, !2525, !2519}
!2524 = !DILocalVariable(name: "conn", arg: 1, scope: !2520, file: !3, line: 1806, type: !610)
!2525 = !DILocalVariable(name: "cmd", arg: 2, scope: !2520, file: !3, line: 1806, type: !380)
!2526 = !DILocation(line: 1808, column: 9, scope: !2520, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 2419, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 2418, column: 78)
!2529 = !DILocation(line: 1810, column: 14, scope: !2530, inlinedAt: !2527)
!2530 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1810, column: 9)
!2531 = !DILocation(line: 1810, column: 9, scope: !2520, inlinedAt: !2527)
!2532 = !DILocation(line: 1811, column: 17, scope: !2533, inlinedAt: !2527)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 1811, column: 13)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 1810, column: 23)
!2535 = !DILocation(line: 1811, column: 39, scope: !2533, inlinedAt: !2527)
!2536 = !DILocation(line: 1811, column: 42, scope: !2537, inlinedAt: !2527)
!2537 = !DILexicalBlockFile(scope: !2533, file: !3, discriminator: 1)
!2538 = !DILocation(line: 1811, column: 62, scope: !2537, inlinedAt: !2527)
!2539 = !DILocation(line: 1811, column: 13, scope: !2540, inlinedAt: !2527)
!2540 = !DILexicalBlockFile(scope: !2534, file: !3, discriminator: 1)
!2541 = !DILocation(line: 1812, column: 13, scope: !2542, inlinedAt: !2527)
!2542 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 1811, column: 84)
!2543 = !DILocation(line: 1813, column: 13, scope: !2542, inlinedAt: !2527)
!2544 = !DILocation(line: 1818, column: 29, scope: !2545, inlinedAt: !2527)
!2545 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1818, column: 9)
!2546 = !{!2547, !572, i64 4}
!2547 = !{!"profile_cmd_handle", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20, !572, i64 24, !572, i64 28, !572, i64 32, !572, i64 36, !572, i64 40}
!2548 = !DILocation(line: 1818, column: 9, scope: !2545, inlinedAt: !2527)
!2549 = !DILocation(line: 1818, column: 9, scope: !2520, inlinedAt: !2527)
!2550 = !DILocation(line: 1819, column: 9, scope: !2551, inlinedAt: !2527)
!2551 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1818, column: 43)
!2552 = !DILocation(line: 1821, column: 46, scope: !2553, inlinedAt: !2527)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1819, column: 22)
!2554 = !DILocation(line: 1821, column: 13, scope: !2553, inlinedAt: !2527)
!2555 = !DILocation(line: 1822, column: 13, scope: !2553, inlinedAt: !2527)
!2556 = !DILocation(line: 1824, column: 17, scope: !2557, inlinedAt: !2527)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1824, column: 17)
!2558 = !DILocation(line: 1824, column: 37, scope: !2557, inlinedAt: !2527)
!2559 = !DILocation(line: 1824, column: 17, scope: !2553, inlinedAt: !2527)
!2560 = !DILocation(line: 1825, column: 35, scope: !2561, inlinedAt: !2527)
!2561 = !DILexicalBlockFile(scope: !2562, file: !3, discriminator: 1)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1825, column: 21)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1824, column: 59)
!2564 = !DILocation(line: 1825, column: 29, scope: !2561, inlinedAt: !2527)
!2565 = !DILocation(line: 1825, column: 21, scope: !2566, inlinedAt: !2527)
!2566 = !DILexicalBlockFile(scope: !2563, file: !3, discriminator: 1)
!2567 = !DILocation(line: 1827, column: 21, scope: !2568, inlinedAt: !2527)
!2568 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1825, column: 55)
!2569 = !DILocation(line: 1828, column: 17, scope: !2568, inlinedAt: !2527)
!2570 = !DILocation(line: 1830, column: 50, scope: !2571, inlinedAt: !2527)
!2571 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1829, column: 20)
!2572 = !DILocation(line: 1830, column: 17, scope: !2571, inlinedAt: !2527)
!2573 = !DILocation(line: 1836, column: 46, scope: !2553, inlinedAt: !2527)
!2574 = !DILocation(line: 1836, column: 13, scope: !2553, inlinedAt: !2527)
!2575 = !DILocation(line: 1837, column: 13, scope: !2553, inlinedAt: !2527)
!2576 = !DILocation(line: 1839, column: 46, scope: !2553, inlinedAt: !2527)
!2577 = !DILocation(line: 1839, column: 13, scope: !2553, inlinedAt: !2527)
!2578 = !DILocation(line: 1840, column: 13, scope: !2553, inlinedAt: !2527)
!2579 = !DILocation(line: 1842, column: 46, scope: !2553, inlinedAt: !2527)
!2580 = !DILocation(line: 1842, column: 13, scope: !2553, inlinedAt: !2527)
!2581 = !DILocation(line: 1843, column: 13, scope: !2553, inlinedAt: !2527)
!2582 = !DILocation(line: 1845, column: 46, scope: !2553, inlinedAt: !2527)
!2583 = !DILocation(line: 1845, column: 13, scope: !2553, inlinedAt: !2527)
!2584 = !DILocation(line: 1846, column: 13, scope: !2553, inlinedAt: !2527)
!2585 = !DILocation(line: 1848, column: 46, scope: !2553, inlinedAt: !2527)
!2586 = !DILocation(line: 1848, column: 13, scope: !2553, inlinedAt: !2527)
!2587 = !DILocation(line: 1849, column: 13, scope: !2553, inlinedAt: !2527)
!2588 = !DILocation(line: 1851, column: 46, scope: !2553, inlinedAt: !2527)
!2589 = !DILocation(line: 1851, column: 13, scope: !2553, inlinedAt: !2527)
!2590 = !DILocation(line: 1852, column: 13, scope: !2553, inlinedAt: !2527)
!2591 = !DILocation(line: 1854, column: 46, scope: !2553, inlinedAt: !2527)
!2592 = !DILocation(line: 1854, column: 13, scope: !2553, inlinedAt: !2527)
!2593 = !DILocation(line: 1855, column: 13, scope: !2553, inlinedAt: !2527)
!2594 = !DILocation(line: 1857, column: 46, scope: !2553, inlinedAt: !2527)
!2595 = !DILocation(line: 1857, column: 13, scope: !2553, inlinedAt: !2527)
!2596 = !DILocation(line: 1858, column: 13, scope: !2553, inlinedAt: !2527)
!2597 = !DILocation(line: 2420, column: 46, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2599, file: !3, discriminator: 1)
!2599 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 2420, column: 16)
!2600 = !DILocalVariable(name: "error", scope: !2601, file: !3, line: 2042, type: !359)
!2601 = distinct !DISubprogram(name: "user_spp_send_cmd", scope: !3, file: !3, line: 2040, type: !2521, isLocal: true, isDefinition: true, scopeLine: 2041, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2602)
!2602 = !{!2603, !2604, !2600, !2605, !2614}
!2603 = !DILocalVariable(name: "conn", arg: 1, scope: !2601, file: !3, line: 2040, type: !610)
!2604 = !DILocalVariable(name: "cmd", arg: 2, scope: !2601, file: !3, line: 2040, type: !380)
!2605 = !DILocalVariable(name: "io_str", scope: !2601, file: !3, line: 2044, type: !2606)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "spp_ioctrl_str", file: !348, line: 38, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 32, size: 160, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2607, file: !348, line: 33, baseType: !476, size: 48)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_cid", scope: !2607, file: !348, line: 34, baseType: !356, size: 8, offset: 48)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2607, file: !348, line: 35, baseType: !359, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !2607, file: !348, line: 36, baseType: !359, size: 32, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !2607, file: !348, line: 37, baseType: !355, size: 32, offset: 128)
!2614 = !DILocalVariable(name: "flag1", scope: !2601, file: !3, line: 2045, type: !359)
!2615 = !DILocation(line: 2042, column: 9, scope: !2601, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 2421, column: 9, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 2420, column: 78)
!2618 = !DILocation(line: 2044, column: 5, scope: !2601, inlinedAt: !2616)
!2619 = !DILocation(line: 2045, column: 9, scope: !2601, inlinedAt: !2616)
!2620 = !DILocation(line: 2046, column: 14, scope: !2621, inlinedAt: !2616)
!2621 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 2046, column: 9)
!2622 = !DILocation(line: 2046, column: 9, scope: !2601, inlinedAt: !2616)
!2623 = !DILocation(line: 2048, column: 32, scope: !2624, inlinedAt: !2616)
!2624 = !DILexicalBlockFile(scope: !2625, file: !3, discriminator: 2)
!2625 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 2048, column: 16)
!2626 = !DILocation(line: 2048, column: 26, scope: !2624, inlinedAt: !2616)
!2627 = !DILocation(line: 2048, column: 45, scope: !2624, inlinedAt: !2616)
!2628 = !DILocation(line: 2048, column: 16, scope: !2629, inlinedAt: !2616)
!2629 = !DILexicalBlockFile(scope: !2621, file: !3, discriminator: 2)
!2630 = !DILocation(line: 2051, column: 41, scope: !2631, inlinedAt: !2616)
!2631 = !DILexicalBlockFile(scope: !2632, file: !3, discriminator: 1)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 2051, column: 13)
!2633 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 2048, column: 56)
!2634 = !DILocation(line: 2057, column: 38, scope: !2635, inlinedAt: !2616)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 2056, column: 21)
!2636 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 2056, column: 9)
!2637 = !DILocation(line: 2058, column: 38, scope: !2635, inlinedAt: !2616)
!2638 = !DILocation(line: 2060, column: 9, scope: !2635, inlinedAt: !2616)
!2639 = !DILocation(line: 2062, column: 29, scope: !2640, inlinedAt: !2616)
!2640 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 2062, column: 9)
!2641 = !{!2547, !572, i64 8}
!2642 = !DILocation(line: 2062, column: 9, scope: !2640, inlinedAt: !2616)
!2643 = !DILocation(line: 2063, column: 32, scope: !2644, inlinedAt: !2616)
!2644 = !DILexicalBlockFile(scope: !2640, file: !3, discriminator: 1)
!2645 = !DILocation(line: 2063, column: 12, scope: !2644, inlinedAt: !2616)
!2646 = !DILocation(line: 2063, column: 9, scope: !2640, inlinedAt: !2616)
!2647 = !DILocation(line: 2064, column: 9, scope: !2648, inlinedAt: !2616)
!2648 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 2063, column: 46)
!2649 = !{!2650, !574, i64 8}
!2650 = !{!"", !570, i64 0, !570, i64 6, !574, i64 8, !574, i64 12, !572, i64 16}
!2651 = !DILocation(line: 2071, column: 13, scope: !2652, inlinedAt: !2616)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 2064, column: 22)
!2653 = !DILocation(line: 2072, column: 13, scope: !2652, inlinedAt: !2616)
!2654 = !DILocation(line: 2075, column: 30, scope: !2655, inlinedAt: !2616)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 2075, column: 17)
!2656 = !DILocation(line: 2075, column: 18, scope: !2655, inlinedAt: !2616)
!2657 = !DILocation(line: 2075, column: 17, scope: !2652, inlinedAt: !2616)
!2658 = !DILocation(line: 2083, column: 43, scope: !2652, inlinedAt: !2616)
!2659 = !DILocation(line: 2083, column: 20, scope: !2652, inlinedAt: !2616)
!2660 = !DILocation(line: 2083, column: 29, scope: !2652, inlinedAt: !2616)
!2661 = !{!2650, !572, i64 16}
!2662 = !DILocation(line: 2084, column: 31, scope: !2652, inlinedAt: !2616)
!2663 = !DILocation(line: 2084, column: 20, scope: !2652, inlinedAt: !2616)
!2664 = !DILocation(line: 2084, column: 29, scope: !2652, inlinedAt: !2616)
!2665 = !{!2650, !574, i64 12}
!2666 = !DILocation(line: 2085, column: 13, scope: !2652, inlinedAt: !2616)
!2667 = !DILocation(line: 2086, column: 13, scope: !2652, inlinedAt: !2616)
!2668 = !DILocation(line: 2092, column: 19, scope: !2669, inlinedAt: !2616)
!2669 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 2092, column: 13)
!2670 = !DILocation(line: 2092, column: 13, scope: !2648, inlinedAt: !2616)
!2671 = !DILocation(line: 2093, column: 21, scope: !2672, inlinedAt: !2616)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 2092, column: 25)
!2673 = !DILocation(line: 2094, column: 9, scope: !2672, inlinedAt: !2616)
!2674 = !DILocation(line: 2095, column: 21, scope: !2675, inlinedAt: !2616)
!2675 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 2094, column: 16)
!2676 = !DILocation(line: 2097, column: 28, scope: !2677, inlinedAt: !2616)
!2677 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 2097, column: 13)
!2678 = !DILocation(line: 2097, column: 13, scope: !2648, inlinedAt: !2616)
!2679 = !DILocation(line: 2098, column: 42, scope: !2680, inlinedAt: !2616)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 2097, column: 38)
!2681 = !DILocation(line: 2099, column: 42, scope: !2680, inlinedAt: !2616)
!2682 = !DILocation(line: 2100, column: 13, scope: !2680, inlinedAt: !2616)
!2683 = !DILocation(line: 2101, column: 9, scope: !2680, inlinedAt: !2616)
!2684 = !DILocation(line: 2102, column: 13, scope: !2685, inlinedAt: !2616)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 2102, column: 13)
!2686 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 2101, column: 16)
!2687 = !DILocation(line: 2102, column: 13, scope: !2686, inlinedAt: !2616)
!2688 = !DILocation(line: 2102, column: 13, scope: !2689, inlinedAt: !2616)
!2689 = !DILexicalBlockFile(scope: !2685, file: !3, discriminator: 1)
!2690 = !DILocation(line: 2104, column: 13, scope: !2686, inlinedAt: !2616)
!2691 = !DILocation(line: 2111, column: 1, scope: !2601, inlinedAt: !2616)
!2692 = !DILocation(line: 2422, column: 5, scope: !2617)
!2693 = !DILocation(line: 274, column: 19, scope: !2694, inlinedAt: !2701)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 274, column: 13)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 273, column: 33)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 273, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 273, column: 5)
!2698 = distinct !DISubprogram(name: "connection_cancel_all", scope: !3, file: !3, line: 270, type: !874, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2699)
!2699 = !{!2700}
!2700 = !DILocalVariable(name: "conn", scope: !2698, file: !3, line: 272, type: !610)
!2701 = distinct !DILocation(line: 2617, column: 9, scope: !2422)
!2702 = !DILocation(line: 2355, column: 8, scope: !2410)
!2703 = !DILocation(line: 2436, column: 13, scope: !2422)
!2704 = !DILocation(line: 2437, column: 13, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 2436, column: 19)
!2706 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2436, column: 13)
!2707 = !DILocation(line: 2438, column: 9, scope: !2705)
!2708 = !DILocation(line: 2442, column: 13, scope: !2422)
!2709 = !DILocation(line: 2443, column: 23, scope: !2420)
!2710 = !DILocation(line: 2443, column: 16, scope: !2420)
!2711 = !DILocation(line: 2444, column: 22, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 2444, column: 17)
!2713 = !DILocation(line: 2444, column: 17, scope: !2420)
!2714 = !DILocation(line: 2446, column: 34, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 2444, column: 31)
!2716 = !DILocation(line: 2446, column: 17, scope: !2715)
!2717 = !DILocation(line: 2448, column: 13, scope: !2715)
!2718 = !DILocation(line: 2452, column: 13, scope: !2422)
!2719 = !DILocation(line: 2453, column: 23, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 2453, column: 17)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 2452, column: 19)
!2722 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2452, column: 13)
!2723 = !DILocation(line: 2453, column: 36, scope: !2720)
!2724 = !DILocation(line: 2453, column: 17, scope: !2721)
!2725 = !DILocation(line: 2455, column: 17, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 2453, column: 49)
!2727 = !DILocation(line: 2456, column: 13, scope: !2726)
!2728 = !DILocation(line: 2457, column: 17, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 2456, column: 20)
!2730 = !DILocation(line: 2463, column: 13, scope: !2422)
!2731 = !DILocation(line: 2464, column: 13, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 2463, column: 19)
!2733 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2463, column: 13)
!2734 = !DILocation(line: 2465, column: 9, scope: !2732)
!2735 = !DILocation(line: 794, column: 24, scope: !1383, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 2470, column: 13, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2470, column: 13)
!2738 = !DILocation(line: 794, column: 63, scope: !1383, inlinedAt: !2736)
!2739 = !DILocation(line: 794, column: 42, scope: !1383, inlinedAt: !2736)
!2740 = !DILocation(line: 2473, column: 13, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2473, column: 13)
!2742 = !DILocation(line: 2470, column: 13, scope: !2422)
!2743 = !DILocation(line: 2477, column: 24, scope: !2425)
!2744 = !DILocation(line: 2477, column: 45, scope: !2425)
!2745 = !DILocation(line: 2477, column: 50, scope: !2425)
!2746 = !DILocation(line: 2478, column: 13, scope: !2424)
!2747 = !DILocation(line: 2478, column: 23, scope: !2424)
!2748 = !DILocation(line: 2480, column: 71, scope: !2424)
!2749 = !DILocation(line: 2480, column: 92, scope: !2424)
!2750 = !DILocation(line: 2480, column: 13, scope: !2424)
!2751 = !DILocation(line: 2481, column: 44, scope: !2424)
!2752 = !DILocation(line: 2482, column: 20, scope: !2424)
!2753 = !DILocation(line: 2483, column: 18, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 2483, column: 17)
!2755 = !DILocation(line: 2483, column: 17, scope: !2424)
!2756 = !DILocation(line: 2484, column: 24, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 2483, column: 24)
!2758 = !DILocation(line: 2493, column: 13, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 2493, column: 13)
!2760 = !DILocation(line: 2493, column: 13, scope: !2424)
!2761 = !DILocation(line: 2486, column: 40, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 2486, column: 21)
!2763 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 2485, column: 20)
!2764 = !{!2765, !572, i64 8}
!2765 = !{!"user_interface_handler", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20, !572, i64 24, !572, i64 28, !572, i64 32, !572, i64 36, !572, i64 40, !572, i64 44, !572, i64 48, !572, i64 52, !572, i64 56}
!2766 = !DILocation(line: 2486, column: 21, scope: !2762)
!2767 = !DILocation(line: 2486, column: 21, scope: !2763)
!2768 = !DILocation(line: 2487, column: 21, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 2486, column: 64)
!2770 = !DILocation(line: 2488, column: 17, scope: !2769)
!2771 = !DILocation(line: 2489, column: 21, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 2488, column: 24)
!2773 = !DILocation(line: 2493, column: 13, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2759, file: !3, discriminator: 1)
!2775 = !DILocation(line: 2494, column: 13, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2777, file: !3, discriminator: 1)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 2494, column: 13)
!2778 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 2494, column: 13)
!2779 = !DILocation(line: 2494, column: 13, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2778, file: !3, discriminator: 1)
!2781 = !DILocation(line: 2494, column: 13, scope: !2782)
!2782 = !DILexicalBlockFile(scope: !2783, file: !3, discriminator: 2)
!2783 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 2494, column: 13)
!2784 = !DILocation(line: 2494, column: 13, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2786, file: !3, discriminator: 3)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 2494, column: 13)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 2494, column: 13)
!2788 = !DILocation(line: 2494, column: 13, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2786, file: !3, discriminator: 9)
!2790 = !DILocation(line: 2494, column: 13, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2786, file: !3, discriminator: 10)
!2792 = !DILocation(line: 2494, column: 13, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2794, file: !3, discriminator: 5)
!2794 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 2494, column: 13)
!2795 = !DILocation(line: 2494, column: 13, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2797, file: !3, discriminator: 6)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 2494, column: 13)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 2494, column: 13)
!2799 = !DILocation(line: 2495, column: 13, scope: !2424)
!2800 = !DILocalVariable(name: "conn", arg: 1, scope: !2801, file: !3, line: 1253, type: !610)
!2801 = distinct !DISubprogram(name: "start_connection", scope: !3, file: !3, line: 1253, type: !2802, isLocal: false, isDefinition: true, scopeLine: 1254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !610, !374}
!2804 = !{!2800, !2805}
!2805 = !DILocalVariable(name: "uuid", arg: 2, scope: !2801, file: !3, line: 1253, type: !374)
!2806 = !DILocation(line: 1253, column: 36, scope: !2801, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 2497, column: 13, scope: !2424)
!2808 = !DILocation(line: 1253, column: 46, scope: !2801, inlinedAt: !2807)
!2809 = !DILocation(line: 1255, column: 11, scope: !2801, inlinedAt: !2807)
!2810 = !DILocation(line: 1255, column: 29, scope: !2801, inlinedAt: !2807)
!2811 = !DILocation(line: 1257, column: 29, scope: !2812, inlinedAt: !2807)
!2812 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 1257, column: 9)
!2813 = !{!2547, !572, i64 32}
!2814 = !DILocation(line: 1257, column: 9, scope: !2812, inlinedAt: !2807)
!2815 = !DILocation(line: 1257, column: 9, scope: !2801, inlinedAt: !2807)
!2816 = !DILocation(line: 1261, column: 13, scope: !2817, inlinedAt: !2807)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1260, column: 16)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 1258, column: 13)
!2819 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1257, column: 43)
!2820 = !DILocation(line: 2498, column: 13, scope: !2424)
!2821 = !DILocation(line: 2499, column: 9, scope: !2425)
!2822 = !DILocation(line: 2500, column: 17, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 2500, column: 17)
!2824 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 2499, column: 16)
!2825 = !DILocation(line: 2500, column: 70, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2823, file: !3, discriminator: 1)
!2827 = !DILocation(line: 2500, column: 67, scope: !2823)
!2828 = !DILocation(line: 2500, column: 123, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2823, file: !3, discriminator: 2)
!2830 = !DILocation(line: 2501, column: 17, scope: !2823)
!2831 = !DILocation(line: 2501, column: 70, scope: !2826)
!2832 = !DILocation(line: 2501, column: 123, scope: !2829)
!2833 = !DILocation(line: 2503, column: 40, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 2503, column: 21)
!2835 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 2501, column: 174)
!2836 = !DILocation(line: 2503, column: 21, scope: !2834)
!2837 = !DILocation(line: 2503, column: 21, scope: !2835)
!2838 = !DILocation(line: 2504, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 2503, column: 64)
!2840 = !DILocation(line: 2505, column: 17, scope: !2839)
!2841 = !DILocation(line: 2506, column: 21, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 2505, column: 24)
!2843 = !DILocation(line: 2509, column: 17, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 2508, column: 20)
!2845 = !DILocation(line: 2514, column: 9, scope: !2422)
!2846 = !DILocation(line: 794, column: 24, scope: !1383, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 2516, column: 13, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2516, column: 13)
!2849 = !DILocation(line: 794, column: 63, scope: !1383, inlinedAt: !2847)
!2850 = !DILocation(line: 794, column: 42, scope: !1383, inlinedAt: !2847)
!2851 = !DILocation(line: 2519, column: 13, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2519, column: 13)
!2853 = !DILocation(line: 2516, column: 13, scope: !2422)
!2854 = !DILocation(line: 2523, column: 16, scope: !2422)
!2855 = !DILocation(line: 2524, column: 14, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2524, column: 13)
!2857 = !DILocation(line: 2524, column: 13, scope: !2422)
!2858 = !DILocation(line: 2525, column: 20, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 2524, column: 20)
!2860 = !DILocation(line: 2526, column: 22, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 2526, column: 17)
!2862 = !DILocation(line: 2526, column: 17, scope: !2859)
!2863 = !DILocation(line: 2527, column: 17, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 2527, column: 17)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 2526, column: 31)
!2866 = !DILocation(line: 2527, column: 17, scope: !2865)
!2867 = !DILocation(line: 2527, column: 17, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2864, file: !3, discriminator: 1)
!2869 = !DILocation(line: 2533, column: 9, scope: !2422)
!2870 = !DILocation(line: 2534, column: 9, scope: !2422)
!2871 = !DILocation(line: 2535, column: 9, scope: !2422)
!2872 = !DILocation(line: 2536, column: 9, scope: !2422)
!2873 = !DILocation(line: 2538, column: 24, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2538, column: 13)
!2875 = !DILocation(line: 2538, column: 13, scope: !2874)
!2876 = !DILocation(line: 2538, column: 13, scope: !2422)
!2877 = !DILocation(line: 2541, column: 9, scope: !2422)
!2878 = !DILocation(line: 2542, column: 9, scope: !2422)
!2879 = !DILocation(line: 2544, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2544, column: 9)
!2881 = !DILocation(line: 2544, column: 9, scope: !2422)
!2882 = !DILocation(line: 2544, column: 9, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !2880, file: !3, discriminator: 1)
!2884 = !DILocation(line: 2545, column: 31, scope: !2422)
!2885 = !DILocation(line: 2545, column: 51, scope: !2422)
!2886 = !DILocation(line: 2545, column: 9, scope: !2422)
!2887 = !DILocation(line: 2546, column: 9, scope: !2422)
!2888 = !DILocation(line: 2549, column: 13, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2549, column: 13)
!2890 = !DILocation(line: 2549, column: 40, scope: !2889)
!2891 = !DILocation(line: 2549, column: 13, scope: !2422)
!2892 = !DILocation(line: 2550, column: 31, scope: !2893)
!2893 = !DILexicalBlockFile(scope: !2894, file: !3, discriminator: 1)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 2550, column: 17)
!2895 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 2549, column: 46)
!2896 = !DILocation(line: 2550, column: 25, scope: !2893)
!2897 = !DILocation(line: 2550, column: 17, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2895, file: !3, discriminator: 1)
!2899 = !DILocation(line: 2551, column: 17, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 2550, column: 51)
!2901 = !DILocation(line: 2552, column: 13, scope: !2900)
!2902 = !DILocation(line: 2558, column: 9, scope: !2422)
!2903 = !DILocation(line: 2559, column: 9, scope: !2422)
!2904 = !DILocation(line: 2560, column: 9, scope: !2422)
!2905 = !DILocation(line: 2564, column: 9, scope: !2422)
!2906 = !DILocation(line: 2565, column: 9, scope: !2422)
!2907 = !DILocation(line: 2566, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2566, column: 13)
!2909 = !DILocation(line: 2566, column: 33, scope: !2908)
!2910 = !DILocation(line: 2566, column: 13, scope: !2422)
!2911 = !DILocation(line: 2569, column: 13, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 2566, column: 55)
!2913 = !DILocation(line: 2570, column: 9, scope: !2912)
!2914 = !DILocation(line: 2573, column: 13, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 2570, column: 16)
!2916 = !DILocation(line: 2578, column: 9, scope: !2422)
!2917 = !DILocation(line: 2579, column: 9, scope: !2422)
!2918 = !DILocation(line: 2582, column: 33, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2582, column: 13)
!2920 = !DILocation(line: 2582, column: 13, scope: !2919)
!2921 = !DILocation(line: 2582, column: 13, scope: !2422)
!2922 = !DILocation(line: 2583, column: 13, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 2582, column: 47)
!2924 = !DILocation(line: 2584, column: 9, scope: !2923)
!2925 = !DILocation(line: 794, column: 24, scope: !1383, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 2588, column: 13, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2588, column: 13)
!2928 = !DILocation(line: 794, column: 63, scope: !1383, inlinedAt: !2926)
!2929 = !DILocation(line: 794, column: 42, scope: !1383, inlinedAt: !2926)
!2930 = !DILocation(line: 2591, column: 13, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2591, column: 13)
!2932 = !DILocation(line: 2588, column: 13, scope: !2422)
!2933 = !DILocation(line: 2594, column: 9, scope: !2422)
!2934 = !DILocation(line: 2595, column: 9, scope: !2422)
!2935 = !DILocation(line: 794, column: 24, scope: !1383, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 2597, column: 13, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2597, column: 13)
!2938 = !DILocation(line: 794, column: 63, scope: !1383, inlinedAt: !2936)
!2939 = !DILocation(line: 794, column: 42, scope: !1383, inlinedAt: !2936)
!2940 = !DILocation(line: 2601, column: 13, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2601, column: 13)
!2942 = !DILocation(line: 2597, column: 13, scope: !2422)
!2943 = !DILocation(line: 2604, column: 9, scope: !2422)
!2944 = !DILocation(line: 2605, column: 9, scope: !2422)
!2945 = !DILocation(line: 2607, column: 9, scope: !2422)
!2946 = !DILocation(line: 2608, column: 9, scope: !2422)
!2947 = !DILocation(line: 2610, column: 9, scope: !2422)
!2948 = !DILocation(line: 2611, column: 9, scope: !2422)
!2949 = !DILocation(line: 2613, column: 9, scope: !2422)
!2950 = !DILocation(line: 2614, column: 9, scope: !2422)
!2951 = !DILocation(line: 274, column: 13, scope: !2694, inlinedAt: !2701)
!2952 = !DILocation(line: 274, column: 13, scope: !2695, inlinedAt: !2701)
!2953 = !DILocation(line: 275, column: 24, scope: !2954, inlinedAt: !2701)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 275, column: 17)
!2955 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 274, column: 27)
!2956 = !DILocation(line: 275, column: 18, scope: !2954, inlinedAt: !2701)
!2957 = !DILocation(line: 275, column: 17, scope: !2955, inlinedAt: !2701)
!2958 = !DILocation(line: 276, column: 39, scope: !2959, inlinedAt: !2701)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 275, column: 38)
!2960 = !DILocation(line: 276, column: 17, scope: !2959, inlinedAt: !2701)
!2961 = !DILocation(line: 277, column: 13, scope: !2959, inlinedAt: !2701)
!2962 = !DILocation(line: 273, column: 5, scope: !2963, inlinedAt: !2701)
!2963 = !DILexicalBlockFile(scope: !2696, file: !3, discriminator: 2)
!2964 = !DILocation(line: 272, column: 18, scope: !2698, inlinedAt: !2701)
!2965 = !DILocation(line: 273, column: 5, scope: !2966, inlinedAt: !2701)
!2966 = !DILexicalBlockFile(scope: !2696, file: !3, discriminator: 1)
!2967 = !DILocation(line: 273, column: 5, scope: !2968, inlinedAt: !2701)
!2968 = !DILexicalBlockFile(scope: !2697, file: !3, discriminator: 1)
!2969 = distinct !{!2969, !2970, !2971}
!2970 = !DILocation(line: 273, column: 5, scope: !2697)
!2971 = !DILocation(line: 279, column: 5, scope: !2697)
!2972 = !DILocation(line: 2621, column: 13, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2621, column: 13)
!2974 = !DILocation(line: 2621, column: 13, scope: !2422)
!2975 = !DILocation(line: 2622, column: 31, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2977, file: !3, discriminator: 1)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 2622, column: 17)
!2978 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 2621, column: 37)
!2979 = !DILocation(line: 2622, column: 25, scope: !2976)
!2980 = !DILocation(line: 2622, column: 17, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2978, file: !3, discriminator: 1)
!2982 = !DILocation(line: 2623, column: 50, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 2622, column: 51)
!2984 = !{!569, !570, i64 44}
!2985 = !DILocation(line: 2623, column: 17, scope: !2983)
!2986 = !DILocation(line: 2624, column: 13, scope: !2983)
!2987 = !DILocation(line: 2628, column: 18, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2628, column: 13)
!2989 = !DILocation(line: 2628, column: 27, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2988, file: !3, discriminator: 1)
!2991 = !DILocation(line: 2628, column: 21, scope: !2990)
!2992 = !DILocation(line: 2628, column: 13, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !2422, file: !3, discriminator: 1)
!2994 = !DILocation(line: 2630, column: 48, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 2628, column: 47)
!2996 = !{!569, !574, i64 108}
!2997 = !DILocation(line: 2630, column: 13, scope: !2995)
!2998 = !DILocation(line: 2631, column: 9, scope: !2995)
!2999 = !DILocation(line: 2636, column: 39, scope: !2422)
!3000 = !DILocation(line: 2636, column: 9, scope: !2422)
!3001 = !DILocation(line: 2637, column: 9, scope: !2422)
!3002 = !DILocation(line: 2639, column: 9, scope: !2422)
!3003 = !DILocation(line: 2640, column: 9, scope: !2422)
!3004 = !DILocation(line: 2644, column: 13, scope: !2422)
!3005 = !DILocation(line: 2645, column: 41, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 2644, column: 19)
!3007 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2644, column: 13)
!3008 = !DILocation(line: 2645, column: 55, scope: !3006)
!3009 = !DILocation(line: 2645, column: 13, scope: !3006)
!3010 = !DILocation(line: 2646, column: 9, scope: !3006)
!3011 = !DILocation(line: 2650, column: 9, scope: !2422)
!3012 = !DILocation(line: 2651, column: 9, scope: !2422)
!3013 = !DILocation(line: 2654, column: 21, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !3015, file: !3, discriminator: 1)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 2654, column: 9)
!3016 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2654, column: 9)
!3017 = !DILocation(line: 2654, column: 9, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !3016, file: !3, discriminator: 1)
!3019 = !DILocation(line: 2655, column: 17, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 2655, column: 17)
!3021 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 2654, column: 48)
!3022 = !DILocation(line: 2655, column: 42, scope: !3020)
!3023 = !DILocation(line: 2655, column: 17, scope: !3021)
!3024 = distinct !{!3024, !3025, !3026}
!3025 = !DILocation(line: 2654, column: 9, scope: !3016)
!3026 = !DILocation(line: 2658, column: 9, scope: !3016)
!3027 = !DILocation(line: 2663, column: 34, scope: !2422)
!3028 = !DILocation(line: 2663, column: 16, scope: !2422)
!3029 = !DILocation(line: 2664, column: 34, scope: !2422)
!3030 = !DILocation(line: 2666, column: 13, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2666, column: 13)
!3032 = !DILocation(line: 2666, column: 13, scope: !2422)
!3033 = !DILocation(line: 2669, column: 41, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 2666, column: 19)
!3035 = !DILocation(line: 2671, column: 65, scope: !3034)
!3036 = !{!3037, !573, i64 0}
!3037 = !{!"sniff_ctrl_config_t", !573, i64 0, !573, i64 2, !573, i64 4, !573, i64 6, !570, i64 8}
!3038 = !DILocation(line: 2672, column: 65, scope: !3034)
!3039 = !{!3037, !573, i64 2}
!3040 = !DILocation(line: 2673, column: 65, scope: !3034)
!3041 = !{!3037, !573, i64 4}
!3042 = !DILocation(line: 2674, column: 65, scope: !3034)
!3043 = !{!3037, !573, i64 6}
!3044 = !DILocation(line: 2669, column: 13, scope: !3034)
!3045 = !DILocation(line: 2675, column: 9, scope: !3034)
!3046 = !DILocation(line: 2679, column: 13, scope: !2422)
!3047 = !DILocation(line: 2683, column: 39, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2683, column: 13)
!3049 = !DILocation(line: 2683, column: 13, scope: !3048)
!3050 = !DILocation(line: 2683, column: 61, scope: !3048)
!3051 = !DILocation(line: 2683, column: 13, scope: !2422)
!3052 = !DILocation(line: 2689, column: 13, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 2683, column: 80)
!3054 = !DILocation(line: 2690, column: 13, scope: !3053)
!3055 = !DILocation(line: 2693, column: 20, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2693, column: 13)
!3057 = !DILocation(line: 2693, column: 33, scope: !3056)
!3058 = !DILocation(line: 2693, column: 67, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3056, file: !3, discriminator: 1)
!3060 = !DILocation(line: 2693, column: 47, scope: !3059)
!3061 = !DILocation(line: 2693, column: 43, scope: !3056)
!3062 = !DILocation(line: 2694, column: 13, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 2693, column: 81)
!3064 = !DILocation(line: 2694, column: 13, scope: !3065)
!3065 = !DILexicalBlockFile(scope: !3066, file: !3, discriminator: 1)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 2694, column: 13)
!3067 = !DILocation(line: 2695, column: 33, scope: !3063)
!3068 = !DILocation(line: 2695, column: 13, scope: !3063)
!3069 = !DILocation(line: 2696, column: 9, scope: !3063)
!3070 = !DILocation(line: 2699, column: 13, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 2698, column: 9)
!3072 = !DILocation(line: 2699, column: 13, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !3074, file: !3, discriminator: 1)
!3074 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 2699, column: 13)
!3075 = !DILocation(line: 2700, column: 13, scope: !3071)
!3076 = !DILocation(line: 2704, column: 13, scope: !2422)
!3077 = !DILocation(line: 2708, column: 39, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2708, column: 13)
!3079 = !DILocation(line: 2708, column: 13, scope: !3078)
!3080 = !DILocation(line: 2708, column: 61, scope: !3078)
!3081 = !DILocation(line: 2708, column: 13, scope: !2422)
!3082 = !DILocation(line: 2714, column: 13, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 2708, column: 80)
!3084 = !DILocation(line: 2715, column: 13, scope: !3083)
!3085 = !DILocation(line: 2718, column: 20, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 2718, column: 13)
!3087 = !DILocation(line: 2718, column: 33, scope: !3086)
!3088 = !DILocation(line: 2718, column: 67, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !3086, file: !3, discriminator: 1)
!3090 = !DILocation(line: 2718, column: 47, scope: !3089)
!3091 = !DILocation(line: 2718, column: 43, scope: !3086)
!3092 = !DILocation(line: 2719, column: 13, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 2718, column: 81)
!3094 = !DILocation(line: 2719, column: 13, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3096, file: !3, discriminator: 1)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 2719, column: 13)
!3097 = !DILocation(line: 2720, column: 33, scope: !3093)
!3098 = !DILocation(line: 2720, column: 13, scope: !3093)
!3099 = !DILocation(line: 2721, column: 9, scope: !3093)
!3100 = !DILocation(line: 2724, column: 13, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 2723, column: 9)
!3102 = !DILocation(line: 2724, column: 13, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3104, file: !3, discriminator: 1)
!3104 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 2724, column: 13)
!3105 = !DILocation(line: 2725, column: 13, scope: !3101)
!3106 = !DILocation(line: 2729, column: 69, scope: !2422)
!3107 = !DILocation(line: 2729, column: 9, scope: !2422)
!3108 = !DILocation(line: 2730, column: 9, scope: !2422)
!3109 = !DILocation(line: 2733, column: 51, scope: !2422)
!3110 = !DILocation(line: 2733, column: 9, scope: !2422)
!3111 = !DILocation(line: 2734, column: 9, scope: !2422)
!3112 = !DILocation(line: 2738, column: 9, scope: !2422)
!3113 = !DILocation(line: 2739, column: 9, scope: !2422)
!3114 = !DILocation(line: 2742, column: 9, scope: !2422)
!3115 = !DILocation(line: 2743, column: 9, scope: !2422)
!3116 = !DILocation(line: 2746, column: 39, scope: !2422)
!3117 = !DILocation(line: 2746, column: 9, scope: !2422)
!3118 = !DILocation(line: 2747, column: 9, scope: !2422)
!3119 = !DILocation(line: 2759, column: 22, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 2759, column: 9)
!3121 = !DILocation(line: 2759, column: 9, scope: !2410)
!3122 = !DILocation(line: 2760, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 2760, column: 13)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 2759, column: 38)
!3125 = !DILocation(line: 2760, column: 44, scope: !3123)
!3126 = !DILocation(line: 2760, column: 13, scope: !3124)
!3127 = !DILocation(line: 2761, column: 42, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 2760, column: 64)
!3129 = !DILocation(line: 2764, column: 13, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 2764, column: 13)
!3131 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 2763, column: 12)
!3132 = !DILocation(line: 2764, column: 36, scope: !3130)
!3133 = !DILocation(line: 2764, column: 13, scope: !3131)
!3134 = !DILocation(line: 2765, column: 34, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 2764, column: 53)
!3136 = !DILocation(line: 2768, column: 1, scope: !2410)
!3137 = !DILocation(line: 2768, column: 1, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !2410, file: !3, discriminator: 2)
!3139 = distinct !DISubprogram(name: "connect_hfp_while_a2dp_connected", scope: !3, file: !3, line: 1234, type: !874, isLocal: false, isDefinition: true, scopeLine: 1235, isOptimized: true, unit: !2, variables: !3140)
!3140 = !{!3141}
!3141 = !DILocalVariable(name: "conn", scope: !3139, file: !3, line: 1236, type: !610)
!3142 = !DILocation(line: 1237, column: 29, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1237, column: 9)
!3144 = !{!2547, !572, i64 0}
!3145 = !DILocation(line: 1237, column: 9, scope: !3143)
!3146 = !DILocation(line: 1237, column: 9, scope: !3139)
!3147 = !DILocation(line: 1239, column: 24, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1239, column: 17)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1238, column: 37)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 1238, column: 9)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 1238, column: 9)
!3152 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1237, column: 43)
!3153 = !DILocation(line: 1239, column: 17, scope: !3148)
!3154 = !DILocation(line: 1239, column: 32, scope: !3148)
!3155 = !DILocation(line: 1239, column: 42, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3148, file: !3, discriminator: 1)
!3157 = !DILocation(line: 1239, column: 61, scope: !3156)
!3158 = !DILocation(line: 1239, column: 17, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3149, file: !3, discriminator: 1)
!3160 = !DILocation(line: 1240, column: 27, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1240, column: 21)
!3162 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1239, column: 68)
!3163 = !DILocation(line: 1240, column: 21, scope: !3161)
!3164 = !DILocation(line: 1240, column: 40, scope: !3161)
!3165 = !DILocation(line: 1241, column: 45, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !3161, file: !3, discriminator: 1)
!3167 = !DILocation(line: 1241, column: 21, scope: !3161)
!3168 = !DILocation(line: 1243, column: 45, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 1243, column: 25)
!3170 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1241, column: 56)
!3171 = !DILocation(line: 1243, column: 25, scope: !3169)
!3172 = !DILocation(line: 1243, column: 25, scope: !3170)
!3173 = !DILocation(line: 1244, column: 58, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1243, column: 59)
!3175 = !DILocation(line: 1244, column: 25, scope: !3174)
!3176 = !DILocation(line: 1245, column: 21, scope: !3174)
!3177 = !DILocation(line: 1238, column: 9, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3150, file: !3, discriminator: 2)
!3179 = !DILocation(line: 1236, column: 18, scope: !3139)
!3180 = !DILocation(line: 1238, column: 9, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3150, file: !3, discriminator: 1)
!3182 = !DILocation(line: 1238, column: 9, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !3151, file: !3, discriminator: 1)
!3184 = distinct !{!3184, !3185, !3186}
!3185 = !DILocation(line: 1238, column: 9, scope: !3151)
!3186 = !DILocation(line: 1249, column: 9, scope: !3151)
!3187 = !DILocation(line: 1251, column: 1, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3139, file: !3, discriminator: 2)
!3189 = !DILocation(line: 1253, column: 36, scope: !2801)
!3190 = !DILocation(line: 1253, column: 46, scope: !2801)
!3191 = !DILocation(line: 1255, column: 11, scope: !2801)
!3192 = !DILocation(line: 1255, column: 29, scope: !2801)
!3193 = !DILocation(line: 1257, column: 29, scope: !2812)
!3194 = !DILocation(line: 1257, column: 9, scope: !2812)
!3195 = !DILocation(line: 1257, column: 9, scope: !2801)
!3196 = !DILocation(line: 1258, column: 18, scope: !2818)
!3197 = !DILocation(line: 1258, column: 13, scope: !2819)
!3198 = !DILocation(line: 1259, column: 13, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1258, column: 31)
!3200 = !DILocation(line: 1260, column: 9, scope: !3199)
!3201 = !DILocation(line: 1261, column: 13, scope: !2817)
!3202 = !DILocation(line: 1264, column: 1, scope: !2801)
!3203 = distinct !DISubprogram(name: "user_disconn_for_poweroff", scope: !3, file: !3, line: 1266, type: !874, isLocal: false, isDefinition: true, scopeLine: 1267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3204)
!3204 = !{!3205, !3206}
!3205 = !DILocalVariable(name: "btstack_connect_handle", scope: !3203, file: !3, line: 1268, type: !356)
!3206 = !DILocalVariable(name: "conn", scope: !3203, file: !3, line: 1269, type: !610)
!3207 = !DILocation(line: 1268, column: 8, scope: !3203)
!3208 = !DILocation(line: 1269, column: 18, scope: !3203)
!3209 = !DILocation(line: 1270, column: 5, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !3, discriminator: 1)
!3211 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1270, column: 5)
!3212 = !DILocation(line: 1271, column: 20, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1271, column: 13)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1270, column: 33)
!3215 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 1270, column: 5)
!3216 = !DILocation(line: 1271, column: 13, scope: !3213)
!3217 = !DILocation(line: 1271, column: 28, scope: !3213)
!3218 = !DILocation(line: 1271, column: 38, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !3213, file: !3, discriminator: 1)
!3220 = !DILocation(line: 1271, column: 31, scope: !3219)
!3221 = !DILocation(line: 1271, column: 13, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3214, file: !3, discriminator: 1)
!3223 = !DILocation(line: 1273, column: 13, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 1271, column: 59)
!3225 = !DILocation(line: 1274, column: 9, scope: !3224)
!3226 = !DILocation(line: 1270, column: 5, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !3215, file: !3, discriminator: 2)
!3228 = !DILocation(line: 1270, column: 5, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3215, file: !3, discriminator: 1)
!3230 = distinct !{!3230, !3231, !3232}
!3231 = !DILocation(line: 1270, column: 5, scope: !3211)
!3232 = !DILocation(line: 1275, column: 5, scope: !3211)
!3233 = !DILocation(line: 1277, column: 5, scope: !3203)
!3234 = !DILocation(line: 1278, column: 5, scope: !3203)
!3235 = !DILocation(line: 1279, column: 5, scope: !3203)
!3236 = !DILocation(line: 1280, column: 5, scope: !3203)
!3237 = !DILocation(line: 1282, column: 32, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1282, column: 9)
!3239 = !DILocation(line: 1282, column: 9, scope: !3203)
!3240 = !DILocation(line: 1283, column: 9, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 1282, column: 38)
!3242 = !DILocation(line: 1284, column: 5, scope: !3241)
!3243 = !DILocation(line: 1286, column: 1, scope: !3203)
!3244 = distinct !DISubprogram(name: "update_connectiong_mac_addr", scope: !3, file: !3, line: 1298, type: !3245, isLocal: false, isDefinition: true, scopeLine: 1299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !355}
!3247 = !{!3248}
!3248 = !DILocalVariable(name: "addr", arg: 1, scope: !3244, file: !3, line: 1298, type: !355)
!3249 = !DILocation(line: 1298, column: 38, scope: !3244)
!3250 = !DILocation(line: 1300, column: 5, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1300, column: 5)
!3252 = !DILocation(line: 1300, column: 5, scope: !3244)
!3253 = !DILocation(line: 1300, column: 5, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3251, file: !3, discriminator: 1)
!3255 = !DILocation(line: 1301, column: 5, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1301, column: 5)
!3257 = !DILocation(line: 1301, column: 5, scope: !3244)
!3258 = !DILocation(line: 1301, column: 5, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3256, file: !3, discriminator: 1)
!3260 = !DILocation(line: 1302, column: 25, scope: !3244)
!3261 = !{!568, !574, i64 284}
!3262 = !DILocation(line: 1303, column: 29, scope: !3244)
!3263 = !{!568, !570, i64 282}
!3264 = !DILocation(line: 1304, column: 5, scope: !3244)
!3265 = !DILocation(line: 1305, column: 1, scope: !3244)
!3266 = distinct !DISubprogram(name: "user_send_keypress", scope: !3, file: !3, line: 1307, type: !3267, isLocal: false, isDefinition: true, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !612, !356}
!3269 = !{!3270, !3271}
!3270 = !DILocalVariable(name: "addr", arg: 1, scope: !3266, file: !3, line: 1307, type: !612)
!3271 = !DILocalVariable(name: "key", arg: 2, scope: !3266, file: !3, line: 1307, type: !356)
!3272 = !DILocation(line: 1307, column: 36, scope: !3266)
!3273 = !DILocation(line: 1307, column: 45, scope: !3266)
!3274 = !DILocation(line: 1309, column: 20, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1309, column: 9)
!3276 = !DILocation(line: 1309, column: 33, scope: !3275)
!3277 = !DILocation(line: 1309, column: 9, scope: !3266)
!3278 = !DILocation(line: 1309, column: 9, scope: !3275)
!3279 = !DILocation(line: 1313, column: 28, scope: !3266)
!3280 = !DILocation(line: 1313, column: 69, scope: !3266)
!3281 = !DILocation(line: 1313, column: 34, scope: !3266)
!3282 = !DILocation(line: 1313, column: 32, scope: !3266)
!3283 = !DILocation(line: 1313, column: 25, scope: !3266)
!3284 = !DILocation(line: 1317, column: 5, scope: !3266)
!3285 = !DILocation(line: 1318, column: 28, scope: !3266)
!3286 = !DILocation(line: 1319, column: 1, scope: !3266)
!3287 = !DILocation(line: 1319, column: 1, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !3266, file: !3, discriminator: 1)
!3289 = distinct !DISubprogram(name: "unactice_device_cmd_prepare", scope: !3, file: !3, line: 1616, type: !3290, isLocal: false, isDefinition: true, scopeLine: 1617, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!380, !1298, !374, !355}
!3292 = !{!3293, !3294, !3295}
!3293 = !DILocalVariable(name: "cmd", arg: 1, scope: !3289, file: !3, line: 1616, type: !1298)
!3294 = !DILocalVariable(name: "param_len", arg: 2, scope: !3289, file: !3, line: 1616, type: !374)
!3295 = !DILocalVariable(name: "param", arg: 3, scope: !3289, file: !3, line: 1616, type: !355)
!3296 = !DILocation(line: 1616, column: 47, scope: !3289)
!3297 = !DILocation(line: 1616, column: 56, scope: !3289)
!3298 = !DILocation(line: 1616, column: 71, scope: !3289)
!3299 = !DILocation(line: 1633, column: 5, scope: !3289)
!3300 = distinct !DISubprogram(name: "user_hfp_send_cmd", scope: !3, file: !3, line: 1639, type: !2521, isLocal: false, isDefinition: true, scopeLine: 1640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3324, !3327}
!3302 = !DILocalVariable(name: "conn", arg: 1, scope: !3300, file: !3, line: 1639, type: !610)
!3303 = !DILocalVariable(name: "cmd", arg: 2, scope: !3300, file: !3, line: 1639, type: !380)
!3304 = !DILocalVariable(name: "temp_conn", scope: !3300, file: !3, line: 1641, type: !610)
!3305 = !DILocalVariable(name: "other_conn", scope: !3300, file: !3, line: 1642, type: !610)
!3306 = !DILocalVariable(name: "error", scope: !3300, file: !3, line: 1643, type: !359)
!3307 = !DILocalVariable(name: "hfp_io_str", scope: !3300, file: !3, line: 1646, type: !3308)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_ioctrl_str", file: !266, line: 315, baseType: !3309)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 305, size: 384, elements: !3310)
!3310 = !{!3311, !3312, !3314, !3315}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3309, file: !266, line: 306, baseType: !476, size: 48)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3309, file: !266, line: 307, baseType: !3313, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_PHONE_CTL_TYPE", file: !266, line: 170, baseType: !265)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3309, file: !266, line: 308, baseType: !356, size: 8, offset: 96)
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !266, line: 309, baseType: !3316, size: 256, offset: 128)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !266, line: 309, size: 256, elements: !3317)
!3317 = !{!3318, !3320, !3322, !3323}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "gain_mode", scope: !3316, file: !266, line: 310, baseType: !3319, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_GAIN_CTL_MODE", file: !266, line: 129, baseType: !295)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "three_way_ctrl", scope: !3316, file: !266, line: 311, baseType: !3321, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_THREE_WAY_CALL_FLAG", file: !266, line: 140, baseType: !301)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "phone_num", scope: !3316, file: !266, line: 312, baseType: !412, size: 240)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !3316, file: !266, line: 313, baseType: !355, size: 32)
!3324 = !DILocalVariable(name: "send", scope: !3325, file: !3, line: 1779, type: !368)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1778, column: 35)
!3326 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1778, column: 9)
!3327 = !DILocalVariable(name: "it", scope: !3325, file: !3, line: 1780, type: !360)
!3328 = !DILocation(line: 1639, column: 61, scope: !3300)
!3329 = !DILocation(line: 1639, column: 71, scope: !3300)
!3330 = !DILocation(line: 1643, column: 9, scope: !3300)
!3331 = !DILocation(line: 1646, column: 5, scope: !3300)
!3332 = !DILocation(line: 1647, column: 10, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1647, column: 9)
!3334 = !DILocation(line: 1647, column: 9, scope: !3300)
!3335 = !DILocation(line: 1651, column: 30, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1651, column: 9)
!3337 = !DILocation(line: 1651, column: 10, scope: !3336)
!3338 = !DILocation(line: 1652, column: 30, scope: !3336)
!3339 = !DILocation(line: 1652, column: 10, scope: !3336)
!3340 = !DILocation(line: 1651, column: 43, scope: !3336)
!3341 = !DILocation(line: 1655, column: 5, scope: !3300)
!3342 = !DILocation(line: 1657, column: 5, scope: !3300)
!3343 = !DILocation(line: 1685, column: 28, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 1685, column: 17)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1684, column: 42)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1684, column: 9)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1684, column: 9)
!3348 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1657, column: 18)
!3349 = !DILocation(line: 1660, column: 33, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1660, column: 13)
!3351 = !DILocation(line: 1660, column: 13, scope: !3350)
!3352 = !DILocation(line: 1660, column: 13, scope: !3348)
!3353 = !DILocation(line: 1661, column: 13, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 1660, column: 47)
!3355 = !DILocation(line: 1662, column: 9, scope: !3354)
!3356 = !DILocation(line: 1665, column: 20, scope: !3348)
!3357 = !DILocation(line: 1665, column: 26, scope: !3348)
!3358 = !{!3359, !570, i64 8}
!3359 = !{!"", !570, i64 0, !570, i64 8, !570, i64 12, !570, i64 16}
!3360 = !DILocation(line: 1666, column: 20, scope: !3348)
!3361 = !DILocation(line: 1666, column: 31, scope: !3348)
!3362 = !DILocation(line: 1667, column: 9, scope: !3348)
!3363 = !DILocation(line: 1669, column: 20, scope: !3348)
!3364 = !DILocation(line: 1669, column: 26, scope: !3348)
!3365 = !DILocation(line: 1670, column: 20, scope: !3348)
!3366 = !DILocation(line: 1670, column: 31, scope: !3348)
!3367 = !DILocation(line: 1671, column: 9, scope: !3348)
!3368 = !DILocation(line: 1673, column: 20, scope: !3348)
!3369 = !DILocation(line: 1673, column: 26, scope: !3348)
!3370 = !DILocation(line: 1674, column: 20, scope: !3348)
!3371 = !DILocation(line: 1674, column: 31, scope: !3348)
!3372 = !DILocation(line: 1675, column: 41, scope: !3348)
!3373 = !DILocation(line: 1675, column: 20, scope: !3348)
!3374 = !DILocation(line: 1675, column: 27, scope: !3348)
!3375 = !{!3359, !570, i64 12}
!3376 = !DILocation(line: 1676, column: 9, scope: !3348)
!3377 = !DILocation(line: 1678, column: 20, scope: !3348)
!3378 = !DILocation(line: 1678, column: 26, scope: !3348)
!3379 = !DILocation(line: 1679, column: 20, scope: !3348)
!3380 = !DILocation(line: 1679, column: 31, scope: !3348)
!3381 = !DILocation(line: 1680, column: 9, scope: !3348)
!3382 = !DILocation(line: 1685, column: 17, scope: !3345)
!3383 = !DILocation(line: 1687, column: 21, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 1686, column: 72)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 1686, column: 21)
!3386 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 1685, column: 36)
!3387 = !DILocation(line: 1688, column: 21, scope: !3384)
!3388 = !DILocation(line: 1684, column: 9, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3346, file: !3, discriminator: 2)
!3390 = !DILocation(line: 1641, column: 18, scope: !3300)
!3391 = !DILocation(line: 1684, column: 9, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3346, file: !3, discriminator: 1)
!3393 = !DILocation(line: 1684, column: 9, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3347, file: !3, discriminator: 1)
!3395 = distinct !{!3395, !3396, !3397}
!3396 = !DILocation(line: 1684, column: 9, scope: !3347)
!3397 = !DILocation(line: 1691, column: 9, scope: !3347)
!3398 = !DILocation(line: 1692, column: 20, scope: !3348)
!3399 = !DILocation(line: 1692, column: 26, scope: !3348)
!3400 = !DILocation(line: 1693, column: 9, scope: !3348)
!3401 = !DILocation(line: 1695, column: 20, scope: !3348)
!3402 = !DILocation(line: 1695, column: 26, scope: !3348)
!3403 = !DILocation(line: 1696, column: 9, scope: !3348)
!3404 = !DILocation(line: 1698, column: 20, scope: !3348)
!3405 = !DILocation(line: 1698, column: 26, scope: !3348)
!3406 = !DILocation(line: 1699, column: 9, scope: !3348)
!3407 = !DILocation(line: 1701, column: 20, scope: !3348)
!3408 = !DILocation(line: 1701, column: 26, scope: !3348)
!3409 = !DILocation(line: 1702, column: 9, scope: !3348)
!3410 = !DILocation(line: 1704, column: 20, scope: !3348)
!3411 = !DILocation(line: 1704, column: 26, scope: !3348)
!3412 = !DILocation(line: 1705, column: 9, scope: !3348)
!3413 = !DILocation(line: 1707, column: 20, scope: !3348)
!3414 = !DILocation(line: 1707, column: 26, scope: !3348)
!3415 = !DILocation(line: 1708, column: 9, scope: !3348)
!3416 = !DILocation(line: 1710, column: 20, scope: !3348)
!3417 = !DILocation(line: 1710, column: 26, scope: !3348)
!3418 = !DILocation(line: 1711, column: 9, scope: !3348)
!3419 = !DILocation(line: 1713, column: 20, scope: !3348)
!3420 = !DILocation(line: 1713, column: 26, scope: !3348)
!3421 = !DILocation(line: 1714, column: 9, scope: !3348)
!3422 = !DILocation(line: 1716, column: 20, scope: !3348)
!3423 = !DILocation(line: 1716, column: 26, scope: !3348)
!3424 = !DILocation(line: 1717, column: 9, scope: !3348)
!3425 = !DILocation(line: 1719, column: 20, scope: !3348)
!3426 = !DILocation(line: 1719, column: 26, scope: !3348)
!3427 = !DILocation(line: 1720, column: 9, scope: !3348)
!3428 = !DILocation(line: 1726, column: 20, scope: !3348)
!3429 = !DILocation(line: 1726, column: 26, scope: !3348)
!3430 = !DILocation(line: 1727, column: 20, scope: !3348)
!3431 = !DILocation(line: 1727, column: 35, scope: !3348)
!3432 = !DILocation(line: 1728, column: 9, scope: !3348)
!3433 = !DILocation(line: 1730, column: 20, scope: !3348)
!3434 = !DILocation(line: 1730, column: 26, scope: !3348)
!3435 = !DILocation(line: 1731, column: 20, scope: !3348)
!3436 = !DILocation(line: 1731, column: 35, scope: !3348)
!3437 = !DILocation(line: 1732, column: 9, scope: !3348)
!3438 = !DILocation(line: 1734, column: 20, scope: !3348)
!3439 = !DILocation(line: 1734, column: 26, scope: !3348)
!3440 = !DILocation(line: 1735, column: 20, scope: !3348)
!3441 = !DILocation(line: 1735, column: 35, scope: !3348)
!3442 = !DILocation(line: 1736, column: 9, scope: !3348)
!3443 = !DILocation(line: 1739, column: 20, scope: !3348)
!3444 = !DILocation(line: 1739, column: 26, scope: !3348)
!3445 = !DILocation(line: 1740, column: 20, scope: !3348)
!3446 = !DILocation(line: 1740, column: 35, scope: !3348)
!3447 = !DILocation(line: 1741, column: 9, scope: !3348)
!3448 = !DILocation(line: 1744, column: 20, scope: !3348)
!3449 = !DILocation(line: 1744, column: 26, scope: !3348)
!3450 = !DILocation(line: 1745, column: 27, scope: !3348)
!3451 = !DILocation(line: 1745, column: 9, scope: !3348)
!3452 = !DILocation(line: 1745, column: 38, scope: !3348)
!3453 = !DILocation(line: 1745, column: 77, scope: !3348)
!3454 = !DILocation(line: 1745, column: 65, scope: !3348)
!3455 = !DILocation(line: 1746, column: 20, scope: !3348)
!3456 = !DILocation(line: 1746, column: 26, scope: !3348)
!3457 = !DILocation(line: 1747, column: 9, scope: !3348)
!3458 = !DILocation(line: 1750, column: 20, scope: !3348)
!3459 = !DILocation(line: 1750, column: 26, scope: !3348)
!3460 = !DILocation(line: 1751, column: 19, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1751, column: 13)
!3462 = !DILocation(line: 1751, column: 30, scope: !3461)
!3463 = !DILocation(line: 1751, column: 13, scope: !3348)
!3464 = !DILocation(line: 1752, column: 44, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1751, column: 57)
!3466 = !DILocation(line: 1752, column: 24, scope: !3465)
!3467 = !DILocation(line: 1752, column: 30, scope: !3465)
!3468 = !DILocation(line: 1753, column: 34, scope: !3465)
!3469 = !DILocation(line: 1758, column: 9, scope: !3348)
!3470 = !DILocation(line: 1755, column: 24, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1754, column: 16)
!3472 = !DILocation(line: 1755, column: 30, scope: !3471)
!3473 = !DILocation(line: 1756, column: 13, scope: !3471)
!3474 = !DILocation(line: 1760, column: 20, scope: !3348)
!3475 = !DILocation(line: 1760, column: 26, scope: !3348)
!3476 = !DILocation(line: 1761, column: 9, scope: !3348)
!3477 = !DILocation(line: 1763, column: 20, scope: !3348)
!3478 = !DILocation(line: 1763, column: 26, scope: !3348)
!3479 = !DILocation(line: 1764, column: 9, scope: !3348)
!3480 = !DILocation(line: 1769, column: 29, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1769, column: 9)
!3482 = !DILocation(line: 1769, column: 9, scope: !3481)
!3483 = !DILocation(line: 1769, column: 9, scope: !3300)
!3484 = !DILocation(line: 1770, column: 17, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 1769, column: 43)
!3486 = !DILocation(line: 1771, column: 5, scope: !3485)
!3487 = !DILocation(line: 1772, column: 29, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1772, column: 9)
!3489 = !{!2547, !572, i64 24}
!3490 = !DILocation(line: 1772, column: 9, scope: !3488)
!3491 = !DILocation(line: 1772, column: 9, scope: !3300)
!3492 = !DILocation(line: 1773, column: 17, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1772, column: 46)
!3494 = !DILocation(line: 1774, column: 5, scope: !3493)
!3495 = !DILocation(line: 1778, column: 9, scope: !3326)
!3496 = !DILocation(line: 1778, column: 9, scope: !3300)
!3497 = !DILocation(line: 1779, column: 19, scope: !3325)
!3498 = !DILocation(line: 1781, column: 42, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 1781, column: 9)
!3500 = !DILocation(line: 1780, column: 24, scope: !3325)
!3501 = !DILocation(line: 1781, column: 9, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3499, file: !3, discriminator: 1)
!3503 = !DILocation(line: 1782, column: 20, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 1781, column: 80)
!3505 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 1781, column: 9)
!3506 = !DILocation(line: 1783, column: 24, scope: !3504)
!3507 = !DILocation(line: 1783, column: 30, scope: !3504)
!3508 = !DILocation(line: 1784, column: 36, scope: !3504)
!3509 = !DILocation(line: 1784, column: 24, scope: !3504)
!3510 = !DILocation(line: 1784, column: 34, scope: !3504)
!3511 = !DILocation(line: 1785, column: 39, scope: !3504)
!3512 = !{!3513, !573, i64 4}
!3513 = !{!"", !576, i64 0, !573, i64 4, !570, i64 6}
!3514 = !DILocation(line: 1785, column: 33, scope: !3504)
!3515 = !DILocation(line: 1785, column: 24, scope: !3504)
!3516 = !DILocation(line: 1785, column: 31, scope: !3504)
!3517 = !DILocation(line: 1786, column: 17, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1786, column: 17)
!3519 = !DILocation(line: 1786, column: 17, scope: !3504)
!3520 = !DILocation(line: 1787, column: 25, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1786, column: 51)
!3522 = !DILocation(line: 1788, column: 13, scope: !3521)
!3523 = !DILocation(line: 1789, column: 37, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1789, column: 17)
!3525 = !DILocation(line: 1789, column: 17, scope: !3524)
!3526 = !DILocation(line: 1789, column: 17, scope: !3504)
!3527 = !DILocation(line: 1790, column: 25, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 1789, column: 54)
!3529 = !DILocation(line: 1791, column: 13, scope: !3528)
!3530 = !DILocation(line: 1792, column: 23, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1792, column: 17)
!3532 = !DILocation(line: 1792, column: 17, scope: !3504)
!3533 = !DILocation(line: 1794, column: 17, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1792, column: 29)
!3535 = !DILocation(line: 1795, column: 22, scope: !3534)
!3536 = !DILocation(line: 1795, column: 17, scope: !3534)
!3537 = !DILocation(line: 1796, column: 13, scope: !3534)
!3538 = !DILocation(line: 1803, column: 1, scope: !3300)
!3539 = distinct !DISubprogram(name: "user_spp_send_ok_callback", scope: !3, file: !3, line: 2029, type: !2091, isLocal: false, isDefinition: true, scopeLine: 2030, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3540)
!3540 = !{!3541}
!3541 = !DILocalVariable(name: "err_code", arg: 1, scope: !3539, file: !3, line: 2029, type: !359)
!3542 = !DILocation(line: 2029, column: 36, scope: !3539)
!3543 = !DILocation(line: 2032, column: 1, scope: !3539)
!3544 = distinct !DISubprogram(name: "user_pbg_send_ok_callback", scope: !3, file: !3, line: 2161, type: !2091, isLocal: false, isDefinition: true, scopeLine: 2162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3545)
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "err_code", arg: 1, scope: !3544, file: !3, line: 2161, type: !359)
!3547 = !DILocation(line: 2161, column: 36, scope: !3544)
!3548 = !DILocation(line: 2164, column: 1, scope: !3544)
!3549 = distinct !DISubprogram(name: "user_adt_send_ok_callback", scope: !3, file: !3, line: 2215, type: !2091, isLocal: false, isDefinition: true, scopeLine: 2216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3550)
!3550 = !{!3551}
!3551 = !DILocalVariable(name: "err_code", arg: 1, scope: !3549, file: !3, line: 2215, type: !359)
!3552 = !DILocation(line: 2215, column: 36, scope: !3549)
!3553 = !DILocation(line: 2218, column: 1, scope: !3549)
!3554 = distinct !DISubprogram(name: "adt_key_open_mic", scope: !3, file: !3, line: 2221, type: !874, isLocal: false, isDefinition: true, scopeLine: 2222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3555 = !DILocation(line: 2224, column: 1, scope: !3554)
!3556 = distinct !DISubprogram(name: "user_pan_send_cmd", scope: !3, file: !3, line: 2288, type: !3557, isLocal: false, isDefinition: true, scopeLine: 2289, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!359, !355, !380, !380, !355}
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3560 = !DILocalVariable(name: "addr", arg: 1, scope: !3556, file: !3, line: 2288, type: !355)
!3561 = !DILocalVariable(name: "cmd", arg: 2, scope: !3556, file: !3, line: 2288, type: !380)
!3562 = !DILocalVariable(name: "value", arg: 3, scope: !3556, file: !3, line: 2288, type: !380)
!3563 = !DILocalVariable(name: "data", arg: 4, scope: !3556, file: !3, line: 2288, type: !355)
!3564 = !DILocalVariable(name: "ret_flag", scope: !3556, file: !3, line: 2290, type: !359)
!3565 = !DILocalVariable(name: "conn", scope: !3556, file: !3, line: 2291, type: !610)
!3566 = !DILocalVariable(name: "mac_addr", scope: !3556, file: !3, line: 2292, type: !458)
!3567 = !DILocation(line: 2288, column: 27, scope: !3556)
!3568 = !DILocation(line: 2288, column: 37, scope: !3556)
!3569 = !DILocation(line: 2288, column: 46, scope: !3556)
!3570 = !DILocation(line: 2288, column: 57, scope: !3556)
!3571 = !DILocation(line: 2290, column: 9, scope: !3556)
!3572 = !DILocation(line: 2293, column: 14, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 2293, column: 9)
!3574 = !DILocation(line: 2293, column: 9, scope: !3556)
!3575 = !DILocation(line: 2294, column: 16, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 2293, column: 23)
!3577 = !DILocation(line: 2291, column: 18, scope: !3556)
!3578 = !DILocation(line: 2295, column: 5, scope: !3576)
!3579 = !DILocation(line: 364, column: 37, scope: !759, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 2296, column: 16, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 2295, column: 12)
!3582 = !DILocation(line: 366, column: 9, scope: !759, inlinedAt: !3580)
!3583 = !DILocation(line: 368, column: 18, scope: !759, inlinedAt: !3580)
!3584 = !DILocation(line: 407, column: 12, scope: !759, inlinedAt: !3580)
!3585 = !DILocation(line: 2298, column: 14, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 2298, column: 9)
!3587 = !DILocation(line: 2298, column: 9, scope: !3556)
!3588 = !DILocation(line: 2301, column: 9, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 2300, column: 12)
!3590 = !DILocation(line: 2302, column: 37, scope: !3589)
!3591 = !DILocation(line: 2302, column: 9, scope: !3589)
!3592 = !DILocation(line: 2305, column: 29, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 2305, column: 9)
!3594 = !{!2547, !572, i64 36}
!3595 = !DILocation(line: 2305, column: 9, scope: !3593)
!3596 = !DILocation(line: 2305, column: 9, scope: !3556)
!3597 = !DILocation(line: 2306, column: 20, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 2305, column: 43)
!3599 = !DILocation(line: 2307, column: 9, scope: !3598)
!3600 = !DILocation(line: 2308, column: 9, scope: !3598)
!3601 = !DILocation(line: 2311, column: 1, scope: !3556)
!3602 = distinct !DISubprogram(name: "get_role_type_by_addr", scope: !3, file: !3, line: 2313, type: !3603, isLocal: false, isDefinition: true, scopeLine: 2314, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!356, !355}
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "addr", arg: 1, scope: !3602, file: !3, line: 2313, type: !355)
!3607 = !DILocalVariable(name: "conn", scope: !3602, file: !3, line: 2315, type: !610)
!3608 = !DILocation(line: 2313, column: 30, scope: !3602)
!3609 = !DILocation(line: 2317, column: 12, scope: !3602)
!3610 = !DILocation(line: 2315, column: 18, scope: !3602)
!3611 = !DILocation(line: 2318, column: 15, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 2318, column: 9)
!3613 = !DILocation(line: 2321, column: 9, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 2320, column: 12)
!3615 = !DILocation(line: 2323, column: 1, scope: !3602)
!3616 = distinct !DISubprogram(name: "emitter_hci_disconn_deal", scope: !3, file: !3, line: 2324, type: !562, isLocal: false, isDefinition: true, scopeLine: 2325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3617)
!3617 = !{!3618, !3619}
!3618 = !DILocalVariable(name: "temp_conn", scope: !3616, file: !3, line: 2326, type: !610)
!3619 = !DILocalVariable(name: "conn_zero_addr", scope: !3616, file: !3, line: 2327, type: !458)
!3620 = !DILocation(line: 2326, column: 18, scope: !3616)
!3621 = !DILocation(line: 2327, column: 5, scope: !3616)
!3622 = !DILocation(line: 2327, column: 8, scope: !3616)
!3623 = !DILocation(line: 2329, column: 5, scope: !3624)
!3624 = !DILexicalBlockFile(scope: !3625, file: !3, discriminator: 1)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 2329, column: 5)
!3626 = !DILocation(line: 2330, column: 25, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 2330, column: 13)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 2329, column: 38)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 2329, column: 5)
!3630 = !DILocation(line: 2330, column: 13, scope: !3627)
!3631 = !DILocation(line: 2330, column: 33, scope: !3627)
!3632 = !DILocation(line: 2330, column: 48, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3627, file: !3, discriminator: 1)
!3634 = !DILocation(line: 2330, column: 67, scope: !3633)
!3635 = !DILocation(line: 2330, column: 13, scope: !3636)
!3636 = !DILexicalBlockFile(scope: !3628, file: !3, discriminator: 1)
!3637 = !DILocation(line: 2331, column: 28, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 2331, column: 17)
!3639 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 2330, column: 74)
!3640 = !DILocation(line: 2331, column: 41, scope: !3638)
!3641 = !DILocation(line: 2331, column: 17, scope: !3639)
!3642 = !DILocation(line: 2333, column: 28, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 2333, column: 21)
!3644 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 2331, column: 70)
!3645 = !DILocation(line: 2333, column: 21, scope: !3643)
!3646 = !DILocation(line: 2333, column: 21, scope: !3644)
!3647 = !DILocation(line: 2334, column: 69, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 2334, column: 25)
!3649 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 2333, column: 78)
!3650 = !DILocation(line: 2334, column: 26, scope: !3648)
!3651 = !DILocation(line: 2334, column: 25, scope: !3649)
!3652 = !DILocation(line: 2335, column: 25, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 2334, column: 94)
!3654 = !DILocation(line: 2336, column: 32, scope: !3653)
!3655 = !DILocation(line: 2336, column: 25, scope: !3653)
!3656 = !DILocation(line: 2337, column: 25, scope: !3653)
!3657 = !DILocation(line: 2340, column: 21, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 2339, column: 24)
!3659 = !DILocation(line: 2329, column: 5, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3629, file: !3, discriminator: 2)
!3661 = !DILocation(line: 2329, column: 5, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3629, file: !3, discriminator: 1)
!3663 = distinct !{!3663, !3664, !3665}
!3664 = !DILocation(line: 2329, column: 5, scope: !3625)
!3665 = !DILocation(line: 2344, column: 5, scope: !3625)
!3666 = !DILocation(line: 2346, column: 1, scope: !3616)
!3667 = distinct !DISubprogram(name: "tws_host_timeout_get", scope: !3, file: !3, line: 2770, type: !562, isLocal: false, isDefinition: true, scopeLine: 2771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3668 = !DILocation(line: 2772, column: 23, scope: !3667)
!3669 = !DILocation(line: 2772, column: 5, scope: !3667)
!3670 = distinct !DISubprogram(name: "tws_host_timeout_del_event", scope: !3, file: !3, line: 2789, type: !874, isLocal: false, isDefinition: true, scopeLine: 2790, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3671 = !DILocation(line: 2791, column: 35, scope: !3670)
!3672 = !DILocation(line: 2792, column: 1, scope: !3670)
!3673 = distinct !DISubprogram(name: "tws_host_timeout_del", scope: !3, file: !3, line: 2793, type: !874, isLocal: false, isDefinition: true, scopeLine: 2794, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3674 = !DILocation(line: 2795, column: 35, scope: !3673)
!3675 = !DILocation(line: 2796, column: 1, scope: !3673)
!3676 = distinct !DISubprogram(name: "check_conn_channel_for_tws", scope: !3, file: !3, line: 2798, type: !562, isLocal: false, isDefinition: true, scopeLine: 2799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3677)
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "cur_auto_conn_profile", scope: !3676, file: !3, line: 2800, type: !374)
!3679 = !DILocalVariable(name: "conn", scope: !3676, file: !3, line: 2801, type: !610)
!3680 = !DILocation(line: 2800, column: 9, scope: !3676)
!3681 = !DILocation(line: 2801, column: 18, scope: !3676)
!3682 = !DILocation(line: 2803, column: 5, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !3684, file: !3, discriminator: 1)
!3684 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 2803, column: 5)
!3685 = !DILocation(line: 2804, column: 20, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 2804, column: 13)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 2803, column: 33)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 2803, column: 5)
!3689 = !DILocation(line: 2804, column: 13, scope: !3686)
!3690 = !DILocation(line: 2804, column: 34, scope: !3686)
!3691 = !DILocation(line: 2804, column: 44, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !3686, file: !3, discriminator: 1)
!3693 = !DILocation(line: 2804, column: 37, scope: !3692)
!3694 = !DILocation(line: 2804, column: 13, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3687, file: !3, discriminator: 1)
!3696 = !DILocation(line: 2807, column: 35, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2807, column: 17)
!3698 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 2804, column: 53)
!3699 = !{!909, !573, i64 10}
!3700 = !DILocation(line: 2807, column: 17, scope: !3698)
!3701 = !DILocation(line: 2810, column: 43, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 2808, column: 51)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 2808, column: 21)
!3704 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 2807, column: 62)
!3705 = !DILocation(line: 2814, column: 51, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2814, column: 17)
!3707 = !DILocation(line: 2815, column: 40, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 2815, column: 21)
!3709 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 2814, column: 63)
!3710 = !DILocation(line: 2814, column: 17, scope: !3698)
!3711 = !DILocation(line: 2820, column: 51, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2820, column: 17)
!3713 = !DILocation(line: 2820, column: 17, scope: !3698)
!3714 = !DILocation(line: 2821, column: 40, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 2821, column: 21)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 2820, column: 61)
!3717 = !DILocation(line: 2821, column: 49, scope: !3715)
!3718 = !DILocation(line: 2821, column: 59, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3715, file: !3, discriminator: 1)
!3720 = !DILocation(line: 2821, column: 86, scope: !3719)
!3721 = !DILocation(line: 2821, column: 21, scope: !3722)
!3722 = !DILexicalBlockFile(scope: !3716, file: !3, discriminator: 1)
!3723 = !DILocation(line: 2822, column: 43, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 2821, column: 97)
!3725 = !DILocation(line: 2823, column: 17, scope: !3724)
!3726 = !DILocation(line: 2826, column: 51, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2826, column: 17)
!3728 = !DILocation(line: 2826, column: 17, scope: !3698)
!3729 = !DILocation(line: 2827, column: 41, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 2827, column: 21)
!3731 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 2826, column: 61)
!3732 = !DILocation(line: 2827, column: 51, scope: !3730)
!3733 = !DILocation(line: 2827, column: 61, scope: !3734)
!3734 = !DILexicalBlockFile(scope: !3730, file: !3, discriminator: 1)
!3735 = !DILocation(line: 2827, column: 88, scope: !3734)
!3736 = !DILocation(line: 2827, column: 21, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3731, file: !3, discriminator: 1)
!3738 = !DILocation(line: 2828, column: 43, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 2827, column: 99)
!3740 = !DILocation(line: 2829, column: 17, scope: !3739)
!3741 = !DILocation(line: 2830, column: 21, scope: !3731)
!3742 = !DILocation(line: 2832, column: 52, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 2832, column: 25)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 2830, column: 58)
!3745 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 2830, column: 21)
!3746 = !DILocation(line: 2832, column: 26, scope: !3743)
!3747 = !DILocation(line: 2832, column: 74, scope: !3743)
!3748 = !DILocation(line: 2832, column: 25, scope: !3744)
!3749 = !DILocation(line: 2833, column: 48, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 2833, column: 29)
!3751 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 2832, column: 94)
!3752 = !DILocation(line: 2833, column: 29, scope: !3751)
!3753 = !DILocation(line: 2836, column: 51, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 2835, column: 32)
!3755 = !DILocation(line: 2838, column: 21, scope: !3751)
!3756 = !DILocation(line: 2846, column: 24, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2846, column: 17)
!3758 = !DILocation(line: 2841, column: 35, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2841, column: 17)
!3760 = !DILocation(line: 2841, column: 51, scope: !3759)
!3761 = !DILocation(line: 2841, column: 17, scope: !3698)
!3762 = !DILocation(line: 2846, column: 47, scope: !3757)
!3763 = !DILocation(line: 2772, column: 23, scope: !3667, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 2850, column: 17, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2850, column: 17)
!3766 = !DILocation(line: 2850, column: 40, scope: !3765)
!3767 = !DILocation(line: 2850, column: 17, scope: !3698)
!3768 = !DILocation(line: 2851, column: 17, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 2851, column: 17)
!3770 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 2850, column: 46)
!3771 = !DILocation(line: 2851, column: 17, scope: !3770)
!3772 = !DILocation(line: 2851, column: 17, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !3769, file: !3, discriminator: 1)
!3774 = !DILocation(line: 2855, column: 51, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2855, column: 17)
!3776 = !DILocation(line: 2855, column: 17, scope: !3698)
!3777 = !DILocation(line: 2803, column: 5, scope: !3778)
!3778 = !DILexicalBlockFile(scope: !3688, file: !3, discriminator: 2)
!3779 = !DILocation(line: 2803, column: 5, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !3688, file: !3, discriminator: 1)
!3781 = distinct !{!3781, !3782, !3783}
!3782 = !DILocation(line: 2803, column: 5, scope: !3684)
!3783 = !DILocation(line: 2860, column: 5, scope: !3684)
!3784 = !DILocation(line: 2865, column: 1, scope: !3676)
!3785 = distinct !DISubprogram(name: "bt_api_conn_mode_check", scope: !3, file: !3, line: 2870, type: !3786, isLocal: false, isDefinition: true, scopeLine: 2871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!1386, !356, !355}
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794}
!3789 = !DILocalVariable(name: "enable", arg: 1, scope: !3785, file: !3, line: 2870, type: !356)
!3790 = !DILocalVariable(name: "addr", arg: 2, scope: !3785, file: !3, line: 2870, type: !355)
!3791 = !DILocalVariable(name: "connect_cnt", scope: !3785, file: !3, line: 2872, type: !356)
!3792 = !DILocalVariable(name: "active_cnt", scope: !3785, file: !3, line: 2873, type: !356)
!3793 = !DILocalVariable(name: "sniff_cnt", scope: !3785, file: !3, line: 2874, type: !356)
!3794 = !DILocalVariable(name: "conn", scope: !3785, file: !3, line: 2875, type: !610)
!3795 = !DILocation(line: 2870, column: 32, scope: !3785)
!3796 = !DILocation(line: 2870, column: 44, scope: !3785)
!3797 = !DILocation(line: 2872, column: 8, scope: !3785)
!3798 = !DILocation(line: 2873, column: 8, scope: !3785)
!3799 = !DILocation(line: 2874, column: 8, scope: !3785)
!3800 = !DILocation(line: 2875, column: 18, scope: !3785)
!3801 = !DILocation(line: 2877, column: 5, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3803, file: !3, discriminator: 1)
!3803 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 2877, column: 5)
!3804 = !DILocation(line: 2878, column: 19, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 2878, column: 13)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 2877, column: 33)
!3807 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 2877, column: 5)
!3808 = !DILocation(line: 2878, column: 13, scope: !3805)
!3809 = !DILocation(line: 2878, column: 13, scope: !3806)
!3810 = !DILocation(line: 2879, column: 24, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 2878, column: 27)
!3812 = !DILocation(line: 2880, column: 25, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 2880, column: 17)
!3814 = !DILocation(line: 2880, column: 18, scope: !3813)
!3815 = !DILocation(line: 2880, column: 17, scope: !3811)
!3816 = !DILocation(line: 2884, column: 40, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 2883, column: 24)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 2881, column: 21)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 2880, column: 51)
!3820 = !DILocation(line: 2881, column: 21, scope: !3819)
!3821 = !DILocation(line: 2886, column: 13, scope: !3819)
!3822 = !DILocation(line: 2888, column: 23, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 2888, column: 17)
!3824 = !DILocation(line: 2888, column: 17, scope: !3823)
!3825 = !DILocation(line: 2888, column: 17, scope: !3811)
!3826 = !DILocation(line: 2889, column: 26, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 2888, column: 37)
!3828 = !DILocation(line: 2890, column: 13, scope: !3827)
!3829 = !DILocation(line: 2891, column: 27, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 2890, column: 20)
!3831 = !DILocation(line: 2877, column: 5, scope: !3832)
!3832 = !DILexicalBlockFile(scope: !3807, file: !3, discriminator: 2)
!3833 = !DILocation(line: 2877, column: 5, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3807, file: !3, discriminator: 1)
!3835 = distinct !{!3835, !3836, !3837}
!3836 = !DILocation(line: 2877, column: 5, scope: !3803)
!3837 = !DILocation(line: 2894, column: 5, scope: !3803)
!3838 = !DILocation(line: 2896, column: 21, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 2896, column: 9)
!3840 = !DILocation(line: 2896, column: 9, scope: !3785)
!3841 = !DILocation(line: 2897, column: 13, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 2897, column: 13)
!3843 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 2896, column: 27)
!3844 = !DILocation(line: 2897, column: 25, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3842, file: !3, discriminator: 1)
!3846 = !DILocation(line: 2897, column: 22, scope: !3842)
!3847 = !DILocation(line: 2902, column: 41, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3849, file: !3, discriminator: 1)
!3849 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 2902, column: 13)
!3850 = !DILocation(line: 2902, column: 27, scope: !3849)
!3851 = !DILocation(line: 2910, column: 1, scope: !3785)
!3852 = distinct !DISubprogram(name: "mic_coder_busy_flag", scope: !3, file: !3, line: 2912, type: !3853, isLocal: false, isDefinition: true, scopeLine: 2913, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!359}
!3855 = !DILocation(line: 2914, column: 5, scope: !3852)
!3856 = distinct !DISubprogram(name: "filter_out_sbc_data_en", scope: !3, file: !3, line: 2917, type: !3853, isLocal: false, isDefinition: true, scopeLine: 2918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3857 = !DILocation(line: 2919, column: 5, scope: !3856)
!3858 = distinct !DISubprogram(name: "update_check_sniff_en", scope: !3, file: !3, line: 2922, type: !3853, isLocal: false, isDefinition: true, scopeLine: 2923, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3859 = !DILocation(line: 2924, column: 5, scope: !3858)
!3860 = distinct !DISubprogram(name: "clear_sniff_cnt", scope: !3, file: !3, line: 2927, type: !874, isLocal: false, isDefinition: true, scopeLine: 2928, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3861)
!3861 = !{!3862, !3863}
!3862 = !DILocalVariable(name: "connect_cnt", scope: !3860, file: !3, line: 2929, type: !356)
!3863 = !DILocalVariable(name: "conn", scope: !3860, file: !3, line: 2930, type: !610)
!3864 = !DILocation(line: 2929, column: 8, scope: !3860)
!3865 = !DILocation(line: 2930, column: 18, scope: !3860)
!3866 = !DILocation(line: 2931, column: 5, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !3868, file: !3, discriminator: 1)
!3868 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 2931, column: 5)
!3869 = !DILocation(line: 2932, column: 19, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 2932, column: 13)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 2931, column: 33)
!3872 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 2931, column: 5)
!3873 = !DILocation(line: 2932, column: 13, scope: !3870)
!3874 = !DILocation(line: 2932, column: 13, scope: !3871)
!3875 = !DILocation(line: 2933, column: 19, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 2932, column: 27)
!3877 = !DILocation(line: 2933, column: 29, scope: !3876)
!3878 = !{!644, !570, i64 17}
!3879 = !DILocation(line: 2935, column: 9, scope: !3876)
!3880 = !DILocation(line: 2931, column: 5, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3872, file: !3, discriminator: 2)
!3882 = !DILocation(line: 2931, column: 5, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !3872, file: !3, discriminator: 1)
!3884 = distinct !{!3884, !3885, !3886}
!3885 = !DILocation(line: 2931, column: 5, scope: !3868)
!3886 = !DILocation(line: 2936, column: 5, scope: !3868)
!3887 = !DILocation(line: 2937, column: 1, scope: !3860)
!3888 = distinct !DISubprogram(name: "bt_emitter_stu_get", scope: !3, file: !3, line: 2939, type: !562, isLocal: false, isDefinition: true, scopeLine: 2940, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3889 = !DILocation(line: 2941, column: 5, scope: !3888)
!3890 = distinct !DISubprogram(name: "bt_api_enter_sniff_status_check", scope: !3, file: !3, line: 2944, type: !3891, isLocal: false, isDefinition: true, scopeLine: 2945, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!436, !374, !355}
!3893 = !{!3894, !3895, !3896, !3897}
!3894 = !DILocalVariable(name: "time_cnt", arg: 1, scope: !3890, file: !3, line: 2944, type: !374)
!3895 = !DILocalVariable(name: "addr", arg: 2, scope: !3890, file: !3, line: 2944, type: !355)
!3896 = !DILocalVariable(name: "connect_cnt", scope: !3890, file: !3, line: 2946, type: !356)
!3897 = !DILocalVariable(name: "conn", scope: !3890, file: !3, line: 2947, type: !610)
!3898 = !DILocation(line: 2944, column: 40, scope: !3890)
!3899 = !DILocation(line: 2944, column: 54, scope: !3890)
!3900 = !DILocation(line: 2946, column: 8, scope: !3890)
!3901 = !DILocation(line: 2947, column: 18, scope: !3890)
!3902 = !DILocation(line: 2950, column: 10, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 2950, column: 9)
!3904 = !DILocation(line: 2950, column: 9, scope: !3890)
!3905 = !DILocation(line: 2955, column: 5, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3907, file: !3, discriminator: 1)
!3907 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 2955, column: 5)
!3908 = !DILocation(line: 2956, column: 19, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 2956, column: 13)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 2955, column: 33)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 2955, column: 5)
!3912 = !DILocation(line: 2956, column: 13, scope: !3909)
!3913 = !DILocation(line: 2956, column: 13, scope: !3910)
!3914 = !DILocation(line: 2957, column: 19, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 2957, column: 17)
!3916 = distinct !DILexicalBlock(scope: !3909, file: !3, line: 2956, column: 27)
!3917 = !DILocation(line: 2957, column: 47, scope: !3915)
!3918 = !DILocation(line: 2957, column: 57, scope: !3919)
!3919 = !DILexicalBlockFile(scope: !3915, file: !3, discriminator: 1)
!3920 = !DILocation(line: 2957, column: 70, scope: !3919)
!3921 = !DILocation(line: 2957, column: 76, scope: !3919)
!3922 = !DILocation(line: 2957, column: 86, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !3915, file: !3, discriminator: 2)
!3924 = !DILocation(line: 2957, column: 101, scope: !3923)
!3925 = !DILocation(line: 2958, column: 35, scope: !3915)
!3926 = !DILocation(line: 2957, column: 126, scope: !3923)
!3927 = !DILocation(line: 2959, column: 18, scope: !3915)
!3928 = !DILocation(line: 2959, column: 49, scope: !3915)
!3929 = !DILocation(line: 2959, column: 78, scope: !3915)
!3930 = !DILocation(line: 2960, column: 19, scope: !3915)
!3931 = !DILocation(line: 2960, column: 42, scope: !3915)
!3932 = !DILocation(line: 2960, column: 47, scope: !3919)
!3933 = !DILocation(line: 2960, column: 73, scope: !3919)
!3934 = !DILocation(line: 2961, column: 20, scope: !3915)
!3935 = !DILocation(line: 2961, column: 61, scope: !3919)
!3936 = !DILocation(line: 2961, column: 41, scope: !3915)
!3937 = !DILocation(line: 2962, column: 35, scope: !3915)
!3938 = !DILocation(line: 2965, column: 23, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 2962, column: 55)
!3940 = !DILocation(line: 2965, column: 32, scope: !3939)
!3941 = !DILocation(line: 2966, column: 13, scope: !3939)
!3942 = !DILocation(line: 2984, column: 23, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 2966, column: 20)
!3944 = !DILocation(line: 2984, column: 33, scope: !3943)
!3945 = !DILocation(line: 2988, column: 23, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 2988, column: 17)
!3947 = !DILocation(line: 2988, column: 17, scope: !3946)
!3948 = !DILocation(line: 2988, column: 33, scope: !3946)
!3949 = !DILocation(line: 2988, column: 17, scope: !3916)
!3950 = !DILocation(line: 2991, column: 33, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 2988, column: 48)
!3952 = !DILocation(line: 2992, column: 31, scope: !3951)
!3953 = !DILocation(line: 2992, column: 43, scope: !3951)
!3954 = !DILocation(line: 2992, column: 29, scope: !3951)
!3955 = !DILocation(line: 2992, column: 17, scope: !3951)
!3956 = !DILocation(line: 2993, column: 28, scope: !3951)
!3957 = !DILocation(line: 2994, column: 13, scope: !3951)
!3958 = !DILocation(line: 2955, column: 5, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3911, file: !3, discriminator: 2)
!3960 = !DILocation(line: 2955, column: 5, scope: !3961)
!3961 = !DILexicalBlockFile(scope: !3911, file: !3, discriminator: 1)
!3962 = distinct !{!3962, !3963, !3964}
!3963 = !DILocation(line: 2955, column: 5, scope: !3907)
!3964 = !DILocation(line: 2996, column: 5, scope: !3907)
!3965 = !DILocation(line: 2999, column: 1, scope: !3890)
!3966 = distinct !DISubprogram(name: "check_user_cmd_for_tws", scope: !3, file: !3, line: 3001, type: !562, isLocal: false, isDefinition: true, scopeLine: 3002, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!3967 = !DILocation(line: 3003, column: 21, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 3003, column: 9)
!3969 = !DILocation(line: 3003, column: 45, scope: !3968)
!3970 = !DILocation(line: 3004, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 3003, column: 56)
!3972 = !DILocation(line: 3008, column: 1, scope: !3966)
!3973 = distinct !DISubprogram(name: "get_auto_connect_state", scope: !3, file: !3, line: 3010, type: !838, isLocal: false, isDefinition: true, scopeLine: 3011, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3974)
!3974 = !{!3975, !3976}
!3975 = !DILocalVariable(name: "addr", arg: 1, scope: !3973, file: !3, line: 3010, type: !355)
!3976 = !DILocalVariable(name: "conn", scope: !3973, file: !3, line: 3012, type: !610)
!3977 = !DILocation(line: 3010, column: 31, scope: !3973)
!3978 = !DILocation(line: 3012, column: 25, scope: !3973)
!3979 = !DILocation(line: 3012, column: 18, scope: !3973)
!3980 = !DILocation(line: 3013, column: 9, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 3013, column: 9)
!3982 = !DILocation(line: 3013, column: 9, scope: !3973)
!3983 = !DILocation(line: 3014, column: 22, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 3013, column: 15)
!3985 = !DILocation(line: 3014, column: 9, scope: !3984)
!3986 = !DILocation(line: 3017, column: 1, scope: !3973)
!3987 = distinct !DISubprogram(name: "user_core_data_for_send", scope: !3, file: !3, line: 3018, type: !3988, isLocal: false, isDefinition: true, scopeLine: 3019, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!359, !355, !374}
!3990 = !{!3991, !3992, !3993}
!3991 = !DILocalVariable(name: "packet", arg: 1, scope: !3987, file: !3, line: 3018, type: !355)
!3992 = !DILocalVariable(name: "size", arg: 2, scope: !3987, file: !3, line: 3018, type: !374)
!3993 = !DILocalVariable(name: "len", scope: !3987, file: !3, line: 3020, type: !356)
!3994 = !DILocation(line: 3018, column: 33, scope: !3987)
!3995 = !DILocation(line: 3018, column: 45, scope: !3987)
!3996 = !DILocation(line: 3020, column: 8, scope: !3987)
!3997 = !DILocation(line: 3024, column: 5, scope: !3987)
!3998 = !DILocation(line: 3026, column: 5, scope: !3987)
!3999 = distinct !DISubprogram(name: "user_core_data_for_set", scope: !3, file: !3, line: 3029, type: !4000, isLocal: false, isDefinition: true, scopeLine: 3030, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !355, !374}
!4002 = !{!4003, !4004, !4005}
!4003 = !DILocalVariable(name: "packet", arg: 1, scope: !3999, file: !3, line: 3029, type: !355)
!4004 = !DILocalVariable(name: "size", arg: 2, scope: !3999, file: !3, line: 3029, type: !374)
!4005 = !DILocalVariable(name: "len", scope: !3999, file: !3, line: 3031, type: !356)
!4006 = !DILocation(line: 3029, column: 33, scope: !3999)
!4007 = !DILocation(line: 3029, column: 45, scope: !3999)
!4008 = !DILocation(line: 3031, column: 8, scope: !3999)
!4009 = !DILocation(line: 3035, column: 5, scope: !3999)
!4010 = !DILocation(line: 3036, column: 1, scope: !3999)
!4011 = distinct !DISubprogram(name: "get_music_sync_volume", scope: !3, file: !3, line: 3040, type: !3853, isLocal: false, isDefinition: true, scopeLine: 3041, isOptimized: true, unit: !2, variables: !4012)
!4012 = !{!4013}
!4013 = !DILocalVariable(name: "conn", scope: !4011, file: !3, line: 3042, type: !610)
!4014 = !DILocation(line: 3042, column: 25, scope: !4011)
!4015 = !DILocation(line: 3042, column: 18, scope: !4011)
!4016 = !DILocation(line: 3043, column: 9, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 3043, column: 9)
!4018 = !DILocation(line: 3043, column: 9, scope: !4011)
!4019 = !DILocation(line: 3044, column: 33, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 3043, column: 15)
!4021 = !DILocation(line: 3044, column: 16, scope: !4020)
!4022 = !DILocation(line: 3044, column: 9, scope: !4020)
!4023 = !DILocation(line: 3047, column: 1, scope: !4011)
!4024 = distinct !DISubprogram(name: "get_remote_dev_company", scope: !3, file: !3, line: 3057, type: !562, isLocal: false, isDefinition: true, scopeLine: 3058, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4025)
!4025 = !{!4026}
!4026 = !DILocalVariable(name: "conn", scope: !4024, file: !3, line: 3059, type: !610)
!4027 = !DILocation(line: 3059, column: 18, scope: !4024)
!4028 = !DILocation(line: 3061, column: 5, scope: !4029)
!4029 = !DILexicalBlockFile(scope: !4030, file: !3, discriminator: 1)
!4030 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 3061, column: 5)
!4031 = !DILocation(line: 3062, column: 19, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 3062, column: 13)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 3061, column: 33)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 3061, column: 5)
!4035 = !DILocation(line: 3062, column: 13, scope: !4032)
!4036 = !DILocation(line: 3062, column: 13, scope: !4033)
!4037 = !DILocation(line: 3063, column: 46, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 3062, column: 27)
!4039 = !DILocation(line: 3063, column: 20, scope: !4038)
!4040 = !DILocation(line: 3063, column: 13, scope: !4038)
!4041 = !DILocation(line: 3061, column: 5, scope: !4042)
!4042 = !DILexicalBlockFile(scope: !4034, file: !3, discriminator: 2)
!4043 = !DILocation(line: 3061, column: 5, scope: !4044)
!4044 = !DILexicalBlockFile(scope: !4034, file: !3, discriminator: 1)
!4045 = distinct !{!4045, !4046, !4047}
!4046 = !DILocation(line: 3061, column: 5, scope: !4030)
!4047 = !DILocation(line: 3065, column: 5, scope: !4030)
!4048 = !DILocation(line: 3067, column: 1, scope: !4024)
!4049 = distinct !DISubprogram(name: "user_send_at_cmd_prepare", scope: !3, file: !3, line: 3068, type: !3988, isLocal: false, isDefinition: true, scopeLine: 3069, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4050)
!4050 = !{!4051, !4052, !4053, !4054}
!4051 = !DILocalVariable(name: "data", arg: 1, scope: !4049, file: !3, line: 3068, type: !355)
!4052 = !DILocalVariable(name: "len", arg: 2, scope: !4049, file: !3, line: 3068, type: !374)
!4053 = !DILocalVariable(name: "send", scope: !4049, file: !3, line: 3070, type: !368)
!4054 = !DILocalVariable(name: "conn", scope: !4049, file: !3, line: 3071, type: !610)
!4055 = !DILocation(line: 3068, column: 34, scope: !4049)
!4056 = !DILocation(line: 3068, column: 44, scope: !4049)
!4057 = !DILocation(line: 3070, column: 15, scope: !4049)
!4058 = !DILocation(line: 364, column: 37, scope: !759, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 3071, column: 25, scope: !4049)
!4060 = !DILocation(line: 366, column: 9, scope: !759, inlinedAt: !4059)
!4061 = !DILocation(line: 368, column: 18, scope: !759, inlinedAt: !4059)
!4062 = !DILocation(line: 407, column: 12, scope: !759, inlinedAt: !4059)
!4063 = !DILocation(line: 3071, column: 18, scope: !4049)
!4064 = !DILocation(line: 3072, column: 10, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 3072, column: 9)
!4066 = !DILocation(line: 3072, column: 9, scope: !4049)
!4067 = !DILocation(line: 3075, column: 10, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 3075, column: 9)
!4069 = !DILocation(line: 3075, column: 9, scope: !4049)
!4070 = !DILocation(line: 3079, column: 19, scope: !4049)
!4071 = !DILocation(line: 3079, column: 23, scope: !4049)
!4072 = !DILocation(line: 3079, column: 12, scope: !4049)
!4073 = !DILocation(line: 3080, column: 10, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 3080, column: 9)
!4075 = !DILocation(line: 3080, column: 9, scope: !4049)
!4076 = !DILocation(line: 3083, column: 5, scope: !4049)
!4077 = !DILocation(line: 3084, column: 11, scope: !4049)
!4078 = !DILocation(line: 3084, column: 15, scope: !4049)
!4079 = !DILocation(line: 3085, column: 18, scope: !4049)
!4080 = !DILocation(line: 3085, column: 5, scope: !4049)
!4081 = !DILocation(line: 3086, column: 5, scope: !4049)
!4082 = !DILocation(line: 3087, column: 5, scope: !4049)
!4083 = !DILocation(line: 3088, column: 5, scope: !4049)
!4084 = !DILocation(line: 3089, column: 1, scope: !4049)
!4085 = distinct !DISubprogram(name: "get_is_in_background_flag", scope: !3, file: !3, line: 3107, type: !4086, isLocal: false, isDefinition: true, scopeLine: 3108, isOptimized: true, unit: !2, variables: !564)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!597}
!4088 = !DILocation(line: 3109, column: 25, scope: !4085)
!4089 = !DILocation(line: 3109, column: 44, scope: !4085)
!4090 = !DILocation(line: 3109, column: 50, scope: !4085)
!4091 = !DILocation(line: 3109, column: 54, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !4085, file: !3, discriminator: 1)
!4093 = !DILocation(line: 3109, column: 74, scope: !4092)
!4094 = !{!909, !570, i64 16}
!4095 = !DILocation(line: 3109, column: 50, scope: !4092)
!4096 = !DILocation(line: 3109, column: 12, scope: !4097)
!4097 = !DILexicalBlockFile(scope: !4085, file: !3, discriminator: 2)
!4098 = !DILocation(line: 3109, column: 5, scope: !4097)
!4099 = distinct !DISubprogram(name: "bredr_suspend", scope: !3, file: !3, line: 3146, type: !3853, isLocal: false, isDefinition: true, scopeLine: 3147, isOptimized: true, unit: !2, variables: !4100)
!4100 = !{!4101}
!4101 = !DILocalVariable(name: "p", scope: !4099, file: !3, line: 3148, type: !4102)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!4103 = !DILocation(line: 3148, column: 22, scope: !4099)
!4104 = !DILocation(line: 3150, column: 5, scope: !4105)
!4105 = !DILexicalBlockFile(scope: !4106, file: !3, discriminator: 1)
!4106 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 3150, column: 5)
!4107 = !DILocation(line: 3151, column: 12, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 3150, column: 53)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 3150, column: 5)
!4110 = !{!4111, !572, i64 0}
!4111 = !{!"bt_sleep", !572, i64 0, !572, i64 4, !572, i64 8}
!4112 = !DILocation(line: 3151, column: 9, scope: !4108)
!4113 = !DILocation(line: 3150, column: 49, scope: !4114)
!4114 = !DILexicalBlockFile(scope: !4109, file: !3, discriminator: 2)
!4115 = !DILocation(line: 3150, column: 32, scope: !4116)
!4116 = !DILexicalBlockFile(scope: !4109, file: !3, discriminator: 1)
!4117 = distinct !{!4117, !4118, !4119}
!4118 = !DILocation(line: 3150, column: 5, scope: !4106)
!4119 = !DILocation(line: 3152, column: 5, scope: !4106)
!4120 = !DILocation(line: 3154, column: 5, scope: !4099)
!4121 = !DILocation(line: 3155, column: 5, scope: !4099)
!4122 = distinct !DISubprogram(name: "bredr_resume", scope: !3, file: !3, line: 3157, type: !874, isLocal: false, isDefinition: true, scopeLine: 3158, isOptimized: true, unit: !2, variables: !4123)
!4123 = !{!4124}
!4124 = !DILocalVariable(name: "p", scope: !4122, file: !3, line: 3159, type: !4102)
!4125 = !DILocation(line: 3159, column: 22, scope: !4122)
!4126 = !DILocation(line: 3161, column: 5, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !4128, file: !3, discriminator: 1)
!4128 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 3161, column: 5)
!4129 = !DILocation(line: 3162, column: 12, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 3161, column: 53)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 3161, column: 5)
!4132 = !{!4111, !572, i64 4}
!4133 = !DILocation(line: 3162, column: 9, scope: !4130)
!4134 = !DILocation(line: 3161, column: 49, scope: !4135)
!4135 = !DILexicalBlockFile(scope: !4131, file: !3, discriminator: 2)
!4136 = !DILocation(line: 3161, column: 32, scope: !4137)
!4137 = !DILexicalBlockFile(scope: !4131, file: !3, discriminator: 1)
!4138 = distinct !{!4138, !4139, !4140}
!4139 = !DILocation(line: 3161, column: 5, scope: !4128)
!4140 = !DILocation(line: 3163, column: 5, scope: !4128)
!4141 = !DILocation(line: 3165, column: 5, scope: !4122)
!4142 = !DILocation(line: 3166, column: 5, scope: !4122)
!4143 = !DILocation(line: 3167, column: 1, scope: !4122)
!4144 = distinct !DISubprogram(name: "bredr_release", scope: !3, file: !3, line: 3168, type: !3853, isLocal: false, isDefinition: true, scopeLine: 3169, isOptimized: true, unit: !2, variables: !4145)
!4145 = !{!4146, !4147, !4148}
!4146 = !DILocalVariable(name: "is_can_release", scope: !4144, file: !3, line: 3170, type: !356)
!4147 = !DILocalVariable(name: "flag", scope: !4144, file: !3, line: 3170, type: !356)
!4148 = !DILocalVariable(name: "p", scope: !4144, file: !3, line: 3172, type: !4102)
!4149 = !DILocation(line: 3170, column: 8, scope: !4144)
!4150 = !DILocation(line: 3170, column: 28, scope: !4144)
!4151 = !DILocation(line: 3172, column: 22, scope: !4144)
!4152 = !DILocation(line: 3174, column: 5, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !4154, file: !3, discriminator: 1)
!4154 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 3174, column: 5)
!4155 = !DILocation(line: 3175, column: 19, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 3174, column: 53)
!4157 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 3174, column: 5)
!4158 = !{!4111, !572, i64 8}
!4159 = !DILocation(line: 3175, column: 16, scope: !4156)
!4160 = !DILocation(line: 3176, column: 13, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 3176, column: 13)
!4162 = !DILocation(line: 3177, column: 13, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 3177, column: 13)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 3176, column: 19)
!4165 = !DILocation(line: 3176, column: 13, scope: !4156)
!4166 = !DILocation(line: 3177, column: 13, scope: !4167)
!4167 = !DILexicalBlockFile(scope: !4163, file: !3, discriminator: 1)
!4168 = !DILocation(line: 3174, column: 49, scope: !4169)
!4169 = !DILexicalBlockFile(scope: !4157, file: !3, discriminator: 2)
!4170 = !DILocation(line: 3174, column: 5, scope: !4169)
!4171 = !DILocation(line: 3174, column: 32, scope: !4172)
!4172 = !DILexicalBlockFile(scope: !4157, file: !3, discriminator: 1)
!4173 = distinct !{!4173, !4174, !4175}
!4174 = !DILocation(line: 3174, column: 5, scope: !4154)
!4175 = !DILocation(line: 3180, column: 5, scope: !4154)
!4176 = !DILocation(line: 3182, column: 5, scope: !4144)
!4177 = distinct !DISubprogram(name: "get_remote_vol_sync", scope: !3, file: !3, line: 3188, type: !1742, isLocal: false, isDefinition: true, scopeLine: 3189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4178)
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "conn", scope: !4177, file: !3, line: 3190, type: !610)
!4180 = !DILocation(line: 3190, column: 18, scope: !4177)
!4181 = !DILocation(line: 3192, column: 5, scope: !4182)
!4182 = !DILexicalBlockFile(scope: !4183, file: !3, discriminator: 1)
!4183 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 3192, column: 5)
!4184 = !DILocation(line: 3193, column: 19, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 3193, column: 13)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 3192, column: 33)
!4187 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 3192, column: 5)
!4188 = !DILocation(line: 3193, column: 13, scope: !4185)
!4189 = !DILocation(line: 3193, column: 13, scope: !4186)
!4190 = !DILocation(line: 3194, column: 46, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 3193, column: 27)
!4192 = !DILocation(line: 3194, column: 20, scope: !4191)
!4193 = !DILocation(line: 3194, column: 13, scope: !4191)
!4194 = !DILocation(line: 3192, column: 5, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !4187, file: !3, discriminator: 2)
!4196 = !DILocation(line: 3192, column: 5, scope: !4197)
!4197 = !DILexicalBlockFile(scope: !4187, file: !3, discriminator: 1)
!4198 = distinct !{!4198, !4199, !4200}
!4199 = !DILocation(line: 3192, column: 5, scope: !4183)
!4200 = !DILocation(line: 3196, column: 5, scope: !4183)
!4201 = !DILocation(line: 3199, column: 1, scope: !4177)
!4202 = distinct !DISubprogram(name: "connect_a2dp_w_phone_only_conn_hfp", scope: !3, file: !3, line: 146, type: !562, isLocal: true, isDefinition: true, scopeLine: 147, isOptimized: true, unit: !2, variables: !4203)
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "a2dp_cnt_status", scope: !4202, file: !3, line: 148, type: !356)
!4205 = !DILocalVariable(name: "conn", scope: !4202, file: !3, line: 149, type: !610)
!4206 = !DILocation(line: 148, column: 8, scope: !4202)
!4207 = !DILocation(line: 149, column: 18, scope: !4202)
!4208 = !DILocation(line: 150, column: 5, scope: !4209)
!4209 = !DILexicalBlockFile(scope: !4210, file: !3, discriminator: 1)
!4210 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 150, column: 5)
!4211 = !DILocation(line: 151, column: 19, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 151, column: 13)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 150, column: 33)
!4214 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 150, column: 5)
!4215 = !DILocation(line: 151, column: 13, scope: !4212)
!4216 = !DILocation(line: 151, column: 13, scope: !4213)
!4217 = !DILocation(line: 152, column: 24, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 152, column: 17)
!4219 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 151, column: 27)
!4220 = !DILocation(line: 152, column: 41, scope: !4218)
!4221 = !DILocation(line: 152, column: 46, scope: !4218)
!4222 = !DILocation(line: 152, column: 50, scope: !4223)
!4223 = !DILexicalBlockFile(scope: !4218, file: !3, discriminator: 1)
!4224 = !DILocation(line: 152, column: 75, scope: !4223)
!4225 = !DILocation(line: 152, column: 17, scope: !4226)
!4226 = !DILexicalBlockFile(scope: !4219, file: !3, discriminator: 1)
!4227 = !DILocation(line: 153, column: 40, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 152, column: 82)
!4229 = !DILocation(line: 154, column: 27, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 154, column: 21)
!4231 = !DILocation(line: 155, column: 21, scope: !4230)
!4232 = !DILocation(line: 156, column: 25, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 156, column: 25)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 155, column: 57)
!4235 = !DILocation(line: 156, column: 25, scope: !4234)
!4236 = !DILocation(line: 157, column: 29, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 157, column: 29)
!4238 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 156, column: 74)
!4239 = !DILocation(line: 157, column: 49, scope: !4237)
!4240 = !DILocation(line: 157, column: 81, scope: !4237)
!4241 = !DILocation(line: 157, column: 29, scope: !4238)
!4242 = !DILocation(line: 158, column: 29, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 157, column: 87)
!4244 = !DILocation(line: 159, column: 25, scope: !4243)
!4245 = !DILocation(line: 160, column: 32, scope: !4246)
!4246 = !DILexicalBlockFile(scope: !4247, file: !3, discriminator: 1)
!4247 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 160, column: 32)
!4248 = !DILocation(line: 160, column: 32, scope: !4249)
!4249 = !DILexicalBlockFile(scope: !4233, file: !3, discriminator: 1)
!4250 = !DILocation(line: 161, column: 25, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 160, column: 82)
!4252 = !DILocation(line: 162, column: 21, scope: !4251)
!4253 = !DILocation(line: 164, column: 21, scope: !4228)
!4254 = !DILocation(line: 165, column: 25, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 165, column: 25)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 164, column: 43)
!4257 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 164, column: 21)
!4258 = !DILocation(line: 165, column: 45, scope: !4255)
!4259 = !DILocation(line: 165, column: 25, scope: !4256)
!4260 = !DILocation(line: 166, column: 29, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 166, column: 29)
!4262 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 165, column: 61)
!4263 = !DILocation(line: 166, column: 29, scope: !4262)
!4264 = !DILocation(line: 168, column: 41, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 168, column: 33)
!4266 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 166, column: 80)
!4267 = !DILocation(line: 168, column: 54, scope: !4265)
!4268 = !DILocation(line: 169, column: 33, scope: !4265)
!4269 = !DILocation(line: 169, column: 56, scope: !4270)
!4270 = !DILexicalBlockFile(scope: !4265, file: !3, discriminator: 1)
!4271 = !DILocation(line: 171, column: 57, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 171, column: 37)
!4273 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 169, column: 68)
!4274 = !DILocation(line: 171, column: 37, scope: !4272)
!4275 = !DILocation(line: 168, column: 33, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !4266, file: !3, discriminator: 1)
!4277 = !DILocation(line: 172, column: 70, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 171, column: 71)
!4279 = !DILocation(line: 172, column: 37, scope: !4278)
!4280 = !DILocation(line: 173, column: 33, scope: !4278)
!4281 = !DILocation(line: 177, column: 37, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 177, column: 29)
!4283 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 176, column: 28)
!4284 = !DILocation(line: 177, column: 31, scope: !4282)
!4285 = !DILocation(line: 177, column: 50, scope: !4282)
!4286 = !DILocation(line: 178, column: 29, scope: !4282)
!4287 = !DILocation(line: 178, column: 52, scope: !4288)
!4288 = !DILexicalBlockFile(scope: !4282, file: !3, discriminator: 1)
!4289 = !DILocation(line: 180, column: 53, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 180, column: 33)
!4291 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 178, column: 64)
!4292 = !DILocation(line: 180, column: 33, scope: !4290)
!4293 = !DILocation(line: 177, column: 29, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !4283, file: !3, discriminator: 1)
!4295 = !DILocation(line: 181, column: 66, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 180, column: 67)
!4297 = !DILocation(line: 181, column: 33, scope: !4296)
!4298 = !DILocation(line: 182, column: 29, scope: !4296)
!4299 = !DILocation(line: 188, column: 23, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 188, column: 17)
!4301 = !DILocation(line: 188, column: 17, scope: !4300)
!4302 = !DILocation(line: 188, column: 17, scope: !4219)
!4303 = !DILocation(line: 150, column: 5, scope: !4304)
!4304 = !DILexicalBlockFile(scope: !4214, file: !3, discriminator: 2)
!4305 = !DILocation(line: 150, column: 5, scope: !4306)
!4306 = !DILexicalBlockFile(scope: !4214, file: !3, discriminator: 1)
!4307 = distinct !{!4307, !4308, !4309}
!4308 = !DILocation(line: 150, column: 5, scope: !4210)
!4309 = !DILocation(line: 193, column: 5, scope: !4210)
!4310 = !DILocation(line: 200, column: 5, scope: !4202)
!4311 = !DILocation(line: 202, column: 1, scope: !4202)
!4312 = distinct !DISubprogram(name: "cpu_reset", scope: !430, file: !430, line: 145, type: !874, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!4313 = !DILocation(line: 148, column: 5, scope: !4312)
!4314 = !DILocation(line: 149, column: 1, scope: !4312)
!4315 = distinct !DISubprogram(name: "__bt_spp_data_try_send", scope: !3, file: !3, line: 2034, type: !2391, isLocal: true, isDefinition: true, scopeLine: 2035, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4316)
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "priv", arg: 1, scope: !4315, file: !3, line: 2034, type: !354)
!4318 = !DILocation(line: 2034, column: 42, scope: !4315)
!4319 = !DILocation(line: 2036, column: 5, scope: !4315)
!4320 = !DILocation(line: 2037, column: 1, scope: !4315)
!4321 = distinct !DISubprogram(name: "user_cmd_loop_suspend", scope: !3, file: !3, line: 3131, type: !3853, isLocal: true, isDefinition: true, scopeLine: 3132, isOptimized: true, unit: !2, variables: !564)
!4322 = !DILocation(line: 3133, column: 35, scope: !4321)
!4323 = !DILocation(line: 3134, column: 5, scope: !4321)
!4324 = distinct !DISubprogram(name: "user_cmd_loop_resume", scope: !3, file: !3, line: 3136, type: !3853, isLocal: true, isDefinition: true, scopeLine: 3137, isOptimized: true, unit: !2, variables: !564)
!4325 = !DILocation(line: 3138, column: 35, scope: !4324)
!4326 = !DILocation(line: 3139, column: 5, scope: !4324)
!4327 = distinct !DISubprogram(name: "user_cmd_loop_release", scope: !3, file: !3, line: 3112, type: !3853, isLocal: true, isDefinition: true, scopeLine: 3113, isOptimized: true, unit: !2, variables: !4328)
!4328 = !{!4329}
!4329 = !DILocalVariable(name: "conn", scope: !4327, file: !3, line: 3114, type: !610)
!4330 = !DILocation(line: 3115, column: 20, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 3115, column: 9)
!4332 = !DILocation(line: 3115, column: 34, scope: !4331)
!4333 = !DILocation(line: 3115, column: 9, scope: !4327)
!4334 = !DILocation(line: 3119, column: 20, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 3119, column: 13)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 3118, column: 33)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 3118, column: 5)
!4338 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 3118, column: 5)
!4339 = !DILocation(line: 3119, column: 13, scope: !4335)
!4340 = !DILocation(line: 3119, column: 28, scope: !4335)
!4341 = !DILocation(line: 3119, column: 38, scope: !4342)
!4342 = !DILexicalBlockFile(scope: !4335, file: !3, discriminator: 1)
!4343 = !DILocation(line: 3119, column: 31, scope: !4342)
!4344 = !DILocation(line: 3119, column: 13, scope: !4345)
!4345 = !DILexicalBlockFile(scope: !4336, file: !3, discriminator: 1)
!4346 = !DILocation(line: 3118, column: 5, scope: !4347)
!4347 = !DILexicalBlockFile(scope: !4337, file: !3, discriminator: 2)
!4348 = !DILocation(line: 3114, column: 18, scope: !4327)
!4349 = !DILocation(line: 3118, column: 5, scope: !4350)
!4350 = !DILexicalBlockFile(scope: !4337, file: !3, discriminator: 1)
!4351 = !DILocation(line: 3118, column: 5, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4338, file: !3, discriminator: 1)
!4353 = distinct !{!4353, !4354, !4355}
!4354 = !DILocation(line: 3118, column: 5, scope: !4338)
!4355 = !DILocation(line: 3122, column: 5, scope: !4338)
!4356 = !DILocation(line: 3123, column: 5, scope: !4327)
!4357 = !DILocation(line: 3124, column: 5, scope: !4327)
!4358 = !DILocation(line: 3125, column: 30, scope: !4327)
!4359 = !DILocation(line: 3126, column: 35, scope: !4327)
!4360 = !DILocation(line: 3127, column: 5, scope: !4327)
!4361 = !DILocation(line: 3128, column: 1, scope: !4327)
