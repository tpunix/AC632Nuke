; ModuleID = 'l2cap.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.l2cap_stack_t = type { void (i8*, i8, i16, i8*, i16)*, %struct.btstack_linked_item*, %struct.btstack_linked_item*, %struct.l2cap_core_data_t }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.l2cap_core_data_t = type { [3 x %struct.l2cap_signaling_response], i32, i32, [1 x %struct.authentication_flag], i8, i16 }
%struct.l2cap_signaling_response = type { i16, i8, i8, i16, i16 }
%struct.authentication_flag = type { [6 x i8], i8, i8 }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.l2cap_fixed_channel = type { void (i8, i16, i8*, i16)*, i8 }
%struct.channel_core_data_t = type { i16, i8, i8, i8, i8, [6 x i8], i16, i16, i16, i16, i16, i8, i32, %struct.retran_flow_ctl_op_t }
%struct.retran_flow_ctl_op_t = type { i8, i8, i8, i8, i8, i16, i16, i16 }
%struct.l2cap_channel_t = type { %struct.btstack_linked_item, i16, i8, i8*, void (i8, i16, i8*, i16)*, %struct.channel_core_data_t }
%struct.btstack_linked_list_iterator_t = type { i32, %struct.btstack_linked_item*, %struct.btstack_linked_item* }
%struct.__le_hci_connection = type { %struct.btstack_linked_item, [6 x i8], i16, i32, i8, i32, i8, i16, i16, i16, i16, %struct.sm_connection, %struct.att_server_t, [529 x i8], i16, i16, i8, [6 x i8], [6 x i8], i32 }
%struct.sm_connection = type { i16, i8, i8, i8, i8, [6 x i8], i32, i32, i8, i8, i8, [7 x i8], i32, i16, [8 x i8], i8, i32, i32 }
%struct.att_server_t = type { i32, i8, [6 x i8], i32, i32, i32, %struct.btstack_timer_source, %struct.att_connection, i16, [517 x i8], i8, void (i16, i8)* }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.att_connection = type { i16, i16, i16, i8, i8, i8 }
%struct.l2cap_service_t = type { %struct.btstack_linked_item, i16, i16, i8*, void (i8, i16, i8*, i16)* }
%struct.le_connection_parameter_range = type { i16, i16, i16, i16, i16, i16 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@l2cap_stack = hidden local_unnamed_addr global %struct.l2cap_stack_t* null, section ".bt_stack_bss", align 4, !dbg !429
@le_l2cap_event_packet_handler = internal unnamed_addr global void (i8, i16, i8*, i16)* null, section ".bt_stack_bss", align 4, !dbg !474
@config_stack_modules = external local_unnamed_addr constant i32, align 4
@hci_event_callback_registration = internal global %struct.btstack_packet_callback_registration_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !422
@config_btctler_modules = external local_unnamed_addr constant i32, align 4
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.2 = private unnamed_addr constant [111 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap.c\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"ASSERT-FAILD: acl_buffer get acl_buffer NULL\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"<L2C-error> :l2cap_send_internal no channel for cid 0x%02x\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"[L2C-info] :l2cap_send_internal cid 0x%02x, handle %u \0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"ASSERT-FAILD: acl_buffer != NULL \00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"[L2C-info] :INFORMATION_REQUEST: %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"[L2C-info] :hci_create_connection %s\0A\00", align 1
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@.str.16 = private unnamed_addr constant [57 x i8] c"<BT-log> :L2CAP_CONF_RESULT_UNACCEPTABLE_PARAMETERS %d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"L2CAP_STATE_WILL_SEND_DISCONNECT_RESPONSE\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"L2CAP_STATE_WILL_SEND_DISCONNECT_REQUEST\0A\00", align 1
@pan_profile_support = external local_unnamed_addr constant i8, align 1
@le_att_mtu_size = internal unnamed_addr global i16 517, section ".bt_stack_data", align 2, !dbg !484
@.str.22 = private unnamed_addr constant [25 x i8] c"l2cap wait disconnect...\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"<BT-log> :disconn_link_type:%d,len:%d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [83 x i8] c"<L2C-error> :l2cap_accept_connection_internal called but local_cid 0x%x not found\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"[L2C-info] :l2cap cid %u, hint %u, type %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"[L2C-info] :L2CAP signaling handler code %u, state %u\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c" CONNECTION_REQUEST\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c" INFORMATION_REQUEST \0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c" L2CAP_CID_SIGNALING \0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c" L2CAP_le_SIGNALING \0A\00", align 1
@l2cap_fixed_channels = internal unnamed_addr global [3 x %struct.l2cap_fixed_channel] zeroinitializer, section ".bt_stack_bss", align 4, !dbg !476
@gap_request_connection_parameter_update.le_con_param_update_identifier = internal unnamed_addr global i8 1, section ".bt_stack_data", align 1, !dbg !410
@.str.33 = private unnamed_addr constant [88 x i8] c"<L2C-error> :l2cap_send_prepared_connectionless handle 0x%02x, cid 0x%02x, cannot send\0A\00", align 1
@.str.34 = private unnamed_addr constant [70 x i8] c"[L2C-info] :l2cap_send_prepared_connectionless handle %u, cid 0x%02x\0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"<L2C-error> :l2cap_send cid 0x%02x, cannot send\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"<BT-log> :psm %x\0A\00", align 1
@.str.37 = private unnamed_addr constant [74 x i8] c"<L2C-error> :l2cap_register_service_internal: PSM %u already registered\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"local cid-%x\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.41 = private unnamed_addr constant [142 x i8] c"[L2C-info] :L2CAP_EVENT_CHANNEL_OPENED status 0x%x addr %s handle 0x%x psm 0x%x local_cid 0x%x remote_cid 0x%x local_mtu %u, remote_mtu %u\0D\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"[L2C-info] :L2CAP_EVENT_CHANNEL_CLOSED local_cid 0x%x\0D\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"<L2C-error> :no hci_connection for handle %u\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [107 x i8] c"[L2C-info] :L2CAP_EVENT_INCOMING_CONNECTION addr %s handle 0x%x psm 0x%x local_cid 0x%x remote_cid 0x%x\0D\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [84 x i8] c"[L2C-info] :l2cap_le_signaling_handler_dispatch: command 0x%02x, sig id %u, len %u\0A\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"[L2C-info] :update_parameter=%d\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [62 x i8] c"<L2C-error> :l2cap_monitor_get service fail %d Please check\0A\0A\00", align 1
@.str.54 = private unnamed_addr constant [117 x i8] c"[L2C-info] :L2CAP_monitor_OPENED  handle 0x%x psm 0x%x local_cid 0x%x remote_cid 0x%x local_mtu %u, remote_mtu %u\0D\0A\0A\00", align 1
@str = private unnamed_addr constant [23 x i8] c"[L2C-info] :l2cap_init\00"
@str.55 = private unnamed_addr constant [33 x i8] c"[L2C-info] :send config request\0A\00"
@str.56 = private unnamed_addr constant [34 x i8] c"[L2C-info] :send config response\0A\00"
@str.57 = private unnamed_addr constant [21 x i8] c"[L2C-info] :rsp_mtu\0A\00"
@str.58 = private unnamed_addr constant [32 x i8] c"[L2C-info] :L2CAP_STATE_CONFIG\0A\00"
@str.59 = private unnamed_addr constant [54 x i8] c"[L2C-info] :L2CAP_STATE_WILL_SEND_CONNECTION_REQUEST\0A\00"
@str.60 = private unnamed_addr constant [36 x i8] c"[L2C-info] :waiting authentication\0A\00"
@str.61 = private unnamed_addr constant [62 x i8] c"[L2C-info] :L2CAP_STATE_WILL_SEND_CONNECTION_RESPONSE_ACCEPT\0A\00"
@str.62 = private unnamed_addr constant [48 x i8] c"[L2C-info] :SEND_CONNECTION_RESPONSE_DECLINE \0D\0A\00"
@str.63 = private unnamed_addr constant [31 x i8] c"<L2C-error> : COMMAND_REJECT \0A\00"
@str.64 = private unnamed_addr constant [39 x i8] c"[L2C-info] :l2cap_CONNECTION_REQUEST \0A\00"
@str.65 = private unnamed_addr constant [62 x i8] c"[L2C-info] :l2cap_handle_connection_request register channel\0A\00"
@str.66 = private unnamed_addr constant [28 x i8] c"[L2C-info] :user reject!!!\0A\00"
@str.67 = private unnamed_addr constant [48 x i8] c"<L2C-error> :REQUEST reject,role is not master\0A\00"
@str.68 = private unnamed_addr constant [12 x i8] c"[L2C-dump]:\00"
@str.69 = private unnamed_addr constant [25 x i8] c"gap send conn param 2222\00"
@str.70 = private unnamed_addr constant [86 x i8] c"<L2C-error> :l2cap_send_prepared_connectionless called without reserving packet first\00"
@str.71 = private unnamed_addr constant [77 x i8] c"<L2C-error> :l2cap_register_service_internal: no memory for l2cap_service_t\0A\00"
@str.72 = private unnamed_addr constant [62 x i8] c"<L2C-error> :l2cap_monitor_connection_open fail Please check\0A\00"
@str.73 = private unnamed_addr constant [43 x i8] c"[L2C-info] :l2cap_monitor_connection_open\0A\00"

; Function Attrs: nounwind optsize
define hidden void @l2cap_init(%struct.l2cap_stack_t*, void (i8*, i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !490 {
  call void @llvm.dbg.value(metadata %struct.l2cap_stack_t* %0, metadata !494, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata void (i8*, i8, i16, i8*, i16)* %1, metadata !495, metadata !DIExpression()), !dbg !497
  store %struct.l2cap_stack_t* %0, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !498, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %0, i32 0, i32 3, i32 4, !dbg !503
  store i8 -1, i8* %3, align 4, !dbg !504, !tbaa !505
  %4 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %0, i32 0, i32 3, i32 5, !dbg !510
  store i16 64, i16* %4, align 2, !dbg !511, !tbaa !512
  %5 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %0, i32 0, i32 3, i32 1, !dbg !513
  store i32 0, i32* %5, align 4, !dbg !514, !tbaa !515
  %6 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %0, i32 0, i32 2, !dbg !516
  store %struct.btstack_linked_item* null, %struct.btstack_linked_item** %6, align 4, !dbg !517, !tbaa !518
  %7 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %0, i32 0, i32 1, !dbg !519
  store %struct.btstack_linked_item* null, %struct.btstack_linked_item** %7, align 4, !dbg !520, !tbaa !521
  %8 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %0, i32 0, i32 0, !dbg !522
  store void (i8*, i8, i16, i8*, i16)* %1, void (i8*, i8, i16, i8*, i16)** %8, align 4, !dbg !523, !tbaa !524
  %9 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !525, !tbaa !499
  %10 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %9, i32 0, i32 3, i32 2, !dbg !526
  store i32 0, i32* %10, align 4, !dbg !527, !tbaa !528
  store void (i8, i16, i8*, i16)* null, void (i8, i16, i8*, i16)** @le_l2cap_event_packet_handler, align 4, !dbg !529, !tbaa !499
  %11 = load i32, i32* @config_stack_modules, align 4, !dbg !530, !tbaa !532
  %12 = and i32 %11, 4, !dbg !530
  %13 = icmp eq i32 %12, 0, !dbg !530
  br i1 %13, label %15, label %14, !dbg !533

; <label>:14:                                     ; preds = %2
  store void (i8, i16, i8*, i16)* @l2cap_hci_event_handler, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t* @hci_event_callback_registration, i32 0, i32 1), align 4, !dbg !534, !tbaa !536
  tail call void @hci_add_event_handler(i8* bitcast (%struct.btstack_packet_callback_registration_t* @hci_event_callback_registration to i8*)) #12, !dbg !539
  br label %15, !dbg !540

; <label>:15:                                     ; preds = %14, %2
  %16 = load i32, i32* @config_btctler_modules, align 4, !dbg !541, !tbaa !532
  %17 = and i32 %16, 1, !dbg !541
  %18 = icmp eq i32 %17, 0, !dbg !541
  br i1 %18, label %20, label %19, !dbg !543

; <label>:19:                                     ; preds = %15
  tail call void @hci_connectable_control(i8 zeroext 0, i8 zeroext 0) #12, !dbg !544
  br label %20, !dbg !546

; <label>:20:                                     ; preds = %19, %15
  %21 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !547, !tbaa !549
  %22 = and i8 %21, 1, !dbg !547
  %23 = icmp eq i8 %22, 0, !dbg !547
  br i1 %23, label %26, label %24, !dbg !550

; <label>:24:                                     ; preds = %20
  %25 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str, i32 0, i32 0)), !dbg !551
  br label %26, !dbg !551

; <label>:26:                                     ; preds = %24, %20
  ret void, !dbg !553
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define internal void @l2cap_hci_event_handler(i8 zeroext, i16 zeroext, i8* nocapture readonly, i16 zeroext) #0 section ".bt_stack_code" !dbg !554 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !556, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i16 %1, metadata !557, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i8* %2, metadata !558, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i16 %3, metadata !559, metadata !DIExpression()), !dbg !563
  %5 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* %2) #13, !dbg !564
  switch i8 %5, label %8 [
    i8 19, label %6
    i8 15, label %7
  ], !dbg !565

; <label>:6:                                      ; preds = %4
  tail call void @l2cap_run() #13, !dbg !566
  tail call fastcc void @l2cap_notify_channel_can_send() #13, !dbg !568
  br label %8, !dbg !569

; <label>:7:                                      ; preds = %4
  tail call void @l2cap_run() #13, !dbg !570
  br label %8, !dbg !571

; <label>:8:                                      ; preds = %7, %6, %4
  ret void, !dbg !572
}

; Function Attrs: optsize
declare void @hci_add_event_handler(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hci_connectable_control(i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @le_l2cap_register_packet_handler(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !573 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !577, metadata !DIExpression()), !dbg !578
  %2 = load i32, i32* @config_stack_modules, align 4, !dbg !579, !tbaa !532
  %3 = and i32 %2, 4, !dbg !579
  %4 = icmp ne i32 %3, 0, !dbg !579
  %5 = select i1 %4, void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)* null, !dbg !581
  store void (i8, i16, i8*, i16)* %5, void (i8, i16, i8*, i16)** @le_l2cap_event_packet_handler, align 4, !tbaa !499
  ret void, !dbg !582
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @check_l2cap_authentication_flag(i8* nocapture readonly, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !587, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8 %1, metadata !588, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8 %2, metadata !589, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i32 0, metadata !590, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i32 0, metadata !590, metadata !DIExpression()), !dbg !594
  %4 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !tbaa !499
  %5 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %4, i32 0, i32 3, i32 3, i32 0, i32 0, i32 0, !dbg !595
  %6 = tail call i32 @memcmp(i8* %0, i8* %5, i32 6) #13, !dbg !595
  %7 = icmp eq i32 %6, 0, !dbg !595
  br i1 %7, label %8, label %26, !dbg !600

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %4, i32 0, i32 3, i32 3, i32 0, i32 1, !dbg !601
  %10 = load i8, i8* %9, align 2, !dbg !601
  %11 = and i8 %10, 15, !dbg !601
  %12 = icmp eq i8 %11, 10, !dbg !603
  br i1 %12, label %13, label %26, !dbg !604

; <label>:13:                                     ; preds = %8
  switch i8 %1, label %23 [
    i8 37, label %14
    i8 36, label %16
    i8 38, label %18
    i8 39, label %21
  ], !dbg !606

; <label>:14:                                     ; preds = %13
  %15 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %4, i32 0, i32 3, i32 3, i32 0, i32 2, !dbg !608
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 7, i32 4, i1 false), !dbg !611
  store i8 32, i8* %15, align 1, !dbg !612, !tbaa !613
  br label %23, !dbg !615

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %4, i32 0, i32 3, i32 3, i32 0, i32 2, !dbg !616
  store i8 %2, i8* %17, align 1, !dbg !619, !tbaa !613
  br label %23, !dbg !620

; <label>:18:                                     ; preds = %13
  %19 = shl i8 %2, 4, !dbg !621
  %20 = or i8 %19, 10, !dbg !621
  store i8 %20, i8* %9, align 2, !dbg !621
  br label %23, !dbg !624

; <label>:21:                                     ; preds = %13
  %22 = lshr i8 %10, 4, !dbg !625
  br label %41, !dbg !628

; <label>:23:                                     ; preds = %18, %16, %14, %13
  %24 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %4, i32 0, i32 3, i32 3, i32 0, i32 2, !dbg !629
  %25 = load i8, i8* %24, align 1, !dbg !629, !tbaa !613
  br label %41, !dbg !631

; <label>:26:                                     ; preds = %8, %3
  %27 = icmp eq i8 %1, 36, !dbg !632
  switch i8 %1, label %41 [
    i8 38, label %28
    i8 36, label %28
  ], !dbg !634

; <label>:28:                                     ; preds = %26, %26
  call void @llvm.dbg.value(metadata i32 0, metadata !590, metadata !DIExpression()), !dbg !594
  %29 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %4, i32 0, i32 3, i32 3, i32 0, i32 1
  %30 = load i8, i8* %29, align 2
  %31 = and i8 %30, 15, !dbg !635
  %32 = icmp eq i8 %31, 10, !dbg !641
  br i1 %32, label %41, label %33, !dbg !643

; <label>:33:                                     ; preds = %28
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %5, i8* %0, i32 6, i32 1, i1 false), !dbg !644
  %34 = and i8 %30, -16, !dbg !646
  %35 = or i8 %34, 10, !dbg !646
  store i8 %35, i8* %29, align 2, !dbg !646
  %36 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %4, i32 0, i32 3, i32 3, i32 0, i32 2
  br i1 %27, label %37, label %38, !dbg !647

; <label>:37:                                     ; preds = %33
  store i8 %2, i8* %36, align 1, !dbg !648, !tbaa !613
  store i8 10, i8* %29, align 2, !dbg !651
  br label %41, !dbg !652

; <label>:38:                                     ; preds = %33
  store i8 32, i8* %36, align 1, !dbg !653, !tbaa !613
  %39 = shl i8 %2, 4, !dbg !655
  %40 = or i8 %39, 10, !dbg !655
  store i8 %40, i8* %29, align 2, !dbg !655
  br label %41

; <label>:41:                                     ; preds = %38, %37, %28, %26, %23, %21
  %42 = phi i8 [ %22, %21 ], [ %25, %23 ], [ %2, %38 ], [ %2, %37 ], [ 32, %26 ], [ 32, %28 ]
  ret i8 %42, !dbg !656
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind optsize
define hidden zeroext i8 @remote_dev_company_ioctrl(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 %1, metadata !660, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8 %2, metadata !661, metadata !DIExpression()), !dbg !665
  %4 = icmp eq i8 %1, 0, !dbg !666
  %5 = select i1 %4, i8 39, i8 38
  call void @llvm.dbg.value(metadata i8 %5, metadata !660, metadata !DIExpression()), !dbg !664
  %6 = tail call zeroext i8 @check_l2cap_authentication_flag(i8* %0, i8 zeroext %5, i8 zeroext %2) #13, !dbg !668
  %7 = icmp eq i8 %2, 0, !dbg !669
  %8 = or i1 %4, %7, !dbg !672
  br i1 %8, label %12, label %9, !dbg !672

; <label>:9:                                      ; preds = %3
  %10 = bitcast i8* %0 to [6 x i8]*, !dbg !673
  %11 = tail call zeroext i8 @handle_remote_dev_type([6 x i8]* %10, i8 zeroext %2) #12, !dbg !675
  br label %12, !dbg !676

; <label>:12:                                     ; preds = %9, %3
  ret i8 %6, !dbg !677
}

; Function Attrs: optsize
declare zeroext i8 @handle_remote_dev_type([6 x i8]*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @check_current_sdp_company_type() local_unnamed_addr #0 section ".bt_stack_code" !dbg !678 {
  call void @llvm.dbg.value(metadata i8 0, metadata !682, metadata !DIExpression()), !dbg !689
  %1 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !690, !tbaa !499
  %2 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %1, i32 0, i32 2, !dbg !691
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !683, metadata !DIExpression()), !dbg !692
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !693
  br i1 %4, label %22, label %5, !dbg !693

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !695

; <label>:6:                                      ; preds = %17, %5
  %7 = phi %struct.btstack_linked_item* [ %19, %17 ], [ %3, %5 ]
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 7, !dbg !695
  %9 = bitcast %struct.btstack_linked_item* %8 to i16*, !dbg !695
  %10 = load i16, i16* %9, align 4, !dbg !695, !tbaa !697
  %11 = icmp eq i16 %10, 1, !dbg !701
  br i1 %11, label %12, label %17, !dbg !702

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 4, !dbg !703
  %14 = bitcast %struct.btstack_linked_item* %13 to %struct.channel_core_data_t*, !dbg !703
  %15 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %14, i32 0, i32 5, i32 0, !dbg !704
  call void @llvm.dbg.value(metadata i8* %15, metadata !659, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8 0, metadata !660, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8 0, metadata !661, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i8 39, metadata !660, metadata !DIExpression()), !dbg !707
  %16 = tail call zeroext i8 @check_l2cap_authentication_flag(i8* %15, i8 zeroext 39, i8 zeroext 0) #12, !dbg !709
  call void @llvm.dbg.value(metadata i8 %16, metadata !682, metadata !DIExpression()), !dbg !689
  br label %22

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !710
  %19 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %18, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %19, metadata !683, metadata !DIExpression()), !dbg !692
  %20 = icmp eq %struct.btstack_linked_item* %19, null, !dbg !693
  br i1 %20, label %21, label %6, !dbg !693, !llvm.loop !712

; <label>:21:                                     ; preds = %17
  br label %22, !dbg !715

; <label>:22:                                     ; preds = %21, %12, %0
  %23 = phi i8 [ %16, %12 ], [ 0, %0 ], [ 0, %21 ]
  ret i8 %23, !dbg !715
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_dispatch(%struct.l2cap_channel_t* nocapture readonly, i8 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !716 {
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !720, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i8 %1, metadata !721, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* %2, metadata !722, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i16 %3, metadata !723, metadata !DIExpression()), !dbg !727
  %5 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 4, !dbg !728
  %6 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %5, align 4, !dbg !728, !tbaa !730
  %7 = icmp eq void (i8, i16, i8*, i16)* %6, null, !dbg !731
  %8 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 7, !dbg !732
  %9 = load i16, i16* %8, align 2, !dbg !732
  br i1 %7, label %11, label %10, !dbg !734

; <label>:10:                                     ; preds = %4
  tail call void %6(i8 zeroext %1, i16 zeroext %9, i8* %2, i16 zeroext %3) #12, !dbg !735
  br label %17, !dbg !737

; <label>:11:                                     ; preds = %4
  %12 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !738, !tbaa !499
  %13 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %12, i32 0, i32 0, !dbg !739
  %14 = load void (i8*, i8, i16, i8*, i16)*, void (i8*, i8, i16, i8*, i16)** %13, align 4, !dbg !739, !tbaa !524
  %15 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 3, !dbg !740
  %16 = load i8*, i8** %15, align 4, !dbg !740, !tbaa !741
  tail call void %14(i8* %16, i8 zeroext %1, i16 zeroext %9, i8* %2, i16 zeroext %3) #12, !dbg !742
  br label %17

; <label>:17:                                     ; preds = %11, %10
  ret void, !dbg !743
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_emit_credits(%struct.l2cap_channel_t* nocapture readonly, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !744 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !748, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i8 %1, metadata !749, metadata !DIExpression()), !dbg !755
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 0, !dbg !756
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #7, !dbg !756
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !750, metadata !DIExpression()), !dbg !757
  store i8 116, i8* %4, align 1, !dbg !758, !tbaa !549
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 1, !dbg !759
  store i8 3, i8* %5, align 1, !dbg !760, !tbaa !549
  %6 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 7, !dbg !761
  %7 = load i16, i16* %6, align 2, !dbg !761, !tbaa !762
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 2, i16 zeroext %7) #12, !dbg !763
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 4, !dbg !764
  store i8 %1, i8* %8, align 1, !dbg !765, !tbaa !549
  call void @l2cap_dispatch(%struct.l2cap_channel_t* %0, i8 zeroext 4, i8* nonnull %4, i16 zeroext 5) #13, !dbg !766
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %4) #7, !dbg !767
  ret void, !dbg !767
}

; Function Attrs: optsize
declare void @bt_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @l2cap_hand_out_credits() local_unnamed_addr #0 section ".bt_stack_code" !dbg !768 {
  %1 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !778, !tbaa !499
  %2 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %1, i32 0, i32 2, !dbg !779
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !772, metadata !DIExpression()), !dbg !780
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !781
  br i1 %4, label %26, label %5, !dbg !781

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !783

; <label>:6:                                      ; preds = %21, %5
  %7 = phi %struct.btstack_linked_item* [ %23, %21 ], [ %3, %5 ]
  %8 = bitcast %struct.btstack_linked_item* %7 to %struct.l2cap_channel_t*, !dbg !783
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %8, metadata !773, metadata !DIExpression()), !dbg !784
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 4, !dbg !785
  %10 = bitcast %struct.btstack_linked_item* %9 to %struct.channel_core_data_t*, !dbg !785
  %11 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %10, i32 0, i32 1, !dbg !787
  %12 = load i8, i8* %11, align 2, !dbg !787, !tbaa !788
  %13 = icmp eq i8 %12, 8, !dbg !789
  br i1 %13, label %14, label %21, !dbg !790

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 1, !dbg !791
  %16 = bitcast %struct.btstack_linked_item* %15 to i16*, !dbg !791
  %17 = load i16, i16* %16, align 4, !dbg !791, !tbaa !793
  %18 = tail call zeroext i8 @hci_number_outgoing_packets(i16 zeroext %17) #12, !dbg !794
  %19 = icmp ult i8 %18, 3, !dbg !795
  br i1 %19, label %20, label %21, !dbg !796

; <label>:20:                                     ; preds = %14
  tail call void @l2cap_emit_credits(%struct.l2cap_channel_t* nonnull %8, i8 zeroext 1) #13, !dbg !797
  br label %21, !dbg !799

; <label>:21:                                     ; preds = %20, %14, %6
  %22 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !800
  %23 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %22, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %23, metadata !772, metadata !DIExpression()), !dbg !780
  %24 = icmp eq %struct.btstack_linked_item* %23, null, !dbg !781
  br i1 %24, label %25, label %6, !dbg !781, !llvm.loop !802

; <label>:25:                                     ; preds = %21
  br label %26, !dbg !805

; <label>:26:                                     ; preds = %25, %0
  ret void, !dbg !805
}

; Function Attrs: optsize
declare zeroext i8 @hci_number_outgoing_packets(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @l2cap_hand_out_credits_for_send() local_unnamed_addr #0 section ".bt_stack_code" !dbg !806 {
  %1 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !814, !tbaa !499
  %2 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %1, i32 0, i32 2, !dbg !815
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !808, metadata !DIExpression()), !dbg !816
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !817
  br i1 %4, label %20, label %5, !dbg !817

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !819

; <label>:6:                                      ; preds = %15, %5
  %7 = phi %struct.btstack_linked_item* [ %17, %15 ], [ %3, %5 ]
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %14, metadata !809, metadata !DIExpression()), !dbg !819
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 4, !dbg !820
  %9 = bitcast %struct.btstack_linked_item* %8 to %struct.channel_core_data_t*, !dbg !820
  %10 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %9, i32 0, i32 1, !dbg !822
  %11 = load i8, i8* %10, align 2, !dbg !822, !tbaa !788
  %12 = icmp eq i8 %11, 8, !dbg !823
  br i1 %12, label %13, label %15, !dbg !824

; <label>:13:                                     ; preds = %6
  %14 = bitcast %struct.btstack_linked_item* %7 to %struct.l2cap_channel_t*, !dbg !825
  tail call void @l2cap_emit_credits(%struct.l2cap_channel_t* %14, i8 zeroext 0) #13, !dbg !826
  br label %15, !dbg !827

; <label>:15:                                     ; preds = %13, %6
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !828
  %17 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %16, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %17, metadata !808, metadata !DIExpression()), !dbg !816
  %18 = icmp eq %struct.btstack_linked_item* %17, null, !dbg !817
  br i1 %18, label %19, label %6, !dbg !817, !llvm.loop !830

; <label>:19:                                     ; preds = %15
  br label %20, !dbg !833

; <label>:20:                                     ; preds = %19, %0
  ret void, !dbg !833
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @l2cap_get_local_cid_via_psm(i16 zeroext) local_unnamed_addr #6 section ".bt_stack_code" !dbg !834 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !838, metadata !DIExpression()), !dbg !844
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !845, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 2, !dbg !846
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !839, metadata !DIExpression()), !dbg !847
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !848
  br i1 %5, label %23, label %6, !dbg !848

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !850

; <label>:7:                                      ; preds = %18, %6
  %8 = phi %struct.btstack_linked_item* [ %20, %18 ], [ %4, %6 ]
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 7, !dbg !850
  %10 = bitcast %struct.btstack_linked_item* %9 to i16*, !dbg !850
  %11 = load i16, i16* %10, align 4, !dbg !850, !tbaa !697
  %12 = icmp eq i16 %11, %0, !dbg !852
  br i1 %12, label %13, label %18, !dbg !853

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 4, !dbg !854
  %15 = bitcast %struct.btstack_linked_item* %14 to %struct.channel_core_data_t*, !dbg !854
  %16 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %15, i32 0, i32 7, !dbg !855
  %17 = load i16, i16* %16, align 2, !dbg !855, !tbaa !762
  br label %23

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 0, i32 0, !dbg !857
  %20 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %19, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %20, metadata !839, metadata !DIExpression()), !dbg !847
  %21 = icmp eq %struct.btstack_linked_item* %20, null, !dbg !848
  br i1 %21, label %22, label %7, !dbg !848, !llvm.loop !859

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !862

; <label>:23:                                     ; preds = %22, %13, %1
  %24 = phi i16 [ %17, %13 ], [ 0, %1 ], [ 0, %22 ]
  ret i16 %24, !dbg !862
}

; Function Attrs: nounwind optsize
define hidden %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !863 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !867, metadata !DIExpression()), !dbg !873
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #12, !dbg !874
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !875, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 2, !dbg !876
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !868, metadata !DIExpression()), !dbg !877
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !878
  br i1 %5, label %21, label %6, !dbg !878

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !880

; <label>:7:                                      ; preds = %16, %6
  %8 = phi %struct.btstack_linked_item* [ %18, %16 ], [ %4, %6 ]
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %15, metadata !869, metadata !DIExpression()), !dbg !880
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 4, !dbg !881
  %10 = bitcast %struct.btstack_linked_item* %9 to %struct.channel_core_data_t*, !dbg !881
  %11 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %10, i32 0, i32 7, !dbg !883
  %12 = load i16, i16* %11, align 2, !dbg !883, !tbaa !762
  %13 = icmp eq i16 %12, %0, !dbg !884
  br i1 %13, label %14, label %16, !dbg !885

; <label>:14:                                     ; preds = %7
  %15 = bitcast %struct.btstack_linked_item* %8 to %struct.l2cap_channel_t*, !dbg !886
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #12, !dbg !887
  br label %22

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 0, i32 0, !dbg !889
  %18 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %17, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %18, metadata !868, metadata !DIExpression()), !dbg !877
  %19 = icmp eq %struct.btstack_linked_item* %18, null, !dbg !878
  br i1 %19, label %20, label %7, !dbg !878, !llvm.loop !891

; <label>:20:                                     ; preds = %16
  br label %21, !dbg !894

; <label>:21:                                     ; preds = %20, %1
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #12, !dbg !894
  br label %22, !dbg !895

; <label>:22:                                     ; preds = %21, %14
  %23 = phi %struct.l2cap_channel_t* [ %15, %14 ], [ null, %21 ]
  ret %struct.l2cap_channel_t* %23, !dbg !896
}

; Function Attrs: optsize
declare void @local_irq_disable(...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @local_irq_enable(...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_can_send_packet_now(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !897 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !901, metadata !DIExpression()), !dbg !903
  %2 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %0) #13, !dbg !904
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %2, metadata !902, metadata !DIExpression()), !dbg !905
  %3 = icmp ne %struct.l2cap_channel_t* %2, null, !dbg !906
  %4 = zext i1 %3 to i32, !dbg !906
  ret i32 %4, !dbg !909
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @l2cap_get_remote_mtu_for_local_cid(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !910 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !912, metadata !DIExpression()), !dbg !914
  %2 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %0) #13, !dbg !915
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %2, metadata !913, metadata !DIExpression()), !dbg !916
  %3 = icmp eq %struct.l2cap_channel_t* %2, null, !dbg !917
  br i1 %3, label %7, label %4, !dbg !919

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %2, i32 0, i32 5, i32 10, !dbg !920
  %6 = load i16, i16* %5, align 4, !dbg !920, !tbaa !922
  br label %7, !dbg !923

; <label>:7:                                      ; preds = %4, %1
  %8 = phi i16 [ %6, %4 ], [ 0, %1 ]
  ret i16 %8, !dbg !924
}

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_send_signaling_packet(i16 zeroext, i32, i32, ...) local_unnamed_addr #0 section ".bt_stack_code" !dbg !925 {
  %4 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !930, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 %1, metadata !931, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %2, metadata !932, metadata !DIExpression()), !dbg !943
  %5 = bitcast i8** %4 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !944
  call void @llvm.va_start(i8* nonnull %5), !dbg !945
  %6 = load i8*, i8** %4, align 4, !dbg !946, !tbaa !499
  call void @llvm.dbg.value(metadata i8* %6, metadata !934, metadata !DIExpression()), !dbg !947
  %7 = call zeroext i16 @l2cap_outgoing_acl_len(i32 %1, i8* %6) #12, !dbg !948
  call void @llvm.dbg.value(metadata i16 %7, metadata !940, metadata !DIExpression()), !dbg !949
  call void @llvm.va_end(i8* nonnull %5), !dbg !950
  %8 = call i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext %7) #12, !dbg !951
  call void @llvm.dbg.value(metadata i8* %8, metadata !933, metadata !DIExpression()), !dbg !952
  %9 = load i32, i32* @config_asser, align 4, !dbg !953, !tbaa !532
  %10 = icmp eq i32 %9, 0, !dbg !953
  %11 = icmp ne i8* %8, null
  br i1 %10, label %16, label %12, !dbg !957

; <label>:12:                                     ; preds = %3
  br i1 %11, label %18, label %13, !dbg !959

; <label>:13:                                     ; preds = %12
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i32 0, i32 0), i32 511) #13, !dbg !962
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)) #13, !dbg !966
  call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #12, !dbg !968
  br label %18, !dbg !962

; <label>:16:                                     ; preds = %3
  br i1 %11, label %18, label %17, !dbg !970

; <label>:17:                                     ; preds = %16
  call fastcc void @cpu_reset() #13, !dbg !973
  br label %18, !dbg !973

; <label>:18:                                     ; preds = %17, %16, %13, %12
  call void @llvm.va_start(i8* nonnull %5), !dbg !977
  %19 = trunc i32 %2 to i8, !dbg !978
  %20 = load i8*, i8** %4, align 4, !dbg !979, !tbaa !499
  call void @llvm.dbg.value(metadata i8* %20, metadata !934, metadata !DIExpression()), !dbg !947
  %21 = call zeroext i16 @l2cap_create_signaling_internal_bredr(i8* %8, i16 zeroext %0, i32 %1, i8 zeroext %19, i8* %20) #12, !dbg !980
  call void @llvm.dbg.value(metadata i16 %21, metadata !940, metadata !DIExpression()), !dbg !949
  call void @llvm.va_end(i8* nonnull %5), !dbg !981
  %22 = zext i16 %21 to i32, !dbg !982
  %23 = call i32 @bredr_hci_send_acl_packet(i8* %8, i32 %22, i8 zeroext 0) #12, !dbg !983
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !984
  ret i32 %23, !dbg !985
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: optsize
declare zeroext i16 @l2cap_outgoing_acl_len(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: optsize
declare i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #8 !dbg !986 {
  tail call void @p33_soft_reset() #12, !dbg !988
  ret void, !dbg !989
}

; Function Attrs: optsize
declare zeroext i16 @l2cap_create_signaling_internal_bredr(i8*, i16 zeroext, i32, i8 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bredr_hci_send_acl_packet(i8*, i32, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_send_prepared(i8*, i16 zeroext, i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i16 %1, metadata !995, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i16 %2, metadata !996, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %3, metadata !997, metadata !DIExpression()), !dbg !1003
  %5 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %1) #13, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %5, metadata !999, metadata !DIExpression()), !dbg !1005
  %6 = icmp eq %struct.l2cap_channel_t* %5, null, !dbg !1006
  %7 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !549
  %8 = zext i8 %7 to i32
  br i1 %6, label %9, label %15, !dbg !1008

; <label>:9:                                      ; preds = %4
  %10 = and i32 %8, 4, !dbg !1009
  %11 = icmp eq i32 %10, 0, !dbg !1009
  br i1 %11, label %36, label %12, !dbg !1012

; <label>:12:                                     ; preds = %9
  %13 = zext i16 %1 to i32, !dbg !1013
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i32 %13) #13, !dbg !1013
  br label %36, !dbg !1013

; <label>:15:                                     ; preds = %4
  %16 = and i32 %8, 1, !dbg !1015
  %17 = icmp eq i32 %16, 0, !dbg !1015
  br i1 %17, label %18, label %20, !dbg !1017

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %5, i32 0, i32 1, !dbg !1018
  br label %26, !dbg !1017

; <label>:20:                                     ; preds = %15
  %21 = zext i16 %1 to i32, !dbg !1019
  %22 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %5, i32 0, i32 1, !dbg !1019
  %23 = load i16, i16* %22, align 4, !dbg !1019, !tbaa !793
  %24 = zext i16 %23 to i32, !dbg !1019
  %25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0), i32 %21, i32 %24) #13, !dbg !1019
  br label %26, !dbg !1019

; <label>:26:                                     ; preds = %20, %18
  %27 = phi i16* [ %19, %18 ], [ %22, %20 ], !dbg !1018
  %28 = load i16, i16* %27, align 4, !dbg !1018, !tbaa !793
  %29 = or i16 %28, 8192, !dbg !1021
  tail call void @bt_store_16(i8* %0, i16 zeroext 0, i16 zeroext %29) #12, !dbg !1022
  %30 = zext i16 %2 to i32, !dbg !1023
  %31 = add i16 %2, 4, !dbg !1024
  tail call void @bt_store_16(i8* %0, i16 zeroext 2, i16 zeroext %31) #12, !dbg !1025
  tail call void @bt_store_16(i8* %0, i16 zeroext 4, i16 zeroext %2) #12, !dbg !1026
  %32 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %5, i32 0, i32 5, i32 8, !dbg !1027
  %33 = load i16, i16* %32, align 4, !dbg !1027, !tbaa !1028
  tail call void @bt_store_16(i8* %0, i16 zeroext 6, i16 zeroext %33) #12, !dbg !1029
  %34 = add nuw nsw i32 %30, 8, !dbg !1030
  %35 = tail call i32 @bredr_hci_send_acl_packet(i8* %0, i32 %34, i8 zeroext %3) #12, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %35, metadata !998, metadata !DIExpression()), !dbg !1032
  br label %36, !dbg !1033

; <label>:36:                                     ; preds = %26, %12, %9
  %37 = phi i32 [ %35, %26 ], [ -1, %9 ], [ -1, %12 ]
  ret i32 %37, !dbg !1034
}

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_send_internal(i16 zeroext, i8* nocapture readonly, i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1035 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1039, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8* %1, metadata !1040, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i16 %2, metadata !1041, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %3, metadata !1042, metadata !DIExpression()), !dbg !1048
  %5 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %0) #13, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %5, metadata !1044, metadata !DIExpression()), !dbg !1050
  %6 = icmp eq %struct.l2cap_channel_t* %5, null, !dbg !1051
  br i1 %6, label %27, label %7, !dbg !1053

; <label>:7:                                      ; preds = %4
  %8 = zext i16 %2 to i32, !dbg !1054
  %9 = add i16 %2, 8, !dbg !1055
  %10 = tail call i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext %9) #12, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %10, metadata !1043, metadata !DIExpression()), !dbg !1057
  %11 = load i32, i32* @config_asser, align 4, !dbg !1058, !tbaa !532
  %12 = icmp eq i32 %11, 0, !dbg !1058
  %13 = icmp ne i8* %10, null
  br i1 %12, label %18, label %14, !dbg !1062

; <label>:14:                                     ; preds = %7
  br i1 %13, label %20, label %15, !dbg !1064

; <label>:15:                                     ; preds = %14
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i32 0, i32 0), i32 626) #13, !dbg !1067
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !1071
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #12, !dbg !1073
  br label %20, !dbg !1067

; <label>:18:                                     ; preds = %7
  br i1 %13, label %20, label %19, !dbg !1075

; <label>:19:                                     ; preds = %18
  tail call fastcc void @cpu_reset() #13, !dbg !1078
  br label %20, !dbg !1078

; <label>:20:                                     ; preds = %19, %18, %15, %14
  %21 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %5, i32 0, i32 5, i32 11, !dbg !1082
  %22 = load i8, i8* %21, align 2, !dbg !1082, !tbaa !1084
  %23 = icmp eq i8 %22, 0, !dbg !1085
  br i1 %23, label %24, label %27, !dbg !1086

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %10, i32 8, !dbg !1087
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %1, i32 %8, i32 1, i1 false), !dbg !1089
  %26 = tail call i32 @l2cap_send_prepared(i8* %10, i16 zeroext %0, i16 zeroext %2, i8 zeroext %3) #13, !dbg !1090
  br label %27, !dbg !1091

; <label>:27:                                     ; preds = %24, %20, %4
  %28 = phi i32 [ %26, %24 ], [ -1, %4 ], [ 0, %20 ]
  ret i32 %28, !dbg !1092
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_run() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1093 {
  %1 = alloca [6 x i8], align 1
  %2 = alloca [12 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1133
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0, !dbg !1134
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #7, !dbg !1134
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %1, metadata !1096, metadata !DIExpression()), !dbg !1135
  %6 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i32 0, i32 0, !dbg !1136
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %6) #7, !dbg !1136
  tail call void @llvm.dbg.declare(metadata [12 x i8]* %2, metadata !1103, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1133
  %7 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1138, !tbaa !499
  %8 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %7, i32 0, i32 3, i32 1, !dbg !1140
  %9 = load i32, i32* %8, align 4, !dbg !1140, !tbaa !515
  %10 = icmp eq i32 %9, 0, !dbg !1141
  br i1 %10, label %110, label %11, !dbg !1141

; <label>:11:                                     ; preds = %0
  %12 = bitcast i32* %3 to i8*
  %13 = load i32, i32* @config_stack_modules, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br label %21, !dbg !1141

; <label>:16:                                     ; preds = %80, %73
  call void @llvm.dbg.value(metadata i8 1, metadata !1095, metadata !DIExpression()), !dbg !1133
  %17 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1138, !tbaa !499
  %18 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %17, i32 0, i32 3, i32 1, !dbg !1140
  %19 = load i32, i32* %18, align 4, !dbg !1140, !tbaa !515
  %20 = icmp eq i32 %19, 0, !dbg !1141
  br i1 %20, label %109, label %21, !dbg !1141

; <label>:21:                                     ; preds = %16, %11
  %22 = phi %struct.l2cap_stack_t* [ %7, %11 ], [ %17, %16 ]
  %23 = phi i1 [ true, %11 ], [ false, %16 ]
  br label %24, !dbg !1141

; <label>:24:                                     ; preds = %91, %21
  %25 = phi %struct.l2cap_stack_t* [ %22, %21 ], [ %87, %91 ]
  %26 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %25, i32 0, i32 3, i32 0, i32 0, i32 0, !dbg !1142
  %27 = load i16, i16* %26, align 4, !dbg !1142, !tbaa !1143
  call void @llvm.dbg.value(metadata i16 %27, metadata !1098, metadata !DIExpression()), !dbg !1145
  %28 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %25, i32 0, i32 3, i32 0, i32 0, i32 1, !dbg !1146
  %29 = load i8, i8* %28, align 2, !dbg !1146, !tbaa !1147
  call void @llvm.dbg.value(metadata i8 %29, metadata !1099, metadata !DIExpression()), !dbg !1148
  %30 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %25, i32 0, i32 3, i32 0, i32 0, i32 4, !dbg !1149
  %31 = load i16, i16* %30, align 2, !dbg !1149, !tbaa !1150
  call void @llvm.dbg.value(metadata i16 %31, metadata !1100, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i16 %31, metadata !1101, metadata !DIExpression()), !dbg !1152
  %32 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %25, i32 0, i32 3, i32 0, i32 0, i32 2, !dbg !1153
  %33 = load i8, i8* %32, align 1, !dbg !1153, !tbaa !1154
  switch i8 %33, label %86 [
    i8 2, label %34
    i8 10, label %44
    i8 1, label %62
    i8 20, label %72
    i8 31, label %79
  ], !dbg !1155

; <label>:34:                                     ; preds = %24
  %35 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1156, !tbaa !549
  %36 = and i8 %35, 1, !dbg !1156
  %37 = icmp eq i8 %36, 0, !dbg !1156
  br i1 %37, label %40, label %38, !dbg !1158

; <label>:38:                                     ; preds = %34
  %39 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.64, i32 0, i32 0)), !dbg !1159
  br label %40, !dbg !1159

; <label>:40:                                     ; preds = %38, %34
  %41 = zext i8 %29 to i32, !dbg !1161
  %42 = zext i16 %31 to i32, !dbg !1162
  %43 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %27, i32 3, i32 %41, i32 0, i32 0, i32 %42, i32 1) #13, !dbg !1163
  br label %86, !dbg !1164

; <label>:44:                                     ; preds = %24
  %45 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1165, !tbaa !549
  %46 = and i8 %45, 1, !dbg !1165
  %47 = icmp eq i8 %46, 0, !dbg !1165
  %48 = zext i16 %31 to i32
  br i1 %47, label %51, label %49, !dbg !1167

; <label>:49:                                     ; preds = %44
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i32 %48) #13, !dbg !1168
  br label %51, !dbg !1168

; <label>:51:                                     ; preds = %49, %44
  %52 = icmp eq i16 %31, 2, !dbg !1170
  br i1 %52, label %53, label %59, !dbg !1171

; <label>:53:                                     ; preds = %51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #7, !dbg !1172
  %54 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1173, !tbaa !499
  %55 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %54, i32 0, i32 3, i32 2, !dbg !1174
  %56 = load i32, i32* %55, align 4, !dbg !1174, !tbaa !528
  call void @llvm.dbg.value(metadata i32 %56, metadata !1109, metadata !DIExpression()), !dbg !1175
  store i32 %56, i32* %3, align 4, !dbg !1175, !tbaa !532
  %57 = zext i8 %29 to i32, !dbg !1176
  call void @llvm.dbg.value(metadata i32* %3, metadata !1109, metadata !DIExpression(DW_OP_deref)), !dbg !1175
  %58 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %27, i32 11, i32 %57, i32 %48, i32 0, i32 4, i32* nonnull %3) #13, !dbg !1177
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #7, !dbg !1178
  br label %86, !dbg !1179

; <label>:59:                                     ; preds = %51
  %60 = zext i8 %29 to i32, !dbg !1180
  %61 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %27, i32 11, i32 %60, i32 %48, i32 1, i32 0, i8* null) #13, !dbg !1182
  br label %86

; <label>:62:                                     ; preds = %24
  %63 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1183, !tbaa !549
  %64 = and i8 %63, 4, !dbg !1183
  %65 = icmp eq i8 %64, 0, !dbg !1183
  br i1 %65, label %68, label %66, !dbg !1185

; <label>:66:                                     ; preds = %62
  %67 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.63, i32 0, i32 0)), !dbg !1186
  br label %68, !dbg !1186

; <label>:68:                                     ; preds = %66, %62
  %69 = zext i8 %29 to i32, !dbg !1188
  %70 = zext i16 %31 to i32, !dbg !1189
  %71 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %27, i32 1, i32 %69, i32 %70) #13, !dbg !1190
  br label %86, !dbg !1191

; <label>:72:                                     ; preds = %24
  br i1 %15, label %86, label %73, !dbg !1192

; <label>:73:                                     ; preds = %72
  %74 = call i32 @hci_can_send_acl_packet_now(i16 zeroext %27) #12, !dbg !1193
  %75 = icmp eq i32 %74, 0, !dbg !1193
  br i1 %75, label %16, label %76, !dbg !1197

; <label>:76:                                     ; preds = %73
  %77 = zext i8 %29 to i32, !dbg !1198
  %78 = zext i16 %31 to i32, !dbg !1199
  call void (i16, i32, i32, ...) @l2cap_send_le_signaling_packet(i16 zeroext %27, i32 21, i32 %77, i32 0, i32 0, i32 0, i32 0, i32 %78) #13, !dbg !1200
  br label %86, !dbg !1201

; <label>:79:                                     ; preds = %24
  br i1 %15, label %86, label %80, !dbg !1202

; <label>:80:                                     ; preds = %79
  %81 = call i32 @hci_can_send_acl_packet_now(i16 zeroext %27) #12, !dbg !1203
  %82 = icmp eq i32 %81, 0, !dbg !1203
  br i1 %82, label %16, label %83, !dbg !1207

; <label>:83:                                     ; preds = %80
  %84 = zext i8 %29 to i32, !dbg !1208
  %85 = zext i16 %31 to i32, !dbg !1209
  call void (i16, i32, i32, ...) @l2cap_send_le_signaling_packet(i16 zeroext %27, i32 1, i32 %84, i32 %85, i32 0, i8* null) #13, !dbg !1210
  br label %86, !dbg !1211

; <label>:86:                                     ; preds = %83, %79, %76, %72, %68, %59, %53, %40, %24
  call void @llvm.dbg.value(metadata i8 undef, metadata !1095, metadata !DIExpression()), !dbg !1133
  %87 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !tbaa !499
  %88 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %87, i32 0, i32 3, i32 1
  %89 = load i32, i32* %88, align 4, !tbaa !515
  br i1 %23, label %94, label %91, !dbg !1212

; <label>:90:                                     ; preds = %98
  br label %91, !dbg !1133

; <label>:91:                                     ; preds = %94, %90, %86
  %92 = phi i32 [ %95, %94 ], [ %89, %86 ], [ %106, %90 ], !dbg !1140
  call void @llvm.dbg.value(metadata i8 undef, metadata !1095, metadata !DIExpression()), !dbg !1133
  %93 = icmp eq i32 %92, 0, !dbg !1141
  br i1 %93, label %108, label %24, !dbg !1141, !llvm.loop !1213

; <label>:94:                                     ; preds = %86
  %95 = add nsw i32 %89, -1, !dbg !1216
  store i32 %95, i32* %88, align 4, !dbg !1216, !tbaa !515
  call void @llvm.dbg.value(metadata i32 0, metadata !1102, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 0, metadata !1102, metadata !DIExpression()), !dbg !1217
  %96 = icmp sgt i32 %95, 0, !dbg !1218
  br i1 %96, label %97, label %91, !dbg !1222, !llvm.loop !1213

; <label>:97:                                     ; preds = %94
  br label %98, !dbg !1224

; <label>:98:                                     ; preds = %98, %97
  %99 = phi i32 [ %101, %98 ], [ 0, %97 ]
  %100 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %87, i32 0, i32 3, i32 0, i32 %99, !dbg !1224
  %101 = add nuw nsw i32 %99, 1, !dbg !1226
  %102 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %87, i32 0, i32 3, i32 0, i32 %101, !dbg !1227
  %103 = bitcast %struct.l2cap_signaling_response* %102 to i64*, !dbg !1228
  %104 = bitcast %struct.l2cap_signaling_response* %100 to i64*, !dbg !1228
  %105 = load i64, i64* %103, align 4, !dbg !1228
  store i64 %105, i64* %104, align 4, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %101, metadata !1102, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 %101, metadata !1102, metadata !DIExpression()), !dbg !1217
  %106 = load i32, i32* %88, align 4, !dbg !1229, !tbaa !515
  %107 = icmp slt i32 %101, %106, !dbg !1218
  br i1 %107, label %98, label %90, !dbg !1222, !llvm.loop !1230

; <label>:108:                                    ; preds = %91
  br label %110, !dbg !1233

; <label>:109:                                    ; preds = %16
  br label %110, !dbg !1233

; <label>:110:                                    ; preds = %109, %108, %0
  %111 = phi %struct.l2cap_stack_t* [ %7, %0 ], [ %87, %108 ], [ %17, %109 ]
  %112 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %111, i32 0, i32 2, !dbg !1233
  %113 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %112, align 4, !dbg !1233, !tbaa !518
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %113, metadata !1107, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %113, metadata !1107, metadata !DIExpression()), !dbg !1234
  %114 = icmp eq %struct.btstack_linked_item* %113, null, !dbg !1235
  br i1 %114, label %421, label %115, !dbg !1235

; <label>:115:                                    ; preds = %110
  %116 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i32 0, i32 1
  br label %117, !dbg !1235

; <label>:117:                                    ; preds = %198, %115
  %118 = phi %struct.btstack_linked_item* [ %113, %115 ], [ %121, %198 ]
  %119 = bitcast %struct.btstack_linked_item* %118 to %struct.l2cap_channel_t*
  %120 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 0, i32 0, !dbg !1237
  %121 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %120, align 4, !dbg !1237, !tbaa !1238
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %121, metadata !1108, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %119, metadata !1114, metadata !DIExpression()), !dbg !1240
  %122 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 4, !dbg !1241
  %123 = bitcast %struct.btstack_linked_item* %122 to %struct.channel_core_data_t*, !dbg !1241
  %124 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 1, !dbg !1242
  %125 = load i8, i8* %124, align 2, !dbg !1242, !tbaa !788
  switch i8 %125, label %198 [
    i8 2, label %126
    i8 11, label %136
    i8 12, label %161
    i8 10, label %185
    i8 7, label %225
    i8 14, label %372
    i8 13, label %393
  ], !dbg !1243

; <label>:126:                                    ; preds = %117
  %127 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1244, !tbaa !549
  %128 = and i8 %127, 1, !dbg !1244
  %129 = icmp eq i8 %128, 0, !dbg !1244
  %130 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 5, i32 0
  br i1 %129, label %134, label %131, !dbg !1246

; <label>:131:                                    ; preds = %126
  %132 = call i8* @bd_addr_to_str(i8* %130) #12, !dbg !1247
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* %132) #13, !dbg !1249
  br label %134, !dbg !1247

; <label>:134:                                    ; preds = %131, %126
  store i8 3, i8* %124, align 2, !dbg !1251, !tbaa !788
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %5, i8* %130, i32 6, i32 1, i1 false), !dbg !1252
  %135 = call zeroext i16 @hci_usable_acl_packet_types() #12, !dbg !1253
  call void @hci_create_connection_cmd(i8* nonnull %5, i16 zeroext %135, i8 zeroext 0, i8 zeroext 0, i16 zeroext 0, i8 zeroext 0) #12, !dbg !1254
  br label %198, !dbg !1256

; <label>:136:                                    ; preds = %117
  %137 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1257, !tbaa !549
  %138 = and i8 %137, 1, !dbg !1257
  %139 = icmp eq i8 %138, 0, !dbg !1257
  br i1 %139, label %142, label %140, !dbg !1259

; <label>:140:                                    ; preds = %136
  %141 = call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.62, i32 0, i32 0)), !dbg !1260
  br label %142, !dbg !1260

; <label>:142:                                    ; preds = %140, %136
  %143 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1262
  %144 = bitcast %struct.btstack_linked_item* %143 to i16*, !dbg !1262
  %145 = load i16, i16* %144, align 4, !dbg !1262, !tbaa !793
  %146 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 2, !dbg !1263
  %147 = load i8, i8* %146, align 1, !dbg !1263, !tbaa !1264
  %148 = zext i8 %147 to i32, !dbg !1265
  %149 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 4, !dbg !1266
  %150 = load i8, i8* %149, align 1, !dbg !1266, !tbaa !1267
  %151 = zext i8 %150 to i32, !dbg !1268
  %152 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %145, i32 3, i32 %148, i32 0, i32 0, i32 %151, i32 0) #13, !dbg !1269
  %153 = load i8, i8* %149, align 1, !dbg !1270, !tbaa !1267
  %154 = icmp eq i8 %153, 1, !dbg !1272
  br i1 %154, label %155, label %156, !dbg !1273

; <label>:155:                                    ; preds = %142
  store i8 15, i8* %124, align 2, !dbg !1274, !tbaa !788
  br label %198, !dbg !1276

; <label>:156:                                    ; preds = %142
  %157 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1277, !tbaa !499
  %158 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %157, i32 0, i32 2, !dbg !1277
  %159 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %158, %struct.btstack_linked_item* nonnull %118) #12, !dbg !1277
  %160 = bitcast %struct.btstack_linked_item* %118 to i8*, !dbg !1279
  call void @btstack_memory_l2cap_channel_free(i8* %160) #12, !dbg !1280
  br label %198

; <label>:161:                                    ; preds = %117
  %162 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1281, !tbaa !549
  %163 = and i8 %162, 1, !dbg !1281
  %164 = icmp eq i8 %163, 0, !dbg !1281
  br i1 %164, label %167, label %165, !dbg !1283

; <label>:165:                                    ; preds = %161
  %166 = call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @str.61, i32 0, i32 0)), !dbg !1284
  br label %167, !dbg !1284

; <label>:167:                                    ; preds = %165, %161
  store i8 7, i8* %124, align 2, !dbg !1286, !tbaa !788
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* undef, metadata !1287, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 4, metadata !1292, metadata !DIExpression()), !dbg !1295
  %168 = bitcast %struct.btstack_linked_item* %122 to i16*, !dbg !1296
  %169 = load i16, i16* %168, align 4, !dbg !1296, !tbaa !1297
  %170 = or i16 %169, 4, !dbg !1298
  store i16 %170, i16* %168, align 4, !dbg !1299, !tbaa !1297
  %171 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1300
  %172 = bitcast %struct.btstack_linked_item* %171 to i16*, !dbg !1300
  %173 = load i16, i16* %172, align 4, !dbg !1300, !tbaa !793
  %174 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 2, !dbg !1301
  %175 = load i8, i8* %174, align 1, !dbg !1301, !tbaa !1264
  %176 = zext i8 %175 to i32, !dbg !1302
  %177 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 7, !dbg !1303
  %178 = load i16, i16* %177, align 2, !dbg !1303, !tbaa !762
  %179 = zext i16 %178 to i32, !dbg !1304
  %180 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !1305
  %181 = bitcast %struct.btstack_linked_item* %180 to i16*, !dbg !1305
  %182 = load i16, i16* %181, align 4, !dbg !1305, !tbaa !1028
  %183 = zext i16 %182 to i32, !dbg !1306
  %184 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %173, i32 3, i32 %176, i32 %179, i32 %183, i32 0, i32 0) #13, !dbg !1307
  br label %198, !dbg !1308

; <label>:185:                                    ; preds = %117
  %186 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 5, i32 0, !dbg !1309
  %187 = call zeroext i8 @check_l2cap_authentication_flag(i8* %186, i8 zeroext 35, i8 zeroext 0) #13, !dbg !1311
  %188 = icmp eq i8 %187, 33, !dbg !1312
  br i1 %188, label %189, label %202, !dbg !1313

; <label>:189:                                    ; preds = %185
  %190 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1314, !tbaa !499
  %191 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %190, i32 0, i32 3, !dbg !1316
  %192 = load i16, i16* %191, align 4, !dbg !1316, !tbaa !1317
  %193 = icmp eq i16 %192, 0, !dbg !1319
  br i1 %193, label %194, label %202, !dbg !1320

; <label>:194:                                    ; preds = %189
  %195 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1321, !tbaa !549
  %196 = and i8 %195, 1, !dbg !1321
  %197 = icmp eq i8 %196, 0, !dbg !1321
  br i1 %197, label %198, label %200, !dbg !1324

; <label>:198:                                    ; preds = %399, %378, %371, %367, %211, %200, %194, %167, %156, %155, %134, %117
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %121, metadata !1107, metadata !DIExpression()), !dbg !1234
  %199 = icmp eq %struct.btstack_linked_item* %121, null, !dbg !1235
  br i1 %199, label %420, label %117, !dbg !1235, !llvm.loop !1325

; <label>:200:                                    ; preds = %194
  %201 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @str.60, i32 0, i32 0)), !dbg !1328
  br label %198, !dbg !1328

; <label>:202:                                    ; preds = %189, %185
  %203 = load i8, i8* %124, align 2, !dbg !1330, !tbaa !788
  %204 = icmp eq i8 %203, 5, !dbg !1333
  br i1 %204, label %483, label %205, !dbg !1334

; <label>:205:                                    ; preds = %202
  %206 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1335, !tbaa !549
  %207 = and i8 %206, 1, !dbg !1335
  %208 = icmp eq i8 %207, 0, !dbg !1335
  br i1 %208, label %211, label %209, !dbg !1337

; <label>:209:                                    ; preds = %205
  %210 = call i32 @puts(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @str.59, i32 0, i32 0)), !dbg !1338
  br label %211, !dbg !1338

; <label>:211:                                    ; preds = %209, %205
  %212 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1340, !tbaa !499
  %213 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %212, i32 0, i32 3, i32 4, !dbg !1344
  %214 = load i8, i8* %213, align 4, !dbg !1344, !tbaa !505
  %215 = icmp eq i8 %214, -1, !dbg !1345
  %216 = add i8 %214, 1, !dbg !1346
  %217 = select i1 %215, i8 1, i8 %216, !dbg !1348
  store i8 %217, i8* %213, align 4, !tbaa !505
  %218 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 5, !dbg !1349
  %219 = bitcast %struct.btstack_linked_item* %218 to i8*, !dbg !1349
  store i8 %217, i8* %219, align 4, !dbg !1350, !tbaa !1351
  store i8 5, i8* %124, align 2, !dbg !1352, !tbaa !788
  %220 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1353
  %221 = bitcast %struct.btstack_linked_item* %220 to i16*, !dbg !1353
  %222 = load i16, i16* %221, align 4, !dbg !1353, !tbaa !793
  %223 = zext i8 %217 to i32, !dbg !1354
  %224 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %222, i32 10, i32 %223, i32 2) #13, !dbg !1355
  br label %198

; <label>:225:                                    ; preds = %117
  %226 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1356, !tbaa !549
  %227 = and i8 %226, 1, !dbg !1356
  %228 = icmp eq i8 %227, 0, !dbg !1356
  br i1 %228, label %231, label %229, !dbg !1358

; <label>:229:                                    ; preds = %225
  %230 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.58, i32 0, i32 0)), !dbg !1359
  br label %231, !dbg !1359

; <label>:231:                                    ; preds = %229, %225
  %232 = bitcast %struct.btstack_linked_item* %122 to i16*, !dbg !1361
  %233 = load i16, i16* %232, align 4, !dbg !1361, !tbaa !1297
  %234 = zext i16 %233 to i32, !dbg !1362
  %235 = and i32 %234, 8, !dbg !1363
  %236 = icmp eq i32 %235, 0, !dbg !1363
  br i1 %236, label %327, label %237, !dbg !1364

; <label>:237:                                    ; preds = %231
  call void @llvm.dbg.value(metadata i16 0, metadata !1118, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* undef, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 8, metadata !1369, metadata !DIExpression()), !dbg !1372
  %238 = and i16 %233, -9, !dbg !1373
  %239 = and i16 %233, 256, !dbg !1374
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* undef, metadata !1287, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 32, metadata !1292, metadata !DIExpression()), !dbg !1379
  %240 = lshr exact i16 %239, 3, !dbg !1380
  %241 = xor i16 %240, 32, !dbg !1380
  %242 = or i16 %241, %238, !dbg !1380
  %243 = lshr exact i16 %239, 8, !dbg !1380
  %244 = zext i16 %243 to i32, !dbg !1380
  store i16 %242, i16* %232, align 4, !dbg !1381, !tbaa !1297
  %245 = zext i16 %242 to i32, !dbg !1382
  %246 = and i32 %245, 512, !dbg !1384
  %247 = icmp eq i32 %246, 0, !dbg !1384
  br i1 %247, label %276, label %248, !dbg !1385

; <label>:248:                                    ; preds = %237
  %249 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 11, !dbg !1386
  %250 = bitcast %struct.btstack_linked_item* %249 to %struct.retran_flow_ctl_op_t*, !dbg !1386
  %251 = getelementptr inbounds %struct.retran_flow_ctl_op_t, %struct.retran_flow_ctl_op_t* %250, i32 0, i32 3, !dbg !1388
  %252 = load i8, i8* %251, align 1, !dbg !1388, !tbaa !1389
  store i8 %252, i8* %6, align 1, !dbg !1390, !tbaa !549
  store i8 2, i8* %116, align 1, !dbg !1391, !tbaa !549
  %253 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 13, !dbg !1392
  %254 = bitcast %struct.btstack_linked_item* %253 to i16*, !dbg !1392
  %255 = load i16, i16* %254, align 4, !dbg !1392, !tbaa !1393
  call void @bt_store_16(i8* nonnull %6, i16 zeroext 2, i16 zeroext %255) #12, !dbg !1394
  %256 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1395
  %257 = bitcast %struct.btstack_linked_item* %256 to i16*, !dbg !1395
  %258 = load i16, i16* %257, align 4, !dbg !1395, !tbaa !793
  %259 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 2, !dbg !1396
  %260 = load i8, i8* %259, align 1, !dbg !1396, !tbaa !1264
  %261 = zext i8 %260 to i32, !dbg !1397
  %262 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !1398
  %263 = bitcast %struct.btstack_linked_item* %262 to i16*, !dbg !1398
  %264 = load i16, i16* %263, align 4, !dbg !1398, !tbaa !1028
  %265 = zext i16 %264 to i32, !dbg !1399
  %266 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %258, i32 5, i32 %261, i32 %265, i32 %244, i32 3, i32 4, i8* nonnull %6) #13, !dbg !1400
  %267 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1401, !tbaa !549
  %268 = icmp slt i8 %267, 0, !dbg !1401
  br i1 %268, label %269, label %273, !dbg !1403

; <label>:269:                                    ; preds = %248
  %270 = load i8, i8* %251, align 1, !dbg !1404, !tbaa !1389
  %271 = zext i8 %270 to i32, !dbg !1404
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i32 0, i32 0), i32 %271) #13, !dbg !1404
  br label %273, !dbg !1404

; <label>:273:                                    ; preds = %269, %248
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %119, metadata !1366, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i32 32, metadata !1369, metadata !DIExpression()), !dbg !1408
  %274 = load i16, i16* %232, align 4, !dbg !1409, !tbaa !1297
  %275 = and i16 %274, -33, !dbg !1410
  store i16 %275, i16* %232, align 4, !dbg !1411, !tbaa !1297
  br label %324, !dbg !1412

; <label>:276:                                    ; preds = %237
  %277 = and i32 %245, 64, !dbg !1413
  %278 = icmp eq i32 %277, 0, !dbg !1413
  br i1 %278, label %302, label %279, !dbg !1416

; <label>:279:                                    ; preds = %276
  %280 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1418, !tbaa !549
  %281 = and i8 %280, 1, !dbg !1418
  %282 = icmp eq i8 %281, 0, !dbg !1418
  br i1 %282, label %285, label %283, !dbg !1421

; <label>:283:                                    ; preds = %279
  %284 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.57, i32 0, i32 0)), !dbg !1422
  br label %285, !dbg !1422

; <label>:285:                                    ; preds = %283, %279
  store i8 1, i8* %6, align 1, !dbg !1424, !tbaa !549
  store i8 2, i8* %116, align 1, !dbg !1425, !tbaa !549
  %286 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 9, !dbg !1426
  %287 = bitcast %struct.btstack_linked_item* %286 to i16*, !dbg !1426
  %288 = load i16, i16* %287, align 4, !dbg !1426, !tbaa !922
  call void @bt_store_16(i8* nonnull %6, i16 zeroext 2, i16 zeroext %288) #12, !dbg !1427
  %289 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1428
  %290 = bitcast %struct.btstack_linked_item* %289 to i16*, !dbg !1428
  %291 = load i16, i16* %290, align 4, !dbg !1428, !tbaa !793
  %292 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 2, !dbg !1429
  %293 = load i8, i8* %292, align 1, !dbg !1429, !tbaa !1264
  %294 = zext i8 %293 to i32, !dbg !1430
  %295 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !1431
  %296 = bitcast %struct.btstack_linked_item* %295 to i16*, !dbg !1431
  %297 = load i16, i16* %296, align 4, !dbg !1431, !tbaa !1028
  %298 = zext i16 %297 to i32, !dbg !1432
  %299 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %291, i32 5, i32 %294, i32 %298, i32 %244, i32 0, i32 4, i8* nonnull %6) #13, !dbg !1433
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %119, metadata !1366, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 64, metadata !1369, metadata !DIExpression()), !dbg !1436
  %300 = load i16, i16* %232, align 4, !dbg !1437, !tbaa !1297
  %301 = and i16 %300, -65, !dbg !1438
  store i16 %301, i16* %232, align 4, !dbg !1439, !tbaa !1297
  br label %324, !dbg !1440

; <label>:302:                                    ; preds = %276
  %303 = trunc i16 %233 to i8, !dbg !1441
  %304 = icmp slt i8 %303, 0, !dbg !1441
  br i1 %304, label %324, label %305, !dbg !1444

; <label>:305:                                    ; preds = %302
  %306 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1445, !tbaa !549
  %307 = and i8 %306, 1, !dbg !1445
  %308 = icmp eq i8 %307, 0, !dbg !1445
  br i1 %308, label %311, label %309, !dbg !1448

; <label>:309:                                    ; preds = %305
  %310 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.56, i32 0, i32 0)), !dbg !1449
  br label %311, !dbg !1449

; <label>:311:                                    ; preds = %309, %305
  %312 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1451
  %313 = bitcast %struct.btstack_linked_item* %312 to i16*, !dbg !1451
  %314 = load i16, i16* %313, align 4, !dbg !1451, !tbaa !793
  %315 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 2, !dbg !1452
  %316 = load i8, i8* %315, align 1, !dbg !1452, !tbaa !1264
  %317 = zext i8 %316 to i32, !dbg !1453
  %318 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !1454
  %319 = bitcast %struct.btstack_linked_item* %318 to i16*, !dbg !1454
  %320 = load i16, i16* %319, align 4, !dbg !1454, !tbaa !1028
  %321 = zext i16 %320 to i32, !dbg !1455
  %322 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %314, i32 5, i32 %317, i32 %321, i32 %244, i32 0, i32 0, i8* null) #13, !dbg !1456
  %323 = load i16, i16* %232, align 4, !tbaa !1297
  br label %324

; <label>:324:                                    ; preds = %311, %302, %285, %273
  %325 = phi i16 [ %301, %285 ], [ %242, %302 ], [ %323, %311 ], [ %275, %273 ], !dbg !1457
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %119, metadata !1366, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 256, metadata !1369, metadata !DIExpression()), !dbg !1460
  %326 = and i16 %325, -257, !dbg !1461
  store i16 %326, i16* %232, align 4, !dbg !1462, !tbaa !1297
  br label %367, !dbg !1463

; <label>:327:                                    ; preds = %231
  %328 = and i32 %234, 4, !dbg !1464
  %329 = icmp eq i32 %328, 0, !dbg !1464
  br i1 %329, label %367, label %330, !dbg !1467

; <label>:330:                                    ; preds = %327
  %331 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1469, !tbaa !549
  %332 = and i8 %331, 1, !dbg !1469
  %333 = icmp eq i8 %332, 0, !dbg !1469
  br i1 %333, label %337, label %334, !dbg !1472

; <label>:334:                                    ; preds = %330
  %335 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.55, i32 0, i32 0)), !dbg !1473
  %336 = load i16, i16* %232, align 4, !tbaa !1297
  br label %337, !dbg !1473

; <label>:337:                                    ; preds = %334, %330
  %338 = phi i16 [ %233, %330 ], [ %336, %334 ], !dbg !1475
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %119, metadata !1366, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 4, metadata !1369, metadata !DIExpression()), !dbg !1478
  %339 = and i16 %338, -21, !dbg !1479
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %119, metadata !1287, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 16, metadata !1292, metadata !DIExpression()), !dbg !1482
  %340 = or i16 %339, 16, !dbg !1483
  store i16 %340, i16* %232, align 4, !dbg !1484, !tbaa !1297
  %341 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1485, !tbaa !499
  %342 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %341, i32 0, i32 3, i32 4, !dbg !1487
  %343 = load i8, i8* %342, align 4, !dbg !1487, !tbaa !505
  %344 = icmp eq i8 %343, -1, !dbg !1488
  %345 = add i8 %343, 1, !dbg !1489
  %346 = select i1 %344, i8 1, i8 %345, !dbg !1490
  store i8 %346, i8* %342, align 4, !tbaa !505
  %347 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 5, !dbg !1491
  %348 = bitcast %struct.btstack_linked_item* %347 to i8*, !dbg !1491
  store i8 %346, i8* %348, align 4, !dbg !1492, !tbaa !1351
  %349 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %341, i32 0, i32 3, i32 2, !dbg !1493
  %350 = load i32, i32* %349, align 4, !dbg !1493, !tbaa !528
  %351 = and i32 %350, 16, !dbg !1495
  %352 = icmp eq i32 %351, 0, !dbg !1495
  br i1 %352, label %353, label %367, !dbg !1496

; <label>:353:                                    ; preds = %337
  store i8 1, i8* %6, align 1, !dbg !1497, !tbaa !549
  store i8 2, i8* %116, align 1, !dbg !1499, !tbaa !549
  %354 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 9, !dbg !1500
  %355 = load i16, i16* %354, align 2, !dbg !1500, !tbaa !1501
  call void @bt_store_16(i8* nonnull %6, i16 zeroext 2, i16 zeroext %355) #12, !dbg !1502
  %356 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1503
  %357 = bitcast %struct.btstack_linked_item* %356 to i16*, !dbg !1503
  %358 = load i16, i16* %357, align 4, !dbg !1503, !tbaa !793
  %359 = load i8, i8* %348, align 4, !dbg !1504, !tbaa !1351
  %360 = zext i8 %359 to i32, !dbg !1505
  %361 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !1506
  %362 = bitcast %struct.btstack_linked_item* %361 to i16*, !dbg !1506
  %363 = load i16, i16* %362, align 4, !dbg !1506, !tbaa !1028
  %364 = zext i16 %363 to i32, !dbg !1507
  %365 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %358, i32 4, i32 %360, i32 %364, i32 0, i32 4, i8* nonnull %6) #13, !dbg !1508
  %366 = load i16, i16* %232, align 4, !tbaa !1297
  br label %367

; <label>:367:                                    ; preds = %353, %337, %327, %324
  %368 = phi i16 [ %340, %337 ], [ %233, %327 ], [ %366, %353 ], [ %326, %324 ], !dbg !1509
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %119, metadata !1515, metadata !DIExpression()), !dbg !1518
  %369 = and i16 %368, 34, !dbg !1519
  %370 = icmp eq i16 %369, 34, !dbg !1519
  br i1 %370, label %371, label %198, !dbg !1520

; <label>:371:                                    ; preds = %367
  store i8 8, i8* %124, align 2, !dbg !1521, !tbaa !788
  call fastcc void @l2cap_emit_channel_opened(%struct.l2cap_channel_t* nonnull %119, i8 zeroext 0) #13, !dbg !1523
  call void @l2cap_emit_credits(%struct.l2cap_channel_t* nonnull %119, i8 zeroext 1) #13, !dbg !1524
  br label %198, !dbg !1525

; <label>:372:                                    ; preds = %117
  %373 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1526, !tbaa !549
  %374 = and i8 %373, 32, !dbg !1526
  %375 = icmp eq i8 %374, 0, !dbg !1526
  br i1 %375, label %378, label %376, !dbg !1528

; <label>:376:                                    ; preds = %372
  %377 = call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0)) #13, !dbg !1529
  br label %378, !dbg !1529

; <label>:378:                                    ; preds = %376, %372
  %379 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1531
  %380 = bitcast %struct.btstack_linked_item* %379 to i16*, !dbg !1531
  %381 = load i16, i16* %380, align 4, !dbg !1531, !tbaa !793
  %382 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 2, !dbg !1532
  %383 = load i8, i8* %382, align 1, !dbg !1532, !tbaa !1264
  %384 = zext i8 %383 to i32, !dbg !1533
  %385 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 7, !dbg !1534
  %386 = load i16, i16* %385, align 2, !dbg !1534, !tbaa !762
  %387 = zext i16 %386 to i32, !dbg !1535
  %388 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !1536
  %389 = bitcast %struct.btstack_linked_item* %388 to i16*, !dbg !1536
  %390 = load i16, i16* %389, align 4, !dbg !1536, !tbaa !1028
  %391 = zext i16 %390 to i32, !dbg !1537
  %392 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %381, i32 7, i32 %384, i32 %387, i32 %391) #13, !dbg !1538
  call fastcc void @l2cap_finialize_channel_close(%struct.l2cap_channel_t* nonnull %119) #13, !dbg !1539
  br label %198, !dbg !1540

; <label>:393:                                    ; preds = %117
  %394 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1541, !tbaa !549
  %395 = and i8 %394, 32, !dbg !1541
  %396 = icmp eq i8 %395, 0, !dbg !1541
  br i1 %396, label %399, label %397, !dbg !1543

; <label>:397:                                    ; preds = %393
  %398 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0)) #13, !dbg !1544
  br label %399, !dbg !1544

; <label>:399:                                    ; preds = %397, %393
  %400 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1546, !tbaa !499
  %401 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %400, i32 0, i32 3, i32 4, !dbg !1548
  %402 = load i8, i8* %401, align 4, !dbg !1548, !tbaa !505
  %403 = icmp eq i8 %402, -1, !dbg !1549
  %404 = add i8 %402, 1, !dbg !1550
  %405 = select i1 %403, i8 1, i8 %404, !dbg !1551
  store i8 %405, i8* %401, align 4, !tbaa !505
  %406 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 5, !dbg !1552
  %407 = bitcast %struct.btstack_linked_item* %406 to i8*, !dbg !1552
  store i8 %405, i8* %407, align 4, !dbg !1553, !tbaa !1351
  store i8 9, i8* %124, align 2, !dbg !1554, !tbaa !788
  %408 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 1, !dbg !1555
  %409 = bitcast %struct.btstack_linked_item* %408 to i16*, !dbg !1555
  %410 = load i16, i16* %409, align 4, !dbg !1555, !tbaa !793
  %411 = zext i8 %405 to i32, !dbg !1556
  %412 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !1557
  %413 = bitcast %struct.btstack_linked_item* %412 to i16*, !dbg !1557
  %414 = load i16, i16* %413, align 4, !dbg !1557, !tbaa !1028
  %415 = zext i16 %414 to i32, !dbg !1558
  %416 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %123, i32 0, i32 7, !dbg !1559
  %417 = load i16, i16* %416, align 2, !dbg !1559, !tbaa !762
  %418 = zext i16 %417 to i32, !dbg !1560
  %419 = call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %410, i32 6, i32 %411, i32 %415, i32 %418) #13, !dbg !1561
  br label %198, !dbg !1562

; <label>:420:                                    ; preds = %198
  br label %421, !dbg !1563

; <label>:421:                                    ; preds = %420, %110
  %422 = load i32, i32* @config_stack_modules, align 4, !dbg !1563, !tbaa !532
  %423 = and i32 %422, 4, !dbg !1563
  %424 = icmp eq i32 %423, 0, !dbg !1563
  br i1 %424, label %484, label %425, !dbg !1564

; <label>:425:                                    ; preds = %421
  %426 = bitcast %struct.btstack_linked_list_iterator_t* %4 to i8*, !dbg !1565
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %426) #7, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1122, metadata !DIExpression(DW_OP_deref)), !dbg !1566
  call void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t* nonnull %4) #12, !dbg !1567
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1122, metadata !DIExpression(DW_OP_deref)), !dbg !1566
  %427 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #12, !dbg !1568
  %428 = icmp eq i32 %427, 0, !dbg !1570
  br i1 %428, label %482, label %429, !dbg !1570

; <label>:429:                                    ; preds = %425
  br label %430, !dbg !1566

; <label>:430:                                    ; preds = %466, %429
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1122, metadata !DIExpression(DW_OP_deref)), !dbg !1566
  %431 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #12, !dbg !1571
  %432 = bitcast %struct.btstack_linked_item* %431 to %struct.__le_hci_connection*, !dbg !1572
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %432, metadata !1131, metadata !DIExpression()), !dbg !1573
  %433 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %431, i32 3, !dbg !1574
  %434 = bitcast %struct.btstack_linked_item* %433 to i32*, !dbg !1574
  %435 = load i32, i32* %434, align 4, !dbg !1574, !tbaa !1576
  %436 = icmp ult i32 %435, 2, !dbg !1582
  br i1 %436, label %437, label %466, !dbg !1582

; <label>:437:                                    ; preds = %430
  %438 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %432, i32 0, i32 2, !dbg !1583
  %439 = load i16, i16* %438, align 2, !dbg !1583, !tbaa !1585
  %440 = call i32 @hci_can_send_acl_packet_now(i16 zeroext %439) #12, !dbg !1586
  %441 = icmp eq i32 %440, 0, !dbg !1586
  br i1 %441, label %466, label %442, !dbg !1587

; <label>:442:                                    ; preds = %437
  %443 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %431, i32 5, !dbg !1588
  %444 = bitcast %struct.btstack_linked_item* %443 to i32*, !dbg !1588
  %445 = load i32, i32* %444, align 4, !dbg !1588, !tbaa !1589
  switch i32 %445, label %466 [
    i32 1, label %446
    i32 2, label %469
    i32 4, label %475
  ], !dbg !1590

; <label>:446:                                    ; preds = %442
  store i32 0, i32* %444, align 4, !dbg !1591, !tbaa !1589
  %447 = load i16, i16* %438, align 2, !dbg !1593, !tbaa !1585
  %448 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %431, i32 6, !dbg !1594
  %449 = bitcast %struct.btstack_linked_item* %448 to i8*, !dbg !1594
  %450 = load i8, i8* %449, align 4, !dbg !1594, !tbaa !1595
  %451 = zext i8 %450 to i32, !dbg !1596
  %452 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %432, i32 0, i32 7, !dbg !1597
  %453 = load i16, i16* %452, align 2, !dbg !1597, !tbaa !1598
  %454 = zext i16 %453 to i32, !dbg !1599
  %455 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %431, i32 7, !dbg !1600
  %456 = bitcast %struct.btstack_linked_item* %455 to i16*, !dbg !1600
  %457 = load i16, i16* %456, align 4, !dbg !1600, !tbaa !1601
  %458 = zext i16 %457 to i32, !dbg !1602
  %459 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %432, i32 0, i32 9, !dbg !1603
  %460 = load i16, i16* %459, align 2, !dbg !1603, !tbaa !1604
  %461 = zext i16 %460 to i32, !dbg !1605
  %462 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %431, i32 8, !dbg !1606
  %463 = bitcast %struct.btstack_linked_item* %462 to i16*, !dbg !1606
  %464 = load i16, i16* %463, align 4, !dbg !1606, !tbaa !1607
  %465 = zext i16 %464 to i32, !dbg !1608
  call void (i16, i32, i32, ...) @l2cap_send_le_signaling_packet(i16 zeroext %447, i32 18, i32 %451, i32 %454, i32 %458, i32 %461, i32 %465) #13, !dbg !1609
  br label %466, !dbg !1610

; <label>:466:                                    ; preds = %475, %469, %446, %442, %437, %430
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1122, metadata !DIExpression(DW_OP_deref)), !dbg !1566
  %467 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #12, !dbg !1568
  %468 = icmp eq i32 %467, 0, !dbg !1570
  br i1 %468, label %481, label %430, !dbg !1570, !llvm.loop !1611

; <label>:469:                                    ; preds = %442
  store i32 3, i32* %444, align 4, !dbg !1614, !tbaa !1589
  %470 = load i16, i16* %438, align 2, !dbg !1615, !tbaa !1585
  %471 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %431, i32 6, !dbg !1616
  %472 = bitcast %struct.btstack_linked_item* %471 to i8*, !dbg !1616
  %473 = load i8, i8* %472, align 4, !dbg !1616, !tbaa !1595
  %474 = zext i8 %473 to i32, !dbg !1617
  call void (i16, i32, i32, ...) @l2cap_send_le_signaling_packet(i16 zeroext %470, i32 19, i32 %474, i32 0) #13, !dbg !1618
  br label %466, !dbg !1619

; <label>:475:                                    ; preds = %442
  store i32 0, i32* %444, align 4, !dbg !1620, !tbaa !1589
  %476 = load i16, i16* %438, align 2, !dbg !1621, !tbaa !1585
  %477 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %431, i32 6, !dbg !1622
  %478 = bitcast %struct.btstack_linked_item* %477 to i8*, !dbg !1622
  %479 = load i8, i8* %478, align 4, !dbg !1622, !tbaa !1595
  %480 = zext i8 %479 to i32, !dbg !1623
  call void (i16, i32, i32, ...) @l2cap_send_le_signaling_packet(i16 zeroext %476, i32 19, i32 %480, i32 1) #13, !dbg !1624
  br label %466, !dbg !1625

; <label>:481:                                    ; preds = %466
  br label %482, !dbg !1626

; <label>:482:                                    ; preds = %481, %425
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %426) #7, !dbg !1626
  br label %484, !dbg !1627

; <label>:483:                                    ; preds = %202
  br label %484, !dbg !1628

; <label>:484:                                    ; preds = %483, %482, %421
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %6) #7, !dbg !1628
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #7, !dbg !1628
  ret void, !dbg !1629
}

; Function Attrs: optsize
declare i32 @hci_can_send_acl_packet_now(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @l2cap_send_le_signaling_packet(i16 zeroext, i32, i32, ...) unnamed_addr #0 section ".bt_stack_code" !dbg !1631 {
  %4 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !1635, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 %1, metadata !1636, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i32 %2, metadata !1637, metadata !DIExpression()), !dbg !1643
  %5 = bitcast i8** %4 to i8*, !dbg !1644
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1644
  %6 = tail call i32 @hci_can_send_acl_packet_now(i16 zeroext %0) #12, !dbg !1645
  %7 = icmp eq i32 %6, 0, !dbg !1645
  br i1 %7, label %16, label %8, !dbg !1647

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @hci_reserve_packet_buffer() #12, !dbg !1648
  %10 = tail call i8* @hci_get_outgoing_acl_packet_buffer_test() #12, !dbg !1649
  call void @llvm.dbg.value(metadata i8* %10, metadata !1638, metadata !DIExpression()), !dbg !1650
  call void @llvm.va_start(i8* nonnull %5), !dbg !1651
  %11 = trunc i32 %2 to i8, !dbg !1652
  %12 = load i8*, i8** %4, align 4, !dbg !1653, !tbaa !499
  call void @llvm.dbg.value(metadata i8* %12, metadata !1639, metadata !DIExpression()), !dbg !1654
  %13 = call zeroext i16 @l2cap_create_signaling_internal_le(i8* %10, i16 zeroext %0, i32 %1, i8 zeroext %11, i8* %12) #12, !dbg !1655
  call void @llvm.dbg.value(metadata i16 %13, metadata !1640, metadata !DIExpression()), !dbg !1656
  call void @llvm.va_end(i8* nonnull %5), !dbg !1657
  %14 = zext i16 %13 to i32, !dbg !1658
  %15 = call i32 @hci_le_send_acl_packet_buffer(i8* %10, i32 %14) #12, !dbg !1659
  br label %16, !dbg !1660

; <label>:16:                                     ; preds = %8, %3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1660
  ret void, !dbg !1661
}

; Function Attrs: optsize
declare i8* @bd_addr_to_str(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hci_create_connection_cmd(i8*, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @hci_usable_acl_packet_types() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @btstack_memory_l2cap_channel_free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @l2cap_emit_channel_opened(%struct.l2cap_channel_t*, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1663 {
  %3 = alloca [21 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1665, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 %1, metadata !1666, metadata !DIExpression()), !dbg !1672
  %4 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 0, !dbg !1673
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %4) #7, !dbg !1673
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %3, metadata !1667, metadata !DIExpression()), !dbg !1674
  %5 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1675, !tbaa !549
  %6 = and i8 %5, 1, !dbg !1675
  %7 = icmp eq i8 %6, 0, !dbg !1675
  br i1 %7, label %8, label %16, !dbg !1677

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 5, i32 0, !dbg !1678
  %10 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 1, !dbg !1679
  %11 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 6, !dbg !1680
  %12 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 7, !dbg !1681
  %13 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 8, !dbg !1682
  %14 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 9, !dbg !1683
  %15 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 10, !dbg !1684
  br label %39, !dbg !1677

; <label>:16:                                     ; preds = %2
  %17 = zext i8 %1 to i32, !dbg !1685
  %18 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 5, i32 0, !dbg !1685
  %19 = tail call i8* @bd_addr_to_str(i8* %18) #12, !dbg !1685
  %20 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 1, !dbg !1685
  %21 = load i16, i16* %20, align 4, !dbg !1685, !tbaa !793
  %22 = zext i16 %21 to i32, !dbg !1685
  %23 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 6, !dbg !1685
  %24 = load i16, i16* %23, align 4, !dbg !1685, !tbaa !697
  %25 = zext i16 %24 to i32, !dbg !1685
  %26 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 7, !dbg !1685
  %27 = load i16, i16* %26, align 2, !dbg !1685, !tbaa !762
  %28 = zext i16 %27 to i32, !dbg !1685
  %29 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 8, !dbg !1685
  %30 = load i16, i16* %29, align 4, !dbg !1685, !tbaa !1028
  %31 = zext i16 %30 to i32, !dbg !1685
  %32 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 9, !dbg !1685
  %33 = load i16, i16* %32, align 2, !dbg !1685, !tbaa !1501
  %34 = zext i16 %33 to i32, !dbg !1685
  %35 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 10, !dbg !1685
  %36 = load i16, i16* %35, align 4, !dbg !1685, !tbaa !922
  %37 = zext i16 %36 to i32, !dbg !1685
  %38 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.41, i32 0, i32 0), i32 %17, i8* %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37) #13, !dbg !1687
  br label %39, !dbg !1685

; <label>:39:                                     ; preds = %16, %8
  %40 = phi i16* [ %15, %8 ], [ %35, %16 ], !dbg !1684
  %41 = phi i16* [ %14, %8 ], [ %32, %16 ], !dbg !1683
  %42 = phi i16* [ %13, %8 ], [ %29, %16 ], !dbg !1682
  %43 = phi i16* [ %12, %8 ], [ %26, %16 ], !dbg !1681
  %44 = phi i16* [ %11, %8 ], [ %23, %16 ], !dbg !1680
  %45 = phi i16* [ %10, %8 ], [ %20, %16 ], !dbg !1679
  %46 = phi i8* [ %9, %8 ], [ %18, %16 ], !dbg !1678
  store i8 112, i8* %4, align 1, !dbg !1689, !tbaa !549
  %47 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 1, !dbg !1690
  store i8 19, i8* %47, align 1, !dbg !1691, !tbaa !549
  %48 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 2, !dbg !1692
  store i8 %1, i8* %48, align 1, !dbg !1693, !tbaa !549
  %49 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i32 0, i32 3, !dbg !1694
  call void @bt_flip_addr(i8* %49, i8* %46) #12, !dbg !1695
  %50 = load i16, i16* %45, align 4, !dbg !1679, !tbaa !793
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 9, i16 zeroext %50) #12, !dbg !1696
  %51 = load i16, i16* %44, align 4, !dbg !1680, !tbaa !697
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 11, i16 zeroext %51) #12, !dbg !1697
  %52 = load i16, i16* %43, align 2, !dbg !1681, !tbaa !762
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 13, i16 zeroext %52) #12, !dbg !1698
  %53 = load i16, i16* %42, align 4, !dbg !1682, !tbaa !1028
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 15, i16 zeroext %53) #12, !dbg !1699
  %54 = load i16, i16* %41, align 2, !dbg !1683, !tbaa !1501
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 17, i16 zeroext %54) #12, !dbg !1700
  %55 = load i16, i16* %40, align 4, !dbg !1684, !tbaa !922
  call void @bt_store_16(i8* nonnull %4, i16 zeroext 19, i16 zeroext %55) #12, !dbg !1701
  call void @l2cap_dispatch(%struct.l2cap_channel_t* %0, i8 zeroext 4, i8* nonnull %4, i16 zeroext 21) #13, !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %4) #7, !dbg !1703
  ret void, !dbg !1703
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @l2cap_finialize_channel_close(%struct.l2cap_channel_t*) unnamed_addr #0 section ".bt_stack_code" !dbg !1704 {
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1708, metadata !DIExpression()), !dbg !1709
  %2 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 1, !dbg !1710
  store i8 1, i8* %2, align 2, !dbg !1711, !tbaa !788
  tail call fastcc void @l2cap_emit_channel_closed(%struct.l2cap_channel_t* %0) #13, !dbg !1712
  %3 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1713, !tbaa !499
  %4 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %3, i32 0, i32 2, !dbg !1713
  %5 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 0, !dbg !1713
  %6 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %4, %struct.btstack_linked_item* %5) #12, !dbg !1713
  %7 = bitcast %struct.l2cap_channel_t* %0 to i8*, !dbg !1714
  tail call void @btstack_memory_l2cap_channel_free(i8* %7) #12, !dbg !1715
  ret void, !dbg !1716
}

; Function Attrs: optsize
declare void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize readnone
define hidden zeroext i16 @l2cap_max_mtu() local_unnamed_addr #9 section ".bt_stack_code" !dbg !1717 {
  %1 = load i8, i8* @pan_profile_support, align 1, !dbg !1720, !tbaa !549
  %2 = icmp eq i8 %1, 0, !dbg !1720
  %3 = select i1 %2, i16 672, i16 1696, !dbg !1722
  ret i16 %3, !dbg !1724
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i16 @l2cap_max_le_mtu() local_unnamed_addr #10 section ".bt_stack_code" !dbg !1725 {
  %1 = load i16, i16* @le_att_mtu_size, align 2, !dbg !1726, !tbaa !1727
  ret i16 %1, !dbg !1728
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @ble_vendor_set_default_att_mtu(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1729 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1731, metadata !DIExpression()), !dbg !1732
  %2 = icmp ugt i16 %0, 517, !dbg !1733
  %3 = icmp ugt i16 %0, 23, !dbg !1735
  %4 = select i1 %3, i16 %0, i16 23, !dbg !1735
  %5 = select i1 %2, i16 517, i16 %4, !dbg !1737
  store i16 %5, i16* @le_att_mtu_size, align 2, !tbaa !1727
  ret i16 %5, !dbg !1738
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @l2cap_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1743, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !1744, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8* %2, metadata !1745, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i16 %3, metadata !1746, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i16 %4, metadata !1747, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i32 0, metadata !1749, metadata !DIExpression()), !dbg !1755
  %6 = tail call i8* @btstack_memory_l2cap_channel_get() #12, !dbg !1756
  %7 = icmp eq i8* %6, null, !dbg !1757
  br i1 %7, label %69, label %8, !dbg !1759

; <label>:8:                                      ; preds = %5
  %9 = load i8, i8* @pan_profile_support, align 1, !dbg !1760, !tbaa !549
  %10 = icmp eq i8 %9, 0, !dbg !1760
  %11 = select i1 %10, i16 672, i16 1696, !dbg !1763
  %12 = icmp ult i16 %11, %4, !dbg !1764
  call void @llvm.dbg.value(metadata i16 %11, metadata !1747, metadata !DIExpression()), !dbg !1754
  %13 = select i1 %12, i16 %11, i16 %4, !dbg !1765
  call void @llvm.dbg.value(metadata i16 %13, metadata !1747, metadata !DIExpression()), !dbg !1754
  %14 = tail call i32 @connection_handler_for_address(i8* %2, i8 zeroext 1) #12, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %14, metadata !1749, metadata !DIExpression()), !dbg !1755
  %15 = getelementptr inbounds i8, i8* %6, i32 16, !dbg !1767
  %16 = getelementptr inbounds i8, i8* %6, i32 22, !dbg !1767
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %2, i32 6, i32 1, i1 false), !dbg !1767
  %17 = getelementptr inbounds i8, i8* %6, i32 28, !dbg !1768
  %18 = bitcast i8* %17 to i16*, !dbg !1768
  store i16 %3, i16* %18, align 4, !dbg !1769, !tbaa !697
  %19 = trunc i32 %14 to i16, !dbg !1770
  %20 = getelementptr inbounds i8, i8* %6, i32 4, !dbg !1772
  %21 = bitcast i8* %20 to i16*, !dbg !1772
  store i16 %19, i16* %21, align 4, !dbg !1773, !tbaa !793
  %22 = getelementptr inbounds i8, i8* %6, i32 8, !dbg !1774
  %23 = bitcast i8* %22 to i8**, !dbg !1774
  store i8* %0, i8** %23, align 4, !dbg !1775, !tbaa !741
  %24 = getelementptr inbounds i8, i8* %6, i32 12, !dbg !1776
  %25 = bitcast i8* %24 to void (i8, i16, i8*, i16)**, !dbg !1776
  store void (i8, i16, i8*, i16)* %1, void (i8, i16, i8*, i16)** %25, align 4, !dbg !1777, !tbaa !730
  %26 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1778, !tbaa !499
  %27 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %26, i32 0, i32 9, !dbg !1780
  %28 = load i32, i32* %27, align 1, !dbg !1780
  %29 = and i32 %28, 1048576, !dbg !1778
  %30 = icmp eq i32 %29, 0, !dbg !1778
  %31 = select i1 %30, i16 48, i16 %11, !dbg !1781
  %32 = getelementptr inbounds i8, i8* %6, i32 36
  %33 = bitcast i8* %32 to i16*
  store i16 %31, i16* %33, align 4, !tbaa !922
  %34 = getelementptr inbounds i8, i8* %6, i32 34, !dbg !1782
  %35 = bitcast i8* %34 to i16*, !dbg !1782
  store i16 %13, i16* %35, align 2, !dbg !1783
  %36 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1786, !tbaa !499
  %37 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %36, i32 0, i32 3, i32 2, !dbg !1788
  %38 = load i32, i32* %37, align 4, !dbg !1788, !tbaa !528
  %39 = getelementptr inbounds i8, i8* %6, i32 38
  %40 = trunc i32 %38 to i8, !dbg !1789
  %41 = lshr i8 %40, 2, !dbg !1789
  %42 = and i8 %41, 4, !dbg !1789
  store i8 %42, i8* %39, align 2, !tbaa !1084
  %43 = getelementptr inbounds i8, i8* %6, i32 30, !dbg !1790
  %44 = bitcast i8* %43 to i16*, !dbg !1790
  store i16 0, i16* %44, align 2, !dbg !1791, !tbaa !762
  %45 = tail call zeroext i8 @lmp_get_conn_step(i8* nonnull %2) #12, !dbg !1792
  %46 = icmp eq i8 %45, 0, !dbg !1792
  %47 = getelementptr inbounds i8, i8* %6, i32 18
  br i1 %46, label %49, label %48, !dbg !1794

; <label>:48:                                     ; preds = %8
  store i8 2, i8* %47, align 2, !dbg !1795, !tbaa !788
  br label %57, !dbg !1797

; <label>:49:                                     ; preds = %8
  %50 = icmp eq i32 %14, 0, !dbg !1798
  br i1 %50, label %51, label %52, !dbg !1799

; <label>:51:                                     ; preds = %49
  store i8 2, i8* %47, align 2, !dbg !1801, !tbaa !788
  br label %57, !dbg !1804

; <label>:52:                                     ; preds = %49
  store i8 10, i8* %47, align 2, !dbg !1805, !tbaa !788
  %53 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1807, !tbaa !499
  %54 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %53, i32 0, i32 3, i32 5, !dbg !1810
  %55 = load i16, i16* %54, align 2, !dbg !1811, !tbaa !512
  %56 = add i16 %55, 1, !dbg !1811
  store i16 %56, i16* %54, align 2, !dbg !1811, !tbaa !512
  store i16 %55, i16* %44, align 2, !dbg !1812, !tbaa !762
  br label %57

; <label>:57:                                     ; preds = %52, %51, %48
  %58 = tail call zeroext i8 @check_l2cap_authentication_flag(i8* nonnull %16, i8 zeroext 35, i8 zeroext 0) #13, !dbg !1813
  %59 = icmp eq i8 %58, 32, !dbg !1815
  br i1 %59, label %60, label %62, !dbg !1816

; <label>:60:                                     ; preds = %57
  %61 = tail call zeroext i8 @check_l2cap_authentication_flag(i8* nonnull %16, i8 zeroext 36, i8 zeroext 33) #13, !dbg !1817
  br label %62, !dbg !1819

; <label>:62:                                     ; preds = %60, %57
  %63 = bitcast i8* %15 to i16*, !dbg !1820
  store i16 0, i16* %63, align 4, !dbg !1821, !tbaa !1297
  %64 = getelementptr inbounds i8, i8* %6, i32 19, !dbg !1822
  store i8 0, i8* %64, align 1, !dbg !1823, !tbaa !1264
  %65 = getelementptr inbounds i8, i8* %6, i32 20, !dbg !1824
  store i8 0, i8* %65, align 4, !dbg !1825, !tbaa !1351
  %66 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1826, !tbaa !499
  %67 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %66, i32 0, i32 2, !dbg !1826
  %68 = bitcast i8* %6 to %struct.btstack_linked_item*, !dbg !1826
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** %67, %struct.btstack_linked_item* %68) #12, !dbg !1826
  tail call void @l2cap_run() #13, !dbg !1827
  br label %69, !dbg !1828

; <label>:69:                                     ; preds = %62, %5
  %70 = phi i8 [ 1, %62 ], [ 0, %5 ]
  ret i8 %70, !dbg !1829
}

; Function Attrs: optsize
declare i8* @btstack_memory_l2cap_channel_get() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @connection_handler_for_address(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lmp_get_conn_step(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @btstack_linked_list_add(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1830 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1832, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 %1, metadata !1833, metadata !DIExpression()), !dbg !1836
  %3 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %0) #13, !dbg !1837
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %3, metadata !1834, metadata !DIExpression()), !dbg !1838
  %4 = icmp eq %struct.l2cap_channel_t* %3, null, !dbg !1839
  br i1 %4, label %15, label %5, !dbg !1841

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %3, i32 0, i32 5, i32 1, !dbg !1842
  %7 = load i8, i8* %6, align 2, !dbg !1842, !tbaa !788
  switch i8 %7, label %8 [
    i8 9, label %9
    i8 1, label %9
  ], !dbg !1845

; <label>:8:                                      ; preds = %5
  store i8 13, i8* %6, align 2, !dbg !1846, !tbaa !788
  tail call void @l2cap_run() #13, !dbg !1848
  br label %15, !dbg !1849

; <label>:9:                                      ; preds = %5, %5
  %10 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1850, !tbaa !549
  %11 = and i8 %10, 32, !dbg !1850
  %12 = icmp eq i8 %11, 0, !dbg !1850
  br i1 %12, label %15, label %13, !dbg !1853

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)) #13, !dbg !1854
  br label %15, !dbg !1854

; <label>:15:                                     ; preds = %13, %9, %8, %2
  ret void, !dbg !1856
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @l2cap_disconnect_all_channel() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1858 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1861, metadata !DIExpression()), !dbg !1866
  %1 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1867, !tbaa !499
  %2 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %1, i32 0, i32 2, !dbg !1868
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !1860, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, metadata !1861, metadata !DIExpression()), !dbg !1866
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !1870
  br i1 %4, label %24, label %5, !dbg !1870

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !1872

; <label>:6:                                      ; preds = %19, %5
  %7 = phi %struct.btstack_linked_item* [ %21, %19 ], [ %3, %5 ]
  %8 = phi i8 [ %15, %19 ], [ 0, %5 ]
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 4, !dbg !1872
  %10 = bitcast %struct.btstack_linked_item* %9 to %struct.channel_core_data_t*, !dbg !1872
  %11 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %10, i32 0, i32 7, !dbg !1874
  %12 = load i16, i16* %11, align 2, !dbg !1874, !tbaa !762
  %13 = icmp ne i16 %12, 0, !dbg !1875
  %14 = zext i1 %13 to i8, !dbg !1875
  %15 = add i8 %14, %8, !dbg !1875
  call void @llvm.dbg.value(metadata i8 %15, metadata !1861, metadata !DIExpression()), !dbg !1866
  %16 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %10, i32 0, i32 1, !dbg !1876
  %17 = load i8, i8* %16, align 2, !dbg !1876, !tbaa !788
  switch i8 %17, label %18 [
    i8 9, label %19
    i8 1, label %19
  ], !dbg !1878

; <label>:18:                                     ; preds = %6
  store i8 13, i8* %16, align 2, !dbg !1879, !tbaa !788
  tail call void @l2cap_run() #13, !dbg !1881
  br label %19, !dbg !1882

; <label>:19:                                     ; preds = %18, %6, %6
  %20 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !1883
  %21 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %20, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %21, metadata !1860, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 %15, metadata !1861, metadata !DIExpression()), !dbg !1866
  %22 = icmp eq %struct.btstack_linked_item* %21, null, !dbg !1870
  br i1 %22, label %23, label %6, !dbg !1870, !llvm.loop !1885

; <label>:23:                                     ; preds = %19
  br label %24, !dbg !1888

; <label>:24:                                     ; preds = %23, %0
  %25 = phi i8 [ 0, %0 ], [ %15, %23 ]
  ret i8 %25, !dbg !1888
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_event_handler(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1889 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1893, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i16 %1, metadata !1894, metadata !DIExpression()), !dbg !1909
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0, !dbg !1910
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #7, !dbg !1910
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !1895, metadata !DIExpression()), !dbg !1911
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !1912
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #7, !dbg !1912
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !1900, metadata !DIExpression()), !dbg !1913
  %7 = load i8, i8* %0, align 1, !dbg !1914, !tbaa !549
  switch i8 %7, label %251 [
    i8 8, label %8
    i8 6, label %27
    i8 3, label %46
    i8 14, label %131
    i8 15, label %132
    i8 5, label %133
    i8 19, label %206
    i8 115, label %207
    i8 24, label %242
  ], !dbg !1915

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1916
  %10 = load i8, i8* %9, align 1, !dbg !1916, !tbaa !549
  %11 = icmp eq i8 %10, 0, !dbg !1918
  %12 = getelementptr inbounds i8, i8* %0, i32 3
  %13 = load i8, i8* %12, align 1, !tbaa !549
  %14 = zext i8 %13 to i16
  %15 = getelementptr inbounds i8, i8* %0, i32 4
  %16 = load i8, i8* %15, align 1, !tbaa !549
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = or i16 %18, %14
  call void @llvm.dbg.value(metadata i16 %19, metadata !1896, metadata !DIExpression()), !dbg !1919
  br i1 %11, label %20, label %25, !dbg !1920

; <label>:20:                                     ; preds = %8
  %21 = tail call i8* @connection_address_for_handle(i16 zeroext %19) #12, !dbg !1921
  call void @llvm.dbg.value(metadata i8* %21, metadata !1899, metadata !DIExpression()), !dbg !1923
  %22 = icmp eq i8* %21, null, !dbg !1924
  br i1 %22, label %251, label %23, !dbg !1926

; <label>:23:                                     ; preds = %20
  %24 = tail call zeroext i8 @check_l2cap_authentication_flag(i8* nonnull %21, i8 zeroext 36, i8 zeroext 34) #13, !dbg !1927
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #12, !dbg !1928
  br label %26, !dbg !1929

; <label>:25:                                     ; preds = %8
  tail call void @hci_disconnect_cmd(i16 zeroext %19, i8 zeroext %10) #12, !dbg !1930
  br label %26

; <label>:26:                                     ; preds = %25, %23
  tail call void @l2cap_run() #13, !dbg !1932
  br label %251, !dbg !1933

; <label>:27:                                     ; preds = %2
  %28 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1934
  %29 = load i8, i8* %28, align 1, !dbg !1934, !tbaa !549
  %30 = icmp eq i8 %29, 0, !dbg !1936
  %31 = getelementptr inbounds i8, i8* %0, i32 3
  %32 = load i8, i8* %31, align 1, !tbaa !549
  %33 = zext i8 %32 to i16
  %34 = getelementptr inbounds i8, i8* %0, i32 4
  %35 = load i8, i8* %34, align 1, !tbaa !549
  %36 = zext i8 %35 to i16
  %37 = shl nuw i16 %36, 8
  %38 = or i16 %37, %33
  call void @llvm.dbg.value(metadata i16 %38, metadata !1896, metadata !DIExpression()), !dbg !1919
  br i1 %30, label %39, label %44, !dbg !1937

; <label>:39:                                     ; preds = %27
  %40 = tail call i8* @connection_address_for_handle(i16 zeroext %38) #12, !dbg !1938
  call void @llvm.dbg.value(metadata i8* %40, metadata !1899, metadata !DIExpression()), !dbg !1923
  %41 = icmp eq i8* %40, null, !dbg !1940
  br i1 %41, label %251, label %42, !dbg !1942

; <label>:42:                                     ; preds = %39
  %43 = tail call zeroext i8 @check_l2cap_authentication_flag(i8* nonnull %40, i8 zeroext 36, i8 zeroext 34) #13, !dbg !1943
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #12, !dbg !1944
  br label %45, !dbg !1945

; <label>:44:                                     ; preds = %27
  tail call void @hci_disconnect_cmd(i16 zeroext %38, i8 zeroext %29) #12, !dbg !1946
  br label %45

; <label>:45:                                     ; preds = %44, %42
  tail call void @l2cap_run() #13, !dbg !1948
  br label %251, !dbg !1949

; <label>:46:                                     ; preds = %2
  %47 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !1950
  call void @bt_flip_addr(i8* nonnull %5, i8* %47) #12, !dbg !1951
  %48 = getelementptr inbounds i8, i8* %0, i32 11, !dbg !1952
  %49 = load i8, i8* %48, align 1, !dbg !1952, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %49, metadata !1902, metadata !DIExpression()), !dbg !1953
  switch i8 %49, label %50 [
    i8 0, label %251
    i8 2, label %251
  ], !dbg !1954

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1956
  %52 = load i8, i8* %51, align 1, !dbg !1956, !tbaa !549
  %53 = icmp eq i8 %52, 0, !dbg !1958
  br i1 %53, label %54, label %93, !dbg !1959

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1960
  %56 = load i8, i8* %55, align 1, !dbg !1960, !tbaa !549
  %57 = zext i8 %56 to i16, !dbg !1960
  %58 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !1960
  %59 = load i8, i8* %58, align 1, !dbg !1960, !tbaa !549
  %60 = zext i8 %59 to i16, !dbg !1960
  %61 = shl nuw i16 %60, 8, !dbg !1960
  %62 = or i16 %61, %57, !dbg !1960
  call void @llvm.dbg.value(metadata i16 %62, metadata !1896, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8* %47, metadata !1962, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i16 %62, metadata !1967, metadata !DIExpression()), !dbg !1975
  %63 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !1976, !tbaa !499
  %64 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %63, i32 0, i32 2, !dbg !1977
  %65 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %64, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %65, metadata !1968, metadata !DIExpression()), !dbg !1978
  %66 = icmp eq %struct.btstack_linked_item* %65, null, !dbg !1979
  br i1 %66, label %92, label %67, !dbg !1979

; <label>:67:                                     ; preds = %54
  %68 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %63, i32 0, i32 3, i32 5
  br label %69, !dbg !1981

; <label>:69:                                     ; preds = %87, %67
  %70 = phi %struct.btstack_linked_item* [ %89, %87 ], [ %65, %67 ]
  %71 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %70, i32 4, !dbg !1981
  %72 = bitcast %struct.btstack_linked_item* %71 to %struct.channel_core_data_t*, !dbg !1981
  %73 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %72, i32 0, i32 5, i32 0, !dbg !1981
  %74 = call i32 @memcmp(i8* %73, i8* %47, i32 6) #12, !dbg !1981
  %75 = icmp eq i32 %74, 0, !dbg !1981
  br i1 %75, label %76, label %87, !dbg !1983

; <label>:76:                                     ; preds = %69
  %77 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %72, i32 0, i32 1, !dbg !1984
  %78 = load i8, i8* %77, align 2, !dbg !1984, !tbaa !788
  %79 = and i8 %78, -2, !dbg !1987
  %80 = icmp eq i8 %79, 2, !dbg !1987
  br i1 %80, label %81, label %87, !dbg !1987

; <label>:81:                                     ; preds = %76
  store i8 10, i8* %77, align 2, !dbg !1988, !tbaa !788
  %82 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %70, i32 1, !dbg !1990
  %83 = bitcast %struct.btstack_linked_item* %82 to i16*, !dbg !1990
  store i16 %62, i16* %83, align 4, !dbg !1991, !tbaa !793
  %84 = load i16, i16* %68, align 2, !dbg !1992, !tbaa !512
  %85 = add i16 %84, 1, !dbg !1992
  store i16 %85, i16* %68, align 2, !dbg !1992, !tbaa !512
  %86 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %72, i32 0, i32 7, !dbg !1994
  store i16 %84, i16* %86, align 2, !dbg !1995, !tbaa !762
  br label %87, !dbg !1996

; <label>:87:                                     ; preds = %81, %76, %69
  %88 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %70, i32 0, i32 0, !dbg !1997
  %89 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %88, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %89, metadata !1968, metadata !DIExpression()), !dbg !1978
  %90 = icmp eq %struct.btstack_linked_item* %89, null, !dbg !1979
  br i1 %90, label %91, label %69, !dbg !1979, !llvm.loop !1999

; <label>:91:                                     ; preds = %87
  br label %92, !dbg !2002

; <label>:92:                                     ; preds = %91, %54
  call void @l2cap_run() #12, !dbg !2002
  br label %251, !dbg !2003

; <label>:93:                                     ; preds = %50
  %94 = call zeroext i8 @check_l2cap_authentication_flag(i8* nonnull %5, i8 zeroext 37, i8 zeroext 0) #13, !dbg !2004
  %95 = load i8, i8* %51, align 1, !dbg !2006, !tbaa !549
  call void @llvm.dbg.value(metadata i8* %5, metadata !2007, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 %95, metadata !2012, metadata !DIExpression()), !dbg !2018
  %96 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2019, !tbaa !499
  %97 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %96, i32 0, i32 2, !dbg !2020
  %98 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %97, align 4, !dbg !2021, !tbaa !1238
  %99 = icmp eq %struct.btstack_linked_item* %98, null, !dbg !2023
  br i1 %99, label %251, label %100, !dbg !2023

; <label>:100:                                    ; preds = %93
  %101 = bitcast %struct.btstack_linked_item** %97 to %struct.btstack_linked_item*, !dbg !2024
  br label %106

; <label>:102:                                    ; preds = %111
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %112, metadata !2013, metadata !DIExpression()), !dbg !2025
  %103 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %112, i32 0, i32 0, !dbg !2021
  %104 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %103, align 4, !dbg !2021, !tbaa !1238
  %105 = icmp eq %struct.btstack_linked_item* %104, null, !dbg !2023
  br i1 %105, label %250, label %106, !dbg !2023

; <label>:106:                                    ; preds = %102, %100
  %107 = phi %struct.btstack_linked_item* [ %104, %102 ], [ %98, %100 ]
  %108 = phi %struct.btstack_linked_item** [ %103, %102 ], [ %97, %100 ]
  %109 = phi %struct.btstack_linked_item* [ %112, %102 ], [ %101, %100 ]
  %110 = bitcast %struct.btstack_linked_item* %109 to i32*
  br label %111, !dbg !2023

; <label>:111:                                    ; preds = %128, %106
  %112 = phi %struct.btstack_linked_item* [ %107, %106 ], [ %129, %128 ]
  %113 = bitcast %struct.btstack_linked_item* %112 to %struct.l2cap_channel_t*, !dbg !2026
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %113, metadata !2014, metadata !DIExpression()), !dbg !2027
  %114 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %112, i32 4, !dbg !2028
  %115 = bitcast %struct.btstack_linked_item* %114 to %struct.channel_core_data_t*, !dbg !2028
  %116 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %115, i32 0, i32 5, i32 0, !dbg !2028
  %117 = call i32 @memcmp(i8* %116, i8* nonnull %5, i32 6) #12, !dbg !2028
  %118 = icmp eq i32 %117, 0, !dbg !2028
  br i1 %118, label %119, label %102, !dbg !2030, !llvm.loop !2031

; <label>:119:                                    ; preds = %111
  %120 = bitcast %struct.btstack_linked_item* %112 to i32*, !dbg !2034
  %121 = load i32, i32* %120, align 4, !dbg !2034, !tbaa !1238
  store i32 %121, i32* %110, align 4, !dbg !2036, !tbaa !1238
  %122 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %115, i32 0, i32 1, !dbg !2037
  %123 = load i8, i8* %122, align 2, !dbg !2037, !tbaa !788
  %124 = and i8 %123, -2, !dbg !2039
  %125 = icmp eq i8 %124, 2, !dbg !2039
  br i1 %125, label %126, label %128, !dbg !2039

; <label>:126:                                    ; preds = %119
  call fastcc void @l2cap_emit_channel_opened(%struct.l2cap_channel_t* nonnull %113, i8 zeroext %95) #12, !dbg !2040
  %127 = bitcast %struct.btstack_linked_item* %112 to i8*, !dbg !2042
  call void @btstack_memory_l2cap_channel_free(i8* %127) #12, !dbg !2043
  br label %128, !dbg !2044

; <label>:128:                                    ; preds = %126, %119
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* undef, metadata !2013, metadata !DIExpression()), !dbg !2025
  %129 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %108, align 4, !dbg !2021, !tbaa !1238
  %130 = icmp eq %struct.btstack_linked_item* %129, null, !dbg !2023
  br i1 %130, label %249, label %111, !dbg !2023, !llvm.loop !2031

; <label>:131:                                    ; preds = %2
  tail call void @l2cap_run() #13, !dbg !2045
  br label %251, !dbg !2046

; <label>:132:                                    ; preds = %2
  tail call void @l2cap_run() #13, !dbg !2047
  br label %251, !dbg !2048

; <label>:133:                                    ; preds = %2
  %134 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !2049
  %135 = load i8, i8* %134, align 1, !dbg !2049, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %135, metadata !1902, metadata !DIExpression()), !dbg !1953
  %136 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2050, !tbaa !549
  %137 = icmp slt i8 %136, 0, !dbg !2050
  br i1 %137, label %138, label %142, !dbg !2052

; <label>:138:                                    ; preds = %133
  %139 = zext i8 %135 to i32, !dbg !2053
  %140 = zext i16 %1 to i32, !dbg !2053
  %141 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0), i32 %139, i32 %140) #13, !dbg !2053
  br label %142, !dbg !2053

; <label>:142:                                    ; preds = %138, %133
  %143 = icmp ult i16 %1, 7, !dbg !2055
  %144 = or i8 %135, 2, !dbg !2057
  %145 = icmp eq i8 %144, 2, !dbg !2057
  %146 = or i1 %143, %145, !dbg !2057
  br i1 %146, label %251, label %147, !dbg !2057

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !2058
  %149 = load i8, i8* %148, align 1, !dbg !2058, !tbaa !549
  %150 = zext i8 %149 to i32, !dbg !2058
  %151 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !2058
  %152 = load i8, i8* %151, align 1, !dbg !2058, !tbaa !549
  %153 = zext i8 %152 to i32, !dbg !2058
  %154 = shl nuw nsw i32 %153, 8, !dbg !2058
  %155 = or i32 %154, %150, !dbg !2058
  %156 = getelementptr inbounds i8, i8* %0, i32 7, !dbg !2059
  call void @bt_flip_addr(i8* nonnull %6, i8* %156) #12, !dbg !2060
  %157 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2061, !tbaa !499
  %158 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %157, i32 0, i32 2, !dbg !2062
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %162, metadata !1898, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %162, metadata !1898, metadata !DIExpression()), !dbg !2063
  %159 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %158, align 4, !dbg !2064, !tbaa !1238
  %160 = icmp eq %struct.btstack_linked_item* %159, null, !dbg !2066
  br i1 %160, label %204, label %161, !dbg !2066

; <label>:161:                                    ; preds = %147
  %162 = bitcast %struct.btstack_linked_item** %158 to %struct.btstack_linked_item*, !dbg !2067
  br label %167

; <label>:163:                                    ; preds = %181, %173
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %174, metadata !1898, metadata !DIExpression()), !dbg !2063
  %164 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %174, i32 0, i32 0, !dbg !2064
  %165 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %164, align 4, !dbg !2064, !tbaa !1238
  %166 = icmp eq %struct.btstack_linked_item* %165, null, !dbg !2066
  br i1 %166, label %203, label %167, !dbg !2066

; <label>:167:                                    ; preds = %163, %161
  %168 = phi %struct.btstack_linked_item* [ %165, %163 ], [ %159, %161 ]
  %169 = phi %struct.btstack_linked_item** [ %164, %163 ], [ %158, %161 ]
  %170 = phi %struct.btstack_linked_item* [ %174, %163 ], [ %162, %161 ]
  %171 = bitcast %struct.btstack_linked_item* %170 to i32**
  %172 = bitcast %struct.btstack_linked_item* %170 to i32*
  br label %173, !dbg !2066

; <label>:173:                                    ; preds = %198, %167
  %174 = phi %struct.btstack_linked_item* [ %168, %167 ], [ %200, %198 ]
  %175 = bitcast %struct.btstack_linked_item* %174 to %struct.l2cap_channel_t*, !dbg !2068
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %175, metadata !1903, metadata !DIExpression()), !dbg !2069
  %176 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %174, i32 4, !dbg !2070
  %177 = bitcast %struct.btstack_linked_item* %176 to %struct.channel_core_data_t*, !dbg !2070
  %178 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %177, i32 0, i32 5, i32 0, !dbg !2070
  %179 = call i32 @memcmp(i8* nonnull %6, i8* %178, i32 6) #13, !dbg !2070
  %180 = icmp eq i32 %179, 0, !dbg !2072
  br i1 %180, label %181, label %163, !dbg !2073, !llvm.loop !2074

; <label>:181:                                    ; preds = %173
  %182 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %174, i32 1, !dbg !2077
  %183 = bitcast %struct.btstack_linked_item* %182 to i16*, !dbg !2077
  %184 = load i16, i16* %183, align 4, !dbg !2077, !tbaa !793
  %185 = zext i16 %184 to i32, !dbg !2080
  %186 = icmp eq i32 %185, %155, !dbg !2081
  %187 = icmp eq i16 %184, 0, !dbg !2082
  %188 = or i1 %187, %186, !dbg !2084
  br i1 %188, label %189, label %163, !dbg !2084, !llvm.loop !2074

; <label>:189:                                    ; preds = %181
  %190 = load i32*, i32** %171, align 4, !dbg !2085, !tbaa !1238
  %191 = load i32, i32* %190, align 4, !dbg !2087, !tbaa !1238
  store i32 %191, i32* %172, align 4, !dbg !2088, !tbaa !1238
  %192 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %177, i32 0, i32 1, !dbg !2089
  %193 = load i8, i8* %192, align 2, !dbg !2089, !tbaa !788
  %194 = and i8 %193, -2, !dbg !2091
  %195 = icmp eq i8 %194, 8, !dbg !2091
  br i1 %195, label %197, label %196, !dbg !2091

; <label>:196:                                    ; preds = %189
  call fastcc void @l2cap_emit_channel_opened(%struct.l2cap_channel_t* nonnull %175, i8 zeroext 80) #13, !dbg !2092
  br label %198, !dbg !2094

; <label>:197:                                    ; preds = %189
  call fastcc void @l2cap_emit_channel_closed(%struct.l2cap_channel_t* nonnull %175) #13, !dbg !2095
  br label %198

; <label>:198:                                    ; preds = %197, %196
  %199 = bitcast %struct.btstack_linked_item* %174 to i8*, !dbg !2097
  call void @btstack_memory_l2cap_channel_free(i8* %199) #12, !dbg !2098
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* undef, metadata !1898, metadata !DIExpression()), !dbg !2063
  %200 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %169, align 4, !dbg !2064, !tbaa !1238
  %201 = icmp eq %struct.btstack_linked_item* %200, null, !dbg !2066
  br i1 %201, label %202, label %173, !dbg !2066, !llvm.loop !2074

; <label>:202:                                    ; preds = %198
  br label %204, !dbg !2099

; <label>:203:                                    ; preds = %163
  br label %204, !dbg !2099

; <label>:204:                                    ; preds = %203, %202, %147
  %205 = call zeroext i8 @check_l2cap_authentication_flag(i8* nonnull %6, i8 zeroext 37, i8 zeroext 0) #13, !dbg !2099
  br label %251, !dbg !2100

; <label>:206:                                    ; preds = %2
  tail call void @l2cap_run() #13, !dbg !2101
  tail call void @l2cap_hand_out_credits() #13, !dbg !2102
  br label %251, !dbg !2103

; <label>:207:                                    ; preds = %2
  %208 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !2104
  %209 = load i8, i8* %208, align 1, !dbg !2104, !tbaa !549
  %210 = zext i8 %209 to i16, !dbg !2104
  %211 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !2104
  %212 = load i8, i8* %211, align 1, !dbg !2104, !tbaa !549
  %213 = zext i8 %212 to i16, !dbg !2104
  %214 = shl nuw i16 %213, 8, !dbg !2104
  %215 = or i16 %214, %210, !dbg !2104
  call void @llvm.dbg.value(metadata i16 %215, metadata !1896, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()), !dbg !2105
  %216 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2106, !tbaa !499
  %217 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %216, i32 0, i32 2, !dbg !2108
  %218 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %217, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %218, metadata !1898, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()), !dbg !2105
  %219 = icmp eq %struct.btstack_linked_item* %218, null, !dbg !2109
  br i1 %219, label %241, label %220, !dbg !2109

; <label>:220:                                    ; preds = %207
  br label %221, !dbg !2111

; <label>:221:                                    ; preds = %234, %220
  %222 = phi %struct.btstack_linked_item* [ %237, %234 ], [ %218, %220 ]
  %223 = phi i32 [ %235, %234 ], [ 0, %220 ]
  %224 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %222, i32 1, !dbg !2111
  %225 = bitcast %struct.btstack_linked_item* %224 to i16*, !dbg !2111
  %226 = load i16, i16* %225, align 4, !dbg !2111, !tbaa !793
  %227 = icmp eq i16 %226, %215, !dbg !2115
  br i1 %227, label %228, label %234, !dbg !2116

; <label>:228:                                    ; preds = %221
  %229 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %222, i32 7, !dbg !2117
  %230 = bitcast %struct.btstack_linked_item* %229 to i16*, !dbg !2117
  %231 = load i16, i16* %230, align 4, !dbg !2117, !tbaa !697
  %232 = icmp eq i16 %231, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i32 1, metadata !1901, metadata !DIExpression()), !dbg !2105
  %233 = select i1 %232, i32 %223, i32 1, !dbg !2120
  br label %234, !dbg !2120

; <label>:234:                                    ; preds = %228, %221
  %235 = phi i32 [ %223, %221 ], [ %233, %228 ]
  call void @llvm.dbg.value(metadata i32 %235, metadata !1901, metadata !DIExpression()), !dbg !2105
  %236 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %222, i32 0, i32 0, !dbg !2122
  %237 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %236, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %237, metadata !1898, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %235, metadata !1901, metadata !DIExpression()), !dbg !2105
  %238 = icmp eq %struct.btstack_linked_item* %237, null, !dbg !2109
  br i1 %238, label %239, label %221, !dbg !2109, !llvm.loop !2124

; <label>:239:                                    ; preds = %234
  %240 = icmp eq i32 %235, 0, !dbg !2127
  br i1 %240, label %241, label %251, !dbg !2129

; <label>:241:                                    ; preds = %239, %207
  tail call void @hci_disconnect_cmd(i16 zeroext %215, i8 zeroext 19) #12, !dbg !2130
  br label %251, !dbg !2131

; <label>:242:                                    ; preds = %2
  %243 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !2132
  %244 = tail call zeroext i8 @check_l2cap_authentication_flag(i8* %243, i8 zeroext 39, i8 zeroext 0) #13, !dbg !2133
  call void @llvm.dbg.value(metadata i8 %244, metadata !1906, metadata !DIExpression()), !dbg !2134
  %245 = icmp eq i8 %244, 0, !dbg !2135
  br i1 %245, label %251, label %246, !dbg !2137

; <label>:246:                                    ; preds = %242
  %247 = bitcast i8* %243 to [6 x i8]*, !dbg !2138
  %248 = tail call zeroext i8 @handle_remote_dev_type([6 x i8]* %247, i8 zeroext %244) #12, !dbg !2140
  br label %251, !dbg !2141

; <label>:249:                                    ; preds = %128
  br label %251, !dbg !2142

; <label>:250:                                    ; preds = %102
  br label %251, !dbg !2142

; <label>:251:                                    ; preds = %250, %249, %246, %242, %241, %239, %206, %204, %142, %132, %131, %93, %92, %46, %46, %45, %39, %26, %20, %2
  %252 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2142, !tbaa !499
  %253 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %252, i32 0, i32 0, !dbg !2143
  %254 = load void (i8*, i8, i16, i8*, i16)*, void (i8*, i8, i16, i8*, i16)** %253, align 4, !dbg !2143, !tbaa !524
  call void %254(i8* null, i8 zeroext 4, i16 zeroext 0, i8* %0, i16 zeroext %1) #12, !dbg !2142
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #7, !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #7, !dbg !2144
  ret void, !dbg !2144
}

; Function Attrs: optsize
declare i8* @connection_address_for_handle(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @stack_run_loop_resume(...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hci_disconnect_cmd(i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @l2cap_emit_channel_closed(%struct.l2cap_channel_t* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !2145 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !2147, metadata !DIExpression()), !dbg !2152
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0, !dbg !2153
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !2153
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %2, metadata !2148, metadata !DIExpression()), !dbg !2154
  %4 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2155, !tbaa !549
  %5 = and i8 %4, 1, !dbg !2155
  %6 = icmp eq i8 %5, 0, !dbg !2155
  %7 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 7
  br i1 %6, label %12, label %8, !dbg !2157

; <label>:8:                                      ; preds = %1
  %9 = load i16, i16* %7, align 2, !dbg !2158, !tbaa !762
  %10 = zext i16 %9 to i32, !dbg !2158
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i32 0, i32 0), i32 %10) #13, !dbg !2158
  br label %12, !dbg !2158

; <label>:12:                                     ; preds = %8, %1
  store i8 113, i8* %3, align 1, !dbg !2160, !tbaa !549
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 1, !dbg !2161
  store i8 2, i8* %13, align 1, !dbg !2162, !tbaa !549
  %14 = load i16, i16* %7, align 2, !dbg !2163, !tbaa !762
  call void @bt_store_16(i8* nonnull %3, i16 zeroext 2, i16 zeroext %14) #12, !dbg !2164
  call void @l2cap_dispatch(%struct.l2cap_channel_t* %0, i8 zeroext 4, i8* nonnull %3, i16 zeroext 4) #13, !dbg !2165
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !2166
  ret void, !dbg !2166
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_accept_connection_internal(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2167 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2171, metadata !DIExpression()), !dbg !2173
  %2 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %0) #13, !dbg !2174
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %2, metadata !2172, metadata !DIExpression()), !dbg !2175
  %3 = icmp eq %struct.l2cap_channel_t* %2, null, !dbg !2176
  br i1 %3, label %4, label %11, !dbg !2178

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2179, !tbaa !549
  %6 = and i8 %5, 4, !dbg !2179
  %7 = icmp eq i8 %6, 0, !dbg !2179
  br i1 %7, label %13, label %8, !dbg !2182

; <label>:8:                                      ; preds = %4
  %9 = zext i16 %0 to i32, !dbg !2183
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.24, i32 0, i32 0), i32 %9) #13, !dbg !2183
  br label %13, !dbg !2183

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %2, i32 0, i32 5, i32 1, !dbg !2185
  store i8 12, i8* %12, align 2, !dbg !2186, !tbaa !788
  tail call void @l2cap_run() #13, !dbg !2187
  br label %13, !dbg !2188

; <label>:13:                                     ; preds = %11, %8, %4
  ret void, !dbg !2189
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_decline_connection_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2191 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2193, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 %1, metadata !2194, metadata !DIExpression()), !dbg !2197
  %3 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %0) #13, !dbg !2198
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %3, metadata !2195, metadata !DIExpression()), !dbg !2199
  %4 = icmp eq %struct.l2cap_channel_t* %3, null, !dbg !2200
  br i1 %4, label %8, label %5, !dbg !2202

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %3, i32 0, i32 5, i32 1, !dbg !2203
  store i8 11, i8* %6, align 2, !dbg !2204, !tbaa !788
  %7 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %3, i32 0, i32 5, i32 4, !dbg !2205
  store i8 %1, i8* %7, align 1, !dbg !2206, !tbaa !1267
  tail call void @l2cap_run() #13, !dbg !2207
  br label %8, !dbg !2208

; <label>:8:                                      ; preds = %5, %2
  ret void, !dbg !2209
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_signaling_handle_configure_request(%struct.l2cap_channel_t* nocapture, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2211 {
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !2215, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %1, metadata !2216, metadata !DIExpression()), !dbg !2226
  %3 = getelementptr inbounds i8, i8* %1, i32 6, !dbg !2227
  %4 = load i8, i8* %3, align 1, !dbg !2227, !tbaa !549
  %5 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !2228
  %6 = load i8, i8* %5, align 1, !dbg !2228, !tbaa !549
  %7 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 2, !dbg !2229
  store i8 %6, i8* %7, align 1, !dbg !2230, !tbaa !1264
  %8 = and i8 %4, 1, !dbg !2231
  %9 = icmp eq i8 %8, 0, !dbg !2231
  br i1 %9, label %14, label %10, !dbg !2233

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 256, metadata !1292, metadata !DIExpression()), !dbg !2237
  %11 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 0, !dbg !2238
  %12 = load i16, i16* %11, align 4, !dbg !2238, !tbaa !1297
  %13 = or i16 %12, 256, !dbg !2239
  store i16 %13, i16* %11, align 4, !dbg !2240, !tbaa !1297
  br label %14, !dbg !2241

; <label>:14:                                     ; preds = %10, %2
  %15 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !2242
  %16 = load i8, i8* %15, align 1, !dbg !2242, !tbaa !549
  %17 = zext i8 %16 to i32, !dbg !2242
  %18 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !2242
  %19 = load i8, i8* %18, align 1, !dbg !2242, !tbaa !549
  %20 = zext i8 %19 to i32, !dbg !2242
  %21 = shl nuw nsw i32 %20, 8, !dbg !2242
  %22 = or i32 %21, %17, !dbg !2242
  %23 = add nuw nsw i32 %22, 4, !dbg !2243
  call void @llvm.dbg.value(metadata i16 8, metadata !2220, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i16 8, metadata !2220, metadata !DIExpression()), !dbg !2244
  %24 = and i32 %23, 65535, !dbg !2245
  %25 = icmp ugt i32 %24, 8, !dbg !2247
  br i1 %25, label %26, label %98, !dbg !2248

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 10
  %28 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 0
  %29 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 13, i32 3
  %30 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 13, i32 6
  %31 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 7
  br label %32, !dbg !2248

; <label>:32:                                     ; preds = %92, %26
  %33 = phi i32 [ 8, %26 ], [ %95, %92 ]
  %34 = phi i16 [ 8, %26 ], [ %94, %92 ]
  %35 = getelementptr inbounds i8, i8* %1, i32 %33, !dbg !2249
  %36 = load i8, i8* %35, align 1, !dbg !2249, !tbaa !549
  %37 = lshr i8 %36, 7, !dbg !2250
  call void @llvm.dbg.value(metadata i8 %37, metadata !2221, metadata !DIExpression()), !dbg !2251
  %38 = and i8 %36, 127, !dbg !2252
  call void @llvm.dbg.value(metadata i8 %38, metadata !2223, metadata !DIExpression()), !dbg !2253
  %39 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2254, !tbaa !549
  %40 = and i8 %39, 1, !dbg !2254
  %41 = icmp eq i8 %40, 0, !dbg !2254
  br i1 %41, label %48, label %42, !dbg !2256

; <label>:42:                                     ; preds = %32
  %43 = load i16, i16* %31, align 2, !dbg !2257, !tbaa !762
  %44 = zext i16 %43 to i32, !dbg !2257
  %45 = zext i8 %37 to i32, !dbg !2257
  %46 = zext i8 %38 to i32, !dbg !2257
  %47 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0), i32 %44, i32 %45, i32 %46) #13, !dbg !2257
  br label %48, !dbg !2257

; <label>:48:                                     ; preds = %42, %32
  %49 = add i16 %34, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i16 %49, metadata !2220, metadata !DIExpression()), !dbg !2244
  %50 = add i16 %34, 2, !dbg !2260
  call void @llvm.dbg.value(metadata i16 %50, metadata !2220, metadata !DIExpression()), !dbg !2244
  %51 = zext i16 %49 to i32, !dbg !2261
  %52 = getelementptr inbounds i8, i8* %1, i32 %51, !dbg !2261
  %53 = load i8, i8* %52, align 1, !dbg !2261, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %53, metadata !2224, metadata !DIExpression()), !dbg !2262
  %54 = icmp eq i8 %38, 1, !dbg !2263
  %55 = icmp eq i8 %53, 2, !dbg !2265
  %56 = and i1 %54, %55, !dbg !2267
  br i1 %56, label %57, label %70, !dbg !2267

; <label>:57:                                     ; preds = %48
  %58 = zext i16 %50 to i32, !dbg !2268
  %59 = getelementptr inbounds i8, i8* %1, i32 %58, !dbg !2268
  %60 = load i8, i8* %59, align 1, !dbg !2268, !tbaa !549
  %61 = zext i8 %60 to i16, !dbg !2268
  %62 = add nuw nsw i32 %58, 1, !dbg !2268
  %63 = getelementptr inbounds i8, i8* %1, i32 %62, !dbg !2268
  %64 = load i8, i8* %63, align 1, !dbg !2268, !tbaa !549
  %65 = zext i8 %64 to i16, !dbg !2268
  %66 = shl nuw i16 %65, 8, !dbg !2268
  %67 = or i16 %66, %61, !dbg !2268
  store i16 %67, i16* %27, align 4, !dbg !2270, !tbaa !922
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 64, metadata !1292, metadata !DIExpression()), !dbg !2273
  %68 = load i16, i16* %28, align 4, !dbg !2274, !tbaa !1297
  %69 = or i16 %68, 64, !dbg !2275
  store i16 %69, i16* %28, align 4, !dbg !2276, !tbaa !1297
  br label %70, !dbg !2277

; <label>:70:                                     ; preds = %57, %48
  %71 = icmp eq i8 %37, 1, !dbg !2278
  %72 = add nsw i8 %38, -1
  %73 = icmp ugt i8 %72, 5
  br i1 %71, label %88, label %74, !dbg !2278

; <label>:74:                                     ; preds = %70
  br i1 %73, label %75, label %92, !dbg !2280

; <label>:75:                                     ; preds = %74
  store i8 %38, i8* %29, align 1, !dbg !2282, !tbaa !1389
  %76 = zext i16 %50 to i32, !dbg !2284
  %77 = getelementptr inbounds i8, i8* %1, i32 %76, !dbg !2284
  %78 = load i8, i8* %77, align 1, !dbg !2284, !tbaa !549
  %79 = zext i8 %78 to i16, !dbg !2284
  %80 = add nuw nsw i32 %76, 1, !dbg !2284
  %81 = getelementptr inbounds i8, i8* %1, i32 %80, !dbg !2284
  %82 = load i8, i8* %81, align 1, !dbg !2284, !tbaa !549
  %83 = zext i8 %82 to i16, !dbg !2284
  %84 = shl nuw i16 %83, 8, !dbg !2284
  %85 = or i16 %84, %79, !dbg !2284
  store i16 %85, i16* %30, align 4, !dbg !2285, !tbaa !1393
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 512, metadata !1292, metadata !DIExpression()), !dbg !2288
  %86 = load i16, i16* %28, align 4, !dbg !2289, !tbaa !1297
  %87 = or i16 %86, 512, !dbg !2290
  store i16 %87, i16* %28, align 4, !dbg !2291, !tbaa !1297
  br label %92, !dbg !2292

; <label>:88:                                     ; preds = %70
  br i1 %73, label %89, label %92, !dbg !2293

; <label>:89:                                     ; preds = %88
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 256, metadata !1292, metadata !DIExpression()), !dbg !2299
  %90 = load i16, i16* %28, align 4, !dbg !2300, !tbaa !1297
  %91 = or i16 %90, 256, !dbg !2301
  store i16 %91, i16* %28, align 4, !dbg !2302, !tbaa !1297
  br label %92, !dbg !2303

; <label>:92:                                     ; preds = %89, %88, %75, %74
  %93 = zext i8 %53 to i16, !dbg !2304
  %94 = add i16 %93, %50, !dbg !2305
  call void @llvm.dbg.value(metadata i16 %94, metadata !2220, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i16 %94, metadata !2220, metadata !DIExpression()), !dbg !2244
  %95 = zext i16 %94 to i32, !dbg !2306
  %96 = icmp ult i32 %95, %24, !dbg !2247
  br i1 %96, label %32, label %97, !dbg !2248, !llvm.loop !2307

; <label>:97:                                     ; preds = %92
  br label %98, !dbg !2310

; <label>:98:                                     ; preds = %97, %14
  ret void, !dbg !2310
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_signaling_handler_channel(%struct.l2cap_channel_t*, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2311 {
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !2313, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %1, metadata !2314, metadata !DIExpression()), !dbg !2319
  %3 = load i8, i8* %1, align 1, !dbg !2320, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %3, metadata !2315, metadata !DIExpression()), !dbg !2321
  %4 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !2322
  %5 = load i8, i8* %4, align 1, !dbg !2322, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %5, metadata !2316, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i16 0, metadata !2317, metadata !DIExpression()), !dbg !2324
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2325, !tbaa !549
  %7 = and i8 %6, 1, !dbg !2325
  %8 = icmp eq i8 %7, 0, !dbg !2325
  br i1 %8, label %9, label %11, !dbg !2327

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 1
  br label %17, !dbg !2327

; <label>:11:                                     ; preds = %2
  %12 = zext i8 %3 to i32, !dbg !2328
  %13 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 1, !dbg !2328
  %14 = load i8, i8* %13, align 2, !dbg !2328, !tbaa !788
  %15 = zext i8 %14 to i32, !dbg !2328
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i32 0, i32 0), i32 %12, i32 %15) #13, !dbg !2328
  br label %17, !dbg !2328

; <label>:17:                                     ; preds = %11, %9
  %18 = phi i8* [ %10, %9 ], [ %13, %11 ]
  %19 = icmp eq i8 %3, 6, !dbg !2330
  %20 = load i8, i8* %18, align 2, !tbaa !788
  br i1 %19, label %21, label %24, !dbg !2332

; <label>:21:                                     ; preds = %17
  switch i8 %20, label %190 [
    i8 7, label %22
    i8 8, label %22
    i8 13, label %22
    i8 9, label %22
  ], !dbg !2333

; <label>:22:                                     ; preds = %21, %21, %21, %21
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !2335, metadata !DIExpression()), !dbg !2341
  %23 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 2, !dbg !2344
  store i8 %5, i8* %23, align 1, !dbg !2345, !tbaa !1264
  store i8 14, i8* %18, align 2, !dbg !2346, !tbaa !788
  tail call void @l2cap_run() #12, !dbg !2347
  br label %190, !dbg !2348

; <label>:24:                                     ; preds = %17
  switch i8 %20, label %190 [
    i8 5, label %25
    i8 6, label %114
    i8 7, label %145
    i8 9, label %187
  ], !dbg !2349

; <label>:25:                                     ; preds = %24
  %26 = icmp eq i8 %3, 11, !dbg !2350
  br i1 %26, label %27, label %190, !dbg !2350

; <label>:27:                                     ; preds = %25
  store i8 6, i8* %18, align 2, !dbg !2352, !tbaa !788
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !2356, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8* %1, metadata !2359, metadata !DIExpression()), !dbg !2367
  %28 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !2368
  %29 = load i8, i8* %28, align 1, !dbg !2368, !tbaa !549
  %30 = zext i8 %29 to i32, !dbg !2368
  %31 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !2368
  %32 = load i8, i8* %31, align 1, !dbg !2368, !tbaa !549
  %33 = zext i8 %32 to i32, !dbg !2368
  %34 = shl nuw nsw i32 %33, 8, !dbg !2368
  %35 = or i32 %34, %30, !dbg !2368
  %36 = add nuw nsw i32 %35, 4, !dbg !2369
  call void @llvm.dbg.value(metadata i16 4, metadata !2361, metadata !DIExpression()), !dbg !2370
  %37 = and i32 %36, 65535, !dbg !2371
  %38 = icmp ugt i32 %37, 4, !dbg !2373
  br i1 %38, label %39, label %101, !dbg !2374

; <label>:39:                                     ; preds = %27
  br label %40, !dbg !2375

; <label>:40:                                     ; preds = %56, %39
  %41 = phi i32 [ %58, %56 ], [ 4, %39 ]
  %42 = phi i32 [ %54, %56 ], [ 4, %39 ]
  %43 = add nsw i32 %42, 2, !dbg !2375
  %44 = and i32 %43, 65535, !dbg !2376
  %45 = getelementptr inbounds i8, i8* %1, i32 %44, !dbg !2376
  %46 = load i8, i8* %45, align 1, !dbg !2376, !tbaa !549
  %47 = zext i8 %46 to i32, !dbg !2376
  %48 = add nuw nsw i32 %44, 1, !dbg !2376
  %49 = getelementptr inbounds i8, i8* %1, i32 %48, !dbg !2376
  %50 = load i8, i8* %49, align 1, !dbg !2376, !tbaa !549
  %51 = zext i8 %50 to i32, !dbg !2376
  %52 = shl nuw nsw i32 %51, 8, !dbg !2376
  %53 = or i32 %52, %47, !dbg !2376
  %54 = add nuw nsw i32 %44, 2, !dbg !2377
  %55 = icmp eq i32 %53, 0, !dbg !2378
  br i1 %55, label %60, label %56, !dbg !2380

; <label>:56:                                     ; preds = %60, %40
  %57 = add nsw i32 %42, 4, !dbg !2381
  %58 = and i32 %57, 65535, !dbg !2381
  %59 = icmp ult i32 %58, %37, !dbg !2373
  br i1 %59, label %40, label %100, !dbg !2374

; <label>:60:                                     ; preds = %40
  %61 = getelementptr inbounds i8, i8* %1, i32 %41, !dbg !2382
  %62 = load i8, i8* %61, align 1, !dbg !2382, !tbaa !549
  %63 = add nuw nsw i32 %41, 1, !dbg !2382
  %64 = getelementptr inbounds i8, i8* %1, i32 %63, !dbg !2382
  %65 = load i8, i8* %64, align 1, !dbg !2382, !tbaa !549
  %66 = zext i8 %62 to i32, !dbg !2382
  %67 = zext i8 %65 to i32, !dbg !2382
  %68 = shl nuw nsw i32 %67, 8, !dbg !2382
  %69 = or i32 %68, %66, !dbg !2382
  %70 = icmp eq i32 %69, 2, !dbg !2383
  br i1 %70, label %71, label %56, !dbg !2385

; <label>:71:                                     ; preds = %60
  %72 = add nsw i32 %42, 4, !dbg !2387
  %73 = and i32 %72, 65535, !dbg !2387
  %74 = getelementptr inbounds i8, i8* %1, i32 %73, !dbg !2387
  %75 = load i8, i8* %74, align 1, !dbg !2387, !tbaa !549
  %76 = zext i8 %75 to i32, !dbg !2387
  %77 = add nuw nsw i32 %73, 1, !dbg !2387
  %78 = getelementptr inbounds i8, i8* %1, i32 %77, !dbg !2387
  %79 = load i8, i8* %78, align 1, !dbg !2387, !tbaa !549
  %80 = zext i8 %79 to i32, !dbg !2387
  %81 = shl nuw nsw i32 %80, 8, !dbg !2387
  %82 = or i32 %81, %76, !dbg !2387
  %83 = add nuw nsw i32 %73, 2, !dbg !2387
  %84 = getelementptr inbounds i8, i8* %1, i32 %83, !dbg !2387
  %85 = load i8, i8* %84, align 1, !dbg !2387, !tbaa !549
  %86 = zext i8 %85 to i32, !dbg !2387
  %87 = shl nuw nsw i32 %86, 16, !dbg !2387
  %88 = or i32 %82, %87, !dbg !2387
  %89 = add nuw nsw i32 %73, 3, !dbg !2387
  %90 = getelementptr inbounds i8, i8* %1, i32 %89, !dbg !2387
  %91 = load i8, i8* %90, align 1, !dbg !2387, !tbaa !549
  %92 = zext i8 %91 to i32, !dbg !2387
  %93 = shl nuw i32 %92, 24, !dbg !2387
  %94 = or i32 %88, %93, !dbg !2387
  %95 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 12, !dbg !2389
  store i32 %94, i32* %95, align 4, !dbg !2390, !tbaa !2391
  %96 = and i32 %76, 16, !dbg !2392
  %97 = icmp eq i32 %96, 0, !dbg !2392
  br i1 %97, label %98, label %101, !dbg !2394

; <label>:98:                                     ; preds = %71
  %99 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 11, !dbg !2395
  store i8 0, i8* %99, align 2, !dbg !2397, !tbaa !1084
  br label %101, !dbg !2398

; <label>:100:                                    ; preds = %56
  br label %101, !dbg !2399

; <label>:101:                                    ; preds = %100, %98, %71, %27
  %102 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 1, !dbg !2399
  %103 = load i16, i16* %102, align 4, !dbg !2399, !tbaa !793
  %104 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 3, !dbg !2400
  %105 = load i8, i8* %104, align 4, !dbg !2400, !tbaa !1351
  %106 = zext i8 %105 to i32, !dbg !2401
  %107 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 6, !dbg !2402
  %108 = load i16, i16* %107, align 4, !dbg !2402, !tbaa !697
  %109 = zext i16 %108 to i32, !dbg !2403
  %110 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 7, !dbg !2404
  %111 = load i16, i16* %110, align 2, !dbg !2404, !tbaa !762
  %112 = zext i16 %111 to i32, !dbg !2405
  %113 = tail call i32 (i16, i32, i32, ...) @l2cap_send_signaling_packet(i16 zeroext %103, i32 2, i32 %106, i32 %109, i32 %112) #13, !dbg !2406
  br label %190, !dbg !2407

; <label>:114:                                    ; preds = %24
  %115 = icmp eq i8 %3, 3, !dbg !2408
  br i1 %115, label %116, label %190, !dbg !2408

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !2409
  %118 = load i8, i8* %117, align 1, !dbg !2409, !tbaa !549
  %119 = zext i8 %118 to i16, !dbg !2409
  %120 = getelementptr inbounds i8, i8* %1, i32 9, !dbg !2409
  %121 = load i8, i8* %120, align 1, !dbg !2409, !tbaa !549
  %122 = zext i8 %121 to i16, !dbg !2409
  %123 = shl nuw i16 %122, 8, !dbg !2409
  %124 = or i16 %123, %119, !dbg !2409
  switch i16 %124, label %138 [
    i16 0, label %125
    i16 1, label %190
  ], !dbg !2411

; <label>:125:                                    ; preds = %116
  %126 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !2412
  %127 = load i8, i8* %126, align 1, !dbg !2412, !tbaa !549
  %128 = zext i8 %127 to i16, !dbg !2412
  %129 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !2412
  %130 = load i8, i8* %129, align 1, !dbg !2412, !tbaa !549
  %131 = zext i8 %130 to i16, !dbg !2412
  %132 = shl nuw i16 %131, 8, !dbg !2412
  %133 = or i16 %132, %128, !dbg !2412
  %134 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 8, !dbg !2414
  store i16 %133, i16* %134, align 4, !dbg !2415, !tbaa !1028
  store i8 7, i8* %18, align 2, !dbg !2416, !tbaa !788
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 4, metadata !1292, metadata !DIExpression()), !dbg !2419
  %135 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 0, !dbg !2420
  %136 = load i16, i16* %135, align 4, !dbg !2420, !tbaa !1297
  %137 = or i16 %136, 4, !dbg !2421
  store i16 %137, i16* %135, align 4, !dbg !2422, !tbaa !1297
  br label %190, !dbg !2423

; <label>:138:                                    ; preds = %116
  store i8 1, i8* %18, align 2, !dbg !2424, !tbaa !788
  %139 = add i8 %118, 99, !dbg !2425
  tail call fastcc void @l2cap_emit_channel_opened(%struct.l2cap_channel_t* nonnull %0, i8 zeroext %139) #13, !dbg !2426
  %140 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2427, !tbaa !499
  %141 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %140, i32 0, i32 2, !dbg !2427
  %142 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 0, !dbg !2427
  %143 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %141, %struct.btstack_linked_item* %142) #12, !dbg !2427
  %144 = bitcast %struct.l2cap_channel_t* %0 to i8*, !dbg !2428
  tail call void @btstack_memory_l2cap_channel_free(i8* %144) #12, !dbg !2429
  br label %190, !dbg !2430

; <label>:145:                                    ; preds = %24
  switch i8 %3, label %181 [
    i8 4, label %146
    i8 5, label %155
  ], !dbg !2431

; <label>:146:                                    ; preds = %145
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 8, metadata !1292, metadata !DIExpression()), !dbg !2435
  %147 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 0, !dbg !2436
  %148 = load i16, i16* %147, align 4, !dbg !2436, !tbaa !1297
  %149 = or i16 %148, 8, !dbg !2437
  store i16 %149, i16* %147, align 4, !dbg !2438, !tbaa !1297
  tail call void @l2cap_signaling_handle_configure_request(%struct.l2cap_channel_t* nonnull %0, i8* nonnull %1) #13, !dbg !2439
  %150 = load i16, i16* %147, align 4, !dbg !2440, !tbaa !1297
  %151 = and i16 %150, 256, !dbg !2442
  %152 = icmp eq i16 %151, 0, !dbg !2442
  br i1 %152, label %153, label %181, !dbg !2443

; <label>:153:                                    ; preds = %146
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 1, metadata !1292, metadata !DIExpression()), !dbg !2447
  %154 = or i16 %150, 1, !dbg !2448
  store i16 %154, i16* %147, align 4, !dbg !2449, !tbaa !1297
  br label %181, !dbg !2450

; <label>:155:                                    ; preds = %145
  %156 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !2451
  %157 = load i8, i8* %156, align 1, !dbg !2451, !tbaa !549
  %158 = zext i8 %157 to i16, !dbg !2451
  %159 = getelementptr inbounds i8, i8* %1, i32 9, !dbg !2451
  %160 = load i8, i8* %159, align 1, !dbg !2451, !tbaa !549
  %161 = zext i8 %160 to i16, !dbg !2451
  %162 = shl nuw i16 %161, 8, !dbg !2451
  %163 = or i16 %162, %158, !dbg !2451
  call void @llvm.dbg.value(metadata i16 %163, metadata !2317, metadata !DIExpression()), !dbg !2324
  switch i16 %163, label %180 [
    i16 0, label %164
    i16 1, label %168
  ], !dbg !2452

; <label>:164:                                    ; preds = %155
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 2, metadata !1292, metadata !DIExpression()), !dbg !2457
  %165 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 0, !dbg !2458
  %166 = load i16, i16* %165, align 4, !dbg !2458, !tbaa !1297
  %167 = or i16 %166, 2, !dbg !2459
  store i16 %167, i16* %165, align 4, !dbg !2460, !tbaa !1297
  br label %181, !dbg !2461

; <label>:168:                                    ; preds = %155
  %169 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2462, !tbaa !499
  %170 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %169, i32 0, i32 3, i32 2, !dbg !2465
  %171 = load i32, i32* %170, align 4, !dbg !2465, !tbaa !528
  %172 = and i32 %171, 16, !dbg !2466
  %173 = icmp eq i32 %172, 0, !dbg !2466
  br i1 %173, label %180, label %174, !dbg !2467

; <label>:174:                                    ; preds = %168
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1366, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 16, metadata !1369, metadata !DIExpression()), !dbg !2472
  %175 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 0, !dbg !2473
  %176 = load i16, i16* %175, align 4, !dbg !2473, !tbaa !1297
  %177 = and i16 %176, -21, !dbg !2474
  %178 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 11, !dbg !2475
  store i8 0, i8* %178, align 2, !dbg !2476, !tbaa !1084
  store i8 7, i8* %18, align 2, !dbg !2477, !tbaa !788
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1287, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 4, metadata !1292, metadata !DIExpression()), !dbg !2480
  %179 = or i16 %177, 4, !dbg !2481
  store i16 %179, i16* %175, align 4, !dbg !2482, !tbaa !1297
  br label %181, !dbg !2483

; <label>:180:                                    ; preds = %168, %155
  store i8 13, i8* %18, align 2, !dbg !2484, !tbaa !788
  br label %181, !dbg !2487

; <label>:181:                                    ; preds = %180, %174, %164, %153, %146, %145
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %0, metadata !1515, metadata !DIExpression()), !dbg !2488
  %182 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %0, i32 0, i32 5, i32 0, !dbg !2491
  %183 = load i16, i16* %182, align 4, !dbg !2491, !tbaa !1297
  %184 = and i16 %183, 34, !dbg !2492
  %185 = icmp eq i16 %184, 34, !dbg !2492
  br i1 %185, label %186, label %190, !dbg !2493

; <label>:186:                                    ; preds = %181
  store i8 8, i8* %18, align 2, !dbg !2494, !tbaa !788
  tail call fastcc void @l2cap_emit_channel_opened(%struct.l2cap_channel_t* nonnull %0, i8 zeroext 0) #13, !dbg !2496
  tail call void @l2cap_emit_credits(%struct.l2cap_channel_t* nonnull %0, i8 zeroext 1) #13, !dbg !2497
  br label %190, !dbg !2498

; <label>:187:                                    ; preds = %24
  %188 = icmp eq i8 %3, 7, !dbg !2499
  br i1 %188, label %189, label %190, !dbg !2499

; <label>:189:                                    ; preds = %187
  tail call fastcc void @l2cap_finialize_channel_close(%struct.l2cap_channel_t* nonnull %0) #13, !dbg !2500
  br label %190, !dbg !2502

; <label>:190:                                    ; preds = %189, %187, %186, %181, %138, %125, %116, %114, %101, %25, %24, %22, %21
  ret void, !dbg !2503
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_signaling_handler_dispatch(i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2505 {
  %3 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !2526, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i16 %0, metadata !2509, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2510, metadata !DIExpression()), !dbg !2548
  %4 = load i8, i8* %1, align 1, !dbg !2549, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %4, metadata !2511, metadata !DIExpression()), !dbg !2550
  %5 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !2551
  %6 = load i8, i8* %5, align 1, !dbg !2551, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %6, metadata !2512, metadata !DIExpression()), !dbg !2552
  switch i8 %4, label %7 [
    i8 0, label %9
    i8 9, label %9
  ], !dbg !2553

; <label>:7:                                      ; preds = %2
  %8 = icmp ugt i8 %4, 11, !dbg !2555
  br i1 %8, label %9, label %10, !dbg !2557

; <label>:9:                                      ; preds = %7, %2, %2
  tail call fastcc void @l2cap_register_signaling_response(i16 zeroext %0, i8 zeroext 1, i8 zeroext %6, i16 zeroext 0, i16 zeroext 0) #13, !dbg !2559
  br label %202, !dbg !2561

; <label>:10:                                     ; preds = %7
  switch i8 %4, label %158 [
    i8 2, label %11
    i8 10, label %143
  ], !dbg !2562

; <label>:11:                                     ; preds = %10
  %12 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !2563
  %13 = load i8, i8* %12, align 1, !dbg !2563, !tbaa !549
  %14 = zext i8 %13 to i16, !dbg !2563
  %15 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !2563
  %16 = load i8, i8* %15, align 1, !dbg !2563, !tbaa !549
  %17 = zext i8 %16 to i16, !dbg !2563
  %18 = shl nuw i16 %17, 8, !dbg !2563
  %19 = or i16 %18, %14, !dbg !2563
  call void @llvm.dbg.value(metadata i16 %19, metadata !2514, metadata !DIExpression()), !dbg !2564
  %20 = getelementptr inbounds i8, i8* %1, i32 6, !dbg !2565
  %21 = load i8, i8* %20, align 1, !dbg !2565, !tbaa !549
  %22 = zext i8 %21 to i16, !dbg !2565
  %23 = getelementptr inbounds i8, i8* %1, i32 7, !dbg !2565
  %24 = load i8, i8* %23, align 1, !dbg !2565, !tbaa !549
  %25 = zext i8 %24 to i16, !dbg !2565
  %26 = shl nuw i16 %25, 8, !dbg !2565
  %27 = or i16 %26, %22, !dbg !2565
  call void @llvm.dbg.value(metadata i16 %27, metadata !2517, metadata !DIExpression()), !dbg !2566
  %28 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2567, !tbaa !549
  %29 = and i8 %28, 32, !dbg !2567
  %30 = icmp eq i8 %29, 0, !dbg !2567
  br i1 %30, label %33, label %31, !dbg !2569

; <label>:31:                                     ; preds = %11
  %32 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0)) #13, !dbg !2570
  br label %33, !dbg !2570

; <label>:33:                                     ; preds = %31, %11
  tail call void @clear_sniff_cnt() #12, !dbg !2572
  call void @llvm.dbg.value(metadata i16 %0, metadata !2539, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 %6, metadata !2540, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i16 %19, metadata !2541, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i16 %27, metadata !2542, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i16 %19, metadata !2577, metadata !DIExpression()), !dbg !2587
  %34 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2589, !tbaa !499
  %35 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %34, i32 0, i32 1, !dbg !2590
  %36 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %35, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %36, metadata !2582, metadata !DIExpression()), !dbg !2591
  %37 = icmp eq %struct.btstack_linked_item* %36, null, !dbg !2592
  br i1 %37, label %50, label %38, !dbg !2592

; <label>:38:                                     ; preds = %33
  br label %43, !dbg !2594

; <label>:39:                                     ; preds = %43
  %40 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %44, i32 0, i32 0, !dbg !2596
  %41 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %40, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %41, metadata !2582, metadata !DIExpression()), !dbg !2591
  %42 = icmp eq %struct.btstack_linked_item* %41, null, !dbg !2592
  br i1 %42, label %49, label %43, !dbg !2592, !llvm.loop !2598

; <label>:43:                                     ; preds = %39, %38
  %44 = phi %struct.btstack_linked_item* [ %41, %39 ], [ %36, %38 ]
  %45 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %44, i32 1, !dbg !2594
  %46 = bitcast %struct.btstack_linked_item* %45 to i16*, !dbg !2594
  %47 = load i16, i16* %46, align 4, !dbg !2594, !tbaa !2601
  %48 = icmp eq i16 %47, %19, !dbg !2603
  br i1 %48, label %51, label %39

; <label>:49:                                     ; preds = %39
  br label %50, !dbg !2604

; <label>:50:                                     ; preds = %49, %33
  tail call fastcc void @l2cap_register_signaling_response(i16 zeroext %0, i8 zeroext 2, i8 zeroext %6, i16 zeroext %27, i16 zeroext 2) #12, !dbg !2604
  br label %202, !dbg !2607

; <label>:51:                                     ; preds = %43
  %52 = bitcast %struct.btstack_linked_item* %44 to %struct.l2cap_service_t*, !dbg !2608
  %53 = tail call i8* @connection_address_for_handle(i16 zeroext %0) #12, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %53, metadata !2544, metadata !DIExpression()), !dbg !2610
  %54 = icmp eq i8* %53, null, !dbg !2611
  %55 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !549
  %56 = zext i8 %55 to i32
  br i1 %54, label %57, label %63, !dbg !2613

; <label>:57:                                     ; preds = %51
  %58 = and i32 %56, 4, !dbg !2614
  %59 = icmp eq i32 %58, 0, !dbg !2614
  br i1 %59, label %202, label %60, !dbg !2617

; <label>:60:                                     ; preds = %57
  %61 = zext i16 %0 to i32, !dbg !2618
  %62 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0), i32 %61) #12, !dbg !2618
  br label %202, !dbg !2618

; <label>:63:                                     ; preds = %51
  %64 = and i32 %56, 1, !dbg !2620
  %65 = icmp eq i32 %64, 0, !dbg !2620
  br i1 %65, label %68, label %66, !dbg !2622

; <label>:66:                                     ; preds = %63
  %67 = tail call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @str.65, i32 0, i32 0)) #7, !dbg !2623
  br label %68, !dbg !2623

; <label>:68:                                     ; preds = %66, %63
  %69 = tail call i8* @btstack_memory_l2cap_channel_get() #12, !dbg !2625
  %70 = bitcast i8* %69 to %struct.l2cap_channel_t*, !dbg !2626
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %70, metadata !2545, metadata !DIExpression()), !dbg !2627
  %71 = icmp eq i8* %69, null, !dbg !2628
  br i1 %71, label %72, label %73, !dbg !2630

; <label>:72:                                     ; preds = %68
  tail call fastcc void @l2cap_register_signaling_response(i16 zeroext %0, i8 zeroext 2, i8 zeroext %6, i16 zeroext %27, i16 zeroext 4) #12, !dbg !2631
  br label %202, !dbg !2633

; <label>:73:                                     ; preds = %68
  %74 = getelementptr inbounds i8, i8* %69, i32 16, !dbg !2634
  %75 = getelementptr inbounds i8, i8* %69, i32 22, !dbg !2634
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %75, i8* nonnull %53, i32 6, i32 1, i1 false) #7, !dbg !2634
  %76 = getelementptr inbounds i8, i8* %69, i32 28, !dbg !2635
  %77 = bitcast i8* %76 to i16*, !dbg !2635
  store i16 %19, i16* %77, align 4, !dbg !2636, !tbaa !697
  %78 = getelementptr inbounds i8, i8* %69, i32 4, !dbg !2637
  %79 = bitcast i8* %78 to i16*, !dbg !2637
  store i16 %0, i16* %79, align 4, !dbg !2638, !tbaa !793
  %80 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %44, i32 2, !dbg !2639
  %81 = bitcast %struct.btstack_linked_item* %80 to i32*, !dbg !2639
  %82 = load i32, i32* %81, align 4, !dbg !2639, !tbaa !2640
  %83 = getelementptr inbounds i8, i8* %69, i32 8, !dbg !2641
  %84 = bitcast i8* %83 to i32*, !dbg !2642
  store i32 %82, i32* %84, align 4, !dbg !2642, !tbaa !741
  %85 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %44, i32 3, !dbg !2643
  %86 = bitcast %struct.btstack_linked_item* %85 to i32*, !dbg !2643
  %87 = load i32, i32* %86, align 4, !dbg !2643, !tbaa !2644
  %88 = getelementptr inbounds i8, i8* %69, i32 12, !dbg !2645
  %89 = bitcast i8* %88 to i32*, !dbg !2646
  store i32 %87, i32* %89, align 4, !dbg !2646, !tbaa !730
  %90 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2647, !tbaa !499
  %91 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %90, i32 0, i32 3, i32 5, !dbg !2649
  %92 = load i16, i16* %91, align 2, !dbg !2650, !tbaa !512
  %93 = add i16 %92, 1, !dbg !2650
  store i16 %93, i16* %91, align 2, !dbg !2650, !tbaa !512
  %94 = getelementptr inbounds i8, i8* %69, i32 30, !dbg !2651
  %95 = bitcast i8* %94 to i16*, !dbg !2651
  store i16 %92, i16* %95, align 2, !dbg !2652, !tbaa !762
  %96 = getelementptr inbounds i8, i8* %69, i32 32, !dbg !2653
  %97 = bitcast i8* %96 to i16*, !dbg !2653
  store i16 %27, i16* %97, align 4, !dbg !2654, !tbaa !1028
  %98 = getelementptr inbounds %struct.l2cap_service_t, %struct.l2cap_service_t* %52, i32 0, i32 2, !dbg !2655
  %99 = load i16, i16* %98, align 2, !dbg !2655, !tbaa !1727
  %100 = getelementptr inbounds i8, i8* %69, i32 34, !dbg !2656
  %101 = bitcast i8* %100 to i16*, !dbg !2656
  store i16 %99, i16* %101, align 2, !dbg !2657, !tbaa !1501
  %102 = load i8, i8* @pan_profile_support, align 1, !dbg !2658, !tbaa !549
  %103 = icmp eq i8 %102, 0, !dbg !2658
  %104 = select i1 %103, i16 672, i16 1696, !dbg !2660
  %105 = getelementptr inbounds i8, i8* %69, i32 36, !dbg !2661
  %106 = bitcast i8* %105 to i16*, !dbg !2661
  store i16 %104, i16* %106, align 4, !dbg !2662, !tbaa !922
  %107 = getelementptr inbounds i8, i8* %69, i32 19, !dbg !2663
  store i8 %6, i8* %107, align 1, !dbg !2664, !tbaa !1264
  %108 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %90, i32 0, i32 3, i32 2, !dbg !2665
  %109 = load i32, i32* %108, align 4, !dbg !2665, !tbaa !528
  %110 = getelementptr inbounds i8, i8* %69, i32 38
  %111 = trunc i32 %109 to i8, !dbg !2667
  %112 = lshr i8 %111, 2, !dbg !2667
  %113 = and i8 %112, 4, !dbg !2667
  store i8 %113, i8* %110, align 2, !tbaa !1084
  %114 = icmp ugt i16 %99, %104, !dbg !2668
  br i1 %114, label %115, label %116, !dbg !2670

; <label>:115:                                    ; preds = %73
  store i16 %104, i16* %101, align 2, !dbg !2671, !tbaa !1501
  br label %116, !dbg !2673

; <label>:116:                                    ; preds = %115, %73
  %117 = getelementptr inbounds i8, i8* %69, i32 18, !dbg !2674
  store i8 4, i8* %117, align 2, !dbg !2675, !tbaa !788
  %118 = bitcast i8* %74 to i16*, !dbg !2676
  store i16 0, i16* %118, align 4, !dbg !2677, !tbaa !1297
  %119 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %90, i32 0, i32 2, !dbg !2678
  %120 = bitcast i8* %69 to %struct.btstack_linked_item*, !dbg !2678
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** %119, %struct.btstack_linked_item* %120) #12, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %70, metadata !2529, metadata !DIExpression()), !dbg !2679
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %121) #7, !dbg !2680
  %122 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2681, !tbaa !549
  %123 = and i8 %122, 1, !dbg !2681
  %124 = icmp eq i8 %123, 0, !dbg !2681
  br i1 %124, label %136, label %125, !dbg !2683

; <label>:125:                                    ; preds = %116
  %126 = tail call i8* @bd_addr_to_str(i8* nonnull %75) #12, !dbg !2684
  %127 = load i16, i16* %79, align 4, !dbg !2684, !tbaa !793
  %128 = zext i16 %127 to i32, !dbg !2684
  %129 = load i16, i16* %77, align 4, !dbg !2684, !tbaa !697
  %130 = zext i16 %129 to i32, !dbg !2684
  %131 = load i16, i16* %95, align 2, !dbg !2684, !tbaa !762
  %132 = zext i16 %131 to i32, !dbg !2684
  %133 = load i16, i16* %97, align 4, !dbg !2684, !tbaa !1028
  %134 = zext i16 %133 to i32, !dbg !2684
  %135 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.45, i32 0, i32 0), i8* %126, i32 %128, i32 %130, i32 %132, i32 %134) #12, !dbg !2686
  br label %136, !dbg !2684

; <label>:136:                                    ; preds = %125, %116
  store i8 114, i8* %121, align 1, !dbg !2688, !tbaa !549
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 1, !dbg !2689
  store i8 14, i8* %137, align 1, !dbg !2690, !tbaa !549
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 2, !dbg !2691
  call void @bt_flip_addr(i8* %138, i8* nonnull %75) #12, !dbg !2692
  %139 = load i16, i16* %79, align 4, !dbg !2693, !tbaa !793
  call void @bt_store_16(i8* nonnull %121, i16 zeroext 8, i16 zeroext %139) #12, !dbg !2694
  %140 = load i16, i16* %77, align 4, !dbg !2695, !tbaa !697
  call void @bt_store_16(i8* nonnull %121, i16 zeroext 10, i16 zeroext %140) #12, !dbg !2696
  %141 = load i16, i16* %95, align 2, !dbg !2697, !tbaa !762
  call void @bt_store_16(i8* nonnull %121, i16 zeroext 12, i16 zeroext %141) #12, !dbg !2698
  %142 = load i16, i16* %97, align 4, !dbg !2699, !tbaa !1028
  call void @bt_store_16(i8* nonnull %121, i16 zeroext 14, i16 zeroext %142) #12, !dbg !2700
  call void @l2cap_dispatch(%struct.l2cap_channel_t* nonnull %70, i8 zeroext 4, i8* nonnull %121, i16 zeroext 16) #12, !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %121) #7, !dbg !2702
  br label %202, !dbg !2703

; <label>:143:                                    ; preds = %10
  %144 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2704, !tbaa !549
  %145 = and i8 %144, 32, !dbg !2704
  %146 = icmp eq i8 %145, 0, !dbg !2704
  br i1 %146, label %149, label %147, !dbg !2706

; <label>:147:                                    ; preds = %143
  %148 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0)) #13, !dbg !2707
  br label %149, !dbg !2707

; <label>:149:                                    ; preds = %147, %143
  %150 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !2709
  %151 = load i8, i8* %150, align 1, !dbg !2709, !tbaa !549
  %152 = zext i8 %151 to i16, !dbg !2709
  %153 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !2709
  %154 = load i8, i8* %153, align 1, !dbg !2709, !tbaa !549
  %155 = zext i8 %154 to i16, !dbg !2709
  %156 = shl nuw i16 %155, 8, !dbg !2709
  %157 = or i16 %156, %152, !dbg !2709
  call void @llvm.dbg.value(metadata i16 %157, metadata !2518, metadata !DIExpression()), !dbg !2710
  tail call fastcc void @l2cap_register_signaling_response(i16 zeroext %0, i8 zeroext 10, i8 zeroext %6, i16 zeroext 0, i16 zeroext %157) #13, !dbg !2711
  br label %202, !dbg !2712

; <label>:158:                                    ; preds = %10
  %159 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !2713
  %160 = load i8, i8* %159, align 1, !dbg !2713, !tbaa !549
  %161 = zext i8 %160 to i32, !dbg !2713
  %162 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !2713
  %163 = load i8, i8* %162, align 1, !dbg !2713, !tbaa !549
  %164 = zext i8 %163 to i32, !dbg !2713
  %165 = shl nuw nsw i32 %164, 8, !dbg !2713
  %166 = or i32 %165, %161, !dbg !2713
  %167 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2714, !tbaa !499
  %168 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %167, i32 0, i32 2, !dbg !2715
  %169 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %168, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %169, metadata !2520, metadata !DIExpression()), !dbg !2716
  %170 = icmp eq %struct.btstack_linked_item* %169, null, !dbg !2717
  br i1 %170, label %202, label %171, !dbg !2717

; <label>:171:                                    ; preds = %158
  %172 = and i8 %4, 1
  %173 = icmp eq i8 %172, 0
  br label %174, !dbg !2717

; <label>:174:                                    ; preds = %197, %171
  %175 = phi %struct.btstack_linked_item* [ %169, %171 ], [ %199, %197 ]
  %176 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %175, i32 1, !dbg !2719
  %177 = bitcast %struct.btstack_linked_item* %176 to i16*, !dbg !2719
  %178 = load i16, i16* %177, align 4, !dbg !2719, !tbaa !793
  %179 = icmp eq i16 %178, %0, !dbg !2721
  br i1 %179, label %180, label %197, !dbg !2722

; <label>:180:                                    ; preds = %174
  br i1 %173, label %188, label %181, !dbg !2723

; <label>:181:                                    ; preds = %180
  %182 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %175, i32 5, !dbg !2725
  %183 = bitcast %struct.btstack_linked_item* %182 to i8*, !dbg !2725
  %184 = load i8, i8* %183, align 4, !dbg !2725, !tbaa !1351
  %185 = icmp eq i8 %184, %6, !dbg !2729
  br i1 %185, label %186, label %197, !dbg !2730

; <label>:186:                                    ; preds = %181
  %187 = bitcast %struct.btstack_linked_item* %175 to %struct.l2cap_channel_t*, !dbg !2731
  tail call void @l2cap_signaling_handler_channel(%struct.l2cap_channel_t* nonnull %187, i8* %1) #13, !dbg !2732
  br label %202

; <label>:188:                                    ; preds = %180
  %189 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %175, i32 4
  %190 = bitcast %struct.btstack_linked_item* %189 to %struct.channel_core_data_t*
  %191 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %190, i32 0, i32 7, !dbg !2734
  %192 = load i16, i16* %191, align 2, !dbg !2734, !tbaa !762
  %193 = zext i16 %192 to i32, !dbg !2737
  %194 = icmp eq i32 %193, %166, !dbg !2738
  br i1 %194, label %195, label %197, !dbg !2739

; <label>:195:                                    ; preds = %188
  %196 = bitcast %struct.btstack_linked_item* %175 to %struct.l2cap_channel_t*, !dbg !2731
  tail call void @l2cap_signaling_handler_channel(%struct.l2cap_channel_t* nonnull %196, i8* %1) #13, !dbg !2740
  br label %202

; <label>:197:                                    ; preds = %188, %181, %174
  %198 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %175, i32 0, i32 0, !dbg !2742
  %199 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %198, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %199, metadata !2520, metadata !DIExpression()), !dbg !2716
  %200 = icmp eq %struct.btstack_linked_item* %199, null, !dbg !2717
  br i1 %200, label %201, label %174, !dbg !2717, !llvm.loop !2744

; <label>:201:                                    ; preds = %197
  br label %202, !dbg !2747

; <label>:202:                                    ; preds = %201, %195, %186, %158, %149, %136, %72, %60, %57, %50, %9
  ret void, !dbg !2747
}

; Function Attrs: nounwind optsize
define internal fastcc void @l2cap_register_signaling_response(i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !2748 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2752, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8 %1, metadata !2753, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 %2, metadata !2754, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i16 %3, metadata !2755, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i16 %4, metadata !2756, metadata !DIExpression()), !dbg !2761
  %6 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !2762, !tbaa !499
  %7 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %6, i32 0, i32 3, i32 1, !dbg !2764
  %8 = load i32, i32* %7, align 4, !dbg !2764, !tbaa !515
  %9 = icmp slt i32 %8, 3, !dbg !2765
  br i1 %9, label %10, label %20, !dbg !2766

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %6, i32 0, i32 3, i32 0, i32 %8, i32 0, !dbg !2767
  store i16 %0, i16* %11, align 4, !dbg !2769, !tbaa !1143
  %12 = load i32, i32* %7, align 4, !dbg !2770, !tbaa !515
  %13 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %6, i32 0, i32 3, i32 0, i32 %12, i32 2, !dbg !2771
  store i8 %1, i8* %13, align 1, !dbg !2772, !tbaa !1154
  %14 = load i32, i32* %7, align 4, !dbg !2773, !tbaa !515
  %15 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %6, i32 0, i32 3, i32 0, i32 %14, i32 1, !dbg !2774
  store i8 %2, i8* %15, align 2, !dbg !2775, !tbaa !1147
  %16 = load i32, i32* %7, align 4, !dbg !2776, !tbaa !515
  %17 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %6, i32 0, i32 3, i32 0, i32 %16, i32 3, !dbg !2777
  store i16 %3, i16* %17, align 4, !dbg !2778, !tbaa !2779
  %18 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %6, i32 0, i32 3, i32 0, i32 %16, i32 4, !dbg !2780
  store i16 %4, i16* %18, align 2, !dbg !2781, !tbaa !1150
  %19 = add nsw i32 %16, 1, !dbg !2782
  store i32 %19, i32* %7, align 4, !dbg !2782, !tbaa !515
  tail call void @l2cap_run() #13, !dbg !2783
  br label %20, !dbg !2784

; <label>:20:                                     ; preds = %10, %5
  ret void, !dbg !2785
}

; Function Attrs: optsize
declare void @clear_sniff_cnt() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define weak hidden i32 @l2cap_connection_update_request_just(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2786 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2790, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i16 %1, metadata !2791, metadata !DIExpression()), !dbg !2793
  ret i32 0, !dbg !2794
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_acl_handler(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2795 {
  %3 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !2811, metadata !DIExpression()), !dbg !2818
  %4 = alloca [10 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !2830, metadata !DIExpression()), !dbg !2858
  %5 = alloca %struct.le_connection_parameter_range, align 2
  call void @llvm.dbg.value(metadata i8* %0, metadata !2797, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i16 %1, metadata !2798, metadata !DIExpression()), !dbg !2860
  %6 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !2861
  %7 = load i8, i8* %6, align 1, !dbg !2861, !tbaa !549
  %8 = zext i8 %7 to i16, !dbg !2861
  %9 = getelementptr inbounds i8, i8* %0, i32 7, !dbg !2861
  %10 = load i8, i8* %9, align 1, !dbg !2861, !tbaa !549
  %11 = zext i8 %10 to i16, !dbg !2861
  %12 = shl nuw i16 %11, 8, !dbg !2861
  %13 = or i16 %12, %8, !dbg !2861
  call void @llvm.dbg.value(metadata i16 %13, metadata !2799, metadata !DIExpression()), !dbg !2862
  %14 = load i8, i8* %0, align 1, !dbg !2863, !tbaa !549
  %15 = zext i8 %14 to i16, !dbg !2863
  %16 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !2863
  %17 = load i8, i8* %16, align 1, !dbg !2863, !tbaa !549
  %18 = zext i8 %17 to i16, !dbg !2863
  %19 = shl nuw i16 %18, 8, !dbg !2863
  %20 = and i16 %19, 3840, !dbg !2863
  %21 = or i16 %20, %15, !dbg !2863
  call void @llvm.dbg.value(metadata i16 %21, metadata !2800, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i16 8, metadata !2801, metadata !DIExpression()), !dbg !2865
  switch i16 %13, label %222 [
    i16 1, label %22
    i16 5, label %49
    i16 4, label %202
    i16 6, label %212
  ], !dbg !2866

; <label>:22:                                     ; preds = %2
  %23 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2867, !tbaa !549
  %24 = and i8 %23, 32, !dbg !2867
  %25 = icmp eq i8 %24, 0, !dbg !2867
  br i1 %25, label %28, label %26, !dbg !2869

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0)) #13, !dbg !2870
  br label %28, !dbg !2870

; <label>:28:                                     ; preds = %26, %22
  %29 = zext i16 %1 to i32, !dbg !2872
  %30 = icmp ugt i16 %1, 8, !dbg !2874
  br i1 %30, label %31, label %229, !dbg !2875

; <label>:31:                                     ; preds = %28
  br label %32, !dbg !2876

; <label>:32:                                     ; preds = %32, %31
  %33 = phi i32 [ %47, %32 ], [ 8, %31 ]
  %34 = getelementptr inbounds i8, i8* %0, i32 %33, !dbg !2876
  tail call void @l2cap_signaling_handler_dispatch(i16 zeroext %21, i8* %34) #13, !dbg !2878
  %35 = add nuw nsw i32 %33, 2, !dbg !2879
  %36 = getelementptr inbounds i8, i8* %0, i32 %35, !dbg !2879
  %37 = load i8, i8* %36, align 1, !dbg !2879, !tbaa !549
  %38 = zext i8 %37 to i32, !dbg !2879
  %39 = add nuw nsw i32 %33, 3, !dbg !2879
  %40 = getelementptr inbounds i8, i8* %0, i32 %39, !dbg !2879
  %41 = load i8, i8* %40, align 1, !dbg !2879, !tbaa !549
  %42 = zext i8 %41 to i32, !dbg !2879
  %43 = shl nuw nsw i32 %42, 8, !dbg !2879
  %44 = or i32 %43, %38, !dbg !2879
  %45 = add nuw nsw i32 %33, 4, !dbg !2880
  %46 = add nuw nsw i32 %45, %44, !dbg !2881
  %47 = and i32 %46, 65535, !dbg !2882
  %48 = icmp ult i32 %47, %29, !dbg !2874
  br i1 %48, label %32, label %228, !dbg !2875, !llvm.loop !2883

; <label>:49:                                     ; preds = %2
  %50 = load i32, i32* @config_stack_modules, align 4, !dbg !2886, !tbaa !532
  %51 = and i32 %50, 4, !dbg !2886
  %52 = icmp eq i32 %51, 0, !dbg !2886
  br i1 %52, label %229, label %53, !dbg !2887

; <label>:53:                                     ; preds = %49
  %54 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2888, !tbaa !549
  %55 = and i8 %54, 32, !dbg !2888
  %56 = icmp eq i8 %55, 0, !dbg !2888
  br i1 %56, label %59, label %57, !dbg !2890

; <label>:57:                                     ; preds = %53
  %58 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0)) #13, !dbg !2891
  br label %59, !dbg !2891

; <label>:59:                                     ; preds = %57, %53
  %60 = getelementptr inbounds i8, i8* %0, i32 9, !dbg !2893
  %61 = load i8, i8* %60, align 1, !dbg !2893, !tbaa !549
  %62 = getelementptr inbounds i8, i8* %0, i32 10, !dbg !2894
  %63 = load i8, i8* %62, align 1, !dbg !2894, !tbaa !549
  %64 = zext i8 %63 to i32, !dbg !2894
  %65 = getelementptr inbounds i8, i8* %0, i32 11, !dbg !2894
  %66 = load i8, i8* %65, align 1, !dbg !2894, !tbaa !549
  %67 = zext i8 %66 to i32, !dbg !2894
  %68 = shl nuw nsw i32 %67, 8, !dbg !2894
  %69 = or i32 %68, %64, !dbg !2894
  %70 = add nuw nsw i32 %69, 12, !dbg !2895
  %71 = zext i16 %1 to i32, !dbg !2897
  %72 = icmp ugt i32 %70, %71, !dbg !2898
  br i1 %72, label %229, label %73, !dbg !2899

; <label>:73:                                     ; preds = %59
  %74 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !2900
  call void @llvm.dbg.value(metadata i16 %21, metadata !2825, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8* %74, metadata !2826, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 %61, metadata !2827, metadata !DIExpression()), !dbg !2903
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0, !dbg !2904
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %75) #7, !dbg !2904
  %76 = load i8, i8* %74, align 1, !dbg !2905, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %76, metadata !2834, metadata !DIExpression()), !dbg !2906
  %77 = tail call zeroext i16 @little_endian_read_16(i8* %74, i32 2) #12, !dbg !2907
  call void @llvm.dbg.value(metadata i16 %77, metadata !2835, metadata !DIExpression()), !dbg !2908
  %78 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2909, !tbaa !549
  %79 = and i8 %78, 1, !dbg !2909
  %80 = icmp eq i8 %79, 0, !dbg !2909
  br i1 %80, label %87, label %81, !dbg !2911

; <label>:81:                                     ; preds = %73
  %82 = zext i8 %76 to i32, !dbg !2912
  %83 = zext i8 %61 to i32, !dbg !2912
  %84 = zext i16 %77 to i32, !dbg !2912
  %85 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.46, i32 0, i32 0), i32 %82, i32 %83, i32 %84) #12, !dbg !2912
  %86 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !549
  br label %87, !dbg !2912

; <label>:87:                                     ; preds = %81, %73
  %88 = phi i8 [ %78, %73 ], [ %86, %81 ], !dbg !2914
  %89 = and i8 %88, 2, !dbg !2914
  %90 = icmp eq i8 %89, 0, !dbg !2914
  br i1 %90, label %95, label %91, !dbg !2916

; <label>:91:                                     ; preds = %87
  %92 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.68, i32 0, i32 0)) #7, !dbg !2917
  %93 = zext i16 %77 to i32, !dbg !2917
  %94 = add nuw nsw i32 %93, 4, !dbg !2917
  tail call void @put_buf(i8* nonnull %74, i32 %94) #12, !dbg !2920
  br label %95, !dbg !2917

; <label>:95:                                     ; preds = %91, %87
  switch i8 %76, label %201 [
    i8 18, label %96
    i8 19, label %190
    i8 7, label %200
  ], !dbg !2922

; <label>:96:                                     ; preds = %95
  %97 = icmp ult i16 %77, 8, !dbg !2923
  br i1 %97, label %201, label %98, !dbg !2925

; <label>:98:                                     ; preds = %96
  %99 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %21) #12, !dbg !2926
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %99, metadata !2828, metadata !DIExpression()), !dbg !2927
  %100 = icmp eq %struct.__le_hci_connection* %99, null, !dbg !2928
  br i1 %100, label %180, label %101, !dbg !2929

; <label>:101:                                    ; preds = %98
  %102 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %99, i32 0, i32 4, !dbg !2930
  %103 = load i8, i8* %102, align 4, !dbg !2930, !tbaa !2931
  %104 = icmp eq i8 %103, 0, !dbg !2932
  br i1 %104, label %114, label %105, !dbg !2933

; <label>:105:                                    ; preds = %101
  %106 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2934, !tbaa !549
  %107 = and i8 %106, 4, !dbg !2934
  %108 = icmp eq i8 %107, 0, !dbg !2934
  br i1 %108, label %111, label %109, !dbg !2936

; <label>:109:                                    ; preds = %105
  %110 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.67, i32 0, i32 0)) #7, !dbg !2937
  br label %111, !dbg !2937

; <label>:111:                                    ; preds = %109, %105
  %112 = getelementptr inbounds i8, i8* %0, i32 17, !dbg !2939
  %113 = load i8, i8* %112, align 1, !dbg !2939, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %113, metadata !2836, metadata !DIExpression()), !dbg !2940
  tail call fastcc void @l2cap_register_signaling_response(i16 zeroext %21, i8 zeroext 31, i8 zeroext %113, i16 zeroext 0, i16 zeroext 0) #12, !dbg !2941
  br label %200

; <label>:114:                                    ; preds = %101
  call void @llvm.dbg.value(metadata i32 1, metadata !2841, metadata !DIExpression()), !dbg !2942
  %115 = bitcast %struct.le_connection_parameter_range* %5 to i8*, !dbg !2943
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %115) #7, !dbg !2943
  call void @llvm.dbg.value(metadata %struct.le_connection_parameter_range* %5, metadata !2842, metadata !DIExpression(DW_OP_deref)), !dbg !2944
  call void @gap_le_get_connection_parameter_range(%struct.le_connection_parameter_range* nonnull %5) #12, !dbg !2945
  %116 = call zeroext i16 @little_endian_read_16(i8* %74, i32 4) #12, !dbg !2946
  call void @llvm.dbg.value(metadata i16 %116, metadata !2853, metadata !DIExpression()), !dbg !2947
  %117 = call zeroext i16 @little_endian_read_16(i8* %74, i32 6) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i16 %117, metadata !2854, metadata !DIExpression()), !dbg !2949
  %118 = call zeroext i16 @little_endian_read_16(i8* %74, i32 8) #12, !dbg !2950
  call void @llvm.dbg.value(metadata i16 %118, metadata !2855, metadata !DIExpression()), !dbg !2951
  %119 = call zeroext i16 @little_endian_read_16(i8* %74, i32 10) #12, !dbg !2952
  call void @llvm.dbg.value(metadata i16 %119, metadata !2856, metadata !DIExpression()), !dbg !2953
  %120 = getelementptr inbounds %struct.le_connection_parameter_range, %struct.le_connection_parameter_range* %5, i32 0, i32 0, !dbg !2954
  %121 = load i16, i16* %120, align 2, !dbg !2954, !tbaa !2956
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2942
  %122 = icmp uge i16 %116, %121, !dbg !2958
  %123 = getelementptr inbounds %struct.le_connection_parameter_range, %struct.le_connection_parameter_range* %5, i32 0, i32 1, !dbg !2959
  %124 = load i16, i16* %123, align 2, !dbg !2959, !tbaa !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2942
  %125 = icmp ule i16 %117, %124, !dbg !2962
  %126 = and i1 %122, %125, !dbg !2962
  %127 = getelementptr inbounds %struct.le_connection_parameter_range, %struct.le_connection_parameter_range* %5, i32 0, i32 2, !dbg !2963
  %128 = load i16, i16* %127, align 2, !dbg !2963, !tbaa !2965
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2942
  %129 = icmp uge i16 %118, %128, !dbg !2966
  %130 = and i1 %126, %129, !dbg !2966
  %131 = getelementptr inbounds %struct.le_connection_parameter_range, %struct.le_connection_parameter_range* %5, i32 0, i32 3, !dbg !2967
  %132 = load i16, i16* %131, align 2, !dbg !2967, !tbaa !2969
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2942
  %133 = icmp ule i16 %118, %132, !dbg !2970
  %134 = and i1 %130, %133, !dbg !2970
  %135 = getelementptr inbounds %struct.le_connection_parameter_range, %struct.le_connection_parameter_range* %5, i32 0, i32 4, !dbg !2971
  %136 = load i16, i16* %135, align 2, !dbg !2971, !tbaa !2973
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2942
  %137 = icmp uge i16 %119, %136, !dbg !2974
  %138 = and i1 %134, %137, !dbg !2974
  %139 = getelementptr inbounds %struct.le_connection_parameter_range, %struct.le_connection_parameter_range* %5, i32 0, i32 5, !dbg !2975
  %140 = load i16, i16* %139, align 2, !dbg !2975, !tbaa !2977
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()), !dbg !2942
  %141 = icmp ule i16 %119, %140, !dbg !2978
  %142 = and i1 %138, %141, !dbg !2978
  br i1 %142, label %143, label %158, !dbg !2979

; <label>:143:                                    ; preds = %114
  %144 = getelementptr inbounds i8, i8* %0, i32 12, !dbg !2980
  %145 = call i32 @l2cap_connection_update_request_just(i8* %144, i16 zeroext %21) #12, !dbg !2984
  %146 = icmp eq i32 %145, 0, !dbg !2984
  br i1 %146, label %153, label %147, !dbg !2985

; <label>:147:                                    ; preds = %143
  %148 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2986, !tbaa !549
  %149 = and i8 %148, 1, !dbg !2986
  %150 = icmp eq i8 %149, 0, !dbg !2986
  br i1 %150, label %158, label %151, !dbg !2989

; <label>:151:                                    ; preds = %147
  %152 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.66, i32 0, i32 0)) #7, !dbg !2990
  br label %158, !dbg !2990

; <label>:153:                                    ; preds = %143
  %154 = call zeroext i16 @little_endian_read_16(i8* %74, i32 4) #12, !dbg !2992
  call void @llvm.dbg.value(metadata i16 %154, metadata !2853, metadata !DIExpression()), !dbg !2947
  %155 = call zeroext i16 @little_endian_read_16(i8* %74, i32 6) #12, !dbg !2994
  call void @llvm.dbg.value(metadata i16 %155, metadata !2854, metadata !DIExpression()), !dbg !2949
  %156 = call zeroext i16 @little_endian_read_16(i8* %74, i32 8) #12, !dbg !2995
  call void @llvm.dbg.value(metadata i16 %156, metadata !2855, metadata !DIExpression()), !dbg !2951
  %157 = call zeroext i16 @little_endian_read_16(i8* %74, i32 10) #12, !dbg !2996
  call void @llvm.dbg.value(metadata i16 %157, metadata !2856, metadata !DIExpression()), !dbg !2953
  br label %158

; <label>:158:                                    ; preds = %153, %151, %147, %114
  %159 = phi i32 [ 1, %153 ], [ 0, %114 ], [ 0, %147 ], [ 0, %151 ]
  %160 = phi i16 [ %154, %153 ], [ %116, %114 ], [ %116, %147 ], [ %116, %151 ]
  %161 = phi i16 [ %155, %153 ], [ %117, %114 ], [ %117, %147 ], [ %117, %151 ]
  %162 = phi i16 [ %156, %153 ], [ %118, %114 ], [ %118, %147 ], [ %118, %151 ]
  %163 = phi i16 [ %157, %153 ], [ %119, %114 ], [ %119, %147 ], [ %119, %151 ]
  call void @llvm.dbg.value(metadata i16 %163, metadata !2856, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i16 %162, metadata !2855, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i16 %161, metadata !2854, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i16 %160, metadata !2853, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 %159, metadata !2841, metadata !DIExpression()), !dbg !2942
  %164 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2997, !tbaa !549
  %165 = and i8 %164, 1, !dbg !2997
  %166 = icmp eq i8 %165, 0, !dbg !2997
  br i1 %166, label %169, label %167, !dbg !2999

; <label>:167:                                    ; preds = %158
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0), i32 %159) #12, !dbg !3000
  br label %169, !dbg !3000

; <label>:169:                                    ; preds = %167, %158
  %170 = icmp eq i32 %159, 0, !dbg !3002
  %171 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %99, i32 0, i32 5
  br i1 %170, label %177, label %172, !dbg !3004

; <label>:172:                                    ; preds = %169
  store i32 2, i32* %171, align 4, !dbg !3005, !tbaa !1589
  %173 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %99, i32 0, i32 7, !dbg !3007
  store i16 %160, i16* %173, align 2, !dbg !3008, !tbaa !1598
  %174 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %99, i32 0, i32 8, !dbg !3009
  store i16 %161, i16* %174, align 4, !dbg !3010, !tbaa !1601
  %175 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %99, i32 0, i32 9, !dbg !3011
  store i16 %162, i16* %175, align 2, !dbg !3012, !tbaa !1604
  %176 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %99, i32 0, i32 10, !dbg !3013
  store i16 %163, i16* %176, align 4, !dbg !3014, !tbaa !1607
  br label %178, !dbg !3015

; <label>:177:                                    ; preds = %169
  store i32 4, i32* %171, align 4, !dbg !3016, !tbaa !1589
  br label %178

; <label>:178:                                    ; preds = %177, %172
  %179 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %99, i32 0, i32 6, !dbg !3018
  store i8 %61, i8* %179, align 4, !dbg !3019, !tbaa !1595
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %115) #7, !dbg !3020
  br label %180, !dbg !3021

; <label>:180:                                    ; preds = %178, %98
  %181 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** @le_l2cap_event_packet_handler, align 4, !dbg !3022, !tbaa !499
  %182 = icmp eq void (i8, i16, i8*, i16)* %181, null, !dbg !3022
  br i1 %182, label %200, label %183, !dbg !3024

; <label>:183:                                    ; preds = %180
  store i8 118, i8* %75, align 1, !dbg !3025, !tbaa !549
  %184 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 1, !dbg !3026
  store i8 8, i8* %184, align 1, !dbg !3027, !tbaa !549
  %185 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 2, !dbg !3028
  %186 = getelementptr inbounds i8, i8* %0, i32 12, !dbg !3029
  %187 = bitcast i8* %186 to i64*, !dbg !3030
  %188 = bitcast i8* %185 to i64*, !dbg !3030
  %189 = load i64, i64* %187, align 1, !dbg !3030
  store i64 %189, i64* %188, align 1, !dbg !3030
  call void %181(i8 zeroext 4, i16 zeroext 0, i8* nonnull %75, i16 zeroext 10) #12, !dbg !3031
  br label %200, !dbg !3032

; <label>:190:                                    ; preds = %95
  %191 = icmp ult i16 %77, 2, !dbg !3033
  br i1 %191, label %201, label %192, !dbg !3035

; <label>:192:                                    ; preds = %190
  %193 = tail call zeroext i16 @little_endian_read_16(i8* %74, i32 4) #12, !dbg !3036
  call void @llvm.dbg.value(metadata i16 %193, metadata !2829, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i16 %21, metadata !2816, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i16 %193, metadata !2817, metadata !DIExpression()), !dbg !3039
  %194 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %194) #7, !dbg !3040
  store i8 119, i8* %194, align 1, !dbg !3041, !tbaa !549
  %195 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 1, !dbg !3042
  store i8 4, i8* %195, align 1, !dbg !3043, !tbaa !549
  call void @little_endian_store_16(i8* nonnull %194, i16 zeroext 2, i16 zeroext %21) #12, !dbg !3044
  call void @little_endian_store_16(i8* nonnull %194, i16 zeroext 4, i16 zeroext %193) #12, !dbg !3045
  %196 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** @le_l2cap_event_packet_handler, align 4, !dbg !3046, !tbaa !499
  %197 = icmp eq void (i8, i16, i8*, i16)* %196, null, !dbg !3046
  br i1 %197, label %199, label %198, !dbg !3048

; <label>:198:                                    ; preds = %192
  call void %196(i8 zeroext 4, i16 zeroext 0, i8* nonnull %194, i16 zeroext 6) #12, !dbg !3049
  br label %199, !dbg !3050

; <label>:199:                                    ; preds = %198, %192
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %194) #7, !dbg !3050
  br label %200, !dbg !3051

; <label>:200:                                    ; preds = %199, %183, %180, %111, %95
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %75) #7, !dbg !3052
  call void @llvm.dbg.value(metadata i32 1, metadata !2808, metadata !DIExpression()), !dbg !3053
  br label %229, !dbg !3054

; <label>:201:                                    ; preds = %190, %96, %95
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %75) #7, !dbg !3052
  call void @llvm.dbg.value(metadata i32 1, metadata !2808, metadata !DIExpression()), !dbg !3053
  tail call fastcc void @l2cap_register_signaling_response(i16 zeroext %21, i8 zeroext 31, i8 zeroext %61, i16 zeroext 0, i16 zeroext 0) #13, !dbg !3055
  br label %229, !dbg !3058

; <label>:202:                                    ; preds = %2
  %203 = load i32, i32* @config_stack_modules, align 4, !dbg !3059, !tbaa !532
  %204 = and i32 %203, 4, !dbg !3059
  %205 = icmp ne i32 %204, 0, !dbg !3059
  %206 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds ([3 x %struct.l2cap_fixed_channel], [3 x %struct.l2cap_fixed_channel]* @l2cap_fixed_channels, i32 0, i32 0, i32 0), align 4, !dbg !3061
  %207 = icmp ne void (i8, i16, i8*, i16)* %206, null, !dbg !3064
  %208 = and i1 %205, %207, !dbg !3065
  br i1 %208, label %209, label %229, !dbg !3065

; <label>:209:                                    ; preds = %202
  %210 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !3066
  %211 = add i16 %1, -8, !dbg !3068
  tail call void %206(i8 zeroext 8, i16 zeroext %21, i8* %210, i16 zeroext %211) #12, !dbg !3069
  br label %229, !dbg !3070

; <label>:212:                                    ; preds = %2
  %213 = load i32, i32* @config_stack_modules, align 4, !dbg !3071, !tbaa !532
  %214 = and i32 %213, 4, !dbg !3071
  %215 = icmp ne i32 %214, 0, !dbg !3071
  %216 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds ([3 x %struct.l2cap_fixed_channel], [3 x %struct.l2cap_fixed_channel]* @l2cap_fixed_channels, i32 0, i32 1, i32 0), align 4, !dbg !3073
  %217 = icmp ne void (i8, i16, i8*, i16)* %216, null, !dbg !3076
  %218 = and i1 %215, %217, !dbg !3077
  br i1 %218, label %219, label %229, !dbg !3077

; <label>:219:                                    ; preds = %212
  %220 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !3078
  %221 = add i16 %1, -8, !dbg !3080
  tail call void %216(i8 zeroext 9, i16 zeroext %21, i8* %220, i16 zeroext %221) #12, !dbg !3081
  br label %229, !dbg !3082

; <label>:222:                                    ; preds = %2
  %223 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %13) #13, !dbg !3083
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %223, metadata !2809, metadata !DIExpression()), !dbg !3084
  %224 = icmp eq %struct.l2cap_channel_t* %223, null, !dbg !3085
  br i1 %224, label %229, label %225, !dbg !3087

; <label>:225:                                    ; preds = %222
  %226 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !3088
  %227 = add i16 %1, -8, !dbg !3090
  tail call void @l2cap_dispatch(%struct.l2cap_channel_t* nonnull %223, i8 zeroext 6, i8* %226, i16 zeroext %227) #13, !dbg !3091
  br label %229, !dbg !3092

; <label>:228:                                    ; preds = %32
  br label %229, !dbg !3093

; <label>:229:                                    ; preds = %228, %225, %222, %219, %212, %209, %202, %201, %200, %59, %49, %28
  call void @l2cap_run() #13, !dbg !3093
  ret void, !dbg !3094
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_packet_handler(i8 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3095 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3099, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i8* %1, metadata !3100, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i16 %2, metadata !3101, metadata !DIExpression()), !dbg !3104
  switch i8 %0, label %6 [
    i8 4, label %4
    i8 2, label %5
  ], !dbg !3105

; <label>:4:                                      ; preds = %3
  tail call void @l2cap_event_handler(i8* %1, i16 zeroext %2) #13, !dbg !3106
  br label %6, !dbg !3108

; <label>:5:                                      ; preds = %3
  tail call void @l2cap_acl_handler(i8* %1, i16 zeroext %2) #13, !dbg !3109
  br label %6, !dbg !3110

; <label>:6:                                      ; preds = %5, %4, %3
  ret void, !dbg !3111
}

; Function Attrs: nounwind optsize
define hidden i32 @gap_request_connection_parameter_update(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !412 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !416, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i16 %1, metadata !417, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i16 %2, metadata !418, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i16 %3, metadata !419, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i16 %4, metadata !420, metadata !DIExpression()), !dbg !3116
  %6 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #12, !dbg !3117
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %6, metadata !421, metadata !DIExpression()), !dbg !3118
  %7 = icmp eq %struct.__le_hci_connection* %6, null, !dbg !3119
  br i1 %7, label %19, label %8, !dbg !3121

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.69, i32 0, i32 0)), !dbg !3122
  %10 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 7, !dbg !3123
  store i16 %1, i16* %10, align 2, !dbg !3124, !tbaa !1598
  %11 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 8, !dbg !3125
  store i16 %2, i16* %11, align 4, !dbg !3126, !tbaa !1601
  %12 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 9, !dbg !3127
  store i16 %3, i16* %12, align 2, !dbg !3128, !tbaa !1604
  %13 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 10, !dbg !3129
  store i16 %4, i16* %13, align 4, !dbg !3130, !tbaa !1607
  %14 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 5, !dbg !3131
  store i32 1, i32* %14, align 4, !dbg !3132, !tbaa !1589
  %15 = load i8, i8* @gap_request_connection_parameter_update.le_con_param_update_identifier, align 1, !dbg !3133, !tbaa !549
  %16 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 6, !dbg !3134
  store i8 %15, i8* %16, align 4, !dbg !3135, !tbaa !1595
  tail call void @l2cap_run() #13, !dbg !3136
  %17 = load i8, i8* @gap_request_connection_parameter_update.le_con_param_update_identifier, align 1, !dbg !3137, !tbaa !549
  %18 = add i8 %17, 1, !dbg !3137
  store i8 %18, i8* @gap_request_connection_parameter_update.le_con_param_update_identifier, align 1, !dbg !3139
  br label %19, !dbg !3141

; <label>:19:                                     ; preds = %8, %5
  %20 = phi i32 [ 0, %8 ], [ 2, %5 ]
  ret i32 %20, !dbg !3142
}

; Function Attrs: optsize
declare %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i8* @l2cap_get_outgoing_buffer() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3143 {
  %1 = tail call i8* @hci_get_outgoing_acl_packet_buffer_test() #12, !dbg !3146
  %2 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !3147
  ret i8* %2, !dbg !3148
}

; Function Attrs: optsize
declare i8* @hci_get_outgoing_acl_packet_buffer_test() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_reserve_packet_buffer() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3149 {
  %1 = tail call i32 @hci_reserve_packet_buffer() #12, !dbg !3152
  ret i32 %1, !dbg !3153
}

; Function Attrs: optsize
declare i32 @hci_reserve_packet_buffer() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @l2cap_release_packet_buffer() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3154 {
  tail call void @hci_release_packet_buffer() #12, !dbg !3155
  ret void, !dbg !3156
}

; Function Attrs: optsize
declare void @hci_release_packet_buffer() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_send_prepared_connectionless(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3157 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i16 %1, metadata !3162, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i16 %2, metadata !3163, metadata !DIExpression()), !dbg !3167
  %4 = tail call i32 @hci_is_packet_buffer_reserved() #12, !dbg !3168
  %5 = icmp eq i32 %4, 0, !dbg !3168
  br i1 %5, label %6, label %12, !dbg !3170

; <label>:6:                                      ; preds = %3
  %7 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3171, !tbaa !549
  %8 = and i8 %7, 4, !dbg !3171
  %9 = icmp eq i8 %8, 0, !dbg !3171
  br i1 %9, label %37, label %10, !dbg !3174

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @str.70, i32 0, i32 0)), !dbg !3175
  br label %37, !dbg !3175

; <label>:12:                                     ; preds = %3
  %13 = tail call i32 @hci_can_send_prepared_acl_packet_now(i16 zeroext %0) #12, !dbg !3177
  %14 = icmp eq i32 %13, 0, !dbg !3177
  %15 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !549
  %16 = zext i8 %15 to i32
  br i1 %14, label %17, label %24, !dbg !3179

; <label>:17:                                     ; preds = %12
  %18 = and i32 %16, 4, !dbg !3180
  %19 = icmp eq i32 %18, 0, !dbg !3180
  br i1 %19, label %37, label %20, !dbg !3183

; <label>:20:                                     ; preds = %17
  %21 = zext i16 %0 to i32, !dbg !3184
  %22 = zext i16 %1 to i32, !dbg !3184
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.33, i32 0, i32 0), i32 %21, i32 %22) #13, !dbg !3184
  br label %37, !dbg !3184

; <label>:24:                                     ; preds = %12
  %25 = and i32 %16, 1, !dbg !3186
  %26 = icmp eq i32 %25, 0, !dbg !3186
  br i1 %26, label %31, label %27, !dbg !3188

; <label>:27:                                     ; preds = %24
  %28 = zext i16 %0 to i32, !dbg !3189
  %29 = zext i16 %1 to i32, !dbg !3189
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.34, i32 0, i32 0), i32 %28, i32 %29) #13, !dbg !3189
  br label %31, !dbg !3189

; <label>:31:                                     ; preds = %27, %24
  %32 = tail call i8* @hci_get_outgoing_acl_packet_buffer_test() #12, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %32, metadata !3164, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 0, metadata !3193, metadata !DIExpression()), !dbg !3202
  tail call void @little_endian_store_16(i8* %32, i16 zeroext 0, i16 zeroext %0) #12, !dbg !3204
  %33 = add i16 %2, 4, !dbg !3205
  tail call void @little_endian_store_16(i8* %32, i16 zeroext 2, i16 zeroext %33) #12, !dbg !3206
  tail call void @little_endian_store_16(i8* %32, i16 zeroext 4, i16 zeroext %2) #12, !dbg !3207
  tail call void @little_endian_store_16(i8* %32, i16 zeroext 6, i16 zeroext %1) #12, !dbg !3208
  %34 = zext i16 %2 to i32, !dbg !3209
  %35 = add nuw nsw i32 %34, 8, !dbg !3210
  %36 = tail call i32 @hci_le_send_acl_packet_buffer(i8* %32, i32 %35) #12, !dbg !3211
  br label %37

; <label>:37:                                     ; preds = %31, %20, %17, %10, %6
  %38 = phi i32 [ %36, %31 ], [ 87, %6 ], [ 87, %10 ], [ 87, %17 ], [ 87, %20 ]
  ret i32 %38, !dbg !3212
}

; Function Attrs: optsize
declare i32 @hci_is_packet_buffer_reserved() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @hci_can_send_prepared_acl_packet_now(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @hci_le_send_acl_packet_buffer(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_send_connectionless(i16 zeroext, i16 zeroext, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3214 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3218, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i16 %1, metadata !3219, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8* %2, metadata !3220, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i16 %3, metadata !3221, metadata !DIExpression()), !dbg !3226
  %5 = tail call i32 @hci_can_send_acl_packet_now(i16 zeroext %0) #12, !dbg !3227
  %6 = icmp eq i32 %5, 0, !dbg !3227
  br i1 %6, label %7, label %14, !dbg !3229

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3230, !tbaa !549
  %9 = and i8 %8, 4, !dbg !3230
  %10 = icmp eq i8 %9, 0, !dbg !3230
  br i1 %10, label %20, label %11, !dbg !3233

; <label>:11:                                     ; preds = %7
  %12 = zext i16 %1 to i32, !dbg !3234
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i32 0, i32 0), i32 %12) #13, !dbg !3234
  br label %20, !dbg !3234

; <label>:14:                                     ; preds = %4
  %15 = tail call i32 @hci_reserve_packet_buffer() #12, !dbg !3236
  %16 = tail call i8* @hci_get_outgoing_acl_packet_buffer_test() #12, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %16, metadata !3222, metadata !DIExpression()), !dbg !3238
  %17 = getelementptr inbounds i8, i8* %16, i32 8, !dbg !3239
  %18 = zext i16 %3 to i32, !dbg !3240
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %2, i32 %18, i32 1, i1 false), !dbg !3241
  %19 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %0, i16 zeroext %1, i16 zeroext %3) #13, !dbg !3242
  br label %20

; <label>:20:                                     ; preds = %14, %11, %7
  %21 = phi i32 [ %19, %14 ], [ 87, %7 ], [ 87, %11 ]
  ret i32 %21, !dbg !3243
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_register_fixed_channel(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3245 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i16 %1, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i16 %1, metadata !3254, metadata !DIExpression()), !dbg !3259
  switch i16 %1, label %8 [
    i16 4, label %5
    i16 6, label %3
    i16 2, label %4
  ], !dbg !3261

; <label>:3:                                      ; preds = %2
  br label %5, !dbg !3262

; <label>:4:                                      ; preds = %2
  br label %5, !dbg !3264

; <label>:5:                                      ; preds = %4, %3, %2
  %6 = phi i32 [ 0, %2 ], [ 1, %3 ], [ 2, %4 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !3251, metadata !DIExpression()), !dbg !3265
  %7 = getelementptr inbounds [3 x %struct.l2cap_fixed_channel], [3 x %struct.l2cap_fixed_channel]* @l2cap_fixed_channels, i32 0, i32 %6, i32 0, !dbg !3266
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %7, align 4, !dbg !3267, !tbaa !3268
  br label %8, !dbg !3270

; <label>:8:                                      ; preds = %5, %2
  ret void, !dbg !3271
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_request_can_send_fix_channel_now_event(i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3273 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i16 %1, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i16 %1, metadata !3254, metadata !DIExpression()), !dbg !3280
  switch i16 %1, label %8 [
    i16 4, label %5
    i16 6, label %3
    i16 2, label %4
  ], !dbg !3282

; <label>:3:                                      ; preds = %2
  br label %5, !dbg !3283

; <label>:4:                                      ; preds = %2
  br label %5, !dbg !3284

; <label>:5:                                      ; preds = %4, %3, %2
  %6 = phi i32 [ 0, %2 ], [ 1, %3 ], [ 2, %4 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !3277, metadata !DIExpression()), !dbg !3285
  %7 = getelementptr inbounds [3 x %struct.l2cap_fixed_channel], [3 x %struct.l2cap_fixed_channel]* @l2cap_fixed_channels, i32 0, i32 %6, i32 1, !dbg !3286
  store i8 1, i8* %7, align 4, !dbg !3287, !tbaa !3288
  tail call fastcc void @l2cap_notify_channel_can_send() #13, !dbg !3289
  br label %8, !dbg !3290

; <label>:8:                                      ; preds = %5, %2
  ret void, !dbg !3291
}

; Function Attrs: nounwind optsize
define internal fastcc void @l2cap_notify_channel_can_send() unnamed_addr #0 section ".bt_stack_code" !dbg !3293 {
  %1 = alloca [4 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %1, metadata !3300, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 0, metadata !3295, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 0, metadata !3295, metadata !DIExpression()), !dbg !3309
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 0
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 1
  br label %4, !dbg !3310

; <label>:4:                                      ; preds = %29, %0
  %5 = phi i32 [ 0, %0 ], [ %30, %29 ]
  %6 = getelementptr inbounds [3 x %struct.l2cap_fixed_channel], [3 x %struct.l2cap_fixed_channel]* @l2cap_fixed_channels, i32 0, i32 %5, i32 0, !dbg !3312
  %7 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %6, align 4, !dbg !3312, !tbaa !3268
  %8 = icmp eq void (i8, i16, i8*, i16)* %7, null, !dbg !3314
  br i1 %8, label %29, label %9, !dbg !3315

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds [3 x %struct.l2cap_fixed_channel], [3 x %struct.l2cap_fixed_channel]* @l2cap_fixed_channels, i32 0, i32 %5, i32 1, !dbg !3316
  %11 = load i8, i8* %10, align 4, !dbg !3316, !tbaa !3288
  %12 = icmp eq i8 %11, 0, !dbg !3318
  br i1 %12, label %29, label %13, !dbg !3319

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i32 %5, metadata !3320, metadata !DIExpression()), !dbg !3325
  %14 = icmp eq i32 %5, 2, !dbg !3328
  br i1 %14, label %17, label %15, !dbg !3331

; <label>:15:                                     ; preds = %13
  %16 = call i32 @hci_can_send_acl_le_packet_now() #12, !dbg !3332
  call void @llvm.dbg.value(metadata i32 %16, metadata !3296, metadata !DIExpression()), !dbg !3334
  br label %19, !dbg !3335

; <label>:17:                                     ; preds = %13
  %18 = call i32 @hci_can_send_acl_classic_packet_now() #12, !dbg !3336
  call void @llvm.dbg.value(metadata i32 %18, metadata !3296, metadata !DIExpression()), !dbg !3334
  br label %19

; <label>:19:                                     ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !3296, metadata !DIExpression()), !dbg !3334
  %21 = icmp eq i32 %20, 0, !dbg !3338
  br i1 %21, label %29, label %22, !dbg !3340

; <label>:22:                                     ; preds = %19
  store i8 0, i8* %10, align 4, !dbg !3341, !tbaa !3288
  %23 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %6, align 4, !dbg !3342, !tbaa !3268
  call void @llvm.dbg.value(metadata i32 %5, metadata !3343, metadata !DIExpression()), !dbg !3348
  switch i32 %5, label %26 [
    i32 0, label %27
    i32 1, label %24
    i32 2, label %25
  ], !dbg !3350

; <label>:24:                                     ; preds = %22
  br label %27, !dbg !3351

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !3353

; <label>:26:                                     ; preds = %22
  br label %27, !dbg !3354

; <label>:27:                                     ; preds = %26, %25, %24, %22
  %28 = phi i16 [ 0, %26 ], [ 2, %25 ], [ 6, %24 ], [ 4, %22 ]
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %23, metadata !3303, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i16 %28, metadata !3304, metadata !DIExpression()), !dbg !3356
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7, !dbg !3357
  store i8 120, i8* %2, align 1, !dbg !3358, !tbaa !549
  store i8 2, i8* %3, align 1, !dbg !3359, !tbaa !549
  call void @bt_store_16(i8* nonnull %2, i16 zeroext 2, i16 zeroext %28) #12, !dbg !3360
  call void %23(i8 zeroext 4, i16 zeroext %28, i8* nonnull %2, i16 zeroext 4) #12, !dbg !3361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7, !dbg !3362
  br label %29, !dbg !3363

; <label>:29:                                     ; preds = %27, %19, %9, %4
  %30 = add nuw nsw i32 %5, 1, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %30, metadata !3295, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %30, metadata !3295, metadata !DIExpression()), !dbg !3309
  %31 = icmp eq i32 %30, 3, !dbg !3366
  br i1 %31, label %32, label %4, !dbg !3310, !llvm.loop !3368

; <label>:32:                                     ; preds = %29
  ret void, !dbg !3371
}

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_can_send_fixed_channel_packet_now(i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3372 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i16 %1, metadata !3377, metadata !DIExpression()), !dbg !3379
  %3 = tail call i32 @hci_can_send_acl_packet_now(i16 zeroext %0) #12, !dbg !3380
  ret i32 %3, !dbg !3381
}

; Function Attrs: nounwind optsize
define hidden i32 @gap_le_request_connection_parameter_update(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3382 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3384, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i16 %1, metadata !3385, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i16 %2, metadata !3386, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i16 %3, metadata !3387, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i16 %4, metadata !3388, metadata !DIExpression()), !dbg !3394
  %6 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #12, !dbg !3395
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %6, metadata !3389, metadata !DIExpression()), !dbg !3396
  %7 = icmp eq %struct.__le_hci_connection* %6, null, !dbg !3397
  br i1 %7, label %14, label %8, !dbg !3399

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 7, !dbg !3400
  store i16 %1, i16* %9, align 2, !dbg !3401, !tbaa !1598
  %10 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 8, !dbg !3402
  store i16 %2, i16* %10, align 4, !dbg !3403, !tbaa !1601
  %11 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 9, !dbg !3404
  store i16 %3, i16* %11, align 2, !dbg !3405, !tbaa !1604
  %12 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 10, !dbg !3406
  store i16 %4, i16* %12, align 4, !dbg !3407, !tbaa !1607
  %13 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 5, !dbg !3408
  store i32 1, i32* %13, align 4, !dbg !3409, !tbaa !1589
  tail call void @l2cap_run() #13, !dbg !3410
  br label %14, !dbg !3411

; <label>:14:                                     ; preds = %8, %5
  %15 = phi i32 [ 0, %8 ], [ 2, %5 ]
  ret i32 %15, !dbg !3412
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @l2cap_can_close_handle_now(i8* nocapture readonly) local_unnamed_addr #6 section ".bt_stack_code" !dbg !3413 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3418, metadata !DIExpression()), !dbg !3424
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3425, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 2, !dbg !3426
  %4 = bitcast %struct.btstack_linked_item** %3 to %struct.btstack_linked_item*, !dbg !3427
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !3419, metadata !DIExpression()), !dbg !3428
  br label %5, !dbg !3429

; <label>:5:                                      ; preds = %10, %1
  %6 = phi %struct.btstack_linked_item* [ %4, %1 ], [ %8, %10 ]
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !3419, metadata !DIExpression()), !dbg !3428
  %7 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %6, i32 0, i32 0, !dbg !3430
  %8 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %7, align 4, !dbg !3430, !tbaa !1238
  %9 = icmp eq %struct.btstack_linked_item* %8, null, !dbg !3432
  br i1 %9, label %16, label %10, !dbg !3432

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 4, !dbg !3434
  %12 = bitcast %struct.btstack_linked_item* %11 to %struct.channel_core_data_t*, !dbg !3434
  %13 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %12, i32 0, i32 5, i32 0, !dbg !3434
  %14 = tail call i32 @memcmp(i8* %13, i8* %0, i32 6) #13, !dbg !3434
  %15 = icmp eq i32 %14, 0, !dbg !3436
  br i1 %15, label %16, label %5, !llvm.loop !3438

; <label>:16:                                     ; preds = %10, %5
  %17 = phi i8 [ 0, %10 ], [ 1, %5 ]
  ret i8 %17, !dbg !3441
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @is_l2cap_can_release_now() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3442 {
  %1 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3451, !tbaa !499
  %2 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %1, i32 0, i32 2, !dbg !3452
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !dbg !3453, !tbaa !1238
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !3455
  br i1 %4, label %14, label %5, !dbg !3455

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3457, !tbaa !549
  %7 = icmp slt i8 %6, 0, !dbg !3457
  br i1 %7, label %8, label %14, !dbg !3459

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %3, i32 7, !dbg !3460
  %10 = bitcast %struct.btstack_linked_item* %9 to i16*, !dbg !3460
  %11 = load i16, i16* %10, align 4, !dbg !3460, !tbaa !697
  %12 = zext i16 %11 to i32, !dbg !3460
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i32 %12) #13, !dbg !3460
  br label %14, !dbg !3460

; <label>:14:                                     ; preds = %8, %5, %0
  %15 = phi i8 [ 0, %8 ], [ 0, %5 ], [ 1, %0 ]
  ret i8 %15, !dbg !3462
}

; Function Attrs: nounwind optsize readonly
define hidden %struct.l2cap_service_t* @l2cap_get_service(i16 zeroext) local_unnamed_addr #6 section ".bt_stack_code" !dbg !2578 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2577, metadata !DIExpression()), !dbg !3463
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3464, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 1, !dbg !3465
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !2582, metadata !DIExpression()), !dbg !3466
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !3467
  br i1 %5, label %20, label %6, !dbg !3467

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !3468

; <label>:7:                                      ; preds = %11
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 0, i32 0, !dbg !3469
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !2582, metadata !DIExpression()), !dbg !3466
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !3467
  br i1 %10, label %18, label %11, !dbg !3467, !llvm.loop !2598

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct.btstack_linked_item* [ %9, %7 ], [ %4, %6 ]
  call void @llvm.dbg.value(metadata %struct.l2cap_service_t* %17, metadata !2583, metadata !DIExpression()), !dbg !3468
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 1, !dbg !3470
  %14 = bitcast %struct.btstack_linked_item* %13 to i16*, !dbg !3470
  %15 = load i16, i16* %14, align 4, !dbg !3470, !tbaa !2601
  %16 = icmp eq i16 %15, %0, !dbg !3471
  %17 = bitcast %struct.btstack_linked_item* %12 to %struct.l2cap_service_t*, !dbg !3472
  br i1 %16, label %18, label %7

; <label>:18:                                     ; preds = %11, %7
  %19 = phi %struct.l2cap_service_t* [ %17, %11 ], [ null, %7 ]
  br label %20, !dbg !3473

; <label>:20:                                     ; preds = %18, %1
  %21 = phi %struct.l2cap_service_t* [ null, %1 ], [ %19, %18 ]
  ret %struct.l2cap_service_t* %21, !dbg !3473
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !3479, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i16 %2, metadata !3480, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i16 %3, metadata !3481, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i16 %2, metadata !2577, metadata !DIExpression()), !dbg !3487
  %5 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3489, !tbaa !499
  %6 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %5, i32 0, i32 1, !dbg !3490
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !2582, metadata !DIExpression()), !dbg !3491
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !3492
  br i1 %8, label %28, label %9, !dbg !3492

; <label>:9:                                      ; preds = %4
  br label %14, !dbg !3493

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %15, i32 0, i32 0, !dbg !3494
  %12 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %11, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %12, metadata !2582, metadata !DIExpression()), !dbg !3491
  %13 = icmp eq %struct.btstack_linked_item* %12, null, !dbg !3492
  br i1 %13, label %27, label %14, !dbg !3492, !llvm.loop !2598

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.btstack_linked_item* [ %12, %10 ], [ %7, %9 ]
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %15, i32 1, !dbg !3493
  %17 = bitcast %struct.btstack_linked_item* %16 to i16*, !dbg !3493
  %18 = load i16, i16* %17, align 4, !dbg !3493, !tbaa !2601
  %19 = icmp eq i16 %18, %2, !dbg !3495
  br i1 %19, label %20, label %10

; <label>:20:                                     ; preds = %14
  %21 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3496, !tbaa !549
  %22 = and i8 %21, 4, !dbg !3496
  %23 = icmp eq i8 %22, 0, !dbg !3496
  br i1 %23, label %49, label %24, !dbg !3500

; <label>:24:                                     ; preds = %20
  %25 = zext i16 %2 to i32, !dbg !3501
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.37, i32 0, i32 0), i32 %25) #13, !dbg !3501
  br label %49, !dbg !3501

; <label>:27:                                     ; preds = %10
  br label %28, !dbg !3503

; <label>:28:                                     ; preds = %27, %4
  %29 = tail call i8* @btstack_memory_l2cap_service_get() #12, !dbg !3503
  %30 = icmp eq i8* %29, null, !dbg !3504
  br i1 %30, label %31, label %37, !dbg !3506

; <label>:31:                                     ; preds = %28
  %32 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3507, !tbaa !549
  %33 = and i8 %32, 4, !dbg !3507
  %34 = icmp eq i8 %33, 0, !dbg !3507
  br i1 %34, label %49, label %35, !dbg !3510

; <label>:35:                                     ; preds = %31
  %36 = tail call i32 @puts(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @str.71, i32 0, i32 0)), !dbg !3511
  br label %49, !dbg !3511

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %29, i32 4, !dbg !3513
  %39 = bitcast i8* %38 to i16*, !dbg !3513
  store i16 %2, i16* %39, align 4, !dbg !3514, !tbaa !2601
  %40 = getelementptr inbounds i8, i8* %29, i32 6, !dbg !3515
  %41 = bitcast i8* %40 to i16*, !dbg !3515
  store i16 %3, i16* %41, align 2, !dbg !3516, !tbaa !3517
  %42 = getelementptr inbounds i8, i8* %29, i32 8, !dbg !3518
  %43 = bitcast i8* %42 to i8**, !dbg !3518
  store i8* %0, i8** %43, align 4, !dbg !3519, !tbaa !2640
  %44 = getelementptr inbounds i8, i8* %29, i32 12, !dbg !3520
  %45 = bitcast i8* %44 to void (i8, i16, i8*, i16)**, !dbg !3520
  store void (i8, i16, i8*, i16)* %1, void (i8, i16, i8*, i16)** %45, align 4, !dbg !3521, !tbaa !2644
  %46 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3522, !tbaa !499
  %47 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %46, i32 0, i32 1, !dbg !3522
  %48 = bitcast i8* %29 to %struct.btstack_linked_item*, !dbg !3522
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** %47, %struct.btstack_linked_item* %48) #12, !dbg !3522
  br label %49, !dbg !3523

; <label>:49:                                     ; preds = %37, %35, %31, %24, %20
  ret void, !dbg !3524
}

; Function Attrs: optsize
declare i8* @btstack_memory_l2cap_service_get() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @l2cap_unregister_service_internal(i8* nocapture readnone, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3530, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i16 %1, metadata !3531, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i16 %1, metadata !2577, metadata !DIExpression()), !dbg !3535
  %3 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3537, !tbaa !499
  %4 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %3, i32 0, i32 1, !dbg !3538
  %5 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %4, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !2582, metadata !DIExpression()), !dbg !3539
  %6 = icmp eq %struct.btstack_linked_item* %5, null, !dbg !3540
  br i1 %6, label %27, label %7, !dbg !3540

; <label>:7:                                      ; preds = %2
  br label %12, !dbg !3541

; <label>:8:                                      ; preds = %12
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %13, i32 0, i32 0, !dbg !3542
  %10 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %9, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %10, metadata !2582, metadata !DIExpression()), !dbg !3539
  %11 = icmp eq %struct.btstack_linked_item* %10, null, !dbg !3540
  br i1 %11, label %26, label %12, !dbg !3540, !llvm.loop !2598

; <label>:12:                                     ; preds = %8, %7
  %13 = phi %struct.btstack_linked_item* [ %10, %8 ], [ %5, %7 ]
  %14 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %13, i32 1, !dbg !3541
  %15 = bitcast %struct.btstack_linked_item* %14 to i16*, !dbg !3541
  %16 = load i16, i16* %15, align 4, !dbg !3541, !tbaa !2601
  %17 = icmp eq i16 %16, %1, !dbg !3543
  br i1 %17, label %18, label %8

; <label>:18:                                     ; preds = %12
  %19 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %4, %struct.btstack_linked_item* nonnull %13) #12, !dbg !3544
  %20 = bitcast %struct.btstack_linked_item* %13 to i8*, !dbg !3545
  tail call void @btstack_memory_l2cap_service_free(i8* %20) #12, !dbg !3546
  %21 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3547, !tbaa !499
  %22 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %21, i32 0, i32 1, !dbg !3547
  %23 = tail call i32 @btstack_linked_list_empty(%struct.btstack_linked_item** %22) #12, !dbg !3547
  %24 = icmp eq i32 %23, 0, !dbg !3547
  br i1 %24, label %27, label %25, !dbg !3549

; <label>:25:                                     ; preds = %18
  tail call void @hci_connectable_control(i8 zeroext 0, i8 zeroext 0) #12, !dbg !3550
  br label %27, !dbg !3551

; <label>:26:                                     ; preds = %8
  br label %27, !dbg !3552

; <label>:27:                                     ; preds = %26, %25, %18, %2
  ret void, !dbg !3552
}

; Function Attrs: optsize
declare void @btstack_memory_l2cap_service_free(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_empty(%struct.btstack_linked_item**) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @l2cap_close_connection(i8* readnone) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3554 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()), !dbg !3563
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3564, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 2, !dbg !3566
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !3559, metadata !DIExpression()), !dbg !3567
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !3568
  br i1 %5, label %22, label %6, !dbg !3568

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !3570

; <label>:7:                                      ; preds = %17, %6
  %8 = phi %struct.btstack_linked_item* [ %19, %17 ], [ %4, %6 ]
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 2, !dbg !3570
  %10 = bitcast %struct.btstack_linked_item* %9 to i8**, !dbg !3570
  %11 = load i8*, i8** %10, align 4, !dbg !3570, !tbaa !741
  %12 = icmp eq i8* %11, %0, !dbg !3574
  br i1 %12, label %13, label %17, !dbg !3575

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 4, !dbg !3576
  %15 = bitcast %struct.btstack_linked_item* %14 to %struct.channel_core_data_t*, !dbg !3576
  %16 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %15, i32 0, i32 1, !dbg !3578
  store i8 13, i8* %16, align 2, !dbg !3579, !tbaa !788
  br label %17, !dbg !3580

; <label>:17:                                     ; preds = %13, %7
  %18 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 0, i32 0, !dbg !3581
  %19 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %18, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %19, metadata !3559, metadata !DIExpression()), !dbg !3567
  %20 = icmp eq %struct.btstack_linked_item* %19, null, !dbg !3568
  br i1 %20, label %21, label %7, !dbg !3568, !llvm.loop !3583

; <label>:21:                                     ; preds = %17
  br label %22, !dbg !3586

; <label>:22:                                     ; preds = %21, %1
  %23 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 1, !dbg !3586
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %27, metadata !3559, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %27, metadata !3559, metadata !DIExpression()), !dbg !3567
  %24 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %23, align 4, !dbg !3587, !tbaa !1238
  %25 = icmp eq %struct.btstack_linked_item* %24, null, !dbg !3589
  br i1 %25, label %51, label %26, !dbg !3589

; <label>:26:                                     ; preds = %22
  %27 = bitcast %struct.btstack_linked_item** %23 to %struct.btstack_linked_item*, !dbg !3590
  br label %32

; <label>:28:                                     ; preds = %37
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %38, metadata !3559, metadata !DIExpression()), !dbg !3567
  %29 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %38, i32 0, i32 0, !dbg !3587
  %30 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %29, align 4, !dbg !3587, !tbaa !1238
  %31 = icmp eq %struct.btstack_linked_item* %30, null, !dbg !3589
  br i1 %31, label %50, label %32, !dbg !3589

; <label>:32:                                     ; preds = %28, %26
  %33 = phi %struct.btstack_linked_item* [ %30, %28 ], [ %24, %26 ]
  %34 = phi %struct.btstack_linked_item** [ %29, %28 ], [ %23, %26 ]
  %35 = phi %struct.btstack_linked_item* [ %38, %28 ], [ %27, %26 ]
  %36 = bitcast %struct.btstack_linked_item* %35 to i32*
  br label %37, !dbg !3589

; <label>:37:                                     ; preds = %43, %32
  %38 = phi %struct.btstack_linked_item* [ %33, %32 ], [ %47, %43 ]
  %39 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %38, i32 2, !dbg !3591
  %40 = bitcast %struct.btstack_linked_item* %39 to i8**, !dbg !3591
  %41 = load i8*, i8** %40, align 4, !dbg !3591, !tbaa !2640
  %42 = icmp eq i8* %41, %0, !dbg !3593
  br i1 %42, label %43, label %28, !dbg !3594, !llvm.loop !3595

; <label>:43:                                     ; preds = %37
  %44 = bitcast %struct.btstack_linked_item* %38 to i32*, !dbg !3598
  %45 = load i32, i32* %44, align 4, !dbg !3598, !tbaa !1238
  store i32 %45, i32* %36, align 4, !dbg !3600, !tbaa !1238
  %46 = bitcast %struct.btstack_linked_item* %38 to i8*, !dbg !3601
  tail call void @btstack_memory_l2cap_service_free(i8* %46) #12, !dbg !3602
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* undef, metadata !3559, metadata !DIExpression()), !dbg !3567
  %47 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %34, align 4, !dbg !3587, !tbaa !1238
  %48 = icmp eq %struct.btstack_linked_item* %47, null, !dbg !3589
  br i1 %48, label %49, label %37, !dbg !3589, !llvm.loop !3595

; <label>:49:                                     ; preds = %43
  br label %51, !dbg !3603

; <label>:50:                                     ; preds = %28
  br label %51, !dbg !3603

; <label>:51:                                     ; preds = %50, %49, %22
  tail call void @l2cap_run() #13, !dbg !3603
  ret void, !dbg !3604
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @l2cap_search_channel_exist_via_psm(i16 zeroext) local_unnamed_addr #6 section ".bt_stack_code" !dbg !3605 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3609, metadata !DIExpression()), !dbg !3612
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3613, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 2, !dbg !3615
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !3610, metadata !DIExpression()), !dbg !3616
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !3617
  br i1 %5, label %24, label %6, !dbg !3617

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !3619

; <label>:7:                                      ; preds = %19, %6
  %8 = phi %struct.btstack_linked_item* [ %21, %19 ], [ %4, %6 ]
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 7, !dbg !3619
  %10 = bitcast %struct.btstack_linked_item* %9 to i16*, !dbg !3619
  %11 = load i16, i16* %10, align 4, !dbg !3619, !tbaa !697
  %12 = icmp eq i16 %11, %0, !dbg !3623
  br i1 %12, label %13, label %19, !dbg !3624

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 4, !dbg !3625
  %15 = bitcast %struct.btstack_linked_item* %14 to %struct.channel_core_data_t*, !dbg !3625
  %16 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %15, i32 0, i32 1, !dbg !3626
  %17 = load i8, i8* %16, align 2, !dbg !3626, !tbaa !788
  switch i8 %17, label %18 [
    i8 1, label %24
    i8 9, label %24
    i8 13, label %24
    i8 14, label %24
  ], !dbg !3629

; <label>:18:                                     ; preds = %13
  br label %24, !dbg !3630

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 0, i32 0, !dbg !3632
  %21 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %20, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %21, metadata !3610, metadata !DIExpression()), !dbg !3616
  %22 = icmp eq %struct.btstack_linked_item* %21, null, !dbg !3617
  br i1 %22, label %23, label %7, !dbg !3617, !llvm.loop !3634

; <label>:23:                                     ; preds = %19
  br label %24, !dbg !3637

; <label>:24:                                     ; preds = %23, %18, %13, %13, %13, %13, %1
  %25 = phi i8 [ 1, %18 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 0, %1 ], [ 0, %23 ]
  ret i8 %25, !dbg !3637
}

; Function Attrs: nounwind optsize
define hidden [6 x i8]* @l2cap_get_btaddr_via_local_cid(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3638 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3643, metadata !DIExpression()), !dbg !3645
  %2 = tail call %struct.l2cap_channel_t* @l2cap_get_channel_for_local_cid(i16 zeroext %0) #13, !dbg !3646
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %2, metadata !3644, metadata !DIExpression()), !dbg !3647
  %3 = icmp eq %struct.l2cap_channel_t* %2, null, !dbg !3648
  %4 = getelementptr inbounds %struct.l2cap_channel_t, %struct.l2cap_channel_t* %2, i32 0, i32 5, i32 5, !dbg !3650
  %5 = select i1 %3, [6 x i8]* null, [6 x i8]* %4, !dbg !3652
  ret [6 x i8]* %5, !dbg !3653
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @l2cap_get_hci_handle_via_psm(i16 zeroext) local_unnamed_addr #6 section ".bt_stack_code" !dbg !3654 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3658, metadata !DIExpression()), !dbg !3661
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3662, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 2, !dbg !3664
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !3659, metadata !DIExpression()), !dbg !3665
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !3666
  br i1 %5, label %22, label %6, !dbg !3666

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !3668

; <label>:7:                                      ; preds = %17, %6
  %8 = phi %struct.btstack_linked_item* [ %19, %17 ], [ %4, %6 ]
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 7, !dbg !3668
  %10 = bitcast %struct.btstack_linked_item* %9 to i16*, !dbg !3668
  %11 = load i16, i16* %10, align 4, !dbg !3668, !tbaa !697
  %12 = icmp eq i16 %11, %0, !dbg !3672
  br i1 %12, label %13, label %17, !dbg !3673

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 1, !dbg !3674
  %15 = bitcast %struct.btstack_linked_item* %14 to i16*, !dbg !3674
  %16 = load i16, i16* %15, align 4, !dbg !3674, !tbaa !793
  br label %22, !dbg !3676

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 0, i32 0, !dbg !3677
  %19 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %18, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %19, metadata !3659, metadata !DIExpression()), !dbg !3665
  %20 = icmp eq %struct.btstack_linked_item* %19, null, !dbg !3666
  br i1 %20, label %21, label %7, !dbg !3666, !llvm.loop !3679

; <label>:21:                                     ; preds = %17
  br label %22, !dbg !3682

; <label>:22:                                     ; preds = %21, %13, %1
  %23 = phi i16 [ %16, %13 ], [ 0, %1 ], [ 0, %21 ]
  ret i16 %23, !dbg !3682
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i16 @l2cap_get_hci_handle_via_addr(i8* nocapture readonly) local_unnamed_addr #6 section ".bt_stack_code" !dbg !3683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3687, metadata !DIExpression()), !dbg !3690
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3691, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 2, !dbg !3693
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !3688, metadata !DIExpression()), !dbg !3694
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !3695
  br i1 %5, label %23, label %6, !dbg !3695

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !3697

; <label>:7:                                      ; preds = %18, %6
  %8 = phi %struct.btstack_linked_item* [ %20, %18 ], [ %4, %6 ]
  %9 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 4, !dbg !3697
  %10 = bitcast %struct.btstack_linked_item* %9 to %struct.channel_core_data_t*, !dbg !3697
  %11 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %10, i32 0, i32 5, i32 0, !dbg !3697
  %12 = tail call i32 @memcmp(i8* %11, i8* %0, i32 6) #13, !dbg !3697
  %13 = icmp eq i32 %12, 0, !dbg !3697
  br i1 %13, label %14, label %18, !dbg !3701

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 1, !dbg !3702
  %16 = bitcast %struct.btstack_linked_item* %15 to i16*, !dbg !3702
  %17 = load i16, i16* %16, align 4, !dbg !3702, !tbaa !793
  br label %23, !dbg !3704

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %8, i32 0, i32 0, !dbg !3705
  %20 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %19, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %20, metadata !3688, metadata !DIExpression()), !dbg !3694
  %21 = icmp eq %struct.btstack_linked_item* %20, null, !dbg !3695
  br i1 %21, label %22, label %7, !dbg !3695, !llvm.loop !3707

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !3710

; <label>:23:                                     ; preds = %22, %14, %1
  %24 = phi i16 [ %17, %14 ], [ 0, %1 ], [ 0, %22 ]
  ret i16 %24, !dbg !3710
}

; Function Attrs: nounwind optsize
define hidden void @bqb_test_l2cap_send_data() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3711 {
  %1 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3715, !tbaa !499
  %2 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %1, i32 0, i32 2, !dbg !3717
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !3713, metadata !DIExpression()), !dbg !3718
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !3719
  br i1 %4, label %20, label %5, !dbg !3719

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !3721

; <label>:6:                                      ; preds = %6, %5
  %7 = phi %struct.btstack_linked_item* [ %17, %6 ], [ %3, %5 ]
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 4, !dbg !3721
  %9 = bitcast %struct.btstack_linked_item* %8 to %struct.channel_core_data_t*, !dbg !3721
  %10 = getelementptr inbounds %struct.channel_core_data_t, %struct.channel_core_data_t* %9, i32 0, i32 7, !dbg !3724
  %11 = load i16, i16* %10, align 2, !dbg !3724, !tbaa !762
  %12 = zext i16 %11 to i32, !dbg !3725
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 %12) #13, !dbg !3726
  %14 = load i16, i16* %10, align 2, !dbg !3727, !tbaa !762
  %15 = tail call i32 @l2cap_send_internal(i16 zeroext %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i16 zeroext 4, i8 zeroext 0) #13, !dbg !3728
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !3729
  %17 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %16, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %17, metadata !3713, metadata !DIExpression()), !dbg !3718
  %18 = icmp eq %struct.btstack_linked_item* %17, null, !dbg !3719
  br i1 %18, label %19, label %6, !dbg !3719, !llvm.loop !3731

; <label>:19:                                     ; preds = %6
  br label %20, !dbg !3734

; <label>:20:                                     ; preds = %19, %0
  ret void, !dbg !3734
}

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i16 %1, metadata !3740, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8 44, metadata !3741, metadata !DIExpression()), !dbg !3744
  %3 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3745, !tbaa !499
  %4 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %3, i32 0, i32 3, !dbg !3746
  %5 = bitcast %struct.l2cap_core_data_t* %4 to i8*, !dbg !3747
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %5, i32 44, i32 1, i1 false), !dbg !3747
  ret i32 44, !dbg !3748
}

; Function Attrs: nounwind optsize
define hidden void @l2cap_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3749 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3751, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i16 %1, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8 44, metadata !3753, metadata !DIExpression()), !dbg !3756
  %3 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3757, !tbaa !499
  %4 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %3, i32 0, i32 3, !dbg !3758
  %5 = bitcast %struct.l2cap_core_data_t* %4 to i8*, !dbg !3759
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %0, i32 44, i32 1, i1 false), !dbg !3759
  ret void, !dbg !3760
}

; Function Attrs: nounwind optsize
define hidden i32 @l2cap_channel_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3761 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i16 %1, metadata !3764, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i8 0, metadata !3766, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i8 40, metadata !3765, metadata !DIExpression()), !dbg !3772
  %3 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3773, !tbaa !499
  %4 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %3, i32 0, i32 2, !dbg !3775
  %5 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %4, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %5, metadata !3767, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 0, metadata !3766, metadata !DIExpression()), !dbg !3771
  %6 = icmp eq %struct.btstack_linked_item* %5, null, !dbg !3777
  br i1 %6, label %27, label %7, !dbg !3777

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !3779

; <label>:8:                                      ; preds = %8, %7
  %9 = phi %struct.btstack_linked_item* [ %19, %8 ], [ %5, %7 ]
  %10 = phi i8 [ %17, %8 ], [ 0, %7 ]
  %11 = zext i8 %10 to i32, !dbg !3779
  %12 = mul nuw nsw i32 %11, 40, !dbg !3782
  %13 = or i32 %12, 1, !dbg !3783
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !3784
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 4, !dbg !3785
  %16 = bitcast %struct.btstack_linked_item* %15 to i8*, !dbg !3786
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %16, i32 40, i32 1, i1 false), !dbg !3786
  %17 = add i8 %10, 1, !dbg !3787
  call void @llvm.dbg.value(metadata i8 %17, metadata !3766, metadata !DIExpression()), !dbg !3771
  %18 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 0, i32 0, !dbg !3788
  %19 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %18, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %19, metadata !3767, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 %17, metadata !3766, metadata !DIExpression()), !dbg !3771
  %20 = icmp eq %struct.btstack_linked_item* %19, null, !dbg !3777
  br i1 %20, label %21, label %8, !dbg !3777, !llvm.loop !3790

; <label>:21:                                     ; preds = %8
  %22 = icmp eq i8 %17, 0, !dbg !3793
  br i1 %22, label %27, label %23, !dbg !3795

; <label>:23:                                     ; preds = %21
  store i8 %17, i8* %0, align 1, !dbg !3796, !tbaa !549
  %24 = zext i8 %17 to i32, !dbg !3798
  %25 = mul nuw nsw i32 %24, 40, !dbg !3799
  %26 = or i32 %25, 1, !dbg !3800
  br label %27, !dbg !3801

; <label>:27:                                     ; preds = %23, %21, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %21 ], [ 0, %2 ]
  ret i32 %28, !dbg !3802
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @check_l2cap_send_state() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3803 {
  %1 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3807, !tbaa !499
  %2 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %1, i32 0, i32 2, !dbg !3809
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %2, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !3805, metadata !DIExpression()), !dbg !3810
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !3811
  br i1 %4, label %29, label %5, !dbg !3811

; <label>:5:                                      ; preds = %0
  br label %6, !dbg !3813

; <label>:6:                                      ; preds = %23, %5
  %7 = phi %struct.btstack_linked_item* [ %25, %23 ], [ %3, %5 ]
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 7, !dbg !3813
  %9 = bitcast %struct.btstack_linked_item* %8 to i16*, !dbg !3813
  %10 = load i16, i16* %9, align 4, !dbg !3813, !tbaa !697
  %11 = icmp eq i16 %10, 25, !dbg !3817
  br i1 %11, label %12, label %23, !dbg !3818

; <label>:12:                                     ; preds = %6
  %13 = tail call zeroext i16 bitcast (i16 (...)* @get_curr_channel_state to i16 ()*)() #12, !dbg !3819
  %14 = and i16 %13, 32, !dbg !3821
  %15 = icmp eq i16 %14, 0, !dbg !3821
  br i1 %15, label %27, label %16, !dbg !3822

; <label>:16:                                     ; preds = %12
  %17 = load i16, i16* %9, align 4, !dbg !3824, !tbaa !697
  %18 = icmp eq i16 %17, 25, !dbg !3826
  br i1 %18, label %19, label %23, !dbg !3827

; <label>:19:                                     ; preds = %16
  %20 = tail call zeroext i16 bitcast (i16 (...)* @get_curr_channel_state to i16 ()*)() #12, !dbg !3828
  %21 = and i16 %20, 4, !dbg !3830
  %22 = icmp eq i16 %21, 0, !dbg !3830
  br i1 %22, label %27, label %23, !dbg !3831

; <label>:23:                                     ; preds = %19, %16, %6
  %24 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %7, i32 0, i32 0, !dbg !3832
  %25 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %24, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %25, metadata !3805, metadata !DIExpression()), !dbg !3810
  %26 = icmp eq %struct.btstack_linked_item* %25, null, !dbg !3811
  br i1 %26, label %27, label %6, !dbg !3811, !llvm.loop !3834

; <label>:27:                                     ; preds = %23, %19, %12
  %28 = phi i8 [ 0, %23 ], [ 1, %19 ], [ 1, %12 ]
  br label %29, !dbg !3837

; <label>:29:                                     ; preds = %27, %0
  %30 = phi i8 [ 0, %0 ], [ %28, %27 ]
  ret i8 %30, !dbg !3837
}

; Function Attrs: optsize
declare zeroext i16 @get_curr_channel_state(...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @l2cap_channel_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3838 {
  %3 = alloca [9 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [9 x i8]* %3, metadata !3846, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i8* %0, metadata !3840, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i16 %1, metadata !3841, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8 0, metadata !3844, metadata !DIExpression()), !dbg !3865
  %4 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !3866
  call void @llvm.dbg.value(metadata i8* %4, metadata !3845, metadata !DIExpression()), !dbg !3867
  %5 = load i8, i8* %0, align 1, !dbg !3868, !tbaa !549
  %6 = icmp eq i8 %5, 0, !dbg !3870
  br i1 %6, label %115, label %7, !dbg !3871

; <label>:7:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 0, metadata !3842, metadata !DIExpression()), !dbg !3872
  %8 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i32 0, i32 0
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i32 0, i32 1
  %10 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i32 0, i32 2
  %11 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i32 0, i32 3
  br label %12, !dbg !3873

; <label>:12:                                     ; preds = %110, %7
  %13 = phi i8 [ 0, %7 ], [ %111, %110 ]
  %14 = zext i8 %13 to i32, !dbg !3875
  %15 = mul nuw nsw i32 %14, 40, !dbg !3877
  %16 = getelementptr inbounds i8, i8* %4, i32 %15, !dbg !3878
  call void @llvm.dbg.value(metadata i16 40, metadata !3850, metadata !DIExpression()), !dbg !3879
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %8) #7, !dbg !3880
  %17 = getelementptr inbounds i8, i8* %16, i32 12, !dbg !3881
  %18 = load i8, i8* %17, align 1, !dbg !3881, !tbaa !549
  %19 = zext i8 %18 to i16, !dbg !3881
  %20 = getelementptr inbounds i8, i8* %16, i32 13, !dbg !3881
  %21 = load i8, i8* %20, align 1, !dbg !3881, !tbaa !549
  %22 = zext i8 %21 to i16, !dbg !3881
  %23 = shl nuw i16 %22, 8, !dbg !3881
  %24 = or i16 %23, %19, !dbg !3881
  call void @llvm.dbg.value(metadata i16 %24, metadata !3852, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i16 %24, metadata !2577, metadata !DIExpression()), !dbg !3883
  %25 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3885, !tbaa !499
  %26 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %25, i32 0, i32 1, !dbg !3886
  %27 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %26, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %27, metadata !2582, metadata !DIExpression()), !dbg !3887
  %28 = icmp eq %struct.btstack_linked_item* %27, null, !dbg !3888
  br i1 %28, label %41, label %29, !dbg !3888

; <label>:29:                                     ; preds = %12
  br label %34, !dbg !3889

; <label>:30:                                     ; preds = %34
  %31 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %35, i32 0, i32 0, !dbg !3890
  %32 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %31, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %32, metadata !2582, metadata !DIExpression()), !dbg !3887
  %33 = icmp eq %struct.btstack_linked_item* %32, null, !dbg !3888
  br i1 %33, label %40, label %34, !dbg !3888, !llvm.loop !2598

; <label>:34:                                     ; preds = %30, %29
  %35 = phi %struct.btstack_linked_item* [ %32, %30 ], [ %27, %29 ]
  %36 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %35, i32 1, !dbg !3889
  %37 = bitcast %struct.btstack_linked_item* %36 to i16*, !dbg !3889
  %38 = load i16, i16* %37, align 4, !dbg !3889, !tbaa !2601
  %39 = icmp eq i16 %38, %24, !dbg !3891
  br i1 %39, label %48, label %30

; <label>:40:                                     ; preds = %30
  br label %41

; <label>:41:                                     ; preds = %40, %12
  %42 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !549
  %43 = and i8 %42, 4, !dbg !3892
  %44 = icmp eq i8 %43, 0, !dbg !3892
  br i1 %44, label %110, label %45, !dbg !3896

; <label>:45:                                     ; preds = %41
  %46 = zext i16 %24 to i32, !dbg !3897
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.51, i32 0, i32 0), i32 %46) #12, !dbg !3897
  br label %110, !dbg !3897

; <label>:48:                                     ; preds = %34
  %49 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !549
  %50 = and i8 %49, 1, !dbg !3899
  %51 = icmp eq i8 %50, 0, !dbg !3899
  br i1 %51, label %54, label %52, !dbg !3901

; <label>:52:                                     ; preds = %48
  %53 = call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @str.73, i32 0, i32 0)) #7, !dbg !3902
  br label %54, !dbg !3902

; <label>:54:                                     ; preds = %52, %48
  %55 = call i8* @btstack_memory_l2cap_channel_get() #12, !dbg !3904
  %56 = bitcast i8* %55 to %struct.l2cap_channel_t*, !dbg !3905
  call void @llvm.dbg.value(metadata %struct.l2cap_channel_t* %56, metadata !3854, metadata !DIExpression()), !dbg !3906
  %57 = icmp eq i8* %55, null, !dbg !3907
  br i1 %57, label %58, label %64, !dbg !3909

; <label>:58:                                     ; preds = %54
  %59 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3910, !tbaa !549
  %60 = and i8 %59, 4, !dbg !3910
  %61 = icmp eq i8 %60, 0, !dbg !3910
  br i1 %61, label %110, label %62, !dbg !3913

; <label>:62:                                     ; preds = %58
  %63 = call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @str.72, i32 0, i32 0)) #7, !dbg !3914
  br label %110, !dbg !3914

; <label>:64:                                     ; preds = %54
  %65 = getelementptr inbounds i8, i8* %55, i32 16, !dbg !3916
  %66 = getelementptr inbounds i8, i8* %55, i32 22, !dbg !3916
  %67 = getelementptr inbounds i8, i8* %16, i32 6, !dbg !3916
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %67, i32 6, i32 1, i1 false) #7, !dbg !3916
  %68 = call i32 @connection_handler_for_address(i8* %66, i8 zeroext 1) #12, !dbg !3917
  %69 = trunc i32 %68 to i16, !dbg !3917
  %70 = getelementptr inbounds i8, i8* %55, i32 4, !dbg !3918
  %71 = bitcast i8* %70 to i16*, !dbg !3918
  store i16 %69, i16* %71, align 4, !dbg !3919, !tbaa !793
  %72 = getelementptr inbounds i8, i8* %55, i32 8, !dbg !3920
  %73 = bitcast i8* %72 to i8**, !dbg !3920
  store i8* null, i8** %73, align 4, !dbg !3921, !tbaa !741
  %74 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %35, i32 3, !dbg !3922
  %75 = bitcast %struct.btstack_linked_item* %74 to i32*, !dbg !3922
  %76 = load i32, i32* %75, align 4, !dbg !3922, !tbaa !2644
  %77 = getelementptr inbounds i8, i8* %55, i32 12, !dbg !3923
  %78 = bitcast i8* %77 to i32*, !dbg !3924
  store i32 %76, i32* %78, align 4, !dbg !3924, !tbaa !730
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %65, i8* %16, i32 40, i32 1, i1 false) #7, !dbg !3925
  %79 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3926, !tbaa !499
  %80 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %79, i32 0, i32 2, !dbg !3926
  %81 = bitcast i8* %55 to %struct.btstack_linked_item*, !dbg !3926
  call void @btstack_linked_list_add(%struct.btstack_linked_item** %80, %struct.btstack_linked_item* %81) #12, !dbg !3926
  %82 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3927, !tbaa !549
  %83 = and i8 %82, 1, !dbg !3927
  %84 = icmp eq i8 %83, 0, !dbg !3927
  br i1 %84, label %109, label %85, !dbg !3929

; <label>:85:                                     ; preds = %64
  %86 = load i16, i16* %71, align 4, !dbg !3930, !tbaa !793
  %87 = zext i16 %86 to i32, !dbg !3930
  %88 = getelementptr inbounds i8, i8* %55, i32 28, !dbg !3930
  %89 = bitcast i8* %88 to i16*, !dbg !3930
  %90 = load i16, i16* %89, align 4, !dbg !3930, !tbaa !697
  %91 = zext i16 %90 to i32, !dbg !3930
  %92 = getelementptr inbounds i8, i8* %55, i32 30, !dbg !3930
  %93 = bitcast i8* %92 to i16*, !dbg !3930
  %94 = load i16, i16* %93, align 2, !dbg !3930, !tbaa !762
  %95 = zext i16 %94 to i32, !dbg !3930
  %96 = getelementptr inbounds i8, i8* %55, i32 32, !dbg !3930
  %97 = bitcast i8* %96 to i16*, !dbg !3930
  %98 = load i16, i16* %97, align 4, !dbg !3930, !tbaa !1028
  %99 = zext i16 %98 to i32, !dbg !3930
  %100 = getelementptr inbounds i8, i8* %55, i32 34, !dbg !3930
  %101 = bitcast i8* %100 to i16*, !dbg !3930
  %102 = load i16, i16* %101, align 2, !dbg !3930, !tbaa !1501
  %103 = zext i16 %102 to i32, !dbg !3930
  %104 = getelementptr inbounds i8, i8* %55, i32 36, !dbg !3930
  %105 = bitcast i8* %104 to i16*, !dbg !3930
  %106 = load i16, i16* %105, align 4, !dbg !3930, !tbaa !922
  %107 = zext i16 %106 to i32, !dbg !3930
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.54, i32 0, i32 0), i32 %87, i32 %91, i32 %95, i32 %99, i32 %103, i32 %107) #12, !dbg !3930
  br label %109, !dbg !3930

; <label>:109:                                    ; preds = %85, %64
  store i8 121, i8* %8, align 1, !dbg !3932, !tbaa !549
  store i8 9, i8* %9, align 1, !dbg !3933, !tbaa !549
  store i8 0, i8* %10, align 1, !dbg !3934, !tbaa !549
  call void @bt_flip_addr(i8* %11, i8* %66) #12, !dbg !3935
  call void @l2cap_dispatch(%struct.l2cap_channel_t* nonnull %56, i8 zeroext 4, i8* nonnull %8, i16 zeroext 9) #12, !dbg !3936
  br label %110, !dbg !3937

; <label>:110:                                    ; preds = %109, %62, %58, %45, %41
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %8) #7, !dbg !3937
  %111 = add i8 %13, 1, !dbg !3938
  call void @llvm.dbg.value(metadata i8 %111, metadata !3842, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 %111, metadata !3842, metadata !DIExpression()), !dbg !3872
  %112 = load i8, i8* %0, align 1, !dbg !3940, !tbaa !549
  %113 = icmp ult i8 %111, %112, !dbg !3941
  br i1 %113, label %12, label %114, !dbg !3873, !llvm.loop !3942

; <label>:114:                                    ; preds = %110
  br label %115, !dbg !3945

; <label>:115:                                    ; preds = %114, %2
  ret void, !dbg !3945
}

; Function Attrs: nounwind optsize
define hidden void @hci_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3949, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i16 %1, metadata !3950, metadata !DIExpression()), !dbg !3952
  %3 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3953, !tbaa !499
  %4 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %3, i32 0, i32 0, !dbg !3954
  %5 = load void (i8*, i8, i16, i8*, i16)*, void (i8*, i8, i16, i8*, i16)** %4, align 4, !dbg !3954, !tbaa !524
  tail call void %5(i8* null, i8 zeroext 4, i16 zeroext 0, i8* %0, i16 zeroext %1) #12, !dbg !3953
  ret void, !dbg !3955
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @l2cap_just_register_service(i16 zeroext) local_unnamed_addr #6 section ".bt_stack_code" !dbg !3956 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3958, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i16 %0, metadata !2577, metadata !DIExpression()), !dbg !3961
  %2 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** @l2cap_stack, align 4, !dbg !3963, !tbaa !499
  %3 = getelementptr inbounds %struct.l2cap_stack_t, %struct.l2cap_stack_t* %2, i32 0, i32 1, !dbg !3964
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %3, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !2582, metadata !DIExpression()), !dbg !3965
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !3966
  br i1 %5, label %20, label %6, !dbg !3966

; <label>:6:                                      ; preds = %1
  br label %11, !dbg !3967

; <label>:7:                                      ; preds = %11
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 0, i32 0, !dbg !3968
  %9 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %8, align 4, !tbaa !499
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %9, metadata !2582, metadata !DIExpression()), !dbg !3965
  %10 = icmp eq %struct.btstack_linked_item* %9, null, !dbg !3966
  br i1 %10, label %18, label %11, !dbg !3966, !llvm.loop !2598

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct.btstack_linked_item* [ %9, %7 ], [ %4, %6 ]
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 1, !dbg !3967
  %14 = bitcast %struct.btstack_linked_item* %13 to i16*, !dbg !3967
  %15 = load i16, i16* %14, align 4, !dbg !3967, !tbaa !2601
  %16 = icmp eq i16 %15, %0, !dbg !3969
  %17 = bitcast %struct.btstack_linked_item* %12 to %struct.l2cap_service_t*, !dbg !3970
  br i1 %16, label %18, label %7

; <label>:18:                                     ; preds = %11, %7
  %19 = phi %struct.l2cap_service_t* [ null, %7 ], [ %17, %11 ]
  br label %20, !dbg !3971

; <label>:20:                                     ; preds = %18, %1
  %21 = phi %struct.l2cap_service_t* [ null, %1 ], [ %19, %18 ]
  call void @llvm.dbg.value(metadata %struct.l2cap_service_t* %21, metadata !3959, metadata !DIExpression()), !dbg !3971
  %22 = icmp ne %struct.l2cap_service_t* %21, null, !dbg !3972
  %23 = zext i1 %22 to i32, !dbg !3972
  ret i32 %23, !dbg !3973
}

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @l2cap_create_signaling_internal_le(i8*, i16 zeroext, i32, i8 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_event_packet_get_type(i8* nocapture readonly) unnamed_addr #11 !dbg !3974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3981, metadata !DIExpression()), !dbg !3982
  %2 = load i8, i8* %0, align 1, !dbg !3983, !tbaa !549
  ret i8 %2, !dbg !3984
}

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gap_le_get_connection_parameter_range(%struct.le_connection_parameter_range*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @little_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @hci_can_send_acl_le_packet_now() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @hci_can_send_acl_classic_packet_now() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!487, !488}
!llvm.ident = !{!489}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !486, line: 190, type: !331, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !210, globals: !409)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/common/l2cap.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !15, !22, !40, !60, !74, !82, !90, !190, !197, !203}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 75, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "L2CAP_NOT_AUTHENTICATION", value: 32)
!8 = !DIEnumerator(name: "L2CAP_WAIT_AUTHENTICATION", value: 33)
!9 = !DIEnumerator(name: "L2CAP_AUTHENTICATION_COMPLETE", value: 34)
!10 = !DIEnumerator(name: "L2CAP_READ_AUTHENTICATION", value: 35)
!11 = !DIEnumerator(name: "L2CAP_SET_AUTHENTICATION", value: 36)
!12 = !DIEnumerator(name: "L2CAP_CLEAR_AUTHENTICATION", value: 37)
!13 = !DIEnumerator(name: "L2CAP_SET_REMOTE_DEV_COMPANY", value: 38)
!14 = !DIEnumerator(name: "L2CAP_GET_REMOTE_DEV_COMPANY", value: 39)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 631, size: 32, elements: !17)
!16 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "REMOTE_DEV_UNKNOWN", value: 0)
!19 = !DIEnumerator(name: "REMOTE_DEV_ANDROID", value: 1)
!20 = !DIEnumerator(name: "REMOTE_DEV_IOS", value: 2)
!21 = !DIEnumerator(name: "REMOTE_DEV_XIAOMI", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 133, size: 32, elements: !24)
!23 = !DIFile(filename: "../btstack/Host/include/common/l2cap.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!25 = !DIEnumerator(name: "L2CAP_STATE_CLOSED", value: 1)
!26 = !DIEnumerator(name: "L2CAP_STATE_WILL_SEND_CREATE_CONNECTION", value: 2)
!27 = !DIEnumerator(name: "L2CAP_STATE_WAIT_CONNECTION_COMPLETE", value: 3)
!28 = !DIEnumerator(name: "L2CAP_STATE_WAIT_CLIENT_ACCEPT_OR_REJECT", value: 4)
!29 = !DIEnumerator(name: "L2CAP_STATE_WAIT_INFORMATION_RSP", value: 5)
!30 = !DIEnumerator(name: "L2CAP_STATE_WAIT_CONNECT_RSP", value: 6)
!31 = !DIEnumerator(name: "L2CAP_STATE_CONFIG", value: 7)
!32 = !DIEnumerator(name: "L2CAP_STATE_OPEN", value: 8)
!33 = !DIEnumerator(name: "L2CAP_STATE_WAIT_DISCONNECT", value: 9)
!34 = !DIEnumerator(name: "L2CAP_STATE_WILL_SEND_CONNECTION_REQUEST", value: 10)
!35 = !DIEnumerator(name: "L2CAP_STATE_WILL_SEND_CONNECTION_RESPONSE_DECLINE", value: 11)
!36 = !DIEnumerator(name: "L2CAP_STATE_WILL_SEND_CONNECTION_RESPONSE_ACCEPT", value: 12)
!37 = !DIEnumerator(name: "L2CAP_STATE_WILL_SEND_DISCONNECT_REQUEST", value: 13)
!38 = !DIEnumerator(name: "L2CAP_STATE_WILL_SEND_DISCONNECT_RESPONSE", value: 14)
!39 = !DIEnumerator(name: "L2CAP_STATE_WILL_SEND_CONNECTION_RESPONSE_PENDING", value: 15)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 52, size: 32, elements: !42)
!41 = !DIFile(filename: "../btstack/Host/include/common/l2cap_signaling.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!43 = !DIEnumerator(name: "COMMAND_REJECT", value: 1)
!44 = !DIEnumerator(name: "CONNECTION_REQUEST", value: 2)
!45 = !DIEnumerator(name: "CONNECTION_RESPONSE", value: 3)
!46 = !DIEnumerator(name: "CONFIGURE_REQUEST", value: 4)
!47 = !DIEnumerator(name: "CONFIGURE_RESPONSE", value: 5)
!48 = !DIEnumerator(name: "DISCONNECTION_REQUEST", value: 6)
!49 = !DIEnumerator(name: "DISCONNECTION_RESPONSE", value: 7)
!50 = !DIEnumerator(name: "ECHO_REQUEST", value: 8)
!51 = !DIEnumerator(name: "ECHO_RESPONSE", value: 9)
!52 = !DIEnumerator(name: "INFORMATION_REQUEST", value: 10)
!53 = !DIEnumerator(name: "INFORMATION_RESPONSE", value: 11)
!54 = !DIEnumerator(name: "CONNECTION_PARAMETER_UPDATE_REQUEST", value: 18)
!55 = !DIEnumerator(name: "CONNECTION_PARAMETER_UPDATE_RESPONSE", value: 19)
!56 = !DIEnumerator(name: "LE_CREDIT_BASED_CONNECTION_REQUEST", value: 20)
!57 = !DIEnumerator(name: "LE_CREDIT_BASED_CONNECTION_RESPONSE", value: 21)
!58 = !DIEnumerator(name: "LE_FLOW_CONTROL_CREDIT", value: 22)
!59 = !DIEnumerator(name: "COMMAND_REJECT_LE", value: 31)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 151, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!62 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_NONE", value: 0)
!63 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_RCVD_CONF_REQ", value: 1)
!64 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_RCVD_CONF_RSP", value: 2)
!65 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SEND_CONF_REQ", value: 4)
!66 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SEND_CONF_RSP", value: 8)
!67 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SENT_CONF_REQ", value: 16)
!68 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SENT_CONF_RSP", value: 32)
!69 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SEND_CONF_RSP_MTU", value: 64)
!70 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SEND_CONF_STREAMING_MODE", value: 128)
!71 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SEND_CONF_RSP_CONT", value: 256)
!72 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SEND_CONF_RSP_INVALID", value: 512)
!73 = !DIEnumerator(name: "L2CAP_CHANNEL_STATE_VAR_SEND_CMD_REJ_UNKNOWN", value: 1024)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 1469, size: 32, elements: !76)
!75 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_PUBLIC", value: 0)
!78 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_RANDOM", value: 1)
!79 = !DIEnumerator(name: "BD_ADDR_TYPE_SCO", value: 254)
!80 = !DIEnumerator(name: "BD_ADDR_TYPE_CLASSIC", value: 255)
!81 = !DIEnumerator(name: "BD_ADDR_TYPE_UNKNOWN", value: 254)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 246, size: 32, elements: !84)
!83 = !DIFile(filename: "../btstack/Host/include/common/hci.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!84 = !{!85, !86, !87, !88, !89}
!85 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_NONE", value: 0)
!86 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_REQUEST", value: 1)
!87 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_RESPONSE", value: 2)
!88 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_CHANGE_HCI_CON_PARAMETERS", value: 3)
!89 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_DENY", value: 4)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 295, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!92 = !DIEnumerator(name: "SM_GENERAL_IDLE", value: 0)
!93 = !DIEnumerator(name: "SM_GENERAL_SEND_PAIRING_FAILED", value: 1)
!94 = !DIEnumerator(name: "SM_GENERAL_TIMEOUT", value: 2)
!95 = !DIEnumerator(name: "SM_PH1_W4_USER_RESPONSE", value: 3)
!96 = !DIEnumerator(name: "SM_PH2_GET_RANDOM_TK", value: 4)
!97 = !DIEnumerator(name: "SM_PH2_W4_RANDOM_TK", value: 5)
!98 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_A", value: 6)
!99 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_A", value: 7)
!100 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_B", value: 8)
!101 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_B", value: 9)
!102 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_A", value: 10)
!103 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_A", value: 11)
!104 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_B", value: 12)
!105 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_B", value: 13)
!106 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_C", value: 14)
!107 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_C", value: 15)
!108 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_D", value: 16)
!109 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_D", value: 17)
!110 = !DIEnumerator(name: "SM_PH2_C1_SEND_PAIRING_CONFIRM", value: 18)
!111 = !DIEnumerator(name: "SM_PH2_SEND_PAIRING_RANDOM", value: 19)
!112 = !DIEnumerator(name: "SM_PH2_CALC_STK", value: 20)
!113 = !DIEnumerator(name: "SM_PH2_W4_STK", value: 21)
!114 = !DIEnumerator(name: "SM_PH2_W4_CONNECTION_ENCRYPTED", value: 22)
!115 = !DIEnumerator(name: "SM_PH3_GET_RANDOM", value: 23)
!116 = !DIEnumerator(name: "SM_PH3_W4_RANDOM", value: 24)
!117 = !DIEnumerator(name: "SM_PH3_GET_DIV", value: 25)
!118 = !DIEnumerator(name: "SM_PH3_W4_DIV", value: 26)
!119 = !DIEnumerator(name: "SM_PH3_Y_GET_ENC", value: 27)
!120 = !DIEnumerator(name: "SM_PH3_Y_W4_ENC", value: 28)
!121 = !DIEnumerator(name: "SM_PH3_LTK_GET_ENC", value: 29)
!122 = !DIEnumerator(name: "SM_PH3_LTK_W4_ENC", value: 30)
!123 = !DIEnumerator(name: "SM_PH3_CSRK_GET_ENC", value: 31)
!124 = !DIEnumerator(name: "SM_PH3_CSRK_W4_ENC", value: 32)
!125 = !DIEnumerator(name: "SM_PH3_DISTRIBUTE_KEYS", value: 33)
!126 = !DIEnumerator(name: "SM_PH3_RECEIVE_KEYS", value: 34)
!127 = !DIEnumerator(name: "SM_RESPONDER_IDLE", value: 35)
!128 = !DIEnumerator(name: "SM_RESPONDER_SEND_SECURITY_REQUEST", value: 36)
!129 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_REQUEST", value: 37)
!130 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_W4_IRK", value: 38)
!131 = !DIEnumerator(name: "SM_RESPONDER_PH0_SEND_LTK_REQUESTED_NEGATIVE_REPLY", value: 39)
!132 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_REQUEST", value: 40)
!133 = !DIEnumerator(name: "SM_RESPONDER_PH1_PAIRING_REQUEST_RECEIVED", value: 41)
!134 = !DIEnumerator(name: "SM_RESPONDER_PH1_SEND_PAIRING_RESPONSE", value: 42)
!135 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_CONFIRM", value: 43)
!136 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_PAIRING_RANDOM", value: 44)
!137 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_LTK_REQUEST", value: 45)
!138 = !DIEnumerator(name: "SM_RESPONDER_PH2_SEND_LTK_REPLY", value: 46)
!139 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_GET_ENC", value: 47)
!140 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_W4_ENC", value: 48)
!141 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_GET_ENC", value: 49)
!142 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_W4_ENC", value: 50)
!143 = !DIEnumerator(name: "SM_RESPONDER_PH4_SEND_LTK_REPLY", value: 51)
!144 = !DIEnumerator(name: "SM_INITIATOR_CONNECTED", value: 52)
!145 = !DIEnumerator(name: "SM_INITIATOR_PH0_HAS_LTK", value: 53)
!146 = !DIEnumerator(name: "SM_INITIATOR_PH0_SEND_START_ENCRYPTION", value: 54)
!147 = !DIEnumerator(name: "SM_INITIATOR_PH0_W4_CONNECTION_ENCRYPTED", value: 55)
!148 = !DIEnumerator(name: "SM_INITIATOR_PH1_W2_SEND_PAIRING_REQUEST", value: 56)
!149 = !DIEnumerator(name: "SM_INITIATOR_PH1_SEND_PAIRING_REQUEST", value: 57)
!150 = !DIEnumerator(name: "SM_INITIATOR_PH1_W4_PAIRING_RESPONSE", value: 58)
!151 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_CONFIRM", value: 59)
!152 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_RANDOM", value: 60)
!153 = !DIEnumerator(name: "SM_INITIATOR_PH3_SEND_START_ENCRYPTION", value: 61)
!154 = !DIEnumerator(name: "SM_SC_RECEIVED_LTK_REQUEST", value: 62)
!155 = !DIEnumerator(name: "SM_SC_SEND_PUBLIC_KEY_COMMAND", value: 63)
!156 = !DIEnumerator(name: "SM_SC_W4_PUBLIC_KEY_COMMAND", value: 64)
!157 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_A", value: 65)
!158 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_A", value: 66)
!159 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_B", value: 67)
!160 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_B", value: 68)
!161 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CONFIRMATION", value: 69)
!162 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CONFIRMATION", value: 70)
!163 = !DIEnumerator(name: "SM_SC_SEND_CONFIRMATION", value: 71)
!164 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CHECK_CONFIRMATION", value: 72)
!165 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CHECK_CONFIRMATION", value: 73)
!166 = !DIEnumerator(name: "SM_SC_W4_CONFIRMATION", value: 74)
!167 = !DIEnumerator(name: "SM_SC_SEND_PAIRING_RANDOM", value: 75)
!168 = !DIEnumerator(name: "SM_SC_W4_PAIRING_RANDOM", value: 76)
!169 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_G2", value: 77)
!170 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_G2", value: 78)
!171 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_DHKEY", value: 79)
!172 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_SALT", value: 80)
!173 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_SALT", value: 81)
!174 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_MACKEY", value: 82)
!175 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_MACKEY", value: 83)
!176 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_LTK", value: 84)
!177 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_LTK", value: 85)
!178 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_FOR_DHKEY_CHECK", value: 86)
!179 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_FOR_DHKEY_CHECK", value: 87)
!180 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 88)
!181 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 89)
!182 = !DIEnumerator(name: "SM_SC_W4_USER_RESPONSE", value: 90)
!183 = !DIEnumerator(name: "SM_SC_SEND_DHKEY_CHECK_COMMAND", value: 91)
!184 = !DIEnumerator(name: "SM_SC_W4_DHKEY_CHECK_COMMAND", value: 92)
!185 = !DIEnumerator(name: "SM_SC_W4_LTK_REQUEST_SC", value: 93)
!186 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_ILK", value: 94)
!187 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_ILK", value: 95)
!188 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_BR_EDR_LINK_KEY", value: 96)
!189 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_BR_EDR_LINK_KEY", value: 97)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 436, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIEnumerator(name: "IRK_LOOKUP_IDLE", value: 0)
!193 = !DIEnumerator(name: "IRK_LOOKUP_W4_READY", value: 1)
!194 = !DIEnumerator(name: "IRK_LOOKUP_STARTED", value: 2)
!195 = !DIEnumerator(name: "IRK_LOOKUP_SUCCEEDED", value: 3)
!196 = !DIEnumerator(name: "IRK_LOOKUP_FAILED", value: 4)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 445, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "AUTHORIZATION_UNKNOWN", value: 0)
!200 = !DIEnumerator(name: "AUTHORIZATION_PENDING", value: 1)
!201 = !DIEnumerator(name: "AUTHORIZATION_DECLINED", value: 2)
!202 = !DIEnumerator(name: "AUTHORIZATION_GRANTED", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 157, size: 32, elements: !205)
!204 = !DIFile(filename: "../btstack/Protocol/include/ble/att_server.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!205 = !{!206, !207, !208, !209}
!206 = !DIEnumerator(name: "ATT_SERVER_IDLE", value: 0)
!207 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED", value: 1)
!208 = !DIEnumerator(name: "ATT_SERVER_W4_SIGNED_WRITE_VALIDATION", value: 2)
!209 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED", value: 3)
!210 = !{!211, !219, !237, !282, !283, !227, !399, !408, !351}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !213, line: 100, baseType: !214)
!213 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !213, line: 55, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !213, line: 53, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !213, line: 54, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_channel_t", file: !23, line: 222, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 204, size: 448, elements: !222)
!222 = !{!223, !224, !232, !236, !238, !246}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !221, file: !23, line: 206, baseType: !212, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !221, file: !23, line: 208, baseType: !225, size: 16, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !226, line: 9, baseType: !227)
!226 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !228, line: 26, baseType: !229)
!228 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !230, line: 43, baseType: !231)
!230 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!231 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_for_can_send_now", scope: !221, file: !23, line: 211, baseType: !233, size: 8, offset: 48)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !234, line: 11, baseType: !235)
!234 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!235 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !221, file: !23, line: 215, baseType: !237, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !221, file: !23, line: 218, baseType: !239, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !75, line: 58, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !243, !227, !245, !227}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !228, line: 20, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !230, line: 29, baseType: !235)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "channel_core_data", scope: !221, file: !23, line: 220, baseType: !247, size: 320, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "channel_core_data_t", file: !23, line: 200, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 178, size: 320, elements: !249)
!249 = !{!250, !252, !253, !254, !255, !256, !261, !262, !263, !264, !265, !266, !267, !270}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !248, file: !23, line: 180, baseType: !251, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !234, line: 13, baseType: !231)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !248, file: !23, line: 181, baseType: !233, size: 8, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "remote_sig_id", scope: !248, file: !23, line: 183, baseType: !233, size: 8, offset: 24)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "local_sig_id", scope: !248, file: !23, line: 184, baseType: !233, size: 8, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !248, file: !23, line: 186, baseType: !233, size: 8, offset: 40)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !248, file: !23, line: 188, baseType: !257, size: 48, offset: 48)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !226, line: 7, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 48, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 6)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "psm", scope: !248, file: !23, line: 189, baseType: !251, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "local_cid", scope: !248, file: !23, line: 191, baseType: !251, size: 16, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "remote_cid", scope: !248, file: !23, line: 192, baseType: !251, size: 16, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "local_mtu", scope: !248, file: !23, line: 194, baseType: !251, size: 16, offset: 144)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "remote_mtu", scope: !248, file: !23, line: 195, baseType: !251, size: 16, offset: 160)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !248, file: !23, line: 197, baseType: !233, size: 8, offset: 176)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "remote_extended_feature", scope: !248, file: !23, line: 198, baseType: !268, size: 32, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !234, line: 15, baseType: !269)
!269 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "retran_op", scope: !248, file: !23, line: 199, baseType: !271, size: 96, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "retran_flow_ctl_op_t", file: !23, line: 174, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 165, size: 96, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "retransmission_flow_ctl", scope: !272, file: !23, line: 166, baseType: !233, size: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !272, file: !23, line: 167, baseType: !233, size: 8, offset: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !23, line: 168, baseType: !233, size: 8, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tx_window", scope: !272, file: !23, line: 169, baseType: !233, size: 8, offset: 24)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "max_transmit", scope: !272, file: !23, line: 170, baseType: !233, size: 8, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "retransmission_timeout", scope: !272, file: !23, line: 171, baseType: !251, size: 16, offset: 48)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_timeout", scope: !272, file: !23, line: 172, baseType: !251, size: 16, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "max_pdu", scope: !272, file: !23, line: 173, baseType: !251, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_hci_connection_t", file: !83, line: 605, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__le_hci_connection", file: !83, line: 571, size: 9792, elements: !286)
!286 = !{!287, !288, !289, !290, !292, !293, !295, !296, !297, !298, !299, !300, !333, !389, !393, !394, !395, !396, !397, !398}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !285, file: !83, line: 572, baseType: !212, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !285, file: !83, line: 574, baseType: !257, size: 48, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !285, file: !83, line: 576, baseType: !225, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !285, file: !83, line: 578, baseType: !291, size: 32, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_type_t", file: !75, line: 1475, baseType: !74)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !285, file: !83, line: 581, baseType: !243, size: 8, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_parameter_update_state", scope: !285, file: !83, line: 584, baseType: !294, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_con_parameter_update_state_t", file: !83, line: 252, baseType: !82)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_param_update_identifier", scope: !285, file: !83, line: 585, baseType: !243, size: 8, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !285, file: !83, line: 586, baseType: !227, size: 16, offset: 208)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !285, file: !83, line: 587, baseType: !227, size: 16, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency", scope: !285, file: !83, line: 588, baseType: !227, size: 16, offset: 240)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout", scope: !285, file: !83, line: 589, baseType: !227, size: 16, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection", scope: !285, file: !83, line: 592, baseType: !301, size: 448, offset: 288)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_connection_t", file: !83, line: 475, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sm_connection", file: !83, line: 456, size: 448, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !312, !314, !315, !316, !317, !322, !324, !325, !329, !330, !332}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sm_handle", scope: !302, file: !83, line: 457, baseType: !225, size: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sm_role", scope: !302, file: !83, line: 458, baseType: !243, size: 8, offset: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sm_security_request_received", scope: !302, file: !83, line: 459, baseType: !243, size: 8, offset: 24)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sm_bonding_requested", scope: !302, file: !83, line: 460, baseType: !243, size: 8, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_addr_type", scope: !302, file: !83, line: 461, baseType: !243, size: 8, offset: 40)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_address", scope: !302, file: !83, line: 462, baseType: !257, size: 48, offset: 48)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sm_engine_state", scope: !302, file: !83, line: 463, baseType: !311, size: 32, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_manager_state_t", file: !83, line: 433, baseType: !90)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sm_irk_lookup_state", scope: !302, file: !83, line: 464, baseType: !313, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "irk_lookup_state_t", file: !83, line: 442, baseType: !190)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_encrypted", scope: !302, file: !83, line: 465, baseType: !243, size: 8, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authenticated", scope: !302, file: !83, line: 466, baseType: !243, size: 8, offset: 168)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sm_actual_encryption_key_size", scope: !302, file: !83, line: 467, baseType: !243, size: 8, offset: 176)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_preq", scope: !302, file: !83, line: 468, baseType: !318, size: 56, offset: 184)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_pairing_packet_t", file: !83, line: 452, baseType: !319)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 56, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 7)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authorization_state", scope: !302, file: !83, line: 469, baseType: !323, size: 32, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "authorization_state_t", file: !83, line: 450, baseType: !197)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ediv", scope: !302, file: !83, line: 470, baseType: !227, size: 16, offset: 288)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_rand", scope: !302, file: !83, line: 471, baseType: !326, size: 64, offset: 304)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 64, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 8)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sm_disconn_reason", scope: !302, file: !83, line: 472, baseType: !243, size: 8, offset: 368)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sm_le_db_index", scope: !302, file: !83, line: 473, baseType: !331, size: 32, offset: 384)
!331 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sm_timeout_id", scope: !302, file: !83, line: 474, baseType: !331, size: 32, offset: 416)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "att_server", scope: !285, file: !83, line: 595, baseType: !334, size: 4640, offset: 736)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_t", file: !204, line: 187, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 164, size: 4640, elements: !336)
!336 = !{!337, !339, !340, !341, !342, !343, !344, !364, !375, !376, !380, !381, !382, !383, !384, !385}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !204, line: 165, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_state_t", file: !204, line: 162, baseType: !203)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr_type", scope: !335, file: !204, line: 167, baseType: !243, size: 8, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address", scope: !335, file: !204, line: 168, baseType: !257, size: 48, offset: 40)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ir_le_device_db_index", scope: !335, file: !204, line: 170, baseType: !331, size: 32, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ir_lookup_active", scope: !335, file: !204, line: 171, baseType: !331, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_handle", scope: !335, file: !204, line: 173, baseType: !331, size: 32, offset: 160)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_timer", scope: !335, file: !204, line: 174, baseType: !345, size: 160, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !346, line: 19, baseType: !347)
!346 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !346, line: 7, size: 160, elements: !348)
!348 = !{!349, !350, !353, !354, !355, !356, !357, !358, !363}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !347, file: !346, line: 8, baseType: !214, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !347, file: !346, line: 10, baseType: !351, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !228, line: 32, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !230, line: 65, baseType: !269)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !347, file: !346, line: 11, baseType: !351, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !347, file: !346, line: 12, baseType: !351, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !347, file: !346, line: 13, baseType: !351, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !347, file: !346, line: 14, baseType: !351, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !347, file: !346, line: 15, baseType: !351, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !347, file: !346, line: 17, baseType: !359, size: 32, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !347, file: !346, line: 18, baseType: !237, size: 32, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !335, file: !204, line: 176, baseType: !365, size: 80, offset: 352)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_connection_t", file: !366, line: 41, baseType: !367)
!366 = !DIFile(filename: "../btstack/Protocol/include/ble/att_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_connection", file: !366, line: 34, size: 80, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !367, file: !366, line: 35, baseType: !225, size: 16)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !367, file: !366, line: 36, baseType: !227, size: 16, offset: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !367, file: !366, line: 37, baseType: !227, size: 16, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_key_size", scope: !367, file: !366, line: 38, baseType: !243, size: 8, offset: 48)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !367, file: !366, line: 39, baseType: !243, size: 8, offset: 56)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !367, file: !366, line: 40, baseType: !243, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "request_size", scope: !335, file: !204, line: 178, baseType: !227, size: 16, offset: 432)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffer", scope: !335, file: !204, line: 179, baseType: !377, size: 4136, offset: 448)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 4136, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 517)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flow_hold_flag", scope: !335, file: !204, line: 181, baseType: !243, size: 1, offset: 4584, flags: DIFlagBitField, extraData: i64 4584)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_request_flag", scope: !335, file: !204, line: 182, baseType: !243, size: 1, offset: 4585, flags: DIFlagBitField, extraData: i64 4584)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "check_remote_tag", scope: !335, file: !204, line: 183, baseType: !243, size: 3, offset: 4586, flags: DIFlagBitField, extraData: i64 4584)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "request_busy", scope: !335, file: !204, line: 184, baseType: !243, size: 1, offset: 4589, flags: DIFlagBitField, extraData: i64 4584)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reserverd", scope: !335, file: !204, line: 185, baseType: !243, size: 2, offset: 4590, flags: DIFlagBitField, extraData: i64 4584)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "result_callback", scope: !335, file: !204, line: 186, baseType: !386, size: 32, offset: 4608)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !251, !233}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_buffer", scope: !285, file: !83, line: 597, baseType: !390, size: 4232, offset: 5376)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 4232, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 529)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_pos", scope: !285, file: !83, line: 598, baseType: !227, size: 16, offset: 9616)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_length", scope: !285, file: !83, line: 599, baseType: !227, size: 16, offset: 9632)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "num_acl_packets_sent", scope: !285, file: !83, line: 600, baseType: !243, size: 8, offset: 9648)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "own_id_address", scope: !285, file: !83, line: 602, baseType: !257, size: 48, offset: 9656)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "own_address", scope: !285, file: !83, line: 603, baseType: !257, size: 48, offset: 9704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "own_address_type", scope: !285, file: !83, line: 604, baseType: !291, size: 32, offset: 9760)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_service_t", file: !23, line: 241, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 225, size: 128, elements: !402)
!402 = !{!403, !404, !405, !406, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !401, file: !23, line: 227, baseType: !212, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "psm", scope: !401, file: !23, line: 230, baseType: !251, size: 16, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !401, file: !23, line: 233, baseType: !251, size: 16, offset: 48)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !401, file: !23, line: 236, baseType: !237, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !401, file: !23, line: 239, baseType: !239, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "L2CAP_CHANNEL_STATE_VAR", file: !23, line: 164, baseType: !60)
!409 = !{!0, !410, !422, !429, !474, !476, !484}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "le_con_param_update_identifier", scope: !412, file: !3, line: 2085, type: !233, isLocal: true, isDefinition: true)
!412 = distinct !DISubprogram(name: "gap_request_connection_parameter_update", scope: !3, file: !3, line: 2082, type: !413, isLocal: false, isDefinition: true, scopeLine: 2084, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!331, !225, !227, !227, !227, !227}
!415 = !{!416, !417, !418, !419, !420, !421}
!416 = !DILocalVariable(name: "con_handle", arg: 1, scope: !412, file: !3, line: 2082, type: !225)
!417 = !DILocalVariable(name: "conn_interval_min", arg: 2, scope: !412, file: !3, line: 2082, type: !227)
!418 = !DILocalVariable(name: "conn_interval_max", arg: 3, scope: !412, file: !3, line: 2083, type: !227)
!419 = !DILocalVariable(name: "conn_latency", arg: 4, scope: !412, file: !3, line: 2083, type: !227)
!420 = !DILocalVariable(name: "supervision_timeout", arg: 5, scope: !412, file: !3, line: 2083, type: !227)
!421 = !DILocalVariable(name: "connection", scope: !412, file: !3, line: 2087, type: !283)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "hci_event_callback_registration", scope: !2, file: !3, line: 86, type: !424, isLocal: true, isDefinition: true)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_callback_registration_t", file: !75, line: 64, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 61, size: 64, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !425, file: !75, line: 62, baseType: !212, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !425, file: !75, line: 63, baseType: !239, size: 32, offset: 32)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "l2cap_stack", scope: !2, file: !3, line: 90, type: !431, isLocal: false, isDefinition: true)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_stack_t", file: !23, line: 284, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 273, size: 448, elements: !434)
!434 = !{!435, !439, !442, !443}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !433, file: !23, line: 274, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 32)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !237, !233, !251, !282, !251}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_services", scope: !433, file: !23, line: 279, baseType: !440, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !213, line: 101, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_channels", scope: !433, file: !23, line: 280, baseType: !440, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "statck_core_data", scope: !433, file: !23, line: 282, baseType: !444, size: 352, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_core_data_t", file: !23, line: 271, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 262, size: 352, elements: !446)
!446 = !{!447, !459, !460, !461, !472, !473}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "signaling_responses", scope: !445, file: !23, line: 264, baseType: !448, size: 192)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !457)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_signaling_response_t", file: !23, line: 251, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "l2cap_signaling_response", file: !23, line: 245, size: 64, elements: !451)
!451 = !{!452, !453, !454, !455, !456}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !450, file: !23, line: 246, baseType: !225, size: 16)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sig_id", scope: !450, file: !23, line: 247, baseType: !233, size: 8, offset: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !450, file: !23, line: 248, baseType: !233, size: 8, offset: 24)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !450, file: !23, line: 249, baseType: !251, size: 16, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !450, file: !23, line: 250, baseType: !251, size: 16, offset: 48)
!457 = !{!458}
!458 = !DISubrange(count: 3)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "signaling_responses_pending", scope: !445, file: !23, line: 266, baseType: !331, size: 32, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "extended_feature", scope: !445, file: !23, line: 267, baseType: !268, size: 32, offset: 224)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "authentication_flag", scope: !445, file: !23, line: 268, baseType: !462, size: 64, offset: 256)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 64, elements: !470)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_authentication_flag_t", file: !23, line: 258, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "authentication_flag", file: !23, line: 253, size: 64, elements: !465)
!465 = !{!466, !467, !468, !469}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !464, file: !23, line: 254, baseType: !257, size: 48)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "in_used", scope: !464, file: !23, line: 255, baseType: !233, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 48)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "remote_dev_company", scope: !464, file: !23, line: 256, baseType: !233, size: 4, offset: 52, flags: DIFlagBitField, extraData: i64 48)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "authentication_status", scope: !464, file: !23, line: 257, baseType: !233, size: 8, offset: 56)
!470 = !{!471}
!471 = !DISubrange(count: 1)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_sig_seq_nr", scope: !445, file: !23, line: 269, baseType: !233, size: 8, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_source_cid", scope: !445, file: !23, line: 270, baseType: !251, size: 16, offset: 336)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "le_l2cap_event_packet_handler", scope: !2, file: !3, line: 92, type: !239, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "l2cap_fixed_channels", scope: !2, file: !3, line: 116, type: !478, isLocal: true, isDefinition: true)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 192, elements: !457)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_fixed_channel_t", file: !3, line: 114, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "l2cap_fixed_channel", file: !3, line: 111, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !480, file: !3, line: 112, baseType: !239, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_for_can_send_now", scope: !480, file: !3, line: 113, baseType: !243, size: 8, offset: 32)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "le_att_mtu_size", scope: !2, file: !3, line: 983, type: !251, isLocal: true, isDefinition: true)
!486 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!487 = !{i32 2, !"Dwarf Version", i32 4}
!488 = !{i32 2, !"Debug Info Version", i32 3}
!489 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!490 = distinct !DISubprogram(name: "l2cap_init", scope: !3, file: !3, line: 137, type: !491, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !431, !436}
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "stack", arg: 1, scope: !490, file: !3, line: 137, type: !431)
!495 = !DILocalVariable(name: "handler", arg: 2, scope: !490, file: !3, line: 137, type: !436)
!496 = !DILocation(line: 137, column: 32, scope: !490)
!497 = !DILocation(line: 137, column: 46, scope: !490)
!498 = !DILocation(line: 139, column: 17, scope: !490)
!499 = !{!500, !500, i64 0}
!500 = !{!"any pointer", !501, i64 0}
!501 = !{!"omnipotent char", !502, i64 0}
!502 = !{!"Simple C/C++ TBAA"}
!503 = !DILocation(line: 141, column: 35, scope: !490)
!504 = !DILocation(line: 141, column: 52, scope: !490)
!505 = !{!506, !501, i64 52}
!506 = !{!"", !500, i64 0, !500, i64 4, !500, i64 8, !507, i64 12}
!507 = !{!"", !501, i64 0, !508, i64 24, !508, i64 28, !501, i64 32, !501, i64 40, !509, i64 42}
!508 = !{!"int", !501, i64 0}
!509 = !{!"short", !501, i64 0}
!510 = !DILocation(line: 142, column: 35, scope: !490)
!511 = !DILocation(line: 142, column: 52, scope: !490)
!512 = !{!506, !509, i64 54}
!513 = !DILocation(line: 144, column: 35, scope: !490)
!514 = !DILocation(line: 144, column: 63, scope: !490)
!515 = !{!506, !508, i64 36}
!516 = !DILocation(line: 146, column: 18, scope: !490)
!517 = !DILocation(line: 146, column: 33, scope: !490)
!518 = !{!506, !500, i64 8}
!519 = !DILocation(line: 147, column: 18, scope: !490)
!520 = !DILocation(line: 147, column: 33, scope: !490)
!521 = !{!506, !500, i64 4}
!522 = !DILocation(line: 149, column: 18, scope: !490)
!523 = !DILocation(line: 149, column: 33, scope: !490)
!524 = !{!506, !500, i64 0}
!525 = !DILocation(line: 150, column: 5, scope: !490)
!526 = !DILocation(line: 150, column: 36, scope: !490)
!527 = !DILocation(line: 150, column: 53, scope: !490)
!528 = !{!506, !508, i64 40}
!529 = !DILocation(line: 152, column: 35, scope: !490)
!530 = !DILocation(line: 159, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !490, file: !3, line: 159, column: 9)
!532 = !{!508, !508, i64 0}
!533 = !DILocation(line: 159, column: 9, scope: !490)
!534 = !DILocation(line: 161, column: 50, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !3, line: 159, column: 50)
!536 = !{!537, !500, i64 4}
!537 = !{!"", !538, i64 0, !500, i64 4}
!538 = !{!"btstack_linked_item", !500, i64 0}
!539 = !DILocation(line: 162, column: 9, scope: !535)
!540 = !DILocation(line: 164, column: 5, scope: !535)
!541 = !DILocation(line: 166, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !490, file: !3, line: 166, column: 9)
!543 = !DILocation(line: 166, column: 9, scope: !490)
!544 = !DILocation(line: 168, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !3, line: 166, column: 51)
!546 = !DILocation(line: 169, column: 5, scope: !545)
!547 = !DILocation(line: 171, column: 5, scope: !548)
!548 = distinct !DILexicalBlock(scope: !490, file: !3, line: 171, column: 5)
!549 = !{!501, !501, i64 0}
!550 = !DILocation(line: 171, column: 5, scope: !490)
!551 = !DILocation(line: 171, column: 5, scope: !552)
!552 = !DILexicalBlockFile(scope: !548, file: !3, discriminator: 1)
!553 = !DILocation(line: 172, column: 1, scope: !490)
!554 = distinct !DISubprogram(name: "l2cap_hci_event_handler", scope: !3, file: !3, line: 1167, type: !241, isLocal: true, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !555)
!555 = !{!556, !557, !558, !559}
!556 = !DILocalVariable(name: "packet_type", arg: 1, scope: !554, file: !3, line: 1167, type: !243)
!557 = !DILocalVariable(name: "cid", arg: 2, scope: !554, file: !3, line: 1167, type: !227)
!558 = !DILocalVariable(name: "packet", arg: 3, scope: !554, file: !3, line: 1167, type: !245)
!559 = !DILocalVariable(name: "size", arg: 4, scope: !554, file: !3, line: 1167, type: !227)
!560 = !DILocation(line: 1167, column: 45, scope: !554)
!561 = !DILocation(line: 1167, column: 67, scope: !554)
!562 = !DILocation(line: 1167, column: 81, scope: !554)
!563 = !DILocation(line: 1167, column: 98, scope: !554)
!564 = !DILocation(line: 1170, column: 13, scope: !554)
!565 = !DILocation(line: 1170, column: 5, scope: !554)
!566 = !DILocation(line: 1174, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !554, file: !3, line: 1170, column: 48)
!568 = !DILocation(line: 1176, column: 9, scope: !567)
!569 = !DILocation(line: 1178, column: 9, scope: !567)
!570 = !DILocation(line: 1181, column: 9, scope: !567)
!571 = !DILocation(line: 1182, column: 9, scope: !567)
!572 = !DILocation(line: 1204, column: 1, scope: !554)
!573 = distinct !DISubprogram(name: "le_l2cap_register_packet_handler", scope: !3, file: !3, line: 176, type: !574, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !240}
!576 = !{!577}
!577 = !DILocalVariable(name: "handler", arg: 1, scope: !573, file: !3, line: 176, type: !240)
!578 = !DILocation(line: 176, column: 46, scope: !573)
!579 = !DILocation(line: 179, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !3, line: 179, column: 9)
!581 = !DILocation(line: 179, column: 9, scope: !573)
!582 = !DILocation(line: 185, column: 1, scope: !573)
!583 = distinct !DISubprogram(name: "check_l2cap_authentication_flag", scope: !3, file: !3, line: 228, type: !584, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{!233, !245, !233, !233}
!586 = !{!587, !588, !589, !590}
!587 = !DILocalVariable(name: "dev_addr", arg: 1, scope: !583, file: !3, line: 228, type: !245)
!588 = !DILocalVariable(name: "op_flag", arg: 2, scope: !583, file: !3, line: 228, type: !233)
!589 = !DILocalVariable(name: "value", arg: 3, scope: !583, file: !3, line: 228, type: !233)
!590 = !DILocalVariable(name: "i", scope: !583, file: !3, line: 230, type: !331)
!591 = !DILocation(line: 228, column: 46, scope: !583)
!592 = !DILocation(line: 228, column: 59, scope: !583)
!593 = !DILocation(line: 228, column: 71, scope: !583)
!594 = !DILocation(line: 230, column: 9, scope: !583)
!595 = !DILocation(line: 232, column: 14, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 232, column: 13)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 231, column: 44)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 231, column: 5)
!599 = distinct !DILexicalBlock(scope: !583, file: !3, line: 231, column: 5)
!600 = !DILocation(line: 233, column: 13, scope: !596)
!601 = !DILocation(line: 233, column: 71, scope: !602)
!602 = !DILexicalBlockFile(scope: !596, file: !3, discriminator: 1)
!603 = !DILocation(line: 233, column: 79, scope: !602)
!604 = !DILocation(line: 232, column: 13, scope: !605)
!605 = !DILexicalBlockFile(scope: !597, file: !3, discriminator: 1)
!606 = !DILocation(line: 235, column: 17, scope: !607)
!607 = distinct !DILexicalBlock(scope: !596, file: !3, line: 233, column: 101)
!608 = !DILocation(line: 239, column: 71, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 235, column: 56)
!610 = distinct !DILexicalBlock(scope: !607, file: !3, line: 235, column: 17)
!611 = !DILocation(line: 238, column: 90, scope: !609)
!612 = !DILocation(line: 239, column: 93, scope: !609)
!613 = !{!614, !501, i64 7}
!614 = !{!"authentication_flag", !501, i64 0, !501, i64 6, !501, i64 6, !501, i64 7}
!615 = !DILocation(line: 240, column: 13, scope: !609)
!616 = !DILocation(line: 242, column: 71, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 240, column: 61)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 240, column: 24)
!619 = !DILocation(line: 242, column: 93, scope: !617)
!620 = !DILocation(line: 243, column: 13, scope: !617)
!621 = !DILocation(line: 245, column: 90, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 243, column: 65)
!623 = distinct !DILexicalBlock(scope: !618, file: !3, line: 243, column: 24)
!624 = !DILocation(line: 246, column: 13, scope: !622)
!625 = !DILocation(line: 248, column: 78, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 247, column: 58)
!627 = distinct !DILexicalBlock(scope: !607, file: !3, line: 247, column: 17)
!628 = !DILocation(line: 248, column: 17, scope: !626)
!629 = !DILocation(line: 250, column: 78, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !3, line: 249, column: 20)
!631 = !DILocation(line: 250, column: 17, scope: !630)
!632 = !DILocation(line: 254, column: 18, scope: !633)
!633 = distinct !DILexicalBlock(scope: !583, file: !3, line: 254, column: 9)
!634 = !DILocation(line: 255, column: 9, scope: !633)
!635 = !DILocation(line: 257, column: 71, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 257, column: 17)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 256, column: 48)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 256, column: 9)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 256, column: 9)
!640 = distinct !DILexicalBlock(scope: !633, file: !3, line: 255, column: 55)
!641 = !DILocation(line: 256, column: 9, scope: !642)
!642 = !DILexicalBlockFile(scope: !639, file: !3, discriminator: 1)
!643 = !DILocation(line: 257, column: 17, scope: !637)
!644 = !DILocation(line: 258, column: 17, scope: !645)
!645 = distinct !DILexicalBlock(scope: !636, file: !3, line: 257, column: 100)
!646 = !DILocation(line: 259, column: 79, scope: !645)
!647 = !DILocation(line: 260, column: 21, scope: !645)
!648 = !DILocation(line: 262, column: 96, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 260, column: 58)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 260, column: 21)
!651 = !DILocation(line: 263, column: 93, scope: !649)
!652 = !DILocation(line: 264, column: 17, scope: !649)
!653 = !DILocation(line: 266, column: 96, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !3, line: 264, column: 24)
!655 = !DILocation(line: 267, column: 93, scope: !654)
!656 = !DILocation(line: 274, column: 1, scope: !583)
!657 = distinct !DISubprogram(name: "remote_dev_company_ioctrl", scope: !3, file: !3, line: 277, type: !584, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !658)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(name: "dev_addr", arg: 1, scope: !657, file: !3, line: 277, type: !245)
!660 = !DILocalVariable(name: "op_flag", arg: 2, scope: !657, file: !3, line: 277, type: !233)
!661 = !DILocalVariable(name: "value", arg: 3, scope: !657, file: !3, line: 277, type: !233)
!662 = !DILocalVariable(name: "ret", scope: !657, file: !3, line: 279, type: !331)
!663 = !DILocation(line: 277, column: 40, scope: !657)
!664 = !DILocation(line: 277, column: 53, scope: !657)
!665 = !DILocation(line: 277, column: 65, scope: !657)
!666 = !DILocation(line: 280, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !657, file: !3, line: 280, column: 9)
!668 = !DILocation(line: 285, column: 11, scope: !657)
!669 = !DILocation(line: 286, column: 59, scope: !670)
!670 = !DILexicalBlockFile(scope: !671, file: !3, discriminator: 1)
!671 = distinct !DILexicalBlock(scope: !657, file: !3, line: 286, column: 9)
!672 = !DILocation(line: 286, column: 49, scope: !671)
!673 = !DILocation(line: 287, column: 32, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 286, column: 66)
!675 = !DILocation(line: 287, column: 9, scope: !674)
!676 = !DILocation(line: 288, column: 5, scope: !674)
!677 = !DILocation(line: 289, column: 5, scope: !657)
!678 = distinct !DISubprogram(name: "check_current_sdp_company_type", scope: !3, file: !3, line: 291, type: !679, isLocal: false, isDefinition: true, scopeLine: 292, isOptimized: true, unit: !2, variables: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{!233}
!681 = !{!682, !683, !684}
!682 = !DILocalVariable(name: "company", scope: !678, file: !3, line: 293, type: !233)
!683 = !DILocalVariable(name: "it", scope: !678, file: !3, line: 294, type: !211)
!684 = !DILocalVariable(name: "channel", scope: !685, file: !3, line: 298, type: !219)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 297, column: 9)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 295, column: 82)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 295, column: 5)
!688 = distinct !DILexicalBlock(scope: !678, file: !3, line: 295, column: 5)
!689 = !DILocation(line: 293, column: 8, scope: !678)
!690 = !DILocation(line: 295, column: 33, scope: !688)
!691 = !DILocation(line: 295, column: 46, scope: !688)
!692 = !DILocation(line: 294, column: 20, scope: !678)
!693 = !DILocation(line: 295, column: 5, scope: !694)
!694 = !DILexicalBlockFile(scope: !688, file: !3, discriminator: 1)
!695 = !DILocation(line: 299, column: 44, scope: !696)
!696 = distinct !DILexicalBlock(scope: !685, file: !3, line: 299, column: 17)
!697 = !{!698, !509, i64 28}
!698 = !{!"", !538, i64 0, !509, i64 4, !501, i64 6, !500, i64 8, !500, i64 12, !699, i64 16}
!699 = !{!"", !509, i64 0, !501, i64 2, !501, i64 3, !501, i64 4, !501, i64 5, !501, i64 6, !509, i64 12, !509, i64 14, !509, i64 16, !509, i64 18, !509, i64 20, !501, i64 22, !508, i64 24, !700, i64 28}
!700 = !{!"", !501, i64 0, !501, i64 1, !501, i64 2, !501, i64 3, !501, i64 4, !509, i64 6, !509, i64 8, !509, i64 10}
!701 = !DILocation(line: 299, column: 48, scope: !696)
!702 = !DILocation(line: 299, column: 17, scope: !685)
!703 = !DILocation(line: 299, column: 26, scope: !696)
!704 = !DILocation(line: 302, column: 49, scope: !685)
!705 = !DILocation(line: 277, column: 40, scope: !657, inlinedAt: !706)
!706 = distinct !DILocation(line: 302, column: 23, scope: !685)
!707 = !DILocation(line: 277, column: 53, scope: !657, inlinedAt: !706)
!708 = !DILocation(line: 277, column: 65, scope: !657, inlinedAt: !706)
!709 = !DILocation(line: 285, column: 11, scope: !657, inlinedAt: !706)
!710 = !DILocation(line: 295, column: 76, scope: !711)
!711 = !DILexicalBlockFile(scope: !687, file: !3, discriminator: 2)
!712 = distinct !{!712, !713, !714}
!713 = !DILocation(line: 295, column: 5, scope: !688)
!714 = !DILocation(line: 305, column: 5, scope: !688)
!715 = !DILocation(line: 307, column: 1, scope: !678)
!716 = distinct !DISubprogram(name: "l2cap_dispatch", scope: !3, file: !3, line: 309, type: !717, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !219, !233, !282, !251}
!719 = !{!720, !721, !722, !723}
!720 = !DILocalVariable(name: "channel", arg: 1, scope: !716, file: !3, line: 309, type: !219)
!721 = !DILocalVariable(name: "type", arg: 2, scope: !716, file: !3, line: 309, type: !233)
!722 = !DILocalVariable(name: "data", arg: 3, scope: !716, file: !3, line: 309, type: !282)
!723 = !DILocalVariable(name: "size", arg: 4, scope: !716, file: !3, line: 309, type: !251)
!724 = !DILocation(line: 309, column: 38, scope: !716)
!725 = !DILocation(line: 309, column: 50, scope: !716)
!726 = !DILocation(line: 309, column: 60, scope: !716)
!727 = !DILocation(line: 309, column: 70, scope: !716)
!728 = !DILocation(line: 311, column: 18, scope: !729)
!729 = distinct !DILexicalBlock(scope: !716, file: !3, line: 311, column: 9)
!730 = !{!698, !500, i64 12}
!731 = !DILocation(line: 311, column: 9, scope: !729)
!732 = !DILocation(line: 314, column: 94, scope: !733)
!733 = distinct !DILexicalBlock(scope: !729, file: !3, line: 313, column: 12)
!734 = !DILocation(line: 311, column: 9, scope: !716)
!735 = !DILocation(line: 312, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !729, file: !3, line: 311, column: 34)
!737 = !DILocation(line: 313, column: 5, scope: !736)
!738 = !DILocation(line: 314, column: 11, scope: !733)
!739 = !DILocation(line: 314, column: 24, scope: !733)
!740 = !DILocation(line: 314, column: 49, scope: !733)
!741 = !{!698, !500, i64 8}
!742 = !DILocation(line: 314, column: 9, scope: !733)
!743 = !DILocation(line: 316, column: 1, scope: !716)
!744 = distinct !DISubprogram(name: "l2cap_emit_credits", scope: !3, file: !3, line: 366, type: !745, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !219, !233}
!747 = !{!748, !749, !750}
!748 = !DILocalVariable(name: "channel", arg: 1, scope: !744, file: !3, line: 366, type: !219)
!749 = !DILocalVariable(name: "credits", arg: 2, scope: !744, file: !3, line: 366, type: !233)
!750 = !DILocalVariable(name: "event", scope: !744, file: !3, line: 368, type: !751)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 40, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 5)
!754 = !DILocation(line: 366, column: 42, scope: !744)
!755 = !DILocation(line: 366, column: 54, scope: !744)
!756 = !DILocation(line: 368, column: 5, scope: !744)
!757 = !DILocation(line: 368, column: 8, scope: !744)
!758 = !DILocation(line: 372, column: 14, scope: !744)
!759 = !DILocation(line: 373, column: 5, scope: !744)
!760 = !DILocation(line: 373, column: 14, scope: !744)
!761 = !DILocation(line: 374, column: 54, scope: !744)
!762 = !{!698, !509, i64 30}
!763 = !DILocation(line: 374, column: 5, scope: !744)
!764 = !DILocation(line: 375, column: 5, scope: !744)
!765 = !DILocation(line: 375, column: 14, scope: !744)
!766 = !DILocation(line: 376, column: 5, scope: !744)
!767 = !DILocation(line: 377, column: 1, scope: !744)
!768 = distinct !DISubprogram(name: "l2cap_hand_out_credits", scope: !3, file: !3, line: 380, type: !769, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null}
!771 = !{!772, !773}
!772 = !DILocalVariable(name: "it", scope: !768, file: !3, line: 383, type: !211)
!773 = !DILocalVariable(name: "channel", scope: !774, file: !3, line: 388, type: !219)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 386, column: 9)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 384, column: 82)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 384, column: 5)
!777 = distinct !DILexicalBlock(scope: !768, file: !3, line: 384, column: 5)
!778 = !DILocation(line: 384, column: 33, scope: !777)
!779 = !DILocation(line: 384, column: 46, scope: !777)
!780 = !DILocation(line: 383, column: 20, scope: !768)
!781 = !DILocation(line: 384, column: 5, scope: !782)
!782 = !DILexicalBlockFile(scope: !777, file: !3, discriminator: 1)
!783 = !DILocation(line: 388, column: 40, scope: !774)
!784 = !DILocation(line: 388, column: 30, scope: !774)
!785 = !DILocation(line: 389, column: 26, scope: !786)
!786 = distinct !DILexicalBlock(scope: !774, file: !3, line: 389, column: 17)
!787 = !DILocation(line: 389, column: 44, scope: !786)
!788 = !{!698, !501, i64 18}
!789 = !DILocation(line: 389, column: 50, scope: !786)
!790 = !DILocation(line: 389, column: 17, scope: !774)
!791 = !DILocation(line: 392, column: 54, scope: !792)
!792 = distinct !DILexicalBlock(scope: !774, file: !3, line: 392, column: 17)
!793 = !{!698, !509, i64 4}
!794 = !DILocation(line: 392, column: 17, scope: !792)
!795 = !DILocation(line: 392, column: 62, scope: !792)
!796 = !DILocation(line: 392, column: 17, scope: !774)
!797 = !DILocation(line: 393, column: 17, scope: !798)
!798 = distinct !DILexicalBlock(scope: !792, file: !3, line: 392, column: 89)
!799 = !DILocation(line: 394, column: 13, scope: !798)
!800 = !DILocation(line: 384, column: 76, scope: !801)
!801 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 2)
!802 = distinct !{!802, !803, !804}
!803 = !DILocation(line: 384, column: 5, scope: !777)
!804 = !DILocation(line: 396, column: 5, scope: !777)
!805 = !DILocation(line: 397, column: 1, scope: !768)
!806 = distinct !DISubprogram(name: "l2cap_hand_out_credits_for_send", scope: !3, file: !3, line: 399, type: !769, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !807)
!807 = !{!808, !809}
!808 = !DILocalVariable(name: "it", scope: !806, file: !3, line: 402, type: !211)
!809 = !DILocalVariable(name: "channel", scope: !810, file: !3, line: 406, type: !219)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 405, column: 9)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 403, column: 82)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 403, column: 5)
!813 = distinct !DILexicalBlock(scope: !806, file: !3, line: 403, column: 5)
!814 = !DILocation(line: 403, column: 33, scope: !813)
!815 = !DILocation(line: 403, column: 46, scope: !813)
!816 = !DILocation(line: 402, column: 20, scope: !806)
!817 = !DILocation(line: 403, column: 5, scope: !818)
!818 = !DILexicalBlockFile(scope: !813, file: !3, discriminator: 1)
!819 = !DILocation(line: 406, column: 30, scope: !810)
!820 = !DILocation(line: 407, column: 26, scope: !821)
!821 = distinct !DILexicalBlock(scope: !810, file: !3, line: 407, column: 17)
!822 = !DILocation(line: 407, column: 44, scope: !821)
!823 = !DILocation(line: 407, column: 50, scope: !821)
!824 = !DILocation(line: 407, column: 17, scope: !810)
!825 = !DILocation(line: 406, column: 40, scope: !810)
!826 = !DILocation(line: 410, column: 13, scope: !810)
!827 = !DILocation(line: 411, column: 9, scope: !811)
!828 = !DILocation(line: 403, column: 76, scope: !829)
!829 = !DILexicalBlockFile(scope: !812, file: !3, discriminator: 2)
!830 = distinct !{!830, !831, !832}
!831 = !DILocation(line: 403, column: 5, scope: !813)
!832 = !DILocation(line: 412, column: 5, scope: !813)
!833 = !DILocation(line: 413, column: 1, scope: !806)
!834 = distinct !DISubprogram(name: "l2cap_get_local_cid_via_psm", scope: !3, file: !3, line: 452, type: !835, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!251, !251}
!837 = !{!838, !839, !840}
!838 = !DILocalVariable(name: "psm", arg: 1, scope: !834, file: !3, line: 452, type: !251)
!839 = !DILocalVariable(name: "it", scope: !834, file: !3, line: 454, type: !211)
!840 = !DILocalVariable(name: "channel", scope: !841, file: !3, line: 457, type: !219)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 456, column: 82)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 456, column: 5)
!843 = distinct !DILexicalBlock(scope: !834, file: !3, line: 456, column: 5)
!844 = !DILocation(line: 452, column: 37, scope: !834)
!845 = !DILocation(line: 456, column: 33, scope: !843)
!846 = !DILocation(line: 456, column: 46, scope: !843)
!847 = !DILocation(line: 454, column: 20, scope: !834)
!848 = !DILocation(line: 456, column: 5, scope: !849)
!849 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 1)
!850 = !DILocation(line: 458, column: 40, scope: !851)
!851 = distinct !DILexicalBlock(scope: !841, file: !3, line: 458, column: 13)
!852 = !DILocation(line: 458, column: 44, scope: !851)
!853 = !DILocation(line: 458, column: 13, scope: !841)
!854 = !DILocation(line: 458, column: 22, scope: !851)
!855 = !DILocation(line: 459, column: 47, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !3, line: 458, column: 52)
!857 = !DILocation(line: 456, column: 76, scope: !858)
!858 = !DILexicalBlockFile(scope: !842, file: !3, discriminator: 2)
!859 = distinct !{!859, !860, !861}
!860 = !DILocation(line: 456, column: 5, scope: !843)
!861 = !DILocation(line: 461, column: 5, scope: !843)
!862 = !DILocation(line: 463, column: 1, scope: !834)
!863 = distinct !DISubprogram(name: "l2cap_get_channel_for_local_cid", scope: !3, file: !3, line: 464, type: !864, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!219, !251}
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "local_cid", arg: 1, scope: !863, file: !3, line: 464, type: !251)
!868 = !DILocalVariable(name: "it", scope: !863, file: !3, line: 466, type: !211)
!869 = !DILocalVariable(name: "channel", scope: !870, file: !3, line: 470, type: !219)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 469, column: 82)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 469, column: 5)
!872 = distinct !DILexicalBlock(scope: !863, file: !3, line: 469, column: 5)
!873 = !DILocation(line: 464, column: 54, scope: !863)
!874 = !DILocation(line: 468, column: 5, scope: !863)
!875 = !DILocation(line: 469, column: 33, scope: !872)
!876 = !DILocation(line: 469, column: 46, scope: !872)
!877 = !DILocation(line: 466, column: 20, scope: !863)
!878 = !DILocation(line: 469, column: 5, scope: !879)
!879 = !DILexicalBlockFile(scope: !872, file: !3, discriminator: 1)
!880 = !DILocation(line: 470, column: 26, scope: !870)
!881 = !DILocation(line: 471, column: 22, scope: !882)
!882 = distinct !DILexicalBlock(scope: !870, file: !3, line: 471, column: 13)
!883 = !DILocation(line: 471, column: 40, scope: !882)
!884 = !DILocation(line: 471, column: 50, scope: !882)
!885 = !DILocation(line: 471, column: 13, scope: !870)
!886 = !DILocation(line: 470, column: 36, scope: !870)
!887 = !DILocation(line: 472, column: 13, scope: !888)
!888 = distinct !DILexicalBlock(scope: !882, file: !3, line: 471, column: 64)
!889 = !DILocation(line: 469, column: 76, scope: !890)
!890 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 2)
!891 = distinct !{!891, !892, !893}
!892 = !DILocation(line: 469, column: 5, scope: !872)
!893 = !DILocation(line: 475, column: 5, scope: !872)
!894 = !DILocation(line: 477, column: 5, scope: !863)
!895 = !DILocation(line: 478, column: 5, scope: !863)
!896 = !DILocation(line: 479, column: 1, scope: !863)
!897 = distinct !DISubprogram(name: "l2cap_can_send_packet_now", scope: !3, file: !3, line: 481, type: !898, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!331, !251}
!900 = !{!901, !902}
!901 = !DILocalVariable(name: "local_cid", arg: 1, scope: !897, file: !3, line: 481, type: !251)
!902 = !DILocalVariable(name: "channel", scope: !897, file: !3, line: 483, type: !219)
!903 = !DILocation(line: 481, column: 36, scope: !897)
!904 = !DILocation(line: 483, column: 32, scope: !897)
!905 = !DILocation(line: 483, column: 22, scope: !897)
!906 = !DILocation(line: 485, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 484, column: 19)
!908 = distinct !DILexicalBlock(scope: !897, file: !3, line: 484, column: 9)
!909 = !DILocation(line: 488, column: 1, scope: !897)
!910 = distinct !DISubprogram(name: "l2cap_get_remote_mtu_for_local_cid", scope: !3, file: !3, line: 490, type: !835, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !911)
!911 = !{!912, !913}
!912 = !DILocalVariable(name: "local_cid", arg: 1, scope: !910, file: !3, line: 490, type: !251)
!913 = !DILocalVariable(name: "channel", scope: !910, file: !3, line: 492, type: !219)
!914 = !DILocation(line: 490, column: 44, scope: !910)
!915 = !DILocation(line: 492, column: 32, scope: !910)
!916 = !DILocation(line: 492, column: 22, scope: !910)
!917 = !DILocation(line: 493, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !910, file: !3, line: 493, column: 9)
!919 = !DILocation(line: 493, column: 9, scope: !910)
!920 = !DILocation(line: 494, column: 43, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 493, column: 18)
!922 = !{!698, !509, i64 36}
!923 = !DILocation(line: 494, column: 9, scope: !921)
!924 = !DILocation(line: 497, column: 1, scope: !910)
!925 = distinct !DISubprogram(name: "l2cap_send_signaling_packet", scope: !3, file: !3, line: 499, type: !926, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !929)
!926 = !DISubroutineType(types: !927)
!927 = !{!331, !225, !928, !268, null}
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "L2CAP_SIGNALING_COMMANDS", file: !41, line: 71, baseType: !40)
!929 = !{!930, !931, !932, !933, !934, !940}
!930 = !DILocalVariable(name: "handle", arg: 1, scope: !925, file: !3, line: 499, type: !225)
!931 = !DILocalVariable(name: "cmd", arg: 2, scope: !925, file: !3, line: 499, type: !928)
!932 = !DILocalVariable(name: "identifier", arg: 3, scope: !925, file: !3, line: 499, type: !268)
!933 = !DILocalVariable(name: "acl_buffer", scope: !925, file: !3, line: 502, type: !282)
!934 = !DILocalVariable(name: "argptr", scope: !925, file: !3, line: 503, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !936, line: 30, baseType: !937)
!936 = !DIFile(filename: "/opt/q32s/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 503, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 32)
!939 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!940 = !DILocalVariable(name: "len", scope: !925, file: !3, line: 504, type: !251)
!941 = !DILocation(line: 499, column: 50, scope: !925)
!942 = !DILocation(line: 499, column: 83, scope: !925)
!943 = !DILocation(line: 499, column: 92, scope: !925)
!944 = !DILocation(line: 503, column: 5, scope: !925)
!945 = !DILocation(line: 506, column: 5, scope: !925)
!946 = !DILocation(line: 507, column: 39, scope: !925)
!947 = !DILocation(line: 503, column: 13, scope: !925)
!948 = !DILocation(line: 507, column: 11, scope: !925)
!949 = !DILocation(line: 504, column: 9, scope: !925)
!950 = !DILocation(line: 508, column: 5, scope: !925)
!951 = !DILocation(line: 510, column: 18, scope: !925)
!952 = !DILocation(line: 502, column: 9, scope: !925)
!953 = !DILocation(line: 511, column: 5, scope: !954)
!954 = !DILexicalBlockFile(scope: !955, file: !3, discriminator: 1)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 511, column: 5)
!956 = distinct !DILexicalBlock(scope: !925, file: !3, line: 511, column: 5)
!957 = !DILocation(line: 511, column: 5, scope: !958)
!958 = !DILexicalBlockFile(scope: !956, file: !3, discriminator: 1)
!959 = !DILocation(line: 511, column: 5, scope: !960)
!960 = !DILexicalBlockFile(scope: !961, file: !3, discriminator: 2)
!961 = distinct !DILexicalBlock(scope: !955, file: !3, line: 511, column: 5)
!962 = !DILocation(line: 511, column: 5, scope: !963)
!963 = !DILexicalBlockFile(scope: !964, file: !3, discriminator: 3)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 511, column: 5)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 511, column: 5)
!966 = !DILocation(line: 511, column: 5, scope: !967)
!967 = !DILexicalBlockFile(scope: !964, file: !3, discriminator: 9)
!968 = !DILocation(line: 511, column: 5, scope: !969)
!969 = !DILexicalBlockFile(scope: !964, file: !3, discriminator: 10)
!970 = !DILocation(line: 511, column: 5, scope: !971)
!971 = !DILexicalBlockFile(scope: !972, file: !3, discriminator: 5)
!972 = distinct !DILexicalBlock(scope: !955, file: !3, line: 511, column: 5)
!973 = !DILocation(line: 511, column: 5, scope: !974)
!974 = !DILexicalBlockFile(scope: !975, file: !3, discriminator: 6)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 511, column: 5)
!976 = distinct !DILexicalBlock(scope: !972, file: !3, line: 511, column: 5)
!977 = !DILocation(line: 512, column: 5, scope: !925)
!978 = !DILocation(line: 513, column: 74, scope: !925)
!979 = !DILocation(line: 513, column: 86, scope: !925)
!980 = !DILocation(line: 513, column: 11, scope: !925)
!981 = !DILocation(line: 514, column: 5, scope: !925)
!982 = !DILocation(line: 516, column: 50, scope: !925)
!983 = !DILocation(line: 516, column: 12, scope: !925)
!984 = !DILocation(line: 517, column: 1, scope: !925)
!985 = !DILocation(line: 516, column: 5, scope: !925)
!986 = distinct !DISubprogram(name: "cpu_reset", scope: !234, file: !234, line: 145, type: !769, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!987 = !{}
!988 = !DILocation(line: 148, column: 5, scope: !986)
!989 = !DILocation(line: 149, column: 1, scope: !986)
!990 = distinct !DISubprogram(name: "l2cap_send_prepared", scope: !3, file: !3, line: 585, type: !991, isLocal: false, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!331, !282, !251, !251, !233}
!993 = !{!994, !995, !996, !997, !998, !999}
!994 = !DILocalVariable(name: "acl_buffer", arg: 1, scope: !990, file: !3, line: 585, type: !282)
!995 = !DILocalVariable(name: "local_cid", arg: 2, scope: !990, file: !3, line: 585, type: !251)
!996 = !DILocalVariable(name: "len", arg: 3, scope: !990, file: !3, line: 585, type: !251)
!997 = !DILocalVariable(name: "flag", arg: 4, scope: !990, file: !3, line: 585, type: !233)
!998 = !DILocalVariable(name: "err", scope: !990, file: !3, line: 588, type: !331)
!999 = !DILocalVariable(name: "channel", scope: !990, file: !3, line: 589, type: !219)
!1000 = !DILocation(line: 585, column: 29, scope: !990)
!1001 = !DILocation(line: 585, column: 46, scope: !990)
!1002 = !DILocation(line: 585, column: 61, scope: !990)
!1003 = !DILocation(line: 585, column: 69, scope: !990)
!1004 = !DILocation(line: 590, column: 15, scope: !990)
!1005 = !DILocation(line: 589, column: 22, scope: !990)
!1006 = !DILocation(line: 591, column: 10, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !990, file: !3, line: 591, column: 9)
!1008 = !DILocation(line: 591, column: 9, scope: !990)
!1009 = !DILocation(line: 592, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 592, column: 9)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 591, column: 19)
!1012 = !DILocation(line: 592, column: 9, scope: !1011)
!1013 = !DILocation(line: 592, column: 9, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1010, file: !3, discriminator: 1)
!1015 = !DILocation(line: 596, column: 5, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !990, file: !3, line: 596, column: 5)
!1017 = !DILocation(line: 596, column: 5, scope: !990)
!1018 = !DILocation(line: 601, column: 41, scope: !990)
!1019 = !DILocation(line: 596, column: 5, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1016, file: !3, discriminator: 1)
!1021 = !DILocation(line: 601, column: 48, scope: !990)
!1022 = !DILocation(line: 601, column: 5, scope: !990)
!1023 = !DILocation(line: 603, column: 33, scope: !990)
!1024 = !DILocation(line: 603, column: 37, scope: !990)
!1025 = !DILocation(line: 603, column: 5, scope: !990)
!1026 = !DILocation(line: 605, column: 5, scope: !990)
!1027 = !DILocation(line: 607, column: 59, scope: !990)
!1028 = !{!698, !509, i64 32}
!1029 = !DILocation(line: 607, column: 5, scope: !990)
!1030 = !DILocation(line: 609, column: 53, scope: !990)
!1031 = !DILocation(line: 609, column: 11, scope: !990)
!1032 = !DILocation(line: 588, column: 9, scope: !990)
!1033 = !DILocation(line: 611, column: 5, scope: !990)
!1034 = !DILocation(line: 612, column: 1, scope: !990)
!1035 = distinct !DISubprogram(name: "l2cap_send_internal", scope: !3, file: !3, line: 616, type: !1036, isLocal: false, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!331, !251, !282, !251, !233}
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044}
!1039 = !DILocalVariable(name: "local_cid", arg: 1, scope: !1035, file: !3, line: 616, type: !251)
!1040 = !DILocalVariable(name: "data", arg: 2, scope: !1035, file: !3, line: 616, type: !282)
!1041 = !DILocalVariable(name: "len", arg: 3, scope: !1035, file: !3, line: 616, type: !251)
!1042 = !DILocalVariable(name: "flag", arg: 4, scope: !1035, file: !3, line: 616, type: !233)
!1043 = !DILocalVariable(name: "acl_buffer", scope: !1035, file: !3, line: 619, type: !282)
!1044 = !DILocalVariable(name: "channel", scope: !1035, file: !3, line: 620, type: !219)
!1045 = !DILocation(line: 616, column: 29, scope: !1035)
!1046 = !DILocation(line: 616, column: 44, scope: !1035)
!1047 = !DILocation(line: 616, column: 54, scope: !1035)
!1048 = !DILocation(line: 616, column: 62, scope: !1035)
!1049 = !DILocation(line: 621, column: 15, scope: !1035)
!1050 = !DILocation(line: 620, column: 22, scope: !1035)
!1051 = !DILocation(line: 622, column: 10, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 622, column: 9)
!1053 = !DILocation(line: 622, column: 9, scope: !1035)
!1054 = !DILocation(line: 625, column: 53, scope: !1035)
!1055 = !DILocation(line: 625, column: 57, scope: !1035)
!1056 = !DILocation(line: 625, column: 18, scope: !1035)
!1057 = !DILocation(line: 619, column: 9, scope: !1035)
!1058 = !DILocation(line: 626, column: 5, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1060, file: !3, discriminator: 1)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 626, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 626, column: 5)
!1062 = !DILocation(line: 626, column: 5, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1061, file: !3, discriminator: 1)
!1064 = !DILocation(line: 626, column: 5, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !3, discriminator: 2)
!1066 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 626, column: 5)
!1067 = !DILocation(line: 626, column: 5, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 3)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 626, column: 5)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 626, column: 5)
!1071 = !DILocation(line: 626, column: 5, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 9)
!1073 = !DILocation(line: 626, column: 5, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 10)
!1075 = !DILocation(line: 626, column: 5, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !3, discriminator: 5)
!1077 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 626, column: 5)
!1078 = !DILocation(line: 626, column: 5, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1080, file: !3, discriminator: 6)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 626, column: 5)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 626, column: 5)
!1082 = !DILocation(line: 627, column: 36, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 627, column: 9)
!1084 = !{!698, !501, i64 38}
!1085 = !DILocation(line: 627, column: 49, scope: !1083)
!1086 = !DILocation(line: 627, column: 9, scope: !1035)
!1087 = !DILocation(line: 630, column: 17, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 627, column: 55)
!1089 = !DILocation(line: 630, column: 9, scope: !1088)
!1090 = !DILocation(line: 631, column: 16, scope: !1088)
!1091 = !DILocation(line: 631, column: 9, scope: !1088)
!1092 = !DILocation(line: 641, column: 1, scope: !1035)
!1093 = distinct !DISubprogram(name: "l2cap_run", scope: !3, file: !3, line: 657, type: !769, isLocal: false, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1094)
!1094 = !{!1095, !1096, !1098, !1099, !1100, !1101, !1102, !1103, !1107, !1108, !1109, !1114, !1118, !1122, !1131}
!1095 = !DILocalVariable(name: "send_acl_packet", scope: !1093, file: !3, line: 660, type: !233)
!1096 = !DILocalVariable(name: "connect_addr", scope: !1093, file: !3, line: 661, type: !1097)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 48, elements: !259)
!1098 = !DILocalVariable(name: "handle", scope: !1093, file: !3, line: 662, type: !225)
!1099 = !DILocalVariable(name: "sig_id", scope: !1093, file: !3, line: 663, type: !233)
!1100 = !DILocalVariable(name: "infoType", scope: !1093, file: !3, line: 664, type: !251)
!1101 = !DILocalVariable(name: "result", scope: !1093, file: !3, line: 665, type: !251)
!1102 = !DILocalVariable(name: "i", scope: !1093, file: !3, line: 666, type: !331)
!1103 = !DILocalVariable(name: "config_options", scope: !1093, file: !3, line: 667, type: !1104)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 96, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 12)
!1107 = !DILocalVariable(name: "it", scope: !1093, file: !3, line: 668, type: !211)
!1108 = !DILocalVariable(name: "next", scope: !1093, file: !3, line: 669, type: !211)
!1109 = !DILocalVariable(name: "features", scope: !1110, file: !3, line: 693, type: !268)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 692, column: 32)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 692, column: 17)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 679, column: 76)
!1113 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 672, column: 71)
!1114 = !DILocalVariable(name: "channel", scope: !1115, file: !3, line: 755, type: !219)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 754, column: 78)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 754, column: 5)
!1117 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 754, column: 5)
!1118 = !DILocalVariable(name: "flags", scope: !1119, file: !3, line: 832, type: !251)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 831, column: 95)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 831, column: 17)
!1121 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 761, column: 51)
!1122 = !DILocalVariable(name: "ble_it", scope: !1123, file: !3, line: 929, type: !1125)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 926, column: 50)
!1124 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 926, column: 9)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_iterator_t", file: !213, line: 65, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 61, size: 96, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "advance_on_next", scope: !1126, file: !213, line: 62, baseType: !331, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1126, file: !213, line: 63, baseType: !441, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !1126, file: !213, line: 64, baseType: !441, size: 32, offset: 64)
!1131 = !DILocalVariable(name: "connection", scope: !1132, file: !3, line: 936, type: !283)
!1132 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 932, column: 56)
!1133 = !DILocation(line: 660, column: 8, scope: !1093)
!1134 = !DILocation(line: 661, column: 5, scope: !1093)
!1135 = !DILocation(line: 661, column: 8, scope: !1093)
!1136 = !DILocation(line: 667, column: 5, scope: !1093)
!1137 = !DILocation(line: 667, column: 9, scope: !1093)
!1138 = !DILocation(line: 672, column: 12, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1093, file: !3, discriminator: 1)
!1140 = !DILocation(line: 672, column: 42, scope: !1139)
!1141 = !DILocation(line: 672, column: 5, scope: !1139)
!1142 = !DILocation(line: 674, column: 71, scope: !1113)
!1143 = !{!1144, !509, i64 0}
!1144 = !{!"l2cap_signaling_response", !509, i64 0, !501, i64 2, !501, i64 3, !509, i64 4, !509, i64 6}
!1145 = !DILocation(line: 662, column: 22, scope: !1093)
!1146 = !DILocation(line: 675, column: 71, scope: !1113)
!1147 = !{!1144, !501, i64 2}
!1148 = !DILocation(line: 663, column: 8, scope: !1093)
!1149 = !DILocation(line: 676, column: 73, scope: !1113)
!1150 = !{!1144, !509, i64 6}
!1151 = !DILocation(line: 664, column: 9, scope: !1093)
!1152 = !DILocation(line: 665, column: 9, scope: !1093)
!1153 = !DILocation(line: 679, column: 70, scope: !1113)
!1154 = !{!1144, !501, i64 3}
!1155 = !DILocation(line: 679, column: 9, scope: !1113)
!1156 = !DILocation(line: 681, column: 13, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 681, column: 13)
!1158 = !DILocation(line: 681, column: 13, scope: !1112)
!1159 = !DILocation(line: 681, column: 13, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1157, file: !3, discriminator: 1)
!1161 = !DILocation(line: 682, column: 70, scope: !1112)
!1162 = !DILocation(line: 682, column: 84, scope: !1112)
!1163 = !DILocation(line: 682, column: 13, scope: !1112)
!1164 = !DILocation(line: 683, column: 13, scope: !1112)
!1165 = !DILocation(line: 691, column: 13, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 691, column: 13)
!1167 = !DILocation(line: 691, column: 13, scope: !1112)
!1168 = !DILocation(line: 691, column: 13, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1166, file: !3, discriminator: 1)
!1170 = !DILocation(line: 692, column: 26, scope: !1111)
!1171 = !DILocation(line: 692, column: 17, scope: !1112)
!1172 = !DILocation(line: 693, column: 17, scope: !1110)
!1173 = !DILocation(line: 693, column: 32, scope: !1110)
!1174 = !DILocation(line: 693, column: 62, scope: !1110)
!1175 = !DILocation(line: 693, column: 21, scope: !1110)
!1176 = !DILocation(line: 695, column: 75, scope: !1110)
!1177 = !DILocation(line: 695, column: 17, scope: !1110)
!1178 = !DILocation(line: 696, column: 13, scope: !1111)
!1179 = !DILocation(line: 696, column: 13, scope: !1110)
!1180 = !DILocation(line: 698, column: 75, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 696, column: 20)
!1182 = !DILocation(line: 698, column: 17, scope: !1181)
!1183 = !DILocation(line: 702, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 702, column: 13)
!1185 = !DILocation(line: 702, column: 13, scope: !1112)
!1186 = !DILocation(line: 702, column: 13, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1184, file: !3, discriminator: 1)
!1188 = !DILocation(line: 703, column: 65, scope: !1112)
!1189 = !DILocation(line: 703, column: 73, scope: !1112)
!1190 = !DILocation(line: 703, column: 13, scope: !1112)
!1191 = !DILocation(line: 704, column: 13, scope: !1112)
!1192 = !DILocation(line: 709, column: 17, scope: !1112)
!1193 = !DILocation(line: 710, column: 22, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 710, column: 21)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 709, column: 58)
!1196 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 709, column: 17)
!1197 = !DILocation(line: 710, column: 21, scope: !1195)
!1198 = !DILocation(line: 715, column: 93, scope: !1195)
!1199 = !DILocation(line: 715, column: 113, scope: !1195)
!1200 = !DILocation(line: 715, column: 17, scope: !1195)
!1201 = !DILocation(line: 716, column: 13, scope: !1195)
!1202 = !DILocation(line: 721, column: 17, scope: !1112)
!1203 = !DILocation(line: 722, column: 22, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 722, column: 21)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 721, column: 58)
!1206 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 721, column: 17)
!1207 = !DILocation(line: 722, column: 21, scope: !1205)
!1208 = !DILocation(line: 727, column: 72, scope: !1205)
!1209 = !DILocation(line: 727, column: 80, scope: !1205)
!1210 = !DILocation(line: 727, column: 17, scope: !1205)
!1211 = !DILocation(line: 728, column: 13, scope: !1205)
!1212 = !DILocation(line: 740, column: 13, scope: !1113)
!1213 = distinct !{!1213, !1214, !1215}
!1214 = !DILocation(line: 672, column: 5, scope: !1093)
!1215 = !DILocation(line: 751, column: 5, scope: !1093)
!1216 = !DILocation(line: 746, column: 66, scope: !1113)
!1217 = !DILocation(line: 666, column: 9, scope: !1093)
!1218 = !DILocation(line: 748, column: 23, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1220, file: !3, discriminator: 1)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 748, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 748, column: 9)
!1222 = !DILocation(line: 748, column: 9, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1221, file: !3, discriminator: 1)
!1224 = !DILocation(line: 749, column: 21, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 748, column: 89)
!1226 = !DILocation(line: 749, column: 128, scope: !1225)
!1227 = !DILocation(line: 749, column: 76, scope: !1225)
!1228 = !DILocation(line: 749, column: 13, scope: !1225)
!1229 = !DILocation(line: 748, column: 55, scope: !1219)
!1230 = distinct !{!1230, !1231, !1232}
!1231 = !DILocation(line: 748, column: 9, scope: !1221)
!1232 = !DILocation(line: 750, column: 9, scope: !1221)
!1233 = !DILocation(line: 754, column: 46, scope: !1117)
!1234 = !DILocation(line: 668, column: 20, scope: !1093)
!1235 = !DILocation(line: 754, column: 5, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1117, file: !3, discriminator: 1)
!1237 = !DILocation(line: 757, column: 20, scope: !1115)
!1238 = !{!538, !500, i64 0}
!1239 = !DILocation(line: 669, column: 20, scope: !1093)
!1240 = !DILocation(line: 755, column: 26, scope: !1115)
!1241 = !DILocation(line: 761, column: 26, scope: !1115)
!1242 = !DILocation(line: 761, column: 44, scope: !1115)
!1243 = !DILocation(line: 761, column: 9, scope: !1115)
!1244 = !DILocation(line: 764, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 764, column: 13)
!1246 = !DILocation(line: 764, column: 13, scope: !1121)
!1247 = !DILocation(line: 764, column: 13, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1245, file: !3, discriminator: 1)
!1249 = !DILocation(line: 764, column: 13, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1245, file: !3, discriminator: 2)
!1251 = !DILocation(line: 766, column: 46, scope: !1121)
!1252 = !DILocation(line: 768, column: 13, scope: !1121)
!1253 = !DILocation(line: 769, column: 53, scope: !1121)
!1254 = !DILocation(line: 769, column: 13, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1121, file: !3, discriminator: 1)
!1256 = !DILocation(line: 773, column: 13, scope: !1121)
!1257 = !DILocation(line: 776, column: 13, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 776, column: 13)
!1259 = !DILocation(line: 776, column: 13, scope: !1121)
!1260 = !DILocation(line: 776, column: 13, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1258, file: !3, discriminator: 1)
!1262 = !DILocation(line: 777, column: 50, scope: !1121)
!1263 = !DILocation(line: 777, column: 106, scope: !1121)
!1264 = !{!698, !501, i64 19}
!1265 = !DILocation(line: 777, column: 79, scope: !1121)
!1266 = !DILocation(line: 777, column: 154, scope: !1121)
!1267 = !{!698, !501, i64 21}
!1268 = !DILocation(line: 777, column: 127, scope: !1121)
!1269 = !DILocation(line: 777, column: 13, scope: !1121)
!1270 = !DILocation(line: 778, column: 44, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 778, column: 17)
!1272 = !DILocation(line: 778, column: 51, scope: !1271)
!1273 = !DILocation(line: 778, column: 17, scope: !1121)
!1274 = !DILocation(line: 780, column: 50, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 778, column: 62)
!1276 = !DILocation(line: 781, column: 13, scope: !1275)
!1277 = !DILocation(line: 783, column: 17, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 781, column: 20)
!1279 = !DILocation(line: 784, column: 51, scope: !1278)
!1280 = !DILocation(line: 784, column: 17, scope: !1278)
!1281 = !DILocation(line: 789, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 789, column: 13)
!1283 = !DILocation(line: 789, column: 13, scope: !1121)
!1284 = !DILocation(line: 789, column: 13, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1282, file: !3, discriminator: 1)
!1286 = !DILocation(line: 790, column: 46, scope: !1121)
!1287 = !DILocalVariable(name: "channel", arg: 1, scope: !1288, file: !3, line: 644, type: !219)
!1288 = distinct !DISubprogram(name: "channelStateVarSetFlag", scope: !3, file: !3, line: 644, type: !1289, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !219, !408}
!1291 = !{!1287, !1292}
!1292 = !DILocalVariable(name: "flag", arg: 2, scope: !1288, file: !3, line: 644, type: !408)
!1293 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 791, column: 13, scope: !1121)
!1295 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !1294)
!1296 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !1294)
!1297 = !{!698, !509, i64 16}
!1298 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !1294)
!1299 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !1294)
!1300 = !DILocation(line: 805, column: 50, scope: !1121)
!1301 = !DILocation(line: 805, column: 106, scope: !1121)
!1302 = !DILocation(line: 805, column: 79, scope: !1121)
!1303 = !DILocation(line: 805, column: 148, scope: !1121)
!1304 = !DILocation(line: 805, column: 121, scope: !1121)
!1305 = !DILocation(line: 805, column: 186, scope: !1121)
!1306 = !DILocation(line: 805, column: 159, scope: !1121)
!1307 = !DILocation(line: 805, column: 13, scope: !1121)
!1308 = !DILocation(line: 806, column: 13, scope: !1121)
!1309 = !DILocation(line: 811, column: 49, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 811, column: 17)
!1311 = !DILocation(line: 811, column: 17, scope: !1310)
!1312 = !DILocation(line: 811, column: 115, scope: !1310)
!1313 = !DILocation(line: 812, column: 17, scope: !1310)
!1314 = !DILocation(line: 812, column: 21, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1310, file: !3, discriminator: 1)
!1316 = !DILocation(line: 812, column: 41, scope: !1315)
!1317 = !{!1318, !509, i64 8}
!1318 = !{!"_stack_config", !508, i64 0, !509, i64 4, !509, i64 6, !509, i64 8, !509, i64 10, !509, i64 12, !501, i64 14, !501, i64 15, !501, i64 16, !501, i64 17, !501, i64 17, !501, i64 17, !501, i64 17, !501, i64 18, !501, i64 18, !501, i64 18, !501, i64 18, !501, i64 18, !501, i64 18, !501, i64 18, !501, i64 18, !501, i64 19, !501, i64 19, !501, i64 19, !501, i64 19, !501, i64 19, !501, i64 19, !501, i64 19, !501, i64 19, !501, i64 20, !501, i64 20, !501, i64 20, !501, i64 21, !501, i64 22, !501, i64 23, !501, i64 24, !501, i64 25, !501, i64 31, !501, i64 31}
!1319 = !DILocation(line: 812, column: 61, scope: !1315)
!1320 = !DILocation(line: 811, column: 17, scope: !1255)
!1321 = !DILocation(line: 813, column: 17, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 813, column: 17)
!1323 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 812, column: 68)
!1324 = !DILocation(line: 813, column: 17, scope: !1323)
!1325 = distinct !{!1325, !1326, !1327}
!1326 = !DILocation(line: 754, column: 5, scope: !1117)
!1327 = !DILocation(line: 923, column: 5, scope: !1117)
!1328 = !DILocation(line: 813, column: 17, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1322, file: !3, discriminator: 1)
!1330 = !DILocation(line: 819, column: 48, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 819, column: 21)
!1332 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 818, column: 20)
!1333 = !DILocation(line: 819, column: 54, scope: !1331)
!1334 = !DILocation(line: 819, column: 21, scope: !1332)
!1335 = !DILocation(line: 822, column: 17, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 822, column: 17)
!1337 = !DILocation(line: 822, column: 17, scope: !1332)
!1338 = !DILocation(line: 822, column: 17, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1336, file: !3, discriminator: 1)
!1340 = !DILocation(line: 123, column: 9, scope: !1341, inlinedAt: !1343)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 123, column: 9)
!1342 = distinct !DISubprogram(name: "l2cap_next_sig_id", scope: !3, file: !3, line: 121, type: !679, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!1343 = distinct !DILocation(line: 823, column: 59, scope: !1332)
!1344 = !DILocation(line: 123, column: 39, scope: !1341, inlinedAt: !1343)
!1345 = !DILocation(line: 123, column: 56, scope: !1341, inlinedAt: !1343)
!1346 = !DILocation(line: 126, column: 55, scope: !1347, inlinedAt: !1343)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 125, column: 12)
!1348 = !DILocation(line: 123, column: 9, scope: !1342, inlinedAt: !1343)
!1349 = !DILocation(line: 823, column: 44, scope: !1332)
!1350 = !DILocation(line: 823, column: 57, scope: !1332)
!1351 = !{!698, !501, i64 20}
!1352 = !DILocation(line: 824, column: 51, scope: !1332)
!1353 = !DILocation(line: 825, column: 54, scope: !1332)
!1354 = !DILocation(line: 825, column: 83, scope: !1332)
!1355 = !DILocation(line: 825, column: 17, scope: !1332)
!1356 = !DILocation(line: 830, column: 13, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 830, column: 13)
!1358 = !DILocation(line: 830, column: 13, scope: !1121)
!1359 = !DILocation(line: 830, column: 13, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1357, file: !3, discriminator: 1)
!1361 = !DILocation(line: 831, column: 44, scope: !1120)
!1362 = !DILocation(line: 831, column: 17, scope: !1120)
!1363 = !DILocation(line: 831, column: 54, scope: !1120)
!1364 = !DILocation(line: 831, column: 17, scope: !1121)
!1365 = !DILocation(line: 832, column: 21, scope: !1119)
!1366 = !DILocalVariable(name: "channel", arg: 1, scope: !1367, file: !3, line: 649, type: !219)
!1367 = distinct !DISubprogram(name: "channelStateVarClearFlag", scope: !3, file: !3, line: 649, type: !1289, isLocal: true, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1368)
!1368 = !{!1366, !1369}
!1369 = !DILocalVariable(name: "flag", arg: 2, scope: !1367, file: !3, line: 649, type: !408)
!1370 = !DILocation(line: 649, column: 58, scope: !1367, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 833, column: 17, scope: !1119)
!1372 = !DILocation(line: 649, column: 91, scope: !1367, inlinedAt: !1371)
!1373 = !DILocation(line: 651, column: 107, scope: !1367, inlinedAt: !1371)
!1374 = !DILocation(line: 834, column: 58, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 834, column: 21)
!1376 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 837, column: 21, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 836, column: 24)
!1379 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !1377)
!1380 = !DILocation(line: 834, column: 21, scope: !1119)
!1381 = !DILocation(line: 651, column: 42, scope: !1367, inlinedAt: !1371)
!1382 = !DILocation(line: 839, column: 21, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 839, column: 21)
!1384 = !DILocation(line: 839, column: 58, scope: !1383)
!1385 = !DILocation(line: 839, column: 21, scope: !1119)
!1386 = !DILocation(line: 841, column: 68, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 839, column: 107)
!1388 = !DILocation(line: 841, column: 78, scope: !1387)
!1389 = !{!698, !501, i64 47}
!1390 = !DILocation(line: 841, column: 39, scope: !1387)
!1391 = !DILocation(line: 842, column: 39, scope: !1387)
!1392 = !DILocation(line: 843, column: 89, scope: !1387)
!1393 = !{!698, !509, i64 52}
!1394 = !DILocation(line: 843, column: 21, scope: !1387)
!1395 = !DILocation(line: 844, column: 58, scope: !1387)
!1396 = !DILocation(line: 844, column: 113, scope: !1387)
!1397 = !DILocation(line: 844, column: 86, scope: !1387)
!1398 = !DILocation(line: 844, column: 155, scope: !1387)
!1399 = !DILocation(line: 844, column: 128, scope: !1387)
!1400 = !DILocation(line: 844, column: 21, scope: !1387)
!1401 = !DILocation(line: 845, column: 21, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 845, column: 21)
!1403 = !DILocation(line: 845, column: 21, scope: !1387)
!1404 = !DILocation(line: 845, column: 21, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1402, file: !3, discriminator: 1)
!1406 = !DILocation(line: 649, column: 58, scope: !1367, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 846, column: 21, scope: !1387)
!1408 = !DILocation(line: 649, column: 91, scope: !1367, inlinedAt: !1407)
!1409 = !DILocation(line: 651, column: 97, scope: !1367, inlinedAt: !1407)
!1410 = !DILocation(line: 651, column: 107, scope: !1367, inlinedAt: !1407)
!1411 = !DILocation(line: 651, column: 42, scope: !1367, inlinedAt: !1407)
!1412 = !DILocation(line: 848, column: 17, scope: !1387)
!1413 = !DILocation(line: 848, column: 65, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !3, discriminator: 1)
!1415 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 848, column: 28)
!1416 = !DILocation(line: 848, column: 28, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1383, file: !3, discriminator: 1)
!1418 = !DILocation(line: 849, column: 21, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 849, column: 21)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 848, column: 110)
!1421 = !DILocation(line: 849, column: 21, scope: !1420)
!1422 = !DILocation(line: 849, column: 21, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1419, file: !3, discriminator: 1)
!1424 = !DILocation(line: 850, column: 39, scope: !1420)
!1425 = !DILocation(line: 851, column: 39, scope: !1420)
!1426 = !DILocation(line: 852, column: 79, scope: !1420)
!1427 = !DILocation(line: 852, column: 21, scope: !1420)
!1428 = !DILocation(line: 853, column: 58, scope: !1420)
!1429 = !DILocation(line: 853, column: 113, scope: !1420)
!1430 = !DILocation(line: 853, column: 86, scope: !1420)
!1431 = !DILocation(line: 853, column: 155, scope: !1420)
!1432 = !DILocation(line: 853, column: 128, scope: !1420)
!1433 = !DILocation(line: 853, column: 21, scope: !1420)
!1434 = !DILocation(line: 649, column: 58, scope: !1367, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 854, column: 21, scope: !1420)
!1436 = !DILocation(line: 649, column: 91, scope: !1367, inlinedAt: !1435)
!1437 = !DILocation(line: 651, column: 97, scope: !1367, inlinedAt: !1435)
!1438 = !DILocation(line: 651, column: 107, scope: !1367, inlinedAt: !1435)
!1439 = !DILocation(line: 651, column: 42, scope: !1367, inlinedAt: !1435)
!1440 = !DILocation(line: 855, column: 17, scope: !1420)
!1441 = !DILocation(line: 855, column: 65, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1443, file: !3, discriminator: 1)
!1443 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 855, column: 28)
!1444 = !DILocation(line: 855, column: 28, scope: !1414)
!1445 = !DILocation(line: 871, column: 21, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 871, column: 21)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 870, column: 24)
!1448 = !DILocation(line: 871, column: 21, scope: !1447)
!1449 = !DILocation(line: 871, column: 21, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1446, file: !3, discriminator: 1)
!1451 = !DILocation(line: 872, column: 58, scope: !1447)
!1452 = !DILocation(line: 872, column: 113, scope: !1447)
!1453 = !DILocation(line: 872, column: 86, scope: !1447)
!1454 = !DILocation(line: 872, column: 155, scope: !1447)
!1455 = !DILocation(line: 872, column: 128, scope: !1447)
!1456 = !DILocation(line: 872, column: 21, scope: !1447)
!1457 = !DILocation(line: 651, column: 97, scope: !1367, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 874, column: 17, scope: !1119)
!1459 = !DILocation(line: 649, column: 58, scope: !1367, inlinedAt: !1458)
!1460 = !DILocation(line: 649, column: 91, scope: !1367, inlinedAt: !1458)
!1461 = !DILocation(line: 651, column: 107, scope: !1367, inlinedAt: !1458)
!1462 = !DILocation(line: 651, column: 42, scope: !1367, inlinedAt: !1458)
!1463 = !DILocation(line: 876, column: 13, scope: !1119)
!1464 = !DILocation(line: 876, column: 61, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1466, file: !3, discriminator: 1)
!1466 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 876, column: 24)
!1467 = !DILocation(line: 876, column: 24, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1120, file: !3, discriminator: 1)
!1469 = !DILocation(line: 877, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 877, column: 17)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 876, column: 102)
!1472 = !DILocation(line: 877, column: 17, scope: !1471)
!1473 = !DILocation(line: 877, column: 17, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1470, file: !3, discriminator: 1)
!1475 = !DILocation(line: 651, column: 97, scope: !1367, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 878, column: 17, scope: !1471)
!1477 = !DILocation(line: 649, column: 58, scope: !1367, inlinedAt: !1476)
!1478 = !DILocation(line: 649, column: 91, scope: !1367, inlinedAt: !1476)
!1479 = !DILocation(line: 651, column: 107, scope: !1367, inlinedAt: !1476)
!1480 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 879, column: 17, scope: !1471)
!1482 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !1481)
!1483 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !1481)
!1484 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !1481)
!1485 = !DILocation(line: 123, column: 9, scope: !1341, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 880, column: 59, scope: !1471)
!1487 = !DILocation(line: 123, column: 39, scope: !1341, inlinedAt: !1486)
!1488 = !DILocation(line: 123, column: 56, scope: !1341, inlinedAt: !1486)
!1489 = !DILocation(line: 126, column: 55, scope: !1347, inlinedAt: !1486)
!1490 = !DILocation(line: 123, column: 9, scope: !1342, inlinedAt: !1486)
!1491 = !DILocation(line: 880, column: 44, scope: !1471)
!1492 = !DILocation(line: 880, column: 57, scope: !1471)
!1493 = !DILocation(line: 881, column: 51, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 881, column: 21)
!1495 = !DILocation(line: 881, column: 68, scope: !1494)
!1496 = !DILocation(line: 881, column: 21, scope: !1471)
!1497 = !DILocation(line: 895, column: 39, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 894, column: 24)
!1499 = !DILocation(line: 896, column: 39, scope: !1498)
!1500 = !DILocation(line: 897, column: 85, scope: !1498)
!1501 = !{!698, !509, i64 34}
!1502 = !DILocation(line: 897, column: 21, scope: !1498)
!1503 = !DILocation(line: 898, column: 58, scope: !1498)
!1504 = !DILocation(line: 898, column: 112, scope: !1498)
!1505 = !DILocation(line: 898, column: 85, scope: !1498)
!1506 = !DILocation(line: 898, column: 153, scope: !1498)
!1507 = !DILocation(line: 898, column: 126, scope: !1498)
!1508 = !DILocation(line: 898, column: 21, scope: !1498)
!1509 = !DILocation(line: 1615, column: 37, scope: !1510, inlinedAt: !1516)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1615, column: 9)
!1511 = distinct !DISubprogram(name: "l2cap_channel_ready_for_open", scope: !3, file: !3, line: 1612, type: !1512, isLocal: true, isDefinition: true, scopeLine: 1613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!331, !219}
!1514 = !{!1515}
!1515 = !DILocalVariable(name: "channel", arg: 1, scope: !1511, file: !3, line: 1612, type: !219)
!1516 = distinct !DILocation(line: 901, column: 17, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 901, column: 17)
!1518 = !DILocation(line: 1612, column: 60, scope: !1511, inlinedAt: !1516)
!1519 = !DILocation(line: 901, column: 17, scope: !1517)
!1520 = !DILocation(line: 901, column: 17, scope: !1121)
!1521 = !DILocation(line: 902, column: 50, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 901, column: 56)
!1523 = !DILocation(line: 903, column: 17, scope: !1522)
!1524 = !DILocation(line: 904, column: 17, scope: !1522)
!1525 = !DILocation(line: 905, column: 13, scope: !1522)
!1526 = !DILocation(line: 909, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 909, column: 13)
!1528 = !DILocation(line: 909, column: 13, scope: !1121)
!1529 = !DILocation(line: 909, column: 13, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1527, file: !3, discriminator: 1)
!1531 = !DILocation(line: 910, column: 50, scope: !1121)
!1532 = !DILocation(line: 910, column: 109, scope: !1121)
!1533 = !DILocation(line: 910, column: 82, scope: !1121)
!1534 = !DILocation(line: 910, column: 151, scope: !1121)
!1535 = !DILocation(line: 910, column: 124, scope: !1121)
!1536 = !DILocation(line: 910, column: 189, scope: !1121)
!1537 = !DILocation(line: 910, column: 162, scope: !1121)
!1538 = !DILocation(line: 910, column: 13, scope: !1121)
!1539 = !DILocation(line: 911, column: 13, scope: !1121)
!1540 = !DILocation(line: 912, column: 13, scope: !1121)
!1541 = !DILocation(line: 915, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 915, column: 13)
!1543 = !DILocation(line: 915, column: 13, scope: !1121)
!1544 = !DILocation(line: 915, column: 13, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1542, file: !3, discriminator: 1)
!1546 = !DILocation(line: 123, column: 9, scope: !1341, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 916, column: 55, scope: !1121)
!1548 = !DILocation(line: 123, column: 39, scope: !1341, inlinedAt: !1547)
!1549 = !DILocation(line: 123, column: 56, scope: !1341, inlinedAt: !1547)
!1550 = !DILocation(line: 126, column: 55, scope: !1347, inlinedAt: !1547)
!1551 = !DILocation(line: 123, column: 9, scope: !1342, inlinedAt: !1547)
!1552 = !DILocation(line: 916, column: 40, scope: !1121)
!1553 = !DILocation(line: 916, column: 53, scope: !1121)
!1554 = !DILocation(line: 917, column: 46, scope: !1121)
!1555 = !DILocation(line: 918, column: 50, scope: !1121)
!1556 = !DILocation(line: 918, column: 81, scope: !1121)
!1557 = !DILocation(line: 918, column: 149, scope: !1121)
!1558 = !DILocation(line: 918, column: 122, scope: !1121)
!1559 = !DILocation(line: 918, column: 188, scope: !1121)
!1560 = !DILocation(line: 918, column: 161, scope: !1121)
!1561 = !DILocation(line: 918, column: 13, scope: !1121)
!1562 = !DILocation(line: 919, column: 13, scope: !1121)
!1563 = !DILocation(line: 926, column: 9, scope: !1124)
!1564 = !DILocation(line: 926, column: 9, scope: !1093)
!1565 = !DILocation(line: 929, column: 9, scope: !1123)
!1566 = !DILocation(line: 929, column: 40, scope: !1123)
!1567 = !DILocation(line: 931, column: 9, scope: !1123)
!1568 = !DILocation(line: 932, column: 16, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1123, file: !3, discriminator: 1)
!1570 = !DILocation(line: 932, column: 9, scope: !1569)
!1571 = !DILocation(line: 936, column: 71, scope: !1132)
!1572 = !DILocation(line: 936, column: 47, scope: !1132)
!1573 = !DILocation(line: 936, column: 34, scope: !1132)
!1574 = !DILocation(line: 938, column: 29, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 938, column: 17)
!1576 = !{!1577, !501, i64 12}
!1577 = !{!"__le_hci_connection", !538, i64 0, !501, i64 4, !509, i64 10, !501, i64 12, !501, i64 16, !501, i64 20, !501, i64 24, !509, i64 26, !509, i64 28, !509, i64 30, !509, i64 32, !1578, i64 36, !1579, i64 92, !501, i64 672, !509, i64 1202, !509, i64 1204, !501, i64 1206, !501, i64 1207, !501, i64 1213, !501, i64 1220}
!1578 = !{!"sm_connection", !509, i64 0, !501, i64 2, !501, i64 3, !501, i64 4, !501, i64 5, !501, i64 6, !501, i64 12, !501, i64 16, !501, i64 20, !501, i64 21, !501, i64 22, !501, i64 23, !501, i64 32, !509, i64 36, !501, i64 38, !501, i64 46, !508, i64 48, !508, i64 52}
!1579 = !{!"", !501, i64 0, !501, i64 4, !501, i64 5, !508, i64 12, !508, i64 16, !508, i64 20, !1580, i64 24, !1581, i64 44, !509, i64 54, !501, i64 56, !501, i64 573, !501, i64 573, !501, i64 573, !501, i64 573, !501, i64 573, !500, i64 576}
!1580 = !{!"btstack_timer_source", !538, i64 0, !508, i64 4, !508, i64 8, !508, i64 10, !508, i64 10, !508, i64 10, !508, i64 10, !500, i64 12, !500, i64 16}
!1581 = !{!"att_connection", !509, i64 0, !509, i64 2, !509, i64 4, !501, i64 6, !501, i64 7, !501, i64 8}
!1582 = !DILocation(line: 938, column: 68, scope: !1575)
!1583 = !DILocation(line: 941, column: 58, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 941, column: 17)
!1585 = !{!1577, !509, i64 10}
!1586 = !DILocation(line: 941, column: 18, scope: !1584)
!1587 = !DILocation(line: 941, column: 17, scope: !1132)
!1588 = !DILocation(line: 944, column: 33, scope: !1132)
!1589 = !{!1577, !501, i64 20}
!1590 = !DILocation(line: 944, column: 13, scope: !1132)
!1591 = !DILocation(line: 946, column: 59, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 944, column: 64)
!1593 = !DILocation(line: 947, column: 60, scope: !1592)
!1594 = !DILocation(line: 947, column: 121, scope: !1592)
!1595 = !{!1577, !501, i64 24}
!1596 = !DILocation(line: 947, column: 109, scope: !1592)
!1597 = !DILocation(line: 948, column: 60, scope: !1592)
!1598 = !{!1577, !509, i64 26}
!1599 = !DILocation(line: 948, column: 48, scope: !1592)
!1600 = !DILocation(line: 948, column: 94, scope: !1592)
!1601 = !{!1577, !509, i64 28}
!1602 = !DILocation(line: 948, column: 82, scope: !1592)
!1603 = !DILocation(line: 948, column: 128, scope: !1592)
!1604 = !{!1577, !509, i64 30}
!1605 = !DILocation(line: 948, column: 116, scope: !1592)
!1606 = !DILocation(line: 948, column: 157, scope: !1592)
!1607 = !{!1577, !509, i64 32}
!1608 = !DILocation(line: 948, column: 145, scope: !1592)
!1609 = !DILocation(line: 947, column: 17, scope: !1592)
!1610 = !DILocation(line: 949, column: 17, scope: !1592)
!1611 = distinct !{!1611, !1612, !1613}
!1612 = !DILocation(line: 932, column: 9, scope: !1123)
!1613 = !DILocation(line: 961, column: 9, scope: !1123)
!1614 = !DILocation(line: 951, column: 59, scope: !1592)
!1615 = !DILocation(line: 952, column: 60, scope: !1592)
!1616 = !DILocation(line: 952, column: 122, scope: !1592)
!1617 = !DILocation(line: 952, column: 110, scope: !1592)
!1618 = !DILocation(line: 952, column: 17, scope: !1592)
!1619 = !DILocation(line: 953, column: 17, scope: !1592)
!1620 = !DILocation(line: 955, column: 59, scope: !1592)
!1621 = !DILocation(line: 956, column: 60, scope: !1592)
!1622 = !DILocation(line: 956, column: 122, scope: !1592)
!1623 = !DILocation(line: 956, column: 110, scope: !1592)
!1624 = !DILocation(line: 956, column: 17, scope: !1592)
!1625 = !DILocation(line: 957, column: 17, scope: !1592)
!1626 = !DILocation(line: 962, column: 5, scope: !1124)
!1627 = !DILocation(line: 962, column: 5, scope: !1123)
!1628 = !DILocation(line: 965, column: 1, scope: !1093)
!1629 = !DILocation(line: 965, column: 1, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1093, file: !3, discriminator: 2)
!1631 = distinct !DISubprogram(name: "l2cap_send_le_signaling_packet", scope: !3, file: !3, line: 522, type: !1632, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !225, !928, !331, null}
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640}
!1635 = !DILocalVariable(name: "handle", arg: 1, scope: !1631, file: !3, line: 522, type: !225)
!1636 = !DILocalVariable(name: "cmd", arg: 2, scope: !1631, file: !3, line: 522, type: !928)
!1637 = !DILocalVariable(name: "identifier", arg: 3, scope: !1631, file: !3, line: 522, type: !331)
!1638 = !DILocalVariable(name: "acl_buffer", scope: !1631, file: !3, line: 525, type: !282)
!1639 = !DILocalVariable(name: "argptr", scope: !1631, file: !3, line: 526, type: !935)
!1640 = !DILocalVariable(name: "len", scope: !1631, file: !3, line: 527, type: !251)
!1641 = !DILocation(line: 522, column: 61, scope: !1631)
!1642 = !DILocation(line: 522, column: 94, scope: !1631)
!1643 = !DILocation(line: 522, column: 103, scope: !1631)
!1644 = !DILocation(line: 526, column: 5, scope: !1631)
!1645 = !DILocation(line: 529, column: 10, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 529, column: 9)
!1647 = !DILocation(line: 529, column: 9, scope: !1631)
!1648 = !DILocation(line: 533, column: 5, scope: !1631)
!1649 = !DILocation(line: 535, column: 18, scope: !1631)
!1650 = !DILocation(line: 525, column: 9, scope: !1631)
!1651 = !DILocation(line: 537, column: 5, scope: !1631)
!1652 = !DILocation(line: 538, column: 71, scope: !1631)
!1653 = !DILocation(line: 538, column: 83, scope: !1631)
!1654 = !DILocation(line: 526, column: 13, scope: !1631)
!1655 = !DILocation(line: 538, column: 11, scope: !1631)
!1656 = !DILocation(line: 527, column: 9, scope: !1631)
!1657 = !DILocation(line: 539, column: 5, scope: !1631)
!1658 = !DILocation(line: 541, column: 47, scope: !1631)
!1659 = !DILocation(line: 541, column: 5, scope: !1631)
!1660 = !DILocation(line: 542, column: 1, scope: !1631)
!1661 = !DILocation(line: 542, column: 1, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1631, file: !3, discriminator: 2)
!1663 = distinct !DISubprogram(name: "l2cap_emit_channel_opened", scope: !3, file: !3, line: 318, type: !745, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DILocalVariable(name: "channel", arg: 1, scope: !1663, file: !3, line: 318, type: !219)
!1666 = !DILocalVariable(name: "status", arg: 2, scope: !1663, file: !3, line: 318, type: !233)
!1667 = !DILocalVariable(name: "event", scope: !1663, file: !3, line: 320, type: !1668)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 168, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 21)
!1671 = !DILocation(line: 318, column: 49, scope: !1663)
!1672 = !DILocation(line: 318, column: 61, scope: !1663)
!1673 = !DILocation(line: 320, column: 5, scope: !1663)
!1674 = !DILocation(line: 320, column: 8, scope: !1663)
!1675 = !DILocation(line: 321, column: 5, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 321, column: 5)
!1677 = !DILocation(line: 321, column: 5, scope: !1663)
!1678 = !DILocation(line: 328, column: 29, scope: !1663)
!1679 = !DILocation(line: 329, column: 37, scope: !1663)
!1680 = !DILocation(line: 330, column: 55, scope: !1663)
!1681 = !DILocation(line: 331, column: 55, scope: !1663)
!1682 = !DILocation(line: 332, column: 55, scope: !1663)
!1683 = !DILocation(line: 333, column: 55, scope: !1663)
!1684 = !DILocation(line: 334, column: 55, scope: !1663)
!1685 = !DILocation(line: 321, column: 5, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1676, file: !3, discriminator: 1)
!1687 = !DILocation(line: 321, column: 5, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1676, file: !3, discriminator: 2)
!1689 = !DILocation(line: 325, column: 14, scope: !1663)
!1690 = !DILocation(line: 326, column: 5, scope: !1663)
!1691 = !DILocation(line: 326, column: 14, scope: !1663)
!1692 = !DILocation(line: 327, column: 5, scope: !1663)
!1693 = !DILocation(line: 327, column: 14, scope: !1663)
!1694 = !DILocation(line: 328, column: 19, scope: !1663)
!1695 = !DILocation(line: 328, column: 5, scope: !1663)
!1696 = !DILocation(line: 329, column: 5, scope: !1663)
!1697 = !DILocation(line: 330, column: 5, scope: !1663)
!1698 = !DILocation(line: 331, column: 5, scope: !1663)
!1699 = !DILocation(line: 332, column: 5, scope: !1663)
!1700 = !DILocation(line: 333, column: 5, scope: !1663)
!1701 = !DILocation(line: 334, column: 5, scope: !1663)
!1702 = !DILocation(line: 335, column: 5, scope: !1663)
!1703 = !DILocation(line: 336, column: 1, scope: !1663)
!1704 = distinct !DISubprogram(name: "l2cap_finialize_channel_close", scope: !3, file: !3, line: 2248, type: !1705, isLocal: true, isDefinition: true, scopeLine: 2249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1707)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !219}
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "channel", arg: 1, scope: !1704, file: !3, line: 2248, type: !219)
!1709 = !DILocation(line: 2248, column: 53, scope: !1704)
!1710 = !DILocation(line: 2250, column: 32, scope: !1704)
!1711 = !DILocation(line: 2250, column: 38, scope: !1704)
!1712 = !DILocation(line: 2251, column: 5, scope: !1704)
!1713 = !DILocation(line: 2253, column: 5, scope: !1704)
!1714 = !DILocation(line: 2267, column: 39, scope: !1704)
!1715 = !DILocation(line: 2267, column: 5, scope: !1704)
!1716 = !DILocation(line: 2268, column: 1, scope: !1704)
!1717 = distinct !DISubprogram(name: "l2cap_max_mtu", scope: !3, file: !3, line: 968, type: !1718, isLocal: false, isDefinition: true, scopeLine: 969, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!251}
!1720 = !DILocation(line: 970, column: 9, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 970, column: 9)
!1722 = !DILocation(line: 973, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 972, column: 12)
!1724 = !DILocation(line: 975, column: 1, scope: !1717)
!1725 = distinct !DISubprogram(name: "l2cap_max_le_mtu", scope: !3, file: !3, line: 985, type: !1718, isLocal: false, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!1726 = !DILocation(line: 988, column: 12, scope: !1725)
!1727 = !{!509, !509, i64 0}
!1728 = !DILocation(line: 988, column: 5, scope: !1725)
!1729 = distinct !DISubprogram(name: "ble_vendor_set_default_att_mtu", scope: !3, file: !3, line: 992, type: !835, isLocal: false, isDefinition: true, scopeLine: 993, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1730)
!1730 = !{!1731}
!1731 = !DILocalVariable(name: "mtu_size", arg: 1, scope: !1729, file: !3, line: 992, type: !251)
!1732 = !DILocation(line: 992, column: 40, scope: !1729)
!1733 = !DILocation(line: 994, column: 18, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 994, column: 9)
!1735 = !DILocation(line: 996, column: 16, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1734, file: !3, discriminator: 1)
!1737 = !DILocation(line: 994, column: 9, scope: !1729)
!1738 = !DILocation(line: 1001, column: 5, scope: !1729)
!1739 = distinct !DISubprogram(name: "l2cap_create_channel_internal", scope: !3, file: !3, line: 1010, type: !1740, isLocal: false, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!233, !237, !239, !245, !251, !251}
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748, !1749}
!1743 = !DILocalVariable(name: "connection", arg: 1, scope: !1739, file: !3, line: 1010, type: !237)
!1744 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !1739, file: !3, line: 1010, type: !239)
!1745 = !DILocalVariable(name: "address", arg: 3, scope: !1739, file: !3, line: 1011, type: !245)
!1746 = !DILocalVariable(name: "psm", arg: 4, scope: !1739, file: !3, line: 1011, type: !251)
!1747 = !DILocalVariable(name: "mtu", arg: 5, scope: !1739, file: !3, line: 1011, type: !251)
!1748 = !DILocalVariable(name: "chan", scope: !1739, file: !3, line: 1013, type: !219)
!1749 = !DILocalVariable(name: "hci_handler", scope: !1739, file: !3, line: 1014, type: !268)
!1750 = !DILocation(line: 1010, column: 40, scope: !1739)
!1751 = !DILocation(line: 1010, column: 77, scope: !1739)
!1752 = !DILocation(line: 1011, column: 44, scope: !1739)
!1753 = !DILocation(line: 1011, column: 57, scope: !1739)
!1754 = !DILocation(line: 1011, column: 66, scope: !1739)
!1755 = !DILocation(line: 1014, column: 9, scope: !1739)
!1756 = !DILocation(line: 1019, column: 32, scope: !1739)
!1757 = !DILocation(line: 1020, column: 10, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1020, column: 9)
!1759 = !DILocation(line: 1020, column: 9, scope: !1739)
!1760 = !DILocation(line: 970, column: 9, scope: !1721, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 1026, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1026, column: 9)
!1763 = !DILocation(line: 973, column: 9, scope: !1723, inlinedAt: !1761)
!1764 = !DILocation(line: 1026, column: 13, scope: !1762)
!1765 = !DILocation(line: 1026, column: 9, scope: !1739)
!1766 = !DILocation(line: 1031, column: 19, scope: !1739)
!1767 = !DILocation(line: 1034, column: 5, scope: !1739)
!1768 = !DILocation(line: 1035, column: 29, scope: !1739)
!1769 = !DILocation(line: 1035, column: 33, scope: !1739)
!1770 = !DILocation(line: 1036, column: 20, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1739, file: !3, discriminator: 3)
!1772 = !DILocation(line: 1036, column: 11, scope: !1771)
!1773 = !DILocation(line: 1036, column: 18, scope: !1771)
!1774 = !DILocation(line: 1037, column: 11, scope: !1739)
!1775 = !DILocation(line: 1037, column: 22, scope: !1739)
!1776 = !DILocation(line: 1038, column: 11, scope: !1739)
!1777 = !DILocation(line: 1038, column: 26, scope: !1739)
!1778 = !DILocation(line: 1039, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1039, column: 9)
!1780 = !DILocation(line: 1039, column: 29, scope: !1779)
!1781 = !DILocation(line: 1039, column: 9, scope: !1739)
!1782 = !DILocation(line: 1045, column: 29, scope: !1739)
!1783 = !DILocation(line: 1048, column: 43, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 1047, column: 62)
!1785 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1047, column: 9)
!1786 = !DILocation(line: 1051, column: 9, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1051, column: 9)
!1788 = !DILocation(line: 1051, column: 39, scope: !1787)
!1789 = !DILocation(line: 1051, column: 9, scope: !1739)
!1790 = !DILocation(line: 1056, column: 29, scope: !1739)
!1791 = !DILocation(line: 1056, column: 40, scope: !1739)
!1792 = !DILocation(line: 1059, column: 9, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1059, column: 9)
!1794 = !DILocation(line: 1059, column: 9, scope: !1739)
!1795 = !DILocation(line: 1060, column: 39, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 1059, column: 37)
!1797 = !DILocation(line: 1061, column: 5, scope: !1796)
!1798 = !DILocation(line: 1036, column: 21, scope: !1739)
!1799 = !DILocation(line: 1062, column: 13, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 1061, column: 12)
!1801 = !DILocation(line: 1064, column: 43, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1062, column: 27)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 1062, column: 13)
!1804 = !DILocation(line: 1065, column: 9, scope: !1802)
!1805 = !DILocation(line: 1066, column: 43, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1065, column: 16)
!1807 = !DILocation(line: 133, column: 12, scope: !1808, inlinedAt: !1809)
!1808 = distinct !DISubprogram(name: "l2cap_next_local_cid", scope: !3, file: !3, line: 131, type: !1718, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!1809 = distinct !DILocation(line: 1067, column: 49, scope: !1806)
!1810 = !DILocation(line: 133, column: 43, scope: !1808, inlinedAt: !1809)
!1811 = !DILocation(line: 133, column: 59, scope: !1808, inlinedAt: !1809)
!1812 = !DILocation(line: 1067, column: 47, scope: !1806)
!1813 = !DILocation(line: 1070, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1070, column: 9)
!1815 = !DILocation(line: 1071, column: 71, scope: !1814)
!1816 = !DILocation(line: 1070, column: 9, scope: !1739)
!1817 = !DILocation(line: 1072, column: 9, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1071, column: 100)
!1819 = !DILocation(line: 1074, column: 5, scope: !1818)
!1820 = !DILocation(line: 1075, column: 29, scope: !1739)
!1821 = !DILocation(line: 1075, column: 39, scope: !1739)
!1822 = !DILocation(line: 1076, column: 29, scope: !1739)
!1823 = !DILocation(line: 1076, column: 43, scope: !1739)
!1824 = !DILocation(line: 1077, column: 29, scope: !1739)
!1825 = !DILocation(line: 1077, column: 42, scope: !1739)
!1826 = !DILocation(line: 1080, column: 5, scope: !1739)
!1827 = !DILocation(line: 1082, column: 5, scope: !1739)
!1828 = !DILocation(line: 1084, column: 5, scope: !1739)
!1829 = !DILocation(line: 1085, column: 1, scope: !1739)
!1830 = distinct !DISubprogram(name: "l2cap_disconnect_internal", scope: !3, file: !3, line: 1087, type: !387, isLocal: false, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1831)
!1831 = !{!1832, !1833, !1834}
!1832 = !DILocalVariable(name: "local_cid", arg: 1, scope: !1830, file: !3, line: 1087, type: !251)
!1833 = !DILocalVariable(name: "reason", arg: 2, scope: !1830, file: !3, line: 1087, type: !233)
!1834 = !DILocalVariable(name: "channel", scope: !1830, file: !3, line: 1089, type: !219)
!1835 = !DILocation(line: 1087, column: 36, scope: !1830)
!1836 = !DILocation(line: 1087, column: 50, scope: !1830)
!1837 = !DILocation(line: 1091, column: 15, scope: !1830)
!1838 = !DILocation(line: 1089, column: 22, scope: !1830)
!1839 = !DILocation(line: 1092, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1092, column: 9)
!1841 = !DILocation(line: 1092, column: 9, scope: !1830)
!1842 = !DILocation(line: 1093, column: 40, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 1093, column: 13)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 1092, column: 18)
!1845 = !DILocation(line: 1094, column: 13, scope: !1843)
!1846 = !DILocation(line: 1095, column: 46, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 1094, column: 72)
!1848 = !DILocation(line: 1104, column: 5, scope: !1830)
!1849 = !DILocation(line: 1105, column: 1, scope: !1830)
!1850 = !DILocation(line: 1097, column: 13, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 1097, column: 13)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 1096, column: 16)
!1853 = !DILocation(line: 1097, column: 13, scope: !1852)
!1854 = !DILocation(line: 1097, column: 13, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1851, file: !3, discriminator: 1)
!1856 = !DILocation(line: 1105, column: 1, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1830, file: !3, discriminator: 2)
!1858 = distinct !DISubprogram(name: "l2cap_disconnect_all_channel", scope: !3, file: !3, line: 1106, type: !679, isLocal: false, isDefinition: true, scopeLine: 1107, isOptimized: true, unit: !2, variables: !1859)
!1859 = !{!1860, !1861, !1862}
!1860 = !DILocalVariable(name: "it", scope: !1858, file: !3, line: 1109, type: !211)
!1861 = !DILocalVariable(name: "l2cap_channel_num", scope: !1858, file: !3, line: 1110, type: !233)
!1862 = !DILocalVariable(name: "channel", scope: !1863, file: !3, line: 1112, type: !219)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 1111, column: 82)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1111, column: 5)
!1865 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 1111, column: 5)
!1866 = !DILocation(line: 1110, column: 8, scope: !1858)
!1867 = !DILocation(line: 1111, column: 33, scope: !1865)
!1868 = !DILocation(line: 1111, column: 46, scope: !1865)
!1869 = !DILocation(line: 1109, column: 20, scope: !1858)
!1870 = !DILocation(line: 1111, column: 5, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1865, file: !3, discriminator: 1)
!1872 = !DILocation(line: 1113, column: 22, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 1113, column: 13)
!1874 = !DILocation(line: 1113, column: 40, scope: !1873)
!1875 = !DILocation(line: 1113, column: 13, scope: !1863)
!1876 = !DILocation(line: 1117, column: 40, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 1117, column: 13)
!1878 = !DILocation(line: 1118, column: 13, scope: !1877)
!1879 = !DILocation(line: 1119, column: 46, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1118, column: 72)
!1881 = !DILocation(line: 1121, column: 13, scope: !1880)
!1882 = !DILocation(line: 1122, column: 9, scope: !1880)
!1883 = !DILocation(line: 1111, column: 76, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1864, file: !3, discriminator: 2)
!1885 = distinct !{!1885, !1886, !1887}
!1886 = !DILocation(line: 1111, column: 5, scope: !1865)
!1887 = !DILocation(line: 1123, column: 5, scope: !1865)
!1888 = !DILocation(line: 1125, column: 5, scope: !1858)
!1889 = distinct !DISubprogram(name: "l2cap_event_handler", scope: !3, file: !3, line: 1208, type: !1890, isLocal: false, isDefinition: true, scopeLine: 1209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !282, !251}
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1906}
!1893 = !DILocalVariable(name: "packet", arg: 1, scope: !1889, file: !3, line: 1208, type: !282)
!1894 = !DILocalVariable(name: "size", arg: 2, scope: !1889, file: !3, line: 1208, type: !251)
!1895 = !DILocalVariable(name: "address", scope: !1889, file: !3, line: 1211, type: !257)
!1896 = !DILocalVariable(name: "handle", scope: !1889, file: !3, line: 1212, type: !225)
!1897 = !DILocalVariable(name: "channel", scope: !1889, file: !3, line: 1213, type: !219)
!1898 = !DILocalVariable(name: "it", scope: !1889, file: !3, line: 1214, type: !211)
!1899 = !DILocalVariable(name: "hci_connection_addr", scope: !1889, file: !3, line: 1215, type: !282)
!1900 = !DILocalVariable(name: "connection_addr", scope: !1889, file: !3, line: 1216, type: !1097)
!1901 = !DILocalVariable(name: "hci_con_used", scope: !1889, file: !3, line: 1217, type: !331)
!1902 = !DILocalVariable(name: "link_type", scope: !1889, file: !3, line: 1218, type: !233)
!1903 = !DILocalVariable(name: "channel", scope: !1904, file: !3, line: 1335, type: !219)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1334, column: 26)
!1905 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1220, column: 24)
!1906 = !DILocalVariable(name: "company", scope: !1907, file: !3, line: 1396, type: !233)
!1907 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1395, column: 43)
!1908 = !DILocation(line: 1208, column: 30, scope: !1889)
!1909 = !DILocation(line: 1208, column: 42, scope: !1889)
!1910 = !DILocation(line: 1211, column: 5, scope: !1889)
!1911 = !DILocation(line: 1211, column: 15, scope: !1889)
!1912 = !DILocation(line: 1216, column: 5, scope: !1889)
!1913 = !DILocation(line: 1216, column: 9, scope: !1889)
!1914 = !DILocation(line: 1220, column: 13, scope: !1889)
!1915 = !DILocation(line: 1220, column: 5, scope: !1889)
!1916 = !DILocation(line: 1224, column: 13, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1224, column: 13)
!1918 = !DILocation(line: 1224, column: 23, scope: !1917)
!1919 = !DILocation(line: 1212, column: 22, scope: !1889)
!1920 = !DILocation(line: 1224, column: 13, scope: !1905)
!1921 = !DILocation(line: 1227, column: 35, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1224, column: 29)
!1923 = !DILocation(line: 1215, column: 10, scope: !1889)
!1924 = !DILocation(line: 1228, column: 37, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 1228, column: 17)
!1926 = !DILocation(line: 1228, column: 17, scope: !1922)
!1927 = !DILocation(line: 1231, column: 13, scope: !1922)
!1928 = !DILocation(line: 1233, column: 13, scope: !1922)
!1929 = !DILocation(line: 1234, column: 9, scope: !1922)
!1930 = !DILocation(line: 1237, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1234, column: 16)
!1932 = !DILocation(line: 1239, column: 9, scope: !1905)
!1933 = !DILocation(line: 1240, column: 9, scope: !1905)
!1934 = !DILocation(line: 1244, column: 13, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1244, column: 13)
!1936 = !DILocation(line: 1244, column: 23, scope: !1935)
!1937 = !DILocation(line: 1244, column: 13, scope: !1905)
!1938 = !DILocation(line: 1247, column: 35, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1244, column: 29)
!1940 = !DILocation(line: 1248, column: 37, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 1248, column: 17)
!1942 = !DILocation(line: 1248, column: 17, scope: !1939)
!1943 = !DILocation(line: 1251, column: 13, scope: !1939)
!1944 = !DILocation(line: 1254, column: 13, scope: !1939)
!1945 = !DILocation(line: 1255, column: 9, scope: !1939)
!1946 = !DILocation(line: 1258, column: 13, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1255, column: 16)
!1948 = !DILocation(line: 1261, column: 9, scope: !1905)
!1949 = !DILocation(line: 1262, column: 9, scope: !1905)
!1950 = !DILocation(line: 1266, column: 32, scope: !1905)
!1951 = !DILocation(line: 1266, column: 9, scope: !1905)
!1952 = !DILocation(line: 1267, column: 21, scope: !1905)
!1953 = !DILocation(line: 1218, column: 8, scope: !1889)
!1954 = !DILocation(line: 1268, column: 42, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1268, column: 13)
!1956 = !DILocation(line: 1271, column: 13, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1271, column: 13)
!1958 = !DILocation(line: 1271, column: 23, scope: !1957)
!1959 = !DILocation(line: 1271, column: 13, scope: !1905)
!1960 = !DILocation(line: 1272, column: 22, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 1271, column: 29)
!1962 = !DILocalVariable(name: "address", arg: 1, scope: !1963, file: !3, line: 1148, type: !245)
!1963 = distinct !DISubprogram(name: "l2cap_handle_connection_success_for_addr", scope: !3, file: !3, line: 1148, type: !1964, isLocal: true, isDefinition: true, scopeLine: 1149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !245, !225}
!1966 = !{!1962, !1967, !1968, !1969}
!1967 = !DILocalVariable(name: "handle", arg: 2, scope: !1963, file: !3, line: 1148, type: !225)
!1968 = !DILocalVariable(name: "it", scope: !1963, file: !3, line: 1150, type: !211)
!1969 = !DILocalVariable(name: "channel", scope: !1970, file: !3, line: 1152, type: !219)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1151, column: 82)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 1151, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1151, column: 5)
!1973 = !DILocation(line: 1148, column: 66, scope: !1963, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 1275, column: 13, scope: !1961)
!1975 = !DILocation(line: 1148, column: 92, scope: !1963, inlinedAt: !1974)
!1976 = !DILocation(line: 1151, column: 33, scope: !1972, inlinedAt: !1974)
!1977 = !DILocation(line: 1151, column: 46, scope: !1972, inlinedAt: !1974)
!1978 = !DILocation(line: 1150, column: 20, scope: !1963, inlinedAt: !1974)
!1979 = !DILocation(line: 1151, column: 5, scope: !1980, inlinedAt: !1974)
!1980 = !DILexicalBlockFile(scope: !1972, file: !3, discriminator: 1)
!1981 = !DILocation(line: 1153, column: 15, scope: !1982, inlinedAt: !1974)
!1982 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 1153, column: 13)
!1983 = !DILocation(line: 1153, column: 13, scope: !1970, inlinedAt: !1974)
!1984 = !DILocation(line: 1154, column: 44, scope: !1985, inlinedAt: !1974)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1154, column: 17)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 1153, column: 73)
!1987 = !DILocation(line: 1154, column: 90, scope: !1985, inlinedAt: !1974)
!1988 = !DILocation(line: 1156, column: 50, scope: !1989, inlinedAt: !1974)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 1154, column: 170)
!1990 = !DILocation(line: 1157, column: 26, scope: !1989, inlinedAt: !1974)
!1991 = !DILocation(line: 1157, column: 33, scope: !1989, inlinedAt: !1974)
!1992 = !DILocation(line: 133, column: 59, scope: !1808, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 1158, column: 56, scope: !1989, inlinedAt: !1974)
!1994 = !DILocation(line: 1158, column: 44, scope: !1989, inlinedAt: !1974)
!1995 = !DILocation(line: 1158, column: 54, scope: !1989, inlinedAt: !1974)
!1996 = !DILocation(line: 1160, column: 13, scope: !1989, inlinedAt: !1974)
!1997 = !DILocation(line: 1151, column: 76, scope: !1998, inlinedAt: !1974)
!1998 = !DILexicalBlockFile(scope: !1971, file: !3, discriminator: 2)
!1999 = distinct !{!1999, !2000, !2001}
!2000 = !DILocation(line: 1151, column: 5, scope: !1972)
!2001 = !DILocation(line: 1162, column: 5, scope: !1972)
!2002 = !DILocation(line: 1164, column: 5, scope: !1963, inlinedAt: !1974)
!2003 = !DILocation(line: 1277, column: 9, scope: !1961)
!2004 = !DILocation(line: 1279, column: 13, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 1277, column: 16)
!2006 = !DILocation(line: 1281, column: 62, scope: !2005)
!2007 = !DILocalVariable(name: "address", arg: 1, scope: !2008, file: !3, line: 1128, type: !245)
!2008 = distinct !DISubprogram(name: "l2cap_handle_connection_failed_for_addr", scope: !3, file: !3, line: 1128, type: !2009, isLocal: true, isDefinition: true, scopeLine: 1129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !245, !233}
!2011 = !{!2007, !2012, !2013, !2014}
!2012 = !DILocalVariable(name: "status", arg: 2, scope: !2008, file: !3, line: 1128, type: !233)
!2013 = !DILocalVariable(name: "it", scope: !2008, file: !3, line: 1130, type: !211)
!2014 = !DILocalVariable(name: "channel", scope: !2015, file: !3, line: 1132, type: !219)
!2015 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1131, column: 22)
!2016 = !DILocation(line: 1128, column: 65, scope: !2008, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 1281, column: 13, scope: !2005)
!2018 = !DILocation(line: 1128, column: 77, scope: !2008, inlinedAt: !2017)
!2019 = !DILocation(line: 1130, column: 44, scope: !2008, inlinedAt: !2017)
!2020 = !DILocation(line: 1130, column: 57, scope: !2008, inlinedAt: !2017)
!2021 = !DILocation(line: 1131, column: 16, scope: !2022, inlinedAt: !2017)
!2022 = !DILexicalBlockFile(scope: !2008, file: !3, discriminator: 1)
!2023 = !DILocation(line: 1131, column: 5, scope: !2022, inlinedAt: !2017)
!2024 = !DILocation(line: 1130, column: 25, scope: !2008, inlinedAt: !2017)
!2025 = !DILocation(line: 1130, column: 20, scope: !2008, inlinedAt: !2017)
!2026 = !DILocation(line: 1132, column: 36, scope: !2015, inlinedAt: !2017)
!2027 = !DILocation(line: 1132, column: 26, scope: !2015, inlinedAt: !2017)
!2028 = !DILocation(line: 1133, column: 15, scope: !2029, inlinedAt: !2017)
!2029 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 1133, column: 13)
!2030 = !DILocation(line: 1133, column: 13, scope: !2015, inlinedAt: !2017)
!2031 = distinct !{!2031, !2032, !2033}
!2032 = !DILocation(line: 1131, column: 5, scope: !2008)
!2033 = !DILocation(line: 1145, column: 5, scope: !2008)
!2034 = !DILocation(line: 1134, column: 34, scope: !2035, inlinedAt: !2017)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 1133, column: 73)
!2036 = !DILocation(line: 1134, column: 22, scope: !2035, inlinedAt: !2017)
!2037 = !DILocation(line: 1135, column: 44, scope: !2038, inlinedAt: !2017)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 1135, column: 17)
!2039 = !DILocation(line: 1135, column: 90, scope: !2038, inlinedAt: !2017)
!2040 = !DILocation(line: 1137, column: 17, scope: !2041, inlinedAt: !2017)
!2041 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1135, column: 170)
!2042 = !DILocation(line: 1140, column: 51, scope: !2041, inlinedAt: !2017)
!2043 = !DILocation(line: 1140, column: 17, scope: !2041, inlinedAt: !2017)
!2044 = !DILocation(line: 1141, column: 13, scope: !2041, inlinedAt: !2017)
!2045 = !DILocation(line: 1295, column: 9, scope: !1905)
!2046 = !DILocation(line: 1296, column: 9, scope: !1905)
!2047 = !DILocation(line: 1300, column: 9, scope: !1905)
!2048 = !DILocation(line: 1301, column: 9, scope: !1905)
!2049 = !DILocation(line: 1307, column: 21, scope: !1905)
!2050 = !DILocation(line: 1308, column: 9, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1308, column: 9)
!2052 = !DILocation(line: 1308, column: 9, scope: !1905)
!2053 = !DILocation(line: 1308, column: 9, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2051, file: !3, discriminator: 1)
!2055 = !DILocation(line: 1315, column: 18, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1315, column: 13)
!2057 = !DILocation(line: 1315, column: 13, scope: !1905)
!2058 = !DILocation(line: 1330, column: 18, scope: !1905)
!2059 = !DILocation(line: 1332, column: 40, scope: !1905)
!2060 = !DILocation(line: 1332, column: 9, scope: !1905)
!2061 = !DILocation(line: 1333, column: 33, scope: !1905)
!2062 = !DILocation(line: 1333, column: 46, scope: !1905)
!2063 = !DILocation(line: 1214, column: 20, scope: !1889)
!2064 = !DILocation(line: 1334, column: 20, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !1905, file: !3, discriminator: 1)
!2066 = !DILocation(line: 1334, column: 9, scope: !2065)
!2067 = !DILocation(line: 1333, column: 14, scope: !1905)
!2068 = !DILocation(line: 1335, column: 40, scope: !1904)
!2069 = !DILocation(line: 1335, column: 30, scope: !1904)
!2070 = !DILocation(line: 1340, column: 17, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1340, column: 17)
!2072 = !DILocation(line: 1340, column: 82, scope: !2071)
!2073 = !DILocation(line: 1340, column: 17, scope: !1904)
!2074 = distinct !{!2074, !2075, !2076}
!2075 = !DILocation(line: 1334, column: 9, scope: !1905)
!2076 = !DILocation(line: 1359, column: 9, scope: !1905)
!2077 = !DILocation(line: 1341, column: 30, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1341, column: 21)
!2079 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 1340, column: 88)
!2080 = !DILocation(line: 1341, column: 21, scope: !2078)
!2081 = !DILocation(line: 1341, column: 37, scope: !2078)
!2082 = !DILocation(line: 1341, column: 67, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2078, file: !3, discriminator: 1)
!2084 = !DILocation(line: 1341, column: 47, scope: !2078)
!2085 = !DILocation(line: 1344, column: 36, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 1341, column: 74)
!2087 = !DILocation(line: 1344, column: 42, scope: !2086)
!2088 = !DILocation(line: 1344, column: 30, scope: !2086)
!2089 = !DILocation(line: 1345, column: 53, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 1345, column: 25)
!2091 = !DILocation(line: 1345, column: 80, scope: !2090)
!2092 = !DILocation(line: 1347, column: 25, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 1346, column: 92)
!2094 = !DILocation(line: 1348, column: 21, scope: !2093)
!2095 = !DILocation(line: 1349, column: 25, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 1348, column: 28)
!2097 = !DILocation(line: 1351, column: 55, scope: !2086)
!2098 = !DILocation(line: 1351, column: 21, scope: !2086)
!2099 = !DILocation(line: 1361, column: 9, scope: !1905)
!2100 = !DILocation(line: 1362, column: 9, scope: !1905)
!2101 = !DILocation(line: 1366, column: 9, scope: !1905)
!2102 = !DILocation(line: 1368, column: 9, scope: !1905)
!2103 = !DILocation(line: 1374, column: 9, scope: !1905)
!2104 = !DILocation(line: 1379, column: 18, scope: !1905)
!2105 = !DILocation(line: 1217, column: 9, scope: !1889)
!2106 = !DILocation(line: 1384, column: 37, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1384, column: 9)
!2108 = !DILocation(line: 1384, column: 50, scope: !2107)
!2109 = !DILocation(line: 1384, column: 9, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2107, file: !3, discriminator: 1)
!2111 = !DILocation(line: 1386, column: 27, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1386, column: 17)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1384, column: 86)
!2114 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1384, column: 9)
!2115 = !DILocation(line: 1386, column: 34, scope: !2112)
!2116 = !DILocation(line: 1386, column: 45, scope: !2112)
!2117 = !DILocation(line: 1386, column: 76, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2112, file: !3, discriminator: 1)
!2119 = !DILocation(line: 1386, column: 80, scope: !2118)
!2120 = !DILocation(line: 1386, column: 17, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2113, file: !3, discriminator: 1)
!2122 = !DILocation(line: 1384, column: 80, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2114, file: !3, discriminator: 2)
!2124 = distinct !{!2124, !2125, !2126}
!2125 = !DILocation(line: 1384, column: 9, scope: !2107)
!2126 = !DILocation(line: 1389, column: 9, scope: !2107)
!2127 = !DILocation(line: 1390, column: 13, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1390, column: 13)
!2129 = !DILocation(line: 1390, column: 13, scope: !1905)
!2130 = !DILocation(line: 1393, column: 9, scope: !1905)
!2131 = !DILocation(line: 1394, column: 9, scope: !1905)
!2132 = !DILocation(line: 1396, column: 55, scope: !1907)
!2133 = !DILocation(line: 1396, column: 22, scope: !1907)
!2134 = !DILocation(line: 1396, column: 12, scope: !1907)
!2135 = !DILocation(line: 1398, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 1398, column: 13)
!2137 = !DILocation(line: 1398, column: 13, scope: !1907)
!2138 = !DILocation(line: 1399, column: 36, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 1398, column: 27)
!2140 = !DILocation(line: 1399, column: 13, scope: !2139)
!2141 = !DILocation(line: 1400, column: 9, scope: !2139)
!2142 = !DILocation(line: 1408, column: 5, scope: !1889)
!2143 = !DILocation(line: 1408, column: 18, scope: !1889)
!2144 = !DILocation(line: 1409, column: 1, scope: !1889)
!2145 = distinct !DISubprogram(name: "l2cap_emit_channel_closed", scope: !3, file: !3, line: 338, type: !1705, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2146)
!2146 = !{!2147, !2148}
!2147 = !DILocalVariable(name: "channel", arg: 1, scope: !2145, file: !3, line: 338, type: !219)
!2148 = !DILocalVariable(name: "event", scope: !2145, file: !3, line: 341, type: !2149)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 32, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 4)
!2152 = !DILocation(line: 338, column: 49, scope: !2145)
!2153 = !DILocation(line: 341, column: 5, scope: !2145)
!2154 = !DILocation(line: 341, column: 8, scope: !2145)
!2155 = !DILocation(line: 342, column: 5, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 342, column: 5)
!2157 = !DILocation(line: 342, column: 5, scope: !2145)
!2158 = !DILocation(line: 342, column: 5, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2156, file: !3, discriminator: 1)
!2160 = !DILocation(line: 344, column: 14, scope: !2145)
!2161 = !DILocation(line: 345, column: 5, scope: !2145)
!2162 = !DILocation(line: 345, column: 14, scope: !2145)
!2163 = !DILocation(line: 346, column: 54, scope: !2145)
!2164 = !DILocation(line: 346, column: 5, scope: !2145)
!2165 = !DILocation(line: 347, column: 5, scope: !2145)
!2166 = !DILocation(line: 348, column: 1, scope: !2145)
!2167 = distinct !DISubprogram(name: "l2cap_accept_connection_internal", scope: !3, file: !3, line: 1494, type: !2168, isLocal: false, isDefinition: true, scopeLine: 1495, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !251}
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "local_cid", arg: 1, scope: !2167, file: !3, line: 1494, type: !251)
!2172 = !DILocalVariable(name: "channel", scope: !2167, file: !3, line: 1497, type: !219)
!2173 = !DILocation(line: 1494, column: 43, scope: !2167)
!2174 = !DILocation(line: 1497, column: 32, scope: !2167)
!2175 = !DILocation(line: 1497, column: 22, scope: !2167)
!2176 = !DILocation(line: 1500, column: 10, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 1500, column: 9)
!2178 = !DILocation(line: 1500, column: 9, scope: !2167)
!2179 = !DILocation(line: 1501, column: 9, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 1501, column: 9)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 1500, column: 19)
!2182 = !DILocation(line: 1501, column: 9, scope: !2181)
!2183 = !DILocation(line: 1501, column: 9, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2180, file: !3, discriminator: 1)
!2185 = !DILocation(line: 1505, column: 32, scope: !2167)
!2186 = !DILocation(line: 1505, column: 38, scope: !2167)
!2187 = !DILocation(line: 1508, column: 5, scope: !2167)
!2188 = !DILocation(line: 1509, column: 1, scope: !2167)
!2189 = !DILocation(line: 1509, column: 1, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2167, file: !3, discriminator: 2)
!2191 = distinct !DISubprogram(name: "l2cap_decline_connection_internal", scope: !3, file: !3, line: 1511, type: !387, isLocal: false, isDefinition: true, scopeLine: 1512, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2192)
!2192 = !{!2193, !2194, !2195}
!2193 = !DILocalVariable(name: "local_cid", arg: 1, scope: !2191, file: !3, line: 1511, type: !251)
!2194 = !DILocalVariable(name: "reason", arg: 2, scope: !2191, file: !3, line: 1511, type: !233)
!2195 = !DILocalVariable(name: "channel", scope: !2191, file: !3, line: 1514, type: !219)
!2196 = !DILocation(line: 1511, column: 44, scope: !2191)
!2197 = !DILocation(line: 1511, column: 58, scope: !2191)
!2198 = !DILocation(line: 1514, column: 32, scope: !2191)
!2199 = !DILocation(line: 1514, column: 22, scope: !2191)
!2200 = !DILocation(line: 1517, column: 10, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1517, column: 9)
!2202 = !DILocation(line: 1517, column: 9, scope: !2191)
!2203 = !DILocation(line: 1521, column: 32, scope: !2191)
!2204 = !DILocation(line: 1521, column: 39, scope: !2191)
!2205 = !DILocation(line: 1522, column: 32, scope: !2191)
!2206 = !DILocation(line: 1522, column: 39, scope: !2191)
!2207 = !DILocation(line: 1523, column: 5, scope: !2191)
!2208 = !DILocation(line: 1524, column: 1, scope: !2191)
!2209 = !DILocation(line: 1524, column: 1, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2191, file: !3, discriminator: 2)
!2211 = distinct !DISubprogram(name: "l2cap_signaling_handle_configure_request", scope: !3, file: !3, line: 1526, type: !2212, isLocal: false, isDefinition: true, scopeLine: 1527, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !219, !282}
!2214 = !{!2215, !2216, !2217, !2218, !2220, !2221, !2223, !2224}
!2215 = !DILocalVariable(name: "channel", arg: 1, scope: !2211, file: !3, line: 1526, type: !219)
!2216 = !DILocalVariable(name: "command", arg: 2, scope: !2211, file: !3, line: 1526, type: !282)
!2217 = !DILocalVariable(name: "flags", scope: !2211, file: !3, line: 1529, type: !251)
!2218 = !DILocalVariable(name: "end_pos", scope: !2219, file: !3, line: 1539, type: !251)
!2219 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1538, column: 5)
!2220 = !DILocalVariable(name: "pos", scope: !2219, file: !3, line: 1540, type: !251)
!2221 = !DILocalVariable(name: "option_hint", scope: !2222, file: !3, line: 1542, type: !233)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 1541, column: 31)
!2223 = !DILocalVariable(name: "option_type", scope: !2222, file: !3, line: 1543, type: !233)
!2224 = !DILocalVariable(name: "length", scope: !2222, file: !3, line: 1544, type: !233)
!2225 = !DILocation(line: 1526, column: 64, scope: !2211)
!2226 = !DILocation(line: 1526, column: 77, scope: !2211)
!2227 = !DILocation(line: 1529, column: 17, scope: !2211)
!2228 = !DILocation(line: 1530, column: 48, scope: !2211)
!2229 = !DILocation(line: 1530, column: 32, scope: !2211)
!2230 = !DILocation(line: 1530, column: 46, scope: !2211)
!2231 = !DILocation(line: 1533, column: 15, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1533, column: 9)
!2233 = !DILocation(line: 1533, column: 9, scope: !2211)
!2234 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 1534, column: 9, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 1533, column: 20)
!2237 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2235)
!2238 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !2235)
!2239 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2235)
!2240 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2235)
!2241 = !DILocation(line: 1535, column: 5, scope: !2236)
!2242 = !DILocation(line: 1539, column: 27, scope: !2219)
!2243 = !DILocation(line: 1539, column: 25, scope: !2219)
!2244 = !DILocation(line: 1540, column: 13, scope: !2219)
!2245 = !DILocation(line: 1541, column: 22, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2219, file: !3, discriminator: 1)
!2247 = !DILocation(line: 1541, column: 20, scope: !2246)
!2248 = !DILocation(line: 1541, column: 9, scope: !2246)
!2249 = !DILocation(line: 1542, column: 30, scope: !2222)
!2250 = !DILocation(line: 1542, column: 43, scope: !2222)
!2251 = !DILocation(line: 1542, column: 16, scope: !2222)
!2252 = !DILocation(line: 1543, column: 43, scope: !2222)
!2253 = !DILocation(line: 1543, column: 16, scope: !2222)
!2254 = !DILocation(line: 1545, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1545, column: 13)
!2256 = !DILocation(line: 1545, column: 13, scope: !2222)
!2257 = !DILocation(line: 1545, column: 13, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2255, file: !3, discriminator: 1)
!2259 = !DILocation(line: 1546, column: 16, scope: !2222)
!2260 = !DILocation(line: 1547, column: 33, scope: !2222)
!2261 = !DILocation(line: 1547, column: 22, scope: !2222)
!2262 = !DILocation(line: 1544, column: 16, scope: !2222)
!2263 = !DILocation(line: 1549, column: 29, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1549, column: 17)
!2265 = !DILocation(line: 1549, column: 44, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2264, file: !3, discriminator: 1)
!2267 = !DILocation(line: 1549, column: 34, scope: !2264)
!2268 = !DILocation(line: 1550, column: 57, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1549, column: 50)
!2270 = !DILocation(line: 1550, column: 55, scope: !2269)
!2271 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1552, column: 17, scope: !2269)
!2273 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2272)
!2274 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !2272)
!2275 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2272)
!2276 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2272)
!2277 = !DILocation(line: 1553, column: 13, scope: !2269)
!2278 = !DILocation(line: 1573, column: 34, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1573, column: 17)
!2280 = !DILocation(line: 1573, column: 55, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2279, file: !3, discriminator: 1)
!2282 = !DILocation(line: 1575, column: 64, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 1573, column: 80)
!2284 = !DILocation(line: 1576, column: 72, scope: !2283)
!2285 = !DILocation(line: 1576, column: 70, scope: !2283)
!2286 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 1577, column: 17, scope: !2283)
!2288 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2287)
!2289 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !2287)
!2290 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2287)
!2291 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2287)
!2292 = !DILocation(line: 1578, column: 13, scope: !2283)
!2293 = !DILocation(line: 1579, column: 55, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !3, discriminator: 1)
!2295 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1579, column: 17)
!2296 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 1581, column: 17, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1579, column: 80)
!2299 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2297)
!2300 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !2297)
!2301 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2297)
!2302 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2297)
!2303 = !DILocation(line: 1582, column: 13, scope: !2298)
!2304 = !DILocation(line: 1583, column: 20, scope: !2222)
!2305 = !DILocation(line: 1583, column: 17, scope: !2222)
!2306 = !DILocation(line: 1541, column: 16, scope: !2246)
!2307 = distinct !{!2307, !2308, !2309}
!2308 = !DILocation(line: 1541, column: 9, scope: !2219)
!2309 = !DILocation(line: 1584, column: 9, scope: !2219)
!2310 = !DILocation(line: 1586, column: 1, scope: !2211)
!2311 = distinct !DISubprogram(name: "l2cap_signaling_handler_channel", scope: !3, file: !3, line: 1625, type: !2212, isLocal: false, isDefinition: true, scopeLine: 1626, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2312)
!2312 = !{!2313, !2314, !2315, !2316, !2317}
!2313 = !DILocalVariable(name: "channel", arg: 1, scope: !2311, file: !3, line: 1625, type: !219)
!2314 = !DILocalVariable(name: "command", arg: 2, scope: !2311, file: !3, line: 1625, type: !282)
!2315 = !DILocalVariable(name: "code", scope: !2311, file: !3, line: 1628, type: !233)
!2316 = !DILocalVariable(name: "identifier", scope: !2311, file: !3, line: 1629, type: !233)
!2317 = !DILocalVariable(name: "result", scope: !2311, file: !3, line: 1630, type: !251)
!2318 = !DILocation(line: 1625, column: 55, scope: !2311)
!2319 = !DILocation(line: 1625, column: 68, scope: !2311)
!2320 = !DILocation(line: 1628, column: 22, scope: !2311)
!2321 = !DILocation(line: 1628, column: 9, scope: !2311)
!2322 = !DILocation(line: 1629, column: 22, scope: !2311)
!2323 = !DILocation(line: 1629, column: 9, scope: !2311)
!2324 = !DILocation(line: 1630, column: 9, scope: !2311)
!2325 = !DILocation(line: 1632, column: 5, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1632, column: 5)
!2327 = !DILocation(line: 1632, column: 5, scope: !2311)
!2328 = !DILocation(line: 1632, column: 5, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2326, file: !3, discriminator: 1)
!2330 = !DILocation(line: 1635, column: 14, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1635, column: 9)
!2332 = !DILocation(line: 1635, column: 9, scope: !2311)
!2333 = !DILocation(line: 1636, column: 9, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 1635, column: 40)
!2335 = !DILocalVariable(name: "channel", arg: 1, scope: !2336, file: !3, line: 1411, type: !219)
!2336 = distinct !DISubprogram(name: "l2cap_handle_disconnect_request", scope: !3, file: !3, line: 1411, type: !2337, isLocal: true, isDefinition: true, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !219, !251}
!2339 = !{!2335, !2340}
!2340 = !DILocalVariable(name: "identifier", arg: 2, scope: !2336, file: !3, line: 1411, type: !251)
!2341 = !DILocation(line: 1411, column: 64, scope: !2336, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 1641, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1636, column: 51)
!2344 = !DILocation(line: 1413, column: 32, scope: !2336, inlinedAt: !2342)
!2345 = !DILocation(line: 1413, column: 46, scope: !2336, inlinedAt: !2342)
!2346 = !DILocation(line: 1414, column: 38, scope: !2336, inlinedAt: !2342)
!2347 = !DILocation(line: 1415, column: 5, scope: !2336, inlinedAt: !2342)
!2348 = !DILocation(line: 1642, column: 13, scope: !2343)
!2349 = !DILocation(line: 1651, column: 5, scope: !2311)
!2350 = !DILocation(line: 1654, column: 9, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1651, column: 47)
!2352 = !DILocation(line: 1658, column: 50, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1657, column: 20)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 1657, column: 17)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1654, column: 23)
!2356 = !DILocalVariable(name: "channel", arg: 1, scope: !2357, file: !3, line: 1588, type: !219)
!2357 = distinct !DISubprogram(name: "l2cap_signaling_handle_information_response", scope: !3, file: !3, line: 1588, type: !2212, isLocal: true, isDefinition: true, scopeLine: 1589, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2358)
!2358 = !{!2356, !2359, !2360, !2361, !2362, !2364}
!2359 = !DILocalVariable(name: "command", arg: 2, scope: !2357, file: !3, line: 1588, type: !282)
!2360 = !DILocalVariable(name: "end_pos", scope: !2357, file: !3, line: 1591, type: !251)
!2361 = !DILocalVariable(name: "pos", scope: !2357, file: !3, line: 1592, type: !251)
!2362 = !DILocalVariable(name: "infotype", scope: !2363, file: !3, line: 1594, type: !251)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1593, column: 27)
!2364 = !DILocalVariable(name: "result", scope: !2363, file: !3, line: 1596, type: !251)
!2365 = !DILocation(line: 1588, column: 74, scope: !2357, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 1659, column: 17, scope: !2353)
!2367 = !DILocation(line: 1588, column: 87, scope: !2357, inlinedAt: !2366)
!2368 = !DILocation(line: 1591, column: 23, scope: !2357, inlinedAt: !2366)
!2369 = !DILocation(line: 1591, column: 21, scope: !2357, inlinedAt: !2366)
!2370 = !DILocation(line: 1592, column: 9, scope: !2357, inlinedAt: !2366)
!2371 = !DILocation(line: 1593, column: 18, scope: !2372, inlinedAt: !2366)
!2372 = !DILexicalBlockFile(scope: !2357, file: !3, discriminator: 1)
!2373 = !DILocation(line: 1593, column: 16, scope: !2372, inlinedAt: !2366)
!2374 = !DILocation(line: 1593, column: 5, scope: !2372, inlinedAt: !2366)
!2375 = !DILocation(line: 1595, column: 13, scope: !2363, inlinedAt: !2366)
!2376 = !DILocation(line: 1596, column: 24, scope: !2363, inlinedAt: !2366)
!2377 = !DILocation(line: 1597, column: 13, scope: !2363, inlinedAt: !2366)
!2378 = !DILocation(line: 1598, column: 20, scope: !2379, inlinedAt: !2366)
!2379 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1598, column: 13)
!2380 = !DILocation(line: 1598, column: 25, scope: !2379, inlinedAt: !2366)
!2381 = !DILocation(line: 1593, column: 12, scope: !2372, inlinedAt: !2366)
!2382 = !DILocation(line: 1594, column: 24, scope: !2363, inlinedAt: !2366)
!2383 = !DILocation(line: 1598, column: 37, scope: !2384, inlinedAt: !2366)
!2384 = !DILexicalBlockFile(scope: !2379, file: !3, discriminator: 1)
!2385 = !DILocation(line: 1598, column: 13, scope: !2386, inlinedAt: !2366)
!2386 = !DILexicalBlockFile(scope: !2363, file: !3, discriminator: 1)
!2387 = !DILocation(line: 1599, column: 66, scope: !2388, inlinedAt: !2366)
!2388 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 1598, column: 48)
!2389 = !DILocation(line: 1599, column: 40, scope: !2388, inlinedAt: !2366)
!2390 = !DILocation(line: 1599, column: 64, scope: !2388, inlinedAt: !2366)
!2391 = !{!698, !508, i64 40}
!2392 = !DILocation(line: 1602, column: 70, scope: !2393, inlinedAt: !2366)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1602, column: 17)
!2394 = !DILocation(line: 1602, column: 17, scope: !2388, inlinedAt: !2366)
!2395 = !DILocation(line: 1603, column: 44, scope: !2396, inlinedAt: !2366)
!2396 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1602, column: 81)
!2397 = !DILocation(line: 1603, column: 57, scope: !2396, inlinedAt: !2366)
!2398 = !DILocation(line: 1604, column: 13, scope: !2396, inlinedAt: !2366)
!2399 = !DILocation(line: 1660, column: 54, scope: !2353)
!2400 = !DILocation(line: 1660, column: 109, scope: !2353)
!2401 = !DILocation(line: 1660, column: 82, scope: !2353)
!2402 = !DILocation(line: 1660, column: 150, scope: !2353)
!2403 = !DILocation(line: 1660, column: 123, scope: !2353)
!2404 = !DILocation(line: 1660, column: 182, scope: !2353)
!2405 = !DILocation(line: 1660, column: 155, scope: !2353)
!2406 = !DILocation(line: 1660, column: 17, scope: !2353)
!2407 = !DILocation(line: 1665, column: 13, scope: !2355)
!2408 = !DILocation(line: 1669, column: 9, scope: !2351)
!2409 = !DILocation(line: 1671, column: 22, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1669, column: 23)
!2411 = !DILocation(line: 1674, column: 13, scope: !2410)
!2412 = !DILocation(line: 1677, column: 57, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1674, column: 29)
!2414 = !DILocation(line: 1677, column: 44, scope: !2413)
!2415 = !DILocation(line: 1677, column: 55, scope: !2413)
!2416 = !DILocation(line: 1678, column: 50, scope: !2413)
!2417 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 1679, column: 17, scope: !2413)
!2419 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2418)
!2420 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !2418)
!2421 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2418)
!2422 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2418)
!2423 = !DILocation(line: 1680, column: 17, scope: !2413)
!2424 = !DILocation(line: 1688, column: 50, scope: !2413)
!2425 = !DILocation(line: 1691, column: 96, scope: !2413)
!2426 = !DILocation(line: 1691, column: 17, scope: !2413)
!2427 = !DILocation(line: 1699, column: 17, scope: !2413)
!2428 = !DILocation(line: 1700, column: 51, scope: !2413)
!2429 = !DILocation(line: 1700, column: 17, scope: !2413)
!2430 = !DILocation(line: 1701, column: 17, scope: !2413)
!2431 = !DILocation(line: 1712, column: 9, scope: !2351)
!2432 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 1715, column: 13, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1712, column: 23)
!2435 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2433)
!2436 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !2433)
!2437 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2433)
!2438 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2433)
!2439 = !DILocation(line: 1716, column: 13, scope: !2434)
!2440 = !DILocation(line: 1717, column: 46, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 1717, column: 17)
!2442 = !DILocation(line: 1717, column: 56, scope: !2441)
!2443 = !DILocation(line: 1717, column: 17, scope: !2434)
!2444 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1719, column: 17, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1717, column: 103)
!2447 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2445)
!2448 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2445)
!2449 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2445)
!2450 = !DILocation(line: 1720, column: 13, scope: !2446)
!2451 = !DILocation(line: 1724, column: 22, scope: !2434)
!2452 = !DILocation(line: 1725, column: 17, scope: !2434)
!2453 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 1726, column: 17, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1725, column: 30)
!2456 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 1725, column: 17)
!2457 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2454)
!2458 = !DILocation(line: 646, column: 97, scope: !1288, inlinedAt: !2454)
!2459 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2454)
!2460 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2454)
!2461 = !DILocation(line: 1727, column: 13, scope: !2455)
!2462 = !DILocation(line: 1727, column: 40, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2464, file: !3, discriminator: 2)
!2464 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1727, column: 24)
!2465 = !DILocation(line: 1727, column: 70, scope: !2463)
!2466 = !DILocation(line: 1727, column: 87, scope: !2463)
!2467 = !DILocation(line: 1727, column: 24, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2456, file: !3, discriminator: 2)
!2469 = !DILocation(line: 649, column: 58, scope: !1367, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 1728, column: 17, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1727, column: 98)
!2472 = !DILocation(line: 649, column: 91, scope: !1367, inlinedAt: !2470)
!2473 = !DILocation(line: 651, column: 97, scope: !1367, inlinedAt: !2470)
!2474 = !DILocation(line: 651, column: 107, scope: !1367, inlinedAt: !2470)
!2475 = !DILocation(line: 1729, column: 44, scope: !2471)
!2476 = !DILocation(line: 1729, column: 57, scope: !2471)
!2477 = !DILocation(line: 1730, column: 50, scope: !2471)
!2478 = !DILocation(line: 644, column: 56, scope: !1288, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1731, column: 17, scope: !2471)
!2480 = !DILocation(line: 644, column: 89, scope: !1288, inlinedAt: !2479)
!2481 = !DILocation(line: 646, column: 107, scope: !1288, inlinedAt: !2479)
!2482 = !DILocation(line: 646, column: 42, scope: !1288, inlinedAt: !2479)
!2483 = !DILocation(line: 1732, column: 13, scope: !2471)
!2484 = !DILocation(line: 1733, column: 50, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1732, column: 32)
!2486 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1732, column: 24)
!2487 = !DILocation(line: 1734, column: 13, scope: !2485)
!2488 = !DILocation(line: 1612, column: 60, scope: !1511, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 1739, column: 13, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1739, column: 13)
!2491 = !DILocation(line: 1615, column: 37, scope: !1510, inlinedAt: !2489)
!2492 = !DILocation(line: 1739, column: 13, scope: !2490)
!2493 = !DILocation(line: 1739, column: 13, scope: !2351)
!2494 = !DILocation(line: 1741, column: 46, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1739, column: 52)
!2496 = !DILocation(line: 1742, column: 13, scope: !2495)
!2497 = !DILocation(line: 1743, column: 13, scope: !2495)
!2498 = !DILocation(line: 1744, column: 9, scope: !2495)
!2499 = !DILocation(line: 1748, column: 9, scope: !2351)
!2500 = !DILocation(line: 1750, column: 13, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1748, column: 23)
!2502 = !DILocation(line: 1751, column: 13, scope: !2501)
!2503 = !DILocation(line: 1769, column: 1, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2311, file: !3, discriminator: 2)
!2505 = distinct !DISubprogram(name: "l2cap_signaling_handler_dispatch", scope: !3, file: !3, line: 1772, type: !2506, isLocal: false, isDefinition: true, scopeLine: 1773, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !225, !282}
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2517, !2518, !2520, !2522}
!2509 = !DILocalVariable(name: "handle", arg: 1, scope: !2505, file: !3, line: 1772, type: !225)
!2510 = !DILocalVariable(name: "command", arg: 2, scope: !2505, file: !3, line: 1772, type: !282)
!2511 = !DILocalVariable(name: "code", scope: !2505, file: !3, line: 1777, type: !233)
!2512 = !DILocalVariable(name: "sig_id", scope: !2505, file: !3, line: 1778, type: !233)
!2513 = !DILocalVariable(name: "dest_cid", scope: !2505, file: !3, line: 1779, type: !251)
!2514 = !DILocalVariable(name: "psm", scope: !2515, file: !3, line: 1789, type: !251)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 1788, column: 30)
!2516 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1787, column: 19)
!2517 = !DILocalVariable(name: "source_cid", scope: !2515, file: !3, line: 1790, type: !251)
!2518 = !DILocalVariable(name: "infoType", scope: !2519, file: !3, line: 1806, type: !251)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 1805, column: 9)
!2520 = !DILocalVariable(name: "it", scope: !2521, file: !3, line: 1821, type: !211)
!2521 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1820, column: 5)
!2522 = !DILocalVariable(name: "channel", scope: !2523, file: !3, line: 1823, type: !219)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 1822, column: 86)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1822, column: 9)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1822, column: 9)
!2526 = !DILocalVariable(name: "event", scope: !2527, file: !3, line: 352, type: !2530)
!2527 = distinct !DISubprogram(name: "l2cap_emit_connection_request", scope: !3, file: !3, line: 350, type: !1705, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2528)
!2528 = !{!2529, !2526}
!2529 = !DILocalVariable(name: "channel", arg: 1, scope: !2527, file: !3, line: 350, type: !219)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 128, elements: !2531)
!2531 = !{!2532}
!2532 = !DISubrange(count: 16)
!2533 = !DILocation(line: 352, column: 8, scope: !2527, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 1491, column: 5, scope: !2535, inlinedAt: !2546)
!2535 = distinct !DISubprogram(name: "l2cap_handle_connection_request", scope: !3, file: !3, line: 1432, type: !2536, isLocal: true, isDefinition: true, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !225, !233, !251, !251}
!2538 = !{!2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2539 = !DILocalVariable(name: "handle", arg: 1, scope: !2535, file: !3, line: 1432, type: !225)
!2540 = !DILocalVariable(name: "sig_id", arg: 2, scope: !2535, file: !3, line: 1432, type: !233)
!2541 = !DILocalVariable(name: "psm", arg: 3, scope: !2535, file: !3, line: 1432, type: !251)
!2542 = !DILocalVariable(name: "source_cid", arg: 4, scope: !2535, file: !3, line: 1432, type: !251)
!2543 = !DILocalVariable(name: "service", scope: !2535, file: !3, line: 1436, type: !399)
!2544 = !DILocalVariable(name: "hci_connection_addr", scope: !2535, file: !3, line: 1437, type: !282)
!2545 = !DILocalVariable(name: "channel", scope: !2535, file: !3, line: 1438, type: !219)
!2546 = distinct !DILocation(line: 1794, column: 9, scope: !2515)
!2547 = !DILocation(line: 1772, column: 56, scope: !2505)
!2548 = !DILocation(line: 1772, column: 68, scope: !2505)
!2549 = !DILocation(line: 1777, column: 17, scope: !2505)
!2550 = !DILocation(line: 1777, column: 8, scope: !2505)
!2551 = !DILocation(line: 1778, column: 17, scope: !2505)
!2552 = !DILocation(line: 1778, column: 8, scope: !2505)
!2553 = !DILocation(line: 1781, column: 18, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1781, column: 9)
!2555 = !DILocation(line: 1781, column: 51, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2554, file: !3, discriminator: 2)
!2557 = !DILocation(line: 1781, column: 9, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2505, file: !3, discriminator: 2)
!2559 = !DILocation(line: 1782, column: 9, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 1781, column: 75)
!2561 = !DILocation(line: 1783, column: 9, scope: !2560)
!2562 = !DILocation(line: 1787, column: 5, scope: !2505)
!2563 = !DILocation(line: 1789, column: 26, scope: !2515)
!2564 = !DILocation(line: 1789, column: 13, scope: !2515)
!2565 = !DILocation(line: 1790, column: 26, scope: !2515)
!2566 = !DILocation(line: 1790, column: 13, scope: !2515)
!2567 = !DILocation(line: 1791, column: 9, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1791, column: 9)
!2569 = !DILocation(line: 1791, column: 9, scope: !2515)
!2570 = !DILocation(line: 1791, column: 9, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2568, file: !3, discriminator: 1)
!2572 = !DILocation(line: 1793, column: 9, scope: !2515)
!2573 = !DILocation(line: 1432, column: 64, scope: !2535, inlinedAt: !2546)
!2574 = !DILocation(line: 1432, column: 75, scope: !2535, inlinedAt: !2546)
!2575 = !DILocation(line: 1432, column: 87, scope: !2535, inlinedAt: !2546)
!2576 = !DILocation(line: 1432, column: 96, scope: !2535, inlinedAt: !2546)
!2577 = !DILocalVariable(name: "psm", arg: 1, scope: !2578, file: !3, line: 2270, type: !251)
!2578 = distinct !DISubprogram(name: "l2cap_get_service", scope: !3, file: !3, line: 2270, type: !2579, isLocal: false, isDefinition: true, scopeLine: 2271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!399, !251}
!2581 = !{!2577, !2582, !2583}
!2582 = !DILocalVariable(name: "it", scope: !2578, file: !3, line: 2272, type: !211)
!2583 = !DILocalVariable(name: "service", scope: !2584, file: !3, line: 2276, type: !399)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 2275, column: 82)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 2275, column: 5)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 2275, column: 5)
!2587 = !DILocation(line: 2270, column: 40, scope: !2578, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1436, column: 32, scope: !2535, inlinedAt: !2546)
!2589 = !DILocation(line: 2275, column: 33, scope: !2586, inlinedAt: !2588)
!2590 = !DILocation(line: 2275, column: 46, scope: !2586, inlinedAt: !2588)
!2591 = !DILocation(line: 2272, column: 20, scope: !2578, inlinedAt: !2588)
!2592 = !DILocation(line: 2275, column: 5, scope: !2593, inlinedAt: !2588)
!2593 = !DILexicalBlockFile(scope: !2586, file: !3, discriminator: 1)
!2594 = !DILocation(line: 2277, column: 22, scope: !2595, inlinedAt: !2588)
!2595 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 2277, column: 13)
!2596 = !DILocation(line: 2275, column: 76, scope: !2597, inlinedAt: !2588)
!2597 = !DILexicalBlockFile(scope: !2585, file: !3, discriminator: 2)
!2598 = distinct !{!2598, !2599, !2600}
!2599 = !DILocation(line: 2275, column: 5, scope: !2586)
!2600 = !DILocation(line: 2280, column: 5, scope: !2586)
!2601 = !{!2602, !509, i64 4}
!2602 = !{!"", !538, i64 0, !509, i64 4, !509, i64 6, !500, i64 8, !500, i64 12}
!2603 = !DILocation(line: 2277, column: 26, scope: !2595, inlinedAt: !2588)
!2604 = !DILocation(line: 1442, column: 9, scope: !2605, inlinedAt: !2546)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1440, column: 19)
!2606 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1440, column: 9)
!2607 = !DILocation(line: 1443, column: 9, scope: !2605, inlinedAt: !2546)
!2608 = !DILocation(line: 2276, column: 37, scope: !2584, inlinedAt: !2588)
!2609 = !DILocation(line: 1446, column: 27, scope: !2535, inlinedAt: !2546)
!2610 = !DILocation(line: 1437, column: 9, scope: !2535, inlinedAt: !2546)
!2611 = !DILocation(line: 1447, column: 10, scope: !2612, inlinedAt: !2546)
!2612 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1447, column: 9)
!2613 = !DILocation(line: 1447, column: 9, scope: !2535, inlinedAt: !2546)
!2614 = !DILocation(line: 1449, column: 9, scope: !2615, inlinedAt: !2546)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1449, column: 9)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 1447, column: 31)
!2617 = !DILocation(line: 1449, column: 9, scope: !2616, inlinedAt: !2546)
!2618 = !DILocation(line: 1449, column: 9, scope: !2619, inlinedAt: !2546)
!2619 = !DILexicalBlockFile(scope: !2615, file: !3, discriminator: 1)
!2620 = !DILocation(line: 1453, column: 5, scope: !2621, inlinedAt: !2546)
!2621 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1453, column: 5)
!2622 = !DILocation(line: 1453, column: 5, scope: !2535, inlinedAt: !2546)
!2623 = !DILocation(line: 1453, column: 5, scope: !2624, inlinedAt: !2546)
!2624 = !DILexicalBlockFile(scope: !2621, file: !3, discriminator: 1)
!2625 = !DILocation(line: 1454, column: 35, scope: !2535, inlinedAt: !2546)
!2626 = !DILocation(line: 1454, column: 15, scope: !2535, inlinedAt: !2546)
!2627 = !DILocation(line: 1438, column: 22, scope: !2535, inlinedAt: !2546)
!2628 = !DILocation(line: 1455, column: 10, scope: !2629, inlinedAt: !2546)
!2629 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1455, column: 9)
!2630 = !DILocation(line: 1455, column: 9, scope: !2535, inlinedAt: !2546)
!2631 = !DILocation(line: 1457, column: 9, scope: !2632, inlinedAt: !2546)
!2632 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1455, column: 19)
!2633 = !DILocation(line: 1458, column: 9, scope: !2632, inlinedAt: !2546)
!2634 = !DILocation(line: 1462, column: 5, scope: !2535, inlinedAt: !2546)
!2635 = !DILocation(line: 1463, column: 32, scope: !2535, inlinedAt: !2546)
!2636 = !DILocation(line: 1463, column: 36, scope: !2535, inlinedAt: !2546)
!2637 = !DILocation(line: 1464, column: 14, scope: !2535, inlinedAt: !2546)
!2638 = !DILocation(line: 1464, column: 21, scope: !2535, inlinedAt: !2546)
!2639 = !DILocation(line: 1465, column: 36, scope: !2535, inlinedAt: !2546)
!2640 = !{!2602, !500, i64 8}
!2641 = !DILocation(line: 1465, column: 14, scope: !2535, inlinedAt: !2546)
!2642 = !DILocation(line: 1465, column: 25, scope: !2535, inlinedAt: !2546)
!2643 = !DILocation(line: 1466, column: 40, scope: !2535, inlinedAt: !2546)
!2644 = !{!2602, !500, i64 12}
!2645 = !DILocation(line: 1466, column: 14, scope: !2535, inlinedAt: !2546)
!2646 = !DILocation(line: 1466, column: 29, scope: !2535, inlinedAt: !2546)
!2647 = !DILocation(line: 133, column: 12, scope: !1808, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1467, column: 45, scope: !2535, inlinedAt: !2546)
!2649 = !DILocation(line: 133, column: 43, scope: !1808, inlinedAt: !2648)
!2650 = !DILocation(line: 133, column: 59, scope: !1808, inlinedAt: !2648)
!2651 = !DILocation(line: 1467, column: 32, scope: !2535, inlinedAt: !2546)
!2652 = !DILocation(line: 1467, column: 43, scope: !2535, inlinedAt: !2546)
!2653 = !DILocation(line: 1468, column: 32, scope: !2535, inlinedAt: !2546)
!2654 = !DILocation(line: 1468, column: 43, scope: !2535, inlinedAt: !2546)
!2655 = !DILocation(line: 1469, column: 54, scope: !2535, inlinedAt: !2546)
!2656 = !DILocation(line: 1469, column: 32, scope: !2535, inlinedAt: !2546)
!2657 = !DILocation(line: 1469, column: 43, scope: !2535, inlinedAt: !2546)
!2658 = !DILocation(line: 970, column: 9, scope: !1721, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1470, column: 45, scope: !2535, inlinedAt: !2546)
!2660 = !DILocation(line: 973, column: 9, scope: !1723, inlinedAt: !2659)
!2661 = !DILocation(line: 1470, column: 32, scope: !2535, inlinedAt: !2546)
!2662 = !DILocation(line: 1470, column: 43, scope: !2535, inlinedAt: !2546)
!2663 = !DILocation(line: 1471, column: 32, scope: !2535, inlinedAt: !2546)
!2664 = !DILocation(line: 1471, column: 46, scope: !2535, inlinedAt: !2546)
!2665 = !DILocation(line: 1473, column: 39, scope: !2666, inlinedAt: !2546)
!2666 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1473, column: 9)
!2667 = !DILocation(line: 1473, column: 9, scope: !2535, inlinedAt: !2546)
!2668 = !DILocation(line: 1479, column: 46, scope: !2669, inlinedAt: !2546)
!2669 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1479, column: 9)
!2670 = !DILocation(line: 1479, column: 9, scope: !2535, inlinedAt: !2546)
!2671 = !DILocation(line: 1480, column: 46, scope: !2672, inlinedAt: !2546)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1479, column: 65)
!2673 = !DILocation(line: 1481, column: 5, scope: !2672, inlinedAt: !2546)
!2674 = !DILocation(line: 1484, column: 32, scope: !2535, inlinedAt: !2546)
!2675 = !DILocation(line: 1484, column: 38, scope: !2535, inlinedAt: !2546)
!2676 = !DILocation(line: 1485, column: 32, scope: !2535, inlinedAt: !2546)
!2677 = !DILocation(line: 1485, column: 42, scope: !2535, inlinedAt: !2546)
!2678 = !DILocation(line: 1488, column: 5, scope: !2535, inlinedAt: !2546)
!2679 = !DILocation(line: 350, column: 53, scope: !2527, inlinedAt: !2534)
!2680 = !DILocation(line: 352, column: 5, scope: !2527, inlinedAt: !2534)
!2681 = !DILocation(line: 353, column: 5, scope: !2682, inlinedAt: !2534)
!2682 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 353, column: 5)
!2683 = !DILocation(line: 353, column: 5, scope: !2527, inlinedAt: !2534)
!2684 = !DILocation(line: 353, column: 5, scope: !2685, inlinedAt: !2534)
!2685 = !DILexicalBlockFile(scope: !2682, file: !3, discriminator: 1)
!2686 = !DILocation(line: 353, column: 5, scope: !2687, inlinedAt: !2534)
!2687 = !DILexicalBlockFile(scope: !2682, file: !3, discriminator: 2)
!2688 = !DILocation(line: 356, column: 14, scope: !2527, inlinedAt: !2534)
!2689 = !DILocation(line: 357, column: 5, scope: !2527, inlinedAt: !2534)
!2690 = !DILocation(line: 357, column: 14, scope: !2527, inlinedAt: !2534)
!2691 = !DILocation(line: 358, column: 19, scope: !2527, inlinedAt: !2534)
!2692 = !DILocation(line: 358, column: 5, scope: !2527, inlinedAt: !2534)
!2693 = !DILocation(line: 359, column: 37, scope: !2527, inlinedAt: !2534)
!2694 = !DILocation(line: 359, column: 5, scope: !2527, inlinedAt: !2534)
!2695 = !DILocation(line: 360, column: 55, scope: !2527, inlinedAt: !2534)
!2696 = !DILocation(line: 360, column: 5, scope: !2527, inlinedAt: !2534)
!2697 = !DILocation(line: 361, column: 55, scope: !2527, inlinedAt: !2534)
!2698 = !DILocation(line: 361, column: 5, scope: !2527, inlinedAt: !2534)
!2699 = !DILocation(line: 362, column: 55, scope: !2527, inlinedAt: !2534)
!2700 = !DILocation(line: 362, column: 5, scope: !2527, inlinedAt: !2534)
!2701 = !DILocation(line: 363, column: 5, scope: !2527, inlinedAt: !2534)
!2702 = !DILocation(line: 364, column: 1, scope: !2527, inlinedAt: !2534)
!2703 = !DILocation(line: 1492, column: 1, scope: !2535, inlinedAt: !2546)
!2704 = !DILocation(line: 1804, column: 9, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 1804, column: 9)
!2706 = !DILocation(line: 1804, column: 9, scope: !2516)
!2707 = !DILocation(line: 1804, column: 9, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2705, file: !3, discriminator: 1)
!2709 = !DILocation(line: 1806, column: 28, scope: !2519)
!2710 = !DILocation(line: 1806, column: 17, scope: !2519)
!2711 = !DILocation(line: 1807, column: 13, scope: !2519)
!2712 = !DILocation(line: 1809, column: 9, scope: !2516)
!2713 = !DILocation(line: 1817, column: 16, scope: !2505)
!2714 = !DILocation(line: 1822, column: 37, scope: !2525)
!2715 = !DILocation(line: 1822, column: 50, scope: !2525)
!2716 = !DILocation(line: 1821, column: 24, scope: !2521)
!2717 = !DILocation(line: 1822, column: 9, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2525, file: !3, discriminator: 1)
!2719 = !DILocation(line: 1824, column: 26, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1824, column: 17)
!2721 = !DILocation(line: 1824, column: 33, scope: !2720)
!2722 = !DILocation(line: 1824, column: 17, scope: !2523)
!2723 = !DILocation(line: 1825, column: 21, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1824, column: 44)
!2725 = !DILocation(line: 1827, column: 52, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 1827, column: 25)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1825, column: 31)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 1825, column: 21)
!2729 = !DILocation(line: 1827, column: 65, scope: !2726)
!2730 = !DILocation(line: 1827, column: 25, scope: !2727)
!2731 = !DILocation(line: 1823, column: 40, scope: !2523)
!2732 = !DILocation(line: 1828, column: 25, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1827, column: 76)
!2734 = !DILocation(line: 1833, column: 52, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1833, column: 25)
!2736 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1831, column: 24)
!2737 = !DILocation(line: 1833, column: 25, scope: !2735)
!2738 = !DILocation(line: 1833, column: 62, scope: !2735)
!2739 = !DILocation(line: 1833, column: 25, scope: !2736)
!2740 = !DILocation(line: 1834, column: 25, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1833, column: 75)
!2742 = !DILocation(line: 1822, column: 80, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2524, file: !3, discriminator: 2)
!2744 = distinct !{!2744, !2745, !2746}
!2745 = !DILocation(line: 1822, column: 9, scope: !2525)
!2746 = !DILocation(line: 1839, column: 9, scope: !2525)
!2747 = !DILocation(line: 1841, column: 1, scope: !2558)
!2748 = distinct !DISubprogram(name: "l2cap_register_signaling_response", scope: !3, file: !3, line: 1418, type: !2749, isLocal: true, isDefinition: true, scopeLine: 1419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !225, !233, !233, !251, !251}
!2751 = !{!2752, !2753, !2754, !2755, !2756}
!2752 = !DILocalVariable(name: "handle", arg: 1, scope: !2748, file: !3, line: 1418, type: !225)
!2753 = !DILocalVariable(name: "code", arg: 2, scope: !2748, file: !3, line: 1418, type: !233)
!2754 = !DILocalVariable(name: "sig_id", arg: 3, scope: !2748, file: !3, line: 1418, type: !233)
!2755 = !DILocalVariable(name: "cid", arg: 4, scope: !2748, file: !3, line: 1418, type: !251)
!2756 = !DILocalVariable(name: "data", arg: 5, scope: !2748, file: !3, line: 1418, type: !251)
!2757 = !DILocation(line: 1418, column: 66, scope: !2748)
!2758 = !DILocation(line: 1418, column: 77, scope: !2748)
!2759 = !DILocation(line: 1418, column: 86, scope: !2748)
!2760 = !DILocation(line: 1418, column: 98, scope: !2748)
!2761 = !DILocation(line: 1418, column: 108, scope: !2748)
!2762 = !DILocation(line: 1421, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 1421, column: 9)
!2764 = !DILocation(line: 1421, column: 39, scope: !2763)
!2765 = !DILocation(line: 1421, column: 67, scope: !2763)
!2766 = !DILocation(line: 1421, column: 9, scope: !2748)
!2767 = !DILocation(line: 1422, column: 118, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1421, column: 101)
!2769 = !DILocation(line: 1422, column: 125, scope: !2768)
!2770 = !DILocation(line: 1423, column: 89, scope: !2768)
!2771 = !DILocation(line: 1423, column: 118, scope: !2768)
!2772 = !DILocation(line: 1423, column: 123, scope: !2768)
!2773 = !DILocation(line: 1424, column: 89, scope: !2768)
!2774 = !DILocation(line: 1424, column: 118, scope: !2768)
!2775 = !DILocation(line: 1424, column: 125, scope: !2768)
!2776 = !DILocation(line: 1425, column: 89, scope: !2768)
!2777 = !DILocation(line: 1425, column: 118, scope: !2768)
!2778 = !DILocation(line: 1425, column: 122, scope: !2768)
!2779 = !{!1144, !509, i64 4}
!2780 = !DILocation(line: 1426, column: 118, scope: !2768)
!2781 = !DILocation(line: 1426, column: 123, scope: !2768)
!2782 = !DILocation(line: 1427, column: 66, scope: !2768)
!2783 = !DILocation(line: 1428, column: 9, scope: !2768)
!2784 = !DILocation(line: 1429, column: 5, scope: !2768)
!2785 = !DILocation(line: 1430, column: 1, scope: !2748)
!2786 = distinct !DISubprogram(name: "l2cap_connection_update_request_just", scope: !3, file: !3, line: 1866, type: !2787, isLocal: false, isDefinition: true, scopeLine: 1867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!331, !282, !225}
!2789 = !{!2790, !2791}
!2790 = !DILocalVariable(name: "packet", arg: 1, scope: !2786, file: !3, line: 1866, type: !282)
!2791 = !DILocalVariable(name: "handle", arg: 2, scope: !2786, file: !3, line: 1866, type: !225)
!2792 = !DILocation(line: 1866, column: 46, scope: !2786)
!2793 = !DILocation(line: 1866, column: 71, scope: !2786)
!2794 = !DILocation(line: 1868, column: 5, scope: !2786)
!2795 = distinct !DISubprogram(name: "l2cap_acl_handler", scope: !3, file: !3, line: 1993, type: !1890, isLocal: false, isDefinition: true, scopeLine: 1994, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2807, !2808, !2809}
!2797 = !DILocalVariable(name: "packet", arg: 1, scope: !2795, file: !3, line: 1993, type: !282)
!2798 = !DILocalVariable(name: "size", arg: 2, scope: !2795, file: !3, line: 1993, type: !251)
!2799 = !DILocalVariable(name: "channel_id", scope: !2795, file: !3, line: 1997, type: !251)
!2800 = !DILocalVariable(name: "handle", scope: !2795, file: !3, line: 1998, type: !225)
!2801 = !DILocalVariable(name: "command_offset", scope: !2795, file: !3, line: 1999, type: !251)
!2802 = !DILocalVariable(name: "sig_id", scope: !2803, file: !3, line: 2022, type: !227)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 2020, column: 54)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 2020, column: 13)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 2018, column: 34)
!2806 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 2004, column: 25)
!2807 = !DILocalVariable(name: "len", scope: !2803, file: !3, line: 2023, type: !227)
!2808 = !DILocalVariable(name: "valid", scope: !2803, file: !3, line: 2027, type: !331)
!2809 = !DILocalVariable(name: "channel", scope: !2810, file: !3, line: 2055, type: !219)
!2810 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 2053, column: 14)
!2811 = !DILocalVariable(name: "event", scope: !2812, file: !3, line: 1847, type: !258)
!2812 = distinct !DISubprogram(name: "l2cap_emit_connection_parameter_update_response", scope: !3, file: !3, line: 1845, type: !2813, isLocal: true, isDefinition: true, scopeLine: 1846, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !225, !227}
!2815 = !{!2816, !2817, !2811}
!2816 = !DILocalVariable(name: "con_handle", arg: 1, scope: !2812, file: !3, line: 1845, type: !225)
!2817 = !DILocalVariable(name: "result", arg: 2, scope: !2812, file: !3, line: 1845, type: !227)
!2818 = !DILocation(line: 1847, column: 13, scope: !2812, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1977, column: 9, scope: !2820, inlinedAt: !2857)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1884, column: 19)
!2821 = distinct !DISubprogram(name: "l2cap_le_signaling_handler_dispatch", scope: !3, file: !3, line: 1872, type: !2822, isLocal: true, isDefinition: true, scopeLine: 1873, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!331, !225, !245, !243}
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830, !2834, !2835, !2836, !2841, !2842, !2853, !2854, !2855, !2856}
!2825 = !DILocalVariable(name: "handle", arg: 1, scope: !2821, file: !3, line: 1872, type: !225)
!2826 = !DILocalVariable(name: "command", arg: 2, scope: !2821, file: !3, line: 1872, type: !245)
!2827 = !DILocalVariable(name: "sig_id", arg: 3, scope: !2821, file: !3, line: 1872, type: !243)
!2828 = !DILocalVariable(name: "connection", scope: !2821, file: !3, line: 1874, type: !283)
!2829 = !DILocalVariable(name: "result", scope: !2821, file: !3, line: 1875, type: !227)
!2830 = !DILocalVariable(name: "event", scope: !2821, file: !3, line: 1876, type: !2831)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 80, elements: !2832)
!2832 = !{!2833}
!2833 = !DISubrange(count: 10)
!2834 = !DILocalVariable(name: "code", scope: !2821, file: !3, line: 1879, type: !243)
!2835 = !DILocalVariable(name: "len", scope: !2821, file: !3, line: 1880, type: !227)
!2836 = !DILocalVariable(name: "sig_id", scope: !2837, file: !3, line: 1896, type: !243)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1893, column: 54)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1893, column: 17)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1892, column: 25)
!2840 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1892, column: 13)
!2841 = !DILocalVariable(name: "update_parameter", scope: !2839, file: !3, line: 1900, type: !331)
!2842 = !DILocalVariable(name: "existing_range", scope: !2839, file: !3, line: 1901, type: !2843)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_connection_parameter_range_t", file: !2844, line: 110, baseType: !2845)
!2844 = !DIFile(filename: "../btstack/Protocol/include/ble/gap.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "le_connection_parameter_range", file: !2844, line: 103, size: 96, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !2845, file: !2844, line: 104, baseType: !227, size: 16)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !2845, file: !2844, line: 105, baseType: !227, size: 16, offset: 16)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency_min", scope: !2845, file: !2844, line: 106, baseType: !227, size: 16, offset: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency_max", scope: !2845, file: !2844, line: 107, baseType: !227, size: 16, offset: 48)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout_min", scope: !2845, file: !2844, line: 108, baseType: !227, size: 16, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout_max", scope: !2845, file: !2844, line: 109, baseType: !227, size: 16, offset: 80)
!2853 = !DILocalVariable(name: "le_conn_interval_min", scope: !2839, file: !3, line: 1903, type: !227)
!2854 = !DILocalVariable(name: "le_conn_interval_max", scope: !2839, file: !3, line: 1904, type: !227)
!2855 = !DILocalVariable(name: "le_conn_latency", scope: !2839, file: !3, line: 1905, type: !227)
!2856 = !DILocalVariable(name: "le_supervision_timeout", scope: !2839, file: !3, line: 1906, type: !227)
!2857 = distinct !DILocation(line: 2027, column: 31, scope: !2803)
!2858 = !DILocation(line: 1876, column: 14, scope: !2821, inlinedAt: !2857)
!2859 = !DILocation(line: 1993, column: 28, scope: !2795)
!2860 = !DILocation(line: 1993, column: 40, scope: !2795)
!2861 = !DILocation(line: 1997, column: 22, scope: !2795)
!2862 = !DILocation(line: 1997, column: 9, scope: !2795)
!2863 = !DILocation(line: 1998, column: 31, scope: !2795)
!2864 = !DILocation(line: 1998, column: 22, scope: !2795)
!2865 = !DILocation(line: 1999, column: 9, scope: !2795)
!2866 = !DILocation(line: 2004, column: 5, scope: !2795)
!2867 = !DILocation(line: 2007, column: 9, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 2007, column: 9)
!2869 = !DILocation(line: 2007, column: 9, scope: !2806)
!2870 = !DILocation(line: 2007, column: 9, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2868, file: !3, discriminator: 1)
!2872 = !DILocation(line: 2008, column: 33, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2806, file: !3, discriminator: 1)
!2874 = !DILocation(line: 2008, column: 31, scope: !2873)
!2875 = !DILocation(line: 2008, column: 9, scope: !2873)
!2876 = !DILocation(line: 2010, column: 55, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 2008, column: 39)
!2878 = !DILocation(line: 2010, column: 13, scope: !2877)
!2879 = !DILocation(line: 2013, column: 69, scope: !2877)
!2880 = !DILocation(line: 2013, column: 67, scope: !2877)
!2881 = !DILocation(line: 2013, column: 28, scope: !2877)
!2882 = !DILocation(line: 2008, column: 16, scope: !2873)
!2883 = distinct !{!2883, !2884, !2885}
!2884 = !DILocation(line: 2008, column: 9, scope: !2806)
!2885 = !DILocation(line: 2014, column: 9, scope: !2806)
!2886 = !DILocation(line: 2020, column: 13, scope: !2804)
!2887 = !DILocation(line: 2020, column: 13, scope: !2805)
!2888 = !DILocation(line: 2021, column: 13, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 2021, column: 13)
!2890 = !DILocation(line: 2021, column: 13, scope: !2803)
!2891 = !DILocation(line: 2021, column: 13, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2889, file: !3, discriminator: 1)
!2893 = !DILocation(line: 2022, column: 31, scope: !2803)
!2894 = !DILocation(line: 2023, column: 28, scope: !2803)
!2895 = !DILocation(line: 2024, column: 43, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 2024, column: 17)
!2897 = !DILocation(line: 2024, column: 51, scope: !2896)
!2898 = !DILocation(line: 2024, column: 49, scope: !2896)
!2899 = !DILocation(line: 2024, column: 17, scope: !2803)
!2900 = !DILocation(line: 2027, column: 76, scope: !2803)
!2901 = !DILocation(line: 1872, column: 65, scope: !2821, inlinedAt: !2857)
!2902 = !DILocation(line: 1872, column: 82, scope: !2821, inlinedAt: !2857)
!2903 = !DILocation(line: 1872, column: 99, scope: !2821, inlinedAt: !2857)
!2904 = !DILocation(line: 1876, column: 5, scope: !2821, inlinedAt: !2857)
!2905 = !DILocation(line: 1879, column: 22, scope: !2821, inlinedAt: !2857)
!2906 = !DILocation(line: 1879, column: 13, scope: !2821, inlinedAt: !2857)
!2907 = !DILocation(line: 1880, column: 22, scope: !2821, inlinedAt: !2857)
!2908 = !DILocation(line: 1880, column: 14, scope: !2821, inlinedAt: !2857)
!2909 = !DILocation(line: 1881, column: 5, scope: !2910, inlinedAt: !2857)
!2910 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1881, column: 5)
!2911 = !DILocation(line: 1881, column: 5, scope: !2821, inlinedAt: !2857)
!2912 = !DILocation(line: 1881, column: 5, scope: !2913, inlinedAt: !2857)
!2913 = !DILexicalBlockFile(scope: !2910, file: !3, discriminator: 1)
!2914 = !DILocation(line: 1882, column: 5, scope: !2915, inlinedAt: !2857)
!2915 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1882, column: 5)
!2916 = !DILocation(line: 1882, column: 5, scope: !2821, inlinedAt: !2857)
!2917 = !DILocation(line: 1882, column: 5, scope: !2918, inlinedAt: !2857)
!2918 = !DILexicalBlockFile(scope: !2919, file: !3, discriminator: 1)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1882, column: 5)
!2920 = !DILocation(line: 1882, column: 5, scope: !2921, inlinedAt: !2857)
!2921 = !DILexicalBlockFile(scope: !2919, file: !3, discriminator: 2)
!2922 = !DILocation(line: 1884, column: 5, scope: !2821, inlinedAt: !2857)
!2923 = !DILocation(line: 1888, column: 17, scope: !2924, inlinedAt: !2857)
!2924 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1888, column: 13)
!2925 = !DILocation(line: 1888, column: 13, scope: !2820, inlinedAt: !2857)
!2926 = !DILocation(line: 1891, column: 22, scope: !2820, inlinedAt: !2857)
!2927 = !DILocation(line: 1874, column: 26, scope: !2821, inlinedAt: !2857)
!2928 = !DILocation(line: 1892, column: 13, scope: !2840, inlinedAt: !2857)
!2929 = !DILocation(line: 1892, column: 13, scope: !2820, inlinedAt: !2857)
!2930 = !DILocation(line: 1893, column: 29, scope: !2838, inlinedAt: !2857)
!2931 = !{!1577, !501, i64 16}
!2932 = !DILocation(line: 1893, column: 34, scope: !2838, inlinedAt: !2857)
!2933 = !DILocation(line: 1893, column: 17, scope: !2839, inlinedAt: !2857)
!2934 = !DILocation(line: 1895, column: 17, scope: !2935, inlinedAt: !2857)
!2935 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1895, column: 17)
!2936 = !DILocation(line: 1895, column: 17, scope: !2837, inlinedAt: !2857)
!2937 = !DILocation(line: 1895, column: 17, scope: !2938, inlinedAt: !2857)
!2938 = !DILexicalBlockFile(scope: !2935, file: !3, discriminator: 1)
!2939 = !DILocation(line: 1896, column: 35, scope: !2837, inlinedAt: !2857)
!2940 = !DILocation(line: 1896, column: 25, scope: !2837, inlinedAt: !2857)
!2941 = !DILocation(line: 1897, column: 17, scope: !2837, inlinedAt: !2857)
!2942 = !DILocation(line: 1900, column: 17, scope: !2839, inlinedAt: !2857)
!2943 = !DILocation(line: 1901, column: 13, scope: !2839, inlinedAt: !2857)
!2944 = !DILocation(line: 1901, column: 45, scope: !2839, inlinedAt: !2857)
!2945 = !DILocation(line: 1902, column: 13, scope: !2839, inlinedAt: !2857)
!2946 = !DILocation(line: 1903, column: 45, scope: !2839, inlinedAt: !2857)
!2947 = !DILocation(line: 1903, column: 22, scope: !2839, inlinedAt: !2857)
!2948 = !DILocation(line: 1904, column: 45, scope: !2839, inlinedAt: !2857)
!2949 = !DILocation(line: 1904, column: 22, scope: !2839, inlinedAt: !2857)
!2950 = !DILocation(line: 1905, column: 40, scope: !2839, inlinedAt: !2857)
!2951 = !DILocation(line: 1905, column: 22, scope: !2839, inlinedAt: !2857)
!2952 = !DILocation(line: 1906, column: 47, scope: !2839, inlinedAt: !2857)
!2953 = !DILocation(line: 1906, column: 22, scope: !2839, inlinedAt: !2857)
!2954 = !DILocation(line: 1908, column: 55, scope: !2955, inlinedAt: !2857)
!2955 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1908, column: 17)
!2956 = !{!2957, !509, i64 0}
!2957 = !{!"le_connection_parameter_range", !509, i64 0, !509, i64 2, !509, i64 4, !509, i64 6, !509, i64 8, !509, i64 10}
!2958 = !DILocation(line: 1908, column: 17, scope: !2839, inlinedAt: !2857)
!2959 = !DILocation(line: 1911, column: 55, scope: !2960, inlinedAt: !2857)
!2960 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1911, column: 17)
!2961 = !{!2957, !509, i64 2}
!2962 = !DILocation(line: 1911, column: 17, scope: !2839, inlinedAt: !2857)
!2963 = !DILocation(line: 1915, column: 50, scope: !2964, inlinedAt: !2857)
!2964 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1915, column: 17)
!2965 = !{!2957, !509, i64 4}
!2966 = !DILocation(line: 1915, column: 17, scope: !2839, inlinedAt: !2857)
!2967 = !DILocation(line: 1918, column: 50, scope: !2968, inlinedAt: !2857)
!2968 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1918, column: 17)
!2969 = !{!2957, !509, i64 6}
!2970 = !DILocation(line: 1918, column: 17, scope: !2839, inlinedAt: !2857)
!2971 = !DILocation(line: 1922, column: 57, scope: !2972, inlinedAt: !2857)
!2972 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1922, column: 17)
!2973 = !{!2957, !509, i64 8}
!2974 = !DILocation(line: 1922, column: 17, scope: !2839, inlinedAt: !2857)
!2975 = !DILocation(line: 1925, column: 57, scope: !2976, inlinedAt: !2857)
!2976 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1925, column: 17)
!2977 = !{!2957, !509, i64 10}
!2978 = !DILocation(line: 1925, column: 17, scope: !2839, inlinedAt: !2857)
!2979 = !DILocation(line: 1929, column: 17, scope: !2839, inlinedAt: !2857)
!2980 = !DILocation(line: 1930, column: 59, scope: !2981, inlinedAt: !2857)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 1930, column: 21)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1929, column: 35)
!2983 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1929, column: 17)
!2984 = !DILocation(line: 1930, column: 21, scope: !2981, inlinedAt: !2857)
!2985 = !DILocation(line: 1930, column: 21, scope: !2982, inlinedAt: !2857)
!2986 = !DILocation(line: 1931, column: 21, scope: !2987, inlinedAt: !2857)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1931, column: 21)
!2988 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1930, column: 114)
!2989 = !DILocation(line: 1931, column: 21, scope: !2988, inlinedAt: !2857)
!2990 = !DILocation(line: 1931, column: 21, scope: !2991, inlinedAt: !2857)
!2991 = !DILexicalBlockFile(scope: !2987, file: !3, discriminator: 1)
!2992 = !DILocation(line: 1935, column: 44, scope: !2993, inlinedAt: !2857)
!2993 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1933, column: 24)
!2994 = !DILocation(line: 1936, column: 44, scope: !2993, inlinedAt: !2857)
!2995 = !DILocation(line: 1937, column: 39, scope: !2993, inlinedAt: !2857)
!2996 = !DILocation(line: 1938, column: 46, scope: !2993, inlinedAt: !2857)
!2997 = !DILocation(line: 1942, column: 13, scope: !2998, inlinedAt: !2857)
!2998 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1942, column: 13)
!2999 = !DILocation(line: 1942, column: 13, scope: !2839, inlinedAt: !2857)
!3000 = !DILocation(line: 1942, column: 13, scope: !3001, inlinedAt: !2857)
!3001 = !DILexicalBlockFile(scope: !2998, file: !3, discriminator: 1)
!3002 = !DILocation(line: 1943, column: 17, scope: !3003, inlinedAt: !2857)
!3003 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1943, column: 17)
!3004 = !DILocation(line: 1943, column: 17, scope: !2839, inlinedAt: !2857)
!3005 = !DILocation(line: 1944, column: 59, scope: !3006, inlinedAt: !2857)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1943, column: 35)
!3007 = !DILocation(line: 1945, column: 29, scope: !3006, inlinedAt: !2857)
!3008 = !DILocation(line: 1945, column: 50, scope: !3006, inlinedAt: !2857)
!3009 = !DILocation(line: 1946, column: 29, scope: !3006, inlinedAt: !2857)
!3010 = !DILocation(line: 1946, column: 50, scope: !3006, inlinedAt: !2857)
!3011 = !DILocation(line: 1947, column: 29, scope: !3006, inlinedAt: !2857)
!3012 = !DILocation(line: 1947, column: 45, scope: !3006, inlinedAt: !2857)
!3013 = !DILocation(line: 1948, column: 29, scope: !3006, inlinedAt: !2857)
!3014 = !DILocation(line: 1948, column: 52, scope: !3006, inlinedAt: !2857)
!3015 = !DILocation(line: 1949, column: 13, scope: !3006, inlinedAt: !2857)
!3016 = !DILocation(line: 1950, column: 59, scope: !3017, inlinedAt: !2857)
!3017 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1949, column: 20)
!3018 = !DILocation(line: 1952, column: 25, scope: !2839, inlinedAt: !2857)
!3019 = !DILocation(line: 1952, column: 56, scope: !2839, inlinedAt: !2857)
!3020 = !DILocation(line: 1953, column: 9, scope: !2840, inlinedAt: !2857)
!3021 = !DILocation(line: 1953, column: 9, scope: !2839, inlinedAt: !2857)
!3022 = !DILocation(line: 1959, column: 14, scope: !3023, inlinedAt: !2857)
!3023 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1959, column: 13)
!3024 = !DILocation(line: 1959, column: 13, scope: !2820, inlinedAt: !2857)
!3025 = !DILocation(line: 1963, column: 18, scope: !2820, inlinedAt: !2857)
!3026 = !DILocation(line: 1964, column: 9, scope: !2820, inlinedAt: !2857)
!3027 = !DILocation(line: 1964, column: 18, scope: !2820, inlinedAt: !2857)
!3028 = !DILocation(line: 1965, column: 17, scope: !2820, inlinedAt: !2857)
!3029 = !DILocation(line: 1965, column: 28, scope: !2820, inlinedAt: !2857)
!3030 = !DILocation(line: 1965, column: 9, scope: !2820, inlinedAt: !2857)
!3031 = !DILocation(line: 1968, column: 9, scope: !2820, inlinedAt: !2857)
!3032 = !DILocation(line: 1969, column: 9, scope: !2820, inlinedAt: !2857)
!3033 = !DILocation(line: 1973, column: 17, scope: !3034, inlinedAt: !2857)
!3034 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1973, column: 13)
!3035 = !DILocation(line: 1973, column: 13, scope: !2820, inlinedAt: !2857)
!3036 = !DILocation(line: 1976, column: 18, scope: !2820, inlinedAt: !2857)
!3037 = !DILocation(line: 1875, column: 14, scope: !2821, inlinedAt: !2857)
!3038 = !DILocation(line: 1845, column: 78, scope: !2812, inlinedAt: !2819)
!3039 = !DILocation(line: 1845, column: 99, scope: !2812, inlinedAt: !2819)
!3040 = !DILocation(line: 1847, column: 5, scope: !2812, inlinedAt: !2819)
!3041 = !DILocation(line: 1848, column: 14, scope: !2812, inlinedAt: !2819)
!3042 = !DILocation(line: 1849, column: 5, scope: !2812, inlinedAt: !2819)
!3043 = !DILocation(line: 1849, column: 14, scope: !2812, inlinedAt: !2819)
!3044 = !DILocation(line: 1850, column: 5, scope: !2812, inlinedAt: !2819)
!3045 = !DILocation(line: 1851, column: 5, scope: !2812, inlinedAt: !2819)
!3046 = !DILocation(line: 1858, column: 10, scope: !3047, inlinedAt: !2819)
!3047 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1858, column: 9)
!3048 = !DILocation(line: 1858, column: 9, scope: !2812, inlinedAt: !2819)
!3049 = !DILocation(line: 1861, column: 5, scope: !2812, inlinedAt: !2819)
!3050 = !DILocation(line: 1862, column: 1, scope: !2812, inlinedAt: !2819)
!3051 = !DILocation(line: 1978, column: 9, scope: !2820, inlinedAt: !2857)
!3052 = !DILocation(line: 1989, column: 1, scope: !2821, inlinedAt: !2857)
!3053 = !DILocation(line: 2027, column: 22, scope: !2803)
!3054 = !DILocation(line: 2028, column: 17, scope: !2803)
!3055 = !DILocation(line: 2029, column: 17, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 2028, column: 25)
!3057 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 2028, column: 17)
!3058 = !DILocation(line: 2030, column: 13, scope: !3056)
!3059 = !DILocation(line: 2036, column: 13, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 2036, column: 13)
!3061 = !DILocation(line: 2037, column: 90, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 2037, column: 17)
!3063 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 2036, column: 54)
!3064 = !DILocation(line: 2037, column: 17, scope: !3062)
!3065 = !DILocation(line: 2036, column: 13, scope: !2806)
!3066 = !DILocation(line: 2038, column: 128, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 2037, column: 100)
!3068 = !DILocation(line: 2038, column: 164, scope: !3067)
!3069 = !DILocation(line: 2038, column: 17, scope: !3067)
!3070 = !DILocation(line: 2039, column: 13, scope: !3067)
!3071 = !DILocation(line: 2044, column: 13, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 2044, column: 13)
!3073 = !DILocation(line: 2045, column: 97, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 2045, column: 17)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 2044, column: 54)
!3076 = !DILocation(line: 2045, column: 17, scope: !3074)
!3077 = !DILocation(line: 2044, column: 13, scope: !2806)
!3078 = !DILocation(line: 2046, column: 134, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 2045, column: 107)
!3080 = !DILocation(line: 2046, column: 170, scope: !3079)
!3081 = !DILocation(line: 2046, column: 17, scope: !3079)
!3082 = !DILocation(line: 2047, column: 13, scope: !3079)
!3083 = !DILocation(line: 2055, column: 36, scope: !2810)
!3084 = !DILocation(line: 2055, column: 26, scope: !2810)
!3085 = !DILocation(line: 2056, column: 13, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 2056, column: 13)
!3087 = !DILocation(line: 2056, column: 13, scope: !2810)
!3088 = !DILocation(line: 2057, column: 57, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 2056, column: 22)
!3090 = !DILocation(line: 2057, column: 93, scope: !3089)
!3091 = !DILocation(line: 2057, column: 13, scope: !3089)
!3092 = !DILocation(line: 2058, column: 9, scope: !3089)
!3093 = !DILocation(line: 2063, column: 5, scope: !2795)
!3094 = !DILocation(line: 2064, column: 1, scope: !2795)
!3095 = distinct !DISubprogram(name: "l2cap_packet_handler", scope: !3, file: !3, line: 2066, type: !3096, isLocal: false, isDefinition: true, scopeLine: 2067, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !233, !282, !251}
!3098 = !{!3099, !3100, !3101}
!3099 = !DILocalVariable(name: "packet_type", arg: 1, scope: !3095, file: !3, line: 2066, type: !233)
!3100 = !DILocalVariable(name: "packet", arg: 2, scope: !3095, file: !3, line: 2066, type: !282)
!3101 = !DILocalVariable(name: "size", arg: 3, scope: !3095, file: !3, line: 2066, type: !251)
!3102 = !DILocation(line: 2066, column: 30, scope: !3095)
!3103 = !DILocation(line: 2066, column: 47, scope: !3095)
!3104 = !DILocation(line: 2066, column: 59, scope: !3095)
!3105 = !DILocation(line: 2068, column: 5, scope: !3095)
!3106 = !DILocation(line: 2070, column: 9, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 2068, column: 26)
!3108 = !DILocation(line: 2071, column: 9, scope: !3107)
!3109 = !DILocation(line: 2073, column: 9, scope: !3107)
!3110 = !DILocation(line: 2074, column: 9, scope: !3107)
!3111 = !DILocation(line: 2078, column: 1, scope: !3095)
!3112 = !DILocation(line: 2082, column: 62, scope: !412)
!3113 = !DILocation(line: 2082, column: 83, scope: !412)
!3114 = !DILocation(line: 2083, column: 18, scope: !412)
!3115 = !DILocation(line: 2083, column: 46, scope: !412)
!3116 = !DILocation(line: 2083, column: 69, scope: !412)
!3117 = !DILocation(line: 2087, column: 39, scope: !412)
!3118 = !DILocation(line: 2087, column: 26, scope: !412)
!3119 = !DILocation(line: 2088, column: 10, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !412, file: !3, line: 2088, column: 9)
!3121 = !DILocation(line: 2088, column: 9, scope: !412)
!3122 = !DILocation(line: 2091, column: 5, scope: !412)
!3123 = !DILocation(line: 2092, column: 17, scope: !412)
!3124 = !DILocation(line: 2092, column: 38, scope: !412)
!3125 = !DILocation(line: 2093, column: 17, scope: !412)
!3126 = !DILocation(line: 2093, column: 38, scope: !412)
!3127 = !DILocation(line: 2094, column: 17, scope: !412)
!3128 = !DILocation(line: 2094, column: 33, scope: !412)
!3129 = !DILocation(line: 2095, column: 17, scope: !412)
!3130 = !DILocation(line: 2095, column: 40, scope: !412)
!3131 = !DILocation(line: 2096, column: 17, scope: !412)
!3132 = !DILocation(line: 2096, column: 47, scope: !412)
!3133 = !DILocation(line: 2097, column: 50, scope: !412)
!3134 = !DILocation(line: 2097, column: 17, scope: !412)
!3135 = !DILocation(line: 2097, column: 48, scope: !412)
!3136 = !DILocation(line: 2098, column: 5, scope: !412)
!3137 = !DILocation(line: 2100, column: 39, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !412, file: !3, line: 2100, column: 9)
!3139 = !DILocation(line: 2101, column: 40, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 2100, column: 48)
!3141 = !DILocation(line: 2104, column: 5, scope: !412)
!3142 = !DILocation(line: 2105, column: 1, scope: !412)
!3143 = distinct !DISubprogram(name: "l2cap_get_outgoing_buffer", scope: !3, file: !3, line: 2107, type: !3144, isLocal: false, isDefinition: true, scopeLine: 2108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!282}
!3146 = !DILocation(line: 2110, column: 13, scope: !3143)
!3147 = !DILocation(line: 2110, column: 55, scope: !3143)
!3148 = !DILocation(line: 2110, column: 5, scope: !3143)
!3149 = distinct !DISubprogram(name: "l2cap_reserve_packet_buffer", scope: !3, file: !3, line: 2113, type: !3150, isLocal: false, isDefinition: true, scopeLine: 2114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!331}
!3152 = !DILocation(line: 2115, column: 12, scope: !3149)
!3153 = !DILocation(line: 2115, column: 5, scope: !3149)
!3154 = distinct !DISubprogram(name: "l2cap_release_packet_buffer", scope: !3, file: !3, line: 2118, type: !769, isLocal: false, isDefinition: true, scopeLine: 2119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!3155 = !DILocation(line: 2120, column: 5, scope: !3154)
!3156 = !DILocation(line: 2121, column: 1, scope: !3154)
!3157 = distinct !DISubprogram(name: "l2cap_send_prepared_connectionless", scope: !3, file: !3, line: 2136, type: !3158, isLocal: false, isDefinition: true, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!331, !225, !227, !227}
!3160 = !{!3161, !3162, !3163, !3164}
!3161 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3157, file: !3, line: 2136, type: !225)
!3162 = !DILocalVariable(name: "cid", arg: 2, scope: !3157, file: !3, line: 2136, type: !227)
!3163 = !DILocalVariable(name: "len", arg: 3, scope: !3157, file: !3, line: 2136, type: !227)
!3164 = !DILocalVariable(name: "acl_buffer", scope: !3157, file: !3, line: 2152, type: !245)
!3165 = !DILocation(line: 2136, column: 57, scope: !3157)
!3166 = !DILocation(line: 2136, column: 78, scope: !3157)
!3167 = !DILocation(line: 2136, column: 92, scope: !3157)
!3168 = !DILocation(line: 2139, column: 10, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 2139, column: 9)
!3170 = !DILocation(line: 2139, column: 9, scope: !3157)
!3171 = !DILocation(line: 2140, column: 9, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 2140, column: 9)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 2139, column: 43)
!3174 = !DILocation(line: 2140, column: 9, scope: !3173)
!3175 = !DILocation(line: 2140, column: 9, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3172, file: !3, discriminator: 1)
!3177 = !DILocation(line: 2144, column: 10, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 2144, column: 9)
!3179 = !DILocation(line: 2144, column: 9, scope: !3157)
!3180 = !DILocation(line: 2145, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 2145, column: 9)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 2144, column: 60)
!3183 = !DILocation(line: 2145, column: 9, scope: !3182)
!3184 = !DILocation(line: 2145, column: 9, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3181, file: !3, discriminator: 1)
!3186 = !DILocation(line: 2149, column: 5, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 2149, column: 5)
!3188 = !DILocation(line: 2149, column: 5, scope: !3157)
!3189 = !DILocation(line: 2149, column: 5, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !3187, file: !3, discriminator: 1)
!3191 = !DILocation(line: 2152, column: 27, scope: !3157)
!3192 = !DILocation(line: 2152, column: 14, scope: !3157)
!3193 = !DILocalVariable(name: "packet_boundary", arg: 3, scope: !3194, file: !3, line: 2123, type: !243)
!3194 = distinct !DISubprogram(name: "l2cap_setup_header", scope: !3, file: !3, line: 2123, type: !3195, isLocal: true, isDefinition: true, scopeLine: 2124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !245, !225, !243, !227, !227}
!3197 = !{!3198, !3199, !3193, !3200, !3201}
!3198 = !DILocalVariable(name: "acl_buffer", arg: 1, scope: !3194, file: !3, line: 2123, type: !245)
!3199 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3194, file: !3, line: 2123, type: !225)
!3200 = !DILocalVariable(name: "remote_cid", arg: 4, scope: !3194, file: !3, line: 2123, type: !227)
!3201 = !DILocalVariable(name: "len", arg: 5, scope: !3194, file: !3, line: 2123, type: !227)
!3202 = !DILocation(line: 2123, column: 90, scope: !3194, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 2153, column: 5, scope: !3157)
!3204 = !DILocation(line: 2126, column: 5, scope: !3194, inlinedAt: !3203)
!3205 = !DILocation(line: 2128, column: 48, scope: !3194, inlinedAt: !3203)
!3206 = !DILocation(line: 2128, column: 5, scope: !3194, inlinedAt: !3203)
!3207 = !DILocation(line: 2130, column: 5, scope: !3194, inlinedAt: !3203)
!3208 = !DILocation(line: 2132, column: 5, scope: !3194, inlinedAt: !3203)
!3209 = !DILocation(line: 2155, column: 54, scope: !3157)
!3210 = !DILocation(line: 2155, column: 58, scope: !3157)
!3211 = !DILocation(line: 2155, column: 12, scope: !3157)
!3212 = !DILocation(line: 2156, column: 1, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3157, file: !3, discriminator: 1)
!3214 = distinct !DISubprogram(name: "l2cap_send_connectionless", scope: !3, file: !3, line: 2159, type: !3215, isLocal: false, isDefinition: true, scopeLine: 2160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!331, !225, !227, !245, !227}
!3217 = !{!3218, !3219, !3220, !3221, !3222}
!3218 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3214, file: !3, line: 2159, type: !225)
!3219 = !DILocalVariable(name: "cid", arg: 2, scope: !3214, file: !3, line: 2159, type: !227)
!3220 = !DILocalVariable(name: "data", arg: 3, scope: !3214, file: !3, line: 2159, type: !245)
!3221 = !DILocalVariable(name: "len", arg: 4, scope: !3214, file: !3, line: 2159, type: !227)
!3222 = !DILocalVariable(name: "acl_buffer", scope: !3214, file: !3, line: 2168, type: !245)
!3223 = !DILocation(line: 2159, column: 48, scope: !3214)
!3224 = !DILocation(line: 2159, column: 69, scope: !3214)
!3225 = !DILocation(line: 2159, column: 83, scope: !3214)
!3226 = !DILocation(line: 2159, column: 98, scope: !3214)
!3227 = !DILocation(line: 2162, column: 10, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 2162, column: 9)
!3229 = !DILocation(line: 2162, column: 9, scope: !3214)
!3230 = !DILocation(line: 2163, column: 9, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 2163, column: 9)
!3232 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 2162, column: 51)
!3233 = !DILocation(line: 2163, column: 9, scope: !3232)
!3234 = !DILocation(line: 2163, column: 9, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !3231, file: !3, discriminator: 1)
!3236 = !DILocation(line: 2166, column: 5, scope: !3214)
!3237 = !DILocation(line: 2168, column: 27, scope: !3214)
!3238 = !DILocation(line: 2168, column: 14, scope: !3214)
!3239 = !DILocation(line: 2170, column: 13, scope: !3214)
!3240 = !DILocation(line: 2170, column: 34, scope: !3214)
!3241 = !DILocation(line: 2170, column: 5, scope: !3214)
!3242 = !DILocation(line: 2172, column: 12, scope: !3214)
!3243 = !DILocation(line: 2173, column: 1, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3214, file: !3, discriminator: 1)
!3245 = distinct !DISubprogram(name: "l2cap_register_fixed_channel", scope: !3, file: !3, line: 2176, type: !3246, isLocal: false, isDefinition: true, scopeLine: 2177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !239, !227}
!3248 = !{!3249, !3250, !3251}
!3249 = !DILocalVariable(name: "the_packet_handler", arg: 1, scope: !3245, file: !3, line: 2176, type: !239)
!3250 = !DILocalVariable(name: "channel_id", arg: 2, scope: !3245, file: !3, line: 2176, type: !227)
!3251 = !DILocalVariable(name: "index", scope: !3245, file: !3, line: 2178, type: !331)
!3252 = !DILocation(line: 2176, column: 60, scope: !3245)
!3253 = !DILocation(line: 2176, column: 89, scope: !3245)
!3254 = !DILocalVariable(name: "channel_id", arg: 1, scope: !3255, file: !3, line: 212, type: !227)
!3255 = distinct !DISubprogram(name: "l2cap_fixed_channel_table_index_for_channel_id", scope: !3, file: !3, line: 212, type: !3256, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!331, !227}
!3258 = !{!3254}
!3259 = !DILocation(line: 212, column: 68, scope: !3255, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 2178, column: 17, scope: !3245)
!3261 = !DILocation(line: 214, column: 5, scope: !3255, inlinedAt: !3260)
!3262 = !DILocation(line: 218, column: 9, scope: !3263, inlinedAt: !3260)
!3263 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 214, column: 25)
!3264 = !DILocation(line: 220, column: 9, scope: !3263, inlinedAt: !3260)
!3265 = !DILocation(line: 2178, column: 9, scope: !3245)
!3266 = !DILocation(line: 2182, column: 33, scope: !3245)
!3267 = !DILocation(line: 2182, column: 42, scope: !3245)
!3268 = !{!3269, !500, i64 0}
!3269 = !{!"l2cap_fixed_channel", !500, i64 0, !501, i64 4}
!3270 = !DILocation(line: 2183, column: 1, scope: !3245)
!3271 = !DILocation(line: 2183, column: 1, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3245, file: !3, discriminator: 2)
!3273 = distinct !DISubprogram(name: "l2cap_request_can_send_fix_channel_now_event", scope: !3, file: !3, line: 2185, type: !2813, isLocal: false, isDefinition: true, scopeLine: 2186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3273, file: !3, line: 2185, type: !225)
!3276 = !DILocalVariable(name: "channel_id", arg: 2, scope: !3273, file: !3, line: 2185, type: !227)
!3277 = !DILocalVariable(name: "index", scope: !3273, file: !3, line: 2189, type: !331)
!3278 = !DILocation(line: 2185, column: 68, scope: !3273)
!3279 = !DILocation(line: 2185, column: 89, scope: !3273)
!3280 = !DILocation(line: 212, column: 68, scope: !3255, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 2189, column: 17, scope: !3273)
!3282 = !DILocation(line: 214, column: 5, scope: !3255, inlinedAt: !3281)
!3283 = !DILocation(line: 218, column: 9, scope: !3263, inlinedAt: !3281)
!3284 = !DILocation(line: 220, column: 9, scope: !3263, inlinedAt: !3281)
!3285 = !DILocation(line: 2189, column: 9, scope: !3273)
!3286 = !DILocation(line: 2193, column: 33, scope: !3273)
!3287 = !DILocation(line: 2193, column: 58, scope: !3273)
!3288 = !{!3269, !501, i64 4}
!3289 = !DILocation(line: 2194, column: 5, scope: !3273)
!3290 = !DILocation(line: 2195, column: 1, scope: !3273)
!3291 = !DILocation(line: 2195, column: 1, scope: !3292)
!3292 = !DILexicalBlockFile(scope: !3273, file: !3, discriminator: 2)
!3293 = distinct !DISubprogram(name: "l2cap_notify_channel_can_send", scope: !3, file: !3, line: 427, type: !769, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3294)
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "i", scope: !3293, file: !3, line: 429, type: !331)
!3296 = !DILocalVariable(name: "can_send", scope: !3297, file: !3, line: 437, type: !331)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 430, column: 58)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 430, column: 5)
!3299 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 430, column: 5)
!3300 = !DILocalVariable(name: "event", scope: !3301, file: !3, line: 190, type: !3305)
!3301 = distinct !DISubprogram(name: "l2cap_emit_can_send_now", scope: !3, file: !3, line: 187, type: !3246, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3302)
!3302 = !{!3303, !3304, !3300}
!3303 = !DILocalVariable(name: "packet_handler", arg: 1, scope: !3301, file: !3, line: 187, type: !239)
!3304 = !DILocalVariable(name: "channel", arg: 2, scope: !3301, file: !3, line: 187, type: !227)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 32, elements: !2150)
!3306 = !DILocation(line: 190, column: 13, scope: !3301, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 447, column: 9, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !3297, file: !3, discriminator: 1)
!3309 = !DILocation(line: 429, column: 9, scope: !3293)
!3310 = !DILocation(line: 430, column: 5, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3299, file: !3, discriminator: 1)
!3312 = !DILocation(line: 431, column: 38, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 431, column: 13)
!3314 = !DILocation(line: 431, column: 14, scope: !3313)
!3315 = !DILocation(line: 431, column: 13, scope: !3297)
!3316 = !DILocation(line: 434, column: 38, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 434, column: 13)
!3318 = !DILocation(line: 434, column: 14, scope: !3317)
!3319 = !DILocation(line: 434, column: 13, scope: !3297)
!3320 = !DILocalVariable(name: "index", arg: 1, scope: !3321, file: !3, line: 419, type: !331)
!3321 = distinct !DISubprogram(name: "l2cap_fixed_channel_table_index_is_le", scope: !3, file: !3, line: 419, type: !3322, isLocal: true, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!331, !331}
!3324 = !{!3320}
!3325 = !DILocation(line: 419, column: 54, scope: !3321, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 438, column: 13, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 438, column: 13)
!3328 = !DILocation(line: 422, column: 9, scope: !3329, inlinedAt: !3326)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 421, column: 52)
!3330 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 421, column: 9)
!3331 = !DILocation(line: 438, column: 13, scope: !3297)
!3332 = !DILocation(line: 439, column: 24, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 438, column: 55)
!3334 = !DILocation(line: 437, column: 13, scope: !3297)
!3335 = !DILocation(line: 440, column: 9, scope: !3333)
!3336 = !DILocation(line: 441, column: 24, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 440, column: 16)
!3338 = !DILocation(line: 443, column: 14, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 443, column: 13)
!3340 = !DILocation(line: 443, column: 13, scope: !3297)
!3341 = !DILocation(line: 446, column: 58, scope: !3297)
!3342 = !DILocation(line: 447, column: 57, scope: !3297)
!3343 = !DILocalVariable(name: "index", arg: 1, scope: !3344, file: !3, line: 198, type: !331)
!3344 = distinct !DISubprogram(name: "l2cap_fixed_channel_table_channel_id_for_index", scope: !3, file: !3, line: 198, type: !3345, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!227, !331}
!3347 = !{!3343}
!3348 = !DILocation(line: 198, column: 68, scope: !3344, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 447, column: 67, scope: !3297)
!3350 = !DILocation(line: 200, column: 5, scope: !3344, inlinedAt: !3349)
!3351 = !DILocation(line: 204, column: 9, scope: !3352, inlinedAt: !3349)
!3352 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 200, column: 20)
!3353 = !DILocation(line: 206, column: 9, scope: !3352, inlinedAt: !3349)
!3354 = !DILocation(line: 208, column: 9, scope: !3352, inlinedAt: !3349)
!3355 = !DILocation(line: 187, column: 62, scope: !3301, inlinedAt: !3307)
!3356 = !DILocation(line: 187, column: 87, scope: !3301, inlinedAt: !3307)
!3357 = !DILocation(line: 190, column: 5, scope: !3301, inlinedAt: !3307)
!3358 = !DILocation(line: 191, column: 14, scope: !3301, inlinedAt: !3307)
!3359 = !DILocation(line: 192, column: 14, scope: !3301, inlinedAt: !3307)
!3360 = !DILocation(line: 193, column: 5, scope: !3301, inlinedAt: !3307)
!3361 = !DILocation(line: 195, column: 5, scope: !3301, inlinedAt: !3307)
!3362 = !DILocation(line: 196, column: 1, scope: !3301, inlinedAt: !3307)
!3363 = !DILocation(line: 448, column: 5, scope: !3298)
!3364 = !DILocation(line: 430, column: 54, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !3298, file: !3, discriminator: 2)
!3366 = !DILocation(line: 430, column: 19, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3298, file: !3, discriminator: 1)
!3368 = distinct !{!3368, !3369, !3370}
!3369 = !DILocation(line: 430, column: 5, scope: !3299)
!3370 = !DILocation(line: 448, column: 5, scope: !3299)
!3371 = !DILocation(line: 449, column: 1, scope: !3293)
!3372 = distinct !DISubprogram(name: "l2cap_can_send_fixed_channel_packet_now", scope: !3, file: !3, line: 2197, type: !3373, isLocal: false, isDefinition: true, scopeLine: 2198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!331, !225, !227}
!3375 = !{!3376, !3377}
!3376 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3372, file: !3, line: 2197, type: !225)
!3377 = !DILocalVariable(name: "channel_id", arg: 2, scope: !3372, file: !3, line: 2197, type: !227)
!3378 = !DILocation(line: 2197, column: 63, scope: !3372)
!3379 = !DILocation(line: 2197, column: 84, scope: !3372)
!3380 = !DILocation(line: 2201, column: 12, scope: !3372)
!3381 = !DILocation(line: 2201, column: 5, scope: !3372)
!3382 = distinct !DISubprogram(name: "gap_le_request_connection_parameter_update", scope: !3, file: !3, line: 2204, type: !413, isLocal: false, isDefinition: true, scopeLine: 2206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389}
!3384 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3382, file: !3, line: 2204, type: !225)
!3385 = !DILocalVariable(name: "conn_interval_min", arg: 2, scope: !3382, file: !3, line: 2204, type: !227)
!3386 = !DILocalVariable(name: "conn_interval_max", arg: 3, scope: !3382, file: !3, line: 2205, type: !227)
!3387 = !DILocalVariable(name: "conn_latency", arg: 4, scope: !3382, file: !3, line: 2205, type: !227)
!3388 = !DILocalVariable(name: "supervision_timeout", arg: 5, scope: !3382, file: !3, line: 2205, type: !227)
!3389 = !DILocalVariable(name: "connection", scope: !3382, file: !3, line: 2207, type: !283)
!3390 = !DILocation(line: 2204, column: 65, scope: !3382)
!3391 = !DILocation(line: 2204, column: 86, scope: !3382)
!3392 = !DILocation(line: 2205, column: 18, scope: !3382)
!3393 = !DILocation(line: 2205, column: 46, scope: !3382)
!3394 = !DILocation(line: 2205, column: 69, scope: !3382)
!3395 = !DILocation(line: 2207, column: 39, scope: !3382)
!3396 = !DILocation(line: 2207, column: 26, scope: !3382)
!3397 = !DILocation(line: 2208, column: 10, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 2208, column: 9)
!3399 = !DILocation(line: 2208, column: 9, scope: !3382)
!3400 = !DILocation(line: 2211, column: 17, scope: !3382)
!3401 = !DILocation(line: 2211, column: 38, scope: !3382)
!3402 = !DILocation(line: 2212, column: 17, scope: !3382)
!3403 = !DILocation(line: 2212, column: 38, scope: !3382)
!3404 = !DILocation(line: 2213, column: 17, scope: !3382)
!3405 = !DILocation(line: 2213, column: 33, scope: !3382)
!3406 = !DILocation(line: 2214, column: 17, scope: !3382)
!3407 = !DILocation(line: 2214, column: 40, scope: !3382)
!3408 = !DILocation(line: 2215, column: 17, scope: !3382)
!3409 = !DILocation(line: 2215, column: 47, scope: !3382)
!3410 = !DILocation(line: 2216, column: 5, scope: !3382)
!3411 = !DILocation(line: 2217, column: 5, scope: !3382)
!3412 = !DILocation(line: 2218, column: 1, scope: !3382)
!3413 = distinct !DISubprogram(name: "l2cap_can_close_handle_now", scope: !3, file: !3, line: 2222, type: !3414, isLocal: false, isDefinition: true, scopeLine: 2223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3417)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!3416, !245}
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !234, line: 11, baseType: !235)
!3417 = !{!3418, !3419, !3420}
!3418 = !DILocalVariable(name: "address", arg: 1, scope: !3413, file: !3, line: 2222, type: !245)
!3419 = !DILocalVariable(name: "it", scope: !3413, file: !3, line: 2224, type: !211)
!3420 = !DILocalVariable(name: "channel", scope: !3421, file: !3, line: 2227, type: !219)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 2226, column: 37)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 2226, column: 5)
!3423 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 2226, column: 5)
!3424 = !DILocation(line: 2222, column: 43, scope: !3413)
!3425 = !DILocation(line: 2224, column: 44, scope: !3413)
!3426 = !DILocation(line: 2224, column: 57, scope: !3413)
!3427 = !DILocation(line: 2224, column: 25, scope: !3413)
!3428 = !DILocation(line: 2224, column: 20, scope: !3413)
!3429 = !DILocation(line: 2226, column: 5, scope: !3413)
!3430 = !DILocation(line: 2226, column: 16, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3422, file: !3, discriminator: 1)
!3432 = !DILocation(line: 2226, column: 5, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3423, file: !3, discriminator: 1)
!3434 = !DILocation(line: 2228, column: 15, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 2228, column: 13)
!3436 = !DILocation(line: 2229, column: 13, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 2228, column: 73)
!3438 = distinct !{!3438, !3439, !3440}
!3439 = !DILocation(line: 2226, column: 5, scope: !3423)
!3440 = !DILocation(line: 2231, column: 5, scope: !3423)
!3441 = !DILocation(line: 2234, column: 1, scope: !3413)
!3442 = distinct !DISubprogram(name: "is_l2cap_can_release_now", scope: !3, file: !3, line: 2235, type: !3443, isLocal: false, isDefinition: true, scopeLine: 2236, isOptimized: true, unit: !2, variables: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!3416}
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "it", scope: !3442, file: !3, line: 2237, type: !211)
!3447 = !DILocalVariable(name: "channel", scope: !3448, file: !3, line: 2239, type: !219)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 2238, column: 37)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 2238, column: 5)
!3450 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 2238, column: 5)
!3451 = !DILocation(line: 2237, column: 44, scope: !3442)
!3452 = !DILocation(line: 2237, column: 57, scope: !3442)
!3453 = !DILocation(line: 2238, column: 16, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3449, file: !3, discriminator: 1)
!3455 = !DILocation(line: 2238, column: 5, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3450, file: !3, discriminator: 1)
!3457 = !DILocation(line: 2240, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 2240, column: 9)
!3459 = !DILocation(line: 2240, column: 9, scope: !3448)
!3460 = !DILocation(line: 2240, column: 9, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3458, file: !3, discriminator: 1)
!3462 = !DILocation(line: 2244, column: 1, scope: !3442)
!3463 = !DILocation(line: 2270, column: 40, scope: !2578)
!3464 = !DILocation(line: 2275, column: 33, scope: !2586)
!3465 = !DILocation(line: 2275, column: 46, scope: !2586)
!3466 = !DILocation(line: 2272, column: 20, scope: !2578)
!3467 = !DILocation(line: 2275, column: 5, scope: !2593)
!3468 = !DILocation(line: 2276, column: 26, scope: !2584)
!3469 = !DILocation(line: 2275, column: 76, scope: !2597)
!3470 = !DILocation(line: 2277, column: 22, scope: !2595)
!3471 = !DILocation(line: 2277, column: 26, scope: !2595)
!3472 = !DILocation(line: 2276, column: 37, scope: !2584)
!3473 = !DILocation(line: 2282, column: 1, scope: !2578)
!3474 = distinct !DISubprogram(name: "l2cap_register_service_internal", scope: !3, file: !3, line: 2284, type: !3475, isLocal: false, isDefinition: true, scopeLine: 2285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !237, !239, !251, !251}
!3477 = !{!3478, !3479, !3480, !3481, !3482}
!3478 = !DILocalVariable(name: "connection", arg: 1, scope: !3474, file: !3, line: 2284, type: !237)
!3479 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !3474, file: !3, line: 2284, type: !239)
!3480 = !DILocalVariable(name: "psm", arg: 3, scope: !3474, file: !3, line: 2284, type: !251)
!3481 = !DILocalVariable(name: "mtu", arg: 4, scope: !3474, file: !3, line: 2284, type: !251)
!3482 = !DILocalVariable(name: "service", scope: !3474, file: !3, line: 2286, type: !399)
!3483 = !DILocation(line: 2284, column: 44, scope: !3474)
!3484 = !DILocation(line: 2284, column: 81, scope: !3474)
!3485 = !DILocation(line: 2284, column: 101, scope: !3474)
!3486 = !DILocation(line: 2284, column: 110, scope: !3474)
!3487 = !DILocation(line: 2270, column: 40, scope: !2578, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 2286, column: 32, scope: !3474)
!3489 = !DILocation(line: 2275, column: 33, scope: !2586, inlinedAt: !3488)
!3490 = !DILocation(line: 2275, column: 46, scope: !2586, inlinedAt: !3488)
!3491 = !DILocation(line: 2272, column: 20, scope: !2578, inlinedAt: !3488)
!3492 = !DILocation(line: 2275, column: 5, scope: !2593, inlinedAt: !3488)
!3493 = !DILocation(line: 2277, column: 22, scope: !2595, inlinedAt: !3488)
!3494 = !DILocation(line: 2275, column: 76, scope: !2597, inlinedAt: !3488)
!3495 = !DILocation(line: 2277, column: 26, scope: !2595, inlinedAt: !3488)
!3496 = !DILocation(line: 2293, column: 9, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 2293, column: 9)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 2292, column: 18)
!3499 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 2292, column: 9)
!3500 = !DILocation(line: 2293, column: 9, scope: !3498)
!3501 = !DILocation(line: 2293, column: 9, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3497, file: !3, discriminator: 1)
!3503 = !DILocation(line: 2299, column: 35, scope: !3474)
!3504 = !DILocation(line: 2300, column: 10, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 2300, column: 9)
!3506 = !DILocation(line: 2300, column: 9, scope: !3474)
!3507 = !DILocation(line: 2301, column: 9, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 2301, column: 9)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 2300, column: 19)
!3510 = !DILocation(line: 2301, column: 9, scope: !3509)
!3511 = !DILocation(line: 2301, column: 9, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3508, file: !3, discriminator: 1)
!3513 = !DILocation(line: 2306, column: 14, scope: !3474)
!3514 = !DILocation(line: 2306, column: 18, scope: !3474)
!3515 = !DILocation(line: 2307, column: 14, scope: !3474)
!3516 = !DILocation(line: 2307, column: 18, scope: !3474)
!3517 = !{!2602, !509, i64 6}
!3518 = !DILocation(line: 2308, column: 14, scope: !3474)
!3519 = !DILocation(line: 2308, column: 25, scope: !3474)
!3520 = !DILocation(line: 2309, column: 14, scope: !3474)
!3521 = !DILocation(line: 2309, column: 29, scope: !3474)
!3522 = !DILocation(line: 2312, column: 5, scope: !3474)
!3523 = !DILocation(line: 2315, column: 1, scope: !3474)
!3524 = !DILocation(line: 2315, column: 1, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3474, file: !3, discriminator: 2)
!3526 = distinct !DISubprogram(name: "l2cap_unregister_service_internal", scope: !3, file: !3, line: 2318, type: !3527, isLocal: false, isDefinition: true, scopeLine: 2319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !237, !251}
!3529 = !{!3530, !3531, !3532}
!3530 = !DILocalVariable(name: "connection", arg: 1, scope: !3526, file: !3, line: 2318, type: !237)
!3531 = !DILocalVariable(name: "psm", arg: 2, scope: !3526, file: !3, line: 2318, type: !251)
!3532 = !DILocalVariable(name: "service", scope: !3526, file: !3, line: 2320, type: !399)
!3533 = !DILocation(line: 2318, column: 46, scope: !3526)
!3534 = !DILocation(line: 2318, column: 62, scope: !3526)
!3535 = !DILocation(line: 2270, column: 40, scope: !2578, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 2320, column: 32, scope: !3526)
!3537 = !DILocation(line: 2275, column: 33, scope: !2586, inlinedAt: !3536)
!3538 = !DILocation(line: 2275, column: 46, scope: !2586, inlinedAt: !3536)
!3539 = !DILocation(line: 2272, column: 20, scope: !2578, inlinedAt: !3536)
!3540 = !DILocation(line: 2275, column: 5, scope: !2593, inlinedAt: !3536)
!3541 = !DILocation(line: 2277, column: 22, scope: !2595, inlinedAt: !3536)
!3542 = !DILocation(line: 2275, column: 76, scope: !2597, inlinedAt: !3536)
!3543 = !DILocation(line: 2277, column: 26, scope: !2595, inlinedAt: !3536)
!3544 = !DILocation(line: 2327, column: 5, scope: !3526)
!3545 = !DILocation(line: 2328, column: 39, scope: !3526)
!3546 = !DILocation(line: 2328, column: 5, scope: !3526)
!3547 = !DILocation(line: 2331, column: 10, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 2331, column: 9)
!3549 = !DILocation(line: 2331, column: 9, scope: !3526)
!3550 = !DILocation(line: 2334, column: 5, scope: !3526)
!3551 = !DILocation(line: 2335, column: 1, scope: !3526)
!3552 = !DILocation(line: 2335, column: 1, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3526, file: !3, discriminator: 2)
!3554 = distinct !DISubprogram(name: "l2cap_close_connection", scope: !3, file: !3, line: 2338, type: !3555, isLocal: false, isDefinition: true, scopeLine: 2339, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !237}
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DILocalVariable(name: "connection", arg: 1, scope: !3554, file: !3, line: 2338, type: !237)
!3559 = !DILocalVariable(name: "it", scope: !3554, file: !3, line: 2340, type: !211)
!3560 = !DILocalVariable(name: "channel", scope: !3554, file: !3, line: 2343, type: !219)
!3561 = !DILocalVariable(name: "service", scope: !3562, file: !3, line: 2354, type: !399)
!3562 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 2353, column: 22)
!3563 = !DILocation(line: 2338, column: 35, scope: !3554)
!3564 = !DILocation(line: 2344, column: 33, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 2344, column: 5)
!3566 = !DILocation(line: 2344, column: 46, scope: !3565)
!3567 = !DILocation(line: 2340, column: 20, scope: !3554)
!3568 = !DILocation(line: 2344, column: 5, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !3565, file: !3, discriminator: 1)
!3570 = !DILocation(line: 2346, column: 22, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 2346, column: 13)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 2344, column: 82)
!3573 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 2344, column: 5)
!3574 = !DILocation(line: 2346, column: 33, scope: !3571)
!3575 = !DILocation(line: 2346, column: 13, scope: !3572)
!3576 = !DILocation(line: 2347, column: 22, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 2346, column: 48)
!3578 = !DILocation(line: 2347, column: 40, scope: !3577)
!3579 = !DILocation(line: 2347, column: 46, scope: !3577)
!3580 = !DILocation(line: 2348, column: 9, scope: !3577)
!3581 = !DILocation(line: 2344, column: 76, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3573, file: !3, discriminator: 2)
!3583 = distinct !{!3583, !3584, !3585}
!3584 = !DILocation(line: 2344, column: 5, scope: !3565)
!3585 = !DILocation(line: 2349, column: 5, scope: !3565)
!3586 = !DILocation(line: 2352, column: 42, scope: !3554)
!3587 = !DILocation(line: 2353, column: 16, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3554, file: !3, discriminator: 1)
!3589 = !DILocation(line: 2353, column: 5, scope: !3588)
!3590 = !DILocation(line: 2352, column: 10, scope: !3554)
!3591 = !DILocation(line: 2355, column: 22, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 2355, column: 13)
!3593 = !DILocation(line: 2355, column: 33, scope: !3592)
!3594 = !DILocation(line: 2355, column: 13, scope: !3562)
!3595 = distinct !{!3595, !3596, !3597}
!3596 = !DILocation(line: 2353, column: 5, scope: !3554)
!3597 = !DILocation(line: 2361, column: 5, scope: !3554)
!3598 = !DILocation(line: 2356, column: 34, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 2355, column: 48)
!3600 = !DILocation(line: 2356, column: 22, scope: !3599)
!3601 = !DILocation(line: 2357, column: 47, scope: !3599)
!3602 = !DILocation(line: 2357, column: 13, scope: !3599)
!3603 = !DILocation(line: 2364, column: 5, scope: !3554)
!3604 = !DILocation(line: 2365, column: 1, scope: !3554)
!3605 = distinct !DISubprogram(name: "l2cap_search_channel_exist_via_psm", scope: !3, file: !3, line: 2367, type: !3606, isLocal: false, isDefinition: true, scopeLine: 2368, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!3416, !251}
!3608 = !{!3609, !3610, !3611}
!3609 = !DILocalVariable(name: "psm", arg: 1, scope: !3605, file: !3, line: 2367, type: !251)
!3610 = !DILocalVariable(name: "it", scope: !3605, file: !3, line: 2369, type: !211)
!3611 = !DILocalVariable(name: "channel", scope: !3605, file: !3, line: 2370, type: !219)
!3612 = !DILocation(line: 2367, column: 45, scope: !3605)
!3613 = !DILocation(line: 2372, column: 33, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 2372, column: 5)
!3615 = !DILocation(line: 2372, column: 46, scope: !3614)
!3616 = !DILocation(line: 2369, column: 20, scope: !3605)
!3617 = !DILocation(line: 2372, column: 5, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3614, file: !3, discriminator: 1)
!3619 = !DILocation(line: 2374, column: 40, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 2374, column: 13)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 2372, column: 82)
!3622 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 2372, column: 5)
!3623 = !DILocation(line: 2374, column: 44, scope: !3620)
!3624 = !DILocation(line: 2374, column: 13, scope: !3621)
!3625 = !DILocation(line: 2374, column: 22, scope: !3620)
!3626 = !DILocation(line: 2375, column: 45, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 2375, column: 17)
!3628 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 2374, column: 52)
!3629 = !DILocation(line: 2376, column: 17, scope: !3627)
!3630 = !DILocation(line: 2381, column: 17, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 2380, column: 20)
!3632 = !DILocation(line: 2372, column: 76, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3622, file: !3, discriminator: 2)
!3634 = distinct !{!3634, !3635, !3636}
!3635 = !DILocation(line: 2372, column: 5, scope: !3614)
!3636 = !DILocation(line: 2384, column: 5, scope: !3614)
!3637 = !DILocation(line: 2386, column: 1, scope: !3605)
!3638 = distinct !DISubprogram(name: "l2cap_get_btaddr_via_local_cid", scope: !3, file: !3, line: 2388, type: !3639, isLocal: false, isDefinition: true, scopeLine: 2389, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3642)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!3641, !251}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 32)
!3642 = !{!3643, !3644}
!3643 = !DILocalVariable(name: "local_cid", arg: 1, scope: !3638, file: !3, line: 2388, type: !251)
!3644 = !DILocalVariable(name: "channel", scope: !3638, file: !3, line: 2390, type: !219)
!3645 = !DILocation(line: 2388, column: 47, scope: !3638)
!3646 = !DILocation(line: 2391, column: 15, scope: !3638)
!3647 = !DILocation(line: 2390, column: 22, scope: !3638)
!3648 = !DILocation(line: 2392, column: 9, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 2392, column: 9)
!3650 = !DILocation(line: 2393, column: 44, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 2392, column: 18)
!3652 = !DILocation(line: 2392, column: 9, scope: !3638)
!3653 = !DILocation(line: 2396, column: 1, scope: !3638)
!3654 = distinct !DISubprogram(name: "l2cap_get_hci_handle_via_psm", scope: !3, file: !3, line: 2398, type: !3655, isLocal: false, isDefinition: true, scopeLine: 2399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!225, !251}
!3657 = !{!3658, !3659, !3660}
!3658 = !DILocalVariable(name: "psm", arg: 1, scope: !3654, file: !3, line: 2398, type: !251)
!3659 = !DILocalVariable(name: "it", scope: !3654, file: !3, line: 2400, type: !211)
!3660 = !DILocalVariable(name: "channel", scope: !3654, file: !3, line: 2401, type: !219)
!3661 = !DILocation(line: 2398, column: 51, scope: !3654)
!3662 = !DILocation(line: 2403, column: 33, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 2403, column: 5)
!3664 = !DILocation(line: 2403, column: 46, scope: !3663)
!3665 = !DILocation(line: 2400, column: 20, scope: !3654)
!3666 = !DILocation(line: 2403, column: 5, scope: !3667)
!3667 = !DILexicalBlockFile(scope: !3663, file: !3, discriminator: 1)
!3668 = !DILocation(line: 2405, column: 40, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 2405, column: 13)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 2403, column: 82)
!3671 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 2403, column: 5)
!3672 = !DILocation(line: 2405, column: 44, scope: !3669)
!3673 = !DILocation(line: 2405, column: 13, scope: !3670)
!3674 = !DILocation(line: 2406, column: 29, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 2405, column: 52)
!3676 = !DILocation(line: 2406, column: 13, scope: !3675)
!3677 = !DILocation(line: 2403, column: 76, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3671, file: !3, discriminator: 2)
!3679 = distinct !{!3679, !3680, !3681}
!3680 = !DILocation(line: 2403, column: 5, scope: !3663)
!3681 = !DILocation(line: 2408, column: 5, scope: !3663)
!3682 = !DILocation(line: 2410, column: 1, scope: !3654)
!3683 = distinct !DISubprogram(name: "l2cap_get_hci_handle_via_addr", scope: !3, file: !3, line: 2412, type: !3684, isLocal: false, isDefinition: true, scopeLine: 2413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!225, !245}
!3686 = !{!3687, !3688, !3689}
!3687 = !DILocalVariable(name: "addr", arg: 1, scope: !3683, file: !3, line: 2412, type: !245)
!3688 = !DILocalVariable(name: "it", scope: !3683, file: !3, line: 2414, type: !211)
!3689 = !DILocalVariable(name: "channel", scope: !3683, file: !3, line: 2415, type: !219)
!3690 = !DILocation(line: 2412, column: 58, scope: !3683)
!3691 = !DILocation(line: 2417, column: 33, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 2417, column: 5)
!3693 = !DILocation(line: 2417, column: 46, scope: !3692)
!3694 = !DILocation(line: 2414, column: 20, scope: !3683)
!3695 = !DILocation(line: 2417, column: 5, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3692, file: !3, discriminator: 1)
!3697 = !DILocation(line: 2419, column: 14, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 2419, column: 13)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 2417, column: 82)
!3700 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 2417, column: 5)
!3701 = !DILocation(line: 2419, column: 13, scope: !3699)
!3702 = !DILocation(line: 2420, column: 29, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2419, column: 69)
!3704 = !DILocation(line: 2420, column: 13, scope: !3703)
!3705 = !DILocation(line: 2417, column: 76, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3700, file: !3, discriminator: 2)
!3707 = distinct !{!3707, !3708, !3709}
!3708 = !DILocation(line: 2417, column: 5, scope: !3692)
!3709 = !DILocation(line: 2422, column: 5, scope: !3692)
!3710 = !DILocation(line: 2424, column: 1, scope: !3683)
!3711 = distinct !DISubprogram(name: "bqb_test_l2cap_send_data", scope: !3, file: !3, line: 2426, type: !769, isLocal: false, isDefinition: true, scopeLine: 2427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3712)
!3712 = !{!3713, !3714}
!3713 = !DILocalVariable(name: "it", scope: !3711, file: !3, line: 2428, type: !211)
!3714 = !DILocalVariable(name: "channel", scope: !3711, file: !3, line: 2429, type: !219)
!3715 = !DILocation(line: 2431, column: 33, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 2431, column: 5)
!3717 = !DILocation(line: 2431, column: 46, scope: !3716)
!3718 = !DILocation(line: 2428, column: 20, scope: !3711)
!3719 = !DILocation(line: 2431, column: 5, scope: !3720)
!3720 = !DILexicalBlockFile(scope: !3716, file: !3, discriminator: 1)
!3721 = !DILocation(line: 2433, column: 43, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 2431, column: 82)
!3723 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 2431, column: 5)
!3724 = !DILocation(line: 2433, column: 61, scope: !3722)
!3725 = !DILocation(line: 2433, column: 34, scope: !3722)
!3726 = !DILocation(line: 2433, column: 9, scope: !3722)
!3727 = !DILocation(line: 2434, column: 56, scope: !3722)
!3728 = !DILocation(line: 2434, column: 9, scope: !3722)
!3729 = !DILocation(line: 2431, column: 76, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !3723, file: !3, discriminator: 2)
!3731 = distinct !{!3731, !3732, !3733}
!3732 = !DILocation(line: 2431, column: 5, scope: !3716)
!3733 = !DILocation(line: 2435, column: 5, scope: !3716)
!3734 = !DILocation(line: 2436, column: 1, scope: !3711)
!3735 = distinct !DISubprogram(name: "l2cap_core_data_for_send", scope: !3, file: !3, line: 2439, type: !3736, isLocal: false, isDefinition: true, scopeLine: 2440, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!331, !282, !251}
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "packet", arg: 1, scope: !3735, file: !3, line: 2439, type: !282)
!3740 = !DILocalVariable(name: "size", arg: 2, scope: !3735, file: !3, line: 2439, type: !251)
!3741 = !DILocalVariable(name: "len", scope: !3735, file: !3, line: 2441, type: !233)
!3742 = !DILocation(line: 2439, column: 34, scope: !3735)
!3743 = !DILocation(line: 2439, column: 46, scope: !3735)
!3744 = !DILocation(line: 2441, column: 8, scope: !3735)
!3745 = !DILocation(line: 2445, column: 21, scope: !3735)
!3746 = !DILocation(line: 2445, column: 34, scope: !3735)
!3747 = !DILocation(line: 2445, column: 5, scope: !3735)
!3748 = !DILocation(line: 2447, column: 5, scope: !3735)
!3749 = distinct !DISubprogram(name: "l2cap_core_data_for_set", scope: !3, file: !3, line: 2450, type: !1890, isLocal: false, isDefinition: true, scopeLine: 2451, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DILocalVariable(name: "packet", arg: 1, scope: !3749, file: !3, line: 2450, type: !282)
!3752 = !DILocalVariable(name: "size", arg: 2, scope: !3749, file: !3, line: 2450, type: !251)
!3753 = !DILocalVariable(name: "len", scope: !3749, file: !3, line: 2452, type: !233)
!3754 = !DILocation(line: 2450, column: 34, scope: !3749)
!3755 = !DILocation(line: 2450, column: 46, scope: !3749)
!3756 = !DILocation(line: 2452, column: 8, scope: !3749)
!3757 = !DILocation(line: 2456, column: 13, scope: !3749)
!3758 = !DILocation(line: 2456, column: 26, scope: !3749)
!3759 = !DILocation(line: 2456, column: 5, scope: !3749)
!3760 = !DILocation(line: 2458, column: 1, scope: !3749)
!3761 = distinct !DISubprogram(name: "l2cap_channel_core_data_for_send", scope: !3, file: !3, line: 2460, type: !3736, isLocal: false, isDefinition: true, scopeLine: 2461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3762)
!3762 = !{!3763, !3764, !3765, !3766, !3767, !3768}
!3763 = !DILocalVariable(name: "packet", arg: 1, scope: !3761, file: !3, line: 2460, type: !282)
!3764 = !DILocalVariable(name: "size", arg: 2, scope: !3761, file: !3, line: 2460, type: !251)
!3765 = !DILocalVariable(name: "len", scope: !3761, file: !3, line: 2462, type: !233)
!3766 = !DILocalVariable(name: "channel_cnt", scope: !3761, file: !3, line: 2463, type: !233)
!3767 = !DILocalVariable(name: "it", scope: !3761, file: !3, line: 2464, type: !211)
!3768 = !DILocalVariable(name: "channel", scope: !3761, file: !3, line: 2465, type: !219)
!3769 = !DILocation(line: 2460, column: 42, scope: !3761)
!3770 = !DILocation(line: 2460, column: 54, scope: !3761)
!3771 = !DILocation(line: 2463, column: 8, scope: !3761)
!3772 = !DILocation(line: 2462, column: 8, scope: !3761)
!3773 = !DILocation(line: 2469, column: 33, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 2469, column: 5)
!3775 = !DILocation(line: 2469, column: 46, scope: !3774)
!3776 = !DILocation(line: 2464, column: 20, scope: !3761)
!3777 = !DILocation(line: 2469, column: 5, scope: !3778)
!3778 = !DILexicalBlockFile(scope: !3774, file: !3, discriminator: 1)
!3779 = !DILocation(line: 2472, column: 30, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 2469, column: 82)
!3781 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 2469, column: 5)
!3782 = !DILocation(line: 2472, column: 28, scope: !3780)
!3783 = !DILocation(line: 2472, column: 42, scope: !3780)
!3784 = !DILocation(line: 2472, column: 17, scope: !3780)
!3785 = !DILocation(line: 2472, column: 58, scope: !3780)
!3786 = !DILocation(line: 2472, column: 9, scope: !3780)
!3787 = !DILocation(line: 2473, column: 20, scope: !3780)
!3788 = !DILocation(line: 2469, column: 76, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3781, file: !3, discriminator: 2)
!3790 = distinct !{!3790, !3791, !3792}
!3791 = !DILocation(line: 2469, column: 5, scope: !3774)
!3792 = !DILocation(line: 2474, column: 5, scope: !3774)
!3793 = !DILocation(line: 2476, column: 9, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 2476, column: 9)
!3795 = !DILocation(line: 2476, column: 9, scope: !3761)
!3796 = !DILocation(line: 2477, column: 19, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 2476, column: 22)
!3798 = !DILocation(line: 2482, column: 19, scope: !3761)
!3799 = !DILocation(line: 2482, column: 17, scope: !3761)
!3800 = !DILocation(line: 2482, column: 31, scope: !3761)
!3801 = !DILocation(line: 2482, column: 5, scope: !3761)
!3802 = !DILocation(line: 2483, column: 1, scope: !3761)
!3803 = distinct !DISubprogram(name: "check_l2cap_send_state", scope: !3, file: !3, line: 2484, type: !679, isLocal: false, isDefinition: true, scopeLine: 2485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3804)
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "it", scope: !3803, file: !3, line: 2486, type: !211)
!3806 = !DILocalVariable(name: "channel", scope: !3803, file: !3, line: 2487, type: !219)
!3807 = !DILocation(line: 2489, column: 33, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 2489, column: 5)
!3809 = !DILocation(line: 2489, column: 46, scope: !3808)
!3810 = !DILocation(line: 2486, column: 20, scope: !3803)
!3811 = !DILocation(line: 2489, column: 5, scope: !3812)
!3812 = !DILexicalBlockFile(scope: !3808, file: !3, discriminator: 1)
!3813 = !DILocation(line: 2491, column: 41, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 2491, column: 13)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !3, line: 2489, column: 82)
!3816 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 2489, column: 5)
!3817 = !DILocation(line: 2491, column: 45, scope: !3814)
!3818 = !DILocation(line: 2491, column: 59, scope: !3814)
!3819 = !DILocation(line: 2491, column: 64, scope: !3820)
!3820 = !DILexicalBlockFile(scope: !3814, file: !3, discriminator: 1)
!3821 = !DILocation(line: 2491, column: 89, scope: !3820)
!3822 = !DILocation(line: 2491, column: 13, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !3815, file: !3, discriminator: 1)
!3824 = !DILocation(line: 2494, column: 41, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 2494, column: 13)
!3826 = !DILocation(line: 2494, column: 45, scope: !3825)
!3827 = !DILocation(line: 2494, column: 59, scope: !3825)
!3828 = !DILocation(line: 2494, column: 64, scope: !3829)
!3829 = !DILexicalBlockFile(scope: !3825, file: !3, discriminator: 1)
!3830 = !DILocation(line: 2494, column: 89, scope: !3829)
!3831 = !DILocation(line: 2494, column: 13, scope: !3823)
!3832 = !DILocation(line: 2489, column: 76, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3816, file: !3, discriminator: 2)
!3834 = distinct !{!3834, !3835, !3836}
!3835 = !DILocation(line: 2489, column: 5, scope: !3808)
!3836 = !DILocation(line: 2497, column: 5, scope: !3808)
!3837 = !DILocation(line: 2501, column: 1, scope: !3803)
!3838 = distinct !DISubprogram(name: "l2cap_channel_core_data_for_set", scope: !3, file: !3, line: 2551, type: !1890, isLocal: false, isDefinition: true, scopeLine: 2552, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845}
!3840 = !DILocalVariable(name: "packet", arg: 1, scope: !3838, file: !3, line: 2551, type: !282)
!3841 = !DILocalVariable(name: "size", arg: 2, scope: !3838, file: !3, line: 2551, type: !251)
!3842 = !DILocalVariable(name: "i", scope: !3838, file: !3, line: 2553, type: !233)
!3843 = !DILocalVariable(name: "len", scope: !3838, file: !3, line: 2554, type: !233)
!3844 = !DILocalVariable(name: "channel_cnt", scope: !3838, file: !3, line: 2555, type: !233)
!3845 = !DILocalVariable(name: "ptr", scope: !3838, file: !3, line: 2556, type: !282)
!3846 = !DILocalVariable(name: "event", scope: !3847, file: !3, line: 2508, type: !3855)
!3847 = distinct !DISubprogram(name: "l2cap_tws_connection_create", scope: !3, file: !3, line: 2506, type: !1890, isLocal: true, isDefinition: true, scopeLine: 2507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3848)
!3848 = !{!3849, !3850, !3846, !3851, !3852, !3853, !3854}
!3849 = !DILocalVariable(name: "packet", arg: 1, scope: !3847, file: !3, line: 2506, type: !282)
!3850 = !DILocalVariable(name: "len", arg: 2, scope: !3847, file: !3, line: 2506, type: !251)
!3851 = !DILocalVariable(name: "conn_addr", scope: !3847, file: !3, line: 2509, type: !1097)
!3852 = !DILocalVariable(name: "psm", scope: !3847, file: !3, line: 2510, type: !251)
!3853 = !DILocalVariable(name: "service", scope: !3847, file: !3, line: 2512, type: !399)
!3854 = !DILocalVariable(name: "channel", scope: !3847, file: !3, line: 2518, type: !219)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 72, elements: !3856)
!3856 = !{!3857}
!3857 = !DISubrange(count: 9)
!3858 = !DILocation(line: 2508, column: 8, scope: !3847, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 2565, column: 9, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 2564, column: 37)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 2564, column: 5)
!3862 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 2564, column: 5)
!3863 = !DILocation(line: 2551, column: 42, scope: !3838)
!3864 = !DILocation(line: 2551, column: 54, scope: !3838)
!3865 = !DILocation(line: 2555, column: 8, scope: !3838)
!3866 = !DILocation(line: 2556, column: 22, scope: !3838)
!3867 = !DILocation(line: 2556, column: 9, scope: !3838)
!3868 = !DILocation(line: 2558, column: 9, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 2558, column: 9)
!3870 = !DILocation(line: 2558, column: 19, scope: !3869)
!3871 = !DILocation(line: 2558, column: 9, scope: !3838)
!3872 = !DILocation(line: 2553, column: 8, scope: !3838)
!3873 = !DILocation(line: 2564, column: 5, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3862, file: !3, discriminator: 1)
!3875 = !DILocation(line: 2564, column: 17, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !3861, file: !3, discriminator: 1)
!3877 = !DILocation(line: 2565, column: 45, scope: !3860)
!3878 = !DILocation(line: 2565, column: 41, scope: !3860)
!3879 = !DILocation(line: 2506, column: 57, scope: !3847, inlinedAt: !3859)
!3880 = !DILocation(line: 2508, column: 5, scope: !3847, inlinedAt: !3859)
!3881 = !DILocation(line: 2510, column: 15, scope: !3847, inlinedAt: !3859)
!3882 = !DILocation(line: 2510, column: 9, scope: !3847, inlinedAt: !3859)
!3883 = !DILocation(line: 2270, column: 40, scope: !2578, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 2512, column: 32, scope: !3847, inlinedAt: !3859)
!3885 = !DILocation(line: 2275, column: 33, scope: !2586, inlinedAt: !3884)
!3886 = !DILocation(line: 2275, column: 46, scope: !2586, inlinedAt: !3884)
!3887 = !DILocation(line: 2272, column: 20, scope: !2578, inlinedAt: !3884)
!3888 = !DILocation(line: 2275, column: 5, scope: !2593, inlinedAt: !3884)
!3889 = !DILocation(line: 2277, column: 22, scope: !2595, inlinedAt: !3884)
!3890 = !DILocation(line: 2275, column: 76, scope: !2597, inlinedAt: !3884)
!3891 = !DILocation(line: 2277, column: 26, scope: !2595, inlinedAt: !3884)
!3892 = !DILocation(line: 2514, column: 9, scope: !3893, inlinedAt: !3859)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 2514, column: 9)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 2513, column: 19)
!3895 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 2513, column: 9)
!3896 = !DILocation(line: 2514, column: 9, scope: !3894, inlinedAt: !3859)
!3897 = !DILocation(line: 2514, column: 9, scope: !3898, inlinedAt: !3859)
!3898 = !DILexicalBlockFile(scope: !3893, file: !3, discriminator: 1)
!3899 = !DILocation(line: 2521, column: 5, scope: !3900, inlinedAt: !3859)
!3900 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 2521, column: 5)
!3901 = !DILocation(line: 2521, column: 5, scope: !3847, inlinedAt: !3859)
!3902 = !DILocation(line: 2521, column: 5, scope: !3903, inlinedAt: !3859)
!3903 = !DILexicalBlockFile(scope: !3900, file: !3, discriminator: 1)
!3904 = !DILocation(line: 2522, column: 35, scope: !3847, inlinedAt: !3859)
!3905 = !DILocation(line: 2522, column: 15, scope: !3847, inlinedAt: !3859)
!3906 = !DILocation(line: 2518, column: 22, scope: !3847, inlinedAt: !3859)
!3907 = !DILocation(line: 2523, column: 10, scope: !3908, inlinedAt: !3859)
!3908 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 2523, column: 9)
!3909 = !DILocation(line: 2523, column: 9, scope: !3847, inlinedAt: !3859)
!3910 = !DILocation(line: 2524, column: 9, scope: !3911, inlinedAt: !3859)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 2524, column: 9)
!3912 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 2523, column: 19)
!3913 = !DILocation(line: 2524, column: 9, scope: !3912, inlinedAt: !3859)
!3914 = !DILocation(line: 2524, column: 9, scope: !3915, inlinedAt: !3859)
!3915 = !DILexicalBlockFile(scope: !3911, file: !3, discriminator: 1)
!3916 = !DILocation(line: 2529, column: 5, scope: !3847, inlinedAt: !3859)
!3917 = !DILocation(line: 2531, column: 23, scope: !3847, inlinedAt: !3859)
!3918 = !DILocation(line: 2531, column: 14, scope: !3847, inlinedAt: !3859)
!3919 = !DILocation(line: 2531, column: 21, scope: !3847, inlinedAt: !3859)
!3920 = !DILocation(line: 2532, column: 14, scope: !3847, inlinedAt: !3859)
!3921 = !DILocation(line: 2532, column: 25, scope: !3847, inlinedAt: !3859)
!3922 = !DILocation(line: 2533, column: 40, scope: !3847, inlinedAt: !3859)
!3923 = !DILocation(line: 2533, column: 14, scope: !3847, inlinedAt: !3859)
!3924 = !DILocation(line: 2533, column: 29, scope: !3847, inlinedAt: !3859)
!3925 = !DILocation(line: 2535, column: 5, scope: !3847, inlinedAt: !3859)
!3926 = !DILocation(line: 2537, column: 5, scope: !3847, inlinedAt: !3859)
!3927 = !DILocation(line: 2539, column: 5, scope: !3928, inlinedAt: !3859)
!3928 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 2539, column: 5)
!3929 = !DILocation(line: 2539, column: 5, scope: !3847, inlinedAt: !3859)
!3930 = !DILocation(line: 2539, column: 5, scope: !3931, inlinedAt: !3859)
!3931 = !DILexicalBlockFile(scope: !3928, file: !3, discriminator: 1)
!3932 = !DILocation(line: 2543, column: 14, scope: !3847, inlinedAt: !3859)
!3933 = !DILocation(line: 2544, column: 14, scope: !3847, inlinedAt: !3859)
!3934 = !DILocation(line: 2545, column: 14, scope: !3847, inlinedAt: !3859)
!3935 = !DILocation(line: 2546, column: 5, scope: !3847, inlinedAt: !3859)
!3936 = !DILocation(line: 2548, column: 5, scope: !3847, inlinedAt: !3859)
!3937 = !DILocation(line: 2549, column: 1, scope: !3847, inlinedAt: !3859)
!3938 = !DILocation(line: 2564, column: 33, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3861, file: !3, discriminator: 2)
!3940 = !DILocation(line: 2564, column: 21, scope: !3876)
!3941 = !DILocation(line: 2564, column: 19, scope: !3876)
!3942 = distinct !{!3942, !3943, !3944}
!3943 = !DILocation(line: 2564, column: 5, scope: !3862)
!3944 = !DILocation(line: 2566, column: 5, scope: !3862)
!3945 = !DILocation(line: 2568, column: 1, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3838, file: !3, discriminator: 2)
!3947 = distinct !DISubprogram(name: "hci_core_data_for_set", scope: !3, file: !3, line: 2570, type: !1890, isLocal: false, isDefinition: true, scopeLine: 2571, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3948)
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "packet", arg: 1, scope: !3947, file: !3, line: 2570, type: !282)
!3950 = !DILocalVariable(name: "size", arg: 2, scope: !3947, file: !3, line: 2570, type: !251)
!3951 = !DILocation(line: 2570, column: 32, scope: !3947)
!3952 = !DILocation(line: 2570, column: 44, scope: !3947)
!3953 = !DILocation(line: 2572, column: 5, scope: !3947)
!3954 = !DILocation(line: 2572, column: 18, scope: !3947)
!3955 = !DILocation(line: 2573, column: 1, scope: !3947)
!3956 = distinct !DISubprogram(name: "l2cap_just_register_service", scope: !3, file: !3, line: 2575, type: !898, isLocal: false, isDefinition: true, scopeLine: 2576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3957)
!3957 = !{!3958, !3959}
!3958 = !DILocalVariable(name: "psm", arg: 1, scope: !3956, file: !3, line: 2575, type: !251)
!3959 = !DILocalVariable(name: "service", scope: !3956, file: !3, line: 2577, type: !399)
!3960 = !DILocation(line: 2575, column: 37, scope: !3956)
!3961 = !DILocation(line: 2270, column: 40, scope: !2578, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 2577, column: 32, scope: !3956)
!3963 = !DILocation(line: 2275, column: 33, scope: !2586, inlinedAt: !3962)
!3964 = !DILocation(line: 2275, column: 46, scope: !2586, inlinedAt: !3962)
!3965 = !DILocation(line: 2272, column: 20, scope: !2578, inlinedAt: !3962)
!3966 = !DILocation(line: 2275, column: 5, scope: !2593, inlinedAt: !3962)
!3967 = !DILocation(line: 2277, column: 22, scope: !2595, inlinedAt: !3962)
!3968 = !DILocation(line: 2275, column: 76, scope: !2597, inlinedAt: !3962)
!3969 = !DILocation(line: 2277, column: 26, scope: !2595, inlinedAt: !3962)
!3970 = !DILocation(line: 2276, column: 37, scope: !2584, inlinedAt: !3962)
!3971 = !DILocation(line: 2577, column: 22, scope: !3956)
!3972 = !DILocation(line: 2581, column: 5, scope: !3956)
!3973 = !DILocation(line: 2582, column: 1, scope: !3956)
!3974 = distinct !DISubprogram(name: "hci_event_packet_get_type", scope: !3975, file: !3975, line: 38, type: !3976, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3980)
!3975 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!243, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!3980 = !{!3981}
!3981 = !DILocalVariable(name: "event", arg: 1, scope: !3974, file: !3975, line: 38, type: !3978)
!3982 = !DILocation(line: 38, column: 68, scope: !3974)
!3983 = !DILocation(line: 40, column: 16, scope: !3974)
!3984 = !DILocation(line: 40, column: 9, scope: !3974)
