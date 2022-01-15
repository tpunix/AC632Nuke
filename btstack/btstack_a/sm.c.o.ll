; ModuleID = 'sm.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/sm.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.sm_info_t = type { %struct.sm_setup_context, i8, i8, i8, i8, i8, i8, i8, i32, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i32, i32, [6 x i8], i32, i32, i8, [6 x i8], i8*, i32, %struct.btstack_linked_item*, i32, i8*, i8*, %struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t, %struct.btstack_linked_item*, i16, i32 (i8, i8*, i8*)*, void (i32*, i16)*, i16 }
%struct.sm_setup_context = type { %struct.btstack_timer_source, i8, i8, i8, i8, i8, i8, i32, [16 x i8], i8, [16 x i8], [7 x i8], [7 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, [6 x i8], [6 x i8], [16 x i8], i8, i16, i16, i16, [8 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i16, i16, [8 x i8], [16 x i8], [16 x i8], [16 x i8], i8, [6 x i8] }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }
%struct.btstack_linked_list_iterator_t = type { i32, %struct.btstack_linked_item*, %struct.btstack_linked_item* }
%struct.sm_connection = type { i16, i8, i8, i8, i8, [6 x i8], i32, i32, i8, i8, i8, [7 x i8], i32, i16, [8 x i8], i8, i32, i32 }
%struct.__le_hci_connection = type { %struct.btstack_linked_item, [6 x i8], i16, i32, i8, i32, i8, i16, i16, i16, i16, %struct.sm_connection, %struct.att_server_t, [529 x i8], i16, i16, i8, [6 x i8], [6 x i8], i32 }
%struct.att_server_t = type { i32, i8, [6 x i8], i32, i32, i32, %struct.btstack_timer_source, %struct.att_connection, i16, [517 x i8], i8, void (i16, i8)* }
%struct.att_connection = type { i16, i16, i16, i8, i8, i8 }
%struct.sm_vm_cfg_t = type { i16, [16 x i8], [16 x i8] }
%struct.BLE_REMOTE_LIST_T = type { [16 x i8], [16 x i8], [6 x i8], i8, i8, [8 x i8], [2 x i8], i8, i8 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@sm_global_info = internal unnamed_addr global %struct.sm_info_t* null, section ".ble_sm_data", align 4, !dbg !470
@config_le_sm_support_enable = external local_unnamed_addr constant i32, align 4
@config_asser = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/sm.c\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ASSERT-FAILD: __this == 0 sm init again\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"ASSERT-FAILD: sm_pt sm_ram malloc fail\00", align 1
@gap_random_adress_update_period = internal unnamed_addr global i32 0, section ".ble_sm_bss", align 4, !dbg !468
@gap_random_adress_type = internal unnamed_addr global i32 0, section ".ble_sm_bss", align 4, !dbg !465
@sm_run.buffer = internal constant [2 x i8] c"\0B\01", align 1, !dbg !573
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@stk_generation_method = internal unnamed_addr constant [5 x [5 x i32]] [[5 x i32] [i32 0, i32 0, i32 2, i32 0, i32 2], [5 x i32] [i32 0, i32 0, i32 2, i32 0, i32 2], [5 x i32] [i32 1, i32 1, i32 3, i32 0, i32 1], [5 x i32] zeroinitializer, [5 x i32] [i32 1, i32 1, i32 2, i32 0, i32 1]], section ".ble_sm_const", align 4, !dbg !687
@.str.7 = private unnamed_addr constant [71 x i8] c"[ble-info] :db index %u, key size %u, authenticated %u, authorized %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"sm disconnect:%d\0A\00", align 1
@sm_pdu_size = internal unnamed_addr constant [15 x i8] c"\00\07\07\11\11\02\11\0B\11\08\11\02A\11\02", section ".ble_sm_const", align 1, !dbg !693
@.str.10 = private unnamed_addr constant [71 x i8] c"[ble-info] :sm: Setting up previous ltk/ediv/rand for device index %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"[ble-info] :peer_addr:%d\0A\00", align 1
@gap_random_address_update_timer = internal global %struct.btstack_timer_source zeroinitializer, section ".ble_sm_bss", align 4, !dbg !698
@str.16 = private unnamed_addr constant [23 x i8] c"[ble-info] :local_irk:\00"
@str.18 = private unnamed_addr constant [12 x i8] c"[ble-dump]:\00"
@str.19 = private unnamed_addr constant [22 x i8] c"[ble-info] :peer_irk:\00"
@str.20 = private unnamed_addr constant [21 x i8] c"pair_is_not_allow!!!\00"
@str.21 = private unnamed_addr constant [44 x i8] c"[ble-info] :sm-----------------HCI Working!\00"
@str.22 = private unnamed_addr constant [23 x i8] c"[ble-info] :SM timeout\00"
@str.23 = private unnamed_addr constant [42 x i8] c"[ble-info] :GAP Random Address Update due\00"

; Function Attrs: nounwind optsize
define hidden i32 @sm_address_resolution_lookup(i8 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_sm_code" !dbg !704 {
  %3 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !708, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i8* %1, metadata !709, metadata !DIExpression()), !dbg !713
  %4 = bitcast %struct.btstack_linked_list_iterator_t* %3 to i8*, !dbg !714
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #14, !dbg !714
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !715, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 24, !dbg !715
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !720
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %3, %struct.btstack_linked_item** %6) #15, !dbg !715
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !720
  %7 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #15, !dbg !721
  %8 = icmp eq i32 %7, 0, !dbg !723
  br i1 %8, label %26, label %9, !dbg !723

; <label>:9:                                      ; preds = %2
  %10 = zext i8 %0 to i32
  br label %11, !dbg !723

; <label>:11:                                     ; preds = %17, %9
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !720
  %12 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #15, !dbg !724
  %13 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 3, !dbg !726
  %14 = bitcast %struct.btstack_linked_item* %13 to i32*, !dbg !726
  %15 = load i32, i32* %14, align 4, !dbg !726, !tbaa !728
  %16 = icmp eq i32 %15, %10, !dbg !731
  br i1 %16, label %20, label %17, !dbg !732

; <label>:17:                                     ; preds = %20, %11
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !720
  %18 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #15, !dbg !721
  %19 = icmp eq i32 %18, 0, !dbg !723
  br i1 %19, label %25, label %11, !dbg !723, !llvm.loop !733

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %12, i32 1, !dbg !736
  %22 = bitcast %struct.btstack_linked_item* %21 to i8*, !dbg !738
  %23 = call i32 @memcmp(i8* %22, i8* %1, i32 6) #16, !dbg !739
  %24 = icmp eq i32 %23, 0, !dbg !739
  br i1 %24, label %37, label %17, !dbg !740

; <label>:25:                                     ; preds = %17
  br label %26, !dbg !741

; <label>:26:                                     ; preds = %25, %2
  %27 = call i8* @btstack_memory_sm_lookup_entry_get() #15, !dbg !741
  %28 = icmp eq i8* %27, null, !dbg !742
  br i1 %28, label %38, label %29, !dbg !744

; <label>:29:                                     ; preds = %26
  %30 = zext i8 %0 to i32, !dbg !745
  %31 = getelementptr inbounds i8, i8* %27, i32 12, !dbg !746
  %32 = bitcast i8* %31 to i32*, !dbg !746
  store i32 %30, i32* %32, align 4, !dbg !747, !tbaa !728
  %33 = getelementptr inbounds i8, i8* %27, i32 4, !dbg !748
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %1, i32 6, i32 1, i1 false), !dbg !749
  %34 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !750, !tbaa !716
  %35 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %34, i32 0, i32 24, !dbg !750
  %36 = bitcast i8* %27 to %struct.btstack_linked_item*, !dbg !750
  call void @btstack_linked_list_add(%struct.btstack_linked_item** %35, %struct.btstack_linked_item* %36) #15, !dbg !750
  call fastcc void @sm_run() #16, !dbg !751
  br label %38, !dbg !752

; <label>:37:                                     ; preds = %20
  br label %38, !dbg !753

; <label>:38:                                     ; preds = %37, %29, %26
  %39 = phi i32 [ 0, %29 ], [ 86, %26 ], [ 85, %37 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #14, !dbg !753
  ret i32 %39, !dbg !753
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t*, %struct.btstack_linked_item**) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @btstack_memory_sm_lookup_entry_get() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: optsize
declare void @btstack_linked_list_add(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_run() unnamed_addr #0 section ".ble_sm_code" !dbg !575 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.btstack_linked_list_iterator_t, align 4
  %5 = alloca [16 x i8], align 1
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca [16 x i8], align 1
  %11 = alloca [16 x i8], align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca [16 x i8], align 4
  %14 = alloca [2 x i8], align 1
  %15 = alloca [16 x i8], align 1
  %16 = alloca [17 x i8], align 1
  %17 = alloca [16 x i8], align 1
  %18 = alloca [16 x i8], align 1
  %19 = alloca [17 x i8], align 1
  %20 = alloca [16 x i8], align 1
  %21 = alloca [16 x i8], align 1
  %22 = alloca [16 x i8], align 1
  %23 = alloca [17 x i8], align 1
  %24 = alloca [11 x i8], align 1
  %25 = alloca [17 x i8], align 1
  %26 = alloca [6 x i8], align 1
  %27 = alloca [8 x i8], align 1
  %28 = alloca [17 x i8], align 1
  %29 = alloca [16 x i8], align 1
  %30 = bitcast %struct.btstack_linked_list_iterator_t* %4 to i8*, !dbg !754
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %30) #14, !dbg !754
  %31 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !755, !tbaa !757
  %32 = icmp eq i32 %31, 0, !dbg !755
  br i1 %32, label %849, label %33, !dbg !759

; <label>:33:                                     ; preds = %0
  %34 = tail call i32 @hci_get_state() #15, !dbg !760
  %35 = icmp eq i32 %34, 2, !dbg !762
  br i1 %35, label %36, label %849, !dbg !763

; <label>:36:                                     ; preds = %33
  %37 = tail call i32 @hci_can_send_command_packet_now() #15, !dbg !764
  %38 = icmp eq i32 %37, 0, !dbg !764
  br i1 %38, label %849, label %39, !dbg !766

; <label>:39:                                     ; preds = %36
  %40 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !767, !tbaa !716
  %41 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 15, !dbg !768
  %42 = load i32, i32* %41, align 4, !dbg !768, !tbaa !769
  switch i32 %42, label %65 [
    i32 1, label %43
    i32 3, label %54
  ], !dbg !775

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 25, !dbg !776
  %45 = load i32, i32* %44, align 4, !dbg !776, !tbaa !777
  %46 = icmp eq i32 %45, 0, !dbg !778
  br i1 %46, label %47, label %65, !dbg !779

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %48) #14, !dbg !780
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !587, metadata !DIExpression()), !dbg !781
  call fastcc void @sm_d1_d_prime(i16 zeroext 1, i16 zeroext 0, i8* nonnull %48) #16, !dbg !782
  %49 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !783, !tbaa !716
  %50 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %49, i32 0, i32 15, !dbg !787
  %51 = load i32, i32* %50, align 4, !dbg !787, !tbaa !769
  %52 = add nsw i32 %51, 1, !dbg !788
  store i32 %52, i32* %50, align 4, !dbg !789, !tbaa !769
  %53 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %49, i32 0, i32 11, i32 0, !dbg !790
  call fastcc void @sm_aes128_start(i8* %53, i8* nonnull %48, i8* null) #16, !dbg !791
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %48) #14, !dbg !792
  br label %849

; <label>:54:                                     ; preds = %39
  %55 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 25, !dbg !793
  %56 = load i32, i32* %55, align 4, !dbg !793, !tbaa !777
  %57 = icmp eq i32 %56, 0, !dbg !794
  br i1 %57, label %58, label %65, !dbg !795

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #14, !dbg !796
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !591, metadata !DIExpression()), !dbg !797
  call fastcc void @sm_d1_d_prime(i16 zeroext 3, i16 zeroext 0, i8* nonnull %59) #16, !dbg !798
  %60 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !799, !tbaa !716
  %61 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %60, i32 0, i32 15, !dbg !801
  %62 = load i32, i32* %61, align 4, !dbg !801, !tbaa !769
  %63 = add nsw i32 %62, 1, !dbg !802
  store i32 %63, i32* %61, align 4, !dbg !803, !tbaa !769
  %64 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %60, i32 0, i32 11, i32 0, !dbg !804
  call fastcc void @sm_aes128_start(i8* %64, i8* nonnull %59, i8* null) #16, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #14, !dbg !806
  br label %849

; <label>:65:                                     ; preds = %54, %43, %39
  %66 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 16, !dbg !807
  %67 = load i32, i32* %66, align 4, !dbg !807, !tbaa !808
  switch i32 %67, label %82 [
    i32 2, label %68
    i32 4, label %71
    i32 6, label %80
  ], !dbg !809

; <label>:68:                                     ; preds = %65
  store i32 3, i32* %66, align 4, !dbg !810, !tbaa !808
  call void @llvm.dbg.value(metadata i8* null, metadata !813, metadata !DIExpression()), !dbg !818
  %69 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 27, !dbg !820
  store i8* null, i8** %69, align 4, !dbg !821, !tbaa !822
  %70 = tail call i32 @ll_hci_get_le_rand() #15, !dbg !823
  br label %849, !dbg !824

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 25, !dbg !825
  %73 = load i32, i32* %72, align 4, !dbg !825, !tbaa !777
  %74 = icmp eq i32 %73, 0, !dbg !826
  br i1 %74, label %75, label %82, !dbg !827

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !828
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %76) #14, !dbg !828
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !594, metadata !DIExpression()), !dbg !829
  %77 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 17, i32 0, !dbg !830
  call void @llvm.dbg.value(metadata i8* %77, metadata !831, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* %76, metadata !836, metadata !DIExpression()), !dbg !839
  call void @llvm.memset.p0i8.i32(i8* nonnull %76, i8 0, i32 13, i32 1, i1 false) #14, !dbg !840
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 13, !dbg !841
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %77, i32 3, i32 1, i1 false) #14, !dbg !842
  store i32 5, i32* %66, align 4, !dbg !843, !tbaa !808
  %79 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 13, i32 0, !dbg !845
  call fastcc void @sm_aes128_start(i8* %79, i8* nonnull %76, i8* null) #16, !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %76) #14, !dbg !847
  br label %849

; <label>:80:                                     ; preds = %65
  store i32 1, i32* %66, align 4, !dbg !848, !tbaa !808
  %81 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 17, i32 0, !dbg !849
  tail call void @ll_hci_set_random_address(i8* %81) #15, !dbg !850
  br label %849, !dbg !851

; <label>:82:                                     ; preds = %71, %65
  %83 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %40, i32 0, i32 23, !dbg !852
  %84 = load i32, i32* %83, align 4, !dbg !852, !tbaa !857
  %85 = icmp eq i32 %84, 0, !dbg !858
  br i1 %85, label %86, label %112, !dbg !859

; <label>:86:                                     ; preds = %82
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  call void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !861
  br label %87, !dbg !862

; <label>:87:                                     ; preds = %90, %86
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  %88 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !863
  %89 = icmp eq i32 %88, 0, !dbg !865
  br i1 %89, label %111, label %90, !dbg !865

; <label>:90:                                     ; preds = %87
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  %91 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !866
  %92 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %91, i32 13, !dbg !867
  %93 = bitcast %struct.btstack_linked_item* %92 to i32*, !dbg !867
  %94 = load i32, i32* %93, align 4, !dbg !867, !tbaa !869
  %95 = icmp eq i32 %94, 1, !dbg !871
  br i1 %95, label %96, label %87, !dbg !872

; <label>:96:                                     ; preds = %90
  %97 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %91, i32 9, !dbg !873
  %98 = bitcast %struct.btstack_linked_item* %97 to %struct.sm_connection*, !dbg !873
  %99 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %98, i32 0, i32 4, !dbg !874
  %100 = load i8, i8* %99, align 1, !dbg !874, !tbaa !876
  %101 = bitcast %struct.btstack_linked_item* %97 to i16*, !dbg !877
  %102 = load i16, i16* %101, align 4, !dbg !877, !tbaa !878
  %103 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %98, i32 0, i32 5, i32 0, !dbg !879
  call void @llvm.dbg.value(metadata i8 %100, metadata !880, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i16 %102, metadata !885, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %103, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 2, metadata !887, metadata !DIExpression()), !dbg !893
  %104 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !894, !tbaa !716
  %105 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %104, i32 0, i32 21, i32 0, !dbg !895
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %105, i8* %103, i32 6, i32 1, i1 false) #14, !dbg !895
  %106 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %104, i32 0, i32 20, !dbg !896
  store i8 %100, i8* %106, align 4, !dbg !897, !tbaa !898
  %107 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %104, i32 0, i32 18, !dbg !899
  store i32 0, i32* %107, align 4, !dbg !900, !tbaa !901
  %108 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %104, i32 0, i32 23, !dbg !902
  store i32 2, i32* %108, align 4, !dbg !903, !tbaa !857
  %109 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %104, i32 0, i32 22, !dbg !904
  %110 = bitcast i8** %109 to %struct.btstack_linked_item**, !dbg !905
  store %struct.btstack_linked_item* %97, %struct.btstack_linked_item** %110, align 4, !dbg !905, !tbaa !906
  call fastcc void @sm_notify_client_base(i8 zeroext -40, i16 zeroext %102, i8 zeroext %100, i8* %103) #15, !dbg !907
  store i32 2, i32* %93, align 4, !dbg !908, !tbaa !869
  br label %112

; <label>:111:                                    ; preds = %87
  br label %112, !dbg !909

; <label>:112:                                    ; preds = %111, %96, %82
  %113 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !909, !tbaa !716
  %114 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %113, i32 0, i32 23, !dbg !911
  %115 = load i32, i32* %114, align 4, !dbg !911, !tbaa !857
  %116 = icmp eq i32 %115, 0, !dbg !912
  br i1 %116, label %117, label %139, !dbg !913

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %113, i32 0, i32 24, !dbg !914
  %119 = call i32 @btstack_linked_list_empty(%struct.btstack_linked_item** %118) #15, !dbg !914
  %120 = icmp eq i32 %119, 0, !dbg !914
  br i1 %120, label %121, label %139, !dbg !915

; <label>:121:                                    ; preds = %117
  %122 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !916, !tbaa !716
  %123 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %122, i32 0, i32 24, !dbg !917
  %124 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %123, align 4, !dbg !917, !tbaa !918
  %125 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %123, %struct.btstack_linked_item* %124) #15, !dbg !919
  %126 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %124, i32 3, !dbg !920
  %127 = bitcast %struct.btstack_linked_item* %126 to i32*, !dbg !920
  %128 = load i32, i32* %127, align 4, !dbg !920, !tbaa !728
  %129 = trunc i32 %128 to i8, !dbg !921
  %130 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %124, i32 1, !dbg !922
  %131 = bitcast %struct.btstack_linked_item* %130 to i8*, !dbg !923
  call void @llvm.dbg.value(metadata i8 %129, metadata !880, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i16 0, metadata !885, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i8* %131, metadata !886, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i32 1, metadata !887, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8* null, metadata !888, metadata !DIExpression()), !dbg !929
  %132 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !930, !tbaa !716
  %133 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %132, i32 0, i32 21, i32 0, !dbg !931
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %133, i8* %131, i32 6, i32 1, i1 false) #14, !dbg !931
  %134 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %132, i32 0, i32 20, !dbg !932
  store i8 %129, i8* %134, align 4, !dbg !933, !tbaa !898
  %135 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %132, i32 0, i32 18, !dbg !934
  store i32 0, i32* %135, align 4, !dbg !935, !tbaa !901
  %136 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %132, i32 0, i32 23, !dbg !936
  store i32 1, i32* %136, align 4, !dbg !937, !tbaa !857
  %137 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %132, i32 0, i32 22, !dbg !938
  store i8* null, i8** %137, align 4, !dbg !939, !tbaa !906
  call fastcc void @sm_notify_client_base(i8 zeroext -40, i16 zeroext 0, i8 zeroext %129, i8* %131) #15, !dbg !940
  %138 = bitcast %struct.btstack_linked_item* %124 to i8*, !dbg !941
  call void @btstack_memory_sm_lookup_entry_free(i8* %138) #15, !dbg !942
  br label %139, !dbg !943

; <label>:139:                                    ; preds = %121, %117, %112
  %140 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !944, !tbaa !716
  %141 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %140, i32 0, i32 23, !dbg !946
  %142 = load i32, i32* %141, align 4, !dbg !946, !tbaa !857
  %143 = icmp eq i32 %142, 0, !dbg !947
  br i1 %143, label %196, label %144, !dbg !948

; <label>:144:                                    ; preds = %139
  %145 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %140, i32 0, i32 18, !dbg !949
  %146 = load i32, i32* %145, align 4, !dbg !949, !tbaa !901
  %147 = call i32 @le_device_db_count() #15, !dbg !951
  %148 = icmp slt i32 %146, %147, !dbg !952
  br i1 %148, label %149, label %189, !dbg !953

; <label>:149:                                    ; preds = %144
  %150 = bitcast i32* %8 to i8*
  %151 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0
  br label %153, !dbg !953

; <label>:153:                                    ; preds = %182, %149
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %150) #14, !dbg !954
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %151) #14, !dbg !955
  call void @llvm.dbg.declare(metadata [6 x i8]* %9, metadata !612, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %152) #14, !dbg !957
  call void @llvm.dbg.declare(metadata [16 x i8]* %10, metadata !613, metadata !DIExpression()), !dbg !958
  %154 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !959, !tbaa !716
  %155 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %154, i32 0, i32 18, !dbg !960
  %156 = load i32, i32* %155, align 4, !dbg !960, !tbaa !901
  call void @llvm.dbg.value(metadata i32* %8, metadata !608, metadata !DIExpression(DW_OP_deref)), !dbg !961
  call void @le_device_db_info(i32 %156, i32* nonnull %8, i8* nonnull %151, i8* nonnull %152) #15, !dbg !962
  %157 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !963, !tbaa !716
  %158 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %157, i32 0, i32 20, !dbg !965
  %159 = load i8, i8* %158, align 4, !dbg !965, !tbaa !898
  %160 = zext i8 %159 to i32, !dbg !963
  %161 = load i32, i32* %8, align 4, !dbg !966, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %161, metadata !608, metadata !DIExpression()), !dbg !961
  %162 = icmp eq i32 %160, %161, !dbg !967
  br i1 %162, label %163, label %168, !dbg !968

; <label>:163:                                    ; preds = %153
  %164 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %157, i32 0, i32 21, i32 0, !dbg !969
  %165 = call i32 @memcmp(i8* nonnull %151, i8* %164, i32 6) #16, !dbg !971
  %166 = icmp eq i32 %165, 0, !dbg !972
  br i1 %166, label %167, label %168, !dbg !973

; <label>:167:                                    ; preds = %163
  call fastcc void @sm_address_resolution_handle_event(i32 0) #16, !dbg !975
  br label %181, !dbg !977

; <label>:168:                                    ; preds = %163, %153
  %169 = icmp eq i8 %159, 0, !dbg !978
  br i1 %169, label %182, label %170, !dbg !980

; <label>:170:                                    ; preds = %168
  %171 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %157, i32 0, i32 25, !dbg !981
  %172 = load i32, i32* %171, align 4, !dbg !981, !tbaa !777
  %173 = icmp eq i32 %172, 1, !dbg !983
  br i1 %173, label %181, label %174, !dbg !984

; <label>:174:                                    ; preds = %170
  %175 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0, !dbg !985
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %175) #14, !dbg !985
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !614, metadata !DIExpression()), !dbg !986
  %176 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %157, i32 0, i32 21, i32 0, !dbg !987
  call void @llvm.dbg.value(metadata i8* %176, metadata !831, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8* %175, metadata !836, metadata !DIExpression()), !dbg !990
  call void @llvm.memset.p0i8.i32(i8* nonnull %175, i8 0, i32 13, i32 1, i1 false) #14, !dbg !991
  %177 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 13, !dbg !992
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %177, i8* %176, i32 3, i32 1, i1 false) #14, !dbg !993
  %178 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %157, i32 0, i32 19, !dbg !994
  store i32 1, i32* %178, align 4, !dbg !995, !tbaa !996
  %179 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %157, i32 0, i32 22, !dbg !997
  %180 = load i8*, i8** %179, align 4, !dbg !997, !tbaa !906
  call fastcc void @sm_aes128_start(i8* nonnull %152, i8* nonnull %175, i8* %180) #16, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %175) #14, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %152) #14, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %151) #14, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %150) #14, !dbg !999
  br label %849

; <label>:181:                                    ; preds = %170, %167
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %152) #14, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %151) #14, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %150) #14, !dbg !999
  br label %189

; <label>:182:                                    ; preds = %168
  %183 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %157, i32 0, i32 18, !dbg !1000
  %184 = load i32, i32* %183, align 4, !dbg !1002, !tbaa !901
  %185 = add nsw i32 %184, 1, !dbg !1002
  store i32 %185, i32* %183, align 4, !dbg !1002, !tbaa !901
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %152) #14, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %151) #14, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %150) #14, !dbg !999
  %186 = call i32 @le_device_db_count() #15, !dbg !951
  %187 = icmp slt i32 %185, %186, !dbg !952
  br i1 %187, label %153, label %188, !dbg !953

; <label>:188:                                    ; preds = %182
  br label %189, !dbg !1003

; <label>:189:                                    ; preds = %188, %181, %144
  %190 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1003, !tbaa !716
  %191 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %190, i32 0, i32 18, !dbg !1005
  %192 = load i32, i32* %191, align 4, !dbg !1005, !tbaa !901
  %193 = call i32 @le_device_db_count() #15, !dbg !1006
  %194 = icmp slt i32 %192, %193, !dbg !1007
  br i1 %194, label %196, label %195, !dbg !1008

; <label>:195:                                    ; preds = %189
  call fastcc void @sm_address_resolution_handle_event(i32 1) #16, !dbg !1009
  br label %196, !dbg !1011

; <label>:196:                                    ; preds = %195, %189, %139
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  call void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !1012
  br label %197, !dbg !1013

; <label>:197:                                    ; preds = %225, %196
  %198 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1014, !tbaa !716
  %199 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %198, i32 0, i32 31, !dbg !1016
  %200 = load i16, i16* %199, align 4, !dbg !1016, !tbaa !1017
  %201 = icmp eq i16 %200, -1, !dbg !1018
  br i1 %201, label %202, label %205, !dbg !1019

; <label>:202:                                    ; preds = %197
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  %203 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !1020
  %204 = icmp eq i32 %203, 0, !dbg !1022
  br i1 %204, label %205, label %225, !dbg !1023

; <label>:205:                                    ; preds = %202, %197
  %206 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i32 0, i32 0
  %207 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i32 0, i32 0
  %208 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i32 0, i32 1
  %209 = getelementptr inbounds [17 x i8], [17 x i8]* %16, i32 0, i32 0
  %210 = getelementptr inbounds [17 x i8], [17 x i8]* %16, i32 0, i32 1
  %211 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i32 0, i32 8
  %212 = bitcast i8* %211 to i64*
  %213 = bitcast [16 x i8]* %13 to i64*
  %214 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 0
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 1
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 2
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 3
  %218 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 4
  %219 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 5
  %220 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 8
  %221 = bitcast i8* %220 to i64*
  %222 = bitcast i32* %1 to i8*
  %223 = bitcast i32* %2 to i8*
  %224 = bitcast i32* %3 to i8*
  br label %241, !dbg !860

; <label>:225:                                    ; preds = %202
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  %226 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !1025
  %227 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %226, i32 12, !dbg !1026
  %228 = bitcast %struct.btstack_linked_item* %227 to i32*, !dbg !1026
  %229 = load i32, i32* %228, align 4, !dbg !1027, !tbaa !1028
  %230 = icmp eq i32 %229, 39, !dbg !1029
  br i1 %230, label %231, label %197, !dbg !1029

; <label>:231:                                    ; preds = %225
  %232 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %226, i32 9, !dbg !1030
  %233 = bitcast %struct.btstack_linked_item* %232 to %struct.sm_connection*, !dbg !1030
  store i32 35, i32* %228, align 4, !dbg !1031, !tbaa !1028
  %234 = bitcast %struct.btstack_linked_item* %232 to i16*, !dbg !1033
  %235 = load i16, i16* %234, align 4, !dbg !1033, !tbaa !878
  %236 = call i32 @ll_hci_long_term_key_request_nagative_reply(i16 zeroext %235) #15, !dbg !1034
  %237 = load i16, i16* %234, align 4, !dbg !1035, !tbaa !878
  %238 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %233, i32 0, i32 4, !dbg !1036
  %239 = load i8, i8* %238, align 1, !dbg !1036, !tbaa !876
  %240 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %233, i32 0, i32 5, i32 0, !dbg !1037
  call fastcc void @sm_notify_client_process(i16 zeroext %237, i8 zeroext %239, i8* %240, i32 2) #16, !dbg !1038
  br label %849

; <label>:241:                                    ; preds = %847, %205
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  call void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !1039
  %242 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1040, !tbaa !716
  %243 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %242, i32 0, i32 31, !dbg !1042
  %244 = load i16, i16* %243, align 4, !dbg !1042, !tbaa !1017
  %245 = icmp eq i16 %244, -1, !dbg !1043
  br i1 %245, label %246, label %368, !dbg !1044

; <label>:246:                                    ; preds = %241
  br label %247, !dbg !860

; <label>:247:                                    ; preds = %267, %246
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  %248 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !1045
  %249 = icmp eq i32 %248, 0, !dbg !1047
  br i1 %249, label %362, label %250, !dbg !1048

; <label>:250:                                    ; preds = %247
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %4, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !860
  %251 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %4) #15, !dbg !1050
  %252 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %251, i32 9, !dbg !1051
  %253 = bitcast %struct.btstack_linked_item* %252 to %struct.sm_connection*, !dbg !1051
  call void @llvm.dbg.value(metadata %struct.sm_connection* %253, metadata !621, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i32 1, metadata !622, metadata !DIExpression()), !dbg !1053
  %254 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %251, i32 12, !dbg !1054
  %255 = bitcast %struct.btstack_linked_item* %254 to i32*, !dbg !1054
  %256 = load i32, i32* %255, align 4, !dbg !1055, !tbaa !1028
  switch i32 %256, label %267 [
    i32 36, label %257
    i32 41, label %272
    i32 37, label %291
    i32 1, label %357
    i32 53, label %315
    i32 56, label %350
  ], !dbg !1056

; <label>:257:                                    ; preds = %250
  %258 = bitcast %struct.btstack_linked_item* %252 to i16*, !dbg !1057
  %259 = load i16, i16* %258, align 4, !dbg !1057, !tbaa !878
  %260 = call i32 @l2cap_can_send_fixed_channel_packet_now(i16 zeroext %259, i16 zeroext 6) #15, !dbg !1060
  %261 = icmp eq i32 %260, 0, !dbg !1060
  br i1 %261, label %265, label %262, !dbg !1061

; <label>:262:                                    ; preds = %257
  store i32 40, i32* %255, align 4, !dbg !1062, !tbaa !1028
  %263 = load i16, i16* %258, align 4, !dbg !1064, !tbaa !878
  %264 = call i32 @l2cap_send_connectionless(i16 zeroext %263, i16 zeroext 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @sm_run.buffer, i32 0, i32 0), i16 zeroext 2) #15, !dbg !1065
  br label %267, !dbg !1066

; <label>:265:                                    ; preds = %257
  %266 = load i16, i16* %258, align 4, !dbg !1067, !tbaa !878
  call void @l2cap_request_can_send_fix_channel_now_event(i16 zeroext %266, i16 zeroext 6) #15, !dbg !1069
  br label %267

; <label>:267:                                    ; preds = %357, %265, %262, %250
  %268 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1040, !tbaa !716
  %269 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %268, i32 0, i32 31, !dbg !1042
  %270 = load i16, i16* %269, align 4, !dbg !1042, !tbaa !1017
  %271 = icmp eq i16 %270, -1, !dbg !1043
  br i1 %271, label %247, label %367, !dbg !1044, !llvm.loop !1070

; <label>:272:                                    ; preds = %250
  %273 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1073, !tbaa !716
  %274 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %273, i32 0, i32 0, i32 22, !dbg !1076
  store i8 0, i8* %274, align 1, !dbg !1077, !tbaa !1078
  %275 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %273, i32 0, i32 0, i32 3, !dbg !1079
  store i8 -1, i8* %275, align 2, !dbg !1080, !tbaa !1081
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1085
  %276 = getelementptr %struct.sm_info_t, %struct.sm_info_t* %273, i32 0, i32 0, i32 8, i32 0, !dbg !1087
  call void @llvm.memset.p0i8.i32(i8* %276, i8 0, i32 16, i32 1, i1 false) #14, !dbg !1090
  call fastcc void @sm_init_setup(%struct.sm_connection* %253) #16, !dbg !1093
  %277 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1094, !tbaa !716
  %278 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %277, i32 0, i32 0, i32 11, i32 0, !dbg !1095
  %279 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %253, i32 0, i32 11, i32 0, !dbg !1095
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %278, i8* %279, i32 7, i32 1, i1 false), !dbg !1095
  %280 = call fastcc i32 @sm_stk_generation_init(%struct.sm_connection* %253) #16, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %280, metadata !623, metadata !DIExpression()), !dbg !1097
  %281 = icmp eq i32 %280, 0, !dbg !1098
  br i1 %281, label %285, label %282, !dbg !1100

; <label>:282:                                    ; preds = %272
  %283 = trunc i32 %280 to i8, !dbg !1101
  %284 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %277, i32 0, i32 0, i32 1, !dbg !1103
  store i8 %283, i8* %284, align 4, !dbg !1104, !tbaa !1105
  br label %355

; <label>:285:                                    ; preds = %272
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %253) #16, !dbg !1106
  %286 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1107, !tbaa !716
  %287 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %286, i32 0, i32 0, i32 7, !dbg !1109
  %288 = load i32, i32* %287, align 4, !dbg !1109, !tbaa !1110
  %289 = icmp eq i32 %288, 2, !dbg !1111
  %290 = select i1 %289, i32 4, i32 42
  br label %355

; <label>:291:                                    ; preds = %250
  %292 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1112, !tbaa !716
  %293 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %292, i32 0, i32 0, i32 22, !dbg !1114
  store i8 0, i8* %293, align 1, !dbg !1115, !tbaa !1078
  %294 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %292, i32 0, i32 0, i32 3, !dbg !1116
  store i8 -1, i8* %294, align 2, !dbg !1117, !tbaa !1081
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1118
  %295 = getelementptr %struct.sm_info_t, %struct.sm_info_t* %292, i32 0, i32 0, i32 8, i32 0, !dbg !1120
  call void @llvm.memset.p0i8.i32(i8* %295, i8 0, i32 16, i32 1, i1 false) #14, !dbg !1121
  call void @llvm.dbg.value(metadata %struct.sm_connection* %253, metadata !1122, metadata !DIExpression()), !dbg !1127
  %296 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %292, i32 0, i32 0, i32 26, i32 0, !dbg !1129
  %297 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %253, i32 0, i32 14, i32 0, !dbg !1129
  %298 = bitcast i8* %297 to i64*, !dbg !1129
  %299 = bitcast i8* %296 to i64*, !dbg !1129
  %300 = load i64, i64* %298, align 2, !dbg !1129
  store i64 %300, i64* %299, align 2, !dbg !1129
  %301 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %251, i32 18, !dbg !1130
  %302 = bitcast %struct.btstack_linked_item* %301 to i16*, !dbg !1130
  %303 = load i16, i16* %302, align 4, !dbg !1130, !tbaa !1131
  %304 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %292, i32 0, i32 0, i32 25, !dbg !1132
  store i16 %303, i16* %304, align 2, !dbg !1133, !tbaa !1134
  %305 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %292, i32 0, i32 0, i32 26, i32 7, !dbg !1135
  %306 = lshr i64 %300, 56, !dbg !1135
  %307 = trunc i64 %306 to i8, !dbg !1135
  %308 = and i8 %307, 15, !dbg !1136
  %309 = add nuw nsw i8 %308, 1, !dbg !1137
  %310 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %253, i32 0, i32 10, !dbg !1138
  store i8 %309, i8* %310, align 2, !dbg !1139, !tbaa !1140
  %311 = load i8, i8* %305, align 1, !dbg !1141, !tbaa !1142
  %312 = lshr i8 %311, 4, !dbg !1143
  %313 = and i8 %312, 1, !dbg !1143
  %314 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %253, i32 0, i32 9, !dbg !1144
  store i8 %313, i8* %314, align 1, !dbg !1145, !tbaa !1146
  br label %355

; <label>:315:                                    ; preds = %250
  %316 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1147, !tbaa !716
  %317 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %316, i32 0, i32 0, i32 22, !dbg !1149
  store i8 0, i8* %317, align 1, !dbg !1150, !tbaa !1078
  %318 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %316, i32 0, i32 0, i32 3, !dbg !1151
  store i8 -1, i8* %318, align 2, !dbg !1152, !tbaa !1081
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1153
  %319 = getelementptr %struct.sm_info_t, %struct.sm_info_t* %316, i32 0, i32 0, i32 8, i32 0, !dbg !1155
  call void @llvm.memset.p0i8.i32(i8* %319, i8 0, i32 16, i32 1, i1 false) #14, !dbg !1156
  call void @llvm.dbg.value(metadata %struct.sm_connection* %253, metadata !1157, metadata !DIExpression()), !dbg !1163
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %222) #14, !dbg !1165
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %223) #14, !dbg !1166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %224) #14, !dbg !1167
  %320 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %251, i32 21, !dbg !1168
  %321 = bitcast %struct.btstack_linked_item* %320 to i32*, !dbg !1168
  %322 = load i32, i32* %321, align 4, !dbg !1168, !tbaa !1170
  %323 = icmp slt i32 %322, 0, !dbg !1171
  br i1 %323, label %349, label %324, !dbg !1172

; <label>:324:                                    ; preds = %315
  %325 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %316, i32 0, i32 0, i32 32, !dbg !1173
  %326 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %316, i32 0, i32 0, i32 33, i32 0, !dbg !1174
  %327 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %316, i32 0, i32 0, i32 34, i32 0, !dbg !1175
  call void @llvm.dbg.value(metadata i32* %1, metadata !1160, metadata !DIExpression(DW_OP_deref)), !dbg !1176
  call void @llvm.dbg.value(metadata i32* %2, metadata !1161, metadata !DIExpression(DW_OP_deref)), !dbg !1177
  call void @llvm.dbg.value(metadata i32* %3, metadata !1162, metadata !DIExpression(DW_OP_deref)), !dbg !1178
  call void @le_device_db_encryption_get(i32 %322, i16* %325, i8* %326, i8* %327, i32* nonnull %1, i32* nonnull %2, i32* nonnull %3) #15, !dbg !1179
  %328 = load i8, i8* @ble_debug_enable, align 1, !dbg !1180, !tbaa !1142
  %329 = and i8 %328, 1, !dbg !1180
  %330 = icmp eq i8 %329, 0, !dbg !1180
  br i1 %330, label %337, label %331, !dbg !1182

; <label>:331:                                    ; preds = %324
  %332 = load i32, i32* %321, align 4, !dbg !1183, !tbaa !1170
  %333 = load i32, i32* %1, align 4, !dbg !1183, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %333, metadata !1160, metadata !DIExpression()), !dbg !1176
  %334 = load i32, i32* %2, align 4, !dbg !1183, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %334, metadata !1161, metadata !DIExpression()), !dbg !1177
  %335 = load i32, i32* %3, align 4, !dbg !1183, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %335, metadata !1162, metadata !DIExpression()), !dbg !1178
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i32 0, i32 0), i32 %332, i32 %333, i32 %334, i32 %335) #15, !dbg !1183
  br label %337, !dbg !1183

; <label>:337:                                    ; preds = %331, %324
  %338 = load i32, i32* %1, align 4, !dbg !1185, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %338, metadata !1160, metadata !DIExpression()), !dbg !1176
  %339 = trunc i32 %338 to i8, !dbg !1185
  %340 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %253, i32 0, i32 10, !dbg !1186
  store i8 %339, i8* %340, align 2, !dbg !1187, !tbaa !1140
  %341 = load i32, i32* %2, align 4, !dbg !1188, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %341, metadata !1161, metadata !DIExpression()), !dbg !1177
  %342 = trunc i32 %341 to i8, !dbg !1188
  %343 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %253, i32 0, i32 9, !dbg !1189
  store i8 %342, i8* %343, align 1, !dbg !1190, !tbaa !1146
  %344 = load i32, i32* %3, align 4, !dbg !1191, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %344, metadata !1162, metadata !DIExpression()), !dbg !1178
  %345 = icmp ne i32 %344, 0, !dbg !1191
  %346 = select i1 %345, i32 3, i32 0, !dbg !1191
  %347 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %251, i32 17, !dbg !1192
  %348 = bitcast %struct.btstack_linked_item* %347 to i32*, !dbg !1192
  store i32 %346, i32* %348, align 4, !dbg !1193, !tbaa !1194
  br label %349, !dbg !1195

; <label>:349:                                    ; preds = %337, %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %224) #14, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %223) #14, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %222) #14, !dbg !1195
  br label %355

; <label>:350:                                    ; preds = %250
  %351 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1196, !tbaa !716
  %352 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %351, i32 0, i32 0, i32 22, !dbg !1198
  store i8 0, i8* %352, align 1, !dbg !1199, !tbaa !1078
  %353 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %351, i32 0, i32 0, i32 3, !dbg !1200
  store i8 -1, i8* %353, align 2, !dbg !1201, !tbaa !1081
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1202
  %354 = getelementptr %struct.sm_info_t, %struct.sm_info_t* %351, i32 0, i32 0, i32 8, i32 0, !dbg !1204
  call void @llvm.memset.p0i8.i32(i8* %354, i8 0, i32 16, i32 1, i1 false) #14, !dbg !1205
  call fastcc void @sm_init_setup(%struct.sm_connection* %253) #16, !dbg !1206
  call fastcc void @sm_timeout_start(%struct.sm_connection* %253) #16, !dbg !1207
  br label %355

; <label>:355:                                    ; preds = %350, %349, %291, %285, %282
  %356 = phi i32 [ 1, %282 ], [ 47, %291 ], [ 54, %349 ], [ 57, %350 ], [ %290, %285 ]
  store i32 %356, i32* %255, align 4, !tbaa !1028
  br label %357, !dbg !1208

; <label>:357:                                    ; preds = %355, %250
  %358 = bitcast %struct.btstack_linked_item* %252 to i16*, !dbg !1208
  %359 = load i16, i16* %358, align 4, !dbg !1208, !tbaa !878
  %360 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1211, !tbaa !716
  %361 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %360, i32 0, i32 31, !dbg !1212
  store i16 %359, i16* %361, align 4, !dbg !1213, !tbaa !1017
  br label %267, !dbg !1214

; <label>:362:                                    ; preds = %247
  %363 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  %364 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %363, i32 0, i32 31
  %365 = load i16, i16* %364, align 4, !tbaa !1017
  %366 = icmp eq i16 %365, -1, !dbg !1215
  br i1 %366, label %848, label %368, !dbg !1217

; <label>:367:                                    ; preds = %267
  br label %368, !dbg !1218

; <label>:368:                                    ; preds = %367, %362, %241
  %369 = phi i16 [ %365, %362 ], [ %244, %241 ], [ %270, %367 ]
  call void @llvm.dbg.value(metadata i16 %365, metadata !1223, metadata !DIExpression()), !dbg !1218
  %370 = call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %369) #15, !dbg !1226
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %370, metadata !1224, metadata !DIExpression()), !dbg !1227
  %371 = icmp eq %struct.__le_hci_connection* %370, null, !dbg !1228
  %372 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %370, i32 0, i32 11, !dbg !1230
  %373 = select i1 %371, %struct.sm_connection* null, %struct.sm_connection* %372, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !624, metadata !DIExpression()), !dbg !1232
  br i1 %371, label %848, label %374, !dbg !1233

; <label>:374:                                    ; preds = %368
  %375 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1234, !tbaa !716
  %376 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %375, i32 0, i32 31, !dbg !1236
  %377 = load i16, i16* %376, align 4, !dbg !1236, !tbaa !1017
  %378 = call i32 @l2cap_can_send_fixed_channel_packet_now(i16 zeroext %377, i16 zeroext 6) #15, !dbg !1237
  %379 = icmp eq i32 %378, 0, !dbg !1237
  %380 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br i1 %379, label %381, label %384, !dbg !1238

; <label>:381:                                    ; preds = %374
  %382 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 31, !dbg !1239
  %383 = load i16, i16* %382, align 4, !dbg !1239, !tbaa !1017
  call void @l2cap_request_can_send_fix_channel_now_event(i16 zeroext %383, i16 zeroext 6) #15, !dbg !1241
  br label %849, !dbg !1242

; <label>:384:                                    ; preds = %374
  %385 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 3, !dbg !1243
  %386 = load i8, i8* %385, align 2, !dbg !1243, !tbaa !1081
  %387 = icmp eq i8 %386, -1, !dbg !1244
  br i1 %387, label %394, label %388, !dbg !1245

; <label>:388:                                    ; preds = %384
  %389 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i32 0, i32 0, !dbg !1246
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %389) #14, !dbg !1246
  call void @llvm.dbg.declare(metadata [2 x i8]* %12, metadata !625, metadata !DIExpression()), !dbg !1247
  store i8 14, i8* %389, align 1, !dbg !1248, !tbaa !1142
  %390 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i32 0, i32 1, !dbg !1249
  store i8 %386, i8* %390, align 1, !dbg !1250, !tbaa !1142
  store i8 -1, i8* %385, align 2, !dbg !1251, !tbaa !1081
  %391 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1252
  %392 = load i16, i16* %391, align 4, !dbg !1252, !tbaa !878
  %393 = call i32 @l2cap_send_connectionless(i16 zeroext %392, i16 zeroext 6, i8* nonnull %389, i16 zeroext 2) #15, !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %389) #14, !dbg !1254
  br label %849

; <label>:394:                                    ; preds = %384
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %206) #14, !dbg !1255
  call void @llvm.dbg.declare(metadata [16 x i8]* %13, metadata !631, metadata !DIExpression()), !dbg !1256
  %395 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 6, !dbg !1257
  %396 = load i32, i32* %395, align 4, !dbg !1258, !tbaa !1028
  switch i32 %396, label %840 [
    i32 1, label %397
    i32 54, label %420
    i32 57, label %439
    i32 42, label %446
    i32 19, label %502
    i32 4, label %511
    i32 6, label %511
    i32 8, label %511
    i32 23, label %511
    i32 25, label %511
    i32 12, label %516
    i32 16, label %516
    i32 29, label %525
    i32 49, label %525
    i32 31, label %538
    i32 14, label %551
    i32 10, label %568
    i32 20, label %585
    i32 27, label %612
    i32 18, label %625
    i32 46, label %636
    i32 51, label %642
    i32 47, label %673
    i32 61, label %686
    i32 33, label %692
  ], !dbg !1259

; <label>:397:                                    ; preds = %394
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %207) #14, !dbg !1260
  call void @llvm.dbg.declare(metadata [2 x i8]* %14, metadata !633, metadata !DIExpression()), !dbg !1261
  store i8 5, i8* %207, align 1, !dbg !1262, !tbaa !1142
  %398 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 1, !dbg !1263
  %399 = load i8, i8* %398, align 4, !dbg !1263, !tbaa !1105
  store i8 %399, i8* %208, align 1, !dbg !1264, !tbaa !1142
  %400 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 1, !dbg !1265
  %401 = load i8, i8* %400, align 2, !dbg !1265, !tbaa !1266
  %402 = icmp ne i8 %401, 0, !dbg !1267
  %403 = select i1 %402, i32 35, i32 52, !dbg !1267
  store i32 %403, i32* %395, align 4, !dbg !1268, !tbaa !1028
  %404 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1269
  %405 = load i16, i16* %404, align 4, !dbg !1269, !tbaa !878
  %406 = call i32 @l2cap_send_connectionless(i16 zeroext %405, i16 zeroext 6, i8* nonnull %207, i16 zeroext 2) #15, !dbg !1270
  %407 = load i16, i16* %404, align 4, !dbg !1271, !tbaa !878
  call fastcc void @sm_done_for_handle(i16 zeroext %407) #16, !dbg !1272
  %408 = load i16, i16* %404, align 4, !dbg !1273, !tbaa !878
  %409 = zext i16 %408 to i32, !dbg !1274
  call fastcc void @sm_set_timeout_disconnect(i32 %409, i8 zeroext 5) #16, !dbg !1275
  %410 = load i16, i16* %404, align 4, !dbg !1276, !tbaa !878
  %411 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 4, !dbg !1277
  %412 = load i8, i8* %411, align 1, !dbg !1277, !tbaa !876
  %413 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 5, i32 0, !dbg !1278
  %414 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1279, !tbaa !716
  %415 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %414, i32 0, i32 0, i32 1, !dbg !1280
  %416 = load i8, i8* %415, align 4, !dbg !1280, !tbaa !1105
  %417 = zext i8 %416 to i32, !dbg !1279
  %418 = shl nuw nsw i32 %417, 8, !dbg !1281
  %419 = or i32 %418, 3, !dbg !1282
  call fastcc void @sm_notify_client_process(i16 zeroext %410, i8 zeroext %412, i8* %413, i32 %419) #16, !dbg !1283
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %207) #14, !dbg !1284
  br label %840

; <label>:420:                                    ; preds = %394
  %421 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i32 0, i32 0, !dbg !1285
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %421) #14, !dbg !1285
  call void @llvm.dbg.declare(metadata [16 x i8]* %15, metadata !636, metadata !DIExpression()), !dbg !1286
  %422 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 34, i32 0, !dbg !1287
  call void @reverse_128(i8* %422, i8* nonnull %421) #15, !dbg !1288
  store i32 55, i32* %395, align 4, !dbg !1289, !tbaa !1028
  %423 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1290, !tbaa !716
  %424 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %423, i32 0, i32 0, i32 33, i32 0, !dbg !1290
  %425 = call i32 @big_endian_read_32(i8* %424, i32 0) #15, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %425, metadata !638, metadata !DIExpression()), !dbg !1292
  %426 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1293, !tbaa !716
  %427 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %426, i32 0, i32 0, i32 33, i32 0, !dbg !1293
  %428 = call i32 @big_endian_read_32(i8* %427, i32 4) #15, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %428, metadata !639, metadata !DIExpression()), !dbg !1295
  %429 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1296
  %430 = load i16, i16* %429, align 4, !dbg !1296, !tbaa !878
  %431 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1297, !tbaa !716
  %432 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %431, i32 0, i32 0, i32 32, !dbg !1298
  %433 = load i16, i16* %432, align 4, !dbg !1298, !tbaa !1299
  %434 = call i32 @ll_hci_start_encryption(i16 zeroext %430, i32 %428, i32 %425, i16 zeroext %433, i8* nonnull %421) #15, !dbg !1300
  %435 = load i16, i16* %429, align 4, !dbg !1301, !tbaa !878
  %436 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 4, !dbg !1302
  %437 = load i8, i8* %436, align 1, !dbg !1302, !tbaa !876
  %438 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 5, i32 0, !dbg !1303
  call fastcc void @sm_notify_client_process(i16 zeroext %435, i8 zeroext %437, i8* %438, i32 1) #16, !dbg !1304
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %421) #14, !dbg !1305
  br label %846

; <label>:439:                                    ; preds = %394
  %440 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 11, i32 0, !dbg !1306
  call fastcc void @sm_pairing_packet_set_code(i8* %440, i8 zeroext 1) #16, !dbg !1307
  store i32 58, i32* %395, align 4, !dbg !1308, !tbaa !1028
  %441 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1309
  %442 = load i16, i16* %441, align 4, !dbg !1309, !tbaa !878
  %443 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1310, !tbaa !716
  %444 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %443, i32 0, i32 0, i32 11, i32 0, !dbg !1311
  %445 = call i32 @l2cap_send_connectionless(i16 zeroext %442, i16 zeroext 6, i8* %444, i16 zeroext 7) #15, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1316
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1318
  br label %840, !dbg !1319

; <label>:446:                                    ; preds = %394
  %447 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 12, i32 0, !dbg !1320
  call fastcc void @sm_pairing_packet_set_code(i8* %447, i8 zeroext 2) #16, !dbg !1321
  call void @llvm.dbg.value(metadata i32 6, metadata !1322, metadata !DIExpression()), !dbg !1325
  %448 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1327, !tbaa !716
  %449 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %448, i32 0, i32 5, !dbg !1329
  %450 = load i8, i8* %449, align 4, !dbg !1329, !tbaa !1330
  %451 = and i8 %450, 1, !dbg !1331
  call void @llvm.dbg.value(metadata i32 7, metadata !1322, metadata !DIExpression()), !dbg !1325
  %452 = or i8 %451, 6, !dbg !1332
  %453 = zext i8 %452 to i32, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %453, metadata !1322, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %453, metadata !632, metadata !DIExpression()), !dbg !1333
  %454 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %448, i32 0, i32 0, i32 9, !dbg !1334
  %455 = load i8, i8* %454, align 4, !dbg !1334, !tbaa !1336
  %456 = icmp eq i8 %455, 0, !dbg !1337
  call void @llvm.dbg.value(metadata i32 6, metadata !632, metadata !DIExpression()), !dbg !1333
  %457 = select i1 %456, i32 43, i32 64, !dbg !1338
  %458 = select i1 %456, i32 %453, i32 6, !dbg !1338
  store i32 %457, i32* %395, align 4, !tbaa !1028
  call void @llvm.dbg.value(metadata i32 %458, metadata !632, metadata !DIExpression()), !dbg !1333
  %459 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %448, i32 0, i32 0, i32 12, i32 0, !dbg !1339
  %460 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %448, i32 0, i32 0, i32 11, i32 0, !dbg !1340
  %461 = call fastcc zeroext i8 @sm_pairing_packet_get_initiator_key_distribution(i8* %460) #16, !dbg !1341
  %462 = zext i8 %461 to i32, !dbg !1341
  %463 = and i32 %462, %458, !dbg !1342
  %464 = trunc i32 %463 to i8, !dbg !1341
  call fastcc void @sm_pairing_packet_set_initiator_key_distribution(i8* %459, i8 zeroext %464) #16, !dbg !1343
  %465 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1345, !tbaa !716
  %466 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %465, i32 0, i32 0, i32 12, i32 0, !dbg !1345
  %467 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %465, i32 0, i32 0, i32 11, i32 0, !dbg !1346
  %468 = call fastcc zeroext i8 @sm_pairing_packet_get_responder_key_distribution(i8* %467) #16, !dbg !1347
  %469 = zext i8 %468 to i32, !dbg !1347
  %470 = and i32 %469, %458, !dbg !1348
  %471 = trunc i32 %470 to i8, !dbg !1347
  call fastcc void @sm_pairing_packet_set_responder_key_distribution(i8* %466, i8 zeroext %471) #16, !dbg !1349
  %472 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1350, !tbaa !716
  %473 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %472, i32 0, i32 0, i32 12, i32 0, !dbg !1350
  %474 = call fastcc zeroext i8 @sm_pairing_packet_get_responder_key_distribution(i8* %473) #16, !dbg !1351
  call void @llvm.dbg.value(metadata i8 %474, metadata !1352, metadata !DIExpression()), !dbg !1357
  %475 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %472, i32 0, i32 0, i32 6, !dbg !1359
  store i8 0, i8* %475, align 1, !dbg !1360, !tbaa !1361
  call void @llvm.dbg.value(metadata i8 %474, metadata !1362, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 0, metadata !1367, metadata !DIExpression()), !dbg !1370
  %476 = zext i8 %474 to i32, !dbg !1371
  %477 = and i32 %476, 1, !dbg !1373
  %478 = icmp eq i32 %477, 0, !dbg !1373
  call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 3, metadata !1367, metadata !DIExpression()), !dbg !1370
  %479 = select i1 %478, i32 0, i32 3, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %479, metadata !1367, metadata !DIExpression()), !dbg !1370
  %480 = and i32 %476, 2, !dbg !1375
  %481 = icmp eq i32 %480, 0, !dbg !1375
  %482 = or i32 %479, 12, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %482, metadata !1367, metadata !DIExpression()), !dbg !1370
  %483 = select i1 %481, i32 %479, i32 %482, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %483, metadata !1367, metadata !DIExpression()), !dbg !1370
  %484 = shl nuw nsw i32 %476, 2, !dbg !1380
  %485 = and i32 %484, 16, !dbg !1380
  %486 = or i32 %483, %485, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %486, metadata !1367, metadata !DIExpression()), !dbg !1370
  %487 = trunc i32 %486 to i8, !dbg !1381
  %488 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %472, i32 0, i32 0, i32 4, !dbg !1382
  store i8 %487, i8* %488, align 1, !dbg !1383, !tbaa !1384
  %489 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %472, i32 0, i32 0, i32 5, !dbg !1385
  store i8 %487, i8* %489, align 4, !dbg !1386, !tbaa !1387
  %490 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1388
  %491 = load i16, i16* %490, align 4, !dbg !1388, !tbaa !878
  %492 = call i32 @l2cap_send_connectionless(i16 zeroext %491, i16 zeroext 6, i8* %473, i16 zeroext 7) #15, !dbg !1389
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1390
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1392
  %493 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1393, !tbaa !716
  %494 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %493, i32 0, i32 0, i32 9, !dbg !1395
  %495 = load i8, i8* %494, align 4, !dbg !1395, !tbaa !1336
  %496 = icmp eq i8 %495, 0, !dbg !1393
  br i1 %496, label %501, label %497, !dbg !1396

; <label>:497:                                    ; preds = %446
  %498 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %493, i32 0, i32 0, i32 7, !dbg !1397
  %499 = load i32, i32* %498, align 4, !dbg !1397, !tbaa !1110
  %500 = icmp eq i32 %499, 0, !dbg !1399
  br i1 %500, label %501, label %846, !dbg !1400

; <label>:501:                                    ; preds = %497, %446
  call fastcc void @sm_trigger_user_response(%struct.sm_connection* nonnull %373) #16, !dbg !1401
  br label %846, !dbg !1403

; <label>:502:                                    ; preds = %394
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %209) #14, !dbg !1404
  call void @llvm.dbg.declare(metadata [17 x i8]* %16, metadata !640, metadata !DIExpression()), !dbg !1405
  store i8 4, i8* %209, align 1, !dbg !1406, !tbaa !1142
  %503 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 13, i32 0, !dbg !1407
  call void @reverse_128(i8* %503, i8* %210) #15, !dbg !1408
  %504 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 1, !dbg !1409
  %505 = load i8, i8* %504, align 2, !dbg !1409, !tbaa !1266
  %506 = icmp ne i8 %505, 0, !dbg !1409
  %507 = select i1 %506, i32 45, i32 60, !dbg !1411
  store i32 %507, i32* %395, align 4, !tbaa !1028
  %508 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1412
  %509 = load i16, i16* %508, align 4, !dbg !1412, !tbaa !878
  %510 = call i32 @l2cap_send_connectionless(i16 zeroext %509, i16 zeroext 6, i8* nonnull %209, i16 zeroext 17) #15, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1414
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1416
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %209) #14, !dbg !1417
  br label %840

; <label>:511:                                    ; preds = %394, %394, %394, %394, %394
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1421
  %512 = add nsw i32 %396, 1, !dbg !1423
  store i32 %512, i32* %395, align 4, !dbg !1424, !tbaa !1028
  %513 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 27, !dbg !1425
  %514 = bitcast i8** %513 to %struct.sm_connection**, !dbg !1427
  store %struct.sm_connection* %373, %struct.sm_connection** %514, align 4, !dbg !1427, !tbaa !822
  %515 = call i32 @ll_hci_get_le_rand() #15, !dbg !1428
  br label %846, !dbg !1429

; <label>:516:                                    ; preds = %394, %394
  %517 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1430
  %518 = load i32, i32* %517, align 4, !dbg !1430, !tbaa !777
  %519 = icmp eq i32 %518, 1, !dbg !1432
  br i1 %519, label %840, label %520, !dbg !1433

; <label>:520:                                    ; preds = %516
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1434
  %521 = add nsw i32 %396, 1, !dbg !1436
  store i32 %521, i32* %395, align 4, !dbg !1437, !tbaa !1028
  %522 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 8, i32 0, !dbg !1438
  %523 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 10, i32 0, !dbg !1439
  %524 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1440
  call fastcc void @sm_aes128_start(i8* %522, i8* %523, i8* %524) #16, !dbg !1441
  br label %846, !dbg !1442

; <label>:525:                                    ; preds = %394, %394
  %526 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1443
  %527 = load i32, i32* %526, align 4, !dbg !1443, !tbaa !777
  %528 = icmp eq i32 %527, 0, !dbg !1444
  br i1 %528, label %529, label %840, !dbg !1445

; <label>:529:                                    ; preds = %525
  %530 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i32 0, i32 0, !dbg !1446
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %530) #14, !dbg !1446
  call void @llvm.dbg.declare(metadata [16 x i8]* %17, metadata !645, metadata !DIExpression()), !dbg !1447
  %531 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 24, !dbg !1448
  %532 = load i16, i16* %531, align 4, !dbg !1448, !tbaa !1449
  call fastcc void @sm_d1_d_prime(i16 zeroext %532, i16 zeroext 0, i8* nonnull %530) #16, !dbg !1450
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1451
  %533 = load i32, i32* %395, align 4, !dbg !1453, !tbaa !1028
  %534 = add nsw i32 %533, 1, !dbg !1454
  store i32 %534, i32* %395, align 4, !dbg !1455, !tbaa !1028
  %535 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1456, !tbaa !716
  %536 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %535, i32 0, i32 10, i32 0, !dbg !1456
  %537 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1457
  call fastcc void @sm_aes128_start(i8* %536, i8* nonnull %530, i8* %537) #16, !dbg !1458
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %530) #14, !dbg !1459
  br label %846

; <label>:538:                                    ; preds = %394
  %539 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1460
  %540 = load i32, i32* %539, align 4, !dbg !1460, !tbaa !777
  %541 = icmp eq i32 %540, 0, !dbg !1461
  br i1 %541, label %542, label %840, !dbg !1462

; <label>:542:                                    ; preds = %538
  %543 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i32 0, i32 0, !dbg !1463
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %543) #14, !dbg !1463
  call void @llvm.dbg.declare(metadata [16 x i8]* %18, metadata !648, metadata !DIExpression()), !dbg !1464
  %544 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 24, !dbg !1465
  %545 = load i16, i16* %544, align 4, !dbg !1465, !tbaa !1449
  call fastcc void @sm_d1_d_prime(i16 zeroext %545, i16 zeroext 1, i8* nonnull %543) #16, !dbg !1466
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1467
  %546 = load i32, i32* %395, align 4, !dbg !1469, !tbaa !1028
  %547 = add nsw i32 %546, 1, !dbg !1470
  store i32 %547, i32* %395, align 4, !dbg !1471, !tbaa !1028
  %548 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1472, !tbaa !716
  %549 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %548, i32 0, i32 10, i32 0, !dbg !1472
  %550 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1473
  call fastcc void @sm_aes128_start(i8* %549, i8* nonnull %543, i8* %550) #16, !dbg !1474
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %543) #14, !dbg !1475
  br label %846

; <label>:551:                                    ; preds = %394
  %552 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1476
  %553 = load i32, i32* %552, align 4, !dbg !1476, !tbaa !777
  %554 = icmp eq i32 %553, 1, !dbg !1478
  br i1 %554, label %840, label %555, !dbg !1479

; <label>:555:                                    ; preds = %551
  %556 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 15, i32 0, !dbg !1480
  %557 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 11, i32 0, !dbg !1481
  %558 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 12, i32 0, !dbg !1482
  %559 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 17, !dbg !1483
  %560 = load i8, i8* %559, align 1, !dbg !1483, !tbaa !1484
  %561 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 18, !dbg !1485
  %562 = load i8, i8* %561, align 4, !dbg !1485, !tbaa !1486
  call fastcc void @sm_c1_t1(i8* %556, i8* %557, i8* %558, i8 zeroext %560, i8 zeroext %562, i8* nonnull %206) #16, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1488
  %563 = load i32, i32* %395, align 4, !dbg !1490, !tbaa !1028
  %564 = add nsw i32 %563, 1, !dbg !1491
  store i32 %564, i32* %395, align 4, !dbg !1492, !tbaa !1028
  %565 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1493, !tbaa !716
  %566 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %565, i32 0, i32 0, i32 8, i32 0, !dbg !1493
  %567 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1494
  call fastcc void @sm_aes128_start(i8* %566, i8* nonnull %206, i8* %567) #16, !dbg !1495
  br label %840, !dbg !1496

; <label>:568:                                    ; preds = %394
  %569 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1497
  %570 = load i32, i32* %569, align 4, !dbg !1497, !tbaa !777
  %571 = icmp eq i32 %570, 1, !dbg !1499
  br i1 %571, label %840, label %572, !dbg !1500

; <label>:572:                                    ; preds = %568
  %573 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 13, i32 0, !dbg !1501
  %574 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 11, i32 0, !dbg !1502
  %575 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 12, i32 0, !dbg !1503
  %576 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 17, !dbg !1504
  %577 = load i8, i8* %576, align 1, !dbg !1504, !tbaa !1484
  %578 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 18, !dbg !1505
  %579 = load i8, i8* %578, align 4, !dbg !1505, !tbaa !1486
  call fastcc void @sm_c1_t1(i8* %573, i8* %574, i8* %575, i8 zeroext %577, i8 zeroext %579, i8* nonnull %206) #16, !dbg !1506
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1507
  %580 = load i32, i32* %395, align 4, !dbg !1509, !tbaa !1028
  %581 = add nsw i32 %580, 1, !dbg !1510
  store i32 %581, i32* %395, align 4, !dbg !1511, !tbaa !1028
  %582 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1512, !tbaa !716
  %583 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %582, i32 0, i32 0, i32 8, i32 0, !dbg !1512
  %584 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1513
  call fastcc void @sm_aes128_start(i8* %583, i8* nonnull %206, i8* %584) #16, !dbg !1514
  br label %840, !dbg !1515

; <label>:585:                                    ; preds = %394
  %586 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1516
  %587 = load i32, i32* %586, align 4, !dbg !1516, !tbaa !777
  %588 = icmp eq i32 %587, 1, !dbg !1518
  br i1 %588, label %840, label %589, !dbg !1519

; <label>:589:                                    ; preds = %585
  %590 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 1, !dbg !1520
  %591 = load i8, i8* %590, align 2, !dbg !1520, !tbaa !1266
  %592 = icmp eq i8 %591, 0, !dbg !1520
  br i1 %592, label %596, label %593, !dbg !1522

; <label>:593:                                    ; preds = %589
  %594 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 13, i32 0, !dbg !1523
  %595 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 15, i32 0, !dbg !1525
  call void @llvm.dbg.value(metadata i8* %594, metadata !1526, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8* %595, metadata !1531, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8* %206, metadata !1532, metadata !DIExpression()), !dbg !1536
  br label %599, !dbg !1537

; <label>:596:                                    ; preds = %589
  %597 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 15, i32 0, !dbg !1538
  %598 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 13, i32 0, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %597, metadata !1526, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8* %598, metadata !1531, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %206, metadata !1532, metadata !DIExpression()), !dbg !1544
  br label %599

; <label>:599:                                    ; preds = %596, %593
  %600 = phi i8* [ %598, %596 ], [ %595, %593 ]
  %601 = phi i8* [ %597, %596 ], [ %594, %593 ]
  %602 = getelementptr inbounds i8, i8* %600, i32 8, !dbg !1545
  %603 = bitcast i8* %602 to i64*, !dbg !1546
  %604 = load i64, i64* %603, align 1, !dbg !1546
  store i64 %604, i64* %212, align 4, !dbg !1546
  %605 = getelementptr inbounds i8, i8* %601, i32 8, !dbg !1547
  %606 = bitcast i8* %605 to i64*, !dbg !1548
  %607 = load i64, i64* %606, align 1, !dbg !1548
  store i64 %607, i64* %213, align 4, !dbg !1548
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1549
  %608 = load i32, i32* %395, align 4, !dbg !1551, !tbaa !1028
  %609 = add nsw i32 %608, 1, !dbg !1552
  store i32 %609, i32* %395, align 4, !dbg !1553, !tbaa !1028
  %610 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 8, i32 0, !dbg !1554
  %611 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1555
  call fastcc void @sm_aes128_start(i8* %610, i8* nonnull %206, i8* %611) #16, !dbg !1556
  br label %840, !dbg !1557

; <label>:612:                                    ; preds = %394
  %613 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1558
  %614 = load i32, i32* %613, align 4, !dbg !1558, !tbaa !777
  %615 = icmp eq i32 %614, 1, !dbg !1560
  br i1 %615, label %840, label %616, !dbg !1561

; <label>:616:                                    ; preds = %612
  %617 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 26, i32 0, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %617, metadata !1563, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8* %206, metadata !1566, metadata !DIExpression()), !dbg !1569
  %618 = bitcast [16 x i8]* %13 to i64*, !dbg !1570
  store i64 0, i64* %618, align 4, !dbg !1570
  %619 = bitcast i8* %617 to i64*, !dbg !1571
  %620 = load i64, i64* %619, align 1, !dbg !1571
  store i64 %620, i64* %212, align 4, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1572
  %621 = load i32, i32* %395, align 4, !dbg !1574, !tbaa !1028
  %622 = add nsw i32 %621, 1, !dbg !1575
  store i32 %622, i32* %395, align 4, !dbg !1576, !tbaa !1028
  %623 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 12, i32 0, !dbg !1577
  %624 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1578
  call fastcc void @sm_aes128_start(i8* %623, i8* nonnull %206, i8* %624) #16, !dbg !1579
  br label %846, !dbg !1580

; <label>:625:                                    ; preds = %394
  %626 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i32 0, i32 0, !dbg !1581
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %626) #14, !dbg !1581
  call void @llvm.dbg.declare(metadata [17 x i8]* %19, metadata !651, metadata !DIExpression()), !dbg !1582
  store i8 3, i8* %626, align 1, !dbg !1583, !tbaa !1142
  %627 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 14, i32 0, !dbg !1584
  %628 = getelementptr inbounds [17 x i8], [17 x i8]* %19, i32 0, i32 1, !dbg !1585
  call void @reverse_128(i8* %627, i8* %628) #15, !dbg !1586
  %629 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 1, !dbg !1587
  %630 = load i8, i8* %629, align 2, !dbg !1587, !tbaa !1266
  %631 = icmp ne i8 %630, 0, !dbg !1587
  %632 = select i1 %631, i32 44, i32 59, !dbg !1589
  store i32 %632, i32* %395, align 4, !tbaa !1028
  %633 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1590
  %634 = load i16, i16* %633, align 4, !dbg !1590, !tbaa !878
  %635 = call i32 @l2cap_send_connectionless(i16 zeroext %634, i16 zeroext 6, i8* nonnull %626, i16 zeroext 17) #15, !dbg !1591
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1592
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1594
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %626) #14, !dbg !1595
  br label %846

; <label>:636:                                    ; preds = %394
  %637 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i32 0, i32 0, !dbg !1596
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %637) #14, !dbg !1596
  call void @llvm.dbg.declare(metadata [16 x i8]* %20, metadata !653, metadata !DIExpression()), !dbg !1597
  %638 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 21, i32 0, !dbg !1598
  call void @reverse_128(i8* %638, i8* nonnull %637) #15, !dbg !1599
  store i32 22, i32* %395, align 4, !dbg !1600, !tbaa !1028
  %639 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1601
  %640 = load i16, i16* %639, align 4, !dbg !1601, !tbaa !878
  %641 = call i32 @ll_hci_long_term_key_request_reply(i16 zeroext %640, i8* nonnull %637) #15, !dbg !1602
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %637) #14, !dbg !1603
  br label %846

; <label>:642:                                    ; preds = %394
  %643 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i32 0, i32 0, !dbg !1604
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %643) #14, !dbg !1604
  call void @llvm.dbg.declare(metadata [16 x i8]* %21, metadata !655, metadata !DIExpression()), !dbg !1605
  %644 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 1, !dbg !1606
  %645 = load i8, i8* %644, align 2, !dbg !1606, !tbaa !1266
  %646 = icmp eq i8 %645, 0, !dbg !1606
  br i1 %646, label %666, label %647, !dbg !1608

; <label>:647:                                    ; preds = %642
  %648 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 9, !dbg !1609
  %649 = load i8, i8* %648, align 4, !dbg !1609, !tbaa !1611
  %650 = icmp eq i8 %649, 0, !dbg !1612
  br i1 %650, label %651, label %666, !dbg !1613

; <label>:651:                                    ; preds = %647
  %652 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 5, i32 0, !dbg !1615
  %653 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 4, !dbg !1618
  %654 = load i8, i8* %653, align 1, !dbg !1618, !tbaa !876
  %655 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 21, i32 0, !dbg !1619
  %656 = call zeroext i8 @ble_list_reconnect_device_is_exist(i8* %652, i8 zeroext %654, i8* %655, i8 zeroext %645) #15, !dbg !1620
  %657 = icmp eq i8 %656, 0, !dbg !1620
  br i1 %657, label %660, label %658, !dbg !1621

; <label>:658:                                    ; preds = %651
  %659 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %666, !dbg !1621

; <label>:660:                                    ; preds = %651
  store i32 35, i32* %395, align 4, !dbg !1622, !tbaa !1028
  %661 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1624
  %662 = load i16, i16* %661, align 4, !dbg !1624, !tbaa !878
  %663 = call i32 @ll_hci_long_term_key_request_nagative_reply(i16 zeroext %662) #15, !dbg !1625
  %664 = load i16, i16* %661, align 4, !dbg !1626, !tbaa !878
  %665 = load i8, i8* %653, align 1, !dbg !1627, !tbaa !876
  call fastcc void @sm_notify_client_process(i16 zeroext %664, i8 zeroext %665, i8* %652, i32 2) #16, !dbg !1628
  br label %672, !dbg !1629

; <label>:666:                                    ; preds = %658, %647, %642
  %667 = phi %struct.sm_info_t* [ %659, %658 ], [ %380, %647 ], [ %380, %642 ], !dbg !1630
  %668 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %667, i32 0, i32 0, i32 21, i32 0, !dbg !1630
  call void @reverse_128(i8* %668, i8* nonnull %643) #15, !dbg !1631
  store i32 35, i32* %395, align 4, !dbg !1632, !tbaa !1028
  %669 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1633
  %670 = load i16, i16* %669, align 4, !dbg !1633, !tbaa !878
  %671 = call i32 @ll_hci_long_term_key_request_reply(i16 zeroext %670, i8* nonnull %643) #15, !dbg !1634
  br label %672, !dbg !1635

; <label>:672:                                    ; preds = %666, %660
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %643) #14, !dbg !1636
  br label %846

; <label>:673:                                    ; preds = %394
  %674 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 25, !dbg !1637
  %675 = load i32, i32* %674, align 4, !dbg !1637, !tbaa !777
  %676 = icmp eq i32 %675, 1, !dbg !1639
  br i1 %676, label %840, label %677, !dbg !1640

; <label>:677:                                    ; preds = %673
  %678 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 26, i32 0, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %678, metadata !1563, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %206, metadata !1566, metadata !DIExpression()), !dbg !1644
  %679 = bitcast [16 x i8]* %13 to i64*, !dbg !1645
  store i64 0, i64* %679, align 4, !dbg !1645
  %680 = bitcast i8* %678 to i64*, !dbg !1646
  %681 = load i64, i64* %680, align 1, !dbg !1646
  store i64 %681, i64* %212, align 4, !dbg !1646
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1418, metadata !DIExpression()), !dbg !1647
  %682 = load i32, i32* %395, align 4, !dbg !1649, !tbaa !1028
  %683 = add nsw i32 %682, 1, !dbg !1650
  store i32 %683, i32* %395, align 4, !dbg !1651, !tbaa !1028
  %684 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 12, i32 0, !dbg !1652
  %685 = bitcast %struct.sm_connection* %373 to i8*, !dbg !1653
  call fastcc void @sm_aes128_start(i8* %684, i8* nonnull %206, i8* %685) #16, !dbg !1654
  br label %846, !dbg !1655

; <label>:686:                                    ; preds = %394
  %687 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i32 0, i32 0, !dbg !1656
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %687) #14, !dbg !1656
  call void @llvm.dbg.declare(metadata [16 x i8]* %22, metadata !657, metadata !DIExpression()), !dbg !1657
  %688 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 21, i32 0, !dbg !1658
  call void @reverse_128(i8* %688, i8* nonnull %687) #15, !dbg !1659
  store i32 22, i32* %395, align 4, !dbg !1660, !tbaa !1028
  %689 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1661
  %690 = load i16, i16* %689, align 4, !dbg !1661, !tbaa !878
  %691 = call i32 @ll_hci_start_encryption(i16 zeroext %690, i32 0, i32 0, i16 zeroext 0, i8* nonnull %687) #15, !dbg !1662
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %687) #14, !dbg !1663
  br label %846

; <label>:692:                                    ; preds = %394
  %693 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 4, !dbg !1664
  %694 = load i8, i8* %693, align 1, !dbg !1664, !tbaa !1384
  %695 = zext i8 %694 to i32, !dbg !1665
  %696 = and i32 %695, 1, !dbg !1666
  %697 = icmp eq i32 %696, 0, !dbg !1666
  br i1 %697, label %706, label %698, !dbg !1667

; <label>:698:                                    ; preds = %692
  %699 = and i8 %694, -2, !dbg !1668
  store i8 %699, i8* %693, align 1, !dbg !1668, !tbaa !1384
  %700 = getelementptr inbounds [17 x i8], [17 x i8]* %23, i32 0, i32 0, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %700) #14, !dbg !1669
  call void @llvm.dbg.declare(metadata [17 x i8]* %23, metadata !659, metadata !DIExpression()), !dbg !1670
  store i8 6, i8* %700, align 1, !dbg !1671, !tbaa !1142
  %701 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 21, i32 0, !dbg !1672
  %702 = getelementptr inbounds [17 x i8], [17 x i8]* %23, i32 0, i32 1, !dbg !1673
  call void @reverse_128(i8* %701, i8* %702) #15, !dbg !1674
  %703 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1675
  %704 = load i16, i16* %703, align 4, !dbg !1675, !tbaa !878
  %705 = call i32 @l2cap_send_connectionless(i16 zeroext %704, i16 zeroext 6, i8* nonnull %700, i16 zeroext 17) #15, !dbg !1676
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1677
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %700) #14, !dbg !1680
  br label %846

; <label>:706:                                    ; preds = %692
  %707 = and i32 %695, 2, !dbg !1681
  %708 = icmp eq i32 %707, 0, !dbg !1681
  br i1 %708, label %729, label %709, !dbg !1682

; <label>:709:                                    ; preds = %706
  %710 = and i8 %694, -3, !dbg !1683
  store i8 %710, i8* %693, align 1, !dbg !1683, !tbaa !1384
  %711 = getelementptr inbounds [11 x i8], [11 x i8]* %24, i32 0, i32 0, !dbg !1684
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %711) #14, !dbg !1684
  call void @llvm.dbg.declare(metadata [11 x i8]* %24, metadata !662, metadata !DIExpression()), !dbg !1685
  store i8 7, i8* %711, align 1, !dbg !1686, !tbaa !1142
  %712 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 25, !dbg !1687
  %713 = load i16, i16* %712, align 2, !dbg !1687, !tbaa !1134
  call void @little_endian_store_16(i8* nonnull %711, i16 zeroext 1, i16 zeroext %713) #15, !dbg !1688
  %714 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1689, !tbaa !716
  %715 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %714, i32 0, i32 0, i32 26, i32 0, !dbg !1689
  %716 = getelementptr inbounds [11 x i8], [11 x i8]* %24, i32 0, i32 3, !dbg !1690
  call void @reverse_64(i8* %715, i8* %716) #15, !dbg !1691
  %717 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1692
  %718 = load i16, i16* %717, align 4, !dbg !1692, !tbaa !878
  %719 = call i32 @l2cap_send_connectionless(i16 zeroext %718, i16 zeroext 6, i8* nonnull %711, i16 zeroext 11) #15, !dbg !1693
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1694
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1696
  %720 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1697, !tbaa !716
  %721 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %720, i32 0, i32 0, i32 25, !dbg !1698
  %722 = load i16, i16* %721, align 2, !dbg !1698, !tbaa !1134
  %723 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 13, !dbg !1699
  store i16 %722, i16* %723, align 4, !dbg !1700, !tbaa !1131
  %724 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 14, i32 0, !dbg !1701
  %725 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %720, i32 0, i32 0, i32 26, i32 0, !dbg !1701
  %726 = bitcast i8* %725 to i64*, !dbg !1701
  %727 = bitcast i8* %724 to i64*, !dbg !1701
  %728 = load i64, i64* %726, align 2, !dbg !1701
  store i64 %728, i64* %727, align 2, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %711) #14, !dbg !1702
  br label %846

; <label>:729:                                    ; preds = %706
  %730 = and i32 %695, 4, !dbg !1703
  %731 = icmp eq i32 %730, 0, !dbg !1703
  br i1 %731, label %755, label %732, !dbg !1704

; <label>:732:                                    ; preds = %729
  %733 = and i8 %694, -5, !dbg !1705
  store i8 %733, i8* %693, align 1, !dbg !1705, !tbaa !1384
  %734 = getelementptr inbounds [17 x i8], [17 x i8]* %25, i32 0, i32 0, !dbg !1706
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %734) #14, !dbg !1706
  call void @llvm.dbg.declare(metadata [17 x i8]* %25, metadata !668, metadata !DIExpression()), !dbg !1707
  store i8 8, i8* %734, align 1, !dbg !1708, !tbaa !1142
  %735 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 13, i32 0, !dbg !1709
  %736 = getelementptr inbounds [17 x i8], [17 x i8]* %25, i32 0, i32 1, !dbg !1710
  call void @reverse_128(i8* %735, i8* %736) #15, !dbg !1711
  %737 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1712
  %738 = load i16, i16* %737, align 4, !dbg !1712, !tbaa !878
  %739 = call i32 @l2cap_send_connectionless(i16 zeroext %738, i16 zeroext 6, i8* nonnull %734, i16 zeroext 17) #15, !dbg !1713
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1714
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1716
  %740 = load i8, i8* @ble_debug_enable, align 1, !dbg !1717, !tbaa !1142
  %741 = and i8 %740, 1, !dbg !1717
  %742 = icmp eq i8 %741, 0, !dbg !1717
  br i1 %742, label %746, label %743, !dbg !1719

; <label>:743:                                    ; preds = %732
  %744 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.16, i32 0, i32 0)), !dbg !1720
  %745 = load i8, i8* @ble_debug_enable, align 1, !tbaa !1142
  br label %746, !dbg !1720

; <label>:746:                                    ; preds = %743, %732
  %747 = phi i8 [ %740, %732 ], [ %745, %743 ], !dbg !1722
  %748 = and i8 %747, 2, !dbg !1722
  %749 = icmp eq i8 %748, 0, !dbg !1722
  br i1 %749, label %754, label %750, !dbg !1724

; <label>:750:                                    ; preds = %746
  %751 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.18, i32 0, i32 0)), !dbg !1725
  %752 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1725, !tbaa !716
  %753 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %752, i32 0, i32 13, i32 0, !dbg !1725
  call void @put_buf(i8* %753, i32 16) #15, !dbg !1728
  br label %754, !dbg !1725

; <label>:754:                                    ; preds = %750, %746
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %734) #14, !dbg !1730
  br label %846

; <label>:755:                                    ; preds = %729
  %756 = and i32 %695, 8, !dbg !1731
  %757 = icmp eq i32 %756, 0, !dbg !1731
  br i1 %757, label %775, label %758, !dbg !1732

; <label>:758:                                    ; preds = %755
  %759 = and i8 %694, -9, !dbg !1733
  store i8 %759, i8* %693, align 1, !dbg !1733, !tbaa !1384
  %760 = getelementptr inbounds [6 x i8], [6 x i8]* %26, i32 0, i32 0, !dbg !1734
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %760) #14, !dbg !1734
  call void @llvm.dbg.declare(metadata [6 x i8]* %26, metadata !671, metadata !DIExpression()), !dbg !1735
  %761 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i32 0, i32 0, !dbg !1736
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %761) #14, !dbg !1736
  call void @llvm.dbg.declare(metadata [8 x i8]* %27, metadata !674, metadata !DIExpression()), !dbg !1737
  store i8 9, i8* %761, align 1, !dbg !1738, !tbaa !1142
  %762 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1739
  %763 = load i16, i16* %762, align 4, !dbg !1739, !tbaa !878
  %764 = call zeroext i8 @gap_le_get_own_address_random_type(i16 zeroext %763) #15, !dbg !1740
  switch i8 %764, label %771 [
    i8 1, label %765
    i8 2, label %765
    i8 0, label %768
    i8 3, label %768
  ], !dbg !1741

; <label>:765:                                    ; preds = %758, %758
  %766 = load i16, i16* %762, align 4, !dbg !1742, !tbaa !878
  %767 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i32 0, i32 1, !dbg !1744
  call void @gap_le_get_own_address(i16 zeroext %766, i8* %767, i8* nonnull %760) #15, !dbg !1745
  br label %771, !dbg !1746

; <label>:768:                                    ; preds = %758, %758
  %769 = load i16, i16* %762, align 4, !dbg !1747, !tbaa !878
  %770 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i32 0, i32 1, !dbg !1748
  call void @gap_le_get_own_id_address(i16 zeroext %769, i8* %770, i8* nonnull %760) #15, !dbg !1749
  br label %771, !dbg !1750

; <label>:771:                                    ; preds = %768, %765, %758
  %772 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i32 0, i32 2, !dbg !1751
  call void @reverse_bd_addr(i8* nonnull %760, i8* %772) #15, !dbg !1752
  %773 = load i16, i16* %762, align 4, !dbg !1753, !tbaa !878
  %774 = call i32 @l2cap_send_connectionless(i16 zeroext %773, i16 zeroext 6, i8* nonnull %761, i16 zeroext 8) #15, !dbg !1754
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1755
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1757
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %761) #14, !dbg !1758
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %760) #14, !dbg !1758
  br label %846

; <label>:775:                                    ; preds = %755
  %776 = and i32 %695, 16, !dbg !1759
  %777 = icmp eq i32 %776, 0, !dbg !1759
  br i1 %777, label %791, label %778, !dbg !1760

; <label>:778:                                    ; preds = %775
  %779 = and i8 %694, -17, !dbg !1761
  store i8 %779, i8* %693, align 1, !dbg !1761, !tbaa !1384
  %780 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 1, !dbg !1762
  %781 = load i8, i8* %780, align 4, !dbg !1762, !tbaa !1764
  %782 = icmp eq i8 %781, 0, !dbg !1765
  %783 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %380, i32 0, i32 0, i32 28, i32 0
  br i1 %782, label %785, label %784, !dbg !1766

; <label>:784:                                    ; preds = %778
  call void @llvm.memset.p0i8.i32(i8* %783, i8 -52, i32 16, i32 4, i1 false), !dbg !1767
  br label %785, !dbg !1769

; <label>:785:                                    ; preds = %784, %778
  %786 = getelementptr inbounds [17 x i8], [17 x i8]* %28, i32 0, i32 0, !dbg !1770
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %786) #14, !dbg !1770
  call void @llvm.dbg.declare(metadata [17 x i8]* %28, metadata !675, metadata !DIExpression()), !dbg !1771
  store i8 10, i8* %786, align 1, !dbg !1772, !tbaa !1142
  %787 = getelementptr inbounds [17 x i8], [17 x i8]* %28, i32 0, i32 1, !dbg !1773
  call void @reverse_128(i8* %783, i8* %787) #15, !dbg !1774
  %788 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1775
  %789 = load i16, i16* %788, align 4, !dbg !1775, !tbaa !878
  %790 = call i32 @l2cap_send_connectionless(i16 zeroext %789, i16 zeroext 6, i8* nonnull %786, i16 zeroext 17) #15, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.sm_connection* %373, metadata !1313, metadata !DIExpression()), !dbg !1777
  call fastcc void @sm_timeout_start(%struct.sm_connection* nonnull %373) #15, !dbg !1779
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %786) #14, !dbg !1780
  br label %846

; <label>:791:                                    ; preds = %775
  %792 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 1, !dbg !1781
  %793 = load i8, i8* %792, align 2, !dbg !1781, !tbaa !1266
  %794 = icmp eq i8 %793, 0, !dbg !1781
  br i1 %794, label %802, label %795, !dbg !1782

; <label>:795:                                    ; preds = %791
  %796 = call fastcc i32 @sm_key_distribution_all_received(%struct.sm_connection* nonnull %373) #16, !dbg !1783
  %797 = icmp eq i32 %796, 0, !dbg !1783
  br i1 %797, label %801, label %798, !dbg !1786

; <label>:798:                                    ; preds = %795
  call fastcc void @sm_key_distribution_handle_all_received(%struct.sm_connection* nonnull %373) #16, !dbg !1787
  store i32 35, i32* %395, align 4, !dbg !1789, !tbaa !1028
  %799 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1790
  %800 = load i16, i16* %799, align 4, !dbg !1790, !tbaa !878
  call fastcc void @sm_done_for_handle(i16 zeroext %800) #16, !dbg !1791
  br label %840, !dbg !1792

; <label>:801:                                    ; preds = %795
  store i32 34, i32* %395, align 4, !dbg !1793, !tbaa !1028
  br label %840

; <label>:802:                                    ; preds = %791
  store i32 52, i32* %395, align 4, !dbg !1795, !tbaa !1028
  %803 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 0, !dbg !1796
  %804 = load i16, i16* %803, align 4, !dbg !1796, !tbaa !878
  call fastcc void @sm_done_for_handle(i16 zeroext %804) #16, !dbg !1797
  %805 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1798, !tbaa !716
  %806 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %805, i32 0, i32 9, !dbg !1799
  %807 = load i8, i8* %806, align 4, !dbg !1799, !tbaa !1611
  %808 = icmp eq i8 %807, 0, !dbg !1798
  br i1 %808, label %809, label %840, !dbg !1800

; <label>:809:                                    ; preds = %802
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %214) #14, !dbg !1801
  call void @llvm.dbg.declare(metadata [16 x i8]* %29, metadata !678, metadata !DIExpression()), !dbg !1802
  %810 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %805, i32 0, i32 0, i32 5, !dbg !1803
  %811 = load i8, i8* %810, align 4, !dbg !1803, !tbaa !1387
  store i8 %811, i8* %214, align 1, !dbg !1804, !tbaa !1142
  %812 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %805, i32 0, i32 0, i32 6, !dbg !1805
  %813 = load i8, i8* %812, align 1, !dbg !1805, !tbaa !1361
  store i8 %813, i8* %215, align 1, !dbg !1806, !tbaa !1142
  store i8 0, i8* %216, align 1, !dbg !1807, !tbaa !1142
  %814 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 10, !dbg !1808
  %815 = load i8, i8* %814, align 2, !dbg !1808, !tbaa !1140
  store i8 %815, i8* %217, align 1, !dbg !1809, !tbaa !1142
  %816 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 9, !dbg !1810
  %817 = load i8, i8* %816, align 1, !dbg !1810, !tbaa !1146
  store i8 %817, i8* %218, align 1, !dbg !1811, !tbaa !1142
  %818 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 12, !dbg !1812
  %819 = load i32, i32* %818, align 4, !dbg !1812, !tbaa !1194
  %820 = trunc i32 %819 to i8, !dbg !1813
  store i8 %820, i8* %219, align 1, !dbg !1814, !tbaa !1142
  %821 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %805, i32 0, i32 0, i32 32, !dbg !1815
  %822 = load i16, i16* %821, align 4, !dbg !1815, !tbaa !1299
  call void @little_endian_store_16(i8* nonnull %214, i16 zeroext 6, i16 zeroext %822) #15, !dbg !1816
  %823 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1817, !tbaa !716
  %824 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %823, i32 0, i32 0, i32 33, i32 0, !dbg !1818
  %825 = bitcast i8* %824 to i64*, !dbg !1818
  %826 = load i64, i64* %825, align 1, !dbg !1818
  store i64 %826, i64* %221, align 1, !dbg !1818
  %827 = load i8, i8* %792, align 2, !dbg !1819, !tbaa !1266
  %828 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %823, i32 0, i32 0, i32 38, i32 0, !dbg !1821
  %829 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %823, i32 0, i32 0, i32 37, !dbg !1822
  %830 = load i8, i8* %829, align 2, !dbg !1822, !tbaa !1823
  %831 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %823, i32 0, i32 0, i32 35, i32 0, !dbg !1824
  %832 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %823, i32 0, i32 0, i32 34, i32 0, !dbg !1825
  %833 = call zeroext i8 @ble_list_pair_add(i8 zeroext %827, i8* %828, i8 zeroext %830, i8* %831, i8* %832, i8* nonnull %214) #15, !dbg !1826
  %834 = icmp eq i8 %833, 0, !dbg !1826
  %835 = select i1 %834, i32 17, i32 16
  call void @llvm.dbg.value(metadata i32 %835, metadata !684, metadata !DIExpression()), !dbg !1827
  %836 = load i16, i16* %803, align 4, !dbg !1828, !tbaa !878
  %837 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 4, !dbg !1829
  %838 = load i8, i8* %837, align 1, !dbg !1829, !tbaa !876
  %839 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %373, i32 0, i32 5, i32 0, !dbg !1830
  call fastcc void @sm_notify_client_process(i16 zeroext %836, i8 zeroext %838, i8* %839, i32 %835) #16, !dbg !1831
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %214) #14, !dbg !1832
  br label %840, !dbg !1833

; <label>:840:                                    ; preds = %809, %802, %801, %798, %673, %612, %599, %585, %572, %568, %555, %551, %538, %525, %516, %502, %439, %397, %394
  %841 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1834, !tbaa !716
  %842 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %841, i32 0, i32 31, !dbg !1836
  %843 = load i16, i16* %842, align 4, !dbg !1836, !tbaa !1017
  %844 = icmp eq i16 %843, -1, !dbg !1837
  br i1 %844, label %847, label %845

; <label>:845:                                    ; preds = %840
  br label %846, !dbg !1838

; <label>:846:                                    ; preds = %845, %785, %771, %754, %709, %698, %686, %677, %672, %636, %625, %616, %542, %529, %520, %511, %501, %497, %420
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %206) #14, !dbg !1838
  br label %849

; <label>:847:                                    ; preds = %840
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %206) #14, !dbg !1838
  br label %241

; <label>:848:                                    ; preds = %368, %362
  br label %849, !dbg !1839

; <label>:849:                                    ; preds = %848, %846, %388, %381, %231, %174, %80, %75, %68, %58, %47, %36, %33, %0
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %30) #14, !dbg !1839
  ret void, !dbg !1840
}

; Function Attrs: nounwind optsize
define hidden void @sm_event_callback_set(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1841 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !1845, metadata !DIExpression()), !dbg !1846
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1847, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1847
  br i1 %3, label %8, label %4, !dbg !1849

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1850, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 29, i32 1, !dbg !1851
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %6, align 4, !dbg !1852, !tbaa !1853
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 29, !dbg !1854
  tail call void @sm_add_event_handler(%struct.btstack_packet_callback_registration_t* %7) #16, !dbg !1855
  br label %8, !dbg !1856

; <label>:8:                                      ; preds = %4, %1
  ret void, !dbg !1857
}

; Function Attrs: nounwind optsize
define hidden void @sm_add_event_handler(%struct.btstack_packet_callback_registration_t*) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1859 {
  call void @llvm.dbg.value(metadata %struct.btstack_packet_callback_registration_t* %0, metadata !1863, metadata !DIExpression()), !dbg !1864
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1865, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1865
  br i1 %3, label %8, label %4, !dbg !1867

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1868, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 30, !dbg !1868
  %7 = getelementptr inbounds %struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t* %0, i32 0, i32 0, !dbg !1868
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** %6, %struct.btstack_linked_item* %7) #15, !dbg !1868
  br label %8, !dbg !1869

; <label>:8:                                      ; preds = %4, %1
  ret void, !dbg !1870
}

; Function Attrs: nounwind optsize
define hidden void @sm_register_oob_data_callback(i32 (i8, i8*, i8*)*) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1872 {
  call void @llvm.dbg.value(metadata i32 (i8, i8*, i8*)* %0, metadata !1876, metadata !DIExpression()), !dbg !1877
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1878, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1878
  br i1 %3, label %7, label %4, !dbg !1880

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1881, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 32, !dbg !1882
  store i32 (i8, i8*, i8*)* %0, i32 (i8, i8*, i8*)** %6, align 4, !dbg !1883, !tbaa !1884
  br label %7, !dbg !1885

; <label>:7:                                      ; preds = %4, %1
  ret void, !dbg !1886
}

; Function Attrs: optsize
declare void @btstack_linked_list_add_tail(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @sm_set_accepted_stk_generation_methods(i8 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1888 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1890, metadata !DIExpression()), !dbg !1891
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1892, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1892
  br i1 %3, label %7, label %4, !dbg !1894

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1895, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 2, !dbg !1896
  store i8 %0, i8* %6, align 1, !dbg !1897, !tbaa !1898
  br label %7, !dbg !1899

; <label>:7:                                      ; preds = %4, %1
  ret void, !dbg !1900
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_encryption_key_size_range(i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1902 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1906, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %1, metadata !1907, metadata !DIExpression()), !dbg !1909
  %3 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1910, !tbaa !757
  %4 = icmp eq i32 %3, 0, !dbg !1910
  br i1 %4, label %9, label %5, !dbg !1912

; <label>:5:                                      ; preds = %2
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1913, !tbaa !716
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 4, !dbg !1914
  store i8 %0, i8* %7, align 1, !dbg !1915, !tbaa !1916
  %8 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 3, !dbg !1917
  store i8 %1, i8* %8, align 2, !dbg !1918, !tbaa !1919
  br label %9, !dbg !1920

; <label>:9:                                      ; preds = %5, %2
  ret void, !dbg !1921
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_authentication_requirements(i8 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1923 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1925, metadata !DIExpression()), !dbg !1926
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1927, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1927
  br i1 %3, label %8, label %4, !dbg !1929

; <label>:4:                                      ; preds = %1
  %5 = and i8 %0, -9, !dbg !1930
  call void @llvm.dbg.value(metadata i8 %5, metadata !1925, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 %5, metadata !1925, metadata !DIExpression()), !dbg !1926
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1933, !tbaa !716
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 5, !dbg !1934
  store i8 %5, i8* %7, align 4, !dbg !1935, !tbaa !1330
  br label %8, !dbg !1936

; <label>:8:                                      ; preds = %4, %1
  ret void, !dbg !1937
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_io_capabilities(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1944, metadata !DIExpression()), !dbg !1945
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1946, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1946
  br i1 %3, label %8, label %4, !dbg !1948

; <label>:4:                                      ; preds = %1
  %5 = trunc i32 %0 to i8, !dbg !1949
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1950, !tbaa !716
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 6, !dbg !1951
  store i8 %5, i8* %7, align 1, !dbg !1952, !tbaa !1953
  br label %8, !dbg !1954

; <label>:8:                                      ; preds = %4, %1
  ret void, !dbg !1955
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_request_security(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1961, metadata !DIExpression()), !dbg !1962
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1963, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1963
  br i1 %3, label %12, label %4, !dbg !1965

; <label>:4:                                      ; preds = %1
  %5 = trunc i32 %0 to i8, !dbg !1966
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1967, !tbaa !716
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 7, !dbg !1968
  %8 = load i8, i8* %7, align 2, !dbg !1969
  %9 = and i8 %5, 15, !dbg !1969
  %10 = and i8 %8, -16, !dbg !1969
  %11 = or i8 %10, %9, !dbg !1969
  store i8 %11, i8* %7, align 2, !dbg !1969
  br label %12, !dbg !1970

; <label>:12:                                     ; preds = %4, %1
  ret void, !dbg !1971
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_master_request_pair(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1973 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1975, metadata !DIExpression()), !dbg !1976
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1977, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1977
  br i1 %3, label %13, label %4, !dbg !1979

; <label>:4:                                      ; preds = %1
  %5 = trunc i32 %0 to i8, !dbg !1980
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1981, !tbaa !716
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 7, !dbg !1982
  %8 = load i8, i8* %7, align 2, !dbg !1983
  %9 = shl i8 %5, 4, !dbg !1983
  %10 = and i8 %9, 48, !dbg !1983
  %11 = and i8 %8, -49, !dbg !1983
  %12 = or i8 %11, %10, !dbg !1983
  store i8 %12, i8* %7, align 2, !dbg !1983
  br label %13, !dbg !1984

; <label>:13:                                     ; preds = %4, %1
  ret void, !dbg !1985
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_master_pair_redo(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !1987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1989, metadata !DIExpression()), !dbg !1990
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !1991, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !1991
  br i1 %3, label %12, label %4, !dbg !1993

; <label>:4:                                      ; preds = %1
  %5 = trunc i32 %0 to i8, !dbg !1994
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !1995, !tbaa !716
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 7, !dbg !1996
  %8 = load i8, i8* %7, align 2, !dbg !1997
  %9 = shl i8 %5, 6, !dbg !1997
  %10 = and i8 %8, 63, !dbg !1997
  %11 = or i8 %10, %9, !dbg !1997
  store i8 %11, i8* %7, align 2, !dbg !1997
  br label %12, !dbg !1998

; <label>:12:                                     ; preds = %4, %1
  ret void, !dbg !1999
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_er(i8* nocapture readonly) local_unnamed_addr #0 section ".ble_sm_code" !dbg !2001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2005, metadata !DIExpression()), !dbg !2006
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2007, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !2007
  br i1 %3, label %7, label %4, !dbg !2009

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2010, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 10, i32 0, !dbg !2011
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %0, i32 16, i32 1, i1 false), !dbg !2011
  br label %7, !dbg !2012

; <label>:7:                                      ; preds = %4, %1
  ret void, !dbg !2013
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_ir(i8* nocapture readonly) local_unnamed_addr #0 section ".ble_sm_code" !dbg !2015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2017, metadata !DIExpression()), !dbg !2018
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2019, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !2019
  br i1 %3, label %7, label %4, !dbg !2021

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2022, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 11, i32 0, !dbg !2023
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %0, i32 16, i32 1, i1 false), !dbg !2023
  br label %7, !dbg !2024

; <label>:7:                                      ; preds = %4, %1
  ret void, !dbg !2025
}

; Function Attrs: nounwind optsize
define hidden void @sm_test_set_irk(i8* nocapture readonly) local_unnamed_addr #0 section ".ble_sm_code" !dbg !2027 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2029, metadata !DIExpression()), !dbg !2030
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2031, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !2031
  br i1 %3, label %11, label %4, !dbg !2033

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2034, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 13, i32 0, !dbg !2035
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %0, i32 16, i32 1, i1 false), !dbg !2035
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 14, !dbg !2036
  %8 = load i8, i8* %7, align 1, !dbg !2037
  %9 = and i8 %8, -16, !dbg !2037
  %10 = or i8 %9, 1, !dbg !2037
  store i8 %10, i8* %7, align 1, !dbg !2037
  br label %11, !dbg !2038

; <label>:11:                                     ; preds = %4, %1
  ret void, !dbg !2039
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @sm_get_local_irk(i8* nocapture) local_unnamed_addr #0 section ".ble_sm_code" !dbg !2041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2046, metadata !DIExpression()), !dbg !2047
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2048, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !2048
  br i1 %3, label %12, label %4, !dbg !2050

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2051, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 14, !dbg !2053
  %7 = load i8, i8* %6, align 1, !dbg !2053
  %8 = and i8 %7, 15, !dbg !2053
  %9 = icmp eq i8 %8, 0, !dbg !2051
  br i1 %9, label %12, label %10, !dbg !2054

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 13, i32 0, !dbg !2055
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %11, i32 16, i32 1, i1 false), !dbg !2055
  br label %12, !dbg !2056

; <label>:12:                                     ; preds = %10, %4, %1
  %13 = phi i8 [ 1, %10 ], [ 0, %1 ], [ 0, %4 ]
  ret i8 %13, !dbg !2057
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_make_resolvable_address(i8 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !2058 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2062, metadata !DIExpression()), !dbg !2063
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2064, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !2064
  br i1 %3, label %10, label %4, !dbg !2066

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2067, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 14, !dbg !2068
  %7 = load i8, i8* %6, align 1, !dbg !2069
  %8 = and i8 %7, 15, !dbg !2069
  %9 = or i8 %8, 16, !dbg !2069
  store i8 %9, i8* %6, align 1, !dbg !2069
  br label %10, !dbg !2070

; <label>:10:                                     ; preds = %4, %1
  ret void, !dbg !2071
}

; Function Attrs: norecurse nounwind optsize
define hidden void @sm_test_use_fixed_local_csrk() local_unnamed_addr #5 section ".ble_sm_code" !dbg !2073 {
  %1 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2074, !tbaa !757
  %2 = icmp eq i32 %1, 0, !dbg !2074
  br i1 %2, label %6, label %3, !dbg !2076

; <label>:3:                                      ; preds = %0
  %4 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2077, !tbaa !716
  %5 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %4, i32 0, i32 1, !dbg !2078
  store i8 1, i8* %5, align 4, !dbg !2079, !tbaa !1764
  br label %6, !dbg !2080

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !2081
}

; Function Attrs: nounwind optsize
define hidden void @sm_set_master_reconnect_enc_delay(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !2083 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2087, metadata !DIExpression()), !dbg !2088
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2089, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !2089
  br i1 %3, label %7, label %4, !dbg !2091

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2092, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 34, !dbg !2093
  store i16 %0, i16* %6, align 4, !dbg !2094, !tbaa !2095
  br label %7, !dbg !2096

; <label>:7:                                      ; preds = %4, %1
  ret void, !dbg !2097
}

; Function Attrs: nounwind optsize
define hidden void @sm_init() local_unnamed_addr #0 section ".ble_sm_code" !dbg !2099 {
  %1 = alloca %struct.sm_vm_cfg_t, align 2
  %2 = bitcast %struct.sm_vm_cfg_t* %1 to i8*, !dbg !2114
  call void @llvm.lifetime.start.p0i8(i64 34, i8* nonnull %2) #14, !dbg !2114
  %3 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !2115, !tbaa !757
  %4 = icmp eq i32 %3, 0, !dbg !2115
  br i1 %4, label %98, label %5, !dbg !2117

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @config_asser, align 4, !dbg !2118, !tbaa !757
  %7 = icmp eq i32 %6, 0, !dbg !2118
  %8 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  %9 = icmp eq %struct.sm_info_t* %8, null
  br i1 %7, label %14, label %10, !dbg !2122

; <label>:10:                                     ; preds = %5
  br i1 %9, label %16, label %11, !dbg !2124

; <label>:11:                                     ; preds = %10
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0), i32 4851) #16, !dbg !2127
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #16, !dbg !2131
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #15, !dbg !2133
  br label %16, !dbg !2127

; <label>:14:                                     ; preds = %5
  br i1 %9, label %22, label %15, !dbg !2135

; <label>:15:                                     ; preds = %14
  tail call fastcc void @cpu_reset() #16, !dbg !2138
  br label %22, !dbg !2138

; <label>:16:                                     ; preds = %11, %10
  %17 = tail call i8* @malloc(i32 480) #16, !dbg !2142
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %26, !dbg !2143

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i32 0, i32 0), i32 4854) #16, !dbg !2148
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0)) #16, !dbg !2152
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #15, !dbg !2154
  br label %26, !dbg !2148

; <label>:22:                                     ; preds = %15, %14
  %23 = tail call i8* @malloc(i32 480) #16, !dbg !2142
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26, !dbg !2156

; <label>:25:                                     ; preds = %22
  tail call fastcc void @cpu_reset() #16, !dbg !2159
  br label %26, !dbg !2159

; <label>:26:                                     ; preds = %25, %22, %19, %16
  %27 = phi i8* [ %23, %22 ], [ null, %25 ], [ %17, %16 ], [ null, %19 ]
  store i8* %27, i8** bitcast (%struct.sm_info_t** @sm_global_info to i8**), align 4, !dbg !2163, !tbaa !716
  tail call void @ble_list_init() #15, !dbg !2164
  %28 = load i8*, i8** bitcast (%struct.sm_info_t** @sm_global_info to i8**), align 4, !dbg !2165, !tbaa !716
  tail call void @llvm.memset.p0i8.i32(i8* %28, i8 0, i32 480, i32 4, i1 false), !dbg !2166
  %29 = getelementptr inbounds i8, i8* %28, i32 464, !dbg !2167
  %30 = bitcast i8* %29 to i16*, !dbg !2167
  store i16 -1, i16* %30, align 4, !dbg !2168, !tbaa !1017
  %31 = getelementptr inbounds i8, i8* %28, i32 313, !dbg !2169
  store i8 3, i8* %31, align 1, !dbg !2170, !tbaa !1953
  %32 = call i32 @syscfg_read(i16 zeroext 109, i8* nonnull %2, i16 zeroext 34) #15, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %32, metadata !2110, metadata !DIExpression()), !dbg !2172
  %33 = icmp eq i32 %32, 34, !dbg !2173
  %34 = getelementptr inbounds %struct.sm_vm_cfg_t, %struct.sm_vm_cfg_t* %1, i32 0, i32 0
  %35 = load i16, i16* %34, align 2, !dbg !2174
  %36 = icmp eq i16 %35, 21921, !dbg !2176
  %37 = and i1 %33, %36, !dbg !2177
  br i1 %37, label %51, label %38, !dbg !2177

; <label>:38:                                     ; preds = %26
  store i16 21921, i16* %34, align 2, !dbg !2178, !tbaa !2179
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()), !dbg !2181
  br label %39, !dbg !2182

; <label>:39:                                     ; preds = %39, %38
  %40 = phi i32 [ 0, %38 ], [ %47, %39 ]
  %41 = call fastcc i32 @rand32() #16, !dbg !2185
  %42 = trunc i32 %41 to i8, !dbg !2188
  %43 = getelementptr inbounds %struct.sm_vm_cfg_t, %struct.sm_vm_cfg_t* %1, i32 0, i32 1, i32 %40, !dbg !2189
  store i8 %42, i8* %43, align 1, !dbg !2190, !tbaa !1142
  %44 = lshr i32 %41, 8, !dbg !2191
  %45 = trunc i32 %44 to i8, !dbg !2192
  %46 = getelementptr inbounds %struct.sm_vm_cfg_t, %struct.sm_vm_cfg_t* %1, i32 0, i32 2, i32 %40, !dbg !2193
  store i8 %45, i8* %46, align 1, !dbg !2194, !tbaa !1142
  %47 = add nuw nsw i32 %40, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %47, metadata !2101, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 %47, metadata !2101, metadata !DIExpression()), !dbg !2181
  %48 = icmp eq i32 %47, 16, !dbg !2197
  br i1 %48, label %49, label %39, !dbg !2182, !llvm.loop !2199

; <label>:49:                                     ; preds = %39
  %50 = call i32 @syscfg_write(i16 zeroext 109, i8* nonnull %2, i16 zeroext 34) #15, !dbg !2202
  call void @llvm.dbg.value(metadata i32 %50, metadata !2110, metadata !DIExpression()), !dbg !2172
  br label %51, !dbg !2203

; <label>:51:                                     ; preds = %49, %26
  call void @llvm.dbg.value(metadata i8* %52, metadata !2005, metadata !DIExpression()), !dbg !2204
  %52 = getelementptr inbounds %struct.sm_vm_cfg_t, %struct.sm_vm_cfg_t* %1, i32 0, i32 1, i32 0, !dbg !2206
  %53 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2207, !tbaa !716
  %54 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 10, i32 0, !dbg !2208
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %54, i8* %52, i32 16, i32 1, i1 false) #14, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %55, metadata !2017, metadata !DIExpression()), !dbg !2209
  %55 = getelementptr inbounds %struct.sm_vm_cfg_t, %struct.sm_vm_cfg_t* %1, i32 0, i32 2, i32 0, !dbg !2211
  %56 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 11, i32 0, !dbg !2212
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %56, i8* %55, i32 16, i32 1, i1 false) #14, !dbg !2212
  %57 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 2, !dbg !2213
  store i8 15, i8* %57, align 1, !dbg !2214, !tbaa !1898
  %58 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 3, !dbg !2215
  store i8 16, i8* %58, align 2, !dbg !2216, !tbaa !1919
  %59 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 4, !dbg !2217
  store i8 7, i8* %59, align 1, !dbg !2218, !tbaa !1916
  %60 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 8, !dbg !2219
  store i32 -1, i32* %60, align 4, !dbg !2220, !tbaa !2221
  %61 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 9, !dbg !2222
  store i8 0, i8* %61, align 4, !dbg !2223, !tbaa !1611
  %62 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 15, !dbg !2224
  store i32 0, i32* %62, align 4, !dbg !2225, !tbaa !769
  %63 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 16, !dbg !2226
  store i32 0, i32* %63, align 4, !dbg !2227, !tbaa !808
  %64 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 25, !dbg !2228
  store i32 0, i32* %64, align 4, !dbg !2229, !tbaa !777
  %65 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 18, !dbg !2230
  store i32 -1, i32* %65, align 4, !dbg !2231, !tbaa !901
  %66 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 19, !dbg !2232
  store i32 0, i32* %66, align 4, !dbg !2233, !tbaa !996
  %67 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 23, !dbg !2234
  store i32 0, i32* %67, align 4, !dbg !2235, !tbaa !857
  %68 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 24, !dbg !2236
  store %struct.btstack_linked_item* null, %struct.btstack_linked_item** %68, align 4, !dbg !2237, !tbaa !918
  store i32 900, i32* @gap_random_adress_update_period, align 4, !dbg !2238, !tbaa !757
  %69 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 31, !dbg !2239
  store i16 -1, i16* %69, align 4, !dbg !2240, !tbaa !1017
  %70 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 1, !dbg !2241
  store i8 0, i8* %70, align 4, !dbg !2242, !tbaa !1764
  %71 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 28, i32 1, !dbg !2243
  store void (i8, i16, i8*, i16)* @sm_event_packet_handler, void (i8, i16, i8*, i16)** %71, align 4, !dbg !2244, !tbaa !2245
  %72 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 28, !dbg !2246
  %73 = bitcast %struct.btstack_packet_callback_registration_t* %72 to i8*, !dbg !2247
  call void @hci_add_event_handler(i8* %73) #15, !dbg !2248
  call void @l2cap_register_fixed_channel(void (i8, i16, i8*, i16)* nonnull @sm_pdu_handler, i16 zeroext 6) #15, !dbg !2249
  call void @llvm.dbg.value(metadata i16 100, metadata !2087, metadata !DIExpression()), !dbg !2250
  %74 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2252, !tbaa !716
  %75 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %74, i32 0, i32 34, !dbg !2253
  store i16 100, i16* %75, align 4, !dbg !2254, !tbaa !2095
  %76 = call i32 @hci_get_state() #15, !dbg !2255
  %77 = icmp eq i32 %76, 2, !dbg !2259
  br i1 %77, label %78, label %98, !dbg !2260

; <label>:78:                                     ; preds = %51
  %79 = load i8, i8* @ble_debug_enable, align 1, !dbg !2261, !tbaa !1142
  %80 = and i8 %79, 1, !dbg !2261
  %81 = icmp eq i8 %80, 0, !dbg !2261
  br i1 %81, label %84, label %82, !dbg !2263

; <label>:82:                                     ; preds = %78
  %83 = call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.21, i32 0, i32 0)) #14, !dbg !2264
  br label %84, !dbg !2264

; <label>:84:                                     ; preds = %82, %78
  %85 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2266, !tbaa !716
  %86 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %85, i32 0, i32 14, !dbg !2267
  %87 = load i8, i8* %86, align 1, !dbg !2267
  %88 = and i8 %87, 15, !dbg !2267
  %89 = icmp ne i8 %88, 0, !dbg !2266
  %90 = select i1 %89, i32 3, i32 1, !dbg !2266
  %91 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %85, i32 0, i32 15, !dbg !2268
  store i32 %90, i32* %91, align 4, !dbg !2269, !tbaa !769
  %92 = load i32, i32* @gap_random_adress_type, align 4, !dbg !2270, !tbaa !1142
  %93 = icmp eq i32 %92, 1, !dbg !2271
  %94 = select i1 %93, i32 6, i32 2, !dbg !2271
  %95 = icmp eq i32 %92, 0, !dbg !2271
  %96 = select i1 %95, i32 1, i32 %94, !dbg !2271
  %97 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %85, i32 0, i32 16
  store i32 %96, i32* %97, align 4, !tbaa !808
  br label %98, !dbg !2272

; <label>:98:                                     ; preds = %84, %51, %0
  call void @llvm.lifetime.end.p0i8(i64 34, i8* nonnull %2) #14, !dbg !2273
  ret void, !dbg !2274
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #7 !dbg !2276 {
  tail call void @p33_soft_reset() #15, !dbg !2277
  ret void, !dbg !2278
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ble_list_init() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #4

; Function Attrs: optsize
declare i32 @syscfg_read(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @syscfg_write(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @sm_event_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".ble_sm_code" !dbg !2279 {
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %6, metadata !2296, metadata !DIExpression()), !dbg !2301
  %7 = alloca [16 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !2299, metadata !DIExpression()), !dbg !2328
  %8 = alloca [3 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [3 x i8]* %8, metadata !2309, metadata !DIExpression()), !dbg !2329
  %9 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !2316, metadata !DIExpression()), !dbg !2330
  %10 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %10, metadata !2319, metadata !DIExpression()), !dbg !2331
  %11 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !2321, metadata !DIExpression()), !dbg !2332
  %12 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %12, metadata !2323, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %0, metadata !2281, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i16 %1, metadata !2282, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8* %2, metadata !2283, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i16 %3, metadata !2284, metadata !DIExpression()), !dbg !2337
  %13 = icmp eq i8 %0, 4, !dbg !2338
  br i1 %13, label %14, label %550, !dbg !2338

; <label>:14:                                     ; preds = %4
  %15 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* %2) #16, !dbg !2339
  switch i8 %15, label %550 [
    i8 14, label %256
    i8 62, label %16
    i8 8, label %116
    i8 48, label %204
    i8 5, label %221
  ], !dbg !2340

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !2341
  %18 = load i8, i8* %17, align 1, !dbg !2341, !tbaa !1142
  switch i8 %18, label %550 [
    i8 1, label %19
    i8 5, label %82
  ], !dbg !2342

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !2343
  %21 = load i8, i8* %20, align 1, !dbg !2343, !tbaa !1142
  %22 = icmp eq i8 %21, 0, !dbg !2343
  br i1 %22, label %23, label %551, !dbg !2345

; <label>:23:                                     ; preds = %19
  %24 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 4) #15, !dbg !2346
  call void @llvm.dbg.value(metadata i16 %24, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i16 %24, metadata !1223, metadata !DIExpression()), !dbg !2348
  %25 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %24) #15, !dbg !2350
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %25, metadata !1224, metadata !DIExpression()), !dbg !2351
  %26 = icmp eq %struct.__le_hci_connection* %25, null, !dbg !2352
  %27 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %25, i32 0, i32 11, !dbg !2353
  %28 = select i1 %26, %struct.sm_connection* null, %struct.sm_connection* %27, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.sm_connection* %28, metadata !2285, metadata !DIExpression()), !dbg !2355
  br i1 %26, label %550, label %29, !dbg !2356

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 0, !dbg !2357
  store i16 %24, i16* %30, align 4, !dbg !2358, !tbaa !878
  %31 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !2359
  %32 = load i8, i8* %31, align 1, !dbg !2359, !tbaa !1142
  %33 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 1, !dbg !2360
  store i8 %32, i8* %33, align 2, !dbg !2361, !tbaa !1266
  %34 = getelementptr inbounds i8, i8* %2, i32 7, !dbg !2362
  %35 = load i8, i8* %34, align 1, !dbg !2362, !tbaa !1142
  %36 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 4, !dbg !2363
  store i8 %35, i8* %36, align 1, !dbg !2364, !tbaa !876
  %37 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !2365
  %38 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 5, i32 0, !dbg !2366
  tail call void @reverse_bd_addr(i8* %37, i8* %38) #15, !dbg !2367
  %39 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 17, !dbg !2368
  store i32 0, i32* %39, align 4, !dbg !2369, !tbaa !2370
  %40 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 8, !dbg !2371
  store i8 0, i8* %40, align 4, !dbg !2372, !tbaa !2373
  %41 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 9, !dbg !2374
  store i8 0, i8* %41, align 1, !dbg !2375, !tbaa !1146
  %42 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 12, !dbg !2376
  store i32 0, i32* %42, align 4, !dbg !2377, !tbaa !1194
  %43 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 16, !dbg !2378
  store i32 -1, i32* %43, align 4, !dbg !2379, !tbaa !1170
  %44 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 7, !dbg !2380
  store i32 1, i32* %44, align 4, !dbg !2381, !tbaa !869
  %45 = load i8, i8* %33, align 2, !dbg !2382, !tbaa !1266
  %46 = icmp eq i8 %45, 0, !dbg !2382
  br i1 %46, label %58, label %47, !dbg !2384

; <label>:47:                                     ; preds = %29
  %48 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 6, !dbg !2385
  %49 = load i32, i32* %48, align 4, !dbg !2385, !tbaa !1028
  %50 = icmp eq i32 %49, 0, !dbg !2388
  br i1 %50, label %51, label %550, !dbg !2389

; <label>:51:                                     ; preds = %47
  %52 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2390, !tbaa !716
  %53 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %52, i32 0, i32 7, !dbg !2393
  %54 = load i8, i8* %53, align 2, !dbg !2393
  %55 = and i8 %54, 15, !dbg !2393
  %56 = icmp ne i8 %55, 0, !dbg !2390
  %57 = select i1 %56, i32 36, i32 35, !dbg !2394
  store i32 %57, i32* %48, align 4, !tbaa !1028
  br label %550, !dbg !2395

; <label>:58:                                     ; preds = %29
  %59 = tail call fastcc zeroext i8 @sm_master_pair_get_list(%struct.sm_connection* nonnull %28) #16, !dbg !2396
  %60 = icmp eq i8 %59, 0, !dbg !2396
  %61 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br i1 %60, label %75, label %62, !dbg !2399

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %61, i32 0, i32 34, !dbg !2400
  %64 = load i16, i16* %63, align 4, !dbg !2400, !tbaa !2095
  %65 = icmp eq i16 %64, 0, !dbg !2403
  %66 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 6
  br i1 %65, label %74, label %67, !dbg !2404

; <label>:67:                                     ; preds = %62
  store i32 52, i32* %66, align 4, !dbg !2405, !tbaa !1028
  %68 = load i16, i16* %30, align 4, !dbg !2407, !tbaa !878
  %69 = zext i16 %68 to i32, !dbg !2408
  %70 = inttoptr i32 %69 to i8*, !dbg !2408
  %71 = zext i16 %64 to i32, !dbg !2409
  %72 = tail call zeroext i16 @sys_timeout_add(i8* %70, void (i8*)* bitcast (void (i32)* @sm_timeout_handler_pair to void (i8*)*), i32 %71) #15, !dbg !2410
  %73 = zext i16 %72 to i32, !dbg !2410
  store i32 %73, i32* %39, align 4, !dbg !2411, !tbaa !2370
  br label %550, !dbg !2412

; <label>:74:                                     ; preds = %62
  store i32 53, i32* %66, align 4, !dbg !2413, !tbaa !1028
  br label %550

; <label>:75:                                     ; preds = %58
  %76 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %61, i32 0, i32 7, !dbg !2415
  %77 = load i8, i8* %76, align 2, !dbg !2415
  %78 = and i8 %77, 48, !dbg !2415
  %79 = icmp ne i8 %78, 0, !dbg !2418
  %80 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %28, i32 0, i32 6
  %81 = select i1 %79, i32 56, i32 52, !dbg !2419
  store i32 %81, i32* %80, align 4, !tbaa !1028
  br label %550

; <label>:82:                                     ; preds = %16
  %83 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #15, !dbg !2420
  call void @llvm.dbg.value(metadata i16 %83, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i16 %83, metadata !1223, metadata !DIExpression()), !dbg !2421
  %84 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %83) #15, !dbg !2423
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %84, metadata !1224, metadata !DIExpression()), !dbg !2424
  %85 = icmp eq %struct.__le_hci_connection* %84, null, !dbg !2425
  %86 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %84, i32 0, i32 11, !dbg !2426
  %87 = select i1 %85, %struct.sm_connection* null, %struct.sm_connection* %86, !dbg !2427
  call void @llvm.dbg.value(metadata %struct.sm_connection* %87, metadata !2285, metadata !DIExpression()), !dbg !2355
  br i1 %85, label %550, label %88, !dbg !2428

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %87, i32 0, i32 6, !dbg !2429
  %90 = load i32, i32* %89, align 4, !dbg !2429, !tbaa !1028
  switch i32 %90, label %93 [
    i32 45, label %91
    i32 93, label %92
  ], !dbg !2431

; <label>:91:                                     ; preds = %88
  store i32 20, i32* %89, align 4, !dbg !2432, !tbaa !1028
  br label %550, !dbg !2434

; <label>:92:                                     ; preds = %88
  store i32 46, i32* %89, align 4, !dbg !2435, !tbaa !1028
  br label %550, !dbg !2438

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !2439
  %95 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %87, i32 0, i32 14, i32 0, !dbg !2440
  tail call void @reverse_64(i8* %94, i8* %95) #15, !dbg !2441
  %96 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 13) #15, !dbg !2442
  %97 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %87, i32 0, i32 13, !dbg !2443
  store i16 %96, i16* %97, align 4, !dbg !2444, !tbaa !1131
  %98 = icmp eq i16 %96, 0, !dbg !2445
  br i1 %98, label %99, label %109, !dbg !2446

; <label>:99:                                     ; preds = %93
  br label %102, !dbg !2447

; <label>:100:                                    ; preds = %102
  call void @llvm.dbg.value(metadata i32 %107, metadata !2458, metadata !DIExpression()), !dbg !2467
  %101 = icmp slt i32 %107, 8, !dbg !2468
  br i1 %101, label %102, label %115, !dbg !2470, !llvm.loop !2472

; <label>:102:                                    ; preds = %100, %99
  %103 = phi i32 [ %107, %100 ], [ 0, %99 ]
  %104 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %87, i32 0, i32 14, i32 %103, !dbg !2447
  %105 = load i8, i8* %104, align 1, !dbg !2447, !tbaa !1142
  %106 = icmp eq i8 %105, 0, !dbg !2447
  %107 = add nuw nsw i32 %103, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %107, metadata !2458, metadata !DIExpression()), !dbg !2467
  br i1 %106, label %100, label %108, !dbg !2477

; <label>:108:                                    ; preds = %102
  br label %109, !dbg !2478

; <label>:109:                                    ; preds = %108, %93
  tail call void @llvm.dbg.declare(metadata [4 x i8]* undef, metadata !2287, metadata !DIExpression()), !dbg !2478
  %110 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %87, i32 0, i32 0, !dbg !2479
  %111 = load i16, i16* %110, align 4, !dbg !2479, !tbaa !878
  %112 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %87, i32 0, i32 4, !dbg !2480
  %113 = load i8, i8* %112, align 1, !dbg !2480, !tbaa !876
  %114 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %87, i32 0, i32 5, i32 0, !dbg !2481
  tail call fastcc void @sm_notify_client_process(i16 zeroext %111, i8 zeroext %113, i8* %114, i32 1) #16, !dbg !2482
  store i32 37, i32* %89, align 4, !dbg !2483, !tbaa !1028
  br label %550

; <label>:115:                                    ; preds = %100
  store i32 39, i32* %89, align 4, !dbg !2486, !tbaa !1028
  br label %550, !dbg !2487

; <label>:116:                                    ; preds = %14
  %117 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 3) #15, !dbg !2488
  call void @llvm.dbg.value(metadata i16 %117, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i16 %117, metadata !1223, metadata !DIExpression()), !dbg !2489
  %118 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %117) #15, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %118, metadata !1224, metadata !DIExpression()), !dbg !2492
  %119 = icmp eq %struct.__le_hci_connection* %118, null, !dbg !2493
  %120 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %118, i32 0, i32 11, !dbg !2494
  %121 = select i1 %119, %struct.sm_connection* null, %struct.sm_connection* %120, !dbg !2495
  call void @llvm.dbg.value(metadata %struct.sm_connection* %121, metadata !2285, metadata !DIExpression()), !dbg !2355
  br i1 %119, label %550, label %122, !dbg !2496

; <label>:122:                                    ; preds = %116
  %123 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !2497
  %124 = load i8, i8* %123, align 1, !dbg !2497, !tbaa !1142
  %125 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 8, !dbg !2498
  store i8 %124, i8* %125, align 4, !dbg !2499, !tbaa !2373
  %126 = icmp eq i8 %124, 0, !dbg !2500
  br i1 %126, label %127, label %182, !dbg !2502

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !2503
  %129 = load i8, i8* %128, align 1, !dbg !2503, !tbaa !1142
  %130 = zext i8 %129 to i32, !dbg !2503
  %131 = add nsw i32 %130, -5, !dbg !2505
  %132 = icmp ult i32 %131, 2, !dbg !2505
  br i1 %132, label %133, label %550, !dbg !2505

; <label>:133:                                    ; preds = %127
  %134 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2506, !tbaa !716
  %135 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %134, i32 0, i32 9, !dbg !2509
  %136 = load i8, i8* %135, align 4, !dbg !2509, !tbaa !1611
  %137 = icmp eq i8 %136, 0, !dbg !2506
  br i1 %137, label %141, label %138, !dbg !2510

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 4, !dbg !2511
  %140 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 5, i32 0, !dbg !2512
  br label %147, !dbg !2510

; <label>:141:                                    ; preds = %133
  %142 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 5, i32 0, !dbg !2513
  %143 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 4, !dbg !2515
  %144 = load i8, i8* %143, align 1, !dbg !2515, !tbaa !876
  %145 = tail call zeroext i8 @ble_list_delete_device(i8* %142, i8 zeroext %144) #15, !dbg !2516
  %146 = load i8, i8* %128, align 1, !tbaa !1142
  br label %147, !dbg !2517

; <label>:147:                                    ; preds = %141, %138
  %148 = phi i8* [ %140, %138 ], [ %142, %141 ], !dbg !2512
  %149 = phi i8* [ %139, %138 ], [ %143, %141 ], !dbg !2511
  %150 = phi i8 [ %129, %138 ], [ %146, %141 ], !dbg !2518
  %151 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 0, !dbg !2519
  %152 = load i16, i16* %151, align 4, !dbg !2519, !tbaa !878
  %153 = load i8, i8* %149, align 1, !dbg !2511, !tbaa !876
  %154 = zext i8 %150 to i32, !dbg !2518
  %155 = shl nuw nsw i32 %154, 8, !dbg !2520
  %156 = or i32 %155, 5, !dbg !2521
  tail call fastcc void @sm_notify_client_process(i16 zeroext %152, i8 zeroext %153, i8* %148, i32 %156) #16, !dbg !2522
  %157 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 1, !dbg !2523
  %158 = load i8, i8* %157, align 2, !dbg !2523, !tbaa !1266
  %159 = icmp eq i8 %158, 0, !dbg !2523
  br i1 %159, label %160, label %550, !dbg !2525

; <label>:160:                                    ; preds = %147
  %161 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2526, !tbaa !716
  %162 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %161, i32 0, i32 7, !dbg !2529
  %163 = load i8, i8* %162, align 2, !dbg !2529
  %164 = icmp ugt i8 %163, 63, !dbg !2526
  br i1 %164, label %165, label %179, !dbg !2530

; <label>:165:                                    ; preds = %160
  call void @llvm.dbg.value(metadata %struct.sm_connection* %121, metadata !2531, metadata !DIExpression()), !dbg !2534
  %166 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 16, !dbg !2537
  %167 = load i32, i32* %166, align 4, !dbg !2537, !tbaa !1170
  %168 = icmp eq i32 %167, -1, !dbg !2539
  br i1 %168, label %170, label %169, !dbg !2540

; <label>:169:                                    ; preds = %165
  tail call void @le_device_db_remove(i32 %167) #15, !dbg !2541
  store i32 -1, i32* %166, align 4, !dbg !2543, !tbaa !1170
  br label %170, !dbg !2544

; <label>:170:                                    ; preds = %169, %165
  %171 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 17, !dbg !2545
  store i32 0, i32* %171, align 4, !dbg !2546, !tbaa !2370
  store i8 0, i8* %125, align 4, !dbg !2547, !tbaa !2373
  %172 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 9, !dbg !2548
  store i8 0, i8* %172, align 1, !dbg !2549, !tbaa !1146
  %173 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 12, !dbg !2550
  store i32 0, i32* %173, align 4, !dbg !2551, !tbaa !1194
  %174 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 7, !dbg !2552
  store i32 1, i32* %174, align 4, !dbg !2553, !tbaa !869
  %175 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 6, !dbg !2554
  store i32 52, i32* %175, align 4, !dbg !2555, !tbaa !1028
  %176 = load i16, i16* %151, align 4, !dbg !2556, !tbaa !878
  tail call fastcc void @sm_done_for_handle(i16 zeroext %176) #15, !dbg !2557
  %177 = load i16, i16* %151, align 4, !dbg !2558, !tbaa !878
  %178 = tail call zeroext i8 @sm_api_request_pairing(i16 zeroext %177) #15, !dbg !2559
  br label %550, !dbg !2560

; <label>:179:                                    ; preds = %160
  %180 = load i16, i16* %151, align 4, !dbg !2561, !tbaa !878
  %181 = zext i16 %180 to i32, !dbg !2563
  tail call fastcc void @sm_set_timeout_disconnect(i32 %181, i8 zeroext 2) #16, !dbg !2564
  br label %550

; <label>:182:                                    ; preds = %122
  %183 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 6, !dbg !2565
  %184 = load i32, i32* %183, align 4, !dbg !2565, !tbaa !1028
  switch i32 %184, label %550 [
    i32 55, label %185
    i32 22, label %188
  ], !dbg !2566

; <label>:185:                                    ; preds = %182
  store i32 52, i32* %183, align 4, !dbg !2567, !tbaa !1028
  %186 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 0, !dbg !2569
  %187 = load i16, i16* %186, align 4, !dbg !2569, !tbaa !878
  tail call fastcc void @sm_done_for_handle(i16 zeroext %187) #16, !dbg !2570
  br label %550, !dbg !2571

; <label>:188:                                    ; preds = %182
  %189 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %121, i32 0, i32 1, !dbg !2572
  %190 = load i8, i8* %189, align 2, !dbg !2572, !tbaa !1266
  %191 = icmp eq i8 %190, 0, !dbg !2572
  br i1 %191, label %198, label %192, !dbg !2574

; <label>:192:                                    ; preds = %188
  %193 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2575, !tbaa !716
  %194 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %193, i32 0, i32 0, i32 9, !dbg !2578
  %195 = load i8, i8* %194, align 4, !dbg !2578, !tbaa !1336
  %196 = icmp ne i8 %195, 0, !dbg !2575
  %197 = select i1 %196, i32 33, i32 23, !dbg !2579
  store i32 %197, i32* %183, align 4, !tbaa !1028
  br label %550, !dbg !2580

; <label>:198:                                    ; preds = %188
  %199 = tail call fastcc i32 @sm_key_distribution_all_received(%struct.sm_connection* nonnull %121) #16, !dbg !2581
  %200 = icmp eq i32 %199, 0, !dbg !2581
  br i1 %200, label %202, label %201, !dbg !2584

; <label>:201:                                    ; preds = %198
  tail call fastcc void @sm_key_distribution_handle_all_received(%struct.sm_connection* nonnull %121) #16, !dbg !2585
  br label %202, !dbg !2587

; <label>:202:                                    ; preds = %201, %198
  %203 = phi i32 [ 23, %201 ], [ 34, %198 ]
  store i32 %203, i32* %183, align 4, !tbaa !1028
  br label %550

; <label>:204:                                    ; preds = %14
  %205 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 3) #15, !dbg !2588
  call void @llvm.dbg.value(metadata i16 %205, metadata !2286, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i16 %205, metadata !1223, metadata !DIExpression()), !dbg !2589
  %206 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %205) #15, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %206, metadata !1224, metadata !DIExpression()), !dbg !2592
  %207 = icmp eq %struct.__le_hci_connection* %206, null, !dbg !2593
  %208 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %206, i32 0, i32 11, !dbg !2594
  %209 = select i1 %207, %struct.sm_connection* null, %struct.sm_connection* %208, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.sm_connection* %209, metadata !2285, metadata !DIExpression()), !dbg !2355
  br i1 %207, label %550, label %210, !dbg !2596

; <label>:210:                                    ; preds = %204
  %211 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %209, i32 0, i32 6, !dbg !2597
  %212 = load i32, i32* %211, align 4, !dbg !2597, !tbaa !1028
  switch i32 %212, label %550 [
    i32 55, label %213
    i32 22, label %216
  ], !dbg !2598

; <label>:213:                                    ; preds = %210
  store i32 52, i32* %211, align 4, !dbg !2599, !tbaa !1028
  %214 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %209, i32 0, i32 0, !dbg !2601
  %215 = load i16, i16* %214, align 4, !dbg !2601, !tbaa !878
  tail call fastcc void @sm_done_for_handle(i16 zeroext %215) #16, !dbg !2602
  br label %550, !dbg !2603

; <label>:216:                                    ; preds = %210
  %217 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %209, i32 0, i32 1, !dbg !2604
  %218 = load i8, i8* %217, align 2, !dbg !2604, !tbaa !1266
  %219 = icmp ne i8 %218, 0, !dbg !2604
  %220 = select i1 %219, i32 23, i32 34, !dbg !2606
  store i32 %220, i32* %211, align 4, !tbaa !1028
  br label %550, !dbg !2607

; <label>:221:                                    ; preds = %14
  %222 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 3) #15, !dbg !2608
  call void @llvm.dbg.value(metadata i16 %222, metadata !2286, metadata !DIExpression()), !dbg !2347
  tail call fastcc void @sm_done_for_handle(i16 zeroext %222) #16, !dbg !2609
  call void @llvm.dbg.value(metadata i16 %222, metadata !1223, metadata !DIExpression()), !dbg !2610
  %223 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %222) #15, !dbg !2612
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %223, metadata !1224, metadata !DIExpression()), !dbg !2613
  %224 = icmp eq %struct.__le_hci_connection* %223, null, !dbg !2614
  %225 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %223, i32 0, i32 11, !dbg !2615
  %226 = select i1 %224, %struct.sm_connection* null, %struct.sm_connection* %225, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.sm_connection* %226, metadata !2285, metadata !DIExpression()), !dbg !2355
  br i1 %224, label %550, label %227, !dbg !2617

; <label>:227:                                    ; preds = %221
  %228 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %226, i32 0, i32 17, !dbg !2618
  %229 = load i32, i32* %228, align 4, !dbg !2618, !tbaa !2370
  %230 = icmp eq i32 %229, 0, !dbg !2620
  br i1 %230, label %233, label %231, !dbg !2621

; <label>:231:                                    ; preds = %227
  %232 = trunc i32 %229 to i16, !dbg !2622
  tail call void @sys_timer_del(i16 zeroext %232) #15, !dbg !2624
  store i32 0, i32* %228, align 4, !dbg !2625, !tbaa !2370
  br label %233, !dbg !2626

; <label>:233:                                    ; preds = %231, %227
  %234 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %226, i32 0, i32 1, !dbg !2627
  %235 = load i8, i8* %234, align 2, !dbg !2627, !tbaa !1266
  %236 = icmp eq i8 %235, 0, !dbg !2629
  br i1 %236, label %237, label %248, !dbg !2630

; <label>:237:                                    ; preds = %233
  %238 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %226, i32 0, i32 6, !dbg !2631
  %239 = load i32, i32* %238, align 4, !dbg !2631, !tbaa !1028
  %240 = icmp eq i32 %239, 55, !dbg !2633
  br i1 %240, label %241, label %253, !dbg !2634

; <label>:241:                                    ; preds = %237
  %242 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !2635
  %243 = load i8, i8* %242, align 1, !dbg !2635, !tbaa !1142
  %244 = icmp eq i8 %243, 5, !dbg !2636
  br i1 %244, label %245, label %253, !dbg !2637

; <label>:245:                                    ; preds = %241
  %246 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %226, i32 0, i32 16, !dbg !2639
  %247 = load i32, i32* %246, align 4, !dbg !2639, !tbaa !1170
  tail call void @le_device_db_remove(i32 %247) #15, !dbg !2641
  br label %253, !dbg !2642

; <label>:248:                                    ; preds = %233
  %249 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %226, i32 0, i32 16, !dbg !2643
  %250 = load i32, i32* %249, align 4, !dbg !2643, !tbaa !1170
  %251 = icmp eq i32 %250, -1, !dbg !2646
  br i1 %251, label %253, label %252, !dbg !2647

; <label>:252:                                    ; preds = %248
  tail call void @le_device_db_remove(i32 %250) #15, !dbg !2649
  br label %253, !dbg !2651

; <label>:253:                                    ; preds = %252, %248, %245, %241, %237
  %254 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %226, i32 0, i32 6, !dbg !2652
  store i32 0, i32* %254, align 4, !dbg !2653, !tbaa !1028
  %255 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %226, i32 0, i32 0, !dbg !2654
  store i16 0, i16* %255, align 4, !dbg !2655, !tbaa !878
  br label %550, !dbg !2656

; <label>:256:                                    ; preds = %14
  %257 = load i8, i8* %2, align 1, !dbg !2657, !tbaa !1142
  %258 = icmp eq i8 %257, 14, !dbg !2657
  br i1 %258, label %259, label %550, !dbg !2657

; <label>:259:                                    ; preds = %256
  %260 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #15, !dbg !2658
  %261 = icmp eq i16 %260, 8215, !dbg !2658
  br i1 %261, label %262, label %444, !dbg !2660

; <label>:262:                                    ; preds = %259
  %263 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !2661
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !2662, metadata !DIExpression()) #14, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %263, metadata !2308, metadata !DIExpression()), !dbg !2674
  %264 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2675, !tbaa !716
  %265 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 25, !dbg !2676
  store i32 0, i32* %265, align 4, !dbg !2677, !tbaa !777
  %266 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 19, !dbg !2678
  %267 = load i32, i32* %266, align 4, !dbg !2678, !tbaa !996
  %268 = icmp eq i32 %267, 0, !dbg !2679
  br i1 %268, label %281, label %269, !dbg !2680

; <label>:269:                                    ; preds = %262
  store i32 0, i32* %266, align 4, !dbg !2681, !tbaa !996
  %270 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i32 0, i32 0, !dbg !2682
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %270) #14, !dbg !2682
  call void @reverse_24(i8* %263, i8* nonnull %270) #15, !dbg !2683
  %271 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2684, !tbaa !716
  %272 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %271, i32 0, i32 21, i32 3, !dbg !2684
  %273 = call i32 @memcmp(i8* %272, i8* nonnull %270, i32 3) #15, !dbg !2686
  %274 = icmp eq i32 %273, 0, !dbg !2687
  br i1 %274, label %275, label %276, !dbg !2688

; <label>:275:                                    ; preds = %269
  call fastcc void @sm_address_resolution_handle_event(i32 0) #15, !dbg !2689
  br label %280, !dbg !2691

; <label>:276:                                    ; preds = %269
  %277 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %271, i32 0, i32 18, !dbg !2692
  %278 = load i32, i32* %277, align 4, !dbg !2693, !tbaa !901
  %279 = add nsw i32 %278, 1, !dbg !2693
  store i32 %279, i32* %277, align 4, !dbg !2693, !tbaa !901
  br label %280, !dbg !2694

; <label>:280:                                    ; preds = %276, %275
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %270) #14, !dbg !2695
  br label %550

; <label>:281:                                    ; preds = %262
  %282 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 15, !dbg !2696
  %283 = load i32, i32* %282, align 4, !dbg !2696, !tbaa !769
  switch i32 %283, label %310 [
    i32 2, label %284
    i32 4, label %304
  ], !dbg !2697

; <label>:284:                                    ; preds = %281
  %285 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 13, i32 0, !dbg !2698
  tail call void @reverse_128(i8* %263, i8* %285) #15, !dbg !2699
  %286 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2700, !tbaa !716
  %287 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %286, i32 0, i32 14, !dbg !2701
  %288 = load i8, i8* %287, align 1, !dbg !2702
  %289 = and i8 %288, -16, !dbg !2702
  %290 = or i8 %289, 1, !dbg !2702
  store i8 %290, i8* %287, align 1, !dbg !2702
  %291 = icmp ugt i8 %288, 15, !dbg !2703
  br i1 %291, label %292, label %299, !dbg !2704

; <label>:292:                                    ; preds = %284
  %293 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i32 0, i32 0, !dbg !2705
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %293) #14, !dbg !2705
  %294 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !2706
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %294) #14, !dbg !2706
  %295 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %286, i32 0, i32 13, i32 0, !dbg !2707
  call void @reverse_128(i8* %295, i8* nonnull %294) #15, !dbg !2708
  call void @ll_vendor_device_address_generate(i8* nonnull %293, i8* nonnull %294, i8 zeroext 3) #15, !dbg !2709
  %296 = call i32 (i32, i32, ...) @ble_user_cmd_prepare(i32 21, i32 2, i32 0, i32 3) #15, !dbg !2710
  %297 = call i32 @le_controller_set_random_mac(i8* nonnull %293) #15, !dbg !2711
  call void @put_buf(i8* nonnull %293, i32 6) #15, !dbg !2712
  call void @put_buf(i8* nonnull %294, i32 16) #15, !dbg !2713
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %294) #14, !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %293) #14, !dbg !2714
  %298 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %299, !dbg !2715

; <label>:299:                                    ; preds = %292, %284
  %300 = phi %struct.sm_info_t* [ %298, %292 ], [ %286, %284 ], !dbg !2716
  %301 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %300, i32 0, i32 15, !dbg !2718
  %302 = load i32, i32* %301, align 4, !dbg !2718, !tbaa !769
  %303 = add nsw i32 %302, 1, !dbg !2719
  store i32 %303, i32* %301, align 4, !dbg !2720, !tbaa !769
  br label %550, !dbg !2721

; <label>:304:                                    ; preds = %281
  %305 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 12, i32 0, !dbg !2722
  tail call void @reverse_128(i8* %263, i8* %305) #15, !dbg !2723
  %306 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2724, !tbaa !716
  %307 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %306, i32 0, i32 15, !dbg !2726
  %308 = load i32, i32* %307, align 4, !dbg !2726, !tbaa !769
  %309 = add nsw i32 %308, 1, !dbg !2727
  store i32 %309, i32* %307, align 4, !dbg !2728, !tbaa !769
  br label %550, !dbg !2729

; <label>:310:                                    ; preds = %281
  %311 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 16, !dbg !2730
  %312 = load i32, i32* %311, align 4, !dbg !2730, !tbaa !808
  %313 = icmp eq i32 %312, 5, !dbg !2731
  br i1 %313, label %314, label %320, !dbg !2731

; <label>:314:                                    ; preds = %310
  %315 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 17, i32 3, !dbg !2732
  tail call void @reverse_24(i8* %263, i8* %315) #15, !dbg !2734
  %316 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2735, !tbaa !716
  %317 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %316, i32 0, i32 16, !dbg !2737
  %318 = load i32, i32* %317, align 4, !dbg !2737, !tbaa !808
  %319 = add nsw i32 %318, 1, !dbg !2738
  store i32 %319, i32* %317, align 4, !dbg !2739, !tbaa !808
  br label %550, !dbg !2740

; <label>:320:                                    ; preds = %310
  %321 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 26, !dbg !2741
  %322 = bitcast i8** %321 to %struct.sm_connection**, !dbg !2741
  %323 = load %struct.sm_connection*, %struct.sm_connection** %322, align 4, !dbg !2741, !tbaa !2742
  call void @llvm.dbg.value(metadata %struct.sm_connection* %323, metadata !2315, metadata !DIExpression()), !dbg !2743
  %324 = icmp eq %struct.sm_connection* %323, null, !dbg !2744
  br i1 %324, label %550, label %325, !dbg !2746

; <label>:325:                                    ; preds = %320
  %326 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %323, i32 0, i32 6, !dbg !2747
  %327 = load i32, i32* %326, align 4, !dbg !2747, !tbaa !1028
  switch i32 %327, label %550 [
    i32 11, label %328
    i32 15, label %328
    i32 13, label %352
    i32 17, label %354
    i32 21, label %367
    i32 28, label %382
    i32 48, label %394
    i32 30, label %406
    i32 32, label %408
    i32 50, label %433
  ], !dbg !2748

; <label>:328:                                    ; preds = %325, %325
  %329 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0, !dbg !2749
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %329) #14, !dbg !2749
  call void @reverse_128(i8* %263, i8* nonnull %329) #15, !dbg !2750
  %330 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2751, !tbaa !716
  %331 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %330, i32 0, i32 0, i32 19, i32 0, !dbg !2751
  %332 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %330, i32 0, i32 0, i32 20, i32 0, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %329, metadata !2667, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8* %331, metadata !2668, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %332, metadata !2669, metadata !DIExpression()), !dbg !2755
  %333 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !2756
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %333) #14, !dbg !2756
  %334 = bitcast [16 x i8]* %7 to i32*, !dbg !2757
  store i32 0, i32* %334, align 4, !dbg !2757
  %335 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 4, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %335, i8* %331, i32 6, i32 1, i1 false) #14, !dbg !2759
  %336 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 10, !dbg !2760
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %336, i8* %332, i32 6, i32 1, i1 false) #14, !dbg !2761
  call void @llvm.dbg.value(metadata i32 0, metadata !2671, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 0, metadata !2671, metadata !DIExpression()), !dbg !2762
  %337 = load i8, i8* %329, align 1, !dbg !2763, !tbaa !1142
  %338 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %330, i32 0, i32 0, i32 10, i32 0, !dbg !2767
  store i8 %337, i8* %338, align 1, !dbg !2768, !tbaa !1142
  call void @llvm.dbg.value(metadata i32 1, metadata !2671, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 1, metadata !2671, metadata !DIExpression()), !dbg !2762
  br label %339, !dbg !2769

; <label>:339:                                    ; preds = %339, %328
  %340 = phi i32 [ 1, %328 ], [ %347, %339 ]
  %341 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %340
  %342 = load i8, i8* %341, align 1, !tbaa !1142
  %343 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 %340, !dbg !2763
  %344 = load i8, i8* %343, align 1, !dbg !2763, !tbaa !1142
  %345 = xor i8 %344, %342, !dbg !2771
  %346 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %330, i32 0, i32 0, i32 10, i32 %340, !dbg !2767
  store i8 %345, i8* %346, align 1, !dbg !2768, !tbaa !1142
  %347 = add nuw nsw i32 %340, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %347, metadata !2671, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 %347, metadata !2671, metadata !DIExpression()), !dbg !2762
  %348 = icmp eq i32 %347, 16, !dbg !2774
  br i1 %348, label %349, label %339, !dbg !2769, !llvm.loop !2776

; <label>:349:                                    ; preds = %339
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %333) #14, !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %329) #14, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.sm_connection* %323, metadata !1418, metadata !DIExpression()), !dbg !2781
  %350 = load i32, i32* %326, align 4, !dbg !2783, !tbaa !1028
  %351 = add nsw i32 %350, 1, !dbg !2784
  store i32 %351, i32* %326, align 4, !dbg !2785, !tbaa !1028
  br label %550, !dbg !2786

; <label>:352:                                    ; preds = %325
  %353 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 0, i32 14, i32 0, !dbg !2787
  tail call void @reverse_128(i8* %263, i8* %353) #15, !dbg !2788
  store i32 18, i32* %326, align 4, !dbg !2789, !tbaa !1028
  br label %550, !dbg !2790

; <label>:354:                                    ; preds = %325
  %355 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i32 0, i32 0, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %355) #14, !dbg !2791
  call void @reverse_128(i8* %263, i8* nonnull %355) #15, !dbg !2792
  %356 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2793, !tbaa !716
  %357 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %356, i32 0, i32 0, i32 16, i32 0, !dbg !2793
  %358 = call i32 @memcmp(i8* %357, i8* nonnull %355, i32 16) #15, !dbg !2795
  %359 = icmp eq i32 %358, 0, !dbg !2796
  br i1 %359, label %362, label %360, !dbg !2797

; <label>:360:                                    ; preds = %354
  %361 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %356, i32 0, i32 0, i32 1, !dbg !2798
  store i8 4, i8* %361, align 4, !dbg !2800, !tbaa !1105
  store i32 1, i32* %326, align 4, !dbg !2801, !tbaa !1028
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %355) #14, !dbg !2802
  br label %550

; <label>:362:                                    ; preds = %354
  %363 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %323, i32 0, i32 1, !dbg !2803
  %364 = load i8, i8* %363, align 2, !dbg !2803, !tbaa !1266
  %365 = icmp ne i8 %364, 0, !dbg !2803
  %366 = select i1 %365, i32 19, i32 20, !dbg !2805
  store i32 %366, i32* %326, align 4, !dbg !2801, !tbaa !1028
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %355) #14, !dbg !2802
  br label %550, !dbg !2806

; <label>:367:                                    ; preds = %325
  %368 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 0, i32 21, i32 0, !dbg !2807
  tail call void @reverse_128(i8* %263, i8* %368) #15, !dbg !2808
  %369 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %323, i32 0, i32 10, !dbg !2809
  %370 = load i8, i8* %369, align 2, !dbg !2809, !tbaa !1140
  %371 = icmp ult i8 %370, 16, !dbg !2810
  br i1 %371, label %372, label %377, !dbg !2822

; <label>:372:                                    ; preds = %367
  %373 = zext i8 %370 to i32, !dbg !2824
  %374 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2825, !tbaa !716
  %375 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %374, i32 0, i32 0, i32 21, i32 0, !dbg !2825
  %376 = sub nsw i32 16, %373, !dbg !2826
  tail call void @llvm.memset.p0i8.i32(i8* %375, i8 0, i32 %376, i32 1, i1 false) #14, !dbg !2828
  br label %377, !dbg !2829

; <label>:377:                                    ; preds = %372, %367
  %378 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %323, i32 0, i32 1, !dbg !2830
  %379 = load i8, i8* %378, align 2, !dbg !2830, !tbaa !1266
  %380 = icmp ne i8 %379, 0, !dbg !2830
  %381 = select i1 %380, i32 46, i32 61, !dbg !2832
  store i32 %381, i32* %326, align 4, !tbaa !1028
  br label %550, !dbg !2833

; <label>:382:                                    ; preds = %325
  %383 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0, !dbg !2834
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %383) #14, !dbg !2834
  call void @reverse_128(i8* %263, i8* nonnull %383) #15, !dbg !2835
  %384 = call i32 @big_endian_read_16(i8* nonnull %383, i32 14) #15, !dbg !2836
  %385 = trunc i32 %384 to i16, !dbg !2836
  %386 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2837, !tbaa !716
  %387 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %386, i32 0, i32 0, i32 23, !dbg !2838
  store i16 %385, i16* %387, align 2, !dbg !2839, !tbaa !2840
  %388 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %386, i32 0, i32 0, i32 24, !dbg !2841
  %389 = load i16, i16* %388, align 4, !dbg !2841, !tbaa !1449
  %390 = zext i16 %389 to i32, !dbg !2842
  %391 = xor i32 %390, %384, !dbg !2843
  %392 = trunc i32 %391 to i16, !dbg !2844
  %393 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %386, i32 0, i32 0, i32 25, !dbg !2845
  store i16 %392, i16* %393, align 2, !dbg !2846, !tbaa !1134
  store i32 29, i32* %326, align 4, !dbg !2847, !tbaa !1028
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %383) #14, !dbg !2848
  br label %550

; <label>:394:                                    ; preds = %325
  %395 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i32 0, i32 0, !dbg !2849
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %395) #14, !dbg !2849
  call void @reverse_128(i8* %263, i8* nonnull %395) #15, !dbg !2850
  %396 = call i32 @big_endian_read_16(i8* nonnull %395, i32 14) #15, !dbg !2851
  %397 = trunc i32 %396 to i16, !dbg !2851
  %398 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2852, !tbaa !716
  %399 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %398, i32 0, i32 0, i32 23, !dbg !2853
  store i16 %397, i16* %399, align 2, !dbg !2854, !tbaa !2840
  %400 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %398, i32 0, i32 0, i32 25, !dbg !2855
  %401 = load i16, i16* %400, align 2, !dbg !2855, !tbaa !1134
  %402 = zext i16 %401 to i32, !dbg !2856
  %403 = xor i32 %402, %396, !dbg !2857
  %404 = trunc i32 %403 to i16, !dbg !2858
  %405 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %398, i32 0, i32 0, i32 24, !dbg !2859
  store i16 %404, i16* %405, align 4, !dbg !2860, !tbaa !1449
  store i32 49, i32* %326, align 4, !dbg !2861, !tbaa !1028
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %395) #14, !dbg !2862
  br label %550

; <label>:406:                                    ; preds = %325
  %407 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 0, i32 21, i32 0, !dbg !2863
  tail call void @reverse_128(i8* %263, i8* %407) #15, !dbg !2864
  store i32 31, i32* %326, align 4, !dbg !2865, !tbaa !1028
  br label %550, !dbg !2866

; <label>:408:                                    ; preds = %325
  %409 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 0, i32 28, i32 0, !dbg !2867
  tail call void @reverse_128(i8* %263, i8* %409) #15, !dbg !2868
  %410 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2869, !tbaa !716
  %411 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %410, i32 0, i32 0, i32 4, !dbg !2871
  %412 = load i8, i8* %411, align 1, !dbg !2871, !tbaa !1384
  %413 = icmp eq i8 %412, 0, !dbg !2869
  br i1 %413, label %415, label %414, !dbg !2872

; <label>:414:                                    ; preds = %408
  store i32 33, i32* %326, align 4, !dbg !2873, !tbaa !1028
  br label %550, !dbg !2875

; <label>:415:                                    ; preds = %408
  %416 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %323, i32 0, i32 1, !dbg !2876
  %417 = load i8, i8* %416, align 2, !dbg !2876, !tbaa !1266
  %418 = icmp eq i8 %417, 0, !dbg !2876
  br i1 %418, label %420, label %419, !dbg !2879

; <label>:419:                                    ; preds = %415
  store i32 34, i32* %326, align 4, !dbg !2880, !tbaa !1028
  br label %550, !dbg !2882

; <label>:420:                                    ; preds = %415
  %421 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %410, i32 0, i32 0, i32 9, !dbg !2883
  %422 = load i8, i8* %421, align 4, !dbg !2883, !tbaa !1336
  %423 = icmp eq i8 %422, 0, !dbg !2886
  br i1 %423, label %430, label %424, !dbg !2887

; <label>:424:                                    ; preds = %420
  %425 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %410, i32 0, i32 0, i32 6, !dbg !2888
  %426 = load i8, i8* %425, align 1, !dbg !2888, !tbaa !1361
  %427 = and i8 %426, 8, !dbg !2890
  %428 = icmp eq i8 %427, 0, !dbg !2890
  br i1 %428, label %430, label %429, !dbg !2891

; <label>:429:                                    ; preds = %424
  store i32 94, i32* %326, align 4, !dbg !2893, !tbaa !1028
  br label %550, !dbg !2895

; <label>:430:                                    ; preds = %424, %420
  store i32 52, i32* %326, align 4, !dbg !2896, !tbaa !1028
  %431 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %323, i32 0, i32 0, !dbg !2898
  %432 = load i16, i16* %431, align 4, !dbg !2898, !tbaa !878
  tail call fastcc void @sm_done_for_handle(i16 zeroext %432) #15, !dbg !2899
  br label %550

; <label>:433:                                    ; preds = %325
  %434 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %264, i32 0, i32 0, i32 21, i32 0, !dbg !2900
  tail call void @reverse_128(i8* %263, i8* %434) #15, !dbg !2901
  %435 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %323, i32 0, i32 10, !dbg !2902
  %436 = load i8, i8* %435, align 2, !dbg !2902, !tbaa !1140
  %437 = icmp ult i8 %436, 16, !dbg !2903
  br i1 %437, label %438, label %443, !dbg !2905

; <label>:438:                                    ; preds = %433
  %439 = zext i8 %436 to i32, !dbg !2906
  %440 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2907, !tbaa !716
  %441 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %440, i32 0, i32 0, i32 21, i32 0, !dbg !2907
  %442 = sub nsw i32 16, %439, !dbg !2908
  tail call void @llvm.memset.p0i8.i32(i8* %441, i8 0, i32 %442, i32 1, i1 false) #14, !dbg !2909
  br label %443, !dbg !2910

; <label>:443:                                    ; preds = %438, %433
  store i32 51, i32* %326, align 4, !dbg !2911, !tbaa !1028
  br label %550, !dbg !2912

; <label>:444:                                    ; preds = %259
  %445 = load i8, i8* %2, align 1, !dbg !2913, !tbaa !1142
  %446 = icmp eq i8 %445, 14, !dbg !2913
  br i1 %446, label %447, label %550, !dbg !2913

; <label>:447:                                    ; preds = %444
  %448 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #15, !dbg !2915
  %449 = icmp eq i16 %448, 8216, !dbg !2915
  br i1 %449, label %450, label %550, !dbg !2917

; <label>:450:                                    ; preds = %447
  %451 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %451, metadata !2920, metadata !DIExpression()), !dbg !2927
  %452 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2929, !tbaa !716
  %453 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 16, !dbg !2930
  %454 = load i32, i32* %453, align 4, !dbg !2930, !tbaa !808
  %455 = icmp eq i32 %454, 3, !dbg !2931
  br i1 %455, label %456, label %470, !dbg !2931

; <label>:456:                                    ; preds = %450
  %457 = load i32, i32* @gap_random_adress_type, align 4, !dbg !2932, !tbaa !1142
  %458 = icmp eq i32 %457, 3, !dbg !2934
  %459 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 17, i32 0
  br i1 %458, label %460, label %464, !dbg !2934

; <label>:460:                                    ; preds = %456
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %459, i8* %451, i32 3, i32 1, i1 false) #14, !dbg !2935
  %461 = load i8, i8* %459, align 4, !dbg !2937, !tbaa !1142
  %462 = and i8 %461, 63, !dbg !2937
  store i8 %462, i8* %459, align 4, !dbg !2937, !tbaa !1142
  %463 = or i8 %462, 64, !dbg !2938
  br label %467, !dbg !2939

; <label>:464:                                    ; preds = %456
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %459, i8* %451, i32 6, i32 1, i1 false) #14, !dbg !2940
  %465 = load i8, i8* %459, align 4, !dbg !2941, !tbaa !1142
  %466 = and i8 %465, 63, !dbg !2941
  br label %467, !dbg !2942

; <label>:467:                                    ; preds = %464, %460
  %468 = phi i8 [ %466, %464 ], [ %463, %460 ]
  %469 = phi i32 [ 6, %464 ], [ 4, %460 ]
  store i8 %468, i8* %459, align 4, !tbaa !1142
  store i32 %469, i32* %453, align 4, !tbaa !808
  br label %550, !dbg !2943

; <label>:470:                                    ; preds = %450
  %471 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 27, !dbg !2944
  %472 = bitcast i8** %471 to %struct.sm_connection**, !dbg !2944
  %473 = load %struct.sm_connection*, %struct.sm_connection** %472, align 4, !dbg !2944, !tbaa !822
  call void @llvm.dbg.value(metadata %struct.sm_connection* %473, metadata !2923, metadata !DIExpression()), !dbg !2945
  %474 = icmp eq %struct.sm_connection* %473, null, !dbg !2946
  br i1 %474, label %550, label %475, !dbg !2948

; <label>:475:                                    ; preds = %470
  %476 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %473, i32 0, i32 6, !dbg !2949
  %477 = load i32, i32* %476, align 4, !dbg !2949, !tbaa !1028
  switch i32 %477, label %550 [
    i32 5, label %478
    i32 7, label %520
    i32 9, label %525
    i32 24, label %530
    i32 26, label %545
  ], !dbg !2950

; <label>:478:                                    ; preds = %475
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !2951
  %479 = getelementptr %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 0, i32 8, i32 0, !dbg !2953
  tail call void @llvm.memset.p0i8.i32(i8* %479, i8 0, i32 16, i32 1, i1 false) #14, !dbg !2954
  %480 = bitcast i32* %5 to i8*, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %480) #14, !dbg !2955
  %481 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 8, !dbg !2956
  %482 = load i32, i32* %481, align 4, !dbg !2956, !tbaa !2221
  %483 = icmp eq i32 %482, -1, !dbg !2958
  br i1 %483, label %484, label %499, !dbg !2959

; <label>:484:                                    ; preds = %478
  %485 = tail call i32 @little_endian_read_32(i8* %451, i32 0) #15, !dbg !2960
  %486 = and i32 %485, 1048575, !dbg !2962
  call void @llvm.dbg.value(metadata i32 %486, metadata !2924, metadata !DIExpression()), !dbg !2963
  %487 = icmp ugt i32 %486, 999998, !dbg !2964
  %488 = add nsw i32 %486, -999999, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %488, metadata !2924, metadata !DIExpression()), !dbg !2963
  %489 = select i1 %487, i32 %488, i32 %486, !dbg !2968
  store i32 %489, i32* %5, align 4, !dbg !2969, !tbaa !757
  %490 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2970, !tbaa !716
  %491 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %490, i32 0, i32 33, !dbg !2972
  %492 = load void (i32*, i16)*, void (i32*, i16)** %491, align 4, !dbg !2972, !tbaa !2973
  %493 = icmp eq void (i32*, i16)* %492, null, !dbg !2970
  br i1 %493, label %500, label %494, !dbg !2974

; <label>:494:                                    ; preds = %484
  %495 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %473, i32 0, i32 0, !dbg !2975
  %496 = load i16, i16* %495, align 4, !dbg !2975, !tbaa !878
  call void @llvm.dbg.value(metadata i32* %5, metadata !2924, metadata !DIExpression(DW_OP_deref)), !dbg !2963
  call void %492(i32* nonnull %5, i16 zeroext %496) #15, !dbg !2977
  %497 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  %498 = load i32, i32* %5, align 4, !tbaa !757
  br label %500, !dbg !2978

; <label>:499:                                    ; preds = %478
  call void @llvm.dbg.value(metadata i32 %482, metadata !2924, metadata !DIExpression()), !dbg !2963
  store i32 %482, i32* %5, align 4, !dbg !2979, !tbaa !757
  br label %500

; <label>:500:                                    ; preds = %499, %494, %484
  %501 = phi i32 [ %489, %484 ], [ %498, %494 ], [ %482, %499 ], !dbg !2981
  %502 = phi %struct.sm_info_t* [ %490, %484 ], [ %497, %494 ], [ %452, %499 ], !dbg !2982
  %503 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %502, i32 0, i32 0, i32 8, i32 0, !dbg !2982
  call void @llvm.dbg.value(metadata i32 %501, metadata !2924, metadata !DIExpression()), !dbg !2963
  call void @big_endian_store_32(i8* %503, i16 zeroext 12, i32 %501) #15, !dbg !2983
  %504 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %473, i32 0, i32 1, !dbg !2984
  %505 = load i8, i8* %504, align 2, !dbg !2984, !tbaa !1266
  %506 = icmp eq i8 %505, 0, !dbg !2984
  br i1 %506, label %507, label %517, !dbg !2986

; <label>:507:                                    ; preds = %500
  %508 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2987, !tbaa !716
  %509 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %508, i32 0, i32 0, i32 9, !dbg !2990
  %510 = load i8, i8* %509, align 4, !dbg !2990, !tbaa !1336
  %511 = icmp eq i8 %510, 0, !dbg !2987
  br i1 %511, label %512, label %517, !dbg !2991

; <label>:512:                                    ; preds = %507
  store i32 3, i32* %476, align 4, !dbg !2992, !tbaa !1028
  call fastcc void @sm_trigger_user_response(%struct.sm_connection* nonnull %473) #15, !dbg !2994
  %513 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !2995, !tbaa !716
  %514 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %513, i32 0, i32 0, i32 2, !dbg !2997
  %515 = load i8, i8* %514, align 1, !dbg !2997, !tbaa !2998
  %516 = icmp eq i8 %515, 0, !dbg !2999
  br i1 %516, label %517, label %519, !dbg !3000

; <label>:517:                                    ; preds = %512, %507, %500
  %518 = phi i32 [ 63, %507 ], [ 6, %512 ], [ 42, %500 ]
  store i32 %518, i32* %476, align 4, !tbaa !1028
  br label %519, !dbg !3001

; <label>:519:                                    ; preds = %517, %512
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %480) #14, !dbg !3001
  br label %550

; <label>:520:                                    ; preds = %475
  %521 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 0, i32 13, i32 0, !dbg !3002
  %522 = bitcast i8* %451 to i64*, !dbg !3003
  %523 = bitcast i8* %521 to i64*, !dbg !3003
  %524 = load i64, i64* %522, align 1, !dbg !3003
  store i64 %524, i64* %523, align 1, !dbg !3003
  store i32 8, i32* %476, align 4, !dbg !3004, !tbaa !1028
  br label %550, !dbg !3005

; <label>:525:                                    ; preds = %475
  %526 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 0, i32 13, i32 8, !dbg !3006
  %527 = bitcast i8* %451 to i64*, !dbg !3007
  %528 = bitcast i8* %526 to i64*, !dbg !3007
  %529 = load i64, i64* %527, align 1, !dbg !3007
  store i64 %529, i64* %528, align 1, !dbg !3007
  store i32 10, i32* %476, align 4, !dbg !3008, !tbaa !1028
  br label %550, !dbg !3009

; <label>:530:                                    ; preds = %475
  %531 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %452, i32 0, i32 0, i32 26, i32 0, !dbg !3010
  tail call void @reverse_64(i8* %451, i8* %531) #15, !dbg !3011
  %532 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3012, !tbaa !716
  %533 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %532, i32 0, i32 0, i32 26, i32 7, !dbg !3012
  %534 = load i8, i8* %533, align 1, !dbg !3012, !tbaa !1142
  %535 = and i8 %534, -16, !dbg !3013
  %536 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %473, i32 0, i32 10, !dbg !3014
  %537 = load i8, i8* %536, align 2, !dbg !3014, !tbaa !1140
  %538 = add i8 %537, -1, !dbg !3015
  %539 = add i8 %538, %535, !dbg !3016
  store i8 %539, i8* %533, align 1, !dbg !3017, !tbaa !1142
  %540 = and i8 %539, -17, !dbg !3018
  %541 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %473, i32 0, i32 9, !dbg !3019
  %542 = load i8, i8* %541, align 1, !dbg !3019, !tbaa !1146
  %543 = shl i8 %542, 4, !dbg !3020
  %544 = add i8 %543, %540, !dbg !3021
  store i8 %544, i8* %533, align 1, !dbg !3022, !tbaa !1142
  store i32 25, i32* %476, align 4, !dbg !3023, !tbaa !1028
  br label %550, !dbg !3024

; <label>:545:                                    ; preds = %475
  %546 = tail call i32 @big_endian_read_16(i8* %451, i32 0) #15, !dbg !3025
  %547 = trunc i32 %546 to i16, !dbg !3025
  %548 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3026, !tbaa !716
  %549 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %548, i32 0, i32 0, i32 24, !dbg !3027
  store i16 %547, i16* %549, align 4, !dbg !3028, !tbaa !1449
  store i32 27, i32* %476, align 4, !dbg !3029, !tbaa !1028
  br label %550, !dbg !3030

; <label>:550:                                    ; preds = %545, %530, %525, %520, %519, %475, %470, %467, %447, %444, %443, %430, %429, %419, %414, %406, %394, %382, %377, %362, %360, %352, %349, %325, %320, %314, %304, %299, %280, %256, %253, %221, %216, %213, %210, %204, %202, %192, %185, %182, %179, %170, %147, %127, %116, %115, %109, %92, %91, %82, %75, %74, %67, %51, %47, %23, %16, %14, %4
  call fastcc void @sm_run() #16, !dbg !3031
  br label %551, !dbg !3032

; <label>:551:                                    ; preds = %550, %19
  ret void, !dbg !3033
}

; Function Attrs: optsize
declare void @hci_add_event_handler(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @l2cap_register_fixed_channel(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @sm_pdu_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".ble_sm_code" !dbg !3035 {
  %5 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  %6 = alloca [5 x i8], align 1
  %7 = alloca [16 x i8], align 1
  %8 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !3039, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i16 %1, metadata !3040, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %2, metadata !3041, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i16 %3, metadata !3042, metadata !DIExpression()), !dbg !3068
  switch i8 %0, label %363 [
    i8 4, label %9
    i8 9, label %13
  ], !dbg !3069

; <label>:9:                                      ; preds = %4
  %10 = load i8, i8* %2, align 1, !dbg !3071, !tbaa !1142
  %11 = icmp eq i8 %10, 120, !dbg !3073
  br i1 %11, label %12, label %363, !dbg !3074

; <label>:12:                                     ; preds = %9
  tail call fastcc void @sm_run() #16, !dbg !3076
  br label %363, !dbg !3078

; <label>:13:                                     ; preds = %4
  %14 = zext i16 %3 to i32, !dbg !3079
  %15 = icmp eq i16 %3, 0, !dbg !3081
  br i1 %15, label %363, label %16, !dbg !3082

; <label>:16:                                     ; preds = %13
  %17 = load i8, i8* %2, align 1, !dbg !3083, !tbaa !1142
  call void @llvm.dbg.value(metadata i8 %17, metadata !3043, metadata !DIExpression()), !dbg !3084
  %18 = icmp ugt i8 %17, 14, !dbg !3085
  br i1 %18, label %363, label %19, !dbg !3087

; <label>:19:                                     ; preds = %16
  %20 = zext i8 %17 to i32, !dbg !3088
  %21 = getelementptr inbounds [15 x i8], [15 x i8]* @sm_pdu_size, i32 0, i32 %20, !dbg !3089
  %22 = load i8, i8* %21, align 1, !dbg !3089, !tbaa !1142
  %23 = zext i8 %22 to i32, !dbg !3089
  %24 = icmp eq i32 %23, %14, !dbg !3091
  br i1 %24, label %25, label %363, !dbg !3092

; <label>:25:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i16 %1, metadata !1223, metadata !DIExpression()), !dbg !3093
  %26 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %1) #15, !dbg !3095
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %26, metadata !1224, metadata !DIExpression()), !dbg !3096
  %27 = icmp eq %struct.__le_hci_connection* %26, null, !dbg !3097
  %28 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %26, i32 0, i32 11, !dbg !3098
  %29 = select i1 %27, %struct.sm_connection* null, %struct.sm_connection* %28, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3044, metadata !DIExpression()), !dbg !3100
  br i1 %27, label %363, label %30, !dbg !3101

; <label>:30:                                     ; preds = %25
  switch i8 %17, label %55 [
    i8 5, label %31
    i8 14, label %49
  ], !dbg !3102

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 1, !dbg !3103
  %33 = load i8, i8* %32, align 2, !dbg !3103, !tbaa !1266
  %34 = icmp ne i8 %33, 0, !dbg !3106
  %35 = select i1 %34, i32 35, i32 52, !dbg !3106
  %36 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 6, !dbg !3107
  store i32 %35, i32* %36, align 4, !dbg !3108, !tbaa !1028
  %37 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 0, !dbg !3109
  %38 = load i16, i16* %37, align 4, !dbg !3109, !tbaa !878
  %39 = zext i16 %38 to i32, !dbg !3110
  tail call fastcc void @sm_set_timeout_disconnect(i32 %39, i8 zeroext 4) #16, !dbg !3111
  %40 = load i16, i16* %37, align 4, !dbg !3112, !tbaa !878
  %41 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 4, !dbg !3113
  %42 = load i8, i8* %41, align 1, !dbg !3113, !tbaa !876
  %43 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 5, i32 0, !dbg !3114
  %44 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3115
  %45 = load i8, i8* %44, align 1, !dbg !3115, !tbaa !1142
  %46 = zext i8 %45 to i32, !dbg !3115
  %47 = shl nuw nsw i32 %46, 8, !dbg !3116
  %48 = or i32 %47, 65539, !dbg !3117
  tail call fastcc void @sm_notify_client_process(i16 zeroext %40, i8 zeroext %42, i8* %43, i32 %48) #16, !dbg !3118
  br label %363, !dbg !3119

; <label>:49:                                     ; preds = %30
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i32 0, i32 0, !dbg !3120
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %50) #14, !dbg !3120
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %6, metadata !3046, metadata !DIExpression()), !dbg !3121
  store i8 -35, i8* %50, align 1, !dbg !3122, !tbaa !1142
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i32 0, i32 1, !dbg !3123
  store i8 3, i8* %51, align 1, !dbg !3124, !tbaa !1142
  call void @little_endian_store_16(i8* nonnull %50, i16 zeroext 2, i16 zeroext %1) #15, !dbg !3125
  %52 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3126
  %53 = load i8, i8* %52, align 1, !dbg !3126, !tbaa !1142
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i32 0, i32 4, !dbg !3127
  store i8 %53, i8* %54, align 1, !dbg !3128, !tbaa !1142
  call fastcc void @sm_dispatch_event(i8* nonnull %50, i16 zeroext 5) #16, !dbg !3129
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %50) #14, !dbg !3130
  br label %363

; <label>:55:                                     ; preds = %30
  %56 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 6, !dbg !3131
  %57 = load i32, i32* %56, align 4, !dbg !3131, !tbaa !1028
  switch i32 %57, label %362 [
    i32 2, label %363
    i32 52, label %58
    i32 58, label %108
    i32 59, label %133
    i32 60, label %142
    i32 35, label %151
    i32 36, label %151
    i32 40, label %151
    i32 43, label %180
    i32 44, label %208
    i32 34, label %217
  ], !dbg !3132

; <label>:58:                                     ; preds = %55
  %59 = icmp eq i8 %17, 11, !dbg !3133
  br i1 %59, label %60, label %64, !dbg !3135

; <label>:60:                                     ; preds = %58
  %61 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 1, !dbg !3136
  %62 = load i8, i8* %61, align 2, !dbg !3136, !tbaa !1266
  %63 = icmp eq i8 %62, 0, !dbg !3138
  br i1 %63, label %67, label %64, !dbg !3139

; <label>:64:                                     ; preds = %60, %58
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3155
  %65 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3156, !tbaa !716
  %66 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %65, i32 0, i32 0, i32 1, !dbg !3157
  store i8 8, i8* %66, align 4, !dbg !3158, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3159, !tbaa !1028
  br label %362, !dbg !3160

; <label>:67:                                     ; preds = %60
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3161, metadata !DIExpression()), !dbg !3186
  %68 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %5, i32 0, i32 0, i32 0, !dbg !3189
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %68) #14, !dbg !3189
  %69 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3190, !tbaa !716
  %70 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %69, i32 0, i32 9, !dbg !3192
  %71 = load i8, i8* %70, align 4, !dbg !3192, !tbaa !1611
  %72 = icmp eq i8 %71, 0, !dbg !3190
  br i1 %72, label %73, label %80, !dbg !3193

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 5, i32 0, !dbg !3194
  %75 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 4, !dbg !3196
  %76 = load i8, i8* %75, align 1, !dbg !3196, !tbaa !876
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %5, metadata !3166, metadata !DIExpression(DW_OP_deref)), !dbg !3197
  %77 = call zeroext i8 @ble_list_get_conn_addr_item(i8* %74, i8 zeroext %76, i8 zeroext 0, %struct.BLE_REMOTE_LIST_T* nonnull %5) #15, !dbg !3198
  %78 = icmp eq i8 %77, 0, !dbg !3198
  br i1 %78, label %80, label %79, !dbg !3199

; <label>:79:                                     ; preds = %73
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %68) #14, !dbg !3201
  br label %362

; <label>:80:                                     ; preds = %73, %67
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %68) #14, !dbg !3201
  %81 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 7, !dbg !3202
  %82 = load i32, i32* %81, align 4, !dbg !3202, !tbaa !869
  switch i32 %82, label %106 [
    i32 4, label %83
    i32 3, label %84
  ], !dbg !3204

; <label>:83:                                     ; preds = %80
  store i32 56, i32* %56, align 4, !dbg !3205, !tbaa !1028
  br label %362, !dbg !3207

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %85) #14, !dbg !3208
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !3051, metadata !DIExpression()), !dbg !3209
  %86 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 16, !dbg !3210
  %87 = load i32, i32* %86, align 4, !dbg !3210, !tbaa !1170
  call void @le_device_db_encryption_get(i32 %87, i16* null, i8* null, i8* nonnull %85, i32* null, i32* null, i32* null) #15, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %85, metadata !3212, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %85, metadata !2456, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 16, metadata !2457, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()), !dbg !3221
  br label %90

; <label>:88:                                     ; preds = %90
  call void @llvm.dbg.value(metadata i32 %95, metadata !2458, metadata !DIExpression()), !dbg !3221
  %89 = icmp slt i32 %95, 16, !dbg !3222
  br i1 %89, label %90, label %103, !dbg !3223, !llvm.loop !2472

; <label>:90:                                     ; preds = %88, %84
  %91 = phi i32 [ %95, %88 ], [ 0, %84 ]
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %91, !dbg !3224
  %93 = load i8, i8* %92, align 1, !dbg !3224, !tbaa !1142
  %94 = icmp eq i8 %93, 0, !dbg !3224
  %95 = add nuw nsw i32 %91, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %95, metadata !2458, metadata !DIExpression()), !dbg !3221
  br i1 %94, label %88, label %96, !dbg !3226

; <label>:96:                                     ; preds = %90
  %97 = load i8, i8* @ble_debug_enable, align 1, !dbg !3227, !tbaa !1142
  %98 = and i8 %97, 1, !dbg !3227
  %99 = icmp eq i8 %98, 0, !dbg !3227
  br i1 %99, label %104, label %100, !dbg !3230

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %86, align 4, !dbg !3231, !tbaa !1170
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i32 0, i32 0), i32 %101) #16, !dbg !3231
  br label %104, !dbg !3231

; <label>:103:                                    ; preds = %88
  br label %104

; <label>:104:                                    ; preds = %103, %100, %96
  %105 = phi i32 [ 53, %96 ], [ 53, %100 ], [ 56, %103 ]
  store i32 %105, i32* %56, align 4, !tbaa !1028
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %85) #14, !dbg !3233
  br label %362

; <label>:106:                                    ; preds = %80
  %107 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 2, !dbg !3234
  store i8 1, i8* %107, align 1, !dbg !3235, !tbaa !3236
  br label %362, !dbg !3237

; <label>:108:                                    ; preds = %55
  switch i8 %17, label %109 [
    i8 2, label %112
    i8 11, label %362
  ], !dbg !3238

; <label>:109:                                    ; preds = %108
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3247
  %110 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3248, !tbaa !716
  %111 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %110, i32 0, i32 0, i32 1, !dbg !3249
  store i8 8, i8* %111, align 4, !dbg !3250, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3251, !tbaa !1028
  br label %362, !dbg !3252

; <label>:112:                                    ; preds = %108
  %113 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3253, !tbaa !716
  %114 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %113, i32 0, i32 0, i32 12, i32 0, !dbg !3254
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %114, i8* nonnull %2, i32 7, i32 1, i1 false), !dbg !3254
  %115 = tail call fastcc i32 @sm_stk_generation_init(%struct.sm_connection* nonnull %29) #16, !dbg !3255
  call void @llvm.dbg.value(metadata i32 %115, metadata !3045, metadata !DIExpression()), !dbg !3256
  %116 = icmp eq i32 %115, 0, !dbg !3257
  br i1 %116, label %121, label %117, !dbg !3259

; <label>:117:                                    ; preds = %112
  %118 = trunc i32 %115 to i8, !dbg !3260
  %119 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3262, !tbaa !716
  %120 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %119, i32 0, i32 0, i32 1, !dbg !3263
  store i8 %118, i8* %120, align 4, !dbg !3264, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3265, !tbaa !1028
  br label %362, !dbg !3266

; <label>:121:                                    ; preds = %112
  %122 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3267, !tbaa !716
  %123 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %122, i32 0, i32 0, i32 7, !dbg !3269
  %124 = load i32, i32* %123, align 4, !dbg !3269, !tbaa !1110
  %125 = icmp eq i32 %124, 1, !dbg !3270
  br i1 %125, label %126, label %127, !dbg !3271

; <label>:126:                                    ; preds = %121
  store i32 4, i32* %56, align 4, !dbg !3272, !tbaa !1028
  br label %362, !dbg !3274

; <label>:127:                                    ; preds = %121
  store i32 3, i32* %56, align 4, !dbg !3275, !tbaa !1028
  tail call fastcc void @sm_trigger_user_response(%struct.sm_connection* nonnull %29) #16, !dbg !3276
  %128 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3277, !tbaa !716
  %129 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %128, i32 0, i32 0, i32 2, !dbg !3279
  %130 = load i8, i8* %129, align 1, !dbg !3279, !tbaa !2998
  %131 = icmp eq i8 %130, 0, !dbg !3280
  br i1 %131, label %132, label %362, !dbg !3281

; <label>:132:                                    ; preds = %127
  store i32 6, i32* %56, align 4, !dbg !3282, !tbaa !1028
  br label %362, !dbg !3284

; <label>:133:                                    ; preds = %55
  %134 = icmp eq i8 %17, 3, !dbg !3285
  br i1 %134, label %138, label %135, !dbg !3287

; <label>:135:                                    ; preds = %133
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3293
  %136 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3294, !tbaa !716
  %137 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %136, i32 0, i32 0, i32 1, !dbg !3295
  store i8 8, i8* %137, align 4, !dbg !3296, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3297, !tbaa !1028
  br label %362, !dbg !3298

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3299
  %140 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3300, !tbaa !716
  %141 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %140, i32 0, i32 0, i32 16, i32 0, !dbg !3300
  tail call void @reverse_128(i8* %139, i8* %141) #15, !dbg !3301
  store i32 19, i32* %56, align 4, !dbg !3302, !tbaa !1028
  br label %362, !dbg !3303

; <label>:142:                                    ; preds = %55
  %143 = icmp eq i8 %17, 4, !dbg !3304
  br i1 %143, label %147, label %144, !dbg !3306

; <label>:144:                                    ; preds = %142
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3312
  %145 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3313, !tbaa !716
  %146 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %145, i32 0, i32 0, i32 1, !dbg !3314
  store i8 8, i8* %146, align 4, !dbg !3315, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3316, !tbaa !1028
  br label %362, !dbg !3317

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3318
  %149 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3319, !tbaa !716
  %150 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %149, i32 0, i32 0, i32 15, i32 0, !dbg !3319
  tail call void @reverse_128(i8* %148, i8* %150) #15, !dbg !3320
  store i32 14, i32* %56, align 4, !dbg !3321, !tbaa !1028
  br label %362, !dbg !3322

; <label>:151:                                    ; preds = %55, %55, %55
  %152 = icmp eq i8 %17, 1, !dbg !3323
  br i1 %152, label %156, label %153, !dbg !3325

; <label>:153:                                    ; preds = %151
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3331
  %154 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3332, !tbaa !716
  %155 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %154, i32 0, i32 0, i32 1, !dbg !3333
  store i8 8, i8* %155, align 4, !dbg !3334, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3335, !tbaa !1028
  br label %362, !dbg !3336

; <label>:156:                                    ; preds = %151
  %157 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 1, !dbg !3337
  %158 = load i8, i8* %157, align 2, !dbg !3337, !tbaa !1266
  %159 = icmp eq i8 %158, 0, !dbg !3337
  br i1 %159, label %178, label %160, !dbg !3339

; <label>:160:                                    ; preds = %156
  %161 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3340, !tbaa !716
  %162 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %161, i32 0, i32 9, !dbg !3342
  %163 = load i8, i8* %162, align 4, !dbg !3342, !tbaa !1611
  %164 = icmp eq i8 %163, 0, !dbg !3340
  br i1 %164, label %165, label %178, !dbg !3343

; <label>:165:                                    ; preds = %160
  %166 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 5, i32 0, !dbg !3344
  %167 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 4, !dbg !3347
  %168 = load i8, i8* %167, align 1, !dbg !3347, !tbaa !876
  %169 = tail call zeroext i8 @ble_list_pair_is_allow(i8* %166, i8 zeroext %168) #15, !dbg !3348
  %170 = icmp eq i8 %169, 0, !dbg !3348
  br i1 %170, label %171, label %178, !dbg !3349

; <label>:171:                                    ; preds = %165
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3355
  %172 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3356, !tbaa !716
  %173 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %172, i32 0, i32 0, i32 1, !dbg !3357
  store i8 8, i8* %173, align 4, !dbg !3358, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3359, !tbaa !1028
  %174 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.20, i32 0, i32 0)), !dbg !3360
  %175 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 0, !dbg !3361
  %176 = load i16, i16* %175, align 4, !dbg !3361, !tbaa !878
  %177 = zext i16 %176 to i32, !dbg !3362
  tail call fastcc void @sm_set_timeout_disconnect(i32 %177, i8 zeroext 3) #16, !dbg !3363
  br label %362, !dbg !3364

; <label>:178:                                    ; preds = %165, %160, %156
  %179 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 11, i32 0, !dbg !3365
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %179, i8* nonnull %2, i32 7, i32 1, i1 false), !dbg !3365
  store i32 41, i32* %56, align 4, !dbg !3366, !tbaa !1028
  br label %362, !dbg !3367

; <label>:180:                                    ; preds = %55
  %181 = icmp eq i8 %17, 3, !dbg !3368
  br i1 %181, label %185, label %182, !dbg !3370

; <label>:182:                                    ; preds = %180
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3376
  %183 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3377, !tbaa !716
  %184 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %183, i32 0, i32 0, i32 1, !dbg !3378
  store i8 8, i8* %184, align 4, !dbg !3379, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3380, !tbaa !1028
  br label %362, !dbg !3381

; <label>:185:                                    ; preds = %180
  %186 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3382
  %187 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3383, !tbaa !716
  %188 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %187, i32 0, i32 0, i32 16, i32 0, !dbg !3383
  tail call void @reverse_128(i8* %186, i8* %188) #15, !dbg !3384
  %189 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3385, !tbaa !716
  %190 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %189, i32 0, i32 0, i32 7, !dbg !3387
  %191 = load i32, i32* %190, align 4, !dbg !3387, !tbaa !1110
  %192 = icmp eq i32 %191, 2, !dbg !3388
  br i1 %192, label %193, label %200, !dbg !3389

; <label>:193:                                    ; preds = %185
  %194 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 0, !dbg !3390
  %195 = load i16, i16* %194, align 4, !dbg !3390, !tbaa !878
  %196 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 4, !dbg !3392
  %197 = load i8, i8* %196, align 1, !dbg !3392, !tbaa !876
  %198 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 5, i32 0, !dbg !3393
  tail call fastcc void @sm_notify_client_base(i8 zeroext -45, i16 zeroext %195, i8 zeroext %197, i8* %198) #16, !dbg !3394
  %199 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %200, !dbg !3395

; <label>:200:                                    ; preds = %193, %185
  %201 = phi %struct.sm_info_t* [ %199, %193 ], [ %189, %185 ], !dbg !3396
  %202 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %201, i32 0, i32 0, i32 2, !dbg !3398
  %203 = load i8, i8* %202, align 1, !dbg !3398, !tbaa !2998
  switch i8 %203, label %207 [
    i8 4, label %204
    i8 1, label %206
  ], !dbg !3399

; <label>:204:                                    ; preds = %200
  %205 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %201, i32 0, i32 0, i32 1, !dbg !3400
  store i8 1, i8* %205, align 4, !dbg !3402, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3403, !tbaa !1028
  br label %362, !dbg !3404

; <label>:206:                                    ; preds = %200
  store i32 3, i32* %56, align 4, !dbg !3405, !tbaa !1028
  br label %362, !dbg !3408

; <label>:207:                                    ; preds = %200
  store i32 6, i32* %56, align 4, !dbg !3409, !tbaa !1028
  br label %362, !dbg !3410

; <label>:208:                                    ; preds = %55
  %209 = icmp eq i8 %17, 4, !dbg !3411
  br i1 %209, label %213, label %210, !dbg !3413

; <label>:210:                                    ; preds = %208
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3141, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata %struct.sm_connection* %29, metadata !3147, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3419
  %211 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3420, !tbaa !716
  %212 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %211, i32 0, i32 0, i32 1, !dbg !3421
  store i8 8, i8* %212, align 4, !dbg !3422, !tbaa !1105
  store i32 1, i32* %56, align 4, !dbg !3423, !tbaa !1028
  br label %362, !dbg !3424

; <label>:213:                                    ; preds = %208
  %214 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3425
  %215 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3426, !tbaa !716
  %216 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %215, i32 0, i32 0, i32 15, i32 0, !dbg !3426
  tail call void @reverse_128(i8* %214, i8* %216) #15, !dbg !3427
  store i32 14, i32* %56, align 4, !dbg !3428, !tbaa !1028
  br label %362, !dbg !3429

; <label>:217:                                    ; preds = %55
  switch i8 %17, label %289 [
    i8 6, label %218
    i8 7, label %225
    i8 8, label %235
    i8 9, label %256
    i8 10, label %282
  ], !dbg !3430

; <label>:218:                                    ; preds = %217
  %219 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3431, !tbaa !716
  %220 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %219, i32 0, i32 0, i32 6, !dbg !3433
  %221 = load i8, i8* %220, align 1, !dbg !3434, !tbaa !1361
  %222 = or i8 %221, 1, !dbg !3434
  store i8 %222, i8* %220, align 1, !dbg !3434, !tbaa !1361
  %223 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3435
  %224 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %219, i32 0, i32 0, i32 34, i32 0, !dbg !3436
  tail call void @reverse_128(i8* %223, i8* %224) #15, !dbg !3437
  br label %289, !dbg !3438

; <label>:225:                                    ; preds = %217
  %226 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3439, !tbaa !716
  %227 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %226, i32 0, i32 0, i32 6, !dbg !3440
  %228 = load i8, i8* %227, align 1, !dbg !3441, !tbaa !1361
  %229 = or i8 %228, 2, !dbg !3441
  store i8 %229, i8* %227, align 1, !dbg !3441, !tbaa !1361
  %230 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 1) #15, !dbg !3442
  %231 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3443, !tbaa !716
  %232 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %231, i32 0, i32 0, i32 32, !dbg !3444
  store i16 %230, i16* %232, align 4, !dbg !3445, !tbaa !1299
  %233 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !3446
  %234 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %231, i32 0, i32 0, i32 33, i32 0, !dbg !3447
  tail call void @reverse_64(i8* %233, i8* %234) #15, !dbg !3448
  br label %289, !dbg !3449

; <label>:235:                                    ; preds = %217
  %236 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3450, !tbaa !716
  %237 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %236, i32 0, i32 0, i32 6, !dbg !3451
  %238 = load i8, i8* %237, align 1, !dbg !3452, !tbaa !1361
  %239 = or i8 %238, 4, !dbg !3452
  store i8 %239, i8* %237, align 1, !dbg !3452, !tbaa !1361
  %240 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3453
  %241 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %236, i32 0, i32 0, i32 35, i32 0, !dbg !3454
  tail call void @reverse_128(i8* %240, i8* %241) #15, !dbg !3455
  %242 = load i8, i8* @ble_debug_enable, align 1, !dbg !3456, !tbaa !1142
  %243 = and i8 %242, 1, !dbg !3456
  %244 = icmp eq i8 %243, 0, !dbg !3456
  br i1 %244, label %248, label %245, !dbg !3458

; <label>:245:                                    ; preds = %235
  %246 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.19, i32 0, i32 0)), !dbg !3459
  %247 = load i8, i8* @ble_debug_enable, align 1, !tbaa !1142
  br label %248, !dbg !3459

; <label>:248:                                    ; preds = %245, %235
  %249 = phi i8 [ %242, %235 ], [ %247, %245 ], !dbg !3461
  %250 = and i8 %249, 2, !dbg !3461
  %251 = icmp eq i8 %250, 0, !dbg !3461
  br i1 %251, label %289, label %252, !dbg !3463

; <label>:252:                                    ; preds = %248
  %253 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.18, i32 0, i32 0)), !dbg !3464
  %254 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3464, !tbaa !716
  %255 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %254, i32 0, i32 0, i32 35, i32 0, !dbg !3464
  tail call void @put_buf(i8* %255, i32 16) #15, !dbg !3467
  br label %289, !dbg !3464

; <label>:256:                                    ; preds = %217
  %257 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3469, !tbaa !716
  %258 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %257, i32 0, i32 0, i32 6, !dbg !3470
  %259 = load i8, i8* %258, align 1, !dbg !3471, !tbaa !1361
  %260 = or i8 %259, 8, !dbg !3471
  store i8 %260, i8* %258, align 1, !dbg !3471, !tbaa !1361
  %261 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3472
  %262 = load i8, i8* %261, align 1, !dbg !3472, !tbaa !1142
  %263 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %257, i32 0, i32 0, i32 37, !dbg !3473
  store i8 %262, i8* %263, align 2, !dbg !3474, !tbaa !1823
  %264 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !3475
  %265 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %257, i32 0, i32 0, i32 38, i32 0, !dbg !3476
  tail call void @reverse_bd_addr(i8* %264, i8* %265) #15, !dbg !3477
  %266 = load i8, i8* @ble_debug_enable, align 1, !dbg !3478, !tbaa !1142
  %267 = and i8 %266, 1, !dbg !3478
  %268 = icmp eq i8 %267, 0, !dbg !3478
  br i1 %268, label %276, label %269, !dbg !3480

; <label>:269:                                    ; preds = %256
  %270 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3481, !tbaa !716
  %271 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %270, i32 0, i32 0, i32 37, !dbg !3481
  %272 = load i8, i8* %271, align 2, !dbg !3481, !tbaa !1823
  %273 = zext i8 %272 to i32, !dbg !3481
  %274 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i32 %273) #16, !dbg !3481
  %275 = load i8, i8* @ble_debug_enable, align 1, !tbaa !1142
  br label %276, !dbg !3481

; <label>:276:                                    ; preds = %269, %256
  %277 = phi i8 [ %266, %256 ], [ %275, %269 ], !dbg !3483
  %278 = and i8 %277, 2, !dbg !3483
  %279 = icmp eq i8 %278, 0, !dbg !3483
  br i1 %279, label %289, label %280, !dbg !3485

; <label>:280:                                    ; preds = %276
  %281 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.18, i32 0, i32 0)), !dbg !3486
  tail call void @put_buf(i8* %264, i32 6) #15, !dbg !3489
  br label %289, !dbg !3486

; <label>:282:                                    ; preds = %217
  %283 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3491, !tbaa !716
  %284 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %283, i32 0, i32 0, i32 6, !dbg !3492
  %285 = load i8, i8* %284, align 1, !dbg !3493, !tbaa !1361
  %286 = or i8 %285, 16, !dbg !3493
  store i8 %286, i8* %284, align 1, !dbg !3493, !tbaa !1361
  %287 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !3494
  %288 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %283, i32 0, i32 0, i32 36, i32 0, !dbg !3495
  tail call void @reverse_128(i8* %287, i8* %288) #15, !dbg !3496
  br label %289, !dbg !3497

; <label>:289:                                    ; preds = %282, %280, %276, %252, %248, %225, %218, %217
  %290 = tail call fastcc i32 @sm_key_distribution_all_received(%struct.sm_connection* %29) #16, !dbg !3498
  %291 = icmp eq i32 %290, 0, !dbg !3498
  br i1 %291, label %362, label %292, !dbg !3499

; <label>:292:                                    ; preds = %289
  tail call fastcc void @sm_key_distribution_handle_all_received(%struct.sm_connection* %29) #16, !dbg !3500
  %293 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 1, !dbg !3501
  %294 = load i8, i8* %293, align 2, !dbg !3501, !tbaa !1266
  %295 = icmp eq i8 %294, 0, !dbg !3501
  %296 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  %297 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %296, i32 0, i32 0, i32 9
  %298 = load i8, i8* %297, align 4, !tbaa !1336
  br i1 %295, label %359, label %299, !dbg !3502

; <label>:299:                                    ; preds = %292
  %300 = icmp eq i8 %298, 0, !dbg !3503
  br i1 %300, label %307, label %301, !dbg !3504

; <label>:301:                                    ; preds = %299
  %302 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %296, i32 0, i32 0, i32 6, !dbg !3505
  %303 = load i8, i8* %302, align 1, !dbg !3505, !tbaa !1361
  %304 = and i8 %303, 8, !dbg !3507
  %305 = icmp eq i8 %304, 0, !dbg !3507
  br i1 %305, label %307, label %306, !dbg !3508

; <label>:306:                                    ; preds = %301
  store i32 94, i32* %56, align 4, !dbg !3510, !tbaa !1028
  br label %362, !dbg !3512

; <label>:307:                                    ; preds = %301, %299
  %308 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %296, i32 0, i32 9, !dbg !3513
  %309 = load i8, i8* %308, align 4, !dbg !3513, !tbaa !1611
  %310 = icmp eq i8 %309, 0, !dbg !3514
  br i1 %310, label %313, label %311, !dbg !3515

; <label>:311:                                    ; preds = %307
  %312 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 0, !dbg !3516
  br label %356, !dbg !3515

; <label>:313:                                    ; preds = %307
  %314 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 0, !dbg !3517
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %314) #14, !dbg !3517
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !3055, metadata !DIExpression()), !dbg !3518
  %315 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %296, i32 0, i32 0, i32 5, !dbg !3519
  %316 = load i8, i8* %315, align 4, !dbg !3519, !tbaa !1387
  store i8 %316, i8* %314, align 1, !dbg !3520, !tbaa !1142
  %317 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %296, i32 0, i32 0, i32 6, !dbg !3521
  %318 = load i8, i8* %317, align 1, !dbg !3521, !tbaa !1361
  %319 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 1, !dbg !3522
  store i8 %318, i8* %319, align 1, !dbg !3523, !tbaa !1142
  %320 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 0, !dbg !3524
  %321 = load i16, i16* %320, align 4, !dbg !3524, !tbaa !878
  %322 = tail call zeroext i8 @att_server_get_remote_type(i16 zeroext %321) #15, !dbg !3525
  %323 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 2, !dbg !3526
  store i8 %322, i8* %323, align 1, !dbg !3527, !tbaa !1142
  %324 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 10, !dbg !3528
  %325 = load i8, i8* %324, align 2, !dbg !3528, !tbaa !1140
  %326 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 3, !dbg !3529
  store i8 %325, i8* %326, align 1, !dbg !3530, !tbaa !1142
  %327 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 9, !dbg !3531
  %328 = load i8, i8* %327, align 1, !dbg !3531, !tbaa !1146
  %329 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 4, !dbg !3532
  store i8 %328, i8* %329, align 1, !dbg !3533, !tbaa !1142
  %330 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 12, !dbg !3534
  %331 = load i32, i32* %330, align 4, !dbg !3534, !tbaa !1194
  %332 = trunc i32 %331 to i8, !dbg !3535
  %333 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 5, !dbg !3536
  store i8 %332, i8* %333, align 1, !dbg !3537, !tbaa !1142
  %334 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3538, !tbaa !716
  %335 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %334, i32 0, i32 0, i32 25, !dbg !3539
  %336 = load i16, i16* %335, align 2, !dbg !3539, !tbaa !1134
  call void @little_endian_store_16(i8* nonnull %314, i16 zeroext 6, i16 zeroext %336) #15, !dbg !3540
  %337 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 8, !dbg !3541
  %338 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3542, !tbaa !716
  %339 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %338, i32 0, i32 0, i32 26, i32 0, !dbg !3543
  %340 = bitcast i8* %339 to i64*, !dbg !3543
  %341 = bitcast i8* %337 to i64*, !dbg !3543
  %342 = load i64, i64* %340, align 1, !dbg !3543
  store i64 %342, i64* %341, align 1, !dbg !3543
  %343 = load i8, i8* %293, align 2, !dbg !3544, !tbaa !1266
  %344 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %338, i32 0, i32 0, i32 38, i32 0, !dbg !3546
  %345 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %338, i32 0, i32 0, i32 37, !dbg !3547
  %346 = load i8, i8* %345, align 2, !dbg !3547, !tbaa !1823
  %347 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %338, i32 0, i32 0, i32 35, i32 0, !dbg !3548
  %348 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %338, i32 0, i32 0, i32 21, i32 0, !dbg !3549
  %349 = call zeroext i8 @ble_list_pair_add(i8 zeroext %343, i8* %344, i8 zeroext %346, i8* %347, i8* %348, i8* nonnull %314) #15, !dbg !3550
  %350 = icmp eq i8 %349, 0, !dbg !3550
  %351 = select i1 %350, i32 17, i32 16
  call void @llvm.dbg.value(metadata i32 %351, metadata !3064, metadata !DIExpression()), !dbg !3551
  %352 = load i16, i16* %320, align 4, !dbg !3552, !tbaa !878
  %353 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 4, !dbg !3553
  %354 = load i8, i8* %353, align 1, !dbg !3553, !tbaa !876
  %355 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %29, i32 0, i32 5, i32 0, !dbg !3554
  call fastcc void @sm_notify_client_process(i16 zeroext %352, i8 zeroext %354, i8* %355, i32 %351) #16, !dbg !3555
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %314) #14, !dbg !3556
  br label %356, !dbg !3557

; <label>:356:                                    ; preds = %313, %311
  %357 = phi i16* [ %312, %311 ], [ %320, %313 ], !dbg !3516
  store i32 35, i32* %56, align 4, !dbg !3558, !tbaa !1028
  %358 = load i16, i16* %357, align 4, !dbg !3516, !tbaa !878
  call fastcc void @sm_done_for_handle(i16 zeroext %358) #16, !dbg !3559
  br label %362

; <label>:359:                                    ; preds = %292
  %360 = icmp ne i8 %298, 0, !dbg !3560
  %361 = select i1 %360, i32 33, i32 23, !dbg !3563
  store i32 %361, i32* %56, align 4, !tbaa !1028
  br label %362

; <label>:362:                                    ; preds = %359, %356, %306, %289, %213, %210, %207, %206, %204, %182, %178, %171, %153, %147, %144, %138, %135, %132, %127, %126, %117, %109, %108, %106, %104, %83, %79, %64, %55
  call fastcc void @sm_run() #16, !dbg !3564
  br label %363, !dbg !3565

; <label>:363:                                    ; preds = %362, %55, %49, %31, %25, %19, %16, %13, %12, %9, %4
  ret void, !dbg !3566
}

; Function Attrs: nounwind optsize
define hidden void @sm_exit() local_unnamed_addr #0 section ".ble_sm_code" !dbg !3568 {
  %1 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !3569, !tbaa !757
  %2 = icmp eq i32 %1, 0, !dbg !3569
  br i1 %2, label %8, label %3, !dbg !3571

; <label>:3:                                      ; preds = %0
  tail call void @le_device_db_exit() #15, !dbg !3572
  %4 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3573, !tbaa !716
  %5 = icmp eq %struct.sm_info_t* %4, null, !dbg !3573
  br i1 %5, label %8, label %6, !dbg !3575

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.sm_info_t* %4 to i8*, !dbg !3576
  tail call void @free(i8* %7) #16, !dbg !3578
  store %struct.sm_info_t* null, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3579, !tbaa !716
  br label %8, !dbg !3580

; <label>:8:                                      ; preds = %6, %3, %0
  ret void, !dbg !3581
}

; Function Attrs: optsize
declare void @le_device_db_exit() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind optsize readnone
define hidden void @sm_use_fixed_ec_keypair(i8* nocapture, i8* nocapture, i8* nocapture) local_unnamed_addr #8 section ".ble_sm_code" !dbg !3582 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3584, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !3585, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %2, metadata !3586, metadata !DIExpression()), !dbg !3589
  ret void, !dbg !3590
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden void @sm_test_use_fixed_ec_keypair() local_unnamed_addr #9 section ".ble_sm_code" !dbg !3591 {
  ret void, !dbg !3592
}

; Function Attrs: nounwind optsize
define hidden void @sm_use_fixed_legacy_pairing_passkey_in_display_role(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3593 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3597, metadata !DIExpression()), !dbg !3598
  %2 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3599, !tbaa !716
  %3 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 8, !dbg !3600
  store i32 %0, i32* %3, align 4, !dbg !3601, !tbaa !2221
  ret void, !dbg !3602
}

; Function Attrs: nounwind optsize
define hidden void @sm_allow_ltk_reconstruction_without_le_device_db_entry(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3603 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3605, metadata !DIExpression()), !dbg !3606
  %2 = trunc i32 %0 to i8, !dbg !3607
  %3 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3608, !tbaa !716
  %4 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %3, i32 0, i32 9, !dbg !3609
  store i8 %2, i8* %4, align 4, !dbg !3610, !tbaa !1611
  ret void, !dbg !3611
}

; Function Attrs: nounwind optsize
define hidden i32 @sm_encryption_key_size(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3612 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3616, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3619
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3621
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !1224, metadata !DIExpression()), !dbg !3622
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3623
  %4 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 11, !dbg !3624
  %5 = select i1 %3, %struct.sm_connection* null, %struct.sm_connection* %4, !dbg !3625
  call void @llvm.dbg.value(metadata %struct.sm_connection* %5, metadata !3617, metadata !DIExpression()), !dbg !3626
  br i1 %3, label %14, label %6, !dbg !3627

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 8, !dbg !3628
  %8 = load i8, i8* %7, align 4, !dbg !3628, !tbaa !2373
  %9 = icmp eq i8 %8, 0, !dbg !3630
  br i1 %9, label %14, label %10, !dbg !3631

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 10, !dbg !3632
  %12 = load i8, i8* %11, align 2, !dbg !3632, !tbaa !1140
  %13 = zext i8 %12 to i32, !dbg !3633
  br label %14, !dbg !3634

; <label>:14:                                     ; preds = %10, %6, %1
  %15 = phi i32 [ %13, %10 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %15, !dbg !3635
}

; Function Attrs: nounwind optsize
define hidden i32 @sm_authenticated(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3636 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3638, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3641
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3643
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !1224, metadata !DIExpression()), !dbg !3644
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3645
  %4 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 11, !dbg !3646
  %5 = select i1 %3, %struct.sm_connection* null, %struct.sm_connection* %4, !dbg !3647
  call void @llvm.dbg.value(metadata %struct.sm_connection* %5, metadata !3639, metadata !DIExpression()), !dbg !3648
  br i1 %3, label %14, label %6, !dbg !3649

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 8, !dbg !3650
  %8 = load i8, i8* %7, align 4, !dbg !3650, !tbaa !2373
  %9 = icmp eq i8 %8, 0, !dbg !3652
  br i1 %9, label %14, label %10, !dbg !3653

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 9, !dbg !3654
  %12 = load i8, i8* %11, align 1, !dbg !3654, !tbaa !1146
  %13 = zext i8 %12 to i32, !dbg !3655
  br label %14, !dbg !3656

; <label>:14:                                     ; preds = %10, %6, %1
  %15 = phi i32 [ %13, %10 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %15, !dbg !3657
}

; Function Attrs: nounwind optsize
define hidden i32 @sm_authorization_state(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3658 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3662, metadata !DIExpression()), !dbg !3664
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !3665, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !3665
  br i1 %3, label %20, label %4, !dbg !3667

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3668
  %5 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3670
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %5, metadata !1224, metadata !DIExpression()), !dbg !3671
  %6 = icmp eq %struct.__le_hci_connection* %5, null, !dbg !3672
  %7 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %5, i32 0, i32 11, !dbg !3673
  %8 = select i1 %6, %struct.sm_connection* null, %struct.sm_connection* %7, !dbg !3674
  call void @llvm.dbg.value(metadata %struct.sm_connection* %8, metadata !3663, metadata !DIExpression()), !dbg !3675
  br i1 %6, label %20, label %9, !dbg !3676

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %8, i32 0, i32 8, !dbg !3677
  %11 = load i8, i8* %10, align 4, !dbg !3677, !tbaa !2373
  %12 = icmp eq i8 %11, 0, !dbg !3679
  br i1 %12, label %20, label %13, !dbg !3680

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %8, i32 0, i32 9, !dbg !3681
  %15 = load i8, i8* %14, align 1, !dbg !3681, !tbaa !1146
  %16 = icmp eq i8 %15, 0, !dbg !3683
  br i1 %16, label %20, label %17, !dbg !3684

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %8, i32 0, i32 12, !dbg !3685
  %19 = load i32, i32* %18, align 4, !dbg !3685, !tbaa !1194
  br label %20, !dbg !3686

; <label>:20:                                     ; preds = %17, %13, %9, %4, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %17 ], [ 0, %4 ], [ 0, %9 ], [ 0, %13 ]
  ret i32 %21, !dbg !3687
}

; Function Attrs: nounwind optsize
define hidden void @sm_authorization_decline(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3689 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3693, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3696
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3698
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !1224, metadata !DIExpression()), !dbg !3699
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3700
  %4 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 11, !dbg !3701
  %5 = select i1 %3, %struct.sm_connection* null, %struct.sm_connection* %4, !dbg !3702
  call void @llvm.dbg.value(metadata %struct.sm_connection* %5, metadata !3694, metadata !DIExpression()), !dbg !3703
  br i1 %3, label %13, label %6, !dbg !3704

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 12, !dbg !3705
  store i32 2, i32* %7, align 4, !dbg !3706, !tbaa !1194
  %8 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 0, !dbg !3707
  %9 = load i16, i16* %8, align 4, !dbg !3707, !tbaa !878
  %10 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 4, !dbg !3708
  %11 = load i8, i8* %10, align 1, !dbg !3708, !tbaa !876
  %12 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 5, i32 0, !dbg !3709
  tail call fastcc void @sm_notify_client_authorization(i16 zeroext %9, i8 zeroext %11, i8* %12, i8 zeroext 0) #16, !dbg !3710
  br label %13, !dbg !3711

; <label>:13:                                     ; preds = %6, %1
  ret void, !dbg !3712
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_notify_client_authorization(i16 zeroext, i8 zeroext, i8*, i8 zeroext) unnamed_addr #0 section ".ble_sm_code" !dbg !3714 {
  %5 = alloca [18 x i8], align 1
  call void @llvm.dbg.value(metadata i8 -36, metadata !3718, metadata !DIExpression()), !dbg !3727
  %6 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i32 0, i32 0, !dbg !3728
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %6) #14, !dbg !3728
  tail call void @llvm.dbg.declare(metadata [18 x i8]* %5, metadata !3723, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i8* %6, metadata !3730, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 18, metadata !3735, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 -36, metadata !3736, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i16 %0, metadata !3737, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i8 %1, metadata !3738, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %2, metadata !3739, metadata !DIExpression()), !dbg !3746
  store i8 -36, i8* %6, align 1, !dbg !3747, !tbaa !1142
  %7 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i32 0, i32 1, !dbg !3748
  store i8 16, i8* %7, align 1, !dbg !3749, !tbaa !1142
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 2, i16 zeroext %0) #15, !dbg !3750
  %8 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i32 0, i32 4, !dbg !3751
  store i8 %1, i8* %8, align 1, !dbg !3752, !tbaa !1142
  %9 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i32 0, i32 5, !dbg !3753
  call void @reverse_bd_addr(i8* %2, i8* %9) #15, !dbg !3754
  %10 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i32 0, i32 11, !dbg !3755
  store i8 %3, i8* %10, align 1, !dbg !3756, !tbaa !1142
  call fastcc void @sm_dispatch_event(i8* nonnull %6, i16 zeroext 18) #16, !dbg !3757
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %6) #14, !dbg !3758
  ret void, !dbg !3758
}

; Function Attrs: nounwind optsize
define hidden void @sm_authorization_grant(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3759 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3764
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3766
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !1224, metadata !DIExpression()), !dbg !3767
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3768
  %4 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 11, !dbg !3769
  %5 = select i1 %3, %struct.sm_connection* null, %struct.sm_connection* %4, !dbg !3770
  call void @llvm.dbg.value(metadata %struct.sm_connection* %5, metadata !3762, metadata !DIExpression()), !dbg !3771
  br i1 %3, label %13, label %6, !dbg !3772

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 12, !dbg !3773
  store i32 3, i32* %7, align 4, !dbg !3774, !tbaa !1194
  %8 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 0, !dbg !3775
  %9 = load i16, i16* %8, align 4, !dbg !3775, !tbaa !878
  %10 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 4, !dbg !3776
  %11 = load i8, i8* %10, align 1, !dbg !3776, !tbaa !876
  %12 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %5, i32 0, i32 5, i32 0, !dbg !3777
  tail call fastcc void @sm_notify_client_authorization(i16 zeroext %9, i8 zeroext %11, i8* %12, i8 zeroext 1) #16, !dbg !3778
  br label %13, !dbg !3779

; <label>:13:                                     ; preds = %6, %1
  ret void, !dbg !3780
}

; Function Attrs: nounwind optsize
define hidden void @sm_bonding_decline(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3782 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3784, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3787
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3789
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !1224, metadata !DIExpression()), !dbg !3790
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3791
  br i1 %3, label %20, label %4, !dbg !3792

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3793, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 2, !dbg !3794
  store i8 4, i8* %6, align 1, !dbg !3795, !tbaa !2998
  %7 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 11, i32 6, !dbg !3796
  %8 = load i32, i32* %7, align 4, !dbg !3796, !tbaa !1028
  %9 = icmp eq i32 %8, 3, !dbg !3798
  br i1 %9, label %10, label %19, !dbg !3799

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 7, !dbg !3800
  %12 = load i32, i32* %11, align 4, !dbg !3800, !tbaa !1110
  switch i32 %12, label %19 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %15
    i32 0, label %17
    i32 5, label %17
  ], !dbg !3802

; <label>:13:                                     ; preds = %10, %10, %10
  call void @llvm.dbg.value(metadata i8 1, metadata !3152, metadata !DIExpression()), !dbg !3803
  %14 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 1, !dbg !3806
  store i8 1, i8* %14, align 4, !dbg !3807, !tbaa !1105
  store i32 1, i32* %7, align 4, !dbg !3808, !tbaa !1028
  br label %19, !dbg !3809

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i8 12, metadata !3152, metadata !DIExpression()), !dbg !3810
  %16 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 1, !dbg !3812
  store i8 12, i8* %16, align 4, !dbg !3813, !tbaa !1105
  store i32 1, i32* %7, align 4, !dbg !3814, !tbaa !1028
  br label %19, !dbg !3815

; <label>:17:                                     ; preds = %10, %10
  call void @llvm.dbg.value(metadata i8 8, metadata !3152, metadata !DIExpression()), !dbg !3816
  %18 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 1, !dbg !3818
  store i8 8, i8* %18, align 4, !dbg !3819, !tbaa !1105
  store i32 1, i32* %7, align 4, !dbg !3820, !tbaa !1028
  br label %19, !dbg !3821

; <label>:19:                                     ; preds = %17, %15, %13, %10, %4
  tail call fastcc void @sm_run() #16, !dbg !3822
  br label %20, !dbg !3823

; <label>:20:                                     ; preds = %19, %1
  ret void, !dbg !3824
}

; Function Attrs: nounwind optsize
define hidden void @sm_just_works_confirm_addr(i8 zeroext, i8*) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3826 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3830, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 %0, metadata !3835, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8* %1, metadata !3840, metadata !DIExpression()), !dbg !3844
  %3 = zext i8 %0 to i32, !dbg !3845
  %4 = tail call %struct.__le_hci_connection* @le_hci_connection_for_bd_addr_and_type(i8* %1, i32 %3) #15, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %4, metadata !3841, metadata !DIExpression()), !dbg !3847
  %5 = icmp eq %struct.__le_hci_connection* %4, null, !dbg !3848
  br i1 %5, label %14, label %6, !dbg !3850

; <label>:6:                                      ; preds = %2
  %7 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3851, !tbaa !716
  %8 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %7, i32 0, i32 0, i32 2, !dbg !3852
  store i8 2, i8* %8, align 1, !dbg !3853, !tbaa !2998
  %9 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 11, i32 6, !dbg !3854
  %10 = load i32, i32* %9, align 4, !dbg !3854, !tbaa !1028
  %11 = icmp eq i32 %10, 3, !dbg !3856
  br i1 %11, label %12, label %13, !dbg !3857

; <label>:12:                                     ; preds = %6
  store i32 6, i32* %9, align 4, !dbg !3858, !tbaa !1028
  br label %13, !dbg !3860

; <label>:13:                                     ; preds = %12, %6
  tail call fastcc void @sm_run() #16, !dbg !3861
  br label %14, !dbg !3862

; <label>:14:                                     ; preds = %13, %2
  ret void, !dbg !3863
}

; Function Attrs: nounwind optsize
define hidden void @sm_just_works_confirm(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3865 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3867, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3870
  %2 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3872
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %2, metadata !1224, metadata !DIExpression()), !dbg !3873
  %3 = icmp eq %struct.__le_hci_connection* %2, null, !dbg !3874
  br i1 %3, label %16, label %4, !dbg !3875

; <label>:4:                                      ; preds = %1
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3876, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 2, !dbg !3877
  store i8 2, i8* %6, align 1, !dbg !3878, !tbaa !2998
  %7 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %2, i32 0, i32 11, i32 6, !dbg !3879
  %8 = load i32, i32* %7, align 4, !dbg !3879, !tbaa !1028
  %9 = icmp eq i32 %8, 3, !dbg !3881
  br i1 %9, label %10, label %15, !dbg !3882

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 9, !dbg !3883
  %12 = load i8, i8* %11, align 4, !dbg !3883, !tbaa !1336
  %13 = icmp ne i8 %12, 0, !dbg !3886
  %14 = select i1 %13, i32 63, i32 6, !dbg !3887
  store i32 %14, i32* %7, align 4, !tbaa !1028
  br label %15, !dbg !3888

; <label>:15:                                     ; preds = %10, %4
  tail call fastcc void @sm_run() #16, !dbg !3889
  br label %16, !dbg !3890

; <label>:16:                                     ; preds = %15, %1
  ret void, !dbg !3891
}

; Function Attrs: nounwind optsize
define hidden void @sm_numeric_comparison_confirm(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3893 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3895, metadata !DIExpression()), !dbg !3896
  tail call void @sm_just_works_confirm(i16 zeroext %0) #16, !dbg !3897
  ret void, !dbg !3898
}

; Function Attrs: nounwind optsize
define hidden void @sm_passkey_input(i16 zeroext, i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3899 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3903, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %1, metadata !3904, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3908
  %3 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3910
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %3, metadata !1224, metadata !DIExpression()), !dbg !3911
  %4 = icmp eq %struct.__le_hci_connection* %3, null, !dbg !3912
  br i1 %4, label %15, label %5, !dbg !3913

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !3914
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  %7 = getelementptr %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 0, i32 8, i32 0, !dbg !3916
  tail call void @llvm.memset.p0i8.i32(i8* %7, i8 0, i32 16, i32 1, i1 false) #14, !dbg !3917
  tail call void @big_endian_store_32(i8* %7, i16 zeroext 12, i32 %1) #15, !dbg !3918
  %8 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3919, !tbaa !716
  %9 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %8, i32 0, i32 0, i32 2, !dbg !3920
  store i8 3, i8* %9, align 1, !dbg !3921, !tbaa !2998
  %10 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %3, i32 0, i32 11, i32 6, !dbg !3922
  %11 = load i32, i32* %10, align 4, !dbg !3922, !tbaa !1028
  %12 = icmp eq i32 %11, 3, !dbg !3924
  br i1 %12, label %13, label %14, !dbg !3925

; <label>:13:                                     ; preds = %5
  store i32 6, i32* %10, align 4, !dbg !3926, !tbaa !1028
  br label %14, !dbg !3928

; <label>:14:                                     ; preds = %13, %5
  tail call fastcc void @sm_run() #16, !dbg !3929
  br label %15, !dbg !3930

; <label>:15:                                     ; preds = %14, %2
  ret void, !dbg !3931
}

; Function Attrs: optsize
declare void @big_endian_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @sm_keypress_notification(i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3933 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3937, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8 %1, metadata !3938, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3942
  %3 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3944
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %3, metadata !1224, metadata !DIExpression()), !dbg !3945
  %4 = icmp eq %struct.__le_hci_connection* %3, null, !dbg !3946
  %5 = icmp ugt i8 %1, 4, !dbg !3947
  %6 = or i1 %5, %4, !dbg !3949
  br i1 %6, label %10, label %7, !dbg !3949

; <label>:7:                                      ; preds = %2
  %8 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !3950, !tbaa !716
  %9 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %8, i32 0, i32 0, i32 3, !dbg !3951
  store i8 %1, i8* %9, align 2, !dbg !3952, !tbaa !1081
  tail call fastcc void @sm_run() #16, !dbg !3953
  br label %10, !dbg !3954

; <label>:10:                                     ; preds = %7, %2
  ret void, !dbg !3955
}

; Function Attrs: nounwind optsize
define hidden i32 @sm_le_device_index(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3957 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3959, metadata !DIExpression()), !dbg !3961
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !3962, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !3962
  br i1 %3, label %10, label %4, !dbg !3964

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !3965
  %5 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !3967
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %5, metadata !1224, metadata !DIExpression()), !dbg !3968
  %6 = icmp eq %struct.__le_hci_connection* %5, null, !dbg !3969
  br i1 %6, label %10, label %7, !dbg !3970

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %5, i32 0, i32 11, i32 16, !dbg !3971
  %9 = load i32, i32* %8, align 4, !dbg !3971, !tbaa !1170
  br label %10, !dbg !3972

; <label>:10:                                     ; preds = %7, %4, %1
  %11 = phi i32 [ -1, %1 ], [ %9, %7 ], [ -1, %4 ]
  ret i32 %11, !dbg !3973
}

; Function Attrs: nounwind optsize
define hidden void @gap_random_address_set_mode(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !3975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3979, metadata !DIExpression()), !dbg !3980
  %2 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* nonnull @gap_random_address_update_timer) #15, !dbg !3981
  store i32 %0, i32* @gap_random_adress_type, align 4, !dbg !3984, !tbaa !1142
  %3 = icmp ne i32 %0, 0, !dbg !3985
  %4 = zext i1 %3 to i8, !dbg !3985
  tail call void @hci_le_set_own_address_type(i8 zeroext %4) #15, !dbg !3991
  %5 = load i32, i32* @gap_random_adress_type, align 4, !dbg !3993, !tbaa !1142
  %6 = icmp eq i32 %5, 0, !dbg !3998
  br i1 %6, label %10, label %7, !dbg !3999

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.btstack_timer_source* @gap_random_address_update_timer to i8*), i8 0, i32 20, i32 4, i1 false) #14, !dbg !4000
  %8 = load i32, i32* @gap_random_adress_update_period, align 4, !dbg !4003, !tbaa !757
  %9 = and i32 %8, 65535, !dbg !4004
  store i32 %9, i32* getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @gap_random_address_update_timer, i32 0, i32 2), align 4, !dbg !4004
  store void (%struct.btstack_timer_source*)* @gap_random_address_update_handler, void (%struct.btstack_timer_source*)** getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @gap_random_address_update_timer, i32 0, i32 3), align 4, !dbg !4005, !tbaa !4006
  tail call void @btstack_set_timer(%struct.btstack_timer_source* nonnull @gap_random_address_update_timer, i16 signext 131) #15, !dbg !4007
  tail call fastcc void @gap_random_address_trigger() #16, !dbg !4008
  br label %10, !dbg !4009

; <label>:10:                                     ; preds = %7, %1
  ret void, !dbg !4010
}

; Function Attrs: optsize
declare void @hci_le_set_own_address_type(i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @gap_random_address_trigger() unnamed_addr #0 section ".ble_sm_code" !dbg !4011 {
  %1 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4012, !tbaa !716
  %2 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %1, i32 0, i32 16, !dbg !4014
  %3 = load i32, i32* %2, align 4, !dbg !4014, !tbaa !808
  %4 = icmp eq i32 %3, 1, !dbg !4015
  br i1 %4, label %5, label %6, !dbg !4016

; <label>:5:                                      ; preds = %0
  store i32 2, i32* %2, align 4, !dbg !4017, !tbaa !808
  tail call fastcc void @sm_run() #16, !dbg !4018
  br label %6, !dbg !4019

; <label>:6:                                      ; preds = %5, %0
  ret void, !dbg !4020
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden i32 @gap_random_address_get_mode() local_unnamed_addr #10 section ".ble_sm_code" !dbg !4022 {
  %1 = load i32, i32* @gap_random_adress_type, align 4, !dbg !4025, !tbaa !1142
  ret i32 %1, !dbg !4026
}

; Function Attrs: nounwind optsize
define hidden void @gap_random_address_set_update_period(i32) local_unnamed_addr #0 section ".ble_sm_code" !dbg !4027 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4029, metadata !DIExpression()), !dbg !4030
  store i32 %0, i32* @gap_random_adress_update_period, align 4, !dbg !4031, !tbaa !757
  %2 = load i32, i32* @gap_random_adress_type, align 4, !dbg !4032, !tbaa !1142
  %3 = icmp eq i32 %2, 0, !dbg !4035
  br i1 %3, label %8, label %4, !dbg !4036

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* nonnull @gap_random_address_update_timer) #15, !dbg !4037
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.btstack_timer_source* @gap_random_address_update_timer to i8*), i8 0, i32 20, i32 4, i1 false) #14, !dbg !4039
  %6 = load i32, i32* @gap_random_adress_update_period, align 4, !dbg !4041, !tbaa !757
  %7 = and i32 %6, 65535, !dbg !4042
  store i32 %7, i32* getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @gap_random_address_update_timer, i32 0, i32 2), align 4, !dbg !4042
  store void (%struct.btstack_timer_source*)* @gap_random_address_update_handler, void (%struct.btstack_timer_source*)** getelementptr inbounds (%struct.btstack_timer_source, %struct.btstack_timer_source* @gap_random_address_update_timer, i32 0, i32 3), align 4, !dbg !4043, !tbaa !4006
  tail call void @btstack_set_timer(%struct.btstack_timer_source* nonnull @gap_random_address_update_timer, i16 signext 131) #15, !dbg !4044
  br label %8, !dbg !4045

; <label>:8:                                      ; preds = %4, %1
  ret void, !dbg !4046
}

; Function Attrs: nounwind optsize
define hidden void @gap_random_address_set(i8* nocapture readonly) local_unnamed_addr #0 section ".ble_sm_code" !dbg !4048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4050, metadata !DIExpression()), !dbg !4051
  tail call void @gap_random_address_set_mode(i32 1) #16, !dbg !4052
  %2 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4053, !tbaa !716
  %3 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 17, i32 0, !dbg !4054
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %0, i32 6, i32 1, i1 false), !dbg !4054
  %4 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 16, !dbg !4055
  %5 = load i32, i32* %4, align 4, !dbg !4055, !tbaa !808
  %6 = icmp eq i32 %5, 0, !dbg !4057
  br i1 %6, label %8, label %7, !dbg !4058

; <label>:7:                                      ; preds = %1
  store i32 6, i32* %4, align 4, !dbg !4059, !tbaa !808
  tail call fastcc void @sm_run() #16, !dbg !4060
  br label %8, !dbg !4061

; <label>:8:                                      ; preds = %7, %1
  ret void, !dbg !4062
}

; Function Attrs: nounwind optsize
define weak hidden void @gap_advertisements_set_params(i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !4064 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4068, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i16 %1, metadata !4069, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i8 %2, metadata !4070, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i8 %3, metadata !4071, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i8* %4, metadata !4072, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i8 %5, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i8 %6, metadata !4074, metadata !DIExpression()), !dbg !4081
  tail call void @hci_le_advertisements_set_params(i16 zeroext %0, i16 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8* %4, i8 zeroext %5, i8 zeroext %6) #15, !dbg !4082
  ret void, !dbg !4083
}

; Function Attrs: optsize
declare void @hci_le_advertisements_set_params(i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @reset_PK_cb_register(void (i32*)*) local_unnamed_addr #0 section ".ble_sm_code" !dbg !4084 {
  call void @llvm.dbg.value(metadata void (i32*)* %0, metadata !4091, metadata !DIExpression()), !dbg !4092
  %2 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4093, !tbaa !716
  %3 = icmp eq %struct.sm_info_t* %2, null, !dbg !4093
  br i1 %3, label %7, label %4, !dbg !4095

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 33, !dbg !4096
  %6 = bitcast void (i32*, i16)** %5 to void (i32*)**, !dbg !4098
  store void (i32*)* %0, void (i32*)** %6, align 4, !dbg !4098, !tbaa !2973
  br label %7, !dbg !4099

; <label>:7:                                      ; preds = %4, %1
  ret void, !dbg !4100
}

; Function Attrs: nounwind optsize
define hidden void @reset_PK_cb_register_ext(void (i32*, i16)*) local_unnamed_addr #0 section ".ble_sm_code" !dbg !4101 {
  call void @llvm.dbg.value(metadata void (i32*, i16)* %0, metadata !4108, metadata !DIExpression()), !dbg !4109
  %2 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4110, !tbaa !716
  %3 = icmp eq %struct.sm_info_t* %2, null, !dbg !4110
  br i1 %3, label %6, label %4, !dbg !4112

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 33, !dbg !4113
  store void (i32*, i16)* %0, void (i32*, i16)** %5, align 4, !dbg !4115, !tbaa !2973
  br label %6, !dbg !4116

; <label>:6:                                      ; preds = %4, %1
  ret void, !dbg !4117
}

; Function Attrs: nounwind optsize
define hidden void @sm_cmd_request_resume(i32* nocapture readonly) local_unnamed_addr #0 section ".ble_sm_code" !dbg !4118 {
  %2 = alloca i16, align 2
  %3 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !4124, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32* %0, metadata !4123, metadata !DIExpression()), !dbg !4139
  %4 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !4140, !tbaa !757
  %5 = icmp eq i32 %4, 0, !dbg !4140
  br i1 %5, label %59, label %6, !dbg !4142

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %0, align 4, !dbg !4143, !tbaa !757
  %8 = icmp eq i32 %7, 1, !dbg !4144
  br i1 %8, label %9, label %59, !dbg !4144

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !4145
  %11 = load i32, i32* %10, align 4, !dbg !4145, !tbaa !757
  %12 = trunc i32 %11 to i16, !dbg !4145
  call void @llvm.dbg.value(metadata i16 %12, metadata !4133, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i16 %12, metadata !1223, metadata !DIExpression()), !dbg !4147
  %13 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %12) #15, !dbg !4149
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %13, metadata !1224, metadata !DIExpression()), !dbg !4150
  %14 = icmp eq %struct.__le_hci_connection* %13, null, !dbg !4151
  %15 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %13, i32 0, i32 11, !dbg !4152
  %16 = select i1 %14, %struct.sm_connection* null, %struct.sm_connection* %15, !dbg !4153
  call void @llvm.dbg.value(metadata %struct.sm_connection* %16, metadata !4134, metadata !DIExpression()), !dbg !4154
  br i1 %14, label %59, label %17, !dbg !4155

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %16, i32 0, i32 1, !dbg !4156
  %19 = load i8, i8* %18, align 2, !dbg !4156, !tbaa !1266
  %20 = icmp eq i8 %19, 0, !dbg !4156
  %21 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %16, i32 0, i32 6
  %22 = load i32, i32* %21, align 4, !tbaa !1028
  br i1 %20, label %25, label %23, !dbg !4157

; <label>:23:                                     ; preds = %17
  call void @llvm.dbg.value(metadata %struct.sm_connection* %16, metadata !4158, metadata !DIExpression()), !dbg !4161
  switch i32 %22, label %58 [
    i32 0, label %24
    i32 35, label %24
  ], !dbg !4164

; <label>:24:                                     ; preds = %23, %23
  store i32 36, i32* %21, align 4, !dbg !4165, !tbaa !1028
  tail call fastcc void @sm_run() #15, !dbg !4167
  br label %58, !dbg !4168

; <label>:25:                                     ; preds = %17
  switch i32 %22, label %58 [
    i32 52, label %26
    i32 0, label %56
  ], !dbg !4169

; <label>:26:                                     ; preds = %25
  %27 = tail call fastcc zeroext i8 @sm_master_pair_get_list(%struct.sm_connection* nonnull %16) #15, !dbg !4170
  %28 = icmp eq i8 %27, 0, !dbg !4170
  br i1 %28, label %30, label %29, !dbg !4171

; <label>:29:                                     ; preds = %26
  store i32 53, i32* %21, align 4, !dbg !4172, !tbaa !1028
  br label %58, !dbg !4174

; <label>:30:                                     ; preds = %26
  %31 = bitcast i16* %2 to i8*, !dbg !4175
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %31) #14, !dbg !4175
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0, !dbg !4176
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #14, !dbg !4176
  %33 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %16, i32 0, i32 7, !dbg !4177
  %34 = load i32, i32* %33, align 4, !dbg !4177, !tbaa !869
  switch i32 %34, label %53 [
    i32 4, label %35
    i32 3, label %36
  ], !dbg !4178

; <label>:35:                                     ; preds = %30
  store i32 56, i32* %21, align 4, !dbg !4179, !tbaa !1028
  br label %55, !dbg !4181

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %16, i32 0, i32 16, !dbg !4182
  %38 = load i32, i32* %37, align 4, !dbg !4182, !tbaa !1170
  call void @llvm.dbg.value(metadata i16* %2, metadata !4135, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  call void @le_device_db_encryption_get(i32 %38, i16* nonnull %2, i8* null, i8* nonnull %32, i32* null, i32* null, i32* null) #15, !dbg !4184
  call void @llvm.dbg.value(metadata i8* %32, metadata !3212, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i8* %32, metadata !2456, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i32 16, metadata !2457, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()), !dbg !4191
  br label %41

; <label>:39:                                     ; preds = %41
  call void @llvm.dbg.value(metadata i32 %46, metadata !2458, metadata !DIExpression()), !dbg !4191
  %40 = icmp slt i32 %46, 16, !dbg !4192
  br i1 %40, label %41, label %47, !dbg !4193, !llvm.loop !2472

; <label>:41:                                     ; preds = %39, %36
  %42 = phi i32 [ %46, %39 ], [ 0, %36 ]
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 %42, !dbg !4194
  %44 = load i8, i8* %43, align 1, !dbg !4194, !tbaa !1142
  %45 = icmp eq i8 %44, 0, !dbg !4194
  %46 = add nuw nsw i32 %42, 1, !dbg !4195
  call void @llvm.dbg.value(metadata i32 %46, metadata !2458, metadata !DIExpression()), !dbg !4191
  br i1 %45, label %39, label %47, !dbg !4196

; <label>:47:                                     ; preds = %41, %39
  %48 = phi i1 [ true, %39 ], [ false, %41 ]
  %49 = load i16, i16* %2, align 2, !dbg !4197
  %50 = icmp eq i16 %49, 0, !dbg !4197
  %51 = and i1 %48, %50, !dbg !4199
  %52 = select i1 %51, i32 56, i32 53, !dbg !4199
  store i32 %52, i32* %21, align 4, !tbaa !1028
  br label %55, !dbg !4200

; <label>:53:                                     ; preds = %30
  %54 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %16, i32 0, i32 3, !dbg !4201
  store i8 1, i8* %54, align 4, !dbg !4202, !tbaa !4203
  br label %55, !dbg !4204

; <label>:55:                                     ; preds = %53, %47, %35
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #14, !dbg !4205
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %31) #14, !dbg !4205
  br label %58

; <label>:56:                                     ; preds = %25
  %57 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %16, i32 0, i32 3, !dbg !4206
  store i8 1, i8* %57, align 4, !dbg !4209, !tbaa !4203
  br label %58, !dbg !4210

; <label>:58:                                     ; preds = %56, %55, %29, %25, %24, %23
  call fastcc void @sm_run() #15, !dbg !4211
  br label %59, !dbg !4212

; <label>:59:                                     ; preds = %58, %9, %6, %1
  ret void, !dbg !4213
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @sm_api_request_pairing(i16 zeroext) local_unnamed_addr #0 section ".ble_sm_code" !dbg !4214 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4218, metadata !DIExpression()), !dbg !4220
  %2 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !4221, !tbaa !757
  %3 = icmp eq i32 %2, 0, !dbg !4221
  br i1 %3, label %12, label %4, !dbg !4223

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata i16 %0, metadata !1223, metadata !DIExpression()), !dbg !4224
  %5 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #15, !dbg !4226
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %5, metadata !1224, metadata !DIExpression()), !dbg !4227
  %6 = icmp eq %struct.__le_hci_connection* %5, null, !dbg !4228
  br i1 %6, label %12, label %7, !dbg !4229

; <label>:7:                                      ; preds = %4
  %8 = zext i16 %0 to i32, !dbg !4230
  %9 = tail call i32 (i32, i32, ...) @ble_user_cmd_prepare(i32 29, i32 2, i32 1, i32 %8) #15, !dbg !4232
  %10 = icmp eq i32 %9, 0, !dbg !4233
  %11 = zext i1 %10 to i8, !dbg !4234
  br label %12, !dbg !4234

; <label>:12:                                     ; preds = %7, %4, %1
  %13 = phi i8 [ 0, %1 ], [ 0, %4 ], [ %11, %7 ]
  ret i8 %13, !dbg !4236
}

; Function Attrs: optsize
declare i32 @ble_user_cmd_prepare(i32, i32, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @hci_get_state() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @hci_can_send_command_packet_now() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_d1_d_prime(i16 zeroext, i16 zeroext, i8*) unnamed_addr #0 section ".ble_sm_code" !dbg !4238 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4242, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i16 %1, metadata !4243, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i8* %2, metadata !4244, metadata !DIExpression()), !dbg !4247
  tail call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 1, i1 false), !dbg !4248
  tail call void @big_endian_store_16(i8* %2, i16 zeroext 12, i16 zeroext %1) #15, !dbg !4249
  tail call void @big_endian_store_16(i8* %2, i16 zeroext 14, i16 zeroext %0) #15, !dbg !4250
  ret void, !dbg !4251
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_aes128_start(i8*, i8*, i8*) unnamed_addr #0 section ".ble_sm_code" !dbg !4252 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i8* %1, metadata !4257, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i8* %2, metadata !4258, metadata !DIExpression()), !dbg !4263
  %6 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4264, !tbaa !716
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 25, !dbg !4265
  store i32 1, i32* %7, align 4, !dbg !4266, !tbaa !777
  %8 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %6, i32 0, i32 26, !dbg !4267
  store i8* %2, i8** %8, align 4, !dbg !4268, !tbaa !2742
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !4269
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #14, !dbg !4269
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !4259, metadata !DIExpression()), !dbg !4270
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0, !dbg !4269
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #14, !dbg !4269
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !4260, metadata !DIExpression()), !dbg !4271
  call void @reverse_128(i8* %0, i8* nonnull %9) #15, !dbg !4272
  call void @reverse_128(i8* %1, i8* nonnull %10) #15, !dbg !4273
  %11 = call i32 @ll_hci_encryption(i8* nonnull %9, i8* nonnull %10) #15, !dbg !4274
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #14, !dbg !4275
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #14, !dbg !4275
  ret void, !dbg !4275
}

; Function Attrs: optsize
declare void @ll_hci_set_random_address(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_empty(%struct.btstack_linked_item**) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @btstack_memory_sm_lookup_entry_free(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @le_device_db_count() local_unnamed_addr #2

; Function Attrs: optsize
declare void @le_device_db_info(i32, i32*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_address_resolution_handle_event(i32) unnamed_addr #0 section ".ble_sm_code" !dbg !4276 {
  %2 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4281, metadata !DIExpression()), !dbg !4288
  %3 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4289, !tbaa !716
  %4 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %3, i32 0, i32 18, !dbg !4290
  %5 = load i32, i32* %4, align 4, !dbg !4290, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %5, metadata !4282, metadata !DIExpression()), !dbg !4291
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %3, i32 0, i32 23, !dbg !4292
  %7 = load i32, i32* %6, align 4, !dbg !4292, !tbaa !857
  call void @llvm.dbg.value(metadata i32 %7, metadata !4283, metadata !DIExpression()), !dbg !4293
  %8 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %3, i32 0, i32 22, !dbg !4294
  %9 = bitcast i8** %8 to %struct.sm_connection**, !dbg !4294
  %10 = load %struct.sm_connection*, %struct.sm_connection** %9, align 4, !dbg !4294, !tbaa !906
  store i32 0, i32* %6, align 4, !dbg !4295, !tbaa !857
  store i8* null, i8** %8, align 4, !dbg !4296, !tbaa !906
  store i32 -1, i32* %4, align 4, !dbg !4297, !tbaa !901
  call void @llvm.dbg.value(metadata i16 0, metadata !4285, metadata !DIExpression()), !dbg !4298
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0, !dbg !4299
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #14, !dbg !4299
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !4287, metadata !DIExpression()), !dbg !4300
  %12 = icmp eq i32 %7, 2, !dbg !4301
  br i1 %12, label %13, label %67, !dbg !4301

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.value(metadata %struct.sm_connection* %10, metadata !4286, metadata !DIExpression()), !dbg !4302
  %14 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 0, !dbg !4303
  %15 = load i16, i16* %14, align 4, !dbg !4303, !tbaa !878
  call void @llvm.dbg.value(metadata i16 %15, metadata !4285, metadata !DIExpression()), !dbg !4298
  switch i32 %0, label %67 [
    i32 0, label %16
    i32 1, label %47
  ], !dbg !4305

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 7, !dbg !4306
  store i32 3, i32* %17, align 4, !dbg !4308, !tbaa !869
  %18 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 16, !dbg !4309
  store i32 %5, i32* %18, align 4, !dbg !4310, !tbaa !1170
  %19 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 1, !dbg !4311
  %20 = load i8, i8* %19, align 2, !dbg !4311, !tbaa !1266
  %21 = icmp eq i8 %20, 0, !dbg !4313
  br i1 %21, label %27, label %22, !dbg !4314

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 6, !dbg !4315
  %24 = load i32, i32* %23, align 4, !dbg !4315, !tbaa !1028
  %25 = icmp eq i32 %24, 38, !dbg !4318
  br i1 %25, label %26, label %73, !dbg !4319

; <label>:26:                                     ; preds = %22
  store i32 37, i32* %23, align 4, !dbg !4320, !tbaa !1028
  br label %73, !dbg !4322

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 3, !dbg !4323
  %29 = load i8, i8* %28, align 4, !dbg !4323, !tbaa !4203
  %30 = icmp eq i8 %29, 0, !dbg !4325
  %31 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 2
  br i1 %30, label %32, label %35, !dbg !4326

; <label>:32:                                     ; preds = %27
  %33 = load i8, i8* %31, align 1, !dbg !4327, !tbaa !3236
  %34 = icmp eq i8 %33, 0, !dbg !4329
  br i1 %34, label %73, label %35, !dbg !4330

; <label>:35:                                     ; preds = %32, %27
  store i8 0, i8* %31, align 1, !dbg !4332, !tbaa !3236
  store i8 0, i8* %28, align 4, !dbg !4333, !tbaa !4203
  call void @le_device_db_encryption_get(i32 %5, i16* null, i8* null, i8* nonnull %11, i32* null, i32* null, i32* null) #15, !dbg !4334
  call void @llvm.dbg.value(metadata i8* %11, metadata !3212, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i8* %11, metadata !2456, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 16, metadata !2457, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()), !dbg !4341
  br label %38

; <label>:36:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i32 %43, metadata !2458, metadata !DIExpression()), !dbg !4341
  %37 = icmp slt i32 %43, 16, !dbg !4342
  br i1 %37, label %38, label %44, !dbg !4343, !llvm.loop !2472

; <label>:38:                                     ; preds = %36, %35
  %39 = phi i32 [ %43, %36 ], [ 0, %35 ]
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 %39, !dbg !4344
  %41 = load i8, i8* %40, align 1, !dbg !4344, !tbaa !1142
  %42 = icmp eq i8 %41, 0, !dbg !4344
  %43 = add nuw nsw i32 %39, 1, !dbg !4345
  call void @llvm.dbg.value(metadata i32 %43, metadata !2458, metadata !DIExpression()), !dbg !4341
  br i1 %42, label %36, label %44, !dbg !4346

; <label>:44:                                     ; preds = %38, %36
  %45 = phi i32 [ 56, %36 ], [ 53, %38 ]
  %46 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 6
  store i32 %45, i32* %46, align 4, !tbaa !1028
  br label %67, !dbg !4347

; <label>:47:                                     ; preds = %13
  %48 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 7, !dbg !4348
  store i32 4, i32* %48, align 4, !dbg !4349, !tbaa !869
  %49 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 1, !dbg !4350
  %50 = load i8, i8* %49, align 2, !dbg !4350, !tbaa !1266
  %51 = icmp eq i8 %50, 0, !dbg !4352
  br i1 %51, label %57, label %52, !dbg !4353

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 6, !dbg !4354
  %54 = load i32, i32* %53, align 4, !dbg !4354, !tbaa !1028
  %55 = icmp eq i32 %54, 38, !dbg !4357
  br i1 %55, label %56, label %80, !dbg !4358

; <label>:56:                                     ; preds = %52
  store i32 39, i32* %53, align 4, !dbg !4359, !tbaa !1028
  br label %80, !dbg !4361

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 3, !dbg !4362
  %59 = load i8, i8* %58, align 4, !dbg !4362, !tbaa !4203
  %60 = icmp eq i8 %59, 0, !dbg !4364
  %61 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 2
  br i1 %60, label %62, label %65, !dbg !4365

; <label>:62:                                     ; preds = %57
  %63 = load i8, i8* %61, align 1, !dbg !4366, !tbaa !3236
  %64 = icmp eq i8 %63, 0, !dbg !4368
  br i1 %64, label %80, label %65, !dbg !4369

; <label>:65:                                     ; preds = %62, %57
  store i8 0, i8* %61, align 1, !dbg !4370, !tbaa !3236
  store i8 0, i8* %58, align 4, !dbg !4371, !tbaa !4203
  %66 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 6, !dbg !4372
  store i32 56, i32* %66, align 4, !dbg !4373, !tbaa !1028
  br label %80, !dbg !4374

; <label>:67:                                     ; preds = %44, %13, %1
  %68 = phi i16 [ %15, %13 ], [ %15, %44 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i16 %68, metadata !4285, metadata !DIExpression()), !dbg !4298
  switch i32 %0, label %86 [
    i32 0, label %69
    i32 1, label %71
  ], !dbg !4375

; <label>:69:                                     ; preds = %67
  %70 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %73, !dbg !4375

; <label>:71:                                     ; preds = %67
  %72 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %80, !dbg !4375

; <label>:73:                                     ; preds = %69, %32, %26, %22
  %74 = phi %struct.sm_info_t* [ %70, %69 ], [ %3, %32 ], [ %3, %26 ], [ %3, %22 ], !dbg !4376
  %75 = phi i16 [ %68, %69 ], [ %15, %32 ], [ %15, %26 ], [ %15, %22 ]
  %76 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %74, i32 0, i32 20, !dbg !4378
  %77 = load i8, i8* %76, align 4, !dbg !4378, !tbaa !898
  %78 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %74, i32 0, i32 21, i32 0, !dbg !4379
  %79 = trunc i32 %5 to i16, !dbg !4380
  call fastcc void @sm_notify_client_index(i8 zeroext -38, i16 zeroext %75, i8 zeroext %77, i8* %78, i16 zeroext %79) #16, !dbg !4381
  br label %86, !dbg !4382

; <label>:80:                                     ; preds = %71, %65, %62, %56, %52
  %81 = phi %struct.sm_info_t* [ %72, %71 ], [ %3, %62 ], [ %3, %65 ], [ %3, %56 ], [ %3, %52 ], !dbg !4383
  %82 = phi i16 [ %68, %71 ], [ %15, %62 ], [ %15, %65 ], [ %15, %56 ], [ %15, %52 ]
  %83 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %81, i32 0, i32 20, !dbg !4384
  %84 = load i8, i8* %83, align 4, !dbg !4384, !tbaa !898
  %85 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %81, i32 0, i32 21, i32 0, !dbg !4385
  call fastcc void @sm_notify_client_base(i8 zeroext -39, i16 zeroext %82, i8 zeroext %84, i8* %85) #16, !dbg !4386
  br label %86, !dbg !4387

; <label>:86:                                     ; preds = %80, %73, %67
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #14, !dbg !4388
  ret void, !dbg !4388
}

; Function Attrs: optsize
declare i32 @ll_hci_long_term_key_request_nagative_reply(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_notify_client_process(i16 zeroext, i8 zeroext, i8*, i32) unnamed_addr #0 section ".ble_sm_code" !dbg !4389 {
  %5 = alloca [4 x i32], align 4
  call void @llvm.dbg.value(metadata i8 -33, metadata !4393, metadata !DIExpression()), !dbg !4400
  %6 = bitcast [4 x i32]* %5 to i8*, !dbg !4401
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14, !dbg !4401
  tail call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !4398, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i8* %6, metadata !3730, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata i32 16, metadata !3735, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i8 -33, metadata !3736, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i16 %0, metadata !3737, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i8 %1, metadata !3738, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i8* %2, metadata !3739, metadata !DIExpression()), !dbg !4409
  store i8 -33, i8* %6, align 4, !dbg !4410, !tbaa !1142
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !4411
  store i8 14, i8* %7, align 1, !dbg !4412, !tbaa !1142
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 2, i16 zeroext %0) #15, !dbg !4413
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 1, !dbg !4414
  %9 = bitcast i32* %8 to i8*, !dbg !4414
  store i8 %1, i8* %9, align 4, !dbg !4415, !tbaa !1142
  %10 = getelementptr inbounds i8, i8* %6, i32 5, !dbg !4416
  call void @reverse_bd_addr(i8* %2, i8* %10) #15, !dbg !4417
  call void @little_endian_store_32(i8* nonnull %6, i16 zeroext 11, i32 %3) #15, !dbg !4418
  call fastcc void @sm_dispatch_event(i8* nonnull %6, i16 zeroext 16) #16, !dbg !4419
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14, !dbg !4420
  ret void, !dbg !4420
}

; Function Attrs: optsize
declare i32 @l2cap_can_send_fixed_channel_packet_now(i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @l2cap_send_connectionless(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @l2cap_request_can_send_fix_channel_now_event(i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_init_setup(%struct.sm_connection*) unnamed_addr #0 section ".ble_sm_code" !dbg !4421 {
  call void @llvm.dbg.value(metadata %struct.sm_connection* %0, metadata !4423, metadata !DIExpression()), !dbg !4431
  %2 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 4, !dbg !4432
  %3 = load i8, i8* %2, align 1, !dbg !4432, !tbaa !876
  %4 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4433, !tbaa !716
  %5 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %4, i32 0, i32 0, i32 37, !dbg !4434
  store i8 %3, i8* %5, align 2, !dbg !4435, !tbaa !1823
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %4, i32 0, i32 0, i32 38, i32 0, !dbg !4436
  %7 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4436
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 6, i32 1, i1 false), !dbg !4436
  call void @llvm.dbg.value(metadata i32 0, metadata !4424, metadata !DIExpression()), !dbg !4437
  %8 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %4, i32 0, i32 32, !dbg !4438
  %9 = load i32 (i8, i8*, i8*)*, i32 (i8, i8*, i8*)** %8, align 4, !dbg !4438, !tbaa !1884
  %10 = icmp eq i32 (i8, i8*, i8*)* %9, null, !dbg !4440
  br i1 %10, label %17, label %11, !dbg !4441

; <label>:11:                                     ; preds = %1
  %12 = load i8, i8* %2, align 1, !dbg !4442, !tbaa !876
  %13 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %4, i32 0, i32 0, i32 8, i32 0, !dbg !4444
  %14 = tail call i32 %9(i8 zeroext %12, i8* %7, i8* %13) #15, !dbg !4445
  call void @llvm.dbg.value(metadata i32 %14, metadata !4424, metadata !DIExpression()), !dbg !4437
  %15 = trunc i32 %14 to i8, !dbg !4446
  %16 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %17, !dbg !4446

; <label>:17:                                     ; preds = %11, %1
  %18 = phi %struct.sm_info_t* [ %16, %11 ], [ %4, %1 ]
  %19 = phi i8 [ %15, %11 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 1, !dbg !4447
  %21 = load i8, i8* %20, align 2, !dbg !4447, !tbaa !1266
  %22 = icmp eq i8 %21, 0, !dbg !4447
  %23 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 0, !dbg !4448
  %24 = load i16, i16* %23, align 4, !dbg !4448
  br i1 %22, label %33, label %25, !dbg !4449

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %18, i32 0, i32 0, i32 12, !dbg !4450
  call void @llvm.dbg.value(metadata [7 x i8]* %26, metadata !4425, metadata !DIExpression()), !dbg !4452
  %27 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %18, i32 0, i32 0, i32 18, !dbg !4453
  %28 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %18, i32 0, i32 0, i32 20, i32 0, !dbg !4454
  tail call void @gap_le_get_own_address(i16 zeroext %24, i8* %27, i8* %28) #15, !dbg !4455
  %29 = load i8, i8* %2, align 1, !dbg !4456, !tbaa !876
  %30 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4457, !tbaa !716
  %31 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %30, i32 0, i32 0, i32 17, !dbg !4458
  store i8 %29, i8* %31, align 1, !dbg !4459, !tbaa !1484
  %32 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %30, i32 0, i32 0, i32 19, i32 0, !dbg !4460
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* nonnull %7, i32 6, i32 1, i1 false), !dbg !4460
  br label %49, !dbg !4461

; <label>:33:                                     ; preds = %17
  %34 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %18, i32 0, i32 0, i32 11, !dbg !4462
  call void @llvm.dbg.value(metadata [7 x i8]* %34, metadata !4425, metadata !DIExpression()), !dbg !4452
  %35 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %18, i32 0, i32 0, i32 17, !dbg !4463
  %36 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %18, i32 0, i32 0, i32 19, i32 0, !dbg !4464
  tail call void @gap_le_get_own_address(i16 zeroext %24, i8* %35, i8* %36) #15, !dbg !4465
  %37 = load i8, i8* %2, align 1, !dbg !4466, !tbaa !876
  %38 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4467, !tbaa !716
  %39 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %38, i32 0, i32 0, i32 18, !dbg !4468
  store i8 %37, i8* %39, align 4, !dbg !4469, !tbaa !1486
  %40 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %38, i32 0, i32 0, i32 20, i32 0, !dbg !4470
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* nonnull %7, i32 6, i32 1, i1 false), !dbg !4470
  call void @llvm.dbg.value(metadata i32 6, metadata !1322, metadata !DIExpression()), !dbg !4471
  %41 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %38, i32 0, i32 5, !dbg !4473
  %42 = load i8, i8* %41, align 4, !dbg !4473, !tbaa !1330
  %43 = and i8 %42, 1, !dbg !4474
  call void @llvm.dbg.value(metadata i32 7, metadata !1322, metadata !DIExpression()), !dbg !4471
  %44 = or i8 %43, 6, !dbg !4475
  %45 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %38, i32 0, i32 0, i32 11, i32 0, !dbg !4476
  tail call fastcc void @sm_pairing_packet_set_initiator_key_distribution(i8* %45, i8 zeroext %44) #16, !dbg !4477
  %46 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4478, !tbaa !716
  %47 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %46, i32 0, i32 0, i32 11, i32 0, !dbg !4478
  tail call fastcc void @sm_pairing_packet_set_responder_key_distribution(i8* %47, i8 zeroext %44) #16, !dbg !4479
  %48 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %49

; <label>:49:                                     ; preds = %33, %25
  %50 = phi %struct.sm_info_t* [ %30, %25 ], [ %48, %33 ], !dbg !4480
  %51 = phi [7 x i8]* [ %26, %25 ], [ %34, %33 ]
  call void @llvm.dbg.value(metadata [7 x i8]* %51, metadata !4425, metadata !DIExpression()), !dbg !4452
  %52 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %50, i32 0, i32 5, !dbg !4481
  %53 = load i8, i8* %52, align 4, !dbg !4481, !tbaa !1330
  call void @llvm.dbg.value(metadata i8 %53, metadata !4430, metadata !DIExpression()), !dbg !4482
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %51, i32 0, i32 0, !dbg !4483
  %55 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %50, i32 0, i32 6, !dbg !4484
  %56 = load i8, i8* %55, align 1, !dbg !4484, !tbaa !1953
  tail call fastcc void @sm_pairing_packet_set_io_capability(i8* %54, i8 zeroext %56) #16, !dbg !4485
  tail call fastcc void @sm_pairing_packet_set_oob_data_flag(i8* %54, i8 zeroext %19) #16, !dbg !4486
  tail call fastcc void @sm_pairing_packet_set_auth_req(i8* %54, i8 zeroext %53) #16, !dbg !4487
  %57 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4488, !tbaa !716
  %58 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %57, i32 0, i32 3, !dbg !4489
  %59 = load i8, i8* %58, align 2, !dbg !4489, !tbaa !1919
  tail call fastcc void @sm_pairing_packet_set_max_encryption_key_size(i8* %54, i8 zeroext %59) #16, !dbg !4490
  ret void, !dbg !4491
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @sm_stk_generation_init(%struct.sm_connection* nocapture) unnamed_addr #0 section ".ble_sm_code" !dbg !4492 {
  call void @llvm.dbg.value(metadata %struct.sm_connection* %0, metadata !4496, metadata !DIExpression()), !dbg !4499
  %2 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 1, !dbg !4500
  %3 = load i8, i8* %2, align 2, !dbg !4500, !tbaa !1266
  %4 = icmp eq i8 %3, 0, !dbg !4500
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br i1 %4, label %10, label %6, !dbg !4502

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 11, !dbg !4503
  call void @llvm.dbg.value(metadata [7 x i8]* %7, metadata !4497, metadata !DIExpression()), !dbg !4505
  %8 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i32 0, i32 0, !dbg !4506
  %9 = tail call fastcc zeroext i8 @sm_pairing_packet_get_responder_key_distribution(i8* %8) #16, !dbg !4507
  br label %14, !dbg !4508

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 12, !dbg !4509
  call void @llvm.dbg.value(metadata [7 x i8]* %11, metadata !4497, metadata !DIExpression()), !dbg !4505
  %12 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i32 0, i32 0, !dbg !4511
  %13 = tail call fastcc zeroext i8 @sm_pairing_packet_get_initiator_key_distribution(i8* %12) #16, !dbg !4512
  br label %14

; <label>:14:                                     ; preds = %10, %6
  %15 = phi [7 x i8]* [ %7, %6 ], [ %11, %10 ]
  %16 = phi i8 [ %9, %6 ], [ %13, %10 ]
  call void @llvm.dbg.value(metadata [7 x i8]* %15, metadata !4497, metadata !DIExpression()), !dbg !4505
  %17 = getelementptr inbounds [7 x i8], [7 x i8]* %15, i32 0, i32 0, !dbg !4513
  %18 = tail call fastcc zeroext i8 @sm_pairing_packet_get_max_encryption_key_size(i8* %17) #16, !dbg !4514
  %19 = zext i8 %18 to i32, !dbg !4514
  call void @llvm.dbg.value(metadata i32 %19, metadata !4515, metadata !DIExpression()), !dbg !4520
  %20 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 4, !dbg !4523
  %21 = load i8, i8* %20, align 1, !dbg !4523, !tbaa !1916
  %22 = icmp ugt i8 %21, %18, !dbg !4525
  br i1 %22, label %23, label %25, !dbg !4526

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 10, !dbg !4527
  store i8 0, i8* %24, align 2, !dbg !4528, !tbaa !1140
  br label %103, !dbg !4529

; <label>:25:                                     ; preds = %14
  %26 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 3, !dbg !4530
  %27 = load i8, i8* %26, align 2, !dbg !4530, !tbaa !1919
  %28 = zext i8 %27 to i32, !dbg !4532
  %29 = icmp ugt i32 %28, %19, !dbg !4533
  %30 = select i1 %29, i32 %19, i32 %28, !dbg !4534
  %31 = trunc i32 %30 to i8, !dbg !4536
  %32 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 10, !dbg !4527
  store i8 %31, i8* %32, align 2, !dbg !4528, !tbaa !1140
  %33 = icmp eq i32 %30, 0, !dbg !4537
  br i1 %33, label %103, label %34, !dbg !4529

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 7, !dbg !4539
  store i32 0, i32* %35, align 4, !dbg !4546, !tbaa !1110
  %36 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 9, !dbg !4547
  store i8 0, i8* %36, align 4, !dbg !4548, !tbaa !1336
  %37 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 11, i32 0, !dbg !4549
  %38 = tail call fastcc zeroext i8 @sm_pairing_packet_get_oob_data_flag(i8* %37) #15, !dbg !4551
  %39 = icmp eq i8 %38, 0, !dbg !4551
  br i1 %39, label %45, label %40, !dbg !4552

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 12, i32 0, !dbg !4553
  %42 = tail call fastcc zeroext i8 @sm_pairing_packet_get_oob_data_flag(i8* %41) #15, !dbg !4555
  %43 = icmp eq i8 %42, 0, !dbg !4555
  br i1 %43, label %45, label %44, !dbg !4556

; <label>:44:                                     ; preds = %40
  store i32 5, i32* %35, align 4, !dbg !4558, !tbaa !1110
  br label %74, !dbg !4560

; <label>:45:                                     ; preds = %40, %34
  %46 = tail call fastcc zeroext i8 @sm_pairing_packet_get_auth_req(i8* %37) #15, !dbg !4564
  %47 = and i8 %46, 4, !dbg !4566
  %48 = icmp eq i8 %47, 0, !dbg !4567
  br i1 %48, label %49, label %54, !dbg !4568

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 12, i32 0, !dbg !4569
  %51 = tail call fastcc zeroext i8 @sm_pairing_packet_get_auth_req(i8* %50) #15, !dbg !4571
  %52 = and i8 %51, 4, !dbg !4572
  %53 = icmp eq i8 %52, 0, !dbg !4573
  br i1 %53, label %67, label %54, !dbg !4574

; <label>:54:                                     ; preds = %49, %45
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !4575
  %55 = getelementptr %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 8, i32 0, !dbg !4577
  tail call void @llvm.memset.p0i8.i32(i8* %55, i8 0, i32 16, i32 1, i1 false) #14, !dbg !4578
  %56 = tail call fastcc zeroext i8 @sm_pairing_packet_get_io_capability(i8* %37) #15, !dbg !4579
  %57 = icmp ugt i8 %56, 4, !dbg !4581
  br i1 %57, label %67, label %58, !dbg !4582

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 12, i32 0, !dbg !4583
  %60 = tail call fastcc zeroext i8 @sm_pairing_packet_get_io_capability(i8* %59) #15, !dbg !4585
  %61 = icmp ugt i8 %60, 4, !dbg !4586
  br i1 %61, label %67, label %62, !dbg !4587

; <label>:62:                                     ; preds = %58
  %63 = zext i8 %60 to i32, !dbg !4588
  %64 = zext i8 %56 to i32, !dbg !4588
  %65 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @stk_generation_method, i32 0, i32 %63, i32 %64, !dbg !4588
  %66 = load i32, i32* %65, align 4, !dbg !4588, !tbaa !1142
  store i32 %66, i32* %35, align 4, !dbg !4589, !tbaa !1110
  switch i32 %66, label %103 [
    i32 0, label %67
    i32 1, label %70
    i32 2, label %70
    i32 3, label %70
    i32 5, label %74
    i32 4, label %78
  ], !dbg !4560

; <label>:67:                                     ; preds = %62, %58, %54, %49
  %68 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 2, !dbg !4590
  %69 = load i8, i8* %68, align 1, !dbg !4590, !tbaa !1898
  br label %82, !dbg !4592

; <label>:70:                                     ; preds = %62, %62, %62
  %71 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 2, !dbg !4593
  %72 = load i8, i8* %71, align 1, !dbg !4593, !tbaa !1898
  %73 = lshr i8 %72, 2, !dbg !4594
  br label %82, !dbg !4595

; <label>:74:                                     ; preds = %62, %44
  %75 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 2, !dbg !4596
  %76 = load i8, i8* %75, align 1, !dbg !4596, !tbaa !1898
  %77 = lshr i8 %76, 1, !dbg !4597
  br label %82, !dbg !4598

; <label>:78:                                     ; preds = %62
  %79 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 2, !dbg !4599
  %80 = load i8, i8* %79, align 1, !dbg !4599, !tbaa !1898
  %81 = lshr i8 %80, 3, !dbg !4600
  br label %82, !dbg !4601

; <label>:82:                                     ; preds = %78, %74, %70, %67
  %83 = phi i8 [ %69, %67 ], [ %73, %70 ], [ %77, %74 ], [ %81, %78 ]
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0, !dbg !4602
  br i1 %85, label %103, label %86, !dbg !4603

; <label>:86:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i8 %16, metadata !1352, metadata !DIExpression()), !dbg !4604
  %87 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 6, !dbg !4606
  store i8 0, i8* %87, align 1, !dbg !4607, !tbaa !1361
  call void @llvm.dbg.value(metadata i8 %16, metadata !1362, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i32 0, metadata !1367, metadata !DIExpression()), !dbg !4610
  %88 = zext i8 %16 to i32, !dbg !4611
  %89 = and i32 %88, 1, !dbg !4612
  %90 = icmp eq i32 %89, 0, !dbg !4612
  call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 3, metadata !1367, metadata !DIExpression()), !dbg !4610
  %91 = select i1 %90, i32 0, i32 3, !dbg !4613
  call void @llvm.dbg.value(metadata i32 %91, metadata !1367, metadata !DIExpression()), !dbg !4610
  %92 = and i32 %88, 2, !dbg !4614
  %93 = icmp eq i32 %92, 0, !dbg !4614
  %94 = or i32 %91, 12, !dbg !4615
  call void @llvm.dbg.value(metadata i32 %94, metadata !1367, metadata !DIExpression()), !dbg !4610
  %95 = select i1 %93, i32 %91, i32 %94, !dbg !4616
  call void @llvm.dbg.value(metadata i32 %95, metadata !1367, metadata !DIExpression()), !dbg !4610
  %96 = shl nuw nsw i32 %88, 2, !dbg !4617
  %97 = and i32 %96, 16, !dbg !4617
  %98 = or i32 %95, %97, !dbg !4617
  call void @llvm.dbg.value(metadata i32 %98, metadata !1367, metadata !DIExpression()), !dbg !4610
  %99 = trunc i32 %98 to i8, !dbg !4618
  %100 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 4, !dbg !4619
  store i8 %99, i8* %100, align 1, !dbg !4620, !tbaa !1384
  %101 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 5, !dbg !4621
  store i8 %99, i8* %101, align 4, !dbg !4622, !tbaa !1387
  %102 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 9, !dbg !4623
  store i8 1, i8* %102, align 1, !dbg !4624, !tbaa !1146
  br label %103, !dbg !4625

; <label>:103:                                    ; preds = %86, %82, %62, %25, %23
  %104 = phi i32 [ 0, %86 ], [ 6, %25 ], [ 3, %82 ], [ 6, %23 ], [ 3, %62 ]
  ret i32 %104, !dbg !4626
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_timeout_start(%struct.sm_connection*) unnamed_addr #0 section ".ble_sm_code" !dbg !4627 {
  call void @llvm.dbg.value(metadata %struct.sm_connection* %0, metadata !4629, metadata !DIExpression()), !dbg !4630
  %2 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4631, !tbaa !716
  %3 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 0, i32 0, !dbg !4634
  %4 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* %3) #15, !dbg !4635
  %5 = load i8*, i8** bitcast (%struct.sm_info_t** @sm_global_info to i8**), align 4, !dbg !4636, !tbaa !716
  %6 = bitcast i8* %5 to i64*, !dbg !4637
  store i64 0, i64* %6, align 4, !dbg !4637
  %7 = getelementptr inbounds i8, i8* %5, i32 8, !dbg !4638
  %8 = bitcast i8* %7 to i32*, !dbg !4638
  store i32 30, i32* %8, align 4, !dbg !4639
  %9 = getelementptr inbounds i8, i8* %5, i32 12, !dbg !4640
  %10 = bitcast i8* %9 to void (%struct.btstack_timer_source*)**, !dbg !4640
  store void (%struct.btstack_timer_source*)* @sm_timeout_handler, void (%struct.btstack_timer_source*)** %10, align 4, !dbg !4641, !tbaa !4642
  %11 = getelementptr inbounds i8, i8* %5, i32 16, !dbg !4643
  %12 = bitcast i8* %11 to %struct.sm_connection**, !dbg !4644
  store %struct.sm_connection* %0, %struct.sm_connection** %12, align 4, !dbg !4644, !tbaa !4645
  %13 = bitcast i8* %5 to %struct.btstack_timer_source*, !dbg !4646
  tail call void @btstack_set_timer(%struct.btstack_timer_source* %13, i16 signext 131) #15, !dbg !4647
  ret void, !dbg !4648
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_done_for_handle(i16 zeroext) unnamed_addr #0 section ".ble_sm_code" !dbg !4649 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4651, metadata !DIExpression()), !dbg !4652
  %2 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4653, !tbaa !716
  %3 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 31, !dbg !4655
  %4 = load i16, i16* %3, align 4, !dbg !4655, !tbaa !1017
  %5 = icmp eq i16 %4, %0, !dbg !4656
  br i1 %5, label %6, label %11, !dbg !4657

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 0, i32 0, !dbg !4658
  %8 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* %7) #15, !dbg !4661
  %9 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4662, !tbaa !716
  %10 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %9, i32 0, i32 31, !dbg !4663
  store i16 -1, i16* %10, align 4, !dbg !4664, !tbaa !1017
  br label %11, !dbg !4665

; <label>:11:                                     ; preds = %6, %1
  ret void, !dbg !4666
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_set_timeout_disconnect(i32, i8 zeroext) unnamed_addr #0 section ".ble_sm_code" !dbg !4667 {
  call void @llvm.dbg.value(metadata i32 300, metadata !4672, metadata !DIExpression()), !dbg !4675
  %3 = trunc i32 %0 to i16, !dbg !4676
  call void @llvm.dbg.value(metadata i16 %3, metadata !1223, metadata !DIExpression()), !dbg !4677
  %4 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %3) #15, !dbg !4679
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %4, metadata !1224, metadata !DIExpression()), !dbg !4680
  %5 = icmp eq %struct.__le_hci_connection* %4, null, !dbg !4681
  %6 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %4, i32 0, i32 11, !dbg !4682
  %7 = select i1 %5, %struct.sm_connection* null, %struct.sm_connection* %6, !dbg !4683
  call void @llvm.dbg.value(metadata %struct.sm_connection* %7, metadata !4674, metadata !DIExpression()), !dbg !4684
  br i1 %5, label %19, label %8, !dbg !4685

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %7, i32 0, i32 17, !dbg !4686
  %10 = load i32, i32* %9, align 4, !dbg !4686, !tbaa !2370
  %11 = icmp eq i32 %10, 0, !dbg !4688
  br i1 %11, label %14, label %12, !dbg !4689

; <label>:12:                                     ; preds = %8
  %13 = trunc i32 %10 to i16, !dbg !4690
  tail call void @sys_timer_del(i16 zeroext %13) #15, !dbg !4692
  store i32 0, i32* %9, align 4, !dbg !4693, !tbaa !2370
  br label %14, !dbg !4694

; <label>:14:                                     ; preds = %12, %8
  %15 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %7, i32 0, i32 15, !dbg !4695
  store i8 %1, i8* %15, align 2, !dbg !4696, !tbaa !4697
  %16 = inttoptr i32 %0 to i8*, !dbg !4698
  %17 = tail call zeroext i16 @sys_timeout_add(i8* %16, void (i8*)* bitcast (void (i32)* @sm_disconnect to void (i8*)*), i32 300) #15, !dbg !4701
  %18 = zext i16 %17 to i32, !dbg !4701
  store i32 %18, i32* %9, align 4, !dbg !4702, !tbaa !2370
  br label %19, !dbg !4703

; <label>:19:                                     ; preds = %14, %2
  ret void, !dbg !4704
}

; Function Attrs: optsize
declare void @reverse_128(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @big_endian_read_32(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ll_hci_start_encryption(i16 zeroext, i32, i32, i16 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @sm_pairing_packet_set_code(i8* nocapture, i8 zeroext) unnamed_addr #7 !dbg !4706 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4710, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i8 %1, metadata !4711, metadata !DIExpression()), !dbg !4713
  store i8 %1, i8* %0, align 1, !dbg !4714, !tbaa !1142
  ret void, !dbg !4715
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @sm_pairing_packet_set_initiator_key_distribution(i8* nocapture, i8 zeroext) unnamed_addr #7 !dbg !4716 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4718, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i8 %1, metadata !4719, metadata !DIExpression()), !dbg !4721
  %3 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !4722
  store i8 %1, i8* %3, align 1, !dbg !4723, !tbaa !1142
  ret void, !dbg !4724
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @sm_pairing_packet_get_initiator_key_distribution(i8* nocapture readonly) unnamed_addr #11 !dbg !4725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4729, metadata !DIExpression()), !dbg !4730
  %2 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !4731
  %3 = load i8, i8* %2, align 1, !dbg !4731, !tbaa !1142
  ret i8 %3, !dbg !4732
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @sm_pairing_packet_set_responder_key_distribution(i8* nocapture, i8 zeroext) unnamed_addr #7 !dbg !4733 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4735, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.value(metadata i8 %1, metadata !4736, metadata !DIExpression()), !dbg !4738
  %3 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !4739
  store i8 %1, i8* %3, align 1, !dbg !4740, !tbaa !1142
  ret void, !dbg !4741
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @sm_pairing_packet_get_responder_key_distribution(i8* nocapture readonly) unnamed_addr #11 !dbg !4742 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4744, metadata !DIExpression()), !dbg !4745
  %2 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !4746
  %3 = load i8, i8* %2, align 1, !dbg !4746, !tbaa !1142
  ret i8 %3, !dbg !4747
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_trigger_user_response(%struct.sm_connection*) unnamed_addr #0 section ".ble_sm_code" !dbg !4748 {
  call void @llvm.dbg.value(metadata %struct.sm_connection* %0, metadata !4750, metadata !DIExpression()), !dbg !4751
  %2 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4752, !tbaa !716
  %3 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 0, i32 2, !dbg !4753
  store i8 0, i8* %3, align 1, !dbg !4754, !tbaa !2998
  %4 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 0, i32 7, !dbg !4755
  %5 = load i32, i32* %4, align 4, !dbg !4755, !tbaa !1110
  switch i32 %5, label %54 [
    i32 1, label %6
    i32 2, label %20
    i32 3, label %34
    i32 4, label %40
    i32 0, label %48
  ], !dbg !4756

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 1, !dbg !4757
  %8 = load i8, i8* %7, align 2, !dbg !4757, !tbaa !1266
  %9 = icmp eq i8 %8, 0, !dbg !4757
  %10 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 0, !dbg !4760
  %11 = load i16, i16* %10, align 4, !dbg !4760
  %12 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 4, !dbg !4762
  %13 = load i8, i8* %12, align 1, !dbg !4762
  br i1 %9, label %16, label %14, !dbg !4763

; <label>:14:                                     ; preds = %6
  store i8 1, i8* %3, align 1, !dbg !4764, !tbaa !2998
  %15 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4766
  tail call fastcc void @sm_notify_client_base(i8 zeroext -44, i16 zeroext %11, i8 zeroext %13, i8* %15) #16, !dbg !4767
  br label %54, !dbg !4768

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4769
  %18 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 0, i32 8, i32 0, !dbg !4770
  %19 = tail call i32 @big_endian_read_32(i8* %18, i32 12) #15, !dbg !4771
  tail call fastcc void @sm_notify_client_passkey(i8 zeroext -46, i16 zeroext %11, i8 zeroext %13, i8* %17, i32 %19) #16, !dbg !4772
  br label %54

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 1, !dbg !4774
  %22 = load i8, i8* %21, align 2, !dbg !4774, !tbaa !1266
  %23 = icmp eq i8 %22, 0, !dbg !4774
  %24 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 0, !dbg !4776
  %25 = load i16, i16* %24, align 4, !dbg !4776
  %26 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 4, !dbg !4778
  %27 = load i8, i8* %26, align 1, !dbg !4778
  br i1 %23, label %32, label %28, !dbg !4779

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4780
  %30 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 0, i32 8, i32 0, !dbg !4782
  %31 = tail call i32 @big_endian_read_32(i8* %30, i32 12) #15, !dbg !4783
  tail call fastcc void @sm_notify_client_passkey(i8 zeroext -46, i16 zeroext %25, i8 zeroext %27, i8* %29, i32 %31) #16, !dbg !4784
  br label %54, !dbg !4786

; <label>:32:                                     ; preds = %20
  store i8 1, i8* %3, align 1, !dbg !4787, !tbaa !2998
  %33 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4788
  tail call fastcc void @sm_notify_client_base(i8 zeroext -44, i16 zeroext %25, i8 zeroext %27, i8* %33) #16, !dbg !4789
  br label %54

; <label>:34:                                     ; preds = %1
  store i8 1, i8* %3, align 1, !dbg !4790, !tbaa !2998
  %35 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 0, !dbg !4791
  %36 = load i16, i16* %35, align 4, !dbg !4791, !tbaa !878
  %37 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 4, !dbg !4792
  %38 = load i8, i8* %37, align 1, !dbg !4792, !tbaa !876
  %39 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4793
  tail call fastcc void @sm_notify_client_base(i8 zeroext -44, i16 zeroext %36, i8 zeroext %38, i8* %39) #16, !dbg !4794
  br label %54, !dbg !4795

; <label>:40:                                     ; preds = %1
  store i8 1, i8* %3, align 1, !dbg !4796, !tbaa !2998
  %41 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 0, !dbg !4797
  %42 = load i16, i16* %41, align 4, !dbg !4797, !tbaa !878
  %43 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 4, !dbg !4798
  %44 = load i8, i8* %43, align 1, !dbg !4798, !tbaa !876
  %45 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4799
  %46 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %2, i32 0, i32 0, i32 8, i32 0, !dbg !4800
  %47 = tail call i32 @big_endian_read_32(i8* %46, i32 12) #15, !dbg !4801
  tail call fastcc void @sm_notify_client_passkey(i8 zeroext -42, i16 zeroext %42, i8 zeroext %44, i8* %45, i32 %47) #16, !dbg !4802
  br label %54, !dbg !4804

; <label>:48:                                     ; preds = %1
  store i8 1, i8* %3, align 1, !dbg !4805, !tbaa !2998
  %49 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 0, !dbg !4806
  %50 = load i16, i16* %49, align 4, !dbg !4806, !tbaa !878
  %51 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 4, !dbg !4807
  %52 = load i8, i8* %51, align 1, !dbg !4807, !tbaa !876
  %53 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !4808
  tail call fastcc void @sm_notify_client_base(i8 zeroext -48, i16 zeroext %50, i8 zeroext %52, i8* %53) #16, !dbg !4809
  br label %54, !dbg !4810

; <label>:54:                                     ; preds = %48, %40, %34, %32, %28, %16, %14, %1
  ret void, !dbg !4811
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_c1_t1(i8* nocapture readonly, i8*, i8*, i8 zeroext, i8 zeroext, i8* nocapture) unnamed_addr #0 section ".ble_sm_code" !dbg !4812 {
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4816, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i8* %1, metadata !4817, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i8* %2, metadata !4818, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i8 %3, metadata !4819, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i8 %4, metadata !4820, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i8* %5, metadata !4821, metadata !DIExpression()), !dbg !4829
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !4830
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #14, !dbg !4830
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !4822, metadata !DIExpression()), !dbg !4831
  call void @reverse_56(i8* %2, i8* nonnull %8) #15, !dbg !4832
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 7, !dbg !4833
  call void @reverse_56(i8* %1, i8* %9) #15, !dbg !4834
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 14, !dbg !4835
  store i8 %4, i8* %10, align 1, !dbg !4836, !tbaa !1142
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 15, !dbg !4837
  store i8 %3, i8* %11, align 1, !dbg !4838, !tbaa !1142
  call void @llvm.dbg.value(metadata i32 0, metadata !4823, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i32 0, metadata !4823, metadata !DIExpression()), !dbg !4839
  br label %12, !dbg !4840

; <label>:12:                                     ; preds = %12, %6
  %13 = phi i32 [ 0, %6 ], [ %20, %12 ]
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !4843
  %15 = load i8, i8* %14, align 1, !dbg !4843, !tbaa !1142
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %13, !dbg !4846
  %17 = load i8, i8* %16, align 1, !dbg !4846, !tbaa !1142
  %18 = xor i8 %17, %15, !dbg !4847
  %19 = getelementptr inbounds i8, i8* %5, i32 %13, !dbg !4848
  store i8 %18, i8* %19, align 1, !dbg !4849, !tbaa !1142
  %20 = add nuw nsw i32 %13, 1, !dbg !4850
  call void @llvm.dbg.value(metadata i32 %20, metadata !4823, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i32 %20, metadata !4823, metadata !DIExpression()), !dbg !4839
  %21 = icmp eq i32 %20, 16, !dbg !4852
  br i1 %21, label %22, label %12, !dbg !4840, !llvm.loop !4854

; <label>:22:                                     ; preds = %12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #14, !dbg !4857
  ret void, !dbg !4857
}

; Function Attrs: optsize
declare i32 @ll_hci_long_term_key_request_reply(i16 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ble_list_reconnect_device_is_exist(i8*, i8 zeroext, i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @little_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reverse_64(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gap_le_get_own_address_random_type(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gap_le_get_own_address(i16 zeroext, i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gap_le_get_own_id_address(i16 zeroext, i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reverse_bd_addr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
define internal fastcc i32 @sm_key_distribution_all_received(%struct.sm_connection* nocapture readonly) unnamed_addr #12 section ".ble_sm_code" !dbg !4858 {
  call void @llvm.dbg.value(metadata %struct.sm_connection* %0, metadata !4860, metadata !DIExpression()), !dbg !4862
  %2 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 1, !dbg !4863
  %3 = load i8, i8* %2, align 2, !dbg !4863, !tbaa !1266
  %4 = icmp eq i8 %3, 0, !dbg !4863
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 12, i32 0
  br i1 %4, label %9, label %7, !dbg !4865

; <label>:7:                                      ; preds = %1
  %8 = tail call fastcc zeroext i8 @sm_pairing_packet_get_initiator_key_distribution(i8* %6) #16, !dbg !4866
  br label %11, !dbg !4868

; <label>:9:                                      ; preds = %1
  %10 = tail call fastcc zeroext i8 @sm_pairing_packet_get_responder_key_distribution(i8* %6) #16, !dbg !4869
  call void @llvm.dbg.value(metadata i32 %23, metadata !4861, metadata !DIExpression()), !dbg !4871
  br label %11

; <label>:11:                                     ; preds = %9, %7
  %12 = phi i8 [ %10, %9 ], [ %8, %7 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !1362, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i32 0, metadata !1367, metadata !DIExpression()), !dbg !4875
  %13 = zext i8 %12 to i32, !dbg !4876
  %14 = and i32 %13, 1, !dbg !4877
  %15 = icmp eq i32 %14, 0, !dbg !4877
  call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 3, metadata !1367, metadata !DIExpression()), !dbg !4875
  %16 = select i1 %15, i32 0, i32 3, !dbg !4878
  call void @llvm.dbg.value(metadata i32 %16, metadata !1367, metadata !DIExpression()), !dbg !4875
  %17 = and i32 %13, 2, !dbg !4879
  %18 = icmp eq i32 %17, 0, !dbg !4879
  %19 = or i32 %16, 12, !dbg !4880
  call void @llvm.dbg.value(metadata i32 %19, metadata !1367, metadata !DIExpression()), !dbg !4875
  %20 = select i1 %18, i32 %16, i32 %19, !dbg !4881
  call void @llvm.dbg.value(metadata i32 %20, metadata !1367, metadata !DIExpression()), !dbg !4875
  %21 = shl nuw nsw i32 %13, 2, !dbg !4882
  %22 = and i32 %21, 16, !dbg !4882
  %23 = or i32 %20, %22, !dbg !4882
  call void @llvm.dbg.value(metadata i32 %23, metadata !1367, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i32 %23, metadata !4861, metadata !DIExpression()), !dbg !4871
  %24 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 0, i32 6, !dbg !4883
  %25 = load i8, i8* %24, align 1, !dbg !4883, !tbaa !1361
  %26 = zext i8 %25 to i32, !dbg !4884
  %27 = icmp eq i32 %23, %26, !dbg !4885
  %28 = zext i1 %27 to i32, !dbg !4885
  ret i32 %28, !dbg !4886
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_key_distribution_handle_all_received(%struct.sm_connection* nocapture) unnamed_addr #0 section ".ble_sm_code" !dbg !4887 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 4
  call void @llvm.dbg.value(metadata %struct.sm_connection* %0, metadata !4889, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i32 -1, metadata !4890, metadata !DIExpression()), !dbg !4914
  %8 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4915, !tbaa !716
  %9 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %8, i32 0, i32 0, i32 6, !dbg !4916
  %10 = load i8, i8* %9, align 1, !dbg !4916, !tbaa !1361
  %11 = and i8 %10, 4, !dbg !4917
  %12 = icmp eq i8 %11, 0, !dbg !4917
  br i1 %12, label %36, label %13, !dbg !4918

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0, !dbg !4919
  call void @llvm.dbg.value(metadata i32 0, metadata !4891, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i32 -1, metadata !4890, metadata !DIExpression()), !dbg !4914
  %15 = call i32 @le_device_db_count() #15, !dbg !4921
  %16 = icmp sgt i32 %15, 0, !dbg !4923
  br i1 %16, label %17, label %33, !dbg !4924

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0
  %19 = bitcast i32* %4 to i8*
  br label %23, !dbg !4924

; <label>:20:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i32 %29, metadata !4891, metadata !DIExpression()), !dbg !4920
  %21 = call i32 @le_device_db_count() #15, !dbg !4921
  %22 = icmp slt i32 %29, %21, !dbg !4923
  br i1 %22, label %23, label %30, !dbg !4924, !llvm.loop !4926

; <label>:23:                                     ; preds = %20, %17
  %24 = phi i32 [ 0, %17 ], [ %29, %20 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #14, !dbg !4919
  call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !4894, metadata !DIExpression()), !dbg !4929
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %18) #14, !dbg !4930
  call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !4898, metadata !DIExpression()), !dbg !4931
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #14, !dbg !4932
  call void @llvm.dbg.value(metadata i32* %4, metadata !4899, metadata !DIExpression(DW_OP_deref)), !dbg !4933
  call void @le_device_db_info(i32 %24, i32* nonnull %4, i8* nonnull %18, i8* nonnull %14) #15, !dbg !4934
  %25 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4935, !tbaa !716
  %26 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %25, i32 0, i32 0, i32 35, i32 0, !dbg !4935
  %27 = call i32 @memcmp(i8* nonnull %14, i8* %26, i32 16) #16, !dbg !4937
  %28 = icmp eq i32 %27, 0, !dbg !4938
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #14, !dbg !4939
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %18) #14, !dbg !4939
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #14, !dbg !4939
  %29 = add nuw nsw i32 %24, 1, !dbg !4940
  call void @llvm.dbg.value(metadata i32 %29, metadata !4891, metadata !DIExpression()), !dbg !4920
  br i1 %28, label %30, label %20

; <label>:30:                                     ; preds = %23, %20
  %31 = phi i32 [ %24, %23 ], [ -1, %20 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !4890, metadata !DIExpression()), !dbg !4914
  %32 = icmp slt i32 %31, 0, !dbg !4942
  br i1 %32, label %33, label %78, !dbg !4943

; <label>:33:                                     ; preds = %30, %13
  %34 = phi i32 [ %31, %30 ], [ -1, %13 ]
  %35 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  br label %36, !dbg !4943

; <label>:36:                                     ; preds = %33, %1
  %37 = phi %struct.sm_info_t* [ %35, %33 ], [ %8, %1 ], !dbg !4944
  %38 = phi i32 [ %34, %33 ], [ -1, %1 ]
  %39 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %37, i32 0, i32 0, i32 37, !dbg !4946
  %40 = load i8, i8* %39, align 2, !dbg !4946, !tbaa !1823
  %41 = icmp eq i8 %40, 0, !dbg !4947
  br i1 %41, label %42, label %70, !dbg !4948

; <label>:42:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i32 0, metadata !4900, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.value(metadata i32 %38, metadata !4890, metadata !DIExpression()), !dbg !4914
  %43 = call i32 @le_device_db_count() #15, !dbg !4951
  %44 = icmp sgt i32 %43, 0, !dbg !4953
  br i1 %44, label %45, label %66, !dbg !4954

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0
  %47 = bitcast i32* %6 to i8*
  br label %48, !dbg !4954

; <label>:48:                                     ; preds = %58, %45
  %49 = phi i32 [ 0, %45 ], [ %59, %58 ]
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %46) #14, !dbg !4956
  call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !4903, metadata !DIExpression()), !dbg !4957
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #14, !dbg !4958
  call void @llvm.dbg.value(metadata i32* %6, metadata !4907, metadata !DIExpression(DW_OP_deref)), !dbg !4959
  call void @le_device_db_info(i32 %49, i32* nonnull %6, i8* nonnull %46, i8* null) #15, !dbg !4960
  %50 = load i32, i32* %6, align 4, !dbg !4961, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %50, metadata !4907, metadata !DIExpression()), !dbg !4959
  %51 = icmp eq i32 %50, 0, !dbg !4963
  br i1 %51, label %52, label %58, !dbg !4964

; <label>:52:                                     ; preds = %48
  %53 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4965, !tbaa !716
  %54 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %53, i32 0, i32 0, i32 38, i32 0, !dbg !4965
  %55 = call i32 @memcmp(i8* nonnull %46, i8* %54, i32 6) #16, !dbg !4967
  %56 = icmp eq i32 %55, 0, !dbg !4968
  br i1 %56, label %57, label %58, !dbg !4969

; <label>:57:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i32 undef, metadata !4890, metadata !DIExpression()), !dbg !4914
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #14, !dbg !4971
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %46) #14, !dbg !4971
  br label %63

; <label>:58:                                     ; preds = %52, %48
  call void @llvm.dbg.value(metadata i32 %49, metadata !4890, metadata !DIExpression()), !dbg !4914
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #14, !dbg !4971
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %46) #14, !dbg !4971
  %59 = add nuw nsw i32 %49, 1, !dbg !4972
  call void @llvm.dbg.value(metadata i32 %59, metadata !4900, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.value(metadata i32 %59, metadata !4900, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.value(metadata i32 %38, metadata !4890, metadata !DIExpression()), !dbg !4914
  %60 = call i32 @le_device_db_count() #15, !dbg !4951
  %61 = icmp slt i32 %59, %60, !dbg !4953
  br i1 %61, label %48, label %62, !dbg !4954, !llvm.loop !4974

; <label>:62:                                     ; preds = %58
  br label %63, !dbg !4914

; <label>:63:                                     ; preds = %62, %57
  %64 = phi i32 [ %49, %57 ], [ %38, %62 ]
  call void @llvm.dbg.value(metadata i32 %64, metadata !4890, metadata !DIExpression()), !dbg !4914
  %65 = icmp slt i32 %64, 0, !dbg !4977
  br i1 %65, label %66, label %78, !dbg !4979

; <label>:66:                                     ; preds = %63, %42
  %67 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !tbaa !716
  %68 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %67, i32 0, i32 0, i32 37
  %69 = load i8, i8* %68, align 2, !tbaa !1823
  br label %70, !dbg !4979

; <label>:70:                                     ; preds = %66, %36
  %71 = phi i8 [ %69, %66 ], [ %40, %36 ], !dbg !4980
  %72 = phi %struct.sm_info_t* [ %67, %66 ], [ %37, %36 ], !dbg !4982
  %73 = zext i8 %71 to i32, !dbg !4982
  %74 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %72, i32 0, i32 0, i32 38, i32 0, !dbg !4983
  %75 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %72, i32 0, i32 0, i32 35, i32 0, !dbg !4984
  %76 = call i32 @le_device_db_add(i32 %73, i8* %74, i8* %75) #15, !dbg !4985
  call void @llvm.dbg.value(metadata i32 %76, metadata !4890, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 %76, metadata !4890, metadata !DIExpression()), !dbg !4914
  %77 = icmp sgt i32 %76, -1, !dbg !4986
  br i1 %77, label %78, label %124, !dbg !4987

; <label>:78:                                     ; preds = %70, %63, %30
  %79 = phi i32 [ %76, %70 ], [ %64, %63 ], [ %31, %30 ]
  %80 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 0, !dbg !4988
  %81 = load i16, i16* %80, align 4, !dbg !4988, !tbaa !878
  %82 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4989, !tbaa !716
  %83 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %82, i32 0, i32 0, i32 37, !dbg !4990
  %84 = load i8, i8* %83, align 2, !dbg !4990, !tbaa !1823
  %85 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %82, i32 0, i32 0, i32 38, i32 0, !dbg !4991
  %86 = trunc i32 %79 to i16, !dbg !4992
  call fastcc void @sm_notify_client_index(i8 zeroext -34, i16 zeroext %81, i8 zeroext %84, i8* %85, i16 zeroext %86) #16, !dbg !4993
  %87 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !4994, !tbaa !716
  %88 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %87, i32 0, i32 0, i32 9, !dbg !4995
  %89 = load i8, i8* %88, align 4, !dbg !4995, !tbaa !1336
  %90 = icmp eq i8 %89, 0, !dbg !4994
  br i1 %90, label %104, label %91, !dbg !4996

; <label>:91:                                     ; preds = %78
  %92 = bitcast i64* %7 to i8*, !dbg !4997
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #14, !dbg !4997
  store i64 0, i64* %7, align 4, !dbg !4998
  %93 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %87, i32 0, i32 0, i32 21, i32 0, !dbg !4999
  %94 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 10, !dbg !5000
  %95 = load i8, i8* %94, align 2, !dbg !5000, !tbaa !1140
  %96 = zext i8 %95 to i32, !dbg !5001
  %97 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 9, !dbg !5002
  %98 = load i8, i8* %97, align 1, !dbg !5002, !tbaa !1146
  %99 = zext i8 %98 to i32, !dbg !5003
  %100 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 12, !dbg !5004
  %101 = load i32, i32* %100, align 4, !dbg !5004, !tbaa !1194
  %102 = icmp eq i32 %101, 3, !dbg !5005
  %103 = zext i1 %102 to i32, !dbg !5005
  call void @le_device_db_encryption_set(i32 %79, i16 zeroext 0, i8* nonnull %92, i8* %93, i32 %96, i32 %99, i32 %103) #15, !dbg !5006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #14, !dbg !5007
  br label %124, !dbg !5008

; <label>:104:                                    ; preds = %78
  %105 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %87, i32 0, i32 0, i32 6, !dbg !5009
  %106 = load i8, i8* %105, align 1, !dbg !5009, !tbaa !1361
  %107 = and i8 %106, 3, !dbg !5011
  %108 = icmp eq i8 %107, 3, !dbg !5011
  br i1 %108, label %109, label %124, !dbg !5011

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %87, i32 0, i32 0, i32 32, !dbg !5012
  %111 = load i16, i16* %110, align 4, !dbg !5012, !tbaa !1299
  %112 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %87, i32 0, i32 0, i32 33, i32 0, !dbg !5014
  %113 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %87, i32 0, i32 0, i32 34, i32 0, !dbg !5015
  %114 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 10, !dbg !5016
  %115 = load i8, i8* %114, align 2, !dbg !5016, !tbaa !1140
  %116 = zext i8 %115 to i32, !dbg !5017
  %117 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 9, !dbg !5018
  %118 = load i8, i8* %117, align 1, !dbg !5018, !tbaa !1146
  %119 = zext i8 %118 to i32, !dbg !5019
  %120 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 12, !dbg !5020
  %121 = load i32, i32* %120, align 4, !dbg !5020, !tbaa !1194
  %122 = icmp eq i32 %121, 3, !dbg !5021
  %123 = zext i1 %122 to i32, !dbg !5021
  call void @le_device_db_encryption_set(i32 %79, i16 zeroext %111, i8* %112, i8* %113, i32 %116, i32 %119, i32 %123) #15, !dbg !5022
  br label %124, !dbg !5023

; <label>:124:                                    ; preds = %109, %104, %91, %70
  %125 = phi i32 [ %79, %104 ], [ %79, %91 ], [ %79, %109 ], [ %76, %70 ]
  %126 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 16, !dbg !5024
  store i32 %125, i32* %126, align 4, !dbg !5025, !tbaa !1170
  ret void, !dbg !5026
}

; Function Attrs: optsize
declare zeroext i8 @ble_list_pair_add(i8 zeroext, i8*, i8 zeroext, i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @big_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ll_hci_encryption(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ll_hci_get_le_rand() local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_notify_client_base(i8 zeroext, i16 zeroext, i8 zeroext, i8*) unnamed_addr #0 section ".ble_sm_code" !dbg !5027 {
  %5 = alloca [4 x i32], align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !5031, metadata !DIExpression()), !dbg !5036
  call void @llvm.dbg.value(metadata i16 %1, metadata !5032, metadata !DIExpression()), !dbg !5037
  call void @llvm.dbg.value(metadata i8 %2, metadata !5033, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata i8* %3, metadata !5034, metadata !DIExpression()), !dbg !5039
  %6 = bitcast [4 x i32]* %5 to i8*, !dbg !5040
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14, !dbg !5040
  tail call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !5035, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i8* %6, metadata !3730, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i32 16, metadata !3735, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i8 %0, metadata !3736, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i16 %1, metadata !3737, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i8 %2, metadata !3738, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i8* %3, metadata !3739, metadata !DIExpression()), !dbg !5048
  store i8 %0, i8* %6, align 4, !dbg !5049, !tbaa !1142
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !5050
  store i8 14, i8* %7, align 1, !dbg !5051, !tbaa !1142
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 2, i16 zeroext %1) #15, !dbg !5052
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 1, !dbg !5053
  %9 = bitcast i32* %8 to i8*, !dbg !5053
  store i8 %2, i8* %9, align 4, !dbg !5054, !tbaa !1142
  %10 = getelementptr inbounds i8, i8* %6, i32 5, !dbg !5055
  call void @reverse_bd_addr(i8* %3, i8* %10) #15, !dbg !5056
  call fastcc void @sm_dispatch_event(i8* nonnull %6, i16 zeroext 16) #16, !dbg !5057
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14, !dbg !5058
  ret void, !dbg !5058
}

; Function Attrs: nounwind optsize
define internal fastcc void @sm_dispatch_event(i8*, i16 zeroext) unnamed_addr #0 section ".ble_sm_code" !dbg !5059 {
  %3 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i8 4, metadata !5061, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.value(metadata i16 0, metadata !5062, metadata !DIExpression()), !dbg !5069
  %4 = bitcast %struct.btstack_linked_list_iterator_t* %3 to i8*, !dbg !5070
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #14, !dbg !5070
  %5 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !5071, !tbaa !716
  %6 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %5, i32 0, i32 30, !dbg !5071
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !5065, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %3, %struct.btstack_linked_item** %6) #15, !dbg !5071
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !5065, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  %7 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #15, !dbg !5073
  %8 = icmp eq i32 %7, 0, !dbg !5075
  br i1 %8, label %18, label %9, !dbg !5075

; <label>:9:                                      ; preds = %2
  br label %10, !dbg !5072

; <label>:10:                                     ; preds = %10, %9
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !5065, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  %11 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #15, !dbg !5076
  %12 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 1, !dbg !5077
  %13 = bitcast %struct.btstack_linked_item* %12 to void (i8, i16, i8*, i16)**, !dbg !5077
  %14 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %13, align 4, !dbg !5077, !tbaa !5078
  call void %14(i8 zeroext 4, i16 zeroext 0, i8* %0, i16 zeroext %1) #15, !dbg !5079
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !5065, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  %15 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #15, !dbg !5073
  %16 = icmp eq i32 %15, 0, !dbg !5075
  br i1 %16, label %17, label %10, !dbg !5075, !llvm.loop !5080

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !5083

; <label>:18:                                     ; preds = %17, %2
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #14, !dbg !5083
  ret void, !dbg !5083
}

; Function Attrs: optsize
declare void @le_device_db_encryption_get(i32, i16*, i8*, i8*, i32*, i32*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_notify_client_index(i8 zeroext, i16 zeroext, i8 zeroext, i8*, i16 zeroext) unnamed_addr #0 section ".ble_sm_code" !dbg !5084 {
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [19 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !5088, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i16 %1, metadata !5089, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i8 %2, metadata !5090, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.value(metadata i8* %3, metadata !5091, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i16 %4, metadata !5092, metadata !DIExpression()), !dbg !5103
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i32 0, i32 0, !dbg !5104
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %9) #14, !dbg !5104
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %6, metadata !5093, metadata !DIExpression()), !dbg !5105
  %10 = bitcast i32* %7 to i8*, !dbg !5106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #14, !dbg !5106
  %11 = zext i16 %4 to i32, !dbg !5107
  call void @llvm.dbg.value(metadata i32* %7, metadata !5094, metadata !DIExpression(DW_OP_deref)), !dbg !5108
  call void @le_device_db_info(i32 %11, i32* nonnull %7, i8* nonnull %9, i8* null) #15, !dbg !5109
  %12 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i32 0, i32 0, !dbg !5110
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %12) #14, !dbg !5110
  call void @llvm.dbg.declare(metadata [19 x i8]* %8, metadata !5095, metadata !DIExpression()), !dbg !5111
  call void @llvm.dbg.value(metadata i8* %12, metadata !3730, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata i32 19, metadata !3735, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i8 %0, metadata !3736, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata i16 %1, metadata !3737, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.value(metadata i8 %2, metadata !3738, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.value(metadata i8* %3, metadata !3739, metadata !DIExpression()), !dbg !5118
  store i8 %0, i8* %12, align 1, !dbg !5119, !tbaa !1142
  %13 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i32 0, i32 1, !dbg !5120
  store i8 17, i8* %13, align 1, !dbg !5121, !tbaa !1142
  call void @little_endian_store_16(i8* nonnull %12, i16 zeroext 2, i16 zeroext %1) #15, !dbg !5122
  %14 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i32 0, i32 4, !dbg !5123
  store i8 %2, i8* %14, align 1, !dbg !5124, !tbaa !1142
  %15 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i32 0, i32 5, !dbg !5125
  call void @reverse_bd_addr(i8* %3, i8* %15) #15, !dbg !5126
  %16 = load i32, i32* %7, align 4, !dbg !5127, !tbaa !757
  call void @llvm.dbg.value(metadata i32 %16, metadata !5094, metadata !DIExpression()), !dbg !5108
  %17 = trunc i32 %16 to i8, !dbg !5127
  %18 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i32 0, i32 11, !dbg !5128
  store i8 %17, i8* %18, align 1, !dbg !5129, !tbaa !1142
  %19 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i32 0, i32 12, !dbg !5130
  call void @reverse_bd_addr(i8* nonnull %9, i8* %19) #15, !dbg !5131
  %20 = trunc i16 %4 to i8, !dbg !5132
  %21 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i32 0, i32 18, !dbg !5133
  store i8 %20, i8* %21, align 1, !dbg !5134, !tbaa !1142
  call fastcc void @sm_dispatch_event(i8* nonnull %12, i16 zeroext 19) #16, !dbg !5135
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %12) #14, !dbg !5136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #14, !dbg !5136
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %9) #14, !dbg !5136
  ret void, !dbg !5136
}

; Function Attrs: optsize
declare void @little_endian_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @sm_pairing_packet_set_io_capability(i8* nocapture, i8 zeroext) unnamed_addr #7 !dbg !5137 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5139, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.value(metadata i8 %1, metadata !5140, metadata !DIExpression()), !dbg !5142
  %3 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !5143
  store i8 %1, i8* %3, align 1, !dbg !5144, !tbaa !1142
  ret void, !dbg !5145
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @sm_pairing_packet_set_oob_data_flag(i8* nocapture, i8 zeroext) unnamed_addr #7 !dbg !5146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5148, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.value(metadata i8 %1, metadata !5149, metadata !DIExpression()), !dbg !5151
  %3 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !5152
  store i8 %1, i8* %3, align 1, !dbg !5153, !tbaa !1142
  ret void, !dbg !5154
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @sm_pairing_packet_set_auth_req(i8* nocapture, i8 zeroext) unnamed_addr #7 !dbg !5155 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5157, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.value(metadata i8 %1, metadata !5158, metadata !DIExpression()), !dbg !5160
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !5161
  store i8 %1, i8* %3, align 1, !dbg !5162, !tbaa !1142
  ret void, !dbg !5163
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @sm_pairing_packet_set_max_encryption_key_size(i8* nocapture, i8 zeroext) unnamed_addr #7 !dbg !5164 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5166, metadata !DIExpression()), !dbg !5168
  call void @llvm.dbg.value(metadata i8 %1, metadata !5167, metadata !DIExpression()), !dbg !5169
  %3 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !5170
  store i8 %1, i8* %3, align 1, !dbg !5171, !tbaa !1142
  ret void, !dbg !5172
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @sm_pairing_packet_get_max_encryption_key_size(i8* nocapture readonly) unnamed_addr #11 !dbg !5173 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5175, metadata !DIExpression()), !dbg !5176
  %2 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !5177
  %3 = load i8, i8* %2, align 1, !dbg !5177, !tbaa !1142
  ret i8 %3, !dbg !5178
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @sm_pairing_packet_get_oob_data_flag(i8* nocapture readonly) unnamed_addr #11 !dbg !5179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5181, metadata !DIExpression()), !dbg !5182
  %2 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !5183
  %3 = load i8, i8* %2, align 1, !dbg !5183, !tbaa !1142
  ret i8 %3, !dbg !5184
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @sm_pairing_packet_get_auth_req(i8* nocapture readonly) unnamed_addr #11 !dbg !5185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5187, metadata !DIExpression()), !dbg !5188
  %2 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !5189
  %3 = load i8, i8* %2, align 1, !dbg !5189, !tbaa !1142
  ret i8 %3, !dbg !5190
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @sm_pairing_packet_get_io_capability(i8* nocapture readonly) unnamed_addr #11 !dbg !5191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5193, metadata !DIExpression()), !dbg !5194
  %2 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !5195
  %3 = load i8, i8* %2, align 1, !dbg !5195, !tbaa !1142
  ret i8 %3, !dbg !5196
}

; Function Attrs: nounwind optsize
define internal void @sm_timeout_handler(%struct.btstack_timer_source* nocapture readonly) #0 section ".ble_sm_code" !dbg !5197 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !5202, metadata !DIExpression()), !dbg !5204
  %2 = load i8, i8* @ble_debug_enable, align 1, !dbg !5205, !tbaa !1142
  %3 = and i8 %2, 1, !dbg !5205
  %4 = icmp eq i8 %3, 0, !dbg !5205
  br i1 %4, label %7, label %5, !dbg !5207

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.22, i32 0, i32 0)), !dbg !5208
  br label %7, !dbg !5208

; <label>:7:                                      ; preds = %5, %1
  %8 = getelementptr inbounds %struct.btstack_timer_source, %struct.btstack_timer_source* %0, i32 0, i32 4, !dbg !5210
  %9 = bitcast i8** %8 to %struct.sm_connection**, !dbg !5210
  %10 = load %struct.sm_connection*, %struct.sm_connection** %9, align 4, !dbg !5210, !tbaa !5211
  call void @llvm.dbg.value(metadata %struct.sm_connection* %10, metadata !5203, metadata !DIExpression()), !dbg !5212
  %11 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 6, !dbg !5213
  store i32 2, i32* %11, align 4, !dbg !5214, !tbaa !1028
  %12 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 0, !dbg !5215
  %13 = load i16, i16* %12, align 4, !dbg !5215, !tbaa !878
  tail call fastcc void @sm_done_for_handle(i16 zeroext %13) #16, !dbg !5216
  tail call fastcc void @sm_run() #16, !dbg !5217
  %14 = load i16, i16* %12, align 4, !dbg !5218, !tbaa !878
  %15 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 4, !dbg !5219
  %16 = load i8, i8* %15, align 1, !dbg !5219, !tbaa !876
  %17 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %10, i32 0, i32 5, i32 0, !dbg !5220
  tail call fastcc void @sm_notify_client_process(i16 zeroext %14, i8 zeroext %16, i8* %17, i32 4) #16, !dbg !5221
  ret void, !dbg !5222
}

; Function Attrs: optsize
declare void @btstack_set_timer(%struct.btstack_timer_source*, i16 signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sys_timer_del(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @sys_timeout_add(i8*, void (i8*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @sm_disconnect(i32) #0 section ".ble_sm_code" !dbg !5223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5225, metadata !DIExpression()), !dbg !5227
  %2 = trunc i32 %0 to i16, !dbg !5228
  tail call fastcc void @sm_done_for_handle(i16 zeroext %2) #16, !dbg !5229
  call void @llvm.dbg.value(metadata i16 %2, metadata !1223, metadata !DIExpression()), !dbg !5230
  %3 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %2) #15, !dbg !5232
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %3, metadata !1224, metadata !DIExpression()), !dbg !5233
  %4 = icmp eq %struct.__le_hci_connection* %3, null, !dbg !5234
  %5 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %3, i32 0, i32 11, !dbg !5235
  %6 = select i1 %4, %struct.sm_connection* null, %struct.sm_connection* %5, !dbg !5236
  call void @llvm.dbg.value(metadata %struct.sm_connection* %6, metadata !5226, metadata !DIExpression()), !dbg !5237
  br i1 %4, label %22, label %7, !dbg !5238

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %6, i32 0, i32 15, !dbg !5239
  %9 = load i8, i8* %8, align 2, !dbg !5239, !tbaa !4697
  %10 = zext i8 %9 to i32, !dbg !5240
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %10) #16, !dbg !5241
  %12 = tail call i32 @ll_hci_disconnect(i16 zeroext %2, i8 zeroext 19) #15, !dbg !5242
  %13 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %6, i32 0, i32 0, !dbg !5243
  %14 = load i16, i16* %13, align 4, !dbg !5243, !tbaa !878
  %15 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %6, i32 0, i32 4, !dbg !5244
  %16 = load i8, i8* %15, align 1, !dbg !5244, !tbaa !876
  %17 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %6, i32 0, i32 5, i32 0, !dbg !5245
  %18 = load i8, i8* %8, align 2, !dbg !5246, !tbaa !4697
  %19 = zext i8 %18 to i32, !dbg !5247
  %20 = shl nuw nsw i32 %19, 8, !dbg !5248
  %21 = or i32 %20, 15, !dbg !5249
  tail call fastcc void @sm_notify_client_process(i16 zeroext %14, i8 zeroext %16, i8* %17, i32 %21) #16, !dbg !5250
  br label %22, !dbg !5251

; <label>:22:                                     ; preds = %7, %1
  ret void, !dbg !5252
}

; Function Attrs: optsize
declare i32 @ll_hci_disconnect(i16 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @sm_notify_client_passkey(i8 zeroext, i16 zeroext, i8 zeroext, i8*, i32) unnamed_addr #0 section ".ble_sm_code" !dbg !5254 {
  %6 = alloca [4 x i32], align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !5256, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.value(metadata i16 %1, metadata !5257, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i8 %2, metadata !5258, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.value(metadata i8* %3, metadata !5259, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.value(metadata i32 %4, metadata !5260, metadata !DIExpression()), !dbg !5266
  %7 = bitcast [4 x i32]* %6 to i8*, !dbg !5267
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #14, !dbg !5267
  tail call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !5261, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.value(metadata i8* %7, metadata !3730, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i32 16, metadata !3735, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata i8 %0, metadata !3736, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.value(metadata i16 %1, metadata !3737, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.value(metadata i8 %2, metadata !3738, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.value(metadata i8* %3, metadata !3739, metadata !DIExpression()), !dbg !5275
  store i8 %0, i8* %7, align 4, !dbg !5276, !tbaa !1142
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5277
  store i8 14, i8* %8, align 1, !dbg !5278, !tbaa !1142
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 2, i16 zeroext %1) #15, !dbg !5279
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1, !dbg !5280
  %10 = bitcast i32* %9 to i8*, !dbg !5280
  store i8 %2, i8* %10, align 4, !dbg !5281, !tbaa !1142
  %11 = getelementptr inbounds i8, i8* %7, i32 5, !dbg !5282
  call void @reverse_bd_addr(i8* %3, i8* %11) #15, !dbg !5283
  call void @little_endian_store_32(i8* nonnull %7, i16 zeroext 11, i32 %4) #15, !dbg !5284
  call fastcc void @sm_dispatch_event(i8* nonnull %7, i16 zeroext 16) #16, !dbg !5285
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #14, !dbg !5286
  ret void, !dbg !5286
}

; Function Attrs: optsize
declare void @reverse_56(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @le_device_db_add(i32, i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @le_device_db_encryption_set(i32, i16 zeroext, i8*, i8*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #2

; Function Attrs: inlinehint norecurse nounwind optsize
define internal fastcc i32 @rand32() unnamed_addr #13 !dbg !5287 {
  %1 = load volatile i32, i32* inttoptr (i32 1981184 to i32*), align 256, !dbg !5290, !tbaa !5291
  ret i32 %1, !dbg !5293
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_event_packet_get_type(i8* nocapture readonly) unnamed_addr #11 !dbg !5294 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5300, metadata !DIExpression()), !dbg !5301
  %2 = load i8, i8* %0, align 1, !dbg !5302, !tbaa !1142
  ret i8 %2, !dbg !5303
}

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc zeroext i8 @sm_master_pair_get_list(%struct.sm_connection*) unnamed_addr #0 section ".ble_sm_code" !dbg !5304 {
  %2 = alloca %struct.BLE_REMOTE_LIST_T, align 1
  call void @llvm.dbg.value(metadata %struct.sm_connection* %0, metadata !5306, metadata !DIExpression()), !dbg !5308
  %3 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 0, i32 0, !dbg !5309
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %3) #14, !dbg !5309
  %4 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !5310, !tbaa !716
  %5 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %4, i32 0, i32 9, !dbg !5312
  %6 = load i8, i8* %5, align 4, !dbg !5312, !tbaa !1611
  %7 = icmp eq i8 %6, 0, !dbg !5310
  br i1 %7, label %8, label %38, !dbg !5313

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 5, i32 0, !dbg !5314
  %10 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 4, !dbg !5316
  %11 = load i8, i8* %10, align 1, !dbg !5316, !tbaa !876
  %12 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 1, !dbg !5317
  %13 = load i8, i8* %12, align 2, !dbg !5317, !tbaa !1266
  call void @llvm.dbg.value(metadata %struct.BLE_REMOTE_LIST_T* %2, metadata !5307, metadata !DIExpression(DW_OP_deref)), !dbg !5318
  %14 = call zeroext i8 @ble_list_get_conn_addr_item(i8* %9, i8 zeroext %11, i8 zeroext %13, %struct.BLE_REMOTE_LIST_T* nonnull %2) #15, !dbg !5319
  %15 = icmp eq i8 %14, 0, !dbg !5319
  br i1 %15, label %38, label %16, !dbg !5320

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 6, i32 0, !dbg !5322
  %18 = call zeroext i16 @little_endian_read_16(i8* %17, i32 0) #15, !dbg !5324
  %19 = load %struct.sm_info_t*, %struct.sm_info_t** @sm_global_info, align 4, !dbg !5325, !tbaa !716
  %20 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %19, i32 0, i32 0, i32 32, !dbg !5326
  store i16 %18, i16* %20, align 4, !dbg !5327, !tbaa !1299
  %21 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %19, i32 0, i32 0, i32 33, i32 0, !dbg !5328
  %22 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 5, i32 0, !dbg !5328
  %23 = bitcast i8* %22 to i64*, !dbg !5328
  %24 = bitcast i8* %21 to i64*, !dbg !5328
  %25 = load i64, i64* %23, align 1, !dbg !5328
  store i64 %25, i64* %24, align 1, !dbg !5328
  %26 = getelementptr inbounds %struct.sm_info_t, %struct.sm_info_t* %19, i32 0, i32 0, i32 34, i32 0, !dbg !5329
  %27 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 1, i32 0, !dbg !5329
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 16, i32 1, i1 false), !dbg !5329
  %28 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 7, !dbg !5330
  %29 = load i8, i8* %28, align 1, !dbg !5330, !tbaa !5331
  %30 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 10, !dbg !5333
  store i8 %29, i8* %30, align 2, !dbg !5334, !tbaa !1140
  %31 = getelementptr inbounds %struct.BLE_REMOTE_LIST_T, %struct.BLE_REMOTE_LIST_T* %2, i32 0, i32 8, !dbg !5335
  %32 = load i8, i8* %31, align 1, !dbg !5335
  %33 = and i8 %32, 15, !dbg !5335
  %34 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 9, !dbg !5336
  store i8 %33, i8* %34, align 1, !dbg !5337, !tbaa !1146
  %35 = lshr i8 %32, 4, !dbg !5338
  %36 = zext i8 %35 to i32, !dbg !5339
  %37 = getelementptr inbounds %struct.sm_connection, %struct.sm_connection* %0, i32 0, i32 12, !dbg !5340
  store i32 %36, i32* %37, align 4, !dbg !5341, !tbaa !1194
  br label %38, !dbg !5342

; <label>:38:                                     ; preds = %16, %8, %1
  %39 = phi i8 [ 1, %16 ], [ 0, %8 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %3) #14, !dbg !5343
  ret i8 %39, !dbg !5343
}

; Function Attrs: nounwind optsize
define internal void @sm_timeout_handler_pair(i32) #0 section ".ble_sm_code" !dbg !5344 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5348, metadata !DIExpression()), !dbg !5349
  %2 = trunc i32 %0 to i16, !dbg !5350
  %3 = tail call zeroext i8 @sm_api_request_pairing(i16 zeroext %2) #16, !dbg !5351
  ret void, !dbg !5352
}

; Function Attrs: optsize
declare zeroext i8 @ble_list_delete_device(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @le_device_db_remove(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ble_list_get_conn_addr_item(i8*, i8 zeroext, i8 zeroext, %struct.BLE_REMOTE_LIST_T*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reverse_24(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @big_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ll_vendor_device_address_generate(i8*, i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @le_controller_set_random_mac(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @little_endian_read_32(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ble_list_pair_is_allow(i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @att_server_get_remote_type(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.__le_hci_connection* @le_hci_connection_for_bd_addr_and_type(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @gap_random_address_update_handler(%struct.btstack_timer_source* nocapture readnone) #0 section ".ble_sm_code" !dbg !5353 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !5355, metadata !DIExpression()), !dbg !5356
  %2 = load i8, i8* @ble_debug_enable, align 1, !dbg !5357, !tbaa !1142
  %3 = and i8 %2, 1, !dbg !5357
  %4 = icmp eq i8 %3, 0, !dbg !5357
  br i1 %4, label %7, label %5, !dbg !5359

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.23, i32 0, i32 0)), !dbg !5360
  br label %7, !dbg !5360

; <label>:7:                                      ; preds = %5, %1
  tail call fastcc void @gap_random_address_trigger() #16, !dbg !5362
  ret void, !dbg !5363
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #14

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!701, !702}
!llvm.ident = !{!703}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !700, line: 190, type: !370, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !294, globals: !464)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/sm.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !13, !21, !29, !37, !46, !51, !55, !156, !163, !169, !176, !183, !230, !233, !241, !248, !255, !259, !276, !283, !288}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1469, size: 32, elements: !7)
!6 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_PUBLIC", value: 0)
!9 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_RANDOM", value: 1)
!10 = !DIEnumerator(name: "BD_ADDR_TYPE_SCO", value: 254)
!11 = !DIEnumerator(name: "BD_ADDR_TYPE_CLASSIC", value: 255)
!12 = !DIEnumerator(name: "BD_ADDR_TYPE_UNKNOWN", value: 254)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 20, size: 32, elements: !15)
!14 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/sm.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "IO_CAPABILITY_DISPLAY_ONLY", value: 0)
!17 = !DIEnumerator(name: "IO_CAPABILITY_DISPLAY_YES_NO", value: 1)
!18 = !DIEnumerator(name: "IO_CAPABILITY_KEYBOARD_ONLY", value: 2)
!19 = !DIEnumerator(name: "IO_CAPABILITY_NO_INPUT_NO_OUTPUT", value: 3)
!20 = !DIEnumerator(name: "IO_CAPABILITY_KEYBOARD_DISPLAY", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 173, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "JUST_WORKS", value: 0)
!24 = !DIEnumerator(name: "PK_RESP_INPUT", value: 1)
!25 = !DIEnumerator(name: "PK_INIT_INPUT", value: 2)
!26 = !DIEnumerator(name: "OK_BOTH_INPUT", value: 3)
!27 = !DIEnumerator(name: "NK_BOTH_INPUT", value: 4)
!28 = !DIEnumerator(name: "OOB", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 144, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "DKG_W4_WORKING", value: 0)
!32 = !DIEnumerator(name: "DKG_CALC_IRK", value: 1)
!33 = !DIEnumerator(name: "DKG_W4_IRK", value: 2)
!34 = !DIEnumerator(name: "DKG_CALC_DHK", value: 3)
!35 = !DIEnumerator(name: "DKG_W4_DHK", value: 4)
!36 = !DIEnumerator(name: "DKG_READY", value: 5)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 153, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45}
!39 = !DIEnumerator(name: "RAU_W4_WORKING", value: 0)
!40 = !DIEnumerator(name: "RAU_IDLE", value: 1)
!41 = !DIEnumerator(name: "RAU_GET_RANDOM", value: 2)
!42 = !DIEnumerator(name: "RAU_W4_RANDOM", value: 3)
!43 = !DIEnumerator(name: "RAU_GET_ENC", value: 4)
!44 = !DIEnumerator(name: "RAU_W4_ENC", value: 5)
!45 = !DIEnumerator(name: "RAU_SET_ADDRESS", value: 6)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 195, size: 32, elements: !47)
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "ADDRESS_RESOLUTION_IDLE", value: 0)
!49 = !DIEnumerator(name: "ADDRESS_RESOLUTION_GENERAL", value: 1)
!50 = !DIEnumerator(name: "ADDRESS_RESOLUTION_FOR_CONNECTION", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 190, size: 32, elements: !52)
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "SM_AES128_IDLE", value: 0)
!54 = !DIEnumerator(name: "SM_AES128_ACTIVE", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 295, size: 32, elements: !57)
!56 = !DIFile(filename: "../btstack/Host/include/common/hci.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!58 = !DIEnumerator(name: "SM_GENERAL_IDLE", value: 0)
!59 = !DIEnumerator(name: "SM_GENERAL_SEND_PAIRING_FAILED", value: 1)
!60 = !DIEnumerator(name: "SM_GENERAL_TIMEOUT", value: 2)
!61 = !DIEnumerator(name: "SM_PH1_W4_USER_RESPONSE", value: 3)
!62 = !DIEnumerator(name: "SM_PH2_GET_RANDOM_TK", value: 4)
!63 = !DIEnumerator(name: "SM_PH2_W4_RANDOM_TK", value: 5)
!64 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_A", value: 6)
!65 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_A", value: 7)
!66 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_B", value: 8)
!67 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_B", value: 9)
!68 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_A", value: 10)
!69 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_A", value: 11)
!70 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_B", value: 12)
!71 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_B", value: 13)
!72 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_C", value: 14)
!73 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_C", value: 15)
!74 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_D", value: 16)
!75 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_D", value: 17)
!76 = !DIEnumerator(name: "SM_PH2_C1_SEND_PAIRING_CONFIRM", value: 18)
!77 = !DIEnumerator(name: "SM_PH2_SEND_PAIRING_RANDOM", value: 19)
!78 = !DIEnumerator(name: "SM_PH2_CALC_STK", value: 20)
!79 = !DIEnumerator(name: "SM_PH2_W4_STK", value: 21)
!80 = !DIEnumerator(name: "SM_PH2_W4_CONNECTION_ENCRYPTED", value: 22)
!81 = !DIEnumerator(name: "SM_PH3_GET_RANDOM", value: 23)
!82 = !DIEnumerator(name: "SM_PH3_W4_RANDOM", value: 24)
!83 = !DIEnumerator(name: "SM_PH3_GET_DIV", value: 25)
!84 = !DIEnumerator(name: "SM_PH3_W4_DIV", value: 26)
!85 = !DIEnumerator(name: "SM_PH3_Y_GET_ENC", value: 27)
!86 = !DIEnumerator(name: "SM_PH3_Y_W4_ENC", value: 28)
!87 = !DIEnumerator(name: "SM_PH3_LTK_GET_ENC", value: 29)
!88 = !DIEnumerator(name: "SM_PH3_LTK_W4_ENC", value: 30)
!89 = !DIEnumerator(name: "SM_PH3_CSRK_GET_ENC", value: 31)
!90 = !DIEnumerator(name: "SM_PH3_CSRK_W4_ENC", value: 32)
!91 = !DIEnumerator(name: "SM_PH3_DISTRIBUTE_KEYS", value: 33)
!92 = !DIEnumerator(name: "SM_PH3_RECEIVE_KEYS", value: 34)
!93 = !DIEnumerator(name: "SM_RESPONDER_IDLE", value: 35)
!94 = !DIEnumerator(name: "SM_RESPONDER_SEND_SECURITY_REQUEST", value: 36)
!95 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_REQUEST", value: 37)
!96 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_W4_IRK", value: 38)
!97 = !DIEnumerator(name: "SM_RESPONDER_PH0_SEND_LTK_REQUESTED_NEGATIVE_REPLY", value: 39)
!98 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_REQUEST", value: 40)
!99 = !DIEnumerator(name: "SM_RESPONDER_PH1_PAIRING_REQUEST_RECEIVED", value: 41)
!100 = !DIEnumerator(name: "SM_RESPONDER_PH1_SEND_PAIRING_RESPONSE", value: 42)
!101 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_CONFIRM", value: 43)
!102 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_PAIRING_RANDOM", value: 44)
!103 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_LTK_REQUEST", value: 45)
!104 = !DIEnumerator(name: "SM_RESPONDER_PH2_SEND_LTK_REPLY", value: 46)
!105 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_GET_ENC", value: 47)
!106 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_W4_ENC", value: 48)
!107 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_GET_ENC", value: 49)
!108 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_W4_ENC", value: 50)
!109 = !DIEnumerator(name: "SM_RESPONDER_PH4_SEND_LTK_REPLY", value: 51)
!110 = !DIEnumerator(name: "SM_INITIATOR_CONNECTED", value: 52)
!111 = !DIEnumerator(name: "SM_INITIATOR_PH0_HAS_LTK", value: 53)
!112 = !DIEnumerator(name: "SM_INITIATOR_PH0_SEND_START_ENCRYPTION", value: 54)
!113 = !DIEnumerator(name: "SM_INITIATOR_PH0_W4_CONNECTION_ENCRYPTED", value: 55)
!114 = !DIEnumerator(name: "SM_INITIATOR_PH1_W2_SEND_PAIRING_REQUEST", value: 56)
!115 = !DIEnumerator(name: "SM_INITIATOR_PH1_SEND_PAIRING_REQUEST", value: 57)
!116 = !DIEnumerator(name: "SM_INITIATOR_PH1_W4_PAIRING_RESPONSE", value: 58)
!117 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_CONFIRM", value: 59)
!118 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_RANDOM", value: 60)
!119 = !DIEnumerator(name: "SM_INITIATOR_PH3_SEND_START_ENCRYPTION", value: 61)
!120 = !DIEnumerator(name: "SM_SC_RECEIVED_LTK_REQUEST", value: 62)
!121 = !DIEnumerator(name: "SM_SC_SEND_PUBLIC_KEY_COMMAND", value: 63)
!122 = !DIEnumerator(name: "SM_SC_W4_PUBLIC_KEY_COMMAND", value: 64)
!123 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_A", value: 65)
!124 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_A", value: 66)
!125 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_B", value: 67)
!126 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_B", value: 68)
!127 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CONFIRMATION", value: 69)
!128 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CONFIRMATION", value: 70)
!129 = !DIEnumerator(name: "SM_SC_SEND_CONFIRMATION", value: 71)
!130 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CHECK_CONFIRMATION", value: 72)
!131 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CHECK_CONFIRMATION", value: 73)
!132 = !DIEnumerator(name: "SM_SC_W4_CONFIRMATION", value: 74)
!133 = !DIEnumerator(name: "SM_SC_SEND_PAIRING_RANDOM", value: 75)
!134 = !DIEnumerator(name: "SM_SC_W4_PAIRING_RANDOM", value: 76)
!135 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_G2", value: 77)
!136 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_G2", value: 78)
!137 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_DHKEY", value: 79)
!138 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_SALT", value: 80)
!139 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_SALT", value: 81)
!140 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_MACKEY", value: 82)
!141 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_MACKEY", value: 83)
!142 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_LTK", value: 84)
!143 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_LTK", value: 85)
!144 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_FOR_DHKEY_CHECK", value: 86)
!145 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_FOR_DHKEY_CHECK", value: 87)
!146 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 88)
!147 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 89)
!148 = !DIEnumerator(name: "SM_SC_W4_USER_RESPONSE", value: 90)
!149 = !DIEnumerator(name: "SM_SC_SEND_DHKEY_CHECK_COMMAND", value: 91)
!150 = !DIEnumerator(name: "SM_SC_W4_DHKEY_CHECK_COMMAND", value: 92)
!151 = !DIEnumerator(name: "SM_SC_W4_LTK_REQUEST_SC", value: 93)
!152 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_ILK", value: 94)
!153 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_ILK", value: 95)
!154 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_BR_EDR_LINK_KEY", value: 96)
!155 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_BR_EDR_LINK_KEY", value: 97)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 436, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162}
!158 = !DIEnumerator(name: "IRK_LOOKUP_IDLE", value: 0)
!159 = !DIEnumerator(name: "IRK_LOOKUP_W4_READY", value: 1)
!160 = !DIEnumerator(name: "IRK_LOOKUP_STARTED", value: 2)
!161 = !DIEnumerator(name: "IRK_LOOKUP_SUCCEEDED", value: 3)
!162 = !DIEnumerator(name: "IRK_LOOKUP_FAILED", value: 4)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 445, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "AUTHORIZATION_UNKNOWN", value: 0)
!166 = !DIEnumerator(name: "AUTHORIZATION_PENDING", value: 1)
!167 = !DIEnumerator(name: "AUTHORIZATION_DECLINED", value: 2)
!168 = !DIEnumerator(name: "AUTHORIZATION_GRANTED", value: 3)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 182, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIEnumerator(name: "SM_USER_RESPONSE_IDLE", value: 0)
!172 = !DIEnumerator(name: "SM_USER_RESPONSE_PENDING", value: 1)
!173 = !DIEnumerator(name: "SM_USER_RESPONSE_CONFIRM", value: 2)
!174 = !DIEnumerator(name: "SM_USER_RESPONSE_PASSKEY", value: 3)
!175 = !DIEnumerator(name: "SM_USER_RESPONSE_DECLINE", value: 4)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 112, size: 32, elements: !178)
!177 = !DIFile(filename: "../btstack/Protocol/include/ble/gap.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!178 = !{!179, !180, !181, !182}
!179 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_TYPE_OFF", value: 0)
!180 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_TYPE_STATIC", value: 1)
!181 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_NON_RESOLVABLE", value: 2)
!182 = !DIEnumerator(name: "GAP_RANDOM_ADDRESS_RESOLVABLE", value: 3)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 30, size: 32, elements: !185)
!184 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/ble_api.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!186 = !DIEnumerator(name: "BLE_CMD_ADV_ENABLE", value: 1)
!187 = !DIEnumerator(name: "BLE_CMD_ADV_PARAM", value: 2)
!188 = !DIEnumerator(name: "BLE_CMD_ADV_DATA", value: 3)
!189 = !DIEnumerator(name: "BLE_CMD_RSP_DATA", value: 4)
!190 = !DIEnumerator(name: "BLE_CMD_DISCONNECT", value: 5)
!191 = !DIEnumerator(name: "BLE_CMD_REGIEST_THREAD", value: 6)
!192 = !DIEnumerator(name: "BLE_CMD_ATT_SEND_INIT", value: 7)
!193 = !DIEnumerator(name: "BLE_CMD_ATT_MTU_SIZE", value: 8)
!194 = !DIEnumerator(name: "BLE_CMD_ATT_VAILD_LEN", value: 9)
!195 = !DIEnumerator(name: "BLE_CMD_ATT_SEND_DATA", value: 10)
!196 = !DIEnumerator(name: "BLE_CMD_REQ_CONN_PARAM_UPDATE", value: 11)
!197 = !DIEnumerator(name: "BLE_CMD_SCAN_ENABLE", value: 12)
!198 = !DIEnumerator(name: "BLE_CMD_SCAN_PARAM", value: 13)
!199 = !DIEnumerator(name: "BLE_CMD_STACK_EXIT", value: 14)
!200 = !DIEnumerator(name: "BLE_CMD_CREATE_CONN", value: 15)
!201 = !DIEnumerator(name: "BLE_CMD_CREATE_CONN_CANCEL", value: 16)
!202 = !DIEnumerator(name: "BLE_CMD_ADV_PARAM_EXT", value: 17)
!203 = !DIEnumerator(name: "BLE_CMD_SEND_TEST_KEY_NUM", value: 18)
!204 = !DIEnumerator(name: "BLE_CMD_LATENCY_HOLD_CNT", value: 19)
!205 = !DIEnumerator(name: "BLE_CMD_SET_DATA_LENGTH", value: 20)
!206 = !DIEnumerator(name: "BLE_CMD_SET_HCI_CFG", value: 21)
!207 = !DIEnumerator(name: "BLE_CMD_SCAN_ENABLE2", value: 22)
!208 = !DIEnumerator(name: "BLE_CMD_ATT_SERVER_REQ_RESUME", value: 23)
!209 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SEND_INIT", value: 24)
!210 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SET_CONN_HANDLE", value: 25)
!211 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SEND_DATA", value: 26)
!212 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_MTU_SIZE", value: 27)
!213 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_VAILD_LEN", value: 28)
!214 = !DIEnumerator(name: "BLE_CMD_SM_REQ_RESUME", value: 29)
!215 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_PARAM", value: 64)
!216 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_DATA", value: 65)
!217 = !DIEnumerator(name: "BLE_CMD_EXT_RSP_DATA", value: 66)
!218 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_ENABLE", value: 67)
!219 = !DIEnumerator(name: "BLE_CMD_SET_PHY", value: 68)
!220 = !DIEnumerator(name: "BLE_CMD_EXT_SCAN_PARAM", value: 69)
!221 = !DIEnumerator(name: "BLE_CMD_EXT_SCAN_ENABLE", value: 70)
!222 = !DIEnumerator(name: "BLE_CMD_EXT_CREATE_CONN", value: 71)
!223 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_PARAM", value: 72)
!224 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_DATA", value: 73)
!225 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_ENABLE", value: 74)
!226 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_CREAT_SYNC", value: 75)
!227 = !DIEnumerator(name: "BLE_CMD_SEARCH_PROFILE", value: 128)
!228 = !DIEnumerator(name: "BLE_CMD_WRITE_CCC", value: 129)
!229 = !DIEnumerator(name: "BLE_CMD_ONNN_PARAM_UPDATA", value: 130)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 5393, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIEnumerator(name: "SM_API_REQ_PAIRING", value: 1)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1489, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DIEnumerator(name: "HCI_STATE_OFF", value: 0)
!236 = !DIEnumerator(name: "HCI_STATE_INITIALIZING", value: 1)
!237 = !DIEnumerator(name: "HCI_STATE_WORKING", value: 2)
!238 = !DIEnumerator(name: "HCI_STATE_HALTING", value: 3)
!239 = !DIEnumerator(name: "HCI_STATE_SLEEPING", value: 4)
!240 = !DIEnumerator(name: "HCI_STATE_FALLING_ASLEEP", value: 5)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 246, size: 32, elements: !242)
!242 = !{!243, !244, !245, !246, !247}
!243 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_NONE", value: 0)
!244 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_REQUEST", value: 1)
!245 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_RESPONSE", value: 2)
!246 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_CHANGE_HCI_CON_PARAMETERS", value: 3)
!247 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_DENY", value: 4)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 157, size: 32, elements: !250)
!249 = !DIFile(filename: "../btstack/Protocol/include/ble/att_server.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!250 = !{!251, !252, !253, !254}
!251 = !DIEnumerator(name: "ATT_SERVER_IDLE", value: 0)
!252 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED", value: 1)
!253 = !DIEnumerator(name: "ATT_SERVER_W4_SIGNED_WRITE_VALIDATION", value: 2)
!254 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED", value: 3)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 201, size: 32, elements: !256)
!256 = !{!257, !258}
!257 = !DIEnumerator(name: "ADDRESS_RESOLUTION_SUCEEDED", value: 0)
!258 = !DIEnumerator(name: "ADDRESS_RESOLUTION_FAILED", value: 1)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 57, size: 32, elements: !261)
!260 = !DIFile(filename: "../btstack/Protocol/include/ble/sm.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!262 = !DIEnumerator(name: "SM_CODE_PAIRING_REQUEST", value: 1)
!263 = !DIEnumerator(name: "SM_CODE_PAIRING_RESPONSE", value: 2)
!264 = !DIEnumerator(name: "SM_CODE_PAIRING_CONFIRM", value: 3)
!265 = !DIEnumerator(name: "SM_CODE_PAIRING_RANDOM", value: 4)
!266 = !DIEnumerator(name: "SM_CODE_PAIRING_FAILED", value: 5)
!267 = !DIEnumerator(name: "SM_CODE_ENCRYPTION_INFORMATION", value: 6)
!268 = !DIEnumerator(name: "SM_CODE_MASTER_IDENTIFICATION", value: 7)
!269 = !DIEnumerator(name: "SM_CODE_IDENTITY_INFORMATION", value: 8)
!270 = !DIEnumerator(name: "SM_CODE_IDENTITY_ADDRESS_INFORMATION", value: 9)
!271 = !DIEnumerator(name: "SM_CODE_SIGNING_INFORMATION", value: 10)
!272 = !DIEnumerator(name: "SM_CODE_SECURITY_REQUEST", value: 11)
!273 = !DIEnumerator(name: "SM_CODE_PAIRING_PUBLIC_KEY", value: 12)
!274 = !DIEnumerator(name: "SM_CODE_PAIRING_DHKEY_CHECK", value: 13)
!275 = !DIEnumerator(name: "SM_CODE_KEYPRESS_NOTIFICATION", value: 14)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 525, size: 32, elements: !277)
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIEnumerator(name: "DIS_REASON_TIMOUT", value: 1)
!279 = !DIEnumerator(name: "DIS_REASON_KEY_MISS", value: 2)
!280 = !DIEnumerator(name: "DIS_REASON_REJECT", value: 3)
!281 = !DIEnumerator(name: "DIS_REASON_FAIL_PEER", value: 4)
!282 = !DIEnumerator(name: "DIS_REASON_FAIL_LOACL", value: 5)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 156, size: 32, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIEnumerator(name: "REMOTE_TYPE_UNKNOWN", value: 0)
!286 = !DIEnumerator(name: "REMOTE_TYPE_ANDROID", value: 1)
!287 = !DIEnumerator(name: "REMOTE_TYPE_IOS", value: 2)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 148, size: 32, elements: !289)
!289 = !{!290, !291, !292, !293}
!290 = !DIEnumerator(name: "HCI_CFG_OWN_ADDRESS_TYPE", value: 0)
!291 = !DIEnumerator(name: "HCI_CFG_ADV_FILTER_POLICY", value: 1)
!292 = !DIEnumerator(name: "HCI_CFG_SCAN_FILTER_POLICY", value: 2)
!293 = !DIEnumerator(name: "HCI_CFG_INITIATOR_FILTER_POLICY", value: 3)
!294 = !{!295, !317, !318, !319, !320, !441, !442, !370, !443, !444, !454, !350, !455}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_lookup_entry_t", file: !260, line: 130, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 126, size: 128, elements: !298)
!298 = !{!299, !307, !316}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !297, file: !260, line: 127, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !301, line: 100, baseType: !302)
!301 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !301, line: 55, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !301, line: 53, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !301, line: 54, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !297, file: !260, line: 128, baseType: !308, size: 48, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !309, line: 7, baseType: !310)
!309 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 48, elements: !314)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !312, line: 44, baseType: !313)
!312 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!313 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!314 = !{!315}
!315 = !DISubrange(count: 6)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !297, file: !260, line: 129, baseType: !317, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_type_t", file: !6, line: 1475, baseType: !5)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_hci_connection_t", file: !56, line: 605, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__le_hci_connection", file: !56, line: 571, size: 9792, elements: !323)
!323 = !{!324, !325, !326, !330, !331, !332, !334, !335, !336, !337, !338, !339, !372, !431, !435, !436, !437, !438, !439, !440}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !322, file: !56, line: 572, baseType: !300, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !322, file: !56, line: 574, baseType: !308, size: 48, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !322, file: !56, line: 576, baseType: !327, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !309, line: 9, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !312, line: 46, baseType: !329)
!329 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !322, file: !56, line: 578, baseType: !317, size: 32, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !322, file: !56, line: 581, baseType: !311, size: 8, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_parameter_update_state", scope: !322, file: !56, line: 584, baseType: !333, size: 32, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_con_parameter_update_state_t", file: !56, line: 252, baseType: !241)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_param_update_identifier", scope: !322, file: !56, line: 585, baseType: !311, size: 8, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !322, file: !56, line: 586, baseType: !328, size: 16, offset: 208)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !322, file: !56, line: 587, baseType: !328, size: 16, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency", scope: !322, file: !56, line: 588, baseType: !328, size: 16, offset: 240)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout", scope: !322, file: !56, line: 589, baseType: !328, size: 16, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection", scope: !322, file: !56, line: 592, baseType: !340, size: 448, offset: 288)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_connection_t", file: !56, line: 475, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sm_connection", file: !56, line: 456, size: 448, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !351, !353, !354, !355, !356, !361, !363, !364, !368, !369, !371}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sm_handle", scope: !341, file: !56, line: 457, baseType: !327, size: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sm_role", scope: !341, file: !56, line: 458, baseType: !311, size: 8, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sm_security_request_received", scope: !341, file: !56, line: 459, baseType: !311, size: 8, offset: 24)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sm_bonding_requested", scope: !341, file: !56, line: 460, baseType: !311, size: 8, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_addr_type", scope: !341, file: !56, line: 461, baseType: !311, size: 8, offset: 40)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_address", scope: !341, file: !56, line: 462, baseType: !308, size: 48, offset: 48)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sm_engine_state", scope: !341, file: !56, line: 463, baseType: !350, size: 32, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_manager_state_t", file: !56, line: 433, baseType: !55)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sm_irk_lookup_state", scope: !341, file: !56, line: 464, baseType: !352, size: 32, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "irk_lookup_state_t", file: !56, line: 442, baseType: !156)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_encrypted", scope: !341, file: !56, line: 465, baseType: !311, size: 8, offset: 160)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authenticated", scope: !341, file: !56, line: 466, baseType: !311, size: 8, offset: 168)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sm_actual_encryption_key_size", scope: !341, file: !56, line: 467, baseType: !311, size: 8, offset: 176)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_preq", scope: !341, file: !56, line: 468, baseType: !357, size: 56, offset: 184)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_pairing_packet_t", file: !56, line: 452, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 56, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 7)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authorization_state", scope: !341, file: !56, line: 469, baseType: !362, size: 32, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "authorization_state_t", file: !56, line: 450, baseType: !163)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ediv", scope: !341, file: !56, line: 470, baseType: !328, size: 16, offset: 288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_rand", scope: !341, file: !56, line: 471, baseType: !365, size: 64, offset: 304)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 64, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sm_disconn_reason", scope: !341, file: !56, line: 472, baseType: !311, size: 8, offset: 368)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sm_le_db_index", scope: !341, file: !56, line: 473, baseType: !370, size: 32, offset: 384)
!370 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sm_timeout_id", scope: !341, file: !56, line: 474, baseType: !370, size: 32, offset: 416)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "att_server", scope: !322, file: !56, line: 595, baseType: !373, size: 4640, offset: 736)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_t", file: !249, line: 187, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 164, size: 4640, elements: !375)
!375 = !{!376, !378, !379, !380, !381, !382, !383, !403, !414, !415, !419, !420, !421, !422, !423, !424}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !249, line: 165, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_state_t", file: !249, line: 162, baseType: !248)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr_type", scope: !374, file: !249, line: 167, baseType: !311, size: 8, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address", scope: !374, file: !249, line: 168, baseType: !308, size: 48, offset: 40)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ir_le_device_db_index", scope: !374, file: !249, line: 170, baseType: !370, size: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ir_lookup_active", scope: !374, file: !249, line: 171, baseType: !370, size: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_handle", scope: !374, file: !249, line: 173, baseType: !370, size: 32, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_timer", scope: !374, file: !249, line: 174, baseType: !384, size: 160, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !385, line: 19, baseType: !386)
!385 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !385, line: 7, size: 160, elements: !387)
!387 = !{!388, !389, !392, !393, !394, !395, !396, !397, !402}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !386, file: !385, line: 8, baseType: !302, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !386, file: !385, line: 10, baseType: !390, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !312, line: 48, baseType: !391)
!391 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !386, file: !385, line: 11, baseType: !390, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !386, file: !385, line: 12, baseType: !390, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !386, file: !385, line: 13, baseType: !390, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !386, file: !385, line: 14, baseType: !390, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !386, file: !385, line: 15, baseType: !390, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !386, file: !385, line: 17, baseType: !398, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !386, file: !385, line: 18, baseType: !319, size: 32, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !374, file: !249, line: 176, baseType: !404, size: 80, offset: 352)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_connection_t", file: !405, line: 41, baseType: !406)
!405 = !DIFile(filename: "../btstack/Protocol/include/ble/att_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_connection", file: !405, line: 34, size: 80, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !406, file: !405, line: 35, baseType: !327, size: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !406, file: !405, line: 36, baseType: !328, size: 16, offset: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !406, file: !405, line: 37, baseType: !328, size: 16, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_key_size", scope: !406, file: !405, line: 38, baseType: !311, size: 8, offset: 48)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !406, file: !405, line: 39, baseType: !311, size: 8, offset: 56)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !406, file: !405, line: 40, baseType: !311, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "request_size", scope: !374, file: !249, line: 178, baseType: !328, size: 16, offset: 432)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffer", scope: !374, file: !249, line: 179, baseType: !416, size: 4136, offset: 448)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 4136, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 517)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flow_hold_flag", scope: !374, file: !249, line: 181, baseType: !311, size: 1, offset: 4584, flags: DIFlagBitField, extraData: i64 4584)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_request_flag", scope: !374, file: !249, line: 182, baseType: !311, size: 1, offset: 4585, flags: DIFlagBitField, extraData: i64 4584)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "check_remote_tag", scope: !374, file: !249, line: 183, baseType: !311, size: 3, offset: 4586, flags: DIFlagBitField, extraData: i64 4584)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "request_busy", scope: !374, file: !249, line: 184, baseType: !311, size: 1, offset: 4589, flags: DIFlagBitField, extraData: i64 4584)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "reserverd", scope: !374, file: !249, line: 185, baseType: !311, size: 2, offset: 4590, flags: DIFlagBitField, extraData: i64 4584)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "result_callback", scope: !374, file: !249, line: 186, baseType: !425, size: 32, offset: 4608)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428, !430}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !429, line: 13, baseType: !329)
!429 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !429, line: 11, baseType: !313)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_buffer", scope: !322, file: !56, line: 597, baseType: !432, size: 4232, offset: 5376)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 4232, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 529)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_pos", scope: !322, file: !56, line: 598, baseType: !328, size: 16, offset: 9616)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_length", scope: !322, file: !56, line: 599, baseType: !328, size: 16, offset: 9632)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "num_acl_packets_sent", scope: !322, file: !56, line: 600, baseType: !311, size: 8, offset: 9648)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "own_id_address", scope: !322, file: !56, line: 602, baseType: !308, size: 48, offset: 9656)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "own_address", scope: !322, file: !56, line: 603, baseType: !308, size: 48, offset: 9704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "own_address_type", scope: !322, file: !56, line: 604, baseType: !317, size: 32, offset: 9760)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "derived_key_generation_t", file: !3, line: 151, baseType: !29)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "random_address_update_t", file: !3, line: 161, baseType: !37)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_callback_registration_t", file: !6, line: 64, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 61, size: 64, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !446, file: !6, line: 62, baseType: !300, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !446, file: !6, line: 63, baseType: !450, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !6, line: 58, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !311, !328, !441, !328}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "JL_RAND_TypeDef", file: !457, line: 578, baseType: !458)
!457 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/bd19.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 575, size: 64, elements: !459)
!459 = !{!460, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "R64L", scope: !458, file: !457, line: 576, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !391)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "R64H", scope: !458, file: !457, line: 577, baseType: !461, size: 32, offset: 32)
!464 = !{!0, !465, !468, !470, !573, !687, !693, !698}
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "gap_random_adress_type", scope: !2, file: !3, line: 666, type: !467, isLocal: true, isDefinition: true)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "gap_random_address_type_t", file: !177, line: 117, baseType: !176)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "gap_random_adress_update_period", scope: !2, file: !3, line: 668, type: !390, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "sm_global_info", scope: !2, file: !3, line: 434, type: !472, isLocal: true, isDefinition: true)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_info_t", file: !3, line: 429, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 318, size: 3840, elements: !475)
!475 = !{!476, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !551, !554, !556, !557, !558, !559, !560, !561, !562, !566, !572}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "the_setup", scope: !474, file: !3, line: 319, baseType: !477, size: 2464)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_setup_context_t", file: !3, line: 308, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sm_setup_context", file: !3, line: 236, size: 2464, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !489, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sm_timeout", scope: !478, file: !3, line: 238, baseType: !384, size: 160)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sm_pairing_failed_reason", scope: !478, file: !3, line: 241, baseType: !311, size: 8, offset: 160)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sm_user_response", scope: !478, file: !3, line: 244, baseType: !311, size: 8, offset: 168)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sm_keypress_notification", scope: !478, file: !3, line: 245, baseType: !311, size: 8, offset: 176)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sm_key_distribution_send_set", scope: !478, file: !3, line: 248, baseType: !311, size: 8, offset: 184)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sm_key_distribution_send_set_save", scope: !478, file: !3, line: 249, baseType: !311, size: 8, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sm_key_distribution_received_set", scope: !478, file: !3, line: 250, baseType: !311, size: 8, offset: 200)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sm_stk_generation_method", scope: !478, file: !3, line: 253, baseType: !488, size: 32, offset: 224)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "stk_generation_method_t", file: !3, line: 180, baseType: !21)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sm_tk", scope: !478, file: !3, line: 254, baseType: !490, size: 128, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_key_t", file: !6, line: 76, baseType: !491)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 16)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sm_use_secure_connections", scope: !478, file: !3, line: 255, baseType: !311, size: 8, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sm_c1_t3_value", scope: !478, file: !3, line: 257, baseType: !490, size: 128, offset: 392)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_preq", scope: !478, file: !3, line: 258, baseType: !357, size: 56, offset: 520)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sm_s_pres", scope: !478, file: !3, line: 259, baseType: !357, size: 56, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_random", scope: !478, file: !3, line: 260, baseType: !490, size: 128, offset: 632)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_confirm", scope: !478, file: !3, line: 261, baseType: !490, size: 128, offset: 760)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_random", scope: !478, file: !3, line: 262, baseType: !490, size: 128, offset: 888)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_confirm", scope: !478, file: !3, line: 263, baseType: !490, size: 128, offset: 1016)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_addr_type", scope: !478, file: !3, line: 264, baseType: !311, size: 8, offset: 1144)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sm_s_addr_type", scope: !478, file: !3, line: 265, baseType: !311, size: 8, offset: 1152)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_address", scope: !478, file: !3, line: 266, baseType: !308, size: 48, offset: 1160)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sm_s_address", scope: !478, file: !3, line: 267, baseType: !308, size: 48, offset: 1208)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ltk", scope: !478, file: !3, line: 268, baseType: !490, size: 128, offset: 1256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sm_state_vars", scope: !478, file: !3, line: 270, baseType: !311, size: 8, offset: 1384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_y", scope: !478, file: !3, line: 288, baseType: !328, size: 16, offset: 1392)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_div", scope: !478, file: !3, line: 289, baseType: !328, size: 16, offset: 1408)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ediv", scope: !478, file: !3, line: 290, baseType: !328, size: 16, offset: 1424)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_rand", scope: !478, file: !3, line: 291, baseType: !365, size: 64, offset: 1440)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ltk", scope: !478, file: !3, line: 292, baseType: !490, size: 128, offset: 1504)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_csrk", scope: !478, file: !3, line: 293, baseType: !490, size: 128, offset: 1632)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_irk", scope: !478, file: !3, line: 294, baseType: !490, size: 128, offset: 1760)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_y", scope: !478, file: !3, line: 298, baseType: !328, size: 16, offset: 1888)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_div", scope: !478, file: !3, line: 299, baseType: !328, size: 16, offset: 1904)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_ediv", scope: !478, file: !3, line: 300, baseType: !328, size: 16, offset: 1920)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_rand", scope: !478, file: !3, line: 301, baseType: !365, size: 64, offset: 1936)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_ltk", scope: !478, file: !3, line: 302, baseType: !490, size: 128, offset: 2000)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_irk", scope: !478, file: !3, line: 303, baseType: !490, size: 128, offset: 2128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_csrk", scope: !478, file: !3, line: 304, baseType: !490, size: 128, offset: 2256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_addr_type", scope: !478, file: !3, line: 305, baseType: !311, size: 8, offset: 2384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_address", scope: !478, file: !3, line: 306, baseType: !308, size: 48, offset: 2392)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "test_use_fixed_local_csrk", scope: !474, file: !3, line: 320, baseType: !311, size: 8, offset: 2464)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sm_accepted_stk_generation_methods", scope: !474, file: !3, line: 323, baseType: !311, size: 8, offset: 2472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sm_max_encryption_key_size", scope: !474, file: !3, line: 324, baseType: !311, size: 8, offset: 2480)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sm_min_encryption_key_size", scope: !474, file: !3, line: 325, baseType: !311, size: 8, offset: 2488)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sm_auth_req", scope: !474, file: !3, line: 326, baseType: !311, size: 8, offset: 2496)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sm_io_capabilities", scope: !474, file: !3, line: 327, baseType: !311, size: 8, offset: 2504)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sm_request_security", scope: !474, file: !3, line: 328, baseType: !311, size: 4, offset: 2512, flags: DIFlagBitField, extraData: i64 2512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sm_master_auto_pair", scope: !474, file: !3, line: 329, baseType: !311, size: 2, offset: 2516, flags: DIFlagBitField, extraData: i64 2512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sm_master_pair_redo", scope: !474, file: !3, line: 330, baseType: !311, size: 2, offset: 2518, flags: DIFlagBitField, extraData: i64 2512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sm_fixed_legacy_pairing_passkey_in_display_role", scope: !474, file: !3, line: 331, baseType: !390, size: 32, offset: 2528)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sm_reconstruct_ltk_without_le_device_db_entry", scope: !474, file: !3, line: 332, baseType: !311, size: 8, offset: 2560)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sm_persistent_er", scope: !474, file: !3, line: 338, baseType: !490, size: 128, offset: 2568)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sm_persistent_ir", scope: !474, file: !3, line: 339, baseType: !490, size: 128, offset: 2696)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sm_persistent_dhk", scope: !474, file: !3, line: 342, baseType: !490, size: 128, offset: 2824)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sm_persistent_irk", scope: !474, file: !3, line: 343, baseType: !490, size: 128, offset: 2952)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sm_persistent_irk_ready", scope: !474, file: !3, line: 344, baseType: !311, size: 4, offset: 3080, flags: DIFlagBitField, extraData: i64 3080)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sm_irk_generate_address", scope: !474, file: !3, line: 345, baseType: !311, size: 4, offset: 3084, flags: DIFlagBitField, extraData: i64 3080)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dkg_state", scope: !474, file: !3, line: 346, baseType: !442, size: 32, offset: 3104)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rau_state", scope: !474, file: !3, line: 352, baseType: !443, size: 32, offset: 3136)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sm_random_address", scope: !474, file: !3, line: 353, baseType: !308, size: 48, offset: 3168)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sm_address_resolution_test", scope: !474, file: !3, line: 382, baseType: !370, size: 32, offset: 3232)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sm_address_resolution_ah_calculation_active", scope: !474, file: !3, line: 383, baseType: !370, size: 32, offset: 3264)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sm_address_resolution_addr_type", scope: !474, file: !3, line: 384, baseType: !311, size: 8, offset: 3296)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sm_address_resolution_address", scope: !474, file: !3, line: 385, baseType: !308, size: 48, offset: 3304)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sm_address_resolution_context", scope: !474, file: !3, line: 386, baseType: !319, size: 32, offset: 3360)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sm_address_resolution_mode", scope: !474, file: !3, line: 387, baseType: !550, size: 32, offset: 3392)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "address_resolution_mode_t", file: !3, line: 199, baseType: !46)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sm_address_resolution_general_queue", scope: !474, file: !3, line: 388, baseType: !552, size: 32, offset: 3424)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !301, line: 101, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sm_aes128_state", scope: !474, file: !3, line: 391, baseType: !555, size: 32, offset: 3456)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_aes128_state_t", file: !3, line: 193, baseType: !51)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sm_aes128_context", scope: !474, file: !3, line: 392, baseType: !319, size: 32, offset: 3488)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sm_random_context", scope: !474, file: !3, line: 401, baseType: !319, size: 32, offset: 3520)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hci_event_callback_registration", scope: !474, file: !3, line: 404, baseType: !445, size: 64, offset: 3552)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sm_event_callback_registration", scope: !474, file: !3, line: 405, baseType: !445, size: 64, offset: 3616)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sm_event_handlers", scope: !474, file: !3, line: 408, baseType: !552, size: 32, offset: 3680)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sm_active_connection_handle", scope: !474, file: !3, line: 422, baseType: !328, size: 16, offset: 3712)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sm_get_oob_data", scope: !474, file: !3, line: 426, baseType: !563, size: 32, offset: 3744)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 32)
!564 = !DISubroutineType(types: !565)
!565 = !{!370, !311, !441, !441}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reset_passkey_cbk", scope: !474, file: !3, line: 427, baseType: !567, size: 32, offset: 3776)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 32)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !570, !328}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !429, line: 15, baseType: !391)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_enc_delay", scope: !474, file: !3, line: 428, baseType: !328, size: 16, offset: 3808)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "buffer", scope: !575, file: !3, line: 2555, type: !685, isLocal: true, isDefinition: true)
!575 = distinct !DISubprogram(name: "sm_run", scope: !3, file: !3, line: 2323, type: !576, isLocal: true, isDefinition: true, scopeLine: 2324, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null}
!578 = !{!579, !587, !591, !594, !598, !602, !603, !608, !612, !613, !614, !615, !617, !618, !621, !622, !623, !624, !625, !631, !632, !633, !636, !638, !639, !640, !645, !648, !651, !653, !655, !657, !659, !662, !668, !671, !674, !675, !678, !684}
!579 = !DILocalVariable(name: "it", scope: !575, file: !3, line: 2326, type: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_iterator_t", file: !301, line: 102, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_iterator_t", file: !301, line: 65, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 61, size: 96, elements: !583)
!583 = !{!584, !585, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "advance_on_next", scope: !582, file: !301, line: 62, baseType: !370, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !582, file: !301, line: 63, baseType: !553, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !582, file: !301, line: 64, baseType: !553, size: 32, offset: 64)
!587 = !DILocalVariable(name: "d1_prime", scope: !588, file: !3, line: 2350, type: !490)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 2348, column: 56)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 2348, column: 13)
!590 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2345, column: 32)
!591 = !DILocalVariable(name: "d1_prime", scope: !592, file: !3, line: 2361, type: !490)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 2359, column: 56)
!593 = distinct !DILexicalBlock(scope: !590, file: !3, line: 2359, column: 13)
!594 = !DILocalVariable(name: "r_prime", scope: !595, file: !3, line: 2394, type: !490)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 2393, column: 56)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 2393, column: 13)
!597 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2386, column: 32)
!598 = !DILocalVariable(name: "hci_connection", scope: !599, file: !3, line: 2433, type: !320)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 2432, column: 52)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 2430, column: 39)
!601 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2430, column: 9)
!602 = !DILocalVariable(name: "sm_connection", scope: !599, file: !3, line: 2434, type: !454)
!603 = !DILocalVariable(name: "entry", scope: !604, file: !3, line: 2447, type: !295)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 2446, column: 79)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 2446, column: 13)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 2445, column: 39)
!607 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2445, column: 9)
!608 = !DILocalVariable(name: "addr_type", scope: !609, file: !3, line: 2458, type: !370)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 2457, column: 75)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 2455, column: 40)
!611 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2455, column: 9)
!612 = !DILocalVariable(name: "addr", scope: !609, file: !3, line: 2459, type: !308)
!613 = !DILocalVariable(name: "irk", scope: !609, file: !3, line: 2460, type: !490)
!614 = !DILocalVariable(name: "r_prime", scope: !609, file: !3, line: 2482, type: !490)
!615 = !DILocalVariable(name: "hci_connection", scope: !616, file: !3, line: 2498, type: !320)
!616 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2497, column: 115)
!617 = !DILocalVariable(name: "sm_connection", scope: !616, file: !3, line: 2499, type: !454)
!618 = !DILocalVariable(name: "hci_connection", scope: !619, file: !3, line: 2543, type: !320)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 2542, column: 119)
!620 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2538, column: 15)
!621 = !DILocalVariable(name: "sm_connection", scope: !619, file: !3, line: 2544, type: !454)
!622 = !DILocalVariable(name: "done", scope: !619, file: !3, line: 2546, type: !370)
!623 = !DILocalVariable(name: "err", scope: !619, file: !3, line: 2547, type: !370)
!624 = !DILocalVariable(name: "connection", scope: !620, file: !3, line: 2659, type: !454)
!625 = !DILocalVariable(name: "buffer", scope: !626, file: !3, line: 2688, type: !628)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 2687, column: 54)
!627 = distinct !DILexicalBlock(scope: !620, file: !3, line: 2687, column: 13)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 2)
!631 = !DILocalVariable(name: "plaintext", scope: !620, file: !3, line: 2696, type: !490)
!632 = !DILocalVariable(name: "key_distribution_flags", scope: !620, file: !3, line: 2697, type: !370)
!633 = !DILocalVariable(name: "buffer", scope: !634, file: !3, line: 2707, type: !628)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 2706, column: 46)
!635 = distinct !DILexicalBlock(scope: !620, file: !3, line: 2703, column: 46)
!636 = !DILocalVariable(name: "peer_ltk_flipped", scope: !637, file: !3, line: 2817, type: !490)
!637 = distinct !DILexicalBlock(scope: !635, file: !3, line: 2816, column: 54)
!638 = !DILocalVariable(name: "rand_high", scope: !637, file: !3, line: 2820, type: !390)
!639 = !DILocalVariable(name: "rand_low", scope: !637, file: !3, line: 2821, type: !390)
!640 = !DILocalVariable(name: "buffer", scope: !641, file: !3, line: 2977, type: !642)
!641 = distinct !DILexicalBlock(scope: !635, file: !3, line: 2976, column: 42)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 136, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 17)
!645 = !DILocalVariable(name: "d_prime", scope: !646, file: !3, line: 3013, type: !490)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 3012, column: 60)
!647 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3012, column: 17)
!648 = !DILocalVariable(name: "d_prime", scope: !649, file: !3, line: 3024, type: !490)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 3023, column: 60)
!650 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3023, column: 17)
!651 = !DILocalVariable(name: "buffer", scope: !652, file: !3, line: 3078, type: !642)
!652 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3077, column: 46)
!653 = !DILocalVariable(name: "stk_flipped", scope: !654, file: !3, line: 3092, type: !490)
!654 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3091, column: 47)
!655 = !DILocalVariable(name: "ltk_flipped", scope: !656, file: !3, line: 3104, type: !490)
!656 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3103, column: 47)
!657 = !DILocalVariable(name: "stk_flipped", scope: !658, file: !3, line: 3141, type: !490)
!658 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3140, column: 54)
!659 = !DILocalVariable(name: "buffer", scope: !660, file: !3, line: 3156, type: !642)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 3154, column: 97)
!661 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3154, column: 17)
!662 = !DILocalVariable(name: "buffer", scope: !663, file: !3, line: 3167, type: !665)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 3165, column: 96)
!664 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3165, column: 17)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 88, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 11)
!668 = !DILocalVariable(name: "buffer", scope: !669, file: !3, line: 3184, type: !642)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 3182, column: 95)
!670 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3182, column: 17)
!671 = !DILocalVariable(name: "local_address", scope: !672, file: !3, line: 3197, type: !308)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 3195, column: 103)
!673 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3195, column: 17)
!674 = !DILocalVariable(name: "buffer", scope: !672, file: !3, line: 3198, type: !365)
!675 = !DILocalVariable(name: "buffer", scope: !676, file: !3, line: 3230, type: !642)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 3222, column: 97)
!677 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3222, column: 17)
!678 = !DILocalVariable(name: "ext_data", scope: !679, file: !3, line: 3257, type: !683)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 3256, column: 77)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 3256, column: 21)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 3251, column: 20)
!682 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3241, column: 17)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 128, elements: !492)
!684 = !DILocalVariable(name: "ret_msg", scope: !679, file: !3, line: 3258, type: !370)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 16, elements: !629)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "stk_generation_method", scope: !2, file: !3, line: 441, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 800, elements: !691)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!691 = !{!692, !692}
!692 = !DISubrange(count: 5)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "sm_pdu_size", scope: !2, file: !3, line: 4211, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 120, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 15)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "gap_random_address_update_timer", scope: !2, file: !3, line: 667, type: !384, isLocal: true, isDefinition: true)
!700 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!701 = !{i32 2, !"Dwarf Version", i32 4}
!702 = !{i32 2, !"Debug Info Version", i32 3}
!703 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!704 = distinct !DISubprogram(name: "sm_address_resolution_lookup", scope: !3, file: !3, line: 1117, type: !705, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{!370, !311, !441}
!707 = !{!708, !709, !710, !711}
!708 = !DILocalVariable(name: "address_type", arg: 1, scope: !704, file: !3, line: 1117, type: !311)
!709 = !DILocalVariable(name: "address", arg: 2, scope: !704, file: !3, line: 1117, type: !441)
!710 = !DILocalVariable(name: "it", scope: !704, file: !3, line: 1120, type: !580)
!711 = !DILocalVariable(name: "entry", scope: !704, file: !3, line: 1121, type: !295)
!712 = !DILocation(line: 1117, column: 42, scope: !704)
!713 = !DILocation(line: 1117, column: 66, scope: !704)
!714 = !DILocation(line: 1120, column: 5, scope: !704)
!715 = !DILocation(line: 1122, column: 5, scope: !704)
!716 = !{!717, !717, i64 0}
!717 = !{!"any pointer", !718, i64 0}
!718 = !{!"omnipotent char", !719, i64 0}
!719 = !{!"Simple C/C++ TBAA"}
!720 = !DILocation(line: 1120, column: 28, scope: !704)
!721 = !DILocation(line: 1123, column: 12, scope: !722)
!722 = !DILexicalBlockFile(scope: !704, file: !3, discriminator: 1)
!723 = !DILocation(line: 1123, column: 5, scope: !722)
!724 = !DILocation(line: 1124, column: 39, scope: !725)
!725 = distinct !DILexicalBlock(scope: !704, file: !3, line: 1123, column: 48)
!726 = !DILocation(line: 1125, column: 20, scope: !727)
!727 = distinct !DILexicalBlock(scope: !725, file: !3, line: 1125, column: 13)
!728 = !{!729, !718, i64 12}
!729 = !{!"", !730, i64 0, !718, i64 4, !718, i64 12}
!730 = !{!"btstack_linked_item", !717, i64 0}
!731 = !DILocation(line: 1125, column: 33, scope: !727)
!732 = !DILocation(line: 1125, column: 13, scope: !725)
!733 = distinct !{!733, !734, !735}
!734 = !DILocation(line: 1123, column: 5, scope: !704)
!735 = !DILocation(line: 1133, column: 5, scope: !704)
!736 = !DILocation(line: 1128, column: 27, scope: !737)
!737 = distinct !DILexicalBlock(scope: !725, file: !3, line: 1128, column: 13)
!738 = !DILocation(line: 1128, column: 20, scope: !737)
!739 = !DILocation(line: 1128, column: 13, scope: !737)
!740 = !DILocation(line: 1128, column: 13, scope: !725)
!741 = !DILocation(line: 1134, column: 13, scope: !704)
!742 = !DILocation(line: 1135, column: 10, scope: !743)
!743 = distinct !DILexicalBlock(scope: !704, file: !3, line: 1135, column: 9)
!744 = !DILocation(line: 1135, column: 9, scope: !704)
!745 = !DILocation(line: 1138, column: 27, scope: !704)
!746 = !DILocation(line: 1138, column: 12, scope: !704)
!747 = !DILocation(line: 1138, column: 25, scope: !704)
!748 = !DILocation(line: 1139, column: 19, scope: !704)
!749 = !DILocation(line: 1139, column: 5, scope: !704)
!750 = !DILocation(line: 1140, column: 5, scope: !704)
!751 = !DILocation(line: 1141, column: 5, scope: !704)
!752 = !DILocation(line: 1142, column: 5, scope: !704)
!753 = !DILocation(line: 1143, column: 1, scope: !704)
!754 = !DILocation(line: 2326, column: 5, scope: !575)
!755 = !DILocation(line: 2328, column: 5, scope: !756)
!756 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2328, column: 5)
!757 = !{!758, !758, i64 0}
!758 = !{!"int", !718, i64 0}
!759 = !DILocation(line: 2328, column: 5, scope: !575)
!760 = !DILocation(line: 2331, column: 9, scope: !761)
!761 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2331, column: 9)
!762 = !DILocation(line: 2331, column: 25, scope: !761)
!763 = !DILocation(line: 2331, column: 9, scope: !575)
!764 = !DILocation(line: 2336, column: 10, scope: !765)
!765 = distinct !DILexicalBlock(scope: !575, file: !3, line: 2336, column: 9)
!766 = !DILocation(line: 2336, column: 9, scope: !575)
!767 = !DILocation(line: 2345, column: 13, scope: !575)
!768 = !DILocation(line: 2345, column: 21, scope: !575)
!769 = !{!770, !718, i64 388}
!770 = !{!"", !771, i64 0, !718, i64 308, !718, i64 309, !718, i64 310, !718, i64 311, !718, i64 312, !718, i64 313, !718, i64 314, !718, i64 314, !718, i64 314, !758, i64 316, !718, i64 320, !718, i64 321, !718, i64 337, !718, i64 353, !718, i64 369, !718, i64 385, !718, i64 385, !718, i64 388, !718, i64 392, !718, i64 396, !758, i64 404, !758, i64 408, !718, i64 412, !718, i64 413, !717, i64 420, !718, i64 424, !717, i64 428, !718, i64 432, !717, i64 436, !717, i64 440, !774, i64 444, !774, i64 452, !717, i64 460, !773, i64 464, !717, i64 468, !717, i64 472, !773, i64 476}
!771 = !{!"sm_setup_context", !772, i64 0, !718, i64 20, !718, i64 21, !718, i64 22, !718, i64 23, !718, i64 24, !718, i64 25, !718, i64 28, !718, i64 32, !718, i64 48, !718, i64 49, !718, i64 65, !718, i64 72, !718, i64 79, !718, i64 95, !718, i64 111, !718, i64 127, !718, i64 143, !718, i64 144, !718, i64 145, !718, i64 151, !718, i64 157, !718, i64 173, !773, i64 174, !773, i64 176, !773, i64 178, !718, i64 180, !718, i64 188, !718, i64 204, !718, i64 220, !773, i64 236, !773, i64 238, !773, i64 240, !718, i64 242, !718, i64 250, !718, i64 266, !718, i64 282, !718, i64 298, !718, i64 299}
!772 = !{!"btstack_timer_source", !730, i64 0, !758, i64 4, !758, i64 8, !758, i64 10, !758, i64 10, !758, i64 10, !758, i64 10, !717, i64 12, !717, i64 16}
!773 = !{!"short", !718, i64 0}
!774 = !{!"", !730, i64 0, !717, i64 4}
!775 = !DILocation(line: 2345, column: 5, scope: !575)
!776 = !DILocation(line: 2348, column: 21, scope: !589)
!777 = !{!770, !718, i64 432}
!778 = !DILocation(line: 2348, column: 37, scope: !589)
!779 = !DILocation(line: 2348, column: 13, scope: !590)
!780 = !DILocation(line: 2350, column: 13, scope: !588)
!781 = !DILocation(line: 2350, column: 22, scope: !588)
!782 = !DILocation(line: 2351, column: 13, scope: !588)
!783 = !DILocation(line: 1152, column: 58, scope: !784, inlinedAt: !786)
!784 = distinct !DISubprogram(name: "dkg_next_state", scope: !3, file: !3, line: 1150, type: !576, isLocal: true, isDefinition: true, scopeLine: 1151, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!785 = !{}
!786 = distinct !DILocation(line: 2352, column: 13, scope: !588)
!787 = !DILocation(line: 1152, column: 66, scope: !784, inlinedAt: !786)
!788 = !DILocation(line: 1152, column: 77, scope: !784, inlinedAt: !786)
!789 = !DILocation(line: 1152, column: 23, scope: !784, inlinedAt: !786)
!790 = !DILocation(line: 2353, column: 29, scope: !588)
!791 = !DILocation(line: 2353, column: 13, scope: !588)
!792 = !DILocation(line: 2355, column: 9, scope: !589)
!793 = !DILocation(line: 2359, column: 21, scope: !593)
!794 = !DILocation(line: 2359, column: 37, scope: !593)
!795 = !DILocation(line: 2359, column: 13, scope: !590)
!796 = !DILocation(line: 2361, column: 13, scope: !592)
!797 = !DILocation(line: 2361, column: 22, scope: !592)
!798 = !DILocation(line: 2362, column: 13, scope: !592)
!799 = !DILocation(line: 1152, column: 58, scope: !784, inlinedAt: !800)
!800 = distinct !DILocation(line: 2363, column: 13, scope: !592)
!801 = !DILocation(line: 1152, column: 66, scope: !784, inlinedAt: !800)
!802 = !DILocation(line: 1152, column: 77, scope: !784, inlinedAt: !800)
!803 = !DILocation(line: 1152, column: 23, scope: !784, inlinedAt: !800)
!804 = !DILocation(line: 2364, column: 29, scope: !592)
!805 = !DILocation(line: 2364, column: 13, scope: !592)
!806 = !DILocation(line: 2366, column: 9, scope: !593)
!807 = !DILocation(line: 2386, column: 21, scope: !575)
!808 = !{!770, !718, i64 392}
!809 = !DILocation(line: 2386, column: 5, scope: !575)
!810 = !DILocation(line: 1156, column: 23, scope: !811, inlinedAt: !812)
!811 = distinct !DISubprogram(name: "rau_next_state", scope: !3, file: !3, line: 1154, type: !576, isLocal: true, isDefinition: true, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!812 = distinct !DILocation(line: 2388, column: 9, scope: !597)
!813 = !DILocalVariable(name: "context", arg: 1, scope: !814, file: !3, line: 701, type: !319)
!814 = distinct !DISubprogram(name: "sm_random_start", scope: !3, file: !3, line: 701, type: !815, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !319}
!817 = !{!813}
!818 = !DILocation(line: 701, column: 35, scope: !814, inlinedAt: !819)
!819 = distinct !DILocation(line: 2389, column: 9, scope: !597)
!820 = !DILocation(line: 703, column: 13, scope: !814, inlinedAt: !819)
!821 = !DILocation(line: 703, column: 31, scope: !814, inlinedAt: !819)
!822 = !{!770, !717, i64 440}
!823 = !DILocation(line: 705, column: 5, scope: !814, inlinedAt: !819)
!824 = !DILocation(line: 2390, column: 9, scope: !597)
!825 = !DILocation(line: 2393, column: 21, scope: !596)
!826 = !DILocation(line: 2393, column: 37, scope: !596)
!827 = !DILocation(line: 2393, column: 13, scope: !597)
!828 = !DILocation(line: 2394, column: 13, scope: !595)
!829 = !DILocation(line: 2394, column: 22, scope: !595)
!830 = !DILocation(line: 2395, column: 27, scope: !595)
!831 = !DILocalVariable(name: "r", arg: 1, scope: !832, file: !3, line: 754, type: !441)
!832 = distinct !DISubprogram(name: "sm_ah_r_prime", scope: !3, file: !3, line: 754, type: !833, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !441, !441}
!835 = !{!831, !836}
!836 = !DILocalVariable(name: "r_prime", arg: 2, scope: !832, file: !3, line: 754, type: !441)
!837 = !DILocation(line: 754, column: 35, scope: !832, inlinedAt: !838)
!838 = distinct !DILocation(line: 2395, column: 13, scope: !595)
!839 = !DILocation(line: 754, column: 50, scope: !832, inlinedAt: !838)
!840 = !DILocation(line: 757, column: 5, scope: !832, inlinedAt: !838)
!841 = !DILocation(line: 758, column: 13, scope: !832, inlinedAt: !838)
!842 = !DILocation(line: 758, column: 5, scope: !832, inlinedAt: !838)
!843 = !DILocation(line: 1156, column: 23, scope: !811, inlinedAt: !844)
!844 = distinct !DILocation(line: 2396, column: 13, scope: !595)
!845 = !DILocation(line: 2397, column: 29, scope: !595)
!846 = !DILocation(line: 2397, column: 13, scope: !595)
!847 = !DILocation(line: 2399, column: 9, scope: !596)
!848 = !DILocation(line: 2403, column: 27, scope: !597)
!849 = !DILocation(line: 2405, column: 35, scope: !597)
!850 = !DILocation(line: 2405, column: 9, scope: !597)
!851 = !DILocation(line: 2406, column: 9, scope: !597)
!852 = !DILocation(line: 1104, column: 20, scope: !853, inlinedAt: !856)
!853 = distinct !DISubprogram(name: "sm_address_resolution_idle", scope: !3, file: !3, line: 1102, type: !854, isLocal: true, isDefinition: true, scopeLine: 1103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!854 = !DISubroutineType(types: !855)
!855 = !{!370}
!856 = distinct !DILocation(line: 2430, column: 9, scope: !601)
!857 = !{!770, !718, i64 424}
!858 = !DILocation(line: 1104, column: 47, scope: !853, inlinedAt: !856)
!859 = !DILocation(line: 2430, column: 9, scope: !575)
!860 = !DILocation(line: 2326, column: 28, scope: !575)
!861 = !DILocation(line: 2431, column: 9, scope: !600)
!862 = !DILocation(line: 2432, column: 9, scope: !600)
!863 = !DILocation(line: 2432, column: 16, scope: !864)
!864 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 1)
!865 = !DILocation(line: 2432, column: 9, scope: !864)
!866 = !DILocation(line: 2433, column: 75, scope: !599)
!867 = !DILocation(line: 2435, column: 32, scope: !868)
!868 = distinct !DILexicalBlock(scope: !599, file: !3, line: 2435, column: 17)
!869 = !{!870, !718, i64 16}
!870 = !{!"sm_connection", !773, i64 0, !718, i64 2, !718, i64 3, !718, i64 4, !718, i64 5, !718, i64 6, !718, i64 12, !718, i64 16, !718, i64 20, !718, i64 21, !718, i64 22, !718, i64 23, !718, i64 32, !773, i64 36, !718, i64 38, !718, i64 46, !758, i64 48, !758, i64 52}
!871 = !DILocation(line: 2435, column: 52, scope: !868)
!872 = !DILocation(line: 2435, column: 17, scope: !599)
!873 = !DILocation(line: 2434, column: 66, scope: !599)
!874 = !DILocation(line: 2437, column: 67, scope: !875)
!875 = distinct !DILexicalBlock(scope: !868, file: !3, line: 2435, column: 76)
!876 = !{!870, !718, i64 5}
!877 = !DILocation(line: 2437, column: 101, scope: !875)
!878 = !{!870, !773, i64 0}
!879 = !DILocation(line: 2437, column: 112, scope: !875)
!880 = !DILocalVariable(name: "addr_type", arg: 1, scope: !881, file: !3, line: 1107, type: !311)
!881 = distinct !DISubprogram(name: "sm_address_resolution_start_lookup", scope: !3, file: !3, line: 1107, type: !882, isLocal: true, isDefinition: true, scopeLine: 1108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !311, !327, !441, !550, !319}
!884 = !{!880, !885, !886, !887, !888}
!885 = !DILocalVariable(name: "con_handle", arg: 2, scope: !881, file: !3, line: 1107, type: !327)
!886 = !DILocalVariable(name: "addr", arg: 3, scope: !881, file: !3, line: 1107, type: !441)
!887 = !DILocalVariable(name: "mode", arg: 4, scope: !881, file: !3, line: 1107, type: !550)
!888 = !DILocalVariable(name: "context", arg: 5, scope: !881, file: !3, line: 1107, type: !319)
!889 = !DILocation(line: 1107, column: 56, scope: !881, inlinedAt: !890)
!890 = distinct !DILocation(line: 2437, column: 17, scope: !875)
!891 = !DILocation(line: 1107, column: 84, scope: !881, inlinedAt: !890)
!892 = !DILocation(line: 1107, column: 106, scope: !881, inlinedAt: !890)
!893 = !DILocation(line: 1107, column: 138, scope: !881, inlinedAt: !890)
!894 = !DILocation(line: 1109, column: 12, scope: !881, inlinedAt: !890)
!895 = !DILocation(line: 1109, column: 5, scope: !881, inlinedAt: !890)
!896 = !DILocation(line: 1110, column: 13, scope: !881, inlinedAt: !890)
!897 = !DILocation(line: 1110, column: 45, scope: !881, inlinedAt: !890)
!898 = !{!770, !718, i64 412}
!899 = !DILocation(line: 1111, column: 13, scope: !881, inlinedAt: !890)
!900 = !DILocation(line: 1111, column: 40, scope: !881, inlinedAt: !890)
!901 = !{!770, !758, i64 404}
!902 = !DILocation(line: 1112, column: 13, scope: !881, inlinedAt: !890)
!903 = !DILocation(line: 1112, column: 40, scope: !881, inlinedAt: !890)
!904 = !DILocation(line: 1113, column: 13, scope: !881, inlinedAt: !890)
!905 = !DILocation(line: 1113, column: 43, scope: !881, inlinedAt: !890)
!906 = !{!770, !717, i64 420}
!907 = !DILocation(line: 1114, column: 5, scope: !881, inlinedAt: !890)
!908 = !DILocation(line: 2438, column: 52, scope: !875)
!909 = !DILocation(line: 1104, column: 12, scope: !853, inlinedAt: !910)
!910 = distinct !DILocation(line: 2445, column: 9, scope: !607)
!911 = !DILocation(line: 1104, column: 20, scope: !853, inlinedAt: !910)
!912 = !DILocation(line: 1104, column: 47, scope: !853, inlinedAt: !910)
!913 = !DILocation(line: 2445, column: 9, scope: !575)
!914 = !DILocation(line: 2446, column: 14, scope: !605)
!915 = !DILocation(line: 2446, column: 13, scope: !606)
!916 = !DILocation(line: 2447, column: 62, scope: !604)
!917 = !DILocation(line: 2447, column: 70, scope: !604)
!918 = !{!770, !717, i64 428}
!919 = !DILocation(line: 2448, column: 13, scope: !604)
!920 = !DILocation(line: 2449, column: 55, scope: !604)
!921 = !DILocation(line: 2449, column: 48, scope: !604)
!922 = !DILocation(line: 2449, column: 79, scope: !604)
!923 = !DILocation(line: 2449, column: 72, scope: !604)
!924 = !DILocation(line: 1107, column: 56, scope: !881, inlinedAt: !925)
!925 = distinct !DILocation(line: 2449, column: 13, scope: !604)
!926 = !DILocation(line: 1107, column: 84, scope: !881, inlinedAt: !925)
!927 = !DILocation(line: 1107, column: 106, scope: !881, inlinedAt: !925)
!928 = !DILocation(line: 1107, column: 138, scope: !881, inlinedAt: !925)
!929 = !DILocation(line: 1107, column: 150, scope: !881, inlinedAt: !925)
!930 = !DILocation(line: 1109, column: 12, scope: !881, inlinedAt: !925)
!931 = !DILocation(line: 1109, column: 5, scope: !881, inlinedAt: !925)
!932 = !DILocation(line: 1110, column: 13, scope: !881, inlinedAt: !925)
!933 = !DILocation(line: 1110, column: 45, scope: !881, inlinedAt: !925)
!934 = !DILocation(line: 1111, column: 13, scope: !881, inlinedAt: !925)
!935 = !DILocation(line: 1111, column: 40, scope: !881, inlinedAt: !925)
!936 = !DILocation(line: 1112, column: 13, scope: !881, inlinedAt: !925)
!937 = !DILocation(line: 1112, column: 40, scope: !881, inlinedAt: !925)
!938 = !DILocation(line: 1113, column: 13, scope: !881, inlinedAt: !925)
!939 = !DILocation(line: 1113, column: 43, scope: !881, inlinedAt: !925)
!940 = !DILocation(line: 1114, column: 5, scope: !881, inlinedAt: !925)
!941 = !DILocation(line: 2450, column: 49, scope: !604)
!942 = !DILocation(line: 2450, column: 13, scope: !604)
!943 = !DILocation(line: 2451, column: 9, scope: !604)
!944 = !DILocation(line: 1104, column: 12, scope: !853, inlinedAt: !945)
!945 = distinct !DILocation(line: 2455, column: 10, scope: !611)
!946 = !DILocation(line: 1104, column: 20, scope: !853, inlinedAt: !945)
!947 = !DILocation(line: 1104, column: 47, scope: !853, inlinedAt: !945)
!948 = !DILocation(line: 2455, column: 9, scope: !575)
!949 = !DILocation(line: 2457, column: 24, scope: !950)
!950 = !DILexicalBlockFile(scope: !610, file: !3, discriminator: 1)
!951 = !DILocation(line: 2457, column: 53, scope: !950)
!952 = !DILocation(line: 2457, column: 51, scope: !950)
!953 = !DILocation(line: 2457, column: 9, scope: !950)
!954 = !DILocation(line: 2458, column: 13, scope: !609)
!955 = !DILocation(line: 2459, column: 13, scope: !609)
!956 = !DILocation(line: 2459, column: 23, scope: !609)
!957 = !DILocation(line: 2460, column: 13, scope: !609)
!958 = !DILocation(line: 2460, column: 22, scope: !609)
!959 = !DILocation(line: 2461, column: 31, scope: !609)
!960 = !DILocation(line: 2461, column: 39, scope: !609)
!961 = !DILocation(line: 2458, column: 17, scope: !609)
!962 = !DILocation(line: 2461, column: 13, scope: !609)
!963 = !DILocation(line: 2464, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !609, file: !3, line: 2464, column: 17)
!965 = !DILocation(line: 2464, column: 25, scope: !964)
!966 = !DILocation(line: 2464, column: 60, scope: !964)
!967 = !DILocation(line: 2464, column: 57, scope: !964)
!968 = !DILocation(line: 2464, column: 70, scope: !964)
!969 = !DILocation(line: 2464, column: 86, scope: !970)
!970 = !DILexicalBlockFile(scope: !964, file: !3, discriminator: 1)
!971 = !DILocation(line: 2464, column: 73, scope: !970)
!972 = !DILocation(line: 2464, column: 128, scope: !970)
!973 = !DILocation(line: 2464, column: 17, scope: !974)
!974 = !DILexicalBlockFile(scope: !609, file: !3, discriminator: 1)
!975 = !DILocation(line: 2466, column: 17, scope: !976)
!976 = distinct !DILexicalBlock(scope: !964, file: !3, line: 2464, column: 134)
!977 = !DILocation(line: 2467, column: 17, scope: !976)
!978 = !DILocation(line: 2470, column: 57, scope: !979)
!979 = distinct !DILexicalBlock(scope: !609, file: !3, line: 2470, column: 17)
!980 = !DILocation(line: 2470, column: 17, scope: !609)
!981 = !DILocation(line: 2475, column: 25, scope: !982)
!982 = distinct !DILexicalBlock(scope: !609, file: !3, line: 2475, column: 17)
!983 = !DILocation(line: 2475, column: 41, scope: !982)
!984 = !DILocation(line: 2475, column: 17, scope: !609)
!985 = !DILocation(line: 2482, column: 13, scope: !609)
!986 = !DILocation(line: 2482, column: 22, scope: !609)
!987 = !DILocation(line: 2483, column: 27, scope: !609)
!988 = !DILocation(line: 754, column: 35, scope: !832, inlinedAt: !989)
!989 = distinct !DILocation(line: 2483, column: 13, scope: !609)
!990 = !DILocation(line: 754, column: 50, scope: !832, inlinedAt: !989)
!991 = !DILocation(line: 757, column: 5, scope: !832, inlinedAt: !989)
!992 = !DILocation(line: 758, column: 13, scope: !832, inlinedAt: !989)
!993 = !DILocation(line: 758, column: 5, scope: !832, inlinedAt: !989)
!994 = !DILocation(line: 2484, column: 21, scope: !609)
!995 = !DILocation(line: 2484, column: 65, scope: !609)
!996 = !{!770, !758, i64 408}
!997 = !DILocation(line: 2485, column: 51, scope: !609)
!998 = !DILocation(line: 2485, column: 13, scope: !609)
!999 = !DILocation(line: 2487, column: 9, scope: !610)
!1000 = !DILocation(line: 2471, column: 25, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !979, file: !3, line: 2470, column: 63)
!1002 = !DILocation(line: 2471, column: 51, scope: !1001)
!1003 = !DILocation(line: 2489, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !610, file: !3, line: 2489, column: 13)
!1005 = !DILocation(line: 2489, column: 21, scope: !1004)
!1006 = !DILocation(line: 2489, column: 51, scope: !1004)
!1007 = !DILocation(line: 2489, column: 48, scope: !1004)
!1008 = !DILocation(line: 2489, column: 13, scope: !610)
!1009 = !DILocation(line: 2491, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 2489, column: 73)
!1011 = !DILocation(line: 2492, column: 9, scope: !1010)
!1012 = !DILocation(line: 2496, column: 5, scope: !575)
!1013 = !DILocation(line: 2497, column: 5, scope: !575)
!1014 = !DILocation(line: 2497, column: 13, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !575, file: !3, discriminator: 1)
!1016 = !DILocation(line: 2497, column: 21, scope: !1015)
!1017 = !{!770, !773, i64 464}
!1018 = !DILocation(line: 2497, column: 49, scope: !1015)
!1019 = !DILocation(line: 2497, column: 76, scope: !1015)
!1020 = !DILocation(line: 2497, column: 79, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !575, file: !3, discriminator: 2)
!1022 = !DILocation(line: 2497, column: 76, scope: !1021)
!1023 = !DILocation(line: 2497, column: 5, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !575, file: !3, discriminator: 3)
!1025 = !DILocation(line: 2498, column: 71, scope: !616)
!1026 = !DILocation(line: 2500, column: 46, scope: !616)
!1027 = !DILocation(line: 2501, column: 32, scope: !616)
!1028 = !{!870, !718, i64 12}
!1029 = !DILocation(line: 2501, column: 9, scope: !616)
!1030 = !DILocation(line: 2499, column: 61, scope: !616)
!1031 = !DILocation(line: 2504, column: 44, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !616, file: !3, line: 2501, column: 49)
!1033 = !DILocation(line: 2506, column: 72, scope: !1032)
!1034 = !DILocation(line: 2506, column: 13, scope: !1032)
!1035 = !DILocation(line: 2508, column: 76, scope: !1032)
!1036 = !DILocation(line: 2508, column: 102, scope: !1032)
!1037 = !DILocation(line: 2509, column: 38, scope: !1032)
!1038 = !DILocation(line: 2508, column: 13, scope: !1032)
!1039 = !DILocation(line: 2541, column: 9, scope: !620)
!1040 = !DILocation(line: 2542, column: 17, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !620, file: !3, discriminator: 1)
!1042 = !DILocation(line: 2542, column: 25, scope: !1041)
!1043 = !DILocation(line: 2542, column: 53, scope: !1041)
!1044 = !DILocation(line: 2542, column: 80, scope: !1041)
!1045 = !DILocation(line: 2542, column: 83, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !620, file: !3, discriminator: 2)
!1047 = !DILocation(line: 2542, column: 80, scope: !1046)
!1048 = !DILocation(line: 2542, column: 9, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !620, file: !3, discriminator: 3)
!1050 = !DILocation(line: 2543, column: 75, scope: !619)
!1051 = !DILocation(line: 2544, column: 65, scope: !619)
!1052 = !DILocation(line: 2544, column: 32, scope: !619)
!1053 = !DILocation(line: 2546, column: 17, scope: !619)
!1054 = !DILocation(line: 2549, column: 50, scope: !619)
!1055 = !DILocation(line: 2550, column: 36, scope: !619)
!1056 = !DILocation(line: 2550, column: 13, scope: !619)
!1057 = !DILocation(line: 2554, column: 76, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 2554, column: 21)
!1059 = distinct !DILexicalBlock(scope: !619, file: !3, line: 2550, column: 53)
!1060 = !DILocation(line: 2554, column: 21, scope: !1058)
!1061 = !DILocation(line: 2554, column: 21, scope: !1059)
!1062 = !DILocation(line: 2556, column: 52, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 2554, column: 125)
!1064 = !DILocation(line: 2557, column: 62, scope: !1063)
!1065 = !DILocation(line: 2557, column: 21, scope: !1063)
!1066 = !DILocation(line: 2558, column: 17, scope: !1063)
!1067 = !DILocation(line: 2559, column: 81, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 2558, column: 24)
!1069 = !DILocation(line: 2559, column: 21, scope: !1068)
!1070 = distinct !{!1070, !1071, !1072}
!1071 = !DILocation(line: 2542, column: 9, scope: !620)
!1072 = !DILocation(line: 2649, column: 9, scope: !620)
!1073 = !DILocation(line: 1443, column: 5, scope: !1074, inlinedAt: !1075)
!1074 = distinct !DISubprogram(name: "sm_reset_setup", scope: !3, file: !3, line: 1440, type: !576, isLocal: true, isDefinition: true, scopeLine: 1441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!1075 = distinct !DILocation(line: 2566, column: 17, scope: !1059)
!1076 = !DILocation(line: 1443, column: 12, scope: !1074, inlinedAt: !1075)
!1077 = !DILocation(line: 1443, column: 26, scope: !1074, inlinedAt: !1075)
!1078 = !{!771, !718, i64 173}
!1079 = !DILocation(line: 1444, column: 12, scope: !1074, inlinedAt: !1075)
!1080 = !DILocation(line: 1444, column: 37, scope: !1074, inlinedAt: !1075)
!1081 = !{!771, !718, i64 22}
!1082 = !DILocalVariable(name: "i", scope: !1083, file: !3, line: 602, type: !370)
!1083 = distinct !DISubprogram(name: "sm_reset_tk", scope: !3, file: !3, line: 600, type: !576, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1084)
!1084 = !{!1082}
!1085 = !DILocation(line: 602, column: 9, scope: !1083, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 1445, column: 5, scope: !1074, inlinedAt: !1075)
!1087 = !DILocation(line: 603, column: 5, scope: !1088, inlinedAt: !1086)
!1088 = !DILexicalBlockFile(scope: !1089, file: !3, discriminator: 1)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 603, column: 5)
!1090 = !DILocation(line: 604, column: 25, scope: !1091, inlinedAt: !1086)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 603, column: 30)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 603, column: 5)
!1093 = !DILocation(line: 2567, column: 17, scope: !1059)
!1094 = !DILocation(line: 2569, column: 25, scope: !1059)
!1095 = !DILocation(line: 2569, column: 17, scope: !1059)
!1096 = !DILocation(line: 2570, column: 23, scope: !1059)
!1097 = !DILocation(line: 2547, column: 17, scope: !619)
!1098 = !DILocation(line: 2571, column: 21, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 2571, column: 21)
!1100 = !DILocation(line: 2571, column: 21, scope: !1059)
!1101 = !DILocation(line: 2572, column: 55, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 2571, column: 26)
!1103 = !DILocation(line: 2572, column: 28, scope: !1102)
!1104 = !DILocation(line: 2572, column: 53, scope: !1102)
!1105 = !{!771, !718, i64 20}
!1106 = !DILocation(line: 2576, column: 17, scope: !1059)
!1107 = !DILocation(line: 2578, column: 21, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 2578, column: 21)
!1109 = !DILocation(line: 2578, column: 28, scope: !1108)
!1110 = !{!771, !718, i64 28}
!1111 = !DILocation(line: 2578, column: 53, scope: !1108)
!1112 = !DILocation(line: 1443, column: 5, scope: !1074, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 2586, column: 17, scope: !1059)
!1114 = !DILocation(line: 1443, column: 12, scope: !1074, inlinedAt: !1113)
!1115 = !DILocation(line: 1443, column: 26, scope: !1074, inlinedAt: !1113)
!1116 = !DILocation(line: 1444, column: 12, scope: !1074, inlinedAt: !1113)
!1117 = !DILocation(line: 1444, column: 37, scope: !1074, inlinedAt: !1113)
!1118 = !DILocation(line: 602, column: 9, scope: !1083, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 1445, column: 5, scope: !1074, inlinedAt: !1113)
!1120 = !DILocation(line: 603, column: 5, scope: !1088, inlinedAt: !1119)
!1121 = !DILocation(line: 604, column: 25, scope: !1091, inlinedAt: !1119)
!1122 = !DILocalVariable(name: "sm_connection", arg: 1, scope: !1123, file: !3, line: 2308, type: !454)
!1123 = distinct !DISubprogram(name: "sm_start_calculating_ltk_from_ediv_and_rand", scope: !3, file: !3, line: 2308, type: !1124, isLocal: true, isDefinition: true, scopeLine: 2309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !454}
!1126 = !{!1122}
!1127 = !DILocation(line: 2308, column: 74, scope: !1123, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 2587, column: 17, scope: !1059)
!1129 = !DILocation(line: 2310, column: 5, scope: !1123, inlinedAt: !1128)
!1130 = !DILocation(line: 2311, column: 43, scope: !1123, inlinedAt: !1128)
!1131 = !{!870, !773, i64 36}
!1132 = !DILocation(line: 2311, column: 12, scope: !1123, inlinedAt: !1128)
!1133 = !DILocation(line: 2311, column: 26, scope: !1123, inlinedAt: !1128)
!1134 = !{!771, !773, i64 178}
!1135 = !DILocation(line: 2314, column: 53, scope: !1123, inlinedAt: !1128)
!1136 = !DILocation(line: 2314, column: 77, scope: !1123, inlinedAt: !1128)
!1137 = !DILocation(line: 2314, column: 85, scope: !1123, inlinedAt: !1128)
!1138 = !DILocation(line: 2314, column: 20, scope: !1123, inlinedAt: !1128)
!1139 = !DILocation(line: 2314, column: 50, scope: !1123, inlinedAt: !1128)
!1140 = !{!870, !718, i64 22}
!1141 = !DILocation(line: 2316, column: 51, scope: !1123, inlinedAt: !1128)
!1142 = !{!718, !718, i64 0}
!1143 = !DILocation(line: 2316, column: 83, scope: !1123, inlinedAt: !1128)
!1144 = !DILocation(line: 2316, column: 20, scope: !1123, inlinedAt: !1128)
!1145 = !DILocation(line: 2316, column: 48, scope: !1123, inlinedAt: !1128)
!1146 = !{!870, !718, i64 21}
!1147 = !DILocation(line: 1443, column: 5, scope: !1074, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 2597, column: 17, scope: !1059)
!1149 = !DILocation(line: 1443, column: 12, scope: !1074, inlinedAt: !1148)
!1150 = !DILocation(line: 1443, column: 26, scope: !1074, inlinedAt: !1148)
!1151 = !DILocation(line: 1444, column: 12, scope: !1074, inlinedAt: !1148)
!1152 = !DILocation(line: 1444, column: 37, scope: !1074, inlinedAt: !1148)
!1153 = !DILocation(line: 602, column: 9, scope: !1083, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 1445, column: 5, scope: !1074, inlinedAt: !1148)
!1155 = !DILocation(line: 603, column: 5, scope: !1088, inlinedAt: !1154)
!1156 = !DILocation(line: 604, column: 25, scope: !1091, inlinedAt: !1154)
!1157 = !DILocalVariable(name: "sm_connection", arg: 1, scope: !1158, file: !3, line: 2286, type: !454)
!1158 = distinct !DISubprogram(name: "sm_load_security_info", scope: !3, file: !3, line: 2286, type: !1124, isLocal: true, isDefinition: true, scopeLine: 2287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1159)
!1159 = !{!1157, !1160, !1161, !1162}
!1160 = !DILocalVariable(name: "encryption_key_size", scope: !1158, file: !3, line: 2288, type: !370)
!1161 = !DILocalVariable(name: "authenticated", scope: !1158, file: !3, line: 2289, type: !370)
!1162 = !DILocalVariable(name: "authorized", scope: !1158, file: !3, line: 2290, type: !370)
!1163 = !DILocation(line: 2286, column: 52, scope: !1158, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 2598, column: 17, scope: !1059)
!1165 = !DILocation(line: 2288, column: 5, scope: !1158, inlinedAt: !1164)
!1166 = !DILocation(line: 2289, column: 5, scope: !1158, inlinedAt: !1164)
!1167 = !DILocation(line: 2290, column: 5, scope: !1158, inlinedAt: !1164)
!1168 = !DILocation(line: 2292, column: 24, scope: !1169, inlinedAt: !1164)
!1169 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 2292, column: 9)
!1170 = !{!870, !758, i64 48}
!1171 = !DILocation(line: 2292, column: 39, scope: !1169, inlinedAt: !1164)
!1172 = !DILocation(line: 2292, column: 9, scope: !1158, inlinedAt: !1164)
!1173 = !DILocation(line: 2298, column: 72, scope: !1158, inlinedAt: !1164)
!1174 = !DILocation(line: 2298, column: 86, scope: !1158, inlinedAt: !1164)
!1175 = !DILocation(line: 2298, column: 107, scope: !1158, inlinedAt: !1164)
!1176 = !DILocation(line: 2288, column: 9, scope: !1158, inlinedAt: !1164)
!1177 = !DILocation(line: 2289, column: 9, scope: !1158, inlinedAt: !1164)
!1178 = !DILocation(line: 2290, column: 9, scope: !1158, inlinedAt: !1164)
!1179 = !DILocation(line: 2298, column: 5, scope: !1158, inlinedAt: !1164)
!1180 = !DILocation(line: 2300, column: 5, scope: !1181, inlinedAt: !1164)
!1181 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 2300, column: 5)
!1182 = !DILocation(line: 2300, column: 5, scope: !1158, inlinedAt: !1164)
!1183 = !DILocation(line: 2300, column: 5, scope: !1184, inlinedAt: !1164)
!1184 = !DILexicalBlockFile(scope: !1181, file: !3, discriminator: 1)
!1185 = !DILocation(line: 2301, column: 52, scope: !1158, inlinedAt: !1164)
!1186 = !DILocation(line: 2301, column: 20, scope: !1158, inlinedAt: !1164)
!1187 = !DILocation(line: 2301, column: 50, scope: !1158, inlinedAt: !1164)
!1188 = !DILocation(line: 2302, column: 50, scope: !1158, inlinedAt: !1164)
!1189 = !DILocation(line: 2302, column: 20, scope: !1158, inlinedAt: !1164)
!1190 = !DILocation(line: 2302, column: 48, scope: !1158, inlinedAt: !1164)
!1191 = !DILocation(line: 2303, column: 56, scope: !1158, inlinedAt: !1164)
!1192 = !DILocation(line: 2303, column: 20, scope: !1158, inlinedAt: !1164)
!1193 = !DILocation(line: 2303, column: 54, scope: !1158, inlinedAt: !1164)
!1194 = !{!870, !718, i64 32}
!1195 = !DILocation(line: 2304, column: 1, scope: !1158, inlinedAt: !1164)
!1196 = !DILocation(line: 1443, column: 5, scope: !1074, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 2602, column: 17, scope: !1059)
!1198 = !DILocation(line: 1443, column: 12, scope: !1074, inlinedAt: !1197)
!1199 = !DILocation(line: 1443, column: 26, scope: !1074, inlinedAt: !1197)
!1200 = !DILocation(line: 1444, column: 12, scope: !1074, inlinedAt: !1197)
!1201 = !DILocation(line: 1444, column: 37, scope: !1074, inlinedAt: !1197)
!1202 = !DILocation(line: 602, column: 9, scope: !1083, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 1445, column: 5, scope: !1074, inlinedAt: !1197)
!1204 = !DILocation(line: 603, column: 5, scope: !1088, inlinedAt: !1203)
!1205 = !DILocation(line: 604, column: 25, scope: !1091, inlinedAt: !1203)
!1206 = !DILocation(line: 2603, column: 17, scope: !1059)
!1207 = !DILocation(line: 2604, column: 17, scope: !1059)
!1208 = !DILocation(line: 2646, column: 70, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 2645, column: 23)
!1210 = distinct !DILexicalBlock(scope: !619, file: !3, line: 2645, column: 17)
!1211 = !DILocation(line: 2646, column: 17, scope: !1209)
!1212 = !DILocation(line: 2646, column: 25, scope: !1209)
!1213 = !DILocation(line: 2646, column: 53, scope: !1209)
!1214 = !DILocation(line: 2648, column: 13, scope: !1209)
!1215 = !DILocation(line: 2655, column: 49, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !620, file: !3, line: 2655, column: 13)
!1217 = !DILocation(line: 2655, column: 13, scope: !620)
!1218 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !1225)
!1219 = distinct !DISubprogram(name: "sm_get_connection_for_handle", scope: !3, file: !3, line: 5023, type: !1220, isLocal: true, isDefinition: true, scopeLine: 5024, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!454, !327}
!1222 = !{!1223, !1224}
!1223 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1219, file: !3, line: 5023, type: !327)
!1224 = !DILocalVariable(name: "hci_con", scope: !1219, file: !3, line: 5025, type: !320)
!1225 = distinct !DILocation(line: 2659, column: 39, scope: !620)
!1226 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !1225)
!1227 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !1225)
!1228 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !1225)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 5026, column: 9)
!1230 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !1225)
!1231 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !1225)
!1232 = !DILocation(line: 2659, column: 26, scope: !620)
!1233 = !DILocation(line: 2660, column: 13, scope: !620)
!1234 = !DILocation(line: 2680, column: 54, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !620, file: !3, line: 2680, column: 13)
!1236 = !DILocation(line: 2680, column: 62, scope: !1235)
!1237 = !DILocation(line: 2680, column: 14, scope: !1235)
!1238 = !DILocation(line: 2680, column: 13, scope: !620)
!1239 = !DILocation(line: 2682, column: 66, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 2680, column: 129)
!1241 = !DILocation(line: 2682, column: 13, scope: !1240)
!1242 = !DILocation(line: 2683, column: 13, scope: !1240)
!1243 = !DILocation(line: 2687, column: 20, scope: !627)
!1244 = !DILocation(line: 2687, column: 45, scope: !627)
!1245 = !DILocation(line: 2687, column: 13, scope: !620)
!1246 = !DILocation(line: 2688, column: 13, scope: !626)
!1247 = !DILocation(line: 2688, column: 21, scope: !626)
!1248 = !DILocation(line: 2689, column: 23, scope: !626)
!1249 = !DILocation(line: 2690, column: 13, scope: !626)
!1250 = !DILocation(line: 2690, column: 23, scope: !626)
!1251 = !DILocation(line: 2691, column: 45, scope: !626)
!1252 = !DILocation(line: 2692, column: 51, scope: !626)
!1253 = !DILocation(line: 2692, column: 13, scope: !626)
!1254 = !DILocation(line: 2694, column: 9, scope: !627)
!1255 = !DILocation(line: 2696, column: 9, scope: !620)
!1256 = !DILocation(line: 2696, column: 18, scope: !620)
!1257 = !DILocation(line: 2702, column: 43, scope: !620)
!1258 = !DILocation(line: 2703, column: 29, scope: !620)
!1259 = !DILocation(line: 2703, column: 9, scope: !620)
!1260 = !DILocation(line: 2707, column: 13, scope: !634)
!1261 = !DILocation(line: 2707, column: 21, scope: !634)
!1262 = !DILocation(line: 2708, column: 23, scope: !634)
!1263 = !DILocation(line: 2709, column: 32, scope: !634)
!1264 = !DILocation(line: 2709, column: 23, scope: !634)
!1265 = !DILocation(line: 2710, column: 55, scope: !634)
!1266 = !{!870, !718, i64 2}
!1267 = !DILocation(line: 2710, column: 43, scope: !634)
!1268 = !DILocation(line: 2710, column: 41, scope: !634)
!1269 = !DILocation(line: 2711, column: 51, scope: !634)
!1270 = !DILocation(line: 2711, column: 13, scope: !634)
!1271 = !DILocation(line: 2712, column: 44, scope: !634)
!1272 = !DILocation(line: 2712, column: 13, scope: !634)
!1273 = !DILocation(line: 2713, column: 51, scope: !634)
!1274 = !DILocation(line: 2713, column: 39, scope: !634)
!1275 = !DILocation(line: 2713, column: 13, scope: !634)
!1276 = !DILocation(line: 2714, column: 73, scope: !634)
!1277 = !DILocation(line: 2714, column: 96, scope: !634)
!1278 = !DILocation(line: 2714, column: 115, scope: !634)
!1279 = !DILocation(line: 2715, column: 69, scope: !634)
!1280 = !DILocation(line: 2715, column: 76, scope: !634)
!1281 = !DILocation(line: 2715, column: 101, scope: !634)
!1282 = !DILocation(line: 2715, column: 66, scope: !634)
!1283 = !DILocation(line: 2714, column: 13, scope: !634)
!1284 = !DILocation(line: 2717, column: 9, scope: !635)
!1285 = !DILocation(line: 2817, column: 13, scope: !637)
!1286 = !DILocation(line: 2817, column: 22, scope: !637)
!1287 = !DILocation(line: 2818, column: 25, scope: !637)
!1288 = !DILocation(line: 2818, column: 13, scope: !637)
!1289 = !DILocation(line: 2819, column: 41, scope: !637)
!1290 = !DILocation(line: 2820, column: 53, scope: !637)
!1291 = !DILocation(line: 2820, column: 34, scope: !637)
!1292 = !DILocation(line: 2820, column: 22, scope: !637)
!1293 = !DILocation(line: 2821, column: 53, scope: !637)
!1294 = !DILocation(line: 2821, column: 34, scope: !637)
!1295 = !DILocation(line: 2821, column: 22, scope: !637)
!1296 = !DILocation(line: 2825, column: 49, scope: !637)
!1297 = !DILocation(line: 2825, column: 81, scope: !637)
!1298 = !DILocation(line: 2825, column: 88, scope: !637)
!1299 = !{!771, !773, i64 240}
!1300 = !DILocation(line: 2825, column: 13, scope: !637)
!1301 = !DILocation(line: 2826, column: 73, scope: !637)
!1302 = !DILocation(line: 2826, column: 96, scope: !637)
!1303 = !DILocation(line: 2827, column: 38, scope: !637)
!1304 = !DILocation(line: 2826, column: 13, scope: !637)
!1305 = !DILocation(line: 2829, column: 9, scope: !635)
!1306 = !DILocation(line: 2832, column: 40, scope: !635)
!1307 = !DILocation(line: 2832, column: 13, scope: !635)
!1308 = !DILocation(line: 2833, column: 41, scope: !635)
!1309 = !DILocation(line: 2834, column: 51, scope: !635)
!1310 = !DILocation(line: 2834, column: 112, scope: !635)
!1311 = !DILocation(line: 2834, column: 99, scope: !635)
!1312 = !DILocation(line: 2834, column: 13, scope: !635)
!1313 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !1314, file: !3, line: 659, type: !454)
!1314 = distinct !DISubprogram(name: "sm_timeout_reset", scope: !3, file: !3, line: 659, type: !1124, isLocal: true, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1315)
!1315 = !{!1313}
!1316 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 2835, column: 13, scope: !635)
!1318 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1317)
!1319 = !DILocation(line: 2836, column: 13, scope: !635)
!1320 = !DILocation(line: 2950, column: 40, scope: !635)
!1321 = !DILocation(line: 2950, column: 13, scope: !635)
!1322 = !DILocalVariable(name: "flags", scope: !1323, file: !3, line: 1424, type: !370)
!1323 = distinct !DISubprogram(name: "sm_key_distribution_flags_for_auth_req", scope: !3, file: !3, line: 1422, type: !854, isLocal: true, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1324)
!1324 = !{!1322}
!1325 = !DILocation(line: 1424, column: 9, scope: !1323, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 2951, column: 38, scope: !635)
!1327 = !DILocation(line: 1425, column: 9, scope: !1328, inlinedAt: !1326)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 1425, column: 9)
!1329 = !DILocation(line: 1425, column: 17, scope: !1328, inlinedAt: !1326)
!1330 = !{!770, !718, i64 312}
!1331 = !DILocation(line: 1425, column: 29, scope: !1328, inlinedAt: !1326)
!1332 = !DILocation(line: 1425, column: 9, scope: !1323, inlinedAt: !1326)
!1333 = !DILocation(line: 2697, column: 13, scope: !620)
!1334 = !DILocation(line: 2953, column: 24, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !635, file: !3, line: 2953, column: 17)
!1336 = !{!771, !718, i64 48}
!1337 = !DILocation(line: 2953, column: 17, scope: !1335)
!1338 = !DILocation(line: 2953, column: 17, scope: !635)
!1339 = !DILocation(line: 2962, column: 62, scope: !635)
!1340 = !DILocation(line: 2962, column: 129, scope: !635)
!1341 = !DILocation(line: 2962, column: 80, scope: !635)
!1342 = !DILocation(line: 2962, column: 147, scope: !635)
!1343 = !DILocation(line: 2962, column: 13, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 1)
!1345 = !DILocation(line: 2963, column: 62, scope: !635)
!1346 = !DILocation(line: 2963, column: 129, scope: !635)
!1347 = !DILocation(line: 2963, column: 80, scope: !635)
!1348 = !DILocation(line: 2963, column: 147, scope: !635)
!1349 = !DILocation(line: 2963, column: 13, scope: !1344)
!1350 = !DILocation(line: 2965, column: 88, scope: !635)
!1351 = !DILocation(line: 2965, column: 39, scope: !635)
!1352 = !DILocalVariable(name: "key_set", arg: 1, scope: !1353, file: !3, line: 1092, type: !311)
!1353 = distinct !DISubprogram(name: "sm_setup_key_distribution", scope: !3, file: !3, line: 1092, type: !1354, isLocal: true, isDefinition: true, scopeLine: 1093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !311}
!1356 = !{!1352}
!1357 = !DILocation(line: 1092, column: 47, scope: !1353, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 2965, column: 13, scope: !1344)
!1359 = !DILocation(line: 1094, column: 12, scope: !1353, inlinedAt: !1358)
!1360 = !DILocation(line: 1094, column: 45, scope: !1353, inlinedAt: !1358)
!1361 = !{!771, !718, i64 25}
!1362 = !DILocalVariable(name: "key_set", arg: 1, scope: !1363, file: !3, line: 1075, type: !311)
!1363 = distinct !DISubprogram(name: "sm_key_distribution_flags_for_set", scope: !3, file: !3, line: 1075, type: !1364, isLocal: true, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!370, !311}
!1366 = !{!1362, !1367}
!1367 = !DILocalVariable(name: "flags", scope: !1363, file: !3, line: 1077, type: !370)
!1368 = !DILocation(line: 1075, column: 54, scope: !1363, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 1095, column: 43, scope: !1353, inlinedAt: !1358)
!1370 = !DILocation(line: 1077, column: 9, scope: !1363, inlinedAt: !1369)
!1371 = !DILocation(line: 1078, column: 9, scope: !1372, inlinedAt: !1369)
!1372 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 1078, column: 9)
!1373 = !DILocation(line: 1078, column: 17, scope: !1372, inlinedAt: !1369)
!1374 = !DILocation(line: 1078, column: 9, scope: !1363, inlinedAt: !1369)
!1375 = !DILocation(line: 1082, column: 17, scope: !1376, inlinedAt: !1369)
!1376 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 1082, column: 9)
!1377 = !DILocation(line: 1084, column: 15, scope: !1378, inlinedAt: !1369)
!1378 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1082, column: 38)
!1379 = !DILocation(line: 1082, column: 9, scope: !1363, inlinedAt: !1369)
!1380 = !DILocation(line: 1086, column: 9, scope: !1363, inlinedAt: !1369)
!1381 = !DILocation(line: 1095, column: 43, scope: !1353, inlinedAt: !1358)
!1382 = !DILocation(line: 1095, column: 12, scope: !1353, inlinedAt: !1358)
!1383 = !DILocation(line: 1095, column: 41, scope: !1353, inlinedAt: !1358)
!1384 = !{!771, !718, i64 23}
!1385 = !DILocation(line: 1096, column: 12, scope: !1353, inlinedAt: !1358)
!1386 = !DILocation(line: 1096, column: 46, scope: !1353, inlinedAt: !1358)
!1387 = !{!771, !718, i64 24}
!1388 = !DILocation(line: 2967, column: 51, scope: !635)
!1389 = !DILocation(line: 2967, column: 13, scope: !635)
!1390 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 2968, column: 13, scope: !635)
!1392 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1391)
!1393 = !DILocation(line: 2970, column: 18, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !635, file: !3, line: 2970, column: 17)
!1395 = !DILocation(line: 2970, column: 25, scope: !1394)
!1396 = !DILocation(line: 2970, column: 51, scope: !1394)
!1397 = !DILocation(line: 2970, column: 61, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1394, file: !3, discriminator: 1)
!1399 = !DILocation(line: 2970, column: 86, scope: !1398)
!1400 = !DILocation(line: 2970, column: 17, scope: !1344)
!1401 = !DILocation(line: 2971, column: 17, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 2970, column: 101)
!1403 = !DILocation(line: 2972, column: 13, scope: !1402)
!1404 = !DILocation(line: 2977, column: 13, scope: !641)
!1405 = !DILocation(line: 2977, column: 21, scope: !641)
!1406 = !DILocation(line: 2978, column: 23, scope: !641)
!1407 = !DILocation(line: 2979, column: 25, scope: !641)
!1408 = !DILocation(line: 2979, column: 13, scope: !641)
!1409 = !DILocation(line: 2980, column: 17, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !641, file: !3, line: 2980, column: 17)
!1411 = !DILocation(line: 2980, column: 17, scope: !641)
!1412 = !DILocation(line: 2985, column: 51, scope: !641)
!1413 = !DILocation(line: 2985, column: 13, scope: !641)
!1414 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 2986, column: 13, scope: !641)
!1416 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1415)
!1417 = !DILocation(line: 2988, column: 9, scope: !635)
!1418 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !1419, file: !3, line: 1146, type: !454)
!1419 = distinct !DISubprogram(name: "sm_next_responding_state", scope: !3, file: !3, line: 1146, type: !1124, isLocal: true, isDefinition: true, scopeLine: 1147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1420)
!1420 = !{!1418}
!1421 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 2995, column: 13, scope: !635)
!1423 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1422)
!1424 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1422)
!1425 = !DILocation(line: 703, column: 13, scope: !814, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 2996, column: 13, scope: !635)
!1427 = !DILocation(line: 703, column: 31, scope: !814, inlinedAt: !1426)
!1428 = !DILocation(line: 705, column: 5, scope: !814, inlinedAt: !1426)
!1429 = !DILocation(line: 2997, column: 13, scope: !635)
!1430 = !DILocation(line: 3002, column: 25, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3002, column: 17)
!1432 = !DILocation(line: 3002, column: 41, scope: !1431)
!1433 = !DILocation(line: 3002, column: 17, scope: !635)
!1434 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 3005, column: 13, scope: !635)
!1436 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1435)
!1437 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1435)
!1438 = !DILocation(line: 3006, column: 29, scope: !635)
!1439 = !DILocation(line: 3006, column: 43, scope: !635)
!1440 = !DILocation(line: 3006, column: 66, scope: !635)
!1441 = !DILocation(line: 3006, column: 13, scope: !635)
!1442 = !DILocation(line: 3007, column: 13, scope: !635)
!1443 = !DILocation(line: 3012, column: 25, scope: !647)
!1444 = !DILocation(line: 3012, column: 41, scope: !647)
!1445 = !DILocation(line: 3012, column: 17, scope: !635)
!1446 = !DILocation(line: 3013, column: 17, scope: !646)
!1447 = !DILocation(line: 3013, column: 26, scope: !646)
!1448 = !DILocation(line: 3014, column: 38, scope: !646)
!1449 = !{!771, !773, i64 176}
!1450 = !DILocation(line: 3014, column: 17, scope: !646)
!1451 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 3015, column: 17, scope: !646)
!1453 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !1452)
!1454 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1452)
!1455 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1452)
!1456 = !DILocation(line: 3016, column: 33, scope: !646)
!1457 = !DILocation(line: 3016, column: 68, scope: !646)
!1458 = !DILocation(line: 3016, column: 17, scope: !646)
!1459 = !DILocation(line: 3018, column: 13, scope: !647)
!1460 = !DILocation(line: 3023, column: 25, scope: !650)
!1461 = !DILocation(line: 3023, column: 41, scope: !650)
!1462 = !DILocation(line: 3023, column: 17, scope: !635)
!1463 = !DILocation(line: 3024, column: 17, scope: !649)
!1464 = !DILocation(line: 3024, column: 26, scope: !649)
!1465 = !DILocation(line: 3025, column: 38, scope: !649)
!1466 = !DILocation(line: 3025, column: 17, scope: !649)
!1467 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 3026, column: 17, scope: !649)
!1469 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !1468)
!1470 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1468)
!1471 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1468)
!1472 = !DILocation(line: 3027, column: 33, scope: !649)
!1473 = !DILocation(line: 3027, column: 68, scope: !649)
!1474 = !DILocation(line: 3027, column: 17, scope: !649)
!1475 = !DILocation(line: 3029, column: 13, scope: !650)
!1476 = !DILocation(line: 3034, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3034, column: 17)
!1478 = !DILocation(line: 3034, column: 41, scope: !1477)
!1479 = !DILocation(line: 3034, column: 17, scope: !635)
!1480 = !DILocation(line: 3038, column: 22, scope: !635)
!1481 = !DILocation(line: 3038, column: 45, scope: !635)
!1482 = !DILocation(line: 3038, column: 76, scope: !635)
!1483 = !DILocation(line: 3038, column: 114, scope: !635)
!1484 = !{!771, !718, i64 143}
!1485 = !DILocation(line: 3038, column: 137, scope: !635)
!1486 = !{!771, !718, i64 144}
!1487 = !DILocation(line: 3038, column: 13, scope: !635)
!1488 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 3039, column: 13, scope: !635)
!1490 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !1489)
!1491 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1489)
!1492 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1489)
!1493 = !DILocation(line: 3040, column: 29, scope: !635)
!1494 = !DILocation(line: 3040, column: 54, scope: !635)
!1495 = !DILocation(line: 3040, column: 13, scope: !635)
!1496 = !DILocation(line: 3041, column: 13, scope: !635)
!1497 = !DILocation(line: 3044, column: 25, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3044, column: 17)
!1499 = !DILocation(line: 3044, column: 41, scope: !1498)
!1500 = !DILocation(line: 3044, column: 17, scope: !635)
!1501 = !DILocation(line: 3048, column: 22, scope: !635)
!1502 = !DILocation(line: 3048, column: 46, scope: !635)
!1503 = !DILocation(line: 3048, column: 77, scope: !635)
!1504 = !DILocation(line: 3048, column: 115, scope: !635)
!1505 = !DILocation(line: 3048, column: 138, scope: !635)
!1506 = !DILocation(line: 3048, column: 13, scope: !635)
!1507 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 3049, column: 13, scope: !635)
!1509 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !1508)
!1510 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1508)
!1511 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1508)
!1512 = !DILocation(line: 3050, column: 29, scope: !635)
!1513 = !DILocation(line: 3050, column: 54, scope: !635)
!1514 = !DILocation(line: 3050, column: 13, scope: !635)
!1515 = !DILocation(line: 3051, column: 13, scope: !635)
!1516 = !DILocation(line: 3054, column: 25, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3054, column: 17)
!1518 = !DILocation(line: 3054, column: 41, scope: !1517)
!1519 = !DILocation(line: 3054, column: 17, scope: !635)
!1520 = !DILocation(line: 3058, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3058, column: 17)
!1522 = !DILocation(line: 3058, column: 17, scope: !635)
!1523 = !DILocation(line: 3059, column: 31, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 3058, column: 52)
!1525 = !DILocation(line: 3059, column: 55, scope: !1524)
!1526 = !DILocalVariable(name: "r1", arg: 1, scope: !1527, file: !3, line: 831, type: !441)
!1527 = distinct !DISubprogram(name: "sm_s1_r_prime", scope: !3, file: !3, line: 831, type: !1528, isLocal: true, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !441, !441, !441}
!1530 = !{!1526, !1531, !1532}
!1531 = !DILocalVariable(name: "r2", arg: 2, scope: !1527, file: !3, line: 831, type: !441)
!1532 = !DILocalVariable(name: "r_prime", arg: 3, scope: !1527, file: !3, line: 831, type: !441)
!1533 = !DILocation(line: 831, column: 36, scope: !1527, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 3059, column: 17, scope: !1524)
!1535 = !DILocation(line: 831, column: 49, scope: !1527, inlinedAt: !1534)
!1536 = !DILocation(line: 831, column: 62, scope: !1527, inlinedAt: !1534)
!1537 = !DILocation(line: 3060, column: 13, scope: !1524)
!1538 = !DILocation(line: 3061, column: 31, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 3060, column: 20)
!1540 = !DILocation(line: 3061, column: 54, scope: !1539)
!1541 = !DILocation(line: 831, column: 36, scope: !1527, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 3061, column: 17, scope: !1539)
!1543 = !DILocation(line: 831, column: 49, scope: !1527, inlinedAt: !1542)
!1544 = !DILocation(line: 831, column: 62, scope: !1527, inlinedAt: !1542)
!1545 = !DILocation(line: 835, column: 26, scope: !1527, inlinedAt: !1542)
!1546 = !DILocation(line: 835, column: 5, scope: !1527, inlinedAt: !1542)
!1547 = !DILocation(line: 836, column: 26, scope: !1527, inlinedAt: !1542)
!1548 = !DILocation(line: 836, column: 5, scope: !1527, inlinedAt: !1542)
!1549 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 3063, column: 13, scope: !635)
!1551 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !1550)
!1552 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1550)
!1553 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1550)
!1554 = !DILocation(line: 3064, column: 29, scope: !635)
!1555 = !DILocation(line: 3064, column: 54, scope: !635)
!1556 = !DILocation(line: 3064, column: 13, scope: !635)
!1557 = !DILocation(line: 3065, column: 13, scope: !635)
!1558 = !DILocation(line: 3068, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3068, column: 17)
!1560 = !DILocation(line: 3068, column: 41, scope: !1559)
!1561 = !DILocation(line: 3068, column: 17, scope: !635)
!1562 = !DILocation(line: 3073, column: 27, scope: !635)
!1563 = !DILocalVariable(name: "r", arg: 1, scope: !1564, file: !3, line: 775, type: !441)
!1564 = distinct !DISubprogram(name: "sm_dm_r_prime", scope: !3, file: !3, line: 775, type: !833, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1565)
!1565 = !{!1563, !1566}
!1566 = !DILocalVariable(name: "r_prime", arg: 2, scope: !1564, file: !3, line: 775, type: !441)
!1567 = !DILocation(line: 775, column: 35, scope: !1564, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 3073, column: 13, scope: !635)
!1569 = !DILocation(line: 775, column: 50, scope: !1564, inlinedAt: !1568)
!1570 = !DILocation(line: 777, column: 5, scope: !1564, inlinedAt: !1568)
!1571 = !DILocation(line: 778, column: 5, scope: !1564, inlinedAt: !1568)
!1572 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 3074, column: 13, scope: !635)
!1574 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !1573)
!1575 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1573)
!1576 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1573)
!1577 = !DILocation(line: 3075, column: 29, scope: !635)
!1578 = !DILocation(line: 3075, column: 67, scope: !635)
!1579 = !DILocation(line: 3075, column: 13, scope: !635)
!1580 = !DILocation(line: 3076, column: 13, scope: !635)
!1581 = !DILocation(line: 3078, column: 13, scope: !652)
!1582 = !DILocation(line: 3078, column: 21, scope: !652)
!1583 = !DILocation(line: 3079, column: 23, scope: !652)
!1584 = !DILocation(line: 3080, column: 25, scope: !652)
!1585 = !DILocation(line: 3080, column: 51, scope: !652)
!1586 = !DILocation(line: 3080, column: 13, scope: !652)
!1587 = !DILocation(line: 3081, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !652, file: !3, line: 3081, column: 17)
!1589 = !DILocation(line: 3081, column: 17, scope: !652)
!1590 = !DILocation(line: 3086, column: 51, scope: !652)
!1591 = !DILocation(line: 3086, column: 13, scope: !652)
!1592 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 3087, column: 13, scope: !652)
!1594 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1593)
!1595 = !DILocation(line: 3089, column: 9, scope: !635)
!1596 = !DILocation(line: 3092, column: 13, scope: !654)
!1597 = !DILocation(line: 3092, column: 22, scope: !654)
!1598 = !DILocation(line: 3093, column: 25, scope: !654)
!1599 = !DILocation(line: 3093, column: 13, scope: !654)
!1600 = !DILocation(line: 3094, column: 41, scope: !654)
!1601 = !DILocation(line: 3096, column: 60, scope: !654)
!1602 = !DILocation(line: 3096, column: 13, scope: !654)
!1603 = !DILocation(line: 3101, column: 9, scope: !635)
!1604 = !DILocation(line: 3104, column: 13, scope: !656)
!1605 = !DILocation(line: 3104, column: 22, scope: !656)
!1606 = !DILocation(line: 3106, column: 17, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !656, file: !3, line: 3106, column: 17)
!1608 = !DILocation(line: 3106, column: 52, scope: !1607)
!1609 = !DILocation(line: 3106, column: 64, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1607, file: !3, discriminator: 1)
!1611 = !{!770, !718, i64 320}
!1612 = !DILocation(line: 3106, column: 56, scope: !1610)
!1613 = !DILocation(line: 3106, column: 17, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !656, file: !3, discriminator: 1)
!1615 = !DILocation(line: 3107, column: 57, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 3107, column: 21)
!1617 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 3106, column: 111)
!1618 = !DILocation(line: 3107, column: 98, scope: !1616)
!1619 = !DILocation(line: 3108, column: 57, scope: !1616)
!1620 = !DILocation(line: 3107, column: 22, scope: !1616)
!1621 = !DILocation(line: 3107, column: 21, scope: !1617)
!1622 = !DILocation(line: 3109, column: 49, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 3108, column: 94)
!1624 = !DILocation(line: 3110, column: 77, scope: !1623)
!1625 = !DILocation(line: 3110, column: 21, scope: !1623)
!1626 = !DILocation(line: 3112, column: 81, scope: !1623)
!1627 = !DILocation(line: 3112, column: 104, scope: !1623)
!1628 = !DILocation(line: 3112, column: 21, scope: !1623)
!1629 = !DILocation(line: 3114, column: 21, scope: !1623)
!1630 = !DILocation(line: 3118, column: 25, scope: !656)
!1631 = !DILocation(line: 3118, column: 13, scope: !656)
!1632 = !DILocation(line: 3119, column: 41, scope: !656)
!1633 = !DILocation(line: 3121, column: 60, scope: !656)
!1634 = !DILocation(line: 3121, column: 13, scope: !656)
!1635 = !DILocation(line: 3125, column: 13, scope: !656)
!1636 = !DILocation(line: 3126, column: 9, scope: !635)
!1637 = !DILocation(line: 3129, column: 25, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3129, column: 17)
!1639 = !DILocation(line: 3129, column: 41, scope: !1638)
!1640 = !DILocation(line: 3129, column: 17, scope: !635)
!1641 = !DILocation(line: 3134, column: 27, scope: !635)
!1642 = !DILocation(line: 775, column: 35, scope: !1564, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 3134, column: 13, scope: !635)
!1644 = !DILocation(line: 775, column: 50, scope: !1564, inlinedAt: !1643)
!1645 = !DILocation(line: 777, column: 5, scope: !1564, inlinedAt: !1643)
!1646 = !DILocation(line: 778, column: 5, scope: !1564, inlinedAt: !1643)
!1647 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 3135, column: 13, scope: !635)
!1649 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !1648)
!1650 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !1648)
!1651 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !1648)
!1652 = !DILocation(line: 3136, column: 29, scope: !635)
!1653 = !DILocation(line: 3136, column: 67, scope: !635)
!1654 = !DILocation(line: 3136, column: 13, scope: !635)
!1655 = !DILocation(line: 3137, column: 13, scope: !635)
!1656 = !DILocation(line: 3141, column: 13, scope: !658)
!1657 = !DILocation(line: 3141, column: 22, scope: !658)
!1658 = !DILocation(line: 3142, column: 25, scope: !658)
!1659 = !DILocation(line: 3142, column: 13, scope: !658)
!1660 = !DILocation(line: 3143, column: 41, scope: !658)
!1661 = !DILocation(line: 3147, column: 49, scope: !658)
!1662 = !DILocation(line: 3147, column: 13, scope: !658)
!1663 = !DILocation(line: 3149, column: 9, scope: !635)
!1664 = !DILocation(line: 3154, column: 24, scope: !661)
!1665 = !DILocation(line: 3154, column: 17, scope: !661)
!1666 = !DILocation(line: 3154, column: 53, scope: !661)
!1667 = !DILocation(line: 3154, column: 17, scope: !635)
!1668 = !DILocation(line: 3155, column: 53, scope: !660)
!1669 = !DILocation(line: 3156, column: 17, scope: !660)
!1670 = !DILocation(line: 3156, column: 25, scope: !660)
!1671 = !DILocation(line: 3157, column: 27, scope: !660)
!1672 = !DILocation(line: 3158, column: 29, scope: !660)
!1673 = !DILocation(line: 3158, column: 45, scope: !660)
!1674 = !DILocation(line: 3158, column: 17, scope: !660)
!1675 = !DILocation(line: 3161, column: 55, scope: !660)
!1676 = !DILocation(line: 3161, column: 17, scope: !660)
!1677 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 3162, column: 17, scope: !660)
!1679 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1678)
!1680 = !DILocation(line: 3164, column: 13, scope: !661)
!1681 = !DILocation(line: 3165, column: 53, scope: !664)
!1682 = !DILocation(line: 3165, column: 17, scope: !635)
!1683 = !DILocation(line: 3166, column: 53, scope: !663)
!1684 = !DILocation(line: 3167, column: 17, scope: !663)
!1685 = !DILocation(line: 3167, column: 25, scope: !663)
!1686 = !DILocation(line: 3168, column: 27, scope: !663)
!1687 = !DILocation(line: 3169, column: 58, scope: !663)
!1688 = !DILocation(line: 3169, column: 17, scope: !663)
!1689 = !DILocation(line: 3170, column: 28, scope: !663)
!1690 = !DILocation(line: 3170, column: 51, scope: !663)
!1691 = !DILocation(line: 3170, column: 17, scope: !663)
!1692 = !DILocation(line: 3174, column: 55, scope: !663)
!1693 = !DILocation(line: 3174, column: 17, scope: !663)
!1694 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 3175, column: 17, scope: !663)
!1696 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1695)
!1697 = !DILocation(line: 3178, column: 45, scope: !663)
!1698 = !DILocation(line: 3178, column: 52, scope: !663)
!1699 = !DILocation(line: 3178, column: 29, scope: !663)
!1700 = !DILocation(line: 3178, column: 43, scope: !663)
!1701 = !DILocation(line: 3179, column: 17, scope: !663)
!1702 = !DILocation(line: 3181, column: 13, scope: !664)
!1703 = !DILocation(line: 3182, column: 53, scope: !670)
!1704 = !DILocation(line: 3182, column: 17, scope: !635)
!1705 = !DILocation(line: 3183, column: 53, scope: !669)
!1706 = !DILocation(line: 3184, column: 17, scope: !669)
!1707 = !DILocation(line: 3184, column: 25, scope: !669)
!1708 = !DILocation(line: 3185, column: 27, scope: !669)
!1709 = !DILocation(line: 3186, column: 29, scope: !669)
!1710 = !DILocation(line: 3186, column: 57, scope: !669)
!1711 = !DILocation(line: 3186, column: 17, scope: !669)
!1712 = !DILocation(line: 3189, column: 55, scope: !669)
!1713 = !DILocation(line: 3189, column: 17, scope: !669)
!1714 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 3190, column: 17, scope: !669)
!1716 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1715)
!1717 = !DILocation(line: 3191, column: 17, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !669, file: !3, line: 3191, column: 17)
!1719 = !DILocation(line: 3191, column: 17, scope: !669)
!1720 = !DILocation(line: 3191, column: 17, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1718, file: !3, discriminator: 1)
!1722 = !DILocation(line: 3192, column: 17, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !669, file: !3, line: 3192, column: 17)
!1724 = !DILocation(line: 3192, column: 17, scope: !669)
!1725 = !DILocation(line: 3192, column: 17, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !3, discriminator: 1)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 3192, column: 17)
!1728 = !DILocation(line: 3192, column: 17, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1727, file: !3, discriminator: 2)
!1730 = !DILocation(line: 3194, column: 13, scope: !670)
!1731 = !DILocation(line: 3195, column: 53, scope: !673)
!1732 = !DILocation(line: 3195, column: 17, scope: !635)
!1733 = !DILocation(line: 3196, column: 53, scope: !672)
!1734 = !DILocation(line: 3197, column: 17, scope: !672)
!1735 = !DILocation(line: 3197, column: 27, scope: !672)
!1736 = !DILocation(line: 3198, column: 17, scope: !672)
!1737 = !DILocation(line: 3198, column: 25, scope: !672)
!1738 = !DILocation(line: 3199, column: 27, scope: !672)
!1739 = !DILocation(line: 3203, column: 72, scope: !672)
!1740 = !DILocation(line: 3203, column: 25, scope: !672)
!1741 = !DILocation(line: 3203, column: 17, scope: !672)
!1742 = !DILocation(line: 3206, column: 56, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !672, file: !3, line: 3203, column: 84)
!1744 = !DILocation(line: 3206, column: 68, scope: !1743)
!1745 = !DILocation(line: 3206, column: 21, scope: !1743)
!1746 = !DILocation(line: 3207, column: 21, scope: !1743)
!1747 = !DILocation(line: 3212, column: 59, scope: !1743)
!1748 = !DILocation(line: 3212, column: 71, scope: !1743)
!1749 = !DILocation(line: 3212, column: 21, scope: !1743)
!1750 = !DILocation(line: 3213, column: 21, scope: !1743)
!1751 = !DILocation(line: 3215, column: 49, scope: !672)
!1752 = !DILocation(line: 3215, column: 17, scope: !672)
!1753 = !DILocation(line: 3218, column: 55, scope: !672)
!1754 = !DILocation(line: 3218, column: 17, scope: !672)
!1755 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 3219, column: 17, scope: !672)
!1757 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1756)
!1758 = !DILocation(line: 3221, column: 13, scope: !673)
!1759 = !DILocation(line: 3222, column: 53, scope: !677)
!1760 = !DILocation(line: 3222, column: 17, scope: !635)
!1761 = !DILocation(line: 3223, column: 53, scope: !676)
!1762 = !DILocation(line: 3226, column: 29, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !676, file: !3, line: 3226, column: 21)
!1764 = !{!770, !718, i64 308}
!1765 = !DILocation(line: 3226, column: 21, scope: !1763)
!1766 = !DILocation(line: 3226, column: 21, scope: !676)
!1767 = !DILocation(line: 3227, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 3226, column: 56)
!1769 = !DILocation(line: 3228, column: 17, scope: !1768)
!1770 = !DILocation(line: 3230, column: 17, scope: !676)
!1771 = !DILocation(line: 3230, column: 25, scope: !676)
!1772 = !DILocation(line: 3231, column: 27, scope: !676)
!1773 = !DILocation(line: 3232, column: 52, scope: !676)
!1774 = !DILocation(line: 3232, column: 17, scope: !676)
!1775 = !DILocation(line: 3235, column: 55, scope: !676)
!1776 = !DILocation(line: 3235, column: 17, scope: !676)
!1777 = !DILocation(line: 659, column: 47, scope: !1314, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 3236, column: 17, scope: !676)
!1779 = !DILocation(line: 661, column: 5, scope: !1314, inlinedAt: !1778)
!1780 = !DILocation(line: 3238, column: 13, scope: !677)
!1781 = !DILocation(line: 3241, column: 17, scope: !682)
!1782 = !DILocation(line: 3241, column: 17, scope: !635)
!1783 = !DILocation(line: 3243, column: 21, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 3243, column: 21)
!1785 = distinct !DILexicalBlock(scope: !682, file: !3, line: 3241, column: 52)
!1786 = !DILocation(line: 3243, column: 21, scope: !1785)
!1787 = !DILocation(line: 3244, column: 21, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 3243, column: 67)
!1789 = !DILocation(line: 3245, column: 49, scope: !1788)
!1790 = !DILocation(line: 3247, column: 52, scope: !1788)
!1791 = !DILocation(line: 3247, column: 21, scope: !1788)
!1792 = !DILocation(line: 3248, column: 17, scope: !1788)
!1793 = !DILocation(line: 3249, column: 49, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 3248, column: 24)
!1795 = !DILocation(line: 3253, column: 45, scope: !681)
!1796 = !DILocation(line: 3254, column: 48, scope: !681)
!1797 = !DILocation(line: 3254, column: 17, scope: !681)
!1798 = !DILocation(line: 3256, column: 22, scope: !680)
!1799 = !DILocation(line: 3256, column: 30, scope: !680)
!1800 = !DILocation(line: 3256, column: 21, scope: !681)
!1801 = !DILocation(line: 3257, column: 21, scope: !679)
!1802 = !DILocation(line: 3257, column: 24, scope: !679)
!1803 = !DILocation(line: 3260, column: 42, scope: !679)
!1804 = !DILocation(line: 3260, column: 33, scope: !679)
!1805 = !DILocation(line: 3261, column: 42, scope: !679)
!1806 = !DILocation(line: 3261, column: 33, scope: !679)
!1807 = !DILocation(line: 3262, column: 33, scope: !679)
!1808 = !DILocation(line: 3264, column: 47, scope: !679)
!1809 = !DILocation(line: 3264, column: 33, scope: !679)
!1810 = !DILocation(line: 3265, column: 47, scope: !679)
!1811 = !DILocation(line: 3265, column: 33, scope: !679)
!1812 = !DILocation(line: 3266, column: 47, scope: !679)
!1813 = !DILocation(line: 3266, column: 35, scope: !679)
!1814 = !DILocation(line: 3266, column: 33, scope: !679)
!1815 = !DILocation(line: 3269, column: 64, scope: !679)
!1816 = !DILocation(line: 3269, column: 21, scope: !679)
!1817 = !DILocation(line: 3270, column: 42, scope: !679)
!1818 = !DILocation(line: 3270, column: 21, scope: !679)
!1819 = !DILocation(line: 3271, column: 55, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !679, file: !3, line: 3271, column: 25)
!1821 = !DILocation(line: 3271, column: 64, scope: !1820)
!1822 = !DILocation(line: 3271, column: 95, scope: !1820)
!1823 = !{!771, !718, i64 298}
!1824 = !DILocation(line: 3271, column: 114, scope: !1820)
!1825 = !DILocation(line: 3272, column: 43, scope: !1820)
!1826 = !DILocation(line: 3271, column: 25, scope: !1820)
!1827 = !DILocation(line: 3258, column: 25, scope: !679)
!1828 = !DILocation(line: 3277, column: 81, scope: !679)
!1829 = !DILocation(line: 3277, column: 104, scope: !679)
!1830 = !DILocation(line: 3278, column: 46, scope: !679)
!1831 = !DILocation(line: 3277, column: 21, scope: !679)
!1832 = !DILocation(line: 3279, column: 17, scope: !680)
!1833 = !DILocation(line: 3279, column: 17, scope: !679)
!1834 = !DILocation(line: 3289, column: 13, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !620, file: !3, line: 3289, column: 13)
!1836 = !DILocation(line: 3289, column: 21, scope: !1835)
!1837 = !DILocation(line: 3289, column: 49, scope: !1835)
!1838 = !DILocation(line: 3292, column: 5, scope: !575)
!1839 = !DILocation(line: 3293, column: 1, scope: !575)
!1840 = !DILocation(line: 3293, column: 1, scope: !1021)
!1841 = distinct !DISubprogram(name: "sm_event_callback_set", scope: !3, file: !3, line: 4721, type: !1842, isLocal: false, isDefinition: true, scopeLine: 4722, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !451}
!1844 = !{!1845}
!1845 = !DILocalVariable(name: "cbk_sm_ph", arg: 1, scope: !1841, file: !3, line: 4721, type: !451)
!1846 = !DILocation(line: 4721, column: 34, scope: !1841)
!1847 = !DILocation(line: 4723, column: 5, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 4723, column: 5)
!1849 = !DILocation(line: 4723, column: 5, scope: !1841)
!1850 = !DILocation(line: 4725, column: 5, scope: !1841)
!1851 = !DILocation(line: 4725, column: 44, scope: !1841)
!1852 = !DILocation(line: 4725, column: 53, scope: !1841)
!1853 = !{!770, !717, i64 456}
!1854 = !DILocation(line: 4726, column: 35, scope: !1841)
!1855 = !DILocation(line: 4726, column: 5, scope: !1841)
!1856 = !DILocation(line: 4728, column: 1, scope: !1841)
!1857 = !DILocation(line: 4728, column: 1, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1841, file: !3, discriminator: 1)
!1859 = distinct !DISubprogram(name: "sm_add_event_handler", scope: !3, file: !3, line: 4736, type: !1860, isLocal: false, isDefinition: true, scopeLine: 4737, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !444}
!1862 = !{!1863}
!1863 = !DILocalVariable(name: "callback_handler", arg: 1, scope: !1859, file: !3, line: 4736, type: !444)
!1864 = !DILocation(line: 4736, column: 67, scope: !1859)
!1865 = !DILocation(line: 4738, column: 5, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 4738, column: 5)
!1867 = !DILocation(line: 4738, column: 5, scope: !1859)
!1868 = !DILocation(line: 4739, column: 5, scope: !1859)
!1869 = !DILocation(line: 4740, column: 1, scope: !1859)
!1870 = !DILocation(line: 4740, column: 1, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1859, file: !3, discriminator: 1)
!1872 = distinct !DISubprogram(name: "sm_register_oob_data_callback", scope: !3, file: !3, line: 4730, type: !1873, isLocal: false, isDefinition: true, scopeLine: 4731, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !563}
!1875 = !{!1876}
!1876 = !DILocalVariable(name: "get_oob_data_callback", arg: 1, scope: !1872, file: !3, line: 4730, type: !563)
!1877 = !DILocation(line: 4730, column: 42, scope: !1872)
!1878 = !DILocation(line: 4732, column: 5, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 4732, column: 5)
!1880 = !DILocation(line: 4732, column: 5, scope: !1872)
!1881 = !DILocation(line: 4733, column: 5, scope: !1872)
!1882 = !DILocation(line: 4733, column: 13, scope: !1872)
!1883 = !DILocation(line: 4733, column: 29, scope: !1872)
!1884 = !{!770, !717, i64 468}
!1885 = !DILocation(line: 4734, column: 1, scope: !1872)
!1886 = !DILocation(line: 4734, column: 1, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1872, file: !3, discriminator: 1)
!1888 = distinct !DISubprogram(name: "sm_set_accepted_stk_generation_methods", scope: !3, file: !3, line: 4742, type: !1354, isLocal: false, isDefinition: true, scopeLine: 4743, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1889)
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "accepted_stk_generation_methods", arg: 1, scope: !1888, file: !3, line: 4742, type: !311)
!1891 = !DILocation(line: 4742, column: 53, scope: !1888)
!1892 = !DILocation(line: 4744, column: 5, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 4744, column: 5)
!1894 = !DILocation(line: 4744, column: 5, scope: !1888)
!1895 = !DILocation(line: 4745, column: 5, scope: !1888)
!1896 = !DILocation(line: 4745, column: 13, scope: !1888)
!1897 = !DILocation(line: 4745, column: 48, scope: !1888)
!1898 = !{!770, !718, i64 309}
!1899 = !DILocation(line: 4746, column: 1, scope: !1888)
!1900 = !DILocation(line: 4746, column: 1, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1888, file: !3, discriminator: 1)
!1902 = distinct !DISubprogram(name: "sm_set_encryption_key_size_range", scope: !3, file: !3, line: 4748, type: !1903, isLocal: false, isDefinition: true, scopeLine: 4749, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !311, !311}
!1905 = !{!1906, !1907}
!1906 = !DILocalVariable(name: "min_size", arg: 1, scope: !1902, file: !3, line: 4748, type: !311)
!1907 = !DILocalVariable(name: "max_size", arg: 2, scope: !1902, file: !3, line: 4748, type: !311)
!1908 = !DILocation(line: 4748, column: 47, scope: !1902)
!1909 = !DILocation(line: 4748, column: 65, scope: !1902)
!1910 = !DILocation(line: 4750, column: 5, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 4750, column: 5)
!1912 = !DILocation(line: 4750, column: 5, scope: !1902)
!1913 = !DILocation(line: 4751, column: 5, scope: !1902)
!1914 = !DILocation(line: 4751, column: 13, scope: !1902)
!1915 = !DILocation(line: 4751, column: 40, scope: !1902)
!1916 = !{!770, !718, i64 311}
!1917 = !DILocation(line: 4752, column: 13, scope: !1902)
!1918 = !DILocation(line: 4752, column: 40, scope: !1902)
!1919 = !{!770, !718, i64 310}
!1920 = !DILocation(line: 4753, column: 1, scope: !1902)
!1921 = !DILocation(line: 4753, column: 1, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1902, file: !3, discriminator: 1)
!1923 = distinct !DISubprogram(name: "sm_set_authentication_requirements", scope: !3, file: !3, line: 4755, type: !1354, isLocal: false, isDefinition: true, scopeLine: 4756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1924)
!1924 = !{!1925}
!1925 = !DILocalVariable(name: "auth_req", arg: 1, scope: !1923, file: !3, line: 4755, type: !311)
!1926 = !DILocation(line: 4755, column: 49, scope: !1923)
!1927 = !DILocation(line: 4757, column: 5, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 4757, column: 5)
!1929 = !DILocation(line: 4757, column: 5, scope: !1923)
!1930 = !DILocation(line: 4761, column: 18, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 4759, column: 50)
!1932 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 4759, column: 9)
!1933 = !DILocation(line: 4764, column: 5, scope: !1923)
!1934 = !DILocation(line: 4764, column: 13, scope: !1923)
!1935 = !DILocation(line: 4764, column: 25, scope: !1923)
!1936 = !DILocation(line: 4765, column: 1, scope: !1923)
!1937 = !DILocation(line: 4765, column: 1, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1923, file: !3, discriminator: 1)
!1939 = distinct !DISubprogram(name: "sm_set_io_capabilities", scope: !3, file: !3, line: 4767, type: !1940, isLocal: false, isDefinition: true, scopeLine: 4768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1943)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_capability_t", file: !14, line: 26, baseType: !13)
!1943 = !{!1944}
!1944 = !DILocalVariable(name: "io_capability", arg: 1, scope: !1939, file: !3, line: 4767, type: !1942)
!1945 = !DILocation(line: 4767, column: 45, scope: !1939)
!1946 = !DILocation(line: 4769, column: 5, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 4769, column: 5)
!1948 = !DILocation(line: 4769, column: 5, scope: !1939)
!1949 = !DILocation(line: 4770, column: 34, scope: !1939)
!1950 = !DILocation(line: 4770, column: 5, scope: !1939)
!1951 = !DILocation(line: 4770, column: 13, scope: !1939)
!1952 = !DILocation(line: 4770, column: 32, scope: !1939)
!1953 = !{!770, !718, i64 313}
!1954 = !DILocation(line: 4771, column: 1, scope: !1939)
!1955 = !DILocation(line: 4771, column: 1, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1939, file: !3, discriminator: 1)
!1957 = distinct !DISubprogram(name: "sm_set_request_security", scope: !3, file: !3, line: 4773, type: !1958, isLocal: false, isDefinition: true, scopeLine: 4774, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !370}
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "enable", arg: 1, scope: !1957, file: !3, line: 4773, type: !370)
!1962 = !DILocation(line: 4773, column: 34, scope: !1957)
!1963 = !DILocation(line: 4775, column: 5, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 4775, column: 5)
!1965 = !DILocation(line: 4775, column: 5, scope: !1957)
!1966 = !DILocation(line: 4776, column: 35, scope: !1957)
!1967 = !DILocation(line: 4776, column: 5, scope: !1957)
!1968 = !DILocation(line: 4776, column: 13, scope: !1957)
!1969 = !DILocation(line: 4776, column: 33, scope: !1957)
!1970 = !DILocation(line: 4777, column: 1, scope: !1957)
!1971 = !DILocation(line: 4777, column: 1, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1957, file: !3, discriminator: 1)
!1973 = distinct !DISubprogram(name: "sm_set_master_request_pair", scope: !3, file: !3, line: 4779, type: !1958, isLocal: false, isDefinition: true, scopeLine: 4780, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1974)
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "enable", arg: 1, scope: !1973, file: !3, line: 4779, type: !370)
!1976 = !DILocation(line: 4779, column: 37, scope: !1973)
!1977 = !DILocation(line: 4781, column: 5, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 4781, column: 5)
!1979 = !DILocation(line: 4781, column: 5, scope: !1973)
!1980 = !DILocation(line: 4782, column: 35, scope: !1973)
!1981 = !DILocation(line: 4782, column: 5, scope: !1973)
!1982 = !DILocation(line: 4782, column: 13, scope: !1973)
!1983 = !DILocation(line: 4782, column: 33, scope: !1973)
!1984 = !DILocation(line: 4783, column: 1, scope: !1973)
!1985 = !DILocation(line: 4783, column: 1, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1973, file: !3, discriminator: 1)
!1987 = distinct !DISubprogram(name: "sm_set_master_pair_redo", scope: !3, file: !3, line: 4785, type: !1958, isLocal: false, isDefinition: true, scopeLine: 4786, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1988)
!1988 = !{!1989}
!1989 = !DILocalVariable(name: "enable", arg: 1, scope: !1987, file: !3, line: 4785, type: !370)
!1990 = !DILocation(line: 4785, column: 34, scope: !1987)
!1991 = !DILocation(line: 4787, column: 5, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 4787, column: 5)
!1993 = !DILocation(line: 4787, column: 5, scope: !1987)
!1994 = !DILocation(line: 4788, column: 35, scope: !1987)
!1995 = !DILocation(line: 4788, column: 5, scope: !1987)
!1996 = !DILocation(line: 4788, column: 13, scope: !1987)
!1997 = !DILocation(line: 4788, column: 33, scope: !1987)
!1998 = !DILocation(line: 4789, column: 1, scope: !1987)
!1999 = !DILocation(line: 4789, column: 1, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1987, file: !3, discriminator: 1)
!2001 = distinct !DISubprogram(name: "sm_set_er", scope: !3, file: !3, line: 4792, type: !2002, isLocal: false, isDefinition: true, scopeLine: 4793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !441}
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "er", arg: 1, scope: !2001, file: !3, line: 4792, type: !441)
!2006 = !DILocation(line: 4792, column: 25, scope: !2001)
!2007 = !DILocation(line: 4794, column: 5, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 4794, column: 5)
!2009 = !DILocation(line: 4794, column: 5, scope: !2001)
!2010 = !DILocation(line: 4795, column: 12, scope: !2001)
!2011 = !DILocation(line: 4795, column: 5, scope: !2001)
!2012 = !DILocation(line: 4796, column: 1, scope: !2001)
!2013 = !DILocation(line: 4796, column: 1, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2001, file: !3, discriminator: 1)
!2015 = distinct !DISubprogram(name: "sm_set_ir", scope: !3, file: !3, line: 4798, type: !2002, isLocal: false, isDefinition: true, scopeLine: 4799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2016)
!2016 = !{!2017}
!2017 = !DILocalVariable(name: "ir", arg: 1, scope: !2015, file: !3, line: 4798, type: !441)
!2018 = !DILocation(line: 4798, column: 25, scope: !2015)
!2019 = !DILocation(line: 4800, column: 5, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 4800, column: 5)
!2021 = !DILocation(line: 4800, column: 5, scope: !2015)
!2022 = !DILocation(line: 4801, column: 12, scope: !2015)
!2023 = !DILocation(line: 4801, column: 5, scope: !2015)
!2024 = !DILocation(line: 4802, column: 1, scope: !2015)
!2025 = !DILocation(line: 4802, column: 1, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2015, file: !3, discriminator: 1)
!2027 = distinct !DISubprogram(name: "sm_test_set_irk", scope: !3, file: !3, line: 4805, type: !2002, isLocal: false, isDefinition: true, scopeLine: 4806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2028)
!2028 = !{!2029}
!2029 = !DILocalVariable(name: "irk", arg: 1, scope: !2027, file: !3, line: 4805, type: !441)
!2030 = !DILocation(line: 4805, column: 31, scope: !2027)
!2031 = !DILocation(line: 4807, column: 5, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 4807, column: 5)
!2033 = !DILocation(line: 4807, column: 5, scope: !2027)
!2034 = !DILocation(line: 4808, column: 12, scope: !2027)
!2035 = !DILocation(line: 4808, column: 5, scope: !2027)
!2036 = !DILocation(line: 4809, column: 13, scope: !2027)
!2037 = !DILocation(line: 4809, column: 37, scope: !2027)
!2038 = !DILocation(line: 4810, column: 1, scope: !2027)
!2039 = !DILocation(line: 4810, column: 1, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2027, file: !3, discriminator: 1)
!2041 = distinct !DISubprogram(name: "sm_get_local_irk", scope: !3, file: !3, line: 4812, type: !2042, isLocal: false, isDefinition: true, scopeLine: 4813, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2045)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!2044, !441}
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !429, line: 11, baseType: !313)
!2045 = !{!2046}
!2046 = !DILocalVariable(name: "irk", arg: 1, scope: !2041, file: !3, line: 4812, type: !441)
!2047 = !DILocation(line: 4812, column: 32, scope: !2041)
!2048 = !DILocation(line: 4814, column: 5, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 4814, column: 5)
!2050 = !DILocation(line: 4814, column: 5, scope: !2041)
!2051 = !DILocation(line: 4816, column: 10, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 4816, column: 9)
!2053 = !DILocation(line: 4816, column: 18, scope: !2052)
!2054 = !DILocation(line: 4816, column: 9, scope: !2041)
!2055 = !DILocation(line: 4819, column: 5, scope: !2041)
!2056 = !DILocation(line: 4820, column: 5, scope: !2041)
!2057 = !DILocation(line: 4821, column: 1, scope: !2041)
!2058 = distinct !DISubprogram(name: "sm_set_make_resolvable_address", scope: !3, file: !3, line: 4823, type: !2059, isLocal: false, isDefinition: true, scopeLine: 4824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2061)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !430}
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "en", arg: 1, scope: !2058, file: !3, line: 4823, type: !430)
!2063 = !DILocation(line: 4823, column: 40, scope: !2058)
!2064 = !DILocation(line: 4825, column: 5, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 4825, column: 5)
!2066 = !DILocation(line: 4825, column: 5, scope: !2058)
!2067 = !DILocation(line: 4826, column: 5, scope: !2058)
!2068 = !DILocation(line: 4826, column: 13, scope: !2058)
!2069 = !DILocation(line: 4826, column: 37, scope: !2058)
!2070 = !DILocation(line: 4827, column: 1, scope: !2058)
!2071 = !DILocation(line: 4827, column: 1, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2058, file: !3, discriminator: 1)
!2073 = distinct !DISubprogram(name: "sm_test_use_fixed_local_csrk", scope: !3, file: !3, line: 4829, type: !576, isLocal: false, isDefinition: true, scopeLine: 4830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!2074 = !DILocation(line: 4831, column: 5, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 4831, column: 5)
!2076 = !DILocation(line: 4831, column: 5, scope: !2073)
!2077 = !DILocation(line: 4832, column: 5, scope: !2073)
!2078 = !DILocation(line: 4832, column: 13, scope: !2073)
!2079 = !DILocation(line: 4832, column: 39, scope: !2073)
!2080 = !DILocation(line: 4833, column: 1, scope: !2073)
!2081 = !DILocation(line: 4833, column: 1, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2073, file: !3, discriminator: 1)
!2083 = distinct !DISubprogram(name: "sm_set_master_reconnect_enc_delay", scope: !3, file: !3, line: 4835, type: !2084, isLocal: false, isDefinition: true, scopeLine: 4836, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !428}
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "delay_ms", arg: 1, scope: !2083, file: !3, line: 4835, type: !428)
!2088 = !DILocation(line: 4835, column: 44, scope: !2083)
!2089 = !DILocation(line: 4837, column: 5, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 4837, column: 5)
!2091 = !DILocation(line: 4837, column: 5, scope: !2083)
!2092 = !DILocation(line: 4838, column: 5, scope: !2083)
!2093 = !DILocation(line: 4838, column: 13, scope: !2083)
!2094 = !DILocation(line: 4838, column: 33, scope: !2083)
!2095 = !{!770, !773, i64 476}
!2096 = !DILocation(line: 4839, column: 1, scope: !2083)
!2097 = !DILocation(line: 4839, column: 1, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2083, file: !3, discriminator: 1)
!2099 = distinct !DISubprogram(name: "sm_init", scope: !3, file: !3, line: 4843, type: !576, isLocal: false, isDefinition: true, scopeLine: 4844, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2100)
!2100 = !{!2101, !2102, !2109, !2110, !2111}
!2101 = !DILocalVariable(name: "i", scope: !2099, file: !3, line: 4846, type: !370)
!2102 = !DILocalVariable(name: "sm_vm_info", scope: !2099, file: !3, line: 4847, type: !2103)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_vm_cfg_t", file: !3, line: 466, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 462, size: 272, elements: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2104, file: !3, line: 463, baseType: !428, size: 16)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "er", scope: !2104, file: !3, line: 464, baseType: !490, size: 128, offset: 16)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ir", scope: !2104, file: !3, line: 465, baseType: !490, size: 128, offset: 144)
!2109 = !DILocalVariable(name: "sm_pt", scope: !2099, file: !3, line: 4853, type: !472)
!2110 = !DILocalVariable(name: "ret", scope: !2099, file: !3, line: 4864, type: !370)
!2111 = !DILocalVariable(name: "value16", scope: !2112, file: !3, line: 4867, type: !428)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 4866, column: 64)
!2113 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 4866, column: 9)
!2114 = !DILocation(line: 4847, column: 5, scope: !2099)
!2115 = !DILocation(line: 4849, column: 5, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 4849, column: 5)
!2117 = !DILocation(line: 4849, column: 5, scope: !2099)
!2118 = !DILocation(line: 4851, column: 5, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2120, file: !3, discriminator: 1)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 4851, column: 5)
!2121 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 4851, column: 5)
!2122 = !DILocation(line: 4851, column: 5, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2121, file: !3, discriminator: 1)
!2124 = !DILocation(line: 4851, column: 5, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !3, discriminator: 2)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 4851, column: 5)
!2127 = !DILocation(line: 4851, column: 5, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !3, discriminator: 3)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 4851, column: 5)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 4851, column: 5)
!2131 = !DILocation(line: 4851, column: 5, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2129, file: !3, discriminator: 9)
!2133 = !DILocation(line: 4851, column: 5, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2129, file: !3, discriminator: 10)
!2135 = !DILocation(line: 4851, column: 5, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !3, discriminator: 5)
!2137 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 4851, column: 5)
!2138 = !DILocation(line: 4851, column: 5, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2140, file: !3, discriminator: 6)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 4851, column: 5)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 4851, column: 5)
!2142 = !DILocation(line: 4853, column: 24, scope: !2099)
!2143 = !DILocation(line: 4854, column: 5, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2145, file: !3, discriminator: 2)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 4854, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 4854, column: 5)
!2147 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 4854, column: 5)
!2148 = !DILocation(line: 4854, column: 5, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2150, file: !3, discriminator: 3)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 4854, column: 5)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 4854, column: 5)
!2152 = !DILocation(line: 4854, column: 5, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2150, file: !3, discriminator: 9)
!2154 = !DILocation(line: 4854, column: 5, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2150, file: !3, discriminator: 10)
!2156 = !DILocation(line: 4854, column: 5, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !3, discriminator: 5)
!2158 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 4854, column: 5)
!2159 = !DILocation(line: 4854, column: 5, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !3, discriminator: 6)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 4854, column: 5)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 4854, column: 5)
!2163 = !DILocation(line: 4855, column: 12, scope: !2099)
!2164 = !DILocation(line: 4857, column: 5, scope: !2099)
!2165 = !DILocation(line: 4858, column: 12, scope: !2099)
!2166 = !DILocation(line: 4858, column: 5, scope: !2099)
!2167 = !DILocation(line: 4859, column: 13, scope: !2099)
!2168 = !DILocation(line: 4859, column: 41, scope: !2099)
!2169 = !DILocation(line: 4860, column: 13, scope: !2099)
!2170 = !DILocation(line: 4860, column: 32, scope: !2099)
!2171 = !DILocation(line: 4864, column: 15, scope: !2099)
!2172 = !DILocation(line: 4864, column: 9, scope: !2099)
!2173 = !DILocation(line: 4866, column: 13, scope: !2113)
!2174 = !DILocation(line: 4866, column: 59, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2113, file: !3, discriminator: 1)
!2176 = !DILocation(line: 4866, column: 45, scope: !2175)
!2177 = !DILocation(line: 4866, column: 27, scope: !2113)
!2178 = !DILocation(line: 4870, column: 24, scope: !2112)
!2179 = !{!2180, !773, i64 0}
!2180 = !{!"", !773, i64 0, !718, i64 2, !718, i64 18}
!2181 = !DILocation(line: 4846, column: 9, scope: !2099)
!2182 = !DILocation(line: 4872, column: 9, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !3, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 4872, column: 9)
!2185 = !DILocation(line: 4873, column: 23, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 4872, column: 34)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 4872, column: 9)
!2188 = !DILocation(line: 4874, column: 32, scope: !2186)
!2189 = !DILocation(line: 4874, column: 13, scope: !2186)
!2190 = !DILocation(line: 4874, column: 30, scope: !2186)
!2191 = !DILocation(line: 4875, column: 40, scope: !2186)
!2192 = !DILocation(line: 4875, column: 32, scope: !2186)
!2193 = !DILocation(line: 4875, column: 13, scope: !2186)
!2194 = !DILocation(line: 4875, column: 30, scope: !2186)
!2195 = !DILocation(line: 4872, column: 30, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2187, file: !3, discriminator: 2)
!2197 = !DILocation(line: 4872, column: 23, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2187, file: !3, discriminator: 1)
!2199 = distinct !{!2199, !2200, !2201}
!2200 = !DILocation(line: 4872, column: 9, scope: !2184)
!2201 = !DILocation(line: 4876, column: 9, scope: !2184)
!2202 = !DILocation(line: 4877, column: 15, scope: !2112)
!2203 = !DILocation(line: 4879, column: 5, scope: !2112)
!2204 = !DILocation(line: 4792, column: 25, scope: !2001, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 4891, column: 5, scope: !2099)
!2206 = !DILocation(line: 4891, column: 15, scope: !2099)
!2207 = !DILocation(line: 4795, column: 12, scope: !2001, inlinedAt: !2205)
!2208 = !DILocation(line: 4795, column: 5, scope: !2001, inlinedAt: !2205)
!2209 = !DILocation(line: 4798, column: 25, scope: !2015, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 4892, column: 5, scope: !2099)
!2211 = !DILocation(line: 4892, column: 15, scope: !2099)
!2212 = !DILocation(line: 4801, column: 5, scope: !2015, inlinedAt: !2210)
!2213 = !DILocation(line: 4894, column: 13, scope: !2099)
!2214 = !DILocation(line: 4894, column: 48, scope: !2099)
!2215 = !DILocation(line: 4899, column: 13, scope: !2099)
!2216 = !DILocation(line: 4899, column: 40, scope: !2099)
!2217 = !DILocation(line: 4900, column: 13, scope: !2099)
!2218 = !DILocation(line: 4900, column: 40, scope: !2099)
!2219 = !DILocation(line: 4902, column: 13, scope: !2099)
!2220 = !DILocation(line: 4902, column: 61, scope: !2099)
!2221 = !{!770, !758, i64 316}
!2222 = !DILocation(line: 4903, column: 13, scope: !2099)
!2223 = !DILocation(line: 4903, column: 59, scope: !2099)
!2224 = !DILocation(line: 4908, column: 13, scope: !2099)
!2225 = !DILocation(line: 4908, column: 23, scope: !2099)
!2226 = !DILocation(line: 4909, column: 13, scope: !2099)
!2227 = !DILocation(line: 4909, column: 23, scope: !2099)
!2228 = !DILocation(line: 4910, column: 13, scope: !2099)
!2229 = !DILocation(line: 4910, column: 29, scope: !2099)
!2230 = !DILocation(line: 4911, column: 13, scope: !2099)
!2231 = !DILocation(line: 4911, column: 40, scope: !2099)
!2232 = !DILocation(line: 4912, column: 13, scope: !2099)
!2233 = !DILocation(line: 4912, column: 57, scope: !2099)
!2234 = !DILocation(line: 4913, column: 13, scope: !2099)
!2235 = !DILocation(line: 4913, column: 40, scope: !2099)
!2236 = !DILocation(line: 4914, column: 13, scope: !2099)
!2237 = !DILocation(line: 4914, column: 49, scope: !2099)
!2238 = !DILocation(line: 4916, column: 37, scope: !2099)
!2239 = !DILocation(line: 4917, column: 13, scope: !2099)
!2240 = !DILocation(line: 4917, column: 41, scope: !2099)
!2241 = !DILocation(line: 4919, column: 13, scope: !2099)
!2242 = !DILocation(line: 4919, column: 39, scope: !2099)
!2243 = !DILocation(line: 4922, column: 45, scope: !2099)
!2244 = !DILocation(line: 4922, column: 54, scope: !2099)
!2245 = !{!770, !717, i64 448}
!2246 = !DILocation(line: 4923, column: 36, scope: !2099)
!2247 = !DILocation(line: 4923, column: 27, scope: !2099)
!2248 = !DILocation(line: 4923, column: 5, scope: !2099)
!2249 = !DILocation(line: 4926, column: 5, scope: !2099)
!2250 = !DILocation(line: 4835, column: 44, scope: !2083, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 4937, column: 5, scope: !2099)
!2252 = !DILocation(line: 4838, column: 5, scope: !2083, inlinedAt: !2251)
!2253 = !DILocation(line: 4838, column: 13, scope: !2083, inlinedAt: !2251)
!2254 = !DILocation(line: 4838, column: 33, scope: !2083, inlinedAt: !2251)
!2255 = !DILocation(line: 3688, column: 9, scope: !2256, inlinedAt: !2258)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 3688, column: 9)
!2257 = distinct !DISubprogram(name: "sm_state_working", scope: !3, file: !3, line: 3686, type: !576, isLocal: true, isDefinition: true, scopeLine: 3687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!2258 = distinct !DILocation(line: 4938, column: 5, scope: !2099)
!2259 = !DILocation(line: 3688, column: 25, scope: !2256, inlinedAt: !2258)
!2260 = !DILocation(line: 3688, column: 9, scope: !2257, inlinedAt: !2258)
!2261 = !DILocation(line: 3692, column: 5, scope: !2262, inlinedAt: !2258)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 3692, column: 5)
!2263 = !DILocation(line: 3692, column: 5, scope: !2257, inlinedAt: !2258)
!2264 = !DILocation(line: 3692, column: 5, scope: !2265, inlinedAt: !2258)
!2265 = !DILexicalBlockFile(scope: !2262, file: !3, discriminator: 1)
!2266 = !DILocation(line: 3695, column: 25, scope: !2257, inlinedAt: !2258)
!2267 = !DILocation(line: 3695, column: 33, scope: !2257, inlinedAt: !2258)
!2268 = !DILocation(line: 3695, column: 13, scope: !2257, inlinedAt: !2258)
!2269 = !DILocation(line: 3695, column: 23, scope: !2257, inlinedAt: !2258)
!2270 = !DILocation(line: 3703, column: 13, scope: !2257, inlinedAt: !2258)
!2271 = !DILocation(line: 3703, column: 5, scope: !2257, inlinedAt: !2258)
!2272 = !DILocation(line: 3715, column: 1, scope: !2257, inlinedAt: !2258)
!2273 = !DILocation(line: 4940, column: 1, scope: !2099)
!2274 = !DILocation(line: 4940, column: 1, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2099, file: !3, discriminator: 2)
!2276 = distinct !DISubprogram(name: "cpu_reset", scope: !429, file: !429, line: 145, type: !576, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!2277 = !DILocation(line: 148, column: 5, scope: !2276)
!2278 = !DILocation(line: 149, column: 1, scope: !2276)
!2279 = distinct !DISubprogram(name: "sm_event_packet_handler", scope: !3, file: !3, line: 3772, type: !452, isLocal: true, isDefinition: true, scopeLine: 3773, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2281 = !DILocalVariable(name: "packet_type", arg: 1, scope: !2279, file: !3, line: 3772, type: !311)
!2282 = !DILocalVariable(name: "channel", arg: 2, scope: !2279, file: !3, line: 3772, type: !328)
!2283 = !DILocalVariable(name: "packet", arg: 3, scope: !2279, file: !3, line: 3772, type: !441)
!2284 = !DILocalVariable(name: "size", arg: 4, scope: !2279, file: !3, line: 3772, type: !328)
!2285 = !DILocalVariable(name: "sm_conn", scope: !2279, file: !3, line: 3778, type: !454)
!2286 = !DILocalVariable(name: "con_handle", scope: !2279, file: !3, line: 3779, type: !327)
!2287 = !DILocalVariable(name: "tmp_packet", scope: !2288, file: !3, line: 3909, type: !2293)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 3908, column: 96)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 3908, column: 21)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 3818, column: 32)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 3784, column: 52)
!2292 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 3781, column: 26)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 32, elements: !2294)
!2294 = !{!2295}
!2295 = !DISubrange(count: 4)
!2296 = !DILocalVariable(name: "tmp_ble_addr", scope: !2297, file: !3, line: 3299, type: !2300)
!2297 = distinct !DISubprogram(name: "sm_resolvable_address_generate_set", scope: !3, file: !3, line: 3297, type: !576, isLocal: true, isDefinition: true, scopeLine: 3298, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2298)
!2298 = !{!2296, !2299}
!2299 = !DILocalVariable(name: "en_irk", scope: !2297, file: !3, line: 3300, type: !683)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 48, elements: !314)
!2301 = !DILocation(line: 3299, column: 8, scope: !2297, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 3337, column: 13, scope: !2303, inlinedAt: !2325)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 3336, column: 46)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 3336, column: 13)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 3331, column: 32)
!2306 = distinct !DISubprogram(name: "sm_handle_encryption_result", scope: !3, file: !3, line: 3311, type: !2002, isLocal: true, isDefinition: true, scopeLine: 3312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2307)
!2307 = !{!2308, !2309, !2315, !2316, !2319, !2321, !2323}
!2308 = !DILocalVariable(name: "data", arg: 1, scope: !2306, file: !3, line: 3311, type: !441)
!2309 = !DILocalVariable(name: "hash", scope: !2310, file: !3, line: 3319, type: !2312)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 3316, column: 62)
!2311 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 3316, column: 9)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 24, elements: !2313)
!2313 = !{!2314}
!2314 = !DISubrange(count: 3)
!2315 = !DILocalVariable(name: "connection", scope: !2306, file: !3, line: 3376, type: !454)
!2316 = !DILocalVariable(name: "t2", scope: !2317, file: !3, line: 3383, type: !490)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 3382, column: 30)
!2318 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 3380, column: 42)
!2319 = !DILocalVariable(name: "peer_confirm_test", scope: !2320, file: !3, line: 3395, type: !490)
!2320 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 3394, column: 30)
!2321 = !DILocalVariable(name: "y128", scope: !2322, file: !3, line: 3421, type: !490)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 3420, column: 27)
!2323 = !DILocalVariable(name: "y128", scope: !2324, file: !3, line: 3434, type: !490)
!2324 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 3433, column: 37)
!2325 = distinct !DILocation(line: 4116, column: 17, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 4115, column: 84)
!2327 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 4115, column: 17)
!2328 = !DILocation(line: 3300, column: 8, scope: !2297, inlinedAt: !2302)
!2329 = !DILocation(line: 3319, column: 17, scope: !2310, inlinedAt: !2325)
!2330 = !DILocation(line: 3383, column: 18, scope: !2317, inlinedAt: !2325)
!2331 = !DILocation(line: 3395, column: 18, scope: !2320, inlinedAt: !2325)
!2332 = !DILocation(line: 3421, column: 18, scope: !2322, inlinedAt: !2325)
!2333 = !DILocation(line: 3434, column: 18, scope: !2324, inlinedAt: !2325)
!2334 = !DILocation(line: 3772, column: 45, scope: !2279)
!2335 = !DILocation(line: 3772, column: 67, scope: !2279)
!2336 = !DILocation(line: 3772, column: 85, scope: !2279)
!2337 = !DILocation(line: 3772, column: 102, scope: !2279)
!2338 = !DILocation(line: 3781, column: 5, scope: !2279)
!2339 = !DILocation(line: 3784, column: 17, scope: !2292)
!2340 = !DILocation(line: 3784, column: 9, scope: !2292)
!2341 = !DILocation(line: 3818, column: 21, scope: !2291)
!2342 = !DILocation(line: 3818, column: 13, scope: !2291)
!2343 = !DILocation(line: 3823, column: 21, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 3823, column: 21)
!2345 = !DILocation(line: 3823, column: 21, scope: !2290)
!2346 = !DILocation(line: 3827, column: 30, scope: !2290)
!2347 = !DILocation(line: 3779, column: 22, scope: !2279)
!2348 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 3828, column: 27, scope: !2290)
!2350 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !2349)
!2351 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !2349)
!2352 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !2349)
!2353 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !2349)
!2354 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !2349)
!2355 = !DILocation(line: 3778, column: 24, scope: !2279)
!2356 = !DILocation(line: 3829, column: 21, scope: !2290)
!2357 = !DILocation(line: 3833, column: 26, scope: !2290)
!2358 = !DILocation(line: 3833, column: 36, scope: !2290)
!2359 = !DILocation(line: 3834, column: 36, scope: !2290)
!2360 = !DILocation(line: 3834, column: 26, scope: !2290)
!2361 = !DILocation(line: 3834, column: 34, scope: !2290)
!2362 = !DILocation(line: 3835, column: 46, scope: !2290)
!2363 = !DILocation(line: 3835, column: 26, scope: !2290)
!2364 = !DILocation(line: 3835, column: 44, scope: !2290)
!2365 = !DILocation(line: 3836, column: 34, scope: !2290)
!2366 = !DILocation(line: 3836, column: 45, scope: !2290)
!2367 = !DILocation(line: 3836, column: 17, scope: !2290)
!2368 = !DILocation(line: 3840, column: 26, scope: !2290)
!2369 = !DILocation(line: 3840, column: 40, scope: !2290)
!2370 = !{!870, !758, i64 52}
!2371 = !DILocation(line: 3842, column: 26, scope: !2290)
!2372 = !DILocation(line: 3842, column: 50, scope: !2290)
!2373 = !{!870, !718, i64 20}
!2374 = !DILocation(line: 3843, column: 26, scope: !2290)
!2375 = !DILocation(line: 3843, column: 54, scope: !2290)
!2376 = !DILocation(line: 3844, column: 26, scope: !2290)
!2377 = !DILocation(line: 3844, column: 60, scope: !2290)
!2378 = !DILocation(line: 3845, column: 26, scope: !2290)
!2379 = !DILocation(line: 3845, column: 41, scope: !2290)
!2380 = !DILocation(line: 3848, column: 26, scope: !2290)
!2381 = !DILocation(line: 3848, column: 46, scope: !2290)
!2382 = !DILocation(line: 3851, column: 21, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 3851, column: 21)
!2384 = !DILocation(line: 3851, column: 21, scope: !2290)
!2385 = !DILocation(line: 3853, column: 34, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 3853, column: 25)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 3851, column: 53)
!2388 = !DILocation(line: 3853, column: 50, scope: !2386)
!2389 = !DILocation(line: 3853, column: 25, scope: !2387)
!2390 = !DILocation(line: 3854, column: 29, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 3854, column: 29)
!2392 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 3853, column: 70)
!2393 = !DILocation(line: 3854, column: 37, scope: !2391)
!2394 = !DILocation(line: 3854, column: 29, scope: !2392)
!2395 = !DILocation(line: 3861, column: 21, scope: !2392)
!2396 = !DILocation(line: 3865, column: 25, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 3865, column: 25)
!2398 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 3863, column: 24)
!2399 = !DILocation(line: 3865, column: 25, scope: !2398)
!2400 = !DILocation(line: 3866, column: 37, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 3866, column: 29)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 3865, column: 59)
!2403 = !DILocation(line: 3866, column: 29, scope: !2401)
!2404 = !DILocation(line: 3866, column: 29, scope: !2402)
!2405 = !DILocation(line: 3869, column: 54, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 3866, column: 58)
!2407 = !DILocation(line: 3870, column: 79, scope: !2406)
!2408 = !DILocation(line: 3870, column: 70, scope: !2406)
!2409 = !DILocation(line: 3870, column: 115, scope: !2406)
!2410 = !DILocation(line: 3870, column: 54, scope: !2406)
!2411 = !DILocation(line: 3870, column: 52, scope: !2406)
!2412 = !DILocation(line: 3871, column: 25, scope: !2406)
!2413 = !DILocation(line: 3872, column: 54, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 3871, column: 32)
!2415 = !DILocation(line: 3875, column: 37, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 3875, column: 29)
!2417 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 3874, column: 28)
!2418 = !DILocation(line: 3875, column: 29, scope: !2416)
!2419 = !DILocation(line: 3875, column: 29, scope: !2417)
!2420 = !DILocation(line: 3885, column: 30, scope: !2290)
!2421 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 3886, column: 27, scope: !2290)
!2423 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !2422)
!2424 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !2422)
!2425 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !2422)
!2426 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !2422)
!2427 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !2422)
!2428 = !DILocation(line: 3887, column: 21, scope: !2290)
!2429 = !DILocation(line: 3892, column: 30, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 3892, column: 21)
!2431 = !DILocation(line: 3892, column: 21, scope: !2290)
!2432 = !DILocation(line: 3893, column: 46, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 3892, column: 82)
!2434 = !DILocation(line: 3894, column: 21, scope: !2433)
!2435 = !DILocation(line: 3898, column: 46, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 3896, column: 74)
!2437 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 3896, column: 21)
!2438 = !DILocation(line: 3899, column: 21, scope: !2436)
!2439 = !DILocation(line: 3903, column: 29, scope: !2290)
!2440 = !DILocation(line: 3903, column: 40, scope: !2290)
!2441 = !DILocation(line: 3903, column: 17, scope: !2290)
!2442 = !DILocation(line: 3904, column: 42, scope: !2290)
!2443 = !DILocation(line: 3904, column: 26, scope: !2290)
!2444 = !DILocation(line: 3904, column: 40, scope: !2290)
!2445 = !DILocation(line: 3908, column: 44, scope: !2289)
!2446 = !DILocation(line: 3908, column: 49, scope: !2289)
!2447 = !DILocation(line: 582, column: 13, scope: !2448, inlinedAt: !2459)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 582, column: 13)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 581, column: 33)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 581, column: 5)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 581, column: 5)
!2452 = distinct !DISubprogram(name: "sm_is_null", scope: !3, file: !3, line: 578, type: !2453, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!370, !441, !370}
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "data", arg: 1, scope: !2452, file: !3, line: 578, type: !441)
!2457 = !DILocalVariable(name: "size", arg: 2, scope: !2452, file: !3, line: 578, type: !370)
!2458 = !DILocalVariable(name: "i", scope: !2452, file: !3, line: 580, type: !370)
!2459 = distinct !DILocation(line: 591, column: 12, scope: !2460, inlinedAt: !2465)
!2460 = distinct !DISubprogram(name: "sm_is_null_random", scope: !3, file: !3, line: 589, type: !2461, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!370, !441}
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "random", arg: 1, scope: !2460, file: !3, line: 589, type: !441)
!2465 = distinct !DILocation(line: 3908, column: 53, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2289, file: !3, discriminator: 1)
!2467 = !DILocation(line: 580, column: 9, scope: !2452, inlinedAt: !2459)
!2468 = !DILocation(line: 581, column: 19, scope: !2469, inlinedAt: !2459)
!2469 = !DILexicalBlockFile(scope: !2450, file: !3, discriminator: 1)
!2470 = !DILocation(line: 581, column: 5, scope: !2471, inlinedAt: !2459)
!2471 = !DILexicalBlockFile(scope: !2451, file: !3, discriminator: 1)
!2472 = distinct !{!2472, !2473, !2474}
!2473 = !DILocation(line: 581, column: 5, scope: !2451)
!2474 = !DILocation(line: 585, column: 5, scope: !2451)
!2475 = !DILocation(line: 581, column: 29, scope: !2476, inlinedAt: !2459)
!2476 = !DILexicalBlockFile(scope: !2450, file: !3, discriminator: 2)
!2477 = !DILocation(line: 582, column: 13, scope: !2449, inlinedAt: !2459)
!2478 = !DILocation(line: 3909, column: 24, scope: !2288)
!2479 = !DILocation(line: 3911, column: 78, scope: !2288)
!2480 = !DILocation(line: 3911, column: 98, scope: !2288)
!2481 = !DILocation(line: 3912, column: 46, scope: !2288)
!2482 = !DILocation(line: 3911, column: 21, scope: !2288)
!2483 = !DILocation(line: 3915, column: 50, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 3914, column: 28)
!2485 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 3914, column: 25)
!2486 = !DILocation(line: 3939, column: 42, scope: !2290)
!2487 = !DILocation(line: 3941, column: 17, scope: !2290)
!2488 = !DILocation(line: 3982, column: 26, scope: !2291)
!2489 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 3983, column: 23, scope: !2291)
!2491 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !2490)
!2492 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !2490)
!2493 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !2490)
!2494 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !2490)
!2495 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !2490)
!2496 = !DILocation(line: 3984, column: 17, scope: !2291)
!2497 = !DILocation(line: 3988, column: 48, scope: !2291)
!2498 = !DILocation(line: 3988, column: 22, scope: !2291)
!2499 = !DILocation(line: 3988, column: 46, scope: !2291)
!2500 = !DILocation(line: 3996, column: 18, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 3996, column: 17)
!2502 = !DILocation(line: 3996, column: 17, scope: !2291)
!2503 = !DILocation(line: 3998, column: 25, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 3996, column: 52)
!2505 = !DILocation(line: 3998, column: 17, scope: !2504)
!2506 = !DILocation(line: 4001, column: 26, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 4001, column: 25)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 3998, column: 36)
!2509 = !DILocation(line: 4001, column: 34, scope: !2507)
!2510 = !DILocation(line: 4001, column: 25, scope: !2508)
!2511 = !DILocation(line: 4005, column: 98, scope: !2508)
!2512 = !DILocation(line: 4006, column: 46, scope: !2508)
!2513 = !DILocation(line: 4003, column: 48, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 4001, column: 81)
!2515 = !DILocation(line: 4003, column: 83, scope: !2514)
!2516 = !DILocation(line: 4003, column: 25, scope: !2514)
!2517 = !DILocation(line: 4004, column: 21, scope: !2514)
!2518 = !DILocation(line: 4006, column: 109, scope: !2508)
!2519 = !DILocation(line: 4005, column: 78, scope: !2508)
!2520 = !DILocation(line: 4006, column: 119, scope: !2508)
!2521 = !DILocation(line: 4006, column: 106, scope: !2508)
!2522 = !DILocation(line: 4005, column: 21, scope: !2508)
!2523 = !DILocation(line: 4008, column: 26, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 4008, column: 25)
!2525 = !DILocation(line: 4008, column: 25, scope: !2508)
!2526 = !DILocation(line: 4009, column: 29, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 4009, column: 29)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 4008, column: 58)
!2529 = !DILocation(line: 4009, column: 37, scope: !2527)
!2530 = !DILocation(line: 4009, column: 29, scope: !2528)
!2531 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !2532, file: !3, line: 3750, type: !454)
!2532 = distinct !DISubprogram(name: "sm_master_pair_reset", scope: !3, file: !3, line: 3750, type: !1124, isLocal: true, isDefinition: true, scopeLine: 3751, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2533)
!2533 = !{!2531}
!2534 = !DILocation(line: 3750, column: 51, scope: !2532, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 4010, column: 29, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 4009, column: 58)
!2537 = !DILocation(line: 3754, column: 18, scope: !2538, inlinedAt: !2535)
!2538 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 3754, column: 9)
!2539 = !DILocation(line: 3754, column: 33, scope: !2538, inlinedAt: !2535)
!2540 = !DILocation(line: 3754, column: 9, scope: !2532, inlinedAt: !2535)
!2541 = !DILocation(line: 3755, column: 9, scope: !2542, inlinedAt: !2535)
!2542 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 3754, column: 40)
!2543 = !DILocation(line: 3756, column: 33, scope: !2542, inlinedAt: !2535)
!2544 = !DILocation(line: 3757, column: 5, scope: !2542, inlinedAt: !2535)
!2545 = !DILocation(line: 3759, column: 14, scope: !2532, inlinedAt: !2535)
!2546 = !DILocation(line: 3759, column: 28, scope: !2532, inlinedAt: !2535)
!2547 = !DILocation(line: 3761, column: 38, scope: !2532, inlinedAt: !2535)
!2548 = !DILocation(line: 3762, column: 14, scope: !2532, inlinedAt: !2535)
!2549 = !DILocation(line: 3762, column: 42, scope: !2532, inlinedAt: !2535)
!2550 = !DILocation(line: 3763, column: 14, scope: !2532, inlinedAt: !2535)
!2551 = !DILocation(line: 3763, column: 48, scope: !2532, inlinedAt: !2535)
!2552 = !DILocation(line: 3765, column: 14, scope: !2532, inlinedAt: !2535)
!2553 = !DILocation(line: 3765, column: 34, scope: !2532, inlinedAt: !2535)
!2554 = !DILocation(line: 3766, column: 14, scope: !2532, inlinedAt: !2535)
!2555 = !DILocation(line: 3766, column: 30, scope: !2532, inlinedAt: !2535)
!2556 = !DILocation(line: 3767, column: 33, scope: !2532, inlinedAt: !2535)
!2557 = !DILocation(line: 3767, column: 5, scope: !2532, inlinedAt: !2535)
!2558 = !DILocation(line: 3768, column: 37, scope: !2532, inlinedAt: !2535)
!2559 = !DILocation(line: 3768, column: 5, scope: !2532, inlinedAt: !2535)
!2560 = !DILocation(line: 4011, column: 25, scope: !2536)
!2561 = !DILocation(line: 4012, column: 64, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 4011, column: 32)
!2563 = !DILocation(line: 4012, column: 55, scope: !2562)
!2564 = !DILocation(line: 4012, column: 29, scope: !2562)
!2565 = !DILocation(line: 4024, column: 30, scope: !2291)
!2566 = !DILocation(line: 4024, column: 13, scope: !2291)
!2567 = !DILocation(line: 4026, column: 42, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 4024, column: 47)
!2569 = !DILocation(line: 4027, column: 45, scope: !2568)
!2570 = !DILocation(line: 4027, column: 17, scope: !2568)
!2571 = !DILocation(line: 4028, column: 17, scope: !2568)
!2572 = !DILocation(line: 4030, column: 21, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 4030, column: 21)
!2574 = !DILocation(line: 4030, column: 21, scope: !2568)
!2575 = !DILocation(line: 4032, column: 25, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 4032, column: 25)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 4030, column: 53)
!2578 = !DILocation(line: 4032, column: 32, scope: !2576)
!2579 = !DILocation(line: 4032, column: 25, scope: !2577)
!2580 = !DILocation(line: 4037, column: 17, scope: !2577)
!2581 = !DILocation(line: 4039, column: 25, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 4039, column: 25)
!2583 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 4037, column: 24)
!2584 = !DILocation(line: 4039, column: 25, scope: !2583)
!2585 = !DILocation(line: 4041, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 4039, column: 68)
!2587 = !DILocation(line: 4043, column: 21, scope: !2586)
!2588 = !DILocation(line: 4054, column: 26, scope: !2291)
!2589 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 4055, column: 23, scope: !2291)
!2591 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !2590)
!2592 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !2590)
!2593 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !2590)
!2594 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !2590)
!2595 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !2590)
!2596 = !DILocation(line: 4056, column: 17, scope: !2291)
!2597 = !DILocation(line: 4063, column: 30, scope: !2291)
!2598 = !DILocation(line: 4063, column: 13, scope: !2291)
!2599 = !DILocation(line: 4065, column: 42, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 4063, column: 47)
!2601 = !DILocation(line: 4066, column: 45, scope: !2600)
!2602 = !DILocation(line: 4066, column: 17, scope: !2600)
!2603 = !DILocation(line: 4067, column: 17, scope: !2600)
!2604 = !DILocation(line: 4069, column: 21, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 4069, column: 21)
!2606 = !DILocation(line: 4069, column: 21, scope: !2600)
!2607 = !DILocation(line: 4076, column: 17, scope: !2600)
!2608 = !DILocation(line: 4084, column: 26, scope: !2291)
!2609 = !DILocation(line: 4085, column: 13, scope: !2291)
!2610 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 4086, column: 23, scope: !2291)
!2612 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !2611)
!2613 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !2611)
!2614 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !2611)
!2615 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !2611)
!2616 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !2611)
!2617 = !DILocation(line: 4087, column: 17, scope: !2291)
!2618 = !DILocation(line: 4091, column: 26, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 4091, column: 17)
!2620 = !DILocation(line: 4091, column: 17, scope: !2619)
!2621 = !DILocation(line: 4091, column: 17, scope: !2291)
!2622 = !DILocation(line: 4092, column: 31, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 4091, column: 41)
!2624 = !DILocation(line: 4092, column: 17, scope: !2623)
!2625 = !DILocation(line: 4093, column: 40, scope: !2623)
!2626 = !DILocation(line: 4094, column: 13, scope: !2623)
!2627 = !DILocation(line: 4097, column: 26, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 4097, column: 17)
!2629 = !DILocation(line: 4097, column: 34, scope: !2628)
!2630 = !DILocation(line: 4098, column: 17, scope: !2628)
!2631 = !DILocation(line: 4098, column: 29, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2628, file: !3, discriminator: 1)
!2633 = !DILocation(line: 4098, column: 45, scope: !2632)
!2634 = !DILocation(line: 4099, column: 17, scope: !2628)
!2635 = !DILocation(line: 4099, column: 20, scope: !2632)
!2636 = !DILocation(line: 4099, column: 30, scope: !2632)
!2637 = !DILocation(line: 4097, column: 17, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2291, file: !3, discriminator: 1)
!2639 = !DILocation(line: 4100, column: 46, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 4099, column: 68)
!2641 = !DILocation(line: 4100, column: 17, scope: !2640)
!2642 = !DILocation(line: 4101, column: 13, scope: !2640)
!2643 = !DILocation(line: 4101, column: 53, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !3, discriminator: 2)
!2645 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 4101, column: 24)
!2646 = !DILocation(line: 4101, column: 68, scope: !2644)
!2647 = !DILocation(line: 4101, column: 24, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2628, file: !3, discriminator: 2)
!2649 = !DILocation(line: 4103, column: 17, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 4101, column: 75)
!2651 = !DILocation(line: 4104, column: 13, scope: !2650)
!2652 = !DILocation(line: 4108, column: 22, scope: !2291)
!2653 = !DILocation(line: 4108, column: 38, scope: !2291)
!2654 = !DILocation(line: 4109, column: 22, scope: !2291)
!2655 = !DILocation(line: 4109, column: 32, scope: !2291)
!2656 = !DILocation(line: 4110, column: 13, scope: !2291)
!2657 = !DILocation(line: 4115, column: 17, scope: !2327)
!2658 = !DILocation(line: 4115, column: 17, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2327, file: !3, discriminator: 1)
!2660 = !DILocation(line: 4115, column: 17, scope: !2638)
!2661 = !DILocation(line: 4116, column: 46, scope: !2326)
!2662 = !DILocalVariable(name: "p2", scope: !2663, file: !3, line: 817, type: !490)
!2663 = distinct !DISubprogram(name: "sm_c1_t3", scope: !3, file: !3, line: 809, type: !2664, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !441, !441, !441, !441}
!2666 = !{!2667, !2668, !2669, !2670, !2662, !2671}
!2667 = !DILocalVariable(name: "t2", arg: 1, scope: !2663, file: !3, line: 809, type: !441)
!2668 = !DILocalVariable(name: "ia", arg: 2, scope: !2663, file: !3, line: 809, type: !441)
!2669 = !DILocalVariable(name: "ra", arg: 3, scope: !2663, file: !3, line: 809, type: !441)
!2670 = !DILocalVariable(name: "t3", arg: 4, scope: !2663, file: !3, line: 809, type: !441)
!2671 = !DILocalVariable(name: "i", scope: !2663, file: !3, line: 824, type: !370)
!2672 = !DILocation(line: 817, column: 14, scope: !2663, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 3385, column: 9, scope: !2317, inlinedAt: !2325)
!2674 = !DILocation(line: 3311, column: 50, scope: !2306, inlinedAt: !2325)
!2675 = !DILocation(line: 3314, column: 5, scope: !2306, inlinedAt: !2325)
!2676 = !DILocation(line: 3314, column: 13, scope: !2306, inlinedAt: !2325)
!2677 = !DILocation(line: 3314, column: 29, scope: !2306, inlinedAt: !2325)
!2678 = !DILocation(line: 3316, column: 17, scope: !2311, inlinedAt: !2325)
!2679 = !DILocation(line: 3316, column: 9, scope: !2311, inlinedAt: !2325)
!2680 = !DILocation(line: 3316, column: 9, scope: !2306, inlinedAt: !2325)
!2681 = !DILocation(line: 3317, column: 61, scope: !2310, inlinedAt: !2325)
!2682 = !DILocation(line: 3319, column: 9, scope: !2310, inlinedAt: !2325)
!2683 = !DILocation(line: 3320, column: 9, scope: !2310, inlinedAt: !2325)
!2684 = !DILocation(line: 3321, column: 21, scope: !2685, inlinedAt: !2325)
!2685 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 3321, column: 13)
!2686 = !DILocation(line: 3321, column: 13, scope: !2685, inlinedAt: !2325)
!2687 = !DILocation(line: 3321, column: 72, scope: !2685, inlinedAt: !2325)
!2688 = !DILocation(line: 3321, column: 13, scope: !2310, inlinedAt: !2325)
!2689 = !DILocation(line: 3323, column: 13, scope: !2690, inlinedAt: !2325)
!2690 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 3321, column: 78)
!2691 = !DILocation(line: 3324, column: 13, scope: !2690, inlinedAt: !2325)
!2692 = !DILocation(line: 3327, column: 17, scope: !2310, inlinedAt: !2325)
!2693 = !DILocation(line: 3327, column: 43, scope: !2310, inlinedAt: !2325)
!2694 = !DILocation(line: 3328, column: 9, scope: !2310, inlinedAt: !2325)
!2695 = !DILocation(line: 3329, column: 5, scope: !2311, inlinedAt: !2325)
!2696 = !DILocation(line: 3331, column: 21, scope: !2306, inlinedAt: !2325)
!2697 = !DILocation(line: 3331, column: 5, scope: !2306, inlinedAt: !2325)
!2698 = !DILocation(line: 3333, column: 27, scope: !2305, inlinedAt: !2325)
!2699 = !DILocation(line: 3333, column: 9, scope: !2305, inlinedAt: !2325)
!2700 = !DILocation(line: 3335, column: 9, scope: !2305, inlinedAt: !2325)
!2701 = !DILocation(line: 3335, column: 17, scope: !2305, inlinedAt: !2325)
!2702 = !DILocation(line: 3335, column: 41, scope: !2305, inlinedAt: !2325)
!2703 = !DILocation(line: 3336, column: 13, scope: !2304, inlinedAt: !2325)
!2704 = !DILocation(line: 3336, column: 13, scope: !2305, inlinedAt: !2325)
!2705 = !DILocation(line: 3299, column: 5, scope: !2297, inlinedAt: !2302)
!2706 = !DILocation(line: 3300, column: 5, scope: !2297, inlinedAt: !2302)
!2707 = !DILocation(line: 3301, column: 17, scope: !2297, inlinedAt: !2302)
!2708 = !DILocation(line: 3301, column: 5, scope: !2297, inlinedAt: !2302)
!2709 = !DILocation(line: 3302, column: 5, scope: !2297, inlinedAt: !2302)
!2710 = !DILocation(line: 3303, column: 5, scope: !2297, inlinedAt: !2302)
!2711 = !DILocation(line: 3304, column: 5, scope: !2297, inlinedAt: !2302)
!2712 = !DILocation(line: 3306, column: 5, scope: !2297, inlinedAt: !2302)
!2713 = !DILocation(line: 3307, column: 5, scope: !2297, inlinedAt: !2302)
!2714 = !DILocation(line: 3308, column: 1, scope: !2297, inlinedAt: !2302)
!2715 = !DILocation(line: 3338, column: 9, scope: !2303, inlinedAt: !2325)
!2716 = !DILocation(line: 1152, column: 58, scope: !784, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 3339, column: 9, scope: !2305, inlinedAt: !2325)
!2718 = !DILocation(line: 1152, column: 66, scope: !784, inlinedAt: !2717)
!2719 = !DILocation(line: 1152, column: 77, scope: !784, inlinedAt: !2717)
!2720 = !DILocation(line: 1152, column: 23, scope: !784, inlinedAt: !2717)
!2721 = !DILocation(line: 3340, column: 9, scope: !2305, inlinedAt: !2325)
!2722 = !DILocation(line: 3342, column: 27, scope: !2305, inlinedAt: !2325)
!2723 = !DILocation(line: 3342, column: 9, scope: !2305, inlinedAt: !2325)
!2724 = !DILocation(line: 1152, column: 58, scope: !784, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 3344, column: 9, scope: !2305, inlinedAt: !2325)
!2726 = !DILocation(line: 1152, column: 66, scope: !784, inlinedAt: !2725)
!2727 = !DILocation(line: 1152, column: 77, scope: !784, inlinedAt: !2725)
!2728 = !DILocation(line: 1152, column: 23, scope: !784, inlinedAt: !2725)
!2729 = !DILocation(line: 3346, column: 9, scope: !2305, inlinedAt: !2325)
!2730 = !DILocation(line: 3351, column: 21, scope: !2306, inlinedAt: !2325)
!2731 = !DILocation(line: 3351, column: 5, scope: !2306, inlinedAt: !2325)
!2732 = !DILocation(line: 3353, column: 27, scope: !2733, inlinedAt: !2325)
!2733 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 3351, column: 32)
!2734 = !DILocation(line: 3353, column: 9, scope: !2733, inlinedAt: !2325)
!2735 = !DILocation(line: 1156, column: 57, scope: !811, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 3354, column: 9, scope: !2733, inlinedAt: !2325)
!2737 = !DILocation(line: 1156, column: 65, scope: !811, inlinedAt: !2736)
!2738 = !DILocation(line: 1156, column: 76, scope: !811, inlinedAt: !2736)
!2739 = !DILocation(line: 1156, column: 23, scope: !811, inlinedAt: !2736)
!2740 = !DILocation(line: 3355, column: 9, scope: !2733, inlinedAt: !2325)
!2741 = !DILocation(line: 3376, column: 63, scope: !2306, inlinedAt: !2325)
!2742 = !{!770, !717, i64 436}
!2743 = !DILocation(line: 3376, column: 22, scope: !2306, inlinedAt: !2325)
!2744 = !DILocation(line: 3377, column: 10, scope: !2745, inlinedAt: !2325)
!2745 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 3377, column: 9)
!2746 = !DILocation(line: 3377, column: 9, scope: !2306, inlinedAt: !2325)
!2747 = !DILocation(line: 3380, column: 25, scope: !2306, inlinedAt: !2325)
!2748 = !DILocation(line: 3380, column: 5, scope: !2306, inlinedAt: !2325)
!2749 = !DILocation(line: 3383, column: 9, scope: !2317, inlinedAt: !2325)
!2750 = !DILocation(line: 3384, column: 9, scope: !2317, inlinedAt: !2325)
!2751 = !DILocation(line: 3385, column: 22, scope: !2317, inlinedAt: !2325)
!2752 = !DILocation(line: 3385, column: 43, scope: !2317, inlinedAt: !2325)
!2753 = !DILocation(line: 809, column: 31, scope: !2663, inlinedAt: !2673)
!2754 = !DILocation(line: 809, column: 45, scope: !2663, inlinedAt: !2673)
!2755 = !DILocation(line: 809, column: 59, scope: !2663, inlinedAt: !2673)
!2756 = !DILocation(line: 817, column: 5, scope: !2663, inlinedAt: !2673)
!2757 = !DILocation(line: 818, column: 5, scope: !2663, inlinedAt: !2673)
!2758 = !DILocation(line: 819, column: 13, scope: !2663, inlinedAt: !2673)
!2759 = !DILocation(line: 819, column: 5, scope: !2663, inlinedAt: !2673)
!2760 = !DILocation(line: 820, column: 13, scope: !2663, inlinedAt: !2673)
!2761 = !DILocation(line: 820, column: 5, scope: !2663, inlinedAt: !2673)
!2762 = !DILocation(line: 824, column: 9, scope: !2663, inlinedAt: !2673)
!2763 = !DILocation(line: 826, column: 17, scope: !2764, inlinedAt: !2673)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 825, column: 30)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 825, column: 5)
!2766 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 825, column: 5)
!2767 = !DILocation(line: 826, column: 9, scope: !2764, inlinedAt: !2673)
!2768 = !DILocation(line: 826, column: 15, scope: !2764, inlinedAt: !2673)
!2769 = !DILocation(line: 825, column: 5, scope: !2770, inlinedAt: !2673)
!2770 = !DILexicalBlockFile(scope: !2766, file: !3, discriminator: 1)
!2771 = !DILocation(line: 826, column: 23, scope: !2764, inlinedAt: !2673)
!2772 = !DILocation(line: 825, column: 26, scope: !2773, inlinedAt: !2673)
!2773 = !DILexicalBlockFile(scope: !2765, file: !3, discriminator: 2)
!2774 = !DILocation(line: 825, column: 19, scope: !2775, inlinedAt: !2673)
!2775 = !DILexicalBlockFile(scope: !2765, file: !3, discriminator: 1)
!2776 = distinct !{!2776, !2777, !2778}
!2777 = !DILocation(line: 825, column: 5, scope: !2766)
!2778 = !DILocation(line: 827, column: 5, scope: !2766)
!2779 = !DILocation(line: 829, column: 1, scope: !2663, inlinedAt: !2673)
!2780 = !DILocation(line: 3386, column: 5, scope: !2318, inlinedAt: !2325)
!2781 = !DILocation(line: 1146, column: 62, scope: !1419, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 3387, column: 5, scope: !2318, inlinedAt: !2325)
!2783 = !DILocation(line: 1148, column: 74, scope: !1419, inlinedAt: !2782)
!2784 = !DILocation(line: 1148, column: 91, scope: !1419, inlinedAt: !2782)
!2785 = !DILocation(line: 1148, column: 30, scope: !1419, inlinedAt: !2782)
!2786 = !DILocation(line: 3388, column: 5, scope: !2318, inlinedAt: !2325)
!2787 = !DILocation(line: 3390, column: 27, scope: !2318, inlinedAt: !2325)
!2788 = !DILocation(line: 3390, column: 9, scope: !2318, inlinedAt: !2325)
!2789 = !DILocation(line: 3392, column: 37, scope: !2318, inlinedAt: !2325)
!2790 = !DILocation(line: 3393, column: 9, scope: !2318, inlinedAt: !2325)
!2791 = !DILocation(line: 3395, column: 9, scope: !2320, inlinedAt: !2325)
!2792 = !DILocation(line: 3396, column: 9, scope: !2320, inlinedAt: !2325)
!2793 = !DILocation(line: 3398, column: 20, scope: !2794, inlinedAt: !2325)
!2794 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 3398, column: 13)
!2795 = !DILocation(line: 3398, column: 13, scope: !2794, inlinedAt: !2325)
!2796 = !DILocation(line: 3398, column: 67, scope: !2794, inlinedAt: !2325)
!2797 = !DILocation(line: 3398, column: 13, scope: !2320, inlinedAt: !2325)
!2798 = !DILocation(line: 3399, column: 20, scope: !2799, inlinedAt: !2325)
!2799 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 3398, column: 73)
!2800 = !DILocation(line: 3399, column: 45, scope: !2799, inlinedAt: !2325)
!2801 = !DILocation(line: 3400, column: 41, scope: !2799, inlinedAt: !2325)
!2802 = !DILocation(line: 3408, column: 5, scope: !2318, inlinedAt: !2325)
!2803 = !DILocation(line: 3403, column: 13, scope: !2804, inlinedAt: !2325)
!2804 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 3403, column: 13)
!2805 = !DILocation(line: 3403, column: 13, scope: !2320, inlinedAt: !2325)
!2806 = !DILocation(line: 3409, column: 5, scope: !2318, inlinedAt: !2325)
!2807 = !DILocation(line: 3411, column: 27, scope: !2318, inlinedAt: !2325)
!2808 = !DILocation(line: 3411, column: 9, scope: !2318, inlinedAt: !2325)
!2809 = !DILocation(line: 3412, column: 52, scope: !2318, inlinedAt: !2325)
!2810 = !DILocation(line: 613, column: 38, scope: !2811, inlinedAt: !2821)
!2811 = !DILexicalBlockFile(scope: !2812, file: !3, discriminator: 1)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 613, column: 5)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 613, column: 5)
!2814 = distinct !DISubprogram(name: "sm_truncate_key", scope: !3, file: !3, line: 610, type: !2815, isLocal: true, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !441, !370}
!2817 = !{!2818, !2819, !2820}
!2818 = !DILocalVariable(name: "key", arg: 1, scope: !2814, file: !3, line: 610, type: !441)
!2819 = !DILocalVariable(name: "max_encryption_size", arg: 2, scope: !2814, file: !3, line: 610, type: !370)
!2820 = !DILocalVariable(name: "i", scope: !2814, file: !3, line: 612, type: !370)
!2821 = distinct !DILocation(line: 3412, column: 9, scope: !2318, inlinedAt: !2325)
!2822 = !DILocation(line: 613, column: 5, scope: !2823, inlinedAt: !2821)
!2823 = !DILexicalBlockFile(scope: !2813, file: !3, discriminator: 1)
!2824 = !DILocation(line: 3412, column: 40, scope: !2318, inlinedAt: !2325)
!2825 = !DILocation(line: 3412, column: 25, scope: !2318, inlinedAt: !2325)
!2826 = !DILocation(line: 614, column: 16, scope: !2827, inlinedAt: !2821)
!2827 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 613, column: 50)
!2828 = !DILocation(line: 614, column: 21, scope: !2827, inlinedAt: !2821)
!2829 = !DILocation(line: 616, column: 1, scope: !2814, inlinedAt: !2821)
!2830 = !DILocation(line: 3414, column: 13, scope: !2831, inlinedAt: !2325)
!2831 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 3414, column: 13)
!2832 = !DILocation(line: 3414, column: 13, scope: !2318, inlinedAt: !2325)
!2833 = !DILocation(line: 3419, column: 9, scope: !2318, inlinedAt: !2325)
!2834 = !DILocation(line: 3421, column: 9, scope: !2322, inlinedAt: !2325)
!2835 = !DILocation(line: 3422, column: 9, scope: !2322, inlinedAt: !2325)
!2836 = !DILocation(line: 3423, column: 29, scope: !2322, inlinedAt: !2325)
!2837 = !DILocation(line: 3423, column: 9, scope: !2322, inlinedAt: !2325)
!2838 = !DILocation(line: 3423, column: 16, scope: !2322, inlinedAt: !2325)
!2839 = !DILocation(line: 3423, column: 27, scope: !2322, inlinedAt: !2325)
!2840 = !{!771, !773, i64 174}
!2841 = !DILocation(line: 3426, column: 59, scope: !2322, inlinedAt: !2325)
!2842 = !DILocation(line: 3426, column: 52, scope: !2322, inlinedAt: !2325)
!2843 = !DILocation(line: 3426, column: 50, scope: !2322, inlinedAt: !2325)
!2844 = !DILocation(line: 3426, column: 32, scope: !2322, inlinedAt: !2325)
!2845 = !DILocation(line: 3426, column: 16, scope: !2322, inlinedAt: !2325)
!2846 = !DILocation(line: 3426, column: 30, scope: !2322, inlinedAt: !2325)
!2847 = !DILocation(line: 3430, column: 37, scope: !2322, inlinedAt: !2325)
!2848 = !DILocation(line: 3432, column: 5, scope: !2318, inlinedAt: !2325)
!2849 = !DILocation(line: 3434, column: 9, scope: !2324, inlinedAt: !2325)
!2850 = !DILocation(line: 3435, column: 9, scope: !2324, inlinedAt: !2325)
!2851 = !DILocation(line: 3436, column: 29, scope: !2324, inlinedAt: !2325)
!2852 = !DILocation(line: 3436, column: 9, scope: !2324, inlinedAt: !2325)
!2853 = !DILocation(line: 3436, column: 16, scope: !2324, inlinedAt: !2325)
!2854 = !DILocation(line: 3436, column: 27, scope: !2324, inlinedAt: !2325)
!2855 = !DILocation(line: 3440, column: 58, scope: !2324, inlinedAt: !2325)
!2856 = !DILocation(line: 3440, column: 51, scope: !2324, inlinedAt: !2325)
!2857 = !DILocation(line: 3440, column: 49, scope: !2324, inlinedAt: !2325)
!2858 = !DILocation(line: 3440, column: 31, scope: !2324, inlinedAt: !2325)
!2859 = !DILocation(line: 3440, column: 16, scope: !2324, inlinedAt: !2325)
!2860 = !DILocation(line: 3440, column: 29, scope: !2324, inlinedAt: !2325)
!2861 = !DILocation(line: 3444, column: 37, scope: !2324, inlinedAt: !2325)
!2862 = !DILocation(line: 3446, column: 5, scope: !2318, inlinedAt: !2325)
!2863 = !DILocation(line: 3448, column: 27, scope: !2318, inlinedAt: !2325)
!2864 = !DILocation(line: 3448, column: 9, scope: !2318, inlinedAt: !2325)
!2865 = !DILocation(line: 3451, column: 37, scope: !2318, inlinedAt: !2325)
!2866 = !DILocation(line: 3452, column: 9, scope: !2318, inlinedAt: !2325)
!2867 = !DILocation(line: 3454, column: 27, scope: !2318, inlinedAt: !2325)
!2868 = !DILocation(line: 3454, column: 9, scope: !2318, inlinedAt: !2325)
!2869 = !DILocation(line: 3456, column: 13, scope: !2870, inlinedAt: !2325)
!2870 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 3456, column: 13)
!2871 = !DILocation(line: 3456, column: 20, scope: !2870, inlinedAt: !2325)
!2872 = !DILocation(line: 3456, column: 13, scope: !2318, inlinedAt: !2325)
!2873 = !DILocation(line: 3457, column: 41, scope: !2874, inlinedAt: !2325)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 3456, column: 50)
!2875 = !DILocation(line: 3458, column: 9, scope: !2874, inlinedAt: !2325)
!2876 = !DILocation(line: 3460, column: 17, scope: !2877, inlinedAt: !2325)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 3460, column: 17)
!2878 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 3458, column: 16)
!2879 = !DILocation(line: 3460, column: 17, scope: !2878, inlinedAt: !2325)
!2880 = !DILocation(line: 3462, column: 45, scope: !2881, inlinedAt: !2325)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 3460, column: 52)
!2882 = !DILocation(line: 3463, column: 13, scope: !2881, inlinedAt: !2325)
!2883 = !DILocation(line: 3464, column: 28, scope: !2884, inlinedAt: !2325)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 3464, column: 21)
!2885 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 3463, column: 20)
!2886 = !DILocation(line: 3464, column: 21, scope: !2884, inlinedAt: !2325)
!2887 = !DILocation(line: 3464, column: 54, scope: !2884, inlinedAt: !2325)
!2888 = !DILocation(line: 3464, column: 65, scope: !2889, inlinedAt: !2325)
!2889 = !DILexicalBlockFile(scope: !2884, file: !3, discriminator: 1)
!2890 = !DILocation(line: 3464, column: 98, scope: !2889, inlinedAt: !2325)
!2891 = !DILocation(line: 3464, column: 21, scope: !2892, inlinedAt: !2325)
!2892 = !DILexicalBlockFile(scope: !2885, file: !3, discriminator: 1)
!2893 = !DILocation(line: 3465, column: 49, scope: !2894, inlinedAt: !2325)
!2894 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 3464, column: 147)
!2895 = !DILocation(line: 3466, column: 17, scope: !2894, inlinedAt: !2325)
!2896 = !DILocation(line: 3468, column: 49, scope: !2897, inlinedAt: !2325)
!2897 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 3466, column: 24)
!2898 = !DILocation(line: 3469, column: 52, scope: !2897, inlinedAt: !2325)
!2899 = !DILocation(line: 3469, column: 21, scope: !2897, inlinedAt: !2325)
!2900 = !DILocation(line: 3476, column: 27, scope: !2318, inlinedAt: !2325)
!2901 = !DILocation(line: 3476, column: 9, scope: !2318, inlinedAt: !2325)
!2902 = !DILocation(line: 3477, column: 52, scope: !2318, inlinedAt: !2325)
!2903 = !DILocation(line: 613, column: 38, scope: !2811, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 3477, column: 9, scope: !2318, inlinedAt: !2325)
!2905 = !DILocation(line: 613, column: 5, scope: !2823, inlinedAt: !2904)
!2906 = !DILocation(line: 3477, column: 40, scope: !2318, inlinedAt: !2325)
!2907 = !DILocation(line: 3477, column: 25, scope: !2318, inlinedAt: !2325)
!2908 = !DILocation(line: 614, column: 16, scope: !2827, inlinedAt: !2904)
!2909 = !DILocation(line: 614, column: 21, scope: !2827, inlinedAt: !2904)
!2910 = !DILocation(line: 616, column: 1, scope: !2814, inlinedAt: !2904)
!2911 = !DILocation(line: 3479, column: 37, scope: !2318, inlinedAt: !2325)
!2912 = !DILocation(line: 3480, column: 9, scope: !2318, inlinedAt: !2325)
!2913 = !DILocation(line: 4121, column: 17, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 4121, column: 17)
!2915 = !DILocation(line: 4121, column: 17, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2914, file: !3, discriminator: 1)
!2917 = !DILocation(line: 4121, column: 17, scope: !2638)
!2918 = !DILocation(line: 4122, column: 42, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 4121, column: 84)
!2920 = !DILocalVariable(name: "data", arg: 1, scope: !2921, file: !3, line: 3517, type: !441)
!2921 = distinct !DISubprogram(name: "sm_handle_random_result", scope: !3, file: !3, line: 3517, type: !2002, isLocal: true, isDefinition: true, scopeLine: 3518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2922)
!2922 = !{!2920, !2923, !2924}
!2923 = !DILocalVariable(name: "connection", scope: !2921, file: !3, line: 3603, type: !454)
!2924 = !DILocalVariable(name: "tk", scope: !2925, file: !3, line: 3627, type: !390)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 3625, column: 31)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 3607, column: 42)
!2927 = !DILocation(line: 3517, column: 46, scope: !2921, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 4122, column: 17, scope: !2919)
!2929 = !DILocation(line: 3577, column: 13, scope: !2921, inlinedAt: !2928)
!2930 = !DILocation(line: 3577, column: 21, scope: !2921, inlinedAt: !2928)
!2931 = !DILocation(line: 3577, column: 5, scope: !2921, inlinedAt: !2928)
!2932 = !DILocation(line: 3580, column: 17, scope: !2933, inlinedAt: !2928)
!2933 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 3577, column: 32)
!2934 = !DILocation(line: 3580, column: 9, scope: !2933, inlinedAt: !2928)
!2935 = !DILocation(line: 3584, column: 13, scope: !2936, inlinedAt: !2928)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 3580, column: 41)
!2937 = !DILocation(line: 3585, column: 42, scope: !2936, inlinedAt: !2928)
!2938 = !DILocation(line: 3586, column: 42, scope: !2936, inlinedAt: !2928)
!2939 = !DILocation(line: 3588, column: 13, scope: !2936, inlinedAt: !2928)
!2940 = !DILocation(line: 3592, column: 13, scope: !2936, inlinedAt: !2928)
!2941 = !DILocation(line: 3593, column: 42, scope: !2936, inlinedAt: !2928)
!2942 = !DILocation(line: 3595, column: 13, scope: !2936, inlinedAt: !2928)
!2943 = !DILocation(line: 3597, column: 9, scope: !2933, inlinedAt: !2928)
!2944 = !DILocation(line: 3603, column: 63, scope: !2921, inlinedAt: !2928)
!2945 = !DILocation(line: 3603, column: 22, scope: !2921, inlinedAt: !2928)
!2946 = !DILocation(line: 3604, column: 10, scope: !2947, inlinedAt: !2928)
!2947 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 3604, column: 9)
!2948 = !DILocation(line: 3604, column: 9, scope: !2921, inlinedAt: !2928)
!2949 = !DILocation(line: 3607, column: 25, scope: !2921, inlinedAt: !2928)
!2950 = !DILocation(line: 3607, column: 5, scope: !2921, inlinedAt: !2928)
!2951 = !DILocation(line: 602, column: 9, scope: !1083, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 3626, column: 9, scope: !2925, inlinedAt: !2928)
!2953 = !DILocation(line: 603, column: 5, scope: !1088, inlinedAt: !2952)
!2954 = !DILocation(line: 604, column: 25, scope: !1091, inlinedAt: !2952)
!2955 = !DILocation(line: 3627, column: 9, scope: !2925, inlinedAt: !2928)
!2956 = !DILocation(line: 3628, column: 21, scope: !2957, inlinedAt: !2928)
!2957 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 3628, column: 13)
!2958 = !DILocation(line: 3628, column: 69, scope: !2957, inlinedAt: !2928)
!2959 = !DILocation(line: 3628, column: 13, scope: !2925, inlinedAt: !2928)
!2960 = !DILocation(line: 3630, column: 18, scope: !2961, inlinedAt: !2928)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 3628, column: 84)
!2962 = !DILocation(line: 3631, column: 21, scope: !2961, inlinedAt: !2928)
!2963 = !DILocation(line: 3627, column: 18, scope: !2925, inlinedAt: !2928)
!2964 = !DILocation(line: 3632, column: 20, scope: !2965, inlinedAt: !2928)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 3632, column: 17)
!2966 = !DILocation(line: 3633, column: 25, scope: !2967, inlinedAt: !2928)
!2967 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 3632, column: 31)
!2968 = !DILocation(line: 3632, column: 17, scope: !2961, inlinedAt: !2928)
!2969 = !DILocation(line: 3631, column: 16, scope: !2961, inlinedAt: !2928)
!2970 = !DILocation(line: 3635, column: 17, scope: !2971, inlinedAt: !2928)
!2971 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 3635, column: 17)
!2972 = !DILocation(line: 3635, column: 25, scope: !2971, inlinedAt: !2928)
!2973 = !{!770, !717, i64 472}
!2974 = !DILocation(line: 3635, column: 17, scope: !2961, inlinedAt: !2928)
!2975 = !DILocation(line: 3636, column: 60, scope: !2976, inlinedAt: !2928)
!2976 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 3635, column: 44)
!2977 = !DILocation(line: 3636, column: 17, scope: !2976, inlinedAt: !2928)
!2978 = !DILocation(line: 3637, column: 13, scope: !2976, inlinedAt: !2928)
!2979 = !DILocation(line: 3640, column: 16, scope: !2980, inlinedAt: !2928)
!2980 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 3638, column: 16)
!2981 = !DILocation(line: 3642, column: 47, scope: !2925, inlinedAt: !2928)
!2982 = !DILocation(line: 3642, column: 29, scope: !2925, inlinedAt: !2928)
!2983 = !DILocation(line: 3642, column: 9, scope: !2925, inlinedAt: !2928)
!2984 = !DILocation(line: 3643, column: 13, scope: !2985, inlinedAt: !2928)
!2985 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 3643, column: 13)
!2986 = !DILocation(line: 3643, column: 13, scope: !2925, inlinedAt: !2928)
!2987 = !DILocation(line: 3646, column: 17, scope: !2988, inlinedAt: !2928)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 3646, column: 17)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 3645, column: 16)
!2990 = !DILocation(line: 3646, column: 24, scope: !2988, inlinedAt: !2928)
!2991 = !DILocation(line: 3646, column: 17, scope: !2989, inlinedAt: !2928)
!2992 = !DILocation(line: 3649, column: 45, scope: !2993, inlinedAt: !2928)
!2993 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 3648, column: 20)
!2994 = !DILocation(line: 3650, column: 17, scope: !2993, inlinedAt: !2928)
!2995 = !DILocation(line: 3652, column: 21, scope: !2996, inlinedAt: !2928)
!2996 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 3652, column: 21)
!2997 = !DILocation(line: 3652, column: 28, scope: !2996, inlinedAt: !2928)
!2998 = !{!771, !718, i64 21}
!2999 = !DILocation(line: 3652, column: 45, scope: !2996, inlinedAt: !2928)
!3000 = !DILocation(line: 3652, column: 21, scope: !2993, inlinedAt: !2928)
!3001 = !DILocation(line: 3658, column: 5, scope: !2926, inlinedAt: !2928)
!3002 = !DILocation(line: 3660, column: 17, scope: !2926, inlinedAt: !2928)
!3003 = !DILocation(line: 3660, column: 9, scope: !2926, inlinedAt: !2928)
!3004 = !DILocation(line: 3661, column: 37, scope: !2926, inlinedAt: !2928)
!3005 = !DILocation(line: 3662, column: 9, scope: !2926, inlinedAt: !2928)
!3006 = !DILocation(line: 3664, column: 17, scope: !2926, inlinedAt: !2928)
!3007 = !DILocation(line: 3664, column: 9, scope: !2926, inlinedAt: !2928)
!3008 = !DILocation(line: 3665, column: 37, scope: !2926, inlinedAt: !2928)
!3009 = !DILocation(line: 3666, column: 9, scope: !2926, inlinedAt: !2928)
!3010 = !DILocation(line: 3668, column: 26, scope: !2926, inlinedAt: !2928)
!3011 = !DILocation(line: 3668, column: 9, scope: !2926, inlinedAt: !2928)
!3012 = !DILocation(line: 3670, column: 36, scope: !2926, inlinedAt: !2928)
!3013 = !DILocation(line: 3670, column: 60, scope: !2926, inlinedAt: !2928)
!3014 = !DILocation(line: 3670, column: 83, scope: !2926, inlinedAt: !2928)
!3015 = !DILocation(line: 3670, column: 113, scope: !2926, inlinedAt: !2928)
!3016 = !DILocation(line: 3670, column: 68, scope: !2926, inlinedAt: !2928)
!3017 = !DILocation(line: 3670, column: 33, scope: !2926, inlinedAt: !2928)
!3018 = !DILocation(line: 3672, column: 60, scope: !2926, inlinedAt: !2928)
!3019 = !DILocation(line: 3672, column: 83, scope: !2926, inlinedAt: !2928)
!3020 = !DILocation(line: 3672, column: 111, scope: !2926, inlinedAt: !2928)
!3021 = !DILocation(line: 3672, column: 68, scope: !2926, inlinedAt: !2928)
!3022 = !DILocation(line: 3672, column: 33, scope: !2926, inlinedAt: !2928)
!3023 = !DILocation(line: 3673, column: 37, scope: !2926, inlinedAt: !2928)
!3024 = !DILocation(line: 3674, column: 9, scope: !2926, inlinedAt: !2928)
!3025 = !DILocation(line: 3677, column: 31, scope: !2926, inlinedAt: !2928)
!3026 = !DILocation(line: 3677, column: 9, scope: !2926, inlinedAt: !2928)
!3027 = !DILocation(line: 3677, column: 16, scope: !2926, inlinedAt: !2928)
!3028 = !DILocation(line: 3677, column: 29, scope: !2926, inlinedAt: !2928)
!3029 = !DILocation(line: 3679, column: 37, scope: !2926, inlinedAt: !2928)
!3030 = !DILocation(line: 3680, column: 9, scope: !2926, inlinedAt: !2928)
!3031 = !DILocation(line: 4148, column: 5, scope: !2279)
!3032 = !DILocation(line: 4149, column: 1, scope: !2279)
!3033 = !DILocation(line: 4149, column: 1, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !2279, file: !3, discriminator: 2)
!3035 = distinct !DISubprogram(name: "sm_pdu_handler", scope: !3, file: !3, line: 4229, type: !3036, isLocal: true, isDefinition: true, scopeLine: 4230, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !311, !327, !441, !328}
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3051, !3055, !3064}
!3039 = !DILocalVariable(name: "packet_type", arg: 1, scope: !3035, file: !3, line: 4229, type: !311)
!3040 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3035, file: !3, line: 4229, type: !327)
!3041 = !DILocalVariable(name: "packet", arg: 3, scope: !3035, file: !3, line: 4229, type: !441)
!3042 = !DILocalVariable(name: "size", arg: 4, scope: !3035, file: !3, line: 4229, type: !328)
!3043 = !DILocalVariable(name: "sm_pdu_code", scope: !3035, file: !3, line: 4243, type: !311)
!3044 = !DILocalVariable(name: "sm_conn", scope: !3035, file: !3, line: 4256, type: !454)
!3045 = !DILocalVariable(name: "err", scope: !3035, file: !3, line: 4272, type: !370)
!3046 = !DILocalVariable(name: "buffer", scope: !3047, file: !3, line: 4276, type: !3049)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 4275, column: 55)
!3048 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 4275, column: 9)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 40, elements: !3050)
!3050 = !{!692}
!3051 = !DILocalVariable(name: "ltk", scope: !3052, file: !3, line: 4310, type: !490)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 4309, column: 67)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4309, column: 13)
!3054 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 4285, column: 39)
!3055 = !DILocalVariable(name: "ext_data", scope: !3056, file: !3, line: 4673, type: !683)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 4672, column: 81)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 4672, column: 25)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 4670, column: 24)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 4668, column: 21)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 4667, column: 49)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 4667, column: 17)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 4663, column: 56)
!3063 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4663, column: 13)
!3064 = !DILocalVariable(name: "ret_msg", scope: !3056, file: !3, line: 4674, type: !370)
!3065 = !DILocation(line: 4229, column: 36, scope: !3035)
!3066 = !DILocation(line: 4229, column: 66, scope: !3035)
!3067 = !DILocation(line: 4229, column: 87, scope: !3035)
!3068 = !DILocation(line: 4229, column: 104, scope: !3035)
!3069 = !DILocation(line: 4232, column: 41, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 4232, column: 9)
!3071 = !DILocation(line: 4232, column: 44, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3070, file: !3, discriminator: 1)
!3073 = !DILocation(line: 4232, column: 54, scope: !3072)
!3074 = !DILocation(line: 4232, column: 9, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3035, file: !3, discriminator: 1)
!3076 = !DILocation(line: 4233, column: 9, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 4232, column: 83)
!3078 = !DILocation(line: 4234, column: 5, scope: !3077)
!3079 = !DILocation(line: 4239, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 4239, column: 9)
!3081 = !DILocation(line: 4239, column: 14, scope: !3080)
!3082 = !DILocation(line: 4239, column: 9, scope: !3035)
!3083 = !DILocation(line: 4243, column: 27, scope: !3035)
!3084 = !DILocation(line: 4243, column: 13, scope: !3035)
!3085 = !DILocation(line: 4249, column: 21, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 4249, column: 9)
!3087 = !DILocation(line: 4249, column: 9, scope: !3035)
!3088 = !DILocation(line: 4249, column: 9, scope: !3086)
!3089 = !DILocation(line: 4252, column: 9, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 4252, column: 9)
!3091 = !DILocation(line: 4252, column: 34, scope: !3090)
!3092 = !DILocation(line: 4252, column: 9, scope: !3035)
!3093 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 4256, column: 32, scope: !3035)
!3095 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3094)
!3096 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3094)
!3097 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3094)
!3098 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !3094)
!3099 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !3094)
!3100 = !DILocation(line: 4256, column: 22, scope: !3035)
!3101 = !DILocation(line: 4257, column: 9, scope: !3035)
!3102 = !DILocation(line: 4261, column: 9, scope: !3035)
!3103 = !DILocation(line: 4262, column: 45, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 4261, column: 48)
!3105 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 4261, column: 9)
!3106 = !DILocation(line: 4262, column: 36, scope: !3104)
!3107 = !DILocation(line: 4262, column: 18, scope: !3104)
!3108 = !DILocation(line: 4262, column: 34, scope: !3104)
!3109 = !DILocation(line: 4263, column: 44, scope: !3104)
!3110 = !DILocation(line: 4263, column: 35, scope: !3104)
!3111 = !DILocation(line: 4263, column: 9, scope: !3104)
!3112 = !DILocation(line: 4265, column: 66, scope: !3104)
!3113 = !DILocation(line: 4265, column: 86, scope: !3104)
!3114 = !DILocation(line: 4265, column: 105, scope: !3104)
!3115 = !DILocation(line: 4266, column: 65, scope: !3104)
!3116 = !DILocation(line: 4266, column: 75, scope: !3104)
!3117 = !DILocation(line: 4266, column: 81, scope: !3104)
!3118 = !DILocation(line: 4265, column: 9, scope: !3104)
!3119 = !DILocation(line: 4267, column: 9, scope: !3104)
!3120 = !DILocation(line: 4276, column: 9, scope: !3047)
!3121 = !DILocation(line: 4276, column: 17, scope: !3047)
!3122 = !DILocation(line: 4277, column: 19, scope: !3047)
!3123 = !DILocation(line: 4278, column: 9, scope: !3047)
!3124 = !DILocation(line: 4278, column: 19, scope: !3047)
!3125 = !DILocation(line: 4279, column: 9, scope: !3047)
!3126 = !DILocation(line: 4280, column: 21, scope: !3047)
!3127 = !DILocation(line: 4280, column: 9, scope: !3047)
!3128 = !DILocation(line: 4280, column: 19, scope: !3047)
!3129 = !DILocation(line: 4281, column: 9, scope: !3047)
!3130 = !DILocation(line: 4283, column: 5, scope: !3048)
!3131 = !DILocation(line: 4285, column: 22, scope: !3035)
!3132 = !DILocation(line: 4285, column: 5, scope: !3035)
!3133 = !DILocation(line: 4295, column: 26, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4295, column: 13)
!3135 = !DILocation(line: 4295, column: 55, scope: !3134)
!3136 = !DILocation(line: 4295, column: 68, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3134, file: !3, discriminator: 1)
!3138 = !DILocation(line: 4295, column: 58, scope: !3137)
!3139 = !DILocation(line: 4295, column: 13, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3054, file: !3, discriminator: 1)
!3141 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !3142, file: !3, line: 1714, type: !454)
!3142 = distinct !DISubprogram(name: "sm_pdu_received_in_wrong_state", scope: !3, file: !3, line: 1714, type: !1124, isLocal: true, isDefinition: true, scopeLine: 1715, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3143)
!3143 = !{!3141}
!3144 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 4296, column: 13, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 4295, column: 78)
!3147 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !3148, file: !3, line: 1707, type: !454)
!3148 = distinct !DISubprogram(name: "sm_pairing_error", scope: !3, file: !3, line: 1707, type: !3149, isLocal: true, isDefinition: true, scopeLine: 1708, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !454, !311}
!3151 = !{!3147, !3152}
!3152 = !DILocalVariable(name: "reason", arg: 2, scope: !3148, file: !3, line: 1707, type: !311)
!3153 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3145)
!3155 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3154)
!3156 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3154)
!3157 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3154)
!3158 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3154)
!3159 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3154)
!3160 = !DILocation(line: 4297, column: 13, scope: !3146)
!3161 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !3162, file: !3, line: 3737, type: !454)
!3162 = distinct !DISubprogram(name: "sm_master_cheeck_in_list", scope: !3, file: !3, line: 3737, type: !3163, isLocal: true, isDefinition: true, scopeLine: 3738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!2044, !454}
!3165 = !{!3161, !3166}
!3166 = !DILocalVariable(name: "list_info", scope: !3162, file: !3, line: 3739, type: !3167)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "BLE_REMOTE_LIST_T", file: !3168, line: 62, baseType: !3169)
!3168 = !DIFile(filename: "../User/include/ble/remote_device_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3168, line: 47, size: 416, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3181, !3183, !3184, !3185}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "irk_key", scope: !3169, file: !3168, line: 48, baseType: !683, size: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ltk_key", scope: !3169, file: !3168, line: 49, baseType: !683, size: 128, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3169, file: !3168, line: 50, baseType: !2300, size: 48, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !3169, file: !3168, line: 51, baseType: !430, size: 4, offset: 304, flags: DIFlagBitField, extraData: i64 304)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !3169, file: !3168, line: 52, baseType: !430, size: 1, offset: 308, flags: DIFlagBitField, extraData: i64 304)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "addr_type", scope: !3169, file: !3168, line: 53, baseType: !430, size: 1, offset: 309, flags: DIFlagBitField, extraData: i64 304)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "remote_type", scope: !3169, file: !3168, line: 54, baseType: !430, size: 2, offset: 310, flags: DIFlagBitField, extraData: i64 304)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "distribution", scope: !3169, file: !3168, line: 55, baseType: !430, size: 8, offset: 312)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rand", scope: !3169, file: !3168, line: 57, baseType: !3180, size: 64, offset: 320)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 64, elements: !366)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ediv", scope: !3169, file: !3168, line: 58, baseType: !3182, size: 16, offset: 384)
!3182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 16, elements: !629)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_keysize", scope: !3169, file: !3168, line: 59, baseType: !430, size: 8, offset: 400)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !3169, file: !3168, line: 60, baseType: !430, size: 4, offset: 408, flags: DIFlagBitField, extraData: i64 408)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "authentication_state", scope: !3169, file: !3168, line: 61, baseType: !430, size: 4, offset: 412, flags: DIFlagBitField, extraData: i64 408)
!3186 = !DILocation(line: 3737, column: 55, scope: !3162, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 4300, column: 13, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4300, column: 13)
!3189 = !DILocation(line: 3739, column: 5, scope: !3162, inlinedAt: !3187)
!3190 = !DILocation(line: 3740, column: 10, scope: !3191, inlinedAt: !3187)
!3191 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 3740, column: 9)
!3192 = !DILocation(line: 3740, column: 18, scope: !3191, inlinedAt: !3187)
!3193 = !DILocation(line: 3741, column: 9, scope: !3191, inlinedAt: !3187)
!3194 = !DILocation(line: 3741, column: 40, scope: !3195, inlinedAt: !3187)
!3195 = !DILexicalBlockFile(scope: !3191, file: !3, discriminator: 1)
!3196 = !DILocation(line: 3741, column: 75, scope: !3195, inlinedAt: !3187)
!3197 = !DILocation(line: 3739, column: 23, scope: !3162, inlinedAt: !3187)
!3198 = !DILocation(line: 3741, column: 12, scope: !3195, inlinedAt: !3187)
!3199 = !DILocation(line: 3740, column: 9, scope: !3200, inlinedAt: !3187)
!3200 = !DILexicalBlockFile(scope: !3162, file: !3, discriminator: 1)
!3201 = !DILocation(line: 3747, column: 1, scope: !3162, inlinedAt: !3187)
!3202 = !DILocation(line: 4305, column: 22, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4305, column: 13)
!3204 = !DILocation(line: 4305, column: 13, scope: !3054)
!3205 = !DILocation(line: 4306, column: 38, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 4305, column: 64)
!3207 = !DILocation(line: 4307, column: 13, scope: !3206)
!3208 = !DILocation(line: 4310, column: 13, scope: !3052)
!3209 = !DILocation(line: 4310, column: 22, scope: !3052)
!3210 = !DILocation(line: 4311, column: 50, scope: !3052)
!3211 = !DILocation(line: 4311, column: 13, scope: !3052)
!3212 = !DILocalVariable(name: "key", arg: 1, scope: !3213, file: !3, line: 594, type: !441)
!3213 = distinct !DISubprogram(name: "sm_is_null_key", scope: !3, file: !3, line: 594, type: !2461, isLocal: true, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3214)
!3214 = !{!3212}
!3215 = !DILocation(line: 594, column: 36, scope: !3213, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 4312, column: 18, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 4312, column: 17)
!3218 = !DILocation(line: 578, column: 32, scope: !2452, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 596, column: 12, scope: !3213, inlinedAt: !3216)
!3220 = !DILocation(line: 578, column: 42, scope: !2452, inlinedAt: !3219)
!3221 = !DILocation(line: 580, column: 9, scope: !2452, inlinedAt: !3219)
!3222 = !DILocation(line: 581, column: 19, scope: !2469, inlinedAt: !3219)
!3223 = !DILocation(line: 581, column: 5, scope: !2471, inlinedAt: !3219)
!3224 = !DILocation(line: 582, column: 13, scope: !2448, inlinedAt: !3219)
!3225 = !DILocation(line: 581, column: 29, scope: !2476, inlinedAt: !3219)
!3226 = !DILocation(line: 582, column: 13, scope: !2449, inlinedAt: !3219)
!3227 = !DILocation(line: 4313, column: 17, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 4313, column: 17)
!3229 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 4312, column: 39)
!3230 = !DILocation(line: 4313, column: 17, scope: !3229)
!3231 = !DILocation(line: 4313, column: 17, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3228, file: !3, discriminator: 1)
!3233 = !DILocation(line: 4319, column: 9, scope: !3053)
!3234 = !DILocation(line: 4321, column: 18, scope: !3054)
!3235 = !DILocation(line: 4321, column: 47, scope: !3054)
!3236 = !{!870, !718, i64 3}
!3237 = !DILocation(line: 4322, column: 9, scope: !3054)
!3238 = !DILocation(line: 4325, column: 13, scope: !3054)
!3239 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 4327, column: 17, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 4326, column: 58)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 4326, column: 17)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 4325, column: 54)
!3244 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4325, column: 13)
!3245 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3240)
!3247 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3246)
!3248 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3246)
!3249 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3246)
!3250 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3246)
!3251 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3246)
!3252 = !DILocation(line: 4328, column: 13, scope: !3241)
!3253 = !DILocation(line: 4332, column: 17, scope: !3054)
!3254 = !DILocation(line: 4332, column: 9, scope: !3054)
!3255 = !DILocation(line: 4333, column: 15, scope: !3054)
!3256 = !DILocation(line: 4272, column: 9, scope: !3035)
!3257 = !DILocation(line: 4334, column: 13, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4334, column: 13)
!3259 = !DILocation(line: 4334, column: 13, scope: !3054)
!3260 = !DILocation(line: 4335, column: 47, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 4334, column: 18)
!3262 = !DILocation(line: 4335, column: 13, scope: !3261)
!3263 = !DILocation(line: 4335, column: 20, scope: !3261)
!3264 = !DILocation(line: 4335, column: 45, scope: !3261)
!3265 = !DILocation(line: 4336, column: 38, scope: !3261)
!3266 = !DILocation(line: 4337, column: 13, scope: !3261)
!3267 = !DILocation(line: 4341, column: 13, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4341, column: 13)
!3269 = !DILocation(line: 4341, column: 20, scope: !3268)
!3270 = !DILocation(line: 4341, column: 45, scope: !3268)
!3271 = !DILocation(line: 4341, column: 13, scope: !3054)
!3272 = !DILocation(line: 4342, column: 38, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 4341, column: 63)
!3274 = !DILocation(line: 4343, column: 13, scope: !3273)
!3275 = !DILocation(line: 4361, column: 34, scope: !3054)
!3276 = !DILocation(line: 4362, column: 9, scope: !3054)
!3277 = !DILocation(line: 4364, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4364, column: 13)
!3279 = !DILocation(line: 4364, column: 20, scope: !3278)
!3280 = !DILocation(line: 4364, column: 37, scope: !3278)
!3281 = !DILocation(line: 4364, column: 13, scope: !3054)
!3282 = !DILocation(line: 4365, column: 38, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 4364, column: 63)
!3284 = !DILocation(line: 4366, column: 9, scope: !3283)
!3285 = !DILocation(line: 4370, column: 25, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4370, column: 13)
!3287 = !DILocation(line: 4370, column: 13, scope: !3054)
!3288 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 4371, column: 13, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 4370, column: 53)
!3291 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3289)
!3293 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3292)
!3294 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3292)
!3295 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3292)
!3296 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3292)
!3297 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3292)
!3298 = !DILocation(line: 4372, column: 13, scope: !3290)
!3299 = !DILocation(line: 4376, column: 22, scope: !3054)
!3300 = !DILocation(line: 4376, column: 33, scope: !3054)
!3301 = !DILocation(line: 4376, column: 9, scope: !3054)
!3302 = !DILocation(line: 4377, column: 34, scope: !3054)
!3303 = !DILocation(line: 4378, column: 9, scope: !3054)
!3304 = !DILocation(line: 4381, column: 25, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4381, column: 13)
!3306 = !DILocation(line: 4381, column: 13, scope: !3054)
!3307 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 4382, column: 13, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 4381, column: 52)
!3310 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3308)
!3312 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3311)
!3313 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3311)
!3314 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3311)
!3315 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3311)
!3316 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3311)
!3317 = !DILocation(line: 4383, column: 13, scope: !3309)
!3318 = !DILocation(line: 4387, column: 22, scope: !3054)
!3319 = !DILocation(line: 4387, column: 33, scope: !3054)
!3320 = !DILocation(line: 4387, column: 9, scope: !3054)
!3321 = !DILocation(line: 4388, column: 34, scope: !3054)
!3322 = !DILocation(line: 4389, column: 9, scope: !3054)
!3323 = !DILocation(line: 4397, column: 25, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4397, column: 13)
!3325 = !DILocation(line: 4397, column: 13, scope: !3054)
!3326 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 4398, column: 13, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 4397, column: 53)
!3329 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3327)
!3331 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3330)
!3332 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3330)
!3333 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3330)
!3334 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3330)
!3335 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3330)
!3336 = !DILocation(line: 4399, column: 13, scope: !3328)
!3337 = !DILocation(line: 4402, column: 13, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4402, column: 13)
!3339 = !DILocation(line: 4402, column: 44, scope: !3338)
!3340 = !DILocation(line: 4402, column: 48, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !3338, file: !3, discriminator: 1)
!3342 = !DILocation(line: 4402, column: 56, scope: !3341)
!3343 = !DILocation(line: 4402, column: 13, scope: !3140)
!3344 = !DILocation(line: 4403, column: 41, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 4403, column: 17)
!3346 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 4402, column: 103)
!3347 = !DILocation(line: 4403, column: 76, scope: !3345)
!3348 = !DILocation(line: 4403, column: 18, scope: !3345)
!3349 = !DILocation(line: 4403, column: 17, scope: !3346)
!3350 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 4404, column: 17, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 4403, column: 96)
!3353 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3351)
!3355 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3354)
!3356 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3354)
!3357 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3354)
!3358 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3354)
!3359 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3354)
!3360 = !DILocation(line: 4405, column: 17, scope: !3352)
!3361 = !DILocation(line: 4406, column: 52, scope: !3352)
!3362 = !DILocation(line: 4406, column: 43, scope: !3352)
!3363 = !DILocation(line: 4406, column: 17, scope: !3352)
!3364 = !DILocation(line: 4407, column: 17, scope: !3352)
!3365 = !DILocation(line: 4412, column: 9, scope: !3054)
!3366 = !DILocation(line: 4413, column: 34, scope: !3054)
!3367 = !DILocation(line: 4415, column: 9, scope: !3054)
!3368 = !DILocation(line: 4572, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4572, column: 13)
!3370 = !DILocation(line: 4572, column: 13, scope: !3054)
!3371 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 4573, column: 13, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 4572, column: 53)
!3374 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3372)
!3376 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3375)
!3377 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3375)
!3378 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3375)
!3379 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3375)
!3380 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3375)
!3381 = !DILocation(line: 4574, column: 13, scope: !3373)
!3382 = !DILocation(line: 4578, column: 22, scope: !3054)
!3383 = !DILocation(line: 4578, column: 33, scope: !3054)
!3384 = !DILocation(line: 4578, column: 9, scope: !3054)
!3385 = !DILocation(line: 4581, column: 13, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4581, column: 13)
!3387 = !DILocation(line: 4581, column: 20, scope: !3386)
!3388 = !DILocation(line: 4581, column: 45, scope: !3386)
!3389 = !DILocation(line: 4581, column: 13, scope: !3054)
!3390 = !DILocation(line: 4582, column: 77, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 4581, column: 63)
!3392 = !DILocation(line: 4582, column: 97, scope: !3391)
!3393 = !DILocation(line: 4582, column: 116, scope: !3391)
!3394 = !DILocation(line: 4582, column: 13, scope: !3391)
!3395 = !DILocation(line: 4583, column: 9, scope: !3391)
!3396 = !DILocation(line: 4586, column: 13, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4586, column: 13)
!3398 = !DILocation(line: 4586, column: 20, scope: !3397)
!3399 = !DILocation(line: 4586, column: 13, scope: !3054)
!3400 = !DILocation(line: 4587, column: 20, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 4586, column: 66)
!3402 = !DILocation(line: 4587, column: 45, scope: !3401)
!3403 = !DILocation(line: 4588, column: 38, scope: !3401)
!3404 = !DILocation(line: 4589, column: 13, scope: !3401)
!3405 = !DILocation(line: 4594, column: 38, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 4593, column: 66)
!3407 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4593, column: 13)
!3408 = !DILocation(line: 4595, column: 13, scope: !3406)
!3409 = !DILocation(line: 4599, column: 34, scope: !3054)
!3410 = !DILocation(line: 4600, column: 9, scope: !3054)
!3411 = !DILocation(line: 4603, column: 25, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4603, column: 13)
!3413 = !DILocation(line: 4603, column: 13, scope: !3054)
!3414 = !DILocation(line: 1714, column: 68, scope: !3142, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 4604, column: 13, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 4603, column: 52)
!3417 = !DILocation(line: 1707, column: 47, scope: !3148, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 1716, column: 5, scope: !3142, inlinedAt: !3415)
!3419 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3418)
!3420 = !DILocation(line: 1709, column: 5, scope: !3148, inlinedAt: !3418)
!3421 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3418)
!3422 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3418)
!3423 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3418)
!3424 = !DILocation(line: 4605, column: 13, scope: !3416)
!3425 = !DILocation(line: 4609, column: 22, scope: !3054)
!3426 = !DILocation(line: 4609, column: 33, scope: !3054)
!3427 = !DILocation(line: 4609, column: 9, scope: !3054)
!3428 = !DILocation(line: 4610, column: 34, scope: !3054)
!3429 = !DILocation(line: 4611, column: 9, scope: !3054)
!3430 = !DILocation(line: 4615, column: 9, scope: !3054)
!3431 = !DILocation(line: 4617, column: 13, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 4615, column: 30)
!3433 = !DILocation(line: 4617, column: 20, scope: !3432)
!3434 = !DILocation(line: 4617, column: 53, scope: !3432)
!3435 = !DILocation(line: 4618, column: 26, scope: !3432)
!3436 = !DILocation(line: 4618, column: 37, scope: !3432)
!3437 = !DILocation(line: 4618, column: 13, scope: !3432)
!3438 = !DILocation(line: 4621, column: 13, scope: !3432)
!3439 = !DILocation(line: 4624, column: 13, scope: !3432)
!3440 = !DILocation(line: 4624, column: 20, scope: !3432)
!3441 = !DILocation(line: 4624, column: 53, scope: !3432)
!3442 = !DILocation(line: 4625, column: 35, scope: !3432)
!3443 = !DILocation(line: 4625, column: 13, scope: !3432)
!3444 = !DILocation(line: 4625, column: 20, scope: !3432)
!3445 = !DILocation(line: 4625, column: 33, scope: !3432)
!3446 = !DILocation(line: 4626, column: 25, scope: !3432)
!3447 = !DILocation(line: 4626, column: 36, scope: !3432)
!3448 = !DILocation(line: 4626, column: 13, scope: !3432)
!3449 = !DILocation(line: 4630, column: 13, scope: !3432)
!3450 = !DILocation(line: 4633, column: 13, scope: !3432)
!3451 = !DILocation(line: 4633, column: 20, scope: !3432)
!3452 = !DILocation(line: 4633, column: 53, scope: !3432)
!3453 = !DILocation(line: 4634, column: 26, scope: !3432)
!3454 = !DILocation(line: 4634, column: 37, scope: !3432)
!3455 = !DILocation(line: 4634, column: 13, scope: !3432)
!3456 = !DILocation(line: 4635, column: 13, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 4635, column: 13)
!3458 = !DILocation(line: 4635, column: 13, scope: !3432)
!3459 = !DILocation(line: 4635, column: 13, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3457, file: !3, discriminator: 1)
!3461 = !DILocation(line: 4636, column: 13, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 4636, column: 13)
!3463 = !DILocation(line: 4636, column: 13, scope: !3432)
!3464 = !DILocation(line: 4636, column: 13, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3466, file: !3, discriminator: 1)
!3466 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 4636, column: 13)
!3467 = !DILocation(line: 4636, column: 13, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3466, file: !3, discriminator: 2)
!3469 = !DILocation(line: 4642, column: 13, scope: !3432)
!3470 = !DILocation(line: 4642, column: 20, scope: !3432)
!3471 = !DILocation(line: 4642, column: 53, scope: !3432)
!3472 = !DILocation(line: 4643, column: 40, scope: !3432)
!3473 = !DILocation(line: 4643, column: 20, scope: !3432)
!3474 = !DILocation(line: 4643, column: 38, scope: !3432)
!3475 = !DILocation(line: 4644, column: 30, scope: !3432)
!3476 = !DILocation(line: 4644, column: 41, scope: !3432)
!3477 = !DILocation(line: 4644, column: 13, scope: !3432)
!3478 = !DILocation(line: 4645, column: 13, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 4645, column: 13)
!3480 = !DILocation(line: 4645, column: 13, scope: !3432)
!3481 = !DILocation(line: 4645, column: 13, scope: !3482)
!3482 = !DILexicalBlockFile(scope: !3479, file: !3, discriminator: 1)
!3483 = !DILocation(line: 4646, column: 13, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 4646, column: 13)
!3485 = !DILocation(line: 4646, column: 13, scope: !3432)
!3486 = !DILocation(line: 4646, column: 13, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3488, file: !3, discriminator: 1)
!3488 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 4646, column: 13)
!3489 = !DILocation(line: 4646, column: 13, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3488, file: !3, discriminator: 2)
!3491 = !DILocation(line: 4652, column: 13, scope: !3432)
!3492 = !DILocation(line: 4652, column: 20, scope: !3432)
!3493 = !DILocation(line: 4652, column: 53, scope: !3432)
!3494 = !DILocation(line: 4653, column: 26, scope: !3432)
!3495 = !DILocation(line: 4653, column: 37, scope: !3432)
!3496 = !DILocation(line: 4653, column: 13, scope: !3432)
!3497 = !DILocation(line: 4656, column: 13, scope: !3432)
!3498 = !DILocation(line: 4663, column: 13, scope: !3063)
!3499 = !DILocation(line: 4663, column: 13, scope: !3054)
!3500 = !DILocation(line: 4665, column: 13, scope: !3062)
!3501 = !DILocation(line: 4667, column: 17, scope: !3061)
!3502 = !DILocation(line: 4667, column: 17, scope: !3062)
!3503 = !DILocation(line: 4668, column: 21, scope: !3059)
!3504 = !DILocation(line: 4668, column: 54, scope: !3059)
!3505 = !DILocation(line: 4668, column: 65, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !3059, file: !3, discriminator: 1)
!3507 = !DILocation(line: 4668, column: 98, scope: !3506)
!3508 = !DILocation(line: 4668, column: 21, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3060, file: !3, discriminator: 1)
!3510 = !DILocation(line: 4669, column: 46, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 4668, column: 147)
!3512 = !DILocation(line: 4670, column: 17, scope: !3511)
!3513 = !DILocation(line: 4672, column: 34, scope: !3057)
!3514 = !DILocation(line: 4672, column: 26, scope: !3057)
!3515 = !DILocation(line: 4672, column: 25, scope: !3058)
!3516 = !DILocation(line: 4699, column: 49, scope: !3058)
!3517 = !DILocation(line: 4673, column: 25, scope: !3056)
!3518 = !DILocation(line: 4673, column: 28, scope: !3056)
!3519 = !DILocation(line: 4676, column: 46, scope: !3056)
!3520 = !DILocation(line: 4676, column: 37, scope: !3056)
!3521 = !DILocation(line: 4677, column: 46, scope: !3056)
!3522 = !DILocation(line: 4677, column: 25, scope: !3056)
!3523 = !DILocation(line: 4677, column: 37, scope: !3056)
!3524 = !DILocation(line: 4678, column: 75, scope: !3056)
!3525 = !DILocation(line: 4678, column: 39, scope: !3056)
!3526 = !DILocation(line: 4678, column: 25, scope: !3056)
!3527 = !DILocation(line: 4678, column: 37, scope: !3056)
!3528 = !DILocation(line: 4680, column: 48, scope: !3056)
!3529 = !DILocation(line: 4680, column: 25, scope: !3056)
!3530 = !DILocation(line: 4680, column: 37, scope: !3056)
!3531 = !DILocation(line: 4681, column: 48, scope: !3056)
!3532 = !DILocation(line: 4681, column: 25, scope: !3056)
!3533 = !DILocation(line: 4681, column: 37, scope: !3056)
!3534 = !DILocation(line: 4682, column: 48, scope: !3056)
!3535 = !DILocation(line: 4682, column: 39, scope: !3056)
!3536 = !DILocation(line: 4682, column: 25, scope: !3056)
!3537 = !DILocation(line: 4682, column: 37, scope: !3056)
!3538 = !DILocation(line: 4685, column: 61, scope: !3056)
!3539 = !DILocation(line: 4685, column: 68, scope: !3056)
!3540 = !DILocation(line: 4685, column: 25, scope: !3056)
!3541 = !DILocation(line: 4686, column: 33, scope: !3056)
!3542 = !DILocation(line: 4686, column: 46, scope: !3056)
!3543 = !DILocation(line: 4686, column: 25, scope: !3056)
!3544 = !DILocation(line: 4687, column: 56, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 4687, column: 29)
!3546 = !DILocation(line: 4687, column: 65, scope: !3545)
!3547 = !DILocation(line: 4687, column: 96, scope: !3545)
!3548 = !DILocation(line: 4687, column: 115, scope: !3545)
!3549 = !DILocation(line: 4688, column: 47, scope: !3545)
!3550 = !DILocation(line: 4687, column: 29, scope: !3545)
!3551 = !DILocation(line: 4674, column: 29, scope: !3056)
!3552 = !DILocation(line: 4693, column: 82, scope: !3056)
!3553 = !DILocation(line: 4693, column: 102, scope: !3056)
!3554 = !DILocation(line: 4694, column: 50, scope: !3056)
!3555 = !DILocation(line: 4693, column: 25, scope: !3056)
!3556 = !DILocation(line: 4695, column: 21, scope: !3057)
!3557 = !DILocation(line: 4695, column: 21, scope: !3056)
!3558 = !DILocation(line: 4697, column: 46, scope: !3058)
!3559 = !DILocation(line: 4699, column: 21, scope: !3058)
!3560 = !DILocation(line: 4702, column: 21, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 4702, column: 21)
!3562 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 4701, column: 20)
!3563 = !DILocation(line: 4702, column: 21, scope: !3562)
!3564 = !DILocation(line: 4717, column: 5, scope: !3035)
!3565 = !DILocation(line: 4718, column: 1, scope: !3035)
!3566 = !DILocation(line: 4718, column: 1, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3035, file: !3, discriminator: 3)
!3568 = distinct !DISubprogram(name: "sm_exit", scope: !3, file: !3, line: 4942, type: !576, isLocal: false, isDefinition: true, scopeLine: 4943, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!3569 = !DILocation(line: 4944, column: 5, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 4944, column: 5)
!3571 = !DILocation(line: 4944, column: 5, scope: !3568)
!3572 = !DILocation(line: 4946, column: 5, scope: !3568)
!3573 = !DILocation(line: 4948, column: 9, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 4948, column: 9)
!3575 = !DILocation(line: 4948, column: 9, scope: !3568)
!3576 = !DILocation(line: 4949, column: 14, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 4948, column: 17)
!3578 = !DILocation(line: 4949, column: 9, scope: !3577)
!3579 = !DILocation(line: 4950, column: 16, scope: !3577)
!3580 = !DILocation(line: 4951, column: 5, scope: !3577)
!3581 = !DILocation(line: 4952, column: 1, scope: !3568)
!3582 = distinct !DISubprogram(name: "sm_use_fixed_ec_keypair", scope: !3, file: !3, line: 4954, type: !1528, isLocal: false, isDefinition: true, scopeLine: 4955, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DILocalVariable(name: "qx", arg: 1, scope: !3582, file: !3, line: 4954, type: !441)
!3585 = !DILocalVariable(name: "qy", arg: 2, scope: !3582, file: !3, line: 4954, type: !441)
!3586 = !DILocalVariable(name: "d", arg: 3, scope: !3582, file: !3, line: 4954, type: !441)
!3587 = !DILocation(line: 4954, column: 39, scope: !3582)
!3588 = !DILocation(line: 4954, column: 52, scope: !3582)
!3589 = !DILocation(line: 4954, column: 65, scope: !3582)
!3590 = !DILocation(line: 4967, column: 1, scope: !3582)
!3591 = distinct !DISubprogram(name: "sm_test_use_fixed_ec_keypair", scope: !3, file: !3, line: 4999, type: !576, isLocal: false, isDefinition: true, scopeLine: 5000, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!3592 = !DILocation(line: 5011, column: 1, scope: !3591)
!3593 = distinct !DISubprogram(name: "sm_use_fixed_legacy_pairing_passkey_in_display_role", scope: !3, file: !3, line: 5013, type: !3594, isLocal: false, isDefinition: true, scopeLine: 5014, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3596)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !390}
!3596 = !{!3597}
!3597 = !DILocalVariable(name: "passkey", arg: 1, scope: !3593, file: !3, line: 5013, type: !390)
!3598 = !DILocation(line: 5013, column: 67, scope: !3593)
!3599 = !DILocation(line: 5015, column: 5, scope: !3593)
!3600 = !DILocation(line: 5015, column: 13, scope: !3593)
!3601 = !DILocation(line: 5015, column: 61, scope: !3593)
!3602 = !DILocation(line: 5016, column: 1, scope: !3593)
!3603 = distinct !DISubprogram(name: "sm_allow_ltk_reconstruction_without_le_device_db_entry", scope: !3, file: !3, line: 5018, type: !1958, isLocal: false, isDefinition: true, scopeLine: 5019, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3604)
!3604 = !{!3605}
!3605 = !DILocalVariable(name: "allow", arg: 1, scope: !3603, file: !3, line: 5018, type: !370)
!3606 = !DILocation(line: 5018, column: 65, scope: !3603)
!3607 = !DILocation(line: 5020, column: 61, scope: !3603)
!3608 = !DILocation(line: 5020, column: 5, scope: !3603)
!3609 = !DILocation(line: 5020, column: 13, scope: !3603)
!3610 = !DILocation(line: 5020, column: 59, scope: !3603)
!3611 = !DILocation(line: 5021, column: 1, scope: !3603)
!3612 = distinct !DISubprogram(name: "sm_encryption_key_size", scope: !3, file: !3, line: 5033, type: !3613, isLocal: false, isDefinition: true, scopeLine: 5034, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!370, !327}
!3615 = !{!3616, !3617}
!3616 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3612, file: !3, line: 5033, type: !327)
!3617 = !DILocalVariable(name: "sm_conn", scope: !3612, file: !3, line: 5035, type: !454)
!3618 = !DILocation(line: 5033, column: 45, scope: !3612)
!3619 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 5035, column: 32, scope: !3612)
!3621 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3620)
!3622 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3620)
!3623 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3620)
!3624 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !3620)
!3625 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !3620)
!3626 = !DILocation(line: 5035, column: 22, scope: !3612)
!3627 = !DILocation(line: 5036, column: 9, scope: !3612)
!3628 = !DILocation(line: 5039, column: 19, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 5039, column: 9)
!3630 = !DILocation(line: 5039, column: 10, scope: !3629)
!3631 = !DILocation(line: 5039, column: 9, scope: !3612)
!3632 = !DILocation(line: 5042, column: 21, scope: !3612)
!3633 = !DILocation(line: 5042, column: 12, scope: !3612)
!3634 = !DILocation(line: 5042, column: 5, scope: !3612)
!3635 = !DILocation(line: 5043, column: 1, scope: !3612)
!3636 = distinct !DISubprogram(name: "sm_authenticated", scope: !3, file: !3, line: 5045, type: !3613, isLocal: false, isDefinition: true, scopeLine: 5046, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3637)
!3637 = !{!3638, !3639}
!3638 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3636, file: !3, line: 5045, type: !327)
!3639 = !DILocalVariable(name: "sm_conn", scope: !3636, file: !3, line: 5047, type: !454)
!3640 = !DILocation(line: 5045, column: 39, scope: !3636)
!3641 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 5047, column: 32, scope: !3636)
!3643 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3642)
!3644 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3642)
!3645 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3642)
!3646 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !3642)
!3647 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !3642)
!3648 = !DILocation(line: 5047, column: 22, scope: !3636)
!3649 = !DILocation(line: 5048, column: 9, scope: !3636)
!3650 = !DILocation(line: 5051, column: 19, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 5051, column: 9)
!3652 = !DILocation(line: 5051, column: 10, scope: !3651)
!3653 = !DILocation(line: 5051, column: 9, scope: !3636)
!3654 = !DILocation(line: 5054, column: 21, scope: !3636)
!3655 = !DILocation(line: 5054, column: 12, scope: !3636)
!3656 = !DILocation(line: 5054, column: 5, scope: !3636)
!3657 = !DILocation(line: 5055, column: 1, scope: !3636)
!3658 = distinct !DISubprogram(name: "sm_authorization_state", scope: !3, file: !3, line: 5057, type: !3659, isLocal: false, isDefinition: true, scopeLine: 5058, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!362, !327}
!3661 = !{!3662, !3663}
!3662 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3658, file: !3, line: 5057, type: !327)
!3663 = !DILocalVariable(name: "sm_conn", scope: !3658, file: !3, line: 5061, type: !454)
!3664 = !DILocation(line: 5057, column: 63, scope: !3658)
!3665 = !DILocation(line: 5059, column: 5, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 5059, column: 5)
!3667 = !DILocation(line: 5059, column: 5, scope: !3658)
!3668 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 5061, column: 32, scope: !3658)
!3670 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3669)
!3671 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3669)
!3672 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3669)
!3673 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !3669)
!3674 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !3669)
!3675 = !DILocation(line: 5061, column: 22, scope: !3658)
!3676 = !DILocation(line: 5062, column: 9, scope: !3658)
!3677 = !DILocation(line: 5065, column: 19, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 5065, column: 9)
!3679 = !DILocation(line: 5065, column: 10, scope: !3678)
!3680 = !DILocation(line: 5065, column: 9, scope: !3658)
!3681 = !DILocation(line: 5068, column: 19, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 5068, column: 9)
!3683 = !DILocation(line: 5068, column: 10, scope: !3682)
!3684 = !DILocation(line: 5068, column: 9, scope: !3658)
!3685 = !DILocation(line: 5071, column: 21, scope: !3658)
!3686 = !DILocation(line: 5071, column: 5, scope: !3658)
!3687 = !DILocation(line: 5072, column: 1, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3658, file: !3, discriminator: 1)
!3689 = distinct !DISubprogram(name: "sm_authorization_decline", scope: !3, file: !3, line: 5139, type: !3690, isLocal: false, isDefinition: true, scopeLine: 5140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !327}
!3692 = !{!3693, !3694}
!3693 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3689, file: !3, line: 5139, type: !327)
!3694 = !DILocalVariable(name: "sm_conn", scope: !3689, file: !3, line: 5141, type: !454)
!3695 = !DILocation(line: 5139, column: 48, scope: !3689)
!3696 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 5141, column: 32, scope: !3689)
!3698 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3697)
!3699 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3697)
!3700 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3697)
!3701 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !3697)
!3702 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !3697)
!3703 = !DILocation(line: 5141, column: 22, scope: !3689)
!3704 = !DILocation(line: 5142, column: 9, scope: !3689)
!3705 = !DILocation(line: 5145, column: 14, scope: !3689)
!3706 = !DILocation(line: 5145, column: 48, scope: !3689)
!3707 = !DILocation(line: 5146, column: 76, scope: !3689)
!3708 = !DILocation(line: 5146, column: 96, scope: !3689)
!3709 = !DILocation(line: 5146, column: 115, scope: !3689)
!3710 = !DILocation(line: 5146, column: 5, scope: !3689)
!3711 = !DILocation(line: 5147, column: 1, scope: !3689)
!3712 = !DILocation(line: 5147, column: 1, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3689, file: !3, discriminator: 2)
!3714 = distinct !DISubprogram(name: "sm_notify_client_authorization", scope: !3, file: !3, line: 997, type: !3715, isLocal: true, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !311, !327, !311, !441, !311}
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723}
!3718 = !DILocalVariable(name: "type", arg: 1, scope: !3714, file: !3, line: 997, type: !311)
!3719 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3714, file: !3, line: 997, type: !327)
!3720 = !DILocalVariable(name: "addr_type", arg: 3, scope: !3714, file: !3, line: 997, type: !311)
!3721 = !DILocalVariable(name: "address", arg: 4, scope: !3714, file: !3, line: 997, type: !441)
!3722 = !DILocalVariable(name: "result", arg: 5, scope: !3714, file: !3, line: 997, type: !311)
!3723 = !DILocalVariable(name: "event", scope: !3714, file: !3, line: 1000, type: !3724)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 144, elements: !3725)
!3725 = !{!3726}
!3726 = !DISubrange(count: 18)
!3727 = !DILocation(line: 997, column: 52, scope: !3714)
!3728 = !DILocation(line: 1000, column: 5, scope: !3714)
!3729 = !DILocation(line: 1000, column: 13, scope: !3714)
!3730 = !DILocalVariable(name: "event", arg: 1, scope: !3731, file: !3, line: 931, type: !441)
!3731 = distinct !DISubprogram(name: "sm_setup_event_base", scope: !3, file: !3, line: 931, type: !3732, isLocal: true, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !441, !370, !311, !327, !311, !441}
!3734 = !{!3730, !3735, !3736, !3737, !3738, !3739}
!3735 = !DILocalVariable(name: "event_size", arg: 2, scope: !3731, file: !3, line: 931, type: !370)
!3736 = !DILocalVariable(name: "type", arg: 3, scope: !3731, file: !3, line: 931, type: !311)
!3737 = !DILocalVariable(name: "con_handle", arg: 4, scope: !3731, file: !3, line: 931, type: !327)
!3738 = !DILocalVariable(name: "addr_type", arg: 5, scope: !3731, file: !3, line: 931, type: !311)
!3739 = !DILocalVariable(name: "address", arg: 6, scope: !3731, file: !3, line: 931, type: !441)
!3740 = !DILocation(line: 931, column: 42, scope: !3731, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 1001, column: 5, scope: !3714)
!3742 = !DILocation(line: 931, column: 53, scope: !3731, inlinedAt: !3741)
!3743 = !DILocation(line: 931, column: 73, scope: !3731, inlinedAt: !3741)
!3744 = !DILocation(line: 931, column: 96, scope: !3731, inlinedAt: !3741)
!3745 = !DILocation(line: 931, column: 116, scope: !3731, inlinedAt: !3741)
!3746 = !DILocation(line: 931, column: 137, scope: !3731, inlinedAt: !3741)
!3747 = !DILocation(line: 933, column: 14, scope: !3731, inlinedAt: !3741)
!3748 = !DILocation(line: 934, column: 5, scope: !3731, inlinedAt: !3741)
!3749 = !DILocation(line: 934, column: 14, scope: !3731, inlinedAt: !3741)
!3750 = !DILocation(line: 935, column: 5, scope: !3731, inlinedAt: !3741)
!3751 = !DILocation(line: 936, column: 5, scope: !3731, inlinedAt: !3741)
!3752 = !DILocation(line: 936, column: 14, scope: !3731, inlinedAt: !3741)
!3753 = !DILocation(line: 937, column: 31, scope: !3731, inlinedAt: !3741)
!3754 = !DILocation(line: 937, column: 5, scope: !3731, inlinedAt: !3741)
!3755 = !DILocation(line: 1002, column: 5, scope: !3714)
!3756 = !DILocation(line: 1002, column: 15, scope: !3714)
!3757 = !DILocation(line: 1003, column: 5, scope: !3714)
!3758 = !DILocation(line: 1004, column: 1, scope: !3714)
!3759 = distinct !DISubprogram(name: "sm_authorization_grant", scope: !3, file: !3, line: 5149, type: !3690, isLocal: false, isDefinition: true, scopeLine: 5150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3760)
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3759, file: !3, line: 5149, type: !327)
!3762 = !DILocalVariable(name: "sm_conn", scope: !3759, file: !3, line: 5151, type: !454)
!3763 = !DILocation(line: 5149, column: 46, scope: !3759)
!3764 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 5151, column: 32, scope: !3759)
!3766 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3765)
!3767 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3765)
!3768 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3765)
!3769 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !3765)
!3770 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !3765)
!3771 = !DILocation(line: 5151, column: 22, scope: !3759)
!3772 = !DILocation(line: 5152, column: 9, scope: !3759)
!3773 = !DILocation(line: 5155, column: 14, scope: !3759)
!3774 = !DILocation(line: 5155, column: 48, scope: !3759)
!3775 = !DILocation(line: 5156, column: 76, scope: !3759)
!3776 = !DILocation(line: 5156, column: 96, scope: !3759)
!3777 = !DILocation(line: 5156, column: 115, scope: !3759)
!3778 = !DILocation(line: 5156, column: 5, scope: !3759)
!3779 = !DILocation(line: 5157, column: 1, scope: !3759)
!3780 = !DILocation(line: 5157, column: 1, scope: !3781)
!3781 = !DILexicalBlockFile(scope: !3759, file: !3, discriminator: 2)
!3782 = distinct !DISubprogram(name: "sm_bonding_decline", scope: !3, file: !3, line: 5161, type: !3690, isLocal: false, isDefinition: true, scopeLine: 5162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3783)
!3783 = !{!3784, !3785}
!3784 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3782, file: !3, line: 5161, type: !327)
!3785 = !DILocalVariable(name: "sm_conn", scope: !3782, file: !3, line: 5163, type: !454)
!3786 = !DILocation(line: 5161, column: 42, scope: !3782)
!3787 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 5163, column: 32, scope: !3782)
!3789 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3788)
!3790 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3788)
!3791 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3788)
!3792 = !DILocation(line: 5164, column: 9, scope: !3782)
!3793 = !DILocation(line: 5167, column: 5, scope: !3782)
!3794 = !DILocation(line: 5167, column: 12, scope: !3782)
!3795 = !DILocation(line: 5167, column: 29, scope: !3782)
!3796 = !DILocation(line: 5169, column: 18, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 5169, column: 9)
!3798 = !DILocation(line: 5169, column: 34, scope: !3797)
!3799 = !DILocation(line: 5169, column: 9, scope: !3782)
!3800 = !DILocation(line: 5170, column: 24, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 5169, column: 62)
!3802 = !DILocation(line: 5170, column: 9, scope: !3801)
!3803 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 5174, column: 13, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 5170, column: 50)
!3806 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3804)
!3807 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3804)
!3808 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3804)
!3809 = !DILocation(line: 5175, column: 13, scope: !3805)
!3810 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 5177, column: 13, scope: !3805)
!3812 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3811)
!3813 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3811)
!3814 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3811)
!3815 = !DILocation(line: 5178, column: 13, scope: !3805)
!3816 = !DILocation(line: 1707, column: 64, scope: !3148, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 5181, column: 13, scope: !3805)
!3818 = !DILocation(line: 1709, column: 12, scope: !3148, inlinedAt: !3817)
!3819 = !DILocation(line: 1709, column: 37, scope: !3148, inlinedAt: !3817)
!3820 = !DILocation(line: 1710, column: 30, scope: !3148, inlinedAt: !3817)
!3821 = !DILocation(line: 5182, column: 13, scope: !3805)
!3822 = !DILocation(line: 5185, column: 5, scope: !3782)
!3823 = !DILocation(line: 5186, column: 1, scope: !3782)
!3824 = !DILocation(line: 5186, column: 1, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !3782, file: !3, discriminator: 2)
!3826 = distinct !DISubprogram(name: "sm_just_works_confirm_addr", scope: !3, file: !3, line: 5196, type: !3827, isLocal: false, isDefinition: true, scopeLine: 5197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !311, !441}
!3829 = !{!3830, !3831, !3832}
!3830 = !DILocalVariable(name: "addr_type", arg: 1, scope: !3826, file: !3, line: 5196, type: !311)
!3831 = !DILocalVariable(name: "address", arg: 2, scope: !3826, file: !3, line: 5196, type: !441)
!3832 = !DILocalVariable(name: "sm_conn", scope: !3826, file: !3, line: 5199, type: !454)
!3833 = !DILocation(line: 5196, column: 41, scope: !3826)
!3834 = !DILocation(line: 5196, column: 62, scope: !3826)
!3835 = !DILocalVariable(name: "addr_type", arg: 1, scope: !3836, file: !3, line: 5187, type: !311)
!3836 = distinct !DISubprogram(name: "sm_get_connection", scope: !3, file: !3, line: 5187, type: !3837, isLocal: true, isDefinition: true, scopeLine: 5188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!454, !311, !441}
!3839 = !{!3835, !3840, !3841}
!3840 = !DILocalVariable(name: "address", arg: 2, scope: !3836, file: !3, line: 5187, type: !441)
!3841 = !DILocalVariable(name: "hci_con", scope: !3836, file: !3, line: 5189, type: !320)
!3842 = !DILocation(line: 5187, column: 51, scope: !3836, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 5199, column: 32, scope: !3826)
!3844 = !DILocation(line: 5187, column: 72, scope: !3836, inlinedAt: !3843)
!3845 = !DILocation(line: 5189, column: 84, scope: !3836, inlinedAt: !3843)
!3846 = !DILocation(line: 5189, column: 36, scope: !3836, inlinedAt: !3843)
!3847 = !DILocation(line: 5189, column: 26, scope: !3836, inlinedAt: !3843)
!3848 = !DILocation(line: 5190, column: 10, scope: !3849, inlinedAt: !3843)
!3849 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 5190, column: 9)
!3850 = !DILocation(line: 5201, column: 9, scope: !3826)
!3851 = !DILocation(line: 5206, column: 5, scope: !3826)
!3852 = !DILocation(line: 5206, column: 12, scope: !3826)
!3853 = !DILocation(line: 5206, column: 29, scope: !3826)
!3854 = !DILocation(line: 5207, column: 18, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 5207, column: 9)
!3856 = !DILocation(line: 5207, column: 34, scope: !3855)
!3857 = !DILocation(line: 5207, column: 9, scope: !3826)
!3858 = !DILocation(line: 5208, column: 34, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 5207, column: 62)
!3860 = !DILocation(line: 5209, column: 5, scope: !3859)
!3861 = !DILocation(line: 5210, column: 5, scope: !3826)
!3862 = !DILocation(line: 5211, column: 1, scope: !3826)
!3863 = !DILocation(line: 5211, column: 1, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3826, file: !3, discriminator: 2)
!3865 = distinct !DISubprogram(name: "sm_just_works_confirm", scope: !3, file: !3, line: 5213, type: !3690, isLocal: false, isDefinition: true, scopeLine: 5214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3866)
!3866 = !{!3867, !3868}
!3867 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3865, file: !3, line: 5213, type: !327)
!3868 = !DILocalVariable(name: "sm_conn", scope: !3865, file: !3, line: 5215, type: !454)
!3869 = !DILocation(line: 5213, column: 45, scope: !3865)
!3870 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 5215, column: 32, scope: !3865)
!3872 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3871)
!3873 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3871)
!3874 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3871)
!3875 = !DILocation(line: 5216, column: 9, scope: !3865)
!3876 = !DILocation(line: 5219, column: 5, scope: !3865)
!3877 = !DILocation(line: 5219, column: 12, scope: !3865)
!3878 = !DILocation(line: 5219, column: 29, scope: !3865)
!3879 = !DILocation(line: 5220, column: 18, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 5220, column: 9)
!3881 = !DILocation(line: 5220, column: 34, scope: !3880)
!3882 = !DILocation(line: 5220, column: 9, scope: !3865)
!3883 = !DILocation(line: 5221, column: 20, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 5221, column: 13)
!3885 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 5220, column: 62)
!3886 = !DILocation(line: 5221, column: 13, scope: !3884)
!3887 = !DILocation(line: 5221, column: 13, scope: !3885)
!3888 = !DILocation(line: 5226, column: 5, scope: !3885)
!3889 = !DILocation(line: 5234, column: 5, scope: !3865)
!3890 = !DILocation(line: 5235, column: 1, scope: !3865)
!3891 = !DILocation(line: 5235, column: 1, scope: !3892)
!3892 = !DILexicalBlockFile(scope: !3865, file: !3, discriminator: 2)
!3893 = distinct !DISubprogram(name: "sm_numeric_comparison_confirm", scope: !3, file: !3, line: 5237, type: !3690, isLocal: false, isDefinition: true, scopeLine: 5238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3894)
!3894 = !{!3895}
!3895 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3893, file: !3, line: 5237, type: !327)
!3896 = !DILocation(line: 5237, column: 53, scope: !3893)
!3897 = !DILocation(line: 5240, column: 5, scope: !3893)
!3898 = !DILocation(line: 5241, column: 1, scope: !3893)
!3899 = distinct !DISubprogram(name: "sm_passkey_input", scope: !3, file: !3, line: 5243, type: !3900, isLocal: false, isDefinition: true, scopeLine: 5244, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3902)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !327, !390}
!3902 = !{!3903, !3904, !3905}
!3903 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3899, file: !3, line: 5243, type: !327)
!3904 = !DILocalVariable(name: "passkey", arg: 2, scope: !3899, file: !3, line: 5243, type: !390)
!3905 = !DILocalVariable(name: "sm_conn", scope: !3899, file: !3, line: 5245, type: !454)
!3906 = !DILocation(line: 5243, column: 40, scope: !3899)
!3907 = !DILocation(line: 5243, column: 61, scope: !3899)
!3908 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 5245, column: 32, scope: !3899)
!3910 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3909)
!3911 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3909)
!3912 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3909)
!3913 = !DILocation(line: 5246, column: 9, scope: !3899)
!3914 = !DILocation(line: 602, column: 9, scope: !1083, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 5249, column: 5, scope: !3899)
!3916 = !DILocation(line: 603, column: 5, scope: !1088, inlinedAt: !3915)
!3917 = !DILocation(line: 604, column: 25, scope: !1091, inlinedAt: !3915)
!3918 = !DILocation(line: 5250, column: 5, scope: !3899)
!3919 = !DILocation(line: 5251, column: 5, scope: !3899)
!3920 = !DILocation(line: 5251, column: 12, scope: !3899)
!3921 = !DILocation(line: 5251, column: 29, scope: !3899)
!3922 = !DILocation(line: 5252, column: 18, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 5252, column: 9)
!3924 = !DILocation(line: 5252, column: 34, scope: !3923)
!3925 = !DILocation(line: 5252, column: 9, scope: !3899)
!3926 = !DILocation(line: 5253, column: 34, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 5252, column: 62)
!3928 = !DILocation(line: 5254, column: 5, scope: !3927)
!3929 = !DILocation(line: 5262, column: 5, scope: !3899)
!3930 = !DILocation(line: 5263, column: 1, scope: !3899)
!3931 = !DILocation(line: 5263, column: 1, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3899, file: !3, discriminator: 2)
!3933 = distinct !DISubprogram(name: "sm_keypress_notification", scope: !3, file: !3, line: 5265, type: !3934, isLocal: false, isDefinition: true, scopeLine: 5266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !327, !311}
!3936 = !{!3937, !3938, !3939}
!3937 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3933, file: !3, line: 5265, type: !327)
!3938 = !DILocalVariable(name: "action", arg: 2, scope: !3933, file: !3, line: 5265, type: !311)
!3939 = !DILocalVariable(name: "sm_conn", scope: !3933, file: !3, line: 5267, type: !454)
!3940 = !DILocation(line: 5265, column: 48, scope: !3933)
!3941 = !DILocation(line: 5265, column: 68, scope: !3933)
!3942 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 5267, column: 32, scope: !3933)
!3944 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3943)
!3945 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3943)
!3946 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3943)
!3947 = !DILocation(line: 5271, column: 16, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 5271, column: 9)
!3949 = !DILocation(line: 5268, column: 9, scope: !3933)
!3950 = !DILocation(line: 5274, column: 5, scope: !3933)
!3951 = !DILocation(line: 5274, column: 12, scope: !3933)
!3952 = !DILocation(line: 5274, column: 37, scope: !3933)
!3953 = !DILocation(line: 5275, column: 5, scope: !3933)
!3954 = !DILocation(line: 5276, column: 1, scope: !3933)
!3955 = !DILocation(line: 5276, column: 1, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3933, file: !3, discriminator: 2)
!3957 = distinct !DISubprogram(name: "sm_le_device_index", scope: !3, file: !3, line: 5283, type: !3613, isLocal: false, isDefinition: true, scopeLine: 5284, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3958)
!3958 = !{!3959, !3960}
!3959 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3957, file: !3, line: 5283, type: !327)
!3960 = !DILocalVariable(name: "sm_conn", scope: !3957, file: !3, line: 5286, type: !454)
!3961 = !DILocation(line: 5283, column: 41, scope: !3957)
!3962 = !DILocation(line: 5285, column: 5, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 5285, column: 5)
!3964 = !DILocation(line: 5285, column: 5, scope: !3957)
!3965 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 5286, column: 32, scope: !3957)
!3967 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !3966)
!3968 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !3966)
!3969 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !3966)
!3970 = !DILocation(line: 5287, column: 9, scope: !3957)
!3971 = !DILocation(line: 5290, column: 21, scope: !3957)
!3972 = !DILocation(line: 5290, column: 5, scope: !3957)
!3973 = !DILocation(line: 5291, column: 1, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3957, file: !3, discriminator: 1)
!3975 = distinct !DISubprogram(name: "gap_random_address_set_mode", scope: !3, file: !3, line: 5315, type: !3976, isLocal: false, isDefinition: true, scopeLine: 5316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !467}
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "random_address_type", arg: 1, scope: !3975, file: !3, line: 5315, type: !467)
!3980 = !DILocation(line: 5315, column: 60, scope: !3975)
!3981 = !DILocation(line: 698, column: 5, scope: !3982, inlinedAt: !3983)
!3982 = distinct !DISubprogram(name: "gap_random_address_update_stop", scope: !3, file: !3, line: 696, type: !576, isLocal: true, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!3983 = distinct !DILocation(line: 5317, column: 5, scope: !3975)
!3984 = !DILocation(line: 5318, column: 28, scope: !3975)
!3985 = !DILocation(line: 5308, column: 9, scope: !3986, inlinedAt: !3990)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 5306, column: 37)
!3987 = distinct !DISubprogram(name: "own_address_type", scope: !3, file: !3, line: 5304, type: !3988, isLocal: true, isDefinition: true, scopeLine: 5305, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!311}
!3990 = distinct !DILocation(line: 5319, column: 33, scope: !3975)
!3991 = !DILocation(line: 5319, column: 5, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3975, file: !3, discriminator: 1)
!3993 = !DILocation(line: 5295, column: 9, scope: !3994, inlinedAt: !3996)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 5295, column: 9)
!3995 = distinct !DISubprogram(name: "gap_random_address_type_requires_updates", scope: !3, file: !3, line: 5293, type: !854, isLocal: true, isDefinition: true, scopeLine: 5294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!3996 = distinct !DILocation(line: 5320, column: 10, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 5320, column: 9)
!3998 = !DILocation(line: 5295, column: 9, scope: !3995, inlinedAt: !3996)
!3999 = !DILocation(line: 5320, column: 9, scope: !3975)
!4000 = !DILocation(line: 690, column: 5, scope: !4001, inlinedAt: !4002)
!4001 = distinct !DISubprogram(name: "gap_random_address_update_start", scope: !3, file: !3, line: 688, type: !576, isLocal: true, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!4002 = distinct !DILocation(line: 5323, column: 5, scope: !3975)
!4003 = !DILocation(line: 691, column: 56, scope: !4001, inlinedAt: !4002)
!4004 = !DILocation(line: 691, column: 54, scope: !4001, inlinedAt: !4002)
!4005 = !DILocation(line: 692, column: 45, scope: !4001, inlinedAt: !4002)
!4006 = !{!772, !717, i64 12}
!4007 = !DILocation(line: 693, column: 5, scope: !4001, inlinedAt: !4002)
!4008 = !DILocation(line: 5324, column: 5, scope: !3975)
!4009 = !DILocation(line: 5325, column: 1, scope: !3975)
!4010 = !DILocation(line: 5325, column: 1, scope: !3992)
!4011 = distinct !DISubprogram(name: "gap_random_address_trigger", scope: !3, file: !3, line: 670, type: !576, isLocal: true, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!4012 = !DILocation(line: 672, column: 9, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 672, column: 9)
!4014 = !DILocation(line: 672, column: 17, scope: !4013)
!4015 = !DILocation(line: 672, column: 27, scope: !4013)
!4016 = !DILocation(line: 672, column: 9, scope: !4011)
!4017 = !DILocation(line: 676, column: 23, scope: !4011)
!4018 = !DILocation(line: 677, column: 5, scope: !4011)
!4019 = !DILocation(line: 678, column: 1, scope: !4011)
!4020 = !DILocation(line: 678, column: 1, scope: !4021)
!4021 = !DILexicalBlockFile(scope: !4011, file: !3, discriminator: 1)
!4022 = distinct !DISubprogram(name: "gap_random_address_get_mode", scope: !3, file: !3, line: 5327, type: !4023, isLocal: false, isDefinition: true, scopeLine: 5328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!467}
!4025 = !DILocation(line: 5329, column: 12, scope: !4022)
!4026 = !DILocation(line: 5329, column: 5, scope: !4022)
!4027 = distinct !DISubprogram(name: "gap_random_address_set_update_period", scope: !3, file: !3, line: 5332, type: !1958, isLocal: false, isDefinition: true, scopeLine: 5333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4028)
!4028 = !{!4029}
!4029 = !DILocalVariable(name: "period_ms", arg: 1, scope: !4027, file: !3, line: 5332, type: !370)
!4030 = !DILocation(line: 5332, column: 47, scope: !4027)
!4031 = !DILocation(line: 5334, column: 37, scope: !4027)
!4032 = !DILocation(line: 5295, column: 9, scope: !3994, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 5335, column: 10, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 5335, column: 9)
!4035 = !DILocation(line: 5295, column: 9, scope: !3995, inlinedAt: !4033)
!4036 = !DILocation(line: 5335, column: 9, scope: !4027)
!4037 = !DILocation(line: 698, column: 5, scope: !3982, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 5338, column: 5, scope: !4027)
!4039 = !DILocation(line: 690, column: 5, scope: !4001, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 5339, column: 5, scope: !4027)
!4041 = !DILocation(line: 691, column: 56, scope: !4001, inlinedAt: !4040)
!4042 = !DILocation(line: 691, column: 54, scope: !4001, inlinedAt: !4040)
!4043 = !DILocation(line: 692, column: 45, scope: !4001, inlinedAt: !4040)
!4044 = !DILocation(line: 693, column: 5, scope: !4001, inlinedAt: !4040)
!4045 = !DILocation(line: 5340, column: 1, scope: !4027)
!4046 = !DILocation(line: 5340, column: 1, scope: !4047)
!4047 = !DILexicalBlockFile(scope: !4027, file: !3, discriminator: 1)
!4048 = distinct !DISubprogram(name: "gap_random_address_set", scope: !3, file: !3, line: 5342, type: !2002, isLocal: false, isDefinition: true, scopeLine: 5343, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4049)
!4049 = !{!4050}
!4050 = !DILocalVariable(name: "addr", arg: 1, scope: !4048, file: !3, line: 5342, type: !441)
!4051 = !DILocation(line: 5342, column: 39, scope: !4048)
!4052 = !DILocation(line: 5344, column: 5, scope: !4048)
!4053 = !DILocation(line: 5345, column: 12, scope: !4048)
!4054 = !DILocation(line: 5345, column: 5, scope: !4048)
!4055 = !DILocation(line: 5346, column: 17, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 5346, column: 9)
!4057 = !DILocation(line: 5346, column: 27, scope: !4056)
!4058 = !DILocation(line: 5346, column: 9, scope: !4048)
!4059 = !DILocation(line: 5349, column: 23, scope: !4048)
!4060 = !DILocation(line: 5350, column: 5, scope: !4048)
!4061 = !DILocation(line: 5351, column: 1, scope: !4048)
!4062 = !DILocation(line: 5351, column: 1, scope: !4063)
!4063 = !DILexicalBlockFile(scope: !4048, file: !3, discriminator: 1)
!4064 = distinct !DISubprogram(name: "gap_advertisements_set_params", scope: !3, file: !3, line: 5367, type: !4065, isLocal: false, isDefinition: true, scopeLine: 5369, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !328, !328, !311, !311, !441, !311, !311}
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4068 = !DILocalVariable(name: "adv_int_min", arg: 1, scope: !4064, file: !3, line: 5367, type: !328)
!4069 = !DILocalVariable(name: "adv_int_max", arg: 2, scope: !4064, file: !3, line: 5367, type: !328)
!4070 = !DILocalVariable(name: "adv_type", arg: 3, scope: !4064, file: !3, line: 5367, type: !311)
!4071 = !DILocalVariable(name: "direct_address_typ", arg: 4, scope: !4064, file: !3, line: 5368, type: !311)
!4072 = !DILocalVariable(name: "direct_address", arg: 5, scope: !4064, file: !3, line: 5368, type: !441)
!4073 = !DILocalVariable(name: "channel_map", arg: 6, scope: !4064, file: !3, line: 5368, type: !311)
!4074 = !DILocalVariable(name: "filter_policy", arg: 7, scope: !4064, file: !3, line: 5368, type: !311)
!4075 = !DILocation(line: 5367, column: 45, scope: !4064)
!4076 = !DILocation(line: 5367, column: 67, scope: !4064)
!4077 = !DILocation(line: 5367, column: 88, scope: !4064)
!4078 = !DILocation(line: 5368, column: 44, scope: !4064)
!4079 = !DILocation(line: 5368, column: 74, scope: !4064)
!4080 = !DILocation(line: 5368, column: 98, scope: !4064)
!4081 = !DILocation(line: 5368, column: 119, scope: !4064)
!4082 = !DILocation(line: 5370, column: 5, scope: !4064)
!4083 = !DILocation(line: 5372, column: 1, scope: !4064)
!4084 = distinct !DISubprogram(name: "reset_PK_cb_register", scope: !3, file: !3, line: 5376, type: !4085, isLocal: false, isDefinition: true, scopeLine: 5377, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4090)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !4087}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 32)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !570}
!4090 = !{!4091}
!4091 = !DILocalVariable(name: "reset_pk", arg: 1, scope: !4084, file: !3, line: 5376, type: !4087)
!4092 = !DILocation(line: 5376, column: 34, scope: !4084)
!4093 = !DILocation(line: 5378, column: 9, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 5378, column: 9)
!4095 = !DILocation(line: 5378, column: 9, scope: !4084)
!4096 = !DILocation(line: 5379, column: 17, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 5378, column: 17)
!4098 = !DILocation(line: 5379, column: 35, scope: !4097)
!4099 = !DILocation(line: 5380, column: 5, scope: !4097)
!4100 = !DILocation(line: 5381, column: 1, scope: !4084)
!4101 = distinct !DISubprogram(name: "reset_PK_cb_register_ext", scope: !3, file: !3, line: 5383, type: !4102, isLocal: false, isDefinition: true, scopeLine: 5384, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4107)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !4104}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 32)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !570, !428}
!4107 = !{!4108}
!4108 = !DILocalVariable(name: "reset_pk", arg: 1, scope: !4101, file: !3, line: 5383, type: !4104)
!4109 = !DILocation(line: 5383, column: 38, scope: !4101)
!4110 = !DILocation(line: 5385, column: 9, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 5385, column: 9)
!4112 = !DILocation(line: 5385, column: 9, scope: !4101)
!4113 = !DILocation(line: 5386, column: 17, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 5385, column: 17)
!4115 = !DILocation(line: 5386, column: 35, scope: !4114)
!4116 = !DILocation(line: 5387, column: 5, scope: !4114)
!4117 = !DILocation(line: 5388, column: 1, scope: !4101)
!4118 = distinct !DISubprogram(name: "sm_cmd_request_resume", scope: !3, file: !3, line: 5398, type: !4119, isLocal: false, isDefinition: true, scopeLine: 5399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4122)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4121}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!4122 = !{!4123}
!4123 = !DILocalVariable(name: "argv", arg: 1, scope: !4118, file: !3, line: 5398, type: !4121)
!4124 = !DILocalVariable(name: "ltk", scope: !4125, file: !3, line: 5112, type: !490)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 5109, column: 20)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 5107, column: 17)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 5106, column: 65)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 5106, column: 13)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 5105, column: 12)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 5103, column: 9)
!4131 = distinct !DISubprogram(name: "sm_request_pairing", scope: !3, file: !3, line: 5092, type: !3690, isLocal: true, isDefinition: true, scopeLine: 5093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4132)
!4132 = !{!4133, !4134, !4135, !4124}
!4133 = !DILocalVariable(name: "con_handle", arg: 1, scope: !4131, file: !3, line: 5092, type: !327)
!4134 = !DILocalVariable(name: "sm_conn", scope: !4131, file: !3, line: 5096, type: !454)
!4135 = !DILocalVariable(name: "ediv", scope: !4125, file: !3, line: 5111, type: !328)
!4136 = !DILocation(line: 5112, column: 26, scope: !4125, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 5406, column: 9, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 5404, column: 22)
!4139 = !DILocation(line: 5398, column: 33, scope: !4118)
!4140 = !DILocation(line: 5400, column: 5, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 5400, column: 5)
!4142 = !DILocation(line: 5400, column: 5, scope: !4118)
!4143 = !DILocation(line: 5404, column: 13, scope: !4118)
!4144 = !DILocation(line: 5404, column: 5, scope: !4118)
!4145 = !DILocation(line: 5406, column: 28, scope: !4138)
!4146 = !DILocation(line: 5092, column: 49, scope: !4131, inlinedAt: !4137)
!4147 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 5096, column: 32, scope: !4131, inlinedAt: !4137)
!4149 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !4148)
!4150 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !4148)
!4151 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !4148)
!4152 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !4148)
!4153 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !4148)
!4154 = !DILocation(line: 5096, column: 22, scope: !4131, inlinedAt: !4137)
!4155 = !DILocation(line: 5097, column: 9, scope: !4131, inlinedAt: !4137)
!4156 = !DILocation(line: 5103, column: 9, scope: !4130, inlinedAt: !4137)
!4157 = !DILocation(line: 5103, column: 9, scope: !4131, inlinedAt: !4137)
!4158 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !4159, file: !3, line: 5074, type: !454)
!4159 = distinct !DISubprogram(name: "sm_send_security_request_for_connection", scope: !3, file: !3, line: 5074, type: !1124, isLocal: true, isDefinition: true, scopeLine: 5075, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4160)
!4160 = !{!4158}
!4161 = !DILocation(line: 5074, column: 70, scope: !4159, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 5104, column: 9, scope: !4163, inlinedAt: !4137)
!4163 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 5103, column: 41)
!4164 = !DILocation(line: 5076, column: 5, scope: !4159, inlinedAt: !4162)
!4165 = !DILocation(line: 5079, column: 34, scope: !4166, inlinedAt: !4162)
!4166 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 5076, column: 39)
!4167 = !DILocation(line: 5080, column: 9, scope: !4166, inlinedAt: !4162)
!4168 = !DILocation(line: 5081, column: 9, scope: !4166, inlinedAt: !4162)
!4169 = !DILocation(line: 5106, column: 13, scope: !4129, inlinedAt: !4137)
!4170 = !DILocation(line: 5107, column: 17, scope: !4126, inlinedAt: !4137)
!4171 = !DILocation(line: 5107, column: 17, scope: !4127, inlinedAt: !4137)
!4172 = !DILocation(line: 5108, column: 42, scope: !4173, inlinedAt: !4137)
!4173 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 5107, column: 51)
!4174 = !DILocation(line: 5109, column: 13, scope: !4173, inlinedAt: !4137)
!4175 = !DILocation(line: 5111, column: 17, scope: !4125, inlinedAt: !4137)
!4176 = !DILocation(line: 5112, column: 17, scope: !4125, inlinedAt: !4137)
!4177 = !DILocation(line: 5113, column: 34, scope: !4125, inlinedAt: !4137)
!4178 = !DILocation(line: 5113, column: 17, scope: !4125, inlinedAt: !4137)
!4179 = !DILocation(line: 5115, column: 46, scope: !4180, inlinedAt: !4137)
!4180 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 5113, column: 55)
!4181 = !DILocation(line: 5116, column: 21, scope: !4180, inlinedAt: !4137)
!4182 = !DILocation(line: 5118, column: 58, scope: !4180, inlinedAt: !4137)
!4183 = !DILocation(line: 5111, column: 26, scope: !4125, inlinedAt: !4137)
!4184 = !DILocation(line: 5118, column: 21, scope: !4180, inlinedAt: !4137)
!4185 = !DILocation(line: 594, column: 36, scope: !3213, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 5119, column: 26, scope: !4187, inlinedAt: !4137)
!4187 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 5119, column: 25)
!4188 = !DILocation(line: 578, column: 32, scope: !2452, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 596, column: 12, scope: !3213, inlinedAt: !4186)
!4190 = !DILocation(line: 578, column: 42, scope: !2452, inlinedAt: !4189)
!4191 = !DILocation(line: 580, column: 9, scope: !2452, inlinedAt: !4189)
!4192 = !DILocation(line: 581, column: 19, scope: !2469, inlinedAt: !4189)
!4193 = !DILocation(line: 581, column: 5, scope: !2471, inlinedAt: !4189)
!4194 = !DILocation(line: 582, column: 13, scope: !2448, inlinedAt: !4189)
!4195 = !DILocation(line: 581, column: 29, scope: !2476, inlinedAt: !4189)
!4196 = !DILocation(line: 582, column: 13, scope: !2449, inlinedAt: !4189)
!4197 = !DILocation(line: 5119, column: 49, scope: !4198, inlinedAt: !4137)
!4198 = !DILexicalBlockFile(scope: !4187, file: !3, discriminator: 1)
!4199 = !DILocation(line: 5119, column: 46, scope: !4187, inlinedAt: !4137)
!4200 = !DILocation(line: 5125, column: 21, scope: !4180, inlinedAt: !4137)
!4201 = !DILocation(line: 5127, column: 30, scope: !4180, inlinedAt: !4137)
!4202 = !DILocation(line: 5127, column: 51, scope: !4180, inlinedAt: !4137)
!4203 = !{!870, !718, i64 4}
!4204 = !DILocation(line: 5128, column: 21, scope: !4180, inlinedAt: !4137)
!4205 = !DILocation(line: 5130, column: 13, scope: !4126, inlinedAt: !4137)
!4206 = !DILocation(line: 5132, column: 22, scope: !4207, inlinedAt: !4137)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 5131, column: 65)
!4208 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 5131, column: 20)
!4209 = !DILocation(line: 5132, column: 43, scope: !4207, inlinedAt: !4137)
!4210 = !DILocation(line: 5133, column: 9, scope: !4207, inlinedAt: !4137)
!4211 = !DILocation(line: 5135, column: 5, scope: !4131, inlinedAt: !4137)
!4212 = !DILocation(line: 5136, column: 1, scope: !4131, inlinedAt: !4137)
!4213 = !DILocation(line: 5411, column: 1, scope: !4118)
!4214 = distinct !DISubprogram(name: "sm_api_request_pairing", scope: !3, file: !3, line: 5418, type: !4215, isLocal: false, isDefinition: true, scopeLine: 5419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!2044, !327}
!4217 = !{!4218, !4219}
!4218 = !DILocalVariable(name: "con_handle", arg: 1, scope: !4214, file: !3, line: 5418, type: !327)
!4219 = !DILocalVariable(name: "sm_conn", scope: !4214, file: !3, line: 5422, type: !454)
!4220 = !DILocation(line: 5418, column: 46, scope: !4214)
!4221 = !DILocation(line: 5420, column: 5, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 5420, column: 5)
!4223 = !DILocation(line: 5420, column: 5, scope: !4214)
!4224 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 5422, column: 32, scope: !4214)
!4226 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !4225)
!4227 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !4225)
!4228 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !4225)
!4229 = !DILocation(line: 5423, column: 9, scope: !4214)
!4230 = !DILocation(line: 5427, column: 81, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 5427, column: 9)
!4232 = !DILocation(line: 5427, column: 14, scope: !4231)
!4233 = !DILocation(line: 5427, column: 11, scope: !4231)
!4234 = !DILocation(line: 5428, column: 9, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 5427, column: 94)
!4236 = !DILocation(line: 5431, column: 1, scope: !4237)
!4237 = !DILexicalBlockFile(scope: !4214, file: !3, discriminator: 1)
!4238 = distinct !DISubprogram(name: "sm_d1_d_prime", scope: !3, file: !3, line: 764, type: !4239, isLocal: true, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4241)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !328, !328, !441}
!4241 = !{!4242, !4243, !4244}
!4242 = !DILocalVariable(name: "d", arg: 1, scope: !4238, file: !3, line: 764, type: !328)
!4243 = !DILocalVariable(name: "r", arg: 2, scope: !4238, file: !3, line: 764, type: !328)
!4244 = !DILocalVariable(name: "d1_prime", arg: 3, scope: !4238, file: !3, line: 764, type: !441)
!4245 = !DILocation(line: 764, column: 36, scope: !4238)
!4246 = !DILocation(line: 764, column: 48, scope: !4238)
!4247 = !DILocation(line: 764, column: 60, scope: !4238)
!4248 = !DILocation(line: 767, column: 5, scope: !4238)
!4249 = !DILocation(line: 768, column: 5, scope: !4238)
!4250 = !DILocation(line: 769, column: 5, scope: !4238)
!4251 = !DILocation(line: 770, column: 1, scope: !4238)
!4252 = distinct !DISubprogram(name: "sm_aes128_start", scope: !3, file: !3, line: 720, type: !4253, isLocal: true, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !441, !441, !319}
!4255 = !{!4256, !4257, !4258, !4259, !4260}
!4256 = !DILocalVariable(name: "key", arg: 1, scope: !4252, file: !3, line: 720, type: !441)
!4257 = !DILocalVariable(name: "plaintext", arg: 2, scope: !4252, file: !3, line: 720, type: !441)
!4258 = !DILocalVariable(name: "context", arg: 3, scope: !4252, file: !3, line: 720, type: !319)
!4259 = !DILocalVariable(name: "key_flipped", scope: !4252, file: !3, line: 743, type: !490)
!4260 = !DILocalVariable(name: "plaintext_flipped", scope: !4252, file: !3, line: 743, type: !490)
!4261 = !DILocation(line: 720, column: 38, scope: !4252)
!4262 = !DILocation(line: 720, column: 52, scope: !4252)
!4263 = !DILocation(line: 720, column: 69, scope: !4252)
!4264 = !DILocation(line: 722, column: 5, scope: !4252)
!4265 = !DILocation(line: 722, column: 13, scope: !4252)
!4266 = !DILocation(line: 722, column: 29, scope: !4252)
!4267 = !DILocation(line: 723, column: 13, scope: !4252)
!4268 = !DILocation(line: 723, column: 31, scope: !4252)
!4269 = !DILocation(line: 743, column: 5, scope: !4252)
!4270 = !DILocation(line: 743, column: 14, scope: !4252)
!4271 = !DILocation(line: 743, column: 27, scope: !4252)
!4272 = !DILocation(line: 744, column: 5, scope: !4252)
!4273 = !DILocation(line: 745, column: 5, scope: !4252)
!4274 = !DILocation(line: 747, column: 5, scope: !4252)
!4275 = !DILocation(line: 749, column: 1, scope: !4252)
!4276 = distinct !DISubprogram(name: "sm_address_resolution_handle_event", scope: !3, file: !3, line: 1539, type: !4277, isLocal: true, isDefinition: true, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4280)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{null, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_typedef, name: "address_resolution_event_t", file: !3, line: 204, baseType: !255)
!4280 = !{!4281, !4282, !4283, !4284, !4285, !4286, !4287}
!4281 = !DILocalVariable(name: "event", arg: 1, scope: !4276, file: !3, line: 1539, type: !4279)
!4282 = !DILocalVariable(name: "matched_device_id", scope: !4276, file: !3, line: 1543, type: !370)
!4283 = !DILocalVariable(name: "mode", scope: !4276, file: !3, line: 1544, type: !550)
!4284 = !DILocalVariable(name: "context", scope: !4276, file: !3, line: 1545, type: !319)
!4285 = !DILocalVariable(name: "con_handle", scope: !4276, file: !3, line: 1551, type: !327)
!4286 = !DILocalVariable(name: "sm_connection", scope: !4276, file: !3, line: 1553, type: !454)
!4287 = !DILocalVariable(name: "ltk", scope: !4276, file: !3, line: 1555, type: !490)
!4288 = !DILocation(line: 1539, column: 75, scope: !4276)
!4289 = !DILocation(line: 1543, column: 29, scope: !4276)
!4290 = !DILocation(line: 1543, column: 37, scope: !4276)
!4291 = !DILocation(line: 1543, column: 9, scope: !4276)
!4292 = !DILocation(line: 1544, column: 46, scope: !4276)
!4293 = !DILocation(line: 1544, column: 31, scope: !4276)
!4294 = !DILocation(line: 1545, column: 29, scope: !4276)
!4295 = !DILocation(line: 1548, column: 40, scope: !4276)
!4296 = !DILocation(line: 1549, column: 43, scope: !4276)
!4297 = !DILocation(line: 1550, column: 40, scope: !4276)
!4298 = !DILocation(line: 1551, column: 22, scope: !4276)
!4299 = !DILocation(line: 1555, column: 5, scope: !4276)
!4300 = !DILocation(line: 1555, column: 14, scope: !4276)
!4301 = !DILocation(line: 1557, column: 5, scope: !4276)
!4302 = !DILocation(line: 1553, column: 22, scope: !4276)
!4303 = !DILocation(line: 1562, column: 37, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1557, column: 19)
!4305 = !DILocation(line: 1563, column: 9, scope: !4304)
!4306 = !DILocation(line: 1565, column: 28, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 1563, column: 24)
!4308 = !DILocation(line: 1565, column: 48, scope: !4307)
!4309 = !DILocation(line: 1566, column: 28, scope: !4307)
!4310 = !DILocation(line: 1566, column: 43, scope: !4307)
!4311 = !DILocation(line: 1568, column: 32, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 1568, column: 17)
!4313 = !DILocation(line: 1568, column: 17, scope: !4312)
!4314 = !DILocation(line: 1568, column: 17, scope: !4307)
!4315 = !DILocation(line: 1570, column: 36, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1570, column: 21)
!4317 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 1568, column: 41)
!4318 = !DILocation(line: 1570, column: 52, scope: !4316)
!4319 = !DILocation(line: 1570, column: 21, scope: !4317)
!4320 = !DILocation(line: 1571, column: 52, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 1570, column: 93)
!4322 = !DILocation(line: 1572, column: 17, scope: !4321)
!4323 = !DILocation(line: 1576, column: 33, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 1576, column: 17)
!4325 = !DILocation(line: 1576, column: 18, scope: !4324)
!4326 = !DILocation(line: 1576, column: 54, scope: !4324)
!4327 = !DILocation(line: 1576, column: 73, scope: !4328)
!4328 = !DILexicalBlockFile(scope: !4324, file: !3, discriminator: 1)
!4329 = !DILocation(line: 1576, column: 58, scope: !4328)
!4330 = !DILocation(line: 1576, column: 17, scope: !4331)
!4331 = !DILexicalBlockFile(scope: !4307, file: !3, discriminator: 1)
!4332 = !DILocation(line: 1579, column: 57, scope: !4307)
!4333 = !DILocation(line: 1580, column: 49, scope: !4307)
!4334 = !DILocation(line: 1581, column: 13, scope: !4307)
!4335 = !DILocation(line: 594, column: 36, scope: !3213, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 1582, column: 18, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 1582, column: 17)
!4338 = !DILocation(line: 578, column: 32, scope: !2452, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 596, column: 12, scope: !3213, inlinedAt: !4336)
!4340 = !DILocation(line: 578, column: 42, scope: !2452, inlinedAt: !4339)
!4341 = !DILocation(line: 580, column: 9, scope: !2452, inlinedAt: !4339)
!4342 = !DILocation(line: 581, column: 19, scope: !2469, inlinedAt: !4339)
!4343 = !DILocation(line: 581, column: 5, scope: !2471, inlinedAt: !4339)
!4344 = !DILocation(line: 582, column: 13, scope: !2448, inlinedAt: !4339)
!4345 = !DILocation(line: 581, column: 29, scope: !2476, inlinedAt: !4339)
!4346 = !DILocation(line: 582, column: 13, scope: !2449, inlinedAt: !4339)
!4347 = !DILocation(line: 1588, column: 13, scope: !4307)
!4348 = !DILocation(line: 1590, column: 28, scope: !4307)
!4349 = !DILocation(line: 1590, column: 48, scope: !4307)
!4350 = !DILocation(line: 1591, column: 32, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 1591, column: 17)
!4352 = !DILocation(line: 1591, column: 17, scope: !4351)
!4353 = !DILocation(line: 1591, column: 17, scope: !4307)
!4354 = !DILocation(line: 1593, column: 36, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 1593, column: 21)
!4356 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1591, column: 41)
!4357 = !DILocation(line: 1593, column: 52, scope: !4355)
!4358 = !DILocation(line: 1593, column: 21, scope: !4356)
!4359 = !DILocation(line: 1594, column: 52, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 1593, column: 93)
!4361 = !DILocation(line: 1595, column: 17, scope: !4360)
!4362 = !DILocation(line: 1599, column: 33, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 1599, column: 17)
!4364 = !DILocation(line: 1599, column: 18, scope: !4363)
!4365 = !DILocation(line: 1599, column: 54, scope: !4363)
!4366 = !DILocation(line: 1599, column: 73, scope: !4367)
!4367 = !DILexicalBlockFile(scope: !4363, file: !3, discriminator: 1)
!4368 = !DILocation(line: 1599, column: 58, scope: !4367)
!4369 = !DILocation(line: 1599, column: 17, scope: !4331)
!4370 = !DILocation(line: 1602, column: 57, scope: !4307)
!4371 = !DILocation(line: 1603, column: 49, scope: !4307)
!4372 = !DILocation(line: 1604, column: 28, scope: !4307)
!4373 = !DILocation(line: 1604, column: 44, scope: !4307)
!4374 = !DILocation(line: 1606, column: 13, scope: !4307)
!4375 = !DILocation(line: 1613, column: 5, scope: !4276)
!4376 = !DILocation(line: 1615, column: 83, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1613, column: 20)
!4378 = !DILocation(line: 1615, column: 91, scope: !4377)
!4379 = !DILocation(line: 1615, column: 124, scope: !4377)
!4380 = !DILocation(line: 1615, column: 163, scope: !4377)
!4381 = !DILocation(line: 1615, column: 9, scope: !4377)
!4382 = !DILocation(line: 1616, column: 9, scope: !4377)
!4383 = !DILocation(line: 1618, column: 79, scope: !4377)
!4384 = !DILocation(line: 1618, column: 87, scope: !4377)
!4385 = !DILocation(line: 1618, column: 120, scope: !4377)
!4386 = !DILocation(line: 1618, column: 9, scope: !4377)
!4387 = !DILocation(line: 1619, column: 9, scope: !4377)
!4388 = !DILocation(line: 1621, column: 1, scope: !4276)
!4389 = distinct !DISubprogram(name: "sm_notify_client_process", scope: !3, file: !3, line: 972, type: !4390, isLocal: true, isDefinition: true, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !311, !327, !311, !441, !390}
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4398}
!4393 = !DILocalVariable(name: "type", arg: 1, scope: !4389, file: !3, line: 972, type: !311)
!4394 = !DILocalVariable(name: "con_handle", arg: 2, scope: !4389, file: !3, line: 972, type: !327)
!4395 = !DILocalVariable(name: "addr_type", arg: 3, scope: !4389, file: !3, line: 972, type: !311)
!4396 = !DILocalVariable(name: "address", arg: 4, scope: !4389, file: !3, line: 972, type: !441)
!4397 = !DILocalVariable(name: "tag", arg: 5, scope: !4389, file: !3, line: 972, type: !390)
!4398 = !DILocalVariable(name: "event", scope: !4389, file: !3, line: 975, type: !4399)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 128, elements: !2294)
!4400 = !DILocation(line: 972, column: 46, scope: !4389)
!4401 = !DILocation(line: 975, column: 5, scope: !4389)
!4402 = !DILocation(line: 975, column: 14, scope: !4389)
!4403 = !DILocation(line: 931, column: 42, scope: !3731, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 976, column: 5, scope: !4389)
!4405 = !DILocation(line: 931, column: 53, scope: !3731, inlinedAt: !4404)
!4406 = !DILocation(line: 931, column: 73, scope: !3731, inlinedAt: !4404)
!4407 = !DILocation(line: 931, column: 96, scope: !3731, inlinedAt: !4404)
!4408 = !DILocation(line: 931, column: 116, scope: !3731, inlinedAt: !4404)
!4409 = !DILocation(line: 931, column: 137, scope: !3731, inlinedAt: !4404)
!4410 = !DILocation(line: 933, column: 14, scope: !3731, inlinedAt: !4404)
!4411 = !DILocation(line: 934, column: 5, scope: !3731, inlinedAt: !4404)
!4412 = !DILocation(line: 934, column: 14, scope: !3731, inlinedAt: !4404)
!4413 = !DILocation(line: 935, column: 5, scope: !3731, inlinedAt: !4404)
!4414 = !DILocation(line: 936, column: 5, scope: !3731, inlinedAt: !4404)
!4415 = !DILocation(line: 936, column: 14, scope: !3731, inlinedAt: !4404)
!4416 = !DILocation(line: 937, column: 31, scope: !3731, inlinedAt: !4404)
!4417 = !DILocation(line: 937, column: 5, scope: !3731, inlinedAt: !4404)
!4418 = !DILocation(line: 977, column: 5, scope: !4389)
!4419 = !DILocation(line: 978, column: 5, scope: !4389)
!4420 = !DILocation(line: 979, column: 1, scope: !4389)
!4421 = distinct !DISubprogram(name: "sm_init_setup", scope: !3, file: !3, line: 1448, type: !1124, isLocal: true, isDefinition: true, scopeLine: 1449, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4422)
!4422 = !{!4423, !4424, !4425, !4427, !4430}
!4423 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !4421, file: !3, line: 1448, type: !454)
!4424 = !DILocalVariable(name: "have_oob_data", scope: !4421, file: !3, line: 1456, type: !370)
!4425 = !DILocalVariable(name: "local_packet", scope: !4421, file: !3, line: 1461, type: !4426)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!4427 = !DILocalVariable(name: "key_distribution_flags", scope: !4428, file: !3, line: 1475, type: !370)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 1468, column: 12)
!4429 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 1462, column: 9)
!4430 = !DILocalVariable(name: "auth_req", scope: !4421, file: !3, line: 1480, type: !311)
!4431 = !DILocation(line: 1448, column: 44, scope: !4421)
!4432 = !DILocation(line: 1452, column: 41, scope: !4421)
!4433 = !DILocation(line: 1452, column: 5, scope: !4421)
!4434 = !DILocation(line: 1452, column: 12, scope: !4421)
!4435 = !DILocation(line: 1452, column: 30, scope: !4421)
!4436 = !DILocation(line: 1453, column: 5, scope: !4421)
!4437 = !DILocation(line: 1456, column: 9, scope: !4421)
!4438 = !DILocation(line: 1457, column: 17, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 1457, column: 9)
!4440 = !DILocation(line: 1457, column: 9, scope: !4439)
!4441 = !DILocation(line: 1457, column: 9, scope: !4421)
!4442 = !DILocation(line: 1458, column: 58, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 1457, column: 34)
!4444 = !DILocation(line: 1458, column: 103, scope: !4443)
!4445 = !DILocation(line: 1458, column: 25, scope: !4443)
!4446 = !DILocation(line: 1459, column: 5, scope: !4443)
!4447 = !DILocation(line: 1462, column: 9, scope: !4429)
!4448 = !DILocation(line: 1471, column: 41, scope: !4428)
!4449 = !DILocation(line: 1462, column: 9, scope: !4421)
!4450 = !DILocation(line: 1464, column: 32, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 1462, column: 41)
!4452 = !DILocation(line: 1461, column: 26, scope: !4421)
!4453 = !DILocation(line: 1465, column: 60, scope: !4451)
!4454 = !DILocation(line: 1465, column: 76, scope: !4451)
!4455 = !DILocation(line: 1465, column: 9, scope: !4451)
!4456 = !DILocation(line: 1466, column: 42, scope: !4451)
!4457 = !DILocation(line: 1466, column: 9, scope: !4451)
!4458 = !DILocation(line: 1466, column: 16, scope: !4451)
!4459 = !DILocation(line: 1466, column: 31, scope: !4451)
!4460 = !DILocation(line: 1467, column: 9, scope: !4451)
!4461 = !DILocation(line: 1468, column: 5, scope: !4451)
!4462 = !DILocation(line: 1470, column: 32, scope: !4428)
!4463 = !DILocation(line: 1471, column: 60, scope: !4428)
!4464 = !DILocation(line: 1471, column: 76, scope: !4428)
!4465 = !DILocation(line: 1471, column: 9, scope: !4428)
!4466 = !DILocation(line: 1472, column: 42, scope: !4428)
!4467 = !DILocation(line: 1472, column: 9, scope: !4428)
!4468 = !DILocation(line: 1472, column: 16, scope: !4428)
!4469 = !DILocation(line: 1472, column: 31, scope: !4428)
!4470 = !DILocation(line: 1473, column: 9, scope: !4428)
!4471 = !DILocation(line: 1424, column: 9, scope: !1323, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 1475, column: 38, scope: !4428)
!4473 = !DILocation(line: 1425, column: 17, scope: !1328, inlinedAt: !4472)
!4474 = !DILocation(line: 1425, column: 29, scope: !1328, inlinedAt: !4472)
!4475 = !DILocation(line: 1425, column: 9, scope: !1323, inlinedAt: !4472)
!4476 = !DILocation(line: 1476, column: 58, scope: !4428)
!4477 = !DILocation(line: 1476, column: 9, scope: !4428)
!4478 = !DILocation(line: 1477, column: 58, scope: !4428)
!4479 = !DILocation(line: 1477, column: 9, scope: !4428)
!4480 = !DILocation(line: 1480, column: 24, scope: !4421)
!4481 = !DILocation(line: 1480, column: 32, scope: !4421)
!4482 = !DILocation(line: 1480, column: 13, scope: !4421)
!4483 = !DILocation(line: 1493, column: 41, scope: !4421)
!4484 = !DILocation(line: 1493, column: 64, scope: !4421)
!4485 = !DILocation(line: 1493, column: 5, scope: !4421)
!4486 = !DILocation(line: 1494, column: 5, scope: !4421)
!4487 = !DILocation(line: 1495, column: 5, scope: !4421)
!4488 = !DILocation(line: 1496, column: 66, scope: !4421)
!4489 = !DILocation(line: 1496, column: 74, scope: !4421)
!4490 = !DILocation(line: 1496, column: 5, scope: !4421)
!4491 = !DILocation(line: 1497, column: 1, scope: !4421)
!4492 = distinct !DISubprogram(name: "sm_stk_generation_init", scope: !3, file: !3, line: 1499, type: !4493, isLocal: true, isDefinition: true, scopeLine: 1500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4495)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!370, !454}
!4495 = !{!4496, !4497, !4498}
!4496 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !4492, file: !3, line: 1499, type: !454)
!4497 = !DILocalVariable(name: "remote_packet", scope: !4492, file: !3, line: 1502, type: !4426)
!4498 = !DILocalVariable(name: "remote_key_request", scope: !4492, file: !3, line: 1503, type: !370)
!4499 = !DILocation(line: 1499, column: 52, scope: !4492)
!4500 = !DILocation(line: 1504, column: 9, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1504, column: 9)
!4502 = !DILocation(line: 1504, column: 9, scope: !4492)
!4503 = !DILocation(line: 1506, column: 38, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 1504, column: 41)
!4505 = !DILocation(line: 1502, column: 26, scope: !4492)
!4506 = !DILocation(line: 1507, column: 79, scope: !4504)
!4507 = !DILocation(line: 1507, column: 30, scope: !4504)
!4508 = !DILocation(line: 1508, column: 5, scope: !4504)
!4509 = !DILocation(line: 1510, column: 38, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 1508, column: 12)
!4511 = !DILocation(line: 1511, column: 79, scope: !4510)
!4512 = !DILocation(line: 1511, column: 30, scope: !4510)
!4513 = !DILocation(line: 1515, column: 127, scope: !4492)
!4514 = !DILocation(line: 1515, column: 81, scope: !4492)
!4515 = !DILocalVariable(name: "other", arg: 1, scope: !4516, file: !3, line: 4151, type: !370)
!4516 = distinct !DISubprogram(name: "sm_calc_actual_encryption_key_size", scope: !3, file: !3, line: 4151, type: !4517, isLocal: true, isDefinition: true, scopeLine: 4152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!370, !370}
!4519 = !{!4515}
!4520 = !DILocation(line: 4151, column: 58, scope: !4516, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 1515, column: 46, scope: !4522)
!4522 = !DILexicalBlockFile(scope: !4492, file: !3, discriminator: 1)
!4523 = !DILocation(line: 4153, column: 25, scope: !4524, inlinedAt: !4521)
!4524 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 4153, column: 9)
!4525 = !DILocation(line: 4153, column: 15, scope: !4524, inlinedAt: !4521)
!4526 = !DILocation(line: 4153, column: 9, scope: !4516, inlinedAt: !4521)
!4527 = !DILocation(line: 1515, column: 14, scope: !4492)
!4528 = !DILocation(line: 1515, column: 44, scope: !4492)
!4529 = !DILocation(line: 1516, column: 9, scope: !4492)
!4530 = !DILocation(line: 4156, column: 25, scope: !4531, inlinedAt: !4521)
!4531 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 4156, column: 9)
!4532 = !DILocation(line: 4156, column: 17, scope: !4531, inlinedAt: !4521)
!4533 = !DILocation(line: 4156, column: 15, scope: !4531, inlinedAt: !4521)
!4534 = !DILocation(line: 4157, column: 9, scope: !4535, inlinedAt: !4521)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 4156, column: 53)
!4536 = !DILocation(line: 1515, column: 46, scope: !4492)
!4537 = !DILocation(line: 1516, column: 48, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1516, column: 9)
!4539 = !DILocation(line: 1014, column: 12, scope: !4540, inlinedAt: !4545)
!4540 = distinct !DISubprogram(name: "sm_setup_tk", scope: !3, file: !3, line: 1010, type: !576, isLocal: true, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4541)
!4541 = !{!4542}
!4542 = !DILocalVariable(name: "generation_method", scope: !4540, file: !3, line: 1061, type: !4543)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 32)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 160, elements: !3050)
!4545 = distinct !DILocation(line: 1521, column: 5, scope: !4492)
!4546 = !DILocation(line: 1014, column: 37, scope: !4540, inlinedAt: !4545)
!4547 = !DILocation(line: 1023, column: 12, scope: !4540, inlinedAt: !4545)
!4548 = !DILocation(line: 1023, column: 38, scope: !4540, inlinedAt: !4545)
!4549 = !DILocation(line: 1033, column: 45, scope: !4550, inlinedAt: !4545)
!4550 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1033, column: 9)
!4551 = !DILocation(line: 1033, column: 9, scope: !4550, inlinedAt: !4545)
!4552 = !DILocation(line: 1034, column: 9, scope: !4550, inlinedAt: !4545)
!4553 = !DILocation(line: 1034, column: 49, scope: !4554, inlinedAt: !4545)
!4554 = !DILexicalBlockFile(scope: !4550, file: !3, discriminator: 1)
!4555 = !DILocation(line: 1034, column: 13, scope: !4554, inlinedAt: !4545)
!4556 = !DILocation(line: 1033, column: 9, scope: !4557, inlinedAt: !4545)
!4557 = !DILexicalBlockFile(scope: !4540, file: !3, discriminator: 1)
!4558 = !DILocation(line: 1037, column: 41, scope: !4559, inlinedAt: !4545)
!4559 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 1034, column: 68)
!4560 = !DILocation(line: 4193, column: 5, scope: !4561, inlinedAt: !4562)
!4561 = distinct !DISubprogram(name: "sm_validate_stk_generation_method", scope: !3, file: !3, line: 4190, type: !854, isLocal: true, isDefinition: true, scopeLine: 4191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!4562 = distinct !DILocation(line: 1525, column: 10, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1525, column: 9)
!4564 = !DILocation(line: 1044, column: 11, scope: !4565, inlinedAt: !4545)
!4565 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1044, column: 9)
!4566 = !DILocation(line: 1044, column: 60, scope: !4565, inlinedAt: !4545)
!4567 = !DILocation(line: 1044, column: 90, scope: !4565, inlinedAt: !4545)
!4568 = !DILocation(line: 1045, column: 9, scope: !4565, inlinedAt: !4545)
!4569 = !DILocation(line: 1045, column: 45, scope: !4570, inlinedAt: !4545)
!4570 = !DILexicalBlockFile(scope: !4565, file: !3, discriminator: 1)
!4571 = !DILocation(line: 1045, column: 14, scope: !4570, inlinedAt: !4545)
!4572 = !DILocation(line: 1045, column: 63, scope: !4570, inlinedAt: !4545)
!4573 = !DILocation(line: 1045, column: 93, scope: !4570, inlinedAt: !4545)
!4574 = !DILocation(line: 1044, column: 9, scope: !4557, inlinedAt: !4545)
!4575 = !DILocation(line: 602, column: 9, scope: !1083, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 1051, column: 5, scope: !4540, inlinedAt: !4545)
!4577 = !DILocation(line: 603, column: 5, scope: !1088, inlinedAt: !4576)
!4578 = !DILocation(line: 604, column: 25, scope: !1091, inlinedAt: !4576)
!4579 = !DILocation(line: 1054, column: 10, scope: !4580, inlinedAt: !4545)
!4580 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1054, column: 9)
!4581 = !DILocation(line: 1054, column: 64, scope: !4580, inlinedAt: !4545)
!4582 = !DILocation(line: 1054, column: 98, scope: !4580, inlinedAt: !4545)
!4583 = !DILocation(line: 1054, column: 138, scope: !4584, inlinedAt: !4545)
!4584 = !DILexicalBlockFile(scope: !4580, file: !3, discriminator: 1)
!4585 = !DILocation(line: 1054, column: 102, scope: !4584, inlinedAt: !4545)
!4586 = !DILocation(line: 1054, column: 156, scope: !4584, inlinedAt: !4545)
!4587 = !DILocation(line: 1054, column: 9, scope: !4557, inlinedAt: !4545)
!4588 = !DILocation(line: 1069, column: 39, scope: !4540, inlinedAt: !4545)
!4589 = !DILocation(line: 1069, column: 37, scope: !4540, inlinedAt: !4545)
!4590 = !DILocation(line: 4195, column: 25, scope: !4591, inlinedAt: !4562)
!4591 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 4193, column: 46)
!4592 = !DILocation(line: 4195, column: 9, scope: !4591, inlinedAt: !4562)
!4593 = !DILocation(line: 4199, column: 25, scope: !4591, inlinedAt: !4562)
!4594 = !DILocation(line: 4199, column: 96, scope: !4591, inlinedAt: !4562)
!4595 = !DILocation(line: 4199, column: 9, scope: !4591, inlinedAt: !4562)
!4596 = !DILocation(line: 4201, column: 25, scope: !4591, inlinedAt: !4562)
!4597 = !DILocation(line: 4201, column: 92, scope: !4591, inlinedAt: !4562)
!4598 = !DILocation(line: 4201, column: 9, scope: !4591, inlinedAt: !4562)
!4599 = !DILocation(line: 4203, column: 25, scope: !4591, inlinedAt: !4562)
!4600 = !DILocation(line: 4203, column: 107, scope: !4591, inlinedAt: !4562)
!4601 = !DILocation(line: 4203, column: 9, scope: !4591, inlinedAt: !4562)
!4602 = !DILocation(line: 1525, column: 10, scope: !4563)
!4603 = !DILocation(line: 1525, column: 9, scope: !4492)
!4604 = !DILocation(line: 1092, column: 47, scope: !1353, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 1530, column: 5, scope: !4492)
!4606 = !DILocation(line: 1094, column: 12, scope: !1353, inlinedAt: !4605)
!4607 = !DILocation(line: 1094, column: 45, scope: !1353, inlinedAt: !4605)
!4608 = !DILocation(line: 1075, column: 54, scope: !1363, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 1095, column: 43, scope: !1353, inlinedAt: !4605)
!4610 = !DILocation(line: 1077, column: 9, scope: !1363, inlinedAt: !4609)
!4611 = !DILocation(line: 1078, column: 9, scope: !1372, inlinedAt: !4609)
!4612 = !DILocation(line: 1078, column: 17, scope: !1372, inlinedAt: !4609)
!4613 = !DILocation(line: 1078, column: 9, scope: !1363, inlinedAt: !4609)
!4614 = !DILocation(line: 1082, column: 17, scope: !1376, inlinedAt: !4609)
!4615 = !DILocation(line: 1084, column: 15, scope: !1378, inlinedAt: !4609)
!4616 = !DILocation(line: 1082, column: 9, scope: !1363, inlinedAt: !4609)
!4617 = !DILocation(line: 1086, column: 9, scope: !1363, inlinedAt: !4609)
!4618 = !DILocation(line: 1095, column: 43, scope: !1353, inlinedAt: !4605)
!4619 = !DILocation(line: 1095, column: 12, scope: !1353, inlinedAt: !4605)
!4620 = !DILocation(line: 1095, column: 41, scope: !1353, inlinedAt: !4605)
!4621 = !DILocation(line: 1096, column: 12, scope: !1353, inlinedAt: !4605)
!4622 = !DILocation(line: 1096, column: 46, scope: !1353, inlinedAt: !4605)
!4623 = !DILocation(line: 1534, column: 14, scope: !4492)
!4624 = !DILocation(line: 1534, column: 42, scope: !4492)
!4625 = !DILocation(line: 1536, column: 5, scope: !4492)
!4626 = !DILocation(line: 1537, column: 1, scope: !4492)
!4627 = distinct !DISubprogram(name: "sm_timeout_start", scope: !3, file: !3, line: 649, type: !1124, isLocal: true, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4628)
!4628 = !{!4629}
!4629 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !4627, file: !3, line: 649, type: !454)
!4630 = !DILocation(line: 649, column: 47, scope: !4627)
!4631 = !DILocation(line: 646, column: 36, scope: !4632, inlinedAt: !4633)
!4632 = distinct !DISubprogram(name: "sm_timeout_stop", scope: !3, file: !3, line: 644, type: !576, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!4633 = distinct !DILocation(line: 651, column: 5, scope: !4627)
!4634 = !DILocation(line: 646, column: 43, scope: !4632, inlinedAt: !4633)
!4635 = !DILocation(line: 646, column: 5, scope: !4632, inlinedAt: !4633)
!4636 = !DILocation(line: 652, column: 13, scope: !4627)
!4637 = !DILocation(line: 652, column: 5, scope: !4627)
!4638 = !DILocation(line: 653, column: 23, scope: !4627)
!4639 = !DILocation(line: 653, column: 40, scope: !4627)
!4640 = !DILocation(line: 654, column: 23, scope: !4627)
!4641 = !DILocation(line: 654, column: 31, scope: !4627)
!4642 = !{!771, !717, i64 12}
!4643 = !DILocation(line: 655, column: 23, scope: !4627)
!4644 = !DILocation(line: 655, column: 31, scope: !4627)
!4645 = !{!771, !717, i64 16}
!4646 = !DILocation(line: 656, column: 31, scope: !4627)
!4647 = !DILocation(line: 656, column: 5, scope: !4627)
!4648 = !DILocation(line: 657, column: 1, scope: !4627)
!4649 = distinct !DISubprogram(name: "sm_done_for_handle", scope: !3, file: !3, line: 1413, type: !3690, isLocal: true, isDefinition: true, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4650)
!4650 = !{!4651}
!4651 = !DILocalVariable(name: "con_handle", arg: 1, scope: !4649, file: !3, line: 1413, type: !327)
!4652 = !DILocation(line: 1413, column: 49, scope: !4649)
!4653 = !DILocation(line: 1415, column: 9, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 1415, column: 9)
!4655 = !DILocation(line: 1415, column: 17, scope: !4654)
!4656 = !DILocation(line: 1415, column: 45, scope: !4654)
!4657 = !DILocation(line: 1415, column: 9, scope: !4649)
!4658 = !DILocation(line: 646, column: 43, scope: !4632, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 1416, column: 9, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 1415, column: 60)
!4661 = !DILocation(line: 646, column: 5, scope: !4632, inlinedAt: !4659)
!4662 = !DILocation(line: 1417, column: 9, scope: !4660)
!4663 = !DILocation(line: 1417, column: 17, scope: !4660)
!4664 = !DILocation(line: 1417, column: 45, scope: !4660)
!4665 = !DILocation(line: 1419, column: 5, scope: !4660)
!4666 = !DILocation(line: 1420, column: 1, scope: !4649)
!4667 = distinct !DISubprogram(name: "sm_set_timeout_disconnect", scope: !3, file: !3, line: 549, type: !4668, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{null, !390, !571, !430}
!4670 = !{!4671, !4672, !4673, !4674}
!4671 = !DILocalVariable(name: "con_handle", arg: 1, scope: !4667, file: !3, line: 549, type: !390)
!4672 = !DILocalVariable(name: "ms", arg: 2, scope: !4667, file: !3, line: 549, type: !571)
!4673 = !DILocalVariable(name: "reason", arg: 3, scope: !4667, file: !3, line: 549, type: !430)
!4674 = !DILocalVariable(name: "sm_conn", scope: !4667, file: !3, line: 551, type: !454)
!4675 = !DILocation(line: 549, column: 64, scope: !4667)
!4676 = !DILocation(line: 552, column: 44, scope: !4667)
!4677 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 552, column: 15, scope: !4667)
!4679 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !4678)
!4680 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !4678)
!4681 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !4678)
!4682 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !4678)
!4683 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !4678)
!4684 = !DILocation(line: 551, column: 22, scope: !4667)
!4685 = !DILocation(line: 553, column: 9, scope: !4667)
!4686 = !DILocation(line: 557, column: 18, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 557, column: 9)
!4688 = !DILocation(line: 557, column: 9, scope: !4687)
!4689 = !DILocation(line: 557, column: 9, scope: !4667)
!4690 = !DILocation(line: 558, column: 23, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 557, column: 33)
!4692 = !DILocation(line: 558, column: 9, scope: !4691)
!4693 = !DILocation(line: 559, column: 32, scope: !4691)
!4694 = !DILocation(line: 560, column: 5, scope: !4691)
!4695 = !DILocation(line: 563, column: 14, scope: !4667)
!4696 = !DILocation(line: 563, column: 32, scope: !4667)
!4697 = !{!870, !718, i64 46}
!4698 = !DILocation(line: 565, column: 50, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 564, column: 13)
!4700 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 564, column: 9)
!4701 = !DILocation(line: 565, column: 34, scope: !4699)
!4702 = !DILocation(line: 565, column: 32, scope: !4699)
!4703 = !DILocation(line: 569, column: 1, scope: !4667)
!4704 = !DILocation(line: 569, column: 1, scope: !4705)
!4705 = !DILexicalBlockFile(scope: !4667, file: !3, discriminator: 2)
!4706 = distinct !DISubprogram(name: "sm_pairing_packet_set_code", scope: !260, file: !260, line: 179, type: !4707, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4709)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !441, !311}
!4709 = !{!4710, !4711}
!4710 = !DILocalVariable(name: "packet", arg: 1, scope: !4706, file: !260, line: 179, type: !441)
!4711 = !DILocalVariable(name: "code", arg: 2, scope: !4706, file: !260, line: 179, type: !311)
!4712 = !DILocation(line: 179, column: 71, scope: !4706)
!4713 = !DILocation(line: 179, column: 87, scope: !4706)
!4714 = !DILocation(line: 181, column: 19, scope: !4706)
!4715 = !DILocation(line: 182, column: 5, scope: !4706)
!4716 = distinct !DISubprogram(name: "sm_pairing_packet_set_initiator_key_distribution", scope: !260, file: !260, line: 199, type: !4707, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4717)
!4717 = !{!4718, !4719}
!4718 = !DILocalVariable(name: "packet", arg: 1, scope: !4716, file: !260, line: 199, type: !441)
!4719 = !DILocalVariable(name: "initiator_key_distribution", arg: 2, scope: !4716, file: !260, line: 199, type: !311)
!4720 = !DILocation(line: 199, column: 93, scope: !4716)
!4721 = !DILocation(line: 199, column: 109, scope: !4716)
!4722 = !DILocation(line: 201, column: 9, scope: !4716)
!4723 = !DILocation(line: 201, column: 19, scope: !4716)
!4724 = !DILocation(line: 202, column: 5, scope: !4716)
!4725 = distinct !DISubprogram(name: "sm_pairing_packet_get_initiator_key_distribution", scope: !260, file: !260, line: 170, type: !4726, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4728)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!311, !441}
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "packet", arg: 1, scope: !4725, file: !260, line: 170, type: !441)
!4730 = !DILocation(line: 170, column: 96, scope: !4725)
!4731 = !DILocation(line: 172, column: 16, scope: !4725)
!4732 = !DILocation(line: 172, column: 9, scope: !4725)
!4733 = distinct !DISubprogram(name: "sm_pairing_packet_set_responder_key_distribution", scope: !260, file: !260, line: 203, type: !4707, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4734)
!4734 = !{!4735, !4736}
!4735 = !DILocalVariable(name: "packet", arg: 1, scope: !4733, file: !260, line: 203, type: !441)
!4736 = !DILocalVariable(name: "responder_key_distribution", arg: 2, scope: !4733, file: !260, line: 203, type: !311)
!4737 = !DILocation(line: 203, column: 93, scope: !4733)
!4738 = !DILocation(line: 203, column: 109, scope: !4733)
!4739 = !DILocation(line: 205, column: 9, scope: !4733)
!4740 = !DILocation(line: 205, column: 19, scope: !4733)
!4741 = !DILocation(line: 206, column: 5, scope: !4733)
!4742 = distinct !DISubprogram(name: "sm_pairing_packet_get_responder_key_distribution", scope: !260, file: !260, line: 174, type: !4726, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4743)
!4743 = !{!4744}
!4744 = !DILocalVariable(name: "packet", arg: 1, scope: !4742, file: !260, line: 174, type: !441)
!4745 = !DILocation(line: 174, column: 96, scope: !4742)
!4746 = !DILocation(line: 176, column: 16, scope: !4742)
!4747 = !DILocation(line: 176, column: 9, scope: !4742)
!4748 = distinct !DISubprogram(name: "sm_trigger_user_response", scope: !3, file: !3, line: 1358, type: !1124, isLocal: true, isDefinition: true, scopeLine: 1359, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4749)
!4749 = !{!4750}
!4750 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !4748, file: !3, line: 1358, type: !454)
!4751 = !DILocation(line: 1358, column: 55, scope: !4748)
!4752 = !DILocation(line: 1361, column: 5, scope: !4748)
!4753 = !DILocation(line: 1361, column: 12, scope: !4748)
!4754 = !DILocation(line: 1361, column: 29, scope: !4748)
!4755 = !DILocation(line: 1362, column: 20, scope: !4748)
!4756 = !DILocation(line: 1362, column: 5, scope: !4748)
!4757 = !DILocation(line: 1364, column: 13, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 1364, column: 13)
!4759 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1362, column: 46)
!4760 = !DILocation(line: 1368, column: 80, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 1367, column: 16)
!4762 = !DILocation(line: 1368, column: 100, scope: !4761)
!4763 = !DILocation(line: 1364, column: 13, scope: !4759)
!4764 = !DILocation(line: 1365, column: 37, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 1364, column: 45)
!4766 = !DILocation(line: 1366, column: 114, scope: !4765)
!4767 = !DILocation(line: 1366, column: 13, scope: !4765)
!4768 = !DILocation(line: 1367, column: 9, scope: !4765)
!4769 = !DILocation(line: 1368, column: 119, scope: !4761)
!4770 = !DILocation(line: 1368, column: 164, scope: !4761)
!4771 = !DILocation(line: 1368, column: 145, scope: !4761)
!4772 = !DILocation(line: 1368, column: 13, scope: !4773)
!4773 = !DILexicalBlockFile(scope: !4761, file: !3, discriminator: 1)
!4774 = !DILocation(line: 1372, column: 13, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 1372, column: 13)
!4776 = !DILocation(line: 1376, column: 75, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 1374, column: 16)
!4778 = !DILocation(line: 1376, column: 95, scope: !4777)
!4779 = !DILocation(line: 1372, column: 13, scope: !4759)
!4780 = !DILocation(line: 1373, column: 119, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 1372, column: 45)
!4782 = !DILocation(line: 1373, column: 164, scope: !4781)
!4783 = !DILocation(line: 1373, column: 145, scope: !4781)
!4784 = !DILocation(line: 1373, column: 13, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !4781, file: !3, discriminator: 1)
!4786 = !DILocation(line: 1374, column: 9, scope: !4781)
!4787 = !DILocation(line: 1375, column: 37, scope: !4777)
!4788 = !DILocation(line: 1376, column: 114, scope: !4777)
!4789 = !DILocation(line: 1376, column: 13, scope: !4777)
!4790 = !DILocation(line: 1380, column: 33, scope: !4759)
!4791 = !DILocation(line: 1381, column: 71, scope: !4759)
!4792 = !DILocation(line: 1381, column: 91, scope: !4759)
!4793 = !DILocation(line: 1381, column: 110, scope: !4759)
!4794 = !DILocation(line: 1381, column: 9, scope: !4759)
!4795 = !DILocation(line: 1382, column: 9, scope: !4759)
!4796 = !DILocation(line: 1384, column: 33, scope: !4759)
!4797 = !DILocation(line: 1385, column: 80, scope: !4759)
!4798 = !DILocation(line: 1385, column: 100, scope: !4759)
!4799 = !DILocation(line: 1385, column: 119, scope: !4759)
!4800 = !DILocation(line: 1385, column: 164, scope: !4759)
!4801 = !DILocation(line: 1385, column: 145, scope: !4759)
!4802 = !DILocation(line: 1385, column: 9, scope: !4803)
!4803 = !DILexicalBlockFile(scope: !4759, file: !3, discriminator: 1)
!4804 = !DILocation(line: 1386, column: 9, scope: !4759)
!4805 = !DILocation(line: 1388, column: 33, scope: !4759)
!4806 = !DILocation(line: 1389, column: 69, scope: !4759)
!4807 = !DILocation(line: 1389, column: 89, scope: !4759)
!4808 = !DILocation(line: 1389, column: 108, scope: !4759)
!4809 = !DILocation(line: 1389, column: 9, scope: !4759)
!4810 = !DILocation(line: 1390, column: 9, scope: !4759)
!4811 = !DILocation(line: 1395, column: 1, scope: !4748)
!4812 = distinct !DISubprogram(name: "sm_c1_t1", scope: !3, file: !3, line: 782, type: !4813, isLocal: true, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4815)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !441, !441, !441, !311, !311, !441}
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823}
!4816 = !DILocalVariable(name: "r", arg: 1, scope: !4812, file: !3, line: 782, type: !441)
!4817 = !DILocalVariable(name: "preq", arg: 2, scope: !4812, file: !3, line: 782, type: !441)
!4818 = !DILocalVariable(name: "pres", arg: 3, scope: !4812, file: !3, line: 782, type: !441)
!4819 = !DILocalVariable(name: "iat", arg: 4, scope: !4812, file: !3, line: 782, type: !311)
!4820 = !DILocalVariable(name: "rat", arg: 5, scope: !4812, file: !3, line: 782, type: !311)
!4821 = !DILocalVariable(name: "t1", arg: 6, scope: !4812, file: !3, line: 782, type: !441)
!4822 = !DILocalVariable(name: "p1", scope: !4812, file: !3, line: 792, type: !490)
!4823 = !DILocalVariable(name: "i", scope: !4812, file: !3, line: 801, type: !370)
!4824 = !DILocation(line: 782, column: 31, scope: !4812)
!4825 = !DILocation(line: 782, column: 42, scope: !4812)
!4826 = !DILocation(line: 782, column: 59, scope: !4812)
!4827 = !DILocation(line: 782, column: 76, scope: !4812)
!4828 = !DILocation(line: 782, column: 89, scope: !4812)
!4829 = !DILocation(line: 782, column: 103, scope: !4812)
!4830 = !DILocation(line: 792, column: 5, scope: !4812)
!4831 = !DILocation(line: 792, column: 14, scope: !4812)
!4832 = !DILocation(line: 793, column: 5, scope: !4812)
!4833 = !DILocation(line: 794, column: 23, scope: !4812)
!4834 = !DILocation(line: 794, column: 5, scope: !4812)
!4835 = !DILocation(line: 795, column: 5, scope: !4812)
!4836 = !DILocation(line: 795, column: 12, scope: !4812)
!4837 = !DILocation(line: 796, column: 5, scope: !4812)
!4838 = !DILocation(line: 796, column: 12, scope: !4812)
!4839 = !DILocation(line: 801, column: 9, scope: !4812)
!4840 = !DILocation(line: 802, column: 5, scope: !4841)
!4841 = !DILexicalBlockFile(scope: !4842, file: !3, discriminator: 1)
!4842 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 802, column: 5)
!4843 = !DILocation(line: 803, column: 17, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 802, column: 30)
!4845 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 802, column: 5)
!4846 = !DILocation(line: 803, column: 24, scope: !4844)
!4847 = !DILocation(line: 803, column: 22, scope: !4844)
!4848 = !DILocation(line: 803, column: 9, scope: !4844)
!4849 = !DILocation(line: 803, column: 15, scope: !4844)
!4850 = !DILocation(line: 802, column: 26, scope: !4851)
!4851 = !DILexicalBlockFile(scope: !4845, file: !3, discriminator: 2)
!4852 = !DILocation(line: 802, column: 19, scope: !4853)
!4853 = !DILexicalBlockFile(scope: !4845, file: !3, discriminator: 1)
!4854 = distinct !{!4854, !4855, !4856}
!4855 = !DILocation(line: 802, column: 5, scope: !4842)
!4856 = !DILocation(line: 804, column: 5, scope: !4842)
!4857 = !DILocation(line: 806, column: 1, scope: !4812)
!4858 = distinct !DISubprogram(name: "sm_key_distribution_all_received", scope: !3, file: !3, line: 1397, type: !4493, isLocal: true, isDefinition: true, scopeLine: 1398, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4859)
!4859 = !{!4860, !4861}
!4860 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !4858, file: !3, line: 1397, type: !454)
!4861 = !DILocalVariable(name: "recv_flags", scope: !4858, file: !3, line: 1399, type: !370)
!4862 = !DILocation(line: 1397, column: 62, scope: !4858)
!4863 = !DILocation(line: 1400, column: 9, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 1400, column: 9)
!4865 = !DILocation(line: 1400, column: 9, scope: !4858)
!4866 = !DILocation(line: 1402, column: 56, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 1400, column: 41)
!4868 = !DILocation(line: 1403, column: 5, scope: !4867)
!4869 = !DILocation(line: 1405, column: 56, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 1403, column: 12)
!4871 = !DILocation(line: 1399, column: 9, scope: !4858)
!4872 = !DILocation(line: 1075, column: 54, scope: !1363, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 1405, column: 22, scope: !4874)
!4874 = !DILexicalBlockFile(scope: !4870, file: !3, discriminator: 1)
!4875 = !DILocation(line: 1077, column: 9, scope: !1363, inlinedAt: !4873)
!4876 = !DILocation(line: 1078, column: 9, scope: !1372, inlinedAt: !4873)
!4877 = !DILocation(line: 1078, column: 17, scope: !1372, inlinedAt: !4873)
!4878 = !DILocation(line: 1078, column: 9, scope: !1363, inlinedAt: !4873)
!4879 = !DILocation(line: 1082, column: 17, scope: !1376, inlinedAt: !4873)
!4880 = !DILocation(line: 1084, column: 15, scope: !1378, inlinedAt: !4873)
!4881 = !DILocation(line: 1082, column: 9, scope: !1363, inlinedAt: !4873)
!4882 = !DILocation(line: 1086, column: 9, scope: !1363, inlinedAt: !4873)
!4883 = !DILocation(line: 1410, column: 33, scope: !4858)
!4884 = !DILocation(line: 1410, column: 26, scope: !4858)
!4885 = !DILocation(line: 1410, column: 23, scope: !4858)
!4886 = !DILocation(line: 1410, column: 5, scope: !4858)
!4887 = distinct !DISubprogram(name: "sm_key_distribution_handle_all_received", scope: !3, file: !3, line: 1623, type: !1124, isLocal: true, isDefinition: true, scopeLine: 1624, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4888)
!4888 = !{!4889, !4890, !4891, !4894, !4898, !4899, !4900, !4903, !4907, !4908}
!4889 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !4887, file: !3, line: 1623, type: !454)
!4890 = !DILocalVariable(name: "le_db_index", scope: !4887, file: !3, line: 1626, type: !370)
!4891 = !DILocalVariable(name: "i", scope: !4892, file: !3, line: 1630, type: !370)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 1629, column: 89)
!4893 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1629, column: 9)
!4894 = !DILocalVariable(name: "irk", scope: !4895, file: !3, line: 1632, type: !490)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 1631, column: 52)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 1631, column: 9)
!4897 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 1631, column: 9)
!4898 = !DILocalVariable(name: "address", scope: !4895, file: !3, line: 1633, type: !308)
!4899 = !DILocalVariable(name: "address_type", scope: !4895, file: !3, line: 1634, type: !370)
!4900 = !DILocalVariable(name: "i", scope: !4901, file: !3, line: 1647, type: !370)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 1646, column: 80)
!4902 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1646, column: 9)
!4903 = !DILocalVariable(name: "address", scope: !4904, file: !3, line: 1649, type: !308)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 1648, column: 52)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 1648, column: 9)
!4906 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 1648, column: 9)
!4907 = !DILocalVariable(name: "address_type", scope: !4904, file: !3, line: 1650, type: !370)
!4908 = !DILocalVariable(name: "zero_rand", scope: !4909, file: !3, line: 1687, type: !365)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 1685, column: 47)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 1685, column: 13)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 1666, column: 27)
!4912 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1666, column: 9)
!4913 = !DILocation(line: 1623, column: 70, scope: !4887)
!4914 = !DILocation(line: 1626, column: 9, scope: !4887)
!4915 = !DILocation(line: 1629, column: 9, scope: !4893)
!4916 = !DILocation(line: 1629, column: 16, scope: !4893)
!4917 = !DILocation(line: 1629, column: 49, scope: !4893)
!4918 = !DILocation(line: 1629, column: 9, scope: !4887)
!4919 = !DILocation(line: 1632, column: 13, scope: !4895)
!4920 = !DILocation(line: 1630, column: 13, scope: !4892)
!4921 = !DILocation(line: 1631, column: 25, scope: !4922)
!4922 = !DILexicalBlockFile(scope: !4896, file: !3, discriminator: 1)
!4923 = !DILocation(line: 1631, column: 23, scope: !4922)
!4924 = !DILocation(line: 1631, column: 9, scope: !4925)
!4925 = !DILexicalBlockFile(scope: !4897, file: !3, discriminator: 1)
!4926 = distinct !{!4926, !4927, !4928}
!4927 = !DILocation(line: 1631, column: 9, scope: !4897)
!4928 = !DILocation(line: 1641, column: 9, scope: !4897)
!4929 = !DILocation(line: 1632, column: 22, scope: !4895)
!4930 = !DILocation(line: 1633, column: 13, scope: !4895)
!4931 = !DILocation(line: 1633, column: 23, scope: !4895)
!4932 = !DILocation(line: 1634, column: 13, scope: !4895)
!4933 = !DILocation(line: 1634, column: 17, scope: !4895)
!4934 = !DILocation(line: 1635, column: 13, scope: !4895)
!4935 = !DILocation(line: 1636, column: 29, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 1636, column: 17)
!4937 = !DILocation(line: 1636, column: 17, scope: !4936)
!4938 = !DILocation(line: 1636, column: 53, scope: !4936)
!4939 = !DILocation(line: 1641, column: 9, scope: !4896)
!4940 = !DILocation(line: 1631, column: 48, scope: !4941)
!4941 = !DILexicalBlockFile(scope: !4896, file: !3, discriminator: 2)
!4942 = !DILocation(line: 1646, column: 21, scope: !4902)
!4943 = !DILocation(line: 1646, column: 25, scope: !4902)
!4944 = !DILocation(line: 1646, column: 28, scope: !4945)
!4945 = !DILexicalBlockFile(scope: !4902, file: !3, discriminator: 1)
!4946 = !DILocation(line: 1646, column: 35, scope: !4945)
!4947 = !DILocation(line: 1646, column: 53, scope: !4945)
!4948 = !DILocation(line: 1646, column: 9, scope: !4949)
!4949 = !DILexicalBlockFile(scope: !4887, file: !3, discriminator: 1)
!4950 = !DILocation(line: 1647, column: 13, scope: !4901)
!4951 = !DILocation(line: 1648, column: 25, scope: !4952)
!4952 = !DILexicalBlockFile(scope: !4905, file: !3, discriminator: 1)
!4953 = !DILocation(line: 1648, column: 23, scope: !4952)
!4954 = !DILocation(line: 1648, column: 9, scope: !4955)
!4955 = !DILexicalBlockFile(scope: !4906, file: !3, discriminator: 1)
!4956 = !DILocation(line: 1649, column: 13, scope: !4904)
!4957 = !DILocation(line: 1649, column: 23, scope: !4904)
!4958 = !DILocation(line: 1650, column: 13, scope: !4904)
!4959 = !DILocation(line: 1650, column: 17, scope: !4904)
!4960 = !DILocation(line: 1651, column: 13, scope: !4904)
!4961 = !DILocation(line: 1653, column: 17, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 1653, column: 17)
!4963 = !DILocation(line: 1653, column: 30, scope: !4962)
!4964 = !DILocation(line: 1653, column: 56, scope: !4962)
!4965 = !DILocation(line: 1653, column: 75, scope: !4966)
!4966 = !DILexicalBlockFile(scope: !4962, file: !3, discriminator: 1)
!4967 = !DILocation(line: 1653, column: 59, scope: !4966)
!4968 = !DILocation(line: 1653, column: 102, scope: !4966)
!4969 = !DILocation(line: 1653, column: 17, scope: !4970)
!4970 = !DILexicalBlockFile(scope: !4904, file: !3, discriminator: 1)
!4971 = !DILocation(line: 1658, column: 9, scope: !4905)
!4972 = !DILocation(line: 1648, column: 48, scope: !4973)
!4973 = !DILexicalBlockFile(scope: !4905, file: !3, discriminator: 2)
!4974 = distinct !{!4974, !4975, !4976}
!4975 = !DILocation(line: 1648, column: 9, scope: !4906)
!4976 = !DILocation(line: 1658, column: 9, scope: !4906)
!4977 = !DILocation(line: 1662, column: 21, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1662, column: 9)
!4979 = !DILocation(line: 1662, column: 9, scope: !4887)
!4980 = !DILocation(line: 1663, column: 47, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 1662, column: 26)
!4982 = !DILocation(line: 1663, column: 40, scope: !4981)
!4983 = !DILocation(line: 1663, column: 66, scope: !4981)
!4984 = !DILocation(line: 1663, column: 90, scope: !4981)
!4985 = !DILocation(line: 1663, column: 23, scope: !4981)
!4986 = !DILocation(line: 1666, column: 21, scope: !4912)
!4987 = !DILocation(line: 1666, column: 9, scope: !4887)
!4988 = !DILocation(line: 1667, column: 68, scope: !4911)
!4989 = !DILocation(line: 1667, column: 79, scope: !4911)
!4990 = !DILocation(line: 1667, column: 86, scope: !4911)
!4991 = !DILocation(line: 1667, column: 105, scope: !4911)
!4992 = !DILocation(line: 1667, column: 129, scope: !4911)
!4993 = !DILocation(line: 1667, column: 9, scope: !4911)
!4994 = !DILocation(line: 1685, column: 13, scope: !4910)
!4995 = !DILocation(line: 1685, column: 20, scope: !4910)
!4996 = !DILocation(line: 1685, column: 13, scope: !4911)
!4997 = !DILocation(line: 1687, column: 13, scope: !4909)
!4998 = !DILocation(line: 1688, column: 13, scope: !4909)
!4999 = !DILocation(line: 1689, column: 68, scope: !4909)
!5000 = !DILocation(line: 1689, column: 92, scope: !4909)
!5001 = !DILocation(line: 1689, column: 83, scope: !4909)
!5002 = !DILocation(line: 1690, column: 50, scope: !4909)
!5003 = !DILocation(line: 1690, column: 41, scope: !4909)
!5004 = !DILocation(line: 1690, column: 88, scope: !4909)
!5005 = !DILocation(line: 1690, column: 122, scope: !4909)
!5006 = !DILocation(line: 1689, column: 13, scope: !4909)
!5007 = !DILocation(line: 1691, column: 9, scope: !4910)
!5008 = !DILocation(line: 1691, column: 9, scope: !4909)
!5009 = !DILocation(line: 1694, column: 26, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 1694, column: 18)
!5011 = !DILocation(line: 1695, column: 18, scope: !5010)
!5012 = !DILocation(line: 1697, column: 61, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 1695, column: 104)
!5014 = !DILocation(line: 1697, column: 75, scope: !5013)
!5015 = !DILocation(line: 1697, column: 96, scope: !5013)
!5016 = !DILocation(line: 1698, column: 50, scope: !5013)
!5017 = !DILocation(line: 1698, column: 41, scope: !5013)
!5018 = !DILocation(line: 1698, column: 90, scope: !5013)
!5019 = !DILocation(line: 1698, column: 81, scope: !5013)
!5020 = !DILocation(line: 1698, column: 128, scope: !5013)
!5021 = !DILocation(line: 1698, column: 162, scope: !5013)
!5022 = !DILocation(line: 1697, column: 13, scope: !5013)
!5023 = !DILocation(line: 1700, column: 9, scope: !5013)
!5024 = !DILocation(line: 1704, column: 14, scope: !4887)
!5025 = !DILocation(line: 1704, column: 29, scope: !4887)
!5026 = !DILocation(line: 1705, column: 1, scope: !4887)
!5027 = distinct !DISubprogram(name: "sm_notify_client_base", scope: !3, file: !3, line: 955, type: !5028, isLocal: true, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5030)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{null, !311, !327, !311, !441}
!5030 = !{!5031, !5032, !5033, !5034, !5035}
!5031 = !DILocalVariable(name: "type", arg: 1, scope: !5027, file: !3, line: 955, type: !311)
!5032 = !DILocalVariable(name: "con_handle", arg: 2, scope: !5027, file: !3, line: 955, type: !327)
!5033 = !DILocalVariable(name: "addr_type", arg: 3, scope: !5027, file: !3, line: 955, type: !311)
!5034 = !DILocalVariable(name: "address", arg: 4, scope: !5027, file: !3, line: 955, type: !441)
!5035 = !DILocalVariable(name: "event", scope: !5027, file: !3, line: 958, type: !4399)
!5036 = !DILocation(line: 955, column: 43, scope: !5027)
!5037 = !DILocation(line: 955, column: 66, scope: !5027)
!5038 = !DILocation(line: 955, column: 86, scope: !5027)
!5039 = !DILocation(line: 955, column: 107, scope: !5027)
!5040 = !DILocation(line: 958, column: 5, scope: !5027)
!5041 = !DILocation(line: 958, column: 14, scope: !5027)
!5042 = !DILocation(line: 931, column: 42, scope: !3731, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 959, column: 5, scope: !5027)
!5044 = !DILocation(line: 931, column: 53, scope: !3731, inlinedAt: !5043)
!5045 = !DILocation(line: 931, column: 73, scope: !3731, inlinedAt: !5043)
!5046 = !DILocation(line: 931, column: 96, scope: !3731, inlinedAt: !5043)
!5047 = !DILocation(line: 931, column: 116, scope: !3731, inlinedAt: !5043)
!5048 = !DILocation(line: 931, column: 137, scope: !3731, inlinedAt: !5043)
!5049 = !DILocation(line: 933, column: 14, scope: !3731, inlinedAt: !5043)
!5050 = !DILocation(line: 934, column: 5, scope: !3731, inlinedAt: !5043)
!5051 = !DILocation(line: 934, column: 14, scope: !3731, inlinedAt: !5043)
!5052 = !DILocation(line: 935, column: 5, scope: !3731, inlinedAt: !5043)
!5053 = !DILocation(line: 936, column: 5, scope: !3731, inlinedAt: !5043)
!5054 = !DILocation(line: 936, column: 14, scope: !3731, inlinedAt: !5043)
!5055 = !DILocation(line: 937, column: 31, scope: !3731, inlinedAt: !5043)
!5056 = !DILocation(line: 937, column: 5, scope: !3731, inlinedAt: !5043)
!5057 = !DILocation(line: 960, column: 5, scope: !5027)
!5058 = !DILocation(line: 961, column: 1, scope: !5027)
!5059 = distinct !DISubprogram(name: "sm_dispatch_event", scope: !3, file: !3, line: 940, type: !452, isLocal: true, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5060)
!5060 = !{!5061, !5062, !5063, !5064, !5065, !5066}
!5061 = !DILocalVariable(name: "packet_type", arg: 1, scope: !5059, file: !3, line: 940, type: !311)
!5062 = !DILocalVariable(name: "channel", arg: 2, scope: !5059, file: !3, line: 940, type: !328)
!5063 = !DILocalVariable(name: "packet", arg: 3, scope: !5059, file: !3, line: 940, type: !441)
!5064 = !DILocalVariable(name: "size", arg: 4, scope: !5059, file: !3, line: 940, type: !328)
!5065 = !DILocalVariable(name: "it", scope: !5059, file: !3, line: 947, type: !580)
!5066 = !DILocalVariable(name: "entry", scope: !5067, file: !3, line: 950, type: !444)
!5067 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 949, column: 48)
!5068 = !DILocation(line: 940, column: 39, scope: !5059)
!5069 = !DILocation(line: 940, column: 61, scope: !5059)
!5070 = !DILocation(line: 947, column: 5, scope: !5059)
!5071 = !DILocation(line: 948, column: 5, scope: !5059)
!5072 = !DILocation(line: 947, column: 28, scope: !5059)
!5073 = !DILocation(line: 949, column: 12, scope: !5074)
!5074 = !DILexicalBlockFile(scope: !5059, file: !3, discriminator: 1)
!5075 = !DILocation(line: 949, column: 5, scope: !5074)
!5076 = !DILocation(line: 950, column: 100, scope: !5067)
!5077 = !DILocation(line: 951, column: 16, scope: !5067)
!5078 = !{!774, !717, i64 4}
!5079 = !DILocation(line: 951, column: 9, scope: !5067)
!5080 = distinct !{!5080, !5081, !5082}
!5081 = !DILocation(line: 949, column: 5, scope: !5059)
!5082 = !DILocation(line: 952, column: 5, scope: !5059)
!5083 = !DILocation(line: 953, column: 1, scope: !5059)
!5084 = distinct !DISubprogram(name: "sm_notify_client_index", scope: !3, file: !3, line: 982, type: !5085, isLocal: true, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5087)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !311, !327, !311, !441, !328}
!5087 = !{!5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095}
!5088 = !DILocalVariable(name: "type", arg: 1, scope: !5084, file: !3, line: 982, type: !311)
!5089 = !DILocalVariable(name: "con_handle", arg: 2, scope: !5084, file: !3, line: 982, type: !327)
!5090 = !DILocalVariable(name: "addr_type", arg: 3, scope: !5084, file: !3, line: 982, type: !311)
!5091 = !DILocalVariable(name: "address", arg: 4, scope: !5084, file: !3, line: 982, type: !441)
!5092 = !DILocalVariable(name: "index", arg: 5, scope: !5084, file: !3, line: 982, type: !328)
!5093 = !DILocalVariable(name: "identity_address", scope: !5084, file: !3, line: 985, type: !308)
!5094 = !DILocalVariable(name: "identity_address_type", scope: !5084, file: !3, line: 986, type: !370)
!5095 = !DILocalVariable(name: "event", scope: !5084, file: !3, line: 989, type: !5096)
!5096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 152, elements: !5097)
!5097 = !{!5098}
!5098 = !DISubrange(count: 19)
!5099 = !DILocation(line: 982, column: 44, scope: !5084)
!5100 = !DILocation(line: 982, column: 67, scope: !5084)
!5101 = !DILocation(line: 982, column: 87, scope: !5084)
!5102 = !DILocation(line: 982, column: 108, scope: !5084)
!5103 = !DILocation(line: 982, column: 126, scope: !5084)
!5104 = !DILocation(line: 985, column: 5, scope: !5084)
!5105 = !DILocation(line: 985, column: 15, scope: !5084)
!5106 = !DILocation(line: 986, column: 5, scope: !5084)
!5107 = !DILocation(line: 987, column: 23, scope: !5084)
!5108 = !DILocation(line: 986, column: 9, scope: !5084)
!5109 = !DILocation(line: 987, column: 5, scope: !5084)
!5110 = !DILocation(line: 989, column: 5, scope: !5084)
!5111 = !DILocation(line: 989, column: 13, scope: !5084)
!5112 = !DILocation(line: 931, column: 42, scope: !3731, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 990, column: 5, scope: !5084)
!5114 = !DILocation(line: 931, column: 53, scope: !3731, inlinedAt: !5113)
!5115 = !DILocation(line: 931, column: 73, scope: !3731, inlinedAt: !5113)
!5116 = !DILocation(line: 931, column: 96, scope: !3731, inlinedAt: !5113)
!5117 = !DILocation(line: 931, column: 116, scope: !3731, inlinedAt: !5113)
!5118 = !DILocation(line: 931, column: 137, scope: !3731, inlinedAt: !5113)
!5119 = !DILocation(line: 933, column: 14, scope: !3731, inlinedAt: !5113)
!5120 = !DILocation(line: 934, column: 5, scope: !3731, inlinedAt: !5113)
!5121 = !DILocation(line: 934, column: 14, scope: !3731, inlinedAt: !5113)
!5122 = !DILocation(line: 935, column: 5, scope: !3731, inlinedAt: !5113)
!5123 = !DILocation(line: 936, column: 5, scope: !3731, inlinedAt: !5113)
!5124 = !DILocation(line: 936, column: 14, scope: !3731, inlinedAt: !5113)
!5125 = !DILocation(line: 937, column: 31, scope: !3731, inlinedAt: !5113)
!5126 = !DILocation(line: 937, column: 5, scope: !3731, inlinedAt: !5113)
!5127 = !DILocation(line: 991, column: 17, scope: !5084)
!5128 = !DILocation(line: 991, column: 5, scope: !5084)
!5129 = !DILocation(line: 991, column: 15, scope: !5084)
!5130 = !DILocation(line: 992, column: 40, scope: !5084)
!5131 = !DILocation(line: 992, column: 5, scope: !5084)
!5132 = !DILocation(line: 993, column: 17, scope: !5084)
!5133 = !DILocation(line: 993, column: 5, scope: !5084)
!5134 = !DILocation(line: 993, column: 15, scope: !5084)
!5135 = !DILocation(line: 994, column: 5, scope: !5084)
!5136 = !DILocation(line: 995, column: 1, scope: !5084)
!5137 = distinct !DISubprogram(name: "sm_pairing_packet_set_io_capability", scope: !260, file: !260, line: 183, type: !4707, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5138)
!5138 = !{!5139, !5140}
!5139 = !DILocalVariable(name: "packet", arg: 1, scope: !5137, file: !260, line: 183, type: !441)
!5140 = !DILocalVariable(name: "io_capability", arg: 2, scope: !5137, file: !260, line: 183, type: !311)
!5141 = !DILocation(line: 183, column: 80, scope: !5137)
!5142 = !DILocation(line: 183, column: 96, scope: !5137)
!5143 = !DILocation(line: 185, column: 9, scope: !5137)
!5144 = !DILocation(line: 185, column: 19, scope: !5137)
!5145 = !DILocation(line: 186, column: 5, scope: !5137)
!5146 = distinct !DISubprogram(name: "sm_pairing_packet_set_oob_data_flag", scope: !260, file: !260, line: 187, type: !4707, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5147)
!5147 = !{!5148, !5149}
!5148 = !DILocalVariable(name: "packet", arg: 1, scope: !5146, file: !260, line: 187, type: !441)
!5149 = !DILocalVariable(name: "oob_data_flag", arg: 2, scope: !5146, file: !260, line: 187, type: !311)
!5150 = !DILocation(line: 187, column: 80, scope: !5146)
!5151 = !DILocation(line: 187, column: 96, scope: !5146)
!5152 = !DILocation(line: 189, column: 9, scope: !5146)
!5153 = !DILocation(line: 189, column: 19, scope: !5146)
!5154 = !DILocation(line: 190, column: 5, scope: !5146)
!5155 = distinct !DISubprogram(name: "sm_pairing_packet_set_auth_req", scope: !260, file: !260, line: 191, type: !4707, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5156)
!5156 = !{!5157, !5158}
!5157 = !DILocalVariable(name: "packet", arg: 1, scope: !5155, file: !260, line: 191, type: !441)
!5158 = !DILocalVariable(name: "auth_req", arg: 2, scope: !5155, file: !260, line: 191, type: !311)
!5159 = !DILocation(line: 191, column: 75, scope: !5155)
!5160 = !DILocation(line: 191, column: 91, scope: !5155)
!5161 = !DILocation(line: 193, column: 9, scope: !5155)
!5162 = !DILocation(line: 193, column: 19, scope: !5155)
!5163 = !DILocation(line: 194, column: 5, scope: !5155)
!5164 = distinct !DISubprogram(name: "sm_pairing_packet_set_max_encryption_key_size", scope: !260, file: !260, line: 195, type: !4707, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5165)
!5165 = !{!5166, !5167}
!5166 = !DILocalVariable(name: "packet", arg: 1, scope: !5164, file: !260, line: 195, type: !441)
!5167 = !DILocalVariable(name: "max_encryption_key_size", arg: 2, scope: !5164, file: !260, line: 195, type: !311)
!5168 = !DILocation(line: 195, column: 90, scope: !5164)
!5169 = !DILocation(line: 195, column: 106, scope: !5164)
!5170 = !DILocation(line: 197, column: 9, scope: !5164)
!5171 = !DILocation(line: 197, column: 19, scope: !5164)
!5172 = !DILocation(line: 198, column: 5, scope: !5164)
!5173 = distinct !DISubprogram(name: "sm_pairing_packet_get_max_encryption_key_size", scope: !260, file: !260, line: 166, type: !4726, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5174)
!5174 = !{!5175}
!5175 = !DILocalVariable(name: "packet", arg: 1, scope: !5173, file: !260, line: 166, type: !441)
!5176 = !DILocation(line: 166, column: 93, scope: !5173)
!5177 = !DILocation(line: 168, column: 16, scope: !5173)
!5178 = !DILocation(line: 168, column: 9, scope: !5173)
!5179 = distinct !DISubprogram(name: "sm_pairing_packet_get_oob_data_flag", scope: !260, file: !260, line: 158, type: !4726, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5180)
!5180 = !{!5181}
!5181 = !DILocalVariable(name: "packet", arg: 1, scope: !5179, file: !260, line: 158, type: !441)
!5182 = !DILocation(line: 158, column: 83, scope: !5179)
!5183 = !DILocation(line: 160, column: 16, scope: !5179)
!5184 = !DILocation(line: 160, column: 9, scope: !5179)
!5185 = distinct !DISubprogram(name: "sm_pairing_packet_get_auth_req", scope: !260, file: !260, line: 162, type: !4726, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5186)
!5186 = !{!5187}
!5187 = !DILocalVariable(name: "packet", arg: 1, scope: !5185, file: !260, line: 162, type: !441)
!5188 = !DILocation(line: 162, column: 78, scope: !5185)
!5189 = !DILocation(line: 164, column: 16, scope: !5185)
!5190 = !DILocation(line: 164, column: 9, scope: !5185)
!5191 = distinct !DISubprogram(name: "sm_pairing_packet_get_io_capability", scope: !260, file: !260, line: 154, type: !4726, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5192)
!5192 = !{!5193}
!5193 = !DILocalVariable(name: "packet", arg: 1, scope: !5191, file: !260, line: 154, type: !441)
!5194 = !DILocation(line: 154, column: 83, scope: !5191)
!5195 = !DILocation(line: 156, column: 16, scope: !5191)
!5196 = !DILocation(line: 156, column: 9, scope: !5191)
!5197 = distinct !DISubprogram(name: "sm_timeout_handler", scope: !3, file: !3, line: 630, type: !5198, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5201)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{null, !5200}
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!5201 = !{!5202, !5203}
!5202 = !DILocalVariable(name: "timer", arg: 1, scope: !5197, file: !3, line: 630, type: !5200)
!5203 = !DILocalVariable(name: "sm_conn", scope: !5197, file: !3, line: 633, type: !454)
!5204 = !DILocation(line: 630, column: 56, scope: !5197)
!5205 = !DILocation(line: 632, column: 5, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 632, column: 5)
!5207 = !DILocation(line: 632, column: 5, scope: !5197)
!5208 = !DILocation(line: 632, column: 5, scope: !5209)
!5209 = !DILexicalBlockFile(scope: !5206, file: !3, discriminator: 1)
!5210 = !DILocation(line: 633, column: 58, scope: !5197)
!5211 = !{!772, !717, i64 16}
!5212 = !DILocation(line: 633, column: 22, scope: !5197)
!5213 = !DILocation(line: 634, column: 14, scope: !5197)
!5214 = !DILocation(line: 634, column: 30, scope: !5197)
!5215 = !DILocation(line: 635, column: 33, scope: !5197)
!5216 = !DILocation(line: 635, column: 5, scope: !5197)
!5217 = !DILocation(line: 638, column: 5, scope: !5197)
!5218 = !DILocation(line: 640, column: 62, scope: !5197)
!5219 = !DILocation(line: 640, column: 82, scope: !5197)
!5220 = !DILocation(line: 641, column: 30, scope: !5197)
!5221 = !DILocation(line: 640, column: 5, scope: !5197)
!5222 = !DILocation(line: 642, column: 1, scope: !5197)
!5223 = distinct !DISubprogram(name: "sm_disconnect", scope: !3, file: !3, line: 533, type: !3594, isLocal: true, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5224)
!5224 = !{!5225, !5226}
!5225 = !DILocalVariable(name: "con_handle", arg: 1, scope: !5223, file: !3, line: 533, type: !390)
!5226 = !DILocalVariable(name: "sm_conn", scope: !5223, file: !3, line: 535, type: !454)
!5227 = !DILocation(line: 533, column: 36, scope: !5223)
!5228 = !DILocation(line: 536, column: 24, scope: !5223)
!5229 = !DILocation(line: 536, column: 5, scope: !5223)
!5230 = !DILocation(line: 5023, column: 71, scope: !1219, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 537, column: 15, scope: !5223)
!5232 = !DILocation(line: 5025, column: 36, scope: !1219, inlinedAt: !5231)
!5233 = !DILocation(line: 5025, column: 26, scope: !1219, inlinedAt: !5231)
!5234 = !DILocation(line: 5026, column: 10, scope: !1229, inlinedAt: !5231)
!5235 = !DILocation(line: 5029, column: 22, scope: !1219, inlinedAt: !5231)
!5236 = !DILocation(line: 5026, column: 9, scope: !1219, inlinedAt: !5231)
!5237 = !DILocation(line: 535, column: 22, scope: !5223)
!5238 = !DILocation(line: 538, column: 9, scope: !5223)
!5239 = !DILocation(line: 542, column: 43, scope: !5223)
!5240 = !DILocation(line: 542, column: 34, scope: !5223)
!5241 = !DILocation(line: 542, column: 5, scope: !5223)
!5242 = !DILocation(line: 543, column: 5, scope: !5223)
!5243 = !DILocation(line: 544, column: 62, scope: !5223)
!5244 = !DILocation(line: 544, column: 82, scope: !5223)
!5245 = !DILocation(line: 544, column: 101, scope: !5223)
!5246 = !DILocation(line: 545, column: 73, scope: !5223)
!5247 = !DILocation(line: 545, column: 64, scope: !5223)
!5248 = !DILocation(line: 545, column: 91, scope: !5223)
!5249 = !DILocation(line: 545, column: 61, scope: !5223)
!5250 = !DILocation(line: 544, column: 5, scope: !5223)
!5251 = !DILocation(line: 546, column: 1, scope: !5223)
!5252 = !DILocation(line: 546, column: 1, scope: !5253)
!5253 = !DILexicalBlockFile(scope: !5223, file: !3, discriminator: 2)
!5254 = distinct !DISubprogram(name: "sm_notify_client_passkey", scope: !3, file: !3, line: 963, type: !4390, isLocal: true, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5255)
!5255 = !{!5256, !5257, !5258, !5259, !5260, !5261}
!5256 = !DILocalVariable(name: "type", arg: 1, scope: !5254, file: !3, line: 963, type: !311)
!5257 = !DILocalVariable(name: "con_handle", arg: 2, scope: !5254, file: !3, line: 963, type: !327)
!5258 = !DILocalVariable(name: "addr_type", arg: 3, scope: !5254, file: !3, line: 963, type: !311)
!5259 = !DILocalVariable(name: "address", arg: 4, scope: !5254, file: !3, line: 963, type: !441)
!5260 = !DILocalVariable(name: "passkey", arg: 5, scope: !5254, file: !3, line: 963, type: !390)
!5261 = !DILocalVariable(name: "event", scope: !5254, file: !3, line: 966, type: !4399)
!5262 = !DILocation(line: 963, column: 46, scope: !5254)
!5263 = !DILocation(line: 963, column: 69, scope: !5254)
!5264 = !DILocation(line: 963, column: 89, scope: !5254)
!5265 = !DILocation(line: 963, column: 110, scope: !5254)
!5266 = !DILocation(line: 963, column: 128, scope: !5254)
!5267 = !DILocation(line: 966, column: 5, scope: !5254)
!5268 = !DILocation(line: 966, column: 14, scope: !5254)
!5269 = !DILocation(line: 931, column: 42, scope: !3731, inlinedAt: !5270)
!5270 = distinct !DILocation(line: 967, column: 5, scope: !5254)
!5271 = !DILocation(line: 931, column: 53, scope: !3731, inlinedAt: !5270)
!5272 = !DILocation(line: 931, column: 73, scope: !3731, inlinedAt: !5270)
!5273 = !DILocation(line: 931, column: 96, scope: !3731, inlinedAt: !5270)
!5274 = !DILocation(line: 931, column: 116, scope: !3731, inlinedAt: !5270)
!5275 = !DILocation(line: 931, column: 137, scope: !3731, inlinedAt: !5270)
!5276 = !DILocation(line: 933, column: 14, scope: !3731, inlinedAt: !5270)
!5277 = !DILocation(line: 934, column: 5, scope: !3731, inlinedAt: !5270)
!5278 = !DILocation(line: 934, column: 14, scope: !3731, inlinedAt: !5270)
!5279 = !DILocation(line: 935, column: 5, scope: !3731, inlinedAt: !5270)
!5280 = !DILocation(line: 936, column: 5, scope: !3731, inlinedAt: !5270)
!5281 = !DILocation(line: 936, column: 14, scope: !3731, inlinedAt: !5270)
!5282 = !DILocation(line: 937, column: 31, scope: !3731, inlinedAt: !5270)
!5283 = !DILocation(line: 937, column: 5, scope: !3731, inlinedAt: !5270)
!5284 = !DILocation(line: 968, column: 5, scope: !5254)
!5285 = !DILocation(line: 969, column: 5, scope: !5254)
!5286 = !DILocation(line: 970, column: 1, scope: !5254)
!5287 = distinct !DISubprogram(name: "rand32", scope: !429, file: !429, line: 131, type: !5288, isLocal: true, isDefinition: true, scopeLine: 132, isOptimized: true, unit: !2, variables: !785)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!571}
!5290 = !DILocation(line: 133, column: 21, scope: !5287)
!5291 = !{!5292, !758, i64 0}
!5292 = !{!"", !758, i64 0, !758, i64 4}
!5293 = !DILocation(line: 133, column: 5, scope: !5287)
!5294 = distinct !DISubprogram(name: "hci_event_packet_get_type", scope: !5295, file: !5295, line: 38, type: !5296, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5299)
!5295 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!311, !5298}
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 32)
!5299 = !{!5300}
!5300 = !DILocalVariable(name: "event", arg: 1, scope: !5294, file: !5295, line: 38, type: !5298)
!5301 = !DILocation(line: 38, column: 68, scope: !5294)
!5302 = !DILocation(line: 40, column: 16, scope: !5294)
!5303 = !DILocation(line: 40, column: 9, scope: !5294)
!5304 = distinct !DISubprogram(name: "sm_master_pair_get_list", scope: !3, file: !3, line: 3718, type: !3163, isLocal: true, isDefinition: true, scopeLine: 3719, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5305)
!5305 = !{!5306, !5307}
!5306 = !DILocalVariable(name: "sm_conn", arg: 1, scope: !5304, file: !3, line: 3718, type: !454)
!5307 = !DILocalVariable(name: "list_info", scope: !5304, file: !3, line: 3720, type: !3167)
!5308 = !DILocation(line: 3718, column: 54, scope: !5304)
!5309 = !DILocation(line: 3720, column: 5, scope: !5304)
!5310 = !DILocation(line: 3721, column: 10, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 3721, column: 9)
!5312 = !DILocation(line: 3721, column: 18, scope: !5311)
!5313 = !DILocation(line: 3722, column: 9, scope: !5311)
!5314 = !DILocation(line: 3722, column: 40, scope: !5315)
!5315 = !DILexicalBlockFile(scope: !5311, file: !3, discriminator: 1)
!5316 = !DILocation(line: 3722, column: 75, scope: !5315)
!5317 = !DILocation(line: 3722, column: 103, scope: !5315)
!5318 = !DILocation(line: 3720, column: 23, scope: !5304)
!5319 = !DILocation(line: 3722, column: 12, scope: !5315)
!5320 = !DILocation(line: 3721, column: 9, scope: !5321)
!5321 = !DILexicalBlockFile(scope: !5304, file: !3, discriminator: 1)
!5322 = !DILocation(line: 3724, column: 53, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 3722, column: 125)
!5324 = !DILocation(line: 3724, column: 31, scope: !5323)
!5325 = !DILocation(line: 3724, column: 9, scope: !5323)
!5326 = !DILocation(line: 3724, column: 16, scope: !5323)
!5327 = !DILocation(line: 3724, column: 29, scope: !5323)
!5328 = !DILocation(line: 3725, column: 9, scope: !5323)
!5329 = !DILocation(line: 3726, column: 9, scope: !5323)
!5330 = !DILocation(line: 3727, column: 60, scope: !5323)
!5331 = !{!5332, !718, i64 50}
!5332 = !{!"", !718, i64 0, !718, i64 16, !718, i64 32, !718, i64 38, !718, i64 38, !718, i64 38, !718, i64 38, !718, i64 39, !718, i64 40, !718, i64 48, !718, i64 50, !718, i64 51, !718, i64 51}
!5333 = !DILocation(line: 3727, column: 18, scope: !5323)
!5334 = !DILocation(line: 3727, column: 48, scope: !5323)
!5335 = !DILocation(line: 3728, column: 58, scope: !5323)
!5336 = !DILocation(line: 3728, column: 18, scope: !5323)
!5337 = !DILocation(line: 3728, column: 46, scope: !5323)
!5338 = !DILocation(line: 3729, column: 64, scope: !5323)
!5339 = !DILocation(line: 3729, column: 54, scope: !5323)
!5340 = !DILocation(line: 3729, column: 18, scope: !5323)
!5341 = !DILocation(line: 3729, column: 52, scope: !5323)
!5342 = !DILocation(line: 3730, column: 9, scope: !5323)
!5343 = !DILocation(line: 3734, column: 1, scope: !5304)
!5344 = distinct !DISubprogram(name: "sm_timeout_handler_pair", scope: !3, file: !3, line: 571, type: !5345, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5347)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !571}
!5347 = !{!5348}
!5348 = !DILocalVariable(name: "con_handle", arg: 1, scope: !5344, file: !3, line: 571, type: !571)
!5349 = !DILocation(line: 571, column: 41, scope: !5344)
!5350 = !DILocation(line: 573, column: 28, scope: !5344)
!5351 = !DILocation(line: 573, column: 5, scope: !5344)
!5352 = !DILocation(line: 575, column: 1, scope: !5344)
!5353 = distinct !DISubprogram(name: "gap_random_address_update_handler", scope: !3, file: !3, line: 680, type: !5198, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !5354)
!5354 = !{!5355}
!5355 = !DILocalVariable(name: "timer", arg: 1, scope: !5353, file: !3, line: 680, type: !5200)
!5356 = !DILocation(line: 680, column: 71, scope: !5353)
!5357 = !DILocation(line: 684, column: 5, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 684, column: 5)
!5359 = !DILocation(line: 684, column: 5, scope: !5353)
!5360 = !DILocation(line: 684, column: 5, scope: !5361)
!5361 = !DILexicalBlockFile(scope: !5358, file: !3, discriminator: 1)
!5362 = !DILocation(line: 685, column: 5, scope: !5353)
!5363 = !DILocation(line: 686, column: 1, scope: !5353)
