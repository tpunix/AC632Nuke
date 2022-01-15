; ModuleID = 'btstack_memory.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_memory.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.stack_bredr_pool_t = type { i8*, i8*, i8*, i8*, i8*, [4 x %struct.l2cap_service_t], [5 x %struct.l2cap_channel_t], [1 x %struct.rfcomm_multiplexer_t], [1 x %struct.rfcomm_service_t], [1 x %struct.rfcomm_channel_t] }
%struct.l2cap_service_t = type { %struct.btstack_linked_item, i16, i16, i8*, void (i8, i16, i8*, i16)* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.l2cap_channel_t = type { %struct.btstack_linked_item, i16, i8, i8*, void (i8, i16, i8*, i16)*, %struct.channel_core_data_t }
%struct.channel_core_data_t = type { i16, i8, i8, i8, i8, [6 x i8], i16, i16, i16, i16, i16, i8, i32, %struct.retran_flow_ctl_op_t }
%struct.retran_flow_ctl_op_t = type { i8, i8, i8, i8, i8, i16, i16, i16 }
%struct.rfcomm_multiplexer_t = type { %struct.btstack_linked_item, i16, %struct.multiplexer_core_data_t }
%struct.multiplexer_core_data_t = type { [6 x i8], i16, i8, i8, i8, i8, i16 }
%struct.rfcomm_service_t = type { %struct.btstack_linked_item, i8, i8, i8, i16, i8*, void (i8, i16, i8*, i16)* }
%struct.rfcomm_channel_t = type { %struct.btstack_linked_item, %struct.rfcomm_multiplexer_t*, %struct.rfc_channel_core_data_t, i16, %struct.rfcomm_service_t*, void (i8, i16, i8*, i16)*, i8* }
%struct.rfc_channel_core_data_t = type { i8, [6 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.rfcomm_rpn_data }
%struct.rfcomm_rpn_data = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.stack_le_pool_t = type { i8*, i8*, [1 x %struct.__le_hci_connection*], [1 x %struct.gatt_client*] }
%struct.__le_hci_connection = type { %struct.btstack_linked_item, [6 x i8], i16, i32, i8, i32, i8, i16, i16, i16, i16, %struct.sm_connection, %struct.att_server_t, [529 x i8], i16, i16, i8, [6 x i8], [6 x i8], i32 }
%struct.sm_connection = type { i16, i8, i8, i8, i8, [6 x i8], i32, i32, i8, i8, i8, [7 x i8], i32, i16, [8 x i8], i8, i32, i32 }
%struct.att_server_t = type { i32, i8, [6 x i8], i32, i32, i32, %struct.btstack_timer_source, %struct.att_connection, i16, [517 x i8], i8, void (i16, i8)* }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.att_connection = type { i16, i16, i16, i8, i8, i8 }
%struct.gatt_client = type { %struct.btstack_linked_item, i32, void (i8, i16, i8*, i16)*, i16, i8, [6 x i8], i16, i32, i16, [16 x i8], i16, i16, i16, i16, i8, i16, i16, i16, i16, i8*, i16, i16*, i16, [2 x i8], i8, i8, i32, [8 x i8], %struct.btstack_timer_source, i32, [7 x i8], i8 }
%struct.node = type { %struct.node* }
%struct.bnep_service_t = type { %struct.btstack_linked_item, i16, i16, void (i8, i16, i8*, i16)* }
%struct.bnep_channel_t = type { %struct.btstack_linked_item, i32, i32, i16, i8*, [6 x i8], [6 x i8], i16, i16, i16, i16, i8, i16, [8 x %struct.bnep_net_filter_t], i16, %struct.bnep_net_filter_t*, i16, [8 x %struct.bnep_multi_filter_t], i16, %struct.bnep_multi_filter_t*, i16, %struct.btstack_timer_source, i32, i32, void (i8, i16, i8*, i16)*, i8, %struct.btstack_linked_item*, i32 }
%struct.bnep_net_filter_t = type { i16, i16 }
%struct.bnep_multi_filter_t = type { [6 x i8], [6 x i8] }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@bredr_stack_pool = internal unnamed_addr global %struct.stack_bredr_pool_t* null, section ".bt_stack_bss", align 4, !dbg !238
@le_stack_pool = internal unnamed_addr global %struct.stack_le_pool_t* null, section ".bt_stack_bss", align 4, !dbg !411
@config_le_hci_connection_num = external local_unnamed_addr constant i32, align 4
@config_asser = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_memory.c\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"ASSERT-FAILD: hci_conn_ram hci_conn_ram malloc fail\00", align 1
@config_le_gatt_client_num = external local_unnamed_addr constant i32, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"ASSERT-FAILD: gatt_clients_ram gatt_clients_ram malloc fail\00", align 1

; Function Attrs: norecurse nounwind optsize readnone
define hidden noalias i8* @btstack_memory_hci_connection_get() local_unnamed_addr #0 section ".bt_stack_code" !dbg !589 {
  ret i8* null, !dbg !593
}

; Function Attrs: nounwind optsize readnone
define hidden void @btstack_memory_hci_connection_free(i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !598, metadata !DIExpression()), !dbg !599
  ret void, !dbg !600
}

; Function Attrs: nounwind optsize
define hidden i8* @btstack_memory_l2cap_service_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !601 {
  %1 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !602, !tbaa !603
  %2 = bitcast %struct.stack_bredr_pool_t* %1 to %struct.node**, !dbg !607
  %3 = load %struct.node*, %struct.node** %2, align 4, !dbg !607, !tbaa !618
  %4 = icmp eq %struct.node* %3, null, !dbg !620
  br i1 %4, label %10, label %5, !dbg !621

; <label>:5:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.node* %3, metadata !616, metadata !DIExpression()), !dbg !622
  %6 = bitcast %struct.node* %3 to i32*, !dbg !623
  %7 = load i32, i32* %6, align 4, !dbg !623, !tbaa !618
  %8 = bitcast %struct.stack_bredr_pool_t* %1 to i32*, !dbg !624
  store i32 %7, i32* %8, align 4, !dbg !624, !tbaa !618
  %9 = bitcast %struct.node* %3 to i8*, !dbg !625
  br label %10

; <label>:10:                                     ; preds = %5, %0
  %11 = phi i8* [ %9, %5 ], [ null, %0 ]
  ret i8* %11, !dbg !626
}

; Function Attrs: nounwind optsize
define hidden void @btstack_memory_l2cap_service_free(i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !629, metadata !DIExpression()), !dbg !630
  %2 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !631, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %2, i32 0, i32 0, !dbg !632
  call void @llvm.dbg.value(metadata i8** %3, metadata !633, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !644
  %4 = bitcast i8* %0 to %struct.node*, !dbg !645
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !640, metadata !DIExpression()), !dbg !646
  %5 = bitcast %struct.stack_bredr_pool_t* %2 to %struct.node**, !dbg !647
  %6 = load %struct.node*, %struct.node** %5, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !641, metadata !DIExpression()), !dbg !649
  %7 = icmp eq %struct.node* %6, null, !dbg !650
  %8 = ptrtoint %struct.node* %6 to i32, !dbg !650
  br i1 %7, label %18, label %9, !dbg !650

; <label>:9:                                      ; preds = %1
  br label %14, !dbg !652

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0, !dbg !656
  %12 = load %struct.node*, %struct.node** %11, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !641, metadata !DIExpression()), !dbg !649
  %13 = icmp eq %struct.node* %12, null, !dbg !650
  br i1 %13, label %17, label %14, !dbg !650, !llvm.loop !658

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.node* [ %12, %10 ], [ %6, %9 ]
  %16 = icmp eq %struct.node* %15, %4, !dbg !652
  br i1 %16, label %20, label %10, !dbg !661

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !662

; <label>:18:                                     ; preds = %17, %1
  %19 = bitcast i8* %0 to i32*, !dbg !662
  store i32 %8, i32* %19, align 4, !dbg !662, !tbaa !618
  store i8* %0, i8** %3, align 4, !dbg !663, !tbaa !618
  br label %21, !dbg !664

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !665

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !665
}

; Function Attrs: nounwind optsize
define hidden i8* @btstack_memory_l2cap_channel_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !666 {
  %1 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !667, !tbaa !603
  %2 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %1, i32 0, i32 1, !dbg !668
  call void @llvm.dbg.value(metadata i8** %2, metadata !614, metadata !DIExpression()), !dbg !669
  %3 = bitcast i8** %2 to %struct.node**, !dbg !671
  %4 = load %struct.node*, %struct.node** %3, align 4, !dbg !671, !tbaa !618
  %5 = icmp eq %struct.node* %4, null, !dbg !672
  br i1 %5, label %11, label %6, !dbg !673

; <label>:6:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !616, metadata !DIExpression()), !dbg !674
  %7 = bitcast %struct.node* %4 to i32*, !dbg !675
  %8 = load i32, i32* %7, align 4, !dbg !675, !tbaa !618
  %9 = bitcast i8** %2 to i32*, !dbg !676
  store i32 %8, i32* %9, align 4, !dbg !676, !tbaa !618
  %10 = bitcast %struct.node* %4 to i8*, !dbg !677
  br label %11

; <label>:11:                                     ; preds = %6, %0
  %12 = phi i8* [ %10, %6 ], [ null, %0 ]
  ret i8* %12, !dbg !678
}

; Function Attrs: nounwind optsize
define hidden void @btstack_memory_l2cap_channel_free(i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !679 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !681, metadata !DIExpression()), !dbg !682
  %2 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !683, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %2, i32 0, i32 1, !dbg !684
  call void @llvm.dbg.value(metadata i8** %3, metadata !633, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !687
  %4 = bitcast i8* %0 to %struct.node*, !dbg !688
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !640, metadata !DIExpression()), !dbg !689
  %5 = bitcast i8** %3 to %struct.node**, !dbg !690
  %6 = load %struct.node*, %struct.node** %5, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !641, metadata !DIExpression()), !dbg !691
  %7 = icmp eq %struct.node* %6, null, !dbg !692
  %8 = ptrtoint %struct.node* %6 to i32, !dbg !692
  br i1 %7, label %18, label %9, !dbg !692

; <label>:9:                                      ; preds = %1
  br label %14, !dbg !693

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0, !dbg !694
  %12 = load %struct.node*, %struct.node** %11, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !641, metadata !DIExpression()), !dbg !691
  %13 = icmp eq %struct.node* %12, null, !dbg !692
  br i1 %13, label %17, label %14, !dbg !692, !llvm.loop !658

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.node* [ %12, %10 ], [ %6, %9 ]
  %16 = icmp eq %struct.node* %15, %4, !dbg !693
  br i1 %16, label %20, label %10, !dbg !695

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !696

; <label>:18:                                     ; preds = %17, %1
  %19 = bitcast i8* %0 to i32*, !dbg !696
  store i32 %8, i32* %19, align 4, !dbg !696, !tbaa !618
  store i8* %0, i8** %3, align 4, !dbg !697, !tbaa !618
  br label %21, !dbg !698

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !699

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !699
}

; Function Attrs: nounwind optsize
define hidden i8* @btstack_memory_rfcomm_multiplexer_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !700 {
  %1 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !701, !tbaa !603
  %2 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %1, i32 0, i32 2, !dbg !702
  call void @llvm.dbg.value(metadata i8** %2, metadata !614, metadata !DIExpression()), !dbg !703
  %3 = bitcast i8** %2 to %struct.node**, !dbg !705
  %4 = load %struct.node*, %struct.node** %3, align 4, !dbg !705, !tbaa !618
  %5 = icmp eq %struct.node* %4, null, !dbg !706
  br i1 %5, label %11, label %6, !dbg !707

; <label>:6:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !616, metadata !DIExpression()), !dbg !708
  %7 = bitcast %struct.node* %4 to i32*, !dbg !709
  %8 = load i32, i32* %7, align 4, !dbg !709, !tbaa !618
  %9 = bitcast i8** %2 to i32*, !dbg !710
  store i32 %8, i32* %9, align 4, !dbg !710, !tbaa !618
  %10 = bitcast %struct.node* %4 to i8*, !dbg !711
  br label %11

; <label>:11:                                     ; preds = %6, %0
  %12 = phi i8* [ %10, %6 ], [ null, %0 ]
  ret i8* %12, !dbg !712
}

; Function Attrs: nounwind optsize
define hidden void @btstack_memory_rfcomm_multiplexer_free(i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !713 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !715, metadata !DIExpression()), !dbg !716
  %2 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !717, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %2, i32 0, i32 2, !dbg !718
  call void @llvm.dbg.value(metadata i8** %3, metadata !633, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !721
  %4 = bitcast i8* %0 to %struct.node*, !dbg !722
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !640, metadata !DIExpression()), !dbg !723
  %5 = bitcast i8** %3 to %struct.node**, !dbg !724
  %6 = load %struct.node*, %struct.node** %5, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !641, metadata !DIExpression()), !dbg !725
  %7 = icmp eq %struct.node* %6, null, !dbg !726
  %8 = ptrtoint %struct.node* %6 to i32, !dbg !726
  br i1 %7, label %18, label %9, !dbg !726

; <label>:9:                                      ; preds = %1
  br label %14, !dbg !727

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0, !dbg !728
  %12 = load %struct.node*, %struct.node** %11, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !641, metadata !DIExpression()), !dbg !725
  %13 = icmp eq %struct.node* %12, null, !dbg !726
  br i1 %13, label %17, label %14, !dbg !726, !llvm.loop !658

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.node* [ %12, %10 ], [ %6, %9 ]
  %16 = icmp eq %struct.node* %15, %4, !dbg !727
  br i1 %16, label %20, label %10, !dbg !729

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !730

; <label>:18:                                     ; preds = %17, %1
  %19 = bitcast i8* %0 to i32*, !dbg !730
  store i32 %8, i32* %19, align 4, !dbg !730, !tbaa !618
  store i8* %0, i8** %3, align 4, !dbg !731, !tbaa !618
  br label %21, !dbg !732

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !733

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !733
}

; Function Attrs: nounwind optsize
define hidden i8* @btstack_memory_rfcomm_service_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !734 {
  %1 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !735, !tbaa !603
  %2 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %1, i32 0, i32 3, !dbg !736
  call void @llvm.dbg.value(metadata i8** %2, metadata !614, metadata !DIExpression()), !dbg !737
  %3 = bitcast i8** %2 to %struct.node**, !dbg !739
  %4 = load %struct.node*, %struct.node** %3, align 4, !dbg !739, !tbaa !618
  %5 = icmp eq %struct.node* %4, null, !dbg !740
  br i1 %5, label %11, label %6, !dbg !741

; <label>:6:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !616, metadata !DIExpression()), !dbg !742
  %7 = bitcast %struct.node* %4 to i32*, !dbg !743
  %8 = load i32, i32* %7, align 4, !dbg !743, !tbaa !618
  %9 = bitcast i8** %2 to i32*, !dbg !744
  store i32 %8, i32* %9, align 4, !dbg !744, !tbaa !618
  %10 = bitcast %struct.node* %4 to i8*, !dbg !745
  br label %11

; <label>:11:                                     ; preds = %6, %0
  %12 = phi i8* [ %10, %6 ], [ null, %0 ]
  ret i8* %12, !dbg !746
}

; Function Attrs: nounwind optsize
define hidden void @btstack_memory_rfcomm_service_free(i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !747 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !749, metadata !DIExpression()), !dbg !750
  %2 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !751, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %2, i32 0, i32 3, !dbg !752
  call void @llvm.dbg.value(metadata i8** %3, metadata !633, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !755
  %4 = bitcast i8* %0 to %struct.node*, !dbg !756
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !640, metadata !DIExpression()), !dbg !757
  %5 = bitcast i8** %3 to %struct.node**, !dbg !758
  %6 = load %struct.node*, %struct.node** %5, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !641, metadata !DIExpression()), !dbg !759
  %7 = icmp eq %struct.node* %6, null, !dbg !760
  %8 = ptrtoint %struct.node* %6 to i32, !dbg !760
  br i1 %7, label %18, label %9, !dbg !760

; <label>:9:                                      ; preds = %1
  br label %14, !dbg !761

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0, !dbg !762
  %12 = load %struct.node*, %struct.node** %11, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !641, metadata !DIExpression()), !dbg !759
  %13 = icmp eq %struct.node* %12, null, !dbg !760
  br i1 %13, label %17, label %14, !dbg !760, !llvm.loop !658

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.node* [ %12, %10 ], [ %6, %9 ]
  %16 = icmp eq %struct.node* %15, %4, !dbg !761
  br i1 %16, label %20, label %10, !dbg !763

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !764

; <label>:18:                                     ; preds = %17, %1
  %19 = bitcast i8* %0 to i32*, !dbg !764
  store i32 %8, i32* %19, align 4, !dbg !764, !tbaa !618
  store i8* %0, i8** %3, align 4, !dbg !765, !tbaa !618
  br label %21, !dbg !766

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !767

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !767
}

; Function Attrs: nounwind optsize
define hidden i8* @btstack_memory_rfcomm_channel_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !768 {
  %1 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !769, !tbaa !603
  %2 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %1, i32 0, i32 4, !dbg !770
  call void @llvm.dbg.value(metadata i8** %2, metadata !614, metadata !DIExpression()), !dbg !771
  %3 = bitcast i8** %2 to %struct.node**, !dbg !773
  %4 = load %struct.node*, %struct.node** %3, align 4, !dbg !773, !tbaa !618
  %5 = icmp eq %struct.node* %4, null, !dbg !774
  br i1 %5, label %11, label %6, !dbg !775

; <label>:6:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !616, metadata !DIExpression()), !dbg !776
  %7 = bitcast %struct.node* %4 to i32*, !dbg !777
  %8 = load i32, i32* %7, align 4, !dbg !777, !tbaa !618
  %9 = bitcast i8** %2 to i32*, !dbg !778
  store i32 %8, i32* %9, align 4, !dbg !778, !tbaa !618
  %10 = bitcast %struct.node* %4 to i8*, !dbg !779
  br label %11

; <label>:11:                                     ; preds = %6, %0
  %12 = phi i8* [ %10, %6 ], [ null, %0 ]
  ret i8* %12, !dbg !780
}

; Function Attrs: nounwind optsize
define hidden void @btstack_memory_rfcomm_channel_free(i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !783, metadata !DIExpression()), !dbg !784
  %2 = load %struct.stack_bredr_pool_t*, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !785, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %2, i32 0, i32 4, !dbg !786
  call void @llvm.dbg.value(metadata i8** %3, metadata !633, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !789
  %4 = bitcast i8* %0 to %struct.node*, !dbg !790
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !640, metadata !DIExpression()), !dbg !791
  %5 = bitcast i8** %3 to %struct.node**, !dbg !792
  %6 = load %struct.node*, %struct.node** %5, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !641, metadata !DIExpression()), !dbg !793
  %7 = icmp eq %struct.node* %6, null, !dbg !794
  %8 = ptrtoint %struct.node* %6 to i32, !dbg !794
  br i1 %7, label %18, label %9, !dbg !794

; <label>:9:                                      ; preds = %1
  br label %14, !dbg !795

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0, !dbg !796
  %12 = load %struct.node*, %struct.node** %11, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !641, metadata !DIExpression()), !dbg !793
  %13 = icmp eq %struct.node* %12, null, !dbg !794
  br i1 %13, label %17, label %14, !dbg !794, !llvm.loop !658

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.node* [ %12, %10 ], [ %6, %9 ]
  %16 = icmp eq %struct.node* %15, %4, !dbg !795
  br i1 %16, label %20, label %10, !dbg !797

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !798

; <label>:18:                                     ; preds = %17, %1
  %19 = bitcast i8* %0 to i32*, !dbg !798
  store i32 %8, i32* %19, align 4, !dbg !798, !tbaa !618
  store i8* %0, i8** %3, align 4, !dbg !799, !tbaa !618
  br label %21, !dbg !800

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !801

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !801
}

; Function Attrs: nounwind optsize
define hidden i8* @btstack_memory_le_hci_connection_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !802 {
  %1 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !803, !tbaa !603
  %2 = bitcast %struct.stack_le_pool_t* %1 to %struct.node**, !dbg !804
  %3 = load %struct.node*, %struct.node** %2, align 4, !dbg !804, !tbaa !618
  %4 = icmp eq %struct.node* %3, null, !dbg !806
  br i1 %4, label %10, label %5, !dbg !807

; <label>:5:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.node* %3, metadata !616, metadata !DIExpression()), !dbg !808
  %6 = bitcast %struct.node* %3 to i32*, !dbg !809
  %7 = load i32, i32* %6, align 4, !dbg !809, !tbaa !618
  %8 = bitcast %struct.stack_le_pool_t* %1 to i32*, !dbg !810
  store i32 %7, i32* %8, align 4, !dbg !810, !tbaa !618
  %9 = bitcast %struct.node* %3 to i8*, !dbg !811
  br label %10

; <label>:10:                                     ; preds = %5, %0
  %11 = phi i8* [ %9, %5 ], [ null, %0 ]
  ret i8* %11, !dbg !812
}

; Function Attrs: nounwind optsize
define hidden void @btstack_memory_le_hci_connection_free(i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !815, metadata !DIExpression()), !dbg !816
  %2 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !817, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %2, i32 0, i32 0, !dbg !818
  call void @llvm.dbg.value(metadata i8** %3, metadata !633, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !821
  %4 = bitcast i8* %0 to %struct.node*, !dbg !822
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !640, metadata !DIExpression()), !dbg !823
  %5 = bitcast %struct.stack_le_pool_t* %2 to %struct.node**, !dbg !824
  %6 = load %struct.node*, %struct.node** %5, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !641, metadata !DIExpression()), !dbg !825
  %7 = icmp eq %struct.node* %6, null, !dbg !826
  %8 = ptrtoint %struct.node* %6 to i32, !dbg !826
  br i1 %7, label %18, label %9, !dbg !826

; <label>:9:                                      ; preds = %1
  br label %14, !dbg !827

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0, !dbg !828
  %12 = load %struct.node*, %struct.node** %11, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !641, metadata !DIExpression()), !dbg !825
  %13 = icmp eq %struct.node* %12, null, !dbg !826
  br i1 %13, label %17, label %14, !dbg !826, !llvm.loop !658

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.node* [ %12, %10 ], [ %6, %9 ]
  %16 = icmp eq %struct.node* %15, %4, !dbg !827
  br i1 %16, label %20, label %10, !dbg !829

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !830

; <label>:18:                                     ; preds = %17, %1
  %19 = bitcast i8* %0 to i32*, !dbg !830
  store i32 %8, i32* %19, align 4, !dbg !830, !tbaa !618
  store i8* %0, i8** %3, align 4, !dbg !831, !tbaa !618
  br label %21, !dbg !832

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !833

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !833
}

; Function Attrs: nounwind optsize
define hidden i8* @btstack_memory_gatt_client_get() local_unnamed_addr #2 section ".bt_stack_code" !dbg !834 {
  %1 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !835, !tbaa !603
  %2 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %1, i32 0, i32 1, !dbg !836
  call void @llvm.dbg.value(metadata i8** %2, metadata !614, metadata !DIExpression()), !dbg !837
  %3 = bitcast i8** %2 to %struct.node**, !dbg !839
  %4 = load %struct.node*, %struct.node** %3, align 4, !dbg !839, !tbaa !618
  %5 = icmp eq %struct.node* %4, null, !dbg !840
  br i1 %5, label %11, label %6, !dbg !841

; <label>:6:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !616, metadata !DIExpression()), !dbg !842
  %7 = bitcast %struct.node* %4 to i32*, !dbg !843
  %8 = load i32, i32* %7, align 4, !dbg !843, !tbaa !618
  %9 = bitcast i8** %2 to i32*, !dbg !844
  store i32 %8, i32* %9, align 4, !dbg !844, !tbaa !618
  %10 = bitcast %struct.node* %4 to i8*, !dbg !845
  br label %11

; <label>:11:                                     ; preds = %6, %0
  %12 = phi i8* [ %10, %6 ], [ null, %0 ]
  ret i8* %12, !dbg !846
}

; Function Attrs: nounwind optsize
define hidden void @btstack_memory_gatt_client_free(i8*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !849, metadata !DIExpression()), !dbg !850
  %2 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !851, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %2, i32 0, i32 1, !dbg !852
  call void @llvm.dbg.value(metadata i8** %3, metadata !633, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8* %0, metadata !638, metadata !DIExpression()), !dbg !855
  %4 = bitcast i8* %0 to %struct.node*, !dbg !856
  call void @llvm.dbg.value(metadata %struct.node* %4, metadata !640, metadata !DIExpression()), !dbg !857
  %5 = bitcast i8** %3 to %struct.node**, !dbg !858
  %6 = load %struct.node*, %struct.node** %5, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %6, metadata !641, metadata !DIExpression()), !dbg !859
  %7 = icmp eq %struct.node* %6, null, !dbg !860
  %8 = ptrtoint %struct.node* %6 to i32, !dbg !860
  br i1 %7, label %18, label %9, !dbg !860

; <label>:9:                                      ; preds = %1
  br label %14, !dbg !861

; <label>:10:                                     ; preds = %14
  %11 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0, !dbg !862
  %12 = load %struct.node*, %struct.node** %11, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !641, metadata !DIExpression()), !dbg !859
  %13 = icmp eq %struct.node* %12, null, !dbg !860
  br i1 %13, label %17, label %14, !dbg !860, !llvm.loop !658

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct.node* [ %12, %10 ], [ %6, %9 ]
  %16 = icmp eq %struct.node* %15, %4, !dbg !861
  br i1 %16, label %20, label %10, !dbg !863

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !864

; <label>:18:                                     ; preds = %17, %1
  %19 = bitcast i8* %0 to i32*, !dbg !864
  store i32 %8, i32* %19, align 4, !dbg !864, !tbaa !618
  store i8* %0, i8** %3, align 4, !dbg !865, !tbaa !618
  br label %21, !dbg !866

; <label>:20:                                     ; preds = %14
  br label %21, !dbg !867

; <label>:21:                                     ; preds = %20, %18
  ret void, !dbg !867
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden noalias i8* @btstack_memory_sm_lookup_entry_get() local_unnamed_addr #0 section ".bt_stack_code" !dbg !868 {
  ret i8* null, !dbg !869
}

; Function Attrs: nounwind optsize readnone
define hidden void @btstack_memory_sm_lookup_entry_free(i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !872, metadata !DIExpression()), !dbg !873
  ret void, !dbg !874
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden noalias i8* @btstack_memory_whitelist_entry_get() local_unnamed_addr #0 section ".bt_stack_code" !dbg !875 {
  ret i8* null, !dbg !876
}

; Function Attrs: nounwind optsize readnone
define hidden void @btstack_memory_whitelist_entry_free(i8* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !877 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !879, metadata !DIExpression()), !dbg !880
  ret void, !dbg !881
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden noalias %struct.bnep_service_t* @btstack_memory_bnep_service_get() local_unnamed_addr #0 section ".bt_stack_code" !dbg !882 {
  ret %struct.bnep_service_t* null, !dbg !893
}

; Function Attrs: nounwind optsize readnone
define hidden void @btstack_memory_bnep_service_free(%struct.bnep_service_t* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !894 {
  call void @llvm.dbg.value(metadata %struct.bnep_service_t* %0, metadata !898, metadata !DIExpression()), !dbg !899
  ret void, !dbg !900
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden noalias %struct.bnep_channel_t* @btstack_memory_bnep_channel_get() local_unnamed_addr #0 section ".bt_stack_code" !dbg !901 {
  ret %struct.bnep_channel_t* null, !dbg !954
}

; Function Attrs: nounwind optsize readnone
define hidden void @btstack_memory_bnep_channel_free(%struct.bnep_channel_t* nocapture) local_unnamed_addr #1 section ".bt_stack_code" !dbg !955 {
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !959, metadata !DIExpression()), !dbg !960
  ret void, !dbg !961
}

; Function Attrs: nounwind optsize
define hidden void @btstack_bredr_memory_init(%struct.stack_bredr_pool_t*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !962 {
  call void @llvm.dbg.value(metadata %struct.stack_bredr_pool_t* %0, metadata !966, metadata !DIExpression()), !dbg !967
  store %struct.stack_bredr_pool_t* %0, %struct.stack_bredr_pool_t** @bredr_stack_pool, align 4, !dbg !968, !tbaa !603
  %2 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 0, !dbg !969
  %3 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 5, i32 0, !dbg !970
  %4 = bitcast %struct.l2cap_service_t* %3 to i8*, !dbg !970
  call void @llvm.dbg.value(metadata i8** %2, metadata !971, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %4, metadata !976, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 4, metadata !977, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 16, metadata !978, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i8* %4, metadata !980, metadata !DIExpression()), !dbg !987
  %5 = bitcast %struct.stack_bredr_pool_t* %0 to %struct.node**, !dbg !988
  store %struct.node* null, %struct.node** %5, align 4, !dbg !989, !tbaa !618
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %4, metadata !980, metadata !DIExpression()), !dbg !987
  br label %6

; <label>:6:                                      ; preds = %25, %1
  %7 = phi %struct.node* [ %26, %25 ], [ null, %1 ], !dbg !991
  %8 = phi i32 [ %28, %25 ], [ 0, %1 ]
  %9 = phi i8* [ %27, %25 ], [ %4, %1 ]
  call void @llvm.dbg.value(metadata i8** %2, metadata !633, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %9, metadata !638, metadata !DIExpression()), !dbg !996
  %10 = bitcast i8* %9 to %struct.node*, !dbg !997
  call void @llvm.dbg.value(metadata %struct.node* %10, metadata !640, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata %struct.node* %7, metadata !641, metadata !DIExpression()), !dbg !999
  %11 = icmp eq %struct.node* %7, null, !dbg !1000
  %12 = ptrtoint %struct.node* %7 to i32, !dbg !1000
  br i1 %11, label %22, label %13, !dbg !1000

; <label>:13:                                     ; preds = %6
  br label %18, !dbg !1001

; <label>:14:                                     ; preds = %18
  %15 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0, !dbg !1002
  %16 = load %struct.node*, %struct.node** %15, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %16, metadata !641, metadata !DIExpression()), !dbg !999
  %17 = icmp eq %struct.node* %16, null, !dbg !1000
  br i1 %17, label %21, label %18, !dbg !1000, !llvm.loop !658

; <label>:18:                                     ; preds = %14, %13
  %19 = phi %struct.node* [ %16, %14 ], [ %7, %13 ]
  %20 = icmp eq %struct.node* %19, %10, !dbg !1001
  br i1 %20, label %24, label %14, !dbg !1003

; <label>:21:                                     ; preds = %14
  br label %22, !dbg !1004

; <label>:22:                                     ; preds = %21, %6
  %23 = bitcast i8* %9 to i32*, !dbg !1004
  store i32 %12, i32* %23, align 4, !dbg !1004, !tbaa !618
  store i8* %9, i8** %2, align 4, !dbg !1005, !tbaa !618
  br label %25, !dbg !1006

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !1007

; <label>:25:                                     ; preds = %24, %22
  %26 = phi %struct.node* [ %10, %22 ], [ %7, %24 ]
  %27 = getelementptr inbounds i8, i8* %9, i32 16, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %27, metadata !980, metadata !DIExpression()), !dbg !987
  %28 = add nuw nsw i32 %8, 1, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %28, metadata !981, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 %28, metadata !981, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %27, metadata !980, metadata !DIExpression()), !dbg !987
  %29 = icmp eq i32 %28, 4, !dbg !1010
  br i1 %29, label %30, label %6, !dbg !1012, !llvm.loop !1014

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 1, !dbg !1017
  %32 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 6, i32 0, !dbg !1018
  %33 = bitcast %struct.l2cap_channel_t* %32 to i8*, !dbg !1018
  call void @llvm.dbg.value(metadata i8** %31, metadata !971, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i8* %33, metadata !976, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i32 5, metadata !977, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i32 56, metadata !978, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %33, metadata !980, metadata !DIExpression()), !dbg !1024
  %34 = bitcast i8** %31 to %struct.node**, !dbg !1025
  store %struct.node* null, %struct.node** %34, align 4, !dbg !1026, !tbaa !618
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %33, metadata !980, metadata !DIExpression()), !dbg !1024
  br label %35

; <label>:35:                                     ; preds = %54, %30
  %36 = phi %struct.node* [ %55, %54 ], [ null, %30 ], !dbg !1028
  %37 = phi i32 [ %57, %54 ], [ 0, %30 ]
  %38 = phi i8* [ %56, %54 ], [ %33, %30 ]
  call void @llvm.dbg.value(metadata i8** %31, metadata !633, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %38, metadata !638, metadata !DIExpression()), !dbg !1030
  %39 = bitcast i8* %38 to %struct.node*, !dbg !1031
  call void @llvm.dbg.value(metadata %struct.node* %39, metadata !640, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata %struct.node* %36, metadata !641, metadata !DIExpression()), !dbg !1033
  %40 = icmp eq %struct.node* %36, null, !dbg !1034
  %41 = ptrtoint %struct.node* %36 to i32, !dbg !1034
  br i1 %40, label %51, label %42, !dbg !1034

; <label>:42:                                     ; preds = %35
  br label %47, !dbg !1035

; <label>:43:                                     ; preds = %47
  %44 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 0, !dbg !1036
  %45 = load %struct.node*, %struct.node** %44, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %45, metadata !641, metadata !DIExpression()), !dbg !1033
  %46 = icmp eq %struct.node* %45, null, !dbg !1034
  br i1 %46, label %50, label %47, !dbg !1034, !llvm.loop !658

; <label>:47:                                     ; preds = %43, %42
  %48 = phi %struct.node* [ %45, %43 ], [ %36, %42 ]
  %49 = icmp eq %struct.node* %48, %39, !dbg !1035
  br i1 %49, label %53, label %43, !dbg !1037

; <label>:50:                                     ; preds = %43
  br label %51, !dbg !1038

; <label>:51:                                     ; preds = %50, %35
  %52 = bitcast i8* %38 to i32*, !dbg !1038
  store i32 %41, i32* %52, align 4, !dbg !1038, !tbaa !618
  store i8* %38, i8** %31, align 4, !dbg !1039, !tbaa !618
  br label %54, !dbg !1040

; <label>:53:                                     ; preds = %47
  br label %54, !dbg !1041

; <label>:54:                                     ; preds = %53, %51
  %55 = phi %struct.node* [ %39, %51 ], [ %36, %53 ]
  %56 = getelementptr inbounds i8, i8* %38, i32 56, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %56, metadata !980, metadata !DIExpression()), !dbg !1024
  %57 = add nuw nsw i32 %37, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %57, metadata !981, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i32 %57, metadata !981, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %56, metadata !980, metadata !DIExpression()), !dbg !1024
  %58 = icmp eq i32 %57, 5, !dbg !1043
  br i1 %58, label %59, label %35, !dbg !1044, !llvm.loop !1014

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 2, !dbg !1045
  %61 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 7, i32 0, !dbg !1046
  call void @llvm.dbg.value(metadata i8** %60, metadata !971, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i32 1, metadata !977, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 20, metadata !978, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i8** %60, metadata !633, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata %struct.node* null, metadata !641, metadata !DIExpression()), !dbg !1054
  %62 = bitcast %struct.rfcomm_multiplexer_t* %61 to i32*, !dbg !1055
  store i32 0, i32* %62, align 4, !dbg !1055, !tbaa !618
  %63 = bitcast i8** %60 to %struct.rfcomm_multiplexer_t**, !dbg !1056
  store %struct.rfcomm_multiplexer_t* %61, %struct.rfcomm_multiplexer_t** %63, align 4, !dbg !1056, !tbaa !618
  %64 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 3, !dbg !1057
  %65 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 8, i32 0, !dbg !1058
  call void @llvm.dbg.value(metadata i8** %64, metadata !971, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 1, metadata !977, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i32 20, metadata !978, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8** %64, metadata !633, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.node* null, metadata !641, metadata !DIExpression()), !dbg !1066
  %66 = bitcast %struct.rfcomm_service_t* %65 to i32*, !dbg !1067
  store i32 0, i32* %66, align 4, !dbg !1067, !tbaa !618
  %67 = bitcast i8** %64 to %struct.rfcomm_service_t**, !dbg !1068
  store %struct.rfcomm_service_t* %65, %struct.rfcomm_service_t** %67, align 4, !dbg !1068, !tbaa !618
  %68 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 4, !dbg !1069
  %69 = getelementptr inbounds %struct.stack_bredr_pool_t, %struct.stack_bredr_pool_t* %0, i32 0, i32 9, i32 0, !dbg !1070
  call void @llvm.dbg.value(metadata i8** %68, metadata !971, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i32 1, metadata !977, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i32 52, metadata !978, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8** %68, metadata !633, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata %struct.node* null, metadata !641, metadata !DIExpression()), !dbg !1078
  %70 = bitcast %struct.rfcomm_channel_t* %69 to i32*, !dbg !1079
  store i32 0, i32* %70, align 4, !dbg !1079, !tbaa !618
  %71 = bitcast i8** %68 to %struct.rfcomm_channel_t**, !dbg !1080
  store %struct.rfcomm_channel_t* %69, %struct.rfcomm_channel_t** %71, align 4, !dbg !1080, !tbaa !618
  ret void, !dbg !1081
}

; Function Attrs: nounwind optsize
define internal fastcc void @memory_pool_create(i8** nocapture, i8*, i32, i32) unnamed_addr #2 section ".bt_stack_code" !dbg !972 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !971, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %1, metadata !976, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %2, metadata !977, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %3, metadata !978, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8* %1, metadata !980, metadata !DIExpression()), !dbg !1086
  %5 = bitcast i8** %0 to %struct.node**, !dbg !1087
  store %struct.node* null, %struct.node** %5, align 4, !dbg !1088, !tbaa !618
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 0, metadata !981, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %1, metadata !980, metadata !DIExpression()), !dbg !1086
  %6 = icmp sgt i32 %2, 0, !dbg !1090
  br i1 %6, label %7, label %34, !dbg !1091

; <label>:7:                                      ; preds = %4
  br label %8, !dbg !1092

; <label>:8:                                      ; preds = %28, %7
  %9 = phi %struct.node* [ %29, %28 ], [ null, %7 ], !dbg !1092
  %10 = phi i32 [ %31, %28 ], [ 0, %7 ]
  %11 = phi i8* [ %30, %28 ], [ %1, %7 ]
  call void @llvm.dbg.value(metadata i8** %0, metadata !633, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %11, metadata !638, metadata !DIExpression()), !dbg !1094
  %12 = bitcast i8* %11 to %struct.node*, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.node* %12, metadata !640, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata %struct.node* %9, metadata !641, metadata !DIExpression()), !dbg !1097
  %13 = icmp eq %struct.node* %9, null, !dbg !1098
  %14 = ptrtoint %struct.node* %9 to i32, !dbg !1098
  br i1 %13, label %24, label %15, !dbg !1098

; <label>:15:                                     ; preds = %8
  br label %20, !dbg !1099

; <label>:16:                                     ; preds = %20
  %17 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0, !dbg !1100
  %18 = load %struct.node*, %struct.node** %17, align 4, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.node* %18, metadata !641, metadata !DIExpression()), !dbg !1097
  %19 = icmp eq %struct.node* %18, null, !dbg !1098
  br i1 %19, label %23, label %20, !dbg !1098, !llvm.loop !658

; <label>:20:                                     ; preds = %16, %15
  %21 = phi %struct.node* [ %18, %16 ], [ %9, %15 ]
  %22 = icmp eq %struct.node* %21, %12, !dbg !1099
  br i1 %22, label %27, label %16, !dbg !1101

; <label>:23:                                     ; preds = %16
  br label %24, !dbg !1102

; <label>:24:                                     ; preds = %23, %8
  %25 = bitcast i8* %11 to i32*, !dbg !1102
  store i32 %14, i32* %25, align 4, !dbg !1102, !tbaa !618
  store i8* %11, i8** %0, align 4, !dbg !1103, !tbaa !618
  %26 = bitcast i8* %11 to %struct.node*, !dbg !1104
  br label %28, !dbg !1104

; <label>:27:                                     ; preds = %20
  br label %28, !dbg !1105

; <label>:28:                                     ; preds = %27, %24
  %29 = phi %struct.node* [ %26, %24 ], [ %9, %27 ]
  %30 = getelementptr inbounds i8, i8* %11, i32 %3, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %30, metadata !980, metadata !DIExpression()), !dbg !1086
  %31 = add nuw nsw i32 %10, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %31, metadata !981, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %31, metadata !981, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %30, metadata !980, metadata !DIExpression()), !dbg !1086
  %32 = icmp eq i32 %31, %2, !dbg !1090
  br i1 %32, label %33, label %8, !dbg !1091, !llvm.loop !1014

; <label>:33:                                     ; preds = %28
  br label %34, !dbg !1107

; <label>:34:                                     ; preds = %33, %4
  ret void, !dbg !1107
}

; Function Attrs: nounwind optsize
define hidden void @btstack_le_memory_init(%struct.stack_le_pool_t*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !1108 {
  call void @llvm.dbg.value(metadata %struct.stack_le_pool_t* %0, metadata !1112, metadata !DIExpression()), !dbg !1119
  store %struct.stack_le_pool_t* %0, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !1120, !tbaa !603
  %2 = load i32, i32* @config_le_hci_connection_num, align 4, !dbg !1121, !tbaa !1122
  %3 = icmp eq i32 %2, 0, !dbg !1121
  br i1 %3, label %22, label %4, !dbg !1124

; <label>:4:                                      ; preds = %1
  %5 = mul i32 %2, 1224, !dbg !1125
  %6 = tail call i8* @malloc(i32 %5) #8, !dbg !1126
  %7 = load i32, i32* @config_asser, align 4, !dbg !1127, !tbaa !1122
  %8 = icmp eq i32 %7, 0, !dbg !1127
  %9 = icmp ne i8* %6, null
  br i1 %8, label %14, label %10, !dbg !1131

; <label>:10:                                     ; preds = %4
  br i1 %9, label %16, label %11, !dbg !1133

; <label>:11:                                     ; preds = %10
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0), i32 405) #8, !dbg !1136
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !1140
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1142
  br label %16, !dbg !1136

; <label>:14:                                     ; preds = %4
  br i1 %9, label %16, label %15, !dbg !1144

; <label>:15:                                     ; preds = %14
  tail call fastcc void @cpu_reset() #8, !dbg !1147
  br label %16, !dbg !1147

; <label>:16:                                     ; preds = %15, %14, %11, %10
  %17 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !1151, !tbaa !603
  %18 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %17, i32 0, i32 2, i32 0, !dbg !1151
  %19 = bitcast %struct.__le_hci_connection** %18 to i8**, !dbg !1152
  store i8* %6, i8** %19, align 4, !dbg !1152, !tbaa !603
  tail call void @llvm.memset.p0i8.i32(i8* %6, i8 0, i32 %5, i32 4, i1 false), !dbg !1153
  %20 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %17, i32 0, i32 0, !dbg !1154
  %21 = load i8*, i8** %19, align 4, !dbg !1155, !tbaa !603
  tail call fastcc void @memory_pool_create(i8** %20, i8* %21, i32 %2, i32 1224) #8, !dbg !1156
  br label %22, !dbg !1157

; <label>:22:                                     ; preds = %16, %1
  %23 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !1158, !tbaa !1122
  %24 = icmp eq i32 %23, 0, !dbg !1158
  br i1 %24, label %43, label %25, !dbg !1159

; <label>:25:                                     ; preds = %22
  %26 = shl i32 %23, 7, !dbg !1160
  %27 = tail call i8* @malloc(i32 %26) #8, !dbg !1161
  %28 = load i32, i32* @config_asser, align 4, !dbg !1162, !tbaa !1122
  %29 = icmp eq i32 %28, 0, !dbg !1162
  %30 = icmp ne i8* %27, null
  br i1 %29, label %35, label %31, !dbg !1166

; <label>:31:                                     ; preds = %25
  br i1 %30, label %37, label %32, !dbg !1168

; <label>:32:                                     ; preds = %31
  %33 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0), i32 416) #8, !dbg !1171
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !1175
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1177
  br label %37, !dbg !1171

; <label>:35:                                     ; preds = %25
  br i1 %30, label %37, label %36, !dbg !1179

; <label>:36:                                     ; preds = %35
  tail call fastcc void @cpu_reset() #8, !dbg !1182
  br label %37, !dbg !1182

; <label>:37:                                     ; preds = %36, %35, %32, %31
  %38 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !1186, !tbaa !603
  %39 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %38, i32 0, i32 3, i32 0, !dbg !1186
  %40 = bitcast %struct.gatt_client** %39 to i8**, !dbg !1187
  store i8* %27, i8** %40, align 4, !dbg !1187, !tbaa !603
  tail call void @llvm.memset.p0i8.i32(i8* %27, i8 0, i32 %26, i32 4, i1 false), !dbg !1188
  %41 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %38, i32 0, i32 1, !dbg !1189
  %42 = load i8*, i8** %40, align 4, !dbg !1190, !tbaa !603
  tail call fastcc void @memory_pool_create(i8** %41, i8* %42, i32 %23, i32 128) #8, !dbg !1191
  br label %43, !dbg !1192

; <label>:43:                                     ; preds = %37, %22
  ret void, !dbg !1193
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #5 !dbg !1194 {
  tail call void @p33_soft_reset() #9, !dbg !1197
  ret void, !dbg !1198
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #6

; Function Attrs: nounwind optsize
define hidden void @btstack_le_memory_exit(%struct.stack_le_pool_t*) local_unnamed_addr #2 section ".bt_stack_code" !dbg !1199 {
  call void @llvm.dbg.value(metadata %struct.stack_le_pool_t* %0, metadata !1201, metadata !DIExpression()), !dbg !1202
  store %struct.stack_le_pool_t* %0, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !1203, !tbaa !603
  tail call void @sm_exit() #9, !dbg !1204
  %2 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !1205, !tbaa !603
  %3 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %2, i32 0, i32 2, i32 0, !dbg !1205
  %4 = load %struct.__le_hci_connection*, %struct.__le_hci_connection** %3, align 4, !dbg !1205, !tbaa !603
  %5 = icmp eq %struct.__le_hci_connection* %4, null, !dbg !1205
  br i1 %5, label %10, label %6, !dbg !1207

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.__le_hci_connection* %4 to i8*, !dbg !1208
  tail call void @free(i8* %7) #8, !dbg !1210
  %8 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !1211, !tbaa !603
  %9 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %8, i32 0, i32 2, i32 0, !dbg !1211
  store %struct.__le_hci_connection* null, %struct.__le_hci_connection** %9, align 4, !dbg !1212, !tbaa !603
  br label %10, !dbg !1213

; <label>:10:                                     ; preds = %6, %1
  %11 = phi %struct.stack_le_pool_t* [ %2, %1 ], [ %8, %6 ], !dbg !1214
  %12 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %11, i32 0, i32 3, i32 0, !dbg !1214
  %13 = load %struct.gatt_client*, %struct.gatt_client** %12, align 4, !dbg !1214, !tbaa !603
  %14 = icmp eq %struct.gatt_client* %13, null, !dbg !1214
  br i1 %14, label %19, label %15, !dbg !1216

; <label>:15:                                     ; preds = %10
  %16 = bitcast %struct.gatt_client* %13 to i8*, !dbg !1217
  tail call void @free(i8* %16) #8, !dbg !1219
  %17 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** @le_stack_pool, align 4, !dbg !1220, !tbaa !603
  %18 = getelementptr inbounds %struct.stack_le_pool_t, %struct.stack_le_pool_t* %17, i32 0, i32 3, i32 0, !dbg !1220
  store %struct.gatt_client* null, %struct.gatt_client** %18, align 4, !dbg !1221, !tbaa !603
  br label %19, !dbg !1222

; <label>:19:                                     ; preds = %15, %10
  ret void, !dbg !1223
}

; Function Attrs: optsize
declare void @sm_exit() local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!586, !587}
!llvm.ident = !{!588}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !585, line: 190, type: !469, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !226, globals: !237)
!3 = !DIFile(filename: "../btcommon/btstack_memory.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !12, !22, !30, !38, !138, !145, !151, !158, !216, !222}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/bnep.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_CLOSED", value: 1)
!9 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_WAIT_FOR_CONNECTION_REQUEST", value: 2)
!10 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_WAIT_FOR_CONNECTION_RESPONSE", value: 3)
!11 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_CONNECTED", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 49, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_NONE", value: 0)
!15 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_NOT_UNDERSTOOD", value: 1)
!16 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_CONNECTION_REQUEST", value: 2)
!17 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_CONNECTION_RESPONSE", value: 4)
!18 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_NET_TYPE_SET", value: 8)
!19 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_NET_TYPE_RESPONSE", value: 16)
!20 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_MULTI_ADDR_SET", value: 32)
!21 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_MULTI_ADDR_RESPONSE", value: 64)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 1469, size: 32, elements: !24)
!23 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_PUBLIC", value: 0)
!26 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_RANDOM", value: 1)
!27 = !DIEnumerator(name: "BD_ADDR_TYPE_SCO", value: 254)
!28 = !DIEnumerator(name: "BD_ADDR_TYPE_CLASSIC", value: 255)
!29 = !DIEnumerator(name: "BD_ADDR_TYPE_UNKNOWN", value: 254)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 246, size: 32, elements: !32)
!31 = !DIFile(filename: "../btstack/Host/include/common/hci.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_NONE", value: 0)
!34 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_REQUEST", value: 1)
!35 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_RESPONSE", value: 2)
!36 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_CHANGE_HCI_CON_PARAMETERS", value: 3)
!37 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_DENY", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 295, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!40 = !DIEnumerator(name: "SM_GENERAL_IDLE", value: 0)
!41 = !DIEnumerator(name: "SM_GENERAL_SEND_PAIRING_FAILED", value: 1)
!42 = !DIEnumerator(name: "SM_GENERAL_TIMEOUT", value: 2)
!43 = !DIEnumerator(name: "SM_PH1_W4_USER_RESPONSE", value: 3)
!44 = !DIEnumerator(name: "SM_PH2_GET_RANDOM_TK", value: 4)
!45 = !DIEnumerator(name: "SM_PH2_W4_RANDOM_TK", value: 5)
!46 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_A", value: 6)
!47 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_A", value: 7)
!48 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_B", value: 8)
!49 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_B", value: 9)
!50 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_A", value: 10)
!51 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_A", value: 11)
!52 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_B", value: 12)
!53 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_B", value: 13)
!54 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_C", value: 14)
!55 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_C", value: 15)
!56 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_D", value: 16)
!57 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_D", value: 17)
!58 = !DIEnumerator(name: "SM_PH2_C1_SEND_PAIRING_CONFIRM", value: 18)
!59 = !DIEnumerator(name: "SM_PH2_SEND_PAIRING_RANDOM", value: 19)
!60 = !DIEnumerator(name: "SM_PH2_CALC_STK", value: 20)
!61 = !DIEnumerator(name: "SM_PH2_W4_STK", value: 21)
!62 = !DIEnumerator(name: "SM_PH2_W4_CONNECTION_ENCRYPTED", value: 22)
!63 = !DIEnumerator(name: "SM_PH3_GET_RANDOM", value: 23)
!64 = !DIEnumerator(name: "SM_PH3_W4_RANDOM", value: 24)
!65 = !DIEnumerator(name: "SM_PH3_GET_DIV", value: 25)
!66 = !DIEnumerator(name: "SM_PH3_W4_DIV", value: 26)
!67 = !DIEnumerator(name: "SM_PH3_Y_GET_ENC", value: 27)
!68 = !DIEnumerator(name: "SM_PH3_Y_W4_ENC", value: 28)
!69 = !DIEnumerator(name: "SM_PH3_LTK_GET_ENC", value: 29)
!70 = !DIEnumerator(name: "SM_PH3_LTK_W4_ENC", value: 30)
!71 = !DIEnumerator(name: "SM_PH3_CSRK_GET_ENC", value: 31)
!72 = !DIEnumerator(name: "SM_PH3_CSRK_W4_ENC", value: 32)
!73 = !DIEnumerator(name: "SM_PH3_DISTRIBUTE_KEYS", value: 33)
!74 = !DIEnumerator(name: "SM_PH3_RECEIVE_KEYS", value: 34)
!75 = !DIEnumerator(name: "SM_RESPONDER_IDLE", value: 35)
!76 = !DIEnumerator(name: "SM_RESPONDER_SEND_SECURITY_REQUEST", value: 36)
!77 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_REQUEST", value: 37)
!78 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_W4_IRK", value: 38)
!79 = !DIEnumerator(name: "SM_RESPONDER_PH0_SEND_LTK_REQUESTED_NEGATIVE_REPLY", value: 39)
!80 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_REQUEST", value: 40)
!81 = !DIEnumerator(name: "SM_RESPONDER_PH1_PAIRING_REQUEST_RECEIVED", value: 41)
!82 = !DIEnumerator(name: "SM_RESPONDER_PH1_SEND_PAIRING_RESPONSE", value: 42)
!83 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_CONFIRM", value: 43)
!84 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_PAIRING_RANDOM", value: 44)
!85 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_LTK_REQUEST", value: 45)
!86 = !DIEnumerator(name: "SM_RESPONDER_PH2_SEND_LTK_REPLY", value: 46)
!87 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_GET_ENC", value: 47)
!88 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_W4_ENC", value: 48)
!89 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_GET_ENC", value: 49)
!90 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_W4_ENC", value: 50)
!91 = !DIEnumerator(name: "SM_RESPONDER_PH4_SEND_LTK_REPLY", value: 51)
!92 = !DIEnumerator(name: "SM_INITIATOR_CONNECTED", value: 52)
!93 = !DIEnumerator(name: "SM_INITIATOR_PH0_HAS_LTK", value: 53)
!94 = !DIEnumerator(name: "SM_INITIATOR_PH0_SEND_START_ENCRYPTION", value: 54)
!95 = !DIEnumerator(name: "SM_INITIATOR_PH0_W4_CONNECTION_ENCRYPTED", value: 55)
!96 = !DIEnumerator(name: "SM_INITIATOR_PH1_W2_SEND_PAIRING_REQUEST", value: 56)
!97 = !DIEnumerator(name: "SM_INITIATOR_PH1_SEND_PAIRING_REQUEST", value: 57)
!98 = !DIEnumerator(name: "SM_INITIATOR_PH1_W4_PAIRING_RESPONSE", value: 58)
!99 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_CONFIRM", value: 59)
!100 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_RANDOM", value: 60)
!101 = !DIEnumerator(name: "SM_INITIATOR_PH3_SEND_START_ENCRYPTION", value: 61)
!102 = !DIEnumerator(name: "SM_SC_RECEIVED_LTK_REQUEST", value: 62)
!103 = !DIEnumerator(name: "SM_SC_SEND_PUBLIC_KEY_COMMAND", value: 63)
!104 = !DIEnumerator(name: "SM_SC_W4_PUBLIC_KEY_COMMAND", value: 64)
!105 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_A", value: 65)
!106 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_A", value: 66)
!107 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_B", value: 67)
!108 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_B", value: 68)
!109 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CONFIRMATION", value: 69)
!110 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CONFIRMATION", value: 70)
!111 = !DIEnumerator(name: "SM_SC_SEND_CONFIRMATION", value: 71)
!112 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CHECK_CONFIRMATION", value: 72)
!113 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CHECK_CONFIRMATION", value: 73)
!114 = !DIEnumerator(name: "SM_SC_W4_CONFIRMATION", value: 74)
!115 = !DIEnumerator(name: "SM_SC_SEND_PAIRING_RANDOM", value: 75)
!116 = !DIEnumerator(name: "SM_SC_W4_PAIRING_RANDOM", value: 76)
!117 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_G2", value: 77)
!118 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_G2", value: 78)
!119 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_DHKEY", value: 79)
!120 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_SALT", value: 80)
!121 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_SALT", value: 81)
!122 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_MACKEY", value: 82)
!123 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_MACKEY", value: 83)
!124 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_LTK", value: 84)
!125 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_LTK", value: 85)
!126 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_FOR_DHKEY_CHECK", value: 86)
!127 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_FOR_DHKEY_CHECK", value: 87)
!128 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 88)
!129 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 89)
!130 = !DIEnumerator(name: "SM_SC_W4_USER_RESPONSE", value: 90)
!131 = !DIEnumerator(name: "SM_SC_SEND_DHKEY_CHECK_COMMAND", value: 91)
!132 = !DIEnumerator(name: "SM_SC_W4_DHKEY_CHECK_COMMAND", value: 92)
!133 = !DIEnumerator(name: "SM_SC_W4_LTK_REQUEST_SC", value: 93)
!134 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_ILK", value: 94)
!135 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_ILK", value: 95)
!136 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_BR_EDR_LINK_KEY", value: 96)
!137 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_BR_EDR_LINK_KEY", value: 97)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 436, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144}
!140 = !DIEnumerator(name: "IRK_LOOKUP_IDLE", value: 0)
!141 = !DIEnumerator(name: "IRK_LOOKUP_W4_READY", value: 1)
!142 = !DIEnumerator(name: "IRK_LOOKUP_STARTED", value: 2)
!143 = !DIEnumerator(name: "IRK_LOOKUP_SUCCEEDED", value: 3)
!144 = !DIEnumerator(name: "IRK_LOOKUP_FAILED", value: 4)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 445, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "AUTHORIZATION_UNKNOWN", value: 0)
!148 = !DIEnumerator(name: "AUTHORIZATION_PENDING", value: 1)
!149 = !DIEnumerator(name: "AUTHORIZATION_DECLINED", value: 2)
!150 = !DIEnumerator(name: "AUTHORIZATION_GRANTED", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 157, size: 32, elements: !153)
!152 = !DIFile(filename: "../btstack/Protocol/include/ble/att_server.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "ATT_SERVER_IDLE", value: 0)
!155 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED", value: 1)
!156 = !DIEnumerator(name: "ATT_SERVER_W4_SIGNED_WRITE_VALIDATION", value: 2)
!157 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 49, size: 32, elements: !160)
!159 = !DIFile(filename: "../btstack/Protocol/include/ble/gatt_client.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!161 = !DIEnumerator(name: "P_READY", value: 0)
!162 = !DIEnumerator(name: "P_W2_SEND_SERVICE_QUERY", value: 1)
!163 = !DIEnumerator(name: "P_W4_SERVICE_QUERY_RESULT", value: 2)
!164 = !DIEnumerator(name: "P_W2_SEND_SERVICE_WITH_UUID_QUERY", value: 3)
!165 = !DIEnumerator(name: "P_W4_SERVICE_WITH_UUID_RESULT", value: 4)
!166 = !DIEnumerator(name: "P_W2_SEND_ALL_CHARACTERISTICS_OF_SERVICE_QUERY", value: 5)
!167 = !DIEnumerator(name: "P_W4_ALL_CHARACTERISTICS_OF_SERVICE_QUERY_RESULT", value: 6)
!168 = !DIEnumerator(name: "P_W2_SEND_CHARACTERISTIC_WITH_UUID_QUERY", value: 7)
!169 = !DIEnumerator(name: "P_W4_CHARACTERISTIC_WITH_UUID_QUERY_RESULT", value: 8)
!170 = !DIEnumerator(name: "P_W2_SEND_ALL_CHARACTERISTIC_DESCRIPTORS_QUERY", value: 9)
!171 = !DIEnumerator(name: "P_W4_ALL_CHARACTERISTIC_DESCRIPTORS_QUERY_RESULT", value: 10)
!172 = !DIEnumerator(name: "P_W2_SEND_INCLUDED_SERVICE_QUERY", value: 11)
!173 = !DIEnumerator(name: "P_W4_INCLUDED_SERVICE_QUERY_RESULT", value: 12)
!174 = !DIEnumerator(name: "P_W2_SEND_INCLUDED_SERVICE_WITH_UUID_QUERY", value: 13)
!175 = !DIEnumerator(name: "P_W4_INCLUDED_SERVICE_UUID_WITH_QUERY_RESULT", value: 14)
!176 = !DIEnumerator(name: "P_W2_SEND_READ_CHARACTERISTIC_VALUE_QUERY", value: 15)
!177 = !DIEnumerator(name: "P_W4_READ_CHARACTERISTIC_VALUE_RESULT", value: 16)
!178 = !DIEnumerator(name: "P_W2_SEND_READ_BLOB_QUERY", value: 17)
!179 = !DIEnumerator(name: "P_W4_READ_BLOB_RESULT", value: 18)
!180 = !DIEnumerator(name: "P_W2_SEND_READ_BY_TYPE_REQUEST", value: 19)
!181 = !DIEnumerator(name: "P_W4_READ_BY_TYPE_RESPONSE", value: 20)
!182 = !DIEnumerator(name: "P_W2_SEND_READ_MULTIPLE_REQUEST", value: 21)
!183 = !DIEnumerator(name: "P_W4_READ_MULTIPLE_RESPONSE", value: 22)
!184 = !DIEnumerator(name: "P_W2_SEND_WRITE_CHARACTERISTIC_VALUE", value: 23)
!185 = !DIEnumerator(name: "P_W4_WRITE_CHARACTERISTIC_VALUE_RESULT", value: 24)
!186 = !DIEnumerator(name: "P_W2_PREPARE_WRITE", value: 25)
!187 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_RESULT", value: 26)
!188 = !DIEnumerator(name: "P_W2_PREPARE_RELIABLE_WRITE", value: 27)
!189 = !DIEnumerator(name: "P_W4_PREPARE_RELIABLE_WRITE_RESULT", value: 28)
!190 = !DIEnumerator(name: "P_W2_EXECUTE_PREPARED_WRITE", value: 29)
!191 = !DIEnumerator(name: "P_W4_EXECUTE_PREPARED_WRITE_RESULT", value: 30)
!192 = !DIEnumerator(name: "P_W2_CANCEL_PREPARED_WRITE", value: 31)
!193 = !DIEnumerator(name: "P_W4_CANCEL_PREPARED_WRITE_RESULT", value: 32)
!194 = !DIEnumerator(name: "P_W2_CANCEL_PREPARED_WRITE_DATA_MISMATCH", value: 33)
!195 = !DIEnumerator(name: "P_W4_CANCEL_PREPARED_WRITE_DATA_MISMATCH_RESULT", value: 34)
!196 = !DIEnumerator(name: "P_W2_SEND_READ_CLIENT_CHARACTERISTIC_CONFIGURATION_QUERY", value: 35)
!197 = !DIEnumerator(name: "P_W4_READ_CLIENT_CHARACTERISTIC_CONFIGURATION_QUERY_RESULT", value: 36)
!198 = !DIEnumerator(name: "P_W2_WRITE_CLIENT_CHARACTERISTIC_CONFIGURATION", value: 37)
!199 = !DIEnumerator(name: "P_W4_CLIENT_CHARACTERISTIC_CONFIGURATION_RESULT", value: 38)
!200 = !DIEnumerator(name: "P_W2_SEND_READ_CHARACTERISTIC_DESCRIPTOR_QUERY", value: 39)
!201 = !DIEnumerator(name: "P_W4_READ_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 40)
!202 = !DIEnumerator(name: "P_W2_SEND_READ_BLOB_CHARACTERISTIC_DESCRIPTOR_QUERY", value: 41)
!203 = !DIEnumerator(name: "P_W4_READ_BLOB_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 42)
!204 = !DIEnumerator(name: "P_W2_SEND_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 43)
!205 = !DIEnumerator(name: "P_W4_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 44)
!206 = !DIEnumerator(name: "P_W2_PREPARE_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 45)
!207 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 46)
!208 = !DIEnumerator(name: "P_W2_EXECUTE_PREPARED_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 47)
!209 = !DIEnumerator(name: "P_W4_EXECUTE_PREPARED_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 48)
!210 = !DIEnumerator(name: "P_W2_PREPARE_WRITE_SINGLE", value: 49)
!211 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_SINGLE_RESULT", value: 50)
!212 = !DIEnumerator(name: "P_W4_CMAC_READY", value: 51)
!213 = !DIEnumerator(name: "P_W4_CMAC_RESULT", value: 52)
!214 = !DIEnumerator(name: "P_W2_SEND_SIGNED_WRITE", value: 53)
!215 = !DIEnumerator(name: "P_W4_SEND_SINGED_WRITE_DONE", value: 54)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 127, size: 32, elements: !217)
!217 = !{!218, !219, !220, !221}
!218 = !DIEnumerator(name: "SEND_MTU_EXCHANGE", value: 0)
!219 = !DIEnumerator(name: "SENT_MTU_EXCHANGE", value: 1)
!220 = !DIEnumerator(name: "MTU_EXCHANGED", value: 2)
!221 = !DIEnumerator(name: "SEND_MTU_EXCHANGED_RSP", value: 3)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 134, size: 32, elements: !223)
!223 = !{!224, !225}
!224 = !DIEnumerator(name: "SEND_RSP_NULL", value: 0)
!225 = !DIEnumerator(name: "SEND_RSP_ERROR", value: 1)
!226 = !{!227, !228, !235}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !230, line: 28, baseType: !231)
!230 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btcommon/btstack_memory.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !230, line: 26, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !230, line: 27, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 32)
!236 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!237 = !{!0, !238, !411}
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "bredr_stack_pool", scope: !2, file: !230, line: 23, type: !240, isLocal: true, isDefinition: true)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_bredr_pool_t", file: !242, line: 59, baseType: !243)
!242 = !DIFile(filename: "../btcommon/btstack_memory.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 29, size: 3648, elements: !244)
!244 = !{!245, !247, !248, !249, !250, !251, !286, !336, !358, !370}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_service_pool", scope: !243, file: !242, line: 33, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_pool_t", file: !242, line: 28, baseType: !227)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_channel_pool", scope: !243, file: !242, line: 34, baseType: !246, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_multiplexer_pool", scope: !243, file: !242, line: 36, baseType: !246, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_pool", scope: !243, file: !242, line: 37, baseType: !246, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channel_pool", scope: !243, file: !242, line: 38, baseType: !246, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_service_storage", scope: !243, file: !242, line: 48, baseType: !252, size: 512, offset: 160)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !284)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_service_t", file: !254, line: 241, baseType: !255)
!254 = !DIFile(filename: "../btstack/Host/include/common/l2cap.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 225, size: 128, elements: !256)
!256 = !{!257, !265, !269, !270, !271}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !255, file: !254, line: 227, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !259, line: 100, baseType: !260)
!259 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !259, line: 55, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !259, line: 53, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !259, line: 54, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "psm", scope: !255, file: !254, line: 230, baseType: !266, size: 16, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !267, line: 13, baseType: !268)
!267 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !255, file: !254, line: 233, baseType: !266, size: 16, offset: 48)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !255, file: !254, line: 236, baseType: !227, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !255, file: !254, line: 239, baseType: !272, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !23, line: 58, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 32)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276, !281, !283, !281}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !277, line: 20, baseType: !278)
!277 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !279, line: 29, baseType: !280)
!279 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!280 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !277, line: 26, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !279, line: 43, baseType: !268)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!284 = !{!285}
!285 = !DISubrange(count: 4)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_channel_storage", scope: !243, file: !242, line: 49, baseType: !287, size: 2240, offset: 672)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 2240, elements: !334)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_channel_t", file: !254, line: 222, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 204, size: 448, elements: !290)
!290 = !{!291, !292, !295, !297, !298, !299}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !289, file: !254, line: 206, baseType: !258, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !289, file: !254, line: 208, baseType: !293, size: 16, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !294, line: 9, baseType: !281)
!294 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_for_can_send_now", scope: !289, file: !254, line: 211, baseType: !296, size: 8, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !267, line: 11, baseType: !280)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !289, file: !254, line: 215, baseType: !227, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !289, file: !254, line: 218, baseType: !272, size: 32, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "channel_core_data", scope: !289, file: !254, line: 220, baseType: !300, size: 320, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "channel_core_data_t", file: !254, line: 200, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 178, size: 320, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !313, !314, !315, !316, !317, !318, !319, !322}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !301, file: !254, line: 180, baseType: !266, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !254, line: 181, baseType: !296, size: 8, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "remote_sig_id", scope: !301, file: !254, line: 183, baseType: !296, size: 8, offset: 24)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "local_sig_id", scope: !301, file: !254, line: 184, baseType: !296, size: 8, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !301, file: !254, line: 186, baseType: !296, size: 8, offset: 40)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !301, file: !254, line: 188, baseType: !309, size: 48, offset: 48)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !294, line: 7, baseType: !310)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 48, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 6)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "psm", scope: !301, file: !254, line: 189, baseType: !266, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "local_cid", scope: !301, file: !254, line: 191, baseType: !266, size: 16, offset: 112)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "remote_cid", scope: !301, file: !254, line: 192, baseType: !266, size: 16, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "local_mtu", scope: !301, file: !254, line: 194, baseType: !266, size: 16, offset: 144)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "remote_mtu", scope: !301, file: !254, line: 195, baseType: !266, size: 16, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !301, file: !254, line: 197, baseType: !296, size: 8, offset: 176)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "remote_extended_feature", scope: !301, file: !254, line: 198, baseType: !320, size: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !267, line: 15, baseType: !321)
!321 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "retran_op", scope: !301, file: !254, line: 199, baseType: !323, size: 96, offset: 224)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "retran_flow_ctl_op_t", file: !254, line: 174, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 165, size: 96, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "retransmission_flow_ctl", scope: !324, file: !254, line: 166, baseType: !296, size: 8)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !324, file: !254, line: 167, baseType: !296, size: 8, offset: 8)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !324, file: !254, line: 168, baseType: !296, size: 8, offset: 16)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tx_window", scope: !324, file: !254, line: 169, baseType: !296, size: 8, offset: 24)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_transmit", scope: !324, file: !254, line: 170, baseType: !296, size: 8, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "retransmission_timeout", scope: !324, file: !254, line: 171, baseType: !266, size: 16, offset: 48)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_timeout", scope: !324, file: !254, line: 172, baseType: !266, size: 16, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "max_pdu", scope: !324, file: !254, line: 173, baseType: !266, size: 16, offset: 80)
!334 = !{!335}
!335 = !DISubrange(count: 5)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_multiplexer_storage", scope: !243, file: !242, line: 51, baseType: !337, size: 160, offset: 2912)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 160, elements: !356)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_multiplexer_t", file: !339, line: 221, baseType: !340)
!339 = !DIFile(filename: "../btstack/Protocol/include/bredr/rfcomm.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 211, size: 160, elements: !341)
!341 = !{!342, !343, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !340, file: !339, line: 213, baseType: !258, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !340, file: !339, line: 218, baseType: !266, size: 16, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "multiplexer_core_data", scope: !340, file: !339, line: 219, baseType: !345, size: 112, offset: 48)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiplexer_core_data_t", file: !339, line: 207, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 191, size: 112, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !346, file: !339, line: 192, baseType: !309, size: 48)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_cid", scope: !346, file: !339, line: 193, baseType: !266, size: 16, offset: 48)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !339, line: 196, baseType: !296, size: 4, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_credits", scope: !346, file: !339, line: 197, baseType: !296, size: 4, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !346, file: !339, line: 200, baseType: !296, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "at_least_one_connection", scope: !346, file: !339, line: 202, baseType: !296, size: 8, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "send_dm_for_dlci", scope: !346, file: !339, line: 205, baseType: !296, size: 8, offset: 88)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !346, file: !339, line: 206, baseType: !293, size: 16, offset: 96)
!356 = !{!357}
!357 = !DISubrange(count: 1)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_storage", scope: !243, file: !242, line: 52, baseType: !359, size: 160, offset: 3072)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 160, elements: !356)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_service_t", file: !339, line: 189, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 167, size: 160, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !361, file: !339, line: 169, baseType: !258, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "server_channel", scope: !361, file: !339, line: 172, baseType: !296, size: 8, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_flow_control", scope: !361, file: !339, line: 175, baseType: !296, size: 8, offset: 40)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_initial_credits", scope: !361, file: !339, line: 178, baseType: !296, size: 8, offset: 48)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !361, file: !339, line: 181, baseType: !266, size: 16, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !361, file: !339, line: 184, baseType: !227, size: 32, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !361, file: !339, line: 187, baseType: !272, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channel_storage", scope: !243, file: !242, line: 53, baseType: !371, size: 416, offset: 3232)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 416, elements: !356)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_channel_t", file: !339, line: 282, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 262, size: 416, elements: !374)
!374 = !{!375, !376, !378, !406, !407, !409, !410}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !373, file: !339, line: 264, baseType: !258, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "multiplexer", scope: !373, file: !339, line: 266, baseType: !377, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rfc_channel_core_data", scope: !373, file: !339, line: 268, baseType: !379, size: 240, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfc_channel_core_data_t", file: !339, line: 259, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 223, size: 240, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rfc_channel_type", scope: !380, file: !339, line: 224, baseType: !296, size: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !380, file: !339, line: 225, baseType: !309, size: 48, offset: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_cid", scope: !380, file: !339, line: 226, baseType: !266, size: 16, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !380, file: !339, line: 227, baseType: !296, size: 8, offset: 80)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dlci", scope: !380, file: !339, line: 228, baseType: !296, size: 8, offset: 88)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "packets_granted", scope: !380, file: !339, line: 231, baseType: !296, size: 8, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "credits_outgoing", scope: !380, file: !339, line: 234, baseType: !296, size: 8, offset: 104)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "new_credits_incoming", scope: !380, file: !339, line: 237, baseType: !296, size: 8, offset: 112)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "credits_incoming", scope: !380, file: !339, line: 240, baseType: !296, size: 8, offset: 120)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_flow_control", scope: !380, file: !339, line: 243, baseType: !296, size: 8, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !380, file: !339, line: 247, baseType: !296, size: 8, offset: 136)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pn_priority", scope: !380, file: !339, line: 250, baseType: !296, size: 8, offset: 144)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !380, file: !339, line: 254, baseType: !266, size: 16, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rpn_data", scope: !380, file: !339, line: 257, baseType: !396, size: 56, offset: 176)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_rpn_data_t", file: !339, line: 159, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rfcomm_rpn_data", file: !339, line: 151, size: 56, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "baud_rate", scope: !397, file: !339, line: 152, baseType: !296, size: 8)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !339, line: 153, baseType: !296, size: 8, offset: 8)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !397, file: !339, line: 154, baseType: !296, size: 8, offset: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "xon", scope: !397, file: !339, line: 155, baseType: !296, size: 8, offset: 24)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !397, file: !339, line: 156, baseType: !296, size: 8, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_mask_0", scope: !397, file: !339, line: 157, baseType: !296, size: 8, offset: 40)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_mask_1", scope: !397, file: !339, line: 158, baseType: !296, size: 8, offset: 48)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !373, file: !339, line: 271, baseType: !266, size: 16, offset: 304)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !373, file: !339, line: 274, baseType: !408, size: 32, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !373, file: !339, line: 277, baseType: !272, size: 32, offset: 352)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !373, file: !339, line: 280, baseType: !227, size: 32, offset: 384)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "le_stack_pool", scope: !2, file: !230, line: 24, type: !413, isLocal: true, isDefinition: true)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_le_pool_t", file: !242, line: 93, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 61, size: 128, elements: !416)
!416 = !{!417, !418, !419, !537}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "le_hci_connection_pool", scope: !415, file: !242, line: 64, baseType: !246, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_client_pool", scope: !415, file: !242, line: 67, baseType: !246, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "le_hci_connection_storage", scope: !415, file: !242, line: 79, baseType: !420, size: 32, offset: 64)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 32, elements: !356)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_hci_connection_t", file: !31, line: 605, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__le_hci_connection", file: !31, line: 571, size: 9792, elements: !424)
!424 = !{!425, !426, !427, !428, !430, !431, !433, !434, !435, !436, !437, !438, !471, !527, !531, !532, !533, !534, !535, !536}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !423, file: !31, line: 572, baseType: !258, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !423, file: !31, line: 574, baseType: !309, size: 48, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !423, file: !31, line: 576, baseType: !293, size: 16, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !423, file: !31, line: 578, baseType: !429, size: 32, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_type_t", file: !23, line: 1475, baseType: !22)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !423, file: !31, line: 581, baseType: !276, size: 8, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_parameter_update_state", scope: !423, file: !31, line: 584, baseType: !432, size: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_con_parameter_update_state_t", file: !31, line: 252, baseType: !30)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_param_update_identifier", scope: !423, file: !31, line: 585, baseType: !276, size: 8, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !423, file: !31, line: 586, baseType: !281, size: 16, offset: 208)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !423, file: !31, line: 587, baseType: !281, size: 16, offset: 224)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency", scope: !423, file: !31, line: 588, baseType: !281, size: 16, offset: 240)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout", scope: !423, file: !31, line: 589, baseType: !281, size: 16, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection", scope: !423, file: !31, line: 592, baseType: !439, size: 448, offset: 288)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_connection_t", file: !31, line: 475, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sm_connection", file: !31, line: 456, size: 448, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !450, !452, !453, !454, !455, !460, !462, !463, !467, !468, !470}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sm_handle", scope: !440, file: !31, line: 457, baseType: !293, size: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sm_role", scope: !440, file: !31, line: 458, baseType: !276, size: 8, offset: 16)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sm_security_request_received", scope: !440, file: !31, line: 459, baseType: !276, size: 8, offset: 24)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sm_bonding_requested", scope: !440, file: !31, line: 460, baseType: !276, size: 8, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_addr_type", scope: !440, file: !31, line: 461, baseType: !276, size: 8, offset: 40)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_address", scope: !440, file: !31, line: 462, baseType: !309, size: 48, offset: 48)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sm_engine_state", scope: !440, file: !31, line: 463, baseType: !449, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_manager_state_t", file: !31, line: 433, baseType: !38)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sm_irk_lookup_state", scope: !440, file: !31, line: 464, baseType: !451, size: 32, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "irk_lookup_state_t", file: !31, line: 442, baseType: !138)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_encrypted", scope: !440, file: !31, line: 465, baseType: !276, size: 8, offset: 160)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authenticated", scope: !440, file: !31, line: 466, baseType: !276, size: 8, offset: 168)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sm_actual_encryption_key_size", scope: !440, file: !31, line: 467, baseType: !276, size: 8, offset: 176)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_preq", scope: !440, file: !31, line: 468, baseType: !456, size: 56, offset: 184)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_pairing_packet_t", file: !31, line: 452, baseType: !457)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 56, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 7)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authorization_state", scope: !440, file: !31, line: 469, baseType: !461, size: 32, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "authorization_state_t", file: !31, line: 450, baseType: !145)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ediv", scope: !440, file: !31, line: 470, baseType: !281, size: 16, offset: 288)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_rand", scope: !440, file: !31, line: 471, baseType: !464, size: 64, offset: 304)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 8)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sm_disconn_reason", scope: !440, file: !31, line: 472, baseType: !276, size: 8, offset: 368)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sm_le_db_index", scope: !440, file: !31, line: 473, baseType: !469, size: 32, offset: 384)
!469 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sm_timeout_id", scope: !440, file: !31, line: 474, baseType: !469, size: 32, offset: 416)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "att_server", scope: !423, file: !31, line: 595, baseType: !472, size: 4640, offset: 736)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_t", file: !152, line: 187, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 164, size: 4640, elements: !474)
!474 = !{!475, !477, !478, !479, !480, !481, !482, !502, !513, !514, !518, !519, !520, !521, !522, !523}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !473, file: !152, line: 165, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_state_t", file: !152, line: 162, baseType: !151)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr_type", scope: !473, file: !152, line: 167, baseType: !276, size: 8, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address", scope: !473, file: !152, line: 168, baseType: !309, size: 48, offset: 40)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ir_le_device_db_index", scope: !473, file: !152, line: 170, baseType: !469, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ir_lookup_active", scope: !473, file: !152, line: 171, baseType: !469, size: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_handle", scope: !473, file: !152, line: 173, baseType: !469, size: 32, offset: 160)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_timer", scope: !473, file: !152, line: 174, baseType: !483, size: 160, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !484, line: 19, baseType: !485)
!484 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !484, line: 7, size: 160, elements: !486)
!486 = !{!487, !488, !491, !492, !493, !494, !495, !496, !501}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !485, file: !484, line: 8, baseType: !260, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !485, file: !484, line: 10, baseType: !489, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !277, line: 32, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !279, line: 65, baseType: !321)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !485, file: !484, line: 11, baseType: !489, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !485, file: !484, line: 12, baseType: !489, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !485, file: !484, line: 13, baseType: !489, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !485, file: !484, line: 14, baseType: !489, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !485, file: !484, line: 15, baseType: !489, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !485, file: !484, line: 17, baseType: !497, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !485, file: !484, line: 18, baseType: !227, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !473, file: !152, line: 176, baseType: !503, size: 80, offset: 352)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_connection_t", file: !504, line: 41, baseType: !505)
!504 = !DIFile(filename: "../btstack/Protocol/include/ble/att_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_connection", file: !504, line: 34, size: 80, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !505, file: !504, line: 35, baseType: !293, size: 16)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !505, file: !504, line: 36, baseType: !281, size: 16, offset: 16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !505, file: !504, line: 37, baseType: !281, size: 16, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_key_size", scope: !505, file: !504, line: 38, baseType: !276, size: 8, offset: 48)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !505, file: !504, line: 39, baseType: !276, size: 8, offset: 56)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !505, file: !504, line: 40, baseType: !276, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "request_size", scope: !473, file: !152, line: 178, baseType: !281, size: 16, offset: 432)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffer", scope: !473, file: !152, line: 179, baseType: !515, size: 4136, offset: 448)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 4136, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 517)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flow_hold_flag", scope: !473, file: !152, line: 181, baseType: !276, size: 1, offset: 4584, flags: DIFlagBitField, extraData: i64 4584)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_request_flag", scope: !473, file: !152, line: 182, baseType: !276, size: 1, offset: 4585, flags: DIFlagBitField, extraData: i64 4584)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "check_remote_tag", scope: !473, file: !152, line: 183, baseType: !276, size: 3, offset: 4586, flags: DIFlagBitField, extraData: i64 4584)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "request_busy", scope: !473, file: !152, line: 184, baseType: !276, size: 1, offset: 4589, flags: DIFlagBitField, extraData: i64 4584)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reserverd", scope: !473, file: !152, line: 185, baseType: !276, size: 2, offset: 4590, flags: DIFlagBitField, extraData: i64 4584)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "result_callback", scope: !473, file: !152, line: 186, baseType: !524, size: 32, offset: 4608)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 32)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !266, !296}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_buffer", scope: !423, file: !31, line: 597, baseType: !528, size: 4232, offset: 5376)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 4232, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 529)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_pos", scope: !423, file: !31, line: 598, baseType: !281, size: 16, offset: 9616)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_length", scope: !423, file: !31, line: 599, baseType: !281, size: 16, offset: 9632)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "num_acl_packets_sent", scope: !423, file: !31, line: 600, baseType: !276, size: 8, offset: 9648)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "own_id_address", scope: !423, file: !31, line: 602, baseType: !309, size: 48, offset: 9656)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "own_address", scope: !423, file: !31, line: 603, baseType: !309, size: 48, offset: 9704)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "own_address_type", scope: !423, file: !31, line: 604, baseType: !429, size: 32, offset: 9760)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_client_storage", scope: !415, file: !242, line: 83, baseType: !538, size: 32, offset: 96)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 32, elements: !356)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_t", file: !159, line: 191, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_client", file: !159, line: 140, size: 1024, elements: !542)
!542 = !{!543, !544, !546, !547, !548, !549, !550, !551, !553, !554, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !571, !572, !576, !577, !578, !579, !580, !581, !583, !584}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !541, file: !159, line: 141, baseType: !258, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_client_state", scope: !541, file: !159, line: 143, baseType: !545, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_state_t", file: !159, line: 124, baseType: !158)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !541, file: !159, line: 146, baseType: !272, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !541, file: !159, line: 148, baseType: !293, size: 16, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !541, file: !159, line: 150, baseType: !276, size: 8, offset: 112)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !541, file: !159, line: 151, baseType: !309, size: 48, offset: 120)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !541, file: !159, line: 152, baseType: !281, size: 16, offset: 176)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_state", scope: !541, file: !159, line: 153, baseType: !552, size: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_mtu_t", file: !159, line: 132, baseType: !216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !541, file: !159, line: 155, baseType: !281, size: 16, offset: 224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !541, file: !159, line: 156, baseType: !555, size: 128, offset: 240)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 128, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 16)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_group_handle", scope: !541, file: !159, line: 158, baseType: !281, size: 16, offset: 368)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "end_group_handle", scope: !541, file: !159, line: 159, baseType: !281, size: 16, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "query_start_handle", scope: !541, file: !159, line: 161, baseType: !281, size: 16, offset: 400)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "query_end_handle", scope: !541, file: !159, line: 162, baseType: !281, size: 16, offset: 416)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_properties", scope: !541, file: !159, line: 164, baseType: !276, size: 8, offset: 432)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_start_handle", scope: !541, file: !159, line: 165, baseType: !281, size: 16, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_handle", scope: !541, file: !159, line: 167, baseType: !281, size: 16, offset: 464)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_offset", scope: !541, file: !159, line: 168, baseType: !281, size: 16, offset: 480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_length", scope: !541, file: !159, line: 169, baseType: !281, size: 16, offset: 496)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_value", scope: !541, file: !159, line: 170, baseType: !283, size: 32, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "read_multiple_handle_count", scope: !541, file: !159, line: 173, baseType: !281, size: 16, offset: 544)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "read_multiple_handles", scope: !541, file: !159, line: 174, baseType: !570, size: 32, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "client_characteristic_configuration_handle", scope: !541, file: !159, line: 176, baseType: !281, size: 16, offset: 608)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "client_characteristic_configuration_value", scope: !541, file: !159, line: 177, baseType: !573, size: 16, offset: 624)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 16, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 2)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "filter_with_uuid", scope: !541, file: !159, line: 179, baseType: !276, size: 8, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "send_confirmation", scope: !541, file: !159, line: 180, baseType: !276, size: 8, offset: 648)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "le_device_index", scope: !541, file: !159, line: 182, baseType: !469, size: 32, offset: 672)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cmac", scope: !541, file: !159, line: 183, baseType: !464, size: 64, offset: 704)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "gc_timeout", scope: !541, file: !159, line: 185, baseType: !483, size: 160, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_state", scope: !541, file: !159, line: 188, baseType: !582, size: 32, offset: 928)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_rsp_t", file: !159, line: 137, baseType: !222)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "send_packet_buffer", scope: !541, file: !159, line: 189, baseType: !457, size: 56, offset: 960)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "send_packet_len", scope: !541, file: !159, line: 190, baseType: !276, size: 8, offset: 1016)
!585 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!586 = !{i32 2, !"Dwarf Version", i32 4}
!587 = !{i32 2, !"Debug Info Version", i32 3}
!588 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!589 = distinct !DISubprogram(name: "btstack_memory_hci_connection_get", scope: !230, file: !230, line: 91, type: !590, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{!227}
!592 = !{}
!593 = !DILocation(line: 93, column: 5, scope: !589)
!594 = distinct !DISubprogram(name: "btstack_memory_hci_connection_free", scope: !230, file: !230, line: 95, type: !595, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !227}
!597 = !{!598}
!598 = !DILocalVariable(name: "hci_connection", arg: 1, scope: !594, file: !230, line: 95, type: !227)
!599 = !DILocation(line: 95, column: 47, scope: !594)
!600 = !DILocation(line: 97, column: 1, scope: !594)
!601 = distinct !DISubprogram(name: "btstack_memory_l2cap_service_get", scope: !230, file: !230, line: 106, type: !590, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!602 = !DILocation(line: 108, column: 29, scope: !601)
!603 = !{!604, !604, i64 0}
!604 = !{!"any pointer", !605, i64 0}
!605 = !{!"omnipotent char", !606, i64 0}
!606 = !{!"Simple C/C++ TBAA"}
!607 = !DILocation(line: 66, column: 23, scope: !608, inlinedAt: !617)
!608 = distinct !DILexicalBlock(scope: !609, file: !230, line: 66, column: 9)
!609 = distinct !DISubprogram(name: "memory_pool_get", scope: !230, file: !230, line: 62, type: !610, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !613)
!610 = !DISubroutineType(types: !611)
!611 = !{!227, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32)
!613 = !{!614, !615, !616}
!614 = !DILocalVariable(name: "pool", arg: 1, scope: !609, file: !230, line: 62, type: !612)
!615 = !DILocalVariable(name: "free_blocks", scope: !609, file: !230, line: 64, type: !228)
!616 = !DILocalVariable(name: "node", scope: !609, file: !230, line: 71, type: !228)
!617 = distinct !DILocation(line: 108, column: 12, scope: !601)
!618 = !{!619, !604, i64 0}
!619 = !{!"node", !604, i64 0}
!620 = !DILocation(line: 66, column: 10, scope: !608, inlinedAt: !617)
!621 = !DILocation(line: 66, column: 9, scope: !609, inlinedAt: !617)
!622 = !DILocation(line: 71, column: 13, scope: !609, inlinedAt: !617)
!623 = !DILocation(line: 72, column: 31, scope: !609, inlinedAt: !617)
!624 = !DILocation(line: 72, column: 23, scope: !609, inlinedAt: !617)
!625 = !DILocation(line: 74, column: 12, scope: !609, inlinedAt: !617)
!626 = !DILocation(line: 108, column: 5, scope: !601)
!627 = distinct !DISubprogram(name: "btstack_memory_l2cap_service_free", scope: !230, file: !230, line: 110, type: !595, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !628)
!628 = !{!629}
!629 = !DILocalVariable(name: "l2cap_service", arg: 1, scope: !627, file: !230, line: 110, type: !227)
!630 = !DILocation(line: 110, column: 46, scope: !627)
!631 = !DILocation(line: 112, column: 23, scope: !627)
!632 = !DILocation(line: 112, column: 41, scope: !627)
!633 = !DILocalVariable(name: "pool", arg: 1, scope: !634, file: !230, line: 30, type: !612)
!634 = distinct !DISubprogram(name: "memory_pool_free", scope: !230, file: !230, line: 30, type: !635, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !612, !227}
!637 = !{!633, !638, !639, !640, !641}
!638 = !DILocalVariable(name: "block", arg: 2, scope: !634, file: !230, line: 30, type: !227)
!639 = !DILocalVariable(name: "free_blocks", scope: !634, file: !230, line: 32, type: !228)
!640 = !DILocalVariable(name: "node", scope: !634, file: !230, line: 33, type: !228)
!641 = !DILocalVariable(name: "it", scope: !634, file: !230, line: 36, type: !228)
!642 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !643)
!643 = distinct !DILocation(line: 112, column: 5, scope: !627)
!644 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !643)
!645 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !643)
!646 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !643)
!647 = !DILocation(line: 37, column: 28, scope: !648, inlinedAt: !643)
!648 = distinct !DILexicalBlock(scope: !634, file: !230, line: 37, column: 5)
!649 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !643)
!650 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !643)
!651 = !DILexicalBlockFile(scope: !648, file: !230, discriminator: 1)
!652 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !643)
!653 = distinct !DILexicalBlock(scope: !654, file: !230, line: 38, column: 13)
!654 = distinct !DILexicalBlock(scope: !655, file: !230, line: 37, column: 54)
!655 = distinct !DILexicalBlock(scope: !648, file: !230, line: 37, column: 5)
!656 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !643)
!657 = !DILexicalBlockFile(scope: !655, file: !230, discriminator: 2)
!658 = distinct !{!658, !659, !660}
!659 = !DILocation(line: 37, column: 5, scope: !648)
!660 = !DILocation(line: 42, column: 5, scope: !648)
!661 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !643)
!662 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !643)
!663 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !643)
!664 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !643)
!665 = !DILocation(line: 113, column: 1, scope: !627)
!666 = distinct !DISubprogram(name: "btstack_memory_l2cap_channel_get", scope: !230, file: !230, line: 128, type: !590, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!667 = !DILocation(line: 130, column: 29, scope: !666)
!668 = !DILocation(line: 130, column: 47, scope: !666)
!669 = !DILocation(line: 62, column: 45, scope: !609, inlinedAt: !670)
!670 = distinct !DILocation(line: 130, column: 12, scope: !666)
!671 = !DILocation(line: 66, column: 23, scope: !608, inlinedAt: !670)
!672 = !DILocation(line: 66, column: 10, scope: !608, inlinedAt: !670)
!673 = !DILocation(line: 66, column: 9, scope: !609, inlinedAt: !670)
!674 = !DILocation(line: 71, column: 13, scope: !609, inlinedAt: !670)
!675 = !DILocation(line: 72, column: 31, scope: !609, inlinedAt: !670)
!676 = !DILocation(line: 72, column: 23, scope: !609, inlinedAt: !670)
!677 = !DILocation(line: 74, column: 12, scope: !609, inlinedAt: !670)
!678 = !DILocation(line: 130, column: 5, scope: !666)
!679 = distinct !DISubprogram(name: "btstack_memory_l2cap_channel_free", scope: !230, file: !230, line: 132, type: !595, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !680)
!680 = !{!681}
!681 = !DILocalVariable(name: "l2cap_channel", arg: 1, scope: !679, file: !230, line: 132, type: !227)
!682 = !DILocation(line: 132, column: 46, scope: !679)
!683 = !DILocation(line: 134, column: 23, scope: !679)
!684 = !DILocation(line: 134, column: 41, scope: !679)
!685 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !686)
!686 = distinct !DILocation(line: 134, column: 5, scope: !679)
!687 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !686)
!688 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !686)
!689 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !686)
!690 = !DILocation(line: 37, column: 28, scope: !648, inlinedAt: !686)
!691 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !686)
!692 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !686)
!693 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !686)
!694 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !686)
!695 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !686)
!696 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !686)
!697 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !686)
!698 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !686)
!699 = !DILocation(line: 135, column: 1, scope: !679)
!700 = distinct !DISubprogram(name: "btstack_memory_rfcomm_multiplexer_get", scope: !230, file: !230, line: 151, type: !590, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!701 = !DILocation(line: 153, column: 29, scope: !700)
!702 = !DILocation(line: 153, column: 47, scope: !700)
!703 = !DILocation(line: 62, column: 45, scope: !609, inlinedAt: !704)
!704 = distinct !DILocation(line: 153, column: 12, scope: !700)
!705 = !DILocation(line: 66, column: 23, scope: !608, inlinedAt: !704)
!706 = !DILocation(line: 66, column: 10, scope: !608, inlinedAt: !704)
!707 = !DILocation(line: 66, column: 9, scope: !609, inlinedAt: !704)
!708 = !DILocation(line: 71, column: 13, scope: !609, inlinedAt: !704)
!709 = !DILocation(line: 72, column: 31, scope: !609, inlinedAt: !704)
!710 = !DILocation(line: 72, column: 23, scope: !609, inlinedAt: !704)
!711 = !DILocation(line: 74, column: 12, scope: !609, inlinedAt: !704)
!712 = !DILocation(line: 153, column: 5, scope: !700)
!713 = distinct !DISubprogram(name: "btstack_memory_rfcomm_multiplexer_free", scope: !230, file: !230, line: 155, type: !595, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !714)
!714 = !{!715}
!715 = !DILocalVariable(name: "rfcomm_multiplexer", arg: 1, scope: !713, file: !230, line: 155, type: !227)
!716 = !DILocation(line: 155, column: 51, scope: !713)
!717 = !DILocation(line: 157, column: 23, scope: !713)
!718 = !DILocation(line: 157, column: 41, scope: !713)
!719 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !720)
!720 = distinct !DILocation(line: 157, column: 5, scope: !713)
!721 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !720)
!722 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !720)
!723 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !720)
!724 = !DILocation(line: 37, column: 28, scope: !648, inlinedAt: !720)
!725 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !720)
!726 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !720)
!727 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !720)
!728 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !720)
!729 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !720)
!730 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !720)
!731 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !720)
!732 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !720)
!733 = !DILocation(line: 158, column: 1, scope: !713)
!734 = distinct !DISubprogram(name: "btstack_memory_rfcomm_service_get", scope: !230, file: !230, line: 174, type: !590, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!735 = !DILocation(line: 176, column: 29, scope: !734)
!736 = !DILocation(line: 176, column: 47, scope: !734)
!737 = !DILocation(line: 62, column: 45, scope: !609, inlinedAt: !738)
!738 = distinct !DILocation(line: 176, column: 12, scope: !734)
!739 = !DILocation(line: 66, column: 23, scope: !608, inlinedAt: !738)
!740 = !DILocation(line: 66, column: 10, scope: !608, inlinedAt: !738)
!741 = !DILocation(line: 66, column: 9, scope: !609, inlinedAt: !738)
!742 = !DILocation(line: 71, column: 13, scope: !609, inlinedAt: !738)
!743 = !DILocation(line: 72, column: 31, scope: !609, inlinedAt: !738)
!744 = !DILocation(line: 72, column: 23, scope: !609, inlinedAt: !738)
!745 = !DILocation(line: 74, column: 12, scope: !609, inlinedAt: !738)
!746 = !DILocation(line: 176, column: 5, scope: !734)
!747 = distinct !DISubprogram(name: "btstack_memory_rfcomm_service_free", scope: !230, file: !230, line: 178, type: !595, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !748)
!748 = !{!749}
!749 = !DILocalVariable(name: "rfcomm_service", arg: 1, scope: !747, file: !230, line: 178, type: !227)
!750 = !DILocation(line: 178, column: 47, scope: !747)
!751 = !DILocation(line: 180, column: 23, scope: !747)
!752 = !DILocation(line: 180, column: 41, scope: !747)
!753 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !754)
!754 = distinct !DILocation(line: 180, column: 5, scope: !747)
!755 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !754)
!756 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !754)
!757 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !754)
!758 = !DILocation(line: 37, column: 28, scope: !648, inlinedAt: !754)
!759 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !754)
!760 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !754)
!761 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !754)
!762 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !754)
!763 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !754)
!764 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !754)
!765 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !754)
!766 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !754)
!767 = !DILocation(line: 181, column: 1, scope: !747)
!768 = distinct !DISubprogram(name: "btstack_memory_rfcomm_channel_get", scope: !230, file: !230, line: 197, type: !590, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!769 = !DILocation(line: 199, column: 29, scope: !768)
!770 = !DILocation(line: 199, column: 47, scope: !768)
!771 = !DILocation(line: 62, column: 45, scope: !609, inlinedAt: !772)
!772 = distinct !DILocation(line: 199, column: 12, scope: !768)
!773 = !DILocation(line: 66, column: 23, scope: !608, inlinedAt: !772)
!774 = !DILocation(line: 66, column: 10, scope: !608, inlinedAt: !772)
!775 = !DILocation(line: 66, column: 9, scope: !609, inlinedAt: !772)
!776 = !DILocation(line: 71, column: 13, scope: !609, inlinedAt: !772)
!777 = !DILocation(line: 72, column: 31, scope: !609, inlinedAt: !772)
!778 = !DILocation(line: 72, column: 23, scope: !609, inlinedAt: !772)
!779 = !DILocation(line: 74, column: 12, scope: !609, inlinedAt: !772)
!780 = !DILocation(line: 199, column: 5, scope: !768)
!781 = distinct !DISubprogram(name: "btstack_memory_rfcomm_channel_free", scope: !230, file: !230, line: 201, type: !595, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !782)
!782 = !{!783}
!783 = !DILocalVariable(name: "rfcomm_channel", arg: 1, scope: !781, file: !230, line: 201, type: !227)
!784 = !DILocation(line: 201, column: 47, scope: !781)
!785 = !DILocation(line: 203, column: 23, scope: !781)
!786 = !DILocation(line: 203, column: 41, scope: !781)
!787 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !788)
!788 = distinct !DILocation(line: 203, column: 5, scope: !781)
!789 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !788)
!790 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !788)
!791 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !788)
!792 = !DILocation(line: 37, column: 28, scope: !648, inlinedAt: !788)
!793 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !788)
!794 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !788)
!795 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !788)
!796 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !788)
!797 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !788)
!798 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !788)
!799 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !788)
!800 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !788)
!801 = !DILocation(line: 204, column: 1, scope: !781)
!802 = distinct !DISubprogram(name: "btstack_memory_le_hci_connection_get", scope: !230, file: !230, line: 221, type: !590, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!803 = !DILocation(line: 223, column: 29, scope: !802)
!804 = !DILocation(line: 66, column: 23, scope: !608, inlinedAt: !805)
!805 = distinct !DILocation(line: 223, column: 12, scope: !802)
!806 = !DILocation(line: 66, column: 10, scope: !608, inlinedAt: !805)
!807 = !DILocation(line: 66, column: 9, scope: !609, inlinedAt: !805)
!808 = !DILocation(line: 71, column: 13, scope: !609, inlinedAt: !805)
!809 = !DILocation(line: 72, column: 31, scope: !609, inlinedAt: !805)
!810 = !DILocation(line: 72, column: 23, scope: !609, inlinedAt: !805)
!811 = !DILocation(line: 74, column: 12, scope: !609, inlinedAt: !805)
!812 = !DILocation(line: 223, column: 5, scope: !802)
!813 = distinct !DISubprogram(name: "btstack_memory_le_hci_connection_free", scope: !230, file: !230, line: 225, type: !595, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !814)
!814 = !{!815}
!815 = !DILocalVariable(name: "le_hci_connection", arg: 1, scope: !813, file: !230, line: 225, type: !227)
!816 = !DILocation(line: 225, column: 50, scope: !813)
!817 = !DILocation(line: 227, column: 23, scope: !813)
!818 = !DILocation(line: 227, column: 38, scope: !813)
!819 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !820)
!820 = distinct !DILocation(line: 227, column: 5, scope: !813)
!821 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !820)
!822 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !820)
!823 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !820)
!824 = !DILocation(line: 37, column: 28, scope: !648, inlinedAt: !820)
!825 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !820)
!826 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !820)
!827 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !820)
!828 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !820)
!829 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !820)
!830 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !820)
!831 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !820)
!832 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !820)
!833 = !DILocation(line: 228, column: 1, scope: !813)
!834 = distinct !DISubprogram(name: "btstack_memory_gatt_client_get", scope: !230, file: !230, line: 243, type: !590, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!835 = !DILocation(line: 245, column: 38, scope: !834)
!836 = !DILocation(line: 245, column: 53, scope: !834)
!837 = !DILocation(line: 62, column: 45, scope: !609, inlinedAt: !838)
!838 = distinct !DILocation(line: 245, column: 21, scope: !834)
!839 = !DILocation(line: 66, column: 23, scope: !608, inlinedAt: !838)
!840 = !DILocation(line: 66, column: 10, scope: !608, inlinedAt: !838)
!841 = !DILocation(line: 66, column: 9, scope: !609, inlinedAt: !838)
!842 = !DILocation(line: 71, column: 13, scope: !609, inlinedAt: !838)
!843 = !DILocation(line: 72, column: 31, scope: !609, inlinedAt: !838)
!844 = !DILocation(line: 72, column: 23, scope: !609, inlinedAt: !838)
!845 = !DILocation(line: 74, column: 12, scope: !609, inlinedAt: !838)
!846 = !DILocation(line: 245, column: 5, scope: !834)
!847 = distinct !DISubprogram(name: "btstack_memory_gatt_client_free", scope: !230, file: !230, line: 247, type: !595, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !848)
!848 = !{!849}
!849 = !DILocalVariable(name: "gatt_client", arg: 1, scope: !847, file: !230, line: 247, type: !227)
!850 = !DILocation(line: 247, column: 44, scope: !847)
!851 = !DILocation(line: 249, column: 23, scope: !847)
!852 = !DILocation(line: 249, column: 38, scope: !847)
!853 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !854)
!854 = distinct !DILocation(line: 249, column: 5, scope: !847)
!855 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !854)
!856 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !854)
!857 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !854)
!858 = !DILocation(line: 37, column: 28, scope: !648, inlinedAt: !854)
!859 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !854)
!860 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !854)
!861 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !854)
!862 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !854)
!863 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !854)
!864 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !854)
!865 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !854)
!866 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !854)
!867 = !DILocation(line: 250, column: 1, scope: !847)
!868 = distinct !DISubprogram(name: "btstack_memory_sm_lookup_entry_get", scope: !230, file: !230, line: 275, type: !590, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!869 = !DILocation(line: 277, column: 5, scope: !868)
!870 = distinct !DISubprogram(name: "btstack_memory_sm_lookup_entry_free", scope: !230, file: !230, line: 279, type: !595, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !871)
!871 = !{!872}
!872 = !DILocalVariable(name: "sm_lookup_entry", arg: 1, scope: !870, file: !230, line: 279, type: !227)
!873 = !DILocation(line: 279, column: 48, scope: !870)
!874 = !DILocation(line: 283, column: 1, scope: !870)
!875 = distinct !DISubprogram(name: "btstack_memory_whitelist_entry_get", scope: !230, file: !230, line: 299, type: !590, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!876 = !DILocation(line: 301, column: 5, scope: !875)
!877 = distinct !DISubprogram(name: "btstack_memory_whitelist_entry_free", scope: !230, file: !230, line: 303, type: !595, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !878)
!878 = !{!879}
!879 = !DILocalVariable(name: "whitelist_entry", arg: 1, scope: !877, file: !230, line: 303, type: !227)
!880 = !DILocation(line: 303, column: 48, scope: !877)
!881 = !DILocation(line: 307, column: 1, scope: !877)
!882 = distinct !DISubprogram(name: "btstack_memory_bnep_service_get", scope: !230, file: !230, line: 327, type: !883, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!883 = !DISubroutineType(types: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_service_t", file: !6, line: 137, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 130, size: 96, elements: !888)
!888 = !{!889, !890, !891, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !887, file: !6, line: 131, baseType: !260, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "service_uuid", scope: !887, file: !6, line: 132, baseType: !281, size: 16, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !887, file: !6, line: 133, baseType: !281, size: 16, offset: 48)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !887, file: !6, line: 136, baseType: !272, size: 32, offset: 64)
!893 = !DILocation(line: 329, column: 5, scope: !882)
!894 = distinct !DISubprogram(name: "btstack_memory_bnep_service_free", scope: !230, file: !230, line: 331, type: !895, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !885}
!897 = !{!898}
!898 = !DILocalVariable(name: "bnep_service", arg: 1, scope: !894, file: !230, line: 331, type: !885)
!899 = !DILocation(line: 331, column: 55, scope: !894)
!900 = !DILocation(line: 335, column: 1, scope: !894)
!901 = distinct !DISubprogram(name: "btstack_memory_bnep_channel_get", scope: !230, file: !230, line: 354, type: !902, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!902 = !DISubroutineType(types: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_channel_t", file: !6, line: 127, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1888, elements: !907)
!907 = !{!908, !909, !911, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !930, !931, !933, !934, !941, !942, !944, !945, !946, !947, !948, !949, !950, !953}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !906, file: !6, line: 85, baseType: !260, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !906, file: !6, line: 87, baseType: !910, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "BNEP_CHANNEL_STATE", file: !6, line: 47, baseType: !5)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !906, file: !6, line: 89, baseType: !912, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "BNEP_CHANNEL_STATE_VAR", file: !6, line: 58, baseType: !12)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !906, file: !6, line: 91, baseType: !281, size: 16, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !906, file: !6, line: 92, baseType: !227, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !906, file: !6, line: 93, baseType: !309, size: 48, offset: 160)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !906, file: !6, line: 94, baseType: !309, size: 48, offset: 208)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_cid", scope: !906, file: !6, line: 95, baseType: !281, size: 16, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !906, file: !6, line: 96, baseType: !293, size: 16, offset: 272)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_source", scope: !906, file: !6, line: 98, baseType: !281, size: 16, offset: 288)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_dest", scope: !906, file: !6, line: 99, baseType: !281, size: 16, offset: 304)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "last_control_type", scope: !906, file: !6, line: 101, baseType: !276, size: 8, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "response_code", scope: !906, file: !6, line: 102, baseType: !281, size: 16, offset: 336)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter", scope: !906, file: !6, line: 104, baseType: !924, size: 256, offset: 352)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 256, elements: !465)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_net_filter_t", file: !6, line: 72, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 69, size: 32, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !926, file: !6, line: 70, baseType: !281, size: 16)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !926, file: !6, line: 71, baseType: !281, size: 16, offset: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter_count", scope: !906, file: !6, line: 105, baseType: !281, size: 16, offset: 608)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter_out", scope: !906, file: !6, line: 107, baseType: !932, size: 32, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter_out_count", scope: !906, file: !6, line: 108, baseType: !281, size: 16, offset: 672)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter", scope: !906, file: !6, line: 110, baseType: !935, size: 768, offset: 688)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 768, elements: !465)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_multi_filter_t", file: !6, line: 78, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 75, size: 96, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "addr_start", scope: !937, file: !6, line: 76, baseType: !310, size: 48)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "addr_end", scope: !937, file: !6, line: 77, baseType: !310, size: 48, offset: 48)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter_count", scope: !906, file: !6, line: 111, baseType: !281, size: 16, offset: 1456)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter_out", scope: !906, file: !6, line: 113, baseType: !943, size: 32, offset: 1472)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter_out_count", scope: !906, file: !6, line: 114, baseType: !281, size: 16, offset: 1504)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !906, file: !6, line: 117, baseType: !483, size: 160, offset: 1536)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "timer_active", scope: !906, file: !6, line: 118, baseType: !469, size: 32, offset: 1696)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "retry_count", scope: !906, file: !6, line: 119, baseType: !469, size: 32, offset: 1728)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !906, file: !6, line: 121, baseType: !272, size: 32, offset: 1760)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_for_can_send_now", scope: !906, file: !6, line: 123, baseType: !276, size: 8, offset: 1792)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "send_item", scope: !906, file: !6, line: 125, baseType: !951, size: 32, offset: 1824)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !259, line: 101, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_bit_flag", scope: !906, file: !6, line: 126, baseType: !320, size: 32, offset: 1856)
!954 = !DILocation(line: 356, column: 5, scope: !901)
!955 = distinct !DISubprogram(name: "btstack_memory_bnep_channel_free", scope: !230, file: !230, line: 358, type: !956, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !904}
!958 = !{!959}
!959 = !DILocalVariable(name: "bnep_channel", arg: 1, scope: !955, file: !230, line: 358, type: !904)
!960 = !DILocation(line: 358, column: 55, scope: !955)
!961 = !DILocation(line: 362, column: 1, scope: !955)
!962 = distinct !DISubprogram(name: "btstack_bredr_memory_init", scope: !230, file: !230, line: 367, type: !963, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !240}
!965 = !{!966}
!966 = !DILocalVariable(name: "stack", arg: 1, scope: !962, file: !230, line: 367, type: !240)
!967 = !DILocation(line: 367, column: 52, scope: !962)
!968 = !DILocation(line: 369, column: 22, scope: !962)
!969 = !DILocation(line: 374, column: 43, scope: !962)
!970 = !DILocation(line: 374, column: 63, scope: !962)
!971 = !DILocalVariable(name: "pool", arg: 1, scope: !972, file: !230, line: 48, type: !612)
!972 = distinct !DISubprogram(name: "memory_pool_create", scope: !230, file: !230, line: 48, type: !973, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !612, !227, !469, !469}
!975 = !{!971, !976, !977, !978, !979, !980, !981}
!976 = !DILocalVariable(name: "storage", arg: 2, scope: !972, file: !230, line: 48, type: !227)
!977 = !DILocalVariable(name: "count", arg: 3, scope: !972, file: !230, line: 48, type: !469)
!978 = !DILocalVariable(name: "block_size", arg: 4, scope: !972, file: !230, line: 48, type: !469)
!979 = !DILocalVariable(name: "free_blocks", scope: !972, file: !230, line: 50, type: !228)
!980 = !DILocalVariable(name: "mem_ptr", scope: !972, file: !230, line: 51, type: !235)
!981 = !DILocalVariable(name: "i", scope: !972, file: !230, line: 52, type: !469)
!982 = !DILocation(line: 48, column: 47, scope: !972, inlinedAt: !983)
!983 = distinct !DILocation(line: 374, column: 5, scope: !962)
!984 = !DILocation(line: 48, column: 59, scope: !972, inlinedAt: !983)
!985 = !DILocation(line: 48, column: 72, scope: !972, inlinedAt: !983)
!986 = !DILocation(line: 48, column: 83, scope: !972, inlinedAt: !983)
!987 = !DILocation(line: 51, column: 13, scope: !972, inlinedAt: !983)
!988 = !DILocation(line: 55, column: 18, scope: !972, inlinedAt: !983)
!989 = !DILocation(line: 55, column: 23, scope: !972, inlinedAt: !983)
!990 = !DILocation(line: 52, column: 9, scope: !972, inlinedAt: !983)
!991 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !992)
!992 = distinct !DILocation(line: 57, column: 9, scope: !993, inlinedAt: !983)
!993 = distinct !DILexicalBlock(scope: !994, file: !230, line: 56, column: 35)
!994 = distinct !DILexicalBlock(scope: !995, file: !230, line: 56, column: 5)
!995 = distinct !DILexicalBlock(scope: !972, file: !230, line: 56, column: 5)
!996 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !992)
!997 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !992)
!998 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !992)
!999 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !992)
!1000 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !992)
!1001 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !992)
!1002 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !992)
!1003 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !992)
!1004 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !992)
!1005 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !992)
!1006 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !992)
!1007 = !DILocation(line: 58, column: 17, scope: !993, inlinedAt: !983)
!1008 = !DILocation(line: 56, column: 31, scope: !1009, inlinedAt: !983)
!1009 = !DILexicalBlockFile(scope: !994, file: !230, discriminator: 2)
!1010 = !DILocation(line: 56, column: 20, scope: !1011, inlinedAt: !983)
!1011 = !DILexicalBlockFile(scope: !994, file: !230, discriminator: 1)
!1012 = !DILocation(line: 56, column: 5, scope: !1013, inlinedAt: !983)
!1013 = !DILexicalBlockFile(scope: !995, file: !230, discriminator: 1)
!1014 = distinct !{!1014, !1015, !1016}
!1015 = !DILocation(line: 56, column: 5, scope: !995)
!1016 = !DILocation(line: 59, column: 5, scope: !995)
!1017 = !DILocation(line: 377, column: 43, scope: !962)
!1018 = !DILocation(line: 377, column: 63, scope: !962)
!1019 = !DILocation(line: 48, column: 47, scope: !972, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 377, column: 5, scope: !962)
!1021 = !DILocation(line: 48, column: 59, scope: !972, inlinedAt: !1020)
!1022 = !DILocation(line: 48, column: 72, scope: !972, inlinedAt: !1020)
!1023 = !DILocation(line: 48, column: 83, scope: !972, inlinedAt: !1020)
!1024 = !DILocation(line: 51, column: 13, scope: !972, inlinedAt: !1020)
!1025 = !DILocation(line: 55, column: 18, scope: !972, inlinedAt: !1020)
!1026 = !DILocation(line: 55, column: 23, scope: !972, inlinedAt: !1020)
!1027 = !DILocation(line: 52, column: 9, scope: !972, inlinedAt: !1020)
!1028 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 57, column: 9, scope: !993, inlinedAt: !1020)
!1030 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !1029)
!1031 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !1029)
!1032 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !1029)
!1033 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !1029)
!1034 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !1029)
!1035 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !1029)
!1036 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !1029)
!1037 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !1029)
!1038 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !1029)
!1039 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !1029)
!1040 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !1029)
!1041 = !DILocation(line: 58, column: 17, scope: !993, inlinedAt: !1020)
!1042 = !DILocation(line: 56, column: 31, scope: !1009, inlinedAt: !1020)
!1043 = !DILocation(line: 56, column: 20, scope: !1011, inlinedAt: !1020)
!1044 = !DILocation(line: 56, column: 5, scope: !1013, inlinedAt: !1020)
!1045 = !DILocation(line: 380, column: 43, scope: !962)
!1046 = !DILocation(line: 380, column: 68, scope: !962)
!1047 = !DILocation(line: 48, column: 47, scope: !972, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 380, column: 5, scope: !962)
!1049 = !DILocation(line: 48, column: 72, scope: !972, inlinedAt: !1048)
!1050 = !DILocation(line: 48, column: 83, scope: !972, inlinedAt: !1048)
!1051 = !DILocation(line: 52, column: 9, scope: !972, inlinedAt: !1048)
!1052 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 57, column: 9, scope: !993, inlinedAt: !1048)
!1054 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !1053)
!1055 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !1053)
!1056 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !1053)
!1057 = !DILocation(line: 383, column: 43, scope: !962)
!1058 = !DILocation(line: 383, column: 64, scope: !962)
!1059 = !DILocation(line: 48, column: 47, scope: !972, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 383, column: 5, scope: !962)
!1061 = !DILocation(line: 48, column: 72, scope: !972, inlinedAt: !1060)
!1062 = !DILocation(line: 48, column: 83, scope: !972, inlinedAt: !1060)
!1063 = !DILocation(line: 52, column: 9, scope: !972, inlinedAt: !1060)
!1064 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 57, column: 9, scope: !993, inlinedAt: !1060)
!1066 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !1065)
!1067 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !1065)
!1068 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !1065)
!1069 = !DILocation(line: 386, column: 43, scope: !962)
!1070 = !DILocation(line: 386, column: 64, scope: !962)
!1071 = !DILocation(line: 48, column: 47, scope: !972, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 386, column: 5, scope: !962)
!1073 = !DILocation(line: 48, column: 72, scope: !972, inlinedAt: !1072)
!1074 = !DILocation(line: 48, column: 83, scope: !972, inlinedAt: !1072)
!1075 = !DILocation(line: 52, column: 9, scope: !972, inlinedAt: !1072)
!1076 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 57, column: 9, scope: !993, inlinedAt: !1072)
!1078 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !1077)
!1079 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !1077)
!1080 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !1077)
!1081 = !DILocation(line: 394, column: 1, scope: !962)
!1082 = !DILocation(line: 48, column: 47, scope: !972)
!1083 = !DILocation(line: 48, column: 59, scope: !972)
!1084 = !DILocation(line: 48, column: 72, scope: !972)
!1085 = !DILocation(line: 48, column: 83, scope: !972)
!1086 = !DILocation(line: 51, column: 13, scope: !972)
!1087 = !DILocation(line: 55, column: 18, scope: !972)
!1088 = !DILocation(line: 55, column: 23, scope: !972)
!1089 = !DILocation(line: 52, column: 9, scope: !972)
!1090 = !DILocation(line: 56, column: 20, scope: !1011)
!1091 = !DILocation(line: 56, column: 5, scope: !1013)
!1092 = !DILocation(line: 30, column: 45, scope: !634, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 57, column: 9, scope: !993)
!1094 = !DILocation(line: 30, column: 57, scope: !634, inlinedAt: !1093)
!1095 = !DILocation(line: 33, column: 27, scope: !634, inlinedAt: !1093)
!1096 = !DILocation(line: 33, column: 13, scope: !634, inlinedAt: !1093)
!1097 = !DILocation(line: 36, column: 13, scope: !634, inlinedAt: !1093)
!1098 = !DILocation(line: 37, column: 5, scope: !651, inlinedAt: !1093)
!1099 = !DILocation(line: 38, column: 16, scope: !653, inlinedAt: !1093)
!1100 = !DILocation(line: 37, column: 48, scope: !657, inlinedAt: !1093)
!1101 = !DILocation(line: 38, column: 13, scope: !654, inlinedAt: !1093)
!1102 = !DILocation(line: 45, column: 25, scope: !634, inlinedAt: !1093)
!1103 = !DILocation(line: 46, column: 25, scope: !634, inlinedAt: !1093)
!1104 = !DILocation(line: 47, column: 1, scope: !634, inlinedAt: !1093)
!1105 = !DILocation(line: 58, column: 17, scope: !993)
!1106 = !DILocation(line: 56, column: 31, scope: !1009)
!1107 = !DILocation(line: 60, column: 1, scope: !972)
!1108 = distinct !DISubprogram(name: "btstack_le_memory_init", scope: !230, file: !230, line: 397, type: !1109, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !413}
!1111 = !{!1112, !1113, !1116}
!1112 = !DILocalVariable(name: "stack", arg: 1, scope: !1108, file: !230, line: 397, type: !413)
!1113 = !DILocalVariable(name: "hci_conn_ram", scope: !1114, file: !230, line: 404, type: !421)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !230, line: 403, column: 39)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !230, line: 403, column: 9)
!1116 = !DILocalVariable(name: "gatt_clients_ram", scope: !1117, file: !230, line: 415, type: !539)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !230, line: 414, column: 36)
!1118 = distinct !DILexicalBlock(scope: !1108, file: !230, line: 414, column: 9)
!1119 = !DILocation(line: 397, column: 46, scope: !1108)
!1120 = !DILocation(line: 399, column: 19, scope: !1108)
!1121 = !DILocation(line: 403, column: 9, scope: !1115)
!1122 = !{!1123, !1123, i64 0}
!1123 = !{!"int", !605, i64 0}
!1124 = !DILocation(line: 403, column: 9, scope: !1108)
!1125 = !DILocation(line: 404, column: 80, scope: !1114)
!1126 = !DILocation(line: 404, column: 45, scope: !1114)
!1127 = !DILocation(line: 405, column: 9, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1129, file: !230, discriminator: 1)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !230, line: 405, column: 9)
!1130 = distinct !DILexicalBlock(scope: !1114, file: !230, line: 405, column: 9)
!1131 = !DILocation(line: 405, column: 9, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1130, file: !230, discriminator: 1)
!1133 = !DILocation(line: 405, column: 9, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !230, discriminator: 2)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !230, line: 405, column: 9)
!1136 = !DILocation(line: 405, column: 9, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !230, discriminator: 3)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !230, line: 405, column: 9)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !230, line: 405, column: 9)
!1140 = !DILocation(line: 405, column: 9, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1138, file: !230, discriminator: 9)
!1142 = !DILocation(line: 405, column: 9, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1138, file: !230, discriminator: 10)
!1144 = !DILocation(line: 405, column: 9, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1146, file: !230, discriminator: 5)
!1146 = distinct !DILexicalBlock(scope: !1129, file: !230, line: 405, column: 9)
!1147 = !DILocation(line: 405, column: 9, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1149, file: !230, discriminator: 6)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !230, line: 405, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !230, line: 405, column: 9)
!1151 = !DILocation(line: 406, column: 9, scope: !1114)
!1152 = !DILocation(line: 406, column: 53, scope: !1114)
!1153 = !DILocation(line: 407, column: 9, scope: !1114)
!1154 = !DILocation(line: 409, column: 44, scope: !1114)
!1155 = !DILocation(line: 409, column: 68, scope: !1114)
!1156 = !DILocation(line: 409, column: 9, scope: !1114)
!1157 = !DILocation(line: 410, column: 5, scope: !1114)
!1158 = !DILocation(line: 414, column: 9, scope: !1118)
!1159 = !DILocation(line: 414, column: 9, scope: !1108)
!1160 = !DILocation(line: 415, column: 72, scope: !1117)
!1161 = !DILocation(line: 415, column: 43, scope: !1117)
!1162 = !DILocation(line: 416, column: 9, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !230, discriminator: 1)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !230, line: 416, column: 9)
!1165 = distinct !DILexicalBlock(scope: !1117, file: !230, line: 416, column: 9)
!1166 = !DILocation(line: 416, column: 9, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1165, file: !230, discriminator: 1)
!1168 = !DILocation(line: 416, column: 9, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !230, discriminator: 2)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !230, line: 416, column: 9)
!1171 = !DILocation(line: 416, column: 9, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1173, file: !230, discriminator: 3)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !230, line: 416, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !230, line: 416, column: 9)
!1175 = !DILocation(line: 416, column: 9, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1173, file: !230, discriminator: 9)
!1177 = !DILocation(line: 416, column: 9, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1173, file: !230, discriminator: 10)
!1179 = !DILocation(line: 416, column: 9, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1181, file: !230, discriminator: 5)
!1181 = distinct !DILexicalBlock(scope: !1164, file: !230, line: 416, column: 9)
!1182 = !DILocation(line: 416, column: 9, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !230, discriminator: 6)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !230, line: 416, column: 9)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !230, line: 416, column: 9)
!1186 = !DILocation(line: 417, column: 9, scope: !1117)
!1187 = !DILocation(line: 417, column: 47, scope: !1117)
!1188 = !DILocation(line: 418, column: 9, scope: !1117)
!1189 = !DILocation(line: 420, column: 44, scope: !1117)
!1190 = !DILocation(line: 420, column: 62, scope: !1117)
!1191 = !DILocation(line: 420, column: 9, scope: !1117)
!1192 = !DILocation(line: 421, column: 5, scope: !1117)
!1193 = !DILocation(line: 433, column: 1, scope: !1108)
!1194 = distinct !DISubprogram(name: "cpu_reset", scope: !267, file: !267, line: 145, type: !1195, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !592)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null}
!1197 = !DILocation(line: 148, column: 5, scope: !1194)
!1198 = !DILocation(line: 149, column: 1, scope: !1194)
!1199 = distinct !DISubprogram(name: "btstack_le_memory_exit", scope: !230, file: !230, line: 436, type: !1109, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1200)
!1200 = !{!1201}
!1201 = !DILocalVariable(name: "stack", arg: 1, scope: !1199, file: !230, line: 436, type: !413)
!1202 = !DILocation(line: 436, column: 46, scope: !1199)
!1203 = !DILocation(line: 438, column: 19, scope: !1199)
!1204 = !DILocation(line: 440, column: 5, scope: !1199)
!1205 = !DILocation(line: 444, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !230, line: 444, column: 9)
!1207 = !DILocation(line: 444, column: 9, scope: !1199)
!1208 = !DILocation(line: 445, column: 14, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !230, line: 444, column: 54)
!1210 = !DILocation(line: 445, column: 9, scope: !1209)
!1211 = !DILocation(line: 446, column: 9, scope: !1209)
!1212 = !DILocation(line: 446, column: 53, scope: !1209)
!1213 = !DILocation(line: 447, column: 5, scope: !1209)
!1214 = !DILocation(line: 451, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1199, file: !230, line: 451, column: 9)
!1216 = !DILocation(line: 451, column: 9, scope: !1199)
!1217 = !DILocation(line: 452, column: 14, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !230, line: 451, column: 48)
!1219 = !DILocation(line: 452, column: 9, scope: !1218)
!1220 = !DILocation(line: 453, column: 9, scope: !1218)
!1221 = !DILocation(line: 453, column: 47, scope: !1218)
!1222 = !DILocation(line: 454, column: 5, scope: !1218)
!1223 = !DILocation(line: 458, column: 1, scope: !1199)
