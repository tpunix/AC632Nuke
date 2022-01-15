; ModuleID = 'hci_vendor.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/hci_transport/hci_vendor.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.hci_cmd_t = type { i16, i8* }
%struct.__inquiry_result_t = type { [8 x i8], i8, [6 x i8] }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.__le_hci_stack = type { %struct.btstack_linked_item*, %struct.btstack_linked_item*, [525 x i8], i8, i16, i16, i8, i16, %struct.le_connection_parameter_range }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.le_connection_parameter_range = type { i16, i16, i16, i16, i16, i16 }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }
%struct.__le_hci_connection = type { %struct.btstack_linked_item, [6 x i8], i16, i32, i8, i32, i8, i16, i16, i16, i16, %struct.sm_connection, %struct.att_server_t, [529 x i8], i16, i16, i8, [6 x i8], [6 x i8], i32 }
%struct.sm_connection = type { i16, i8, i8, i8, i8, [6 x i8], i32, i32, i8, i8, i8, [7 x i8], i32, i16, [8 x i8], i8, i32, i32 }
%struct.att_server_t = type { i32, i8, [6 x i8], i32, i32, i32, %struct.btstack_timer_source, %struct.att_connection, i16, [517 x i8], i8, void (i16, i8)* }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.att_connection = type { i16, i16, i16, i8, i8, i8 }
%struct.btstack_linked_list_iterator_t = type { i32, %struct.btstack_linked_item*, %struct.btstack_linked_item* }
%struct.le_connection_update_parameter = type { i16, i16, i16, i16, i16, i16, i16 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@hci_le_event_mask = hidden constant [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF?", section ".bt_stack_const", align 1, !dbg !562
@hci_le_mac_addr = hidden local_unnamed_addr constant [6 x i8] c" \22\13Dww", section ".bt_stack_const", align 1, !dbg !566
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hci_reset = hidden local_unnamed_addr constant %struct.hci_cmd_t { i16 3075, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, section ".bt_stack_const", align 4, !dbg !569
@le_event_mask = hidden constant [8 x i8] c"\FF\FF\FB\FF\07\F8\BF=", section ".bt_stack_const", align 1, !dbg !580
@mac_addr = hidden constant [6 x i8] c"\812s\A4\E5\C6", section ".bt_stack_const", align 1, !dbg !582
@_inquiry_result = hidden global %struct.__inquiry_result_t zeroinitializer, section ".bt_stack_bss", align 1, !dbg !637
@inquiry_result = hidden local_unnamed_addr global %struct.__inquiry_result_t* @_inquiry_result, section ".bt_stack_data", align 4, !dbg !585
@hci_bt_mode = hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !599
@inquiry_spp_device = internal unnamed_addr global i8 0, section ".bt_stack_bss", align 1, !dbg !639
@.str.1 = private unnamed_addr constant [7 x i8] c"JL_lhh\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@le_hci_stack = hidden global %struct.__le_hci_stack zeroinitializer, section ".bt_stack_bss", align 4, !dbg !610
@.str.3 = private unnamed_addr constant [9 x i8] c"name %s\0A\00", align 1
@last_device_connect_linkkey = external global [16 x i8], align 1
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"in sniff\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"out sniff\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"<BT-log> :AUTHENTICATION_COMPLETE: %x\0A\0A\00", align 1
@config_delete_link_key = external local_unnamed_addr constant i32, align 4
@config_stack_modules = external local_unnamed_addr constant i32, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"<BT-log> :link_type: %d\0A\0A\00", align 1
@config_btctler_modules = external local_unnamed_addr constant i32, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"<BT-log> :HCI_EVENT_INQUIRY_COMPLETE=0x%x\0A\0A\00", align 1
@hci_inquiry_support = external local_unnamed_addr constant i8, align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"hci----HCI_EVENT_PIN_CODE_REQUEST----\0A\00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@.str.11 = private unnamed_addr constant [48 x i8] c"<BT-log> :disconnection_complete:type %d,0x%x\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"<BT-log> :handle %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"<BT-log> :LE Connection_complete (status=%u) type %u, %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"<BT-log> :New connection: handle 0x%x, %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"<BT-log> :New connection: handle %u, %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"<BT-log> :HCI_ERR:pos:%x len:%x size_of_buf:%x\0A\0A\00", align 1
@a2dp_source_bqb_support = external local_unnamed_addr global i8, align 1
@g_le_tws_search_aa = hidden local_unnamed_addr global i32 -1, section ".bt_stack_data", align 4, !dbg !601
@g_le_tws_pair_aa = hidden global i32 -1, section ".bt_stack_data", align 4, !dbg !604
@g_le_tws_connect_aa = hidden global i32 -1, section ".bt_stack_data", align 4, !dbg !606
@code_buf = hidden global [6 x i8] c"E\89vC\8A\9B", section ".bt_stack_data", align 1, !dbg !608
@config_btctler_le_tws = external local_unnamed_addr constant i32, align 4
@tws_auto_pair_enable = external local_unnamed_addr global i8, align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"<BT-log> :pa : %x ,ca : %x ,sp : %x\0A\0A\00", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.23 = private unnamed_addr constant [110 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/hci_transport/hci_vendor.c\00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"ASSERT-FAILD: g_le_tws_pair_aa != 0xffffffff g_le_tws_aa_pair != 0xffffffff\00", align 1
@.str.25 = private unnamed_addr constant [82 x i8] c"ASSERT-FAILD: g_le_tws_connect_aa != 0xffffffff g_le_tws_connect_aa != 0xffffffff\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"ASSERT-FAILD: g_le_tws_search_aa != 0xffffffff g_le_tws_aa_rearch != 0xffffffff\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"<BT-log> :store_A: %x, %x\0A\0A\00", align 1
@config_vendor_le_bb = external local_unnamed_addr constant i32, align 4
@hci_scan_control = internal unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !643
@.str.29 = private unnamed_addr constant [39 x i8] c"esco busy,save hci connectable status\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"esco busy,save hci discoverable status\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"\0A -- exit sniff mode  -- \0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"\0A -- sniff mode  -- \0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"dis sco \0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"sco_connection_setup \0A \00", align 1
@hci_event_callback_registration = internal global %struct.btstack_packet_callback_registration_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !641
@.str.35 = private unnamed_addr constant [50 x i8] c"<BT-log> :create_connection_for_addr %s, type %x\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"<BT-log> :unsupported dev_class:%x\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Inquiry cancel,start connect\0A\00", align 1
@str = private unnamed_addr constant [48 x i8] c"<BT-log> :HCI_EVENT_DISCONNECTION_COMPLETE----\0A\00"
@str.40 = private unnamed_addr constant [25 x i8] c"<BT-log> :wait complete\0A\00"
@str.41 = private unnamed_addr constant [53 x i8] c"<BT-log> :***********No enough hci memory***********\00"
@str.42 = private unnamed_addr constant [33 x i8] c"<BT-log> :not enough l2cap data\0A\00"
@str.43 = private unnamed_addr constant [43 x i8] c"<BT-log> :\0A ----tws le add info init---- \0A\00"
@str.44 = private unnamed_addr constant [22 x i8] c"<BT-log> :connect aa\0A\00"
@str.45 = private unnamed_addr constant [19 x i8] c"<BT-log> :pair aa\0A\00"
@str.46 = private unnamed_addr constant [25 x i8] c"<BT-log> :HCI Host - BLE\00"

; Function Attrs: nounwind optsize
define hidden void @set_start_search_spp_device(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !653 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !657, metadata !DIExpression()), !dbg !658
  store i8 %0, i8* @inquiry_spp_device, align 1, !dbg !659, !tbaa !660
  ret void, !dbg !663
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define hidden i8* @connection_address_for_handle(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !664 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !668, metadata !DIExpression()), !dbg !669
  %2 = zext i16 %0 to i32, !dbg !670
  %3 = tail call i8* @lmp_private_remote_addr_for_handler(i32 %2) #14, !dbg !671
  ret i8* %3, !dbg !672
}

; Function Attrs: optsize
declare i8* @lmp_private_remote_addr_for_handler(i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @connection_handler_for_address(i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i8 %1, metadata !678, metadata !DIExpression()), !dbg !680
  %3 = zext i8 %1 to i32, !dbg !681
  %4 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 %3) #14, !dbg !682
  %5 = zext i16 %4 to i32, !dbg !682
  ret i32 %5, !dbg !683
}

; Function Attrs: optsize
declare zeroext i16 @lmp_private_handler_for_remote_addr(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize readnone
define hidden zeroext i8 @hci_number_outgoing_packets(i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !684 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !688, metadata !DIExpression()), !dbg !689
  ret i8 2, !dbg !690
}

; Function Attrs: norecurse nounwind optsize
define weak hidden i8* @bt_get_mac_addr() local_unnamed_addr #4 section ".bt_stack_code" !dbg !691 {
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @mac_addr, i32 0, i32 0), !dbg !696
}

; Function Attrs: norecurse nounwind optsize
define weak hidden i8* @bt_get_local_name() local_unnamed_addr #4 section ".bt_stack_code" !dbg !697 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), !dbg !700
}

; Function Attrs: norecurse nounwind optsize
define weak hidden i8* @bt_get_hid_name() local_unnamed_addr #4 section ".bt_stack_code" !dbg !701 {
  ret i8* null, !dbg !702
}

; Function Attrs: nounwind optsize
define weak hidden i8* @bt_get_emitter_pin_code(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !703 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !707, metadata !DIExpression()), !dbg !708
  %2 = icmp eq i8 %0, 2, !dbg !709
  %3 = select i1 %2, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), !dbg !711
  ret i8* %3, !dbg !713
}

; Function Attrs: norecurse nounwind optsize
define weak hidden i8* @bt_get_pin_code() local_unnamed_addr #4 section ".bt_stack_code" !dbg !714 {
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), !dbg !715
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @get_remote_dev_info_index() local_unnamed_addr #5 section ".bt_stack_code" !dbg !716 {
  %1 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !719, !tbaa !720
  %2 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %1, i32 0, i32 9, !dbg !722
  %3 = load i32, i32* %2, align 1, !dbg !722
  %4 = lshr i32 %3, 20, !dbg !722
  %5 = lshr i32 %3, 6, !dbg !723
  %6 = or i32 %4, %5, !dbg !724
  %7 = trunc i32 %6 to i8, !dbg !719
  %8 = and i8 %7, 1, !dbg !719
  ret i8 %8, !dbg !725
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden void @hci_emit_state() local_unnamed_addr #6 section ".bt_stack_code" !dbg !726 {
  ret void, !dbg !734
}

; Function Attrs: nounwind optsize
define hidden void @hci_emit_nr_connections_delete(i8 zeroext, i8 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !735 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !739, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8 %1, metadata !740, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i8* %2, metadata !741, metadata !DIExpression()), !dbg !748
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 0, !dbg !749
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %5) #15, !dbg !749
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !742, metadata !DIExpression()), !dbg !750
  store i8 109, i8* %5, align 1, !dbg !751, !tbaa !660
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 1, !dbg !752
  store i8 8, i8* %6, align 1, !dbg !753, !tbaa !660
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 2, !dbg !754
  store i8 %0, i8* %7, align 1, !dbg !755, !tbaa !660
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 3, !dbg !756
  store i8 %1, i8* %8, align 1, !dbg !757, !tbaa !660
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i32 0, i32 4, !dbg !758
  call void @bt_flip_addr(i8* %9, i8* %2) #14, !dbg !759
  call void @l2cap_packet_handler(i8 zeroext 4, i8* nonnull %5, i16 zeroext 10) #14, !dbg !760
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %5) #15, !dbg !761
  ret void, !dbg !761
}

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @l2cap_packet_handler(i8 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_emit_btstack_version() local_unnamed_addr #0 section ".bt_stack_code" !dbg !762 {
  %1 = alloca [6 x i8], align 1
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0, !dbg !765
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #15, !dbg !765
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %1, metadata !764, metadata !DIExpression()), !dbg !766
  store i8 99, i8* %2, align 1, !dbg !767, !tbaa !660
  %3 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 1, !dbg !768
  store i8 4, i8* %3, align 1, !dbg !769, !tbaa !660
  %4 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 2, !dbg !770
  store i8 2, i8* %4, align 1, !dbg !771, !tbaa !660
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 3, !dbg !772
  store i8 1, i8* %5, align 1, !dbg !773, !tbaa !660
  call void @bt_store_16(i8* nonnull %2, i16 zeroext 4, i16 zeroext 3) #14, !dbg !774
  call void @l2cap_packet_handler(i8 zeroext 4, i8* nonnull %2, i16 zeroext 6) #14, !dbg !775
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #15, !dbg !776
  ret void, !dbg !776
}

; Function Attrs: optsize
declare void @bt_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_emit_remote_name_cached([6 x i8]*, [249 x i8]* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !777 {
  %3 = alloca [258 x i8], align 1
  call void @llvm.dbg.value(metadata [6 x i8]* %0, metadata !786, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata [249 x i8]* %1, metadata !787, metadata !DIExpression()), !dbg !793
  %4 = getelementptr inbounds [258 x i8], [258 x i8]* %3, i32 0, i32 0, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 258, i8* nonnull %4) #15, !dbg !794
  tail call void @llvm.dbg.declare(metadata [258 x i8]* %3, metadata !788, metadata !DIExpression()), !dbg !795
  store i8 101, i8* %4, align 1, !dbg !796, !tbaa !660
  %5 = getelementptr inbounds [258 x i8], [258 x i8]* %3, i32 0, i32 1, !dbg !797
  store i8 -1, i8* %5, align 1, !dbg !798, !tbaa !660
  %6 = getelementptr inbounds [258 x i8], [258 x i8]* %3, i32 0, i32 2, !dbg !799
  store i8 0, i8* %6, align 1, !dbg !800, !tbaa !660
  %7 = getelementptr inbounds [258 x i8], [258 x i8]* %3, i32 0, i32 3, !dbg !801
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %0, i32 0, i32 0, !dbg !802
  call void @bt_flip_addr(i8* %7, i8* %8) #14, !dbg !803
  %9 = getelementptr inbounds [258 x i8], [258 x i8]* %3, i32 0, i32 9, !dbg !804
  %10 = getelementptr inbounds [249 x i8], [249 x i8]* %1, i32 0, i32 0, !dbg !805
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 248, i32 1, i1 false), !dbg !805
  %11 = getelementptr inbounds [258 x i8], [258 x i8]* %3, i32 0, i32 257, !dbg !806
  store i8 0, i8* %11, align 1, !dbg !807, !tbaa !660
  call void @l2cap_packet_handler(i8 zeroext 4, i8* nonnull %4, i16 zeroext 257) #14, !dbg !808
  call void @llvm.lifetime.end.p0i8(i64 258, i8* nonnull %4) #15, !dbg !809
  ret void, !dbg !809
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #7

; Function Attrs: nounwind optsize
define hidden %struct.__le_hci_connection* @le_hci_connection_for_bd_addr_and_type(i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !810 {
  %3 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !814, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i32 %1, metadata !815, metadata !DIExpression()), !dbg !826
  %4 = bitcast %struct.btstack_linked_list_iterator_t* %3 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #15, !dbg !827
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !816, metadata !DIExpression(DW_OP_deref)), !dbg !828
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %3, %struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0)) #14, !dbg !829
  br label %5, !dbg !830

; <label>:5:                                      ; preds = %15, %2
  br label %6, !dbg !828

; <label>:6:                                      ; preds = %9, %5
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !816, metadata !DIExpression(DW_OP_deref)), !dbg !828
  %7 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #14, !dbg !831
  %8 = icmp eq i32 %7, 0, !dbg !833
  br i1 %8, label %22, label %9, !dbg !833

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !816, metadata !DIExpression(DW_OP_deref)), !dbg !828
  %10 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #14, !dbg !834
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 3, !dbg !835
  %12 = bitcast %struct.btstack_linked_item* %11 to i32*, !dbg !835
  %13 = load i32, i32* %12, align 4, !dbg !835, !tbaa !837
  %14 = icmp eq i32 %13, %1, !dbg !846
  br i1 %14, label %15, label %6, !dbg !847, !llvm.loop !848

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 1, !dbg !850
  %17 = bitcast %struct.btstack_linked_item* %16 to i8*, !dbg !852
  %18 = call i32 @memcmp(i8* %0, i8* %17, i32 6) #16, !dbg !853
  %19 = icmp eq i32 %18, 0, !dbg !854
  br i1 %19, label %20, label %5

; <label>:20:                                     ; preds = %15
  %21 = bitcast %struct.btstack_linked_item* %10 to %struct.__le_hci_connection*, !dbg !855
  br label %23, !dbg !856

; <label>:22:                                     ; preds = %6
  br label %23, !dbg !856

; <label>:23:                                     ; preds = %22, %20
  %24 = phi %struct.__le_hci_connection* [ %21, %20 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #15, !dbg !856
  ret %struct.__le_hci_connection* %24, !dbg !856
}

; Function Attrs: optsize
declare void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t*, %struct.btstack_linked_item**) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind optsize
define weak hidden void @read_remote_name_handle(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !861, metadata !DIExpression()), !dbg !862
  %2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %0) #16, !dbg !863
  ret void, !dbg !864
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind optsize
define hidden i8* @get_last_device_connect_linkkey(i16* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !865 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !870, metadata !DIExpression()), !dbg !871
  store i16 16, i16* %0, align 2, !dbg !872, !tbaa !873
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @last_device_connect_linkkey, i32 0, i32 0), !dbg !874
}

; Function Attrs: nounwind optsize
define hidden void @hci_event_handler(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !875 {
  %2 = alloca [43 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [43 x i8]* %2, metadata !915, metadata !DIExpression()), !dbg !934
  %3 = alloca %struct.btstack_linked_list_iterator_t, align 4
  %4 = alloca [32 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !939, metadata !DIExpression()), !dbg !957
  %5 = alloca [16 x i8], align 1
  %6 = alloca [16 x i8], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !879, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i8* null, metadata !880, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i8 0, metadata !882, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i16 0, metadata !883, metadata !DIExpression()), !dbg !966
  %7 = load i8, i8* %0, align 1, !dbg !967, !tbaa !660
  switch i8 %7, label %772 [
    i8 5, label %538
    i8 34, label %526
    i8 20, label %8
    i8 6, label %51
    i8 8, label %92
    i8 49, label %108
    i8 51, label %129
    i8 52, label %133
    i8 59, label %135
    i8 54, label %140
    i8 14, label %148
    i8 62, label %620
    i8 19, label %157
    i8 4, label %193
    i8 1, label %222
    i8 47, label %262
    i8 3, label %381
    i8 2, label %514
    i8 23, label %419
    i8 24, label %448
    i8 22, label %461
    i8 7, label %504
  ], !dbg !968

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !969
  %10 = load i8, i8* %9, align 1, !dbg !969, !tbaa !660
  %11 = zext i8 %10 to i16, !dbg !969
  %12 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !969
  %13 = load i8, i8* %12, align 1, !dbg !969, !tbaa !660
  %14 = zext i8 %13 to i16, !dbg !969
  %15 = shl nuw i16 %14, 8, !dbg !969
  %16 = or i16 %15, %11, !dbg !969
  call void @llvm.dbg.value(metadata i16 %16, metadata !883, metadata !DIExpression()), !dbg !966
  %17 = zext i16 %16 to i32, !dbg !970
  %18 = tail call i8* @lmp_private_remote_addr_for_handler(i32 %17) #14, !dbg !971
  call void @llvm.dbg.value(metadata i8* %18, metadata !880, metadata !DIExpression()), !dbg !964
  %19 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !972
  %20 = load i8, i8* %19, align 1, !dbg !972, !tbaa !660
  switch i8 %20, label %772 [
    i8 2, label %21
    i8 0, label %36
  ], !dbg !974

; <label>:21:                                     ; preds = %8
  %22 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !975, !tbaa !660
  %23 = and i8 %22, 32, !dbg !975
  %24 = icmp eq i8 %23, 0, !dbg !975
  br i1 %24, label %28, label %25, !dbg !978

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #16, !dbg !979
  %27 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !660
  br label %28, !dbg !979

; <label>:28:                                     ; preds = %25, %21
  %29 = phi i8 [ %22, %21 ], [ %27, %25 ], !dbg !981
  %30 = and i8 %29, 64, !dbg !981
  %31 = icmp eq i8 %30, 0, !dbg !981
  br i1 %31, label %33, label %32, !dbg !983

; <label>:32:                                     ; preds = %28
  tail call void @put_buf(i8* %18, i32 6) #14, !dbg !984
  br label %33, !dbg !984

; <label>:33:                                     ; preds = %32, %28
  store i8 1, i8* @hci_bt_mode, align 1, !dbg !986, !tbaa !660
  %34 = load i8, i8* %19, align 1, !dbg !987, !tbaa !660
  %35 = zext i8 %34 to i32, !dbg !987
  tail call void @bt_event_update_to_user(i8* %18, i32 1129270784, i8 zeroext 32, i32 %35) #14, !dbg !988
  br label %772, !dbg !989

; <label>:36:                                     ; preds = %8
  %37 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !990, !tbaa !660
  %38 = and i8 %37, 32, !dbg !990
  %39 = icmp eq i8 %38, 0, !dbg !990
  br i1 %39, label %43, label %40, !dbg !994

; <label>:40:                                     ; preds = %36
  %41 = tail call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #16, !dbg !995
  %42 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !660
  br label %43, !dbg !995

; <label>:43:                                     ; preds = %40, %36
  %44 = phi i8 [ %37, %36 ], [ %42, %40 ], !dbg !997
  %45 = and i8 %44, 64, !dbg !997
  %46 = icmp eq i8 %45, 0, !dbg !997
  br i1 %46, label %48, label %47, !dbg !999

; <label>:47:                                     ; preds = %43
  tail call void @put_buf(i8* %18, i32 6) #14, !dbg !1000
  br label %48, !dbg !1000

; <label>:48:                                     ; preds = %47, %43
  store i8 0, i8* @hci_bt_mode, align 1, !dbg !1002, !tbaa !660
  %49 = load i8, i8* %19, align 1, !dbg !1003, !tbaa !660
  %50 = zext i8 %49 to i32, !dbg !1003
  tail call void @bt_event_update_to_user(i8* %18, i32 1129270784, i8 zeroext 32, i32 %50) #14, !dbg !1004
  br label %772, !dbg !1005

; <label>:51:                                     ; preds = %1
  %52 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1006, !tbaa !660
  %53 = icmp slt i8 %52, 0, !dbg !1006
  %54 = getelementptr inbounds i8, i8* %0, i32 2
  br i1 %53, label %55, label %59, !dbg !1008

; <label>:55:                                     ; preds = %51
  %56 = load i8, i8* %54, align 1, !dbg !1009, !tbaa !660
  %57 = zext i8 %56 to i32, !dbg !1009
  %58 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 %57) #16, !dbg !1009
  br label %59, !dbg !1009

; <label>:59:                                     ; preds = %55, %51
  %60 = load i8, i8* %54, align 1, !dbg !1011, !tbaa !660
  %61 = icmp eq i8 %60, 0, !dbg !1013
  %62 = getelementptr inbounds i8, i8* %0, i32 3
  %63 = load i8, i8* %62, align 1, !tbaa !660
  %64 = zext i8 %63 to i16
  %65 = getelementptr inbounds i8, i8* %0, i32 4
  %66 = load i8, i8* %65, align 1, !tbaa !660
  %67 = zext i8 %66 to i16
  %68 = shl nuw i16 %67, 8
  %69 = or i16 %68, %64
  br i1 %61, label %70, label %72, !dbg !1014

; <label>:70:                                     ; preds = %59
  %71 = tail call i32 @lmp_hci_set_connection_encryption(i16 zeroext %69, i32 1) #14, !dbg !1015
  br label %772, !dbg !1017

; <label>:72:                                     ; preds = %59
  call void @llvm.dbg.value(metadata i16 %69, metadata !883, metadata !DIExpression()), !dbg !966
  %73 = zext i16 %69 to i32, !dbg !1018
  %74 = tail call i8* @lmp_private_remote_addr_for_handler(i32 %73) #14, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %74, metadata !880, metadata !DIExpression()), !dbg !964
  %75 = load i32, i32* @config_delete_link_key, align 4, !dbg !1021, !tbaa !1023
  %76 = icmp eq i32 %75, 0, !dbg !1021
  br i1 %76, label %87, label %77, !dbg !1024

; <label>:77:                                     ; preds = %72
  %78 = bitcast i8* %74 to [6 x i8]*, !dbg !1025
  %79 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1027, !tbaa !720
  %80 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %79, i32 0, i32 9, !dbg !1029
  %81 = load i32, i32* %80, align 1, !dbg !1029
  %82 = lshr i32 %81, 20, !dbg !1029
  %83 = lshr i32 %81, 6, !dbg !1030
  %84 = or i32 %82, %83, !dbg !1031
  %85 = trunc i32 %84 to i8, !dbg !1027
  %86 = and i8 %85, 1, !dbg !1027
  tail call void @delete_link_key([6 x i8]* %78, i8 zeroext %86) #14, !dbg !1032
  br label %87, !dbg !1034

; <label>:87:                                     ; preds = %77, %72
  %88 = load i8, i8* %54, align 1, !dbg !1035, !tbaa !660
  %89 = icmp eq i8 %88, 6, !dbg !1037
  br i1 %89, label %772, label %90, !dbg !1038

; <label>:90:                                     ; preds = %87
  %91 = tail call i32 @lmp_hci_disconnect(i16 zeroext %69, i8 zeroext 5) #14, !dbg !1039
  br label %772

; <label>:92:                                     ; preds = %1
  %93 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1041
  %94 = load i8, i8* %93, align 1, !dbg !1041, !tbaa !660
  %95 = zext i8 %94 to i16, !dbg !1041
  %96 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !1041
  %97 = load i8, i8* %96, align 1, !dbg !1041, !tbaa !660
  %98 = zext i8 %97 to i16, !dbg !1041
  %99 = shl nuw i16 %98, 8, !dbg !1041
  %100 = or i16 %99, %95, !dbg !1041
  call void @llvm.dbg.value(metadata i16 %100, metadata !883, metadata !DIExpression()), !dbg !966
  %101 = tail call zeroext i16 @get_ble_link_handle() #14, !dbg !1042
  %102 = icmp ult i16 %100, %101, !dbg !1044
  br i1 %102, label %103, label %772, !dbg !1045

; <label>:103:                                    ; preds = %92
  %104 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1046, !tbaa !720
  %105 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %104, i32 0, i32 1, !dbg !1048
  %106 = load i16, i16* %105, align 4, !dbg !1048, !tbaa !1049
  %107 = zext i16 %106 to i32, !dbg !1046
  tail call void @lmp_hci_write_link_supervision_timeout(i16 zeroext %100, i32 %107) #14, !dbg !1051
  br label %772, !dbg !1052

; <label>:108:                                    ; preds = %1
  tail call void @bt_event_update_to_user(i8* null, i32 1212369152, i8 zeroext 49, i32 0) #14, !dbg !1053
  %109 = tail call zeroext i8 bitcast (i8 (...)* @get_is_in_background_flag to i8 ()*)() #14, !dbg !1054
  %110 = icmp eq i8 %109, 0, !dbg !1056
  br i1 %110, label %116, label %111, !dbg !1056

; <label>:111:                                    ; preds = %108
  br label %112, !dbg !1057

; <label>:112:                                    ; preds = %112, %111
  tail call void @os_time_dly(i32 3) #14, !dbg !1057
  %113 = tail call zeroext i8 bitcast (i8 (...)* @get_is_in_background_flag to i8 ()*)() #14, !dbg !1054
  %114 = icmp eq i8 %113, 0, !dbg !1056
  br i1 %114, label %115, label %112, !dbg !1056, !llvm.loop !1059

; <label>:115:                                    ; preds = %112
  br label %116, !dbg !1062

; <label>:116:                                    ; preds = %115, %108
  tail call void @os_time_dly(i32 10) #14, !dbg !1062
  %117 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %117, metadata !880, metadata !DIExpression()), !dbg !964
  %118 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1064, !tbaa !720
  %119 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %118, i32 0, i32 9, !dbg !1065
  %120 = load i32, i32* %119, align 1, !dbg !1065
  %121 = lshr i32 %120, 24, !dbg !1065
  %122 = trunc i32 %121 to i8, !dbg !1065
  %123 = and i8 %122, 3, !dbg !1065
  %124 = lshr i32 %120, 26, !dbg !1066
  %125 = trunc i32 %124 to i8, !dbg !1066
  %126 = and i8 %125, 3, !dbg !1066
  %127 = lshr i32 %120, 28, !dbg !1067
  %128 = trunc i32 %127 to i8, !dbg !1067
  tail call void @lmp_hci_io_capability_request_reply(i8* %117, i8 zeroext %123, i8 zeroext %126, i8 zeroext %128) #14, !dbg !1068
  br label %772, !dbg !1069

; <label>:129:                                    ; preds = %1
  %130 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1070
  call void @llvm.dbg.value(metadata i8* %130, metadata !880, metadata !DIExpression()), !dbg !964
  %131 = tail call i32 @little_endian_read_32(i8* nonnull %0, i32 8) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %131, metadata !890, metadata !DIExpression()), !dbg !1072
  %132 = load i8, i8* %0, align 1, !dbg !1073, !tbaa !660
  tail call void @bt_event_update_to_user(i8* %130, i32 1212369152, i8 zeroext %132, i32 %131) #14, !dbg !1074
  br label %772, !dbg !1075

; <label>:133:                                    ; preds = %1
  %134 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %134, metadata !880, metadata !DIExpression()), !dbg !964
  tail call void @bt_event_update_to_user(i8* %134, i32 1212369152, i8 zeroext 52, i32 0) #14, !dbg !1077
  br label %772, !dbg !1078

; <label>:135:                                    ; preds = %1
  %136 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1079
  call void @llvm.dbg.value(metadata i8* %136, metadata !880, metadata !DIExpression()), !dbg !964
  %137 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1080
  %138 = load i8, i8* %137, align 1, !dbg !1080, !tbaa !660
  %139 = zext i8 %138 to i32, !dbg !1080
  tail call void @bt_event_update_to_user(i8* %136, i32 1212369152, i8 zeroext 59, i32 %139) #14, !dbg !1081
  br label %772, !dbg !1082

; <label>:140:                                    ; preds = %1
  %141 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %141, metadata !880, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i8* %141, metadata !677, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8 1, metadata !678, metadata !DIExpression()), !dbg !1086
  %142 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %141, i32 1) #14, !dbg !1087
  call void @llvm.dbg.value(metadata i16 %142, metadata !883, metadata !DIExpression()), !dbg !966
  %143 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1088
  %144 = load i8, i8* %143, align 1, !dbg !1088, !tbaa !660
  %145 = icmp eq i8 %144, 0, !dbg !1088
  br i1 %145, label %772, label %146, !dbg !1090

; <label>:146:                                    ; preds = %140
  %147 = tail call i32 @lmp_hci_disconnect(i16 zeroext %142, i8 zeroext 5) #14, !dbg !1091
  br label %772, !dbg !1093

; <label>:148:                                    ; preds = %1
  %149 = load i32, i32* @config_stack_modules, align 4, !dbg !1094, !tbaa !1023
  %150 = and i32 %149, 4, !dbg !1094
  %151 = icmp eq i32 %150, 0, !dbg !1094
  br i1 %151, label %796, label %152, !dbg !1096

; <label>:152:                                    ; preds = %148
  %153 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1097
  %154 = load i8, i8* %153, align 1, !dbg !1097, !tbaa !660
  %155 = zext i8 %154 to i16, !dbg !1097
  %156 = add nuw nsw i16 %155, 1, !dbg !1099
  tail call void @le_hci_emit_event(i8* nonnull %0, i16 zeroext %156, i32 undef) #16, !dbg !1100
  br label %796, !dbg !1101

; <label>:157:                                    ; preds = %1
  call void @llvm.dbg.value(metadata i32 3, metadata !892, metadata !DIExpression()), !dbg !1102
  %158 = load i32, i32* @config_stack_modules, align 4, !dbg !1103, !tbaa !1023
  %159 = and i32 %158, 4, !dbg !1103
  %160 = icmp eq i32 %159, 0, !dbg !1103
  br i1 %160, label %772, label %161, !dbg !1104

; <label>:161:                                    ; preds = %157
  call void @llvm.dbg.value(metadata i16 0, metadata !883, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !884, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i32 3, metadata !892, metadata !DIExpression()), !dbg !1102
  %162 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1106
  %163 = load i8, i8* %162, align 1, !dbg !1106, !tbaa !660
  %164 = icmp eq i8 %163, 0, !dbg !1108
  br i1 %164, label %772, label %165, !dbg !1109

; <label>:165:                                    ; preds = %161
  br label %166, !dbg !1111

; <label>:166:                                    ; preds = %187, %165
  %167 = phi i32 [ %189, %187 ], [ 0, %165 ]
  %168 = phi i32 [ %188, %187 ], [ 3, %165 ]
  %169 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %0, i32 %168) #14, !dbg !1111
  call void @llvm.dbg.value(metadata i16 %169, metadata !883, metadata !DIExpression()), !dbg !966
  %170 = tail call zeroext i16 @get_ble_link_handle() #14, !dbg !1112
  %171 = icmp ult i16 %169, %170, !dbg !1114
  br i1 %171, label %187, label %172, !dbg !1115

; <label>:172:                                    ; preds = %166
  %173 = add nsw i32 %168, 2, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %173, metadata !892, metadata !DIExpression()), !dbg !1102
  %174 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %173) #14, !dbg !1117
  call void @llvm.dbg.value(metadata i16 %174, metadata !894, metadata !DIExpression()), !dbg !1118
  %175 = add nsw i32 %168, 4, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %175, metadata !892, metadata !DIExpression()), !dbg !1102
  %176 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %169) #16, !dbg !1120
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %176, metadata !900, metadata !DIExpression()), !dbg !1121
  %177 = icmp eq %struct.__le_hci_connection* %176, null, !dbg !1122
  br i1 %177, label %187, label %178, !dbg !1124

; <label>:178:                                    ; preds = %172
  %179 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %176, i32 0, i32 16, !dbg !1125
  %180 = load i8, i8* %179, align 2, !dbg !1125, !tbaa !1127
  %181 = zext i8 %180 to i32, !dbg !1128
  %182 = zext i16 %174 to i32, !dbg !1129
  %183 = icmp ult i32 %181, %182, !dbg !1130
  %184 = sub nsw i32 %181, %182, !dbg !1131
  %185 = trunc i32 %184 to i8, !dbg !1131
  %186 = select i1 %183, i8 0, i8 %185, !dbg !1133
  store i8 %186, i8* %179, align 2, !dbg !1131, !tbaa !1127
  br label %187, !dbg !1134

; <label>:187:                                    ; preds = %178, %172, %166
  %188 = phi i32 [ %168, %166 ], [ %175, %172 ], [ %175, %178 ]
  call void @llvm.dbg.value(metadata i32 %188, metadata !892, metadata !DIExpression()), !dbg !1102
  %189 = add nuw nsw i32 %167, 1, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %189, metadata !884, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i16 %169, metadata !883, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 %189, metadata !884, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i32 %188, metadata !892, metadata !DIExpression()), !dbg !1102
  %190 = load i8, i8* %162, align 1, !dbg !1106, !tbaa !660
  %191 = zext i8 %190 to i32, !dbg !1106
  %192 = icmp slt i32 %189, %191, !dbg !1108
  br i1 %192, label %166, label %771, !dbg !1109, !llvm.loop !1137

; <label>:193:                                    ; preds = %1
  %194 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %194, metadata !880, metadata !DIExpression()), !dbg !964
  %195 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1141, !tbaa !660
  %196 = icmp slt i8 %195, 0, !dbg !1141
  %197 = getelementptr inbounds i8, i8* %0, i32 11
  br i1 %196, label %198, label %202, !dbg !1143

; <label>:198:                                    ; preds = %193
  %199 = load i8, i8* %197, align 1, !dbg !1144, !tbaa !660
  %200 = zext i8 %199 to i32, !dbg !1144
  %201 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i32 %200) #16, !dbg !1144
  br label %202, !dbg !1144

; <label>:202:                                    ; preds = %198, %193
  %203 = load i8, i8* %197, align 1, !dbg !1146, !tbaa !660
  switch i8 %203, label %209 [
    i8 2, label %204
    i8 0, label %204
  ], !dbg !1148

; <label>:204:                                    ; preds = %202, %202
  %205 = tail call i32 @update_multi_bd_status(i8* nonnull %194, i8 zeroext 1, i8 zeroext %203) #14, !dbg !1149
  %206 = icmp eq i32 %205, 0, !dbg !1149
  br i1 %206, label %207, label %772, !dbg !1152

; <label>:207:                                    ; preds = %204
  %208 = load i8, i8* %197, align 1, !dbg !1153, !tbaa !660
  br label %209, !dbg !1153

; <label>:209:                                    ; preds = %207, %202
  %210 = phi i8 [ %208, %207 ], [ %203, %202 ], !dbg !1153
  switch i8 %210, label %221 [
    i8 1, label %211
    i8 0, label %219
    i8 2, label %220
  ], !dbg !1155

; <label>:211:                                    ; preds = %209
  %212 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1156, !tbaa !720
  %213 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %212, i32 0, i32 9, !dbg !1159
  %214 = load i32, i32* %213, align 1, !dbg !1159
  %215 = and i32 %214, 1048576, !dbg !1156
  %216 = icmp eq i32 %215, 0, !dbg !1156
  br i1 %216, label %218, label %217, !dbg !1160

; <label>:217:                                    ; preds = %211
  tail call void @lmp_hci_accept_connection_request(i8* nonnull %194, i8 zeroext -86) #14, !dbg !1161
  br label %772, !dbg !1163

; <label>:218:                                    ; preds = %211
  tail call void @lmp_hci_accept_connection_request(i8* nonnull %194, i8 zeroext 1) #14, !dbg !1164
  br label %772

; <label>:219:                                    ; preds = %209
  tail call void @lmp_hci_accept_connection_request(i8* nonnull %194, i8 zeroext 1) #14, !dbg !1166
  br label %772, !dbg !1169

; <label>:220:                                    ; preds = %209
  tail call void @lmp_hci_accept_sco_connection_request(i8* nonnull %194, i32 -1, i32 -1, i16 zeroext -1, i16 zeroext 0, i8 zeroext 2, i16 zeroext 968) #14, !dbg !1170
  br label %772, !dbg !1173

; <label>:221:                                    ; preds = %209
  tail call void @lmp_hci_reject_connection_request(i8* nonnull %194, i8 zeroext 10) #14, !dbg !1174
  br label %772

; <label>:222:                                    ; preds = %1
  %223 = load i32, i32* @config_btctler_modules, align 4, !dbg !1176, !tbaa !1023
  %224 = and i32 %223, 1, !dbg !1176
  %225 = icmp eq i32 %224, 0, !dbg !1176
  br i1 %225, label %772, label %226, !dbg !1178

; <label>:226:                                    ; preds = %222
  %227 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1179, !tbaa !660
  %228 = icmp slt i8 %227, 0, !dbg !1179
  %229 = getelementptr inbounds i8, i8* %0, i32 2
  br i1 %228, label %230, label %235, !dbg !1182

; <label>:230:                                    ; preds = %226
  %231 = load i8, i8* %229, align 1, !dbg !1183, !tbaa !660
  %232 = zext i8 %231 to i32, !dbg !1183
  %233 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 %232) #16, !dbg !1183
  %234 = load i8, i8* %0, align 1, !tbaa !660
  br label %235, !dbg !1183

; <label>:235:                                    ; preds = %230, %226
  %236 = phi i8 [ %234, %230 ], [ 1, %226 ], !dbg !1185
  %237 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1186, !tbaa !720
  %238 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %237, i32 0, i32 1, !dbg !1187
  %239 = load i8, i8* %238, align 1, !dbg !1187
  %240 = lshr i8 %239, 4, !dbg !1187
  %241 = and i8 %240, 1, !dbg !1187
  %242 = zext i8 %241 to i32, !dbg !1186
  tail call void @bt_event_update_to_user(i8* null, i32 1212369152, i8 zeroext %236, i32 %242) #14, !dbg !1188
  %243 = load i8, i8* %229, align 1, !dbg !1189, !tbaa !660
  %244 = icmp eq i8 %243, 0, !dbg !1191
  br i1 %244, label %245, label %772, !dbg !1192

; <label>:245:                                    ; preds = %235
  %246 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1193, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.__inquiry_result_t* %246, metadata !1195, metadata !DIExpression()), !dbg !1200
  %247 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %246, i32 0, i32 1, !dbg !1202
  %248 = load i8, i8* %247, align 1, !dbg !1202
  %249 = and i8 %248, 16, !dbg !1202
  %250 = icmp eq i8 %249, 0, !dbg !1204
  br i1 %250, label %772, label %251, !dbg !1205

; <label>:251:                                    ; preds = %245
  %252 = and i8 %248, -17, !dbg !1206
  store i8 %252, i8* %247, align 1, !dbg !1206
  %253 = tail call i8* @bt_get_emitter_pin_code(i8 zeroext 1) #14, !dbg !1208
  %254 = load i8, i8* @inquiry_spp_device, align 1, !dbg !1209, !tbaa !660
  %255 = icmp eq i8 %254, 0, !dbg !1209
  br i1 %255, label %259, label %256, !dbg !1211

; <label>:256:                                    ; preds = %251
  store i8 0, i8* @inquiry_spp_device, align 1, !dbg !1212, !tbaa !660
  %257 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %246, i32 0, i32 2, i32 0, !dbg !1214
  %258 = tail call i32 @user_send_cmd_prepare(i32 3, i16 zeroext 6, i8* %257) #14, !dbg !1215
  br label %772, !dbg !1216

; <label>:259:                                    ; preds = %251
  %260 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %246, i32 0, i32 2, i32 0, !dbg !1217
  %261 = tail call i32 @user_send_cmd_prepare(i32 1, i16 zeroext 6, i8* %260) #14, !dbg !1219
  br label %772

; <label>:262:                                    ; preds = %1
  %263 = load i32, i32* @config_btctler_modules, align 4, !dbg !1220, !tbaa !1023
  %264 = and i32 %263, 1, !dbg !1220
  %265 = icmp ne i32 %264, 0, !dbg !1220
  %266 = load i8, i8* @hci_inquiry_support, align 1, !dbg !1221
  %267 = icmp ne i8 %266, 0, !dbg !1221
  %268 = and i1 %265, %267, !dbg !1222
  br i1 %268, label %269, label %772, !dbg !1222

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1223
  %271 = load i8, i8* %270, align 1, !dbg !1223, !tbaa !660
  call void @llvm.dbg.value(metadata i32 %282, metadata !945, metadata !DIExpression()), !dbg !1224
  %272 = getelementptr inbounds i8, i8* %0, i32 17, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %272, metadata !946, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8 0, metadata !947, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 0, metadata !948, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8 0, metadata !949, metadata !DIExpression()), !dbg !1229
  %273 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1230
  %274 = load i8, i8* %273, align 1, !dbg !1230, !tbaa !660
  call void @llvm.dbg.value(metadata i8 %274, metadata !950, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 0, metadata !951, metadata !DIExpression()), !dbg !1232
  %275 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i32 0, i32 0, !dbg !1233
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %275) #15, !dbg !1233
  %276 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1234, !tbaa !720
  %277 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %276, i32 0, i32 1, !dbg !1236
  %278 = load i8, i8* %277, align 1, !dbg !1236
  %279 = and i8 %278, 16, !dbg !1236
  %280 = icmp eq i8 %279, 0, !dbg !1234
  br i1 %280, label %281, label %380, !dbg !1237

; <label>:281:                                    ; preds = %269
  %282 = zext i8 %271 to i32, !dbg !1223
  %283 = add nsw i32 %282, -15, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %283, metadata !945, metadata !DIExpression()), !dbg !1224
  %284 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %276, i32 0, i32 0, i32 0, !dbg !1239
  tail call void @llvm.memset.p0i8.i32(i8* %284, i8 0, i32 15, i32 1, i1 false) #15, !dbg !1239
  %285 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %276, i32 0, i32 2, i32 0, !dbg !1240
  %286 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1241
  tail call void @bt_flip_addr(i8* %285, i8* %286) #14, !dbg !1242
  %287 = getelementptr inbounds i8, i8* %0, i32 11, !dbg !1243
  %288 = load i8, i8* %287, align 1, !dbg !1243, !tbaa !660
  %289 = zext i8 %288 to i32, !dbg !1243
  %290 = getelementptr inbounds i8, i8* %0, i32 12, !dbg !1243
  %291 = load i8, i8* %290, align 1, !dbg !1243, !tbaa !660
  %292 = zext i8 %291 to i32, !dbg !1243
  %293 = shl nuw nsw i32 %292, 8, !dbg !1243
  %294 = or i32 %293, %289, !dbg !1243
  %295 = getelementptr inbounds i8, i8* %0, i32 13, !dbg !1243
  %296 = load i8, i8* %295, align 1, !dbg !1243, !tbaa !660
  %297 = zext i8 %296 to i32, !dbg !1243
  %298 = shl nuw nsw i32 %297, 16, !dbg !1243
  %299 = or i32 %294, %298, !dbg !1243
  call void @llvm.dbg.value(metadata i32 %299, metadata !951, metadata !DIExpression()), !dbg !1232
  %300 = and i32 %293, 7936, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %300, metadata !948, metadata !DIExpression()), !dbg !1228
  %301 = trunc i32 %293 to i13, !dbg !1245
  %302 = add i13 %301, 256, !dbg !1245
  %303 = lshr exact i13 %302, 8, !dbg !1245
  %304 = trunc i13 %303 to i5, !dbg !1245
  switch i5 %304, label %310 [
    i5 0, label %305
    i5 13, label %305
    i5 7, label %305
    i5 4, label %305
    i5 3, label %305
    i5 2, label %305
  ], !dbg !1245

; <label>:305:                                    ; preds = %281, %281, %281, %281, %281, %281
  %306 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1247, !tbaa !660
  %307 = icmp slt i8 %306, 0, !dbg !1247
  br i1 %307, label %308, label %380, !dbg !1250

; <label>:308:                                    ; preds = %305
  %309 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0), i32 %300) #14, !dbg !1251
  br label %380, !dbg !1251

; <label>:310:                                    ; preds = %281
  %311 = icmp eq i32 %283, 0, !dbg !1253
  br i1 %311, label %380, label %312, !dbg !1255

; <label>:312:                                    ; preds = %310
  call void @llvm.dbg.value(metadata i8 1, metadata !953, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i32 %283, metadata !945, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8* %272, metadata !946, metadata !DIExpression()), !dbg !1226
  %313 = icmp sgt i32 %283, 0, !dbg !1257
  br i1 %313, label %314, label %365, !dbg !1259

; <label>:314:                                    ; preds = %312
  br label %315, !dbg !1260

; <label>:315:                                    ; preds = %354, %314
  %316 = phi i8 [ %355, %354 ], [ 1, %314 ]
  %317 = phi i32 [ %359, %354 ], [ %283, %314 ]
  %318 = phi i8* [ %360, %354 ], [ %272, %314 ]
  %319 = load i8, i8* %318, align 1, !dbg !1260, !tbaa !660
  %320 = icmp eq i8 %319, 0, !dbg !1263
  br i1 %320, label %362, label %321, !dbg !1264

; <label>:321:                                    ; preds = %315
  %322 = getelementptr inbounds i8, i8* %318, i32 1, !dbg !1265
  %323 = load i8, i8* %322, align 1, !dbg !1265, !tbaa !660
  %324 = and i8 %323, -2, !dbg !1267
  %325 = icmp eq i8 %324, 8, !dbg !1267
  br i1 %325, label %326, label %354, !dbg !1267

; <label>:326:                                    ; preds = %321
  %327 = zext i8 %319 to i16, !dbg !1268
  %328 = add nsw i16 %327, -1, !dbg !1270
  call void @llvm.dbg.value(metadata i16 %328, metadata !952, metadata !DIExpression()), !dbg !1271
  %329 = icmp ult i16 %328, 32, !dbg !1272
  %330 = select i1 %329, i16 %328, i16 32, !dbg !1272
  call void @llvm.dbg.value(metadata i16 %330, metadata !952, metadata !DIExpression()), !dbg !1271
  %331 = getelementptr inbounds i8, i8* %318, i32 2, !dbg !1273
  %332 = zext i16 %330 to i32, !dbg !1274
  %333 = icmp ugt i16 %330, 31, !dbg !1275
  %334 = sub nsw i32 32, %332, !dbg !1275
  %335 = select i1 %333, i32 0, i32 %334, !dbg !1275
  %336 = getelementptr [32 x i8], [32 x i8]* %4, i32 0, i32 %332, !dbg !1275
  call void @llvm.memset.p0i8.i32(i8* %336, i8 0, i32 %335, i32 1, i1 false) #15, !dbg !1275
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %275, i8* %331, i32 %332, i32 1, i1 false) #15, !dbg !1275
  %337 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1276, !tbaa !720
  %338 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %337, i32 0, i32 12, !dbg !1278
  %339 = load i8 (i8*, i8, i8*, i32, i8)*, i8 (i8*, i8, i8*, i32, i8)** %338, align 4, !dbg !1278, !tbaa !1279
  %340 = icmp eq i8 (i8*, i8, i8*, i32, i8)* %339, null, !dbg !1276
  br i1 %340, label %354, label %341, !dbg !1281

; <label>:341:                                    ; preds = %326
  %342 = trunc i16 %330 to i8, !dbg !1282
  %343 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1284, !tbaa !720
  %344 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %343, i32 0, i32 2, i32 0, !dbg !1284
  %345 = call zeroext i8 %339(i8* nonnull %275, i8 zeroext %342, i8* %344, i32 %299, i8 signext %274) #14, !dbg !1285
  call void @llvm.dbg.value(metadata i8 %345, metadata !949, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 0, metadata !953, metadata !DIExpression()), !dbg !1256
  %346 = icmp eq i8 %345, 1, !dbg !1286
  br i1 %346, label %347, label %354, !dbg !1288

; <label>:347:                                    ; preds = %341
  %348 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0)) #14, !dbg !1289
  %349 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1291, !tbaa !720
  %350 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %349, i32 0, i32 1, !dbg !1292
  %351 = load i8, i8* %350, align 1, !dbg !1293
  %352 = or i8 %351, 16, !dbg !1293
  store i8 %352, i8* %350, align 1, !dbg !1293
  %353 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %349, i32 0, i32 2, i32 0, !dbg !1294
  call void @put_buf(i8* %353, i32 6) #14, !dbg !1295
  call void bitcast (void (...)* @lmp_hci_cancel_inquiry to void ()*)() #14, !dbg !1296
  br label %380, !dbg !1299

; <label>:354:                                    ; preds = %341, %326, %321
  %355 = phi i8 [ 0, %341 ], [ %316, %326 ], [ %316, %321 ]
  call void @llvm.dbg.value(metadata i8 %355, metadata !953, metadata !DIExpression()), !dbg !1256
  %356 = load i8, i8* %318, align 1, !dbg !1300, !tbaa !660
  %357 = zext i8 %356 to i32, !dbg !1300
  %358 = add nuw nsw i32 %357, 1, !dbg !1301
  %359 = sub nsw i32 %317, %358, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %359, metadata !945, metadata !DIExpression()), !dbg !1224
  %360 = getelementptr inbounds i8, i8* %318, i32 %358, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %360, metadata !946, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8 %355, metadata !953, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i32 %359, metadata !945, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8* %360, metadata !946, metadata !DIExpression()), !dbg !1226
  %361 = icmp sgt i32 %359, 0, !dbg !1257
  br i1 %361, label %315, label %362, !dbg !1259, !llvm.loop !1304

; <label>:362:                                    ; preds = %354, %315
  %363 = phi i8 [ %355, %354 ], [ %316, %315 ]
  %364 = icmp eq i8 %363, 0, !dbg !1307
  br i1 %364, label %380, label %365, !dbg !1309

; <label>:365:                                    ; preds = %362, %312
  %366 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1310, !tbaa !720
  %367 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %366, i32 0, i32 12, !dbg !1312
  %368 = load i8 (i8*, i8, i8*, i32, i8)*, i8 (i8*, i8, i8*, i32, i8)** %367, align 4, !dbg !1312, !tbaa !1279
  %369 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1313, !tbaa !720
  %370 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %369, i32 0, i32 2, i32 0, !dbg !1313
  %371 = call zeroext i8 %368(i8* null, i8 zeroext 0, i8* %370, i32 %299, i8 signext %274) #14, !dbg !1310
  call void @llvm.dbg.value(metadata i8 %371, metadata !949, metadata !DIExpression()), !dbg !1229
  %372 = icmp eq i8 %371, 1, !dbg !1314
  br i1 %372, label %373, label %380, !dbg !1316

; <label>:373:                                    ; preds = %365
  %374 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1317, !tbaa !720
  %375 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %374, i32 0, i32 1, !dbg !1319
  %376 = load i8, i8* %375, align 1, !dbg !1320
  %377 = or i8 %376, 16, !dbg !1320
  store i8 %377, i8* %375, align 1, !dbg !1320
  call void bitcast (void (...)* @lmp_hci_cancel_inquiry to void ()*)() #14, !dbg !1321
  %378 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1323, !tbaa !720
  %379 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %378, i32 0, i32 2, i32 0, !dbg !1323
  call void @put_buf(i8* %379, i32 6) #14, !dbg !1324
  br label %380, !dbg !1325

; <label>:380:                                    ; preds = %373, %365, %362, %347, %310, %308, %305, %269
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %275) #15, !dbg !1326
  br label %772, !dbg !1327

; <label>:381:                                    ; preds = %1
  %382 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %382, metadata !880, metadata !DIExpression()), !dbg !964
  %383 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1329
  %384 = load i8, i8* %383, align 1, !dbg !1329, !tbaa !660
  switch i8 %384, label %772 [
    i8 0, label %385
    i8 5, label %409
  ], !dbg !1330

; <label>:385:                                    ; preds = %381
  %386 = getelementptr inbounds i8, i8* %0, i32 11, !dbg !1331
  %387 = load i8, i8* %386, align 1, !dbg !1331, !tbaa !660
  %388 = icmp eq i8 %387, 1, !dbg !1332
  br i1 %388, label %389, label %772, !dbg !1333

; <label>:389:                                    ; preds = %385
  %390 = bitcast i8* %382 to [6 x i8]*, !dbg !1334
  %391 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1335, !tbaa !720
  %392 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %391, i32 0, i32 9, !dbg !1337
  %393 = load i32, i32* %392, align 1, !dbg !1337
  %394 = lshr i32 %393, 20, !dbg !1337
  %395 = lshr i32 %393, 6, !dbg !1338
  %396 = or i32 %394, %395, !dbg !1339
  %397 = trunc i32 %396 to i8, !dbg !1335
  %398 = and i8 %397, 1, !dbg !1335
  tail call void @updata_last_link_key([6 x i8]* %390, i8 zeroext %398) #14, !dbg !1340
  %399 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1342, !tbaa !720
  %400 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %399, i32 0, i32 9, !dbg !1343
  %401 = load i32, i32* %400, align 1, !dbg !1343
  %402 = and i32 %401, 1048576, !dbg !1342
  %403 = icmp eq i32 %402, 0, !dbg !1342
  br i1 %403, label %404, label %772, !dbg !1344

; <label>:404:                                    ; preds = %389
  call void @llvm.dbg.value(metadata i8 0, metadata !901, metadata !DIExpression()), !dbg !1345
  %405 = tail call zeroext i8 @handle_remote_dev_type([6 x i8]* %390, i8 zeroext -1) #14, !dbg !1346
  call void @llvm.dbg.value(metadata i8 %405, metadata !901, metadata !DIExpression()), !dbg !1345
  %406 = tail call zeroext i8 @remote_dev_company_ioctrl(i8* nonnull %382, i8 zeroext 1, i8 zeroext %405) #14, !dbg !1347
  %407 = icmp eq i8 %405, 0, !dbg !1348
  br i1 %407, label %772, label %408, !dbg !1350

; <label>:408:                                    ; preds = %404
  tail call void @sdp_callback_remote_type(i8 zeroext %405) #14, !dbg !1351
  br label %772, !dbg !1353

; <label>:409:                                    ; preds = %381
  %410 = bitcast i8* %382 to [6 x i8]*, !dbg !1354
  %411 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1358, !tbaa !720
  %412 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %411, i32 0, i32 9, !dbg !1360
  %413 = load i32, i32* %412, align 1, !dbg !1360
  %414 = lshr i32 %413, 20, !dbg !1360
  %415 = lshr i32 %413, 6, !dbg !1361
  %416 = or i32 %414, %415, !dbg !1362
  %417 = trunc i32 %416 to i8, !dbg !1358
  %418 = and i8 %417, 1, !dbg !1358
  tail call void @delete_link_key([6 x i8]* %410, i8 zeroext %418) #14, !dbg !1363
  br label %772, !dbg !1365

; <label>:419:                                    ; preds = %1
  %420 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %420, metadata !880, metadata !DIExpression()), !dbg !964
  %421 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !1367
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %421) #15, !dbg !1367
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !908, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 0, metadata !910, metadata !DIExpression()), !dbg !1369
  %422 = bitcast i8* %420 to [6 x i8]*, !dbg !1370
  %423 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1371, !tbaa !720
  %424 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %423, i32 0, i32 9, !dbg !1373
  %425 = load i32, i32* %424, align 1, !dbg !1373
  %426 = lshr i32 %425, 20, !dbg !1373
  %427 = lshr i32 %425, 6, !dbg !1374
  %428 = or i32 %426, %427, !dbg !1375
  %429 = trunc i32 %428 to i8, !dbg !1371
  %430 = and i8 %429, 1, !dbg !1371
  %431 = call i32 @get_link_key([6 x i8]* %422, [16 x i8]* nonnull %5, i8 zeroext %430) #14, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %431, metadata !910, metadata !DIExpression()), !dbg !1369
  %432 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1378, !tbaa !720
  %433 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %432, i32 0, i32 9, !dbg !1380
  %434 = load i32, i32* %433, align 1, !dbg !1380
  %435 = lshr i32 %434, 20, !dbg !1380
  %436 = lshr i32 %434, 6, !dbg !1381
  %437 = or i32 %435, %436, !dbg !1382
  %438 = trunc i32 %437 to i8, !dbg !1378
  %439 = and i8 %438, 1, !dbg !1378
  %440 = call i32 @get_support_profile([6 x i8]* %422, i8 zeroext %439) #14, !dbg !1383
  %441 = trunc i32 %440 to i16, !dbg !1384
  %442 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1385, !tbaa !720
  %443 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %442, i32 0, i32 5, !dbg !1386
  store i16 %441, i16* %443, align 4, !dbg !1387, !tbaa !1388
  %444 = icmp eq i32 %431, 0, !dbg !1389
  br i1 %444, label %446, label %445, !dbg !1391

; <label>:445:                                    ; preds = %419
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @last_device_connect_linkkey, i32 0, i32 0), i8* nonnull %421, i32 16, i32 1, i1 false), !dbg !1392
  call void @lmp_hci_link_key_request_reply(i8* %420, i8* nonnull %421) #14, !dbg !1394
  br label %447, !dbg !1395

; <label>:446:                                    ; preds = %419
  call void @lmp_hci_link_key_request_negative_reply(i8* %420) #14, !dbg !1396
  br label %447

; <label>:447:                                    ; preds = %446, %445
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %421) #15, !dbg !1398
  br label %796, !dbg !1399

; <label>:448:                                    ; preds = %1
  %449 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1400
  call void @llvm.dbg.value(metadata i8* %449, metadata !880, metadata !DIExpression()), !dbg !964
  %450 = bitcast i8* %449 to [6 x i8]*, !dbg !1401
  %451 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !1402
  %452 = bitcast i8* %451 to [16 x i8]*, !dbg !1403
  %453 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1404, !tbaa !720
  %454 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %453, i32 0, i32 9, !dbg !1406
  %455 = load i32, i32* %454, align 1, !dbg !1406
  %456 = lshr i32 %455, 20, !dbg !1406
  %457 = lshr i32 %455, 6, !dbg !1407
  %458 = or i32 %456, %457, !dbg !1408
  %459 = trunc i32 %458 to i8, !dbg !1404
  %460 = and i8 %459, 1, !dbg !1404
  tail call void @put_link_key([6 x i8]* %450, [16 x i8]* %452, i8 zeroext 0, i8 zeroext %460) #14, !dbg !1409
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @last_device_connect_linkkey, i32 0, i32 0), i8* %451, i32 16, i32 1, i1 false), !dbg !1410
  br label %772, !dbg !1411

; <label>:461:                                    ; preds = %1
  %462 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1412, !tbaa !660
  %463 = and i8 %462, 32, !dbg !1412
  %464 = icmp eq i8 %463, 0, !dbg !1412
  br i1 %464, label %468, label %465, !dbg !1414

; <label>:465:                                    ; preds = %461
  %466 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0)) #16, !dbg !1415
  %467 = load i8, i8* %0, align 1, !tbaa !660
  br label %468, !dbg !1415

; <label>:468:                                    ; preds = %465, %461
  %469 = phi i8 [ 22, %461 ], [ %467, %465 ], !dbg !1417
  tail call void @bt_event_update_to_user(i8* null, i32 1212369152, i8 zeroext %469, i32 0) #14, !dbg !1418
  %470 = tail call zeroext i8 bitcast (i8 (...)* @get_is_in_background_flag to i8 ()*)() #14, !dbg !1419
  %471 = icmp eq i8 %470, 0, !dbg !1420
  br i1 %471, label %477, label %472, !dbg !1420

; <label>:472:                                    ; preds = %468
  br label %473, !dbg !1421

; <label>:473:                                    ; preds = %473, %472
  tail call void @os_time_dly(i32 3) #14, !dbg !1421
  %474 = tail call zeroext i8 bitcast (i8 (...)* @get_is_in_background_flag to i8 ()*)() #14, !dbg !1419
  %475 = icmp eq i8 %474, 0, !dbg !1420
  br i1 %475, label %476, label %473, !dbg !1420, !llvm.loop !1423

; <label>:476:                                    ; preds = %473
  br label %477, !dbg !1426

; <label>:477:                                    ; preds = %476, %468
  %478 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1426
  call void @llvm.dbg.value(metadata i8* %478, metadata !880, metadata !DIExpression()), !dbg !964
  %479 = bitcast i8* %478 to [6 x i8]*, !dbg !1427
  %480 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1428, !tbaa !720
  %481 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %480, i32 0, i32 9, !dbg !1430
  %482 = load i32, i32* %481, align 1, !dbg !1430
  %483 = lshr i32 %482, 20, !dbg !1430
  %484 = lshr i32 %482, 6, !dbg !1431
  %485 = or i32 %483, %484, !dbg !1432
  %486 = trunc i32 %485 to i8, !dbg !1428
  %487 = and i8 %486, 1, !dbg !1428
  tail call void @delete_link_key([6 x i8]* %479, i8 zeroext %487) #14, !dbg !1433
  %488 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %488) #15, !dbg !1434
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !911, metadata !DIExpression()), !dbg !1435
  %489 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !1436
  call void @llvm.memset.p0i8.i64(i8* nonnull %489, i8 0, i64 16, i32 4, i1 false), !dbg !1438
  %490 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1436, !tbaa !720
  %491 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %490, i32 0, i32 9, !dbg !1439
  %492 = load i32, i32* %491, align 1, !dbg !1439
  %493 = and i32 %492, 1048576, !dbg !1436
  %494 = icmp eq i32 %493, 0, !dbg !1436
  br i1 %494, label %497, label %495, !dbg !1440

; <label>:495:                                    ; preds = %477
  %496 = tail call i8* @bt_get_emitter_pin_code(i8 zeroext 0) #16, !dbg !1441
  br label %499, !dbg !1443

; <label>:497:                                    ; preds = %477
  %498 = tail call i8* @bt_get_pin_code() #16, !dbg !1444
  br label %499

; <label>:499:                                    ; preds = %497, %495
  %500 = phi i8* [ %498, %497 ], [ %496, %495 ]
  %501 = bitcast i8* %500 to i32*
  %502 = bitcast [16 x i8]* %6 to i32*
  %503 = load i32, i32* %501, align 1
  store i32 %503, i32* %502, align 4
  call void @lmp_hci_pin_code_request_reply(i8* %478, i8 zeroext 4, i8* nonnull %488) #14, !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %488) #15, !dbg !1447
  br label %772, !dbg !1448

; <label>:504:                                    ; preds = %1
  %505 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1449, !tbaa !720
  %506 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %505, i32 0, i32 1, !dbg !1451
  %507 = load void (i8, i8*, i8*)*, void (i8, i8*, i8*)** %506, align 4, !dbg !1451, !tbaa !1452
  %508 = icmp eq void (i8, i8*, i8*)* %507, null, !dbg !1449
  br i1 %508, label %772, label %509, !dbg !1453

; <label>:509:                                    ; preds = %504
  %510 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1454
  %511 = load i8, i8* %510, align 1, !dbg !1454, !tbaa !660
  %512 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1456
  %513 = getelementptr inbounds i8, i8* %0, i32 9, !dbg !1457
  tail call void %507(i8 zeroext %511, i8* %512, i8* %513) #14, !dbg !1458
  br label %772, !dbg !1459

; <label>:514:                                    ; preds = %1
  %515 = load i32, i32* @config_btctler_modules, align 4, !dbg !1460, !tbaa !1023
  %516 = and i32 %515, 1, !dbg !1460
  %517 = icmp ne i32 %516, 0, !dbg !1460
  %518 = load i8, i8* @hci_inquiry_support, align 1, !dbg !1462
  %519 = icmp ne i8 %518, 0, !dbg !1462
  %520 = and i1 %517, %519, !dbg !1465
  br i1 %520, label %521, label %772, !dbg !1465

; <label>:521:                                    ; preds = %514
  %522 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1466
  %523 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1468
  %524 = load i8, i8* %523, align 1, !dbg !1468, !tbaa !660
  %525 = zext i8 %524 to i16, !dbg !1468
  tail call fastcc void @hci_event_inquiry_result(i8* %522, i16 zeroext %525, i8 zeroext 0) #16, !dbg !1469
  br label %772, !dbg !1470

; <label>:526:                                    ; preds = %1
  %527 = load i32, i32* @config_btctler_modules, align 4, !dbg !1471, !tbaa !1023
  %528 = and i32 %527, 1, !dbg !1471
  %529 = icmp ne i32 %528, 0, !dbg !1471
  %530 = load i8, i8* @hci_inquiry_support, align 1, !dbg !1473
  %531 = icmp ne i8 %530, 0, !dbg !1473
  %532 = and i1 %529, %531, !dbg !1476
  br i1 %532, label %533, label %772, !dbg !1476

; <label>:533:                                    ; preds = %526
  %534 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1477
  %535 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1479
  %536 = load i8, i8* %535, align 1, !dbg !1479, !tbaa !660
  %537 = zext i8 %536 to i16, !dbg !1479
  tail call fastcc void @hci_event_inquiry_result(i8* %534, i16 zeroext %537, i8 zeroext 1) #16, !dbg !1480
  br label %772, !dbg !1481

; <label>:538:                                    ; preds = %1
  %539 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1482, !tbaa !660
  %540 = icmp slt i8 %539, 0, !dbg !1482
  br i1 %540, label %541, label %543, !dbg !1484

; <label>:541:                                    ; preds = %538
  %542 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str, i32 0, i32 0)), !dbg !1485
  br label %543, !dbg !1485

; <label>:543:                                    ; preds = %541, %538
  %544 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !1487
  %545 = load i8, i8* %544, align 1, !dbg !1487, !tbaa !660
  call void @llvm.dbg.value(metadata i8 %545, metadata !914, metadata !DIExpression()), !dbg !1488
  %546 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !1489
  %547 = load i8, i8* %546, align 1, !dbg !1489, !tbaa !660
  call void @llvm.dbg.value(metadata i8 %547, metadata !881, metadata !DIExpression()), !dbg !1490
  %548 = getelementptr inbounds i8, i8* %0, i32 7, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %548, metadata !880, metadata !DIExpression()), !dbg !964
  %549 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1492
  %550 = load i8, i8* %549, align 1, !dbg !1492, !tbaa !660
  %551 = zext i8 %550 to i16, !dbg !1492
  %552 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !1492
  %553 = load i8, i8* %552, align 1, !dbg !1492, !tbaa !660
  %554 = zext i8 %553 to i16, !dbg !1492
  %555 = shl nuw i16 %554, 8, !dbg !1492
  %556 = or i16 %555, %551, !dbg !1492
  call void @llvm.dbg.value(metadata i16 %556, metadata !883, metadata !DIExpression()), !dbg !966
  %557 = zext i16 %556 to i32, !dbg !1493
  %558 = tail call zeroext i16 @get_ble_link_handle() #14, !dbg !1495
  %559 = icmp ult i16 %556, %558, !dbg !1496
  br i1 %559, label %560, label %580, !dbg !1497

; <label>:560:                                    ; preds = %543
  %561 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1498, !tbaa !660
  %562 = icmp slt i8 %561, 0, !dbg !1498
  br i1 %562, label %563, label %567, !dbg !1501

; <label>:563:                                    ; preds = %560
  %564 = zext i8 %547 to i32, !dbg !1502
  %565 = zext i8 %545 to i32, !dbg !1502
  %566 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i32 %564, i32 %565) #16, !dbg !1502
  br label %567, !dbg !1502

; <label>:567:                                    ; preds = %563, %560
  switch i8 %547, label %570 [
    i8 0, label %568
    i8 2, label %568
  ], !dbg !1504

; <label>:568:                                    ; preds = %567, %567
  %569 = tail call i32 @update_multi_bd_status(i8* %548, i8 zeroext 3, i8 zeroext %547) #14, !dbg !1506
  br label %570, !dbg !1508

; <label>:570:                                    ; preds = %568, %567
  %571 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1509
  %572 = load i8, i8* %571, align 1, !dbg !1509, !tbaa !660
  %573 = icmp eq i8 %572, 0, !dbg !1509
  br i1 %573, label %574, label %772, !dbg !1511

; <label>:574:                                    ; preds = %570
  %575 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1512, !tbaa !660
  %576 = and i8 %575, 64, !dbg !1512
  %577 = icmp eq i8 %576, 0, !dbg !1512
  br i1 %577, label %579, label %578, !dbg !1515

; <label>:578:                                    ; preds = %574
  tail call void @put_buf(i8* nonnull %548, i32 6) #14, !dbg !1516
  br label %579, !dbg !1516

; <label>:579:                                    ; preds = %578, %574
  tail call void @hci_emit_nr_connections_delete(i8 zeroext %545, i8 zeroext %547, i8* nonnull %548) #16, !dbg !1518
  br label %772, !dbg !1519

; <label>:580:                                    ; preds = %543
  %581 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1520
  %582 = load i8, i8* %581, align 1, !dbg !1520, !tbaa !660
  %583 = icmp eq i8 %582, 0, !dbg !1520
  br i1 %583, label %584, label %772, !dbg !1523

; <label>:584:                                    ; preds = %580
  %585 = load i32, i32* @config_stack_modules, align 4, !dbg !1524, !tbaa !1023
  %586 = and i32 %585, 4, !dbg !1524
  %587 = icmp eq i32 %586, 0, !dbg !1524
  br i1 %587, label %772, label %588, !dbg !1526

; <label>:588:                                    ; preds = %584
  %589 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1527, !tbaa !660
  %590 = icmp slt i8 %589, 0, !dbg !1527
  br i1 %590, label %591, label %593, !dbg !1530

; <label>:591:                                    ; preds = %588
  %592 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 %557) #16, !dbg !1531
  br label %593, !dbg !1531

; <label>:593:                                    ; preds = %591, %588
  %594 = load i16, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 5), align 4, !dbg !1533, !tbaa !1535
  %595 = icmp eq i16 %594, 0, !dbg !1538
  br i1 %595, label %597, label %596, !dbg !1539

; <label>:596:                                    ; preds = %593
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), i8 0, i64 5, i32 1, i1 false), !dbg !1540
  br label %597, !dbg !1542

; <label>:597:                                    ; preds = %596, %593
  %598 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1543
  %599 = load i8, i8* %598, align 1, !dbg !1543, !tbaa !660
  %600 = zext i8 %599 to i16, !dbg !1543
  %601 = add nuw nsw i16 %600, 1, !dbg !1544
  tail call void @le_hci_emit_event(i8* nonnull %0, i16 zeroext %601, i32 undef) #16, !dbg !1545
  call void @llvm.dbg.value(metadata i16 %556, metadata !1546, metadata !DIExpression()), !dbg !1555
  %602 = bitcast %struct.btstack_linked_list_iterator_t* %3 to i8*, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %602) #15, !dbg !1557
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !1551, metadata !DIExpression(DW_OP_deref)), !dbg !1558
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %3, %struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0)) #14, !dbg !1559
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !1551, metadata !DIExpression(DW_OP_deref)), !dbg !1558
  %603 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #14, !dbg !1560
  %604 = icmp eq i32 %603, 0, !dbg !1562
  br i1 %604, label %619, label %605, !dbg !1562

; <label>:605:                                    ; preds = %597
  br label %606, !dbg !1558

; <label>:606:                                    ; preds = %615, %605
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !1551, metadata !DIExpression(DW_OP_deref)), !dbg !1558
  %607 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #14, !dbg !1563
  %608 = bitcast %struct.btstack_linked_item* %607 to %struct.__le_hci_connection*, !dbg !1564
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %608, metadata !1553, metadata !DIExpression()), !dbg !1565
  %609 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %608, i32 0, i32 2, !dbg !1566
  %610 = load i16, i16* %609, align 2, !dbg !1566, !tbaa !1568
  %611 = icmp eq i16 %610, %556, !dbg !1569
  br i1 %611, label %612, label %615, !dbg !1570

; <label>:612:                                    ; preds = %606
  %613 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0), %struct.btstack_linked_item* %607) #14, !dbg !1571
  %614 = bitcast %struct.btstack_linked_item* %607 to i8*, !dbg !1573
  call void @btstack_memory_le_hci_connection_free(i8* %614) #14, !dbg !1574
  br label %615, !dbg !1575

; <label>:615:                                    ; preds = %612, %606
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !1551, metadata !DIExpression(DW_OP_deref)), !dbg !1558
  %616 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #14, !dbg !1560
  %617 = icmp eq i32 %616, 0, !dbg !1562
  br i1 %617, label %618, label %606, !dbg !1562, !llvm.loop !1576

; <label>:618:                                    ; preds = %615
  br label %619, !dbg !1579

; <label>:619:                                    ; preds = %618, %597
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %602) #15, !dbg !1579
  br label %796, !dbg !1580

; <label>:620:                                    ; preds = %1
  %621 = load i32, i32* @config_stack_modules, align 4, !dbg !1581, !tbaa !1023
  %622 = and i32 %621, 4, !dbg !1581
  %623 = icmp eq i32 %622, 0, !dbg !1581
  br i1 %623, label %772, label %624, !dbg !1582

; <label>:624:                                    ; preds = %620
  %625 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1583
  %626 = load i8, i8* %625, align 1, !dbg !1583, !tbaa !660
  switch i8 %626, label %766 [
    i8 2, label %627
    i8 10, label %677
    i8 1, label %717
  ], !dbg !1584

; <label>:627:                                    ; preds = %624
  %628 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1585
  %629 = load i8, i8* %628, align 1, !dbg !1585, !tbaa !660
  %630 = zext i8 %629 to i16, !dbg !1585
  %631 = add nuw nsw i16 %630, 2, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %0, metadata !920, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i16 %631, metadata !921, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 3, metadata !922, metadata !DIExpression()), !dbg !1589
  %632 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1590
  %633 = load i8, i8* %632, align 1, !dbg !1590, !tbaa !660
  %634 = zext i8 %633 to i32, !dbg !1590
  call void @llvm.dbg.value(metadata i32 %634, metadata !923, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 4, metadata !922, metadata !DIExpression()), !dbg !1589
  %635 = getelementptr inbounds [43 x i8], [43 x i8]* %2, i32 0, i32 0, !dbg !1592
  call void @llvm.lifetime.start.p0i8(i64 43, i8* nonnull %635) #15, !dbg !1592
  call void @llvm.dbg.value(metadata i32 0, metadata !924, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 4, metadata !922, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 0, metadata !924, metadata !DIExpression()), !dbg !1593
  %636 = icmp ne i8 %633, 0, !dbg !1594
  %637 = zext i16 %631 to i32, !dbg !1596
  %638 = icmp ugt i16 %631, 4, !dbg !1598
  %639 = and i1 %636, %638, !dbg !1599
  br i1 %639, label %640, label %676, !dbg !1599

; <label>:640:                                    ; preds = %627
  %641 = getelementptr inbounds [43 x i8], [43 x i8]* %2, i32 0, i32 1
  %642 = getelementptr inbounds [43 x i8], [43 x i8]* %2, i32 0, i32 2
  %643 = bitcast i8* %642 to i64*
  %644 = getelementptr inbounds [43 x i8], [43 x i8]* %2, i32 0, i32 10
  %645 = getelementptr inbounds [43 x i8], [43 x i8]* %2, i32 0, i32 11
  %646 = getelementptr inbounds [43 x i8], [43 x i8]* %2, i32 0, i32 12
  br label %647, !dbg !1599

; <label>:647:                                    ; preds = %647, %640
  %648 = phi i32 [ 4, %640 ], [ %669, %647 ]
  %649 = phi i32 [ 0, %640 ], [ %671, %647 ]
  %650 = add nsw i32 %648, 8, !dbg !1600
  %651 = getelementptr inbounds i8, i8* %0, i32 %650, !dbg !1601
  %652 = load i8, i8* %651, align 1, !dbg !1601, !tbaa !660
  %653 = zext i8 %652 to i32, !dbg !1601
  %654 = call i32 @btstack_min(i32 %653, i32 31) #14, !dbg !1602
  %655 = and i32 %654, 255, !dbg !1603
  %656 = add i32 %654, 10, !dbg !1604
  %657 = trunc i32 %656 to i8, !dbg !1605
  call void @llvm.dbg.value(metadata i8 %657, metadata !929, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 0, metadata !930, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 1, metadata !930, metadata !DIExpression()), !dbg !1607
  store i8 -30, i8* %635, align 1, !dbg !1608, !tbaa !660
  call void @llvm.dbg.value(metadata i32 2, metadata !930, metadata !DIExpression()), !dbg !1607
  store i8 %657, i8* %641, align 1, !dbg !1609, !tbaa !660
  %658 = getelementptr inbounds i8, i8* %0, i32 %648, !dbg !1610
  %659 = bitcast i8* %658 to i64*, !dbg !1611
  %660 = load i64, i64* %659, align 1, !dbg !1611
  store i64 %660, i64* %643, align 1, !dbg !1611
  call void @llvm.dbg.value(metadata i32 %650, metadata !922, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 10, metadata !930, metadata !DIExpression()), !dbg !1607
  %661 = add nsw i32 %648, 9, !dbg !1612
  %662 = add nsw i32 %655, %661, !dbg !1613
  %663 = getelementptr inbounds i8, i8* %0, i32 %662, !dbg !1614
  %664 = load i8, i8* %663, align 1, !dbg !1614, !tbaa !660
  call void @llvm.dbg.value(metadata i32 11, metadata !930, metadata !DIExpression()), !dbg !1607
  store i8 %664, i8* %644, align 1, !dbg !1615, !tbaa !660
  call void @llvm.dbg.value(metadata i32 %661, metadata !922, metadata !DIExpression()), !dbg !1589
  %665 = load i8, i8* %651, align 1, !dbg !1616, !tbaa !660
  call void @llvm.dbg.value(metadata i32 12, metadata !930, metadata !DIExpression()), !dbg !1607
  store i8 %665, i8* %645, align 1, !dbg !1617, !tbaa !660
  %666 = getelementptr inbounds i8, i8* %0, i32 %661, !dbg !1618
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %646, i8* %666, i32 %655, i32 1, i1 false) #15, !dbg !1619
  %667 = add nuw nsw i32 %655, 12, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %667, metadata !930, metadata !DIExpression()), !dbg !1607
  %668 = add i32 %648, 10, !dbg !1621
  %669 = add i32 %668, %655, !dbg !1622
  call void @llvm.dbg.value(metadata i32 %669, metadata !922, metadata !DIExpression()), !dbg !1589
  %670 = trunc i32 %667 to i16, !dbg !1623
  call void @le_hci_emit_event(i8* nonnull %635, i16 zeroext %670, i32 undef) #14, !dbg !1624
  %671 = add nuw nsw i32 %649, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %671, metadata !924, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %669, metadata !922, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %671, metadata !924, metadata !DIExpression()), !dbg !1593
  %672 = icmp slt i32 %671, %634, !dbg !1594
  %673 = icmp slt i32 %669, %637, !dbg !1598
  %674 = and i1 %672, %673, !dbg !1599
  br i1 %674, label %647, label %675, !dbg !1599, !llvm.loop !1627

; <label>:675:                                    ; preds = %647
  br label %676, !dbg !1630

; <label>:676:                                    ; preds = %675, %627
  call void @llvm.lifetime.end.p0i8(i64 43, i8* nonnull %635) #15, !dbg !1630
  br label %772, !dbg !1631

; <label>:677:                                    ; preds = %624
  call void @llvm.dbg.value(metadata i8 %684, metadata !888, metadata !DIExpression()), !dbg !1632
  %678 = tail call fastcc i8* @hci_subevent_le_enhanced_connection_complete_get_peer_addresss_ptr(i8* nonnull %0) #16, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %678, metadata !880, metadata !DIExpression()), !dbg !964
  %679 = tail call fastcc zeroext i8 @hci_subevent_le_enhanced_connection_complete_get_peer_address_type(i8* nonnull %0) #16, !dbg !1634
  %680 = zext i8 %679 to i32, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %680, metadata !887, metadata !DIExpression()), !dbg !1635
  %681 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1636, !tbaa !660
  %682 = icmp slt i8 %681, 0, !dbg !1636
  br i1 %682, label %683, label %688, !dbg !1638

; <label>:683:                                    ; preds = %677
  %684 = tail call fastcc zeroext i8 @hci_subevent_le_enhanced_connection_complete_get_status(i8* nonnull %0) #16, !dbg !1639
  %685 = zext i8 %684 to i32, !dbg !1640
  %686 = tail call i8* @bd_addr_to_str(i8* %678) #14, !dbg !1640
  %687 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i32 0, i32 0), i32 %685, i32 %680, i8* %686) #16, !dbg !1642
  br label %688, !dbg !1640

; <label>:688:                                    ; preds = %683, %677
  %689 = tail call %struct.__le_hci_connection* @le_hci_connection_for_bd_addr_and_type(i8* %678, i32 %680) #16, !dbg !1644
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %689, metadata !889, metadata !DIExpression()), !dbg !1645
  %690 = tail call fastcc zeroext i8 @hci_subevent_le_enhanced_connection_complete_get_status(i8* nonnull %0) #16, !dbg !1646
  %691 = icmp eq i8 %690, 0, !dbg !1646
  %692 = icmp ne %struct.__le_hci_connection* %689, null
  br i1 %691, label %701, label %693, !dbg !1648

; <label>:693:                                    ; preds = %688
  br i1 %692, label %694, label %696, !dbg !1649

; <label>:694:                                    ; preds = %693
  %695 = bitcast %struct.__le_hci_connection* %689 to i8*, !dbg !1651
  tail call void @btstack_memory_le_hci_connection_free(i8* %695) #14, !dbg !1654
  br label %696, !dbg !1655

; <label>:696:                                    ; preds = %694, %693
  %697 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1656
  %698 = load i8, i8* %697, align 1, !dbg !1656, !tbaa !660
  %699 = zext i8 %698 to i16, !dbg !1656
  %700 = add nuw nsw i16 %699, 1, !dbg !1657
  tail call void @le_hci_emit_event(i8* nonnull %0, i16 zeroext %700, i32 undef) #16, !dbg !1658
  br label %772, !dbg !1659

; <label>:701:                                    ; preds = %688
  br i1 %692, label %705, label %702, !dbg !1660

; <label>:702:                                    ; preds = %701
  %703 = tail call fastcc %struct.__le_hci_connection* @le_create_connection_for_bd_addr_and_type(i8* %678, i32 %680) #16, !dbg !1661
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %703, metadata !889, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %703, metadata !889, metadata !DIExpression()), !dbg !1645
  %704 = icmp eq %struct.__le_hci_connection* %703, null, !dbg !1664
  br i1 %704, label %772, label %705, !dbg !1666

; <label>:705:                                    ; preds = %702, %701
  %706 = phi %struct.__le_hci_connection* [ %703, %702 ], [ %689, %701 ]
  %707 = tail call fastcc zeroext i8 @hci_subevent_le_enhanced_connection_complete_get_role(i8* nonnull %0) #16, !dbg !1667
  %708 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %706, i32 0, i32 4, !dbg !1668
  store i8 %707, i8* %708, align 4, !dbg !1669, !tbaa !1670
  %709 = tail call fastcc zeroext i16 @hci_subevent_le_enhanced_connection_complete_get_connection_handle(i8* nonnull %0) #16, !dbg !1671
  %710 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %706, i32 0, i32 2, !dbg !1672
  store i16 %709, i16* %710, align 2, !dbg !1673, !tbaa !1568
  call void @llvm.dbg.value(metadata i16 %709, metadata !883, metadata !DIExpression()), !dbg !966
  %711 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1674, !tbaa !660
  %712 = icmp slt i8 %711, 0, !dbg !1674
  br i1 %712, label %713, label %772, !dbg !1676

; <label>:713:                                    ; preds = %705
  %714 = zext i16 %709 to i32, !dbg !1677
  %715 = tail call i8* @bd_addr_to_str(i8* %678) #14, !dbg !1677
  %716 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0), i32 %714, i8* %715) #16, !dbg !1679
  br label %772, !dbg !1677

; <label>:717:                                    ; preds = %624
  %718 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %718, metadata !880, metadata !DIExpression()), !dbg !964
  %719 = getelementptr inbounds i8, i8* %0, i32 7, !dbg !1682
  %720 = load i8, i8* %719, align 1, !dbg !1682, !tbaa !660
  %721 = zext i8 %720 to i32, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %721, metadata !887, metadata !DIExpression()), !dbg !1635
  %722 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1684, !tbaa !660
  %723 = icmp slt i8 %722, 0, !dbg !1684
  %724 = getelementptr inbounds i8, i8* %0, i32 3
  br i1 %723, label %725, label %730, !dbg !1686

; <label>:725:                                    ; preds = %717
  %726 = load i8, i8* %724, align 1, !dbg !1687, !tbaa !660
  %727 = zext i8 %726 to i32, !dbg !1687
  %728 = tail call i8* @bd_addr_to_str(i8* %718) #14, !dbg !1687
  %729 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i32 0, i32 0), i32 %727, i32 %721, i8* %728) #16, !dbg !1689
  br label %730, !dbg !1687

; <label>:730:                                    ; preds = %725, %717
  %731 = tail call %struct.__le_hci_connection* @le_hci_connection_for_bd_addr_and_type(i8* %718, i32 %721) #16, !dbg !1691
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %731, metadata !889, metadata !DIExpression()), !dbg !1645
  %732 = load i8, i8* %724, align 1, !dbg !1692, !tbaa !660
  %733 = icmp eq i8 %732, 0, !dbg !1692
  %734 = icmp ne %struct.__le_hci_connection* %731, null
  br i1 %733, label %743, label %735, !dbg !1694

; <label>:735:                                    ; preds = %730
  br i1 %734, label %736, label %738, !dbg !1695

; <label>:736:                                    ; preds = %735
  %737 = bitcast %struct.__le_hci_connection* %731 to i8*, !dbg !1697
  tail call void @btstack_memory_le_hci_connection_free(i8* %737) #14, !dbg !1700
  br label %738, !dbg !1701

; <label>:738:                                    ; preds = %736, %735
  %739 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1702
  %740 = load i8, i8* %739, align 1, !dbg !1702, !tbaa !660
  %741 = zext i8 %740 to i16, !dbg !1702
  %742 = add nuw nsw i16 %741, 1, !dbg !1703
  tail call void @le_hci_emit_event(i8* nonnull %0, i16 zeroext %742, i32 undef) #16, !dbg !1704
  br label %772, !dbg !1705

; <label>:743:                                    ; preds = %730
  br i1 %734, label %747, label %744, !dbg !1706

; <label>:744:                                    ; preds = %743
  %745 = tail call fastcc %struct.__le_hci_connection* @le_create_connection_for_bd_addr_and_type(i8* nonnull %718, i32 %721) #16, !dbg !1707
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %745, metadata !889, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %745, metadata !889, metadata !DIExpression()), !dbg !1645
  %746 = icmp eq %struct.__le_hci_connection* %745, null, !dbg !1710
  br i1 %746, label %772, label %747, !dbg !1712

; <label>:747:                                    ; preds = %744, %743
  %748 = phi %struct.__le_hci_connection* [ %745, %744 ], [ %731, %743 ]
  %749 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !1713
  %750 = load i8, i8* %749, align 1, !dbg !1713, !tbaa !660
  %751 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %748, i32 0, i32 4, !dbg !1714
  store i8 %750, i8* %751, align 4, !dbg !1715, !tbaa !1670
  %752 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %0, i32 4) #14, !dbg !1716
  %753 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %748, i32 0, i32 2, !dbg !1717
  store i16 %752, i16* %753, align 2, !dbg !1718, !tbaa !1568
  call void @llvm.dbg.value(metadata i16 %752, metadata !883, metadata !DIExpression()), !dbg !966
  %754 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %748, i32 0, i32 19, !dbg !1719
  %755 = bitcast i32* %754 to i8*, !dbg !1720
  %756 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %748, i32 0, i32 18, i32 0, !dbg !1721
  tail call void @hci_ll_get_device_address(i8* %755, i8* %756) #14, !dbg !1722
  %757 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %748, i32 0, i32 17, i32 0, !dbg !1723
  %758 = tail call i32 @le_controller_get_mac(i8* %757) #14, !dbg !1724
  %759 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1725, !tbaa !660
  %760 = icmp slt i8 %759, 0, !dbg !1725
  br i1 %760, label %761, label %772, !dbg !1727

; <label>:761:                                    ; preds = %747
  %762 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %0, i32 4) #14, !dbg !1728
  %763 = zext i16 %762 to i32, !dbg !1728
  %764 = tail call i8* @bd_addr_to_str(i8* nonnull %718) #14, !dbg !1730
  %765 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i32 %763, i8* %764) #16, !dbg !1732
  br label %772, !dbg !1728

; <label>:766:                                    ; preds = %624
  %767 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1734
  %768 = load i8, i8* %767, align 1, !dbg !1734, !tbaa !660
  %769 = zext i8 %768 to i16, !dbg !1734
  %770 = add nuw nsw i16 %769, 1, !dbg !1735
  tail call void @le_hci_emit_event(i8* nonnull %0, i16 zeroext %770, i32 undef) #16, !dbg !1736
  br label %796, !dbg !1737

; <label>:771:                                    ; preds = %187
  br label %772, !dbg !966

; <label>:772:                                    ; preds = %771, %761, %747, %744, %738, %713, %705, %702, %696, %676, %620, %584, %580, %579, %570, %533, %526, %521, %514, %509, %504, %499, %448, %409, %408, %404, %389, %385, %381, %380, %262, %259, %256, %245, %235, %222, %221, %220, %219, %218, %217, %204, %161, %157, %146, %140, %135, %133, %129, %116, %103, %92, %90, %87, %70, %48, %33, %8, %1
  %773 = phi i16 [ %556, %570 ], [ %556, %579 ], [ %556, %580 ], [ %556, %584 ], [ 0, %533 ], [ 0, %526 ], [ 0, %521 ], [ 0, %514 ], [ 0, %509 ], [ 0, %504 ], [ 0, %499 ], [ 0, %448 ], [ 0, %409 ], [ 0, %389 ], [ 0, %385 ], [ 0, %380 ], [ 0, %262 ], [ 0, %235 ], [ 0, %222 ], [ 0, %204 ], [ 0, %217 ], [ 0, %218 ], [ 0, %219 ], [ 0, %220 ], [ 0, %221 ], [ 0, %738 ], [ %752, %761 ], [ %752, %747 ], [ 0, %744 ], [ 0, %696 ], [ %709, %713 ], [ %709, %705 ], [ 0, %702 ], [ 0, %676 ], [ 0, %620 ], [ %142, %146 ], [ %142, %140 ], [ 0, %135 ], [ 0, %133 ], [ 0, %129 ], [ 0, %116 ], [ %100, %103 ], [ %100, %92 ], [ 0, %70 ], [ %69, %87 ], [ %69, %90 ], [ %16, %33 ], [ %16, %48 ], [ %16, %8 ], [ 0, %157 ], [ 0, %404 ], [ 0, %408 ], [ 0, %381 ], [ 0, %1 ], [ 0, %245 ], [ 0, %256 ], [ 0, %259 ], [ 0, %161 ], [ %169, %771 ]
  call void @llvm.dbg.value(metadata i16 %773, metadata !883, metadata !DIExpression()), !dbg !966
  %774 = call zeroext i16 @get_ble_link_handle() #14, !dbg !1738
  %775 = icmp ult i16 %773, %774, !dbg !1740
  br i1 %775, label %776, label %781, !dbg !1741

; <label>:776:                                    ; preds = %772
  %777 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1742
  %778 = load i8, i8* %777, align 1, !dbg !1742, !tbaa !660
  %779 = zext i8 %778 to i16, !dbg !1742
  %780 = add nuw nsw i16 %779, 1, !dbg !1744
  call void @l2cap_packet_handler(i8 zeroext 4, i8* %0, i16 zeroext %780) #14, !dbg !1745
  br label %790, !dbg !1746

; <label>:781:                                    ; preds = %772
  %782 = load i32, i32* @config_stack_modules, align 4, !dbg !1747, !tbaa !1023
  %783 = and i32 %782, 4, !dbg !1747
  %784 = icmp eq i32 %783, 0, !dbg !1747
  br i1 %784, label %790, label %785, !dbg !1750

; <label>:785:                                    ; preds = %781
  %786 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1751
  %787 = load i8, i8* %786, align 1, !dbg !1751, !tbaa !660
  %788 = zext i8 %787 to i16, !dbg !1751
  %789 = add nuw nsw i16 %788, 1, !dbg !1753
  call void @le_hci_emit_event(i8* %0, i16 zeroext %789, i32 undef) #16, !dbg !1754
  call fastcc void @hci_run_for_acl_data_send() #16, !dbg !1755
  br label %796, !dbg !1756

; <label>:790:                                    ; preds = %781, %776
  %791 = icmp eq i16 %773, 0, !dbg !1757
  br i1 %791, label %796, label %792, !dbg !1759

; <label>:792:                                    ; preds = %790
  %793 = call zeroext i16 @get_ble_link_handle() #14, !dbg !1760
  %794 = icmp ult i16 %773, %793, !dbg !1762
  br i1 %794, label %795, label %796, !dbg !1763

; <label>:795:                                    ; preds = %792
  call void @lmp_hci_host_num_of_completed_packets(i16 zeroext %773, i16 zeroext 1) #14, !dbg !1765
  br label %796, !dbg !1767

; <label>:796:                                    ; preds = %795, %792, %790, %785, %766, %619, %447, %152, %148
  ret void, !dbg !1768
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #9

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bt_event_update_to_user(i8*, i32, i8 zeroext, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lmp_hci_set_connection_encryption(i16 zeroext, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_link_key([6 x i8]*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lmp_hci_disconnect(i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @get_ble_link_handle() local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_write_link_supervision_timeout(i16 zeroext, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @get_is_in_background_flag(...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @os_time_dly(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_io_capability_request_reply(i8*, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @little_endian_read_32(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @le_hci_emit_event(i8*, i16 zeroext, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1770 {
  %4 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1774, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i16 %1, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %2, metadata !1776, metadata !DIExpression()), !dbg !1782
  %5 = bitcast %struct.btstack_linked_list_iterator_t* %4 to i8*, !dbg !1783
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #15, !dbg !1783
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1777, metadata !DIExpression(DW_OP_deref)), !dbg !1784
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %4, %struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 1)) #14, !dbg !1785
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1777, metadata !DIExpression(DW_OP_deref)), !dbg !1784
  %6 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #14, !dbg !1786
  %7 = icmp eq i32 %6, 0, !dbg !1788
  br i1 %7, label %17, label %8, !dbg !1788

; <label>:8:                                      ; preds = %3
  br label %9, !dbg !1784

; <label>:9:                                      ; preds = %9, %8
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1777, metadata !DIExpression(DW_OP_deref)), !dbg !1784
  %10 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #14, !dbg !1789
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 1, !dbg !1790
  %12 = bitcast %struct.btstack_linked_item* %11 to void (i8, i16, i8*, i16)**, !dbg !1790
  %13 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %12, align 4, !dbg !1790, !tbaa !1791
  call void %13(i8 zeroext 4, i16 zeroext 0, i8* %0, i16 zeroext %1) #14, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !1777, metadata !DIExpression(DW_OP_deref)), !dbg !1784
  %14 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #14, !dbg !1786
  %15 = icmp eq i32 %14, 0, !dbg !1788
  br i1 %15, label %16, label %9, !dbg !1788, !llvm.loop !1794

; <label>:16:                                     ; preds = %9
  br label %17, !dbg !1797

; <label>:17:                                     ; preds = %16, %3
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #15, !dbg !1797
  ret void, !dbg !1797
}

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1798 {
  %2 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !1802, metadata !DIExpression()), !dbg !1808
  %3 = load i32, i32* @config_stack_modules, align 4, !dbg !1809, !tbaa !1023
  %4 = and i32 %3, 4, !dbg !1809
  %5 = icmp eq i32 %4, 0, !dbg !1809
  br i1 %5, label %19, label %6, !dbg !1810

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.btstack_linked_list_iterator_t* %2 to i8*, !dbg !1811
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #15, !dbg !1811
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %2, metadata !1803, metadata !DIExpression(DW_OP_deref)), !dbg !1812
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %2, %struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0)) #14, !dbg !1813
  br label %8, !dbg !1814

; <label>:8:                                      ; preds = %12, %6
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %2, metadata !1803, metadata !DIExpression(DW_OP_deref)), !dbg !1812
  %9 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %2) #14, !dbg !1815
  %10 = icmp eq i32 %9, 0, !dbg !1817
  br i1 %10, label %11, label %12, !dbg !1817

; <label>:11:                                     ; preds = %8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #15, !dbg !1818
  br label %19

; <label>:12:                                     ; preds = %8
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %2, metadata !1803, metadata !DIExpression(DW_OP_deref)), !dbg !1812
  %13 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %2) #14, !dbg !1819
  %14 = bitcast %struct.btstack_linked_item* %13 to %struct.__le_hci_connection*, !dbg !1820
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %14, metadata !1806, metadata !DIExpression()), !dbg !1821
  %15 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %14, i32 0, i32 2, !dbg !1822
  %16 = load i16, i16* %15, align 2, !dbg !1822, !tbaa !1568
  %17 = icmp eq i16 %16, %0, !dbg !1824
  br i1 %17, label %18, label %8, !llvm.loop !1825

; <label>:18:                                     ; preds = %12
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #15, !dbg !1818
  br label %19

; <label>:19:                                     ; preds = %18, %11, %1
  %20 = phi %struct.__le_hci_connection* [ %14, %18 ], [ null, %11 ], [ null, %1 ]
  ret %struct.__le_hci_connection* %20, !dbg !1827
}

; Function Attrs: optsize
declare i32 @update_multi_bd_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_accept_connection_request(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_accept_sco_connection_request(i8*, i32, i32, i16 zeroext, i16 zeroext, i8 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_reject_connection_request(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @updata_last_link_key([6 x i8]*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @handle_remote_dev_type([6 x i8]*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @remote_dev_company_ioctrl(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sdp_callback_remote_type(i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_link_key([6 x i8]*, [16 x i8]*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_support_profile([6 x i8]*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_link_key_request_reply(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_link_key_request_negative_reply(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @put_link_key([6 x i8]*, [16 x i8]*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #7

; Function Attrs: optsize
declare void @lmp_hci_pin_code_request_reply(i8*, i8 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @hci_event_inquiry_result(i8*, i16 zeroext, i8 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1832, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i16 %1, metadata !1833, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %2, metadata !1834, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i32 0, metadata !1837, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1840, metadata !DIExpression()), !dbg !1853
  %4 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1854, !tbaa !720
  %5 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %4, i32 0, i32 1, !dbg !1856
  %6 = load i8, i8* %5, align 1, !dbg !1856
  %7 = and i8 %6, 16, !dbg !1856
  %8 = icmp eq i8 %7, 0, !dbg !1854
  br i1 %8, label %14, label %9, !dbg !1857

; <label>:9:                                      ; preds = %3
  %10 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1858, !tbaa !660
  %11 = icmp slt i8 %10, 0, !dbg !1858
  br i1 %11, label %12, label %63, !dbg !1861

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.40, i32 0, i32 0)), !dbg !1862
  br label %63, !dbg !1862

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %4, i32 0, i32 0, i32 0, !dbg !1864
  tail call void @llvm.memset.p0i8.i32(i8* %15, i8 0, i32 15, i32 1, i1 false), !dbg !1864
  %16 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %4, i32 0, i32 2, i32 0, !dbg !1865
  %17 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1866
  tail call void @bt_flip_addr(i8* %16, i8* %17) #14, !dbg !1867
  %18 = icmp eq i8 %2, 0, !dbg !1868
  br i1 %18, label %22, label %19, !dbg !1870

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %0, i32 14, !dbg !1871
  %21 = load i8, i8* %20, align 1, !dbg !1871, !tbaa !660
  call void @llvm.dbg.value(metadata i8 %21, metadata !1839, metadata !DIExpression()), !dbg !1852
  br label %22, !dbg !1873

; <label>:22:                                     ; preds = %19, %14
  %23 = phi i32 [ 9, %19 ], [ 10, %14 ]
  %24 = phi i32 [ 10, %19 ], [ 11, %14 ]
  %25 = phi i32 [ 11, %19 ], [ 12, %14 ]
  %26 = phi i8 [ %21, %19 ], [ 0, %14 ]
  %27 = getelementptr inbounds i8, i8* %0, i32 %24
  %28 = load i8, i8* %27, align 1, !tbaa !660
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  call void @llvm.dbg.value(metadata i32 %50, metadata !1840, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 %26, metadata !1839, metadata !DIExpression()), !dbg !1852
  %31 = and i32 %30, 7936, !dbg !1874
  call void @llvm.dbg.value(metadata i32 %31, metadata !1837, metadata !DIExpression()), !dbg !1850
  %32 = trunc i32 %30 to i13, !dbg !1875
  %33 = add i13 %32, 256, !dbg !1875
  %34 = lshr exact i13 %33, 8, !dbg !1875
  %35 = trunc i13 %34 to i5, !dbg !1875
  switch i5 %35, label %41 [
    i5 0, label %36
    i5 13, label %36
    i5 7, label %36
    i5 4, label %36
    i5 3, label %36
    i5 2, label %36
  ], !dbg !1875

; <label>:36:                                     ; preds = %22, %22, %22, %22, %22, %22
  %37 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1877, !tbaa !660
  %38 = icmp slt i8 %37, 0, !dbg !1877
  br i1 %38, label %39, label %63, !dbg !1880

; <label>:39:                                     ; preds = %36
  %40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0), i32 %31) #16, !dbg !1881
  br label %63, !dbg !1881

; <label>:41:                                     ; preds = %22
  %42 = getelementptr inbounds i8, i8* %0, i32 %23
  %43 = load i8, i8* %42, align 1, !tbaa !660
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %30
  %46 = getelementptr inbounds i8, i8* %0, i32 %25
  %47 = load i8, i8* %46, align 1, !tbaa !660
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or i32 %45, %49
  %51 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1883, !tbaa !720
  %52 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %51, i32 0, i32 12, !dbg !1884
  %53 = load i8 (i8*, i8, i8*, i32, i8)*, i8 (i8*, i8, i8*, i32, i8)** %52, align 4, !dbg !1884, !tbaa !1279
  %54 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1885, !tbaa !720
  %55 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %54, i32 0, i32 2, i32 0, !dbg !1885
  %56 = tail call zeroext i8 %53(i8* null, i8 zeroext 0, i8* %55, i32 %50, i8 signext %26) #14, !dbg !1883
  call void @llvm.dbg.value(metadata i8 %56, metadata !1838, metadata !DIExpression()), !dbg !1851
  %57 = icmp eq i8 %56, 1, !dbg !1886
  br i1 %57, label %58, label %63, !dbg !1888

; <label>:58:                                     ; preds = %41
  %59 = load %struct.__inquiry_result_t*, %struct.__inquiry_result_t** @inquiry_result, align 4, !dbg !1889, !tbaa !720
  %60 = getelementptr inbounds %struct.__inquiry_result_t, %struct.__inquiry_result_t* %59, i32 0, i32 1, !dbg !1891
  %61 = load i8, i8* %60, align 1, !dbg !1892
  %62 = or i8 %61, 16, !dbg !1892
  store i8 %62, i8* %60, align 1, !dbg !1892
  tail call void bitcast (void (...)* @lmp_hci_cancel_inquiry to void ()*)() #14, !dbg !1893
  br label %63, !dbg !1895

; <label>:63:                                     ; preds = %58, %41, %39, %36, %12, %9
  ret void, !dbg !1896
}

; Function Attrs: norecurse nounwind optsize
define hidden void @hci_release_packet_buffer() local_unnamed_addr #4 section ".bt_stack_code" !dbg !1898 {
  store i8 0, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !1899, !tbaa !1900
  ret void, !dbg !1901
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_subevent_le_enhanced_connection_complete_get_status(i8* nocapture readonly) unnamed_addr #10 !dbg !1902 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1909, metadata !DIExpression()), !dbg !1910
  %2 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1911
  %3 = load i8, i8* %2, align 1, !dbg !1911, !tbaa !660
  ret i8 %3, !dbg !1912
}

; Function Attrs: inlinehint nounwind optsize readnone
define internal fastcc i8* @hci_subevent_le_enhanced_connection_complete_get_peer_addresss_ptr(i8* readnone) unnamed_addr #11 !dbg !1913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1917, metadata !DIExpression()), !dbg !1918
  %2 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !1919
  ret i8* %2, !dbg !1920
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_subevent_le_enhanced_connection_complete_get_peer_address_type(i8* nocapture readonly) unnamed_addr #10 !dbg !1921 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1923, metadata !DIExpression()), !dbg !1924
  %2 = getelementptr inbounds i8, i8* %0, i32 7, !dbg !1925
  %3 = load i8, i8* %2, align 1, !dbg !1925, !tbaa !660
  ret i8 %3, !dbg !1926
}

; Function Attrs: optsize
declare i8* @bd_addr_to_str(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @btstack_memory_le_hci_connection_free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc %struct.__le_hci_connection* @le_create_connection_for_bd_addr_and_type(i8*, i32) unnamed_addr #0 section ".bt_stack_code" !dbg !1927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %1, metadata !1930, metadata !DIExpression()), !dbg !1933
  %3 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1934, !tbaa !660
  %4 = icmp slt i8 %3, 0, !dbg !1934
  br i1 %4, label %5, label %8, !dbg !1936

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @bd_addr_to_str(i8* %0) #14, !dbg !1937
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i32 0, i32 0), i8* %6, i32 %1) #16, !dbg !1939
  br label %8, !dbg !1937

; <label>:8:                                      ; preds = %5, %2
  %9 = tail call i8* @btstack_memory_le_hci_connection_get() #14, !dbg !1941
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %17, metadata !1931, metadata !DIExpression()), !dbg !1942
  %10 = icmp eq i8* %9, null, !dbg !1943
  br i1 %10, label %11, label %16, !dbg !1945

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1946, !tbaa !660
  %13 = icmp slt i8 %12, 0, !dbg !1946
  br i1 %13, label %14, label %27, !dbg !1949

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @str.41, i32 0, i32 0)), !dbg !1950
  br label %27, !dbg !1950

; <label>:16:                                     ; preds = %8
  %17 = bitcast i8* %9 to %struct.__le_hci_connection*, !dbg !1941
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %9, i8 0, i32 1224, i32 4, i1 false), !dbg !1952
  %18 = getelementptr inbounds i8, i8* %9, i32 4, !dbg !1953
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %0, i32 6, i32 1, i1 false), !dbg !1953
  %19 = getelementptr inbounds i8, i8* %9, i32 12, !dbg !1954
  %20 = bitcast i8* %19 to i32*, !dbg !1954
  store i32 %1, i32* %20, align 4, !dbg !1955, !tbaa !837
  %21 = getelementptr inbounds i8, i8* %9, i32 10, !dbg !1956
  %22 = bitcast i8* %21 to i16*, !dbg !1956
  store i16 -1, i16* %22, align 2, !dbg !1957, !tbaa !1568
  %23 = getelementptr inbounds i8, i8* %9, i32 1202, !dbg !1958
  %24 = getelementptr inbounds i8, i8* %9, i32 20, !dbg !1959
  %25 = bitcast i8* %24 to i32*, !dbg !1959
  store i32 0, i32* %25, align 4, !dbg !1960, !tbaa !1961
  %26 = bitcast i8* %9 to %struct.btstack_linked_item*, !dbg !1962
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 5, i32 2, i1 false), !dbg !1963
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0), %struct.btstack_linked_item* %26) #14, !dbg !1964
  br label %27, !dbg !1965

; <label>:27:                                     ; preds = %16, %14, %11
  %28 = phi %struct.__le_hci_connection* [ %17, %16 ], [ null, %14 ], [ null, %11 ]
  ret %struct.__le_hci_connection* %28, !dbg !1966
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_subevent_le_enhanced_connection_complete_get_role(i8* nocapture readonly) unnamed_addr #10 !dbg !1967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1969, metadata !DIExpression()), !dbg !1970
  %2 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !1971
  %3 = load i8, i8* %2, align 1, !dbg !1971, !tbaa !660
  ret i8 %3, !dbg !1972
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc zeroext i16 @hci_subevent_le_enhanced_connection_complete_get_connection_handle(i8*) unnamed_addr #12 !dbg !1973 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1977, metadata !DIExpression()), !dbg !1978
  %2 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 4) #14, !dbg !1979
  ret i16 %2, !dbg !1980
}

; Function Attrs: optsize
declare void @hci_ll_get_device_address(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @le_controller_get_mac(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @hci_run_for_acl_data_send() unnamed_addr #0 section ".bt_stack_code" !dbg !1981 {
  tail call void @llvm.dbg.declare(metadata %struct.le_connection_update_parameter* undef, metadata !1985, metadata !DIExpression()), !dbg !2008
  %1 = load i16, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 5), align 4, !dbg !2009, !tbaa !1535
  %2 = icmp eq i16 %1, 0, !dbg !2010
  br i1 %2, label %19, label %3, !dbg !2011

; <label>:3:                                      ; preds = %0
  %4 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 0), align 4, !dbg !2012, !tbaa !660
  %5 = zext i8 %4 to i16, !dbg !2012
  %6 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 1), align 1, !dbg !2012, !tbaa !660
  %7 = zext i8 %6 to i16, !dbg !2012
  %8 = shl nuw i16 %7, 8, !dbg !2012
  %9 = and i16 %8, 3840, !dbg !2012
  %10 = or i16 %9, %5, !dbg !2012
  call void @llvm.dbg.value(metadata i16 %10, metadata !1995, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i16 %10, metadata !2014, metadata !DIExpression()), !dbg !2019
  %11 = tail call i32 @hci_number_free_acl_slots_for_handle(i16 zeroext %10) #14, !dbg !2021
  %12 = icmp sgt i32 %11, 0, !dbg !2022
  br i1 %12, label %13, label %19, !dbg !2023

; <label>:13:                                     ; preds = %3
  %14 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %10) #16, !dbg !2024
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %14, metadata !1998, metadata !DIExpression()), !dbg !2025
  %15 = icmp eq %struct.__le_hci_connection* %14, null, !dbg !2026
  br i1 %15, label %23, label %16, !dbg !2028

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i16 %10, metadata !2014, metadata !DIExpression()), !dbg !2029
  %17 = tail call i32 @hci_number_free_acl_slots_for_handle(i16 zeroext %10) #14, !dbg !2033
  %18 = icmp sgt i32 %17, 0, !dbg !2034
  br i1 %18, label %24, label %19, !dbg !2035

; <label>:19:                                     ; preds = %23, %16, %3, %0
  %20 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0), align 4, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %20, metadata !1984, metadata !DIExpression()), !dbg !2036
  %21 = icmp eq %struct.btstack_linked_item* %20, null, !dbg !2037
  br i1 %21, label %51, label %22, !dbg !2037

; <label>:22:                                     ; preds = %19
  br label %25, !dbg !2039

; <label>:23:                                     ; preds = %13
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), i8 0, i64 5, i32 1, i1 false), !dbg !2040
  br label %19

; <label>:24:                                     ; preds = %16
  tail call fastcc void @le_hci_send_acl_packet_fragments(%struct.__le_hci_connection* nonnull %14) #16, !dbg !2042
  br label %51

; <label>:25:                                     ; preds = %46, %22
  %26 = phi %struct.btstack_linked_item* [ %48, %46 ], [ %20, %22 ]
  %27 = bitcast %struct.btstack_linked_item* %26 to %struct.__le_hci_connection*, !dbg !2039
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %27, metadata !2001, metadata !DIExpression()), !dbg !2044
  %28 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %26, i32 5, !dbg !2045
  %29 = bitcast %struct.btstack_linked_item* %28 to i32*, !dbg !2045
  %30 = load i32, i32* %29, align 4, !dbg !2045, !tbaa !1961
  %31 = icmp eq i32 %30, 3, !dbg !2046
  br i1 %31, label %32, label %46, !dbg !2047

; <label>:32:                                     ; preds = %25
  store i32 0, i32* %29, align 4, !dbg !2048, !tbaa !1961
  %33 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %27, i32 0, i32 7, !dbg !2049
  %34 = load i16, i16* %33, align 2, !dbg !2049, !tbaa !2050
  call void @llvm.dbg.value(metadata i16 %34, metadata !2005, metadata !DIExpression()), !dbg !2051
  store i16 0, i16* %33, align 2, !dbg !2052, !tbaa !2050
  %35 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %27, i32 0, i32 2, !dbg !2053
  %36 = load i16, i16* %35, align 2, !dbg !2053, !tbaa !1568
  call void @llvm.dbg.value(metadata i16 %36, metadata !1985, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !2008
  call void @llvm.dbg.value(metadata i16 %34, metadata !1985, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !2008
  %37 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %26, i32 7, !dbg !2054
  %38 = bitcast %struct.btstack_linked_item* %37 to i16*, !dbg !2054
  %39 = load i16, i16* %38, align 4, !dbg !2054, !tbaa !2055
  call void @llvm.dbg.value(metadata i16 %39, metadata !1985, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !2008
  %40 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %27, i32 0, i32 9, !dbg !2056
  %41 = load i16, i16* %40, align 2, !dbg !2056, !tbaa !2057
  call void @llvm.dbg.value(metadata i16 %41, metadata !1985, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !2008
  %42 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %26, i32 8, !dbg !2058
  %43 = bitcast %struct.btstack_linked_item* %42 to i16*, !dbg !2058
  %44 = load i16, i16* %43, align 4, !dbg !2058, !tbaa !2059
  call void @llvm.dbg.value(metadata i16 %44, metadata !1985, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 16)), !dbg !2008
  call void @llvm.dbg.value(metadata i16 0, metadata !1985, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 16)), !dbg !2008
  call void @llvm.dbg.value(metadata i16 -1, metadata !1985, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 16)), !dbg !2008
  %45 = tail call i32 @ll_hci_connection_update(i16 zeroext %36, i16 zeroext %34, i16 zeroext %39, i16 zeroext %41, i16 zeroext %44, i16 zeroext 0, i16 zeroext -1) #14, !dbg !2060
  br label %46, !dbg !2061

; <label>:46:                                     ; preds = %32, %25
  %47 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %26, i32 0, i32 0, !dbg !2062
  %48 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %47, align 4, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %48, metadata !1984, metadata !DIExpression()), !dbg !2036
  %49 = icmp eq %struct.btstack_linked_item* %48, null, !dbg !2037
  br i1 %49, label %50, label %25, !dbg !2037, !llvm.loop !2064

; <label>:50:                                     ; preds = %46
  br label %51, !dbg !2067

; <label>:51:                                     ; preds = %50, %24, %19
  ret void, !dbg !2067
}

; Function Attrs: optsize
declare void @lmp_hci_host_num_of_completed_packets(i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_edr_acl_handler(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2069 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2073, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i16 %1, metadata !2074, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i16 %2, metadata !2075, metadata !DIExpression()), !dbg !2082
  %4 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !2083
  %5 = load i8, i8* %4, align 1, !dbg !2083, !tbaa !660
  call void @llvm.dbg.value(metadata i8 %18, metadata !2077, metadata !DIExpression()), !dbg !2084
  %6 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !2085
  %7 = load i8, i8* %6, align 1, !dbg !2085, !tbaa !660
  %8 = zext i8 %7 to i32, !dbg !2085
  %9 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !2085
  %10 = load i8, i8* %9, align 1, !dbg !2085, !tbaa !660
  %11 = zext i8 %10 to i32, !dbg !2085
  %12 = shl nuw nsw i32 %11, 8, !dbg !2085
  %13 = or i32 %12, %8, !dbg !2085
  call void @llvm.dbg.value(metadata i16 %2, metadata !668, metadata !DIExpression()), !dbg !2086
  %14 = zext i16 %2 to i32, !dbg !2088
  %15 = tail call i8* @lmp_private_remote_addr_for_handler(i32 %14) #14, !dbg !2089
  call void @llvm.dbg.value(metadata i8* %15, metadata !2079, metadata !DIExpression()), !dbg !2090
  %16 = icmp eq i8* %15, null, !dbg !2091
  br i1 %16, label %44, label %17, !dbg !2093

; <label>:17:                                     ; preds = %3
  %18 = lshr i8 %5, 4, !dbg !2083
  %19 = trunc i8 %18 to i2, !dbg !2094
  switch i2 %19, label %44 [
    i2 1, label %20
    i2 -2, label %21
  ], !dbg !2094

; <label>:20:                                     ; preds = %17
  tail call void @lmp_hci_private_free_acl_packet(i8* nonnull %0) #14, !dbg !2095
  br label %43, !dbg !2097

; <label>:21:                                     ; preds = %17
  %22 = icmp ult i16 %1, 6, !dbg !2098
  br i1 %22, label %23, label %29, !dbg !2100

; <label>:23:                                     ; preds = %21
  %24 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2101, !tbaa !660
  %25 = icmp slt i8 %24, 0, !dbg !2101
  br i1 %25, label %26, label %28, !dbg !2104

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.42, i32 0, i32 0)), !dbg !2105
  br label %28, !dbg !2105

; <label>:28:                                     ; preds = %26, %23
  tail call void @lmp_hci_private_free_acl_packet(i8* nonnull %0) #14, !dbg !2107
  br label %43, !dbg !2108

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !2109
  %31 = load i8, i8* %30, align 1, !dbg !2109, !tbaa !660
  %32 = zext i8 %31 to i32, !dbg !2109
  %33 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !2109
  %34 = load i8, i8* %33, align 1, !dbg !2109, !tbaa !660
  %35 = zext i8 %34 to i32, !dbg !2109
  %36 = shl nuw nsw i32 %35, 8, !dbg !2109
  %37 = or i32 %36, %32, !dbg !2109
  %38 = add nuw nsw i32 %37, 4, !dbg !2110
  %39 = icmp ult i32 %13, %38, !dbg !2112
  br i1 %39, label %43, label %40, !dbg !2113

; <label>:40:                                     ; preds = %29
  %41 = add nuw nsw i32 %13, 4, !dbg !2114
  %42 = trunc i32 %41 to i16, !dbg !2116
  tail call void @l2cap_packet_handler(i8 zeroext 2, i8* nonnull %0, i16 zeroext %42) #14, !dbg !2117
  tail call void @lmp_hci_private_try_free_acl_packet(i8* nonnull %0) #14, !dbg !2118
  br label %43, !dbg !2119

; <label>:43:                                     ; preds = %40, %29, %28, %20
  tail call void @lmp_hci_host_num_of_completed_packets(i16 zeroext %2, i16 zeroext 1) #14, !dbg !2120
  br label %44, !dbg !2121

; <label>:44:                                     ; preds = %43, %17, %3
  ret void, !dbg !2122
}

; Function Attrs: optsize
declare void @lmp_hci_private_free_acl_packet(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_private_try_free_acl_packet(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_ble_acl_handler(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2124 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2126, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i16 %1, metadata !2127, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i16 %2, metadata !2128, metadata !DIExpression()), !dbg !2137
  %4 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %2) #16, !dbg !2138
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %4, metadata !2130, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 %18, metadata !2131, metadata !DIExpression()), !dbg !2140
  %5 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !2141
  %6 = load i8, i8* %5, align 1, !dbg !2141, !tbaa !660
  %7 = zext i8 %6 to i16, !dbg !2141
  %8 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !2141
  %9 = load i8, i8* %8, align 1, !dbg !2141, !tbaa !660
  %10 = zext i8 %9 to i16, !dbg !2141
  %11 = shl nuw i16 %10, 8, !dbg !2141
  %12 = or i16 %11, %7, !dbg !2141
  call void @llvm.dbg.value(metadata i16 %12, metadata !2132, metadata !DIExpression()), !dbg !2142
  %13 = icmp eq %struct.__le_hci_connection* %4, null, !dbg !2143
  br i1 %13, label %14, label %15, !dbg !2145

; <label>:14:                                     ; preds = %3
  tail call void @ll_hci_private_free_dma_rx(i8* nonnull %0) #14, !dbg !2146
  br label %83, !dbg !2148

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !2149
  %17 = load i8, i8* %16, align 1, !dbg !2149, !tbaa !660
  %18 = lshr i8 %17, 4, !dbg !2149
  %19 = trunc i8 %18 to i2, !dbg !2150
  switch i2 %19, label %81 [
    i2 1, label %20
    i2 -2, label %51
  ], !dbg !2150

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 14, !dbg !2151
  %22 = load i16, i16* %21, align 2, !dbg !2151, !tbaa !2153
  %23 = zext i16 %22 to i32, !dbg !2154
  %24 = icmp eq i16 %22, 0, !dbg !2155
  br i1 %24, label %25, label %26, !dbg !2156

; <label>:25:                                     ; preds = %20
  tail call void @ll_hci_private_free_dma_rx(i8* nonnull %0) #14, !dbg !2157
  br label %83, !dbg !2159

; <label>:26:                                     ; preds = %20
  %27 = zext i16 %12 to i32, !dbg !2160
  %28 = add nuw nsw i32 %23, %27, !dbg !2162
  %29 = icmp ugt i32 %28, 529, !dbg !2163
  br i1 %29, label %30, label %37, !dbg !2164

; <label>:30:                                     ; preds = %26
  store i16 0, i16* %21, align 2, !dbg !2165, !tbaa !2153
  tail call void @ll_hci_private_free_dma_rx(i8* nonnull %0) #14, !dbg !2167
  %31 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2168, !tbaa !660
  %32 = icmp slt i8 %31, 0, !dbg !2168
  br i1 %32, label %33, label %83, !dbg !2170

; <label>:33:                                     ; preds = %30
  %34 = load i16, i16* %21, align 2, !dbg !2171, !tbaa !2153
  %35 = zext i16 %34 to i32, !dbg !2171
  %36 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0), i32 %35, i32 %27, i32 529) #16, !dbg !2171
  br label %83, !dbg !2171

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 13, i32 %23, !dbg !2173
  %39 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !2174
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %38, i8* %39, i32 %27, i32 1, i1 false), !dbg !2175
  %40 = load i16, i16* %21, align 2, !dbg !2176, !tbaa !2153
  %41 = add i16 %40, %12, !dbg !2176
  store i16 %41, i16* %21, align 2, !dbg !2176, !tbaa !2153
  %42 = zext i16 %41 to i32, !dbg !2177
  %43 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 15, !dbg !2179
  %44 = load i16, i16* %43, align 4, !dbg !2179, !tbaa !2180
  %45 = zext i16 %44 to i32, !dbg !2181
  %46 = add nuw nsw i32 %45, 8, !dbg !2182
  %47 = icmp ult i32 %42, %46, !dbg !2183
  br i1 %47, label %50, label %48, !dbg !2184

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 13, i32 0, !dbg !2185
  tail call void @l2cap_packet_handler(i8 zeroext 2, i8* %49, i16 zeroext %41) #14, !dbg !2187
  store i16 0, i16* %43, align 4, !dbg !2188, !tbaa !2180
  store i16 0, i16* %21, align 2, !dbg !2189, !tbaa !2153
  br label %50, !dbg !2190

; <label>:50:                                     ; preds = %48, %37
  tail call void @ll_hci_private_free_dma_rx(i8* nonnull %0) #14, !dbg !2191
  br label %82, !dbg !2192

; <label>:51:                                     ; preds = %15
  %52 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 14, !dbg !2193
  %53 = load i16, i16* %52, align 2, !dbg !2193, !tbaa !2153
  %54 = icmp eq i16 %53, 0, !dbg !2195
  br i1 %54, label %56, label %55, !dbg !2196

; <label>:55:                                     ; preds = %51
  store i16 0, i16* %52, align 2, !dbg !2197, !tbaa !2153
  br label %56, !dbg !2199

; <label>:56:                                     ; preds = %55, %51
  %57 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !2200
  %58 = load i8, i8* %57, align 1, !dbg !2200, !tbaa !660
  %59 = zext i8 %58 to i16, !dbg !2200
  %60 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !2200
  %61 = load i8, i8* %60, align 1, !dbg !2200, !tbaa !660
  %62 = zext i8 %61 to i16, !dbg !2200
  %63 = shl nuw i16 %62, 8, !dbg !2200
  %64 = or i16 %63, %59, !dbg !2200
  call void @llvm.dbg.value(metadata i16 %64, metadata !2133, metadata !DIExpression()), !dbg !2201
  %65 = zext i16 %12 to i32, !dbg !2202
  %66 = zext i16 %64 to i32, !dbg !2204
  %67 = add nuw nsw i32 %66, 4, !dbg !2205
  %68 = icmp ult i32 %65, %67, !dbg !2206
  br i1 %68, label %71, label %69, !dbg !2207

; <label>:69:                                     ; preds = %56
  %70 = add i16 %12, 4, !dbg !2208
  tail call void @l2cap_packet_handler(i8 zeroext 2, i8* nonnull %0, i16 zeroext %70) #14, !dbg !2210
  br label %80, !dbg !2211

; <label>:71:                                     ; preds = %56
  %72 = icmp ugt i16 %12, 525, !dbg !2212
  br i1 %72, label %73, label %74, !dbg !2215

; <label>:73:                                     ; preds = %71
  tail call void @ll_hci_private_free_dma_rx(i8* nonnull %0) #14, !dbg !2216
  br label %83, !dbg !2218

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 13, i32 0, !dbg !2219
  %76 = add nuw nsw i32 %65, 4, !dbg !2220
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %75, i8* nonnull %0, i32 %76, i32 1, i1 false), !dbg !2221
  %77 = trunc i32 %76 to i16, !dbg !2222
  store i16 %77, i16* %52, align 2, !dbg !2223, !tbaa !2153
  %78 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 15, !dbg !2224
  store i16 %64, i16* %78, align 4, !dbg !2225, !tbaa !2180
  %79 = trunc i32 %67 to i16, !dbg !2226
  tail call void @bt_store_16(i8* %75, i16 zeroext 2, i16 zeroext %79) #14, !dbg !2227
  br label %80

; <label>:80:                                     ; preds = %74, %69
  tail call void @ll_hci_private_free_dma_rx(i8* nonnull %0) #14, !dbg !2228
  br label %82, !dbg !2229

; <label>:81:                                     ; preds = %15
  tail call void @ll_hci_private_free_dma_rx(i8* nonnull %0) #14, !dbg !2230
  br label %83, !dbg !2231

; <label>:82:                                     ; preds = %80, %50
  tail call fastcc void @hci_run_for_acl_data_send() #16, !dbg !2232
  br label %83, !dbg !2233

; <label>:83:                                     ; preds = %82, %81, %73, %33, %30, %25, %14
  ret void, !dbg !2234
}

; Function Attrs: optsize
declare void @ll_hci_private_free_dma_rx(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_acl_handler(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2236 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2240, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i16 %1, metadata !2241, metadata !DIExpression()), !dbg !2244
  %3 = load i8, i8* %0, align 1, !dbg !2245, !tbaa !660
  %4 = zext i8 %3 to i16, !dbg !2245
  %5 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !2245
  %6 = load i8, i8* %5, align 1, !dbg !2245, !tbaa !660
  %7 = zext i8 %6 to i16, !dbg !2245
  %8 = shl nuw i16 %7, 8, !dbg !2245
  %9 = and i16 %8, 3840, !dbg !2245
  %10 = or i16 %9, %4, !dbg !2245
  call void @llvm.dbg.value(metadata i16 %10, metadata !2242, metadata !DIExpression()), !dbg !2246
  %11 = tail call zeroext i16 @get_ble_link_handle() #14, !dbg !2247
  %12 = icmp ult i16 %10, %11, !dbg !2249
  br i1 %12, label %18, label %13, !dbg !2250

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* @config_stack_modules, align 4, !dbg !2251, !tbaa !1023
  %15 = and i32 %14, 4, !dbg !2251
  %16 = icmp eq i32 %15, 0, !dbg !2251
  br i1 %16, label %19, label %17, !dbg !2254

; <label>:17:                                     ; preds = %13
  tail call void @hci_ble_acl_handler(i8* nonnull %0, i16 zeroext undef, i16 zeroext %10) #16, !dbg !2255
  br label %19, !dbg !2257

; <label>:18:                                     ; preds = %2
  tail call void @hci_edr_acl_handler(i8* nonnull %0, i16 zeroext %1, i16 zeroext %10) #16, !dbg !2258
  br label %19

; <label>:19:                                     ; preds = %18, %17, %13
  ret void, !dbg !2260
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @hci_le_get_acl_packet_num(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2261 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2265, metadata !DIExpression()), !dbg !2267
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !2268
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !2266, metadata !DIExpression()), !dbg !2269
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !2270
  br i1 %3, label %7, label %4, !dbg !2272

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 16, !dbg !2273
  %6 = load i8, i8* %5, align 2, !dbg !2273, !tbaa !1127
  br label %7, !dbg !2275

; <label>:7:                                      ; preds = %4, %1
  %8 = phi i8 [ %6, %4 ], [ 0, %1 ]
  ret i8 %8, !dbg !2276
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @hci_le_get_connect_flag(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2277 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2279, metadata !DIExpression()), !dbg !2281
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !2282
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !2280, metadata !DIExpression()), !dbg !2283
  %3 = icmp ne %struct.__le_hci_connection* %2, null, !dbg !2284
  %4 = zext i1 %3 to i8, !dbg !2284
  ret i8 %4, !dbg !2287
}

; Function Attrs: nounwind optsize
define hidden i32 @hci_le_send_acl_packet_buffer(i8* nocapture readonly, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2288 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2292, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %1, metadata !2293, metadata !DIExpression()), !dbg !2297
  %3 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !2298, !tbaa !1900
  %4 = icmp eq i8 %3, 0, !dbg !2300
  br i1 %4, label %23, label %5, !dbg !2301

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %0, align 1, !dbg !2302, !tbaa !660
  %7 = zext i8 %6 to i16, !dbg !2302
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !2302
  %9 = load i8, i8* %8, align 1, !dbg !2302, !tbaa !660
  %10 = zext i8 %9 to i16, !dbg !2302
  %11 = shl nuw i16 %10, 8, !dbg !2302
  %12 = and i16 %11, 3840, !dbg !2302
  %13 = or i16 %12, %7, !dbg !2302
  call void @llvm.dbg.value(metadata i16 %13, metadata !2294, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i16 %13, metadata !2014, metadata !DIExpression()), !dbg !2304
  %14 = tail call i32 @hci_number_free_acl_slots_for_handle(i16 zeroext %13) #14, !dbg !2307
  %15 = icmp sgt i32 %14, 0, !dbg !2308
  br i1 %15, label %17, label %16, !dbg !2309

; <label>:16:                                     ; preds = %5
  store i8 0, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !2310, !tbaa !1900
  br label %23, !dbg !2313

; <label>:17:                                     ; preds = %5
  %18 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %13) #16, !dbg !2314
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %18, metadata !2295, metadata !DIExpression()), !dbg !2315
  %19 = icmp eq %struct.__le_hci_connection* %18, null, !dbg !2316
  br i1 %19, label %20, label %21, !dbg !2318

; <label>:20:                                     ; preds = %17
  store i8 0, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !2319, !tbaa !1900
  br label %23, !dbg !2322

; <label>:21:                                     ; preds = %17
  %22 = trunc i32 %1 to i16, !dbg !2323
  store i16 %22, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 5), align 4, !dbg !2324, !tbaa !1535
  store i16 4, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 4), align 2, !dbg !2325, !tbaa !2326
  tail call fastcc void @le_hci_send_acl_packet_fragments(%struct.__le_hci_connection* nonnull %18) #16, !dbg !2327
  br label %23, !dbg !2328

; <label>:23:                                     ; preds = %21, %20, %16, %2
  %24 = phi i32 [ 87, %2 ], [ 87, %16 ], [ 0, %21 ], [ 0, %20 ]
  ret i32 %24, !dbg !2329
}

; Function Attrs: nounwind optsize
define hidden i32 @hci_can_send_prepared_acl_packet_now(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2015 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2014, metadata !DIExpression()), !dbg !2331
  %2 = tail call i32 @hci_number_free_acl_slots_for_handle(i16 zeroext %0) #16, !dbg !2332
  %3 = icmp sgt i32 %2, 0, !dbg !2333
  %4 = zext i1 %3 to i32, !dbg !2333
  ret i32 %4, !dbg !2334
}

; Function Attrs: nounwind optsize
define internal fastcc void @le_hci_send_acl_packet_fragments(%struct.__le_hci_connection* nocapture) unnamed_addr #0 section ".bt_stack_code" !dbg !2335 {
  %2 = load i16, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 7), align 4, !dbg !2353, !tbaa !2354
  call void @llvm.dbg.value(metadata i16 %2, metadata !2340, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 0, metadata !2341, metadata !DIExpression()), !dbg !2356
  %3 = zext i16 %2 to i32
  %4 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %0, i32 0, i32 16
  %5 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %0, i32 0, i32 2
  br label %6, !dbg !2357

; <label>:6:                                      ; preds = %42, %1
  %7 = load i16, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 4), align 2, !dbg !2358, !tbaa !2326
  %8 = zext i16 %7 to i32, !dbg !2359
  %9 = add i16 %7, -4, !dbg !2360
  call void @llvm.dbg.value(metadata i16 %9, metadata !2342, metadata !DIExpression()), !dbg !2361
  %10 = load i16, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 5), align 4, !dbg !2362, !tbaa !1535
  %11 = zext i16 %10 to i32, !dbg !2363
  %12 = sub nsw i32 %11, %8, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %12, metadata !2345, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 0, metadata !2346, metadata !DIExpression()), !dbg !2366
  %13 = icmp sgt i32 %12, %3, !dbg !2367
  call void @llvm.dbg.value(metadata i32 1, metadata !2346, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %3, metadata !2345, metadata !DIExpression()), !dbg !2365
  %14 = select i1 %13, i32 %3, i32 %12, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %14, metadata !2345, metadata !DIExpression()), !dbg !2365
  %15 = zext i16 %9 to i32, !dbg !2370
  %16 = icmp eq i16 %9, 0, !dbg !2371
  br i1 %16, label %26, label %17, !dbg !2372

; <label>:17:                                     ; preds = %6
  %18 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 0), align 4, !dbg !2373, !tbaa !660
  %19 = zext i8 %18 to i16, !dbg !2373
  %20 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 1), align 1, !dbg !2373, !tbaa !660
  %21 = zext i8 %20 to i16, !dbg !2373
  %22 = shl nuw i16 %21, 8, !dbg !2373
  %23 = and i16 %22, -12544, !dbg !2374
  %24 = or i16 %19, %23, !dbg !2375
  %25 = or i16 %24, 4096, !dbg !2375
  call void @llvm.dbg.value(metadata i16 %25, metadata !2347, metadata !DIExpression()), !dbg !2376
  tail call void @bt_store_16(i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 0), i16 zeroext %9, i16 zeroext %25) #14, !dbg !2377
  br label %26, !dbg !2378

; <label>:26:                                     ; preds = %17, %6
  %27 = add i16 %7, -2, !dbg !2379
  %28 = trunc i32 %14 to i16, !dbg !2380
  tail call void @bt_store_16(i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 0), i16 zeroext %27, i16 zeroext %28) #14, !dbg !2381
  %29 = load i8, i8* %4, align 2, !dbg !2382, !tbaa !1127
  %30 = add i8 %29, 1, !dbg !2382
  store i8 %30, i8* %4, align 2, !dbg !2382, !tbaa !1127
  br i1 %13, label %31, label %36, !dbg !2383

; <label>:31:                                     ; preds = %26
  %32 = load i16, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 4), align 2, !dbg !2384, !tbaa !2326
  %33 = zext i16 %32 to i32, !dbg !2384
  %34 = add nsw i32 %33, %14, !dbg !2384
  %35 = trunc i32 %34 to i16, !dbg !2384
  store i16 %35, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 4), align 2, !dbg !2384, !tbaa !2326
  br label %37, !dbg !2387

; <label>:36:                                     ; preds = %26
  store i16 0, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 4), align 2, !dbg !2388, !tbaa !2326
  store i16 0, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 5), align 4, !dbg !2390, !tbaa !1535
  br label %37

; <label>:37:                                     ; preds = %36, %31
  %38 = getelementptr inbounds %struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 %15, !dbg !2391
  call void @llvm.dbg.value(metadata i8* %38, metadata !2350, metadata !DIExpression()), !dbg !2392
  %39 = add nsw i32 %14, 4, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %39, metadata !2351, metadata !DIExpression()), !dbg !2394
  %40 = trunc i32 %39 to i16, !dbg !2395
  %41 = tail call i32 @le_hci_send_acl_packet(i8* %38, i16 zeroext %40) #14, !dbg !2396
  br i1 %13, label %42, label %46, !dbg !2397

; <label>:42:                                     ; preds = %37
  %43 = load i16, i16* %5, align 2, !dbg !2398, !tbaa !1568
  call void @llvm.dbg.value(metadata i16 %43, metadata !2014, metadata !DIExpression()), !dbg !2400
  %44 = tail call i32 @hci_number_free_acl_slots_for_handle(i16 zeroext %43) #14, !dbg !2402
  %45 = icmp sgt i32 %44, 0, !dbg !2403
  br i1 %45, label %6, label %47

; <label>:46:                                     ; preds = %37
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), i8 0, i64 5, i32 1, i1 false), !dbg !2404
  br label %48, !dbg !2406

; <label>:47:                                     ; preds = %42
  br label %48

; <label>:48:                                     ; preds = %47, %46
  ret void
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden i8* @hci_get_outgoing_acl_packet_buffer_test() local_unnamed_addr #6 section ".bt_stack_code" !dbg !2407 {
  ret i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 2, i32 0), !dbg !2410
}

; Function Attrs: nounwind optsize
define hidden i32 @hci_send_acl_packet_buffer(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 %1, metadata !2414, metadata !DIExpression()), !dbg !2416
  %3 = tail call i32 @lmp_hci_send_packet(i8* %0, i32 %1) #14, !dbg !2417
  ret i32 0, !dbg !2418
}

; Function Attrs: optsize
declare i32 @lmp_hci_send_packet(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2419 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2423, metadata !DIExpression()), !dbg !2425
  %2 = zext i16 %0 to i32, !dbg !2426
  %3 = add nuw nsw i32 %2, 4, !dbg !2427
  %4 = tail call i8* @lmp_private_get_tx_packet_buffer(i32 %3) #14, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %4, metadata !2424, metadata !DIExpression()), !dbg !2429
  ret i8* %4, !dbg !2430
}

; Function Attrs: optsize
declare i8* @lmp_private_get_tx_packet_buffer(i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @bredr_hci_send_acl_packet(i8*, i32, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2431 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2435, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 %1, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 %2, metadata !2437, metadata !DIExpression()), !dbg !2440
  %4 = tail call i32 @lmp_hci_send_packet(i8* %0, i32 %1) #14, !dbg !2441
  ret i32 0, !dbg !2442
}

; Function Attrs: nounwind optsize
define hidden void @hci_hold_acl_packet(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2445, metadata !DIExpression()), !dbg !2446
  tail call void @lmp_hci_private_hold_acl_packet(i8* %0) #14, !dbg !2447
  ret void, !dbg !2448
}

; Function Attrs: optsize
declare void @lmp_hci_private_hold_acl_packet(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_free_acl_packet(i16 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2449 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2453, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8* %1, metadata !2454, metadata !DIExpression()), !dbg !2456
  tail call void @lmp_hci_private_free_acl_packet(i8* %1) #14, !dbg !2457
  tail call void @lmp_hci_host_num_of_completed_packets(i16 zeroext %0, i16 zeroext 1) #14, !dbg !2458
  ret void, !dbg !2459
}

; Function Attrs: nounwind optsize
define hidden void @set_hid_independent_info() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2460 {
  %1 = alloca [6 x i8], align 1
  %2 = alloca [40 x i8], align 1
  %3 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0, !dbg !2471
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %3) #15, !dbg !2471
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %1, metadata !2462, metadata !DIExpression()), !dbg !2472
  call void @llvm.memset.p0i8.i32(i8* nonnull %3, i8 0, i32 6, i32 1, i1 false), !dbg !2472
  %4 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 0, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #15, !dbg !2473
  tail call void @llvm.dbg.declare(metadata [40 x i8]* %2, metadata !2463, metadata !DIExpression()), !dbg !2474
  call void @llvm.memset.p0i8.i32(i8* nonnull %4, i8 0, i32 40, i32 1, i1 false), !dbg !2474
  call void @llvm.dbg.value(metadata i32 0, metadata !2467, metadata !DIExpression()), !dbg !2475
  %5 = tail call i8* @bt_get_mac_addr() #16, !dbg !2476
  call void @llvm.dbg.value(metadata i8* %5, metadata !2468, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2469, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2469, metadata !DIExpression()), !dbg !2478
  br label %9, !dbg !2479

; <label>:6:                                      ; preds = %9
  %7 = tail call i8* @bt_get_hid_name() #16, !dbg !2481
  %8 = icmp eq i8* %7, null, !dbg !2481
  br i1 %8, label %26, label %17, !dbg !2483

; <label>:9:                                      ; preds = %9, %0
  %10 = phi i32 [ 0, %0 ], [ %15, %9 ]
  %11 = getelementptr inbounds i8, i8* %5, i32 %10, !dbg !2484
  %12 = load i8, i8* %11, align 1, !dbg !2484, !tbaa !660
  %13 = add i8 %12, 1, !dbg !2487
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 %10, !dbg !2488
  store i8 %13, i8* %14, align 1, !dbg !2489, !tbaa !660
  %15 = add nuw nsw i32 %10, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %15, metadata !2469, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %15, metadata !2469, metadata !DIExpression()), !dbg !2478
  %16 = icmp eq i32 %15, 6, !dbg !2492
  br i1 %16, label %6, label %9, !dbg !2479, !llvm.loop !2494

; <label>:17:                                     ; preds = %6
  %18 = tail call i8* @bt_get_hid_name() #16, !dbg !2497
  %19 = tail call i32 @strlen(i8* %18) #16, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %19, metadata !2467, metadata !DIExpression()), !dbg !2475
  %20 = icmp slt i32 %19, 40, !dbg !2501
  %21 = tail call i8* @bt_get_hid_name() #16, !dbg !2503
  br i1 %20, label %22, label %23, !dbg !2505

; <label>:22:                                     ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* %21, i32 %19, i32 1, i1 false), !dbg !2506
  br label %24, !dbg !2507

; <label>:23:                                     ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* %21, i32 39, i32 1, i1 false), !dbg !2508
  call void @llvm.dbg.value(metadata i32 39, metadata !2467, metadata !DIExpression()), !dbg !2475
  br label %24

; <label>:24:                                     ; preds = %23, %22
  %25 = call i32 @puts(i8* nonnull %4) #16, !dbg !2510
  br label %43, !dbg !2511

; <label>:26:                                     ; preds = %6
  %27 = tail call i8* @bt_get_local_name() #16, !dbg !2512
  %28 = tail call i32 @strlen(i8* %27) #16, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %28, metadata !2467, metadata !DIExpression()), !dbg !2475
  %29 = icmp slt i32 %28, 35, !dbg !2516
  %30 = tail call i8* @bt_get_local_name() #16, !dbg !2518
  br i1 %29, label %31, label %32, !dbg !2520

; <label>:31:                                     ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* %30, i32 %28, i32 1, i1 false), !dbg !2521
  br label %33, !dbg !2522

; <label>:32:                                     ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* %30, i32 35, i32 1, i1 false), !dbg !2523
  call void @llvm.dbg.value(metadata i32 35, metadata !2467, metadata !DIExpression()), !dbg !2475
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = phi i32 [ %28, %31 ], [ 35, %32 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !2467, metadata !DIExpression()), !dbg !2475
  %35 = add nsw i32 %34, 1, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %35, metadata !2467, metadata !DIExpression()), !dbg !2475
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %34, !dbg !2526
  store i8 95, i8* %36, align 1, !dbg !2527, !tbaa !660
  %37 = add nsw i32 %34, 2, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %37, metadata !2467, metadata !DIExpression()), !dbg !2475
  %38 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %35, !dbg !2529
  store i8 72, i8* %38, align 1, !dbg !2530, !tbaa !660
  %39 = add nsw i32 %34, 3, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %39, metadata !2467, metadata !DIExpression()), !dbg !2475
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %37, !dbg !2532
  store i8 73, i8* %40, align 1, !dbg !2533, !tbaa !660
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i32 0, i32 %39, !dbg !2534
  store i8 68, i8* %41, align 1, !dbg !2535, !tbaa !660
  %42 = call i32 @puts(i8* nonnull %4) #16, !dbg !2536
  br label %43

; <label>:43:                                     ; preds = %33, %24
  call void @lmp_hci_write_local_address(i8* nonnull %3) #14, !dbg !2537
  %44 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2538, !tbaa !720
  %45 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %44, i32 0, i32 0, !dbg !2539
  %46 = load i32, i32* %45, align 4, !dbg !2539, !tbaa !2540
  call void @lmp_hci_write_class_of_device(i32 %46) #14, !dbg !2541
  call void @lmp_hci_write_local_name(i8* nonnull %4) #14, !dbg !2542
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #15, !dbg !2543
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %3) #15, !dbg !2543
  ret void, !dbg !2543
}

; Function Attrs: nounwind optsize readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: optsize
declare void @lmp_hci_write_local_address(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_write_class_of_device(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_write_local_name(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @btstack_hci_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2544 {
  %1 = load i32, i32* @config_btctler_modules, align 4, !dbg !2545, !tbaa !1023
  %2 = and i32 %1, 1, !dbg !2545
  %3 = icmp eq i32 %2, 0, !dbg !2545
  br i1 %3, label %29, label %4, !dbg !2547

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 bitcast (i32 (...)* @lmp_hci_reset to i32 ()*)() #14, !dbg !2548
  %6 = tail call i8* @bt_get_mac_addr() #16, !dbg !2550
  tail call void @lmp_hci_write_local_address(i8* %6) #14, !dbg !2551
  %7 = load i8, i8* @a2dp_source_bqb_support, align 1, !dbg !2553, !tbaa !660
  %8 = icmp eq i8 %7, 0, !dbg !2553
  %9 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !tbaa !720
  %10 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !2540
  br i1 %8, label %14, label %12, !dbg !2555

; <label>:12:                                     ; preds = %4
  %13 = or i32 %11, 524288, !dbg !2556
  store i32 %13, i32* %10, align 4, !dbg !2556, !tbaa !2540
  br label %14, !dbg !2558

; <label>:14:                                     ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ %11, %4 ], !dbg !2559
  tail call void @lmp_hci_write_class_of_device(i32 %15) #14, !dbg !2560
  %16 = tail call i8* @bt_get_local_name() #16, !dbg !2561
  tail call void @lmp_hci_write_local_name(i8* %16) #14, !dbg !2562
  %17 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2563, !tbaa !720
  %18 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %17, i32 0, i32 9, !dbg !2564
  %19 = load i32, i32* %18, align 1, !dbg !2564
  %20 = lshr i32 %19, 12, !dbg !2564
  %21 = trunc i32 %20 to i8, !dbg !2564
  %22 = and i8 %21, 1, !dbg !2564
  tail call void @lmp_hci_write_simple_pairing_mode(i8 zeroext %22) #14, !dbg !2565
  %23 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2566, !tbaa !720
  %24 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %23, i32 0, i32 1, !dbg !2567
  %25 = load i16, i16* %24, align 4, !dbg !2567, !tbaa !1049
  tail call void @lmp_hci_write_page_timeout(i16 zeroext %25) #14, !dbg !2568
  %26 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !2569, !tbaa !720
  %27 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %26, i32 0, i32 2, !dbg !2570
  %28 = load i16, i16* %27, align 2, !dbg !2570, !tbaa !2571
  tail call void @lmp_hci_write_super_timeout(i16 zeroext %28) #14, !dbg !2572
  br label %29, !dbg !2573

; <label>:29:                                     ; preds = %14, %0
  %30 = and i32 %1, 2, !dbg !2574
  %31 = icmp eq i32 %30, 0, !dbg !2574
  br i1 %31, label %33, label %32, !dbg !2576

; <label>:32:                                     ; preds = %29
  tail call void @ble_hci_init() #16, !dbg !2577
  br label %33, !dbg !2579

; <label>:33:                                     ; preds = %32, %29
  ret void, !dbg !2580
}

; Function Attrs: optsize
declare i32 @lmp_hci_reset(...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_write_simple_pairing_mode(i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_write_page_timeout(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_write_super_timeout(i16 zeroext) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize
define weak hidden i8* @tws_set_auto_pair_code() local_unnamed_addr #4 section ".bt_stack_code" !dbg !2581 {
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @code_buf, i32 0, i32 0), !dbg !2582
}

; Function Attrs: nounwind optsize
define hidden void @tws_le_acc_generation_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2583 {
  %1 = alloca [6 x i8], align 1
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i32 0, i32 0, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #15, !dbg !2587
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %1, metadata !2586, metadata !DIExpression()), !dbg !2588
  %3 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2589, !tbaa !1023
  %4 = icmp eq i32 %3, 0, !dbg !2589
  br i1 %4, label %65, label %5, !dbg !2591

; <label>:5:                                      ; preds = %0
  %6 = load i8, i8* @tws_auto_pair_enable, align 1, !dbg !2592, !tbaa !660
  %7 = icmp eq i8 %6, 0, !dbg !2592
  br i1 %7, label %11, label %8, !dbg !2595

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @tws_set_auto_pair_code() #16, !dbg !2596
  %10 = tail call i32 @tws_le_acc_generation(i8* %9) #14, !dbg !2598
  store i32 %10, i32* @g_le_tws_search_aa, align 4, !dbg !2600, !tbaa !1023
  store i32 %10, i32* @g_le_tws_pair_aa, align 4, !dbg !2601, !tbaa !1023
  store i32 %10, i32* @g_le_tws_connect_aa, align 4, !dbg !2602, !tbaa !1023
  br label %53, !dbg !2603

; <label>:11:                                     ; preds = %5
  %12 = tail call i32 @syscfg_read(i16 zeroext 84, i8* bitcast (i32* @g_le_tws_pair_aa to i8*), i16 zeroext 4) #14, !dbg !2604
  %13 = icmp eq i32 %12, 4, !dbg !2607
  br i1 %13, label %28, label %14, !dbg !2608

; <label>:14:                                     ; preds = %11
  %15 = call i32 @syscfg_read(i16 zeroext 95, i8* nonnull %2, i16 zeroext 6) #14, !dbg !2609
  %16 = call i32 @tws_le_acc_generation(i8* nonnull %2) #14, !dbg !2611
  store i32 %16, i32* @g_le_tws_pair_aa, align 4, !dbg !2612, !tbaa !1023
  %17 = call i32 @syscfg_write(i16 zeroext 84, i8* bitcast (i32* @g_le_tws_pair_aa to i8*), i16 zeroext 4) #14, !dbg !2613
  %18 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2614, !tbaa !660
  %19 = icmp slt i8 %18, 0, !dbg !2614
  br i1 %19, label %20, label %23, !dbg !2616

; <label>:20:                                     ; preds = %14
  %21 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.45, i32 0, i32 0)), !dbg !2617
  %22 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !660
  br label %23, !dbg !2617

; <label>:23:                                     ; preds = %20, %14
  %24 = phi i8 [ %22, %20 ], [ %18, %14 ], !dbg !2619
  %25 = and i8 %24, 64, !dbg !2619
  %26 = icmp eq i8 %25, 0, !dbg !2619
  br i1 %26, label %28, label %27, !dbg !2621

; <label>:27:                                     ; preds = %23
  call void @put_buf(i8* nonnull %2, i32 6) #14, !dbg !2622
  br label %28, !dbg !2622

; <label>:28:                                     ; preds = %27, %23, %11
  %29 = call i32 @syscfg_read(i16 zeroext 85, i8* bitcast (i32* @g_le_tws_connect_aa to i8*), i16 zeroext 4) #14, !dbg !2624
  %30 = icmp eq i32 %29, 4, !dbg !2626
  br i1 %30, label %39, label %31, !dbg !2627

; <label>:31:                                     ; preds = %28
  %32 = call i32 @syscfg_read(i16 zeroext 95, i8* nonnull %2, i16 zeroext 6) #14, !dbg !2628
  %33 = call i32 @tws_le_acc_generation(i8* nonnull %2) #14, !dbg !2630
  store i32 %33, i32* @g_le_tws_connect_aa, align 4, !dbg !2631, !tbaa !1023
  %34 = call i32 @syscfg_write(i16 zeroext 85, i8* bitcast (i32* @g_le_tws_connect_aa to i8*), i16 zeroext 4) #14, !dbg !2632
  %35 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2633, !tbaa !660
  %36 = icmp slt i8 %35, 0, !dbg !2633
  br i1 %36, label %37, label %39, !dbg !2635

; <label>:37:                                     ; preds = %31
  %38 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.44, i32 0, i32 0)), !dbg !2636
  br label %39, !dbg !2636

; <label>:39:                                     ; preds = %37, %31, %28
  %40 = load i32, i32* @g_le_tws_pair_aa, align 4, !dbg !2638, !tbaa !1023
  %41 = icmp eq i32 %40, -1, !dbg !2640
  %42 = load i32, i32* @g_le_tws_connect_aa, align 4, !dbg !2641
  %43 = icmp eq i32 %42, -1, !dbg !2643
  %44 = or i1 %41, %43, !dbg !2644
  br i1 %44, label %45, label %51, !dbg !2644

; <label>:45:                                     ; preds = %39
  %46 = call i32 @syscfg_read(i16 zeroext 95, i8* nonnull %2, i16 zeroext 6) #14, !dbg !2645
  %47 = call i32 @tws_le_acc_generation(i8* nonnull %2) #14, !dbg !2647
  store i32 %47, i32* @g_le_tws_pair_aa, align 4, !dbg !2648, !tbaa !1023
  %48 = call i32 @syscfg_write(i16 zeroext 84, i8* bitcast (i32* @g_le_tws_pair_aa to i8*), i16 zeroext 4) #14, !dbg !2649
  %49 = call i32 @tws_le_acc_generation(i8* nonnull %2) #14, !dbg !2650
  store i32 %49, i32* @g_le_tws_connect_aa, align 4, !dbg !2651, !tbaa !1023
  %50 = call i32 @syscfg_write(i16 zeroext 85, i8* bitcast (i32* @g_le_tws_connect_aa to i8*), i16 zeroext 4) #14, !dbg !2652
  br label %51, !dbg !2653

; <label>:51:                                     ; preds = %45, %39
  %52 = call i32 @tws_le_acc_generation(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @code_buf, i32 0, i32 0)) #14, !dbg !2654
  store i32 %52, i32* @g_le_tws_search_aa, align 4, !dbg !2655, !tbaa !1023
  br label %53

; <label>:53:                                     ; preds = %51, %8
  call void @tws_le_adv_scan_parm_init() #14, !dbg !2656
  %54 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2657, !tbaa !660
  %55 = icmp slt i8 %54, 0, !dbg !2657
  br i1 %55, label %56, label %65, !dbg !2659

; <label>:56:                                     ; preds = %53
  %57 = call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @str.43, i32 0, i32 0)), !dbg !2660
  %58 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2662, !tbaa !660
  %59 = icmp slt i8 %58, 0, !dbg !2662
  br i1 %59, label %60, label %65, !dbg !2664

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* @g_le_tws_pair_aa, align 4, !dbg !2665, !tbaa !1023
  %62 = load i32, i32* @g_le_tws_connect_aa, align 4, !dbg !2665, !tbaa !1023
  %63 = load i32, i32* @g_le_tws_search_aa, align 4, !dbg !2665, !tbaa !1023
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i32 %61, i32 %62, i32 %63) #16, !dbg !2665
  br label %65, !dbg !2665

; <label>:65:                                     ; preds = %60, %56, %53, %0
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #15, !dbg !2667
  ret void, !dbg !2667
}

; Function Attrs: optsize
declare i32 @tws_le_acc_generation(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @syscfg_read(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @syscfg_write(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tws_le_adv_scan_parm_init() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @tws_le_get_pair_aa() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2668 {
  %1 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2671, !tbaa !1023
  %2 = icmp eq i32 %1, 0, !dbg !2671
  br i1 %2, label %16, label %3, !dbg !2673

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @config_asser, align 4, !dbg !2674, !tbaa !1023
  %5 = icmp eq i32 %4, 0, !dbg !2674
  %6 = load i32, i32* @g_le_tws_pair_aa, align 4, !tbaa !1023
  %7 = icmp ne i32 %6, -1
  br i1 %5, label %12, label %8, !dbg !2679

; <label>:8:                                      ; preds = %3
  br i1 %7, label %14, label %9, !dbg !2681

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.23, i32 0, i32 0), i32 1435) #16, !dbg !2684
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.24, i32 0, i32 0)) #16, !dbg !2688
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #14, !dbg !2690
  br label %14, !dbg !2684

; <label>:12:                                     ; preds = %3
  br i1 %7, label %14, label %13, !dbg !2692

; <label>:13:                                     ; preds = %12
  tail call fastcc void @cpu_reset() #16, !dbg !2695
  br label %14, !dbg !2695

; <label>:14:                                     ; preds = %13, %12, %9, %8
  %15 = load i32, i32* @g_le_tws_pair_aa, align 4, !dbg !2699, !tbaa !1023
  br label %16, !dbg !2700

; <label>:16:                                     ; preds = %14, %0
  %17 = phi i32 [ %15, %14 ], [ 0, %0 ]
  ret i32 %17, !dbg !2701
}

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #12 !dbg !2702 {
  tail call void @p33_soft_reset() #14, !dbg !2704
  ret void, !dbg !2705
}

; Function Attrs: nounwind optsize
define hidden i32 @tws_le_get_connect_aa() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2706 {
  %1 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2707, !tbaa !1023
  %2 = icmp eq i32 %1, 0, !dbg !2707
  br i1 %2, label %16, label %3, !dbg !2709

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @config_asser, align 4, !dbg !2710, !tbaa !1023
  %5 = icmp eq i32 %4, 0, !dbg !2710
  %6 = load i32, i32* @g_le_tws_connect_aa, align 4, !tbaa !1023
  %7 = icmp ne i32 %6, -1
  br i1 %5, label %12, label %8, !dbg !2715

; <label>:8:                                      ; preds = %3
  br i1 %7, label %14, label %9, !dbg !2717

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.23, i32 0, i32 0), i32 1445) #16, !dbg !2720
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.25, i32 0, i32 0)) #16, !dbg !2724
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #14, !dbg !2726
  br label %14, !dbg !2720

; <label>:12:                                     ; preds = %3
  br i1 %7, label %14, label %13, !dbg !2728

; <label>:13:                                     ; preds = %12
  tail call fastcc void @cpu_reset() #16, !dbg !2731
  br label %14, !dbg !2731

; <label>:14:                                     ; preds = %13, %12, %9, %8
  %15 = load i32, i32* @g_le_tws_connect_aa, align 4, !dbg !2735, !tbaa !1023
  br label %16, !dbg !2736

; <label>:16:                                     ; preds = %14, %0
  %17 = phi i32 [ %15, %14 ], [ 0, %0 ]
  ret i32 %17, !dbg !2737
}

; Function Attrs: nounwind optsize
define hidden i32 @tws_le_get_search_aa() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2738 {
  %1 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2739, !tbaa !1023
  %2 = icmp eq i32 %1, 0, !dbg !2739
  br i1 %2, label %16, label %3, !dbg !2741

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @config_asser, align 4, !dbg !2742, !tbaa !1023
  %5 = icmp eq i32 %4, 0, !dbg !2742
  %6 = load i32, i32* @g_le_tws_search_aa, align 4, !tbaa !1023
  %7 = icmp ne i32 %6, -1
  br i1 %5, label %12, label %8, !dbg !2747

; <label>:8:                                      ; preds = %3
  br i1 %7, label %14, label %9, !dbg !2749

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.23, i32 0, i32 0), i32 1455) #16, !dbg !2752
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.26, i32 0, i32 0)) #16, !dbg !2756
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #14, !dbg !2758
  br label %14, !dbg !2752

; <label>:12:                                     ; preds = %3
  br i1 %7, label %14, label %13, !dbg !2760

; <label>:13:                                     ; preds = %12
  tail call fastcc void @cpu_reset() #16, !dbg !2763
  br label %14, !dbg !2763

; <label>:14:                                     ; preds = %13, %12, %9, %8
  %15 = load i32, i32* @g_le_tws_search_aa, align 4, !dbg !2767, !tbaa !1023
  br label %16, !dbg !2768

; <label>:16:                                     ; preds = %14, %0
  %17 = phi i32 [ %15, %14 ], [ 0, %0 ]
  ret i32 %17, !dbg !2769
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @check_tws_le_aa() local_unnamed_addr #5 section ".bt_stack_code" !dbg !2770 {
  %1 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2771, !tbaa !1023
  %2 = icmp eq i32 %1, 0, !dbg !2771
  br i1 %2, label %12, label %3, !dbg !2773

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @g_le_tws_pair_aa, align 4, !dbg !2774, !tbaa !1023
  %5 = icmp eq i32 %4, -1, !dbg !2777
  %6 = load i32, i32* @g_le_tws_search_aa, align 4, !dbg !2778
  %7 = icmp eq i32 %6, -1, !dbg !2780
  %8 = or i1 %5, %7, !dbg !2781
  %9 = load i32, i32* @g_le_tws_connect_aa, align 4, !dbg !2782
  %10 = icmp eq i32 %9, -1, !dbg !2784
  %11 = or i1 %8, %10, !dbg !2781
  br i1 %11, label %13, label %12, !dbg !2781

; <label>:12:                                     ; preds = %3, %0
  br label %13, !dbg !2785

; <label>:13:                                     ; preds = %12, %3
  %14 = phi i8 [ 0, %12 ], [ 1, %3 ]
  ret i8 %14, !dbg !2786
}

; Function Attrs: nounwind optsize
define hidden void @tws_api_set_connect_aa(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* null, metadata !2793, metadata !DIExpression()), !dbg !2796
  %2 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2797, !tbaa !1023
  %3 = icmp ne i32 %2, 0, !dbg !2797
  %4 = load i8, i8* @tws_auto_pair_enable, align 1, !dbg !2799
  %5 = icmp eq i8 %4, 0, !dbg !2802
  %6 = and i1 %3, %5, !dbg !2803
  br i1 %6, label %7, label %34, !dbg !2803

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* @config_asser, align 4, !dbg !2804, !tbaa !1023
  %9 = icmp eq i32 %8, 0, !dbg !2804
  %10 = load i32, i32* @g_le_tws_connect_aa, align 4, !tbaa !1023
  %11 = icmp ne i32 %10, -1
  br i1 %9, label %16, label %12, !dbg !2809

; <label>:12:                                     ; preds = %7
  br i1 %11, label %18, label %13, !dbg !2811

; <label>:13:                                     ; preds = %12
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.23, i32 0, i32 0), i32 1481) #16, !dbg !2814
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.25, i32 0, i32 0)) #16, !dbg !2818
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #14, !dbg !2820
  br label %18, !dbg !2814

; <label>:16:                                     ; preds = %7
  br i1 %11, label %18, label %17, !dbg !2822

; <label>:17:                                     ; preds = %16
  tail call fastcc void @cpu_reset() #16, !dbg !2825
  br label %18, !dbg !2825

; <label>:18:                                     ; preds = %17, %16, %13, %12
  %19 = tail call i8* @get_tws_internal_addr(i32 %0) #14, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %19, metadata !2793, metadata !DIExpression()), !dbg !2796
  %20 = icmp eq i8* %19, null, !dbg !2830
  br i1 %20, label %23, label %21, !dbg !2832

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @tws_le_acc_generation(i8* nonnull %19) #14, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %22, metadata !2792, metadata !DIExpression()), !dbg !2795
  br label %23, !dbg !2835

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 0, %18 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !2792, metadata !DIExpression()), !dbg !2795
  %25 = load i32, i32* @g_le_tws_connect_aa, align 4, !dbg !2836, !tbaa !1023
  %26 = icmp eq i32 %25, %24, !dbg !2838
  br i1 %26, label %34, label %27, !dbg !2839

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2840, !tbaa !660
  %29 = icmp slt i8 %28, 0, !dbg !2840
  br i1 %29, label %30, label %32, !dbg !2843

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i32 %25, i32 %24) #16, !dbg !2844
  br label %32, !dbg !2844

; <label>:32:                                     ; preds = %30, %27
  store i32 %24, i32* @g_le_tws_connect_aa, align 4, !dbg !2846, !tbaa !1023
  %33 = tail call i32 @syscfg_write(i16 zeroext 85, i8* bitcast (i32* @g_le_tws_connect_aa to i8*), i16 zeroext 4) #14, !dbg !2847
  br label %34, !dbg !2848

; <label>:34:                                     ; preds = %32, %23, %1
  ret void, !dbg !2849
}

; Function Attrs: optsize
declare i8* @get_tws_internal_addr(i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @tws_api_set_connect_aa_allways(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2850 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2854, metadata !DIExpression()), !dbg !2855
  store i32 %0, i32* %2, align 4, !tbaa !1023
  %3 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2856, !tbaa !1023
  %4 = icmp ne i32 %3, 0, !dbg !2856
  %5 = load i8, i8* @tws_auto_pair_enable, align 1, !dbg !2858
  %6 = icmp eq i8 %5, 0, !dbg !2861
  %7 = and i1 %4, %6, !dbg !2862
  br i1 %7, label %8, label %11, !dbg !2862

; <label>:8:                                      ; preds = %1
  store i32 %0, i32* @g_le_tws_connect_aa, align 4, !dbg !2863, !tbaa !1023
  %9 = bitcast i32* %2 to i8*, !dbg !2865
  %10 = call i32 @syscfg_write(i16 zeroext 85, i8* nonnull %9, i16 zeroext 4) #14, !dbg !2866
  br label %11, !dbg !2867

; <label>:11:                                     ; preds = %8, %1
  ret void, !dbg !2868
}

; Function Attrs: nounwind optsize
define hidden void @tws_api_clear_connect_aa() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2869 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i8], align 1
  %3 = bitcast i32* %1 to i8*, !dbg !2873
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !2873
  call void @llvm.dbg.value(metadata i32 -1, metadata !2871, metadata !DIExpression()), !dbg !2874
  store i32 -1, i32* %1, align 4, !dbg !2874, !tbaa !1023
  %4 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 0, !dbg !2875
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %4) #15, !dbg !2875
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %2, metadata !2872, metadata !DIExpression()), !dbg !2876
  %5 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !2877, !tbaa !1023
  %6 = icmp ne i32 %5, 0, !dbg !2877
  %7 = load i8, i8* @tws_auto_pair_enable, align 1, !dbg !2879
  %8 = icmp eq i8 %7, 0, !dbg !2882
  %9 = and i1 %6, %8, !dbg !2883
  br i1 %9, label %10, label %17, !dbg !2883

; <label>:10:                                     ; preds = %0
  %11 = call i32 @syscfg_write(i16 zeroext 85, i8* nonnull %3, i16 zeroext 4) #14, !dbg !2884
  %12 = call i32 @syscfg_write(i16 zeroext 84, i8* nonnull %3, i16 zeroext 4) #14, !dbg !2886
  %13 = call i32 @syscfg_read(i16 zeroext 95, i8* nonnull %4, i16 zeroext 6) #14, !dbg !2887
  %14 = call i32 @tws_le_acc_generation(i8* nonnull %4) #14, !dbg !2888
  store i32 %14, i32* @g_le_tws_pair_aa, align 4, !dbg !2889, !tbaa !1023
  store i32 %14, i32* @g_le_tws_connect_aa, align 4, !dbg !2890, !tbaa !1023
  %15 = call i32 @syscfg_write(i16 zeroext 84, i8* bitcast (i32* @g_le_tws_pair_aa to i8*), i16 zeroext 4) #14, !dbg !2891
  %16 = call i32 @syscfg_write(i16 zeroext 85, i8* bitcast (i32* @g_le_tws_connect_aa to i8*), i16 zeroext 4) #14, !dbg !2892
  br label %17, !dbg !2893

; <label>:17:                                     ; preds = %10, %0
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %4) #15, !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !2894
  ret void, !dbg !2894
}

; Function Attrs: norecurse nounwind optsize
define hidden i8* @ble_get_mac_addr() local_unnamed_addr #4 section ".bt_stack_code" !dbg !2895 {
  %1 = tail call i8* @bt_get_mac_addr() #16, !dbg !2896
  ret i8* %1, !dbg !2897
}

; Function Attrs: nounwind optsize
define hidden void @ble_hci_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2898 {
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.__le_hci_stack* @le_hci_stack to i8*), i8 0, i32 556, i32 4, i1 false), !dbg !2899
  tail call void @ll_hci_set_event_mask(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @le_event_mask, i32 0, i32 0)) #14, !dbg !2900
  tail call void @dev_hci_set_event_mask(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @hci_le_event_mask, i32 0, i32 0)) #14, !dbg !2901
  %1 = tail call zeroext i16 @ll_hci_get_acl_data_len() #14, !dbg !2902
  store i16 %1, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 7), align 4, !dbg !2903, !tbaa !2354
  %2 = tail call zeroext i16 @ll_hci_get_acl_total_num() #14, !dbg !2904
  %3 = trunc i16 %2 to i8, !dbg !2904
  store i8 %3, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 6), align 2, !dbg !2905, !tbaa !2906
  %4 = load i32, i32* @config_vendor_le_bb, align 4, !dbg !2907, !tbaa !1023
  %5 = icmp ne i32 %4, 0, !dbg !2907
  %6 = select i1 %5, i16 1, i16 6, !dbg !2909
  store i16 %6, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8, i32 0), align 2, !tbaa !2910
  store i16 3200, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8, i32 1), align 2, !dbg !2911, !tbaa !2912
  store i16 0, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8, i32 2), align 2, !dbg !2913, !tbaa !2914
  store i16 500, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8, i32 3), align 2, !dbg !2915, !tbaa !2916
  store i16 10, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8, i32 4), align 2, !dbg !2917, !tbaa !2918
  store i16 3200, i16* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8, i32 5), align 2, !dbg !2919, !tbaa !2920
  %7 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2921, !tbaa !660
  %8 = icmp slt i8 %7, 0, !dbg !2921
  br i1 %8, label %9, label %11, !dbg !2923

; <label>:9:                                      ; preds = %0
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.46, i32 0, i32 0)), !dbg !2924
  br label %11, !dbg !2924

; <label>:11:                                     ; preds = %9, %0
  ret void, !dbg !2926
}

; Function Attrs: optsize
declare void @ll_hci_set_event_mask(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dev_hci_set_event_mask(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @ll_hci_get_acl_data_len() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @ll_hci_get_acl_total_num() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_connectable_control(i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2927 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 %1, metadata !2932, metadata !DIExpression()), !dbg !2934
  %3 = icmp ne i8 %0, 0, !dbg !2935
  %4 = load i8, i8* @hci_scan_control, align 1, !tbaa !660
  %5 = and i8 %4, -3, !dbg !2937
  %6 = or i8 %4, 2, !dbg !2939
  %7 = select i1 %3, i8 %6, i8 %5, !dbg !2941
  store i8 %7, i8* @hci_scan_control, align 1, !tbaa !660
  %8 = tail call zeroext i8 @lmp_private_get_esco_conn_num() #14, !dbg !2942
  %9 = icmp eq i8 %8, 0, !dbg !2944
  br i1 %9, label %10, label %13, !dbg !2945

; <label>:10:                                     ; preds = %2
  %11 = load i8, i8* @hci_scan_control, align 1, !dbg !2946, !tbaa !660
  %12 = tail call i32 @lmp_hci_write_scan_enable(i8 zeroext %11) #14, !dbg !2948
  br label %19, !dbg !2949

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2950, !tbaa !660
  %15 = and i8 %14, 32, !dbg !2950
  %16 = icmp eq i8 %15, 0, !dbg !2950
  br i1 %16, label %19, label %17, !dbg !2953

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0)) #16, !dbg !2954
  br label %19, !dbg !2954

; <label>:19:                                     ; preds = %17, %13, %10
  ret void, !dbg !2956
}

; Function Attrs: optsize
declare zeroext i8 @lmp_private_get_esco_conn_num() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lmp_hci_write_scan_enable(i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_discoverable_control(i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2957 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8 %1, metadata !2960, metadata !DIExpression()), !dbg !2962
  %3 = icmp ne i8 %0, 0, !dbg !2963
  %4 = load i8, i8* @hci_scan_control, align 1, !tbaa !660
  %5 = and i8 %4, -2, !dbg !2965
  %6 = or i8 %4, 1, !dbg !2967
  %7 = select i1 %3, i8 %6, i8 %5, !dbg !2969
  store i8 %7, i8* @hci_scan_control, align 1, !tbaa !660
  %8 = tail call zeroext i8 @lmp_private_get_esco_conn_num() #14, !dbg !2970
  %9 = icmp eq i8 %8, 0, !dbg !2972
  br i1 %9, label %10, label %13, !dbg !2973

; <label>:10:                                     ; preds = %2
  %11 = load i8, i8* @hci_scan_control, align 1, !dbg !2974, !tbaa !660
  %12 = tail call i32 @lmp_hci_write_scan_enable(i8 zeroext %11) #14, !dbg !2976
  br label %19, !dbg !2977

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2978, !tbaa !660
  %15 = and i8 %14, 32, !dbg !2978
  %16 = icmp eq i8 %15, 0, !dbg !2978
  br i1 %16, label %19, label %17, !dbg !2981

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0)) #16, !dbg !2982
  br label %19, !dbg !2982

; <label>:19:                                     ; preds = %17, %13, %10
  ret void, !dbg !2984
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @get_hci_scan_value() local_unnamed_addr #5 section ".bt_stack_code" !dbg !2985 {
  %1 = load i8, i8* @hci_scan_control, align 1, !dbg !2986, !tbaa !660
  ret i8 %1, !dbg !2987
}

; Function Attrs: nounwind optsize
define hidden void @hci_cancle_page() local_unnamed_addr #0 section ".bt_stack_code" !dbg !2988 {
  tail call void bitcast (void (...)* @lmp_hci_cancel_page to void ()*)() #14, !dbg !2989
  ret void, !dbg !2990
}

; Function Attrs: optsize
declare void @lmp_hci_cancel_page(...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_connection_cancel(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2991 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2993, metadata !DIExpression()), !dbg !2994
  tail call void @lmp_hci_connection_cancel(i8* %0) #14, !dbg !2995
  ret void, !dbg !2996
}

; Function Attrs: optsize
declare void @lmp_hci_connection_cancel(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_inquiry_start(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !2997 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2999, metadata !DIExpression()), !dbg !3000
  tail call void @lmp_hci_inquiry(i32 10390323, i8 zeroext %0, i8 zeroext 0) #14, !dbg !3001
  ret void, !dbg !3002
}

; Function Attrs: optsize
declare void @lmp_hci_inquiry(i32, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_cancel_inquiry() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1297 {
  tail call void bitcast (void (...)* @lmp_hci_cancel_inquiry to void ()*)() #14, !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: optsize
declare void @lmp_hci_cancel_inquiry(...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_set_sniff_mode(i32, i8 zeroext, i8*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %1, metadata !3010, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8* %2, metadata !3011, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i16 %3, metadata !3012, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i16 %4, metadata !3013, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i16 %5, metadata !3014, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i16 %6, metadata !3015, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %2, metadata !677, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8 1, metadata !678, metadata !DIExpression()), !dbg !3026
  %8 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %2, i32 1) #14, !dbg !3027
  %9 = icmp eq i32 %0, 0, !dbg !3028
  br i1 %9, label %10, label %19, !dbg !3030

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8 %1, 2, !dbg !3031
  br i1 %11, label %12, label %28, !dbg !3034

; <label>:12:                                     ; preds = %10
  %13 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3035, !tbaa !660
  %14 = and i8 %13, 32, !dbg !3035
  %15 = icmp eq i8 %14, 0, !dbg !3035
  br i1 %15, label %18, label %16, !dbg !3038

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0)) #16, !dbg !3039
  br label %18, !dbg !3039

; <label>:18:                                     ; preds = %16, %12
  tail call void @lmp_hci_exit_sniff_mode_command(i16 zeroext %8) #14, !dbg !3041
  br label %28, !dbg !3042

; <label>:19:                                     ; preds = %7
  %20 = icmp eq i8 %1, 0, !dbg !3043
  br i1 %20, label %21, label %28, !dbg !3046

; <label>:21:                                     ; preds = %19
  %22 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3047, !tbaa !660
  %23 = and i8 %22, 32, !dbg !3047
  %24 = icmp eq i8 %23, 0, !dbg !3047
  br i1 %24, label %27, label %25, !dbg !3050

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0)) #16, !dbg !3051
  br label %27, !dbg !3051

; <label>:27:                                     ; preds = %25, %21
  tail call void @lmp_hci_sniff_mode_command(i16 zeroext %8, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6) #14, !dbg !3053
  br label %28, !dbg !3054

; <label>:28:                                     ; preds = %27, %19, %18, %10
  ret void, !dbg !3055
}

; Function Attrs: optsize
declare void @lmp_hci_exit_sniff_mode_command(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_sniff_mode_command(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_tx_channel_chassification(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3056 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3058, metadata !DIExpression()), !dbg !3059
  tail call void @lmp_hci_tx_channel_chassification(i8* %0) #14, !dbg !3060
  ret void, !dbg !3061
}

; Function Attrs: optsize
declare void @lmp_hci_tx_channel_chassification(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readnone
define hidden zeroext i16 @hci_usable_acl_packet_types() local_unnamed_addr #3 section ".bt_stack_code" !dbg !3062 {
  call void @llvm.dbg.value(metadata i16 768, metadata !3065, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i16 0, metadata !3070, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3071, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !3071, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i16 0, metadata !3070, metadata !DIExpression()), !dbg !3075
  br label %1, !dbg !3077

; <label>:1:                                      ; preds = %14, %0
  %2 = phi i32 [ 0, %0 ], [ %16, %14 ]
  %3 = phi i16 [ 0, %0 ], [ %15, %14 ]
  %4 = lshr i32 225, %2, !dbg !3080
  %5 = and i32 %4, 1, !dbg !3080
  %6 = icmp ne i32 %5, 0, !dbg !3080
  %7 = icmp eq i32 %2, 13, !dbg !3084
  %8 = or i1 %7, %6, !dbg !3086
  br i1 %8, label %14, label %9, !dbg !3086

; <label>:9:                                      ; preds = %1
  %10 = shl i32 1, %2, !dbg !3087
  %11 = zext i16 %3 to i32, !dbg !3089
  %12 = or i32 %11, %10, !dbg !3089
  %13 = trunc i32 %12 to i16, !dbg !3089
  call void @llvm.dbg.value(metadata i16 %13, metadata !3070, metadata !DIExpression()), !dbg !3075
  br label %14, !dbg !3090

; <label>:14:                                     ; preds = %9, %1
  %15 = phi i16 [ %3, %1 ], [ %13, %9 ]
  call void @llvm.dbg.value(metadata i16 %15, metadata !3070, metadata !DIExpression()), !dbg !3075
  %16 = add nuw nsw i32 %2, 1, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %16, metadata !3071, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 %16, metadata !3071, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i16 %15, metadata !3070, metadata !DIExpression()), !dbg !3075
  %17 = icmp eq i32 %16, 16, !dbg !3093
  br i1 %17, label %18, label %1, !dbg !3077, !llvm.loop !3095

; <label>:18:                                     ; preds = %14
  %19 = xor i16 %15, 13062, !dbg !3098
  call void @llvm.dbg.value(metadata i16 %19, metadata !3070, metadata !DIExpression()), !dbg !3075
  ret i16 %19, !dbg !3099
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden zeroext i16 @hci_max_acl_data_packet_length() local_unnamed_addr #6 section ".bt_stack_code" !dbg !3100 {
  ret i16 768, !dbg !3101
}

; Function Attrs: nounwind optsize
define hidden void @hci_create_connection_cmd(i8*, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i16 %1, metadata !3107, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8 %2, metadata !3108, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %3, metadata !3109, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i16 %4, metadata !3110, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i8 %5, metadata !3111, metadata !DIExpression()), !dbg !3117
  %7 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !3118, !tbaa !720
  %8 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %7, i32 0, i32 9, !dbg !3120
  %9 = load i32, i32* %8, align 1, !dbg !3120
  %10 = and i32 %9, 1048576, !dbg !3118
  %11 = icmp ne i32 %10, 0, !dbg !3118
  %12 = select i1 %11, i8 -86, i8 %5, !dbg !3121
  call void @llvm.dbg.value(metadata i8 %12, metadata !3111, metadata !DIExpression()), !dbg !3117
  tail call void @lmp_hci_create_connection(i8* %0, i16 zeroext %1, i8 zeroext %2, i8 zeroext %3, i16 zeroext %4, i8 zeroext %12) #14, !dbg !3122
  ret void, !dbg !3123
}

; Function Attrs: optsize
declare void @lmp_hci_create_connection(i8*, i16 zeroext, i8 zeroext, i8 zeroext, i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_disconnect_cmd(i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3124 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %1, metadata !3127, metadata !DIExpression()), !dbg !3129
  %3 = tail call i32 @lmp_hci_disconnect(i16 zeroext %0, i8 zeroext %1) #14, !dbg !3130
  ret void, !dbg !3131
}

; Function Attrs: nounwind optsize
define hidden void @hci_test_box_key_cmd(i8 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3132 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i16 %1, metadata !3137, metadata !DIExpression()), !dbg !3139
  %3 = tail call i32 @lmp_hci_test_key_cmd(i8 zeroext %0, i16 zeroext %1) #14, !dbg !3140
  ret void, !dbg !3141
}

; Function Attrs: optsize
declare i32 @lmp_hci_test_key_cmd(i8 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_send_user_info_cmd(i32, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i16 %1, metadata !3147, metadata !DIExpression()), !dbg !3149
  %3 = tail call i32 @lmp_hci_send_user_info_cmd(i32 %0, i16 zeroext %1) #14, !dbg !3150
  ret void, !dbg !3151
}

; Function Attrs: optsize
declare i32 @lmp_hci_send_user_info_cmd(i32, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_disconnect_all_standard_connect() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3152 {
  %1 = tail call i32 bitcast (i32 (...)* @lmp_hci_reset to i32 ()*)() #14, !dbg !3153
  ret void, !dbg !3154
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @hci_standard_link_check() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3155 {
  %1 = tail call zeroext i8 bitcast (i8 (...)* @get_bredr_link_state to i8 ()*)() #14, !dbg !3156
  ret i8 %1, !dbg !3157
}

; Function Attrs: optsize
declare zeroext i8 @get_bredr_link_state(...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @hci_standard_connect_check() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3158 {
  %1 = tail call zeroext i8 @lmp_standard_connect_check() #14, !dbg !3159
  ret i8 %1, !dbg !3160
}

; Function Attrs: optsize
declare zeroext i8 @lmp_standard_connect_check() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @sco_connection_disconnect(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8 0, metadata !678, metadata !DIExpression()), !dbg !3171
  %2 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 0) #14, !dbg !3172
  %3 = icmp eq i16 %2, 0, !dbg !3173
  br i1 %3, label %4, label %7, !dbg !3175

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8 2, metadata !678, metadata !DIExpression()), !dbg !3179
  %5 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 2) #14, !dbg !3180
  %6 = icmp eq i16 %5, 0, !dbg !3181
  br i1 %6, label %16, label %7, !dbg !3183

; <label>:7:                                      ; preds = %4, %1
  %8 = phi i16 [ %5, %4 ], [ %2, %1 ]
  %9 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3184, !tbaa !660
  %10 = and i8 %9, 32, !dbg !3184
  %11 = icmp eq i8 %10, 0, !dbg !3184
  br i1 %11, label %14, label %12, !dbg !3187

; <label>:12:                                     ; preds = %7
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #16, !dbg !3188
  br label %14, !dbg !3188

; <label>:14:                                     ; preds = %12, %7
  %15 = tail call i32 @lmp_hci_disconnect(i16 zeroext %8, i8 zeroext 19) #14, !dbg !3190
  br label %16, !dbg !3191

; <label>:16:                                     ; preds = %14, %4
  %17 = phi i8 [ 0, %14 ], [ 1, %4 ]
  ret i8 %17, !dbg !3192
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @sco_connection_setup(i8*, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3197, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %1, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i32 0, metadata !3199, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i16 96, metadata !3200, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8 0, metadata !678, metadata !DIExpression()), !dbg !3207
  %3 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 0) #14, !dbg !3208
  %4 = icmp eq i16 %3, 0, !dbg !3209
  br i1 %4, label %5, label %26, !dbg !3211

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8 2, metadata !678, metadata !DIExpression()), !dbg !3215
  %6 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 2) #14, !dbg !3216
  %7 = icmp eq i16 %6, 0, !dbg !3217
  br i1 %7, label %8, label %26, !dbg !3219

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8 1, metadata !678, metadata !DIExpression()), !dbg !3223
  %9 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 1) #14, !dbg !3224
  %10 = icmp eq i16 %9, 0, !dbg !3225
  br i1 %10, label %26, label %11, !dbg !3227

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !3228, !tbaa !660
  %13 = and i8 %12, 32, !dbg !3228
  %14 = icmp eq i8 %13, 0, !dbg !3228
  br i1 %14, label %17, label %15, !dbg !3231

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0)) #16, !dbg !3232
  br label %17, !dbg !3232

; <label>:17:                                     ; preds = %15, %11
  %18 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !3234, !tbaa !720
  %19 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %18, i32 0, i32 9, !dbg !3236
  %20 = load i32, i32* %19, align 1, !dbg !3236
  %21 = and i32 %20, 2048, !dbg !3236
  %22 = icmp ne i32 %21, 0, !dbg !3237
  %23 = icmp eq i8 %1, 1, !dbg !3238
  %24 = and i1 %23, %22, !dbg !3240
  call void @llvm.dbg.value(metadata i16 99, metadata !3200, metadata !DIExpression()), !dbg !3204
  %25 = select i1 %24, i16 99, i16 96, !dbg !3240
  call void @llvm.dbg.value(metadata i16 %25, metadata !3200, metadata !DIExpression()), !dbg !3204
  tail call void @lmp_hci_setup_sync_connection(i16 zeroext %9, i32 8000, i32 8000, i16 zeroext 7, i16 zeroext %25, i8 zeroext -1, i16 zeroext 4) #14, !dbg !3241
  br label %26, !dbg !3242

; <label>:26:                                     ; preds = %17, %8, %5, %2
  %27 = phi i8 [ 0, %8 ], [ 0, %17 ], [ 1, %5 ], [ 1, %2 ]
  ret i8 %27, !dbg !3243
}

; Function Attrs: optsize
declare void @lmp_hci_setup_sync_connection(i16 zeroext, i32, i32, i16 zeroext, i16 zeroext, i8 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @sco_connection_setup_dis(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 0, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8 0, metadata !678, metadata !DIExpression()), !dbg !3252
  %2 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 0) #14, !dbg !3253
  %3 = icmp eq i16 %2, 0, !dbg !3254
  br i1 %3, label %4, label %7, !dbg !3256

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 2, metadata !678, metadata !DIExpression()), !dbg !3260
  %5 = tail call zeroext i16 @lmp_private_handler_for_remote_addr(i8* %0, i32 2) #14, !dbg !3261
  %6 = icmp eq i16 %5, 0, !dbg !3262
  br i1 %6, label %9, label %7, !dbg !3264

; <label>:7:                                      ; preds = %4, %1
  %8 = tail call zeroext i8 @sco_connection_disconnect(i8* %0) #16, !dbg !3265
  br label %9, !dbg !3267

; <label>:9:                                      ; preds = %7, %4
  %10 = phi i8 [ %8, %7 ], [ 10, %4 ]
  ret i8 %10, !dbg !3268
}

; Function Attrs: nounwind optsize
define hidden void @hci_remote_name_request_cmd(i8*, i8 zeroext, i8 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3269 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8 %1, metadata !3274, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 %2, metadata !3275, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i16 %3, metadata !3276, metadata !DIExpression()), !dbg !3280
  tail call void @lmp_hci_remote_name_request(i8* %0, i8 zeroext 0, i16 zeroext 0) #14, !dbg !3281
  ret void, !dbg !3282
}

; Function Attrs: optsize
declare void @lmp_hci_remote_name_request(i8*, i8 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize readnone
define hidden i32 @hci_power_control(i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3288, metadata !DIExpression()), !dbg !3289
  ret i32 0, !dbg !3290
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden i32 @hci_non_flushable_packet_boundary_flag_supported() local_unnamed_addr #6 section ".bt_stack_code" !dbg !3291 {
  ret i32 1, !dbg !3294
}

; Function Attrs: nounwind optsize
define hidden i32 @hci_can_send_acl_packet_now(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3295 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3297, metadata !DIExpression()), !dbg !3298
  %2 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !3299, !tbaa !1900
  %3 = icmp eq i8 %2, 0, !dbg !3301
  br i1 %3, label %4, label %8, !dbg !3302

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata i16 %0, metadata !2014, metadata !DIExpression()), !dbg !3303
  %5 = tail call i32 @hci_number_free_acl_slots_for_handle(i16 zeroext %0) #14, !dbg !3305
  %6 = icmp sgt i32 %5, 0, !dbg !3306
  %7 = zext i1 %6 to i32, !dbg !3306
  br label %8, !dbg !3307

; <label>:8:                                      ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9, !dbg !3308
}

; Function Attrs: norecurse nounwind optsize
define hidden i32 @hci_reserve_packet_buffer() local_unnamed_addr #4 section ".bt_stack_code" !dbg !3309 {
  %1 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !3310, !tbaa !1900
  %2 = icmp eq i8 %1, 0, !dbg !3312
  br i1 %2, label %3, label %4, !dbg !3313

; <label>:3:                                      ; preds = %0
  store i8 1, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !3314, !tbaa !1900
  br label %4, !dbg !3315

; <label>:4:                                      ; preds = %3, %0
  %5 = phi i32 [ 1, %3 ], [ 0, %0 ]
  ret i32 %5, !dbg !3316
}

; Function Attrs: nounwind optsize
define hidden void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3317 {
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %0, metadata !3322, metadata !DIExpression()), !dbg !3323
  tail call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* %0, %struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0)) #14, !dbg !3324
  ret void, !dbg !3325
}

; Function Attrs: nounwind optsize readnone
define hidden void @hci_disconnect_security_block(i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3326 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3330, metadata !DIExpression()), !dbg !3331
  ret void, !dbg !3332
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden i32 @hci_can_send_command_packet_now() local_unnamed_addr #6 section ".bt_stack_code" !dbg !3333 {
  ret i32 1, !dbg !3334
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden i32 @hci_can_send_acl_classic_packet_now() local_unnamed_addr #6 section ".bt_stack_code" !dbg !3335 {
  ret i32 0, !dbg !3336
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @gap_ssp_supported_on_both_sides(i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3337 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3339, metadata !DIExpression()), !dbg !3340
  ret i32 0, !dbg !3341
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @gap_get_connection_type(i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3342 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3344, metadata !DIExpression()), !dbg !3345
  ret i32 0, !dbg !3346
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @hci_authentication_active_for_handle(i16 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3347 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3349, metadata !DIExpression()), !dbg !3350
  ret i32 1, !dbg !3351
}

; Function Attrs: nounwind optsize readnone
define hidden void @gap_drop_link_key_for_bd_addr(i8* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3352 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3356, metadata !DIExpression()), !dbg !3357
  ret void, !dbg !3358
}

; Function Attrs: nounwind optsize readnone
define hidden void @gap_request_security_level(i16 zeroext, i32) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3359 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 %1, metadata !3364, metadata !DIExpression()), !dbg !3366
  ret void, !dbg !3367
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden i32 @hci_get_state() local_unnamed_addr #6 section ".bt_stack_code" !dbg !3368 {
  ret i32 2, !dbg !3372
}

; Function Attrs: nounwind optsize
define hidden void @hci_event_callback_set(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3373 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3377, metadata !DIExpression()), !dbg !3378
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t* @hci_event_callback_registration, i32 0, i32 1), align 4, !dbg !3379, !tbaa !1791
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 1), %struct.btstack_linked_item* getelementptr inbounds (%struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t* @hci_event_callback_registration, i32 0, i32 0)) #14, !dbg !3380
  ret void, !dbg !3387
}

; Function Attrs: nounwind optsize
define hidden void @hci_add_event_handler(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3381 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3385, metadata !DIExpression()), !dbg !3388
  %2 = bitcast i8* %0 to %struct.btstack_linked_item*, !dbg !3389
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 1), %struct.btstack_linked_item* %2) #14, !dbg !3389
  ret void, !dbg !3390
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden i32 @hci_is_packet_buffer_reserved() local_unnamed_addr #5 section ".bt_stack_code" !dbg !3391 {
  %1 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !3392, !tbaa !1900
  %2 = zext i8 %1 to i32, !dbg !3393
  ret i32 %2, !dbg !3394
}

; Function Attrs: optsize
declare void @btstack_linked_list_add_tail(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readnone
define hidden void @hci_register_acl_packet_handler(void (i8, i16, i8*, i16)* nocapture) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3395 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3399, metadata !DIExpression()), !dbg !3400
  ret void, !dbg !3401
}

; Function Attrs: nounwind optsize readnone
define hidden void @gap_connectable_control(i8 zeroext) local_unnamed_addr #3 section ".bt_stack_code" !dbg !3402 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3406, metadata !DIExpression()), !dbg !3407
  ret void, !dbg !3408
}

; Function Attrs: nounwind optsize
define weak hidden void @hci_le_advertisements_set_params(i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3409 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3413, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i16 %1, metadata !3414, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8 %2, metadata !3415, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i8 %3, metadata !3416, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8* %4, metadata !3417, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8 %5, metadata !3418, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8 %6, metadata !3419, metadata !DIExpression()), !dbg !3426
  ret void, !dbg !3427
}

; Function Attrs: nounwind optsize
define weak hidden void @gap_advertisements_set_data(i8 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3428 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3435
  ret void, !dbg !3436
}

; Function Attrs: nounwind optsize
define weak hidden void @gap_advertisements_enable(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3439, metadata !DIExpression()), !dbg !3440
  ret void, !dbg !3441
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden void @lmp_hci_le_encrypt() local_unnamed_addr #6 section ".bt_stack_code" !dbg !3442 {
  ret void, !dbg !3443
}

; Function Attrs: nounwind optsize
define hidden i32 @le_hci_connection_links_empty() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3444 {
  %1 = load i32, i32* @config_stack_modules, align 4, !dbg !3445, !tbaa !1023
  %2 = and i32 %1, 4, !dbg !3445
  %3 = icmp eq i32 %2, 0, !dbg !3445
  br i1 %3, label %6, label %4, !dbg !3447

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @btstack_linked_list_empty(%struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0)) #14, !dbg !3448
  br label %6, !dbg !3450

; <label>:6:                                      ; preds = %4, %0
  %7 = phi i32 [ %5, %4 ], [ 1, %0 ]
  ret i32 %7, !dbg !3451
}

; Function Attrs: optsize
declare i32 @btstack_linked_list_empty(%struct.btstack_linked_item**) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden i32 @hci_number_free_acl_slots_for_handle(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3452 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !3457
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !3455, metadata !DIExpression()), !dbg !3458
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3459
  br i1 %3, label %8, label %4, !dbg !3461

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 3, !dbg !3462
  %6 = load i32, i32* %5, align 4, !dbg !3462, !tbaa !837
  %7 = tail call fastcc i32 @hci_number_free_acl_slots_for_connection_type(i32 %6) #16, !dbg !3463
  br label %8, !dbg !3464

; <label>:8:                                      ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9, !dbg !3465
}

; Function Attrs: nounwind optsize readonly
define internal fastcc i32 @hci_number_free_acl_slots_for_connection_type(i32) unnamed_addr #13 section ".bt_stack_code" !dbg !3466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3470, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3472, metadata !DIExpression()), !dbg !3481
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 0), align 4, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %2, metadata !3473, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3472, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3480
  %3 = icmp eq %struct.btstack_linked_item* %2, null, !dbg !3483
  br i1 %3, label %24, label %4, !dbg !3483

; <label>:4:                                      ; preds = %1
  br label %5, !dbg !3485

; <label>:5:                                      ; preds = %18, %4
  %6 = phi %struct.btstack_linked_item* [ %21, %18 ], [ %2, %4 ]
  %7 = phi i32 [ %19, %18 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %13, metadata !3474, metadata !DIExpression()), !dbg !3485
  %8 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %6, i32 3, !dbg !3486
  %9 = bitcast %struct.btstack_linked_item* %8 to i32*, !dbg !3486
  %10 = load i32, i32* %9, align 4, !dbg !3486, !tbaa !837
  %11 = icmp eq i32 %10, 255, !dbg !3488
  br i1 %11, label %18, label %12, !dbg !3489

; <label>:12:                                     ; preds = %5
  %13 = bitcast %struct.btstack_linked_item* %6 to %struct.__le_hci_connection*, !dbg !3490
  %14 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %13, i32 0, i32 16
  %15 = load i8, i8* %14, align 2, !tbaa !1127
  %16 = zext i8 %15 to i32
  %17 = add i32 %16, %7, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %17, metadata !3472, metadata !DIExpression()), !dbg !3481
  br label %18

; <label>:18:                                     ; preds = %12, %5
  %19 = phi i32 [ %17, %12 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %19, metadata !3472, metadata !DIExpression()), !dbg !3481
  %20 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %6, i32 0, i32 0, !dbg !3493
  %21 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %20, align 4, !tbaa !720
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %21, metadata !3473, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %19, metadata !3472, metadata !DIExpression()), !dbg !3481
  %22 = icmp eq %struct.btstack_linked_item* %21, null, !dbg !3483
  br i1 %22, label %23, label %5, !dbg !3483, !llvm.loop !3495

; <label>:23:                                     ; preds = %18
  br label %24, !dbg !3498

; <label>:24:                                     ; preds = %23, %1
  %25 = phi i32 [ 0, %1 ], [ %19, %23 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()), !dbg !3498
  %26 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 6), align 2, !dbg !3499, !tbaa !2906
  %27 = icmp eq i8 %26, 0, !dbg !3501
  br i1 %27, label %32, label %28, !dbg !3502

; <label>:28:                                     ; preds = %24
  %29 = zext i8 %26 to i32, !dbg !3503
  %30 = sub i32 %29, %25, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %30, metadata !3478, metadata !DIExpression()), !dbg !3498
  %31 = icmp slt i32 %30, 0, !dbg !3506
  br i1 %31, label %37, label %32, !dbg !3508

; <label>:32:                                     ; preds = %28, %24
  %33 = phi i32 [ %30, %28 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i32 %33, metadata !3478, metadata !DIExpression()), !dbg !3498
  switch i32 %0, label %35 [
    i32 254, label %37
    i32 255, label %34
  ], !dbg !3509

; <label>:34:                                     ; preds = %32
  br label %37, !dbg !3510

; <label>:35:                                     ; preds = %32
  %36 = select i1 %27, i32 1, i32 %33, !dbg !3512
  br label %37, !dbg !3512

; <label>:37:                                     ; preds = %35, %34, %32, %28
  %38 = phi i32 [ 1, %34 ], [ 0, %28 ], [ 0, %32 ], [ %36, %35 ]
  ret i32 %38, !dbg !3513
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @hci_can_send_acl_le_packet_now() local_unnamed_addr #13 section ".bt_stack_code" !dbg !3514 {
  %1 = load i8, i8* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 3), align 1, !dbg !3515, !tbaa !1900
  %2 = icmp eq i8 %1, 0, !dbg !3517
  br i1 %2, label %3, label %7, !dbg !3518

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata i32 0, metadata !3519, metadata !DIExpression()), !dbg !3522
  %4 = tail call fastcc i32 @hci_number_free_acl_slots_for_connection_type(i32 0) #14, !dbg !3524
  %5 = icmp sgt i32 %4, 0, !dbg !3525
  %6 = zext i1 %5 to i32, !dbg !3525
  br label %7, !dbg !3526

; <label>:7:                                      ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ 0, %0 ]
  ret i32 %8, !dbg !3527
}

; Function Attrs: nounwind optsize
define hidden void @gap_le_get_own_address(i16 zeroext, i8* nocapture, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3528 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !3532, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8* %1, metadata !3533, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* %2, metadata !3534, metadata !DIExpression()), !dbg !3539
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !3540
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #15, !dbg !3540
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !3535, metadata !DIExpression()), !dbg !3541
  %6 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !3542
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %6, metadata !3536, metadata !DIExpression()), !dbg !3543
  %7 = icmp eq %struct.__le_hci_connection* %6, null, !dbg !3544
  br i1 %7, label %13, label %8, !dbg !3546

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 19, !dbg !3547
  %10 = load i32, i32* %9, align 4, !dbg !3547, !tbaa !3549
  %11 = trunc i32 %10 to i8, !dbg !3550
  store i8 %11, i8* %1, align 1, !dbg !3551, !tbaa !660
  %12 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 18, i32 0, !dbg !3552
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %5, i8* %12, i32 6, i32 1, i1 false), !dbg !3552
  br label %15, !dbg !3553

; <label>:13:                                     ; preds = %3
  store i8 0, i8* %1, align 1, !dbg !3554, !tbaa !660
  %14 = call i32 @le_controller_get_mac(i8* nonnull %5) #14, !dbg !3556
  br label %15

; <label>:15:                                     ; preds = %13, %8
  call void @swapX(i8* nonnull %5, i8* %2, i32 6) #14, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #15, !dbg !3558
  ret void, !dbg !3558
}

; Function Attrs: optsize
declare void @swapX(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @gap_le_get_own_id_address(i16 zeroext, i8* nocapture, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3559 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !3561, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %1, metadata !3562, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i8* %2, metadata !3563, metadata !DIExpression()), !dbg !3568
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !3569
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #15, !dbg !3569
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !3564, metadata !DIExpression()), !dbg !3570
  %6 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %6, metadata !3565, metadata !DIExpression()), !dbg !3572
  store i8 0, i8* %1, align 1, !dbg !3573, !tbaa !660
  %7 = icmp eq %struct.__le_hci_connection* %6, null, !dbg !3574
  br i1 %7, label %10, label %8, !dbg !3576

; <label>:8:                                      ; preds = %3
  %9 = call i32 @le_controller_get_mac(i8* nonnull %5) #14, !dbg !3577
  call void @swapX(i8* nonnull %5, i8* %2, i32 6) #14, !dbg !3579
  br label %11, !dbg !3580

; <label>:10:                                     ; preds = %3
  tail call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 6, i32 1, i1 false), !dbg !3581
  br label %11

; <label>:11:                                     ; preds = %10, %8
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #15, !dbg !3583
  ret void, !dbg !3583
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gap_le_get_own_address_type(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3584 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3588, metadata !DIExpression()), !dbg !3590
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !3591
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !3589, metadata !DIExpression()), !dbg !3592
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3593
  br i1 %3, label %8, label %4, !dbg !3595

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 19, !dbg !3596
  %6 = load i32, i32* %5, align 4, !dbg !3596, !tbaa !3549
  %7 = trunc i32 %6 to i8, !dbg !3598
  br label %8, !dbg !3599

; <label>:8:                                      ; preds = %4, %1
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9, !dbg !3600
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gap_le_get_own_address_random_type(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3601 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3603, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8 0, metadata !3604, metadata !DIExpression()), !dbg !3607
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !3608
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !3605, metadata !DIExpression()), !dbg !3609
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3610
  br i1 %3, label %17, label %4, !dbg !3612

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 19, !dbg !3613
  %6 = load i32, i32* %5, align 4, !dbg !3613, !tbaa !3549
  %7 = icmp eq i32 %6, 0, !dbg !3615
  br i1 %7, label %17, label %8, !dbg !3616

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 18, i32 0, !dbg !3618
  tail call void @put_buf(i8* %9, i32 6) #14, !dbg !3620
  %10 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 18, i32 5, !dbg !3621
  %11 = load i8, i8* %10, align 1, !dbg !3621, !tbaa !660
  %12 = and i8 %11, -64, !dbg !3622
  %13 = icmp ugt i8 %11, -65, !dbg !3623
  %14 = select i1 %13, i8 1, i8 2, !dbg !3623
  %15 = icmp eq i8 %12, 64, !dbg !3623
  %16 = select i1 %15, i8 3, i8 %14, !dbg !3623
  br label %17, !dbg !3623

; <label>:17:                                     ; preds = %8, %4, %1
  %18 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %16, %8 ]
  call void @llvm.dbg.value(metadata i8 %18, metadata !3604, metadata !DIExpression()), !dbg !3607
  ret i8 %18, !dbg !3624
}

; Function Attrs: nounwind optsize
define hidden i32 @gap_le_update_connection_parameters(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3625 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3629, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i16 %1, metadata !3630, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i16 %2, metadata !3631, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i16 %3, metadata !3632, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i16 %4, metadata !3633, metadata !DIExpression()), !dbg !3639
  %6 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #16, !dbg !3640
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %6, metadata !3634, metadata !DIExpression()), !dbg !3641
  %7 = icmp eq %struct.__le_hci_connection* %6, null, !dbg !3642
  br i1 %7, label %14, label %8, !dbg !3644

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 7, !dbg !3645
  store i16 %1, i16* %9, align 2, !dbg !3646, !tbaa !2050
  %10 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 8, !dbg !3647
  store i16 %2, i16* %10, align 4, !dbg !3648, !tbaa !2055
  %11 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 9, !dbg !3649
  store i16 %3, i16* %11, align 2, !dbg !3650, !tbaa !2057
  %12 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 10, !dbg !3651
  store i16 %4, i16* %12, align 4, !dbg !3652, !tbaa !2059
  %13 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %6, i32 0, i32 5, !dbg !3653
  store i32 3, i32* %13, align 4, !dbg !3654, !tbaa !1961
  tail call fastcc void @hci_run_for_acl_data_send() #16, !dbg !3655
  br label %14, !dbg !3656

; <label>:14:                                     ; preds = %8, %5
  %15 = phi i32 [ 0, %8 ], [ 2, %5 ]
  ret i32 %15, !dbg !3657
}

; Function Attrs: nounwind optsize
define hidden void @gap_le_get_connection_parameter_range(%struct.le_connection_parameter_range* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3658 {
  call void @llvm.dbg.value(metadata %struct.le_connection_parameter_range* %0, metadata !3663, metadata !DIExpression()), !dbg !3664
  %2 = bitcast %struct.le_connection_parameter_range* %0 to i8*, !dbg !3665
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast (%struct.le_connection_parameter_range* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8) to i8*), i32 12, i32 2, i1 false), !dbg !3665, !tbaa.struct !3666
  ret void, !dbg !3667
}

; Function Attrs: nounwind optsize
define hidden void @gap_le_set_connection_parameter_range(%struct.le_connection_parameter_range* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3668 {
  call void @llvm.dbg.value(metadata %struct.le_connection_parameter_range* %0, metadata !3670, metadata !DIExpression()), !dbg !3671
  %2 = bitcast %struct.le_connection_parameter_range* %0 to i8*, !dbg !3672
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.le_connection_parameter_range* getelementptr inbounds (%struct.__le_hci_stack, %struct.__le_hci_stack* @le_hci_stack, i32 0, i32 8) to i8*), i8* %2, i32 12, i32 2, i1 false), !dbg !3672, !tbaa.struct !3666
  ret void, !dbg !3673
}

; Function Attrs: nounwind optsize
define hidden void @hci_send_keypress(i8*, i32, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3678, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 %1, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i8 %2, metadata !3680, metadata !DIExpression()), !dbg !3683
  %4 = icmp eq i8 %2, 6, !dbg !3684
  br i1 %4, label %5, label %6, !dbg !3686

; <label>:5:                                      ; preds = %3
  tail call void @lmp_hci_send_keypress_notification(i8* %0, i8 zeroext 0) #14, !dbg !3687
  tail call void @lmp_hci_send_keypress_notification(i8* %0, i8 zeroext 1) #14, !dbg !3689
  br label %9, !dbg !3690

; <label>:6:                                      ; preds = %3
  tail call void @lmp_hci_send_keypress_notification(i8* %0, i8 zeroext 1) #14, !dbg !3689
  %7 = icmp eq i8 %2, 1, !dbg !3691
  br i1 %7, label %8, label %9, !dbg !3690

; <label>:8:                                      ; preds = %6
  tail call void @lmp_hci_send_keypress_notification(i8* %0, i8 zeroext 4) #14, !dbg !3693
  tail call void @lmp_hci_user_keypress_request_reply(i8* %0, i32 %1) #14, !dbg !3695
  br label %9, !dbg !3696

; <label>:9:                                      ; preds = %8, %6, %5
  ret void, !dbg !3697
}

; Function Attrs: optsize
declare void @lmp_hci_send_keypress_notification(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_user_keypress_request_reply(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_user_confirmation_request(i8 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3698 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i8* %1, metadata !3703, metadata !DIExpression()), !dbg !3705
  %3 = icmp eq i8 %0, 0, !dbg !3706
  br i1 %3, label %5, label %4, !dbg !3708

; <label>:4:                                      ; preds = %2
  tail call void @lmp_hci_user_confirmation_request_reply(i8* %1) #14, !dbg !3709
  br label %6, !dbg !3711

; <label>:5:                                      ; preds = %2
  tail call void @lmp_hci_user_confirmation_request_negative_reply(i8* %1) #14, !dbg !3712
  br label %6

; <label>:6:                                      ; preds = %5, %4
  ret void, !dbg !3714
}

; Function Attrs: optsize
declare void @lmp_hci_user_confirmation_request_reply(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lmp_hci_user_confirmation_request_negative_reply(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @hci_vendor_update_name() local_unnamed_addr #0 section ".bt_stack_code" !dbg !3715 {
  %1 = tail call i8* @bt_get_local_name() #16, !dbg !3716
  tail call void @lmp_hci_write_local_name(i8* %1) #14, !dbg !3717
  ret void, !dbg !3719
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @btstcak_get_bt_mode() local_unnamed_addr #5 section ".bt_stack_code" !dbg !3720 {
  %1 = load i8, i8* @hci_bt_mode, align 1, !dbg !3721, !tbaa !660
  ret i8 %1, !dbg !3722
}

; Function Attrs: nounwind optsize
define hidden void @gap_store_link_key_for_bd_addr(i8*, i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !3723 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i8* %1, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 %2, metadata !3730, metadata !DIExpression()), !dbg !3733
  %4 = bitcast i8* %0 to [6 x i8]*, !dbg !3734
  %5 = bitcast i8* %1 to [16 x i8]*, !dbg !3735
  %6 = trunc i32 %2 to i8, !dbg !3736
  %7 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !3737, !tbaa !720
  %8 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %7, i32 0, i32 9, !dbg !3739
  %9 = load i32, i32* %8, align 1, !dbg !3739
  %10 = lshr i32 %9, 20, !dbg !3739
  %11 = lshr i32 %9, 6, !dbg !3740
  %12 = or i32 %10, %11, !dbg !3741
  %13 = trunc i32 %12 to i8, !dbg !3737
  %14 = and i8 %13, 1, !dbg !3737
  tail call void @put_link_key([6 x i8]* %4, [16 x i8]* %5, i8 zeroext %6, i8 zeroext %14) #14, !dbg !3742
  ret void, !dbg !3744
}

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_min(i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @btstack_memory_le_hci_connection_get() local_unnamed_addr #2

; Function Attrs: optsize
declare void @btstack_linked_list_add(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @le_hci_send_acl_packet(i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ll_hci_connection_update(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @user_send_cmd_prepare(i32, i16 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!650, !651}
!llvm.ident = !{!652}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !649, line: 190, type: !468, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !401, globals: !561)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/hci_transport/hci_vendor.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !13, !21, !121, !128, !134, !141, !147, !201, !218, !224, !228, !236, !243, !255}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1469, size: 32, elements: !7)
!6 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_PUBLIC", value: 0)
!9 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_RANDOM", value: 1)
!10 = !DIEnumerator(name: "BD_ADDR_TYPE_SCO", value: 254)
!11 = !DIEnumerator(name: "BD_ADDR_TYPE_CLASSIC", value: 255)
!12 = !DIEnumerator(name: "BD_ADDR_TYPE_UNKNOWN", value: 254)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 246, size: 32, elements: !15)
!14 = !DIFile(filename: "../btstack/Host/include/common/hci.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_NONE", value: 0)
!17 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_REQUEST", value: 1)
!18 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_RESPONSE", value: 2)
!19 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_CHANGE_HCI_CON_PARAMETERS", value: 3)
!20 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_DENY", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 295, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!23 = !DIEnumerator(name: "SM_GENERAL_IDLE", value: 0)
!24 = !DIEnumerator(name: "SM_GENERAL_SEND_PAIRING_FAILED", value: 1)
!25 = !DIEnumerator(name: "SM_GENERAL_TIMEOUT", value: 2)
!26 = !DIEnumerator(name: "SM_PH1_W4_USER_RESPONSE", value: 3)
!27 = !DIEnumerator(name: "SM_PH2_GET_RANDOM_TK", value: 4)
!28 = !DIEnumerator(name: "SM_PH2_W4_RANDOM_TK", value: 5)
!29 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_A", value: 6)
!30 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_A", value: 7)
!31 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_B", value: 8)
!32 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_B", value: 9)
!33 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_A", value: 10)
!34 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_A", value: 11)
!35 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_B", value: 12)
!36 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_B", value: 13)
!37 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_C", value: 14)
!38 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_C", value: 15)
!39 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_D", value: 16)
!40 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_D", value: 17)
!41 = !DIEnumerator(name: "SM_PH2_C1_SEND_PAIRING_CONFIRM", value: 18)
!42 = !DIEnumerator(name: "SM_PH2_SEND_PAIRING_RANDOM", value: 19)
!43 = !DIEnumerator(name: "SM_PH2_CALC_STK", value: 20)
!44 = !DIEnumerator(name: "SM_PH2_W4_STK", value: 21)
!45 = !DIEnumerator(name: "SM_PH2_W4_CONNECTION_ENCRYPTED", value: 22)
!46 = !DIEnumerator(name: "SM_PH3_GET_RANDOM", value: 23)
!47 = !DIEnumerator(name: "SM_PH3_W4_RANDOM", value: 24)
!48 = !DIEnumerator(name: "SM_PH3_GET_DIV", value: 25)
!49 = !DIEnumerator(name: "SM_PH3_W4_DIV", value: 26)
!50 = !DIEnumerator(name: "SM_PH3_Y_GET_ENC", value: 27)
!51 = !DIEnumerator(name: "SM_PH3_Y_W4_ENC", value: 28)
!52 = !DIEnumerator(name: "SM_PH3_LTK_GET_ENC", value: 29)
!53 = !DIEnumerator(name: "SM_PH3_LTK_W4_ENC", value: 30)
!54 = !DIEnumerator(name: "SM_PH3_CSRK_GET_ENC", value: 31)
!55 = !DIEnumerator(name: "SM_PH3_CSRK_W4_ENC", value: 32)
!56 = !DIEnumerator(name: "SM_PH3_DISTRIBUTE_KEYS", value: 33)
!57 = !DIEnumerator(name: "SM_PH3_RECEIVE_KEYS", value: 34)
!58 = !DIEnumerator(name: "SM_RESPONDER_IDLE", value: 35)
!59 = !DIEnumerator(name: "SM_RESPONDER_SEND_SECURITY_REQUEST", value: 36)
!60 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_REQUEST", value: 37)
!61 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_W4_IRK", value: 38)
!62 = !DIEnumerator(name: "SM_RESPONDER_PH0_SEND_LTK_REQUESTED_NEGATIVE_REPLY", value: 39)
!63 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_REQUEST", value: 40)
!64 = !DIEnumerator(name: "SM_RESPONDER_PH1_PAIRING_REQUEST_RECEIVED", value: 41)
!65 = !DIEnumerator(name: "SM_RESPONDER_PH1_SEND_PAIRING_RESPONSE", value: 42)
!66 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_CONFIRM", value: 43)
!67 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_PAIRING_RANDOM", value: 44)
!68 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_LTK_REQUEST", value: 45)
!69 = !DIEnumerator(name: "SM_RESPONDER_PH2_SEND_LTK_REPLY", value: 46)
!70 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_GET_ENC", value: 47)
!71 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_W4_ENC", value: 48)
!72 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_GET_ENC", value: 49)
!73 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_W4_ENC", value: 50)
!74 = !DIEnumerator(name: "SM_RESPONDER_PH4_SEND_LTK_REPLY", value: 51)
!75 = !DIEnumerator(name: "SM_INITIATOR_CONNECTED", value: 52)
!76 = !DIEnumerator(name: "SM_INITIATOR_PH0_HAS_LTK", value: 53)
!77 = !DIEnumerator(name: "SM_INITIATOR_PH0_SEND_START_ENCRYPTION", value: 54)
!78 = !DIEnumerator(name: "SM_INITIATOR_PH0_W4_CONNECTION_ENCRYPTED", value: 55)
!79 = !DIEnumerator(name: "SM_INITIATOR_PH1_W2_SEND_PAIRING_REQUEST", value: 56)
!80 = !DIEnumerator(name: "SM_INITIATOR_PH1_SEND_PAIRING_REQUEST", value: 57)
!81 = !DIEnumerator(name: "SM_INITIATOR_PH1_W4_PAIRING_RESPONSE", value: 58)
!82 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_CONFIRM", value: 59)
!83 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_RANDOM", value: 60)
!84 = !DIEnumerator(name: "SM_INITIATOR_PH3_SEND_START_ENCRYPTION", value: 61)
!85 = !DIEnumerator(name: "SM_SC_RECEIVED_LTK_REQUEST", value: 62)
!86 = !DIEnumerator(name: "SM_SC_SEND_PUBLIC_KEY_COMMAND", value: 63)
!87 = !DIEnumerator(name: "SM_SC_W4_PUBLIC_KEY_COMMAND", value: 64)
!88 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_A", value: 65)
!89 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_A", value: 66)
!90 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_B", value: 67)
!91 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_B", value: 68)
!92 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CONFIRMATION", value: 69)
!93 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CONFIRMATION", value: 70)
!94 = !DIEnumerator(name: "SM_SC_SEND_CONFIRMATION", value: 71)
!95 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CHECK_CONFIRMATION", value: 72)
!96 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CHECK_CONFIRMATION", value: 73)
!97 = !DIEnumerator(name: "SM_SC_W4_CONFIRMATION", value: 74)
!98 = !DIEnumerator(name: "SM_SC_SEND_PAIRING_RANDOM", value: 75)
!99 = !DIEnumerator(name: "SM_SC_W4_PAIRING_RANDOM", value: 76)
!100 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_G2", value: 77)
!101 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_G2", value: 78)
!102 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_DHKEY", value: 79)
!103 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_SALT", value: 80)
!104 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_SALT", value: 81)
!105 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_MACKEY", value: 82)
!106 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_MACKEY", value: 83)
!107 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_LTK", value: 84)
!108 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_LTK", value: 85)
!109 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_FOR_DHKEY_CHECK", value: 86)
!110 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_FOR_DHKEY_CHECK", value: 87)
!111 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 88)
!112 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 89)
!113 = !DIEnumerator(name: "SM_SC_W4_USER_RESPONSE", value: 90)
!114 = !DIEnumerator(name: "SM_SC_SEND_DHKEY_CHECK_COMMAND", value: 91)
!115 = !DIEnumerator(name: "SM_SC_W4_DHKEY_CHECK_COMMAND", value: 92)
!116 = !DIEnumerator(name: "SM_SC_W4_LTK_REQUEST_SC", value: 93)
!117 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_ILK", value: 94)
!118 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_ILK", value: 95)
!119 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_BR_EDR_LINK_KEY", value: 96)
!120 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_BR_EDR_LINK_KEY", value: 97)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 436, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "IRK_LOOKUP_IDLE", value: 0)
!124 = !DIEnumerator(name: "IRK_LOOKUP_W4_READY", value: 1)
!125 = !DIEnumerator(name: "IRK_LOOKUP_STARTED", value: 2)
!126 = !DIEnumerator(name: "IRK_LOOKUP_SUCCEEDED", value: 3)
!127 = !DIEnumerator(name: "IRK_LOOKUP_FAILED", value: 4)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 445, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "AUTHORIZATION_UNKNOWN", value: 0)
!131 = !DIEnumerator(name: "AUTHORIZATION_PENDING", value: 1)
!132 = !DIEnumerator(name: "AUTHORIZATION_DECLINED", value: 2)
!133 = !DIEnumerator(name: "AUTHORIZATION_GRANTED", value: 3)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 157, size: 32, elements: !136)
!135 = !DIFile(filename: "../btstack/Protocol/include/ble/att_server.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "ATT_SERVER_IDLE", value: 0)
!138 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED", value: 1)
!139 = !DIEnumerator(name: "ATT_SERVER_W4_SIGNED_WRITE_VALIDATION", value: 2)
!140 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 11, size: 32, elements: !143)
!142 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "ACTIVE_MODE", value: 0)
!145 = !DIEnumerator(name: "HOLD_MODE", value: 1)
!146 = !DIEnumerator(name: "SNIFF_MODE", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 299, size: 32, elements: !149)
!148 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!150 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!151 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!152 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!153 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!154 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!155 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!156 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!157 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!158 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!159 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!160 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!161 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!162 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!163 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!164 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!165 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!166 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!167 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!168 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!169 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!170 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!171 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!172 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!173 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!174 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!175 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!176 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!177 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!178 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!179 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!180 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!181 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!182 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!183 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!184 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!185 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!186 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!187 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!188 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!189 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!190 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!191 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!192 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!193 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!194 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!195 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!196 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!197 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!198 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!199 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!200 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 6, size: 32, elements: !203)
!202 = !DIFile(filename: "../btstack/Host/include/bredr/multi_bd.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!204 = !DIEnumerator(name: "MULTI_BD_SCO_REQ", value: 1)
!205 = !DIEnumerator(name: "MULTI_BD_SCO_CONNECTED", value: 2)
!206 = !DIEnumerator(name: "MULTI_BD_SCO_DISCONN", value: 3)
!207 = !DIEnumerator(name: "MULTI_BD_A2DP_ACTIVE", value: 4)
!208 = !DIEnumerator(name: "MULTI_BD_A2DP_STOP", value: 5)
!209 = !DIEnumerator(name: "MULTI_BD_CALL_INCOMING", value: 6)
!210 = !DIEnumerator(name: "MULTI_BD_CALL_OUTGOING", value: 7)
!211 = !DIEnumerator(name: "MULTI_BD_CALL_HANGUP", value: 8)
!212 = !DIEnumerator(name: "MULTI_BD_SET_WORK_TIME", value: 9)
!213 = !DIEnumerator(name: "MULTI_BD_CLR_WORK_TIME", value: 10)
!214 = !DIEnumerator(name: "MULTI_BD_SCAN_STATUS", value: 11)
!215 = !DIEnumerator(name: "MULTI_BD_SIRI_ACTIVE", value: 12)
!216 = !DIEnumerator(name: "MULTI_BD_SIRI_STOP", value: 13)
!217 = !DIEnumerator(name: "MULTI_BD_A2DP_CONN_CH", value: 14)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 631, size: 32, elements: !219)
!219 = !{!220, !221, !222, !223}
!220 = !DIEnumerator(name: "REMOTE_DEV_UNKNOWN", value: 0)
!221 = !DIEnumerator(name: "REMOTE_DEV_ANDROID", value: 1)
!222 = !DIEnumerator(name: "REMOTE_DEV_IOS", value: 2)
!223 = !DIEnumerator(name: "REMOTE_DEV_XIAOMI", value: 3)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1480, size: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIEnumerator(name: "HCI_POWER_OFF", value: 0)
!227 = !DIEnumerator(name: "HCI_POWER_ON", value: 1)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1489, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235}
!230 = !DIEnumerator(name: "HCI_STATE_OFF", value: 0)
!231 = !DIEnumerator(name: "HCI_STATE_INITIALIZING", value: 1)
!232 = !DIEnumerator(name: "HCI_STATE_WORKING", value: 2)
!233 = !DIEnumerator(name: "HCI_STATE_HALTING", value: 3)
!234 = !DIEnumerator(name: "HCI_STATE_SLEEPING", value: 4)
!235 = !DIEnumerator(name: "HCI_STATE_FALLING_ASLEEP", value: 5)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 112, size: 32, elements: !238)
!237 = !DIFile(filename: "../btstack/Protocol/include/ble/gap.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!238 = !{!239, !240, !241, !242}
!239 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_TYPE_OFF", value: 0)
!240 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_TYPE_STATIC", value: 1)
!241 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_NON_RESOLVABLE", value: 2)
!242 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_RESOLVABLE", value: 3)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 75, size: 32, elements: !245)
!244 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254}
!246 = !DIEnumerator(name: "COMBINATION_KEY", value: 0)
!247 = !DIEnumerator(name: "LOCAL_UNIT_KEY", value: 1)
!248 = !DIEnumerator(name: "REMOTE_UNIT_KEY", value: 2)
!249 = !DIEnumerator(name: "DEBUG_COMBINATION_KEY", value: 3)
!250 = !DIEnumerator(name: "UNAUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P192", value: 4)
!251 = !DIEnumerator(name: "AUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P192", value: 5)
!252 = !DIEnumerator(name: "CHANGED_COMBINATION_KEY", value: 6)
!253 = !DIEnumerator(name: "UNAUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P256", value: 7)
!254 = !DIEnumerator(name: "AUTHENTICATED_COMBINATION_KEY_GENERATED_FROM_P256", value: 8)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 12, size: 32, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!257 = !DIEnumerator(name: "USER_CTRL_START_CONNECTION", value: 0)
!258 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR", value: 1)
!259 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR_MANUALLY", value: 2)
!260 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_SPP_VIA_ADDR", value: 3)
!261 = !DIEnumerator(name: "USER_CTRL_DISCONNECTION_HCI", value: 4)
!262 = !DIEnumerator(name: "USER_CTRL_CONNECTION_CANCEL", value: 5)
!263 = !DIEnumerator(name: "USER_CTRL_READ_REMOTE_NAME", value: 6)
!264 = !DIEnumerator(name: "USER_CTRL_PAUSE_MUSIC", value: 7)
!265 = !DIEnumerator(name: "USER_CTRL_SCO_LINK", value: 8)
!266 = !DIEnumerator(name: "USER_CTRL_CONN_SCO", value: 9)
!267 = !DIEnumerator(name: "USER_CTRL_DISCONN_SCO", value: 10)
!268 = !DIEnumerator(name: "USER_CTRL_DISCONN_SDP_MASTER", value: 11)
!269 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_DISABLE", value: 12)
!270 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_ENABLE", value: 13)
!271 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_DISABLE", value: 14)
!272 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_ENABLE", value: 15)
!273 = !DIEnumerator(name: "USER_CTRL_SEARCH_DEVICE", value: 16)
!274 = !DIEnumerator(name: "USER_CTRL_INQUIRY_CANCEL", value: 17)
!275 = !DIEnumerator(name: "USER_CTRL_PAGE_CANCEL", value: 18)
!276 = !DIEnumerator(name: "USER_CTRL_SNIFF_IN", value: 19)
!277 = !DIEnumerator(name: "USER_CTRL_SNIFF_EXIT", value: 20)
!278 = !DIEnumerator(name: "USER_CTRL_ALL_SNIFF_EXIT", value: 21)
!279 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_BEGIN", value: 22)
!280 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_UP", value: 23)
!281 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_DOWN", value: 24)
!282 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_SET_VOLUME", value: 25)
!283 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_GET_VOLUME", value: 26)
!284 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_ANSWER", value: 27)
!285 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_HANGUP", value: 28)
!286 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_LAST_NO", value: 29)
!287 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_CURRENT", value: 30)
!288 = !DIEnumerator(name: "USER_CTRL_HFP_DTMF_TONES", value: 31)
!289 = !DIEnumerator(name: "USER_CTRL_DIAL_NUMBER", value: 32)
!290 = !DIEnumerator(name: "USER_CTRL_SEND_BATTERY", value: 33)
!291 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_STATUS", value: 34)
!292 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_OPEN", value: 35)
!293 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_CLOSE", value: 36)
!294 = !DIEnumerator(name: "USER_CTRL_HFP_GET_PHONE_DATE_TIME", value: 37)
!295 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_SEND_BIA", value: 38)
!296 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_GET_MANUFACTURER", value: 39)
!297 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_UPDATE_BATTARY", value: 40)
!298 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1", value: 41)
!299 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2", value: 42)
!300 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1X", value: 43)
!301 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2X", value: 44)
!302 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER3", value: 45)
!303 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_REJECT", value: 46)
!304 = !DIEnumerator(name: "USER_CTRL_HFP_DISCONNECT", value: 47)
!305 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_END", value: 48)
!306 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_BEGIN", value: 49)
!307 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PLAY", value: 50)
!308 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PAUSE", value: 51)
!309 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_STOP", value: 52)
!310 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_NEXT", value: 53)
!311 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PREV", value: 54)
!312 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_FORWARD", value: 55)
!313 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REWIND", value: 56)
!314 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REPEAT_MODE", value: 57)
!315 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SHUFFLE_MODE", value: 58)
!316 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_PLAY_TIME", value: 59)
!317 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SEND_VOL", value: 60)
!318 = !DIEnumerator(name: "USER_CTRL_AVCTP_DISCONNECT", value: 61)
!319 = !DIEnumerator(name: "USER_CTRL_AVCTP_CONN", value: 62)
!320 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_END", value: 63)
!321 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_BEGIN", value: 64)
!322 = !DIEnumerator(name: "USER_CTRL_AUTO_CONN_A2DP", value: 65)
!323 = !DIEnumerator(name: "USER_CTRL_CONN_A2DP", value: 66)
!324 = !DIEnumerator(name: "USER_CTRL_DISCONN_A2DP", value: 67)
!325 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_START", value: 68)
!326 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_CLOSE", value: 69)
!327 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_SUSPEND", value: 70)
!328 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_GET_CONFIGURATION", value: 71)
!329 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_ABORT", value: 72)
!330 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_END", value: 73)
!331 = !DIEnumerator(name: "USER_CTRL_POWER_OFF", value: 74)
!332 = !DIEnumerator(name: "USER_CTRL_POWER_ON", value: 75)
!333 = !DIEnumerator(name: "USER_CTRL_HID_CMD_BEGIN", value: 76)
!334 = !DIEnumerator(name: "USER_CTRL_HID_CONN", value: 77)
!335 = !DIEnumerator(name: "USER_CTRL_HID_ANDROID", value: 78)
!336 = !DIEnumerator(name: "USER_CTRL_HID_IOS", value: 79)
!337 = !DIEnumerator(name: "USER_CTRL_HID_BOTH", value: 80)
!338 = !DIEnumerator(name: "USER_CTRL_HID_DISCONNECT", value: 81)
!339 = !DIEnumerator(name: "USER_CTRL_HID_HOME", value: 82)
!340 = !DIEnumerator(name: "USER_CTRL_HID_RETURN", value: 83)
!341 = !DIEnumerator(name: "USER_CTRL_HID_LEFTARROW", value: 84)
!342 = !DIEnumerator(name: "USER_CTRL_HID_RIGHTARROW", value: 85)
!343 = !DIEnumerator(name: "USER_CTRL_HID_VOL_UP", value: 86)
!344 = !DIEnumerator(name: "USER_CTRL_HID_VOL_DOWN", value: 87)
!345 = !DIEnumerator(name: "USER_CTRL_HID_SEND_DATA", value: 88)
!346 = !DIEnumerator(name: "USER_CTRL_HID_CMD_END", value: 89)
!347 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_BEGIN", value: 90)
!348 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN", value: 91)
!349 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN", value: 92)
!350 = !DIEnumerator(name: "USER_CTRL_MONITOR", value: 93)
!351 = !DIEnumerator(name: "USER_CTRL_TWS_CONNEC_VIA_ADDR", value: 94)
!352 = !DIEnumerator(name: "USER_CTRL_TWS_COTROL_CDM", value: 95)
!353 = !DIEnumerator(name: "USER_CTRL_TWS_CLEAR_INFO", value: 96)
!354 = !DIEnumerator(name: "USER_CTRL_TWS_DISCONNECTION_HCI", value: 97)
!355 = !DIEnumerator(name: "USER_CTRL_TWS_START_CONNECTION", value: 98)
!356 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM", value: 99)
!357 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_SBC_CDM", value: 100)
!358 = !DIEnumerator(name: "USER_CTRL_TWS_RESTART_SBC_CDM", value: 101)
!359 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_CANCEL", value: 102)
!360 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN_CANCEL", value: 103)
!361 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM_FUN", value: 104)
!362 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_START", value: 105)
!363 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_CLOSE", value: 106)
!364 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_END", value: 107)
!365 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_BEGIN", value: 108)
!366 = !DIEnumerator(name: "USER_CTRL_SPP_SEND_DATA", value: 109)
!367 = !DIEnumerator(name: "USER_CTRL_SPP_TRY_SEND_DATA", value: 110)
!368 = !DIEnumerator(name: "USER_CTRL_SPP_UPDATA_DATA", value: 111)
!369 = !DIEnumerator(name: "USER_CTRL_SPP_DISCONNECT", value: 112)
!370 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_END", value: 113)
!371 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_BEGIN", value: 114)
!372 = !DIEnumerator(name: "USER_CTRL_PBG_SEND_DATA", value: 115)
!373 = !DIEnumerator(name: "USER_CTRL_PBG_TRY_SEND_DATA", value: 116)
!374 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_END", value: 117)
!375 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_BEGIN", value: 118)
!376 = !DIEnumerator(name: "USER_CTRL_ADT_CONNECT", value: 119)
!377 = !DIEnumerator(name: "USER_CTRL_ADT_KEY_MIC_OPEN", value: 120)
!378 = !DIEnumerator(name: "USER_CTRL_ADT_SEND_DATA", value: 121)
!379 = !DIEnumerator(name: "USER_CTRL_ADT_TRY_SEND_DATA", value: 122)
!380 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_END", value: 123)
!381 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_BEGIN", value: 124)
!382 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_PART", value: 125)
!383 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_ALL", value: 126)
!384 = !DIEnumerator(name: "USER_CTRL_PBAP_STOP_READING", value: 127)
!385 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_END", value: 128)
!386 = !DIEnumerator(name: "USER_CTRL_DEL_ALL_REMOTE_INFO", value: 129)
!387 = !DIEnumerator(name: "USER_CTRL_TEST_KEY", value: 130)
!388 = !DIEnumerator(name: "USER_CTRL_SEND_USER_INFO", value: 131)
!389 = !DIEnumerator(name: "USER_CTRL_KEYPRESS", value: 132)
!390 = !DIEnumerator(name: "USER_CTRL_PAIR", value: 133)
!391 = !DIEnumerator(name: "USER_CTRL_AFH_CHANNEL", value: 134)
!392 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_CREATE", value: 135)
!393 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_DEL", value: 136)
!394 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_INC", value: 137)
!395 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_DEC", value: 138)
!396 = !DIEnumerator(name: "USER_CTRL_CMD_CHANGE_PROFILE_MODE", value: 139)
!397 = !DIEnumerator(name: "USER_CTRL_CMD_RESERVE_INDEX4", value: 140)
!398 = !DIEnumerator(name: "USER_CTRL_CMD_RESUME_STACK", value: 141)
!399 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_MUSIC_INFO", value: 142)
!400 = !DIEnumerator(name: "USER_CTRL_LAST", value: 143)
!401 = !{!402, !425, !539, !540, !541, !428, !546, !557, !558, !556, !488, !559}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_hci_connection_t", file: !14, line: 605, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__le_hci_connection", file: !14, line: 571, size: 9792, elements: !405)
!405 = !{!406, !414, !423, !427, !429, !430, !432, !433, !434, !435, !436, !437, !470, !529, !533, !534, !535, !536, !537, !538}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !404, file: !14, line: 572, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !408, line: 100, baseType: !409)
!408 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !408, line: 55, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !408, line: 53, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !408, line: 54, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !404, file: !14, line: 574, baseType: !415, size: 48, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !416, line: 7, baseType: !417)
!416 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 48, elements: !421)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !419, line: 44, baseType: !420)
!419 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!420 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!421 = !{!422}
!422 = !DISubrange(count: 6)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !404, file: !14, line: 576, baseType: !424, size: 16, offset: 80)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !416, line: 9, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !419, line: 46, baseType: !426)
!426 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !404, file: !14, line: 578, baseType: !428, size: 32, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_type_t", file: !6, line: 1475, baseType: !5)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !404, file: !14, line: 581, baseType: !418, size: 8, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_parameter_update_state", scope: !404, file: !14, line: 584, baseType: !431, size: 32, offset: 160)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_con_parameter_update_state_t", file: !14, line: 252, baseType: !13)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_param_update_identifier", scope: !404, file: !14, line: 585, baseType: !418, size: 8, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !404, file: !14, line: 586, baseType: !425, size: 16, offset: 208)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !404, file: !14, line: 587, baseType: !425, size: 16, offset: 224)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency", scope: !404, file: !14, line: 588, baseType: !425, size: 16, offset: 240)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout", scope: !404, file: !14, line: 589, baseType: !425, size: 16, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection", scope: !404, file: !14, line: 592, baseType: !438, size: 448, offset: 288)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_connection_t", file: !14, line: 475, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sm_connection", file: !14, line: 456, size: 448, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !449, !451, !452, !453, !454, !459, !461, !462, !466, !467, !469}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sm_handle", scope: !439, file: !14, line: 457, baseType: !424, size: 16)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sm_role", scope: !439, file: !14, line: 458, baseType: !418, size: 8, offset: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sm_security_request_received", scope: !439, file: !14, line: 459, baseType: !418, size: 8, offset: 24)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sm_bonding_requested", scope: !439, file: !14, line: 460, baseType: !418, size: 8, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_addr_type", scope: !439, file: !14, line: 461, baseType: !418, size: 8, offset: 40)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_address", scope: !439, file: !14, line: 462, baseType: !415, size: 48, offset: 48)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sm_engine_state", scope: !439, file: !14, line: 463, baseType: !448, size: 32, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_manager_state_t", file: !14, line: 433, baseType: !21)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sm_irk_lookup_state", scope: !439, file: !14, line: 464, baseType: !450, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "irk_lookup_state_t", file: !14, line: 442, baseType: !121)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_encrypted", scope: !439, file: !14, line: 465, baseType: !418, size: 8, offset: 160)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authenticated", scope: !439, file: !14, line: 466, baseType: !418, size: 8, offset: 168)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sm_actual_encryption_key_size", scope: !439, file: !14, line: 467, baseType: !418, size: 8, offset: 176)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_preq", scope: !439, file: !14, line: 468, baseType: !455, size: 56, offset: 184)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_pairing_packet_t", file: !14, line: 452, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 56, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 7)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authorization_state", scope: !439, file: !14, line: 469, baseType: !460, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "authorization_state_t", file: !14, line: 450, baseType: !128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ediv", scope: !439, file: !14, line: 470, baseType: !425, size: 16, offset: 288)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_rand", scope: !439, file: !14, line: 471, baseType: !463, size: 64, offset: 304)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 64, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 8)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sm_disconn_reason", scope: !439, file: !14, line: 472, baseType: !418, size: 8, offset: 368)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sm_le_db_index", scope: !439, file: !14, line: 473, baseType: !468, size: 32, offset: 384)
!468 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sm_timeout_id", scope: !439, file: !14, line: 474, baseType: !468, size: 32, offset: 416)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "att_server", scope: !404, file: !14, line: 595, baseType: !471, size: 4640, offset: 736)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_t", file: !135, line: 187, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 164, size: 4640, elements: !473)
!473 = !{!474, !476, !477, !478, !479, !480, !481, !502, !513, !514, !518, !519, !520, !521, !522, !523}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !472, file: !135, line: 165, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_state_t", file: !135, line: 162, baseType: !134)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr_type", scope: !472, file: !135, line: 167, baseType: !418, size: 8, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address", scope: !472, file: !135, line: 168, baseType: !415, size: 48, offset: 40)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ir_le_device_db_index", scope: !472, file: !135, line: 170, baseType: !468, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ir_lookup_active", scope: !472, file: !135, line: 171, baseType: !468, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_handle", scope: !472, file: !135, line: 173, baseType: !468, size: 32, offset: 160)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_timer", scope: !472, file: !135, line: 174, baseType: !482, size: 160, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !483, line: 19, baseType: !484)
!483 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !483, line: 7, size: 160, elements: !485)
!485 = !{!486, !487, !490, !491, !492, !493, !494, !495, !500}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !484, file: !483, line: 8, baseType: !409, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !484, file: !483, line: 10, baseType: !488, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !419, line: 48, baseType: !489)
!489 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !484, file: !483, line: 11, baseType: !488, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !484, file: !483, line: 12, baseType: !488, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !484, file: !483, line: 13, baseType: !488, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !484, file: !483, line: 14, baseType: !488, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !484, file: !483, line: 15, baseType: !488, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !484, file: !483, line: 17, baseType: !496, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 32)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !484, file: !483, line: 18, baseType: !501, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !472, file: !135, line: 176, baseType: !503, size: 80, offset: 352)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_connection_t", file: !504, line: 41, baseType: !505)
!504 = !DIFile(filename: "../btstack/Protocol/include/ble/att_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_connection", file: !504, line: 34, size: 80, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !505, file: !504, line: 35, baseType: !424, size: 16)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !505, file: !504, line: 36, baseType: !425, size: 16, offset: 16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !505, file: !504, line: 37, baseType: !425, size: 16, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_key_size", scope: !505, file: !504, line: 38, baseType: !418, size: 8, offset: 48)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !505, file: !504, line: 39, baseType: !418, size: 8, offset: 56)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !505, file: !504, line: 40, baseType: !418, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "request_size", scope: !472, file: !135, line: 178, baseType: !425, size: 16, offset: 432)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffer", scope: !472, file: !135, line: 179, baseType: !515, size: 4136, offset: 448)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 4136, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 517)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flow_hold_flag", scope: !472, file: !135, line: 181, baseType: !418, size: 1, offset: 4584, flags: DIFlagBitField, extraData: i64 4584)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_request_flag", scope: !472, file: !135, line: 182, baseType: !418, size: 1, offset: 4585, flags: DIFlagBitField, extraData: i64 4584)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "check_remote_tag", scope: !472, file: !135, line: 183, baseType: !418, size: 3, offset: 4586, flags: DIFlagBitField, extraData: i64 4584)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "request_busy", scope: !472, file: !135, line: 184, baseType: !418, size: 1, offset: 4589, flags: DIFlagBitField, extraData: i64 4584)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reserverd", scope: !472, file: !135, line: 185, baseType: !418, size: 2, offset: 4590, flags: DIFlagBitField, extraData: i64 4584)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "result_callback", scope: !472, file: !135, line: 186, baseType: !524, size: 32, offset: 4608)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 32)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527, !528}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !419, line: 46, baseType: !426)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !419, line: 44, baseType: !420)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_buffer", scope: !404, file: !14, line: 597, baseType: !530, size: 4232, offset: 5376)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 4232, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 529)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_pos", scope: !404, file: !14, line: 598, baseType: !425, size: 16, offset: 9616)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_length", scope: !404, file: !14, line: 599, baseType: !425, size: 16, offset: 9632)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "num_acl_packets_sent", scope: !404, file: !14, line: 600, baseType: !418, size: 8, offset: 9648)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "own_id_address", scope: !404, file: !14, line: 602, baseType: !415, size: 48, offset: 9656)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "own_address", scope: !404, file: !14, line: 603, baseType: !415, size: 48, offset: 9704)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "own_address_type", scope: !404, file: !14, line: 604, baseType: !428, size: 32, offset: 9760)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "link_key_t", file: !244, line: 73, baseType: !543)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 128, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 16)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_callback_registration_t", file: !6, line: 64, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 61, size: 64, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !548, file: !6, line: 62, baseType: !407, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !548, file: !6, line: 63, baseType: !552, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !6, line: 58, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 32)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !418, !425, !556, !425}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 32)
!560 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!561 = !{!0, !562, !566, !569, !580, !582, !585, !599, !601, !604, !606, !608, !610, !637, !639, !641, !643, !645}
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "hci_le_event_mask", scope: !2, file: !3, line: 46, type: !564, isLocal: false, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 64, elements: !464)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "hci_le_mac_addr", scope: !2, file: !3, line: 57, type: !568, isLocal: false, isDefinition: true)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "hci_reset", scope: !2, file: !3, line: 63, type: !571, isLocal: false, isDefinition: true)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_cmd_t", file: !573, line: 508, baseType: !574)
!573 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/bluetooth.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 505, size: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !574, file: !573, line: 506, baseType: !425, size: 16)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !574, file: !573, line: 507, baseType: !578, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "le_event_mask", scope: !2, file: !3, line: 69, type: !564, isLocal: false, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "mac_addr", scope: !2, file: !3, line: 72, type: !584, isLocal: false, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 48, elements: !421)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "inquiry_result", scope: !2, file: !3, line: 92, type: !587, isLocal: false, isDefinition: true)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry_result_t", file: !3, line: 89, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__inquiry_result_t", file: !3, line: 80, size: 120, elements: !590)
!590 = !{!591, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "priv_version", scope: !589, file: !3, line: 83, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 64, elements: !464)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "priv_version_len", scope: !589, file: !3, line: 84, baseType: !528, size: 3, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "user_flag", scope: !589, file: !3, line: 85, baseType: !528, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dev_match", scope: !589, file: !3, line: 86, baseType: !528, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !589, file: !3, line: 87, baseType: !528, size: 3, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !589, file: !3, line: 88, baseType: !598, size: 48, offset: 72)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 48, elements: !421)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "hci_bt_mode", scope: !2, file: !3, line: 94, type: !528, isLocal: false, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "g_le_tws_search_aa", scope: !2, file: !3, line: 1366, type: !603, isLocal: false, isDefinition: true)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !419, line: 48, baseType: !489)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "g_le_tws_pair_aa", scope: !2, file: !3, line: 1367, type: !603, isLocal: false, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "g_le_tws_connect_aa", scope: !2, file: !3, line: 1368, type: !603, isLocal: false, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(name: "code_buf", scope: !2, file: !3, line: 1370, type: !598, isLocal: false, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "le_hci_stack", scope: !2, file: !3, line: 77, type: !612, isLocal: false, isDefinition: true)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_hci_stack_t", file: !14, line: 618, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__le_hci_stack", file: !14, line: 607, size: 4448, elements: !614)
!614 = !{!615, !617, !618, !622, !623, !624, !625, !626, !627}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "le_hci_connection", scope: !613, file: !14, line: 608, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !408, line: 101, baseType: !558)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "le_hci_event_handlers", scope: !613, file: !14, line: 609, baseType: !616, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "hci_packet_buffer", scope: !613, file: !14, line: 611, baseType: !619, size: 4200, offset: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 4200, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 525)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "hci_packet_buffer_reserved", scope: !613, file: !14, line: 612, baseType: !418, size: 8, offset: 4264)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "acl_fragmentation_pos", scope: !613, file: !14, line: 613, baseType: !425, size: 16, offset: 4272)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "acl_fragmentation_total_size", scope: !613, file: !14, line: 614, baseType: !425, size: 16, offset: 4288)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "le_acl_packets_total_num", scope: !613, file: !14, line: 615, baseType: !418, size: 8, offset: 4304)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "le_data_packets_length", scope: !613, file: !14, line: 616, baseType: !425, size: 16, offset: 4320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "le_connection_parameter_range", scope: !613, file: !14, line: 617, baseType: !628, size: 96, offset: 4336)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_connection_parameter_range_t", file: !237, line: 110, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "le_connection_parameter_range", file: !237, line: 103, size: 96, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !629, file: !237, line: 104, baseType: !425, size: 16)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !629, file: !237, line: 105, baseType: !425, size: 16, offset: 16)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency_min", scope: !629, file: !237, line: 106, baseType: !425, size: 16, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency_max", scope: !629, file: !237, line: 107, baseType: !425, size: 16, offset: 48)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout_min", scope: !629, file: !237, line: 108, baseType: !425, size: 16, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout_max", scope: !629, file: !237, line: 109, baseType: !425, size: 16, offset: 80)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "_inquiry_result", scope: !2, file: !3, line: 91, type: !588, isLocal: false, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "inquiry_spp_device", scope: !2, file: !3, line: 95, type: !528, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "hci_event_callback_registration", scope: !2, file: !3, line: 97, type: !547, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "hci_scan_control", scope: !2, file: !3, line: 1558, type: !528, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "hci_packet_type_sizes", scope: !2, file: !3, line: 1646, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 256, elements: !544)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!649 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!650 = !{i32 2, !"Dwarf Version", i32 4}
!651 = !{i32 2, !"Debug Info Version", i32 3}
!652 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!653 = distinct !DISubprogram(name: "set_start_search_spp_device", scope: !3, file: !3, line: 111, type: !654, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !528}
!656 = !{!657}
!657 = !DILocalVariable(name: "spp", arg: 1, scope: !653, file: !3, line: 111, type: !528)
!658 = !DILocation(line: 111, column: 37, scope: !653)
!659 = !DILocation(line: 113, column: 24, scope: !653)
!660 = !{!661, !661, i64 0}
!661 = !{!"omnipotent char", !662, i64 0}
!662 = !{!"Simple C/C++ TBAA"}
!663 = !DILocation(line: 114, column: 1, scope: !653)
!664 = distinct !DISubprogram(name: "connection_address_for_handle", scope: !3, file: !3, line: 116, type: !665, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!540, !424}
!667 = !{!668}
!668 = !DILocalVariable(name: "con_handle", arg: 1, scope: !664, file: !3, line: 116, type: !424)
!669 = !DILocation(line: 116, column: 52, scope: !664)
!670 = !DILocation(line: 118, column: 48, scope: !664)
!671 = !DILocation(line: 118, column: 12, scope: !664)
!672 = !DILocation(line: 118, column: 5, scope: !664)
!673 = distinct !DISubprogram(name: "connection_handler_for_address", scope: !3, file: !3, line: 121, type: !674, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{!603, !556, !528}
!676 = !{!677, !678}
!677 = !DILocalVariable(name: "address", arg: 1, scope: !673, file: !3, line: 121, type: !556)
!678 = !DILocalVariable(name: "linktype", arg: 2, scope: !673, file: !3, line: 121, type: !528)
!679 = !DILocation(line: 121, column: 46, scope: !673)
!680 = !DILocation(line: 121, column: 58, scope: !673)
!681 = !DILocation(line: 123, column: 57, scope: !673)
!682 = !DILocation(line: 123, column: 12, scope: !673)
!683 = !DILocation(line: 123, column: 5, scope: !673)
!684 = distinct !DISubprogram(name: "hci_number_outgoing_packets", scope: !3, file: !3, line: 126, type: !685, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!528, !424}
!687 = !{!688}
!688 = !DILocalVariable(name: "handle", arg: 1, scope: !684, file: !3, line: 126, type: !424)
!689 = !DILocation(line: 126, column: 49, scope: !684)
!690 = !DILocation(line: 128, column: 5, scope: !684)
!691 = distinct !DISubprogram(name: "bt_get_mac_addr", scope: !3, file: !3, line: 131, type: !692, isLocal: false, isDefinition: true, scopeLine: 132, isOptimized: true, unit: !2, variables: !695)
!692 = !DISubroutineType(types: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 32)
!695 = !{}
!696 = !DILocation(line: 133, column: 5, scope: !691)
!697 = distinct !DISubprogram(name: "bt_get_local_name", scope: !3, file: !3, line: 136, type: !698, isLocal: false, isDefinition: true, scopeLine: 137, isOptimized: true, unit: !2, variables: !695)
!698 = !DISubroutineType(types: !699)
!699 = !{!578}
!700 = !DILocation(line: 138, column: 5, scope: !697)
!701 = distinct !DISubprogram(name: "bt_get_hid_name", scope: !3, file: !3, line: 140, type: !698, isLocal: false, isDefinition: true, scopeLine: 141, isOptimized: true, unit: !2, variables: !695)
!702 = !DILocation(line: 143, column: 5, scope: !701)
!703 = distinct !DISubprogram(name: "bt_get_emitter_pin_code", scope: !3, file: !3, line: 146, type: !704, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{!578, !528}
!706 = !{!707}
!707 = !DILocalVariable(name: "flag", arg: 1, scope: !703, file: !3, line: 146, type: !528)
!708 = !DILocation(line: 146, column: 62, scope: !703)
!709 = !DILocation(line: 148, column: 14, scope: !710)
!710 = distinct !DILexicalBlock(scope: !703, file: !3, line: 148, column: 9)
!711 = !DILocation(line: 149, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !710, file: !3, line: 148, column: 20)
!713 = !DILocation(line: 152, column: 1, scope: !703)
!714 = distinct !DISubprogram(name: "bt_get_pin_code", scope: !3, file: !3, line: 153, type: !698, isLocal: false, isDefinition: true, scopeLine: 154, isOptimized: true, unit: !2, variables: !695)
!715 = !DILocation(line: 155, column: 5, scope: !714)
!716 = distinct !DISubprogram(name: "get_remote_dev_info_index", scope: !3, file: !3, line: 158, type: !717, isLocal: false, isDefinition: true, scopeLine: 159, isOptimized: true, unit: !2, variables: !695)
!717 = !DISubroutineType(types: !718)
!718 = !{!528}
!719 = !DILocation(line: 160, column: 12, scope: !716)
!720 = !{!721, !721, i64 0}
!721 = !{!"any pointer", !661, i64 0}
!722 = !DILocation(line: 160, column: 32, scope: !716)
!723 = !DILocation(line: 160, column: 69, scope: !716)
!724 = !DILocation(line: 160, column: 47, scope: !716)
!725 = !DILocation(line: 160, column: 5, scope: !716)
!726 = distinct !DISubprogram(name: "hci_emit_state", scope: !3, file: !3, line: 163, type: !727, isLocal: false, isDefinition: true, scopeLine: 164, isOptimized: true, unit: !2, variables: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null}
!729 = !{!730}
!730 = !DILocalVariable(name: "event", scope: !726, file: !3, line: 165, type: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 24, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 3)
!734 = !DILocation(line: 171, column: 1, scope: !726)
!735 = distinct !DISubprogram(name: "hci_emit_nr_connections_delete", scope: !3, file: !3, line: 211, type: !736, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !528, !528, !556}
!738 = !{!739, !740, !741, !742}
!739 = !DILocalVariable(name: "reason", arg: 1, scope: !735, file: !3, line: 211, type: !528)
!740 = !DILocalVariable(name: "link_type", arg: 2, scope: !735, file: !3, line: 211, type: !528)
!741 = !DILocalVariable(name: "address", arg: 3, scope: !735, file: !3, line: 211, type: !556)
!742 = !DILocalVariable(name: "event", scope: !735, file: !3, line: 213, type: !743)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 80, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 10)
!746 = !DILocation(line: 211, column: 40, scope: !735)
!747 = !DILocation(line: 211, column: 51, scope: !735)
!748 = !DILocation(line: 211, column: 72, scope: !735)
!749 = !DILocation(line: 213, column: 5, scope: !735)
!750 = !DILocation(line: 213, column: 8, scope: !735)
!751 = !DILocation(line: 215, column: 14, scope: !735)
!752 = !DILocation(line: 216, column: 5, scope: !735)
!753 = !DILocation(line: 216, column: 14, scope: !735)
!754 = !DILocation(line: 217, column: 5, scope: !735)
!755 = !DILocation(line: 217, column: 14, scope: !735)
!756 = !DILocation(line: 218, column: 5, scope: !735)
!757 = !DILocation(line: 218, column: 14, scope: !735)
!758 = !DILocation(line: 219, column: 19, scope: !735)
!759 = !DILocation(line: 219, column: 5, scope: !735)
!760 = !DILocation(line: 220, column: 5, scope: !735)
!761 = !DILocation(line: 221, column: 1, scope: !735)
!762 = distinct !DISubprogram(name: "hci_emit_btstack_version", scope: !3, file: !3, line: 224, type: !727, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !763)
!763 = !{!764}
!764 = !DILocalVariable(name: "event", scope: !762, file: !3, line: 226, type: !598)
!765 = !DILocation(line: 226, column: 5, scope: !762)
!766 = !DILocation(line: 226, column: 8, scope: !762)
!767 = !DILocation(line: 229, column: 14, scope: !762)
!768 = !DILocation(line: 230, column: 5, scope: !762)
!769 = !DILocation(line: 230, column: 14, scope: !762)
!770 = !DILocation(line: 231, column: 5, scope: !762)
!771 = !DILocation(line: 231, column: 14, scope: !762)
!772 = !DILocation(line: 232, column: 5, scope: !762)
!773 = !DILocation(line: 232, column: 14, scope: !762)
!774 = !DILocation(line: 233, column: 5, scope: !762)
!775 = !DILocation(line: 234, column: 5, scope: !762)
!776 = !DILocation(line: 235, column: 1, scope: !762)
!777 = distinct !DISubprogram(name: "hci_emit_remote_name_cached", scope: !3, file: !3, line: 238, type: !778, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !539, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "device_name_t", file: !244, line: 96, baseType: !782)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 1992, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 249)
!785 = !{!786, !787, !788}
!786 = !DILocalVariable(name: "addr", arg: 1, scope: !777, file: !3, line: 238, type: !539)
!787 = !DILocalVariable(name: "name", arg: 2, scope: !777, file: !3, line: 238, type: !780)
!788 = !DILocalVariable(name: "event", scope: !777, file: !3, line: 240, type: !789)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 2064, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 258)
!792 = !DILocation(line: 238, column: 45, scope: !777)
!793 = !DILocation(line: 238, column: 66, scope: !777)
!794 = !DILocation(line: 240, column: 5, scope: !777)
!795 = !DILocation(line: 240, column: 8, scope: !777)
!796 = !DILocation(line: 241, column: 14, scope: !777)
!797 = !DILocation(line: 242, column: 5, scope: !777)
!798 = !DILocation(line: 242, column: 14, scope: !777)
!799 = !DILocation(line: 243, column: 5, scope: !777)
!800 = !DILocation(line: 243, column: 14, scope: !777)
!801 = !DILocation(line: 244, column: 19, scope: !777)
!802 = !DILocation(line: 244, column: 29, scope: !777)
!803 = !DILocation(line: 244, column: 5, scope: !777)
!804 = !DILocation(line: 245, column: 13, scope: !777)
!805 = !DILocation(line: 245, column: 5, scope: !777)
!806 = !DILocation(line: 247, column: 5, scope: !777)
!807 = !DILocation(line: 247, column: 20, scope: !777)
!808 = !DILocation(line: 249, column: 5, scope: !777)
!809 = !DILocation(line: 250, column: 1, scope: !777)
!810 = distinct !DISubprogram(name: "le_hci_connection_for_bd_addr_and_type", scope: !3, file: !3, line: 307, type: !811, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!402, !556, !428}
!813 = !{!814, !815, !816, !823}
!814 = !DILocalVariable(name: "addr", arg: 1, scope: !810, file: !3, line: 307, type: !556)
!815 = !DILocalVariable(name: "addr_type", arg: 2, scope: !810, file: !3, line: 307, type: !428)
!816 = !DILocalVariable(name: "it", scope: !810, file: !3, line: 309, type: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_iterator_t", file: !408, line: 65, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 61, size: 96, elements: !819)
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "advance_on_next", scope: !818, file: !408, line: 62, baseType: !468, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !818, file: !408, line: 63, baseType: !558, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !818, file: !408, line: 64, baseType: !558, size: 32, offset: 64)
!823 = !DILocalVariable(name: "connection", scope: !824, file: !3, line: 312, type: !402)
!824 = distinct !DILexicalBlock(scope: !810, file: !3, line: 311, column: 56)
!825 = !DILocation(line: 307, column: 72, scope: !810)
!826 = !DILocation(line: 307, column: 93, scope: !810)
!827 = !DILocation(line: 309, column: 5, scope: !810)
!828 = !DILocation(line: 309, column: 36, scope: !810)
!829 = !DILocation(line: 310, column: 5, scope: !810)
!830 = !DILocation(line: 311, column: 5, scope: !810)
!831 = !DILocation(line: 311, column: 12, scope: !832)
!832 = !DILexicalBlockFile(scope: !810, file: !3, discriminator: 1)
!833 = !DILocation(line: 311, column: 5, scope: !832)
!834 = !DILocation(line: 312, column: 67, scope: !824)
!835 = !DILocation(line: 313, column: 25, scope: !836)
!836 = distinct !DILexicalBlock(scope: !824, file: !3, line: 313, column: 13)
!837 = !{!838, !661, i64 12}
!838 = !{!"__le_hci_connection", !839, i64 0, !661, i64 4, !840, i64 10, !661, i64 12, !661, i64 16, !661, i64 20, !661, i64 24, !840, i64 26, !840, i64 28, !840, i64 30, !840, i64 32, !841, i64 36, !843, i64 92, !661, i64 672, !840, i64 1202, !840, i64 1204, !661, i64 1206, !661, i64 1207, !661, i64 1213, !661, i64 1220}
!839 = !{!"btstack_linked_item", !721, i64 0}
!840 = !{!"short", !661, i64 0}
!841 = !{!"sm_connection", !840, i64 0, !661, i64 2, !661, i64 3, !661, i64 4, !661, i64 5, !661, i64 6, !661, i64 12, !661, i64 16, !661, i64 20, !661, i64 21, !661, i64 22, !661, i64 23, !661, i64 32, !840, i64 36, !661, i64 38, !661, i64 46, !842, i64 48, !842, i64 52}
!842 = !{!"int", !661, i64 0}
!843 = !{!"", !661, i64 0, !661, i64 4, !661, i64 5, !842, i64 12, !842, i64 16, !842, i64 20, !844, i64 24, !845, i64 44, !840, i64 54, !661, i64 56, !661, i64 573, !661, i64 573, !661, i64 573, !661, i64 573, !661, i64 573, !721, i64 576}
!844 = !{!"btstack_timer_source", !839, i64 0, !842, i64 4, !842, i64 8, !842, i64 10, !842, i64 10, !842, i64 10, !842, i64 10, !721, i64 12, !721, i64 16}
!845 = !{!"att_connection", !840, i64 0, !840, i64 2, !840, i64 4, !661, i64 6, !661, i64 7, !661, i64 8}
!846 = !DILocation(line: 313, column: 38, scope: !836)
!847 = !DILocation(line: 313, column: 13, scope: !824)
!848 = distinct !{!848, !830, !849}
!849 = !DILocation(line: 320, column: 5, scope: !810)
!850 = !DILocation(line: 316, column: 38, scope: !851)
!851 = distinct !DILexicalBlock(scope: !824, file: !3, line: 316, column: 13)
!852 = !DILocation(line: 316, column: 26, scope: !851)
!853 = !DILocation(line: 316, column: 13, scope: !851)
!854 = !DILocation(line: 316, column: 50, scope: !851)
!855 = !DILocation(line: 312, column: 43, scope: !824)
!856 = !DILocation(line: 322, column: 1, scope: !810)
!857 = distinct !DISubprogram(name: "read_remote_name_handle", scope: !3, file: !3, line: 357, type: !858, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !578}
!860 = !{!861}
!861 = !DILocalVariable(name: "name", arg: 1, scope: !857, file: !3, line: 357, type: !578)
!862 = !DILocation(line: 357, column: 42, scope: !857)
!863 = !DILocation(line: 361, column: 5, scope: !857)
!864 = !DILocation(line: 362, column: 1, scope: !857)
!865 = distinct !DISubprogram(name: "get_last_device_connect_linkkey", scope: !3, file: !3, line: 367, type: !866, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !869)
!866 = !DISubroutineType(types: !867)
!867 = !{!540, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 32)
!869 = !{!870}
!870 = !DILocalVariable(name: "len", arg: 1, scope: !865, file: !3, line: 367, type: !868)
!871 = !DILocation(line: 367, column: 42, scope: !865)
!872 = !DILocation(line: 369, column: 10, scope: !865)
!873 = !{!840, !840, i64 0}
!874 = !DILocation(line: 370, column: 5, scope: !865)
!875 = distinct !DISubprogram(name: "hci_event_handler", scope: !3, file: !3, line: 373, type: !876, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !540}
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !892, !894, !900, !901, !908, !910, !911, !914}
!879 = !DILocalVariable(name: "packet", arg: 1, scope: !875, file: !3, line: 373, type: !540)
!880 = !DILocalVariable(name: "addr", scope: !875, file: !3, line: 375, type: !540)
!881 = !DILocalVariable(name: "link_type", scope: !875, file: !3, line: 376, type: !528)
!882 = !DILocalVariable(name: "dev_type", scope: !875, file: !3, line: 377, type: !528)
!883 = !DILocalVariable(name: "handle", scope: !875, file: !3, line: 378, type: !527)
!884 = !DILocalVariable(name: "i", scope: !875, file: !3, line: 379, type: !468)
!885 = !DILocalVariable(name: "num_packets", scope: !875, file: !3, line: 380, type: !527)
!886 = !DILocalVariable(name: "temp_addr_buf", scope: !875, file: !3, line: 381, type: !598)
!887 = !DILocalVariable(name: "addr_type", scope: !875, file: !3, line: 382, type: !428)
!888 = !DILocalVariable(name: "status", scope: !875, file: !3, line: 383, type: !528)
!889 = !DILocalVariable(name: "conn", scope: !875, file: !3, line: 384, type: !402)
!890 = !DILocalVariable(name: "g", scope: !891, file: !3, line: 481, type: !603)
!891 = distinct !DILexicalBlock(scope: !875, file: !3, line: 391, column: 24)
!892 = !DILocalVariable(name: "offset", scope: !893, file: !3, line: 519, type: !468)
!893 = distinct !DILexicalBlock(scope: !891, file: !3, line: 518, column: 49)
!894 = !DILocalVariable(name: "num_packets", scope: !895, file: !3, line: 531, type: !425)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 523, column: 45)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 523, column: 13)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 523, column: 13)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 522, column: 54)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 522, column: 13)
!900 = !DILocalVariable(name: "conn", scope: !895, file: !3, line: 534, type: !402)
!901 = !DILocalVariable(name: "dev_type", scope: !902, file: !3, line: 610, type: !528)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 608, column: 58)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 608, column: 21)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 606, column: 46)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 606, column: 17)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 605, column: 25)
!907 = distinct !DILexicalBlock(scope: !891, file: !3, line: 605, column: 13)
!908 = !DILocalVariable(name: "link_key", scope: !909, file: !3, line: 677, type: !542)
!909 = distinct !DILexicalBlock(scope: !891, file: !3, line: 676, column: 9)
!910 = !DILocalVariable(name: "get_link_key_res", scope: !909, file: !3, line: 678, type: !468)
!911 = !DILocalVariable(name: "pin_code", scope: !912, file: !3, line: 718, type: !913)
!912 = distinct !DILexicalBlock(scope: !891, file: !3, line: 717, column: 9)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 128, elements: !544)
!914 = !DILocalVariable(name: "reason", scope: !891, file: !3, line: 768, type: !528)
!915 = !DILocalVariable(name: "event", scope: !916, file: !3, line: 334, type: !931)
!916 = distinct !DISubprogram(name: "le_handle_advertisement_report", scope: !3, file: !3, line: 325, type: !917, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !556, !425}
!919 = !{!920, !921, !922, !923, !924, !915, !925, !929, !930}
!920 = !DILocalVariable(name: "packet", arg: 1, scope: !916, file: !3, line: 325, type: !556)
!921 = !DILocalVariable(name: "size", arg: 2, scope: !916, file: !3, line: 325, type: !425)
!922 = !DILocalVariable(name: "offset", scope: !916, file: !3, line: 328, type: !468)
!923 = !DILocalVariable(name: "num_reports", scope: !916, file: !3, line: 329, type: !468)
!924 = !DILocalVariable(name: "i", scope: !916, file: !3, line: 332, type: !468)
!925 = !DILocalVariable(name: "data_length", scope: !926, file: !3, line: 336, type: !418)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 335, column: 56)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 335, column: 5)
!928 = distinct !DILexicalBlock(scope: !916, file: !3, line: 335, column: 5)
!929 = !DILocalVariable(name: "event_size", scope: !926, file: !3, line: 337, type: !418)
!930 = !DILocalVariable(name: "pos", scope: !926, file: !3, line: 338, type: !468)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 344, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 43)
!934 = !DILocation(line: 334, column: 13, scope: !916, inlinedAt: !935)
!935 = distinct !DILocation(line: 828, column: 17, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 821, column: 32)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 820, column: 54)
!938 = distinct !DILexicalBlock(scope: !891, file: !3, line: 820, column: 13)
!939 = !DILocalVariable(name: "remote_name", scope: !940, file: !3, line: 2332, type: !954)
!940 = distinct !DISubprogram(name: "hci_event_extended_inquiry_result1", scope: !3, file: !3, line: 2323, type: !941, isLocal: true, isDefinition: true, scopeLine: 2324, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !540, !468}
!943 = !{!944, !945, !946, !947, !948, !949, !950, !951, !952, !939, !953}
!944 = !DILocalVariable(name: "packet", arg: 1, scope: !940, file: !3, line: 2323, type: !540)
!945 = !DILocalVariable(name: "len", arg: 2, scope: !940, file: !3, line: 2323, type: !468)
!946 = !DILocalVariable(name: "p", scope: !940, file: !3, line: 2325, type: !540)
!947 = !DILocalVariable(name: "name_cmp_flag", scope: !940, file: !3, line: 2326, type: !528)
!948 = !DILocalVariable(name: "dev_class", scope: !940, file: !3, line: 2327, type: !603)
!949 = !DILocalVariable(name: "res", scope: !940, file: !3, line: 2328, type: !528)
!950 = !DILocalVariable(name: "rssi", scope: !940, file: !3, line: 2329, type: !560)
!951 = !DILocalVariable(name: "dev_class_full", scope: !940, file: !3, line: 2330, type: !603)
!952 = !DILocalVariable(name: "remote_name_len", scope: !940, file: !3, line: 2331, type: !527)
!953 = !DILocalVariable(name: "callback_flag", scope: !940, file: !3, line: 2388, type: !528)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 256, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 32)
!957 = !DILocation(line: 2332, column: 8, scope: !940, inlinedAt: !958)
!958 = distinct !DILocation(line: 598, column: 17, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 597, column: 38)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 597, column: 17)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 596, column: 55)
!962 = distinct !DILexicalBlock(scope: !891, file: !3, line: 596, column: 13)
!963 = !DILocation(line: 373, column: 28, scope: !875)
!964 = !DILocation(line: 375, column: 9, scope: !875)
!965 = !DILocation(line: 377, column: 8, scope: !875)
!966 = !DILocation(line: 378, column: 9, scope: !875)
!967 = !DILocation(line: 391, column: 13, scope: !875)
!968 = !DILocation(line: 391, column: 5, scope: !875)
!969 = !DILocation(line: 415, column: 18, scope: !891)
!970 = !DILocation(line: 416, column: 52, scope: !891)
!971 = !DILocation(line: 416, column: 16, scope: !891)
!972 = !DILocation(line: 417, column: 13, scope: !973)
!973 = distinct !DILexicalBlock(scope: !891, file: !3, line: 417, column: 13)
!974 = !DILocation(line: 417, column: 13, scope: !891)
!975 = !DILocation(line: 418, column: 13, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 418, column: 13)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 417, column: 38)
!978 = !DILocation(line: 418, column: 13, scope: !977)
!979 = !DILocation(line: 418, column: 13, scope: !980)
!980 = !DILexicalBlockFile(scope: !976, file: !3, discriminator: 1)
!981 = !DILocation(line: 419, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 419, column: 13)
!983 = !DILocation(line: 419, column: 13, scope: !977)
!984 = !DILocation(line: 419, column: 13, scope: !985)
!985 = !DILexicalBlockFile(scope: !982, file: !3, discriminator: 1)
!986 = !DILocation(line: 420, column: 25, scope: !977)
!987 = !DILocation(line: 421, column: 103, scope: !977)
!988 = !DILocation(line: 421, column: 13, scope: !977)
!989 = !DILocation(line: 424, column: 9, scope: !977)
!990 = !DILocation(line: 425, column: 13, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 425, column: 13)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 424, column: 46)
!993 = distinct !DILexicalBlock(scope: !973, file: !3, line: 424, column: 20)
!994 = !DILocation(line: 425, column: 13, scope: !992)
!995 = !DILocation(line: 425, column: 13, scope: !996)
!996 = !DILexicalBlockFile(scope: !991, file: !3, discriminator: 1)
!997 = !DILocation(line: 426, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !992, file: !3, line: 426, column: 13)
!999 = !DILocation(line: 426, column: 13, scope: !992)
!1000 = !DILocation(line: 426, column: 13, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !998, file: !3, discriminator: 1)
!1002 = !DILocation(line: 427, column: 25, scope: !992)
!1003 = !DILocation(line: 428, column: 103, scope: !992)
!1004 = !DILocation(line: 428, column: 13, scope: !992)
!1005 = !DILocation(line: 431, column: 9, scope: !992)
!1006 = !DILocation(line: 434, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !891, file: !3, line: 434, column: 9)
!1008 = !DILocation(line: 434, column: 9, scope: !891)
!1009 = !DILocation(line: 434, column: 9, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1007, file: !3, discriminator: 1)
!1011 = !DILocation(line: 435, column: 13, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !891, file: !3, line: 435, column: 13)
!1013 = !DILocation(line: 435, column: 23, scope: !1012)
!1014 = !DILocation(line: 435, column: 13, scope: !891)
!1015 = !DILocation(line: 436, column: 13, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 435, column: 29)
!1017 = !DILocation(line: 437, column: 9, scope: !1016)
!1018 = !DILocation(line: 439, column: 56, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 437, column: 16)
!1020 = !DILocation(line: 439, column: 20, scope: !1019)
!1021 = !DILocation(line: 441, column: 17, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 441, column: 17)
!1023 = !{!842, !842, i64 0}
!1024 = !DILocation(line: 441, column: 17, scope: !1019)
!1025 = !DILocation(line: 442, column: 33, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 441, column: 41)
!1027 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 442, column: 52, scope: !1026)
!1029 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !1028)
!1030 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !1028)
!1031 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !1028)
!1032 = !DILocation(line: 442, column: 17, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 1)
!1034 = !DILocation(line: 443, column: 13, scope: !1026)
!1035 = !DILocation(line: 445, column: 17, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 445, column: 17)
!1037 = !DILocation(line: 445, column: 27, scope: !1036)
!1038 = !DILocation(line: 445, column: 17, scope: !1019)
!1039 = !DILocation(line: 448, column: 17, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 447, column: 20)
!1041 = !DILocation(line: 454, column: 18, scope: !891)
!1042 = !DILocation(line: 456, column: 22, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !891, file: !3, line: 456, column: 13)
!1044 = !DILocation(line: 456, column: 20, scope: !1043)
!1045 = !DILocation(line: 456, column: 13, scope: !891)
!1046 = !DILocation(line: 457, column: 60, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 456, column: 45)
!1048 = !DILocation(line: 457, column: 80, scope: !1047)
!1049 = !{!1050, !840, i64 4}
!1050 = !{!"_stack_config", !842, i64 0, !840, i64 4, !840, i64 6, !840, i64 8, !840, i64 10, !840, i64 12, !661, i64 14, !661, i64 15, !661, i64 16, !661, i64 17, !661, i64 17, !661, i64 17, !661, i64 17, !661, i64 18, !661, i64 18, !661, i64 18, !661, i64 18, !661, i64 18, !661, i64 18, !661, i64 18, !661, i64 18, !661, i64 19, !661, i64 19, !661, i64 19, !661, i64 19, !661, i64 19, !661, i64 19, !661, i64 19, !661, i64 19, !661, i64 20, !661, i64 20, !661, i64 20, !661, i64 21, !661, i64 22, !661, i64 23, !661, i64 24, !661, i64 25, !661, i64 31, !661, i64 31}
!1051 = !DILocation(line: 457, column: 13, scope: !1047)
!1052 = !DILocation(line: 458, column: 9, scope: !1047)
!1053 = !DILocation(line: 464, column: 9, scope: !891)
!1054 = !DILocation(line: 466, column: 16, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 1)
!1056 = !DILocation(line: 466, column: 9, scope: !1055)
!1057 = !DILocation(line: 467, column: 13, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !891, file: !3, line: 466, column: 45)
!1059 = distinct !{!1059, !1060, !1061}
!1060 = !DILocation(line: 466, column: 9, scope: !891)
!1061 = !DILocation(line: 468, column: 9, scope: !891)
!1062 = !DILocation(line: 470, column: 9, scope: !891)
!1063 = !DILocation(line: 472, column: 17, scope: !891)
!1064 = !DILocation(line: 474, column: 51, scope: !891)
!1065 = !DILocation(line: 474, column: 71, scope: !891)
!1066 = !DILocation(line: 475, column: 65, scope: !891)
!1067 = !DILocation(line: 475, column: 110, scope: !891)
!1068 = !DILocation(line: 474, column: 9, scope: !891)
!1069 = !DILocation(line: 476, column: 9, scope: !891)
!1070 = !DILocation(line: 480, column: 17, scope: !891)
!1071 = !DILocation(line: 481, column: 18, scope: !891)
!1072 = !DILocation(line: 481, column: 13, scope: !891)
!1073 = !DILocation(line: 483, column: 69, scope: !891)
!1074 = !DILocation(line: 483, column: 9, scope: !891)
!1075 = !DILocation(line: 484, column: 9, scope: !891)
!1076 = !DILocation(line: 488, column: 17, scope: !891)
!1077 = !DILocation(line: 489, column: 9, scope: !891)
!1078 = !DILocation(line: 490, column: 9, scope: !891)
!1079 = !DILocation(line: 494, column: 17, scope: !891)
!1080 = !DILocation(line: 495, column: 80, scope: !891)
!1081 = !DILocation(line: 495, column: 9, scope: !891)
!1082 = !DILocation(line: 496, column: 9, scope: !891)
!1083 = !DILocation(line: 500, column: 17, scope: !891)
!1084 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 501, column: 18, scope: !891)
!1086 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !1085)
!1087 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !1085)
!1088 = !DILocation(line: 502, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !891, file: !3, line: 502, column: 13)
!1090 = !DILocation(line: 502, column: 13, scope: !891)
!1091 = !DILocation(line: 503, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 502, column: 24)
!1093 = !DILocation(line: 505, column: 9, scope: !1092)
!1094 = !DILocation(line: 510, column: 13, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !891, file: !3, line: 510, column: 13)
!1096 = !DILocation(line: 510, column: 13, scope: !891)
!1097 = !DILocation(line: 511, column: 39, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 510, column: 54)
!1099 = !DILocation(line: 511, column: 49, scope: !1098)
!1100 = !DILocation(line: 511, column: 13, scope: !1098)
!1101 = !DILocation(line: 512, column: 9, scope: !1098)
!1102 = !DILocation(line: 519, column: 13, scope: !893)
!1103 = !DILocation(line: 522, column: 13, scope: !899)
!1104 = !DILocation(line: 522, column: 13, scope: !893)
!1105 = !DILocation(line: 379, column: 9, scope: !875)
!1106 = !DILocation(line: 523, column: 29, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 1)
!1108 = !DILocation(line: 523, column: 27, scope: !1107)
!1109 = !DILocation(line: 523, column: 13, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !897, file: !3, discriminator: 1)
!1111 = !DILocation(line: 524, column: 26, scope: !895)
!1112 = !DILocation(line: 526, column: 30, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !895, file: !3, line: 526, column: 21)
!1114 = !DILocation(line: 526, column: 28, scope: !1113)
!1115 = !DILocation(line: 526, column: 21, scope: !895)
!1116 = !DILocation(line: 530, column: 24, scope: !895)
!1117 = !DILocation(line: 531, column: 40, scope: !895)
!1118 = !DILocation(line: 531, column: 26, scope: !895)
!1119 = !DILocation(line: 532, column: 24, scope: !895)
!1120 = !DILocation(line: 534, column: 45, scope: !895)
!1121 = !DILocation(line: 534, column: 38, scope: !895)
!1122 = !DILocation(line: 535, column: 22, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !895, file: !3, line: 535, column: 21)
!1124 = !DILocation(line: 535, column: 21, scope: !895)
!1125 = !DILocation(line: 539, column: 27, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !895, file: !3, line: 539, column: 21)
!1127 = !{!838, !661, i64 1206}
!1128 = !DILocation(line: 539, column: 21, scope: !1126)
!1129 = !DILocation(line: 539, column: 51, scope: !1126)
!1130 = !DILocation(line: 539, column: 48, scope: !1126)
!1131 = !DILocation(line: 541, column: 48, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 539, column: 64)
!1133 = !DILocation(line: 539, column: 21, scope: !895)
!1134 = !DILocation(line: 545, column: 13, scope: !896)
!1135 = !DILocation(line: 523, column: 41, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !896, file: !3, discriminator: 2)
!1137 = distinct !{!1137, !1138, !1139}
!1138 = !DILocation(line: 523, column: 13, scope: !897)
!1139 = !DILocation(line: 545, column: 13, scope: !897)
!1140 = !DILocation(line: 552, column: 17, scope: !891)
!1141 = !DILocation(line: 554, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !891, file: !3, line: 554, column: 9)
!1143 = !DILocation(line: 554, column: 9, scope: !891)
!1144 = !DILocation(line: 554, column: 9, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1142, file: !3, discriminator: 1)
!1146 = !DILocation(line: 556, column: 14, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !891, file: !3, line: 556, column: 13)
!1148 = !DILocation(line: 556, column: 44, scope: !1147)
!1149 = !DILocation(line: 557, column: 17, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 557, column: 17)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 556, column: 78)
!1152 = !DILocation(line: 557, column: 17, scope: !1151)
!1153 = !DILocation(line: 561, column: 13, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !891, file: !3, line: 561, column: 13)
!1155 = !DILocation(line: 561, column: 13, scope: !891)
!1156 = !DILocation(line: 563, column: 17, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 563, column: 17)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 561, column: 42)
!1159 = !DILocation(line: 563, column: 37, scope: !1157)
!1160 = !DILocation(line: 563, column: 17, scope: !1158)
!1161 = !DILocation(line: 564, column: 17, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 563, column: 53)
!1163 = !DILocation(line: 565, column: 13, scope: !1162)
!1164 = !DILocation(line: 566, column: 17, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 565, column: 20)
!1166 = !DILocation(line: 569, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 568, column: 49)
!1168 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 568, column: 20)
!1169 = !DILocation(line: 570, column: 9, scope: !1167)
!1170 = !DILocation(line: 571, column: 13, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 570, column: 50)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 570, column: 20)
!1173 = !DILocation(line: 573, column: 9, scope: !1171)
!1174 = !DILocation(line: 575, column: 13, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 573, column: 16)
!1176 = !DILocation(line: 579, column: 13, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !891, file: !3, line: 579, column: 13)
!1178 = !DILocation(line: 579, column: 13, scope: !891)
!1179 = !DILocation(line: 580, column: 13, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 580, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 579, column: 55)
!1182 = !DILocation(line: 580, column: 13, scope: !1181)
!1183 = !DILocation(line: 580, column: 13, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1180, file: !3, discriminator: 1)
!1185 = !DILocation(line: 583, column: 73, scope: !1181)
!1186 = !DILocation(line: 584, column: 37, scope: !1181)
!1187 = !DILocation(line: 584, column: 53, scope: !1181)
!1188 = !DILocation(line: 583, column: 13, scope: !1181)
!1189 = !DILocation(line: 586, column: 17, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 586, column: 17)
!1191 = !DILocation(line: 586, column: 27, scope: !1190)
!1192 = !DILocation(line: 586, column: 17, scope: !1181)
!1193 = !DILocation(line: 587, column: 34, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 586, column: 33)
!1195 = !DILocalVariable(name: "remote_info", arg: 1, scope: !1196, file: !3, line: 2468, type: !587)
!1196 = distinct !DISubprogram(name: "inquiry_complete", scope: !3, file: !3, line: 2468, type: !1197, isLocal: true, isDefinition: true, scopeLine: 2469, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !587}
!1199 = !{!1195}
!1200 = !DILocation(line: 2468, column: 48, scope: !1196, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 587, column: 17, scope: !1194)
!1202 = !DILocation(line: 2470, column: 22, scope: !1203, inlinedAt: !1201)
!1203 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 2470, column: 9)
!1204 = !DILocation(line: 2470, column: 9, scope: !1203, inlinedAt: !1201)
!1205 = !DILocation(line: 2470, column: 9, scope: !1196, inlinedAt: !1201)
!1206 = !DILocation(line: 2471, column: 32, scope: !1207, inlinedAt: !1201)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 2470, column: 33)
!1208 = !DILocation(line: 2474, column: 9, scope: !1207, inlinedAt: !1201)
!1209 = !DILocation(line: 2476, column: 13, scope: !1210, inlinedAt: !1201)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 2476, column: 13)
!1211 = !DILocation(line: 2476, column: 13, scope: !1207, inlinedAt: !1201)
!1212 = !DILocation(line: 2477, column: 32, scope: !1213, inlinedAt: !1201)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 2476, column: 33)
!1214 = !DILocation(line: 2478, column: 75, scope: !1213, inlinedAt: !1201)
!1215 = !DILocation(line: 2478, column: 13, scope: !1213, inlinedAt: !1201)
!1216 = !DILocation(line: 2479, column: 9, scope: !1213, inlinedAt: !1201)
!1217 = !DILocation(line: 2480, column: 71, scope: !1218, inlinedAt: !1201)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 2479, column: 16)
!1219 = !DILocation(line: 2480, column: 13, scope: !1218, inlinedAt: !1201)
!1220 = !DILocation(line: 596, column: 13, scope: !962)
!1221 = !DILocation(line: 597, column: 17, scope: !960)
!1222 = !DILocation(line: 596, column: 13, scope: !891)
!1223 = !DILocation(line: 598, column: 64, scope: !959)
!1224 = !DILocation(line: 2323, column: 64, scope: !940, inlinedAt: !958)
!1225 = !DILocation(line: 2325, column: 14, scope: !940, inlinedAt: !958)
!1226 = !DILocation(line: 2325, column: 9, scope: !940, inlinedAt: !958)
!1227 = !DILocation(line: 2326, column: 8, scope: !940, inlinedAt: !958)
!1228 = !DILocation(line: 2327, column: 9, scope: !940, inlinedAt: !958)
!1229 = !DILocation(line: 2328, column: 8, scope: !940, inlinedAt: !958)
!1230 = !DILocation(line: 2329, column: 17, scope: !940, inlinedAt: !958)
!1231 = !DILocation(line: 2329, column: 10, scope: !940, inlinedAt: !958)
!1232 = !DILocation(line: 2330, column: 9, scope: !940, inlinedAt: !958)
!1233 = !DILocation(line: 2332, column: 5, scope: !940, inlinedAt: !958)
!1234 = !DILocation(line: 2337, column: 9, scope: !1235, inlinedAt: !958)
!1235 = distinct !DILexicalBlock(scope: !940, file: !3, line: 2337, column: 9)
!1236 = !DILocation(line: 2337, column: 25, scope: !1235, inlinedAt: !958)
!1237 = !DILocation(line: 2337, column: 9, scope: !940, inlinedAt: !958)
!1238 = !DILocation(line: 2341, column: 9, scope: !940, inlinedAt: !958)
!1239 = !DILocation(line: 2342, column: 5, scope: !940, inlinedAt: !958)
!1240 = !DILocation(line: 2343, column: 18, scope: !940, inlinedAt: !958)
!1241 = !DILocation(line: 2343, column: 48, scope: !940, inlinedAt: !958)
!1242 = !DILocation(line: 2343, column: 5, scope: !940, inlinedAt: !958)
!1243 = !DILocation(line: 2346, column: 22, scope: !940, inlinedAt: !958)
!1244 = !DILocation(line: 2347, column: 32, scope: !940, inlinedAt: !958)
!1245 = !DILocation(line: 2350, column: 35, scope: !1246, inlinedAt: !958)
!1246 = distinct !DILexicalBlock(scope: !940, file: !3, line: 2350, column: 9)
!1247 = !DILocation(line: 2357, column: 9, scope: !1248, inlinedAt: !958)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 2357, column: 9)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 2355, column: 36)
!1250 = !DILocation(line: 2357, column: 9, scope: !1249, inlinedAt: !958)
!1251 = !DILocation(line: 2357, column: 9, scope: !1252, inlinedAt: !958)
!1252 = !DILexicalBlockFile(scope: !1248, file: !3, discriminator: 1)
!1253 = !DILocation(line: 2363, column: 13, scope: !1254, inlinedAt: !958)
!1254 = distinct !DILexicalBlock(scope: !940, file: !3, line: 2363, column: 9)
!1255 = !DILocation(line: 2363, column: 9, scope: !940, inlinedAt: !958)
!1256 = !DILocation(line: 2388, column: 8, scope: !940, inlinedAt: !958)
!1257 = !DILocation(line: 2390, column: 16, scope: !1258, inlinedAt: !958)
!1258 = !DILexicalBlockFile(scope: !940, file: !3, discriminator: 1)
!1259 = !DILocation(line: 2390, column: 5, scope: !1258, inlinedAt: !958)
!1260 = !DILocation(line: 2391, column: 13, scope: !1261, inlinedAt: !958)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 2391, column: 13)
!1262 = distinct !DILexicalBlock(scope: !940, file: !3, line: 2390, column: 21)
!1263 = !DILocation(line: 2391, column: 18, scope: !1261, inlinedAt: !958)
!1264 = !DILocation(line: 2391, column: 13, scope: !1262, inlinedAt: !958)
!1265 = !DILocation(line: 2398, column: 14, scope: !1266, inlinedAt: !958)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 2398, column: 13)
!1267 = !DILocation(line: 2398, column: 28, scope: !1266, inlinedAt: !958)
!1268 = !DILocation(line: 2399, column: 32, scope: !1269, inlinedAt: !958)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 2398, column: 47)
!1270 = !DILocation(line: 2399, column: 37, scope: !1269, inlinedAt: !958)
!1271 = !DILocation(line: 2331, column: 9, scope: !940, inlinedAt: !958)
!1272 = !DILocation(line: 2400, column: 17, scope: !1269, inlinedAt: !958)
!1273 = !DILocation(line: 2407, column: 42, scope: !1269, inlinedAt: !958)
!1274 = !DILocation(line: 2407, column: 48, scope: !1269, inlinedAt: !958)
!1275 = !DILocation(line: 2407, column: 13, scope: !1269, inlinedAt: !958)
!1276 = !DILocation(line: 2409, column: 17, scope: !1277, inlinedAt: !958)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 2409, column: 17)
!1278 = !DILocation(line: 2409, column: 33, scope: !1277, inlinedAt: !958)
!1279 = !{!1280, !721, i64 48}
!1280 = !{!"user_interface_handler", !721, i64 0, !721, i64 4, !721, i64 8, !721, i64 12, !721, i64 16, !721, i64 20, !721, i64 24, !721, i64 28, !721, i64 32, !721, i64 36, !721, i64 40, !721, i64 44, !721, i64 48, !721, i64 52, !721, i64 56}
!1281 = !DILocation(line: 2409, column: 17, scope: !1269, inlinedAt: !958)
!1282 = !DILocation(line: 2410, column: 75, scope: !1283, inlinedAt: !958)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 2409, column: 49)
!1284 = !DILocation(line: 2411, column: 54, scope: !1283, inlinedAt: !958)
!1285 = !DILocation(line: 2410, column: 23, scope: !1283, inlinedAt: !958)
!1286 = !DILocation(line: 2413, column: 25, scope: !1287, inlinedAt: !958)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 2413, column: 21)
!1288 = !DILocation(line: 2413, column: 21, scope: !1283, inlinedAt: !958)
!1289 = !DILocation(line: 2414, column: 21, scope: !1290, inlinedAt: !958)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 2413, column: 34)
!1291 = !DILocation(line: 2415, column: 21, scope: !1290, inlinedAt: !958)
!1292 = !DILocation(line: 2415, column: 37, scope: !1290, inlinedAt: !958)
!1293 = !DILocation(line: 2415, column: 47, scope: !1290, inlinedAt: !958)
!1294 = !DILocation(line: 2416, column: 35, scope: !1290, inlinedAt: !958)
!1295 = !DILocation(line: 2416, column: 21, scope: !1290, inlinedAt: !958)
!1296 = !DILocation(line: 1617, column: 5, scope: !1297, inlinedAt: !1298)
!1297 = distinct !DISubprogram(name: "hci_cancel_inquiry", scope: !3, file: !3, line: 1615, type: !727, isLocal: false, isDefinition: true, scopeLine: 1616, isOptimized: true, unit: !2, variables: !695)
!1298 = distinct !DILocation(line: 2417, column: 21, scope: !1290, inlinedAt: !958)
!1299 = !DILocation(line: 2418, column: 21, scope: !1290, inlinedAt: !958)
!1300 = !DILocation(line: 2447, column: 16, scope: !1262, inlinedAt: !958)
!1301 = !DILocation(line: 2447, column: 21, scope: !1262, inlinedAt: !958)
!1302 = !DILocation(line: 2447, column: 13, scope: !1262, inlinedAt: !958)
!1303 = !DILocation(line: 2448, column: 11, scope: !1262, inlinedAt: !958)
!1304 = distinct !{!1304, !1305, !1306}
!1305 = !DILocation(line: 2390, column: 5, scope: !940)
!1306 = !DILocation(line: 2449, column: 5, scope: !940)
!1307 = !DILocation(line: 2452, column: 9, scope: !1308, inlinedAt: !958)
!1308 = distinct !DILexicalBlock(scope: !940, file: !3, line: 2452, column: 9)
!1309 = !DILocation(line: 2452, column: 9, scope: !940, inlinedAt: !958)
!1310 = !DILocation(line: 2453, column: 15, scope: !1311, inlinedAt: !958)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 2452, column: 24)
!1312 = !DILocation(line: 2453, column: 31, scope: !1311, inlinedAt: !958)
!1313 = !DILocation(line: 2453, column: 55, scope: !1311, inlinedAt: !958)
!1314 = !DILocation(line: 2454, column: 17, scope: !1315, inlinedAt: !958)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 2454, column: 13)
!1316 = !DILocation(line: 2454, column: 13, scope: !1311, inlinedAt: !958)
!1317 = !DILocation(line: 2455, column: 13, scope: !1318, inlinedAt: !958)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 2454, column: 26)
!1319 = !DILocation(line: 2455, column: 29, scope: !1318, inlinedAt: !958)
!1320 = !DILocation(line: 2455, column: 39, scope: !1318, inlinedAt: !958)
!1321 = !DILocation(line: 1617, column: 5, scope: !1297, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 2456, column: 13, scope: !1318, inlinedAt: !958)
!1323 = !DILocation(line: 2457, column: 27, scope: !1318, inlinedAt: !958)
!1324 = !DILocation(line: 2457, column: 13, scope: !1318, inlinedAt: !958)
!1325 = !DILocation(line: 2458, column: 13, scope: !1318, inlinedAt: !958)
!1326 = !DILocation(line: 2467, column: 1, scope: !940, inlinedAt: !958)
!1327 = !DILocation(line: 599, column: 13, scope: !959)
!1328 = !DILocation(line: 603, column: 17, scope: !891)
!1329 = !DILocation(line: 605, column: 14, scope: !907)
!1330 = !DILocation(line: 605, column: 13, scope: !891)
!1331 = !DILocation(line: 606, column: 17, scope: !905)
!1332 = !DILocation(line: 606, column: 28, scope: !905)
!1333 = !DILocation(line: 606, column: 17, scope: !906)
!1334 = !DILocation(line: 607, column: 38, scope: !904)
!1335 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 607, column: 57, scope: !904)
!1337 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !1336)
!1338 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !1336)
!1339 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !1336)
!1340 = !DILocation(line: 607, column: 17, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !904, file: !3, discriminator: 1)
!1342 = !DILocation(line: 608, column: 22, scope: !903)
!1343 = !DILocation(line: 608, column: 42, scope: !903)
!1344 = !DILocation(line: 608, column: 21, scope: !904)
!1345 = !DILocation(line: 610, column: 24, scope: !902)
!1346 = !DILocation(line: 611, column: 32, scope: !902)
!1347 = !DILocation(line: 612, column: 21, scope: !902)
!1348 = !DILocation(line: 614, column: 34, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !902, file: !3, line: 614, column: 25)
!1350 = !DILocation(line: 614, column: 25, scope: !902)
!1351 = !DILocation(line: 616, column: 25, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 614, column: 57)
!1353 = !DILocation(line: 617, column: 21, scope: !1352)
!1354 = !DILocation(line: 633, column: 33, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 632, column: 36)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 632, column: 17)
!1357 = distinct !DILexicalBlock(scope: !907, file: !3, line: 630, column: 16)
!1358 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 633, column: 52, scope: !1355)
!1360 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !1359)
!1361 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !1359)
!1362 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !1359)
!1363 = !DILocation(line: 633, column: 17, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1355, file: !3, discriminator: 1)
!1365 = !DILocation(line: 634, column: 13, scope: !1355)
!1366 = !DILocation(line: 670, column: 17, scope: !891)
!1367 = !DILocation(line: 677, column: 13, scope: !909)
!1368 = !DILocation(line: 677, column: 24, scope: !909)
!1369 = !DILocation(line: 678, column: 17, scope: !909)
!1370 = !DILocation(line: 681, column: 45, scope: !909)
!1371 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 681, column: 75, scope: !909)
!1373 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !1372)
!1374 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !1372)
!1375 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !1372)
!1376 = !DILocation(line: 681, column: 32, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !909, file: !3, discriminator: 1)
!1378 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 683, column: 102, scope: !909)
!1380 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !1379)
!1381 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !1379)
!1382 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !1379)
!1383 = !DILocation(line: 683, column: 62, scope: !1377)
!1384 = !DILocation(line: 683, column: 62, scope: !909)
!1385 = !DILocation(line: 683, column: 13, scope: !909)
!1386 = !DILocation(line: 683, column: 33, scope: !909)
!1387 = !DILocation(line: 683, column: 60, scope: !909)
!1388 = !{!1050, !840, i64 12}
!1389 = !DILocation(line: 687, column: 17, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !909, file: !3, line: 687, column: 17)
!1391 = !DILocation(line: 687, column: 17, scope: !909)
!1392 = !DILocation(line: 689, column: 17, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 687, column: 35)
!1394 = !DILocation(line: 690, column: 17, scope: !1393)
!1395 = !DILocation(line: 691, column: 13, scope: !1393)
!1396 = !DILocation(line: 692, column: 17, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 691, column: 20)
!1398 = !DILocation(line: 694, column: 9, scope: !891)
!1399 = !DILocation(line: 695, column: 9, scope: !891)
!1400 = !DILocation(line: 699, column: 17, scope: !891)
!1401 = !DILocation(line: 701, column: 22, scope: !891)
!1402 = !DILocation(line: 701, column: 57, scope: !891)
!1403 = !DILocation(line: 701, column: 41, scope: !891)
!1404 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 701, column: 71, scope: !891)
!1406 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !1405)
!1407 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !1405)
!1408 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !1405)
!1409 = !DILocation(line: 701, column: 9, scope: !1055)
!1410 = !DILocation(line: 702, column: 9, scope: !891)
!1411 = !DILocation(line: 703, column: 9, scope: !891)
!1412 = !DILocation(line: 706, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !891, file: !3, line: 706, column: 9)
!1414 = !DILocation(line: 706, column: 9, scope: !891)
!1415 = !DILocation(line: 706, column: 9, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1413, file: !3, discriminator: 1)
!1417 = !DILocation(line: 708, column: 69, scope: !891)
!1418 = !DILocation(line: 708, column: 9, scope: !891)
!1419 = !DILocation(line: 710, column: 16, scope: !1055)
!1420 = !DILocation(line: 710, column: 9, scope: !1055)
!1421 = !DILocation(line: 711, column: 13, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !891, file: !3, line: 710, column: 45)
!1423 = distinct !{!1423, !1424, !1425}
!1424 = !DILocation(line: 710, column: 9, scope: !891)
!1425 = !DILocation(line: 712, column: 9, scope: !891)
!1426 = !DILocation(line: 715, column: 17, scope: !891)
!1427 = !DILocation(line: 716, column: 25, scope: !891)
!1428 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 716, column: 44, scope: !891)
!1430 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !1429)
!1431 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !1429)
!1432 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !1429)
!1433 = !DILocation(line: 716, column: 9, scope: !1055)
!1434 = !DILocation(line: 718, column: 13, scope: !912)
!1435 = !DILocation(line: 718, column: 16, scope: !912)
!1436 = !DILocation(line: 720, column: 17, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !912, file: !3, line: 720, column: 17)
!1438 = !DILocation(line: 719, column: 13, scope: !912)
!1439 = !DILocation(line: 720, column: 37, scope: !1437)
!1440 = !DILocation(line: 720, column: 17, scope: !912)
!1441 = !DILocation(line: 721, column: 34, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 720, column: 53)
!1443 = !DILocation(line: 722, column: 13, scope: !1442)
!1444 = !DILocation(line: 723, column: 34, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 722, column: 20)
!1446 = !DILocation(line: 725, column: 13, scope: !912)
!1447 = !DILocation(line: 726, column: 9, scope: !891)
!1448 = !DILocation(line: 727, column: 9, scope: !891)
!1449 = !DILocation(line: 729, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !891, file: !3, line: 729, column: 13)
!1451 = !DILocation(line: 729, column: 29, scope: !1450)
!1452 = !{!1280, !721, i64 4}
!1453 = !DILocation(line: 729, column: 13, scope: !891)
!1454 = !DILocation(line: 730, column: 53, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 729, column: 54)
!1456 = !DILocation(line: 730, column: 65, scope: !1455)
!1457 = !DILocation(line: 730, column: 77, scope: !1455)
!1458 = !DILocation(line: 730, column: 13, scope: !1455)
!1459 = !DILocation(line: 731, column: 9, scope: !1455)
!1460 = !DILocation(line: 735, column: 13, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !891, file: !3, line: 735, column: 13)
!1462 = !DILocation(line: 736, column: 17, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 736, column: 17)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 735, column: 55)
!1465 = !DILocation(line: 735, column: 13, scope: !891)
!1466 = !DILocation(line: 737, column: 49, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 736, column: 38)
!1468 = !DILocation(line: 737, column: 54, scope: !1467)
!1469 = !DILocation(line: 737, column: 17, scope: !1467)
!1470 = !DILocation(line: 738, column: 13, scope: !1467)
!1471 = !DILocation(line: 743, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !891, file: !3, line: 743, column: 13)
!1473 = !DILocation(line: 744, column: 17, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 744, column: 17)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 743, column: 55)
!1476 = !DILocation(line: 743, column: 13, scope: !891)
!1477 = !DILocation(line: 745, column: 49, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 744, column: 38)
!1479 = !DILocation(line: 745, column: 54, scope: !1478)
!1480 = !DILocation(line: 745, column: 17, scope: !1478)
!1481 = !DILocation(line: 746, column: 13, scope: !1478)
!1482 = !DILocation(line: 767, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !891, file: !3, line: 767, column: 9)
!1484 = !DILocation(line: 767, column: 9, scope: !891)
!1485 = !DILocation(line: 767, column: 9, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1483, file: !3, discriminator: 1)
!1487 = !DILocation(line: 768, column: 21, scope: !891)
!1488 = !DILocation(line: 768, column: 12, scope: !891)
!1489 = !DILocation(line: 769, column: 21, scope: !891)
!1490 = !DILocation(line: 376, column: 8, scope: !875)
!1491 = !DILocation(line: 770, column: 17, scope: !891)
!1492 = !DILocation(line: 771, column: 18, scope: !891)
!1493 = !DILocation(line: 774, column: 13, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !891, file: !3, line: 774, column: 13)
!1495 = !DILocation(line: 774, column: 22, scope: !1494)
!1496 = !DILocation(line: 774, column: 20, scope: !1494)
!1497 = !DILocation(line: 774, column: 13, scope: !891)
!1498 = !DILocation(line: 775, column: 13, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 775, column: 13)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 774, column: 45)
!1501 = !DILocation(line: 775, column: 13, scope: !1500)
!1502 = !DILocation(line: 775, column: 13, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1499, file: !3, discriminator: 1)
!1504 = !DILocation(line: 776, column: 46, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 776, column: 17)
!1506 = !DILocation(line: 777, column: 17, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 776, column: 80)
!1508 = !DILocation(line: 778, column: 13, scope: !1507)
!1509 = !DILocation(line: 779, column: 18, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 779, column: 17)
!1511 = !DILocation(line: 779, column: 17, scope: !1500)
!1512 = !DILocation(line: 781, column: 17, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 781, column: 17)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 779, column: 29)
!1515 = !DILocation(line: 781, column: 17, scope: !1514)
!1516 = !DILocation(line: 781, column: 17, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1513, file: !3, discriminator: 1)
!1518 = !DILocation(line: 784, column: 17, scope: !1514)
!1519 = !DILocation(line: 785, column: 13, scope: !1514)
!1520 = !DILocation(line: 787, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 787, column: 17)
!1522 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 786, column: 16)
!1523 = !DILocation(line: 787, column: 17, scope: !1522)
!1524 = !DILocation(line: 792, column: 17, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 792, column: 17)
!1526 = !DILocation(line: 792, column: 17, scope: !1522)
!1527 = !DILocation(line: 793, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 793, column: 17)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 792, column: 58)
!1530 = !DILocation(line: 793, column: 17, scope: !1529)
!1531 = !DILocation(line: 793, column: 17, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1528, file: !3, discriminator: 1)
!1533 = !DILocation(line: 795, column: 34, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 795, column: 21)
!1535 = !{!1536, !840, i64 536}
!1536 = !{!"__le_hci_stack", !721, i64 0, !721, i64 4, !661, i64 8, !661, i64 533, !840, i64 534, !840, i64 536, !661, i64 538, !840, i64 540, !1537, i64 542}
!1537 = !{!"le_connection_parameter_range", !840, i64 0, !840, i64 2, !840, i64 4, !840, i64 6, !840, i64 8, !840, i64 10}
!1538 = !DILocation(line: 795, column: 63, scope: !1534)
!1539 = !DILocation(line: 795, column: 21, scope: !1529)
!1540 = !DILocation(line: 797, column: 56, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 795, column: 68)
!1542 = !DILocation(line: 799, column: 17, scope: !1541)
!1543 = !DILocation(line: 801, column: 43, scope: !1529)
!1544 = !DILocation(line: 801, column: 53, scope: !1529)
!1545 = !DILocation(line: 801, column: 17, scope: !1529)
!1546 = !DILocalVariable(name: "handle", arg: 1, scope: !1547, file: !3, line: 269, type: !527)
!1547 = distinct !DISubprogram(name: "le_hci_shutdown_connection", scope: !3, file: !3, line: 269, type: !1548, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !527}
!1550 = !{!1546, !1551, !1553}
!1551 = !DILocalVariable(name: "it", scope: !1547, file: !3, line: 271, type: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_iterator_t", file: !408, line: 102, baseType: !817)
!1553 = !DILocalVariable(name: "item", scope: !1554, file: !3, line: 274, type: !402)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 273, column: 48)
!1555 = !DILocation(line: 269, column: 44, scope: !1547, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 802, column: 17, scope: !1529)
!1557 = !DILocation(line: 271, column: 5, scope: !1547, inlinedAt: !1556)
!1558 = !DILocation(line: 271, column: 28, scope: !1547, inlinedAt: !1556)
!1559 = !DILocation(line: 272, column: 5, scope: !1547, inlinedAt: !1556)
!1560 = !DILocation(line: 273, column: 12, scope: !1561, inlinedAt: !1556)
!1561 = !DILexicalBlockFile(scope: !1547, file: !3, discriminator: 1)
!1562 = !DILocation(line: 273, column: 5, scope: !1561, inlinedAt: !1556)
!1563 = !DILocation(line: 274, column: 61, scope: !1554, inlinedAt: !1556)
!1564 = !DILocation(line: 274, column: 37, scope: !1554, inlinedAt: !1556)
!1565 = !DILocation(line: 274, column: 30, scope: !1554, inlinedAt: !1556)
!1566 = !DILocation(line: 275, column: 19, scope: !1567, inlinedAt: !1556)
!1567 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 275, column: 13)
!1568 = !{!838, !840, i64 10}
!1569 = !DILocation(line: 275, column: 30, scope: !1567, inlinedAt: !1556)
!1570 = !DILocation(line: 275, column: 13, scope: !1554, inlinedAt: !1556)
!1571 = !DILocation(line: 276, column: 13, scope: !1572, inlinedAt: !1556)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 275, column: 41)
!1573 = !DILocation(line: 277, column: 51, scope: !1572, inlinedAt: !1556)
!1574 = !DILocation(line: 277, column: 13, scope: !1572, inlinedAt: !1556)
!1575 = !DILocation(line: 278, column: 9, scope: !1572, inlinedAt: !1556)
!1576 = distinct !{!1576, !1577, !1578}
!1577 = !DILocation(line: 273, column: 5, scope: !1547)
!1578 = !DILocation(line: 279, column: 5, scope: !1547)
!1579 = !DILocation(line: 280, column: 1, scope: !1547, inlinedAt: !1556)
!1580 = !DILocation(line: 803, column: 17, scope: !1529)
!1581 = !DILocation(line: 820, column: 13, scope: !938)
!1582 = !DILocation(line: 820, column: 13, scope: !891)
!1583 = !DILocation(line: 821, column: 21, scope: !937)
!1584 = !DILocation(line: 821, column: 13, scope: !937)
!1585 = !DILocation(line: 828, column: 56, scope: !936)
!1586 = !DILocation(line: 828, column: 66, scope: !936)
!1587 = !DILocation(line: 325, column: 53, scope: !916, inlinedAt: !935)
!1588 = !DILocation(line: 325, column: 70, scope: !916, inlinedAt: !935)
!1589 = !DILocation(line: 328, column: 9, scope: !916, inlinedAt: !935)
!1590 = !DILocation(line: 329, column: 23, scope: !916, inlinedAt: !935)
!1591 = !DILocation(line: 329, column: 9, scope: !916, inlinedAt: !935)
!1592 = !DILocation(line: 334, column: 5, scope: !916, inlinedAt: !935)
!1593 = !DILocation(line: 332, column: 9, scope: !916, inlinedAt: !935)
!1594 = !DILocation(line: 335, column: 19, scope: !1595, inlinedAt: !935)
!1595 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 1)
!1596 = !DILocation(line: 335, column: 45, scope: !1597, inlinedAt: !935)
!1597 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 2)
!1598 = !DILocation(line: 335, column: 43, scope: !1597, inlinedAt: !935)
!1599 = !DILocation(line: 335, column: 33, scope: !1595, inlinedAt: !935)
!1600 = !DILocation(line: 336, column: 57, scope: !926, inlinedAt: !935)
!1601 = !DILocation(line: 336, column: 43, scope: !926, inlinedAt: !935)
!1602 = !DILocation(line: 336, column: 31, scope: !926, inlinedAt: !935)
!1603 = !DILocation(line: 337, column: 35, scope: !926, inlinedAt: !935)
!1604 = !DILocation(line: 337, column: 33, scope: !926, inlinedAt: !935)
!1605 = !DILocation(line: 337, column: 30, scope: !926, inlinedAt: !935)
!1606 = !DILocation(line: 337, column: 17, scope: !926, inlinedAt: !935)
!1607 = !DILocation(line: 338, column: 13, scope: !926, inlinedAt: !935)
!1608 = !DILocation(line: 339, column: 22, scope: !926, inlinedAt: !935)
!1609 = !DILocation(line: 340, column: 22, scope: !926, inlinedAt: !935)
!1610 = !DILocation(line: 341, column: 30, scope: !926, inlinedAt: !935)
!1611 = !DILocation(line: 341, column: 9, scope: !926, inlinedAt: !935)
!1612 = !DILocation(line: 344, column: 38, scope: !926, inlinedAt: !935)
!1613 = !DILocation(line: 344, column: 42, scope: !926, inlinedAt: !935)
!1614 = !DILocation(line: 344, column: 24, scope: !926, inlinedAt: !935)
!1615 = !DILocation(line: 344, column: 22, scope: !926, inlinedAt: !935)
!1616 = !DILocation(line: 345, column: 24, scope: !926, inlinedAt: !935)
!1617 = !DILocation(line: 345, column: 22, scope: !926, inlinedAt: !935)
!1618 = !DILocation(line: 346, column: 30, scope: !926, inlinedAt: !935)
!1619 = !DILocation(line: 346, column: 9, scope: !926, inlinedAt: !935)
!1620 = !DILocation(line: 347, column: 13, scope: !926, inlinedAt: !935)
!1621 = !DILocation(line: 348, column: 31, scope: !926, inlinedAt: !935)
!1622 = !DILocation(line: 348, column: 16, scope: !926, inlinedAt: !935)
!1623 = !DILocation(line: 349, column: 34, scope: !926, inlinedAt: !935)
!1624 = !DILocation(line: 349, column: 9, scope: !926, inlinedAt: !935)
!1625 = !DILocation(line: 335, column: 52, scope: !1626, inlinedAt: !935)
!1626 = !DILexicalBlockFile(scope: !927, file: !3, discriminator: 4)
!1627 = distinct !{!1627, !1628, !1629}
!1628 = !DILocation(line: 335, column: 5, scope: !928)
!1629 = !DILocation(line: 350, column: 5, scope: !928)
!1630 = !DILocation(line: 351, column: 1, scope: !916, inlinedAt: !935)
!1631 = !DILocation(line: 829, column: 17, scope: !936)
!1632 = !DILocation(line: 383, column: 8, scope: !875)
!1633 = !DILocation(line: 835, column: 24, scope: !936)
!1634 = !DILocation(line: 836, column: 29, scope: !936)
!1635 = !DILocation(line: 382, column: 20, scope: !875)
!1636 = !DILocation(line: 837, column: 17, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !936, file: !3, line: 837, column: 17)
!1638 = !DILocation(line: 837, column: 17, scope: !936)
!1639 = !DILocation(line: 834, column: 26, scope: !936)
!1640 = !DILocation(line: 837, column: 17, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1637, file: !3, discriminator: 1)
!1642 = !DILocation(line: 837, column: 17, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1637, file: !3, discriminator: 2)
!1644 = !DILocation(line: 838, column: 24, scope: !936)
!1645 = !DILocation(line: 384, column: 26, scope: !875)
!1646 = !DILocation(line: 841, column: 21, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !936, file: !3, line: 841, column: 21)
!1648 = !DILocation(line: 841, column: 21, scope: !936)
!1649 = !DILocation(line: 843, column: 25, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 841, column: 86)
!1651 = !DILocation(line: 844, column: 63, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 843, column: 31)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 843, column: 25)
!1654 = !DILocation(line: 844, column: 25, scope: !1652)
!1655 = !DILocation(line: 845, column: 21, scope: !1652)
!1656 = !DILocation(line: 846, column: 47, scope: !1650)
!1657 = !DILocation(line: 846, column: 57, scope: !1650)
!1658 = !DILocation(line: 846, column: 21, scope: !1650)
!1659 = !DILocation(line: 847, column: 21, scope: !1650)
!1660 = !DILocation(line: 851, column: 21, scope: !936)
!1661 = !DILocation(line: 852, column: 28, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 851, column: 28)
!1663 = distinct !DILexicalBlock(scope: !936, file: !3, line: 851, column: 21)
!1664 = !DILocation(line: 855, column: 22, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !936, file: !3, line: 855, column: 21)
!1666 = !DILocation(line: 855, column: 21, scope: !936)
!1667 = !DILocation(line: 859, column: 31, scope: !936)
!1668 = !DILocation(line: 859, column: 23, scope: !936)
!1669 = !DILocation(line: 859, column: 29, scope: !936)
!1670 = !{!838, !661, i64 16}
!1671 = !DILocation(line: 860, column: 36, scope: !936)
!1672 = !DILocation(line: 860, column: 23, scope: !936)
!1673 = !DILocation(line: 860, column: 34, scope: !936)
!1674 = !DILocation(line: 863, column: 17, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !936, file: !3, line: 863, column: 17)
!1676 = !DILocation(line: 863, column: 17, scope: !936)
!1677 = !DILocation(line: 863, column: 17, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1675, file: !3, discriminator: 1)
!1679 = !DILocation(line: 863, column: 17, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1675, file: !3, discriminator: 2)
!1681 = !DILocation(line: 870, column: 25, scope: !936)
!1682 = !DILocation(line: 871, column: 45, scope: !936)
!1683 = !DILocation(line: 871, column: 29, scope: !936)
!1684 = !DILocation(line: 872, column: 17, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !936, file: !3, line: 872, column: 17)
!1686 = !DILocation(line: 872, column: 17, scope: !936)
!1687 = !DILocation(line: 872, column: 17, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1685, file: !3, discriminator: 1)
!1689 = !DILocation(line: 872, column: 17, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1685, file: !3, discriminator: 2)
!1691 = !DILocation(line: 873, column: 24, scope: !936)
!1692 = !DILocation(line: 880, column: 21, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !936, file: !3, line: 880, column: 21)
!1694 = !DILocation(line: 880, column: 21, scope: !936)
!1695 = !DILocation(line: 884, column: 25, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 880, column: 32)
!1697 = !DILocation(line: 886, column: 63, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 884, column: 31)
!1699 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 884, column: 25)
!1700 = !DILocation(line: 886, column: 25, scope: !1698)
!1701 = !DILocation(line: 887, column: 21, scope: !1698)
!1702 = !DILocation(line: 888, column: 47, scope: !1696)
!1703 = !DILocation(line: 888, column: 57, scope: !1696)
!1704 = !DILocation(line: 888, column: 21, scope: !1696)
!1705 = !DILocation(line: 889, column: 21, scope: !1696)
!1706 = !DILocation(line: 907, column: 21, scope: !936)
!1707 = !DILocation(line: 908, column: 28, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 907, column: 28)
!1709 = distinct !DILexicalBlock(scope: !936, file: !3, line: 907, column: 21)
!1710 = !DILocation(line: 911, column: 22, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !936, file: !3, line: 911, column: 21)
!1712 = !DILocation(line: 911, column: 21, scope: !936)
!1713 = !DILocation(line: 916, column: 31, scope: !936)
!1714 = !DILocation(line: 916, column: 23, scope: !936)
!1715 = !DILocation(line: 916, column: 29, scope: !936)
!1716 = !DILocation(line: 917, column: 36, scope: !936)
!1717 = !DILocation(line: 917, column: 23, scope: !936)
!1718 = !DILocation(line: 917, column: 34, scope: !936)
!1719 = !DILocation(line: 920, column: 50, scope: !936)
!1720 = !DILocation(line: 920, column: 43, scope: !936)
!1721 = !DILocation(line: 920, column: 68, scope: !936)
!1722 = !DILocation(line: 920, column: 17, scope: !936)
!1723 = !DILocation(line: 921, column: 39, scope: !936)
!1724 = !DILocation(line: 921, column: 17, scope: !936)
!1725 = !DILocation(line: 929, column: 17, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !936, file: !3, line: 929, column: 17)
!1727 = !DILocation(line: 929, column: 17, scope: !936)
!1728 = !DILocation(line: 929, column: 17, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1726, file: !3, discriminator: 1)
!1730 = !DILocation(line: 929, column: 17, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1726, file: !3, discriminator: 2)
!1732 = !DILocation(line: 929, column: 17, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1726, file: !3, discriminator: 3)
!1734 = !DILocation(line: 937, column: 43, scope: !936)
!1735 = !DILocation(line: 937, column: 53, scope: !936)
!1736 = !DILocation(line: 937, column: 17, scope: !936)
!1737 = !DILocation(line: 938, column: 17, scope: !936)
!1738 = !DILocation(line: 947, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !875, file: !3, line: 947, column: 9)
!1740 = !DILocation(line: 947, column: 16, scope: !1739)
!1741 = !DILocation(line: 947, column: 9, scope: !875)
!1742 = !DILocation(line: 948, column: 56, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 947, column: 42)
!1744 = !DILocation(line: 948, column: 66, scope: !1743)
!1745 = !DILocation(line: 948, column: 9, scope: !1743)
!1746 = !DILocation(line: 949, column: 5, scope: !1743)
!1747 = !DILocation(line: 952, column: 13, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 952, column: 13)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 949, column: 12)
!1750 = !DILocation(line: 952, column: 13, scope: !1749)
!1751 = !DILocation(line: 953, column: 39, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 952, column: 54)
!1753 = !DILocation(line: 953, column: 49, scope: !1752)
!1754 = !DILocation(line: 953, column: 13, scope: !1752)
!1755 = !DILocation(line: 954, column: 13, scope: !1752)
!1756 = !DILocation(line: 955, column: 13, scope: !1752)
!1757 = !DILocation(line: 960, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !875, file: !3, line: 960, column: 9)
!1759 = !DILocation(line: 960, column: 18, scope: !1758)
!1760 = !DILocation(line: 960, column: 32, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1758, file: !3, discriminator: 1)
!1762 = !DILocation(line: 960, column: 29, scope: !1761)
!1763 = !DILocation(line: 960, column: 9, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !875, file: !3, discriminator: 1)
!1765 = !DILocation(line: 961, column: 9, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 960, column: 56)
!1767 = !DILocation(line: 962, column: 5, scope: !1766)
!1768 = !DILocation(line: 963, column: 1, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !875, file: !3, discriminator: 2)
!1770 = distinct !DISubprogram(name: "le_hci_emit_event", scope: !3, file: !3, line: 1898, type: !1771, isLocal: false, isDefinition: true, scopeLine: 1899, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !556, !425, !468}
!1773 = !{!1774, !1775, !1776, !1777, !1778}
!1774 = !DILocalVariable(name: "event", arg: 1, scope: !1770, file: !3, line: 1898, type: !556)
!1775 = !DILocalVariable(name: "size", arg: 2, scope: !1770, file: !3, line: 1898, type: !425)
!1776 = !DILocalVariable(name: "dump", arg: 3, scope: !1770, file: !3, line: 1898, type: !468)
!1777 = !DILocalVariable(name: "it", scope: !1770, file: !3, line: 1900, type: !817)
!1778 = !DILocalVariable(name: "entry", scope: !1779, file: !3, line: 1903, type: !546)
!1779 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1902, column: 56)
!1780 = !DILocation(line: 1898, column: 33, scope: !1770)
!1781 = !DILocation(line: 1898, column: 49, scope: !1770)
!1782 = !DILocation(line: 1898, column: 59, scope: !1770)
!1783 = !DILocation(line: 1900, column: 5, scope: !1770)
!1784 = !DILocation(line: 1900, column: 36, scope: !1770)
!1785 = !DILocation(line: 1901, column: 5, scope: !1770)
!1786 = !DILocation(line: 1902, column: 12, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1770, file: !3, discriminator: 1)
!1788 = !DILocation(line: 1902, column: 5, scope: !1787)
!1789 = !DILocation(line: 1903, column: 100, scope: !1779)
!1790 = !DILocation(line: 1904, column: 16, scope: !1779)
!1791 = !{!1792, !721, i64 4}
!1792 = !{!"", !839, i64 0, !721, i64 4}
!1793 = !DILocation(line: 1904, column: 9, scope: !1779)
!1794 = distinct !{!1794, !1795, !1796}
!1795 = !DILocation(line: 1902, column: 5, scope: !1770)
!1796 = !DILocation(line: 1905, column: 5, scope: !1770)
!1797 = !DILocation(line: 1906, column: 1, scope: !1770)
!1798 = distinct !DISubprogram(name: "le_hci_connection_for_handle", scope: !3, file: !3, line: 1956, type: !1799, isLocal: false, isDefinition: true, scopeLine: 1957, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!402, !424}
!1801 = !{!1802, !1803, !1806}
!1802 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1798, file: !3, line: 1956, type: !424)
!1803 = !DILocalVariable(name: "it", scope: !1804, file: !3, line: 1959, type: !1552)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1958, column: 50)
!1805 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1958, column: 9)
!1806 = !DILocalVariable(name: "item", scope: !1807, file: !3, line: 1962, type: !402)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1961, column: 52)
!1808 = !DILocation(line: 1956, column: 68, scope: !1798)
!1809 = !DILocation(line: 1958, column: 9, scope: !1805)
!1810 = !DILocation(line: 1958, column: 9, scope: !1798)
!1811 = !DILocation(line: 1959, column: 9, scope: !1804)
!1812 = !DILocation(line: 1959, column: 32, scope: !1804)
!1813 = !DILocation(line: 1960, column: 9, scope: !1804)
!1814 = !DILocation(line: 1961, column: 9, scope: !1804)
!1815 = !DILocation(line: 1961, column: 16, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1804, file: !3, discriminator: 1)
!1817 = !DILocation(line: 1961, column: 9, scope: !1816)
!1818 = !DILocation(line: 1967, column: 5, scope: !1805)
!1819 = !DILocation(line: 1962, column: 65, scope: !1807)
!1820 = !DILocation(line: 1962, column: 41, scope: !1807)
!1821 = !DILocation(line: 1962, column: 34, scope: !1807)
!1822 = !DILocation(line: 1963, column: 23, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1963, column: 17)
!1824 = !DILocation(line: 1963, column: 34, scope: !1823)
!1825 = distinct !{!1825, !1814, !1826}
!1826 = !DILocation(line: 1966, column: 9, scope: !1804)
!1827 = !DILocation(line: 1970, column: 1, scope: !1798)
!1828 = distinct !DISubprogram(name: "hci_event_inquiry_result", scope: !3, file: !3, line: 2258, type: !1829, isLocal: true, isDefinition: true, scopeLine: 2259, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !540, !527, !528}
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842}
!1832 = !DILocalVariable(name: "packet", arg: 1, scope: !1828, file: !3, line: 2258, type: !540)
!1833 = !DILocalVariable(name: "len", arg: 2, scope: !1828, file: !3, line: 2258, type: !527)
!1834 = !DILocalVariable(name: "with_rssi", arg: 3, scope: !1828, file: !3, line: 2258, type: !528)
!1835 = !DILocalVariable(name: "p", scope: !1828, file: !3, line: 2260, type: !540)
!1836 = !DILocalVariable(name: "name_cmp_flag", scope: !1828, file: !3, line: 2261, type: !528)
!1837 = !DILocalVariable(name: "dev_class", scope: !1828, file: !3, line: 2262, type: !603)
!1838 = !DILocalVariable(name: "res", scope: !1828, file: !3, line: 2263, type: !528)
!1839 = !DILocalVariable(name: "rssi", scope: !1828, file: !3, line: 2264, type: !560)
!1840 = !DILocalVariable(name: "dev_class_full", scope: !1828, file: !3, line: 2265, type: !603)
!1841 = !DILocalVariable(name: "remote_name_len", scope: !1828, file: !3, line: 2266, type: !527)
!1842 = !DILocalVariable(name: "remote_name", scope: !1828, file: !3, line: 2267, type: !1843)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 512, elements: !1844)
!1844 = !{!1845}
!1845 = !DISubrange(count: 64)
!1846 = !DILocation(line: 2258, column: 42, scope: !1828)
!1847 = !DILocation(line: 2258, column: 54, scope: !1828)
!1848 = !DILocation(line: 2258, column: 62, scope: !1828)
!1849 = !DILocation(line: 2261, column: 8, scope: !1828)
!1850 = !DILocation(line: 2262, column: 9, scope: !1828)
!1851 = !DILocation(line: 2263, column: 8, scope: !1828)
!1852 = !DILocation(line: 2264, column: 10, scope: !1828)
!1853 = !DILocation(line: 2265, column: 9, scope: !1828)
!1854 = !DILocation(line: 2272, column: 9, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 2272, column: 9)
!1856 = !DILocation(line: 2272, column: 25, scope: !1855)
!1857 = !DILocation(line: 2272, column: 9, scope: !1828)
!1858 = !DILocation(line: 2273, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 2273, column: 9)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 2272, column: 36)
!1861 = !DILocation(line: 2273, column: 9, scope: !1860)
!1862 = !DILocation(line: 2273, column: 9, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1859, file: !3, discriminator: 1)
!1864 = !DILocation(line: 2277, column: 5, scope: !1828)
!1865 = !DILocation(line: 2278, column: 18, scope: !1828)
!1866 = !DILocation(line: 2278, column: 48, scope: !1828)
!1867 = !DILocation(line: 2278, column: 5, scope: !1828)
!1868 = !DILocation(line: 2281, column: 9, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 2281, column: 9)
!1870 = !DILocation(line: 2281, column: 9, scope: !1828)
!1871 = !DILocation(line: 2282, column: 16, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 2281, column: 20)
!1873 = !DILocation(line: 2284, column: 5, scope: !1872)
!1874 = !DILocation(line: 2287, column: 32, scope: !1828)
!1875 = !DILocation(line: 2290, column: 35, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 2290, column: 9)
!1877 = !DILocation(line: 2297, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 2297, column: 9)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 2295, column: 36)
!1880 = !DILocation(line: 2297, column: 9, scope: !1879)
!1881 = !DILocation(line: 2297, column: 9, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1878, file: !3, discriminator: 1)
!1883 = !DILocation(line: 2308, column: 11, scope: !1828)
!1884 = !DILocation(line: 2308, column: 27, scope: !1828)
!1885 = !DILocation(line: 2308, column: 51, scope: !1828)
!1886 = !DILocation(line: 2309, column: 13, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 2309, column: 9)
!1888 = !DILocation(line: 2309, column: 9, scope: !1828)
!1889 = !DILocation(line: 2310, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 2309, column: 22)
!1891 = !DILocation(line: 2310, column: 25, scope: !1890)
!1892 = !DILocation(line: 2310, column: 35, scope: !1890)
!1893 = !DILocation(line: 1617, column: 5, scope: !1297, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 2311, column: 9, scope: !1890)
!1895 = !DILocation(line: 2313, column: 9, scope: !1890)
!1896 = !DILocation(line: 2320, column: 1, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1828, file: !3, discriminator: 2)
!1898 = distinct !DISubprogram(name: "hci_release_packet_buffer", scope: !3, file: !3, line: 1886, type: !727, isLocal: false, isDefinition: true, scopeLine: 1887, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!1899 = !DILocation(line: 1889, column: 45, scope: !1898)
!1900 = !{!1536, !661, i64 533}
!1901 = !DILocation(line: 1890, column: 1, scope: !1898)
!1902 = distinct !DISubprogram(name: "hci_subevent_le_enhanced_connection_complete_get_status", scope: !1903, file: !1903, line: 3697, type: !1904, isLocal: true, isDefinition: true, scopeLine: 3698, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1908)
!1903 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!418, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "event", arg: 1, scope: !1902, file: !1903, line: 3697, type: !1906)
!1910 = !DILocation(line: 3697, column: 98, scope: !1902)
!1911 = !DILocation(line: 3699, column: 16, scope: !1902)
!1912 = !DILocation(line: 3699, column: 9, scope: !1902)
!1913 = distinct !DISubprogram(name: "hci_subevent_le_enhanced_connection_complete_get_peer_addresss_ptr", scope: !1903, file: !1903, line: 3741, type: !1914, isLocal: true, isDefinition: true, scopeLine: 3742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!556, !1906}
!1916 = !{!1917}
!1917 = !DILocalVariable(name: "event", arg: 1, scope: !1913, file: !1903, line: 3741, type: !1906)
!1918 = !DILocation(line: 3741, column: 110, scope: !1913)
!1919 = !DILocation(line: 3743, column: 28, scope: !1913)
!1920 = !DILocation(line: 3743, column: 9, scope: !1913)
!1921 = distinct !DISubprogram(name: "hci_subevent_le_enhanced_connection_complete_get_peer_address_type", scope: !1903, file: !1903, line: 3727, type: !1904, isLocal: true, isDefinition: true, scopeLine: 3728, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1922)
!1922 = !{!1923}
!1923 = !DILocalVariable(name: "event", arg: 1, scope: !1921, file: !1903, line: 3727, type: !1906)
!1924 = !DILocation(line: 3727, column: 109, scope: !1921)
!1925 = !DILocation(line: 3729, column: 16, scope: !1921)
!1926 = !DILocation(line: 3729, column: 9, scope: !1921)
!1927 = distinct !DISubprogram(name: "le_create_connection_for_bd_addr_and_type", scope: !3, file: !3, line: 282, type: !811, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1928)
!1928 = !{!1929, !1930, !1931}
!1929 = !DILocalVariable(name: "addr", arg: 1, scope: !1927, file: !3, line: 282, type: !556)
!1930 = !DILocalVariable(name: "addr_type", arg: 2, scope: !1927, file: !3, line: 282, type: !428)
!1931 = !DILocalVariable(name: "conn", scope: !1927, file: !3, line: 285, type: !402)
!1932 = !DILocation(line: 282, column: 81, scope: !1927)
!1933 = !DILocation(line: 282, column: 102, scope: !1927)
!1934 = !DILocation(line: 284, column: 5, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 284, column: 5)
!1936 = !DILocation(line: 284, column: 5, scope: !1927)
!1937 = !DILocation(line: 284, column: 5, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1935, file: !3, discriminator: 1)
!1939 = !DILocation(line: 284, column: 5, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1935, file: !3, discriminator: 2)
!1941 = !DILocation(line: 285, column: 33, scope: !1927)
!1942 = !DILocation(line: 285, column: 26, scope: !1927)
!1943 = !DILocation(line: 286, column: 10, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 286, column: 9)
!1945 = !DILocation(line: 286, column: 9, scope: !1927)
!1946 = !DILocation(line: 287, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 287, column: 9)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 286, column: 16)
!1949 = !DILocation(line: 287, column: 9, scope: !1948)
!1950 = !DILocation(line: 287, column: 9, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1947, file: !3, discriminator: 1)
!1952 = !DILocation(line: 290, column: 5, scope: !1927)
!1953 = !DILocation(line: 291, column: 5, scope: !1927)
!1954 = !DILocation(line: 292, column: 11, scope: !1927)
!1955 = !DILocation(line: 292, column: 24, scope: !1927)
!1956 = !DILocation(line: 293, column: 11, scope: !1927)
!1957 = !DILocation(line: 293, column: 22, scope: !1927)
!1958 = !DILocation(line: 296, column: 11, scope: !1927)
!1959 = !DILocation(line: 298, column: 11, scope: !1927)
!1960 = !DILocation(line: 298, column: 41, scope: !1927)
!1961 = !{!838, !661, i64 20}
!1962 = !DILocation(line: 300, column: 62, scope: !1927)
!1963 = !DILocation(line: 296, column: 33, scope: !1927)
!1964 = !DILocation(line: 300, column: 5, scope: !1927)
!1965 = !DILocation(line: 301, column: 5, scope: !1927)
!1966 = !DILocation(line: 302, column: 1, scope: !1927)
!1967 = distinct !DISubprogram(name: "hci_subevent_le_enhanced_connection_complete_get_role", scope: !1903, file: !1903, line: 3717, type: !1904, isLocal: true, isDefinition: true, scopeLine: 3718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1968)
!1968 = !{!1969}
!1969 = !DILocalVariable(name: "event", arg: 1, scope: !1967, file: !1903, line: 3717, type: !1906)
!1970 = !DILocation(line: 3717, column: 96, scope: !1967)
!1971 = !DILocation(line: 3719, column: 16, scope: !1967)
!1972 = !DILocation(line: 3719, column: 9, scope: !1967)
!1973 = distinct !DISubprogram(name: "hci_subevent_le_enhanced_connection_complete_get_connection_handle", scope: !1903, file: !1903, line: 3707, type: !1974, isLocal: true, isDefinition: true, scopeLine: 3708, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!424, !1906}
!1976 = !{!1977}
!1977 = !DILocalVariable(name: "event", arg: 1, scope: !1973, file: !1903, line: 3707, type: !1906)
!1978 = !DILocation(line: 3707, column: 118, scope: !1973)
!1979 = !DILocation(line: 3709, column: 16, scope: !1973)
!1980 = !DILocation(line: 3709, column: 9, scope: !1973)
!1981 = distinct !DISubprogram(name: "hci_run_for_acl_data_send", scope: !3, file: !3, line: 2059, type: !727, isLocal: true, isDefinition: true, scopeLine: 2060, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1982)
!1982 = !{!1983, !1984, !1985, !1995, !1998, !2001, !2005}
!1983 = !DILocalVariable(name: "connection", scope: !1981, file: !3, line: 2062, type: !402)
!1984 = !DILocalVariable(name: "it", scope: !1981, file: !3, line: 2063, type: !557)
!1985 = !DILocalVariable(name: "le_conn_param", scope: !1981, file: !3, line: 2064, type: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "le_connection_update_parameter", file: !14, line: 620, size: 112, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "connection_handle", scope: !1986, file: !14, line: 621, baseType: !527, size: 16)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "Conn_Interval_Min", scope: !1986, file: !14, line: 622, baseType: !527, size: 16, offset: 16)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "Conn_Interval_Max", scope: !1986, file: !14, line: 623, baseType: !527, size: 16, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "Conn_Latency", scope: !1986, file: !14, line: 624, baseType: !527, size: 16, offset: 48)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "Supervision_Timeout", scope: !1986, file: !14, line: 625, baseType: !527, size: 16, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "Minimum_CE_Length", scope: !1986, file: !14, line: 626, baseType: !527, size: 16, offset: 80)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "Maximum_CE_Length", scope: !1986, file: !14, line: 627, baseType: !527, size: 16, offset: 96)
!1995 = !DILocalVariable(name: "con_handle", scope: !1996, file: !3, line: 2068, type: !424)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 2067, column: 56)
!1997 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 2067, column: 9)
!1998 = !DILocalVariable(name: "connection", scope: !1999, file: !3, line: 2070, type: !402)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 2069, column: 63)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 2069, column: 13)
!2001 = !DILocalVariable(name: "connection", scope: !2002, file: !3, line: 2086, type: !402)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 2085, column: 92)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 2085, column: 5)
!2004 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 2085, column: 5)
!2005 = !DILocalVariable(name: "connection_interval_min", scope: !2006, file: !3, line: 2091, type: !425)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 2088, column: 106)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 2088, column: 13)
!2008 = !DILocation(line: 2064, column: 43, scope: !1981)
!2009 = !DILocation(line: 2067, column: 22, scope: !1997)
!2010 = !DILocation(line: 2067, column: 51, scope: !1997)
!2011 = !DILocation(line: 2067, column: 9, scope: !1981)
!2012 = !DILocation(line: 2068, column: 39, scope: !1996)
!2013 = !DILocation(line: 2068, column: 26, scope: !1996)
!2014 = !DILocalVariable(name: "con_handle", arg: 1, scope: !2015, file: !3, line: 2054, type: !424)
!2015 = distinct !DISubprogram(name: "hci_can_send_prepared_acl_packet_now", scope: !3, file: !3, line: 2054, type: !2016, isLocal: false, isDefinition: true, scopeLine: 2055, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!468, !424}
!2018 = !{!2014}
!2019 = !DILocation(line: 2054, column: 59, scope: !2015, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 2069, column: 13, scope: !2000)
!2021 = !DILocation(line: 2056, column: 12, scope: !2015, inlinedAt: !2020)
!2022 = !DILocation(line: 2056, column: 61, scope: !2015, inlinedAt: !2020)
!2023 = !DILocation(line: 2069, column: 13, scope: !1996)
!2024 = !DILocation(line: 2070, column: 47, scope: !1999)
!2025 = !DILocation(line: 2070, column: 34, scope: !1999)
!2026 = !DILocation(line: 2071, column: 17, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 2071, column: 17)
!2028 = !DILocation(line: 2071, column: 17, scope: !1999)
!2029 = !DILocation(line: 2054, column: 59, scope: !2015, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 2072, column: 21, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 2072, column: 21)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 2071, column: 29)
!2033 = !DILocation(line: 2056, column: 12, scope: !2015, inlinedAt: !2030)
!2034 = !DILocation(line: 2056, column: 61, scope: !2015, inlinedAt: !2030)
!2035 = !DILocation(line: 2072, column: 21, scope: !2032)
!2036 = !DILocation(line: 2063, column: 20, scope: !1981)
!2037 = !DILocation(line: 2085, column: 5, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2004, file: !3, discriminator: 1)
!2039 = !DILocation(line: 2086, column: 43, scope: !2002)
!2040 = !DILocation(line: 2079, column: 52, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 2076, column: 20)
!2042 = !DILocation(line: 2073, column: 21, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 2072, column: 71)
!2044 = !DILocation(line: 2086, column: 30, scope: !2002)
!2045 = !DILocation(line: 2088, column: 25, scope: !2007)
!2046 = !DILocation(line: 2088, column: 55, scope: !2007)
!2047 = !DILocation(line: 2088, column: 13, scope: !2002)
!2048 = !DILocation(line: 2089, column: 55, scope: !2006)
!2049 = !DILocation(line: 2091, column: 60, scope: !2006)
!2050 = !{!838, !840, i64 26}
!2051 = !DILocation(line: 2091, column: 22, scope: !2006)
!2052 = !DILocation(line: 2092, column: 46, scope: !2006)
!2053 = !DILocation(line: 2098, column: 64, scope: !2006)
!2054 = !DILocation(line: 2100, column: 92, scope: !2006)
!2055 = !{!838, !840, i64 28}
!2056 = !DILocation(line: 2101, column: 106, scope: !2006)
!2057 = !{!838, !840, i64 30}
!2058 = !DILocation(line: 2102, column: 120, scope: !2006)
!2059 = !{!838, !840, i64 32}
!2060 = !DILocation(line: 2108, column: 13, scope: !2006)
!2061 = !DILocation(line: 2116, column: 9, scope: !2006)
!2062 = !DILocation(line: 2085, column: 86, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2003, file: !3, discriminator: 2)
!2064 = distinct !{!2064, !2065, !2066}
!2065 = !DILocation(line: 2085, column: 5, scope: !2004)
!2066 = !DILocation(line: 2117, column: 5, scope: !2004)
!2067 = !DILocation(line: 2120, column: 1, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !1981, file: !3, discriminator: 2)
!2069 = distinct !DISubprogram(name: "hci_edr_acl_handler", scope: !3, file: !3, line: 965, type: !2070, isLocal: false, isDefinition: true, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !540, !527, !527}
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2073 = !DILocalVariable(name: "packet", arg: 1, scope: !2069, file: !3, line: 965, type: !540)
!2074 = !DILocalVariable(name: "size", arg: 2, scope: !2069, file: !3, line: 965, type: !527)
!2075 = !DILocalVariable(name: "con_handle", arg: 3, scope: !2069, file: !3, line: 965, type: !527)
!2076 = !DILocalVariable(name: "l2cap_length", scope: !2069, file: !3, line: 967, type: !527)
!2077 = !DILocalVariable(name: "acl_flags", scope: !2069, file: !3, line: 968, type: !528)
!2078 = !DILocalVariable(name: "acl_length", scope: !2069, file: !3, line: 969, type: !527)
!2079 = !DILocalVariable(name: "address", scope: !2069, file: !3, line: 971, type: !501)
!2080 = !DILocation(line: 965, column: 30, scope: !2069)
!2081 = !DILocation(line: 965, column: 42, scope: !2069)
!2082 = !DILocation(line: 965, column: 52, scope: !2069)
!2083 = !DILocation(line: 968, column: 21, scope: !2069)
!2084 = !DILocation(line: 968, column: 9, scope: !2069)
!2085 = !DILocation(line: 969, column: 22, scope: !2069)
!2086 = !DILocation(line: 116, column: 52, scope: !664, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 971, column: 21, scope: !2069)
!2088 = !DILocation(line: 118, column: 48, scope: !664, inlinedAt: !2087)
!2089 = !DILocation(line: 118, column: 12, scope: !664, inlinedAt: !2087)
!2090 = !DILocation(line: 971, column: 11, scope: !2069)
!2091 = !DILocation(line: 973, column: 10, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 973, column: 9)
!2093 = !DILocation(line: 973, column: 9, scope: !2069)
!2094 = !DILocation(line: 977, column: 5, scope: !2069)
!2095 = !DILocation(line: 979, column: 9, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 977, column: 31)
!2097 = !DILocation(line: 980, column: 9, scope: !2096)
!2098 = !DILocation(line: 983, column: 18, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 983, column: 13)
!2100 = !DILocation(line: 983, column: 13, scope: !2096)
!2101 = !DILocation(line: 984, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 984, column: 13)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 983, column: 23)
!2104 = !DILocation(line: 984, column: 13, scope: !2103)
!2105 = !DILocation(line: 984, column: 13, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2102, file: !3, discriminator: 1)
!2107 = !DILocation(line: 985, column: 13, scope: !2103)
!2108 = !DILocation(line: 986, column: 13, scope: !2103)
!2109 = !DILocation(line: 988, column: 24, scope: !2096)
!2110 = !DILocation(line: 991, column: 40, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 991, column: 13)
!2112 = !DILocation(line: 991, column: 24, scope: !2111)
!2113 = !DILocation(line: 991, column: 13, scope: !2096)
!2114 = !DILocation(line: 992, column: 74, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 991, column: 45)
!2116 = !DILocation(line: 992, column: 63, scope: !2115)
!2117 = !DILocation(line: 992, column: 13, scope: !2115)
!2118 = !DILocation(line: 993, column: 13, scope: !2115)
!2119 = !DILocation(line: 994, column: 9, scope: !2115)
!2120 = !DILocation(line: 1003, column: 5, scope: !2069)
!2121 = !DILocation(line: 1004, column: 1, scope: !2069)
!2122 = !DILocation(line: 1004, column: 1, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2069, file: !3, discriminator: 2)
!2124 = distinct !DISubprogram(name: "hci_ble_acl_handler", scope: !3, file: !3, line: 1007, type: !2070, isLocal: false, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2125)
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2126 = !DILocalVariable(name: "packet", arg: 1, scope: !2124, file: !3, line: 1007, type: !540)
!2127 = !DILocalVariable(name: "size", arg: 2, scope: !2124, file: !3, line: 1007, type: !527)
!2128 = !DILocalVariable(name: "con_handle", arg: 3, scope: !2124, file: !3, line: 1007, type: !527)
!2129 = !DILocalVariable(name: "l2cap_length", scope: !2124, file: !3, line: 1009, type: !527)
!2130 = !DILocalVariable(name: "conn", scope: !2124, file: !3, line: 1010, type: !402)
!2131 = !DILocalVariable(name: "acl_flags", scope: !2124, file: !3, line: 1011, type: !528)
!2132 = !DILocalVariable(name: "acl_length", scope: !2124, file: !3, line: 1012, type: !527)
!2133 = !DILocalVariable(name: "l2cap_length", scope: !2134, file: !3, line: 1065, type: !425)
!2134 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 1019, column: 31)
!2135 = !DILocation(line: 1007, column: 30, scope: !2124)
!2136 = !DILocation(line: 1007, column: 42, scope: !2124)
!2137 = !DILocation(line: 1007, column: 52, scope: !2124)
!2138 = !DILocation(line: 1010, column: 33, scope: !2124)
!2139 = !DILocation(line: 1010, column: 26, scope: !2124)
!2140 = !DILocation(line: 1011, column: 9, scope: !2124)
!2141 = !DILocation(line: 1012, column: 22, scope: !2124)
!2142 = !DILocation(line: 1012, column: 9, scope: !2124)
!2143 = !DILocation(line: 1014, column: 10, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 1014, column: 9)
!2145 = !DILocation(line: 1014, column: 9, scope: !2124)
!2146 = !DILocation(line: 1015, column: 9, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 1014, column: 16)
!2148 = !DILocation(line: 1016, column: 9, scope: !2147)
!2149 = !DILocation(line: 1011, column: 21, scope: !2124)
!2150 = !DILocation(line: 1019, column: 5, scope: !2124)
!2151 = !DILocation(line: 1023, column: 19, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1023, column: 13)
!2153 = !{!838, !840, i64 1202}
!2154 = !DILocation(line: 1023, column: 13, scope: !2152)
!2155 = !DILocation(line: 1023, column: 41, scope: !2152)
!2156 = !DILocation(line: 1023, column: 13, scope: !2134)
!2157 = !DILocation(line: 1024, column: 13, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1023, column: 47)
!2159 = !DILocation(line: 1025, column: 13, scope: !2158)
!2160 = !DILocation(line: 1027, column: 43, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1027, column: 13)
!2162 = !DILocation(line: 1027, column: 41, scope: !2161)
!2163 = !DILocation(line: 1027, column: 54, scope: !2161)
!2164 = !DILocation(line: 1027, column: 13, scope: !2134)
!2165 = !DILocation(line: 1028, column: 41, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 1027, column: 84)
!2167 = !DILocation(line: 1029, column: 13, scope: !2166)
!2168 = !DILocation(line: 1030, column: 13, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1030, column: 13)
!2170 = !DILocation(line: 1030, column: 13, scope: !2166)
!2171 = !DILocation(line: 1030, column: 13, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2169, file: !3, discriminator: 1)
!2173 = !DILocation(line: 1036, column: 17, scope: !2134)
!2174 = !DILocation(line: 1036, column: 79, scope: !2134)
!2175 = !DILocation(line: 1036, column: 9, scope: !2134)
!2176 = !DILocation(line: 1037, column: 37, scope: !2134)
!2177 = !DILocation(line: 1040, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1040, column: 13)
!2179 = !DILocation(line: 1040, column: 50, scope: !2178)
!2180 = !{!838, !840, i64 1204}
!2181 = !DILocation(line: 1040, column: 44, scope: !2178)
!2182 = !DILocation(line: 1040, column: 79, scope: !2178)
!2183 = !DILocation(line: 1040, column: 41, scope: !2178)
!2184 = !DILocation(line: 1040, column: 13, scope: !2134)
!2185 = !DILocation(line: 1049, column: 56, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1040, column: 84)
!2187 = !DILocation(line: 1049, column: 13, scope: !2186)
!2188 = !DILocation(line: 1051, column: 44, scope: !2186)
!2189 = !DILocation(line: 1052, column: 41, scope: !2186)
!2190 = !DILocation(line: 1053, column: 9, scope: !2186)
!2191 = !DILocation(line: 1054, column: 9, scope: !2134)
!2192 = !DILocation(line: 1055, column: 9, scope: !2134)
!2193 = !DILocation(line: 1060, column: 19, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1060, column: 13)
!2195 = !DILocation(line: 1060, column: 13, scope: !2194)
!2196 = !DILocation(line: 1060, column: 13, scope: !2134)
!2197 = !DILocation(line: 1061, column: 41, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 1060, column: 42)
!2199 = !DILocation(line: 1062, column: 9, scope: !2198)
!2200 = !DILocation(line: 1065, column: 33, scope: !2134)
!2201 = !DILocation(line: 1065, column: 18, scope: !2134)
!2202 = !DILocation(line: 1069, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1069, column: 13)
!2204 = !DILocation(line: 1069, column: 27, scope: !2203)
!2205 = !DILocation(line: 1069, column: 40, scope: !2203)
!2206 = !DILocation(line: 1069, column: 24, scope: !2203)
!2207 = !DILocation(line: 1069, column: 13, scope: !2134)
!2208 = !DILocation(line: 1081, column: 74, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 1069, column: 45)
!2210 = !DILocation(line: 1081, column: 13, scope: !2209)
!2211 = !DILocation(line: 1082, column: 9, scope: !2209)
!2212 = !DILocation(line: 1084, column: 28, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 1084, column: 17)
!2214 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 1082, column: 16)
!2215 = !DILocation(line: 1084, column: 17, scope: !2214)
!2216 = !DILocation(line: 1085, column: 17, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 1084, column: 54)
!2218 = !DILocation(line: 1086, column: 17, scope: !2217)
!2219 = !DILocation(line: 1090, column: 21, scope: !2214)
!2220 = !DILocation(line: 1090, column: 75, scope: !2214)
!2221 = !DILocation(line: 1090, column: 13, scope: !2214)
!2222 = !DILocation(line: 1091, column: 46, scope: !2214)
!2223 = !DILocation(line: 1091, column: 44, scope: !2214)
!2224 = !DILocation(line: 1092, column: 19, scope: !2214)
!2225 = !DILocation(line: 1092, column: 44, scope: !2214)
!2226 = !DILocation(line: 1093, column: 60, scope: !2214)
!2227 = !DILocation(line: 1093, column: 13, scope: !2214)
!2228 = !DILocation(line: 1095, column: 9, scope: !2134)
!2229 = !DILocation(line: 1096, column: 9, scope: !2134)
!2230 = !DILocation(line: 1099, column: 9, scope: !2134)
!2231 = !DILocation(line: 1100, column: 9, scope: !2134)
!2232 = !DILocation(line: 1103, column: 5, scope: !2124)
!2233 = !DILocation(line: 1104, column: 1, scope: !2124)
!2234 = !DILocation(line: 1104, column: 1, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2124, file: !3, discriminator: 2)
!2236 = distinct !DISubprogram(name: "hci_acl_handler", scope: !3, file: !3, line: 1107, type: !2237, isLocal: false, isDefinition: true, scopeLine: 1108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !540, !527}
!2239 = !{!2240, !2241, !2242}
!2240 = !DILocalVariable(name: "packet", arg: 1, scope: !2236, file: !3, line: 1107, type: !540)
!2241 = !DILocalVariable(name: "size", arg: 2, scope: !2236, file: !3, line: 1107, type: !527)
!2242 = !DILocalVariable(name: "con_handle", scope: !2236, file: !3, line: 1109, type: !527)
!2243 = !DILocation(line: 1107, column: 26, scope: !2236)
!2244 = !DILocation(line: 1107, column: 38, scope: !2236)
!2245 = !DILocation(line: 1109, column: 22, scope: !2236)
!2246 = !DILocation(line: 1109, column: 9, scope: !2236)
!2247 = !DILocation(line: 1111, column: 23, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 1111, column: 9)
!2249 = !DILocation(line: 1111, column: 20, scope: !2248)
!2250 = !DILocation(line: 1111, column: 9, scope: !2236)
!2251 = !DILocation(line: 1113, column: 13, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1113, column: 13)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 1111, column: 46)
!2254 = !DILocation(line: 1113, column: 13, scope: !2253)
!2255 = !DILocation(line: 1114, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 1113, column: 54)
!2257 = !DILocation(line: 1115, column: 9, scope: !2256)
!2258 = !DILocation(line: 1118, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 1117, column: 12)
!2260 = !DILocation(line: 1120, column: 1, scope: !2236)
!2261 = distinct !DISubprogram(name: "hci_le_get_acl_packet_num", scope: !3, file: !3, line: 1200, type: !2262, isLocal: false, isDefinition: true, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!528, !527}
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "con_handle", arg: 1, scope: !2261, file: !3, line: 1200, type: !527)
!2266 = !DILocalVariable(name: "connection", scope: !2261, file: !3, line: 1202, type: !402)
!2267 = !DILocation(line: 1200, column: 34, scope: !2261)
!2268 = !DILocation(line: 1202, column: 39, scope: !2261)
!2269 = !DILocation(line: 1202, column: 26, scope: !2261)
!2270 = !DILocation(line: 1204, column: 9, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 1204, column: 9)
!2272 = !DILocation(line: 1204, column: 9, scope: !2261)
!2273 = !DILocation(line: 1206, column: 28, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 1204, column: 21)
!2275 = !DILocation(line: 1206, column: 9, scope: !2274)
!2276 = !DILocation(line: 1211, column: 1, scope: !2261)
!2277 = distinct !DISubprogram(name: "hci_le_get_connect_flag", scope: !3, file: !3, line: 1213, type: !2262, isLocal: false, isDefinition: true, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2278)
!2278 = !{!2279, !2280}
!2279 = !DILocalVariable(name: "con_handle", arg: 1, scope: !2277, file: !3, line: 1213, type: !527)
!2280 = !DILocalVariable(name: "connection", scope: !2277, file: !3, line: 1215, type: !402)
!2281 = !DILocation(line: 1213, column: 32, scope: !2277)
!2282 = !DILocation(line: 1215, column: 39, scope: !2277)
!2283 = !DILocation(line: 1215, column: 26, scope: !2277)
!2284 = !DILocation(line: 1221, column: 9, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1219, column: 12)
!2286 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1216, column: 9)
!2287 = !DILocation(line: 1223, column: 1, scope: !2277)
!2288 = distinct !DISubprogram(name: "hci_le_send_acl_packet_buffer", scope: !3, file: !3, line: 1225, type: !2289, isLocal: false, isDefinition: true, scopeLine: 1226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!468, !540, !468}
!2291 = !{!2292, !2293, !2294, !2295}
!2292 = !DILocalVariable(name: "packet", arg: 1, scope: !2288, file: !3, line: 1225, type: !540)
!2293 = !DILocalVariable(name: "size", arg: 2, scope: !2288, file: !3, line: 1225, type: !468)
!2294 = !DILocalVariable(name: "con_handle", scope: !2288, file: !3, line: 1233, type: !424)
!2295 = !DILocalVariable(name: "connection", scope: !2288, file: !3, line: 1241, type: !402)
!2296 = !DILocation(line: 1225, column: 39, scope: !2288)
!2297 = !DILocation(line: 1225, column: 51, scope: !2288)
!2298 = !DILocation(line: 1228, column: 23, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1228, column: 9)
!2300 = !DILocation(line: 1228, column: 10, scope: !2299)
!2301 = !DILocation(line: 1228, column: 9, scope: !2288)
!2302 = !DILocation(line: 1233, column: 35, scope: !2288)
!2303 = !DILocation(line: 1233, column: 22, scope: !2288)
!2304 = !DILocation(line: 2054, column: 59, scope: !2015, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 1236, column: 10, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1236, column: 9)
!2307 = !DILocation(line: 2056, column: 12, scope: !2015, inlinedAt: !2305)
!2308 = !DILocation(line: 2056, column: 61, scope: !2015, inlinedAt: !2305)
!2309 = !DILocation(line: 1236, column: 9, scope: !2288)
!2310 = !DILocation(line: 1889, column: 45, scope: !1898, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 1237, column: 9, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1236, column: 60)
!2313 = !DILocation(line: 1238, column: 9, scope: !2312)
!2314 = !DILocation(line: 1241, column: 39, scope: !2288)
!2315 = !DILocation(line: 1241, column: 26, scope: !2288)
!2316 = !DILocation(line: 1243, column: 10, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1243, column: 9)
!2318 = !DILocation(line: 1243, column: 9, scope: !2288)
!2319 = !DILocation(line: 1889, column: 45, scope: !1898, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 1244, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1243, column: 22)
!2322 = !DILocation(line: 1245, column: 9, scope: !2321)
!2323 = !DILocation(line: 1253, column: 49, scope: !2288)
!2324 = !DILocation(line: 1253, column: 47, scope: !2288)
!2325 = !DILocation(line: 1255, column: 40, scope: !2288)
!2326 = !{!1536, !840, i64 534}
!2327 = !DILocation(line: 1257, column: 12, scope: !2288)
!2328 = !DILocation(line: 1257, column: 5, scope: !2288)
!2329 = !DILocation(line: 1258, column: 1, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2288, file: !3, discriminator: 2)
!2331 = !DILocation(line: 2054, column: 59, scope: !2015)
!2332 = !DILocation(line: 2056, column: 12, scope: !2015)
!2333 = !DILocation(line: 2056, column: 61, scope: !2015)
!2334 = !DILocation(line: 2056, column: 5, scope: !2015)
!2335 = distinct !DISubprogram(name: "le_hci_send_acl_packet_fragments", scope: !3, file: !3, line: 1125, type: !2336, isLocal: true, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!468, !402}
!2338 = !{!2339, !2340, !2341, !2342, !2345, !2346, !2347, !2350, !2351}
!2339 = !DILocalVariable(name: "connection", arg: 1, scope: !2335, file: !3, line: 1125, type: !402)
!2340 = !DILocalVariable(name: "max_acl_data_packet_length", scope: !2335, file: !3, line: 1128, type: !425)
!2341 = !DILocalVariable(name: "err", scope: !2335, file: !3, line: 1129, type: !468)
!2342 = !DILocalVariable(name: "acl_header_pos", scope: !2343, file: !3, line: 1134, type: !2344)
!2343 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1131, column: 15)
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!2345 = !DILocalVariable(name: "current_acl_data_packet_length", scope: !2343, file: !3, line: 1135, type: !468)
!2346 = !DILocalVariable(name: "more_fragments", scope: !2343, file: !3, line: 1136, type: !468)
!2347 = !DILocalVariable(name: "handle_and_flags", scope: !2348, file: !3, line: 1146, type: !425)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1145, column: 33)
!2349 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1145, column: 13)
!2350 = !DILocalVariable(name: "packet", scope: !2343, file: !3, line: 1168, type: !556)
!2351 = !DILocalVariable(name: "size", scope: !2343, file: !3, line: 1169, type: !2352)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!2353 = !DILocation(line: 1128, column: 56, scope: !2335)
!2354 = !{!1536, !840, i64 540}
!2355 = !DILocation(line: 1128, column: 14, scope: !2335)
!2356 = !DILocation(line: 1129, column: 9, scope: !2335)
!2357 = !DILocation(line: 1131, column: 5, scope: !2335)
!2358 = !DILocation(line: 1134, column: 54, scope: !2343)
!2359 = !DILocation(line: 1134, column: 41, scope: !2343)
!2360 = !DILocation(line: 1134, column: 76, scope: !2343)
!2361 = !DILocation(line: 1134, column: 24, scope: !2343)
!2362 = !DILocation(line: 1135, column: 59, scope: !2343)
!2363 = !DILocation(line: 1135, column: 46, scope: !2343)
!2364 = !DILocation(line: 1135, column: 88, scope: !2343)
!2365 = !DILocation(line: 1135, column: 13, scope: !2343)
!2366 = !DILocation(line: 1136, column: 13, scope: !2343)
!2367 = !DILocation(line: 1139, column: 44, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1139, column: 13)
!2369 = !DILocation(line: 1139, column: 13, scope: !2343)
!2370 = !DILocation(line: 1145, column: 13, scope: !2349)
!2371 = !DILocation(line: 1145, column: 28, scope: !2349)
!2372 = !DILocation(line: 1145, column: 13, scope: !2343)
!2373 = !DILocation(line: 1146, column: 41, scope: !2348)
!2374 = !DILocation(line: 1147, column: 50, scope: !2348)
!2375 = !DILocation(line: 1147, column: 60, scope: !2348)
!2376 = !DILocation(line: 1146, column: 22, scope: !2348)
!2377 = !DILocation(line: 1148, column: 13, scope: !2348)
!2378 = !DILocation(line: 1149, column: 9, scope: !2348)
!2379 = !DILocation(line: 1152, column: 68, scope: !2343)
!2380 = !DILocation(line: 1152, column: 73, scope: !2343)
!2381 = !DILocation(line: 1152, column: 9, scope: !2343)
!2382 = !DILocation(line: 1155, column: 41, scope: !2343)
!2383 = !DILocation(line: 1158, column: 13, scope: !2343)
!2384 = !DILocation(line: 1160, column: 48, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1158, column: 29)
!2386 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1158, column: 13)
!2387 = !DILocation(line: 1161, column: 9, scope: !2385)
!2388 = !DILocation(line: 1163, column: 48, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1161, column: 16)
!2390 = !DILocation(line: 1164, column: 55, scope: !2389)
!2391 = !DILocation(line: 1168, column: 28, scope: !2343)
!2392 = !DILocation(line: 1168, column: 18, scope: !2343)
!2393 = !DILocation(line: 1169, column: 57, scope: !2343)
!2394 = !DILocation(line: 1169, column: 19, scope: !2343)
!2395 = !DILocation(line: 1171, column: 40, scope: !2343)
!2396 = !DILocation(line: 1171, column: 9, scope: !2343)
!2397 = !DILocation(line: 1174, column: 13, scope: !2343)
!2398 = !DILocation(line: 1179, column: 63, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1179, column: 13)
!2400 = !DILocation(line: 2054, column: 59, scope: !2015, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 1179, column: 14, scope: !2399)
!2402 = !DILocation(line: 2056, column: 12, scope: !2015, inlinedAt: !2401)
!2403 = !DILocation(line: 2056, column: 61, scope: !2015, inlinedAt: !2401)
!2404 = !DILocation(line: 1889, column: 45, scope: !1898, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1191, column: 5, scope: !2335)
!2406 = !DILocation(line: 1197, column: 5, scope: !2335)
!2407 = distinct !DISubprogram(name: "hci_get_outgoing_acl_packet_buffer_test", scope: !3, file: !3, line: 1260, type: !2408, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!540}
!2410 = !DILocation(line: 1262, column: 5, scope: !2407)
!2411 = distinct !DISubprogram(name: "hci_send_acl_packet_buffer", scope: !3, file: !3, line: 1266, type: !2289, isLocal: false, isDefinition: true, scopeLine: 1267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2412)
!2412 = !{!2413, !2414}
!2413 = !DILocalVariable(name: "packet", arg: 1, scope: !2411, file: !3, line: 1266, type: !540)
!2414 = !DILocalVariable(name: "size", arg: 2, scope: !2411, file: !3, line: 1266, type: !468)
!2415 = !DILocation(line: 1266, column: 36, scope: !2411)
!2416 = !DILocation(line: 1266, column: 48, scope: !2411)
!2417 = !DILocation(line: 1268, column: 5, scope: !2411)
!2418 = !DILocation(line: 1270, column: 5, scope: !2411)
!2419 = distinct !DISubprogram(name: "hci_get_outgoing_acl_packet_buffer", scope: !3, file: !3, line: 1273, type: !2420, isLocal: false, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!540, !527}
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "len", arg: 1, scope: !2419, file: !3, line: 1273, type: !527)
!2424 = !DILocalVariable(name: "packet", scope: !2419, file: !3, line: 1275, type: !540)
!2425 = !DILocation(line: 1273, column: 44, scope: !2419)
!2426 = !DILocation(line: 1275, column: 51, scope: !2419)
!2427 = !DILocation(line: 1275, column: 55, scope: !2419)
!2428 = !DILocation(line: 1275, column: 18, scope: !2419)
!2429 = !DILocation(line: 1275, column: 9, scope: !2419)
!2430 = !DILocation(line: 1277, column: 5, scope: !2419)
!2431 = distinct !DISubprogram(name: "bredr_hci_send_acl_packet", scope: !3, file: !3, line: 1280, type: !2432, isLocal: false, isDefinition: true, scopeLine: 1281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!468, !540, !468, !528}
!2434 = !{!2435, !2436, !2437}
!2435 = !DILocalVariable(name: "packet", arg: 1, scope: !2431, file: !3, line: 1280, type: !540)
!2436 = !DILocalVariable(name: "size", arg: 2, scope: !2431, file: !3, line: 1280, type: !468)
!2437 = !DILocalVariable(name: "flag", arg: 3, scope: !2431, file: !3, line: 1280, type: !528)
!2438 = !DILocation(line: 1280, column: 35, scope: !2431)
!2439 = !DILocation(line: 1280, column: 47, scope: !2431)
!2440 = !DILocation(line: 1280, column: 56, scope: !2431)
!2441 = !DILocation(line: 1283, column: 5, scope: !2431)
!2442 = !DILocation(line: 1285, column: 5, scope: !2431)
!2443 = distinct !DISubprogram(name: "hci_hold_acl_packet", scope: !3, file: !3, line: 1288, type: !876, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2444)
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "packet", arg: 1, scope: !2443, file: !3, line: 1288, type: !540)
!2446 = !DILocation(line: 1288, column: 30, scope: !2443)
!2447 = !DILocation(line: 1290, column: 5, scope: !2443)
!2448 = !DILocation(line: 1291, column: 1, scope: !2443)
!2449 = distinct !DISubprogram(name: "hci_free_acl_packet", scope: !3, file: !3, line: 1293, type: !2450, isLocal: false, isDefinition: true, scopeLine: 1294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !527, !540}
!2452 = !{!2453, !2454}
!2453 = !DILocalVariable(name: "con_handle", arg: 1, scope: !2449, file: !3, line: 1293, type: !527)
!2454 = !DILocalVariable(name: "packet", arg: 2, scope: !2449, file: !3, line: 1293, type: !540)
!2455 = !DILocation(line: 1293, column: 30, scope: !2449)
!2456 = !DILocation(line: 1293, column: 46, scope: !2449)
!2457 = !DILocation(line: 1295, column: 5, scope: !2449)
!2458 = !DILocation(line: 1296, column: 5, scope: !2449)
!2459 = !DILocation(line: 1297, column: 1, scope: !2449)
!2460 = distinct !DISubprogram(name: "set_hid_independent_info", scope: !3, file: !3, line: 1300, type: !727, isLocal: false, isDefinition: true, scopeLine: 1301, isOptimized: true, unit: !2, variables: !2461)
!2461 = !{!2462, !2463, !2467, !2468, !2469}
!2462 = !DILocalVariable(name: "hid_addr", scope: !2460, file: !3, line: 1302, type: !598)
!2463 = !DILocalVariable(name: "hid_name", scope: !2460, file: !3, line: 1303, type: !2464)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 320, elements: !2465)
!2465 = !{!2466}
!2466 = !DISubrange(count: 40)
!2467 = !DILocalVariable(name: "name_len", scope: !2460, file: !3, line: 1304, type: !468)
!2468 = !DILocalVariable(name: "addr_addr", scope: !2460, file: !3, line: 1305, type: !540)
!2469 = !DILocalVariable(name: "loopi", scope: !2470, file: !3, line: 1309, type: !468)
!2470 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1309, column: 5)
!2471 = !DILocation(line: 1302, column: 5, scope: !2460)
!2472 = !DILocation(line: 1302, column: 8, scope: !2460)
!2473 = !DILocation(line: 1303, column: 5, scope: !2460)
!2474 = !DILocation(line: 1303, column: 10, scope: !2460)
!2475 = !DILocation(line: 1304, column: 9, scope: !2460)
!2476 = !DILocation(line: 1305, column: 21, scope: !2460)
!2477 = !DILocation(line: 1305, column: 9, scope: !2460)
!2478 = !DILocation(line: 1309, column: 14, scope: !2470)
!2479 = !DILocation(line: 1309, column: 5, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2470, file: !3, discriminator: 1)
!2481 = !DILocation(line: 1313, column: 9, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1313, column: 9)
!2483 = !DILocation(line: 1313, column: 9, scope: !2460)
!2484 = !DILocation(line: 1310, column: 27, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1309, column: 45)
!2486 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1309, column: 5)
!2487 = !DILocation(line: 1310, column: 44, scope: !2485)
!2488 = !DILocation(line: 1310, column: 9, scope: !2485)
!2489 = !DILocation(line: 1310, column: 25, scope: !2485)
!2490 = !DILocation(line: 1309, column: 41, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2486, file: !3, discriminator: 3)
!2492 = !DILocation(line: 1309, column: 31, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2486, file: !3, discriminator: 1)
!2494 = distinct !{!2494, !2495, !2496}
!2495 = !DILocation(line: 1309, column: 5, scope: !2470)
!2496 = !DILocation(line: 1311, column: 5, scope: !2470)
!2497 = !DILocation(line: 1314, column: 27, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1313, column: 28)
!2499 = !DILocation(line: 1314, column: 20, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2498, file: !3, discriminator: 1)
!2501 = !DILocation(line: 1315, column: 22, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1315, column: 13)
!2503 = !DILocation(line: 1316, column: 30, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1315, column: 28)
!2505 = !DILocation(line: 1315, column: 13, scope: !2498)
!2506 = !DILocation(line: 1316, column: 13, scope: !2504)
!2507 = !DILocation(line: 1317, column: 9, scope: !2504)
!2508 = !DILocation(line: 1318, column: 13, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1317, column: 16)
!2510 = !DILocation(line: 1321, column: 9, scope: !2498)
!2511 = !DILocation(line: 1322, column: 5, scope: !2498)
!2512 = !DILocation(line: 1323, column: 27, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1322, column: 12)
!2514 = !DILocation(line: 1323, column: 20, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2513, file: !3, discriminator: 1)
!2516 = !DILocation(line: 1324, column: 22, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1324, column: 13)
!2518 = !DILocation(line: 1325, column: 30, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 1324, column: 28)
!2520 = !DILocation(line: 1324, column: 13, scope: !2513)
!2521 = !DILocation(line: 1325, column: 13, scope: !2519)
!2522 = !DILocation(line: 1326, column: 9, scope: !2519)
!2523 = !DILocation(line: 1327, column: 13, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 1326, column: 16)
!2525 = !DILocation(line: 1330, column: 26, scope: !2513)
!2526 = !DILocation(line: 1330, column: 9, scope: !2513)
!2527 = !DILocation(line: 1330, column: 30, scope: !2513)
!2528 = !DILocation(line: 1331, column: 26, scope: !2513)
!2529 = !DILocation(line: 1331, column: 9, scope: !2513)
!2530 = !DILocation(line: 1331, column: 30, scope: !2513)
!2531 = !DILocation(line: 1332, column: 26, scope: !2513)
!2532 = !DILocation(line: 1332, column: 9, scope: !2513)
!2533 = !DILocation(line: 1332, column: 30, scope: !2513)
!2534 = !DILocation(line: 1333, column: 9, scope: !2513)
!2535 = !DILocation(line: 1333, column: 30, scope: !2513)
!2536 = !DILocation(line: 1334, column: 9, scope: !2513)
!2537 = !DILocation(line: 1336, column: 5, scope: !2460)
!2538 = !DILocation(line: 1337, column: 35, scope: !2460)
!2539 = !DILocation(line: 1337, column: 55, scope: !2460)
!2540 = !{!1050, !842, i64 0}
!2541 = !DILocation(line: 1337, column: 5, scope: !2460)
!2542 = !DILocation(line: 1338, column: 5, scope: !2460)
!2543 = !DILocation(line: 1339, column: 1, scope: !2460)
!2544 = distinct !DISubprogram(name: "btstack_hci_init", scope: !3, file: !3, line: 1342, type: !727, isLocal: false, isDefinition: true, scopeLine: 1343, isOptimized: true, unit: !2, variables: !695)
!2545 = !DILocation(line: 1344, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 1344, column: 9)
!2547 = !DILocation(line: 1344, column: 9, scope: !2544)
!2548 = !DILocation(line: 1345, column: 9, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 1344, column: 51)
!2550 = !DILocation(line: 1346, column: 37, scope: !2549)
!2551 = !DILocation(line: 1346, column: 9, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2549, file: !3, discriminator: 1)
!2553 = !DILocation(line: 1347, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1347, column: 13)
!2555 = !DILocation(line: 1347, column: 13, scope: !2549)
!2556 = !DILocation(line: 1348, column: 47, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 1347, column: 38)
!2558 = !DILocation(line: 1349, column: 9, scope: !2557)
!2559 = !DILocation(line: 1350, column: 59, scope: !2549)
!2560 = !DILocation(line: 1350, column: 9, scope: !2549)
!2561 = !DILocation(line: 1351, column: 34, scope: !2549)
!2562 = !DILocation(line: 1351, column: 9, scope: !2552)
!2563 = !DILocation(line: 1352, column: 43, scope: !2549)
!2564 = !DILocation(line: 1352, column: 63, scope: !2549)
!2565 = !DILocation(line: 1352, column: 9, scope: !2549)
!2566 = !DILocation(line: 1353, column: 36, scope: !2549)
!2567 = !DILocation(line: 1353, column: 56, scope: !2549)
!2568 = !DILocation(line: 1353, column: 9, scope: !2549)
!2569 = !DILocation(line: 1354, column: 37, scope: !2549)
!2570 = !DILocation(line: 1354, column: 57, scope: !2549)
!2571 = !{!1050, !840, i64 6}
!2572 = !DILocation(line: 1354, column: 9, scope: !2549)
!2573 = !DILocation(line: 1356, column: 5, scope: !2549)
!2574 = !DILocation(line: 1358, column: 9, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 1358, column: 9)
!2576 = !DILocation(line: 1358, column: 9, scope: !2544)
!2577 = !DILocation(line: 1359, column: 9, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1358, column: 46)
!2579 = !DILocation(line: 1360, column: 5, scope: !2578)
!2580 = !DILocation(line: 1362, column: 1, scope: !2544)
!2581 = distinct !DISubprogram(name: "tws_set_auto_pair_code", scope: !3, file: !3, line: 1375, type: !2408, isLocal: false, isDefinition: true, scopeLine: 1376, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2582 = !DILocation(line: 1378, column: 5, scope: !2581)
!2583 = distinct !DISubprogram(name: "tws_le_acc_generation_init", scope: !3, file: !3, line: 1383, type: !727, isLocal: false, isDefinition: true, scopeLine: 1384, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2584)
!2584 = !{!2585, !2586}
!2585 = !DILocalVariable(name: "ret", scope: !2583, file: !3, line: 1385, type: !528)
!2586 = !DILocalVariable(name: "mac_addr", scope: !2583, file: !3, line: 1386, type: !598)
!2587 = !DILocation(line: 1386, column: 5, scope: !2583)
!2588 = !DILocation(line: 1386, column: 8, scope: !2583)
!2589 = !DILocation(line: 1388, column: 9, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 1388, column: 9)
!2591 = !DILocation(line: 1388, column: 9, scope: !2583)
!2592 = !DILocation(line: 1390, column: 13, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1390, column: 13)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1388, column: 30)
!2595 = !DILocation(line: 1390, column: 13, scope: !2594)
!2596 = !DILocation(line: 1391, column: 60, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1390, column: 35)
!2598 = !DILocation(line: 1391, column: 38, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2597, file: !3, discriminator: 1)
!2600 = !DILocation(line: 1391, column: 36, scope: !2597)
!2601 = !DILocation(line: 1392, column: 36, scope: !2597)
!2602 = !DILocation(line: 1393, column: 36, scope: !2597)
!2603 = !DILocation(line: 1394, column: 9, scope: !2597)
!2604 = !DILocation(line: 1395, column: 22, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1395, column: 17)
!2606 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1394, column: 16)
!2607 = !DILocation(line: 1395, column: 19, scope: !2605)
!2608 = !DILocation(line: 1395, column: 17, scope: !2606)
!2609 = !DILocation(line: 1396, column: 17, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 1395, column: 74)
!2611 = !DILocation(line: 1397, column: 36, scope: !2610)
!2612 = !DILocation(line: 1397, column: 34, scope: !2610)
!2613 = !DILocation(line: 1398, column: 17, scope: !2610)
!2614 = !DILocation(line: 1399, column: 17, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 1399, column: 17)
!2616 = !DILocation(line: 1399, column: 17, scope: !2610)
!2617 = !DILocation(line: 1399, column: 17, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2615, file: !3, discriminator: 1)
!2619 = !DILocation(line: 1400, column: 17, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 1400, column: 17)
!2621 = !DILocation(line: 1400, column: 17, scope: !2610)
!2622 = !DILocation(line: 1400, column: 17, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2620, file: !3, discriminator: 1)
!2624 = !DILocation(line: 1403, column: 22, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1403, column: 17)
!2626 = !DILocation(line: 1403, column: 19, scope: !2625)
!2627 = !DILocation(line: 1403, column: 17, scope: !2606)
!2628 = !DILocation(line: 1404, column: 17, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1403, column: 80)
!2630 = !DILocation(line: 1405, column: 39, scope: !2629)
!2631 = !DILocation(line: 1405, column: 37, scope: !2629)
!2632 = !DILocation(line: 1406, column: 17, scope: !2629)
!2633 = !DILocation(line: 1407, column: 17, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1407, column: 17)
!2635 = !DILocation(line: 1407, column: 17, scope: !2629)
!2636 = !DILocation(line: 1407, column: 17, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2634, file: !3, discriminator: 1)
!2638 = !DILocation(line: 1411, column: 18, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1411, column: 17)
!2640 = !DILocation(line: 1411, column: 35, scope: !2639)
!2641 = !DILocation(line: 1411, column: 54, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2639, file: !3, discriminator: 1)
!2643 = !DILocation(line: 1411, column: 74, scope: !2642)
!2644 = !DILocation(line: 1411, column: 50, scope: !2639)
!2645 = !DILocation(line: 1412, column: 17, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1411, column: 90)
!2647 = !DILocation(line: 1413, column: 36, scope: !2646)
!2648 = !DILocation(line: 1413, column: 34, scope: !2646)
!2649 = !DILocation(line: 1414, column: 17, scope: !2646)
!2650 = !DILocation(line: 1415, column: 39, scope: !2646)
!2651 = !DILocation(line: 1415, column: 37, scope: !2646)
!2652 = !DILocation(line: 1416, column: 17, scope: !2646)
!2653 = !DILocation(line: 1419, column: 13, scope: !2646)
!2654 = !DILocation(line: 1421, column: 34, scope: !2606)
!2655 = !DILocation(line: 1421, column: 32, scope: !2606)
!2656 = !DILocation(line: 1425, column: 9, scope: !2594)
!2657 = !DILocation(line: 1427, column: 9, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1427, column: 9)
!2659 = !DILocation(line: 1427, column: 9, scope: !2594)
!2660 = !DILocation(line: 1427, column: 9, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2658, file: !3, discriminator: 1)
!2662 = !DILocation(line: 1428, column: 9, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1428, column: 9)
!2664 = !DILocation(line: 1428, column: 9, scope: !2594)
!2665 = !DILocation(line: 1428, column: 9, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2663, file: !3, discriminator: 1)
!2667 = !DILocation(line: 1430, column: 1, scope: !2583)
!2668 = distinct !DISubprogram(name: "tws_le_get_pair_aa", scope: !3, file: !3, line: 1432, type: !2669, isLocal: false, isDefinition: true, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!603}
!2671 = !DILocation(line: 1434, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1434, column: 9)
!2673 = !DILocation(line: 1434, column: 9, scope: !2668)
!2674 = !DILocation(line: 1435, column: 9, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2676, file: !3, discriminator: 1)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 1435, column: 9)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1435, column: 9)
!2678 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1434, column: 30)
!2679 = !DILocation(line: 1435, column: 9, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2677, file: !3, discriminator: 1)
!2681 = !DILocation(line: 1435, column: 9, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2683, file: !3, discriminator: 2)
!2683 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1435, column: 9)
!2684 = !DILocation(line: 1435, column: 9, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2686, file: !3, discriminator: 3)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 1435, column: 9)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 1435, column: 9)
!2688 = !DILocation(line: 1435, column: 9, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2686, file: !3, discriminator: 8)
!2690 = !DILocation(line: 1435, column: 9, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2686, file: !3, discriminator: 9)
!2692 = !DILocation(line: 1435, column: 9, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2694, file: !3, discriminator: 5)
!2694 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1435, column: 9)
!2695 = !DILocation(line: 1435, column: 9, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2697, file: !3, discriminator: 6)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1435, column: 9)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1435, column: 9)
!2699 = !DILocation(line: 1436, column: 16, scope: !2678)
!2700 = !DILocation(line: 1436, column: 9, scope: !2678)
!2701 = !DILocation(line: 1440, column: 1, scope: !2668)
!2702 = distinct !DISubprogram(name: "cpu_reset", scope: !2703, file: !2703, line: 145, type: !727, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2703 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!2704 = !DILocation(line: 148, column: 5, scope: !2702)
!2705 = !DILocation(line: 149, column: 1, scope: !2702)
!2706 = distinct !DISubprogram(name: "tws_le_get_connect_aa", scope: !3, file: !3, line: 1442, type: !2669, isLocal: false, isDefinition: true, scopeLine: 1443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2707 = !DILocation(line: 1444, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1444, column: 9)
!2709 = !DILocation(line: 1444, column: 9, scope: !2706)
!2710 = !DILocation(line: 1445, column: 9, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2712, file: !3, discriminator: 1)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1445, column: 9)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1445, column: 9)
!2714 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1444, column: 30)
!2715 = !DILocation(line: 1445, column: 9, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2713, file: !3, discriminator: 1)
!2717 = !DILocation(line: 1445, column: 9, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2719, file: !3, discriminator: 2)
!2719 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1445, column: 9)
!2720 = !DILocation(line: 1445, column: 9, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2722, file: !3, discriminator: 3)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 1445, column: 9)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1445, column: 9)
!2724 = !DILocation(line: 1445, column: 9, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2722, file: !3, discriminator: 8)
!2726 = !DILocation(line: 1445, column: 9, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2722, file: !3, discriminator: 9)
!2728 = !DILocation(line: 1445, column: 9, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2730, file: !3, discriminator: 5)
!2730 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1445, column: 9)
!2731 = !DILocation(line: 1445, column: 9, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2733, file: !3, discriminator: 6)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 1445, column: 9)
!2734 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1445, column: 9)
!2735 = !DILocation(line: 1446, column: 16, scope: !2714)
!2736 = !DILocation(line: 1446, column: 9, scope: !2714)
!2737 = !DILocation(line: 1450, column: 1, scope: !2706)
!2738 = distinct !DISubprogram(name: "tws_le_get_search_aa", scope: !3, file: !3, line: 1452, type: !2669, isLocal: false, isDefinition: true, scopeLine: 1453, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2739 = !DILocation(line: 1454, column: 9, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1454, column: 9)
!2741 = !DILocation(line: 1454, column: 9, scope: !2738)
!2742 = !DILocation(line: 1455, column: 9, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2744, file: !3, discriminator: 1)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1455, column: 9)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1455, column: 9)
!2746 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1454, column: 30)
!2747 = !DILocation(line: 1455, column: 9, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2745, file: !3, discriminator: 1)
!2749 = !DILocation(line: 1455, column: 9, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2751, file: !3, discriminator: 2)
!2751 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1455, column: 9)
!2752 = !DILocation(line: 1455, column: 9, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2754, file: !3, discriminator: 3)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1455, column: 9)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1455, column: 9)
!2756 = !DILocation(line: 1455, column: 9, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2754, file: !3, discriminator: 8)
!2758 = !DILocation(line: 1455, column: 9, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2754, file: !3, discriminator: 9)
!2760 = !DILocation(line: 1455, column: 9, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2762, file: !3, discriminator: 5)
!2762 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1455, column: 9)
!2763 = !DILocation(line: 1455, column: 9, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2765, file: !3, discriminator: 6)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 1455, column: 9)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1455, column: 9)
!2767 = !DILocation(line: 1456, column: 16, scope: !2746)
!2768 = !DILocation(line: 1456, column: 9, scope: !2746)
!2769 = !DILocation(line: 1460, column: 1, scope: !2738)
!2770 = distinct !DISubprogram(name: "check_tws_le_aa", scope: !3, file: !3, line: 1462, type: !717, isLocal: false, isDefinition: true, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2771 = !DILocation(line: 1464, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1464, column: 9)
!2773 = !DILocation(line: 1464, column: 9, scope: !2770)
!2774 = !DILocation(line: 1465, column: 14, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1465, column: 13)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1464, column: 30)
!2777 = !DILocation(line: 1465, column: 31, scope: !2775)
!2778 = !DILocation(line: 1465, column: 50, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2775, file: !3, discriminator: 1)
!2780 = !DILocation(line: 1465, column: 69, scope: !2779)
!2781 = !DILocation(line: 1465, column: 46, scope: !2775)
!2782 = !DILocation(line: 1465, column: 88, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2775, file: !3, discriminator: 2)
!2784 = !DILocation(line: 1465, column: 108, scope: !2783)
!2785 = !DILocation(line: 1469, column: 5, scope: !2770)
!2786 = !DILocation(line: 1470, column: 1, scope: !2770)
!2787 = distinct !DISubprogram(name: "tws_api_set_connect_aa", scope: !3, file: !3, line: 1474, type: !2788, isLocal: false, isDefinition: true, scopeLine: 1475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !468}
!2790 = !{!2791, !2792, !2793}
!2791 = !DILocalVariable(name: "channel", arg: 1, scope: !2787, file: !3, line: 1474, type: !468)
!2792 = !DILocalVariable(name: "conn_aa", scope: !2787, file: !3, line: 1476, type: !603)
!2793 = !DILocalVariable(name: "addr", scope: !2787, file: !3, line: 1477, type: !540)
!2794 = !DILocation(line: 1474, column: 33, scope: !2787)
!2795 = !DILocation(line: 1476, column: 9, scope: !2787)
!2796 = !DILocation(line: 1477, column: 9, scope: !2787)
!2797 = !DILocation(line: 1478, column: 9, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1478, column: 9)
!2799 = !DILocation(line: 1480, column: 13, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 1480, column: 13)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1478, column: 30)
!2802 = !DILocation(line: 1480, column: 34, scope: !2800)
!2803 = !DILocation(line: 1478, column: 9, scope: !2787)
!2804 = !DILocation(line: 1481, column: 13, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2806, file: !3, discriminator: 1)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 1481, column: 13)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1481, column: 13)
!2808 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1480, column: 40)
!2809 = !DILocation(line: 1481, column: 13, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2807, file: !3, discriminator: 1)
!2811 = !DILocation(line: 1481, column: 13, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2813, file: !3, discriminator: 2)
!2813 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 1481, column: 13)
!2814 = !DILocation(line: 1481, column: 13, scope: !2815)
!2815 = !DILexicalBlockFile(scope: !2816, file: !3, discriminator: 3)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 1481, column: 13)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1481, column: 13)
!2818 = !DILocation(line: 1481, column: 13, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2816, file: !3, discriminator: 9)
!2820 = !DILocation(line: 1481, column: 13, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !2816, file: !3, discriminator: 10)
!2822 = !DILocation(line: 1481, column: 13, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2824, file: !3, discriminator: 5)
!2824 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 1481, column: 13)
!2825 = !DILocation(line: 1481, column: 13, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2827, file: !3, discriminator: 6)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 1481, column: 13)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1481, column: 13)
!2829 = !DILocation(line: 1482, column: 20, scope: !2808)
!2830 = !DILocation(line: 1483, column: 17, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1483, column: 17)
!2832 = !DILocation(line: 1483, column: 17, scope: !2808)
!2833 = !DILocation(line: 1484, column: 27, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1483, column: 23)
!2835 = !DILocation(line: 1485, column: 13, scope: !2834)
!2836 = !DILocation(line: 1486, column: 17, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1486, column: 17)
!2838 = !DILocation(line: 1486, column: 37, scope: !2837)
!2839 = !DILocation(line: 1486, column: 17, scope: !2808)
!2840 = !DILocation(line: 1487, column: 17, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1487, column: 17)
!2842 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1486, column: 49)
!2843 = !DILocation(line: 1487, column: 17, scope: !2842)
!2844 = !DILocation(line: 1487, column: 17, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2841, file: !3, discriminator: 1)
!2846 = !DILocation(line: 1488, column: 37, scope: !2842)
!2847 = !DILocation(line: 1489, column: 17, scope: !2842)
!2848 = !DILocation(line: 1490, column: 13, scope: !2842)
!2849 = !DILocation(line: 1493, column: 1, scope: !2787)
!2850 = distinct !DISubprogram(name: "tws_api_set_connect_aa_allways", scope: !3, file: !3, line: 1495, type: !2851, isLocal: false, isDefinition: true, scopeLine: 1496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !603}
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "connect_aa", arg: 1, scope: !2850, file: !3, line: 1495, type: !603)
!2855 = !DILocation(line: 1495, column: 41, scope: !2850)
!2856 = !DILocation(line: 1497, column: 9, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 1497, column: 9)
!2858 = !DILocation(line: 1498, column: 13, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 1498, column: 13)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1497, column: 30)
!2861 = !DILocation(line: 1498, column: 34, scope: !2859)
!2862 = !DILocation(line: 1497, column: 9, scope: !2850)
!2863 = !DILocation(line: 1499, column: 33, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1498, column: 40)
!2865 = !DILocation(line: 1500, column: 46, scope: !2864)
!2866 = !DILocation(line: 1500, column: 13, scope: !2864)
!2867 = !DILocation(line: 1501, column: 9, scope: !2864)
!2868 = !DILocation(line: 1503, column: 1, scope: !2850)
!2869 = distinct !DISubprogram(name: "tws_api_clear_connect_aa", scope: !3, file: !3, line: 1505, type: !727, isLocal: false, isDefinition: true, scopeLine: 1506, isOptimized: true, unit: !2, variables: !2870)
!2870 = !{!2871, !2872}
!2871 = !DILocalVariable(name: "defualt_aa", scope: !2869, file: !3, line: 1507, type: !603)
!2872 = !DILocalVariable(name: "mac_addr", scope: !2869, file: !3, line: 1508, type: !598)
!2873 = !DILocation(line: 1507, column: 5, scope: !2869)
!2874 = !DILocation(line: 1507, column: 9, scope: !2869)
!2875 = !DILocation(line: 1508, column: 5, scope: !2869)
!2876 = !DILocation(line: 1508, column: 8, scope: !2869)
!2877 = !DILocation(line: 1510, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 1510, column: 9)
!2879 = !DILocation(line: 1511, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1511, column: 13)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1510, column: 30)
!2882 = !DILocation(line: 1511, column: 34, scope: !2880)
!2883 = !DILocation(line: 1510, column: 9, scope: !2869)
!2884 = !DILocation(line: 1512, column: 13, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1511, column: 40)
!2886 = !DILocation(line: 1513, column: 13, scope: !2885)
!2887 = !DILocation(line: 1515, column: 13, scope: !2885)
!2888 = !DILocation(line: 1516, column: 54, scope: !2885)
!2889 = !DILocation(line: 1516, column: 52, scope: !2885)
!2890 = !DILocation(line: 1516, column: 33, scope: !2885)
!2891 = !DILocation(line: 1517, column: 13, scope: !2885)
!2892 = !DILocation(line: 1518, column: 13, scope: !2885)
!2893 = !DILocation(line: 1519, column: 9, scope: !2885)
!2894 = !DILocation(line: 1521, column: 1, scope: !2869)
!2895 = distinct !DISubprogram(name: "ble_get_mac_addr", scope: !3, file: !3, line: 1523, type: !692, isLocal: false, isDefinition: true, scopeLine: 1524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2896 = !DILocation(line: 1525, column: 12, scope: !2895)
!2897 = !DILocation(line: 1525, column: 5, scope: !2895)
!2898 = distinct !DISubprogram(name: "ble_hci_init", scope: !3, file: !3, line: 1528, type: !727, isLocal: false, isDefinition: true, scopeLine: 1529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2899 = !DILocation(line: 1532, column: 5, scope: !2898)
!2900 = !DILocation(line: 1536, column: 5, scope: !2898)
!2901 = !DILocation(line: 1537, column: 5, scope: !2898)
!2902 = !DILocation(line: 1539, column: 47, scope: !2898)
!2903 = !DILocation(line: 1539, column: 45, scope: !2898)
!2904 = !DILocation(line: 1540, column: 47, scope: !2898)
!2905 = !DILocation(line: 1540, column: 45, scope: !2898)
!2906 = !{!1536, !661, i64 538}
!2907 = !DILocation(line: 1542, column: 9, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1542, column: 9)
!2909 = !DILocation(line: 1542, column: 9, scope: !2898)
!2910 = !{!1536, !840, i64 542}
!2911 = !DILocation(line: 1547, column: 69, scope: !2898)
!2912 = !{!1536, !840, i64 544}
!2913 = !DILocation(line: 1548, column: 68, scope: !2898)
!2914 = !{!1536, !840, i64 546}
!2915 = !DILocation(line: 1549, column: 68, scope: !2898)
!2916 = !{!1536, !840, i64 548}
!2917 = !DILocation(line: 1550, column: 75, scope: !2898)
!2918 = !{!1536, !840, i64 550}
!2919 = !DILocation(line: 1551, column: 75, scope: !2898)
!2920 = !{!1536, !840, i64 552}
!2921 = !DILocation(line: 1553, column: 5, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1553, column: 5)
!2923 = !DILocation(line: 1553, column: 5, scope: !2898)
!2924 = !DILocation(line: 1553, column: 5, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2922, file: !3, discriminator: 1)
!2926 = !DILocation(line: 1555, column: 1, scope: !2898)
!2927 = distinct !DISubprogram(name: "hci_connectable_control", scope: !3, file: !3, line: 1559, type: !2928, isLocal: false, isDefinition: true, scopeLine: 1560, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !528, !528}
!2930 = !{!2931, !2932}
!2931 = !DILocalVariable(name: "enable", arg: 1, scope: !2927, file: !3, line: 1559, type: !528)
!2932 = !DILocalVariable(name: "key", arg: 2, scope: !2927, file: !3, line: 1559, type: !528)
!2933 = !DILocation(line: 1559, column: 33, scope: !2927)
!2934 = !DILocation(line: 1559, column: 44, scope: !2927)
!2935 = !DILocation(line: 1561, column: 9, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1561, column: 9)
!2937 = !DILocation(line: 1564, column: 26, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1563, column: 12)
!2939 = !DILocation(line: 1562, column: 26, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1561, column: 17)
!2941 = !DILocation(line: 1561, column: 9, scope: !2927)
!2942 = !DILocation(line: 1567, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1567, column: 9)
!2944 = !DILocation(line: 1567, column: 41, scope: !2943)
!2945 = !DILocation(line: 1567, column: 9, scope: !2927)
!2946 = !DILocation(line: 1568, column: 35, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1567, column: 47)
!2948 = !DILocation(line: 1568, column: 9, scope: !2947)
!2949 = !DILocation(line: 1569, column: 5, scope: !2947)
!2950 = !DILocation(line: 1570, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1570, column: 9)
!2952 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1569, column: 12)
!2953 = !DILocation(line: 1570, column: 9, scope: !2952)
!2954 = !DILocation(line: 1570, column: 9, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2951, file: !3, discriminator: 1)
!2956 = !DILocation(line: 1575, column: 1, scope: !2927)
!2957 = distinct !DISubprogram(name: "hci_discoverable_control", scope: !3, file: !3, line: 1578, type: !2928, isLocal: false, isDefinition: true, scopeLine: 1579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2958)
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "enable", arg: 1, scope: !2957, file: !3, line: 1578, type: !528)
!2960 = !DILocalVariable(name: "key", arg: 2, scope: !2957, file: !3, line: 1578, type: !528)
!2961 = !DILocation(line: 1578, column: 34, scope: !2957)
!2962 = !DILocation(line: 1578, column: 45, scope: !2957)
!2963 = !DILocation(line: 1580, column: 9, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1580, column: 9)
!2965 = !DILocation(line: 1583, column: 26, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1582, column: 12)
!2967 = !DILocation(line: 1581, column: 26, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1580, column: 17)
!2969 = !DILocation(line: 1580, column: 9, scope: !2957)
!2970 = !DILocation(line: 1586, column: 9, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1586, column: 9)
!2972 = !DILocation(line: 1586, column: 41, scope: !2971)
!2973 = !DILocation(line: 1586, column: 9, scope: !2957)
!2974 = !DILocation(line: 1587, column: 35, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1586, column: 47)
!2976 = !DILocation(line: 1587, column: 9, scope: !2975)
!2977 = !DILocation(line: 1588, column: 5, scope: !2975)
!2978 = !DILocation(line: 1589, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1589, column: 9)
!2980 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1588, column: 12)
!2981 = !DILocation(line: 1589, column: 9, scope: !2980)
!2982 = !DILocation(line: 1589, column: 9, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !2979, file: !3, discriminator: 1)
!2984 = !DILocation(line: 1594, column: 1, scope: !2957)
!2985 = distinct !DISubprogram(name: "get_hci_scan_value", scope: !3, file: !3, line: 1596, type: !717, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!2986 = !DILocation(line: 1598, column: 12, scope: !2985)
!2987 = !DILocation(line: 1598, column: 5, scope: !2985)
!2988 = distinct !DISubprogram(name: "hci_cancle_page", scope: !3, file: !3, line: 1601, type: !727, isLocal: false, isDefinition: true, scopeLine: 1602, isOptimized: true, unit: !2, variables: !695)
!2989 = !DILocation(line: 1603, column: 5, scope: !2988)
!2990 = !DILocation(line: 1604, column: 1, scope: !2988)
!2991 = distinct !DISubprogram(name: "hci_connection_cancel", scope: !3, file: !3, line: 1606, type: !876, isLocal: false, isDefinition: true, scopeLine: 1607, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2992)
!2992 = !{!2993}
!2993 = !DILocalVariable(name: "addr", arg: 1, scope: !2991, file: !3, line: 1606, type: !540)
!2994 = !DILocation(line: 1606, column: 32, scope: !2991)
!2995 = !DILocation(line: 1608, column: 5, scope: !2991)
!2996 = !DILocation(line: 1609, column: 1, scope: !2991)
!2997 = distinct !DISubprogram(name: "hci_inquiry_start", scope: !3, file: !3, line: 1611, type: !654, isLocal: false, isDefinition: true, scopeLine: 1612, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2998)
!2998 = !{!2999}
!2999 = !DILocalVariable(name: "num", arg: 1, scope: !2997, file: !3, line: 1611, type: !528)
!3000 = !DILocation(line: 1611, column: 27, scope: !2997)
!3001 = !DILocation(line: 1613, column: 5, scope: !2997)
!3002 = !DILocation(line: 1614, column: 1, scope: !2997)
!3003 = !DILocation(line: 1617, column: 5, scope: !1297)
!3004 = !DILocation(line: 1618, column: 1, scope: !1297)
!3005 = distinct !DISubprogram(name: "hci_set_sniff_mode", scope: !3, file: !3, line: 1620, type: !3006, isLocal: false, isDefinition: true, scopeLine: 1621, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !603, !528, !540, !527, !527, !527, !527}
!3008 = !{!3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016}
!3009 = !DILocalVariable(name: "sw", arg: 1, scope: !3005, file: !3, line: 1620, type: !603)
!3010 = !DILocalVariable(name: "curr_mode", arg: 2, scope: !3005, file: !3, line: 1620, type: !528)
!3011 = !DILocalVariable(name: "addr", arg: 3, scope: !3005, file: !3, line: 1620, type: !540)
!3012 = !DILocalVariable(name: "sniff_max_interval", arg: 4, scope: !3005, file: !3, line: 1620, type: !527)
!3013 = !DILocalVariable(name: "sniff_mix_interval", arg: 5, scope: !3005, file: !3, line: 1620, type: !527)
!3014 = !DILocalVariable(name: "sniff_attemp", arg: 6, scope: !3005, file: !3, line: 1620, type: !527)
!3015 = !DILocalVariable(name: "sniff_timeout", arg: 7, scope: !3005, file: !3, line: 1620, type: !527)
!3016 = !DILocalVariable(name: "con_handle", scope: !3005, file: !3, line: 1622, type: !603)
!3017 = !DILocation(line: 1620, column: 29, scope: !3005)
!3018 = !DILocation(line: 1620, column: 36, scope: !3005)
!3019 = !DILocation(line: 1620, column: 51, scope: !3005)
!3020 = !DILocation(line: 1620, column: 61, scope: !3005)
!3021 = !DILocation(line: 1620, column: 85, scope: !3005)
!3022 = !DILocation(line: 1620, column: 109, scope: !3005)
!3023 = !DILocation(line: 1620, column: 127, scope: !3005)
!3024 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 1622, column: 22, scope: !3005)
!3026 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3025)
!3027 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3025)
!3028 = !DILocation(line: 1623, column: 10, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1623, column: 9)
!3030 = !DILocation(line: 1623, column: 9, scope: !3005)
!3031 = !DILocation(line: 1624, column: 23, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 1624, column: 13)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1623, column: 14)
!3034 = !DILocation(line: 1624, column: 13, scope: !3033)
!3035 = !DILocation(line: 1625, column: 13, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1625, column: 13)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1624, column: 38)
!3038 = !DILocation(line: 1625, column: 13, scope: !3037)
!3039 = !DILocation(line: 1625, column: 13, scope: !3040)
!3040 = !DILexicalBlockFile(scope: !3036, file: !3, discriminator: 1)
!3041 = !DILocation(line: 1626, column: 13, scope: !3037)
!3042 = !DILocation(line: 1628, column: 9, scope: !3037)
!3043 = !DILocation(line: 1630, column: 23, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1630, column: 13)
!3045 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1629, column: 12)
!3046 = !DILocation(line: 1630, column: 13, scope: !3045)
!3047 = !DILocation(line: 1631, column: 13, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1631, column: 13)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1630, column: 39)
!3050 = !DILocation(line: 1631, column: 13, scope: !3049)
!3051 = !DILocation(line: 1631, column: 13, scope: !3052)
!3052 = !DILexicalBlockFile(scope: !3048, file: !3, discriminator: 1)
!3053 = !DILocation(line: 1632, column: 13, scope: !3049)
!3054 = !DILocation(line: 1634, column: 9, scope: !3049)
!3055 = !DILocation(line: 1636, column: 1, scope: !3005)
!3056 = distinct !DISubprogram(name: "hci_tx_channel_chassification", scope: !3, file: !3, line: 1639, type: !876, isLocal: false, isDefinition: true, scopeLine: 1640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3057)
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "map", arg: 1, scope: !3056, file: !3, line: 1639, type: !540)
!3059 = !DILocation(line: 1639, column: 40, scope: !3056)
!3060 = !DILocation(line: 1641, column: 5, scope: !3056)
!3061 = !DILocation(line: 1642, column: 1, scope: !3056)
!3062 = distinct !DISubprogram(name: "hci_usable_acl_packet_types", scope: !3, file: !3, line: 1671, type: !3063, isLocal: false, isDefinition: true, scopeLine: 1672, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!527}
!3065 = !DILocalVariable(name: "buffer_size", arg: 1, scope: !3066, file: !3, line: 1653, type: !527)
!3066 = distinct !DISubprogram(name: "hci_acl_packet_types_for_buffer_size", scope: !3, file: !3, line: 1653, type: !3067, isLocal: true, isDefinition: true, scopeLine: 1654, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!527, !527}
!3069 = !{!3065, !3070, !3071}
!3070 = !DILocalVariable(name: "packet_types", scope: !3066, file: !3, line: 1655, type: !527)
!3071 = !DILocalVariable(name: "i", scope: !3066, file: !3, line: 1656, type: !468)
!3072 = !DILocation(line: 1653, column: 55, scope: !3066, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1673, column: 12, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3062, file: !3, discriminator: 1)
!3075 = !DILocation(line: 1655, column: 9, scope: !3066, inlinedAt: !3073)
!3076 = !DILocation(line: 1656, column: 9, scope: !3066, inlinedAt: !3073)
!3077 = !DILocation(line: 1657, column: 5, scope: !3078, inlinedAt: !3073)
!3078 = !DILexicalBlockFile(scope: !3079, file: !3, discriminator: 1)
!3079 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1657, column: 5)
!3080 = !DILocation(line: 1658, column: 38, scope: !3081, inlinedAt: !3073)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1658, column: 13)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 1657, column: 30)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 1657, column: 5)
!3084 = !DILocation(line: 1661, column: 38, scope: !3085, inlinedAt: !3073)
!3085 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1661, column: 13)
!3086 = !DILocation(line: 1658, column: 13, scope: !3082, inlinedAt: !3073)
!3087 = !DILocation(line: 1662, column: 31, scope: !3088, inlinedAt: !3073)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1661, column: 54)
!3089 = !DILocation(line: 1662, column: 26, scope: !3088, inlinedAt: !3073)
!3090 = !DILocation(line: 1663, column: 9, scope: !3088, inlinedAt: !3073)
!3091 = !DILocation(line: 1657, column: 26, scope: !3092, inlinedAt: !3073)
!3092 = !DILexicalBlockFile(scope: !3083, file: !3, discriminator: 2)
!3093 = !DILocation(line: 1657, column: 19, scope: !3094, inlinedAt: !3073)
!3094 = !DILexicalBlockFile(scope: !3083, file: !3, discriminator: 1)
!3095 = distinct !{!3095, !3096, !3097}
!3096 = !DILocation(line: 1657, column: 5, scope: !3079)
!3097 = !DILocation(line: 1664, column: 5, scope: !3079)
!3098 = !DILocation(line: 1666, column: 18, scope: !3066, inlinedAt: !3073)
!3099 = !DILocation(line: 1673, column: 5, scope: !3062)
!3100 = distinct !DISubprogram(name: "hci_max_acl_data_packet_length", scope: !3, file: !3, line: 1822, type: !3063, isLocal: false, isDefinition: true, scopeLine: 1823, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3101 = !DILocation(line: 1824, column: 5, scope: !3100)
!3102 = distinct !DISubprogram(name: "hci_create_connection_cmd", scope: !3, file: !3, line: 1676, type: !3103, isLocal: false, isDefinition: true, scopeLine: 1678, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !556, !527, !528, !528, !527, !528}
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111}
!3106 = !DILocalVariable(name: "addr", arg: 1, scope: !3102, file: !3, line: 1676, type: !556)
!3107 = !DILocalVariable(name: "packet_type", arg: 2, scope: !3102, file: !3, line: 1676, type: !527)
!3108 = !DILocalVariable(name: "mode", arg: 3, scope: !3102, file: !3, line: 1676, type: !528)
!3109 = !DILocalVariable(name: "reserved", arg: 4, scope: !3102, file: !3, line: 1677, type: !528)
!3110 = !DILocalVariable(name: "clk_offset", arg: 5, scope: !3102, file: !3, line: 1677, type: !527)
!3111 = !DILocalVariable(name: "allow_role_switch", arg: 6, scope: !3102, file: !3, line: 1677, type: !528)
!3112 = !DILocation(line: 1676, column: 42, scope: !3102)
!3113 = !DILocation(line: 1676, column: 52, scope: !3102)
!3114 = !DILocation(line: 1676, column: 68, scope: !3102)
!3115 = !DILocation(line: 1677, column: 35, scope: !3102)
!3116 = !DILocation(line: 1677, column: 49, scope: !3102)
!3117 = !DILocation(line: 1677, column: 64, scope: !3102)
!3118 = !DILocation(line: 1679, column: 9, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 1679, column: 9)
!3120 = !DILocation(line: 1679, column: 29, scope: !3119)
!3121 = !DILocation(line: 1679, column: 9, scope: !3102)
!3122 = !DILocation(line: 1682, column: 5, scope: !3102)
!3123 = !DILocation(line: 1684, column: 1, scope: !3102)
!3124 = distinct !DISubprogram(name: "hci_disconnect_cmd", scope: !3, file: !3, line: 1687, type: !525, isLocal: false, isDefinition: true, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3125)
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "handle", arg: 1, scope: !3124, file: !3, line: 1687, type: !527)
!3127 = !DILocalVariable(name: "reason", arg: 2, scope: !3124, file: !3, line: 1687, type: !528)
!3128 = !DILocation(line: 1687, column: 29, scope: !3124)
!3129 = !DILocation(line: 1687, column: 40, scope: !3124)
!3130 = !DILocation(line: 1689, column: 5, scope: !3124)
!3131 = !DILocation(line: 1690, column: 1, scope: !3124)
!3132 = distinct !DISubprogram(name: "hci_test_box_key_cmd", scope: !3, file: !3, line: 1691, type: !3133, isLocal: false, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{null, !528, !527}
!3135 = !{!3136, !3137}
!3136 = !DILocalVariable(name: "cmd", arg: 1, scope: !3132, file: !3, line: 1691, type: !528)
!3137 = !DILocalVariable(name: "handle", arg: 2, scope: !3132, file: !3, line: 1691, type: !527)
!3138 = !DILocation(line: 1691, column: 30, scope: !3132)
!3139 = !DILocation(line: 1691, column: 39, scope: !3132)
!3140 = !DILocation(line: 1693, column: 5, scope: !3132)
!3141 = !DILocation(line: 1694, column: 1, scope: !3132)
!3142 = distinct !DISubprogram(name: "hci_send_user_info_cmd", scope: !3, file: !3, line: 1696, type: !3143, isLocal: false, isDefinition: true, scopeLine: 1697, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !603, !527}
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "info", arg: 1, scope: !3142, file: !3, line: 1696, type: !603)
!3147 = !DILocalVariable(name: "handle", arg: 2, scope: !3142, file: !3, line: 1696, type: !527)
!3148 = !DILocation(line: 1696, column: 33, scope: !3142)
!3149 = !DILocation(line: 1696, column: 43, scope: !3142)
!3150 = !DILocation(line: 1698, column: 5, scope: !3142)
!3151 = !DILocation(line: 1699, column: 1, scope: !3142)
!3152 = distinct !DISubprogram(name: "hci_disconnect_all_standard_connect", scope: !3, file: !3, line: 1701, type: !727, isLocal: false, isDefinition: true, scopeLine: 1702, isOptimized: true, unit: !2, variables: !695)
!3153 = !DILocation(line: 1703, column: 5, scope: !3152)
!3154 = !DILocation(line: 1704, column: 1, scope: !3152)
!3155 = distinct !DISubprogram(name: "hci_standard_link_check", scope: !3, file: !3, line: 1708, type: !717, isLocal: false, isDefinition: true, scopeLine: 1709, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3156 = !DILocation(line: 1710, column: 12, scope: !3155)
!3157 = !DILocation(line: 1710, column: 5, scope: !3155)
!3158 = distinct !DISubprogram(name: "hci_standard_connect_check", scope: !3, file: !3, line: 1714, type: !717, isLocal: false, isDefinition: true, scopeLine: 1715, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3159 = !DILocation(line: 1716, column: 12, scope: !3158)
!3160 = !DILocation(line: 1716, column: 5, scope: !3158)
!3161 = distinct !DISubprogram(name: "sco_connection_disconnect", scope: !3, file: !3, line: 1720, type: !3162, isLocal: false, isDefinition: true, scopeLine: 1721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!528, !556}
!3164 = !{!3165, !3166}
!3165 = !DILocalVariable(name: "addr", arg: 1, scope: !3161, file: !3, line: 1720, type: !556)
!3166 = !DILocalVariable(name: "con_handle", scope: !3161, file: !3, line: 1722, type: !603)
!3167 = !DILocation(line: 1720, column: 40, scope: !3161)
!3168 = !DILocation(line: 1722, column: 9, scope: !3161)
!3169 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 1723, column: 19, scope: !3161)
!3171 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3170)
!3172 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3170)
!3173 = !DILocation(line: 1724, column: 10, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1724, column: 9)
!3175 = !DILocation(line: 1724, column: 9, scope: !3161)
!3176 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 1725, column: 22, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1724, column: 22)
!3179 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3177)
!3180 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3177)
!3181 = !DILocation(line: 1727, column: 20, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1727, column: 9)
!3183 = !DILocation(line: 1727, column: 9, scope: !3161)
!3184 = !DILocation(line: 1728, column: 9, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 1728, column: 9)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1727, column: 26)
!3187 = !DILocation(line: 1728, column: 9, scope: !3186)
!3188 = !DILocation(line: 1728, column: 9, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3185, file: !3, discriminator: 1)
!3190 = !DILocation(line: 1729, column: 9, scope: !3186)
!3191 = !DILocation(line: 1731, column: 9, scope: !3186)
!3192 = !DILocation(line: 1734, column: 1, scope: !3161)
!3193 = distinct !DISubprogram(name: "sco_connection_setup", scope: !3, file: !3, line: 1739, type: !3194, isLocal: false, isDefinition: true, scopeLine: 1740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!528, !556, !528}
!3196 = !{!3197, !3198, !3199, !3200}
!3197 = !DILocalVariable(name: "addr", arg: 1, scope: !3193, file: !3, line: 1739, type: !556)
!3198 = !DILocalVariable(name: "flag", arg: 2, scope: !3193, file: !3, line: 1739, type: !528)
!3199 = !DILocalVariable(name: "con_handle", scope: !3193, file: !3, line: 1741, type: !603)
!3200 = !DILocalVariable(name: "esco_coder_type", scope: !3193, file: !3, line: 1742, type: !527)
!3201 = !DILocation(line: 1739, column: 35, scope: !3193)
!3202 = !DILocation(line: 1739, column: 44, scope: !3193)
!3203 = !DILocation(line: 1741, column: 9, scope: !3193)
!3204 = !DILocation(line: 1742, column: 9, scope: !3193)
!3205 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 1743, column: 19, scope: !3193)
!3207 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3206)
!3208 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3206)
!3209 = !DILocation(line: 1744, column: 10, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 1744, column: 9)
!3211 = !DILocation(line: 1744, column: 9, scope: !3193)
!3212 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1745, column: 22, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1744, column: 22)
!3215 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3213)
!3216 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3213)
!3217 = !DILocation(line: 1747, column: 10, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 1747, column: 9)
!3219 = !DILocation(line: 1747, column: 9, scope: !3193)
!3220 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1748, column: 22, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 1747, column: 22)
!3223 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3221)
!3224 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3221)
!3225 = !DILocation(line: 1749, column: 13, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 1749, column: 13)
!3227 = !DILocation(line: 1749, column: 13, scope: !3222)
!3228 = !DILocation(line: 1750, column: 13, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1750, column: 13)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1749, column: 25)
!3231 = !DILocation(line: 1750, column: 13, scope: !3230)
!3232 = !DILocation(line: 1750, column: 13, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3229, file: !3, discriminator: 1)
!3234 = !DILocation(line: 1751, column: 18, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1751, column: 17)
!3236 = !DILocation(line: 1751, column: 38, scope: !3235)
!3237 = !DILocation(line: 1751, column: 51, scope: !3235)
!3238 = !DILocation(line: 1751, column: 65, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !3235, file: !3, discriminator: 1)
!3240 = !DILocation(line: 1751, column: 57, scope: !3235)
!3241 = !DILocation(line: 1754, column: 13, scope: !3230)
!3242 = !DILocation(line: 1755, column: 9, scope: !3230)
!3243 = !DILocation(line: 1759, column: 1, scope: !3193)
!3244 = distinct !DISubprogram(name: "sco_connection_setup_dis", scope: !3, file: !3, line: 1761, type: !3162, isLocal: false, isDefinition: true, scopeLine: 1762, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3245)
!3245 = !{!3246, !3247}
!3246 = !DILocalVariable(name: "addr", arg: 1, scope: !3244, file: !3, line: 1761, type: !556)
!3247 = !DILocalVariable(name: "con_handle", scope: !3244, file: !3, line: 1763, type: !603)
!3248 = !DILocation(line: 1761, column: 39, scope: !3244)
!3249 = !DILocation(line: 1763, column: 9, scope: !3244)
!3250 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 1764, column: 18, scope: !3244)
!3252 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3251)
!3253 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3251)
!3254 = !DILocation(line: 1765, column: 10, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1765, column: 9)
!3256 = !DILocation(line: 1765, column: 9, scope: !3244)
!3257 = !DILocation(line: 121, column: 46, scope: !673, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 1766, column: 23, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1765, column: 22)
!3260 = !DILocation(line: 121, column: 58, scope: !673, inlinedAt: !3258)
!3261 = !DILocation(line: 123, column: 12, scope: !673, inlinedAt: !3258)
!3262 = !DILocation(line: 1768, column: 10, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1768, column: 9)
!3264 = !DILocation(line: 1768, column: 9, scope: !3244)
!3265 = !DILocation(line: 1772, column: 16, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 1771, column: 12)
!3267 = !DILocation(line: 1772, column: 9, scope: !3266)
!3268 = !DILocation(line: 1774, column: 1, scope: !3244)
!3269 = distinct !DISubprogram(name: "hci_remote_name_request_cmd", scope: !3, file: !3, line: 1777, type: !3270, isLocal: false, isDefinition: true, scopeLine: 1778, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{null, !556, !528, !528, !527}
!3272 = !{!3273, !3274, !3275, !3276}
!3273 = !DILocalVariable(name: "addr", arg: 1, scope: !3269, file: !3, line: 1777, type: !556)
!3274 = !DILocalVariable(name: "mode", arg: 2, scope: !3269, file: !3, line: 1777, type: !528)
!3275 = !DILocalVariable(name: "rev", arg: 3, scope: !3269, file: !3, line: 1777, type: !528)
!3276 = !DILocalVariable(name: "clk_offset", arg: 4, scope: !3269, file: !3, line: 1777, type: !527)
!3277 = !DILocation(line: 1777, column: 44, scope: !3269)
!3278 = !DILocation(line: 1777, column: 53, scope: !3269)
!3279 = !DILocation(line: 1777, column: 62, scope: !3269)
!3280 = !DILocation(line: 1777, column: 71, scope: !3269)
!3281 = !DILocation(line: 1780, column: 5, scope: !3269)
!3282 = !DILocation(line: 1781, column: 1, scope: !3269)
!3283 = distinct !DISubprogram(name: "hci_power_control", scope: !3, file: !3, line: 1783, type: !3284, isLocal: false, isDefinition: true, scopeLine: 1784, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3287)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!468, !3286}
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "HCI_POWER_MODE", file: !6, line: 1484, baseType: !224)
!3287 = !{!3288}
!3288 = !DILocalVariable(name: "mode", arg: 1, scope: !3283, file: !3, line: 1783, type: !3286)
!3289 = !DILocation(line: 1783, column: 39, scope: !3283)
!3290 = !DILocation(line: 1785, column: 5, scope: !3283)
!3291 = distinct !DISubprogram(name: "hci_non_flushable_packet_boundary_flag_supported", scope: !3, file: !3, line: 1788, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1789, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!468}
!3294 = !DILocation(line: 1790, column: 5, scope: !3291)
!3295 = distinct !DISubprogram(name: "hci_can_send_acl_packet_now", scope: !3, file: !3, line: 1794, type: !2016, isLocal: false, isDefinition: true, scopeLine: 1795, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3296)
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3295, file: !3, line: 1794, type: !424)
!3298 = !DILocation(line: 1794, column: 50, scope: !3295)
!3299 = !DILocation(line: 1796, column: 22, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 1796, column: 9)
!3301 = !DILocation(line: 1796, column: 9, scope: !3300)
!3302 = !DILocation(line: 1796, column: 9, scope: !3295)
!3303 = !DILocation(line: 2054, column: 59, scope: !2015, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1799, column: 12, scope: !3295)
!3305 = !DILocation(line: 2056, column: 12, scope: !2015, inlinedAt: !3304)
!3306 = !DILocation(line: 2056, column: 61, scope: !2015, inlinedAt: !3304)
!3307 = !DILocation(line: 1799, column: 5, scope: !3295)
!3308 = !DILocation(line: 1800, column: 1, scope: !3295)
!3309 = distinct !DISubprogram(name: "hci_reserve_packet_buffer", scope: !3, file: !3, line: 1802, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1803, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3310 = !DILocation(line: 1804, column: 22, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 1804, column: 9)
!3312 = !DILocation(line: 1804, column: 9, scope: !3311)
!3313 = !DILocation(line: 1804, column: 9, scope: !3309)
!3314 = !DILocation(line: 1807, column: 45, scope: !3309)
!3315 = !DILocation(line: 1808, column: 5, scope: !3309)
!3316 = !DILocation(line: 1809, column: 1, scope: !3309)
!3317 = distinct !DISubprogram(name: "hci_connections_get_iterator", scope: !3, file: !3, line: 1811, type: !3318, isLocal: false, isDefinition: true, scopeLine: 1812, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3321)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{null, !3320}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 32)
!3321 = !{!3322}
!3322 = !DILocalVariable(name: "it", arg: 1, scope: !3317, file: !3, line: 1811, type: !3320)
!3323 = !DILocation(line: 1811, column: 59, scope: !3317)
!3324 = !DILocation(line: 1813, column: 5, scope: !3317)
!3325 = !DILocation(line: 1814, column: 1, scope: !3317)
!3326 = distinct !DISubprogram(name: "hci_disconnect_security_block", scope: !3, file: !3, line: 1817, type: !3327, isLocal: false, isDefinition: true, scopeLine: 1818, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3329)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !424}
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3326, file: !3, line: 1817, type: !424)
!3331 = !DILocation(line: 1817, column: 53, scope: !3326)
!3332 = !DILocation(line: 1820, column: 1, scope: !3326)
!3333 = distinct !DISubprogram(name: "hci_can_send_command_packet_now", scope: !3, file: !3, line: 1827, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1828, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3334 = !DILocation(line: 1829, column: 5, scope: !3333)
!3335 = distinct !DISubprogram(name: "hci_can_send_acl_classic_packet_now", scope: !3, file: !3, line: 1833, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1834, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3336 = !DILocation(line: 1835, column: 5, scope: !3335)
!3337 = distinct !DISubprogram(name: "gap_ssp_supported_on_both_sides", scope: !3, file: !3, line: 1843, type: !2016, isLocal: false, isDefinition: true, scopeLine: 1844, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3338)
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "handle", arg: 1, scope: !3337, file: !3, line: 1843, type: !424)
!3340 = !DILocation(line: 1843, column: 54, scope: !3337)
!3341 = !DILocation(line: 1845, column: 5, scope: !3337)
!3342 = distinct !DISubprogram(name: "gap_get_connection_type", scope: !3, file: !3, line: 1847, type: !2016, isLocal: false, isDefinition: true, scopeLine: 1848, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3343)
!3343 = !{!3344}
!3344 = !DILocalVariable(name: "connection_handle", arg: 1, scope: !3342, file: !3, line: 1847, type: !424)
!3345 = !DILocation(line: 1847, column: 46, scope: !3342)
!3346 = !DILocation(line: 1849, column: 5, scope: !3342)
!3347 = distinct !DISubprogram(name: "hci_authentication_active_for_handle", scope: !3, file: !3, line: 1852, type: !2016, isLocal: false, isDefinition: true, scopeLine: 1853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3348)
!3348 = !{!3349}
!3349 = !DILocalVariable(name: "handle", arg: 1, scope: !3347, file: !3, line: 1852, type: !424)
!3350 = !DILocation(line: 1852, column: 59, scope: !3347)
!3351 = !DILocation(line: 1854, column: 5, scope: !3347)
!3352 = distinct !DISubprogram(name: "gap_drop_link_key_for_bd_addr", scope: !3, file: !3, line: 1857, type: !3353, isLocal: false, isDefinition: true, scopeLine: 1858, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{null, !556}
!3355 = !{!3356}
!3356 = !DILocalVariable(name: "addr", arg: 1, scope: !3352, file: !3, line: 1857, type: !556)
!3357 = !DILocation(line: 1857, column: 46, scope: !3352)
!3358 = !DILocation(line: 1860, column: 1, scope: !3352)
!3359 = distinct !DISubprogram(name: "gap_request_security_level", scope: !3, file: !3, line: 1862, type: !3360, isLocal: false, isDefinition: true, scopeLine: 1863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !424, !468}
!3362 = !{!3363, !3364}
!3363 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3359, file: !3, line: 1862, type: !424)
!3364 = !DILocalVariable(name: "requested_level", arg: 2, scope: !3359, file: !3, line: 1862, type: !468)
!3365 = !DILocation(line: 1862, column: 50, scope: !3359)
!3366 = !DILocation(line: 1862, column: 66, scope: !3359)
!3367 = !DILocation(line: 1865, column: 1, scope: !3359)
!3368 = distinct !DISubprogram(name: "hci_get_state", scope: !3, file: !3, line: 1868, type: !3369, isLocal: false, isDefinition: true, scopeLine: 1869, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!3371}
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "HCI_STATE", file: !6, line: 1496, baseType: !228)
!3372 = !DILocation(line: 1870, column: 5, scope: !3368)
!3373 = distinct !DISubprogram(name: "hci_event_callback_set", scope: !3, file: !3, line: 1878, type: !3374, isLocal: false, isDefinition: true, scopeLine: 1879, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !553}
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "cbk_ph", arg: 1, scope: !3373, file: !3, line: 1878, type: !553)
!3378 = !DILocation(line: 1878, column: 35, scope: !3373)
!3379 = !DILocation(line: 1880, column: 46, scope: !3373)
!3380 = !DILocation(line: 1910, column: 5, scope: !3381, inlinedAt: !3386)
!3381 = distinct !DISubprogram(name: "hci_add_event_handler", scope: !3, file: !3, line: 1908, type: !3382, isLocal: false, isDefinition: true, scopeLine: 1909, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !501}
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "callback_handler", arg: 1, scope: !3381, file: !3, line: 1908, type: !501)
!3386 = distinct !DILocation(line: 1881, column: 5, scope: !3373)
!3387 = !DILocation(line: 1883, column: 1, scope: !3373)
!3388 = !DILocation(line: 1908, column: 34, scope: !3381)
!3389 = !DILocation(line: 1910, column: 5, scope: !3381)
!3390 = !DILocation(line: 1911, column: 1, scope: !3381)
!3391 = distinct !DISubprogram(name: "hci_is_packet_buffer_reserved", scope: !3, file: !3, line: 1892, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1893, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3392 = !DILocation(line: 1895, column: 25, scope: !3391)
!3393 = !DILocation(line: 1895, column: 12, scope: !3391)
!3394 = !DILocation(line: 1895, column: 5, scope: !3391)
!3395 = distinct !DISubprogram(name: "hci_register_acl_packet_handler", scope: !3, file: !3, line: 1914, type: !3396, isLocal: false, isDefinition: true, scopeLine: 1915, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !552}
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "handler", arg: 1, scope: !3395, file: !3, line: 1914, type: !552)
!3400 = !DILocation(line: 1914, column: 63, scope: !3395)
!3401 = !DILocation(line: 1917, column: 1, scope: !3395)
!3402 = distinct !DISubprogram(name: "gap_connectable_control", scope: !3, file: !3, line: 1918, type: !3403, isLocal: false, isDefinition: true, scopeLine: 1919, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !418}
!3405 = !{!3406}
!3406 = !DILocalVariable(name: "enable", arg: 1, scope: !3402, file: !3, line: 1918, type: !418)
!3407 = !DILocation(line: 1918, column: 38, scope: !3402)
!3408 = !DILocation(line: 1921, column: 1, scope: !3402)
!3409 = distinct !DISubprogram(name: "hci_le_advertisements_set_params", scope: !3, file: !3, line: 1924, type: !3410, isLocal: false, isDefinition: true, scopeLine: 1928, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !425, !425, !418, !418, !556, !418, !418}
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3413 = !DILocalVariable(name: "adv_int_min", arg: 1, scope: !3409, file: !3, line: 1924, type: !425)
!3414 = !DILocalVariable(name: "adv_int_max", arg: 2, scope: !3409, file: !3, line: 1925, type: !425)
!3415 = !DILocalVariable(name: "adv_type", arg: 3, scope: !3409, file: !3, line: 1925, type: !418)
!3416 = !DILocalVariable(name: "direct_address_typ", arg: 4, scope: !3409, file: !3, line: 1926, type: !418)
!3417 = !DILocalVariable(name: "direct_address", arg: 5, scope: !3409, file: !3, line: 1926, type: !556)
!3418 = !DILocalVariable(name: "channel_map", arg: 6, scope: !3409, file: !3, line: 1927, type: !418)
!3419 = !DILocalVariable(name: "filter_policy", arg: 7, scope: !3409, file: !3, line: 1927, type: !418)
!3420 = !DILocation(line: 1924, column: 48, scope: !3409)
!3421 = !DILocation(line: 1925, column: 48, scope: !3409)
!3422 = !DILocation(line: 1925, column: 69, scope: !3409)
!3423 = !DILocation(line: 1926, column: 47, scope: !3409)
!3424 = !DILocation(line: 1926, column: 77, scope: !3409)
!3425 = !DILocation(line: 1927, column: 47, scope: !3409)
!3426 = !DILocation(line: 1927, column: 68, scope: !3409)
!3427 = !DILocation(line: 1929, column: 1, scope: !3409)
!3428 = distinct !DISubprogram(name: "gap_advertisements_set_data", scope: !3, file: !3, line: 1932, type: !3429, isLocal: false, isDefinition: true, scopeLine: 1933, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !418, !556}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "advertising_data_length", arg: 1, scope: !3428, file: !3, line: 1932, type: !418)
!3433 = !DILocalVariable(name: "advertising_data", arg: 2, scope: !3428, file: !3, line: 1932, type: !556)
!3434 = !DILocation(line: 1932, column: 42, scope: !3428)
!3435 = !DILocation(line: 1932, column: 76, scope: !3428)
!3436 = !DILocation(line: 1934, column: 1, scope: !3428)
!3437 = distinct !DISubprogram(name: "gap_advertisements_enable", scope: !3, file: !3, line: 1937, type: !2788, isLocal: false, isDefinition: true, scopeLine: 1938, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3438)
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "enabled", arg: 1, scope: !3437, file: !3, line: 1937, type: !468)
!3440 = !DILocation(line: 1937, column: 36, scope: !3437)
!3441 = !DILocation(line: 1939, column: 1, scope: !3437)
!3442 = distinct !DISubprogram(name: "lmp_hci_le_encrypt", scope: !3, file: !3, line: 1941, type: !727, isLocal: false, isDefinition: true, scopeLine: 1942, isOptimized: true, unit: !2, variables: !695)
!3443 = !DILocation(line: 1944, column: 1, scope: !3442)
!3444 = distinct !DISubprogram(name: "le_hci_connection_links_empty", scope: !3, file: !3, line: 1948, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3445 = !DILocation(line: 1950, column: 9, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 1950, column: 9)
!3447 = !DILocation(line: 1950, column: 9, scope: !3444)
!3448 = !DILocation(line: 1951, column: 16, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 1950, column: 50)
!3450 = !DILocation(line: 1951, column: 9, scope: !3449)
!3451 = !DILocation(line: 1954, column: 1, scope: !3444)
!3452 = distinct !DISubprogram(name: "hci_number_free_acl_slots_for_handle", scope: !3, file: !3, line: 2031, type: !2016, isLocal: false, isDefinition: true, scopeLine: 2032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3453)
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3452, file: !3, line: 2031, type: !424)
!3455 = !DILocalVariable(name: "connection", scope: !3452, file: !3, line: 2034, type: !402)
!3456 = !DILocation(line: 2031, column: 59, scope: !3452)
!3457 = !DILocation(line: 2034, column: 39, scope: !3452)
!3458 = !DILocation(line: 2034, column: 26, scope: !3452)
!3459 = !DILocation(line: 2035, column: 10, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 2035, column: 9)
!3461 = !DILocation(line: 2035, column: 9, scope: !3452)
!3462 = !DILocation(line: 2038, column: 70, scope: !3452)
!3463 = !DILocation(line: 2038, column: 12, scope: !3452)
!3464 = !DILocation(line: 2038, column: 5, scope: !3452)
!3465 = !DILocation(line: 2039, column: 1, scope: !3452)
!3466 = distinct !DISubprogram(name: "hci_number_free_acl_slots_for_connection_type", scope: !3, file: !3, line: 1971, type: !3467, isLocal: true, isDefinition: true, scopeLine: 1972, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!468, !428}
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3478}
!3470 = !DILocalVariable(name: "address_type", arg: 1, scope: !3466, file: !3, line: 1971, type: !428)
!3471 = !DILocalVariable(name: "num_packets_sent_classic", scope: !3466, file: !3, line: 1973, type: !489)
!3472 = !DILocalVariable(name: "num_packets_sent_le", scope: !3466, file: !3, line: 1974, type: !489)
!3473 = !DILocalVariable(name: "it", scope: !3466, file: !3, line: 1976, type: !558)
!3474 = !DILocalVariable(name: "connection", scope: !3475, file: !3, line: 1978, type: !402)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 1977, column: 92)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1977, column: 5)
!3477 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 1977, column: 5)
!3478 = !DILocalVariable(name: "free_slots_le", scope: !3466, file: !3, line: 1988, type: !468)
!3479 = !DILocation(line: 1971, column: 73, scope: !3466)
!3480 = !DILocation(line: 1973, column: 18, scope: !3466)
!3481 = !DILocation(line: 1974, column: 18, scope: !3466)
!3482 = !DILocation(line: 1976, column: 28, scope: !3466)
!3483 = !DILocation(line: 1977, column: 5, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3477, file: !3, discriminator: 1)
!3485 = !DILocation(line: 1978, column: 30, scope: !3475)
!3486 = !DILocation(line: 1979, column: 25, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 1979, column: 13)
!3488 = !DILocation(line: 1979, column: 38, scope: !3487)
!3489 = !DILocation(line: 1979, column: 13, scope: !3475)
!3490 = !DILocation(line: 1978, column: 43, scope: !3475)
!3491 = !DILocation(line: 1983, column: 33, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1982, column: 16)
!3493 = !DILocation(line: 1977, column: 86, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3476, file: !3, discriminator: 2)
!3495 = distinct !{!3495, !3496, !3497}
!3496 = !DILocation(line: 1977, column: 5, scope: !3477)
!3497 = !DILocation(line: 1986, column: 5, scope: !3477)
!3498 = !DILocation(line: 1988, column: 9, scope: !3466)
!3499 = !DILocation(line: 1995, column: 22, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 1995, column: 9)
!3501 = !DILocation(line: 1995, column: 9, scope: !3500)
!3502 = !DILocation(line: 1995, column: 9, scope: !3466)
!3503 = !DILocation(line: 1997, column: 25, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 1995, column: 48)
!3505 = !DILocation(line: 1997, column: 63, scope: !3504)
!3506 = !DILocation(line: 1998, column: 27, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1998, column: 13)
!3508 = !DILocation(line: 1998, column: 13, scope: !3504)
!3509 = !DILocation(line: 2011, column: 5, scope: !3466)
!3510 = !DILocation(line: 2017, column: 9, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 2011, column: 27)
!3512 = !DILocation(line: 2027, column: 9, scope: !3511)
!3513 = !DILocation(line: 2029, column: 1, scope: !3466)
!3514 = distinct !DISubprogram(name: "hci_can_send_acl_le_packet_now", scope: !3, file: !3, line: 2046, type: !3292, isLocal: false, isDefinition: true, scopeLine: 2047, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3515 = !DILocation(line: 2048, column: 22, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 2048, column: 9)
!3517 = !DILocation(line: 2048, column: 9, scope: !3516)
!3518 = !DILocation(line: 2048, column: 9, scope: !3514)
!3519 = !DILocalVariable(name: "address_type", arg: 1, scope: !3520, file: !3, line: 2041, type: !428)
!3520 = distinct !DISubprogram(name: "hci_can_send_prepared_acl_packet_for_address_type", scope: !3, file: !3, line: 2041, type: !3467, isLocal: true, isDefinition: true, scopeLine: 2042, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3521)
!3521 = !{!3519}
!3522 = !DILocation(line: 2041, column: 77, scope: !3520, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 2051, column: 12, scope: !3514)
!3524 = !DILocation(line: 2043, column: 12, scope: !3520, inlinedAt: !3523)
!3525 = !DILocation(line: 2043, column: 72, scope: !3520, inlinedAt: !3523)
!3526 = !DILocation(line: 2051, column: 5, scope: !3514)
!3527 = !DILocation(line: 2052, column: 1, scope: !3514)
!3528 = distinct !DISubprogram(name: "gap_le_get_own_address", scope: !3, file: !3, line: 2124, type: !3529, isLocal: false, isDefinition: true, scopeLine: 2125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !425, !556, !556}
!3531 = !{!3532, !3533, !3534, !3535, !3536}
!3532 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3528, file: !3, line: 2124, type: !425)
!3533 = !DILocalVariable(name: "addr_type", arg: 2, scope: !3528, file: !3, line: 2124, type: !556)
!3534 = !DILocalVariable(name: "addr", arg: 3, scope: !3528, file: !3, line: 2124, type: !556)
!3535 = !DILocalVariable(name: "swap_addr", scope: !3528, file: !3, line: 2126, type: !598)
!3536 = !DILocalVariable(name: "connection", scope: !3528, file: !3, line: 2128, type: !402)
!3537 = !DILocation(line: 2124, column: 38, scope: !3528)
!3538 = !DILocation(line: 2124, column: 59, scope: !3528)
!3539 = !DILocation(line: 2124, column: 80, scope: !3528)
!3540 = !DILocation(line: 2126, column: 5, scope: !3528)
!3541 = !DILocation(line: 2126, column: 8, scope: !3528)
!3542 = !DILocation(line: 2128, column: 39, scope: !3528)
!3543 = !DILocation(line: 2128, column: 26, scope: !3528)
!3544 = !DILocation(line: 2130, column: 9, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 2130, column: 9)
!3546 = !DILocation(line: 2130, column: 9, scope: !3528)
!3547 = !DILocation(line: 2131, column: 34, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 2130, column: 21)
!3549 = !{!838, !661, i64 1220}
!3550 = !DILocation(line: 2131, column: 22, scope: !3548)
!3551 = !DILocation(line: 2131, column: 20, scope: !3548)
!3552 = !DILocation(line: 2132, column: 9, scope: !3548)
!3553 = !DILocation(line: 2133, column: 5, scope: !3548)
!3554 = !DILocation(line: 2134, column: 20, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 2133, column: 12)
!3556 = !DILocation(line: 2135, column: 9, scope: !3555)
!3557 = !DILocation(line: 2139, column: 5, scope: !3528)
!3558 = !DILocation(line: 2140, column: 1, scope: !3528)
!3559 = distinct !DISubprogram(name: "gap_le_get_own_id_address", scope: !3, file: !3, line: 2142, type: !3529, isLocal: false, isDefinition: true, scopeLine: 2143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565}
!3561 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3559, file: !3, line: 2142, type: !425)
!3562 = !DILocalVariable(name: "addr_type", arg: 2, scope: !3559, file: !3, line: 2142, type: !556)
!3563 = !DILocalVariable(name: "addr", arg: 3, scope: !3559, file: !3, line: 2142, type: !556)
!3564 = !DILocalVariable(name: "swap_addr", scope: !3559, file: !3, line: 2144, type: !598)
!3565 = !DILocalVariable(name: "connection", scope: !3559, file: !3, line: 2146, type: !402)
!3566 = !DILocation(line: 2142, column: 41, scope: !3559)
!3567 = !DILocation(line: 2142, column: 62, scope: !3559)
!3568 = !DILocation(line: 2142, column: 83, scope: !3559)
!3569 = !DILocation(line: 2144, column: 5, scope: !3559)
!3570 = !DILocation(line: 2144, column: 8, scope: !3559)
!3571 = !DILocation(line: 2146, column: 39, scope: !3559)
!3572 = !DILocation(line: 2146, column: 26, scope: !3559)
!3573 = !DILocation(line: 2148, column: 16, scope: !3559)
!3574 = !DILocation(line: 2149, column: 9, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 2149, column: 9)
!3576 = !DILocation(line: 2149, column: 9, scope: !3559)
!3577 = !DILocation(line: 2150, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 2149, column: 21)
!3579 = !DILocation(line: 2152, column: 9, scope: !3578)
!3580 = !DILocation(line: 2153, column: 5, scope: !3578)
!3581 = !DILocation(line: 2154, column: 9, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 2153, column: 12)
!3583 = !DILocation(line: 2156, column: 1, scope: !3559)
!3584 = distinct !DISubprogram(name: "gap_le_get_own_address_type", scope: !3, file: !3, line: 2158, type: !3585, isLocal: false, isDefinition: true, scopeLine: 2159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!528, !425}
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3584, file: !3, line: 2158, type: !425)
!3589 = !DILocalVariable(name: "connection", scope: !3584, file: !3, line: 2160, type: !402)
!3590 = !DILocation(line: 2158, column: 41, scope: !3584)
!3591 = !DILocation(line: 2160, column: 39, scope: !3584)
!3592 = !DILocation(line: 2160, column: 26, scope: !3584)
!3593 = !DILocation(line: 2162, column: 9, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 2162, column: 9)
!3595 = !DILocation(line: 2162, column: 9, scope: !3584)
!3596 = !DILocation(line: 2163, column: 28, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 2162, column: 21)
!3598 = !DILocation(line: 2163, column: 16, scope: !3597)
!3599 = !DILocation(line: 2163, column: 9, scope: !3597)
!3600 = !DILocation(line: 2167, column: 1, scope: !3584)
!3601 = distinct !DISubprogram(name: "gap_le_get_own_address_random_type", scope: !3, file: !3, line: 2169, type: !3585, isLocal: false, isDefinition: true, scopeLine: 2170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3602)
!3602 = !{!3603, !3604, !3605}
!3603 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3601, file: !3, line: 2169, type: !425)
!3604 = !DILocalVariable(name: "type", scope: !3601, file: !3, line: 2171, type: !528)
!3605 = !DILocalVariable(name: "connection", scope: !3601, file: !3, line: 2172, type: !402)
!3606 = !DILocation(line: 2169, column: 48, scope: !3601)
!3607 = !DILocation(line: 2171, column: 8, scope: !3601)
!3608 = !DILocation(line: 2172, column: 39, scope: !3601)
!3609 = !DILocation(line: 2172, column: 26, scope: !3601)
!3610 = !DILocation(line: 2174, column: 9, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 2174, column: 9)
!3612 = !DILocation(line: 2174, column: 20, scope: !3611)
!3613 = !DILocation(line: 2174, column: 35, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3611, file: !3, discriminator: 1)
!3615 = !DILocation(line: 2174, column: 23, scope: !3614)
!3616 = !DILocation(line: 2174, column: 9, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !3601, file: !3, discriminator: 1)
!3618 = !DILocation(line: 2175, column: 17, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 2174, column: 53)
!3620 = !DILocation(line: 2175, column: 9, scope: !3619)
!3621 = !DILocation(line: 2177, column: 17, scope: !3619)
!3622 = !DILocation(line: 2177, column: 44, scope: !3619)
!3623 = !DILocation(line: 2177, column: 9, scope: !3619)
!3624 = !DILocation(line: 2193, column: 5, scope: !3601)
!3625 = distinct !DISubprogram(name: "gap_le_update_connection_parameters", scope: !3, file: !3, line: 2207, type: !3626, isLocal: false, isDefinition: true, scopeLine: 2209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!468, !424, !425, !425, !425, !425}
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3634}
!3629 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3625, file: !3, line: 2207, type: !424)
!3630 = !DILocalVariable(name: "conn_interval_min", arg: 2, scope: !3625, file: !3, line: 2207, type: !425)
!3631 = !DILocalVariable(name: "conn_interval_max", arg: 3, scope: !3625, file: !3, line: 2208, type: !425)
!3632 = !DILocalVariable(name: "conn_latency", arg: 4, scope: !3625, file: !3, line: 2208, type: !425)
!3633 = !DILocalVariable(name: "supervision_timeout", arg: 5, scope: !3625, file: !3, line: 2208, type: !425)
!3634 = !DILocalVariable(name: "connection", scope: !3625, file: !3, line: 2210, type: !402)
!3635 = !DILocation(line: 2207, column: 58, scope: !3625)
!3636 = !DILocation(line: 2207, column: 79, scope: !3625)
!3637 = !DILocation(line: 2208, column: 50, scope: !3625)
!3638 = !DILocation(line: 2208, column: 78, scope: !3625)
!3639 = !DILocation(line: 2208, column: 101, scope: !3625)
!3640 = !DILocation(line: 2210, column: 39, scope: !3625)
!3641 = !DILocation(line: 2210, column: 26, scope: !3625)
!3642 = !DILocation(line: 2211, column: 10, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 2211, column: 9)
!3644 = !DILocation(line: 2211, column: 9, scope: !3625)
!3645 = !DILocation(line: 2214, column: 17, scope: !3625)
!3646 = !DILocation(line: 2214, column: 38, scope: !3625)
!3647 = !DILocation(line: 2215, column: 17, scope: !3625)
!3648 = !DILocation(line: 2215, column: 38, scope: !3625)
!3649 = !DILocation(line: 2216, column: 17, scope: !3625)
!3650 = !DILocation(line: 2216, column: 33, scope: !3625)
!3651 = !DILocation(line: 2217, column: 17, scope: !3625)
!3652 = !DILocation(line: 2217, column: 40, scope: !3625)
!3653 = !DILocation(line: 2218, column: 17, scope: !3625)
!3654 = !DILocation(line: 2218, column: 47, scope: !3625)
!3655 = !DILocation(line: 2219, column: 5, scope: !3625)
!3656 = !DILocation(line: 2220, column: 5, scope: !3625)
!3657 = !DILocation(line: 2221, column: 1, scope: !3625)
!3658 = distinct !DISubprogram(name: "gap_le_get_connection_parameter_range", scope: !3, file: !3, line: 2223, type: !3659, isLocal: false, isDefinition: true, scopeLine: 2224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3662)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{null, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 32)
!3662 = !{!3663}
!3663 = !DILocalVariable(name: "range", arg: 1, scope: !3658, file: !3, line: 2223, type: !3661)
!3664 = !DILocation(line: 2223, column: 77, scope: !3658)
!3665 = !DILocation(line: 2225, column: 27, scope: !3658)
!3666 = !{i64 0, i64 2, !873, i64 2, i64 2, !873, i64 4, i64 2, !873, i64 6, i64 2, !873, i64 8, i64 2, !873, i64 10, i64 2, !873}
!3667 = !DILocation(line: 2226, column: 1, scope: !3658)
!3668 = distinct !DISubprogram(name: "gap_le_set_connection_parameter_range", scope: !3, file: !3, line: 2228, type: !3659, isLocal: false, isDefinition: true, scopeLine: 2229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "range", arg: 1, scope: !3668, file: !3, line: 2228, type: !3661)
!3671 = !DILocation(line: 2228, column: 77, scope: !3668)
!3672 = !DILocation(line: 2230, column: 50, scope: !3668)
!3673 = !DILocation(line: 2231, column: 1, scope: !3668)
!3674 = distinct !DISubprogram(name: "hci_send_keypress", scope: !3, file: !3, line: 2235, type: !3675, isLocal: false, isDefinition: true, scopeLine: 2236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{null, !540, !603, !528}
!3677 = !{!3678, !3679, !3680}
!3678 = !DILocalVariable(name: "addr", arg: 1, scope: !3674, file: !3, line: 2235, type: !540)
!3679 = !DILocalVariable(name: "keypress", arg: 2, scope: !3674, file: !3, line: 2235, type: !603)
!3680 = !DILocalVariable(name: "cnt", arg: 3, scope: !3674, file: !3, line: 2235, type: !528)
!3681 = !DILocation(line: 2235, column: 28, scope: !3674)
!3682 = !DILocation(line: 2235, column: 38, scope: !3674)
!3683 = !DILocation(line: 2235, column: 51, scope: !3674)
!3684 = !DILocation(line: 2237, column: 13, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2237, column: 9)
!3686 = !DILocation(line: 2237, column: 9, scope: !3674)
!3687 = !DILocation(line: 2238, column: 9, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 2237, column: 19)
!3689 = !DILocation(line: 2241, column: 5, scope: !3674)
!3690 = !DILocation(line: 2242, column: 9, scope: !3674)
!3691 = !DILocation(line: 2242, column: 13, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 2242, column: 9)
!3693 = !DILocation(line: 2243, column: 9, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 2242, column: 19)
!3695 = !DILocation(line: 2244, column: 9, scope: !3694)
!3696 = !DILocation(line: 2245, column: 5, scope: !3694)
!3697 = !DILocation(line: 2246, column: 1, scope: !3674)
!3698 = distinct !DISubprogram(name: "hci_user_confirmation_request", scope: !3, file: !3, line: 2249, type: !3699, isLocal: false, isDefinition: true, scopeLine: 2250, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !528, !540}
!3701 = !{!3702, !3703}
!3702 = !DILocalVariable(name: "en", arg: 1, scope: !3698, file: !3, line: 2249, type: !528)
!3703 = !DILocalVariable(name: "addr", arg: 2, scope: !3698, file: !3, line: 2249, type: !540)
!3704 = !DILocation(line: 2249, column: 39, scope: !3698)
!3705 = !DILocation(line: 2249, column: 47, scope: !3698)
!3706 = !DILocation(line: 2251, column: 9, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 2251, column: 9)
!3708 = !DILocation(line: 2251, column: 9, scope: !3698)
!3709 = !DILocation(line: 2252, column: 9, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 2251, column: 13)
!3711 = !DILocation(line: 2253, column: 5, scope: !3710)
!3712 = !DILocation(line: 2254, column: 9, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 2253, column: 12)
!3714 = !DILocation(line: 2256, column: 1, scope: !3698)
!3715 = distinct !DISubprogram(name: "hci_vendor_update_name", scope: !3, file: !3, line: 2491, type: !727, isLocal: false, isDefinition: true, scopeLine: 2492, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3716 = !DILocation(line: 2493, column: 30, scope: !3715)
!3717 = !DILocation(line: 2493, column: 5, scope: !3718)
!3718 = !DILexicalBlockFile(scope: !3715, file: !3, discriminator: 1)
!3719 = !DILocation(line: 2494, column: 1, scope: !3715)
!3720 = distinct !DISubprogram(name: "btstcak_get_bt_mode", scope: !3, file: !3, line: 2497, type: !717, isLocal: false, isDefinition: true, scopeLine: 2498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!3721 = !DILocation(line: 2499, column: 12, scope: !3720)
!3722 = !DILocation(line: 2499, column: 5, scope: !3720)
!3723 = distinct !DISubprogram(name: "gap_store_link_key_for_bd_addr", scope: !3, file: !3, line: 2502, type: !3724, isLocal: false, isDefinition: true, scopeLine: 2503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3727)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !556, !556, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "link_key_type_t", file: !244, line: 85, baseType: !243)
!3727 = !{!3728, !3729, !3730}
!3728 = !DILocalVariable(name: "addr", arg: 1, scope: !3723, file: !3, line: 2502, type: !556)
!3729 = !DILocalVariable(name: "link_key", arg: 2, scope: !3723, file: !3, line: 2502, type: !556)
!3730 = !DILocalVariable(name: "type", arg: 3, scope: !3723, file: !3, line: 2502, type: !3726)
!3731 = !DILocation(line: 2502, column: 47, scope: !3723)
!3732 = !DILocation(line: 2502, column: 64, scope: !3723)
!3733 = !DILocation(line: 2502, column: 90, scope: !3723)
!3734 = !DILocation(line: 2506, column: 18, scope: !3723)
!3735 = !DILocation(line: 2506, column: 37, scope: !3723)
!3736 = !DILocation(line: 2506, column: 61, scope: !3723)
!3737 = !DILocation(line: 160, column: 12, scope: !716, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 2506, column: 67, scope: !3723)
!3739 = !DILocation(line: 160, column: 32, scope: !716, inlinedAt: !3738)
!3740 = !DILocation(line: 160, column: 69, scope: !716, inlinedAt: !3738)
!3741 = !DILocation(line: 160, column: 47, scope: !716, inlinedAt: !3738)
!3742 = !DILocation(line: 2506, column: 5, scope: !3743)
!3743 = !DILexicalBlockFile(scope: !3723, file: !3, discriminator: 1)
!3744 = !DILocation(line: 2508, column: 1, scope: !3723)
