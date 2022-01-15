; ModuleID = 'gatt_client.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/gatt_client.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.gatt_client_info_t = type { %struct.btstack_linked_item*, %struct.btstack_linked_item*, %struct.btstack_packet_callback_registration_t, void (i8, i16, i8*, i16)*, i8 }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }
%struct.gatt_client = type { %struct.btstack_linked_item, i32, void (i8, i16, i8*, i16)*, i16, i8, [6 x i8], i16, i32, i16, [16 x i8], i16, i16, i16, i16, i8, i16, i16, i16, i16, i8*, i16, i16*, i16, [2 x i8], i8, i8, i32, [8 x i8], %struct.btstack_timer_source, i32, [7 x i8], i8 }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.gatt_client_notification = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)*, i16, i16 }
%struct.le_characteristic_t = type { i16, i16, i16, i16, i16, [16 x i8] }
%struct.le_service_t = type { i16, i16, i16, [16 x i8] }
%struct.gatt_client_characteristic_descriptor_t = type { i16, i16, [16 x i8] }
%struct.btstack_linked_list_iterator_t = type { i32, %struct.btstack_linked_item*, %struct.btstack_linked_item* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@config_le_gatt_client_num = external local_unnamed_addr constant i32, align 4
@gatt_client_global_info = internal global %struct.gatt_client_info_t zeroinitializer, section ".ble_gatt_bss", align 4, !dbg !193
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"[ble-info] :%s,%d\0A\0A\00", align 1
@__FUNCTION__.gatt_client_sync_mtu = private unnamed_addr constant [21 x i8] c"gatt_client_sync_mtu\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"[ble-info] :GATT client timeout stop, handle 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"[ble-info] :type %d,att_packect(%d):\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"[ble-info] :remote_rx_mtu,local_rx_mtu,real_mtu:%d,%d,%d\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"[ble-info] :ATT Handler, unhandled response type 0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"[ble-info] :GATT client timeout start, handle 0x%02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"[ble-info] :GATT client timeout handle, handle 0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"<ble-error> :gatt_client_run: value len %u > MTU %u - 3\0D\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"[ble-info] :att_exchange_mtu_request: %d\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"[ble-info] :att_exchange_mtu_response: %d\0A\0A\00", align 1
@str = private unnamed_addr constant [58 x i8] c"[ble-info] :GATT Client: HCI_EVENT_DISCONNECTION_COMPLETE\00"
@str.19 = private unnamed_addr constant [25 x i8] c"error:client drop cmd!!!\00"
@str.20 = private unnamed_addr constant [39 x i8] c"[ble-info] :ATT_EXCHANGE_MTU_RESPONSE\0A\00"
@str.21 = private unnamed_addr constant [38 x i8] c"[ble-info] :ATT_EXCHANGE_MTU_REQUEST\0A\00"
@str.22 = private unnamed_addr constant [12 x i8] c"[ble-dump]:\00"
@str.23 = private unnamed_addr constant [44 x i8] c"[ble-info] :-client-SEND_MTU_EXCHANGED_RSP\0A\00"
@str.24 = private unnamed_addr constant [47 x i8] c"<ble-error> :Peripheral mtu is not initialized\00"
@str.25 = private unnamed_addr constant [119 x i8] c"[ble-info] :gatt_client_write_client_characteristic_configuration: GATT_CLIENT_CHARACTERISTIC_INDICATION_NOT_SUPPORTED\00"
@str.26 = private unnamed_addr constant [121 x i8] c"[ble-info] :gatt_client_write_client_characteristic_configuration: GATT_CLIENT_CHARACTERISTIC_NOTIFICATION_NOT_SUPPORTED\00"

; Function Attrs: nounwind optsize
define hidden void @gatt_client_register_packet_handler(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !218 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !222, metadata !DIExpression()), !dbg !223
  %2 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !224, !tbaa !226
  %3 = icmp eq i32 %2, 0, !dbg !224
  br i1 %3, label %5, label %4, !dbg !230

; <label>:4:                                      ; preds = %1
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 3), align 4, !dbg !231, !tbaa !233
  br label %5, !dbg !238

; <label>:5:                                      ; preds = %4, %1
  ret void, !dbg !239
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define hidden void @gatt_client_request_can_send_now_event(i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !240 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !244, metadata !DIExpression()), !dbg !245
  %2 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !246, !tbaa !226
  %3 = icmp eq i32 %2, 0, !dbg !246
  br i1 %3, label %5, label %4, !dbg !248

; <label>:4:                                      ; preds = %1
  tail call void @att_dispatch_client_request_can_send_now_event(i16 zeroext %0) #9, !dbg !249
  br label %5, !dbg !251

; <label>:5:                                      ; preds = %4, %1
  ret void, !dbg !252
}

; Function Attrs: optsize
declare void @att_dispatch_client_request_can_send_now_event(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @gatt_client_init() local_unnamed_addr #0 section ".ble_gatt_code" !dbg !253 {
  %1 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !257, !tbaa !226
  %2 = icmp eq i32 %1, 0, !dbg !257
  br i1 %2, label %4, label %3, !dbg !259

; <label>:3:                                      ; preds = %0
  store %struct.btstack_linked_item* null, %struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), align 4, !dbg !260, !tbaa !261
  store i8 0, i8* getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 4), align 4, !dbg !262, !tbaa !263
  store void (i8, i16, i8*, i16)* @gatt_client_hci_event_packet_handler, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 2, i32 1), align 4, !dbg !264, !tbaa !265
  tail call void @hci_add_event_handler(i8* bitcast (%struct.btstack_packet_callback_registration_t* getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 2) to i8*)) #9, !dbg !266
  tail call void @att_dispatch_register_client(void (i8, i16, i8*, i16)* nonnull @gatt_client_att_packet_handler) #9, !dbg !267
  br label %4, !dbg !268

; <label>:4:                                      ; preds = %3, %0
  ret void, !dbg !269
}

; Function Attrs: nounwind optsize
define internal void @gatt_client_hci_event_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".ble_gatt_code" !dbg !271 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !273, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i16 %1, metadata !274, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i8* %2, metadata !275, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i16 %3, metadata !276, metadata !DIExpression()), !dbg !284
  %5 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !285, !tbaa !226
  %6 = icmp ne i32 %5, 0, !dbg !285
  %7 = icmp eq i8 %0, 4, !dbg !287
  %8 = and i1 %7, %6, !dbg !289
  br i1 %8, label %9, label %39, !dbg !289

; <label>:9:                                      ; preds = %4
  %10 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* %2) #10, !dbg !290
  %11 = icmp eq i8 %10, 5, !dbg !291
  br i1 %11, label %12, label %38, !dbg !291

; <label>:12:                                     ; preds = %9
  %13 = load i8, i8* @ble_debug_enable, align 1, !dbg !292, !tbaa !294
  %14 = and i8 %13, 1, !dbg !292
  %15 = icmp eq i8 %14, 0, !dbg !292
  br i1 %15, label %18, label %16, !dbg !295

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str, i32 0, i32 0)), !dbg !296
  br label %18, !dbg !296

; <label>:18:                                     ; preds = %16, %12
  %19 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 3) #9, !dbg !298
  call void @llvm.dbg.value(metadata i16 %19, metadata !277, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i16 %19, metadata !300, metadata !DIExpression()), !dbg !310
  %20 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %20, metadata !305, metadata !DIExpression()), !dbg !313
  %21 = icmp eq %struct.btstack_linked_item* %20, null, !dbg !314
  br i1 %21, label %38, label %22, !dbg !314

; <label>:22:                                     ; preds = %18
  br label %27, !dbg !316

; <label>:23:                                     ; preds = %27
  %24 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %28, i32 0, i32 0, !dbg !318
  %25 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %24, align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %25, metadata !305, metadata !DIExpression()), !dbg !313
  %26 = icmp eq %struct.btstack_linked_item* %25, null, !dbg !314
  br i1 %26, label %37, label %27, !dbg !314, !llvm.loop !320

; <label>:27:                                     ; preds = %23, %22
  %28 = phi %struct.btstack_linked_item* [ %25, %23 ], [ %20, %22 ]
  %29 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %28, i32 3, !dbg !316
  %30 = bitcast %struct.btstack_linked_item* %29 to i16*, !dbg !316
  %31 = load i16, i16* %30, align 4, !dbg !316, !tbaa !323
  %32 = icmp eq i16 %31, %19, !dbg !327
  br i1 %32, label %33, label %23

; <label>:33:                                     ; preds = %27
  %34 = bitcast %struct.btstack_linked_item* %28 to %struct.gatt_client*, !dbg !328
  tail call fastcc void @gatt_client_report_error_if_pending(%struct.gatt_client* nonnull %34, i8 zeroext 31) #10, !dbg !329
  %35 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), %struct.btstack_linked_item* nonnull %28) #9, !dbg !330
  %36 = bitcast %struct.btstack_linked_item* %28 to i8*, !dbg !331
  tail call void @btstack_memory_gatt_client_free(i8* %36) #9, !dbg !332
  br label %38, !dbg !333

; <label>:37:                                     ; preds = %23
  br label %38, !dbg !334

; <label>:38:                                     ; preds = %37, %33, %18, %9
  tail call fastcc void @gatt_client_run() #10, !dbg !334
  br label %39, !dbg !335

; <label>:39:                                     ; preds = %38, %4
  ret void, !dbg !336
}

; Function Attrs: optsize
declare void @hci_add_event_handler(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @att_dispatch_register_client(void (i8, i16, i8*, i16)*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @gatt_client_att_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".ble_gatt_code" !dbg !338 {
  %5 = alloca [22 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [22 x i8]* %5, metadata !379, metadata !DIExpression()), !dbg !390
  %6 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !405, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !409, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !419, metadata !DIExpression()), !dbg !436
  %7 = alloca i16, align 2
  %8 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !340, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i16 %1, metadata !341, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i8* %2, metadata !342, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i16 %3, metadata !343, metadata !DIExpression()), !dbg !442
  %9 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !443, !tbaa !226
  %10 = icmp eq i32 %9, 0, !dbg !443
  br i1 %10, label %488, label %11, !dbg !445

; <label>:11:                                     ; preds = %4
  %12 = zext i8 %0 to i32, !dbg !446
  switch i8 %0, label %488 [
    i8 4, label %13
    i8 8, label %21
  ], !dbg !448

; <label>:13:                                     ; preds = %11
  %14 = load i8, i8* %2, align 1, !dbg !449, !tbaa !294
  %15 = icmp eq i8 %14, 120, !dbg !451
  br i1 %15, label %16, label %488, !dbg !452

; <label>:16:                                     ; preds = %13
  tail call fastcc void @gatt_client_run() #10, !dbg !454
  %17 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 3), align 4, !dbg !456, !tbaa !233
  %18 = icmp eq void (i8, i16, i8*, i16)* %17, null, !dbg !462
  br i1 %18, label %488, label %19, !dbg !463

; <label>:19:                                     ; preds = %16
  %20 = bitcast i16* %7 to i8*, !dbg !464
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %20) #8, !dbg !464
  store i16 439, i16* %7, align 2, !dbg !465
  call void %17(i8 zeroext 4, i16 zeroext 0, i8* nonnull %20, i16 zeroext 2) #9, !dbg !466
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %20) #8, !dbg !467
  br label %488, !dbg !467

; <label>:21:                                     ; preds = %11
  %22 = load i8, i8* @ble_debug_enable, align 1, !dbg !468, !tbaa !294
  %23 = and i8 %22, 1, !dbg !468
  %24 = icmp eq i8 %23, 0, !dbg !468
  br i1 %24, label %29, label %25, !dbg !470

; <label>:25:                                     ; preds = %21
  %26 = zext i16 %3 to i32, !dbg !471
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32 %12, i32 %26) #10, !dbg !471
  %28 = load i8, i8* @ble_debug_enable, align 1, !tbaa !294
  br label %29, !dbg !471

; <label>:29:                                     ; preds = %25, %21
  %30 = phi i8 [ %22, %21 ], [ %28, %25 ], !dbg !473
  %31 = and i8 %30, 2, !dbg !473
  %32 = icmp eq i8 %31, 0, !dbg !473
  br i1 %32, label %36, label %33, !dbg !475

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.22, i32 0, i32 0)), !dbg !476
  %35 = zext i16 %3 to i32, !dbg !476
  tail call void @put_buf(i8* %2, i32 %35) #9, !dbg !479
  br label %36, !dbg !476

; <label>:36:                                     ; preds = %33, %29
  %37 = load i8, i8* %2, align 1, !dbg !481, !tbaa !294
  switch i8 %37, label %46 [
    i8 27, label %38
    i8 29, label %44
    i8 2, label %44
    i8 8, label %44
  ], !dbg !482

; <label>:38:                                     ; preds = %36
  %39 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 1) #9, !dbg !483
  %40 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !485
  %41 = add i16 %3, -3, !dbg !486
  call void @llvm.dbg.value(metadata i16 %1, metadata !487, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i16 %39, metadata !492, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i8* %40, metadata !493, metadata !DIExpression()), !dbg !500
  %42 = tail call fastcc i8* @setup_characteristic_value_packet(i8 zeroext -89, i16 zeroext %1, i16 zeroext %39, i8* %40, i16 zeroext %41) #9, !dbg !501
  call void @llvm.dbg.value(metadata i8* %42, metadata !495, metadata !DIExpression()), !dbg !502
  %43 = add i16 %3, 5, !dbg !503
  tail call fastcc void @emit_event_to_registered_listeners(i8* %42, i16 zeroext %43) #9, !dbg !504
  br label %488, !dbg !505

; <label>:44:                                     ; preds = %36, %36, %36
  %45 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle(i16 zeroext %1) #10, !dbg !506
  call void @llvm.dbg.value(metadata %struct.gatt_client* %45, metadata !344, metadata !DIExpression()), !dbg !507
  br label %62, !dbg !508

; <label>:46:                                     ; preds = %36
  call void @llvm.dbg.value(metadata i16 %1, metadata !300, metadata !DIExpression()), !dbg !509
  %47 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %47, metadata !305, metadata !DIExpression()), !dbg !511
  %48 = icmp eq %struct.btstack_linked_item* %47, null, !dbg !512
  br i1 %48, label %66, label %49, !dbg !512

; <label>:49:                                     ; preds = %46
  br label %54, !dbg !513

; <label>:50:                                     ; preds = %54
  %51 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %55, i32 0, i32 0, !dbg !514
  %52 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %51, align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %52, metadata !305, metadata !DIExpression()), !dbg !511
  %53 = icmp eq %struct.btstack_linked_item* %52, null, !dbg !512
  br i1 %53, label %65, label %54, !dbg !512, !llvm.loop !320

; <label>:54:                                     ; preds = %50, %49
  %55 = phi %struct.btstack_linked_item* [ %52, %50 ], [ %47, %49 ]
  %56 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %55, i32 3, !dbg !513
  %57 = bitcast %struct.btstack_linked_item* %56 to i16*, !dbg !513
  %58 = load i16, i16* %57, align 4, !dbg !513, !tbaa !323
  %59 = icmp eq i16 %58, %1, !dbg !515
  br i1 %59, label %60, label %50

; <label>:60:                                     ; preds = %54
  %61 = bitcast %struct.btstack_linked_item* %55 to %struct.gatt_client*, !dbg !516
  br label %62, !dbg !507

; <label>:62:                                     ; preds = %60, %44
  %63 = phi %struct.gatt_client* [ %45, %44 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !344, metadata !DIExpression()), !dbg !507
  %64 = icmp eq %struct.gatt_client* %63, null, !dbg !517
  br i1 %64, label %66, label %69, !dbg !519

; <label>:65:                                     ; preds = %50
  br label %66, !dbg !520

; <label>:66:                                     ; preds = %65, %62, %46
  %67 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.19, i32 0, i32 0)), !dbg !520
  %68 = zext i16 %3 to i32, !dbg !522
  tail call void @put_buf(i8* %2, i32 %68) #9, !dbg !523
  br label %488, !dbg !524

; <label>:69:                                     ; preds = %62
  %70 = load i8, i8* %2, align 1, !dbg !525, !tbaa !294
  %71 = zext i8 %70 to i32, !dbg !525
  switch i8 %70, label %481 [
    i8 2, label %77
    i8 3, label %77
    i8 17, label %111
    i8 29, label %146
    i8 9, label %153
    i8 11, label %246
    i8 7, label %72
    i8 5, label %288
    i8 19, label %326
    i8 13, label %332
    i8 23, label %384
    i8 25, label %423
    i8 15, label %434
    i8 1, label %441
    i8 8, label %466
  ], !dbg !526

; <label>:72:                                     ; preds = %69
  call void @llvm.dbg.value(metadata i16 -1, metadata !373, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 1, metadata !371, metadata !DIExpression()), !dbg !528
  %73 = zext i16 %3 to i32, !dbg !529
  %74 = icmp ugt i16 %3, 1, !dbg !533
  br i1 %74, label %75, label %286, !dbg !534

; <label>:75:                                     ; preds = %72
  %76 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 9, i32 0
  br label %278, !dbg !534

; <label>:77:                                     ; preds = %69, %69
  %78 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 1) #9, !dbg !536
  call void @llvm.dbg.value(metadata i16 %78, metadata !345, metadata !DIExpression()), !dbg !537
  %79 = tail call zeroext i16 @l2cap_max_le_mtu() #9, !dbg !538
  call void @llvm.dbg.value(metadata i16 %79, metadata !348, metadata !DIExpression()), !dbg !539
  %80 = zext i16 %78 to i32, !dbg !540
  %81 = zext i16 %79 to i32, !dbg !541
  %82 = icmp ult i16 %78, %79, !dbg !542
  %83 = select i1 %82, i16 %78, i16 %79, !dbg !540
  %84 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 6, !dbg !543
  store i16 %83, i16* %84, align 2, !dbg !545, !tbaa !546
  %85 = load i8, i8* %2, align 1, !dbg !547, !tbaa !294
  %86 = icmp eq i8 %85, 2, !dbg !549
  %87 = load i8, i8* @ble_debug_enable, align 1, !tbaa !294
  %88 = and i8 %87, 1
  %89 = icmp ne i8 %88, 0
  br i1 %86, label %90, label %93, !dbg !550

; <label>:90:                                     ; preds = %77
  br i1 %89, label %91, label %96, !dbg !551

; <label>:91:                                     ; preds = %90
  %92 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.21, i32 0, i32 0)), !dbg !553
  br label %96, !dbg !553

; <label>:93:                                     ; preds = %77
  br i1 %89, label %94, label %96, !dbg !556

; <label>:94:                                     ; preds = %93
  %95 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.20, i32 0, i32 0)), !dbg !558
  br label %96, !dbg !558

; <label>:96:                                     ; preds = %94, %93, %91, %90
  %97 = phi i32 [ 3, %91 ], [ 3, %90 ], [ 2, %94 ], [ 2, %93 ]
  %98 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 7
  store i32 %97, i32* %98, align 4, !tbaa !561
  %99 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 3, !dbg !562
  %100 = load i16, i16* %99, align 4, !dbg !562, !tbaa !323
  %101 = load i16, i16* %84, align 2, !dbg !563, !tbaa !546
  %102 = tail call i32 @att_server_sync_mtu(i16 zeroext %100, i16 zeroext %101) #9, !dbg !564
  %103 = load i16, i16* %84, align 2, !dbg !565, !tbaa !546
  tail call fastcc void @gatt_client_att_emit_mtu_event(i16 zeroext %1, i16 zeroext %103) #10, !dbg !566
  %104 = load i8, i8* @ble_debug_enable, align 1, !dbg !567, !tbaa !294
  %105 = and i8 %104, 1, !dbg !567
  %106 = icmp eq i8 %105, 0, !dbg !567
  br i1 %106, label %487, label %107, !dbg !569

; <label>:107:                                    ; preds = %96
  %108 = load i16, i16* %84, align 2, !dbg !570, !tbaa !546
  %109 = zext i16 %108 to i32, !dbg !570
  %110 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i32 0, i32 0), i32 %80, i32 %81, i32 %109) #10, !dbg !570
  br label %487, !dbg !570

; <label>:111:                                    ; preds = %69
  %112 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !572
  %113 = load i32, i32* %112, align 4, !dbg !572, !tbaa !573
  %114 = icmp eq i32 %113, 2, !dbg !574
  br i1 %114, label %115, label %487, !dbg !574

; <label>:115:                                    ; preds = %111
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !427, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata i8* %2, metadata !428, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i16 %3, metadata !429, metadata !DIExpression()), !dbg !577
  %116 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !578
  %117 = load i8, i8* %116, align 1, !dbg !578, !tbaa !294
  call void @llvm.dbg.value(metadata i8 %117, metadata !430, metadata !DIExpression()), !dbg !579
  %118 = zext i8 %117 to i32, !dbg !580
  call void @llvm.dbg.value(metadata i32 2, metadata !432, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata i32 2, metadata !432, metadata !DIExpression()), !dbg !581
  %119 = zext i16 %3 to i32, !dbg !582
  %120 = icmp ugt i16 %3, 2, !dbg !584
  br i1 %120, label %121, label %140, !dbg !585

; <label>:121:                                    ; preds = %115
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %123 = icmp eq i8 %117, 6
  br label %124, !dbg !585

; <label>:124:                                    ; preds = %135, %121
  %125 = phi i32 [ 2, %121 ], [ %136, %135 ]
  %126 = call zeroext i16 @little_endian_read_16(i8* %2, i32 %125) #9, !dbg !587
  call void @llvm.dbg.value(metadata i16 %126, metadata !433, metadata !DIExpression()), !dbg !588
  %127 = add nuw nsw i32 %125, 2, !dbg !589
  %128 = call zeroext i16 @little_endian_read_16(i8* %2, i32 %127) #9, !dbg !590
  call void @llvm.dbg.value(metadata i16 %128, metadata !434, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %122) #8, !dbg !592
  call void @llvm.dbg.value(metadata i16 0, metadata !435, metadata !DIExpression()), !dbg !593
  %129 = add nuw nsw i32 %125, 4
  br i1 %123, label %130, label %133, !dbg !594

; <label>:130:                                    ; preds = %124
  %131 = call zeroext i16 @little_endian_read_16(i8* %2, i32 %129) #9, !dbg !595
  call void @llvm.dbg.value(metadata i16 %131, metadata !435, metadata !DIExpression()), !dbg !593
  %132 = zext i16 %131 to i32, !dbg !598
  call void @uuid_add_bluetooth_prefix(i8* nonnull %122, i32 %132) #9, !dbg !599
  br label %135, !dbg !600

; <label>:133:                                    ; preds = %124
  %134 = getelementptr inbounds i8, i8* %2, i32 %129, !dbg !601
  call void @reverse_128(i8* %134, i8* nonnull %122) #9, !dbg !603
  br label %135

; <label>:135:                                    ; preds = %133, %130
  call fastcc void @emit_gatt_service_query_result_event(%struct.gatt_client* %63, i16 zeroext %126, i16 zeroext %128, i8* nonnull %122) #9, !dbg !604
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %122) #8, !dbg !605
  %136 = add nsw i32 %125, %118, !dbg !606
  call void @llvm.dbg.value(metadata i32 %136, metadata !432, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata i32 %136, metadata !432, metadata !DIExpression()), !dbg !581
  %137 = icmp slt i32 %136, %119, !dbg !584
  br i1 %137, label %124, label %138, !dbg !585, !llvm.loop !608

; <label>:138:                                    ; preds = %135
  %139 = load i8, i8* %116, align 1, !tbaa !294
  br label %140, !dbg !611

; <label>:140:                                    ; preds = %138, %115
  %141 = phi i8 [ %139, %138 ], [ %117, %115 ], !dbg !620
  call void @llvm.dbg.value(metadata i8* %2, metadata !616, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i16 %3, metadata !617, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata i8 %141, metadata !618, metadata !DIExpression()), !dbg !622
  %142 = zext i8 %141 to i32, !dbg !623
  %143 = add nuw nsw i32 %119, 2, !dbg !624
  %144 = sub nsw i32 %143, %142, !dbg !625
  %145 = call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 %144) #9, !dbg !626
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !627, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i16 %145, metadata !632, metadata !DIExpression()), !dbg !636
  call fastcc void @trigger_next_query(%struct.gatt_client* %63, i16 zeroext %145, i32 1) #9, !dbg !637
  br label %487, !dbg !638

; <label>:146:                                    ; preds = %69
  %147 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 1) #9, !dbg !639
  %148 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !640
  %149 = add i16 %3, -3, !dbg !641
  call void @llvm.dbg.value(metadata i16 %1, metadata !642, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i16 %147, metadata !645, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i8* %148, metadata !646, metadata !DIExpression()), !dbg !653
  %150 = tail call fastcc i8* @setup_characteristic_value_packet(i8 zeroext -88, i16 zeroext %1, i16 zeroext %147, i8* %148, i16 zeroext %149) #9, !dbg !654
  call void @llvm.dbg.value(metadata i8* %150, metadata !648, metadata !DIExpression()), !dbg !655
  %151 = add i16 %3, 5, !dbg !656
  tail call fastcc void @emit_event_to_registered_listeners(i8* %150, i16 zeroext %151) #9, !dbg !657
  %152 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 25, !dbg !658
  store i8 1, i8* %152, align 1, !dbg !659, !tbaa !660
  br label %487, !dbg !661

; <label>:153:                                    ; preds = %69
  %154 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !662
  %155 = load i32, i32* %154, align 4, !dbg !662, !tbaa !573
  switch i32 %155, label %487 [
    i32 6, label %156
    i32 8, label %169
    i32 12, label %182
    i32 36, label %223
    i32 20, label %226
  ], !dbg !663

; <label>:156:                                    ; preds = %153
  tail call fastcc void @report_gatt_characteristics(%struct.gatt_client* nonnull %63, i8* nonnull %2, i16 zeroext %3) #10, !dbg !664
  call void @llvm.dbg.value(metadata i8* %2, metadata !665, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i16 %3, metadata !668, metadata !DIExpression()), !dbg !672
  %157 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !673
  %158 = load i8, i8* %157, align 1, !dbg !673, !tbaa !294
  call void @llvm.dbg.value(metadata i8 %158, metadata !669, metadata !DIExpression()), !dbg !674
  %159 = zext i16 %3 to i32, !dbg !675
  %160 = zext i8 %158 to i32, !dbg !676
  %161 = add nuw nsw i32 %159, 3, !dbg !677
  %162 = sub nsw i32 %161, %160, !dbg !678
  %163 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 %162) #9, !dbg !679
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !680, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i16 %163, metadata !683, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !688, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i16 %163, metadata !693, metadata !DIExpression()), !dbg !697
  %164 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 11, !dbg !698
  %165 = load i16, i16* %164, align 4, !dbg !698, !tbaa !699
  %166 = icmp ugt i16 %165, %163, !dbg !700
  br i1 %166, label %168, label %167, !dbg !701

; <label>:167:                                    ; preds = %156
  tail call fastcc void @characteristic_end_found(%struct.gatt_client* nonnull %63, i16 zeroext %165) #9, !dbg !702
  br label %168, !dbg !704

; <label>:168:                                    ; preds = %167, %156
  tail call fastcc void @trigger_next_query(%struct.gatt_client* nonnull %63, i16 zeroext %163, i32 5) #9, !dbg !705
  br label %487, !dbg !706

; <label>:169:                                    ; preds = %153
  tail call fastcc void @report_gatt_characteristics(%struct.gatt_client* nonnull %63, i8* nonnull %2, i16 zeroext %3) #10, !dbg !707
  call void @llvm.dbg.value(metadata i8* %2, metadata !665, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i16 %3, metadata !668, metadata !DIExpression()), !dbg !710
  %170 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !711
  %171 = load i8, i8* %170, align 1, !dbg !711, !tbaa !294
  call void @llvm.dbg.value(metadata i8 %171, metadata !669, metadata !DIExpression()), !dbg !712
  %172 = zext i16 %3 to i32, !dbg !713
  %173 = zext i8 %171 to i32, !dbg !714
  %174 = add nuw nsw i32 %172, 3, !dbg !715
  %175 = sub nsw i32 %174, %173, !dbg !716
  %176 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 %175) #9, !dbg !717
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !680, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i16 %176, metadata !683, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !688, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i16 %176, metadata !693, metadata !DIExpression()), !dbg !723
  %177 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 11, !dbg !724
  %178 = load i16, i16* %177, align 4, !dbg !724, !tbaa !699
  %179 = icmp ugt i16 %178, %176, !dbg !725
  br i1 %179, label %181, label %180, !dbg !726

; <label>:180:                                    ; preds = %169
  tail call fastcc void @characteristic_end_found(%struct.gatt_client* nonnull %63, i16 zeroext %178) #9, !dbg !727
  br label %181, !dbg !728

; <label>:181:                                    ; preds = %180, %169
  tail call fastcc void @trigger_next_query(%struct.gatt_client* nonnull %63, i16 zeroext %176, i32 5) #9, !dbg !729
  br label %487, !dbg !730

; <label>:182:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i16 0, metadata !349, metadata !DIExpression()), !dbg !731
  %183 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !732
  %184 = load i8, i8* %183, align 1, !dbg !732, !tbaa !294
  %185 = zext i8 %184 to i32, !dbg !733
  %186 = icmp ult i8 %184, 7, !dbg !735
  br i1 %186, label %194, label %187, !dbg !736

; <label>:187:                                    ; preds = %182
  %188 = zext i16 %3 to i32, !dbg !737
  %189 = icmp ugt i16 %3, 2, !dbg !739
  br i1 %189, label %190, label %218, !dbg !740

; <label>:190:                                    ; preds = %187
  %191 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 12
  %192 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 13
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  br label %201, !dbg !740

; <label>:194:                                    ; preds = %182
  %195 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 2) #9, !dbg !742
  %196 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 10, !dbg !744
  store i16 %195, i16* %196, align 2, !dbg !745, !tbaa !746
  %197 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 4) #9, !dbg !747
  %198 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 12, !dbg !748
  store i16 %197, i16* %198, align 2, !dbg !749, !tbaa !750
  %199 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 6) #9, !dbg !751
  %200 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 13, !dbg !752
  store i16 %199, i16* %200, align 4, !dbg !753, !tbaa !754
  store i32 13, i32* %154, align 4, !dbg !755, !tbaa !573
  br label %487, !dbg !756

; <label>:201:                                    ; preds = %201, %190
  %202 = phi i32 [ 2, %190 ], [ %214, %201 ]
  %203 = call zeroext i16 @little_endian_read_16(i8* %2, i32 %202) #9, !dbg !757
  call void @llvm.dbg.value(metadata i16 %203, metadata !354, metadata !DIExpression()), !dbg !758
  %204 = add nuw nsw i32 %202, 2, !dbg !759
  %205 = call zeroext i16 @little_endian_read_16(i8* %2, i32 %204) #9, !dbg !760
  store i16 %205, i16* %191, align 2, !dbg !761, !tbaa !750
  %206 = add nuw nsw i32 %202, 4, !dbg !762
  %207 = call zeroext i16 @little_endian_read_16(i8* %2, i32 %206) #9, !dbg !763
  store i16 %207, i16* %192, align 4, !dbg !764, !tbaa !754
  %208 = add nuw nsw i32 %202, 6, !dbg !765
  %209 = call zeroext i16 @little_endian_read_16(i8* %2, i32 %208) #9, !dbg !766
  call void @llvm.dbg.value(metadata i16 %209, metadata !349, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !414, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i16 %203, metadata !415, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i16 %209, metadata !416, metadata !DIExpression()), !dbg !769
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %193) #8, !dbg !770
  %210 = zext i16 %209 to i32, !dbg !771
  call void @uuid_add_bluetooth_prefix(i8* nonnull %193, i32 %210) #9, !dbg !772
  %211 = load i16, i16* %191, align 2, !dbg !773, !tbaa !750
  %212 = load i16, i16* %192, align 4, !dbg !774, !tbaa !754
  call fastcc void @emit_gatt_included_service_query_result_event(%struct.gatt_client* nonnull %63, i16 zeroext %203, i16 zeroext %211, i16 zeroext %212, i8* nonnull %193) #9, !dbg !775
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %193) #8, !dbg !776
  %213 = add nuw nsw i32 %202, %185, !dbg !777
  %214 = and i32 %213, 65535, !dbg !779
  %215 = icmp ult i32 %214, %188, !dbg !739
  br i1 %215, label %201, label %216, !dbg !740, !llvm.loop !780

; <label>:216:                                    ; preds = %201
  %217 = load i8, i8* %183, align 1, !tbaa !294
  br label %218, !dbg !783

; <label>:218:                                    ; preds = %216, %187
  %219 = phi i8 [ %217, %216 ], [ %184, %187 ], !dbg !790
  call void @llvm.dbg.value(metadata i8* %2, metadata !786, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i16 %3, metadata !787, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i8 %219, metadata !788, metadata !DIExpression()), !dbg !792
  %220 = zext i8 %219 to i32, !dbg !793
  %221 = sub nsw i32 %188, %220, !dbg !794
  %222 = call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 %221) #9, !dbg !795
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !796, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i16 %222, metadata !799, metadata !DIExpression()), !dbg !803
  call fastcc void @trigger_next_query(%struct.gatt_client* nonnull %63, i16 zeroext %222, i32 11) #9, !dbg !804
  br label %487

; <label>:223:                                    ; preds = %153
  %224 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 2) #9, !dbg !805
  %225 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 22, !dbg !806
  store i16 %224, i16* %225, align 4, !dbg !807, !tbaa !808
  store i32 37, i32* %154, align 4, !dbg !809, !tbaa !573
  br label %487, !dbg !810

; <label>:226:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i16 0, metadata !361, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i16 2, metadata !360, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i16 0, metadata !361, metadata !DIExpression()), !dbg !811
  %227 = zext i16 %3 to i32, !dbg !813
  %228 = icmp ugt i16 %3, 2, !dbg !815
  br i1 %228, label %229, label %244, !dbg !816

; <label>:229:                                    ; preds = %226
  %230 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !818
  %231 = load i8, i8* %230, align 1, !dbg !818, !tbaa !294
  %232 = zext i8 %231 to i32
  %233 = add nuw nsw i32 %232, 65534
  %234 = trunc i32 %233 to i16
  br label %235, !dbg !816

; <label>:235:                                    ; preds = %235, %229
  %236 = phi i32 [ 2, %229 ], [ %241, %235 ]
  %237 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 %236) #9, !dbg !819
  call void @llvm.dbg.value(metadata i16 %237, metadata !362, metadata !DIExpression()), !dbg !820
  %238 = add nuw nsw i32 %236, 2, !dbg !821
  %239 = getelementptr inbounds i8, i8* %2, i32 %238, !dbg !822
  tail call fastcc void @report_gatt_characteristic_value(%struct.gatt_client* %63, i16 zeroext %237, i8* %239, i16 zeroext %234) #10, !dbg !823
  call void @llvm.dbg.value(metadata i16 %237, metadata !361, metadata !DIExpression()), !dbg !811
  %240 = add nuw nsw i32 %236, %232, !dbg !824
  call void @llvm.dbg.value(metadata i16 %237, metadata !361, metadata !DIExpression()), !dbg !811
  %241 = and i32 %240, 65535, !dbg !826
  %242 = icmp ult i32 %241, %227, !dbg !815
  br i1 %242, label %235, label %243, !dbg !816, !llvm.loop !827

; <label>:243:                                    ; preds = %235
  br label %244, !dbg !830

; <label>:244:                                    ; preds = %243, %226
  %245 = phi i16 [ 0, %226 ], [ %237, %243 ]
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !833, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i16 undef, metadata !834, metadata !DIExpression()), !dbg !836
  tail call fastcc void @trigger_next_query(%struct.gatt_client* %63, i16 zeroext %245, i32 19) #9, !dbg !837
  br label %487

; <label>:246:                                    ; preds = %69
  %247 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !838
  %248 = load i32, i32* %247, align 4, !dbg !838, !tbaa !573
  switch i32 %248, label %487 [
    i32 14, label %249
    i32 16, label %259
    i32 40, label %264
  ], !dbg !839

; <label>:249:                                    ; preds = %246
  %250 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 0, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %250) #8, !dbg !840
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !366, metadata !DIExpression()), !dbg !841
  %251 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !842
  call void @reverse_128(i8* %251, i8* nonnull %250) #9, !dbg !843
  %252 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 10, !dbg !844
  %253 = load i16, i16* %252, align 2, !dbg !844, !tbaa !746
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !845, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i16 %253, metadata !848, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8* %250, metadata !849, metadata !DIExpression()), !dbg !853
  %254 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 12, !dbg !854
  %255 = load i16, i16* %254, align 2, !dbg !854, !tbaa !750
  %256 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 13, !dbg !855
  %257 = load i16, i16* %256, align 4, !dbg !855, !tbaa !754
  call fastcc void @emit_gatt_included_service_query_result_event(%struct.gatt_client* nonnull %63, i16 zeroext %253, i16 zeroext %255, i16 zeroext %257, i8* nonnull %250) #9, !dbg !856
  %258 = load i16, i16* %252, align 2, !dbg !857, !tbaa !746
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !796, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i16 %258, metadata !799, metadata !DIExpression()), !dbg !860
  call fastcc void @trigger_next_query(%struct.gatt_client* nonnull %63, i16 zeroext %258, i32 11) #9, !dbg !861
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %250) #8, !dbg !862
  br label %487

; <label>:259:                                    ; preds = %246
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !868
  store i32 0, i32* %247, align 4, !dbg !870, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !871
  %260 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 16, !dbg !872
  %261 = load i16, i16* %260, align 2, !dbg !872, !tbaa !873
  %262 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !874
  %263 = add i16 %3, -1, !dbg !875
  tail call fastcc void @report_gatt_characteristic_value(%struct.gatt_client* nonnull %63, i16 zeroext %261, i8* %262, i16 zeroext %263) #10, !dbg !876
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !877
  br label %487, !dbg !878

; <label>:264:                                    ; preds = %246
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !879
  store i32 0, i32* %247, align 4, !dbg !882, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !883
  %265 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 16, !dbg !884
  %266 = load i16, i16* %265, align 2, !dbg !884, !tbaa !873
  %267 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !885
  %268 = add i16 %3, -1, !dbg !886
  call void @llvm.dbg.value(metadata i16 0, metadata !887, metadata !DIExpression()), !dbg !897
  %269 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 3, !dbg !899
  %270 = load i16, i16* %269, align 4, !dbg !899, !tbaa !323
  %271 = tail call fastcc i8* @setup_characteristic_value_packet(i8 zeroext -87, i16 zeroext %270, i16 zeroext %266, i8* %267, i16 zeroext %268) #9, !dbg !900
  call void @llvm.dbg.value(metadata i8* %271, metadata !896, metadata !DIExpression()), !dbg !901
  %272 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 2, !dbg !902
  %273 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %272, align 4, !dbg !902, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %273, metadata !904, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %271, metadata !909, metadata !DIExpression()), !dbg !913
  %274 = icmp eq void (i8, i16, i8*, i16)* %273, null, !dbg !914
  br i1 %274, label %277, label %275, !dbg !916

; <label>:275:                                    ; preds = %264
  %276 = add i16 %3, 7, !dbg !917
  tail call void %273(i8 zeroext 4, i16 zeroext 0, i8* %271, i16 zeroext %276) #9, !dbg !918
  br label %277, !dbg !919

; <label>:277:                                    ; preds = %275, %264
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !920
  br label %487, !dbg !921

; <label>:278:                                    ; preds = %278, %75
  %279 = phi i32 [ 1, %75 ], [ %283, %278 ]
  %280 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 %279) #9, !dbg !922
  call void @llvm.dbg.value(metadata i16 %280, metadata !372, metadata !DIExpression()), !dbg !924
  %281 = add nuw nsw i32 %279, 2, !dbg !925
  %282 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 %281) #9, !dbg !926
  call void @llvm.dbg.value(metadata i16 %282, metadata !373, metadata !DIExpression()), !dbg !527
  tail call fastcc void @emit_gatt_service_query_result_event(%struct.gatt_client* %63, i16 zeroext %280, i16 zeroext %282, i8* %76) #10, !dbg !927
  %283 = add nuw nsw i32 %279, 4, !dbg !928
  call void @llvm.dbg.value(metadata i32 %283, metadata !371, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.value(metadata i16 %282, metadata !373, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 %283, metadata !371, metadata !DIExpression()), !dbg !528
  %284 = icmp slt i32 %283, %73, !dbg !533
  br i1 %284, label %278, label %285, !dbg !534, !llvm.loop !930

; <label>:285:                                    ; preds = %278
  br label %286, !dbg !933

; <label>:286:                                    ; preds = %285, %72
  %287 = phi i16 [ -1, %72 ], [ %282, %285 ]
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !936, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i16 undef, metadata !937, metadata !DIExpression()), !dbg !939
  tail call fastcc void @trigger_next_query(%struct.gatt_client* %63, i16 zeroext %287, i32 3) #9, !dbg !940
  br label %487

; <label>:288:                                    ; preds = %69
  call void @llvm.dbg.value(metadata i8 4, metadata !374, metadata !DIExpression()), !dbg !941
  %289 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !942
  %290 = load i8, i8* %289, align 1, !dbg !942, !tbaa !294
  %291 = icmp eq i8 %290, 2, !dbg !944
  %292 = zext i16 %3 to i32, !dbg !945
  %293 = select i1 %291, i32 18, i32 4, !dbg !946
  %294 = sub nsw i32 %292, %293, !dbg !947
  %295 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 %294) #9, !dbg !948
  call void @llvm.dbg.value(metadata i16 %295, metadata !376, metadata !DIExpression()), !dbg !949
  %296 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !950
  %297 = add i16 %3, -2, !dbg !951
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !399, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i8* %296, metadata !400, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i16 %297, metadata !401, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 0, metadata !403, metadata !DIExpression()), !dbg !955
  %298 = zext i16 %297 to i32, !dbg !956
  %299 = icmp eq i16 %297, 0, !dbg !958
  br i1 %299, label %325, label %300, !dbg !959

; <label>:300:                                    ; preds = %288
  %301 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %302 = getelementptr inbounds [22 x i8], [22 x i8]* %5, i32 0, i32 0
  %303 = getelementptr inbounds [22 x i8], [22 x i8]* %5, i32 0, i32 1
  %304 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 3
  %305 = getelementptr inbounds [22 x i8], [22 x i8]* %5, i32 0, i32 6
  %306 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 2
  br label %307, !dbg !959

; <label>:307:                                    ; preds = %321, %300
  %308 = phi i32 [ 0, %300 ], [ %322, %321 ]
  %309 = call zeroext i16 @little_endian_read_16(i8* %296, i32 %308) #9, !dbg !961
  call void @llvm.dbg.value(metadata i16 %309, metadata !404, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %301) #8, !dbg !963
  call void @llvm.dbg.value(metadata i16 0, metadata !406, metadata !DIExpression()), !dbg !964
  %310 = add nuw nsw i32 %308, 2
  br i1 %291, label %314, label %311, !dbg !965

; <label>:311:                                    ; preds = %307
  %312 = call zeroext i16 @little_endian_read_16(i8* %296, i32 %310) #9, !dbg !966
  call void @llvm.dbg.value(metadata i16 %312, metadata !406, metadata !DIExpression()), !dbg !964
  %313 = zext i16 %312 to i32, !dbg !969
  call void @uuid_add_bluetooth_prefix(i8* nonnull %301, i32 %313) #9, !dbg !970
  br label %316, !dbg !971

; <label>:314:                                    ; preds = %307
  %315 = getelementptr inbounds i8, i8* %296, i32 %310, !dbg !972
  call void @reverse_128(i8* %315, i8* nonnull %301) #9, !dbg !974
  br label %316

; <label>:316:                                    ; preds = %314, %311
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !384, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i16 %309, metadata !385, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8* %301, metadata !386, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %302) #8, !dbg !978
  store i8 -92, i8* %302, align 1, !dbg !979, !tbaa !294
  store i8 20, i8* %303, align 1, !dbg !980, !tbaa !294
  %317 = load i16, i16* %304, align 4, !dbg !981, !tbaa !323
  call void @little_endian_store_16(i8* nonnull %302, i16 zeroext 2, i16 zeroext %317) #9, !dbg !982
  call void @little_endian_store_16(i8* nonnull %302, i16 zeroext 4, i16 zeroext %309) #9, !dbg !983
  call void @reverse_128(i8* nonnull %301, i8* %305) #9, !dbg !984
  %318 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %306, align 4, !dbg !985, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %318, metadata !904, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i8* %302, metadata !909, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i16 22, metadata !910, metadata !DIExpression()), !dbg !989
  %319 = icmp eq void (i8, i16, i8*, i16)* %318, null, !dbg !990
  br i1 %319, label %321, label %320, !dbg !991

; <label>:320:                                    ; preds = %316
  call void %318(i8 zeroext 4, i16 zeroext 0, i8* nonnull %302, i16 zeroext 22) #9, !dbg !992
  br label %321, !dbg !993

; <label>:321:                                    ; preds = %320, %316
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %302) #8, !dbg !994
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %301) #8, !dbg !995
  %322 = add nsw i32 %308, %293, !dbg !996
  call void @llvm.dbg.value(metadata i32 %322, metadata !403, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %322, metadata !403, metadata !DIExpression()), !dbg !955
  %323 = icmp slt i32 %322, %298, !dbg !958
  br i1 %323, label %307, label %324, !dbg !959, !llvm.loop !998

; <label>:324:                                    ; preds = %321
  br label %325, !dbg !1001

; <label>:325:                                    ; preds = %324, %288
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1004, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i16 %295, metadata !1005, metadata !DIExpression()), !dbg !1007
  call fastcc void @trigger_next_query(%struct.gatt_client* nonnull %63, i16 zeroext %295, i32 9) #9, !dbg !1008
  br label %487

; <label>:326:                                    ; preds = %69
  %327 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !1009
  %328 = load i32, i32* %327, align 4, !dbg !1009, !tbaa !573
  switch i32 %328, label %487 [
    i32 24, label %329
    i32 38, label %330
    i32 44, label %331
  ], !dbg !1010

; <label>:329:                                    ; preds = %326
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1011
  store i32 0, i32* %327, align 4, !dbg !1014, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1015
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1016
  br label %487, !dbg !1017

; <label>:330:                                    ; preds = %326
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1018
  store i32 0, i32* %327, align 4, !dbg !1020, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1021
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1022
  br label %487, !dbg !1023

; <label>:331:                                    ; preds = %326
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1024
  store i32 0, i32* %327, align 4, !dbg !1026, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1027
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1028
  br label %487, !dbg !1029

; <label>:332:                                    ; preds = %69
  %333 = add i16 %3, -1, !dbg !1030
  call void @llvm.dbg.value(metadata i16 %333, metadata !377, metadata !DIExpression()), !dbg !1031
  %334 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !1032
  %335 = load i32, i32* %334, align 4, !dbg !1032, !tbaa !573
  switch i32 %335, label %487 [
    i32 18, label %336
    i32 42, label %360
  ], !dbg !1033

; <label>:336:                                    ; preds = %332
  %337 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 16, !dbg !1034
  %338 = load i16, i16* %337, align 2, !dbg !1034, !tbaa !873
  %339 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !1036
  %340 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 17, !dbg !1037
  %341 = load i16, i16* %340, align 4, !dbg !1037, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1039, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 %338, metadata !1044, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i8* %339, metadata !1045, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i16 %333, metadata !1046, metadata !DIExpression()), !dbg !1053
  %342 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 3, !dbg !1054
  %343 = load i16, i16* %342, align 4, !dbg !1054, !tbaa !323
  %344 = tail call fastcc i8* @setup_long_characteristic_value_packet(i8 zeroext -90, i16 zeroext %343, i16 zeroext %338, i16 zeroext %341, i8* %339, i16 zeroext %333) #9, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %344, metadata !1048, metadata !DIExpression()), !dbg !1056
  %345 = icmp eq i8* %344, null, !dbg !1057
  br i1 %345, label %352, label %346, !dbg !1059

; <label>:346:                                    ; preds = %336
  %347 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 2, !dbg !1060
  %348 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %347, align 4, !dbg !1060, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %348, metadata !904, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8* %344, metadata !909, metadata !DIExpression()), !dbg !1063
  %349 = icmp eq void (i8, i16, i8*, i16)* %348, null, !dbg !1064
  br i1 %349, label %352, label %350, !dbg !1065

; <label>:350:                                    ; preds = %346
  %351 = add i16 %3, 9, !dbg !1066
  tail call void %348(i8 zeroext 4, i16 zeroext 0, i8* nonnull %344, i16 zeroext %351) #9, !dbg !1067
  br label %352, !dbg !1068

; <label>:352:                                    ; preds = %350, %346, %336
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1069, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32 17, metadata !1074, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i16 %333, metadata !1075, metadata !DIExpression()), !dbg !1080
  %353 = tail call fastcc zeroext i16 @peripheral_mtu(%struct.gatt_client* nonnull %63) #9, !dbg !1081
  %354 = add i16 %353, -1, !dbg !1082
  call void @llvm.dbg.value(metadata i16 %354, metadata !1076, metadata !DIExpression()), !dbg !1083
  %355 = icmp ugt i16 %354, %333, !dbg !1084
  br i1 %355, label %356, label %357, !dbg !1086

; <label>:356:                                    ; preds = %352
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1087
  store i32 0, i32* %334, align 4, !dbg !1090, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1091
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #9, !dbg !1092
  br label %487, !dbg !1093

; <label>:357:                                    ; preds = %352
  %358 = load i16, i16* %340, align 4, !dbg !1094, !tbaa !1038
  %359 = add i16 %358, %333, !dbg !1094
  store i16 %359, i16* %340, align 4, !dbg !1094, !tbaa !1038
  store i32 17, i32* %334, align 4, !dbg !1095, !tbaa !573
  br label %487, !dbg !1096

; <label>:360:                                    ; preds = %332
  %361 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 16, !dbg !1097
  %362 = load i16, i16* %361, align 2, !dbg !1097, !tbaa !873
  %363 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !1098
  %364 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 17, !dbg !1099
  %365 = load i16, i16* %364, align 4, !dbg !1099, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1100, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i16 %362, metadata !1103, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %363, metadata !1104, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i16 %333, metadata !1105, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i16 %365, metadata !1106, metadata !DIExpression()), !dbg !1113
  %366 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 3, !dbg !1114
  %367 = load i16, i16* %366, align 4, !dbg !1114, !tbaa !323
  %368 = tail call fastcc i8* @setup_long_characteristic_value_packet(i8 zeroext -86, i16 zeroext %367, i16 zeroext %362, i16 zeroext %365, i8* %363, i16 zeroext %333) #9, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %368, metadata !1107, metadata !DIExpression()), !dbg !1116
  %369 = icmp eq i8* %368, null, !dbg !1117
  br i1 %369, label %376, label %370, !dbg !1119

; <label>:370:                                    ; preds = %360
  %371 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 2, !dbg !1120
  %372 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %371, align 4, !dbg !1120, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %372, metadata !904, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8* %368, metadata !909, metadata !DIExpression()), !dbg !1123
  %373 = icmp eq void (i8, i16, i8*, i16)* %372, null, !dbg !1124
  br i1 %373, label %376, label %374, !dbg !1125

; <label>:374:                                    ; preds = %370
  %375 = add i16 %3, 9, !dbg !1126
  tail call void %372(i8 zeroext 4, i16 zeroext 0, i8* nonnull %368, i16 zeroext %375) #9, !dbg !1127
  br label %376, !dbg !1128

; <label>:376:                                    ; preds = %374, %370, %360
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1069, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i32 41, metadata !1074, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i16 %333, metadata !1075, metadata !DIExpression()), !dbg !1132
  %377 = tail call fastcc zeroext i16 @peripheral_mtu(%struct.gatt_client* nonnull %63) #9, !dbg !1133
  %378 = add i16 %377, -1, !dbg !1134
  call void @llvm.dbg.value(metadata i16 %378, metadata !1076, metadata !DIExpression()), !dbg !1135
  %379 = icmp ugt i16 %378, %333, !dbg !1136
  br i1 %379, label %380, label %381, !dbg !1137

; <label>:380:                                    ; preds = %376
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1138
  store i32 0, i32* %334, align 4, !dbg !1140, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1141
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #9, !dbg !1142
  br label %487, !dbg !1143

; <label>:381:                                    ; preds = %376
  %382 = load i16, i16* %364, align 4, !dbg !1144, !tbaa !1038
  %383 = add i16 %382, %333, !dbg !1144
  store i16 %383, i16* %364, align 4, !dbg !1144, !tbaa !1038
  store i32 41, i32* %334, align 4, !dbg !1145, !tbaa !573
  br label %487, !dbg !1146

; <label>:384:                                    ; preds = %69
  %385 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !1147
  %386 = load i32, i32* %385, align 4, !dbg !1147, !tbaa !573
  switch i32 %386, label %487 [
    i32 50, label %387
    i32 26, label %392
    i32 46, label %401
    i32 28, label %410
  ], !dbg !1148

; <label>:387:                                    ; preds = %384
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1149
  store i32 0, i32* %385, align 4, !dbg !1152, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1153
  %388 = tail call fastcc i32 @is_value_valid(%struct.gatt_client* nonnull %63, i8* nonnull %2, i16 zeroext %3) #10, !dbg !1154
  %389 = icmp eq i32 %388, 0, !dbg !1154
  br i1 %389, label %391, label %390, !dbg !1156

; <label>:390:                                    ; preds = %387
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1157
  br label %487, !dbg !1159

; <label>:391:                                    ; preds = %387
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 126) #10, !dbg !1160
  br label %487

; <label>:392:                                    ; preds = %384
  %393 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #9, !dbg !1162
  %394 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 17, !dbg !1164
  store i16 %393, i16* %394, align 4, !dbg !1165, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1166, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 25, metadata !1171, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i32 29, metadata !1172, metadata !DIExpression()), !dbg !1177
  %395 = tail call fastcc zeroext i16 @write_blob_length(%struct.gatt_client* nonnull %63) #9, !dbg !1178
  %396 = load i16, i16* %394, align 4, !dbg !1179, !tbaa !1038
  %397 = add i16 %396, %395, !dbg !1179
  store i16 %397, i16* %394, align 4, !dbg !1179, !tbaa !1038
  %398 = tail call fastcc zeroext i16 @write_blob_length(%struct.gatt_client* nonnull %63) #9, !dbg !1180
  call void @llvm.dbg.value(metadata i16 %398, metadata !1173, metadata !DIExpression()), !dbg !1181
  %399 = icmp eq i16 %398, 0, !dbg !1182
  %400 = select i1 %399, i32 29, i32 25, !dbg !1184
  store i32 %400, i32* %385, align 4, !tbaa !573
  br label %487, !dbg !1185

; <label>:401:                                    ; preds = %384
  %402 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #9, !dbg !1186
  %403 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 17, !dbg !1188
  store i16 %402, i16* %403, align 4, !dbg !1189, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1166, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 45, metadata !1171, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i32 47, metadata !1172, metadata !DIExpression()), !dbg !1193
  %404 = tail call fastcc zeroext i16 @write_blob_length(%struct.gatt_client* nonnull %63) #9, !dbg !1194
  %405 = load i16, i16* %403, align 4, !dbg !1195, !tbaa !1038
  %406 = add i16 %405, %404, !dbg !1195
  store i16 %406, i16* %403, align 4, !dbg !1195, !tbaa !1038
  %407 = tail call fastcc zeroext i16 @write_blob_length(%struct.gatt_client* nonnull %63) #9, !dbg !1196
  call void @llvm.dbg.value(metadata i16 %407, metadata !1173, metadata !DIExpression()), !dbg !1197
  %408 = icmp eq i16 %407, 0, !dbg !1198
  %409 = select i1 %408, i32 47, i32 45, !dbg !1199
  store i32 %409, i32* %385, align 4, !tbaa !573
  br label %487, !dbg !1200

; <label>:410:                                    ; preds = %384
  %411 = tail call fastcc i32 @is_value_valid(%struct.gatt_client* nonnull %63, i8* nonnull %2, i16 zeroext %3) #10, !dbg !1201
  %412 = icmp eq i32 %411, 0, !dbg !1201
  br i1 %412, label %422, label %413, !dbg !1204

; <label>:413:                                    ; preds = %410
  %414 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #9, !dbg !1205
  %415 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 17, !dbg !1207
  store i16 %414, i16* %415, align 4, !dbg !1208, !tbaa !1038
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !1166, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 27, metadata !1171, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 29, metadata !1172, metadata !DIExpression()), !dbg !1212
  %416 = tail call fastcc zeroext i16 @write_blob_length(%struct.gatt_client* nonnull %63) #9, !dbg !1213
  %417 = load i16, i16* %415, align 4, !dbg !1214, !tbaa !1038
  %418 = add i16 %417, %416, !dbg !1214
  store i16 %418, i16* %415, align 4, !dbg !1214, !tbaa !1038
  %419 = tail call fastcc zeroext i16 @write_blob_length(%struct.gatt_client* nonnull %63) #9, !dbg !1215
  call void @llvm.dbg.value(metadata i16 %419, metadata !1173, metadata !DIExpression()), !dbg !1216
  %420 = icmp eq i16 %419, 0, !dbg !1217
  %421 = select i1 %420, i32 29, i32 27, !dbg !1218
  store i32 %421, i32* %385, align 4, !tbaa !573
  br label %487, !dbg !1219

; <label>:422:                                    ; preds = %410
  store i32 33, i32* %385, align 4, !dbg !1220, !tbaa !573
  br label %487, !dbg !1221

; <label>:423:                                    ; preds = %69
  %424 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !1222
  %425 = load i32, i32* %424, align 4, !dbg !1222, !tbaa !573
  %426 = add i32 %425, -30, !dbg !1223
  %427 = lshr i32 %426, 1, !dbg !1223
  %428 = shl i32 %426, 31, !dbg !1223
  %429 = or i32 %427, %428, !dbg !1223
  switch i32 %429, label %487 [
    i32 0, label %430
    i32 1, label %431
    i32 2, label %432
    i32 9, label %433
  ], !dbg !1223

; <label>:430:                                    ; preds = %423
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1224
  store i32 0, i32* %424, align 4, !dbg !1227, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1228
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1229
  br label %487, !dbg !1230

; <label>:431:                                    ; preds = %423
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1231
  store i32 0, i32* %424, align 4, !dbg !1233, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1234
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1235
  br label %487, !dbg !1236

; <label>:432:                                    ; preds = %423
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1237
  store i32 0, i32* %424, align 4, !dbg !1239, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1240
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 126) #10, !dbg !1241
  br label %487, !dbg !1242

; <label>:433:                                    ; preds = %423
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1243
  store i32 0, i32* %424, align 4, !dbg !1245, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1246
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1247
  br label %487, !dbg !1248

; <label>:434:                                    ; preds = %69
  %435 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !1249
  %436 = load i32, i32* %435, align 4, !dbg !1249, !tbaa !573
  %437 = icmp eq i32 %436, 22, !dbg !1250
  br i1 %437, label %438, label %487, !dbg !1250

; <label>:438:                                    ; preds = %434
  %439 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !1251
  %440 = add i16 %3, -1, !dbg !1253
  tail call fastcc void @report_gatt_characteristic_value(%struct.gatt_client* nonnull %63, i16 zeroext 0, i8* %439, i16 zeroext %440) #10, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1255
  store i32 0, i32* %435, align 4, !dbg !1257, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1258
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1259
  br label %487, !dbg !1260

; <label>:441:                                    ; preds = %69
  %442 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !1261
  %443 = load i8, i8* %442, align 1, !dbg !1261, !tbaa !294
  %444 = icmp eq i8 %443, 10, !dbg !1262
  br i1 %444, label %445, label %465, !dbg !1262

; <label>:445:                                    ; preds = %441
  %446 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 1, !dbg !1263
  %447 = load i32, i32* %446, align 4, !dbg !1263, !tbaa !573
  %448 = add i32 %447, -2, !dbg !1266
  %449 = lshr i32 %448, 1, !dbg !1266
  %450 = shl i32 %448, 31, !dbg !1266
  %451 = or i32 %449, %450, !dbg !1266
  switch i32 %451, label %464 [
    i32 0, label %452
    i32 1, label %452
    i32 5, label %452
    i32 4, label %452
    i32 2, label %453
    i32 3, label %453
    i32 9, label %456
  ], !dbg !1266

; <label>:452:                                    ; preds = %445, %445, %445, %445
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1267
  store i32 0, i32* %446, align 4, !dbg !1270, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1271
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1272
  br label %487, !dbg !1273

; <label>:453:                                    ; preds = %445, %445
  %454 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 11, !dbg !1274
  %455 = load i16, i16* %454, align 4, !dbg !1274, !tbaa !699
  tail call fastcc void @characteristic_end_found(%struct.gatt_client* nonnull %63, i16 zeroext %455) #10, !dbg !1275
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1276
  store i32 0, i32* %446, align 4, !dbg !1278, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1279
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1280
  br label %487, !dbg !1281

; <label>:456:                                    ; preds = %445
  call void @llvm.dbg.value(metadata %struct.gatt_client* %63, metadata !863, metadata !DIExpression()), !dbg !1282
  store i32 0, i32* %446, align 4, !dbg !1284, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %63) #9, !dbg !1285
  %457 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 10, !dbg !1286
  %458 = load i16, i16* %457, align 2, !dbg !1286, !tbaa !746
  %459 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 12, !dbg !1288
  %460 = load i16, i16* %459, align 2, !dbg !1288, !tbaa !750
  %461 = icmp eq i16 %458, %460, !dbg !1289
  br i1 %461, label %462, label %463, !dbg !1290

; <label>:462:                                    ; preds = %456
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 10) #10, !dbg !1291
  br label %487, !dbg !1293

; <label>:463:                                    ; preds = %456
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %63, i8 zeroext 0) #10, !dbg !1294
  br label %487

; <label>:464:                                    ; preds = %445
  tail call fastcc void @gatt_client_report_error_if_pending(%struct.gatt_client* nonnull %63, i8 zeroext 10) #10, !dbg !1296
  br label %487, !dbg !1297

; <label>:465:                                    ; preds = %441
  tail call fastcc void @gatt_client_report_error_if_pending(%struct.gatt_client* nonnull %63, i8 zeroext %443) #10, !dbg !1298
  br label %487, !dbg !1299

; <label>:466:                                    ; preds = %69
  %467 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 1) #9, !dbg !1300
  call void @llvm.dbg.value(metadata i8 10, metadata !1301, metadata !DIExpression()), !dbg !1309
  %468 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 29, !dbg !1311
  %469 = load i32, i32* %468, align 4, !dbg !1311, !tbaa !1313
  %470 = icmp eq i32 %469, 0, !dbg !1314
  br i1 %470, label %471, label %487, !dbg !1315

; <label>:471:                                    ; preds = %466
  store i32 1, i32* %468, align 4, !dbg !1316, !tbaa !1313
  %472 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 30, i32 0, !dbg !1317
  store i8 1, i8* %472, align 4, !dbg !1318, !tbaa !294
  %473 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 30, i32 1, !dbg !1319
  store i8 8, i8* %473, align 1, !dbg !1320, !tbaa !294
  %474 = trunc i16 %467 to i8, !dbg !1321
  %475 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 30, i32 2, !dbg !1322
  store i8 %474, i8* %475, align 2, !dbg !1323, !tbaa !294
  %476 = lshr i16 %467, 8, !dbg !1324
  %477 = trunc i16 %476 to i8, !dbg !1324
  %478 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 30, i32 3, !dbg !1325
  store i8 %477, i8* %478, align 1, !dbg !1326, !tbaa !294
  %479 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 30, i32 4, !dbg !1327
  store i8 10, i8* %479, align 4, !dbg !1328, !tbaa !294
  %480 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %63, i32 0, i32 31, !dbg !1329
  store i8 5, i8* %480, align 1, !dbg !1330, !tbaa !1331
  br label %487, !dbg !1332

; <label>:481:                                    ; preds = %69
  %482 = load i8, i8* @ble_debug_enable, align 1, !dbg !1333, !tbaa !294
  %483 = and i8 %482, 1, !dbg !1333
  %484 = icmp eq i8 %483, 0, !dbg !1333
  br i1 %484, label %487, label %485, !dbg !1335

; <label>:485:                                    ; preds = %481
  %486 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i32 0, i32 0), i32 %71) #10, !dbg !1336
  br label %487, !dbg !1336

; <label>:487:                                    ; preds = %485, %481, %471, %466, %465, %464, %463, %462, %453, %452, %438, %434, %433, %432, %431, %430, %423, %422, %413, %401, %392, %391, %390, %384, %381, %380, %357, %356, %332, %331, %330, %329, %326, %325, %286, %277, %259, %249, %246, %244, %223, %218, %194, %181, %168, %153, %146, %140, %111, %107, %96
  call fastcc void @gatt_client_run() #10, !dbg !1338
  br label %488, !dbg !1339

; <label>:488:                                    ; preds = %487, %66, %38, %19, %16, %13, %11, %4
  ret void, !dbg !1340
}

; Function Attrs: nounwind optsize
define hidden i32 @gatt_client_is_ready(i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !1342 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1346, metadata !DIExpression()), !dbg !1348
  %2 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle(i16 zeroext %0) #10, !dbg !1349
  call void @llvm.dbg.value(metadata %struct.gatt_client* %2, metadata !1347, metadata !DIExpression()), !dbg !1350
  %3 = icmp eq %struct.gatt_client* %2, null, !dbg !1351
  br i1 %3, label %9, label %4, !dbg !1353

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata %struct.gatt_client* %2, metadata !1354, metadata !DIExpression()), !dbg !1359
  %5 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %2, i32 0, i32 1, !dbg !1361
  %6 = load i32, i32* %5, align 4, !dbg !1361, !tbaa !573
  %7 = icmp eq i32 %6, 0, !dbg !1362
  %8 = zext i1 %7 to i32, !dbg !1362
  br label %9, !dbg !1363

; <label>:9:                                      ; preds = %4, %1
  %10 = phi i32 [ %8, %4 ], [ 0, %1 ]
  ret i32 %10, !dbg !1364
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.gatt_client* @provide_context_for_conn_handle(i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !1365 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1369, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i16 %0, metadata !300, metadata !DIExpression()), !dbg !1372
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %2, metadata !305, metadata !DIExpression()), !dbg !1374
  %3 = icmp eq %struct.btstack_linked_item* %2, null, !dbg !1375
  br i1 %3, label %18, label %4, !dbg !1375

; <label>:4:                                      ; preds = %1
  br label %9, !dbg !1376

; <label>:5:                                      ; preds = %9
  %6 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 0, i32 0, !dbg !1377
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !305, metadata !DIExpression()), !dbg !1374
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !1375
  br i1 %8, label %17, label %9, !dbg !1375, !llvm.loop !320

; <label>:9:                                      ; preds = %5, %4
  %10 = phi %struct.btstack_linked_item* [ %7, %5 ], [ %2, %4 ]
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 3, !dbg !1376
  %12 = bitcast %struct.btstack_linked_item* %11 to i16*, !dbg !1376
  %13 = load i16, i16* %12, align 4, !dbg !1376, !tbaa !323
  %14 = icmp eq i16 %13, %0, !dbg !1378
  br i1 %14, label %15, label %5

; <label>:15:                                     ; preds = %9
  %16 = bitcast %struct.btstack_linked_item* %10 to %struct.gatt_client*, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.gatt_client* %16, metadata !1370, metadata !DIExpression()), !dbg !1380
  br label %35

; <label>:17:                                     ; preds = %5
  br label %18, !dbg !1381

; <label>:18:                                     ; preds = %17, %1
  %19 = tail call i8* @btstack_memory_gatt_client_get() #9, !dbg !1381
  %20 = bitcast i8* %19 to %struct.gatt_client*, !dbg !1381
  call void @llvm.dbg.value(metadata %struct.gatt_client* %20, metadata !1370, metadata !DIExpression()), !dbg !1380
  %21 = icmp eq i8* %19, null, !dbg !1382
  br i1 %21, label %35, label %22, !dbg !1384

; <label>:22:                                     ; preds = %18
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %19, i8 0, i32 128, i32 4, i1 false), !dbg !1385
  %23 = getelementptr inbounds i8, i8* %19, i32 12, !dbg !1386
  %24 = bitcast i8* %23 to i16*, !dbg !1386
  store i16 %0, i16* %24, align 4, !dbg !1387, !tbaa !323
  %25 = getelementptr inbounds i8, i8* %19, i32 22, !dbg !1388
  %26 = bitcast i8* %25 to i16*, !dbg !1388
  store i16 23, i16* %26, align 2, !dbg !1389, !tbaa !546
  %27 = getelementptr inbounds i8, i8* %19, i32 24, !dbg !1390
  %28 = bitcast i8* %27 to i32*, !dbg !1390
  store i32 0, i32* %28, align 4, !dbg !1391, !tbaa !561
  %29 = getelementptr inbounds i8, i8* %19, i32 4, !dbg !1392
  %30 = bitcast i8* %29 to i32*, !dbg !1392
  store i32 0, i32* %30, align 4, !dbg !1393, !tbaa !573
  %31 = bitcast i8* %19 to %struct.btstack_linked_item*, !dbg !1394
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), %struct.btstack_linked_item* %31) #9, !dbg !1395
  %32 = load i8, i8* getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 4), align 4, !dbg !1396, !tbaa !263
  %33 = icmp eq i8 %32, 0, !dbg !1398
  br i1 %33, label %35, label %34, !dbg !1399

; <label>:34:                                     ; preds = %22
  store i32 2, i32* %28, align 4, !dbg !1400, !tbaa !561
  br label %35, !dbg !1402

; <label>:35:                                     ; preds = %34, %22, %18, %15
  %36 = phi %struct.gatt_client* [ %16, %15 ], [ null, %18 ], [ %20, %22 ], [ %20, %34 ]
  ret %struct.gatt_client* %36, !dbg !1403
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_get_mtu(i16 zeroext, i16* nocapture) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !1404 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1408, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i16* %1, metadata !1409, metadata !DIExpression()), !dbg !1412
  %3 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle(i16 zeroext %0) #10, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !1410, metadata !DIExpression()), !dbg !1414
  %4 = icmp eq %struct.gatt_client* %3, null, !dbg !1415
  br i1 %4, label %12, label %5, !dbg !1417

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 7, !dbg !1418
  %7 = load i32, i32* %6, align 4, !dbg !1418, !tbaa !561
  %8 = icmp eq i32 %7, 2, !dbg !1420
  br i1 %8, label %9, label %12, !dbg !1421

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 6, !dbg !1423
  %11 = load i16, i16* %10, align 2, !dbg !1423, !tbaa !546
  br label %12, !dbg !1425

; <label>:12:                                     ; preds = %9, %5, %2
  %13 = phi i16 [ %11, %9 ], [ 23, %2 ], [ 23, %5 ]
  %14 = phi i8 [ 0, %9 ], [ -107, %2 ], [ -107, %5 ]
  store i16 %13, i16* %1, align 2, !dbg !1426, !tbaa !1427
  ret i8 %14, !dbg !1428
}

; Function Attrs: nounwind optsize
define hidden void @gatt_client_listen_for_characteristic_value_updates(%struct.gatt_client_notification*, void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t* nocapture readnone) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !1429 {
  call void @llvm.dbg.value(metadata %struct.gatt_client_notification* %0, metadata !1444, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !1445, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i16 %2, metadata !1446, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %3, metadata !1447, metadata !DIExpression()), !dbg !1451
  %5 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 1, !dbg !1452
  store void (i8, i16, i8*, i16)* %1, void (i8, i16, i8*, i16)** %5, align 4, !dbg !1453, !tbaa !1454
  %6 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 2, !dbg !1456
  store i16 %2, i16* %6, align 4, !dbg !1457, !tbaa !1458
  %7 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 0, !dbg !1459
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 1), %struct.btstack_linked_item* %7) #9, !dbg !1460
  ret void, !dbg !1461
}

; Function Attrs: optsize
declare void @btstack_linked_list_add(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @gatt_client_stop_listening_for_characteristic_value_updates(%struct.gatt_client_notification*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !1462 {
  call void @llvm.dbg.value(metadata %struct.gatt_client_notification* %0, metadata !1466, metadata !DIExpression()), !dbg !1467
  %2 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 0, !dbg !1468
  %3 = tail call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 1), %struct.btstack_linked_item* %2) #9, !dbg !1469
  ret void, !dbg !1470
}

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_primary_services(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !1471 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !1475, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i16 %1, metadata !1476, metadata !DIExpression()), !dbg !1479
  %3 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !1480
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !1477, metadata !DIExpression()), !dbg !1481
  %4 = icmp eq %struct.gatt_client* %3, null, !dbg !1482
  br i1 %4, label %14, label %5, !dbg !1484

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !1354, metadata !DIExpression()), !dbg !1485
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 1, !dbg !1488
  %7 = load i32, i32* %6, align 4, !dbg !1488, !tbaa !573
  %8 = icmp eq i32 %7, 0, !dbg !1489
  br i1 %8, label %9, label %14, !dbg !1490

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 2, !dbg !1491
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %10, align 4, !dbg !1492, !tbaa !903
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 10, !dbg !1493
  store i16 1, i16* %11, align 2, !dbg !1494, !tbaa !746
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 11, !dbg !1495
  store i16 -1, i16* %12, align 4, !dbg !1496, !tbaa !699
  store i32 1, i32* %6, align 4, !dbg !1497, !tbaa !573
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 8, !dbg !1498
  store i16 0, i16* %13, align 4, !dbg !1499, !tbaa !1500
  tail call fastcc void @gatt_client_run() #10, !dbg !1501
  br label %14, !dbg !1502

; <label>:14:                                     ; preds = %9, %5, %2
  %15 = phi i8 [ 0, %9 ], [ 86, %2 ], [ -107, %5 ]
  ret i8 %15, !dbg !1503
}

; Function Attrs: nounwind optsize
define internal fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !1504 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1506, metadata !DIExpression()), !dbg !1508
  %2 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle(i16 zeroext %0) #10, !dbg !1509
  call void @llvm.dbg.value(metadata %struct.gatt_client* %2, metadata !1507, metadata !DIExpression()), !dbg !1510
  %3 = icmp eq %struct.gatt_client* %2, null, !dbg !1511
  br i1 %3, label %20, label %4, !dbg !1513

; <label>:4:                                      ; preds = %1
  call void @llvm.dbg.value(metadata %struct.gatt_client* %2, metadata !1514, metadata !DIExpression()), !dbg !1517
  %5 = load i8, i8* @ble_debug_enable, align 1, !dbg !1519, !tbaa !294
  %6 = and i8 %5, 1, !dbg !1519
  %7 = icmp eq i8 %6, 0, !dbg !1519
  br i1 %7, label %13, label %8, !dbg !1521

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %2, i32 0, i32 3, !dbg !1522
  %10 = load i16, i16* %9, align 4, !dbg !1522, !tbaa !323
  %11 = zext i16 %10 to i32, !dbg !1522
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i32 %11) #9, !dbg !1522
  br label %13, !dbg !1522

; <label>:13:                                     ; preds = %8, %4
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %2) #9, !dbg !1524
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %2, i32 0, i32 28, !dbg !1525
  %15 = bitcast %struct.btstack_timer_source* %14 to i64*, !dbg !1526
  store i64 0, i64* %15, align 4, !dbg !1526
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %2, i32 0, i32 28, i32 2, !dbg !1527
  store i32 30, i32* %16, align 4, !dbg !1528
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %2, i32 0, i32 28, i32 3, !dbg !1529
  store void (%struct.btstack_timer_source*)* @gatt_client_timeout_handler, void (%struct.btstack_timer_source*)** %17, align 4, !dbg !1530, !tbaa !1531
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %2, i32 0, i32 28, i32 4, !dbg !1532
  %19 = bitcast i8** %18 to %struct.gatt_client**, !dbg !1533
  store %struct.gatt_client* %2, %struct.gatt_client** %19, align 4, !dbg !1533, !tbaa !1534
  tail call void @btstack_set_timer(%struct.btstack_timer_source* %14, i16 signext 131) #9, !dbg !1535
  br label %20, !dbg !1536

; <label>:20:                                     ; preds = %13, %1
  %21 = phi %struct.gatt_client* [ %2, %13 ], [ null, %1 ]
  ret %struct.gatt_client* %21, !dbg !1537
}

; Function Attrs: nounwind optsize
define internal fastcc void @gatt_client_run() unnamed_addr #0 section ".ble_gatt_code" !dbg !1538 {
  %1 = alloca [2 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %1, metadata !1545, metadata !DIExpression()), !dbg !1553
  %2 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !1552, metadata !DIExpression()), !dbg !1560
  %3 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !1561, !tbaa !226
  %4 = icmp eq i32 %3, 0, !dbg !1561
  br i1 %4, label %262, label %5, !dbg !1563

; <label>:5:                                      ; preds = %0
  %6 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !1540, metadata !DIExpression()), !dbg !1564
  %7 = icmp eq %struct.btstack_linked_item* %6, null, !dbg !1565
  br i1 %7, label %262, label %8, !dbg !1565

; <label>:8:                                      ; preds = %5
  br label %9, !dbg !1567

; <label>:9:                                      ; preds = %257, %8
  %10 = phi %struct.btstack_linked_item* [ %259, %257 ], [ %6, %8 ]
  %11 = bitcast %struct.btstack_linked_item* %10 to %struct.gatt_client*, !dbg !1567
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1541, metadata !DIExpression()), !dbg !1568
  %12 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 3, !dbg !1569
  %13 = bitcast %struct.btstack_linked_item* %12 to i16*, !dbg !1569
  %14 = load i16, i16* %13, align 4, !dbg !1569, !tbaa !323
  %15 = tail call i32 @att_dispatch_client_can_send_now(i16 zeroext %14) #9, !dbg !1571
  %16 = icmp eq i32 %15, 0, !dbg !1571
  br i1 %16, label %17, label %19, !dbg !1572

; <label>:17:                                     ; preds = %9
  %18 = load i16, i16* %13, align 4, !dbg !1573, !tbaa !323
  tail call void @att_dispatch_client_request_can_send_now_event(i16 zeroext %18) #9, !dbg !1575
  br label %262

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 6, !dbg !1576
  %21 = bitcast %struct.btstack_linked_item* %20 to i32*, !dbg !1576
  %22 = load i32, i32* %21, align 4, !dbg !1576, !tbaa !561
  switch i32 %22, label %53 [
    i32 0, label %23
    i32 1, label %261
    i32 3, label %35
  ], !dbg !1577

; <label>:23:                                     ; preds = %19
  store i32 1, i32* %21, align 4, !dbg !1578, !tbaa !561
  %24 = load i16, i16* %13, align 4, !dbg !1581, !tbaa !323
  call void @llvm.dbg.value(metadata i16 %24, metadata !1582, metadata !DIExpression()), !dbg !1589
  %25 = tail call zeroext i16 @l2cap_max_le_mtu() #9, !dbg !1591
  call void @llvm.dbg.value(metadata i16 %25, metadata !1587, metadata !DIExpression()), !dbg !1592
  %26 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1593
  %27 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1594
  call void @llvm.dbg.value(metadata i8* %27, metadata !1588, metadata !DIExpression()), !dbg !1595
  store i8 2, i8* %27, align 1, !dbg !1596, !tbaa !294
  tail call void @little_endian_store_16(i8* %27, i16 zeroext 1, i16 zeroext %25) #9, !dbg !1597
  %28 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %24, i16 zeroext 4, i16 zeroext 3) #9, !dbg !1598
  %29 = load i8, i8* @ble_debug_enable, align 1, !dbg !1599, !tbaa !294
  %30 = and i8 %29, 1, !dbg !1599
  %31 = icmp eq i8 %30, 0, !dbg !1599
  br i1 %31, label %262, label %32, !dbg !1601

; <label>:32:                                     ; preds = %23
  %33 = zext i16 %25 to i32, !dbg !1602
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0), i32 %33) #9, !dbg !1602
  br label %262, !dbg !1602

; <label>:35:                                     ; preds = %19
  %36 = load i8, i8* @ble_debug_enable, align 1, !dbg !1604, !tbaa !294
  %37 = and i8 %36, 1, !dbg !1604
  %38 = icmp eq i8 %37, 0, !dbg !1604
  br i1 %38, label %41, label %39, !dbg !1606

; <label>:39:                                     ; preds = %35
  %40 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.23, i32 0, i32 0)), !dbg !1607
  br label %41, !dbg !1607

; <label>:41:                                     ; preds = %39, %35
  store i32 2, i32* %21, align 4, !dbg !1609, !tbaa !561
  %42 = load i16, i16* %13, align 4, !dbg !1610, !tbaa !323
  call void @llvm.dbg.value(metadata i16 %42, metadata !1611, metadata !DIExpression()), !dbg !1616
  %43 = tail call zeroext i16 @l2cap_max_le_mtu() #9, !dbg !1618
  call void @llvm.dbg.value(metadata i16 %43, metadata !1614, metadata !DIExpression()), !dbg !1619
  %44 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1620
  %45 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %45, metadata !1615, metadata !DIExpression()), !dbg !1622
  store i8 3, i8* %45, align 1, !dbg !1623, !tbaa !294
  tail call void @little_endian_store_16(i8* %45, i16 zeroext 1, i16 zeroext %43) #9, !dbg !1624
  %46 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %42, i16 zeroext 4, i16 zeroext 3) #9, !dbg !1625
  %47 = load i8, i8* @ble_debug_enable, align 1, !dbg !1626, !tbaa !294
  %48 = and i8 %47, 1, !dbg !1626
  %49 = icmp eq i8 %48, 0, !dbg !1626
  br i1 %49, label %262, label %50, !dbg !1628

; <label>:50:                                     ; preds = %41
  %51 = zext i16 %43 to i32, !dbg !1629
  %52 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0), i32 %51) #9, !dbg !1629
  br label %262, !dbg !1629

; <label>:53:                                     ; preds = %19
  %54 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 29, !dbg !1631
  %55 = bitcast %struct.btstack_linked_item* %54 to i32*, !dbg !1631
  %56 = load i32, i32* %55, align 4, !dbg !1631, !tbaa !1313
  %57 = icmp eq i32 %56, 1, !dbg !1632
  br i1 %57, label %58, label %73, !dbg !1632

; <label>:58:                                     ; preds = %53
  %59 = load i16, i16* %13, align 4, !dbg !1633, !tbaa !323
  %60 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 30, !dbg !1636
  %61 = bitcast %struct.btstack_linked_item* %60 to i8*, !dbg !1637
  %62 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 31, !dbg !1638
  %63 = load i8, i8* %62, align 1, !dbg !1638, !tbaa !1331
  call void @llvm.dbg.value(metadata i16 %59, metadata !1639, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %61, metadata !1644, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i16 %67, metadata !1645, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 -1, metadata !1646, metadata !DIExpression()), !dbg !1654
  %64 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1655
  %65 = icmp eq i32 %64, 0, !dbg !1655
  br i1 %65, label %262, label %66, !dbg !1656

; <label>:66:                                     ; preds = %58
  %67 = zext i8 %63 to i16, !dbg !1657
  %68 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1658
  call void @llvm.dbg.value(metadata i8* %68, metadata !1647, metadata !DIExpression()), !dbg !1659
  %69 = zext i8 %63 to i32, !dbg !1660
  tail call void @put_buf(i8* %61, i32 %69) #9, !dbg !1661
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %68, i8* %61, i32 %69, i32 1, i1 false) #8, !dbg !1662
  %70 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %59, i16 zeroext 4, i16 zeroext %67) #9, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %70, metadata !1646, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %70, metadata !1646, metadata !DIExpression()), !dbg !1654
  %71 = icmp eq i32 %70, 0, !dbg !1664
  br i1 %71, label %72, label %262, !dbg !1665

; <label>:72:                                     ; preds = %66
  store i32 0, i32* %55, align 4, !dbg !1666, !tbaa !1313
  br label %262

; <label>:73:                                     ; preds = %53
  %74 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 25, !dbg !1668
  %75 = load i8, i8* %74, align 1, !dbg !1668, !tbaa !660
  %76 = icmp eq i8 %75, 0, !dbg !1670
  br i1 %76, label %82, label %77, !dbg !1671

; <label>:77:                                     ; preds = %73
  store i8 0, i8* %74, align 1, !dbg !1672, !tbaa !660
  %78 = load i16, i16* %13, align 4, !dbg !1674, !tbaa !323
  call void @llvm.dbg.value(metadata i16 %78, metadata !1675, metadata !DIExpression()), !dbg !1679
  %79 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1681
  %80 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %80, metadata !1678, metadata !DIExpression()), !dbg !1683
  store i8 30, i8* %80, align 1, !dbg !1684, !tbaa !294
  %81 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %78, i16 zeroext 4, i16 zeroext 1) #9, !dbg !1685
  br label %262

; <label>:82:                                     ; preds = %73
  %83 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 1, !dbg !1686
  %84 = bitcast %struct.btstack_linked_item* %83 to i32*, !dbg !1686
  %85 = load i32, i32* %84, align 4, !dbg !1686, !tbaa !573
  switch i32 %85, label %107 [
    i32 23, label %86
    i32 43, label %86
  ], !dbg !1687

; <label>:86:                                     ; preds = %82, %82
  %87 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 18, !dbg !1688
  %88 = load i16, i16* %87, align 2, !dbg !1688, !tbaa !1691
  %89 = zext i16 %88 to i32, !dbg !1692
  %90 = tail call fastcc zeroext i16 @peripheral_mtu(%struct.gatt_client* nonnull %11) #10, !dbg !1693
  %91 = zext i16 %90 to i32, !dbg !1693
  %92 = add nsw i32 %91, -3, !dbg !1694
  %93 = icmp sgt i32 %89, %92, !dbg !1695
  br i1 %93, label %94, label %105, !dbg !1696

; <label>:94:                                     ; preds = %86
  %95 = load i8, i8* @ble_debug_enable, align 1, !dbg !1697, !tbaa !294
  %96 = and i8 %95, 4, !dbg !1697
  %97 = icmp eq i8 %96, 0, !dbg !1697
  br i1 %97, label %104, label %98, !dbg !1699

; <label>:98:                                     ; preds = %94
  %99 = load i16, i16* %87, align 2, !dbg !1700, !tbaa !1691
  %100 = zext i16 %99 to i32, !dbg !1700
  %101 = tail call fastcc zeroext i16 @peripheral_mtu(%struct.gatt_client* nonnull %11) #10, !dbg !1700
  %102 = zext i16 %101 to i32, !dbg !1700
  %103 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0), i32 %100, i32 %102) #10, !dbg !1702
  br label %104, !dbg !1700

; <label>:104:                                    ; preds = %98, %94
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !863, metadata !DIExpression()), !dbg !1704
  store i32 0, i32* %84, align 4, !dbg !1706, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %11) #9, !dbg !1707
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %11, i8 zeroext 13) #10, !dbg !1708
  br label %262

; <label>:105:                                    ; preds = %86
  %106 = load i32, i32* %84, align 4, !dbg !1709, !tbaa !573
  br label %107, !dbg !1709

; <label>:107:                                    ; preds = %105, %82
  %108 = phi i32 [ %106, %105 ], [ %85, %82 ], !dbg !1709
  switch i32 %108, label %257 [
    i32 1, label %109
    i32 3, label %116
    i32 5, label %138
    i32 7, label %139
    i32 9, label %140
    i32 11, label %150
    i32 13, label %157
    i32 15, label %161
    i32 17, label %165
    i32 19, label %166
    i32 21, label %180
    i32 23, label %209
    i32 25, label %218
    i32 49, label %219
    i32 27, label %220
    i32 29, label %221
    i32 31, label %223
    i32 33, label %225
    i32 35, label %227
    i32 39, label %234
    i32 41, label %238
    i32 43, label %239
    i32 37, label %248
    i32 45, label %254
    i32 47, label %255
  ], !dbg !1710

; <label>:109:                                    ; preds = %107
  store i32 2, i32* %84, align 4, !dbg !1711, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1712, metadata !DIExpression()), !dbg !1715
  %110 = load i16, i16* %13, align 4, !dbg !1717, !tbaa !323
  %111 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 10, !dbg !1718
  %112 = load i16, i16* %111, align 2, !dbg !1718, !tbaa !746
  %113 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 12, !dbg !1719
  %114 = bitcast %struct.btstack_linked_item* %113 to i16*, !dbg !1719
  %115 = load i16, i16* %114, align 4, !dbg !1719, !tbaa !699
  tail call fastcc void @att_read_by_type_or_group_request_for_uuid16(i16 zeroext 16, i16 zeroext 10240, i16 zeroext %110, i16 zeroext %112, i16 zeroext %115) #9, !dbg !1720
  br label %262

; <label>:116:                                    ; preds = %107
  store i32 4, i32* %84, align 4, !dbg !1721, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1557, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i16 10240, metadata !1551, metadata !DIExpression()), !dbg !1723
  %117 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 7, !dbg !1724
  %118 = bitcast %struct.btstack_linked_item* %117 to i16*, !dbg !1724
  %119 = load i16, i16* %118, align 4, !dbg !1724, !tbaa !1500
  %120 = icmp eq i16 %119, 0, !dbg !1725
  br i1 %120, label %129, label %121, !dbg !1726

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i32 0, i32 0, !dbg !1727
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %122) #8, !dbg !1727
  call void @little_endian_store_16(i8* nonnull %122, i16 zeroext 0, i16 zeroext %119) #9, !dbg !1728
  %123 = load i16, i16* %13, align 4, !dbg !1729, !tbaa !323
  %124 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 10, !dbg !1730
  %125 = load i16, i16* %124, align 2, !dbg !1730, !tbaa !746
  %126 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 12, !dbg !1731
  %127 = bitcast %struct.btstack_linked_item* %126 to i16*, !dbg !1731
  %128 = load i16, i16* %127, align 4, !dbg !1731, !tbaa !699
  call fastcc void @att_find_by_type_value_request(i16 zeroext %123, i16 zeroext %125, i16 zeroext %128, i8* nonnull %122, i16 zeroext 2) #9, !dbg !1732
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %122) #8, !dbg !1733
  br label %262

; <label>:129:                                    ; preds = %116
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0, !dbg !1734
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %130) #8, !dbg !1734
  %131 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 9, i32 0, !dbg !1735
  call void @reverse_128(i8* %131, i8* nonnull %130) #9, !dbg !1736
  %132 = load i16, i16* %13, align 4, !dbg !1737, !tbaa !323
  %133 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 10, !dbg !1738
  %134 = load i16, i16* %133, align 2, !dbg !1738, !tbaa !746
  %135 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 12, !dbg !1739
  %136 = bitcast %struct.btstack_linked_item* %135 to i16*, !dbg !1739
  %137 = load i16, i16* %136, align 4, !dbg !1739, !tbaa !699
  call fastcc void @att_find_by_type_value_request(i16 zeroext %132, i16 zeroext %134, i16 zeroext %137, i8* nonnull %130, i16 zeroext 16) #9, !dbg !1740
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %130) #8, !dbg !1741
  br label %262, !dbg !1741

; <label>:138:                                    ; preds = %107
  store i32 6, i32* %84, align 4, !dbg !1742, !tbaa !573
  tail call fastcc void @send_gatt_characteristic_request(%struct.gatt_client* nonnull %11) #10, !dbg !1743
  br label %262

; <label>:139:                                    ; preds = %107
  store i32 8, i32* %84, align 4, !dbg !1744, !tbaa !573
  tail call fastcc void @send_gatt_characteristic_request(%struct.gatt_client* nonnull %11) #10, !dbg !1745
  br label %262

; <label>:140:                                    ; preds = %107
  store i32 8, i32* %84, align 4, !dbg !1746, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1747, metadata !DIExpression()), !dbg !1750
  %141 = load i16, i16* %13, align 4, !dbg !1752, !tbaa !323
  %142 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 10, !dbg !1753
  %143 = load i16, i16* %142, align 2, !dbg !1753, !tbaa !746
  %144 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 12, !dbg !1754
  %145 = bitcast %struct.btstack_linked_item* %144 to i16*, !dbg !1754
  %146 = load i16, i16* %145, align 4, !dbg !1754, !tbaa !699
  call void @llvm.dbg.value(metadata i16 4, metadata !1755, metadata !DIExpression()), !dbg !1764
  %147 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1766
  %148 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1767
  call void @llvm.dbg.value(metadata i8* %148, metadata !1763, metadata !DIExpression()), !dbg !1768
  store i8 4, i8* %148, align 1, !dbg !1769, !tbaa !294
  tail call void @little_endian_store_16(i8* %148, i16 zeroext 1, i16 zeroext %143) #9, !dbg !1770
  tail call void @little_endian_store_16(i8* %148, i16 zeroext 3, i16 zeroext %146) #9, !dbg !1771
  %149 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %141, i16 zeroext 4, i16 zeroext 5) #9, !dbg !1772
  br label %262

; <label>:150:                                    ; preds = %107
  store i32 12, i32* %84, align 4, !dbg !1773, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1774, metadata !DIExpression()), !dbg !1777
  %151 = load i16, i16* %13, align 4, !dbg !1779, !tbaa !323
  %152 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 10, !dbg !1780
  %153 = load i16, i16* %152, align 2, !dbg !1780, !tbaa !746
  %154 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 12, !dbg !1781
  %155 = bitcast %struct.btstack_linked_item* %154 to i16*, !dbg !1781
  %156 = load i16, i16* %155, align 4, !dbg !1781, !tbaa !699
  tail call fastcc void @att_read_by_type_or_group_request_for_uuid16(i16 zeroext 8, i16 zeroext 10242, i16 zeroext %151, i16 zeroext %153, i16 zeroext %156) #9, !dbg !1782
  br label %262

; <label>:157:                                    ; preds = %107
  store i32 14, i32* %84, align 4, !dbg !1783, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1784, metadata !DIExpression()), !dbg !1787
  %158 = load i16, i16* %13, align 4, !dbg !1789, !tbaa !323
  %159 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 12, !dbg !1790
  %160 = load i16, i16* %159, align 2, !dbg !1790, !tbaa !750
  tail call fastcc void @att_read_request(i16 zeroext %158, i16 zeroext %160) #9, !dbg !1791
  br label %262

; <label>:161:                                    ; preds = %107
  store i32 16, i32* %84, align 4, !dbg !1792, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1793, metadata !DIExpression()), !dbg !1796
  %162 = load i16, i16* %13, align 4, !dbg !1798, !tbaa !323
  %163 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 16, !dbg !1799
  %164 = load i16, i16* %163, align 2, !dbg !1799, !tbaa !873
  tail call fastcc void @att_read_request(i16 zeroext %162, i16 zeroext %164) #9, !dbg !1800
  br label %262

; <label>:165:                                    ; preds = %107
  store i32 18, i32* %84, align 4, !dbg !1801, !tbaa !573
  tail call fastcc void @send_gatt_read_blob_request(%struct.gatt_client* nonnull %11) #10, !dbg !1802
  br label %262

; <label>:166:                                    ; preds = %107
  store i32 20, i32* %84, align 4, !dbg !1803, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1804, metadata !DIExpression()), !dbg !1807
  %167 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 7, !dbg !1809
  %168 = bitcast %struct.btstack_linked_item* %167 to i16*, !dbg !1809
  %169 = load i16, i16* %168, align 4, !dbg !1809, !tbaa !1500
  %170 = icmp eq i16 %169, 0, !dbg !1811
  %171 = load i16, i16* %13, align 4, !dbg !1812
  %172 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 10, !dbg !1814
  %173 = load i16, i16* %172, align 2, !dbg !1814
  %174 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 12, !dbg !1815
  %175 = bitcast %struct.btstack_linked_item* %174 to i16*, !dbg !1815
  %176 = load i16, i16* %175, align 4, !dbg !1815
  br i1 %170, label %178, label %177, !dbg !1816

; <label>:177:                                    ; preds = %166
  tail call fastcc void @att_read_by_type_or_group_request_for_uuid16(i16 zeroext 8, i16 zeroext %169, i16 zeroext %171, i16 zeroext %173, i16 zeroext %176) #9, !dbg !1817
  br label %257, !dbg !1819

; <label>:178:                                    ; preds = %166
  %179 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 9, i32 0, !dbg !1820
  tail call fastcc void @att_read_by_type_or_group_request_for_uuid128(i8* %179, i16 zeroext %171, i16 zeroext %173, i16 zeroext %176) #9, !dbg !1821
  br label %257

; <label>:180:                                    ; preds = %107
  store i32 22, i32* %84, align 4, !dbg !1822, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1823, metadata !DIExpression()), !dbg !1826
  %181 = load i16, i16* %13, align 4, !dbg !1828, !tbaa !323
  %182 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 17, !dbg !1829
  %183 = bitcast %struct.btstack_linked_item* %182 to i16*, !dbg !1829
  %184 = load i16, i16* %183, align 4, !dbg !1829, !tbaa !1830
  %185 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 18, !dbg !1831
  %186 = bitcast %struct.btstack_linked_item* %185 to i16**, !dbg !1831
  %187 = load i16*, i16** %186, align 4, !dbg !1831, !tbaa !1832
  call void @llvm.dbg.value(metadata i16 %181, metadata !1833, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i16 %184, metadata !1838, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i16* %187, metadata !1839, metadata !DIExpression()), !dbg !1846
  %188 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1847
  %189 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1848
  call void @llvm.dbg.value(metadata i8* %189, metadata !1840, metadata !DIExpression()), !dbg !1849
  store i8 14, i8* %189, align 1, !dbg !1850, !tbaa !294
  call void @llvm.dbg.value(metadata i32 1, metadata !1842, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 1, metadata !1842, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !1852
  %190 = zext i16 %184 to i32, !dbg !1853
  %191 = icmp eq i16 %184, 0, !dbg !1857
  br i1 %191, label %206, label %192, !dbg !1858

; <label>:192:                                    ; preds = %180
  br label %193, !dbg !1860

; <label>:193:                                    ; preds = %193, %192
  %194 = phi i16 [ %201, %193 ], [ 1, %192 ]
  %195 = phi i32 [ %199, %193 ], [ 1, %192 ]
  %196 = phi i32 [ %200, %193 ], [ 0, %192 ]
  %197 = getelementptr inbounds i16, i16* %187, i32 %196, !dbg !1860
  %198 = load i16, i16* %197, align 2, !dbg !1860, !tbaa !1427
  tail call void @little_endian_store_16(i8* %189, i16 zeroext %194, i16 zeroext %198) #9, !dbg !1862
  %199 = add nuw nsw i32 %195, 2, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %199, metadata !1842, metadata !DIExpression()), !dbg !1851
  %200 = add nuw nsw i32 %196, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %200, metadata !1841, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %199, metadata !1842, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %200, metadata !1841, metadata !DIExpression()), !dbg !1852
  %201 = trunc i32 %199 to i16
  %202 = icmp eq i32 %200, %190, !dbg !1857
  br i1 %202, label %203, label %193, !dbg !1858, !llvm.loop !1866

; <label>:203:                                    ; preds = %193
  %204 = shl i16 %184, 1, !dbg !1860
  %205 = or i16 %204, 1, !dbg !1860
  br label %206, !dbg !1869

; <label>:206:                                    ; preds = %203, %180
  %207 = phi i16 [ 1, %180 ], [ %205, %203 ]
  %208 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %181, i16 zeroext 4, i16 zeroext %207) #9, !dbg !1869
  br label %257, !dbg !1870

; <label>:209:                                    ; preds = %107
  store i32 24, i32* %84, align 4, !dbg !1871, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1872, metadata !DIExpression()), !dbg !1875
  %210 = load i16, i16* %13, align 4, !dbg !1877, !tbaa !323
  %211 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 16, !dbg !1878
  %212 = load i16, i16* %211, align 2, !dbg !1878, !tbaa !873
  %213 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 18, !dbg !1879
  %214 = load i16, i16* %213, align 2, !dbg !1879, !tbaa !1691
  %215 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 16, !dbg !1880
  %216 = bitcast %struct.btstack_linked_item* %215 to i8**, !dbg !1880
  %217 = load i8*, i8** %216, align 4, !dbg !1880, !tbaa !1881
  tail call fastcc void @att_write_request(i16 zeroext 18, i16 zeroext %210, i16 zeroext %212, i16 zeroext %214, i8* %217) #9, !dbg !1882
  br label %262

; <label>:218:                                    ; preds = %107
  store i32 26, i32* %84, align 4, !dbg !1883, !tbaa !573
  tail call fastcc void @send_gatt_prepare_write_request(%struct.gatt_client* nonnull %11) #10, !dbg !1884
  br label %262

; <label>:219:                                    ; preds = %107
  store i32 50, i32* %84, align 4, !dbg !1885, !tbaa !573
  tail call fastcc void @send_gatt_prepare_write_request(%struct.gatt_client* nonnull %11) #10, !dbg !1886
  br label %262

; <label>:220:                                    ; preds = %107
  store i32 28, i32* %84, align 4, !dbg !1887, !tbaa !573
  tail call fastcc void @send_gatt_prepare_write_request(%struct.gatt_client* nonnull %11) #10, !dbg !1888
  br label %262

; <label>:221:                                    ; preds = %107
  store i32 30, i32* %84, align 4, !dbg !1889, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1890, metadata !DIExpression()), !dbg !1893
  %222 = load i16, i16* %13, align 4, !dbg !1895, !tbaa !323
  tail call fastcc void @att_execute_write_request(i16 zeroext %222, i8 zeroext 1) #9, !dbg !1896
  br label %262

; <label>:223:                                    ; preds = %107
  store i32 32, i32* %84, align 4, !dbg !1897, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1898, metadata !DIExpression()), !dbg !1901
  %224 = load i16, i16* %13, align 4, !dbg !1903, !tbaa !323
  tail call fastcc void @att_execute_write_request(i16 zeroext %224, i8 zeroext 0) #9, !dbg !1904
  br label %262

; <label>:225:                                    ; preds = %107
  store i32 34, i32* %84, align 4, !dbg !1905, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1898, metadata !DIExpression()), !dbg !1906
  %226 = load i16, i16* %13, align 4, !dbg !1908, !tbaa !323
  tail call fastcc void @att_execute_write_request(i16 zeroext %226, i8 zeroext 0) #9, !dbg !1909
  br label %262

; <label>:227:                                    ; preds = %107
  store i32 36, i32* %84, align 4, !dbg !1910, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1911, metadata !DIExpression()), !dbg !1914
  %228 = load i16, i16* %13, align 4, !dbg !1916, !tbaa !323
  %229 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 10, !dbg !1917
  %230 = load i16, i16* %229, align 2, !dbg !1917, !tbaa !746
  %231 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 12, !dbg !1918
  %232 = bitcast %struct.btstack_linked_item* %231 to i16*, !dbg !1918
  %233 = load i16, i16* %232, align 4, !dbg !1918, !tbaa !699
  tail call fastcc void @att_read_by_type_or_group_request_for_uuid16(i16 zeroext 8, i16 zeroext 10498, i16 zeroext %228, i16 zeroext %230, i16 zeroext %233) #9, !dbg !1919
  br label %262

; <label>:234:                                    ; preds = %107
  store i32 40, i32* %84, align 4, !dbg !1920, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1921, metadata !DIExpression()), !dbg !1924
  %235 = load i16, i16* %13, align 4, !dbg !1926, !tbaa !323
  %236 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 16, !dbg !1927
  %237 = load i16, i16* %236, align 2, !dbg !1927, !tbaa !873
  tail call fastcc void @att_read_request(i16 zeroext %235, i16 zeroext %237) #9, !dbg !1928
  br label %262

; <label>:238:                                    ; preds = %107
  store i32 42, i32* %84, align 4, !dbg !1929, !tbaa !573
  tail call fastcc void @send_gatt_read_blob_request(%struct.gatt_client* nonnull %11) #10, !dbg !1930
  br label %262

; <label>:239:                                    ; preds = %107
  store i32 44, i32* %84, align 4, !dbg !1931, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1872, metadata !DIExpression()), !dbg !1932
  %240 = load i16, i16* %13, align 4, !dbg !1934, !tbaa !323
  %241 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 16, !dbg !1935
  %242 = load i16, i16* %241, align 2, !dbg !1935, !tbaa !873
  %243 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 18, !dbg !1936
  %244 = load i16, i16* %243, align 2, !dbg !1936, !tbaa !1691
  %245 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 16, !dbg !1937
  %246 = bitcast %struct.btstack_linked_item* %245 to i8**, !dbg !1937
  %247 = load i8*, i8** %246, align 4, !dbg !1937, !tbaa !1881
  tail call fastcc void @att_write_request(i16 zeroext 18, i16 zeroext %240, i16 zeroext %242, i16 zeroext %244, i8* %247) #9, !dbg !1938
  br label %262

; <label>:248:                                    ; preds = %107
  store i32 38, i32* %84, align 4, !dbg !1939, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1940, metadata !DIExpression()), !dbg !1943
  %249 = load i16, i16* %13, align 4, !dbg !1945, !tbaa !323
  %250 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 19, !dbg !1946
  %251 = bitcast %struct.btstack_linked_item* %250 to i16*, !dbg !1946
  %252 = load i16, i16* %251, align 4, !dbg !1946, !tbaa !808
  %253 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %11, i32 0, i32 23, i32 0, !dbg !1947
  tail call fastcc void @att_write_request(i16 zeroext 18, i16 zeroext %249, i16 zeroext %252, i16 zeroext 2, i8* %253) #9, !dbg !1948
  br label %262

; <label>:254:                                    ; preds = %107
  store i32 46, i32* %84, align 4, !dbg !1949, !tbaa !573
  tail call fastcc void @send_gatt_prepare_write_request(%struct.gatt_client* nonnull %11) #10, !dbg !1950
  br label %262

; <label>:255:                                    ; preds = %107
  store i32 48, i32* %84, align 4, !dbg !1951, !tbaa !573
  call void @llvm.dbg.value(metadata %struct.gatt_client* %11, metadata !1890, metadata !DIExpression()), !dbg !1952
  %256 = load i16, i16* %13, align 4, !dbg !1954, !tbaa !323
  tail call fastcc void @att_execute_write_request(i16 zeroext %256, i8 zeroext 1) #9, !dbg !1955
  br label %262

; <label>:257:                                    ; preds = %206, %178, %177, %107
  %258 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 0, i32 0, !dbg !1956
  %259 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %258, align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %259, metadata !1540, metadata !DIExpression()), !dbg !1564
  %260 = icmp eq %struct.btstack_linked_item* %259, null, !dbg !1565
  br i1 %260, label %261, label %9, !dbg !1565, !llvm.loop !1958

; <label>:261:                                    ; preds = %257, %19
  br label %262, !dbg !1961

; <label>:262:                                    ; preds = %261, %255, %254, %248, %239, %238, %234, %227, %225, %223, %221, %220, %219, %218, %209, %165, %161, %157, %150, %140, %139, %138, %129, %121, %109, %104, %77, %72, %66, %58, %50, %41, %32, %23, %17, %5, %0
  ret void, !dbg !1961
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_primary_services_by_uuid16(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !1963 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !1967, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i16 %1, metadata !1968, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i16 %2, metadata !1969, metadata !DIExpression()), !dbg !1973
  %4 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !1974
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !1970, metadata !DIExpression()), !dbg !1975
  %5 = icmp eq %struct.gatt_client* %4, null, !dbg !1976
  br i1 %5, label %17, label %6, !dbg !1978

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !1354, metadata !DIExpression()), !dbg !1979
  %7 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 1, !dbg !1982
  %8 = load i32, i32* %7, align 4, !dbg !1982, !tbaa !573
  %9 = icmp eq i32 %8, 0, !dbg !1983
  br i1 %9, label %10, label %17, !dbg !1984

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 2, !dbg !1985
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %11, align 4, !dbg !1986, !tbaa !903
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 10, !dbg !1987
  store i16 1, i16* %12, align 2, !dbg !1988, !tbaa !746
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 11, !dbg !1989
  store i16 -1, i16* %13, align 4, !dbg !1990, !tbaa !699
  store i32 3, i32* %7, align 4, !dbg !1991, !tbaa !573
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 8, !dbg !1992
  store i16 %2, i16* %14, align 4, !dbg !1993, !tbaa !1500
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 9, i32 0, !dbg !1994
  %16 = zext i16 %2 to i32, !dbg !1995
  tail call void @uuid_add_bluetooth_prefix(i8* %15, i32 %16) #9, !dbg !1996
  tail call fastcc void @gatt_client_run() #10, !dbg !1997
  br label %17, !dbg !1998

; <label>:17:                                     ; preds = %10, %6, %3
  %18 = phi i8 [ 0, %10 ], [ 86, %3 ], [ -107, %6 ]
  ret i8 %18, !dbg !1999
}

; Function Attrs: optsize
declare void @uuid_add_bluetooth_prefix(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_primary_services_by_uuid128(void (i8, i16, i8*, i16)*, i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2000 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2006, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i16 %1, metadata !2007, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %2, metadata !2008, metadata !DIExpression()), !dbg !2012
  %4 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2013
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !2009, metadata !DIExpression()), !dbg !2014
  %5 = icmp eq %struct.gatt_client* %4, null, !dbg !2015
  br i1 %5, label %16, label %6, !dbg !2017

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !1354, metadata !DIExpression()), !dbg !2018
  %7 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 1, !dbg !2021
  %8 = load i32, i32* %7, align 4, !dbg !2021, !tbaa !573
  %9 = icmp eq i32 %8, 0, !dbg !2022
  br i1 %9, label %10, label %16, !dbg !2023

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 2, !dbg !2024
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %11, align 4, !dbg !2025, !tbaa !903
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 10, !dbg !2026
  store i16 1, i16* %12, align 2, !dbg !2027, !tbaa !746
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 11, !dbg !2028
  store i16 -1, i16* %13, align 4, !dbg !2029, !tbaa !699
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 8, !dbg !2030
  store i16 0, i16* %14, align 4, !dbg !2031, !tbaa !1500
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 9, i32 0, !dbg !2032
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %2, i32 16, i32 1, i1 false), !dbg !2032
  store i32 3, i32* %7, align 4, !dbg !2033, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2034
  br label %16, !dbg !2035

; <label>:16:                                     ; preds = %10, %6, %3
  %17 = phi i8 [ 0, %10 ], [ 86, %3 ], [ -107, %6 ]
  ret i8 %17, !dbg !2036
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_service_t* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2037 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i16 %1, metadata !2050, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.le_service_t* %2, metadata !2051, metadata !DIExpression()), !dbg !2055
  %4 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2056
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !2052, metadata !DIExpression()), !dbg !2057
  %5 = icmp eq %struct.gatt_client* %4, null, !dbg !2058
  br i1 %5, label %20, label %6, !dbg !2060

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !1354, metadata !DIExpression()), !dbg !2061
  %7 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 1, !dbg !2064
  %8 = load i32, i32* %7, align 4, !dbg !2064, !tbaa !573
  %9 = icmp eq i32 %8, 0, !dbg !2065
  br i1 %9, label %10, label %20, !dbg !2066

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 2, !dbg !2067
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %11, align 4, !dbg !2068, !tbaa !903
  %12 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 0, !dbg !2069
  %13 = load i16, i16* %12, align 2, !dbg !2069, !tbaa !2070
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 10, !dbg !2072
  store i16 %13, i16* %14, align 2, !dbg !2073, !tbaa !746
  %15 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 1, !dbg !2074
  %16 = load i16, i16* %15, align 2, !dbg !2074, !tbaa !2075
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 11, !dbg !2076
  store i16 %16, i16* %17, align 4, !dbg !2077, !tbaa !699
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 24, !dbg !2078
  store i8 0, i8* %18, align 4, !dbg !2079, !tbaa !2080
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 15, !dbg !2081
  store i16 0, i16* %19, align 4, !dbg !2082, !tbaa !2083
  store i32 5, i32* %7, align 4, !dbg !2084, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2085
  br label %20, !dbg !2086

; <label>:20:                                     ; preds = %10, %6, %3
  %21 = phi i8 [ 0, %10 ], [ 86, %3 ], [ -107, %6 ]
  ret i8 %21, !dbg !2087
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_find_included_services_for_service(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_service_t* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2088 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2090, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i16 %1, metadata !2091, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.le_service_t* %2, metadata !2092, metadata !DIExpression()), !dbg !2096
  %4 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2097
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !2093, metadata !DIExpression()), !dbg !2098
  %5 = icmp eq %struct.gatt_client* %4, null, !dbg !2099
  br i1 %5, label %18, label %6, !dbg !2101

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !1354, metadata !DIExpression()), !dbg !2102
  %7 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 1, !dbg !2105
  %8 = load i32, i32* %7, align 4, !dbg !2105, !tbaa !573
  %9 = icmp eq i32 %8, 0, !dbg !2106
  br i1 %9, label %10, label %18, !dbg !2107

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 2, !dbg !2108
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %11, align 4, !dbg !2109, !tbaa !903
  %12 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 0, !dbg !2110
  %13 = load i16, i16* %12, align 2, !dbg !2110, !tbaa !2070
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 10, !dbg !2111
  store i16 %13, i16* %14, align 2, !dbg !2112, !tbaa !746
  %15 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 1, !dbg !2113
  %16 = load i16, i16* %15, align 2, !dbg !2113, !tbaa !2075
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 11, !dbg !2114
  store i16 %16, i16* %17, align 4, !dbg !2115, !tbaa !699
  store i32 11, i32* %7, align 4, !dbg !2116, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2117
  br label %18, !dbg !2118

; <label>:18:                                     ; preds = %10, %6, %3
  %19 = phi i8 [ 0, %10 ], [ 86, %3 ], [ -107, %6 ]
  ret i8 %19, !dbg !2119
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_characteristics_for_handle_range_by_uuid16(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2120 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2124, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i16 %1, metadata !2125, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i16 %2, metadata !2126, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i16 %3, metadata !2127, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i16 %4, metadata !2128, metadata !DIExpression()), !dbg !2134
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2135
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !2129, metadata !DIExpression()), !dbg !2136
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !2137
  br i1 %7, label %21, label %8, !dbg !2139

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !2140
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !2143
  %10 = load i32, i32* %9, align 4, !dbg !2143, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !2144
  br i1 %11, label %12, label %21, !dbg !2145

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !2146
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !2147, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 10, !dbg !2148
  store i16 %2, i16* %14, align 2, !dbg !2149, !tbaa !746
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 11, !dbg !2150
  store i16 %3, i16* %15, align 4, !dbg !2151, !tbaa !699
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 24, !dbg !2152
  store i8 1, i8* %16, align 4, !dbg !2153, !tbaa !2080
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 8, !dbg !2154
  store i16 %4, i16* %17, align 4, !dbg !2155, !tbaa !1500
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 9, i32 0, !dbg !2156
  %19 = zext i16 %4 to i32, !dbg !2157
  tail call void @uuid_add_bluetooth_prefix(i8* %18, i32 %19) #9, !dbg !2158
  %20 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 15, !dbg !2159
  store i16 0, i16* %20, align 4, !dbg !2160, !tbaa !2083
  store i32 7, i32* %9, align 4, !dbg !2161, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2162
  br label %21, !dbg !2163

; <label>:21:                                     ; preds = %12, %8, %5
  %22 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -107, %8 ]
  ret i8 %22, !dbg !2164
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_characteristics_for_handle_range_by_uuid128(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2165 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2169, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i16 %1, metadata !2170, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i16 %2, metadata !2171, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i16 %3, metadata !2172, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8* %4, metadata !2173, metadata !DIExpression()), !dbg !2179
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2180
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !2174, metadata !DIExpression()), !dbg !2181
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !2182
  br i1 %7, label %20, label %8, !dbg !2184

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !2185
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !2188
  %10 = load i32, i32* %9, align 4, !dbg !2188, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !2189
  br i1 %11, label %12, label %20, !dbg !2190

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !2191
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !2192, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 10, !dbg !2193
  store i16 %2, i16* %14, align 2, !dbg !2194, !tbaa !746
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 11, !dbg !2195
  store i16 %3, i16* %15, align 4, !dbg !2196, !tbaa !699
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 24, !dbg !2197
  store i8 1, i8* %16, align 4, !dbg !2198, !tbaa !2080
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 8, !dbg !2199
  store i16 0, i16* %17, align 4, !dbg !2200, !tbaa !1500
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 9, i32 0, !dbg !2201
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %4, i32 16, i32 1, i1 false), !dbg !2201
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 15, !dbg !2202
  store i16 0, i16* %19, align 4, !dbg !2203, !tbaa !2083
  store i32 7, i32* %9, align 4, !dbg !2204, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2205
  br label %20, !dbg !2206

; <label>:20:                                     ; preds = %12, %8, %5
  %21 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -107, %8 ]
  ret i8 %21, !dbg !2207
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_characteristics_for_service_by_uuid16(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_service_t* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2208 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2212, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i16 %1, metadata !2213, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %struct.le_service_t* %2, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i16 %3, metadata !2215, metadata !DIExpression()), !dbg !2219
  %5 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 0, !dbg !2220
  %6 = load i16, i16* %5, align 2, !dbg !2220, !tbaa !2070
  %7 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 1, !dbg !2221
  %8 = load i16, i16* %7, align 2, !dbg !2221, !tbaa !2075
  %9 = tail call zeroext i8 @gatt_client_discover_characteristics_for_handle_range_by_uuid16(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %6, i16 zeroext %8, i16 zeroext %3) #10, !dbg !2222
  ret i8 %9, !dbg !2223
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_characteristics_for_service_by_uuid128(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_service_t* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2224 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2228, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i16 %1, metadata !2229, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata %struct.le_service_t* %2, metadata !2230, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %3, metadata !2231, metadata !DIExpression()), !dbg !2235
  %5 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 0, !dbg !2236
  %6 = load i16, i16* %5, align 2, !dbg !2236, !tbaa !2070
  %7 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 1, !dbg !2237
  %8 = load i16, i16* %7, align 2, !dbg !2237, !tbaa !2075
  %9 = tail call zeroext i8 @gatt_client_discover_characteristics_for_handle_range_by_uuid128(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %6, i16 zeroext %8, i8* %3) #10, !dbg !2238
  ret i8 %9, !dbg !2239
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_characteristic_descriptors(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2240 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2244, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i16 %1, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %2, metadata !2246, metadata !DIExpression()), !dbg !2250
  %4 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !2247, metadata !DIExpression()), !dbg !2252
  %5 = icmp eq %struct.gatt_client* %4, null, !dbg !2253
  br i1 %5, label %22, label %6, !dbg !2255

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !1354, metadata !DIExpression()), !dbg !2256
  %7 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 1, !dbg !2259
  %8 = load i32, i32* %7, align 4, !dbg !2259, !tbaa !573
  %9 = icmp eq i32 %8, 0, !dbg !2260
  br i1 %9, label %10, label %22, !dbg !2261

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 1, !dbg !2262
  %12 = load i16, i16* %11, align 2, !dbg !2262, !tbaa !2264
  %13 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 2, !dbg !2266
  %14 = load i16, i16* %13, align 2, !dbg !2266, !tbaa !2267
  %15 = icmp eq i16 %12, %14, !dbg !2268
  br i1 %15, label %16, label %17, !dbg !2269

; <label>:16:                                     ; preds = %10
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %4, i8 zeroext 0) #10, !dbg !2270
  br label %22, !dbg !2272

; <label>:17:                                     ; preds = %10
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 2, !dbg !2273
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %18, align 4, !dbg !2274, !tbaa !903
  %19 = add i16 %12, 1, !dbg !2275
  %20 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 10, !dbg !2276
  store i16 %19, i16* %20, align 2, !dbg !2277, !tbaa !746
  %21 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 11, !dbg !2278
  store i16 %14, i16* %21, align 4, !dbg !2279, !tbaa !699
  store i32 9, i32* %7, align 4, !dbg !2280, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2281
  br label %22, !dbg !2282

; <label>:22:                                     ; preds = %17, %16, %6, %3
  %23 = phi i8 [ 0, %16 ], [ 0, %17 ], [ 86, %3 ], [ -107, %6 ]
  ret i8 %23, !dbg !2283
}

; Function Attrs: nounwind optsize
define internal fastcc void @emit_gatt_complete_event(%struct.gatt_client* nocapture readonly, i8 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !2284 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !2288, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 %1, metadata !2289, metadata !DIExpression()), !dbg !2295
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 0, !dbg !2296
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #8, !dbg !2296
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !2290, metadata !DIExpression()), !dbg !2297
  store i8 -96, i8* %4, align 1, !dbg !2298, !tbaa !294
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 1, !dbg !2299
  store i8 3, i8* %5, align 1, !dbg !2300, !tbaa !294
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !2301
  %7 = load i16, i16* %6, align 4, !dbg !2301, !tbaa !323
  call void @little_endian_store_16(i8* nonnull %4, i16 zeroext 2, i16 zeroext %7) #9, !dbg !2302
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 4, !dbg !2303
  store i8 %1, i8* %8, align 1, !dbg !2304, !tbaa !294
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 2, !dbg !2305
  %10 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %9, align 4, !dbg !2305, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %10, metadata !904, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %4, metadata !909, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i16 5, metadata !910, metadata !DIExpression()), !dbg !2309
  %11 = icmp eq void (i8, i16, i8*, i16)* %10, null, !dbg !2310
  br i1 %11, label %13, label %12, !dbg !2311

; <label>:12:                                     ; preds = %2
  call void %10(i8 zeroext 4, i16 zeroext 0, i8* nonnull %4, i16 zeroext 5) #9, !dbg !2312
  br label %13, !dbg !2313

; <label>:13:                                     ; preds = %12, %2
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %4) #8, !dbg !2314
  ret void, !dbg !2314
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_characteristic_descriptors_by_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2315 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2319, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i16 %1, metadata !2320, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i16 %2, metadata !2321, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i16 %3, metadata !2322, metadata !DIExpression()), !dbg !2327
  %5 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !2323, metadata !DIExpression()), !dbg !2329
  %6 = icmp eq %struct.gatt_client* %5, null, !dbg !2330
  br i1 %6, label %15, label %7, !dbg !2332

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !1354, metadata !DIExpression()), !dbg !2333
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 1, !dbg !2336
  %9 = load i32, i32* %8, align 4, !dbg !2336, !tbaa !573
  %10 = icmp eq i32 %9, 0, !dbg !2337
  br i1 %10, label %11, label %15, !dbg !2338

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 2, !dbg !2339
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %12, align 4, !dbg !2340, !tbaa !903
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 10, !dbg !2341
  store i16 %2, i16* %13, align 2, !dbg !2342, !tbaa !746
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 11, !dbg !2343
  store i16 %3, i16* %14, align 4, !dbg !2344, !tbaa !699
  store i32 9, i32* %8, align 4, !dbg !2345, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2346
  br label %15, !dbg !2347

; <label>:15:                                     ; preds = %11, %7, %4
  %16 = phi i8 [ 0, %11 ], [ 86, %4 ], [ -107, %7 ]
  ret i8 %16, !dbg !2348
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_value_of_characteristic_using_value_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2349 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2351, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i16 %1, metadata !2352, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i16 %2, metadata !2353, metadata !DIExpression()), !dbg !2357
  %4 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !2358, !tbaa !226
  %5 = icmp eq i32 %4, 0, !dbg !2358
  br i1 %5, label %17, label %6, !dbg !2360

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2361
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !2354, metadata !DIExpression()), !dbg !2362
  %8 = icmp eq %struct.gatt_client* %7, null, !dbg !2363
  br i1 %8, label %17, label %9, !dbg !2365

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !1354, metadata !DIExpression()), !dbg !2366
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 1, !dbg !2369
  %11 = load i32, i32* %10, align 4, !dbg !2369, !tbaa !573
  %12 = icmp eq i32 %11, 0, !dbg !2370
  br i1 %12, label %13, label %17, !dbg !2371

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 2, !dbg !2372
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %14, align 4, !dbg !2373, !tbaa !903
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 16, !dbg !2374
  store i16 %2, i16* %15, align 2, !dbg !2375, !tbaa !873
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 17, !dbg !2376
  store i16 0, i16* %16, align 4, !dbg !2377, !tbaa !1038
  store i32 15, i32* %10, align 4, !dbg !2378, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2379
  br label %17, !dbg !2380

; <label>:17:                                     ; preds = %13, %9, %6, %3
  %18 = phi i8 [ 84, %3 ], [ 0, %13 ], [ 86, %6 ], [ -107, %9 ]
  ret i8 %18, !dbg !2381
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_value_of_characteristics_by_uuid16(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2383 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2385, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i16 %1, metadata !2386, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i16 %2, metadata !2387, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i16 %3, metadata !2388, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i16 %4, metadata !2389, metadata !DIExpression()), !dbg !2395
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !2390, metadata !DIExpression()), !dbg !2397
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !2398
  br i1 %7, label %21, label %8, !dbg !2400

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !2401
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !2404
  %10 = load i32, i32* %9, align 4, !dbg !2404, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !2405
  br i1 %11, label %12, label %21, !dbg !2406

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !2407
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !2408, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 10, !dbg !2409
  store i16 %2, i16* %14, align 2, !dbg !2410, !tbaa !746
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 11, !dbg !2411
  store i16 %3, i16* %15, align 4, !dbg !2412, !tbaa !699
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 12, !dbg !2413
  store i16 %2, i16* %16, align 2, !dbg !2414, !tbaa !750
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 13, !dbg !2415
  store i16 %3, i16* %17, align 4, !dbg !2416, !tbaa !754
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 8, !dbg !2417
  store i16 %4, i16* %18, align 4, !dbg !2418, !tbaa !1500
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 9, i32 0, !dbg !2419
  %20 = zext i16 %4 to i32, !dbg !2420
  tail call void @uuid_add_bluetooth_prefix(i8* %19, i32 %20) #9, !dbg !2421
  store i32 19, i32* %9, align 4, !dbg !2422, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2423
  br label %21, !dbg !2424

; <label>:21:                                     ; preds = %12, %8, %5
  %22 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -107, %8 ]
  ret i8 %22, !dbg !2425
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_value_of_characteristics_by_uuid128(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2426 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2428, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i16 %1, metadata !2429, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i16 %2, metadata !2430, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i16 %3, metadata !2431, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* %4, metadata !2432, metadata !DIExpression()), !dbg !2438
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2439
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !2433, metadata !DIExpression()), !dbg !2440
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !2441
  br i1 %7, label %20, label %8, !dbg !2443

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !2444
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !2447
  %10 = load i32, i32* %9, align 4, !dbg !2447, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !2448
  br i1 %11, label %12, label %20, !dbg !2449

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !2450
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !2451, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 10, !dbg !2452
  store i16 %2, i16* %14, align 2, !dbg !2453, !tbaa !746
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 11, !dbg !2454
  store i16 %3, i16* %15, align 4, !dbg !2455, !tbaa !699
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 12, !dbg !2456
  store i16 %2, i16* %16, align 2, !dbg !2457, !tbaa !750
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 13, !dbg !2458
  store i16 %3, i16* %17, align 4, !dbg !2459, !tbaa !754
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 8, !dbg !2460
  store i16 0, i16* %18, align 4, !dbg !2461, !tbaa !1500
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 9, i32 0, !dbg !2462
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %4, i32 16, i32 1, i1 false), !dbg !2462
  store i32 19, i32* %9, align 4, !dbg !2463, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2464
  br label %20, !dbg !2465

; <label>:20:                                     ; preds = %12, %8, %5
  %21 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -107, %8 ]
  ret i8 %21, !dbg !2466
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_value_of_characteristic(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2467 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i16 %1, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %2, metadata !2473, metadata !DIExpression()), !dbg !2476
  %4 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 1, !dbg !2477
  %5 = load i16, i16* %4, align 2, !dbg !2477, !tbaa !2264
  %6 = tail call zeroext i8 @gatt_client_read_value_of_characteristic_using_value_handle(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %5) #10, !dbg !2478
  ret i8 %6, !dbg !2479
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2480 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2482, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i16 %1, metadata !2483, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i16 %2, metadata !2484, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i16 %3, metadata !2485, metadata !DIExpression()), !dbg !2490
  %5 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !2491, !tbaa !226
  %6 = icmp eq i32 %5, 0, !dbg !2491
  br i1 %6, label %18, label %7, !dbg !2493

; <label>:7:                                      ; preds = %4
  %8 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2494
  call void @llvm.dbg.value(metadata %struct.gatt_client* %8, metadata !2486, metadata !DIExpression()), !dbg !2495
  %9 = icmp eq %struct.gatt_client* %8, null, !dbg !2496
  br i1 %9, label %18, label %10, !dbg !2498

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.value(metadata %struct.gatt_client* %8, metadata !1354, metadata !DIExpression()), !dbg !2499
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %8, i32 0, i32 1, !dbg !2502
  %12 = load i32, i32* %11, align 4, !dbg !2502, !tbaa !573
  %13 = icmp eq i32 %12, 0, !dbg !2503
  br i1 %13, label %14, label %18, !dbg !2504

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %8, i32 0, i32 2, !dbg !2505
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %15, align 4, !dbg !2506, !tbaa !903
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %8, i32 0, i32 16, !dbg !2507
  store i16 %2, i16* %16, align 2, !dbg !2508, !tbaa !873
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %8, i32 0, i32 17, !dbg !2509
  store i16 %3, i16* %17, align 4, !dbg !2510, !tbaa !1038
  store i32 17, i32* %11, align 4, !dbg !2511, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2512
  br label %18, !dbg !2513

; <label>:18:                                     ; preds = %14, %10, %7, %4
  %19 = phi i8 [ 84, %4 ], [ 0, %14 ], [ 86, %7 ], [ -107, %10 ]
  ret i8 %19, !dbg !2514
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_long_value_of_characteristic_using_value_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2516 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2518, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i16 %1, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i16 %2, metadata !2520, metadata !DIExpression()), !dbg !2523
  %4 = tail call zeroext i8 @gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext 0) #10, !dbg !2524
  ret i8 %4, !dbg !2525
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_long_value_of_characteristic(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2526 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2528, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i16 %1, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %2, metadata !2530, metadata !DIExpression()), !dbg !2533
  %4 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 1, !dbg !2534
  %5 = load i16, i16* %4, align 2, !dbg !2534, !tbaa !2264
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2518, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i16 %1, metadata !2519, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i16 %5, metadata !2520, metadata !DIExpression()), !dbg !2538
  %6 = tail call zeroext i8 @gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %5, i16 zeroext 0) #9, !dbg !2539
  ret i8 %6, !dbg !2540
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_multiple_characteristic_values(void (i8, i16, i8*, i16)*, i16 zeroext, i32, i16*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2541 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2545, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i16 %1, metadata !2546, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %2, metadata !2547, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i16* %3, metadata !2548, metadata !DIExpression()), !dbg !2553
  %5 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !2549, metadata !DIExpression()), !dbg !2555
  %6 = icmp eq %struct.gatt_client* %5, null, !dbg !2556
  br i1 %6, label %16, label %7, !dbg !2558

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !1354, metadata !DIExpression()), !dbg !2559
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 1, !dbg !2562
  %9 = load i32, i32* %8, align 4, !dbg !2562, !tbaa !573
  %10 = icmp eq i32 %9, 0, !dbg !2563
  br i1 %10, label %11, label %16, !dbg !2564

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 2, !dbg !2565
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %12, align 4, !dbg !2566, !tbaa !903
  %13 = trunc i32 %2 to i16, !dbg !2567
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 20, !dbg !2568
  store i16 %13, i16* %14, align 4, !dbg !2569, !tbaa !1830
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 21, !dbg !2570
  store i16* %3, i16** %15, align 4, !dbg !2571, !tbaa !1832
  store i32 21, i32* %8, align 4, !dbg !2572, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2573
  br label %16, !dbg !2574

; <label>:16:                                     ; preds = %11, %7, %4
  %17 = phi i8 [ 0, %11 ], [ 86, %4 ], [ -107, %7 ]
  ret i8 %17, !dbg !2575
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_value_of_characteristic_without_response(i16 zeroext, i16 zeroext, i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2576 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2580, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i16 %1, metadata !2581, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i16 %2, metadata !2582, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %3, metadata !2583, metadata !DIExpression()), !dbg !2588
  %5 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle(i16 zeroext %0) #10, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !2584, metadata !DIExpression()), !dbg !2590
  %6 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !2591, !tbaa !226
  %7 = icmp eq i32 %6, 0, !dbg !2591
  br i1 %7, label %27, label %8, !dbg !2593

; <label>:8:                                      ; preds = %4
  %9 = icmp eq %struct.gatt_client* %5, null, !dbg !2594
  br i1 %9, label %27, label %10, !dbg !2596

; <label>:10:                                     ; preds = %8
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !1354, metadata !DIExpression()), !dbg !2597
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 1, !dbg !2600
  %12 = load i32, i32* %11, align 4, !dbg !2600, !tbaa !573
  %13 = icmp eq i32 %12, 0, !dbg !2601
  br i1 %13, label %14, label %27, !dbg !2602

; <label>:14:                                     ; preds = %10
  %15 = zext i16 %2 to i32, !dbg !2603
  %16 = tail call fastcc zeroext i16 @peripheral_mtu(%struct.gatt_client* nonnull %5) #10, !dbg !2605
  %17 = zext i16 %16 to i32, !dbg !2605
  %18 = add nsw i32 %17, -3, !dbg !2606
  %19 = icmp sgt i32 %15, %18, !dbg !2607
  br i1 %19, label %27, label %20, !dbg !2608

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 3, !dbg !2609
  %22 = load i16, i16* %21, align 4, !dbg !2609, !tbaa !323
  %23 = tail call i32 @att_dispatch_client_can_send_now(i16 zeroext %22) #9, !dbg !2611
  %24 = icmp eq i32 %23, 0, !dbg !2611
  br i1 %24, label %27, label %25, !dbg !2612

; <label>:25:                                     ; preds = %20
  %26 = load i16, i16* %21, align 4, !dbg !2613, !tbaa !323
  tail call fastcc void @att_write_request(i16 zeroext 82, i16 zeroext %26, i16 zeroext %1, i16 zeroext %2, i8* %3) #10, !dbg !2614
  br label %27, !dbg !2615

; <label>:27:                                     ; preds = %25, %20, %14, %10, %8, %4
  %28 = phi i8 [ 0, %25 ], [ 84, %4 ], [ 86, %8 ], [ -107, %10 ], [ -105, %14 ], [ -108, %20 ]
  ret i8 %28, !dbg !2616
}

; Function Attrs: nounwind optsize
define internal fastcc zeroext i16 @peripheral_mtu(%struct.gatt_client* nocapture readonly) unnamed_addr #0 section ".ble_gatt_code" !dbg !2617 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !2621, metadata !DIExpression()), !dbg !2622
  %2 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 6, !dbg !2623
  %3 = load i16, i16* %2, align 2, !dbg !2623, !tbaa !546
  %4 = tail call zeroext i16 @l2cap_max_le_mtu() #9, !dbg !2625
  %5 = icmp ugt i16 %3, %4, !dbg !2626
  br i1 %5, label %6, label %14, !dbg !2627

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* @ble_debug_enable, align 1, !dbg !2628, !tbaa !294
  %8 = and i8 %7, 4, !dbg !2628
  %9 = icmp eq i8 %8, 0, !dbg !2628
  br i1 %9, label %12, label %10, !dbg !2631

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.24, i32 0, i32 0)), !dbg !2632
  br label %12, !dbg !2632

; <label>:12:                                     ; preds = %10, %6
  %13 = tail call zeroext i16 @l2cap_max_le_mtu() #9, !dbg !2634
  br label %16, !dbg !2635

; <label>:14:                                     ; preds = %1
  %15 = load i16, i16* %2, align 2, !dbg !2636, !tbaa !546
  br label %16, !dbg !2637

; <label>:16:                                     ; preds = %14, %12
  %17 = phi i16 [ %13, %12 ], [ %15, %14 ]
  ret i16 %17, !dbg !2638
}

; Function Attrs: optsize
declare i32 @att_dispatch_client_can_send_now(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @att_write_request(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8* nocapture readonly) unnamed_addr #0 section ".ble_gatt_code" !dbg !2639 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2643, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i16 %1, metadata !2644, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i16 %2, metadata !2645, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i16 %3, metadata !2646, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* %4, metadata !2647, metadata !DIExpression()), !dbg !2653
  %6 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !2654
  %7 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !2655
  call void @llvm.dbg.value(metadata i8* %7, metadata !2648, metadata !DIExpression()), !dbg !2656
  %8 = trunc i16 %0 to i8, !dbg !2657
  store i8 %8, i8* %7, align 1, !dbg !2658, !tbaa !294
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 1, i16 zeroext %2) #9, !dbg !2659
  %9 = getelementptr inbounds i8, i8* %7, i32 3, !dbg !2660
  %10 = zext i16 %3 to i32, !dbg !2661
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %4, i32 %10, i32 1, i1 false), !dbg !2662
  %11 = add i16 %3, 3, !dbg !2663
  %12 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %1, i16 zeroext 4, i16 zeroext %11) #9, !dbg !2664
  ret void, !dbg !2665
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_value_of_characteristic(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2666 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2668, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i16 %1, metadata !2669, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i16 %2, metadata !2670, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i16 %3, metadata !2671, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8* %4, metadata !2672, metadata !DIExpression()), !dbg !2678
  %6 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !2679, !tbaa !226
  %7 = icmp eq i32 %6, 0, !dbg !2679
  br i1 %7, label %20, label %8, !dbg !2681

; <label>:8:                                      ; preds = %5
  %9 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.gatt_client* %9, metadata !2673, metadata !DIExpression()), !dbg !2683
  %10 = icmp eq %struct.gatt_client* %9, null, !dbg !2684
  br i1 %10, label %20, label %11, !dbg !2686

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.value(metadata %struct.gatt_client* %9, metadata !1354, metadata !DIExpression()), !dbg !2687
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %9, i32 0, i32 1, !dbg !2690
  %13 = load i32, i32* %12, align 4, !dbg !2690, !tbaa !573
  %14 = icmp eq i32 %13, 0, !dbg !2691
  br i1 %14, label %15, label %20, !dbg !2692

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %9, i32 0, i32 2, !dbg !2693
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %16, align 4, !dbg !2694, !tbaa !903
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %9, i32 0, i32 16, !dbg !2695
  store i16 %2, i16* %17, align 2, !dbg !2696, !tbaa !873
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %9, i32 0, i32 18, !dbg !2697
  store i16 %3, i16* %18, align 2, !dbg !2698, !tbaa !1691
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %9, i32 0, i32 19, !dbg !2699
  store i8* %4, i8** %19, align 4, !dbg !2700, !tbaa !1881
  store i32 23, i32* %12, align 4, !dbg !2701, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2702
  br label %20, !dbg !2703

; <label>:20:                                     ; preds = %15, %11, %8, %5
  %21 = phi i8 [ 84, %5 ], [ 0, %15 ], [ 86, %8 ], [ -107, %11 ]
  ret i8 %21, !dbg !2704
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_long_value_of_characteristic_with_offset(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2706 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2710, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i16 %1, metadata !2711, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i16 %2, metadata !2712, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i16 %3, metadata !2713, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i16 %4, metadata !2714, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %5, metadata !2715, metadata !DIExpression()), !dbg !2722
  %7 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2723
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !2716, metadata !DIExpression()), !dbg !2724
  %8 = icmp eq %struct.gatt_client* %7, null, !dbg !2725
  br i1 %8, label %19, label %9, !dbg !2727

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !1354, metadata !DIExpression()), !dbg !2728
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 1, !dbg !2731
  %11 = load i32, i32* %10, align 4, !dbg !2731, !tbaa !573
  %12 = icmp eq i32 %11, 0, !dbg !2732
  br i1 %12, label %13, label %19, !dbg !2733

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 2, !dbg !2734
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %14, align 4, !dbg !2735, !tbaa !903
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 16, !dbg !2736
  store i16 %2, i16* %15, align 2, !dbg !2737, !tbaa !873
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 18, !dbg !2738
  store i16 %4, i16* %16, align 2, !dbg !2739, !tbaa !1691
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 17, !dbg !2740
  store i16 %3, i16* %17, align 4, !dbg !2741, !tbaa !1038
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 19, !dbg !2742
  store i8* %5, i8** %18, align 4, !dbg !2743, !tbaa !1881
  store i32 25, i32* %10, align 4, !dbg !2744, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2745
  br label %19, !dbg !2746

; <label>:19:                                     ; preds = %13, %9, %6
  %20 = phi i8 [ 0, %13 ], [ 86, %6 ], [ -107, %9 ]
  ret i8 %20, !dbg !2747
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_long_value_of_characteristic(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2748 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2750, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i16 %1, metadata !2751, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i16 %2, metadata !2752, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i16 %3, metadata !2753, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %4, metadata !2754, metadata !DIExpression()), !dbg !2759
  %6 = tail call zeroext i8 @gatt_client_write_long_value_of_characteristic_with_offset(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext 0, i16 zeroext %3, i8* %4) #10, !dbg !2760
  ret i8 %6, !dbg !2761
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_reliable_write_long_value_of_characteristic(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2762 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2764, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i16 %1, metadata !2765, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i16 %2, metadata !2766, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i16 %3, metadata !2767, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %4, metadata !2768, metadata !DIExpression()), !dbg !2774
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2775
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !2769, metadata !DIExpression()), !dbg !2776
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !2777
  br i1 %7, label %18, label %8, !dbg !2779

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !2780
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !2783
  %10 = load i32, i32* %9, align 4, !dbg !2783, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !2784
  br i1 %11, label %12, label %18, !dbg !2785

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !2786
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !2787, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 16, !dbg !2788
  store i16 %2, i16* %14, align 2, !dbg !2789, !tbaa !873
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 18, !dbg !2790
  store i16 %3, i16* %15, align 2, !dbg !2791, !tbaa !1691
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 17, !dbg !2792
  store i16 0, i16* %16, align 4, !dbg !2793, !tbaa !1038
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 19, !dbg !2794
  store i8* %4, i8** %17, align 4, !dbg !2795, !tbaa !1881
  store i32 27, i32* %9, align 4, !dbg !2796, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2797
  br label %18, !dbg !2798

; <label>:18:                                     ; preds = %12, %8, %5
  %19 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -107, %8 ]
  ret i8 %19, !dbg !2799
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_client_characteristic_configuration(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2800 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2804, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i16 %1, metadata !2805, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %2, metadata !2806, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i16 %3, metadata !2807, metadata !DIExpression()), !dbg !2812
  %5 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2813
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !2808, metadata !DIExpression()), !dbg !2814
  %6 = icmp eq %struct.gatt_client* %5, null, !dbg !2815
  br i1 %6, label %49, label %7, !dbg !2817

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !1354, metadata !DIExpression()), !dbg !2818
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 1, !dbg !2821
  %9 = load i32, i32* %8, align 4, !dbg !2821, !tbaa !573
  %10 = icmp eq i32 %9, 0, !dbg !2822
  br i1 %10, label %11, label %49, !dbg !2823

; <label>:11:                                     ; preds = %7
  %12 = zext i16 %3 to i32, !dbg !2824
  %13 = and i32 %12, 1, !dbg !2826
  %14 = icmp eq i32 %13, 0, !dbg !2826
  br i1 %14, label %26, label %15, !dbg !2827

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 3, !dbg !2828
  %17 = load i16, i16* %16, align 2, !dbg !2828, !tbaa !2829
  %18 = and i16 %17, 16, !dbg !2830
  %19 = icmp eq i16 %18, 0, !dbg !2831
  br i1 %19, label %20, label %26, !dbg !2832

; <label>:20:                                     ; preds = %15
  %21 = load i8, i8* @ble_debug_enable, align 1, !dbg !2834, !tbaa !294
  %22 = and i8 %21, 1, !dbg !2834
  %23 = icmp eq i8 %22, 0, !dbg !2834
  br i1 %23, label %49, label %24, !dbg !2837

; <label>:24:                                     ; preds = %20
  %25 = tail call i32 @puts(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @str.26, i32 0, i32 0)), !dbg !2838
  br label %49, !dbg !2838

; <label>:26:                                     ; preds = %15, %11
  %27 = and i32 %12, 2, !dbg !2840
  %28 = icmp eq i32 %27, 0, !dbg !2840
  br i1 %28, label %40, label %29, !dbg !2842

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 3, !dbg !2843
  %31 = load i16, i16* %30, align 2, !dbg !2843, !tbaa !2829
  %32 = and i16 %31, 32, !dbg !2844
  %33 = icmp eq i16 %32, 0, !dbg !2845
  br i1 %33, label %34, label %40, !dbg !2846

; <label>:34:                                     ; preds = %29
  %35 = load i8, i8* @ble_debug_enable, align 1, !dbg !2848, !tbaa !294
  %36 = and i8 %35, 1, !dbg !2848
  %37 = icmp eq i8 %36, 0, !dbg !2848
  br i1 %37, label %49, label %38, !dbg !2851

; <label>:38:                                     ; preds = %34
  %39 = tail call i32 @puts(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @str.25, i32 0, i32 0)), !dbg !2852
  br label %49, !dbg !2852

; <label>:40:                                     ; preds = %29, %26
  %41 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 2, !dbg !2854
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %41, align 4, !dbg !2855, !tbaa !903
  %42 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 1, !dbg !2856
  %43 = load i16, i16* %42, align 2, !dbg !2856, !tbaa !2264
  %44 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 10, !dbg !2857
  store i16 %43, i16* %44, align 2, !dbg !2858, !tbaa !746
  %45 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 2, !dbg !2859
  %46 = load i16, i16* %45, align 2, !dbg !2859, !tbaa !2267
  %47 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 11, !dbg !2860
  store i16 %46, i16* %47, align 4, !dbg !2861, !tbaa !699
  %48 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 23, i32 0, !dbg !2862
  tail call void @little_endian_store_16(i8* %48, i16 zeroext 0, i16 zeroext %3) #9, !dbg !2863
  store i32 35, i32* %8, align 4, !dbg !2864, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2865
  br label %49, !dbg !2866

; <label>:49:                                     ; preds = %40, %38, %34, %24, %20, %7, %4
  %50 = phi i8 [ 0, %40 ], [ 86, %4 ], [ -107, %7 ], [ -104, %20 ], [ -104, %24 ], [ -103, %34 ], [ -103, %38 ]
  ret i8 %50, !dbg !2867
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @little_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_characteristics_for_handle_range_by_uuid16(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2868 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2872, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i16 %1, metadata !2873, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i16 %2, metadata !2874, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i16 %3, metadata !2875, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i16 %4, metadata !2876, metadata !DIExpression()), !dbg !2882
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2883
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !2877, metadata !DIExpression()), !dbg !2884
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !2885
  br i1 %7, label %21, label %8, !dbg !2887

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !2888
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !2891
  %10 = load i32, i32* %9, align 4, !dbg !2891, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !2892
  br i1 %11, label %12, label %21, !dbg !2893

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !2894
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !2895, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 10, !dbg !2896
  store i16 %2, i16* %14, align 2, !dbg !2897, !tbaa !746
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 11, !dbg !2898
  store i16 %3, i16* %15, align 4, !dbg !2899, !tbaa !699
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 24, !dbg !2900
  store i8 0, i8* %16, align 4, !dbg !2901, !tbaa !2080
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 8, !dbg !2902
  store i16 %4, i16* %17, align 4, !dbg !2903, !tbaa !1500
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 9, i32 0, !dbg !2904
  %19 = zext i16 %4 to i32, !dbg !2905
  tail call void @sdp_normalize_uuid(i8* %18, i32 %19) #9, !dbg !2906
  %20 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 15, !dbg !2907
  store i16 0, i16* %20, align 4, !dbg !2908, !tbaa !2083
  store i32 7, i32* %9, align 4, !dbg !2909, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2910
  br label %21, !dbg !2911

; <label>:21:                                     ; preds = %12, %8, %5
  %22 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -95, %8 ]
  ret i8 %22, !dbg !2912
}

; Function Attrs: optsize
declare void @sdp_normalize_uuid(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_characteristics_for_handle_range_by_uuid128(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2913 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2917, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i16 %1, metadata !2918, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i16 %2, metadata !2919, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i16 %3, metadata !2920, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %4, metadata !2921, metadata !DIExpression()), !dbg !2927
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2928
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !2922, metadata !DIExpression()), !dbg !2929
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !2930
  br i1 %7, label %20, label %8, !dbg !2932

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !2933
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !2936
  %10 = load i32, i32* %9, align 4, !dbg !2936, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !2937
  br i1 %11, label %12, label %20, !dbg !2938

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !2939
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !2940, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 10, !dbg !2941
  store i16 %2, i16* %14, align 2, !dbg !2942, !tbaa !746
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 11, !dbg !2943
  store i16 %3, i16* %15, align 4, !dbg !2944, !tbaa !699
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 24, !dbg !2945
  store i8 0, i8* %16, align 4, !dbg !2946, !tbaa !2080
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 8, !dbg !2947
  store i16 0, i16* %17, align 4, !dbg !2948, !tbaa !1500
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 9, i32 0, !dbg !2949
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %4, i32 16, i32 1, i1 false), !dbg !2949
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 15, !dbg !2950
  store i16 0, i16* %19, align 4, !dbg !2951, !tbaa !2083
  store i32 7, i32* %9, align 4, !dbg !2952, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2953
  br label %20, !dbg !2954

; <label>:20:                                     ; preds = %12, %8, %5
  %21 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -95, %8 ]
  ret i8 %21, !dbg !2955
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_characteristic_descriptor_using_descriptor_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2956 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2958, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i16 %1, metadata !2959, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i16 %2, metadata !2960, metadata !DIExpression()), !dbg !2964
  %4 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !2961, metadata !DIExpression()), !dbg !2966
  %5 = icmp eq %struct.gatt_client* %4, null, !dbg !2967
  br i1 %5, label %13, label %6, !dbg !2969

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !1354, metadata !DIExpression()), !dbg !2970
  %7 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 1, !dbg !2973
  %8 = load i32, i32* %7, align 4, !dbg !2973, !tbaa !573
  %9 = icmp eq i32 %8, 0, !dbg !2974
  br i1 %9, label %10, label %13, !dbg !2975

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 2, !dbg !2976
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %11, align 4, !dbg !2977, !tbaa !903
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 16, !dbg !2978
  store i16 %2, i16* %12, align 2, !dbg !2979, !tbaa !873
  store i32 39, i32* %7, align 4, !dbg !2980, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !2981
  br label %13, !dbg !2982

; <label>:13:                                     ; preds = %10, %6, %3
  %14 = phi i8 [ 0, %10 ], [ 86, %3 ], [ -107, %6 ]
  ret i8 %14, !dbg !2983
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_characteristic_descriptor(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.gatt_client_characteristic_descriptor_t* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !2984 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i16 %1, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata %struct.gatt_client_characteristic_descriptor_t* %2, metadata !2997, metadata !DIExpression()), !dbg !3000
  %4 = getelementptr inbounds %struct.gatt_client_characteristic_descriptor_t, %struct.gatt_client_characteristic_descriptor_t* %2, i32 0, i32 0, !dbg !3001
  %5 = load i16, i16* %4, align 2, !dbg !3001, !tbaa !3002
  %6 = tail call zeroext i8 @gatt_client_read_characteristic_descriptor_using_descriptor_handle(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %5) #10, !dbg !3004
  ret i8 %6, !dbg !3005
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3006 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3008, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i16 %1, metadata !3009, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i16 %2, metadata !3010, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i16 %3, metadata !3011, metadata !DIExpression()), !dbg !3016
  %5 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3017
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !3012, metadata !DIExpression()), !dbg !3018
  %6 = icmp eq %struct.gatt_client* %5, null, !dbg !3019
  br i1 %6, label %15, label %7, !dbg !3021

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata %struct.gatt_client* %5, metadata !1354, metadata !DIExpression()), !dbg !3022
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 1, !dbg !3025
  %9 = load i32, i32* %8, align 4, !dbg !3025, !tbaa !573
  %10 = icmp eq i32 %9, 0, !dbg !3026
  br i1 %10, label %11, label %15, !dbg !3027

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 2, !dbg !3028
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %12, align 4, !dbg !3029, !tbaa !903
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 16, !dbg !3030
  store i16 %2, i16* %13, align 2, !dbg !3031, !tbaa !873
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %5, i32 0, i32 17, !dbg !3032
  store i16 %3, i16* %14, align 4, !dbg !3033, !tbaa !1038
  store i32 41, i32* %8, align 4, !dbg !3034, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3035
  br label %15, !dbg !3036

; <label>:15:                                     ; preds = %11, %7, %4
  %16 = phi i8 [ 0, %11 ], [ 86, %4 ], [ -107, %7 ]
  ret i8 %16, !dbg !3037
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_long_characteristic_descriptor_using_descriptor_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3038 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i16 %1, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i16 %2, metadata !3042, metadata !DIExpression()), !dbg !3045
  %4 = tail call zeroext i8 @gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext 0) #10, !dbg !3046
  ret i8 %4, !dbg !3047
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_read_long_characteristic_descriptor(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.gatt_client_characteristic_descriptor_t* nocapture readonly) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3048 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i16 %1, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata %struct.gatt_client_characteristic_descriptor_t* %2, metadata !3052, metadata !DIExpression()), !dbg !3055
  %4 = getelementptr inbounds %struct.gatt_client_characteristic_descriptor_t, %struct.gatt_client_characteristic_descriptor_t* %2, i32 0, i32 0, !dbg !3056
  %5 = load i16, i16* %4, align 2, !dbg !3056, !tbaa !3002
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3040, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i16 %1, metadata !3041, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i16 %5, metadata !3042, metadata !DIExpression()), !dbg !3060
  %6 = tail call zeroext i8 @gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %5, i16 zeroext 0) #9, !dbg !3061
  ret i8 %6, !dbg !3062
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_characteristic_descriptor_using_descriptor_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3063 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i16 %1, metadata !3066, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i16 %2, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i16 %3, metadata !3068, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %4, metadata !3069, metadata !DIExpression()), !dbg !3075
  %6 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3076
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !3070, metadata !DIExpression()), !dbg !3077
  %7 = icmp eq %struct.gatt_client* %6, null, !dbg !3078
  br i1 %7, label %18, label %8, !dbg !3080

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.value(metadata %struct.gatt_client* %6, metadata !1354, metadata !DIExpression()), !dbg !3081
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 1, !dbg !3084
  %10 = load i32, i32* %9, align 4, !dbg !3084, !tbaa !573
  %11 = icmp eq i32 %10, 0, !dbg !3085
  br i1 %11, label %12, label %18, !dbg !3086

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 2, !dbg !3087
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %13, align 4, !dbg !3088, !tbaa !903
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 16, !dbg !3089
  store i16 %2, i16* %14, align 2, !dbg !3090, !tbaa !873
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 18, !dbg !3091
  store i16 %3, i16* %15, align 2, !dbg !3092, !tbaa !1691
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 17, !dbg !3093
  store i16 0, i16* %16, align 4, !dbg !3094, !tbaa !1038
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %6, i32 0, i32 19, !dbg !3095
  store i8* %4, i8** %17, align 4, !dbg !3096, !tbaa !1881
  store i32 43, i32* %9, align 4, !dbg !3097, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3098
  br label %18, !dbg !3099

; <label>:18:                                     ; preds = %12, %8, %5
  %19 = phi i8 [ 0, %12 ], [ 86, %5 ], [ -107, %8 ]
  ret i8 %19, !dbg !3100
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_characteristic_descriptor(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.gatt_client_characteristic_descriptor_t* nocapture readonly, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3101 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3105, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i16 %1, metadata !3106, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata %struct.gatt_client_characteristic_descriptor_t* %2, metadata !3107, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i16 %3, metadata !3108, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %4, metadata !3109, metadata !DIExpression()), !dbg !3114
  %6 = getelementptr inbounds %struct.gatt_client_characteristic_descriptor_t, %struct.gatt_client_characteristic_descriptor_t* %2, i32 0, i32 0, !dbg !3115
  %7 = load i16, i16* %6, align 2, !dbg !3115, !tbaa !3002
  %8 = tail call zeroext i8 @gatt_client_write_characteristic_descriptor_using_descriptor_handle(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %7, i16 zeroext %3, i8* %4) #10, !dbg !3116
  ret i8 %8, !dbg !3117
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3118 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3120, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i16 %1, metadata !3121, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i16 %2, metadata !3122, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i16 %3, metadata !3123, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i16 %4, metadata !3124, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %5, metadata !3125, metadata !DIExpression()), !dbg !3132
  %7 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3133
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !3126, metadata !DIExpression()), !dbg !3134
  %8 = icmp eq %struct.gatt_client* %7, null, !dbg !3135
  br i1 %8, label %19, label %9, !dbg !3137

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !1354, metadata !DIExpression()), !dbg !3138
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 1, !dbg !3141
  %11 = load i32, i32* %10, align 4, !dbg !3141, !tbaa !573
  %12 = icmp eq i32 %11, 0, !dbg !3142
  br i1 %12, label %13, label %19, !dbg !3143

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 2, !dbg !3144
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %14, align 4, !dbg !3145, !tbaa !903
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 16, !dbg !3146
  store i16 %2, i16* %15, align 2, !dbg !3147, !tbaa !873
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 18, !dbg !3148
  store i16 %4, i16* %16, align 2, !dbg !3149, !tbaa !1691
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 17, !dbg !3150
  store i16 %3, i16* %17, align 4, !dbg !3151, !tbaa !1038
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 19, !dbg !3152
  store i8* %5, i8** %18, align 4, !dbg !3153, !tbaa !1881
  store i32 45, i32* %10, align 4, !dbg !3154, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3155
  br label %19, !dbg !3156

; <label>:19:                                     ; preds = %13, %9, %6
  %20 = phi i8 [ 0, %13 ], [ 86, %6 ], [ -107, %9 ]
  ret i8 %20, !dbg !3157
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_long_characteristic_descriptor_using_descriptor_handle(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3158 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i16 %1, metadata !3161, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i16 %2, metadata !3162, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i16 %3, metadata !3163, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8* %4, metadata !3164, metadata !DIExpression()), !dbg !3169
  %6 = tail call zeroext i8 @gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext 0, i16 zeroext %3, i8* %4) #10, !dbg !3170
  ret i8 %6, !dbg !3171
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_write_long_characteristic_descriptor(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.gatt_client_characteristic_descriptor_t* nocapture readonly, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3172 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3174, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i16 %1, metadata !3175, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata %struct.gatt_client_characteristic_descriptor_t* %2, metadata !3176, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i16 %3, metadata !3177, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8* %4, metadata !3178, metadata !DIExpression()), !dbg !3183
  %6 = getelementptr inbounds %struct.gatt_client_characteristic_descriptor_t, %struct.gatt_client_characteristic_descriptor_t* %2, i32 0, i32 0, !dbg !3184
  %7 = load i16, i16* %6, align 2, !dbg !3184, !tbaa !3002
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3160, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i16 %1, metadata !3161, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i16 %7, metadata !3162, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i16 %3, metadata !3163, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %4, metadata !3164, metadata !DIExpression()), !dbg !3190
  %8 = tail call zeroext i8 @gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset(void (i8, i16, i8*, i16)* %0, i16 zeroext %1, i16 zeroext %7, i16 zeroext 0, i16 zeroext %3, i8* %4) #9, !dbg !3191
  ret i8 %8, !dbg !3192
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_prepare_write(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3193 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3195, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i16 %1, metadata !3196, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i16 %2, metadata !3197, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i16 %3, metadata !3198, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i16 %4, metadata !3199, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %5, metadata !3200, metadata !DIExpression()), !dbg !3207
  %7 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3208
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !3201, metadata !DIExpression()), !dbg !3209
  %8 = icmp eq %struct.gatt_client* %7, null, !dbg !3210
  br i1 %8, label %19, label %9, !dbg !3212

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.value(metadata %struct.gatt_client* %7, metadata !1354, metadata !DIExpression()), !dbg !3213
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 1, !dbg !3216
  %11 = load i32, i32* %10, align 4, !dbg !3216, !tbaa !573
  %12 = icmp eq i32 %11, 0, !dbg !3217
  br i1 %12, label %13, label %19, !dbg !3218

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 2, !dbg !3219
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %14, align 4, !dbg !3220, !tbaa !903
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 16, !dbg !3221
  store i16 %2, i16* %15, align 2, !dbg !3222, !tbaa !873
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 18, !dbg !3223
  store i16 %4, i16* %16, align 2, !dbg !3224, !tbaa !1691
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 17, !dbg !3225
  store i16 %3, i16* %17, align 4, !dbg !3226, !tbaa !1038
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %7, i32 0, i32 19, !dbg !3227
  store i8* %5, i8** %18, align 4, !dbg !3228, !tbaa !1881
  store i32 49, i32* %10, align 4, !dbg !3229, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3230
  br label %19, !dbg !3231

; <label>:19:                                     ; preds = %13, %9, %6
  %20 = phi i8 [ 0, %13 ], [ 86, %6 ], [ -107, %9 ]
  ret i8 %20, !dbg !3232
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_execute_write(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3233 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3235, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i16 %1, metadata !3236, metadata !DIExpression()), !dbg !3239
  %3 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3240
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !3237, metadata !DIExpression()), !dbg !3241
  %4 = icmp eq %struct.gatt_client* %3, null, !dbg !3242
  br i1 %4, label %11, label %5, !dbg !3244

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !1354, metadata !DIExpression()), !dbg !3245
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 1, !dbg !3248
  %7 = load i32, i32* %6, align 4, !dbg !3248, !tbaa !573
  %8 = icmp eq i32 %7, 0, !dbg !3249
  br i1 %8, label %9, label %11, !dbg !3250

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 2, !dbg !3251
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %10, align 4, !dbg !3252, !tbaa !903
  store i32 29, i32* %6, align 4, !dbg !3253, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3254
  br label %11, !dbg !3255

; <label>:11:                                     ; preds = %9, %5, %2
  %12 = phi i8 [ 0, %9 ], [ 86, %2 ], [ -107, %5 ]
  ret i8 %12, !dbg !3256
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_cancel_write(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3257 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i16 %1, metadata !3260, metadata !DIExpression()), !dbg !3263
  %3 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !3261, metadata !DIExpression()), !dbg !3265
  %4 = icmp eq %struct.gatt_client* %3, null, !dbg !3266
  br i1 %4, label %11, label %5, !dbg !3268

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !1354, metadata !DIExpression()), !dbg !3269
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 1, !dbg !3272
  %7 = load i32, i32* %6, align 4, !dbg !3272, !tbaa !573
  %8 = icmp eq i32 %7, 0, !dbg !3273
  br i1 %8, label %9, label %11, !dbg !3274

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 2, !dbg !3275
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %10, align 4, !dbg !3276, !tbaa !903
  store i32 31, i32* %6, align 4, !dbg !3277, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3278
  br label %11, !dbg !3279

; <label>:11:                                     ; preds = %9, %5, %2
  %12 = phi i8 [ 0, %9 ], [ 86, %2 ], [ -107, %5 ]
  ret i8 %12, !dbg !3280
}

; Function Attrs: norecurse nounwind optsize
define hidden void @gatt_client_pts_suppress_mtu_exchange() local_unnamed_addr #5 section ".ble_gatt_code" !dbg !3281 {
  store i8 1, i8* getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 4), align 4, !dbg !3282, !tbaa !263
  ret void, !dbg !3283
}

; Function Attrs: nounwind optsize
define hidden void @gatt_client_deserialize_service(i8*, i32, %struct.le_service_t*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3288, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %1, metadata !3289, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata %struct.le_service_t* %2, metadata !3290, metadata !DIExpression()), !dbg !3293
  %4 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %1) #9, !dbg !3294
  %5 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 0, !dbg !3295
  store i16 %4, i16* %5, align 2, !dbg !3296, !tbaa !2070
  %6 = add nsw i32 %1, 2, !dbg !3297
  %7 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %6) #9, !dbg !3298
  %8 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 1, !dbg !3299
  store i16 %7, i16* %8, align 2, !dbg !3300, !tbaa !2075
  %9 = add nsw i32 %1, 4, !dbg !3301
  %10 = getelementptr inbounds i8, i8* %0, i32 %9, !dbg !3302
  %11 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 3, i32 0, !dbg !3303
  tail call void @reverse_128(i8* %10, i8* %11) #9, !dbg !3304
  %12 = tail call i32 @uuid_has_bluetooth_prefix(i8* %11) #9, !dbg !3305
  %13 = icmp eq i32 %12, 0, !dbg !3305
  br i1 %13, label %18, label %14, !dbg !3307

; <label>:14:                                     ; preds = %3
  %15 = tail call i32 @big_endian_read_32(i8* %11, i32 0) #9, !dbg !3308
  %16 = trunc i32 %15 to i16, !dbg !3308
  %17 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %2, i32 0, i32 2, !dbg !3310
  store i16 %16, i16* %17, align 2, !dbg !3311, !tbaa !3312
  br label %18, !dbg !3313

; <label>:18:                                     ; preds = %14, %3
  ret void, !dbg !3314
}

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reverse_128(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uuid_has_bluetooth_prefix(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @big_endian_read_32(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @gatt_client_deserialize_characteristic(i8*, i32, %struct.le_characteristic_t*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %1, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %2, metadata !3321, metadata !DIExpression()), !dbg !3324
  %4 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %1) #9, !dbg !3325
  %5 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 0, !dbg !3326
  store i16 %4, i16* %5, align 2, !dbg !3327, !tbaa !3328
  %6 = add nsw i32 %1, 2, !dbg !3329
  %7 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %6) #9, !dbg !3330
  %8 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 1, !dbg !3331
  store i16 %7, i16* %8, align 2, !dbg !3332, !tbaa !2264
  %9 = add nsw i32 %1, 4, !dbg !3333
  %10 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %9) #9, !dbg !3334
  %11 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 2, !dbg !3335
  store i16 %10, i16* %11, align 2, !dbg !3336, !tbaa !2267
  %12 = add nsw i32 %1, 6, !dbg !3337
  %13 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %12) #9, !dbg !3338
  %14 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 3, !dbg !3339
  store i16 %13, i16* %14, align 2, !dbg !3340, !tbaa !2829
  %15 = add nsw i32 %1, 8, !dbg !3341
  %16 = getelementptr inbounds i8, i8* %0, i32 %15, !dbg !3342
  %17 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 5, i32 0, !dbg !3343
  tail call void @reverse_128(i8* %16, i8* %17) #9, !dbg !3344
  %18 = tail call i32 @uuid_has_bluetooth_prefix(i8* %17) #9, !dbg !3345
  %19 = icmp eq i32 %18, 0, !dbg !3345
  br i1 %19, label %24, label %20, !dbg !3347

; <label>:20:                                     ; preds = %3
  %21 = tail call i32 @big_endian_read_32(i8* %17, i32 0) #9, !dbg !3348
  %22 = trunc i32 %21 to i16, !dbg !3348
  %23 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %2, i32 0, i32 4, !dbg !3350
  store i16 %22, i16* %23, align 2, !dbg !3351, !tbaa !3352
  br label %24, !dbg !3353

; <label>:24:                                     ; preds = %20, %3
  ret void, !dbg !3354
}

; Function Attrs: nounwind optsize
define hidden void @gatt_client_deserialize_characteristic_descriptor(i8*, i32, %struct.gatt_client_characteristic_descriptor_t*) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3355 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3359, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i32 %1, metadata !3360, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.gatt_client_characteristic_descriptor_t* %2, metadata !3361, metadata !DIExpression()), !dbg !3364
  %4 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 %1) #9, !dbg !3365
  %5 = getelementptr inbounds %struct.gatt_client_characteristic_descriptor_t, %struct.gatt_client_characteristic_descriptor_t* %2, i32 0, i32 0, !dbg !3366
  store i16 %4, i16* %5, align 2, !dbg !3367, !tbaa !3002
  %6 = add nsw i32 %1, 2, !dbg !3368
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !3369
  %8 = getelementptr inbounds %struct.gatt_client_characteristic_descriptor_t, %struct.gatt_client_characteristic_descriptor_t* %2, i32 0, i32 2, i32 0, !dbg !3370
  tail call void @reverse_128(i8* %7, i8* %8) #9, !dbg !3371
  %9 = tail call i32 @uuid_has_bluetooth_prefix(i8* %8) #9, !dbg !3372
  %10 = icmp eq i32 %9, 0, !dbg !3372
  br i1 %10, label %15, label %11, !dbg !3374

; <label>:11:                                     ; preds = %3
  %12 = tail call i32 @big_endian_read_32(i8* %8, i32 0) #9, !dbg !3375
  %13 = trunc i32 %12 to i16, !dbg !3375
  %14 = getelementptr inbounds %struct.gatt_client_characteristic_descriptor_t, %struct.gatt_client_characteristic_descriptor_t* %2, i32 0, i32 1, !dbg !3377
  store i16 %13, i16* %14, align 2, !dbg !3378, !tbaa !3379
  br label %15, !dbg !3380

; <label>:15:                                     ; preds = %11, %3
  ret void, !dbg !3381
}

; Function Attrs: nounwind optsize
define hidden void @gatt_client_listen_for_characteristic_value_updates_simple(%struct.gatt_client_notification*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3382 {
  call void @llvm.dbg.value(metadata %struct.gatt_client_notification* %0, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %1, metadata !3388, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i16 %2, metadata !3389, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i16 %3, metadata !3390, metadata !DIExpression()), !dbg !3394
  %5 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 1, !dbg !3395
  store void (i8, i16, i8*, i16)* %1, void (i8, i16, i8*, i16)** %5, align 4, !dbg !3396, !tbaa !1454
  %6 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 2, !dbg !3397
  store i16 %2, i16* %6, align 4, !dbg !3398, !tbaa !1458
  %7 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 3, !dbg !3399
  store i16 %3, i16* %7, align 2, !dbg !3400, !tbaa !3401
  %8 = getelementptr inbounds %struct.gatt_client_notification, %struct.gatt_client_notification* %0, i32 0, i32 0, !dbg !3402
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 1), %struct.btstack_linked_item* %8) #9, !dbg !3402
  ret void, !dbg !3403
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_self_characteristic_descriptors(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3404 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i16 %1, metadata !3407, metadata !DIExpression()), !dbg !3410
  %3 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3411
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !3408, metadata !DIExpression()), !dbg !3412
  %4 = icmp eq %struct.gatt_client* %3, null, !dbg !3413
  br i1 %4, label %13, label %5, !dbg !3415

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !1354, metadata !DIExpression()), !dbg !3416
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 1, !dbg !3419
  %7 = load i32, i32* %6, align 4, !dbg !3419, !tbaa !573
  %8 = icmp eq i32 %7, 0, !dbg !3420
  br i1 %8, label %9, label %13, !dbg !3421

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 2, !dbg !3422
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %10, align 4, !dbg !3423, !tbaa !903
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 10, !dbg !3424
  store i16 1, i16* %11, align 2, !dbg !3425, !tbaa !746
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 11, !dbg !3426
  store i16 128, i16* %12, align 4, !dbg !3427, !tbaa !699
  store i32 9, i32* %6, align 4, !dbg !3428, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3429
  br label %13, !dbg !3430

; <label>:13:                                     ; preds = %9, %5, %2
  %14 = phi i8 [ 0, %9 ], [ 86, %2 ], [ -107, %5 ]
  ret i8 %14, !dbg !3431
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @gatt_client_discover_self_characteristics_for_service(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3432 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i16 %1, metadata !3435, metadata !DIExpression()), !dbg !3438
  %3 = tail call fastcc %struct.gatt_client* @provide_context_for_conn_handle_and_start_timer(i16 zeroext %1) #10, !dbg !3439
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !3436, metadata !DIExpression()), !dbg !3440
  %4 = icmp eq %struct.gatt_client* %3, null, !dbg !3441
  br i1 %4, label %15, label %5, !dbg !3443

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.gatt_client* %3, metadata !1354, metadata !DIExpression()), !dbg !3444
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 1, !dbg !3447
  %7 = load i32, i32* %6, align 4, !dbg !3447, !tbaa !573
  %8 = icmp eq i32 %7, 0, !dbg !3448
  br i1 %8, label %9, label %15, !dbg !3449

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 2, !dbg !3450
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %10, align 4, !dbg !3451, !tbaa !903
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 10, !dbg !3452
  store i16 1, i16* %11, align 2, !dbg !3453, !tbaa !746
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 11, !dbg !3454
  store i16 128, i16* %12, align 4, !dbg !3455, !tbaa !699
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 24, !dbg !3456
  store i8 0, i8* %13, align 4, !dbg !3457, !tbaa !2080
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %3, i32 0, i32 15, !dbg !3458
  store i16 0, i16* %14, align 4, !dbg !3459, !tbaa !2083
  store i32 5, i32* %6, align 4, !dbg !3460, !tbaa !573
  tail call fastcc void @gatt_client_run() #10, !dbg !3461
  br label %15, !dbg !3462

; <label>:15:                                     ; preds = %9, %5, %2
  %16 = phi i8 [ 0, %9 ], [ 86, %2 ], [ -107, %5 ]
  ret i8 %16, !dbg !3463
}

; Function Attrs: nounwind optsize
define hidden void @call_gatt_client_run() local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3464 {
  tail call fastcc void @gatt_client_run() #10, !dbg !3465
  ret void, !dbg !3466
}

; Function Attrs: nounwind optsize
define hidden i32 @gatt_client_sync_mtu(i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_gatt_code" !dbg !3467 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i16 %1, metadata !3472, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i16 %0, metadata !300, metadata !DIExpression()), !dbg !3476
  %3 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 0), align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %3, metadata !305, metadata !DIExpression()), !dbg !3478
  %4 = icmp eq %struct.btstack_linked_item* %3, null, !dbg !3479
  br i1 %4, label %27, label %5, !dbg !3479

; <label>:5:                                      ; preds = %2
  br label %10, !dbg !3480

; <label>:6:                                      ; preds = %10
  %7 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 0, i32 0, !dbg !3481
  %8 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %7, align 4, !tbaa !312
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %8, metadata !305, metadata !DIExpression()), !dbg !3478
  %9 = icmp eq %struct.btstack_linked_item* %8, null, !dbg !3479
  br i1 %9, label %26, label %10, !dbg !3479, !llvm.loop !320

; <label>:10:                                     ; preds = %6, %5
  %11 = phi %struct.btstack_linked_item* [ %8, %6 ], [ %3, %5 ]
  %12 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %11, i32 3, !dbg !3480
  %13 = bitcast %struct.btstack_linked_item* %12 to i16*, !dbg !3480
  %14 = load i16, i16* %13, align 4, !dbg !3480, !tbaa !323
  %15 = icmp eq i16 %14, %0, !dbg !3482
  br i1 %15, label %16, label %6

; <label>:16:                                     ; preds = %10
  %17 = bitcast %struct.btstack_linked_item* %11 to %struct.gatt_client*, !dbg !3483
  %18 = load i8, i8* @ble_debug_enable, align 1, !dbg !3484, !tbaa !294
  %19 = and i8 %18, 1, !dbg !3484
  %20 = icmp eq i8 %19, 0, !dbg !3484
  br i1 %20, label %24, label %21, !dbg !3486

; <label>:21:                                     ; preds = %16
  %22 = zext i16 %1 to i32, !dbg !3487
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.gatt_client_sync_mtu, i32 0, i32 0), i32 %22) #10, !dbg !3487
  br label %24, !dbg !3487

; <label>:24:                                     ; preds = %21, %16
  %25 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %17, i32 0, i32 6, !dbg !3489
  store i16 %1, i16* %25, align 2, !dbg !3490, !tbaa !546
  tail call fastcc void @gatt_client_att_emit_mtu_event(i16 zeroext %0, i16 zeroext %1) #10, !dbg !3491
  br label %27, !dbg !3492

; <label>:26:                                     ; preds = %6
  br label %27, !dbg !3493

; <label>:27:                                     ; preds = %26, %24, %2
  %28 = phi i32 [ 0, %24 ], [ 147, %2 ], [ 147, %26 ]
  ret i32 %28, !dbg !3493
}

; Function Attrs: nounwind optsize
define internal fastcc void @gatt_client_att_emit_mtu_event(i16 zeroext, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3494 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !3498, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i16 %1, metadata !3499, metadata !DIExpression()), !dbg !3503
  %4 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 3), align 4, !dbg !3504, !tbaa !233
  %5 = icmp eq void (i8, i16, i8*, i16)* %4, null, !dbg !3506
  br i1 %5, label %10, label %6, !dbg !3507

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0, !dbg !3508
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #8, !dbg !3508
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !3500, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i32 0, metadata !3501, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 1, metadata !3501, metadata !DIExpression()), !dbg !3510
  store i8 -75, i8* %7, align 1, !dbg !3511, !tbaa !294
  call void @llvm.dbg.value(metadata i32 2, metadata !3501, metadata !DIExpression()), !dbg !3510
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 1, !dbg !3512
  store i8 4, i8* %8, align 1, !dbg !3513, !tbaa !294
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 2, i16 zeroext %0) #9, !dbg !3514
  call void @llvm.dbg.value(metadata i32 4, metadata !3501, metadata !DIExpression()), !dbg !3510
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 4, i16 zeroext %1) #9, !dbg !3515
  %9 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 3), align 4, !dbg !3516, !tbaa !233
  call void %9(i8 zeroext 4, i16 zeroext 0, i8* nonnull %7, i16 zeroext 6) #9, !dbg !3517
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #8, !dbg !3518
  br label %10, !dbg !3518

; <label>:10:                                     ; preds = %6, %2
  ret void, !dbg !3519
}

; Function Attrs: optsize
declare i8* @btstack_memory_gatt_client_get() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_event_packet_get_type(i8* nocapture readonly) unnamed_addr #6 !dbg !3521 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()), !dbg !3527
  %2 = load i8, i8* %0, align 1, !dbg !3528, !tbaa !294
  ret i8 %2, !dbg !3529
}

; Function Attrs: nounwind optsize
define internal fastcc void @gatt_client_report_error_if_pending(%struct.gatt_client*, i8 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3530 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8 %1, metadata !3533, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !1354, metadata !DIExpression()), !dbg !3536
  %3 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 1, !dbg !3539
  %4 = load i32, i32* %3, align 4, !dbg !3539, !tbaa !573
  %5 = icmp eq i32 %4, 0, !dbg !3540
  br i1 %5, label %7, label %6, !dbg !3541

; <label>:6:                                      ; preds = %2
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !863, metadata !DIExpression()), !dbg !3542
  store i32 0, i32* %3, align 4, !dbg !3544, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %0) #9, !dbg !3545
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %0, i8 zeroext %1) #10, !dbg !3546
  br label %7, !dbg !3547

; <label>:7:                                      ; preds = %6, %2
  ret void, !dbg !3548
}

; Function Attrs: optsize
declare void @btstack_memory_gatt_client_free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @gatt_client_timeout_stop(%struct.gatt_client*) unnamed_addr #0 section ".ble_gatt_code" !dbg !3550 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3552, metadata !DIExpression()), !dbg !3553
  %2 = load i8, i8* @ble_debug_enable, align 1, !dbg !3554, !tbaa !294
  %3 = and i8 %2, 1, !dbg !3554
  %4 = icmp eq i8 %3, 0, !dbg !3554
  br i1 %4, label %10, label %5, !dbg !3556

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !3557
  %7 = load i16, i16* %6, align 4, !dbg !3557, !tbaa !323
  %8 = zext i16 %7 to i32, !dbg !3557
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i32 %8) #10, !dbg !3557
  br label %10, !dbg !3557

; <label>:10:                                     ; preds = %5, %1
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 28, !dbg !3559
  %12 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* %11) #9, !dbg !3560
  ret void, !dbg !3561
}

; Function Attrs: optsize
declare i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @l2cap_max_le_mtu() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @att_server_sync_mtu(i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @report_gatt_characteristics(%struct.gatt_client*, i8*, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3562 {
  %4 = alloca [16 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3576, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3564, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i8* %1, metadata !3565, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i16 %2, metadata !3566, metadata !DIExpression()), !dbg !3592
  %5 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !3593
  %6 = load i8, i8* %5, align 1, !dbg !3593, !tbaa !294
  call void @llvm.dbg.value(metadata i8 %6, metadata !3567, metadata !DIExpression()), !dbg !3594
  %7 = zext i8 %6 to i32, !dbg !3595
  call void @llvm.dbg.value(metadata i32 2, metadata !3569, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 2, metadata !3569, metadata !DIExpression()), !dbg !3596
  %8 = zext i16 %2 to i32, !dbg !3597
  %9 = icmp ugt i16 %2, 2, !dbg !3599
  br i1 %9, label %10, label %47, !dbg !3600

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0
  %12 = icmp eq i8 %6, 7
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 24
  %14 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 14
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 16
  %17 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 8
  %18 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 9, i32 0
  br label %19, !dbg !3600

; <label>:19:                                     ; preds = %43, %10
  %20 = phi i32 [ 2, %10 ], [ %44, %43 ]
  %21 = call zeroext i16 @little_endian_read_16(i8* %1, i32 %20) #9, !dbg !3602
  call void @llvm.dbg.value(metadata i16 %21, metadata !3570, metadata !DIExpression()), !dbg !3603
  %22 = add nuw nsw i32 %20, 2, !dbg !3604
  %23 = getelementptr inbounds i8, i8* %1, i32 %22, !dbg !3605
  %24 = load i8, i8* %23, align 1, !dbg !3605, !tbaa !294
  call void @llvm.dbg.value(metadata i8 %24, metadata !3574, metadata !DIExpression()), !dbg !3606
  %25 = add nuw nsw i32 %20, 3, !dbg !3607
  %26 = call zeroext i16 @little_endian_read_16(i8* %1, i32 %25) #9, !dbg !3608
  call void @llvm.dbg.value(metadata i16 %26, metadata !3575, metadata !DIExpression()), !dbg !3609
  %27 = add i16 %21, -1, !dbg !3610
  call fastcc void @characteristic_end_found(%struct.gatt_client* %0, i16 zeroext %27) #10, !dbg !3611
  %28 = add nuw nsw i32 %20, 5, !dbg !3612
  %29 = getelementptr inbounds i8, i8* %1, i32 %28, !dbg !3613
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3581, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i16 %21, metadata !3582, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i8 %24, metadata !3583, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i16 %26, metadata !3584, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %29, metadata !3585, metadata !DIExpression()), !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3619
  call void @llvm.dbg.value(metadata i16 0, metadata !3587, metadata !DIExpression()), !dbg !3620
  br i1 %12, label %30, label %33, !dbg !3621

; <label>:30:                                     ; preds = %19
  %31 = call zeroext i16 @little_endian_read_16(i8* %29, i32 0) #9, !dbg !3622
  call void @llvm.dbg.value(metadata i16 %31, metadata !3587, metadata !DIExpression()), !dbg !3620
  %32 = zext i16 %31 to i32, !dbg !3625
  call void @uuid_add_bluetooth_prefix(i8* nonnull %11, i32 %32) #9, !dbg !3626
  br label %34, !dbg !3627

; <label>:33:                                     ; preds = %19
  call void @reverse_128(i8* %29, i8* nonnull %11) #9, !dbg !3628
  br label %34

; <label>:34:                                     ; preds = %33, %30
  %35 = phi i16 [ %31, %30 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i16 %35, metadata !3587, metadata !DIExpression()), !dbg !3620
  %36 = load i8, i8* %13, align 4, !dbg !3630, !tbaa !2080
  %37 = icmp eq i8 %36, 0, !dbg !3632
  br i1 %37, label %42, label %38, !dbg !3633

; <label>:38:                                     ; preds = %34
  %39 = call i32 @memcmp(i8* nonnull %18, i8* nonnull %11, i32 16) #9, !dbg !3634
  %40 = icmp eq i32 %39, 0, !dbg !3636
  br i1 %40, label %41, label %43, !dbg !3637

; <label>:41:                                     ; preds = %38
  store i8 %24, i8* %14, align 2, !dbg !3639, !tbaa !3640
  store i16 %21, i16* %15, align 4, !dbg !3641, !tbaa !2083
  store i16 %26, i16* %16, align 2, !dbg !3642, !tbaa !873
  br label %43

; <label>:42:                                     ; preds = %34
  store i8 %24, i8* %14, align 2, !dbg !3639, !tbaa !3640
  store i16 %21, i16* %15, align 4, !dbg !3641, !tbaa !2083
  store i16 %26, i16* %16, align 2, !dbg !3642, !tbaa !873
  store i16 %35, i16* %17, align 4, !dbg !3643, !tbaa !1500
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %18, i8* nonnull %11, i32 16, i32 1, i1 false) #8, !dbg !3644
  br label %43, !dbg !3645

; <label>:43:                                     ; preds = %42, %41, %38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3645
  %44 = add nsw i32 %20, %7, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %44, metadata !3569, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %44, metadata !3569, metadata !DIExpression()), !dbg !3596
  %45 = icmp slt i32 %44, %8, !dbg !3599
  br i1 %45, label %19, label %46, !dbg !3600, !llvm.loop !3648

; <label>:46:                                     ; preds = %43
  br label %47, !dbg !3651

; <label>:47:                                     ; preds = %46, %3
  ret void, !dbg !3651
}

; Function Attrs: nounwind optsize
define internal fastcc void @report_gatt_characteristic_value(%struct.gatt_client* nocapture readonly, i16 zeroext, i8*, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3652 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3656, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i16 %1, metadata !3657, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %2, metadata !3658, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i16 %3, metadata !3659, metadata !DIExpression()), !dbg !3664
  %5 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !3665
  %6 = load i16, i16* %5, align 4, !dbg !3665, !tbaa !323
  %7 = tail call fastcc i8* @setup_characteristic_value_packet(i8 zeroext -91, i16 zeroext %6, i16 zeroext %1, i8* %2, i16 zeroext %3) #10, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %7, metadata !3660, metadata !DIExpression()), !dbg !3667
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 2, !dbg !3668
  %9 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %8, align 4, !dbg !3668, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %9, metadata !904, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %7, metadata !909, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i16 %12, metadata !910, metadata !DIExpression()), !dbg !3672
  %10 = icmp eq void (i8, i16, i8*, i16)* %9, null, !dbg !3673
  br i1 %10, label %13, label %11, !dbg !3674

; <label>:11:                                     ; preds = %4
  %12 = add i16 %3, 8, !dbg !3675
  tail call void %9(i8 zeroext 4, i16 zeroext 0, i8* %7, i16 zeroext %12) #9, !dbg !3676
  br label %13, !dbg !3677

; <label>:13:                                     ; preds = %11, %4
  ret void, !dbg !3678
}

; Function Attrs: nounwind optsize
define internal fastcc void @emit_gatt_service_query_result_event(%struct.gatt_client* nocapture readonly, i16 zeroext, i16 zeroext, i8*) unnamed_addr #0 section ".ble_gatt_code" !dbg !3679 {
  %5 = alloca [24 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3683, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i16 %1, metadata !3684, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i16 %2, metadata !3685, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i8* %3, metadata !3686, metadata !DIExpression()), !dbg !3694
  %6 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i32 0, i32 0, !dbg !3695
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !3695
  tail call void @llvm.dbg.declare(metadata [24 x i8]* %5, metadata !3687, metadata !DIExpression()), !dbg !3696
  store i8 -95, i8* %6, align 1, !dbg !3697, !tbaa !294
  %7 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i32 0, i32 1, !dbg !3698
  store i8 22, i8* %7, align 1, !dbg !3699, !tbaa !294
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !3700
  %9 = load i16, i16* %8, align 4, !dbg !3700, !tbaa !323
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 2, i16 zeroext %9) #9, !dbg !3701
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 4, i16 zeroext %1) #9, !dbg !3702
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 6, i16 zeroext %2) #9, !dbg !3703
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i32 0, i32 8, !dbg !3704
  call void @reverse_128(i8* %3, i8* %10) #9, !dbg !3705
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 2, !dbg !3706
  %12 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %11, align 4, !dbg !3706, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %12, metadata !904, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8* %6, metadata !909, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i16 24, metadata !910, metadata !DIExpression()), !dbg !3710
  %13 = icmp eq void (i8, i16, i8*, i16)* %12, null, !dbg !3711
  br i1 %13, label %15, label %14, !dbg !3712

; <label>:14:                                     ; preds = %4
  call void %12(i8 zeroext 4, i16 zeroext 0, i8* nonnull %6, i16 zeroext 24) #9, !dbg !3713
  br label %15, !dbg !3714

; <label>:15:                                     ; preds = %14, %4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !3715
  ret void, !dbg !3715
}

; Function Attrs: nounwind optsize
define internal fastcc i32 @is_value_valid(%struct.gatt_client* nocapture readonly, i8*, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3716 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3720, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8* %1, metadata !3721, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i16 %2, metadata !3722, metadata !DIExpression()), !dbg !3727
  %4 = tail call zeroext i16 @little_endian_read_16(i8* %1, i32 1) #9, !dbg !3728
  call void @llvm.dbg.value(metadata i16 %4, metadata !3723, metadata !DIExpression()), !dbg !3729
  %5 = tail call zeroext i16 @little_endian_read_16(i8* %1, i32 3) #9, !dbg !3730
  call void @llvm.dbg.value(metadata i16 %5, metadata !3724, metadata !DIExpression()), !dbg !3731
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 16, !dbg !3732
  %7 = load i16, i16* %6, align 2, !dbg !3732, !tbaa !873
  %8 = icmp eq i16 %7, %4, !dbg !3734
  br i1 %8, label %9, label %24, !dbg !3735

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 17, !dbg !3736
  %11 = load i16, i16* %10, align 4, !dbg !3736, !tbaa !1038
  %12 = icmp eq i16 %11, %5, !dbg !3738
  br i1 %12, label %13, label %24, !dbg !3739

; <label>:13:                                     ; preds = %9
  %14 = zext i16 %5 to i32, !dbg !3740
  %15 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 19, !dbg !3741
  %16 = load i8*, i8** %15, align 4, !dbg !3741, !tbaa !1881
  %17 = getelementptr inbounds i8, i8* %16, i32 %14, !dbg !3742
  %18 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !3743
  %19 = zext i16 %2 to i32, !dbg !3744
  %20 = add nsw i32 %19, -5, !dbg !3745
  %21 = tail call i32 @memcmp(i8* %17, i8* %18, i32 %20) #10, !dbg !3746
  %22 = icmp eq i32 %21, 0, !dbg !3747
  %23 = zext i1 %22 to i32, !dbg !3747
  br label %24, !dbg !3748

; <label>:24:                                     ; preds = %13, %9, %3
  %25 = phi i32 [ %23, %13 ], [ 0, %3 ], [ 0, %9 ]
  ret i32 %25, !dbg !3749
}

; Function Attrs: nounwind optsize
define internal fastcc void @characteristic_end_found(%struct.gatt_client*, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3750 {
  %3 = alloca [28 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [28 x i8]* %3, metadata !3754, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3752, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i16 %1, metadata !3753, metadata !DIExpression()), !dbg !3771
  %4 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 15, !dbg !3772
  %5 = load i16, i16* %4, align 4, !dbg !3772, !tbaa !2083
  %6 = icmp eq i16 %5, 0, !dbg !3774
  br i1 %6, label %24, label %7, !dbg !3775

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 16, !dbg !3776
  %9 = load i16, i16* %8, align 2, !dbg !3776, !tbaa !873
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 14, !dbg !3777
  %11 = load i8, i8* %10, align 2, !dbg !3777, !tbaa !3640
  %12 = zext i8 %11 to i16, !dbg !3778
  %13 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 9, i32 0, !dbg !3779
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3759, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i16 %5, metadata !3760, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i16 %9, metadata !3761, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i16 %1, metadata !3762, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i16 %12, metadata !3763, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %13, metadata !3764, metadata !DIExpression()), !dbg !3785
  %14 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i32 0, i32 0, !dbg !3786
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %14) #8, !dbg !3786
  store i8 -94, i8* %14, align 1, !dbg !3787, !tbaa !294
  %15 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i32 0, i32 1, !dbg !3788
  store i8 26, i8* %15, align 1, !dbg !3789, !tbaa !294
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !3790
  %17 = load i16, i16* %16, align 4, !dbg !3790, !tbaa !323
  call void @little_endian_store_16(i8* nonnull %14, i16 zeroext 2, i16 zeroext %17) #9, !dbg !3791
  call void @little_endian_store_16(i8* nonnull %14, i16 zeroext 4, i16 zeroext %5) #9, !dbg !3792
  call void @little_endian_store_16(i8* nonnull %14, i16 zeroext 6, i16 zeroext %9) #9, !dbg !3793
  call void @little_endian_store_16(i8* nonnull %14, i16 zeroext 8, i16 zeroext %1) #9, !dbg !3794
  call void @little_endian_store_16(i8* nonnull %14, i16 zeroext 10, i16 zeroext %12) #9, !dbg !3795
  %18 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i32 0, i32 12, !dbg !3796
  call void @reverse_128(i8* %13, i8* %18) #9, !dbg !3797
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 2, !dbg !3798
  %20 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %19, align 4, !dbg !3798, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %20, metadata !904, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i8* %14, metadata !909, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i16 28, metadata !910, metadata !DIExpression()), !dbg !3802
  %21 = icmp eq void (i8, i16, i8*, i16)* %20, null, !dbg !3803
  br i1 %21, label %23, label %22, !dbg !3804

; <label>:22:                                     ; preds = %7
  call void %20(i8 zeroext 4, i16 zeroext 0, i8* nonnull %14, i16 zeroext 28) #9, !dbg !3805
  br label %23, !dbg !3806

; <label>:23:                                     ; preds = %22, %7
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %14) #8, !dbg !3807
  store i16 0, i16* %4, align 4, !dbg !3808, !tbaa !2083
  br label %24, !dbg !3809

; <label>:24:                                     ; preds = %23, %2
  ret void, !dbg !3810
}

; Function Attrs: nounwind optsize
define internal fastcc i8* @setup_characteristic_value_packet(i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3812 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3816, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i16 %1, metadata !3817, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i16 %2, metadata !3818, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %3, metadata !3819, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i16 %4, metadata !3820, metadata !DIExpression()), !dbg !3826
  %6 = getelementptr inbounds i8, i8* %3, i32 -8, !dbg !3827
  call void @llvm.dbg.value(metadata i8* %6, metadata !3821, metadata !DIExpression()), !dbg !3828
  store i8 %0, i8* %6, align 1, !dbg !3829, !tbaa !294
  %7 = trunc i16 %4 to i8, !dbg !3830
  %8 = add i8 %7, 6, !dbg !3831
  %9 = getelementptr inbounds i8, i8* %3, i32 -7, !dbg !3832
  store i8 %8, i8* %9, align 1, !dbg !3833, !tbaa !294
  tail call void @little_endian_store_16(i8* %6, i16 zeroext 2, i16 zeroext %1) #9, !dbg !3834
  tail call void @little_endian_store_16(i8* %6, i16 zeroext 4, i16 zeroext %2) #9, !dbg !3835
  tail call void @little_endian_store_16(i8* %6, i16 zeroext 6, i16 zeroext %4) #9, !dbg !3836
  ret i8* %6, !dbg !3837
}

; Function Attrs: nounwind optsize
define internal fastcc void @emit_event_to_registered_listeners(i8*, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3838 {
  %3 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i16 0, metadata !3842, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i16 0, metadata !3843, metadata !DIExpression()), !dbg !3856
  %4 = bitcast %struct.btstack_linked_list_iterator_t* %3 to i8*, !dbg !3857
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #8, !dbg !3857
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !3846, metadata !DIExpression(DW_OP_deref)), !dbg !3858
  call void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t* nonnull %3, %struct.btstack_linked_item** getelementptr inbounds (%struct.gatt_client_info_t, %struct.gatt_client_info_t* @gatt_client_global_info, i32 0, i32 1)) #9, !dbg !3859
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !3846, metadata !DIExpression(DW_OP_deref)), !dbg !3858
  %5 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #9, !dbg !3860
  %6 = icmp eq i32 %5, 0, !dbg !3862
  br i1 %6, label %19, label %7, !dbg !3862

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !3858

; <label>:8:                                      ; preds = %14, %7
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !3846, metadata !DIExpression(DW_OP_deref)), !dbg !3858
  %9 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #9, !dbg !3863
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %9, i32 1, !dbg !3864
  %11 = bitcast %struct.btstack_linked_item* %10 to void (i8, i16, i8*, i16)**, !dbg !3864
  %12 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %11, align 4, !dbg !3864, !tbaa !1454
  %13 = icmp eq void (i8, i16, i8*, i16)* %12, null, !dbg !3866
  br i1 %13, label %14, label %17, !dbg !3867

; <label>:14:                                     ; preds = %17, %8
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %3, metadata !3846, metadata !DIExpression(DW_OP_deref)), !dbg !3858
  %15 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %3) #9, !dbg !3860
  %16 = icmp eq i32 %15, 0, !dbg !3862
  br i1 %16, label %18, label %8, !dbg !3862, !llvm.loop !3868

; <label>:17:                                     ; preds = %8
  call void %12(i8 zeroext 4, i16 zeroext 0, i8* %0, i16 zeroext %1) #9, !dbg !3871
  br label %14, !dbg !3873

; <label>:18:                                     ; preds = %14
  br label %19, !dbg !3874

; <label>:19:                                     ; preds = %18, %2
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #8, !dbg !3874
  ret void, !dbg !3874
}

; Function Attrs: optsize
declare void @btstack_linked_list_iterator_init(%struct.btstack_linked_list_iterator_t*, %struct.btstack_linked_item**) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: optsize
declare %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @trigger_next_query(%struct.gatt_client*, i16 zeroext, i32) unnamed_addr #0 section ".ble_gatt_code" !dbg !3875 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3879, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i16 %1, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 %2, metadata !3881, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !688, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i16 %1, metadata !693, metadata !DIExpression()), !dbg !3888
  %4 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 11, !dbg !3889
  %5 = load i16, i16* %4, align 4, !dbg !3889, !tbaa !699
  %6 = icmp ugt i16 %5, %1, !dbg !3890
  br i1 %6, label %9, label %7, !dbg !3891

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !863, metadata !DIExpression()), !dbg !3892
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 1, !dbg !3895
  store i32 0, i32* %8, align 4, !dbg !3896, !tbaa !573
  tail call fastcc void @gatt_client_timeout_stop(%struct.gatt_client* nonnull %0) #9, !dbg !3897
  tail call fastcc void @emit_gatt_complete_event(%struct.gatt_client* nonnull %0, i8 zeroext 0) #10, !dbg !3898
  br label %13, !dbg !3899

; <label>:9:                                      ; preds = %3
  %10 = add i16 %1, 1, !dbg !3900
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 10, !dbg !3901
  store i16 %10, i16* %11, align 2, !dbg !3902, !tbaa !746
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 1, !dbg !3903
  store i32 %2, i32* %12, align 4, !dbg !3904, !tbaa !573
  br label %13, !dbg !3905

; <label>:13:                                     ; preds = %9, %7
  ret void, !dbg !3906
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind optsize
define internal fastcc void @emit_gatt_included_service_query_result_event(%struct.gatt_client* nocapture readonly, i16 zeroext, i16 zeroext, i16 zeroext, i8*) unnamed_addr #0 section ".ble_gatt_code" !dbg !3908 {
  %6 = alloca [26 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3912, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i16 %1, metadata !3913, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i16 %2, metadata !3914, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i16 %3, metadata !3915, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %4, metadata !3916, metadata !DIExpression()), !dbg !3925
  %7 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 0, !dbg !3926
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %7) #8, !dbg !3926
  tail call void @llvm.dbg.declare(metadata [26 x i8]* %6, metadata !3917, metadata !DIExpression()), !dbg !3927
  store i8 -93, i8* %7, align 1, !dbg !3928, !tbaa !294
  %8 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 1, !dbg !3929
  store i8 24, i8* %8, align 1, !dbg !3930, !tbaa !294
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !3931
  %10 = load i16, i16* %9, align 4, !dbg !3931, !tbaa !323
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 2, i16 zeroext %10) #9, !dbg !3932
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 4, i16 zeroext %1) #9, !dbg !3933
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 6, i16 zeroext %2) #9, !dbg !3934
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 8, i16 zeroext %3) #9, !dbg !3935
  %11 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 10, !dbg !3936
  call void @reverse_128(i8* %4, i8* %11) #9, !dbg !3937
  %12 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 2, !dbg !3938
  %13 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %12, align 4, !dbg !3938, !tbaa !903
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %13, metadata !904, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i8* %7, metadata !909, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i16 26, metadata !910, metadata !DIExpression()), !dbg !3942
  %14 = icmp eq void (i8, i16, i8*, i16)* %13, null, !dbg !3943
  br i1 %14, label %16, label %15, !dbg !3944

; <label>:15:                                     ; preds = %5
  call void %13(i8 zeroext 4, i16 zeroext 0, i8* nonnull %7, i16 zeroext 26) #9, !dbg !3945
  br label %16, !dbg !3946

; <label>:16:                                     ; preds = %15, %5
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %7) #8, !dbg !3947
  ret void, !dbg !3947
}

; Function Attrs: nounwind optsize
define internal fastcc i8* @setup_long_characteristic_value_packet(i8 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !3948 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3952, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i16 %1, metadata !3953, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i16 %2, metadata !3954, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i16 %3, metadata !3955, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i8* %4, metadata !3956, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i16 %5, metadata !3957, metadata !DIExpression()), !dbg !3964
  %7 = getelementptr inbounds i8, i8* %4, i32 -10, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %7, metadata !3958, metadata !DIExpression()), !dbg !3966
  store i8 %0, i8* %7, align 1, !dbg !3967, !tbaa !294
  %8 = trunc i16 %5 to i8, !dbg !3968
  %9 = add i8 %8, 8, !dbg !3969
  %10 = getelementptr inbounds i8, i8* %4, i32 -9, !dbg !3970
  store i8 %9, i8* %10, align 1, !dbg !3971, !tbaa !294
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 2, i16 zeroext %1) #9, !dbg !3972
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 4, i16 zeroext %2) #9, !dbg !3973
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 6, i16 zeroext %3) #9, !dbg !3974
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 8, i16 zeroext %5) #9, !dbg !3975
  ret i8* %7, !dbg !3976
}

; Function Attrs: nounwind optsize
define internal fastcc zeroext i16 @write_blob_length(%struct.gatt_client* nocapture readonly) unnamed_addr #0 section ".ble_gatt_code" !dbg !3977 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !3979, metadata !DIExpression()), !dbg !3982
  %2 = tail call fastcc zeroext i16 @peripheral_mtu(%struct.gatt_client* %0) #10, !dbg !3983
  %3 = add i16 %2, -5, !dbg !3984
  call void @llvm.dbg.value(metadata i16 %3, metadata !3980, metadata !DIExpression()), !dbg !3985
  %4 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 17, !dbg !3986
  %5 = load i16, i16* %4, align 4, !dbg !3986, !tbaa !1038
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 18, !dbg !3988
  %7 = load i16, i16* %6, align 2, !dbg !3988, !tbaa !1691
  %8 = icmp ugt i16 %7, %5, !dbg !3989
  br i1 %8, label %9, label %13, !dbg !3990

; <label>:9:                                      ; preds = %1
  %10 = sub i16 %7, %5, !dbg !3991
  call void @llvm.dbg.value(metadata i16 %10, metadata !3981, metadata !DIExpression()), !dbg !3992
  %11 = icmp ugt i16 %3, %10, !dbg !3993
  %12 = select i1 %11, i16 %10, i16 %3, !dbg !3995
  br label %13

; <label>:13:                                     ; preds = %9, %1
  %14 = phi i16 [ %12, %9 ], [ 0, %1 ]
  ret i16 %14, !dbg !3997
}

; Function Attrs: nounwind optsize
define internal void @gatt_client_timeout_handler(%struct.btstack_timer_source* nocapture readonly) #0 section ".ble_gatt_code" !dbg !3999 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !4004, metadata !DIExpression()), !dbg !4006
  %2 = getelementptr inbounds %struct.btstack_timer_source, %struct.btstack_timer_source* %0, i32 0, i32 4, !dbg !4007
  %3 = bitcast i8** %2 to %struct.gatt_client**, !dbg !4007
  %4 = load %struct.gatt_client*, %struct.gatt_client** %3, align 4, !dbg !4007, !tbaa !4008
  call void @llvm.dbg.value(metadata %struct.gatt_client* %4, metadata !4005, metadata !DIExpression()), !dbg !4009
  %5 = icmp eq %struct.gatt_client* %4, null, !dbg !4010
  br i1 %5, label %16, label %6, !dbg !4012

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* @ble_debug_enable, align 1, !dbg !4013, !tbaa !294
  %8 = and i8 %7, 1, !dbg !4013
  %9 = icmp eq i8 %8, 0, !dbg !4013
  br i1 %9, label %15, label %10, !dbg !4015

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %4, i32 0, i32 3, !dbg !4016
  %12 = load i16, i16* %11, align 4, !dbg !4016, !tbaa !323
  %13 = zext i16 %12 to i32, !dbg !4016
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0), i32 %13) #10, !dbg !4016
  br label %15, !dbg !4016

; <label>:15:                                     ; preds = %10, %6
  tail call fastcc void @gatt_client_report_error_if_pending(%struct.gatt_client* nonnull %4, i8 zeroext 127) #10, !dbg !4018
  br label %16, !dbg !4019

; <label>:16:                                     ; preds = %15, %1
  ret void, !dbg !4020
}

; Function Attrs: optsize
declare void @btstack_set_timer(%struct.btstack_timer_source*, i16 signext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @send_gatt_characteristic_request(%struct.gatt_client*) unnamed_addr #0 section ".ble_gatt_code" !dbg !4022 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !4024, metadata !DIExpression()), !dbg !4025
  %2 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 24, !dbg !4026
  %3 = load i8, i8* %2, align 4, !dbg !4026, !tbaa !2080
  %4 = icmp eq i8 %3, 0, !dbg !4028
  br i1 %4, label %5, label %15, !dbg !4029

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !4030
  %7 = load i16, i16* %6, align 4, !dbg !4030, !tbaa !323
  %8 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 10, !dbg !4032
  %9 = load i16, i16* %8, align 2, !dbg !4032, !tbaa !746
  %10 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 11, !dbg !4033
  %11 = load i16, i16* %10, align 4, !dbg !4033, !tbaa !699
  call void @llvm.dbg.value(metadata i16 8, metadata !4034, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i16 10243, metadata !4039, metadata !DIExpression()), !dbg !4046
  %12 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4047
  %13 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %13, metadata !4043, metadata !DIExpression()), !dbg !4049
  store i8 8, i8* %13, align 1, !dbg !4050, !tbaa !294
  tail call void @bt_store_16(i8* %13, i16 zeroext 1, i16 zeroext %9) #9, !dbg !4051
  tail call void @bt_store_16(i8* %13, i16 zeroext 3, i16 zeroext %11) #9, !dbg !4052
  tail call void @bt_store_16(i8* %13, i16 zeroext 5, i16 zeroext 10243) #9, !dbg !4053
  %14 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %7, i16 zeroext 4, i16 zeroext 7) #9, !dbg !4054
  br label %28, !dbg !4055

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 8, !dbg !4056
  %17 = load i16, i16* %16, align 4, !dbg !4056, !tbaa !1500
  %18 = icmp eq i16 %17, 0, !dbg !4059
  %19 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !4060
  %20 = load i16, i16* %19, align 4, !dbg !4060
  %21 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 10, !dbg !4062
  %22 = load i16, i16* %21, align 2, !dbg !4062
  %23 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 11, !dbg !4063
  %24 = load i16, i16* %23, align 4, !dbg !4063
  br i1 %18, label %25, label %27, !dbg !4064

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 9, i32 0, !dbg !4065
  tail call fastcc void @att_read_by_type_or_group_request_for_uuid128(i8* %26, i16 zeroext %20, i16 zeroext %22, i16 zeroext %24) #10, !dbg !4066
  br label %28, !dbg !4067

; <label>:27:                                     ; preds = %15
  tail call fastcc void @att_read_by_type_or_group_request_for_uuid16(i16 zeroext 8, i16 zeroext %17, i16 zeroext %20, i16 zeroext %22, i16 zeroext %24) #10, !dbg !4068
  br label %28

; <label>:28:                                     ; preds = %27, %25, %5
  ret void, !dbg !4070
}

; Function Attrs: nounwind optsize
define internal fastcc void @send_gatt_read_blob_request(%struct.gatt_client* nocapture readonly) unnamed_addr #0 section ".ble_gatt_code" !dbg !4071 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !4073, metadata !DIExpression()), !dbg !4074
  %2 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !4075
  %3 = load i16, i16* %2, align 4, !dbg !4075, !tbaa !323
  %4 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 16, !dbg !4076
  %5 = load i16, i16* %4, align 2, !dbg !4076, !tbaa !873
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 17, !dbg !4077
  %7 = load i16, i16* %6, align 4, !dbg !4077, !tbaa !1038
  call void @llvm.dbg.value(metadata i16 12, metadata !4078, metadata !DIExpression()), !dbg !4085
  %8 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4087
  %9 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %9, metadata !4084, metadata !DIExpression()), !dbg !4089
  store i8 12, i8* %9, align 1, !dbg !4090, !tbaa !294
  tail call void @little_endian_store_16(i8* %9, i16 zeroext 1, i16 zeroext %5) #9, !dbg !4091
  tail call void @little_endian_store_16(i8* %9, i16 zeroext 3, i16 zeroext %7) #9, !dbg !4092
  %10 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %3, i16 zeroext 4, i16 zeroext 5) #9, !dbg !4093
  ret void, !dbg !4094
}

; Function Attrs: nounwind optsize
define internal fastcc void @send_gatt_prepare_write_request(%struct.gatt_client* nocapture readonly) unnamed_addr #0 section ".ble_gatt_code" !dbg !4095 {
  call void @llvm.dbg.value(metadata %struct.gatt_client* %0, metadata !4097, metadata !DIExpression()), !dbg !4098
  %2 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 3, !dbg !4099
  %3 = load i16, i16* %2, align 4, !dbg !4099, !tbaa !323
  %4 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 16, !dbg !4100
  %5 = load i16, i16* %4, align 2, !dbg !4100, !tbaa !873
  %6 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 17, !dbg !4101
  %7 = load i16, i16* %6, align 4, !dbg !4101, !tbaa !1038
  %8 = tail call fastcc zeroext i16 @write_blob_length(%struct.gatt_client* %0) #10, !dbg !4102
  %9 = getelementptr inbounds %struct.gatt_client, %struct.gatt_client* %0, i32 0, i32 19, !dbg !4103
  %10 = load i8*, i8** %9, align 4, !dbg !4103, !tbaa !1881
  call void @llvm.dbg.value(metadata i16 22, metadata !4104, metadata !DIExpression()), !dbg !4115
  %11 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4118
  %12 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %12, metadata !4114, metadata !DIExpression()), !dbg !4120
  store i8 22, i8* %12, align 1, !dbg !4121, !tbaa !294
  tail call void @little_endian_store_16(i8* %12, i16 zeroext 1, i16 zeroext %5) #9, !dbg !4122
  tail call void @little_endian_store_16(i8* %12, i16 zeroext 3, i16 zeroext %7) #9, !dbg !4123
  %13 = getelementptr inbounds i8, i8* %12, i32 5, !dbg !4124
  %14 = zext i16 %7 to i32, !dbg !4125
  %15 = getelementptr inbounds i8, i8* %10, i32 %14, !dbg !4125
  %16 = zext i16 %8 to i32, !dbg !4126
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %15, i32 %16, i32 1, i1 false) #8, !dbg !4127
  %17 = add i16 %8, 5, !dbg !4128
  %18 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %3, i16 zeroext 4, i16 zeroext %17) #9, !dbg !4129
  ret void, !dbg !4130
}

; Function Attrs: optsize
declare i32 @l2cap_reserve_packet_buffer() local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @l2cap_get_outgoing_buffer() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @l2cap_send_prepared_connectionless(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @att_read_by_type_or_group_request_for_uuid16(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !4131 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4133, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i16 %1, metadata !4134, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i16 %2, metadata !4135, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i16 %3, metadata !4136, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i16 %4, metadata !4137, metadata !DIExpression()), !dbg !4143
  %6 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4144
  %7 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4145
  call void @llvm.dbg.value(metadata i8* %7, metadata !4138, metadata !DIExpression()), !dbg !4146
  %8 = trunc i16 %0 to i8, !dbg !4147
  store i8 %8, i8* %7, align 1, !dbg !4148, !tbaa !294
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 1, i16 zeroext %3) #9, !dbg !4149
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 3, i16 zeroext %4) #9, !dbg !4150
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 5, i16 zeroext %1) #9, !dbg !4151
  %9 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %2, i16 zeroext 4, i16 zeroext 7) #9, !dbg !4152
  ret void, !dbg !4153
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_find_by_type_value_request(i16 zeroext, i16 zeroext, i16 zeroext, i8* nocapture readonly, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !4154 {
  call void @llvm.dbg.value(metadata i16 6, metadata !4158, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i16 10240, metadata !4159, metadata !DIExpression()), !dbg !4167
  %6 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4168
  %7 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4169
  call void @llvm.dbg.value(metadata i8* %7, metadata !4165, metadata !DIExpression()), !dbg !4170
  store i8 6, i8* %7, align 1, !dbg !4171, !tbaa !294
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 1, i16 zeroext %1) #9, !dbg !4172
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 3, i16 zeroext %2) #9, !dbg !4173
  tail call void @little_endian_store_16(i8* %7, i16 zeroext 5, i16 zeroext 10240) #9, !dbg !4174
  %8 = getelementptr inbounds i8, i8* %7, i32 7, !dbg !4175
  %9 = zext i16 %4 to i32, !dbg !4176
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %3, i32 %9, i32 1, i1 false), !dbg !4177
  %10 = add i16 %4, 7, !dbg !4178
  %11 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %0, i16 zeroext 4, i16 zeroext %10) #9, !dbg !4179
  ret void, !dbg !4180
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_read_by_type_or_group_request_for_uuid128(i8*, i16 zeroext, i16 zeroext, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !4181 {
  call void @llvm.dbg.value(metadata i16 8, metadata !4185, metadata !DIExpression()), !dbg !4191
  %5 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4192
  %6 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4193
  call void @llvm.dbg.value(metadata i8* %6, metadata !4190, metadata !DIExpression()), !dbg !4194
  store i8 8, i8* %6, align 1, !dbg !4195, !tbaa !294
  tail call void @little_endian_store_16(i8* %6, i16 zeroext 1, i16 zeroext %2) #9, !dbg !4196
  tail call void @little_endian_store_16(i8* %6, i16 zeroext 3, i16 zeroext %3) #9, !dbg !4197
  %7 = getelementptr inbounds i8, i8* %6, i32 5, !dbg !4198
  tail call void @reverse_128(i8* %0, i8* %7) #9, !dbg !4199
  %8 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %1, i16 zeroext 4, i16 zeroext 21) #9, !dbg !4200
  ret void, !dbg !4201
}

; Function Attrs: optsize
declare void @bt_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc void @att_read_request(i16 zeroext, i16 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !4202 {
  call void @llvm.dbg.value(metadata i16 10, metadata !4206, metadata !DIExpression()), !dbg !4210
  %3 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4211
  %4 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %4, metadata !4209, metadata !DIExpression()), !dbg !4213
  store i8 10, i8* %4, align 1, !dbg !4214, !tbaa !294
  tail call void @little_endian_store_16(i8* %4, i16 zeroext 1, i16 zeroext %1) #9, !dbg !4215
  %5 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %0, i16 zeroext 4, i16 zeroext 3) #9, !dbg !4216
  ret void, !dbg !4217
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_execute_write_request(i16 zeroext, i8 zeroext) unnamed_addr #0 section ".ble_gatt_code" !dbg !4218 {
  call void @llvm.dbg.value(metadata i16 24, metadata !4222, metadata !DIExpression()), !dbg !4226
  %3 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !4227
  %4 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !4228
  call void @llvm.dbg.value(metadata i8* %4, metadata !4225, metadata !DIExpression()), !dbg !4229
  store i8 24, i8* %4, align 1, !dbg !4230, !tbaa !294
  %5 = getelementptr inbounds i8, i8* %4, i32 1, !dbg !4231
  store i8 %1, i8* %5, align 1, !dbg !4232, !tbaa !294
  %6 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %0, i16 zeroext 4, i16 zeroext 2) #9, !dbg !4233
  ret void, !dbg !4234
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #8

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
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!215, !216}
!llvm.ident = !{!217}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !214, line: 190, type: !159, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !84, globals: !192)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/gatt_client.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !63, !69, !73}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 49, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Protocol/include/ble/gatt_client.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!8 = !DIEnumerator(name: "P_READY", value: 0)
!9 = !DIEnumerator(name: "P_W2_SEND_SERVICE_QUERY", value: 1)
!10 = !DIEnumerator(name: "P_W4_SERVICE_QUERY_RESULT", value: 2)
!11 = !DIEnumerator(name: "P_W2_SEND_SERVICE_WITH_UUID_QUERY", value: 3)
!12 = !DIEnumerator(name: "P_W4_SERVICE_WITH_UUID_RESULT", value: 4)
!13 = !DIEnumerator(name: "P_W2_SEND_ALL_CHARACTERISTICS_OF_SERVICE_QUERY", value: 5)
!14 = !DIEnumerator(name: "P_W4_ALL_CHARACTERISTICS_OF_SERVICE_QUERY_RESULT", value: 6)
!15 = !DIEnumerator(name: "P_W2_SEND_CHARACTERISTIC_WITH_UUID_QUERY", value: 7)
!16 = !DIEnumerator(name: "P_W4_CHARACTERISTIC_WITH_UUID_QUERY_RESULT", value: 8)
!17 = !DIEnumerator(name: "P_W2_SEND_ALL_CHARACTERISTIC_DESCRIPTORS_QUERY", value: 9)
!18 = !DIEnumerator(name: "P_W4_ALL_CHARACTERISTIC_DESCRIPTORS_QUERY_RESULT", value: 10)
!19 = !DIEnumerator(name: "P_W2_SEND_INCLUDED_SERVICE_QUERY", value: 11)
!20 = !DIEnumerator(name: "P_W4_INCLUDED_SERVICE_QUERY_RESULT", value: 12)
!21 = !DIEnumerator(name: "P_W2_SEND_INCLUDED_SERVICE_WITH_UUID_QUERY", value: 13)
!22 = !DIEnumerator(name: "P_W4_INCLUDED_SERVICE_UUID_WITH_QUERY_RESULT", value: 14)
!23 = !DIEnumerator(name: "P_W2_SEND_READ_CHARACTERISTIC_VALUE_QUERY", value: 15)
!24 = !DIEnumerator(name: "P_W4_READ_CHARACTERISTIC_VALUE_RESULT", value: 16)
!25 = !DIEnumerator(name: "P_W2_SEND_READ_BLOB_QUERY", value: 17)
!26 = !DIEnumerator(name: "P_W4_READ_BLOB_RESULT", value: 18)
!27 = !DIEnumerator(name: "P_W2_SEND_READ_BY_TYPE_REQUEST", value: 19)
!28 = !DIEnumerator(name: "P_W4_READ_BY_TYPE_RESPONSE", value: 20)
!29 = !DIEnumerator(name: "P_W2_SEND_READ_MULTIPLE_REQUEST", value: 21)
!30 = !DIEnumerator(name: "P_W4_READ_MULTIPLE_RESPONSE", value: 22)
!31 = !DIEnumerator(name: "P_W2_SEND_WRITE_CHARACTERISTIC_VALUE", value: 23)
!32 = !DIEnumerator(name: "P_W4_WRITE_CHARACTERISTIC_VALUE_RESULT", value: 24)
!33 = !DIEnumerator(name: "P_W2_PREPARE_WRITE", value: 25)
!34 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_RESULT", value: 26)
!35 = !DIEnumerator(name: "P_W2_PREPARE_RELIABLE_WRITE", value: 27)
!36 = !DIEnumerator(name: "P_W4_PREPARE_RELIABLE_WRITE_RESULT", value: 28)
!37 = !DIEnumerator(name: "P_W2_EXECUTE_PREPARED_WRITE", value: 29)
!38 = !DIEnumerator(name: "P_W4_EXECUTE_PREPARED_WRITE_RESULT", value: 30)
!39 = !DIEnumerator(name: "P_W2_CANCEL_PREPARED_WRITE", value: 31)
!40 = !DIEnumerator(name: "P_W4_CANCEL_PREPARED_WRITE_RESULT", value: 32)
!41 = !DIEnumerator(name: "P_W2_CANCEL_PREPARED_WRITE_DATA_MISMATCH", value: 33)
!42 = !DIEnumerator(name: "P_W4_CANCEL_PREPARED_WRITE_DATA_MISMATCH_RESULT", value: 34)
!43 = !DIEnumerator(name: "P_W2_SEND_READ_CLIENT_CHARACTERISTIC_CONFIGURATION_QUERY", value: 35)
!44 = !DIEnumerator(name: "P_W4_READ_CLIENT_CHARACTERISTIC_CONFIGURATION_QUERY_RESULT", value: 36)
!45 = !DIEnumerator(name: "P_W2_WRITE_CLIENT_CHARACTERISTIC_CONFIGURATION", value: 37)
!46 = !DIEnumerator(name: "P_W4_CLIENT_CHARACTERISTIC_CONFIGURATION_RESULT", value: 38)
!47 = !DIEnumerator(name: "P_W2_SEND_READ_CHARACTERISTIC_DESCRIPTOR_QUERY", value: 39)
!48 = !DIEnumerator(name: "P_W4_READ_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 40)
!49 = !DIEnumerator(name: "P_W2_SEND_READ_BLOB_CHARACTERISTIC_DESCRIPTOR_QUERY", value: 41)
!50 = !DIEnumerator(name: "P_W4_READ_BLOB_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 42)
!51 = !DIEnumerator(name: "P_W2_SEND_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 43)
!52 = !DIEnumerator(name: "P_W4_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 44)
!53 = !DIEnumerator(name: "P_W2_PREPARE_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 45)
!54 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 46)
!55 = !DIEnumerator(name: "P_W2_EXECUTE_PREPARED_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 47)
!56 = !DIEnumerator(name: "P_W4_EXECUTE_PREPARED_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 48)
!57 = !DIEnumerator(name: "P_W2_PREPARE_WRITE_SINGLE", value: 49)
!58 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_SINGLE_RESULT", value: 50)
!59 = !DIEnumerator(name: "P_W4_CMAC_READY", value: 51)
!60 = !DIEnumerator(name: "P_W4_CMAC_RESULT", value: 52)
!61 = !DIEnumerator(name: "P_W2_SEND_SIGNED_WRITE", value: 53)
!62 = !DIEnumerator(name: "P_W4_SEND_SINGED_WRITE_DONE", value: 54)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 127, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "SEND_MTU_EXCHANGE", value: 0)
!66 = !DIEnumerator(name: "SENT_MTU_EXCHANGE", value: 1)
!67 = !DIEnumerator(name: "MTU_EXCHANGED", value: 2)
!68 = !DIEnumerator(name: "SEND_MTU_EXCHANGED_RSP", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 134, size: 32, elements: !70)
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "SEND_RSP_NULL", value: 0)
!72 = !DIEnumerator(name: "SEND_RSP_ERROR", value: 1)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 1342, size: 32, elements: !75)
!74 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83}
!76 = !DIEnumerator(name: "BLE_PERIPHERAL_OK", value: 160)
!77 = !DIEnumerator(name: "BLE_PERIPHERAL_IN_WRONG_STATE", value: 161)
!78 = !DIEnumerator(name: "BLE_PERIPHERAL_DIFFERENT_CONTEXT_FOR_ADDRESS_ALREADY_EXISTS", value: 162)
!79 = !DIEnumerator(name: "BLE_PERIPHERAL_NOT_CONNECTED", value: 163)
!80 = !DIEnumerator(name: "BLE_VALUE_TOO_LONG", value: 164)
!81 = !DIEnumerator(name: "BLE_PERIPHERAL_BUSY", value: 165)
!82 = !DIEnumerator(name: "BLE_CHARACTERISTIC_NOTIFICATION_NOT_SUPPORTED", value: 166)
!83 = !DIEnumerator(name: "BLE_CHARACTERISTIC_INDICATION_NOT_SUPPORTED", value: 167)
!84 = !{!85, !92, !96, !97, !99, !115}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !87, line: 55, baseType: !88)
!87 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !87, line: 53, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !87, line: 54, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !94, line: 44, baseType: !95)
!94 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_command_status_t", file: !74, line: 1351, baseType: !73)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !87, line: 100, baseType: !86)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_notification_t", file: !6, line: 198, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_client_notification", file: !6, line: 193, size: 96, elements: !102)
!102 = !{!103, !104, !111, !114}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !101, file: !6, line: 194, baseType: !98, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !101, file: !6, line: 195, baseType: !105, size: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !74, line: 58, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !93, !109, !92, !109}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 46, baseType: !110)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !101, file: !6, line: 196, baseType: !112, size: 16, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !113, line: 9, baseType: !109)
!113 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_handle", scope: !101, file: !6, line: 197, baseType: !109, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_t", file: !6, line: 191, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_client", file: !6, line: 140, size: 1024, elements: !118)
!118 = !{!119, !120, !122, !123, !124, !125, !130, !131, !133, !134, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !151, !152, !156, !157, !158, !160, !164, !185, !187, !191}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !117, file: !6, line: 141, baseType: !98, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_client_state", scope: !117, file: !6, line: 143, baseType: !121, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_state_t", file: !6, line: 124, baseType: !5)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !117, file: !6, line: 146, baseType: !105, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !117, file: !6, line: 148, baseType: !112, size: 16, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !117, file: !6, line: 150, baseType: !93, size: 8, offset: 112)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !117, file: !6, line: 151, baseType: !126, size: 48, offset: 120)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !113, line: 7, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 48, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 6)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !117, file: !6, line: 152, baseType: !109, size: 16, offset: 176)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_state", scope: !117, file: !6, line: 153, baseType: !132, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_mtu_t", file: !6, line: 132, baseType: !63)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !117, file: !6, line: 155, baseType: !109, size: 16, offset: 224)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !117, file: !6, line: 156, baseType: !135, size: 128, offset: 240)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "start_group_handle", scope: !117, file: !6, line: 158, baseType: !109, size: 16, offset: 368)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "end_group_handle", scope: !117, file: !6, line: 159, baseType: !109, size: 16, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "query_start_handle", scope: !117, file: !6, line: 161, baseType: !109, size: 16, offset: 400)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "query_end_handle", scope: !117, file: !6, line: 162, baseType: !109, size: 16, offset: 416)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_properties", scope: !117, file: !6, line: 164, baseType: !93, size: 8, offset: 432)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_start_handle", scope: !117, file: !6, line: 165, baseType: !109, size: 16, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_handle", scope: !117, file: !6, line: 167, baseType: !109, size: 16, offset: 464)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_offset", scope: !117, file: !6, line: 168, baseType: !109, size: 16, offset: 480)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_length", scope: !117, file: !6, line: 169, baseType: !109, size: 16, offset: 496)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_value", scope: !117, file: !6, line: 170, baseType: !92, size: 32, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "read_multiple_handle_count", scope: !117, file: !6, line: 173, baseType: !109, size: 16, offset: 544)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "read_multiple_handles", scope: !117, file: !6, line: 174, baseType: !150, size: 32, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "client_characteristic_configuration_handle", scope: !117, file: !6, line: 176, baseType: !109, size: 16, offset: 608)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "client_characteristic_configuration_value", scope: !117, file: !6, line: 177, baseType: !153, size: 16, offset: 624)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 16, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 2)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "filter_with_uuid", scope: !117, file: !6, line: 179, baseType: !93, size: 8, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "send_confirmation", scope: !117, file: !6, line: 180, baseType: !93, size: 8, offset: 648)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "le_device_index", scope: !117, file: !6, line: 182, baseType: !159, size: 32, offset: 672)
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cmac", scope: !117, file: !6, line: 183, baseType: !161, size: 64, offset: 704)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "gc_timeout", scope: !117, file: !6, line: 185, baseType: !165, size: 160, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !166, line: 19, baseType: !167)
!166 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !166, line: 7, size: 160, elements: !168)
!168 = !{!169, !170, !173, !174, !175, !176, !177, !178, !183}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !167, file: !166, line: 8, baseType: !86, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !167, file: !166, line: 10, baseType: !171, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 48, baseType: !172)
!172 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !167, file: !166, line: 11, baseType: !171, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !167, file: !166, line: 12, baseType: !171, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !167, file: !166, line: 13, baseType: !171, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !167, file: !166, line: 14, baseType: !171, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !167, file: !166, line: 15, baseType: !171, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !167, file: !166, line: 17, baseType: !179, size: 32, offset: 96)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !167, file: !166, line: 18, baseType: !184, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_state", scope: !117, file: !6, line: 188, baseType: !186, size: 32, offset: 928)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_rsp_t", file: !6, line: 137, baseType: !69)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "send_packet_buffer", scope: !117, file: !6, line: 189, baseType: !188, size: 56, offset: 960)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 56, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 7)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "send_packet_len", scope: !117, file: !6, line: 190, baseType: !93, size: 8, offset: 1016)
!192 = !{!0, !193, !209, !212}
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "gatt_client_global_info", scope: !2, file: !3, line: 81, type: !195, isLocal: true, isDefinition: true)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_info_t", file: !3, line: 79, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 73, size: 192, elements: !197)
!197 = !{!198, !200, !201, !207, !208}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !196, file: !3, line: 74, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_t", file: !87, line: 58, baseType: !85)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "value_listeners", scope: !196, file: !3, line: 75, baseType: !199, size: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "hci_event_callback_registration", scope: !196, file: !3, line: 76, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_callback_registration_t", file: !74, line: 64, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 61, size: 64, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !203, file: !74, line: 62, baseType: !98, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !203, file: !74, line: 63, baseType: !105, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "packer_handler", scope: !196, file: !3, line: 77, baseType: !105, size: 32, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pts_suppress_mtu_exchange", scope: !196, file: !3, line: 78, baseType: !93, size: 8, offset: 160)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!210 = distinct !DIGlobalVariable(name: "characteristic_value_event_header_size", scope: !2, file: !3, line: 826, type: !211, isLocal: true, isDefinition: true)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression(DW_OP_constu, 10, DW_OP_stack_value))
!213 = distinct !DIGlobalVariable(name: "long_characteristic_value_event_header_size", scope: !2, file: !3, line: 841, type: !211, isLocal: true, isDefinition: true)
!214 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!215 = !{i32 2, !"Dwarf Version", i32 4}
!216 = !{i32 2, !"Debug Info Version", i32 3}
!217 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!218 = distinct !DISubprogram(name: "gatt_client_register_packet_handler", scope: !3, file: !3, line: 94, type: !219, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !105}
!221 = !{!222}
!222 = !DILocalVariable(name: "handler", arg: 1, scope: !218, file: !3, line: 94, type: !105)
!223 = !DILocation(line: 94, column: 67, scope: !218)
!224 = !DILocation(line: 96, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !3, line: 96, column: 9)
!226 = !{!227, !227, i64 0}
!227 = !{!"int", !228, i64 0}
!228 = !{!"omnipotent char", !229, i64 0}
!229 = !{!"Simple C/C++ TBAA"}
!230 = !DILocation(line: 96, column: 9, scope: !218)
!231 = !DILocation(line: 97, column: 32, scope: !232)
!232 = distinct !DILexicalBlock(scope: !225, file: !3, line: 96, column: 36)
!233 = !{!234, !235, i64 16}
!234 = !{!"", !235, i64 0, !235, i64 4, !236, i64 8, !235, i64 16, !228, i64 20}
!235 = !{!"any pointer", !228, i64 0}
!236 = !{!"", !237, i64 0, !235, i64 4}
!237 = !{!"btstack_linked_item", !235, i64 0}
!238 = !DILocation(line: 98, column: 5, scope: !232)
!239 = !DILocation(line: 99, column: 1, scope: !218)
!240 = distinct !DISubprogram(name: "gatt_client_request_can_send_now_event", scope: !3, file: !3, line: 138, type: !241, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !112}
!243 = !{!244}
!244 = !DILocalVariable(name: "con_handle", arg: 1, scope: !240, file: !3, line: 138, type: !112)
!245 = !DILocation(line: 138, column: 62, scope: !240)
!246 = !DILocation(line: 140, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !3, line: 140, column: 9)
!248 = !DILocation(line: 140, column: 9, scope: !240)
!249 = !DILocation(line: 141, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !3, line: 140, column: 36)
!251 = !DILocation(line: 142, column: 5, scope: !250)
!252 = !DILocation(line: 143, column: 1, scope: !240)
!253 = distinct !DISubprogram(name: "gatt_client_init", scope: !3, file: !3, line: 154, type: !254, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{null}
!256 = !{}
!257 = !DILocation(line: 156, column: 10, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 156, column: 9)
!259 = !DILocation(line: 156, column: 9, scope: !253)
!260 = !DILocation(line: 161, column: 25, scope: !253)
!261 = !{!234, !235, i64 0}
!262 = !DILocation(line: 162, column: 39, scope: !253)
!263 = !{!234, !228, i64 20}
!264 = !DILocation(line: 165, column: 54, scope: !253)
!265 = !{!234, !235, i64 12}
!266 = !DILocation(line: 166, column: 5, scope: !253)
!267 = !DILocation(line: 169, column: 5, scope: !253)
!268 = !DILocation(line: 170, column: 1, scope: !253)
!269 = !DILocation(line: 170, column: 1, scope: !270)
!270 = !DILexicalBlockFile(scope: !253, file: !3, discriminator: 1)
!271 = distinct !DISubprogram(name: "gatt_client_hci_event_packet_handler", scope: !3, file: !3, line: 1272, type: !107, isLocal: true, isDefinition: true, scopeLine: 1273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !272)
!272 = !{!273, !274, !275, !276, !277, !280}
!273 = !DILocalVariable(name: "packet_type", arg: 1, scope: !271, file: !3, line: 1272, type: !93)
!274 = !DILocalVariable(name: "channel", arg: 2, scope: !271, file: !3, line: 1272, type: !109)
!275 = !DILocalVariable(name: "packet", arg: 3, scope: !271, file: !3, line: 1272, type: !92)
!276 = !DILocalVariable(name: "size", arg: 4, scope: !271, file: !3, line: 1272, type: !109)
!277 = !DILocalVariable(name: "con_handle", scope: !278, file: !3, line: 1289, type: !112)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 1287, column: 44)
!279 = distinct !DILexicalBlock(scope: !271, file: !3, line: 1286, column: 48)
!280 = !DILocalVariable(name: "peripheral", scope: !278, file: !3, line: 1290, type: !115)
!281 = !DILocation(line: 1272, column: 58, scope: !271)
!282 = !DILocation(line: 1272, column: 80, scope: !271)
!283 = !DILocation(line: 1272, column: 98, scope: !271)
!284 = !DILocation(line: 1272, column: 115, scope: !271)
!285 = !DILocation(line: 1277, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !271, file: !3, line: 1277, column: 9)
!287 = !DILocation(line: 1282, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !271, file: !3, line: 1282, column: 9)
!289 = !DILocation(line: 1277, column: 9, scope: !271)
!290 = !DILocation(line: 1286, column: 13, scope: !271)
!291 = !DILocation(line: 1286, column: 5, scope: !271)
!292 = !DILocation(line: 1288, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !278, file: !3, line: 1288, column: 9)
!294 = !{!228, !228, i64 0}
!295 = !DILocation(line: 1288, column: 9, scope: !278)
!296 = !DILocation(line: 1288, column: 9, scope: !297)
!297 = !DILexicalBlockFile(scope: !293, file: !3, discriminator: 1)
!298 = !DILocation(line: 1289, column: 39, scope: !278)
!299 = !DILocation(line: 1289, column: 26, scope: !278)
!300 = !DILocalVariable(name: "handle", arg: 1, scope: !301, file: !3, line: 201, type: !109)
!301 = distinct !DISubprogram(name: "get_gatt_client_context_for_handle", scope: !3, file: !3, line: 201, type: !302, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!115, !109}
!304 = !{!300, !305, !306}
!305 = !DILocalVariable(name: "it", scope: !301, file: !3, line: 203, type: !85)
!306 = !DILocalVariable(name: "peripheral", scope: !307, file: !3, line: 205, type: !115)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 204, column: 83)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 204, column: 5)
!309 = distinct !DILexicalBlock(scope: !301, file: !3, line: 204, column: 5)
!310 = !DILocation(line: 201, column: 67, scope: !301, inlinedAt: !311)
!311 = distinct !DILocation(line: 1290, column: 37, scope: !278)
!312 = !{!235, !235, i64 0}
!313 = !DILocation(line: 203, column: 28, scope: !301, inlinedAt: !311)
!314 = !DILocation(line: 204, column: 5, scope: !315, inlinedAt: !311)
!315 = !DILexicalBlockFile(scope: !309, file: !3, discriminator: 1)
!316 = !DILocation(line: 206, column: 25, scope: !317, inlinedAt: !311)
!317 = distinct !DILexicalBlock(scope: !307, file: !3, line: 206, column: 13)
!318 = !DILocation(line: 204, column: 77, scope: !319, inlinedAt: !311)
!319 = !DILexicalBlockFile(scope: !308, file: !3, discriminator: 2)
!320 = distinct !{!320, !321, !322}
!321 = !DILocation(line: 204, column: 5, scope: !309)
!322 = !DILocation(line: 209, column: 5, scope: !309)
!323 = !{!324, !325, i64 12}
!324 = !{!"gatt_client", !237, i64 0, !228, i64 4, !235, i64 8, !325, i64 12, !228, i64 14, !228, i64 15, !325, i64 22, !228, i64 24, !325, i64 28, !228, i64 30, !325, i64 46, !325, i64 48, !325, i64 50, !325, i64 52, !228, i64 54, !325, i64 56, !325, i64 58, !325, i64 60, !325, i64 62, !235, i64 64, !325, i64 68, !235, i64 72, !325, i64 76, !228, i64 78, !228, i64 80, !228, i64 81, !227, i64 84, !228, i64 88, !326, i64 96, !228, i64 116, !228, i64 120, !228, i64 127}
!325 = !{!"short", !228, i64 0}
!326 = !{!"btstack_timer_source", !237, i64 0, !227, i64 4, !227, i64 8, !227, i64 10, !227, i64 10, !227, i64 10, !227, i64 10, !235, i64 12, !235, i64 16}
!327 = !DILocation(line: 206, column: 36, scope: !317, inlinedAt: !311)
!328 = !DILocation(line: 205, column: 37, scope: !307, inlinedAt: !311)
!329 = !DILocation(line: 1294, column: 9, scope: !278)
!330 = !DILocation(line: 1296, column: 9, scope: !278)
!331 = !DILocation(line: 1297, column: 41, scope: !278)
!332 = !DILocation(line: 1297, column: 9, scope: !278)
!333 = !DILocation(line: 1298, column: 9, scope: !278)
!334 = !DILocation(line: 1304, column: 5, scope: !271)
!335 = !DILocation(line: 1305, column: 1, scope: !271)
!336 = !DILocation(line: 1305, column: 1, scope: !337)
!337 = !DILexicalBlockFile(scope: !271, file: !3, discriminator: 1)
!338 = distinct !DISubprogram(name: "gatt_client_att_packet_handler", scope: !3, file: !3, line: 1322, type: !107, isLocal: true, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !348, !349, !352, !353, !354, !358, !360, !361, !362, !366, !369, !371, !372, !373, !374, !376, !377}
!340 = !DILocalVariable(name: "packet_type", arg: 1, scope: !338, file: !3, line: 1322, type: !93)
!341 = !DILocalVariable(name: "handle", arg: 2, scope: !338, file: !3, line: 1322, type: !109)
!342 = !DILocalVariable(name: "packet", arg: 3, scope: !338, file: !3, line: 1322, type: !92)
!343 = !DILocalVariable(name: "size", arg: 4, scope: !338, file: !3, line: 1322, type: !109)
!344 = !DILocalVariable(name: "peripheral", scope: !338, file: !3, line: 1342, type: !115)
!345 = !DILocalVariable(name: "remote_rx_mtu", scope: !346, file: !3, line: 1374, type: !109)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1373, column: 37)
!347 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1371, column: 24)
!348 = !DILocalVariable(name: "local_rx_mtu", scope: !346, file: !3, line: 1375, type: !109)
!349 = !DILocalVariable(name: "uuid16", scope: !350, file: !3, line: 1418, type: !109)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1417, column: 50)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1406, column: 48)
!352 = !DILocalVariable(name: "pair_size", scope: !350, file: !3, line: 1419, type: !109)
!353 = !DILocalVariable(name: "offset", scope: !350, file: !3, line: 1430, type: !109)
!354 = !DILocalVariable(name: "include_handle", scope: !355, file: !3, line: 1432, type: !109)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 1431, column: 66)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 1431, column: 13)
!357 = distinct !DILexicalBlock(scope: !350, file: !3, line: 1431, column: 13)
!358 = !DILocalVariable(name: "pair_size", scope: !359, file: !3, line: 1448, type: !109)
!359 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1447, column: 42)
!360 = !DILocalVariable(name: "offset", scope: !359, file: !3, line: 1449, type: !109)
!361 = !DILocalVariable(name: "last_result_handle", scope: !359, file: !3, line: 1450, type: !109)
!362 = !DILocalVariable(name: "value_handle", scope: !363, file: !3, line: 1452, type: !109)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 1451, column: 67)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 1451, column: 13)
!365 = distinct !DILexicalBlock(scope: !359, file: !3, line: 1451, column: 13)
!366 = !DILocalVariable(name: "uuid128", scope: !367, file: !3, line: 1466, type: !135)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1465, column: 60)
!368 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1464, column: 48)
!369 = !DILocalVariable(name: "pair_size", scope: !370, file: !3, line: 1491, type: !93)
!370 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1490, column: 43)
!371 = !DILocalVariable(name: "i", scope: !370, file: !3, line: 1492, type: !159)
!372 = !DILocalVariable(name: "start_group_handle", scope: !370, file: !3, line: 1493, type: !109)
!373 = !DILocalVariable(name: "end_group_handle", scope: !370, file: !3, line: 1494, type: !109)
!374 = !DILocalVariable(name: "pair_size", scope: !375, file: !3, line: 1505, type: !93)
!375 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1504, column: 38)
!376 = !DILocalVariable(name: "last_descriptor_handle", scope: !375, file: !3, line: 1509, type: !109)
!377 = !DILocalVariable(name: "received_blob_length", scope: !378, file: !3, line: 1537, type: !109)
!378 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1536, column: 34)
!379 = !DILocalVariable(name: "packet", scope: !380, file: !3, line: 720, type: !387)
!380 = distinct !DISubprogram(name: "emit_gatt_all_characteristic_descriptors_result_event", scope: !3, file: !3, line: 716, type: !381, isLocal: true, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !115, !109, !92}
!383 = !{!384, !385, !386, !379}
!384 = !DILocalVariable(name: "peripheral", arg: 1, scope: !380, file: !3, line: 717, type: !115)
!385 = !DILocalVariable(name: "descriptor_handle", arg: 2, scope: !380, file: !3, line: 717, type: !109)
!386 = !DILocalVariable(name: "uuid128", arg: 3, scope: !380, file: !3, line: 717, type: !92)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 176, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 22)
!390 = !DILocation(line: 720, column: 13, scope: !380, inlinedAt: !391)
!391 = distinct !DILocation(line: 921, column: 9, scope: !392, inlinedAt: !407)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 911, column: 43)
!393 = distinct !DILexicalBlock(scope: !394, file: !3, line: 911, column: 5)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 911, column: 5)
!395 = distinct !DISubprogram(name: "report_gatt_all_characteristic_descriptors", scope: !3, file: !3, line: 908, type: !396, isLocal: true, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !115, !92, !109, !109}
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406}
!399 = !DILocalVariable(name: "peripheral", arg: 1, scope: !395, file: !3, line: 908, type: !115)
!400 = !DILocalVariable(name: "packet", arg: 2, scope: !395, file: !3, line: 908, type: !92)
!401 = !DILocalVariable(name: "size", arg: 3, scope: !395, file: !3, line: 908, type: !109)
!402 = !DILocalVariable(name: "pair_size", arg: 4, scope: !395, file: !3, line: 908, type: !109)
!403 = !DILocalVariable(name: "i", scope: !395, file: !3, line: 910, type: !159)
!404 = !DILocalVariable(name: "descriptor_handle", scope: !392, file: !3, line: 912, type: !109)
!405 = !DILocalVariable(name: "uuid128", scope: !392, file: !3, line: 913, type: !135)
!406 = !DILocalVariable(name: "uuid16", scope: !392, file: !3, line: 914, type: !109)
!407 = distinct !DILocation(line: 1511, column: 9, scope: !375)
!408 = !DILocation(line: 913, column: 17, scope: !392, inlinedAt: !407)
!409 = !DILocalVariable(name: "normalized_uuid128", scope: !410, file: !3, line: 812, type: !135)
!410 = distinct !DISubprogram(name: "report_gatt_included_service_uuid16", scope: !3, file: !3, line: 810, type: !411, isLocal: true, isDefinition: true, scopeLine: 811, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !115, !109, !109}
!413 = !{!414, !415, !416, !409}
!414 = !DILocalVariable(name: "peripheral", arg: 1, scope: !410, file: !3, line: 810, type: !115)
!415 = !DILocalVariable(name: "include_handle", arg: 2, scope: !410, file: !3, line: 810, type: !109)
!416 = !DILocalVariable(name: "uuid16", arg: 3, scope: !410, file: !3, line: 810, type: !109)
!417 = !DILocation(line: 812, column: 13, scope: !410, inlinedAt: !418)
!418 = distinct !DILocation(line: 1436, column: 17, scope: !355)
!419 = !DILocalVariable(name: "uuid128", scope: !420, file: !3, line: 740, type: !135)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 737, column: 45)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 737, column: 5)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 737, column: 5)
!423 = distinct !DISubprogram(name: "report_gatt_services", scope: !3, file: !3, line: 731, type: !424, isLocal: true, isDefinition: true, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !115, !92, !109}
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !419, !435}
!427 = !DILocalVariable(name: "peripheral", arg: 1, scope: !423, file: !3, line: 731, type: !115)
!428 = !DILocalVariable(name: "packet", arg: 2, scope: !423, file: !3, line: 731, type: !92)
!429 = !DILocalVariable(name: "size", arg: 3, scope: !423, file: !3, line: 731, type: !109)
!430 = !DILocalVariable(name: "attr_length", scope: !423, file: !3, line: 733, type: !93)
!431 = !DILocalVariable(name: "uuid_length", scope: !423, file: !3, line: 734, type: !93)
!432 = !DILocalVariable(name: "i", scope: !423, file: !3, line: 736, type: !159)
!433 = !DILocalVariable(name: "start_group_handle", scope: !420, file: !3, line: 738, type: !109)
!434 = !DILocalVariable(name: "end_group_handle", scope: !420, file: !3, line: 739, type: !109)
!435 = !DILocalVariable(name: "uuid16", scope: !420, file: !3, line: 741, type: !109)
!436 = !DILocation(line: 740, column: 18, scope: !420, inlinedAt: !437)
!437 = distinct !DILocation(line: 1392, column: 13, scope: !438)
!438 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1390, column: 48)
!439 = !DILocation(line: 1322, column: 52, scope: !338)
!440 = !DILocation(line: 1322, column: 74, scope: !338)
!441 = !DILocation(line: 1322, column: 91, scope: !338)
!442 = !DILocation(line: 1322, column: 108, scope: !338)
!443 = !DILocation(line: 1325, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1325, column: 9)
!445 = !DILocation(line: 1325, column: 9, scope: !338)
!446 = !DILocation(line: 1329, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1329, column: 9)
!448 = !DILocation(line: 1329, column: 41, scope: !447)
!449 = !DILocation(line: 1329, column: 44, scope: !450)
!450 = !DILexicalBlockFile(scope: !447, file: !3, discriminator: 1)
!451 = !DILocation(line: 1329, column: 54, scope: !450)
!452 = !DILocation(line: 1329, column: 9, scope: !453)
!453 = !DILexicalBlockFile(scope: !338, file: !3, discriminator: 1)
!454 = !DILocation(line: 1330, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !447, file: !3, line: 1329, column: 83)
!456 = !DILocation(line: 102, column: 18, scope: !457, inlinedAt: !461)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 102, column: 9)
!458 = distinct !DISubprogram(name: "gatt_client_emit_can_send_now_event", scope: !3, file: !3, line: 100, type: !254, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !459)
!459 = !{!460}
!460 = !DILocalVariable(name: "event", scope: !458, file: !3, line: 105, type: !153)
!461 = distinct !DILocation(line: 1331, column: 9, scope: !455)
!462 = !DILocation(line: 102, column: 10, scope: !457, inlinedAt: !461)
!463 = !DILocation(line: 102, column: 9, scope: !458, inlinedAt: !461)
!464 = !DILocation(line: 105, column: 5, scope: !458, inlinedAt: !461)
!465 = !DILocation(line: 105, column: 13, scope: !458, inlinedAt: !461)
!466 = !DILocation(line: 106, column: 5, scope: !458, inlinedAt: !461)
!467 = !DILocation(line: 107, column: 1, scope: !458, inlinedAt: !461)
!468 = !DILocation(line: 1338, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1338, column: 5)
!470 = !DILocation(line: 1338, column: 5, scope: !338)
!471 = !DILocation(line: 1338, column: 5, scope: !472)
!472 = !DILexicalBlockFile(scope: !469, file: !3, discriminator: 1)
!473 = !DILocation(line: 1339, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1339, column: 5)
!475 = !DILocation(line: 1339, column: 5, scope: !338)
!476 = !DILocation(line: 1339, column: 5, scope: !477)
!477 = !DILexicalBlockFile(scope: !478, file: !3, discriminator: 1)
!478 = distinct !DILexicalBlock(scope: !474, file: !3, line: 1339, column: 5)
!479 = !DILocation(line: 1339, column: 5, scope: !480)
!480 = !DILexicalBlockFile(scope: !478, file: !3, discriminator: 2)
!481 = !DILocation(line: 1343, column: 13, scope: !338)
!482 = !DILocation(line: 1343, column: 5, scope: !338)
!483 = !DILocation(line: 1345, column: 42, scope: !484)
!484 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1343, column: 24)
!485 = !DILocation(line: 1345, column: 77, scope: !484)
!486 = !DILocation(line: 1345, column: 93, scope: !484)
!487 = !DILocalVariable(name: "con_handle", arg: 1, scope: !488, file: !3, line: 862, type: !112)
!488 = distinct !DISubprogram(name: "report_gatt_notification", scope: !3, file: !3, line: 862, type: !489, isLocal: true, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !112, !109, !92, !159}
!491 = !{!487, !492, !493, !494, !495}
!492 = !DILocalVariable(name: "value_handle", arg: 2, scope: !488, file: !3, line: 862, type: !109)
!493 = !DILocalVariable(name: "value", arg: 3, scope: !488, file: !3, line: 862, type: !92)
!494 = !DILocalVariable(name: "length", arg: 4, scope: !488, file: !3, line: 862, type: !159)
!495 = !DILocalVariable(name: "packet", scope: !488, file: !3, line: 864, type: !92)
!496 = !DILocation(line: 862, column: 55, scope: !488, inlinedAt: !497)
!497 = distinct !DILocation(line: 1345, column: 9, scope: !498)
!498 = !DILexicalBlockFile(scope: !484, file: !3, discriminator: 1)
!499 = !DILocation(line: 862, column: 76, scope: !488, inlinedAt: !497)
!500 = !DILocation(line: 862, column: 99, scope: !488, inlinedAt: !497)
!501 = !DILocation(line: 864, column: 23, scope: !488, inlinedAt: !497)
!502 = !DILocation(line: 864, column: 14, scope: !488, inlinedAt: !497)
!503 = !DILocation(line: 865, column: 113, scope: !488, inlinedAt: !497)
!504 = !DILocation(line: 865, column: 5, scope: !488, inlinedAt: !497)
!505 = !DILocation(line: 1346, column: 9, scope: !484)
!506 = !DILocation(line: 1352, column: 22, scope: !484)
!507 = !DILocation(line: 1342, column: 20, scope: !338)
!508 = !DILocation(line: 1353, column: 9, scope: !484)
!509 = !DILocation(line: 201, column: 67, scope: !301, inlinedAt: !510)
!510 = distinct !DILocation(line: 1356, column: 22, scope: !484)
!511 = !DILocation(line: 203, column: 28, scope: !301, inlinedAt: !510)
!512 = !DILocation(line: 204, column: 5, scope: !315, inlinedAt: !510)
!513 = !DILocation(line: 206, column: 25, scope: !317, inlinedAt: !510)
!514 = !DILocation(line: 204, column: 77, scope: !319, inlinedAt: !510)
!515 = !DILocation(line: 206, column: 36, scope: !317, inlinedAt: !510)
!516 = !DILocation(line: 205, column: 37, scope: !307, inlinedAt: !510)
!517 = !DILocation(line: 1360, column: 10, scope: !518)
!518 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1360, column: 9)
!519 = !DILocation(line: 1360, column: 9, scope: !338)
!520 = !DILocation(line: 1361, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1360, column: 22)
!522 = !DILocation(line: 1362, column: 25, scope: !521)
!523 = !DILocation(line: 1362, column: 9, scope: !521)
!524 = !DILocation(line: 1363, column: 9, scope: !521)
!525 = !DILocation(line: 1371, column: 13, scope: !338)
!526 = !DILocation(line: 1371, column: 5, scope: !338)
!527 = !DILocation(line: 1494, column: 20, scope: !370)
!528 = !DILocation(line: 1492, column: 13, scope: !370)
!529 = !DILocation(line: 1495, column: 25, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !3, discriminator: 1)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 1495, column: 9)
!532 = distinct !DILexicalBlock(scope: !370, file: !3, line: 1495, column: 9)
!533 = !DILocation(line: 1495, column: 23, scope: !530)
!534 = !DILocation(line: 1495, column: 9, scope: !535)
!535 = !DILexicalBlockFile(scope: !532, file: !3, discriminator: 1)
!536 = !DILocation(line: 1374, column: 34, scope: !346)
!537 = !DILocation(line: 1374, column: 18, scope: !346)
!538 = !DILocation(line: 1375, column: 33, scope: !346)
!539 = !DILocation(line: 1375, column: 18, scope: !346)
!540 = !DILocation(line: 1376, column: 27, scope: !346)
!541 = !DILocation(line: 1376, column: 43, scope: !346)
!542 = !DILocation(line: 1376, column: 41, scope: !346)
!543 = !DILocation(line: 1376, column: 21, scope: !544)
!544 = !DILexicalBlockFile(scope: !346, file: !3, discriminator: 3)
!545 = !DILocation(line: 1376, column: 25, scope: !544)
!546 = !{!324, !325, i64 22}
!547 = !DILocation(line: 1377, column: 13, scope: !548)
!548 = distinct !DILexicalBlock(scope: !346, file: !3, line: 1377, column: 13)
!549 = !DILocation(line: 1377, column: 23, scope: !548)
!550 = !DILocation(line: 1377, column: 13, scope: !346)
!551 = !DILocation(line: 1378, column: 13, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !3, line: 1377, column: 52)
!553 = !DILocation(line: 1378, column: 13, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !3, discriminator: 1)
!555 = distinct !DILexicalBlock(scope: !552, file: !3, line: 1378, column: 13)
!556 = !DILocation(line: 1381, column: 13, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !3, line: 1380, column: 16)
!558 = !DILocation(line: 1381, column: 13, scope: !559)
!559 = !DILexicalBlockFile(scope: !560, file: !3, discriminator: 1)
!560 = distinct !DILexicalBlock(scope: !557, file: !3, line: 1381, column: 13)
!561 = !{!324, !228, i64 24}
!562 = !DILocation(line: 1384, column: 41, scope: !346)
!563 = !DILocation(line: 1384, column: 65, scope: !346)
!564 = !DILocation(line: 1384, column: 9, scope: !346)
!565 = !DILocation(line: 1385, column: 60, scope: !346)
!566 = !DILocation(line: 1385, column: 9, scope: !346)
!567 = !DILocation(line: 1386, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !346, file: !3, line: 1386, column: 9)
!569 = !DILocation(line: 1386, column: 9, scope: !346)
!570 = !DILocation(line: 1386, column: 9, scope: !571)
!571 = !DILexicalBlockFile(scope: !568, file: !3, discriminator: 1)
!572 = !DILocation(line: 1390, column: 29, scope: !347)
!573 = !{!324, !228, i64 4}
!574 = !DILocation(line: 1390, column: 9, scope: !347)
!575 = !DILocation(line: 731, column: 49, scope: !423, inlinedAt: !437)
!576 = !DILocation(line: 731, column: 70, scope: !423, inlinedAt: !437)
!577 = !DILocation(line: 731, column: 88, scope: !423, inlinedAt: !437)
!578 = !DILocation(line: 733, column: 27, scope: !423, inlinedAt: !437)
!579 = !DILocation(line: 733, column: 13, scope: !423, inlinedAt: !437)
!580 = !DILocation(line: 734, column: 27, scope: !423, inlinedAt: !437)
!581 = !DILocation(line: 736, column: 9, scope: !423, inlinedAt: !437)
!582 = !DILocation(line: 737, column: 21, scope: !583, inlinedAt: !437)
!583 = !DILexicalBlockFile(scope: !421, file: !3, discriminator: 1)
!584 = !DILocation(line: 737, column: 19, scope: !583, inlinedAt: !437)
!585 = !DILocation(line: 737, column: 5, scope: !586, inlinedAt: !437)
!586 = !DILexicalBlockFile(scope: !422, file: !3, discriminator: 1)
!587 = !DILocation(line: 738, column: 39, scope: !420, inlinedAt: !437)
!588 = !DILocation(line: 738, column: 18, scope: !420, inlinedAt: !437)
!589 = !DILocation(line: 739, column: 71, scope: !420, inlinedAt: !437)
!590 = !DILocation(line: 739, column: 39, scope: !420, inlinedAt: !437)
!591 = !DILocation(line: 739, column: 18, scope: !420, inlinedAt: !437)
!592 = !DILocation(line: 740, column: 9, scope: !420, inlinedAt: !437)
!593 = !DILocation(line: 741, column: 18, scope: !420, inlinedAt: !437)
!594 = !DILocation(line: 743, column: 13, scope: !420, inlinedAt: !437)
!595 = !DILocation(line: 744, column: 22, scope: !596, inlinedAt: !437)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 743, column: 31)
!597 = distinct !DILexicalBlock(scope: !420, file: !3, line: 743, column: 13)
!598 = !DILocation(line: 745, column: 61, scope: !596, inlinedAt: !437)
!599 = !DILocation(line: 745, column: 13, scope: !596, inlinedAt: !437)
!600 = !DILocation(line: 746, column: 9, scope: !596, inlinedAt: !437)
!601 = !DILocation(line: 747, column: 26, scope: !602, inlinedAt: !437)
!602 = distinct !DILexicalBlock(scope: !597, file: !3, line: 746, column: 16)
!603 = !DILocation(line: 747, column: 13, scope: !602, inlinedAt: !437)
!604 = !DILocation(line: 749, column: 9, scope: !420, inlinedAt: !437)
!605 = !DILocation(line: 750, column: 5, scope: !421, inlinedAt: !437)
!606 = !DILocation(line: 737, column: 29, scope: !607, inlinedAt: !437)
!607 = !DILexicalBlockFile(scope: !421, file: !3, discriminator: 2)
!608 = distinct !{!608, !609, !610}
!609 = !DILocation(line: 737, column: 5, scope: !422)
!610 = !DILocation(line: 750, column: 5, scope: !422)
!611 = !DILocation(line: 595, column: 67, scope: !612, inlinedAt: !619)
!612 = distinct !DISubprogram(name: "get_last_result_handle_from_service_list", scope: !3, file: !3, line: 595, type: !613, isLocal: true, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{!109, !92, !109}
!615 = !{!616, !617, !618}
!616 = !DILocalVariable(name: "packet", arg: 1, scope: !612, file: !3, line: 595, type: !92)
!617 = !DILocalVariable(name: "size", arg: 2, scope: !612, file: !3, line: 595, type: !109)
!618 = !DILocalVariable(name: "attr_length", scope: !612, file: !3, line: 597, type: !93)
!619 = distinct !DILocation(line: 1393, column: 52, scope: !438)
!620 = !DILocation(line: 597, column: 27, scope: !612, inlinedAt: !619)
!621 = !DILocation(line: 595, column: 84, scope: !612, inlinedAt: !619)
!622 = !DILocation(line: 597, column: 13, scope: !612, inlinedAt: !619)
!623 = !DILocation(line: 598, column: 49, scope: !612, inlinedAt: !619)
!624 = !DILocation(line: 598, column: 47, scope: !612, inlinedAt: !619)
!625 = !DILocation(line: 598, column: 61, scope: !612, inlinedAt: !619)
!626 = !DILocation(line: 598, column: 12, scope: !612, inlinedAt: !619)
!627 = !DILocalVariable(name: "peripheral", arg: 1, scope: !628, file: !3, line: 948, type: !115)
!628 = distinct !DISubprogram(name: "trigger_next_service_query", scope: !3, file: !3, line: 948, type: !629, isLocal: true, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !115, !109}
!631 = !{!627, !632}
!632 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !628, file: !3, line: 948, type: !109)
!633 = !DILocation(line: 948, column: 62, scope: !628, inlinedAt: !634)
!634 = distinct !DILocation(line: 1393, column: 13, scope: !635)
!635 = !DILexicalBlockFile(scope: !438, file: !3, discriminator: 1)
!636 = !DILocation(line: 948, column: 83, scope: !628, inlinedAt: !634)
!637 = !DILocation(line: 950, column: 5, scope: !628, inlinedAt: !634)
!638 = !DILocation(line: 1395, column: 13, scope: !438)
!639 = !DILocation(line: 1401, column: 40, scope: !347)
!640 = !DILocation(line: 1401, column: 75, scope: !347)
!641 = !DILocation(line: 1401, column: 91, scope: !347)
!642 = !DILocalVariable(name: "con_handle", arg: 1, scope: !643, file: !3, line: 869, type: !112)
!643 = distinct !DISubprogram(name: "report_gatt_indication", scope: !3, file: !3, line: 869, type: !489, isLocal: true, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !644)
!644 = !{!642, !645, !646, !647, !648}
!645 = !DILocalVariable(name: "value_handle", arg: 2, scope: !643, file: !3, line: 869, type: !109)
!646 = !DILocalVariable(name: "value", arg: 3, scope: !643, file: !3, line: 869, type: !92)
!647 = !DILocalVariable(name: "length", arg: 4, scope: !643, file: !3, line: 869, type: !159)
!648 = !DILocalVariable(name: "packet", scope: !643, file: !3, line: 871, type: !92)
!649 = !DILocation(line: 869, column: 53, scope: !643, inlinedAt: !650)
!650 = distinct !DILocation(line: 1401, column: 9, scope: !651)
!651 = !DILexicalBlockFile(scope: !347, file: !3, discriminator: 1)
!652 = !DILocation(line: 869, column: 74, scope: !643, inlinedAt: !650)
!653 = !DILocation(line: 869, column: 97, scope: !643, inlinedAt: !650)
!654 = !DILocation(line: 871, column: 23, scope: !643, inlinedAt: !650)
!655 = !DILocation(line: 871, column: 14, scope: !643, inlinedAt: !650)
!656 = !DILocation(line: 872, column: 113, scope: !643, inlinedAt: !650)
!657 = !DILocation(line: 872, column: 5, scope: !643, inlinedAt: !650)
!658 = !DILocation(line: 1402, column: 21, scope: !347)
!659 = !DILocation(line: 1402, column: 39, scope: !347)
!660 = !{!324, !228, i64 81}
!661 = !DILocation(line: 1403, column: 9, scope: !347)
!662 = !DILocation(line: 1406, column: 29, scope: !347)
!663 = !DILocation(line: 1406, column: 9, scope: !347)
!664 = !DILocation(line: 1408, column: 13, scope: !351)
!665 = !DILocalVariable(name: "packet", arg: 1, scope: !666, file: !3, line: 601, type: !92)
!666 = distinct !DISubprogram(name: "get_last_result_handle_from_characteristics_list", scope: !3, file: !3, line: 601, type: !613, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !667)
!667 = !{!665, !668, !669}
!668 = !DILocalVariable(name: "size", arg: 2, scope: !666, file: !3, line: 601, type: !109)
!669 = !DILocalVariable(name: "attr_length", scope: !666, file: !3, line: 603, type: !93)
!670 = !DILocation(line: 601, column: 75, scope: !666, inlinedAt: !671)
!671 = distinct !DILocation(line: 1409, column: 59, scope: !351)
!672 = !DILocation(line: 601, column: 92, scope: !666, inlinedAt: !671)
!673 = !DILocation(line: 603, column: 27, scope: !666, inlinedAt: !671)
!674 = !DILocation(line: 603, column: 13, scope: !666, inlinedAt: !671)
!675 = !DILocation(line: 604, column: 42, scope: !666, inlinedAt: !671)
!676 = !DILocation(line: 604, column: 49, scope: !666, inlinedAt: !671)
!677 = !DILocation(line: 604, column: 47, scope: !666, inlinedAt: !671)
!678 = !DILocation(line: 604, column: 61, scope: !666, inlinedAt: !671)
!679 = !DILocation(line: 604, column: 12, scope: !666, inlinedAt: !671)
!680 = !DILocalVariable(name: "peripheral", arg: 1, scope: !681, file: !3, line: 958, type: !115)
!681 = distinct !DISubprogram(name: "trigger_next_characteristic_query", scope: !3, file: !3, line: 958, type: !629, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !682)
!682 = !{!680, !683}
!683 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !681, file: !3, line: 958, type: !109)
!684 = !DILocation(line: 958, column: 69, scope: !681, inlinedAt: !685)
!685 = distinct !DILocation(line: 1409, column: 13, scope: !686)
!686 = !DILexicalBlockFile(scope: !351, file: !3, discriminator: 1)
!687 = !DILocation(line: 958, column: 90, scope: !681, inlinedAt: !685)
!688 = !DILocalVariable(name: "peripheral", arg: 1, scope: !689, file: !3, line: 926, type: !115)
!689 = distinct !DISubprogram(name: "is_query_done", scope: !3, file: !3, line: 926, type: !690, isLocal: true, isDefinition: true, scopeLine: 927, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!159, !115, !109}
!692 = !{!688, !693}
!693 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !689, file: !3, line: 926, type: !109)
!694 = !DILocation(line: 926, column: 41, scope: !689, inlinedAt: !695)
!695 = distinct !DILocation(line: 960, column: 9, scope: !696, inlinedAt: !685)
!696 = distinct !DILexicalBlock(scope: !681, file: !3, line: 960, column: 9)
!697 = !DILocation(line: 926, column: 62, scope: !689, inlinedAt: !695)
!698 = !DILocation(line: 928, column: 46, scope: !689, inlinedAt: !695)
!699 = !{!324, !325, i64 48}
!700 = !DILocation(line: 928, column: 31, scope: !689, inlinedAt: !695)
!701 = !DILocation(line: 960, column: 9, scope: !681, inlinedAt: !685)
!702 = !DILocation(line: 962, column: 9, scope: !703, inlinedAt: !685)
!703 = distinct !DILexicalBlock(scope: !696, file: !3, line: 960, column: 56)
!704 = !DILocation(line: 963, column: 5, scope: !703, inlinedAt: !685)
!705 = !DILocation(line: 964, column: 5, scope: !681, inlinedAt: !685)
!706 = !DILocation(line: 1411, column: 13, scope: !351)
!707 = !DILocation(line: 1413, column: 13, scope: !351)
!708 = !DILocation(line: 601, column: 75, scope: !666, inlinedAt: !709)
!709 = distinct !DILocation(line: 1414, column: 59, scope: !351)
!710 = !DILocation(line: 601, column: 92, scope: !666, inlinedAt: !709)
!711 = !DILocation(line: 603, column: 27, scope: !666, inlinedAt: !709)
!712 = !DILocation(line: 603, column: 13, scope: !666, inlinedAt: !709)
!713 = !DILocation(line: 604, column: 42, scope: !666, inlinedAt: !709)
!714 = !DILocation(line: 604, column: 49, scope: !666, inlinedAt: !709)
!715 = !DILocation(line: 604, column: 47, scope: !666, inlinedAt: !709)
!716 = !DILocation(line: 604, column: 61, scope: !666, inlinedAt: !709)
!717 = !DILocation(line: 604, column: 12, scope: !666, inlinedAt: !709)
!718 = !DILocation(line: 958, column: 69, scope: !681, inlinedAt: !719)
!719 = distinct !DILocation(line: 1414, column: 13, scope: !686)
!720 = !DILocation(line: 958, column: 90, scope: !681, inlinedAt: !719)
!721 = !DILocation(line: 926, column: 41, scope: !689, inlinedAt: !722)
!722 = distinct !DILocation(line: 960, column: 9, scope: !696, inlinedAt: !719)
!723 = !DILocation(line: 926, column: 62, scope: !689, inlinedAt: !722)
!724 = !DILocation(line: 928, column: 46, scope: !689, inlinedAt: !722)
!725 = !DILocation(line: 928, column: 31, scope: !689, inlinedAt: !722)
!726 = !DILocation(line: 960, column: 9, scope: !681, inlinedAt: !719)
!727 = !DILocation(line: 962, column: 9, scope: !703, inlinedAt: !719)
!728 = !DILocation(line: 963, column: 5, scope: !703, inlinedAt: !719)
!729 = !DILocation(line: 964, column: 5, scope: !681, inlinedAt: !719)
!730 = !DILocation(line: 1416, column: 13, scope: !351)
!731 = !DILocation(line: 1418, column: 22, scope: !350)
!732 = !DILocation(line: 1419, column: 34, scope: !350)
!733 = !DILocation(line: 1421, column: 17, scope: !734)
!734 = distinct !DILexicalBlock(scope: !350, file: !3, line: 1421, column: 17)
!735 = !DILocation(line: 1421, column: 27, scope: !734)
!736 = !DILocation(line: 1421, column: 17, scope: !350)
!737 = !DILocation(line: 1431, column: 39, scope: !738)
!738 = !DILexicalBlockFile(scope: !356, file: !3, discriminator: 1)
!739 = !DILocation(line: 1431, column: 37, scope: !738)
!740 = !DILocation(line: 1431, column: 13, scope: !741)
!741 = !DILexicalBlockFile(scope: !357, file: !3, discriminator: 1)
!742 = !DILocation(line: 1423, column: 50, scope: !743)
!743 = distinct !DILexicalBlock(scope: !734, file: !3, line: 1421, column: 32)
!744 = !DILocation(line: 1423, column: 29, scope: !743)
!745 = !DILocation(line: 1423, column: 48, scope: !743)
!746 = !{!324, !325, i64 46}
!747 = !DILocation(line: 1424, column: 50, scope: !743)
!748 = !DILocation(line: 1424, column: 29, scope: !743)
!749 = !DILocation(line: 1424, column: 48, scope: !743)
!750 = !{!324, !325, i64 50}
!751 = !DILocation(line: 1425, column: 48, scope: !743)
!752 = !DILocation(line: 1425, column: 29, scope: !743)
!753 = !DILocation(line: 1425, column: 46, scope: !743)
!754 = !{!324, !325, i64 52}
!755 = !DILocation(line: 1426, column: 47, scope: !743)
!756 = !DILocation(line: 1427, column: 17, scope: !743)
!757 = !DILocation(line: 1432, column: 43, scope: !355)
!758 = !DILocation(line: 1432, column: 26, scope: !355)
!759 = !DILocation(line: 1433, column: 87, scope: !355)
!760 = !DILocation(line: 1433, column: 50, scope: !355)
!761 = !DILocation(line: 1433, column: 48, scope: !355)
!762 = !DILocation(line: 1434, column: 85, scope: !355)
!763 = !DILocation(line: 1434, column: 48, scope: !355)
!764 = !DILocation(line: 1434, column: 46, scope: !355)
!765 = !DILocation(line: 1435, column: 63, scope: !355)
!766 = !DILocation(line: 1435, column: 26, scope: !355)
!767 = !DILocation(line: 810, column: 64, scope: !410, inlinedAt: !418)
!768 = !DILocation(line: 810, column: 85, scope: !410, inlinedAt: !418)
!769 = !DILocation(line: 810, column: 110, scope: !410, inlinedAt: !418)
!770 = !DILocation(line: 812, column: 5, scope: !410, inlinedAt: !418)
!771 = !DILocation(line: 813, column: 51, scope: !410, inlinedAt: !418)
!772 = !DILocation(line: 813, column: 5, scope: !410, inlinedAt: !418)
!773 = !DILocation(line: 814, column: 91, scope: !410, inlinedAt: !418)
!774 = !DILocation(line: 815, column: 25, scope: !410, inlinedAt: !418)
!775 = !DILocation(line: 814, column: 5, scope: !410, inlinedAt: !418)
!776 = !DILocation(line: 816, column: 1, scope: !410, inlinedAt: !418)
!777 = !DILocation(line: 1431, column: 52, scope: !778)
!778 = !DILexicalBlockFile(scope: !356, file: !3, discriminator: 2)
!779 = !DILocation(line: 1431, column: 30, scope: !738)
!780 = distinct !{!780, !781, !782}
!781 = !DILocation(line: 1431, column: 13, scope: !357)
!782 = !DILocation(line: 1437, column: 13, scope: !357)
!783 = !DILocation(line: 607, column: 77, scope: !784, inlinedAt: !789)
!784 = distinct !DISubprogram(name: "get_last_result_handle_from_included_services_list", scope: !3, file: !3, line: 607, type: !613, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!785 = !{!786, !787, !788}
!786 = !DILocalVariable(name: "packet", arg: 1, scope: !784, file: !3, line: 607, type: !92)
!787 = !DILocalVariable(name: "size", arg: 2, scope: !784, file: !3, line: 607, type: !109)
!788 = !DILocalVariable(name: "attr_length", scope: !784, file: !3, line: 609, type: !93)
!789 = distinct !DILocation(line: 1439, column: 61, scope: !350)
!790 = !DILocation(line: 609, column: 27, scope: !784, inlinedAt: !789)
!791 = !DILocation(line: 607, column: 94, scope: !784, inlinedAt: !789)
!792 = !DILocation(line: 609, column: 13, scope: !784, inlinedAt: !789)
!793 = !DILocation(line: 610, column: 49, scope: !784, inlinedAt: !789)
!794 = !DILocation(line: 610, column: 47, scope: !784, inlinedAt: !789)
!795 = !DILocation(line: 610, column: 12, scope: !784, inlinedAt: !789)
!796 = !DILocalVariable(name: "peripheral", arg: 1, scope: !797, file: !3, line: 943, type: !115)
!797 = distinct !DISubprogram(name: "trigger_next_included_service_query", scope: !3, file: !3, line: 943, type: !629, isLocal: true, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !798)
!798 = !{!796, !799}
!799 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !797, file: !3, line: 943, type: !109)
!800 = !DILocation(line: 943, column: 71, scope: !797, inlinedAt: !801)
!801 = distinct !DILocation(line: 1439, column: 13, scope: !802)
!802 = !DILexicalBlockFile(scope: !350, file: !3, discriminator: 1)
!803 = !DILocation(line: 943, column: 92, scope: !797, inlinedAt: !801)
!804 = !DILocation(line: 945, column: 5, scope: !797, inlinedAt: !801)
!805 = !DILocation(line: 1444, column: 70, scope: !351)
!806 = !DILocation(line: 1444, column: 25, scope: !351)
!807 = !DILocation(line: 1444, column: 68, scope: !351)
!808 = !{!324, !325, i64 76}
!809 = !DILocation(line: 1445, column: 43, scope: !351)
!810 = !DILocation(line: 1446, column: 13, scope: !351)
!811 = !DILocation(line: 1450, column: 22, scope: !359)
!812 = !DILocation(line: 1449, column: 22, scope: !359)
!813 = !DILocation(line: 1451, column: 39, scope: !814)
!814 = !DILexicalBlockFile(scope: !364, file: !3, discriminator: 1)
!815 = !DILocation(line: 1451, column: 37, scope: !814)
!816 = !DILocation(line: 1451, column: 13, scope: !817)
!817 = !DILexicalBlockFile(scope: !365, file: !3, discriminator: 1)
!818 = !DILocation(line: 1448, column: 34, scope: !359)
!819 = !DILocation(line: 1452, column: 41, scope: !363)
!820 = !DILocation(line: 1452, column: 26, scope: !363)
!821 = !DILocation(line: 1453, column: 91, scope: !363)
!822 = !DILocation(line: 1453, column: 77, scope: !363)
!823 = !DILocation(line: 1453, column: 17, scope: !363)
!824 = !DILocation(line: 1451, column: 53, scope: !825)
!825 = !DILexicalBlockFile(scope: !364, file: !3, discriminator: 2)
!826 = !DILocation(line: 1451, column: 30, scope: !814)
!827 = distinct !{!827, !828, !829}
!828 = !DILocation(line: 1451, column: 13, scope: !365)
!829 = !DILocation(line: 1455, column: 13, scope: !365)
!830 = !DILocation(line: 972, column: 67, scope: !831, inlinedAt: !835)
!831 = distinct !DISubprogram(name: "trigger_next_read_by_type_query", scope: !3, file: !3, line: 972, type: !629, isLocal: true, isDefinition: true, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !832)
!832 = !{!833, !834}
!833 = !DILocalVariable(name: "peripheral", arg: 1, scope: !831, file: !3, line: 972, type: !115)
!834 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !831, file: !3, line: 972, type: !109)
!835 = distinct !DILocation(line: 1456, column: 13, scope: !359)
!836 = !DILocation(line: 972, column: 88, scope: !831, inlinedAt: !835)
!837 = !DILocation(line: 974, column: 5, scope: !831, inlinedAt: !835)
!838 = !DILocation(line: 1464, column: 29, scope: !347)
!839 = !DILocation(line: 1464, column: 9, scope: !347)
!840 = !DILocation(line: 1466, column: 13, scope: !367)
!841 = !DILocation(line: 1466, column: 21, scope: !367)
!842 = !DILocation(line: 1467, column: 26, scope: !367)
!843 = !DILocation(line: 1467, column: 13, scope: !367)
!844 = !DILocation(line: 1468, column: 74, scope: !367)
!845 = !DILocalVariable(name: "peripheral", arg: 1, scope: !846, file: !3, line: 818, type: !115)
!846 = distinct !DISubprogram(name: "report_gatt_included_service_uuid128", scope: !3, file: !3, line: 818, type: !381, isLocal: true, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !847)
!847 = !{!845, !848, !849}
!848 = !DILocalVariable(name: "include_handle", arg: 2, scope: !846, file: !3, line: 818, type: !109)
!849 = !DILocalVariable(name: "uuid128", arg: 3, scope: !846, file: !3, line: 818, type: !92)
!850 = !DILocation(line: 818, column: 65, scope: !846, inlinedAt: !851)
!851 = distinct !DILocation(line: 1468, column: 13, scope: !367)
!852 = !DILocation(line: 818, column: 86, scope: !846, inlinedAt: !851)
!853 = !DILocation(line: 818, column: 111, scope: !846, inlinedAt: !851)
!854 = !DILocation(line: 820, column: 91, scope: !846, inlinedAt: !851)
!855 = !DILocation(line: 821, column: 25, scope: !846, inlinedAt: !851)
!856 = !DILocation(line: 820, column: 5, scope: !846, inlinedAt: !851)
!857 = !DILocation(line: 1469, column: 73, scope: !367)
!858 = !DILocation(line: 943, column: 71, scope: !797, inlinedAt: !859)
!859 = distinct !DILocation(line: 1469, column: 13, scope: !367)
!860 = !DILocation(line: 943, column: 92, scope: !797, inlinedAt: !859)
!861 = !DILocation(line: 945, column: 5, scope: !797, inlinedAt: !859)
!862 = !DILocation(line: 1472, column: 9, scope: !368)
!863 = !DILocalVariable(name: "peripheral", arg: 1, scope: !864, file: !3, line: 613, type: !115)
!864 = distinct !DISubprogram(name: "gatt_client_handle_transaction_complete", scope: !3, file: !3, line: 613, type: !865, isLocal: true, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !115}
!867 = !{!863}
!868 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !869)
!869 = distinct !DILocation(line: 1474, column: 13, scope: !368)
!870 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !869)
!871 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !869)
!872 = !DILocation(line: 1475, column: 70, scope: !368)
!873 = !{!324, !325, i64 58}
!874 = !DILocation(line: 1475, column: 89, scope: !368)
!875 = !DILocation(line: 1475, column: 105, scope: !368)
!876 = !DILocation(line: 1475, column: 13, scope: !368)
!877 = !DILocation(line: 1476, column: 13, scope: !368)
!878 = !DILocation(line: 1477, column: 13, scope: !368)
!879 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !880)
!880 = distinct !DILocation(line: 1480, column: 13, scope: !881)
!881 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1479, column: 58)
!882 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !880)
!883 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !880)
!884 = !DILocation(line: 1481, column: 75, scope: !881)
!885 = !DILocation(line: 1481, column: 94, scope: !881)
!886 = !DILocation(line: 1481, column: 110, scope: !881)
!887 = !DILocalVariable(name: "value_offset", arg: 5, scope: !888, file: !3, line: 892, type: !109)
!888 = distinct !DISubprogram(name: "report_gatt_characteristic_descriptor", scope: !3, file: !3, line: 892, type: !889, isLocal: true, isDefinition: true, scopeLine: 893, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !115, !109, !92, !109, !109}
!891 = !{!892, !893, !894, !895, !887, !896}
!892 = !DILocalVariable(name: "peripheral", arg: 1, scope: !888, file: !3, line: 892, type: !115)
!893 = !DILocalVariable(name: "descriptor_handle", arg: 2, scope: !888, file: !3, line: 892, type: !109)
!894 = !DILocalVariable(name: "value", arg: 3, scope: !888, file: !3, line: 892, type: !92)
!895 = !DILocalVariable(name: "value_length", arg: 4, scope: !888, file: !3, line: 892, type: !109)
!896 = !DILocalVariable(name: "packet", scope: !888, file: !3, line: 895, type: !92)
!897 = !DILocation(line: 892, column: 154, scope: !888, inlinedAt: !898)
!898 = distinct !DILocation(line: 1481, column: 13, scope: !881)
!899 = !DILocation(line: 895, column: 120, scope: !888, inlinedAt: !898)
!900 = !DILocation(line: 895, column: 23, scope: !888, inlinedAt: !898)
!901 = !DILocation(line: 895, column: 14, scope: !888, inlinedAt: !898)
!902 = !DILocation(line: 896, column: 32, scope: !888, inlinedAt: !898)
!903 = !{!324, !235, i64 8}
!904 = !DILocalVariable(name: "callback", arg: 1, scope: !905, file: !3, line: 619, type: !105)
!905 = distinct !DISubprogram(name: "emit_event_new", scope: !3, file: !3, line: 619, type: !906, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !105, !92, !109}
!908 = !{!904, !909, !910}
!909 = !DILocalVariable(name: "packet", arg: 2, scope: !905, file: !3, line: 619, type: !92)
!910 = !DILocalVariable(name: "size", arg: 3, scope: !905, file: !3, line: 619, type: !109)
!911 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !912)
!912 = distinct !DILocation(line: 896, column: 5, scope: !888, inlinedAt: !898)
!913 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !912)
!914 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !912)
!915 = distinct !DILexicalBlock(scope: !905, file: !3, line: 621, column: 9)
!916 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !912)
!917 = !DILocation(line: 896, column: 63, scope: !888, inlinedAt: !898)
!918 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !912)
!919 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !912)
!920 = !DILocation(line: 1482, column: 13, scope: !881)
!921 = !DILocation(line: 1483, column: 13, scope: !881)
!922 = !DILocation(line: 1496, column: 34, scope: !923)
!923 = distinct !DILexicalBlock(scope: !531, file: !3, line: 1495, column: 47)
!924 = !DILocation(line: 1493, column: 18, scope: !370)
!925 = !DILocation(line: 1497, column: 64, scope: !923)
!926 = !DILocation(line: 1497, column: 32, scope: !923)
!927 = !DILocation(line: 1498, column: 13, scope: !923)
!928 = !DILocation(line: 1495, column: 33, scope: !929)
!929 = !DILexicalBlockFile(scope: !531, file: !3, discriminator: 2)
!930 = distinct !{!930, !931, !932}
!931 = !DILocation(line: 1495, column: 9, scope: !532)
!932 = !DILocation(line: 1499, column: 9, scope: !532)
!933 = !DILocation(line: 953, column: 70, scope: !934, inlinedAt: !938)
!934 = distinct !DISubprogram(name: "trigger_next_service_by_uuid_query", scope: !3, file: !3, line: 953, type: !629, isLocal: true, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !935)
!935 = !{!936, !937}
!936 = !DILocalVariable(name: "peripheral", arg: 1, scope: !934, file: !3, line: 953, type: !115)
!937 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !934, file: !3, line: 953, type: !109)
!938 = distinct !DILocation(line: 1500, column: 9, scope: !370)
!939 = !DILocation(line: 953, column: 91, scope: !934, inlinedAt: !938)
!940 = !DILocation(line: 955, column: 5, scope: !934, inlinedAt: !938)
!941 = !DILocation(line: 1505, column: 17, scope: !375)
!942 = !DILocation(line: 1506, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !375, file: !3, line: 1506, column: 13)
!944 = !DILocation(line: 1506, column: 23, scope: !943)
!945 = !DILocation(line: 1509, column: 73, scope: !375)
!946 = !DILocation(line: 1509, column: 80, scope: !375)
!947 = !DILocation(line: 1509, column: 78, scope: !375)
!948 = !DILocation(line: 1509, column: 43, scope: !375)
!949 = !DILocation(line: 1509, column: 18, scope: !375)
!950 = !DILocation(line: 1511, column: 65, scope: !375)
!951 = !DILocation(line: 1511, column: 81, scope: !375)
!952 = !DILocation(line: 908, column: 71, scope: !395, inlinedAt: !407)
!953 = !DILocation(line: 908, column: 92, scope: !395, inlinedAt: !407)
!954 = !DILocation(line: 908, column: 109, scope: !395, inlinedAt: !407)
!955 = !DILocation(line: 910, column: 9, scope: !395, inlinedAt: !407)
!956 = !DILocation(line: 911, column: 21, scope: !957, inlinedAt: !407)
!957 = !DILexicalBlockFile(scope: !393, file: !3, discriminator: 1)
!958 = !DILocation(line: 911, column: 19, scope: !957, inlinedAt: !407)
!959 = !DILocation(line: 911, column: 5, scope: !960, inlinedAt: !407)
!960 = !DILexicalBlockFile(scope: !394, file: !3, discriminator: 1)
!961 = !DILocation(line: 912, column: 38, scope: !392, inlinedAt: !407)
!962 = !DILocation(line: 912, column: 18, scope: !392, inlinedAt: !407)
!963 = !DILocation(line: 913, column: 9, scope: !392, inlinedAt: !407)
!964 = !DILocation(line: 914, column: 18, scope: !392, inlinedAt: !407)
!965 = !DILocation(line: 915, column: 13, scope: !392, inlinedAt: !407)
!966 = !DILocation(line: 916, column: 22, scope: !967, inlinedAt: !407)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 915, column: 29)
!968 = distinct !DILexicalBlock(scope: !392, file: !3, line: 915, column: 13)
!969 = !DILocation(line: 917, column: 48, scope: !967, inlinedAt: !407)
!970 = !DILocation(line: 917, column: 13, scope: !967, inlinedAt: !407)
!971 = !DILocation(line: 918, column: 9, scope: !967, inlinedAt: !407)
!972 = !DILocation(line: 919, column: 26, scope: !973, inlinedAt: !407)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 918, column: 16)
!974 = !DILocation(line: 919, column: 13, scope: !973, inlinedAt: !407)
!975 = !DILocation(line: 717, column: 20, scope: !380, inlinedAt: !391)
!976 = !DILocation(line: 717, column: 41, scope: !380, inlinedAt: !391)
!977 = !DILocation(line: 717, column: 69, scope: !380, inlinedAt: !391)
!978 = !DILocation(line: 720, column: 5, scope: !380, inlinedAt: !391)
!979 = !DILocation(line: 721, column: 15, scope: !380, inlinedAt: !391)
!980 = !DILocation(line: 722, column: 15, scope: !380, inlinedAt: !391)
!981 = !DILocation(line: 723, column: 51, scope: !380, inlinedAt: !391)
!982 = !DILocation(line: 723, column: 5, scope: !380, inlinedAt: !391)
!983 = !DILocation(line: 725, column: 5, scope: !380, inlinedAt: !391)
!984 = !DILocation(line: 726, column: 5, scope: !380, inlinedAt: !391)
!985 = !DILocation(line: 727, column: 32, scope: !380, inlinedAt: !391)
!986 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !987)
!987 = distinct !DILocation(line: 727, column: 5, scope: !380, inlinedAt: !391)
!988 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !987)
!989 = !DILocation(line: 619, column: 89, scope: !905, inlinedAt: !987)
!990 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !987)
!991 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !987)
!992 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !987)
!993 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !987)
!994 = !DILocation(line: 728, column: 1, scope: !380, inlinedAt: !391)
!995 = !DILocation(line: 922, column: 5, scope: !393, inlinedAt: !407)
!996 = !DILocation(line: 911, column: 29, scope: !997, inlinedAt: !407)
!997 = !DILexicalBlockFile(scope: !393, file: !3, discriminator: 2)
!998 = distinct !{!998, !999, !1000}
!999 = !DILocation(line: 911, column: 5, scope: !394)
!1000 = !DILocation(line: 922, column: 5, scope: !394)
!1001 = !DILocation(line: 967, column: 80, scope: !1002, inlinedAt: !1006)
!1002 = distinct !DISubprogram(name: "trigger_next_characteristic_descriptor_query", scope: !3, file: !3, line: 967, type: !629, isLocal: true, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1003)
!1003 = !{!1004, !1005}
!1004 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1002, file: !3, line: 967, type: !115)
!1005 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !1002, file: !3, line: 967, type: !109)
!1006 = distinct !DILocation(line: 1512, column: 9, scope: !375)
!1007 = !DILocation(line: 967, column: 101, scope: !1002, inlinedAt: !1006)
!1008 = !DILocation(line: 969, column: 5, scope: !1002, inlinedAt: !1006)
!1009 = !DILocation(line: 1518, column: 29, scope: !347)
!1010 = !DILocation(line: 1518, column: 9, scope: !347)
!1011 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 1520, column: 13, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1518, column: 48)
!1014 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1012)
!1015 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1012)
!1016 = !DILocation(line: 1521, column: 13, scope: !1013)
!1017 = !DILocation(line: 1522, column: 13, scope: !1013)
!1018 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 1524, column: 13, scope: !1013)
!1020 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1019)
!1021 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1019)
!1022 = !DILocation(line: 1525, column: 13, scope: !1013)
!1023 = !DILocation(line: 1526, column: 13, scope: !1013)
!1024 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 1528, column: 13, scope: !1013)
!1026 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1025)
!1027 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1025)
!1028 = !DILocation(line: 1529, column: 13, scope: !1013)
!1029 = !DILocation(line: 1530, column: 13, scope: !1013)
!1030 = !DILocation(line: 1537, column: 46, scope: !378)
!1031 = !DILocation(line: 1537, column: 18, scope: !378)
!1032 = !DILocation(line: 1539, column: 29, scope: !378)
!1033 = !DILocation(line: 1539, column: 9, scope: !378)
!1034 = !DILocation(line: 1541, column: 80, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !378, file: !3, line: 1539, column: 48)
!1036 = !DILocation(line: 1541, column: 99, scope: !1035)
!1037 = !DILocation(line: 1541, column: 144, scope: !1035)
!1038 = !{!324, !325, i64 60}
!1039 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1040, file: !3, line: 883, type: !115)
!1040 = distinct !DISubprogram(name: "report_gatt_long_characteristic_value_blob", scope: !3, file: !3, line: 883, type: !1041, isLocal: true, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !115, !109, !92, !109, !159}
!1043 = !{!1039, !1044, !1045, !1046, !1047, !1048}
!1044 = !DILocalVariable(name: "attribute_handle", arg: 2, scope: !1040, file: !3, line: 883, type: !109)
!1045 = !DILocalVariable(name: "blob", arg: 3, scope: !1040, file: !3, line: 883, type: !92)
!1046 = !DILocalVariable(name: "blob_length", arg: 4, scope: !1040, file: !3, line: 883, type: !109)
!1047 = !DILocalVariable(name: "value_offset", arg: 5, scope: !1040, file: !3, line: 883, type: !159)
!1048 = !DILocalVariable(name: "packet", scope: !1040, file: !3, line: 885, type: !92)
!1049 = !DILocation(line: 883, column: 71, scope: !1040, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 1541, column: 13, scope: !1035)
!1051 = !DILocation(line: 883, column: 92, scope: !1040, inlinedAt: !1050)
!1052 = !DILocation(line: 883, column: 119, scope: !1040, inlinedAt: !1050)
!1053 = !DILocation(line: 883, column: 134, scope: !1040, inlinedAt: !1050)
!1054 = !DILocation(line: 885, column: 125, scope: !1040, inlinedAt: !1050)
!1055 = !DILocation(line: 885, column: 23, scope: !1040, inlinedAt: !1050)
!1056 = !DILocation(line: 885, column: 14, scope: !1040, inlinedAt: !1050)
!1057 = !DILocation(line: 886, column: 10, scope: !1058, inlinedAt: !1050)
!1058 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 886, column: 9)
!1059 = !DILocation(line: 886, column: 9, scope: !1040, inlinedAt: !1050)
!1060 = !DILocation(line: 889, column: 32, scope: !1040, inlinedAt: !1050)
!1061 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 889, column: 5, scope: !1040, inlinedAt: !1050)
!1063 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !1062)
!1064 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !1062)
!1065 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !1062)
!1066 = !DILocation(line: 889, column: 62, scope: !1040, inlinedAt: !1050)
!1067 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !1062)
!1068 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !1062)
!1069 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1070, file: !3, line: 989, type: !115)
!1070 = distinct !DISubprogram(name: "trigger_next_blob_query", scope: !3, file: !3, line: 989, type: !1071, isLocal: true, isDefinition: true, scopeLine: 990, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !115, !121, !109}
!1073 = !{!1069, !1074, !1075, !1076}
!1074 = !DILocalVariable(name: "next_query_state", arg: 2, scope: !1070, file: !3, line: 989, type: !121)
!1075 = !DILocalVariable(name: "received_blob_length", arg: 3, scope: !1070, file: !3, line: 989, type: !109)
!1076 = !DILocalVariable(name: "max_blob_length", scope: !1070, file: !3, line: 992, type: !109)
!1077 = !DILocation(line: 989, column: 59, scope: !1070, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 1542, column: 13, scope: !1035)
!1079 = !DILocation(line: 989, column: 91, scope: !1070, inlinedAt: !1078)
!1080 = !DILocation(line: 989, column: 118, scope: !1070, inlinedAt: !1078)
!1081 = !DILocation(line: 992, column: 32, scope: !1070, inlinedAt: !1078)
!1082 = !DILocation(line: 992, column: 59, scope: !1070, inlinedAt: !1078)
!1083 = !DILocation(line: 992, column: 14, scope: !1070, inlinedAt: !1078)
!1084 = !DILocation(line: 993, column: 30, scope: !1085, inlinedAt: !1078)
!1085 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 993, column: 9)
!1086 = !DILocation(line: 993, column: 9, scope: !1070, inlinedAt: !1078)
!1087 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 994, column: 9, scope: !1089, inlinedAt: !1078)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 993, column: 49)
!1090 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1088)
!1091 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1088)
!1092 = !DILocation(line: 995, column: 9, scope: !1089, inlinedAt: !1078)
!1093 = !DILocation(line: 996, column: 9, scope: !1089, inlinedAt: !1078)
!1094 = !DILocation(line: 999, column: 34, scope: !1070, inlinedAt: !1078)
!1095 = !DILocation(line: 1000, column: 35, scope: !1070, inlinedAt: !1078)
!1096 = !DILocation(line: 1001, column: 1, scope: !1070, inlinedAt: !1078)
!1097 = !DILocation(line: 1546, column: 80, scope: !1035)
!1098 = !DILocation(line: 1547, column: 22, scope: !1035)
!1099 = !DILocation(line: 1548, column: 33, scope: !1035)
!1100 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1101, file: !3, line: 899, type: !115)
!1101 = distinct !DISubprogram(name: "report_gatt_long_characteristic_descriptor", scope: !3, file: !3, line: 899, type: !889, isLocal: true, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1102)
!1102 = !{!1100, !1103, !1104, !1105, !1106, !1107}
!1103 = !DILocalVariable(name: "descriptor_handle", arg: 2, scope: !1101, file: !3, line: 899, type: !109)
!1104 = !DILocalVariable(name: "blob", arg: 3, scope: !1101, file: !3, line: 899, type: !92)
!1105 = !DILocalVariable(name: "blob_length", arg: 4, scope: !1101, file: !3, line: 899, type: !109)
!1106 = !DILocalVariable(name: "value_offset", arg: 5, scope: !1101, file: !3, line: 899, type: !109)
!1107 = !DILocalVariable(name: "packet", scope: !1101, file: !3, line: 901, type: !92)
!1108 = !DILocation(line: 899, column: 71, scope: !1101, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 1546, column: 13, scope: !1035)
!1110 = !DILocation(line: 899, column: 92, scope: !1101, inlinedAt: !1109)
!1111 = !DILocation(line: 899, column: 120, scope: !1101, inlinedAt: !1109)
!1112 = !DILocation(line: 899, column: 135, scope: !1101, inlinedAt: !1109)
!1113 = !DILocation(line: 899, column: 157, scope: !1101, inlinedAt: !1109)
!1114 = !DILocation(line: 901, column: 130, scope: !1101, inlinedAt: !1109)
!1115 = !DILocation(line: 901, column: 23, scope: !1101, inlinedAt: !1109)
!1116 = !DILocation(line: 901, column: 14, scope: !1101, inlinedAt: !1109)
!1117 = !DILocation(line: 902, column: 10, scope: !1118, inlinedAt: !1109)
!1118 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 902, column: 9)
!1119 = !DILocation(line: 902, column: 9, scope: !1101, inlinedAt: !1109)
!1120 = !DILocation(line: 905, column: 32, scope: !1101, inlinedAt: !1109)
!1121 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 905, column: 5, scope: !1101, inlinedAt: !1109)
!1123 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !1122)
!1124 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !1122)
!1125 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !1122)
!1126 = !DILocation(line: 905, column: 62, scope: !1101, inlinedAt: !1109)
!1127 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !1122)
!1128 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !1122)
!1129 = !DILocation(line: 989, column: 59, scope: !1070, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 1549, column: 13, scope: !1035)
!1131 = !DILocation(line: 989, column: 91, scope: !1070, inlinedAt: !1130)
!1132 = !DILocation(line: 989, column: 118, scope: !1070, inlinedAt: !1130)
!1133 = !DILocation(line: 992, column: 32, scope: !1070, inlinedAt: !1130)
!1134 = !DILocation(line: 992, column: 59, scope: !1070, inlinedAt: !1130)
!1135 = !DILocation(line: 992, column: 14, scope: !1070, inlinedAt: !1130)
!1136 = !DILocation(line: 993, column: 30, scope: !1085, inlinedAt: !1130)
!1137 = !DILocation(line: 993, column: 9, scope: !1070, inlinedAt: !1130)
!1138 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 994, column: 9, scope: !1089, inlinedAt: !1130)
!1140 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1139)
!1141 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1139)
!1142 = !DILocation(line: 995, column: 9, scope: !1089, inlinedAt: !1130)
!1143 = !DILocation(line: 996, column: 9, scope: !1089, inlinedAt: !1130)
!1144 = !DILocation(line: 999, column: 34, scope: !1070, inlinedAt: !1130)
!1145 = !DILocation(line: 1000, column: 35, scope: !1070, inlinedAt: !1130)
!1146 = !DILocation(line: 1001, column: 1, scope: !1070, inlinedAt: !1130)
!1147 = !DILocation(line: 1558, column: 29, scope: !347)
!1148 = !DILocation(line: 1558, column: 9, scope: !347)
!1149 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 1560, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1558, column: 48)
!1152 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1150)
!1153 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1150)
!1154 = !DILocation(line: 1561, column: 17, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1561, column: 17)
!1156 = !DILocation(line: 1561, column: 17, scope: !1151)
!1157 = !DILocation(line: 1562, column: 17, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 1561, column: 59)
!1159 = !DILocation(line: 1563, column: 13, scope: !1158)
!1160 = !DILocation(line: 1564, column: 17, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 1563, column: 20)
!1162 = !DILocation(line: 1569, column: 44, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1568, column: 41)
!1164 = !DILocation(line: 1569, column: 25, scope: !1163)
!1165 = !DILocation(line: 1569, column: 42, scope: !1163)
!1166 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1167, file: !3, line: 977, type: !115)
!1167 = distinct !DISubprogram(name: "trigger_next_prepare_write_query", scope: !3, file: !3, line: 977, type: !1168, isLocal: true, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !115, !121, !121}
!1170 = !{!1166, !1171, !1172, !1173}
!1171 = !DILocalVariable(name: "next_query_state", arg: 2, scope: !1167, file: !3, line: 977, type: !121)
!1172 = !DILocalVariable(name: "done_state", arg: 3, scope: !1167, file: !3, line: 977, type: !121)
!1173 = !DILocalVariable(name: "next_blob_length", scope: !1167, file: !3, line: 980, type: !109)
!1174 = !DILocation(line: 977, column: 68, scope: !1167, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 1570, column: 13, scope: !1163)
!1176 = !DILocation(line: 977, column: 100, scope: !1167, inlinedAt: !1175)
!1177 = !DILocation(line: 977, column: 138, scope: !1167, inlinedAt: !1175)
!1178 = !DILocation(line: 979, column: 37, scope: !1167, inlinedAt: !1175)
!1179 = !DILocation(line: 979, column: 34, scope: !1167, inlinedAt: !1175)
!1180 = !DILocation(line: 980, column: 34, scope: !1167, inlinedAt: !1175)
!1181 = !DILocation(line: 980, column: 14, scope: !1167, inlinedAt: !1175)
!1182 = !DILocation(line: 982, column: 26, scope: !1183, inlinedAt: !1175)
!1183 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 982, column: 9)
!1184 = !DILocation(line: 982, column: 9, scope: !1167, inlinedAt: !1175)
!1185 = !DILocation(line: 1572, column: 13, scope: !1163)
!1186 = !DILocation(line: 1575, column: 44, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1574, column: 67)
!1188 = !DILocation(line: 1575, column: 25, scope: !1187)
!1189 = !DILocation(line: 1575, column: 42, scope: !1187)
!1190 = !DILocation(line: 977, column: 68, scope: !1167, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 1576, column: 13, scope: !1187)
!1192 = !DILocation(line: 977, column: 100, scope: !1167, inlinedAt: !1191)
!1193 = !DILocation(line: 977, column: 138, scope: !1167, inlinedAt: !1191)
!1194 = !DILocation(line: 979, column: 37, scope: !1167, inlinedAt: !1191)
!1195 = !DILocation(line: 979, column: 34, scope: !1167, inlinedAt: !1191)
!1196 = !DILocation(line: 980, column: 34, scope: !1167, inlinedAt: !1191)
!1197 = !DILocation(line: 980, column: 14, scope: !1167, inlinedAt: !1191)
!1198 = !DILocation(line: 982, column: 26, scope: !1183, inlinedAt: !1191)
!1199 = !DILocation(line: 982, column: 9, scope: !1167, inlinedAt: !1191)
!1200 = !DILocation(line: 1578, column: 13, scope: !1187)
!1201 = !DILocation(line: 1581, column: 17, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1581, column: 17)
!1203 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1580, column: 50)
!1204 = !DILocation(line: 1581, column: 17, scope: !1203)
!1205 = !DILocation(line: 1582, column: 48, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1581, column: 59)
!1207 = !DILocation(line: 1582, column: 29, scope: !1206)
!1208 = !DILocation(line: 1582, column: 46, scope: !1206)
!1209 = !DILocation(line: 977, column: 68, scope: !1167, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 1583, column: 17, scope: !1206)
!1211 = !DILocation(line: 977, column: 100, scope: !1167, inlinedAt: !1210)
!1212 = !DILocation(line: 977, column: 138, scope: !1167, inlinedAt: !1210)
!1213 = !DILocation(line: 979, column: 37, scope: !1167, inlinedAt: !1210)
!1214 = !DILocation(line: 979, column: 34, scope: !1167, inlinedAt: !1210)
!1215 = !DILocation(line: 980, column: 34, scope: !1167, inlinedAt: !1210)
!1216 = !DILocation(line: 980, column: 14, scope: !1167, inlinedAt: !1210)
!1217 = !DILocation(line: 982, column: 26, scope: !1183, inlinedAt: !1210)
!1218 = !DILocation(line: 982, column: 9, scope: !1167, inlinedAt: !1210)
!1219 = !DILocation(line: 1585, column: 17, scope: !1206)
!1220 = !DILocation(line: 1587, column: 43, scope: !1203)
!1221 = !DILocation(line: 1588, column: 13, scope: !1203)
!1222 = !DILocation(line: 1596, column: 29, scope: !347)
!1223 = !DILocation(line: 1596, column: 9, scope: !347)
!1224 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 1598, column: 13, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1596, column: 48)
!1227 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1225)
!1228 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1225)
!1229 = !DILocation(line: 1599, column: 13, scope: !1226)
!1230 = !DILocation(line: 1600, column: 13, scope: !1226)
!1231 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 1602, column: 13, scope: !1226)
!1233 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1232)
!1234 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1232)
!1235 = !DILocation(line: 1603, column: 13, scope: !1226)
!1236 = !DILocation(line: 1604, column: 13, scope: !1226)
!1237 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 1606, column: 13, scope: !1226)
!1239 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1238)
!1240 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1238)
!1241 = !DILocation(line: 1607, column: 13, scope: !1226)
!1242 = !DILocation(line: 1608, column: 13, scope: !1226)
!1243 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 1610, column: 13, scope: !1226)
!1245 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1244)
!1246 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1244)
!1247 = !DILocation(line: 1611, column: 13, scope: !1226)
!1248 = !DILocation(line: 1612, column: 13, scope: !1226)
!1249 = !DILocation(line: 1620, column: 29, scope: !347)
!1250 = !DILocation(line: 1620, column: 9, scope: !347)
!1251 = !DILocation(line: 1622, column: 62, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1620, column: 48)
!1253 = !DILocation(line: 1622, column: 78, scope: !1252)
!1254 = !DILocation(line: 1622, column: 13, scope: !1252)
!1255 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 1623, column: 13, scope: !1252)
!1257 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1256)
!1258 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1256)
!1259 = !DILocation(line: 1624, column: 13, scope: !1252)
!1260 = !DILocation(line: 1625, column: 13, scope: !1252)
!1261 = !DILocation(line: 1633, column: 17, scope: !347)
!1262 = !DILocation(line: 1633, column: 9, scope: !347)
!1263 = !DILocation(line: 1635, column: 33, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 1634, column: 45)
!1265 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1633, column: 28)
!1266 = !DILocation(line: 1635, column: 13, scope: !1264)
!1267 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 1640, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 1635, column: 52)
!1270 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1268)
!1271 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1268)
!1272 = !DILocation(line: 1641, column: 17, scope: !1269)
!1273 = !DILocation(line: 1642, column: 17, scope: !1269)
!1274 = !DILocation(line: 1645, column: 66, scope: !1269)
!1275 = !DILocation(line: 1645, column: 17, scope: !1269)
!1276 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 1646, column: 17, scope: !1269)
!1278 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1277)
!1279 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1277)
!1280 = !DILocation(line: 1647, column: 17, scope: !1269)
!1281 = !DILocation(line: 1648, column: 17, scope: !1269)
!1282 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 1650, column: 17, scope: !1269)
!1284 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1283)
!1285 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1283)
!1286 = !DILocation(line: 1651, column: 33, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1651, column: 21)
!1288 = !DILocation(line: 1651, column: 67, scope: !1287)
!1289 = !DILocation(line: 1651, column: 52, scope: !1287)
!1290 = !DILocation(line: 1651, column: 21, scope: !1269)
!1291 = !DILocation(line: 1652, column: 21, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1651, column: 87)
!1293 = !DILocation(line: 1653, column: 17, scope: !1292)
!1294 = !DILocation(line: 1654, column: 21, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1653, column: 24)
!1296 = !DILocation(line: 1658, column: 17, scope: !1269)
!1297 = !DILocation(line: 1659, column: 17, scope: !1269)
!1298 = !DILocation(line: 1664, column: 13, scope: !1265)
!1299 = !DILocation(line: 1665, column: 13, scope: !1265)
!1300 = !DILocation(line: 1670, column: 59, scope: !347)
!1301 = !DILocalVariable(name: "error_code", arg: 4, scope: !1302, file: !3, line: 1307, type: !93)
!1302 = distinct !DISubprogram(name: "gatt_client_send_rsp_error", scope: !3, file: !3, line: 1307, type: !1303, isLocal: true, isDefinition: true, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!159, !115, !93, !109, !93}
!1305 = !{!1306, !1307, !1308, !1301}
!1306 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1302, file: !3, line: 1307, type: !115)
!1307 = !DILocalVariable(name: "opcode", arg: 2, scope: !1302, file: !3, line: 1307, type: !93)
!1308 = !DILocalVariable(name: "att_handle", arg: 3, scope: !1302, file: !3, line: 1307, type: !109)
!1309 = !DILocation(line: 1307, column: 111, scope: !1302, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 1670, column: 9, scope: !651)
!1311 = !DILocation(line: 1309, column: 21, scope: !1312, inlinedAt: !1310)
!1312 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1309, column: 9)
!1313 = !{!324, !228, i64 116}
!1314 = !DILocation(line: 1309, column: 31, scope: !1312, inlinedAt: !1310)
!1315 = !DILocation(line: 1309, column: 9, scope: !1302, inlinedAt: !1310)
!1316 = !DILocation(line: 1312, column: 27, scope: !1302, inlinedAt: !1310)
!1317 = !DILocation(line: 1313, column: 5, scope: !1302, inlinedAt: !1310)
!1318 = !DILocation(line: 1313, column: 39, scope: !1302, inlinedAt: !1310)
!1319 = !DILocation(line: 1314, column: 5, scope: !1302, inlinedAt: !1310)
!1320 = !DILocation(line: 1314, column: 39, scope: !1302, inlinedAt: !1310)
!1321 = !DILocation(line: 1315, column: 41, scope: !1302, inlinedAt: !1310)
!1322 = !DILocation(line: 1315, column: 5, scope: !1302, inlinedAt: !1310)
!1323 = !DILocation(line: 1315, column: 39, scope: !1302, inlinedAt: !1310)
!1324 = !DILocation(line: 1316, column: 41, scope: !1302, inlinedAt: !1310)
!1325 = !DILocation(line: 1316, column: 5, scope: !1302, inlinedAt: !1310)
!1326 = !DILocation(line: 1316, column: 39, scope: !1302, inlinedAt: !1310)
!1327 = !DILocation(line: 1317, column: 5, scope: !1302, inlinedAt: !1310)
!1328 = !DILocation(line: 1317, column: 39, scope: !1302, inlinedAt: !1310)
!1329 = !DILocation(line: 1318, column: 17, scope: !1302, inlinedAt: !1310)
!1330 = !DILocation(line: 1318, column: 33, scope: !1302, inlinedAt: !1310)
!1331 = !{!324, !228, i64 127}
!1332 = !DILocation(line: 1319, column: 5, scope: !1302, inlinedAt: !1310)
!1333 = !DILocation(line: 1674, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !347, file: !3, line: 1674, column: 9)
!1335 = !DILocation(line: 1674, column: 9, scope: !347)
!1336 = !DILocation(line: 1674, column: 9, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1334, file: !3, discriminator: 1)
!1338 = !DILocation(line: 1677, column: 5, scope: !338)
!1339 = !DILocation(line: 1678, column: 1, scope: !338)
!1340 = !DILocation(line: 1678, column: 1, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !338, file: !3, discriminator: 2)
!1342 = distinct !DISubprogram(name: "gatt_client_is_ready", scope: !3, file: !3, line: 257, type: !1343, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!159, !112}
!1345 = !{!1346, !1347}
!1346 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1342, file: !3, line: 257, type: !112)
!1347 = !DILocalVariable(name: "context", scope: !1342, file: !3, line: 259, type: !115)
!1348 = !DILocation(line: 257, column: 43, scope: !1342)
!1349 = !DILocation(line: 259, column: 30, scope: !1342)
!1350 = !DILocation(line: 259, column: 20, scope: !1342)
!1351 = !DILocation(line: 260, column: 10, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 260, column: 9)
!1353 = !DILocation(line: 260, column: 9, scope: !1342)
!1354 = !DILocalVariable(name: "context", arg: 1, scope: !1355, file: !3, line: 252, type: !115)
!1355 = distinct !DISubprogram(name: "is_ready", scope: !3, file: !3, line: 252, type: !1356, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!159, !115}
!1358 = !{!1354}
!1359 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 263, column: 12, scope: !1342)
!1361 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !1360)
!1362 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !1360)
!1363 = !DILocation(line: 263, column: 5, scope: !1342)
!1364 = !DILocation(line: 264, column: 1, scope: !1342)
!1365 = distinct !DISubprogram(name: "provide_context_for_conn_handle", scope: !3, file: !3, line: 216, type: !1366, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!115, !112}
!1368 = !{!1369, !1370}
!1369 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1365, file: !3, line: 216, type: !112)
!1370 = !DILocalVariable(name: "context", scope: !1365, file: !3, line: 218, type: !115)
!1371 = !DILocation(line: 216, column: 72, scope: !1365)
!1372 = !DILocation(line: 201, column: 67, scope: !301, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 218, column: 30, scope: !1365)
!1374 = !DILocation(line: 203, column: 28, scope: !301, inlinedAt: !1373)
!1375 = !DILocation(line: 204, column: 5, scope: !315, inlinedAt: !1373)
!1376 = !DILocation(line: 206, column: 25, scope: !317, inlinedAt: !1373)
!1377 = !DILocation(line: 204, column: 77, scope: !319, inlinedAt: !1373)
!1378 = !DILocation(line: 206, column: 36, scope: !317, inlinedAt: !1373)
!1379 = !DILocation(line: 205, column: 37, scope: !307, inlinedAt: !1373)
!1380 = !DILocation(line: 218, column: 20, scope: !1365)
!1381 = !DILocation(line: 223, column: 15, scope: !1365)
!1382 = !DILocation(line: 224, column: 10, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 224, column: 9)
!1384 = !DILocation(line: 224, column: 9, scope: !1365)
!1385 = !DILocation(line: 228, column: 5, scope: !1365)
!1386 = !DILocation(line: 229, column: 14, scope: !1365)
!1387 = !DILocation(line: 229, column: 25, scope: !1365)
!1388 = !DILocation(line: 230, column: 14, scope: !1365)
!1389 = !DILocation(line: 230, column: 18, scope: !1365)
!1390 = !DILocation(line: 231, column: 14, scope: !1365)
!1391 = !DILocation(line: 231, column: 24, scope: !1365)
!1392 = !DILocation(line: 232, column: 14, scope: !1365)
!1393 = !DILocation(line: 232, column: 32, scope: !1365)
!1394 = !DILocation(line: 233, column: 51, scope: !1365)
!1395 = !DILocation(line: 233, column: 5, scope: !1365)
!1396 = !DILocation(line: 236, column: 17, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 236, column: 9)
!1398 = !DILocation(line: 236, column: 9, scope: !1397)
!1399 = !DILocation(line: 236, column: 9, scope: !1365)
!1400 = !DILocation(line: 237, column: 28, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 236, column: 44)
!1402 = !DILocation(line: 238, column: 5, scope: !1401)
!1403 = !DILocation(line: 240, column: 1, scope: !1365)
!1404 = distinct !DISubprogram(name: "gatt_client_get_mtu", scope: !3, file: !3, line: 266, type: !1405, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!93, !112, !150}
!1407 = !{!1408, !1409, !1410}
!1408 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1404, file: !3, line: 266, type: !112)
!1409 = !DILocalVariable(name: "mtu", arg: 2, scope: !1404, file: !3, line: 266, type: !150)
!1410 = !DILocalVariable(name: "context", scope: !1404, file: !3, line: 268, type: !115)
!1411 = !DILocation(line: 266, column: 46, scope: !1404)
!1412 = !DILocation(line: 266, column: 68, scope: !1404)
!1413 = !DILocation(line: 268, column: 30, scope: !1404)
!1414 = !DILocation(line: 268, column: 20, scope: !1404)
!1415 = !DILocation(line: 269, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 269, column: 9)
!1417 = !DILocation(line: 269, column: 17, scope: !1416)
!1418 = !DILocation(line: 269, column: 29, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1416, file: !3, discriminator: 1)
!1420 = !DILocation(line: 269, column: 39, scope: !1419)
!1421 = !DILocation(line: 269, column: 9, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1404, file: !3, discriminator: 1)
!1423 = !DILocation(line: 270, column: 25, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 269, column: 57)
!1425 = !DILocation(line: 271, column: 9, scope: !1424)
!1426 = !DILocation(line: 270, column: 14, scope: !1424)
!1427 = !{!325, !325, i64 0}
!1428 = !DILocation(line: 275, column: 1, scope: !1404)
!1429 = distinct !DISubprogram(name: "gatt_client_listen_for_characteristic_value_updates", scope: !3, file: !3, line: 627, type: !1430, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1443)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !99, !105, !112, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_characteristic_t", file: !1434, line: 34, baseType: !1435)
!1434 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/gatt.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 27, size: 208, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "start_handle", scope: !1435, file: !1434, line: 28, baseType: !109, size: 16)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "value_handle", scope: !1435, file: !1434, line: 29, baseType: !109, size: 16, offset: 16)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "end_handle", scope: !1435, file: !1434, line: 30, baseType: !109, size: 16, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1435, file: !1434, line: 31, baseType: !109, size: 16, offset: 48)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !1435, file: !1434, line: 32, baseType: !109, size: 16, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !1435, file: !1434, line: 33, baseType: !135, size: 128, offset: 80)
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DILocalVariable(name: "notification", arg: 1, scope: !1429, file: !3, line: 627, type: !99)
!1445 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !1429, file: !3, line: 627, type: !105)
!1446 = !DILocalVariable(name: "con_handle", arg: 3, scope: !1429, file: !3, line: 627, type: !112)
!1447 = !DILocalVariable(name: "characteristic", arg: 4, scope: !1429, file: !3, line: 627, type: !1432)
!1448 = !DILocation(line: 627, column: 86, scope: !1429)
!1449 = !DILocation(line: 627, column: 125, scope: !1429)
!1450 = !DILocation(line: 627, column: 158, scope: !1429)
!1451 = !DILocation(line: 627, column: 200, scope: !1429)
!1452 = !DILocation(line: 629, column: 19, scope: !1429)
!1453 = !DILocation(line: 629, column: 28, scope: !1429)
!1454 = !{!1455, !235, i64 4}
!1455 = !{!"gatt_client_notification", !237, i64 0, !235, i64 4, !325, i64 8, !325, i64 10}
!1456 = !DILocation(line: 630, column: 19, scope: !1429)
!1457 = !DILocation(line: 630, column: 30, scope: !1429)
!1458 = !{!1455, !325, i64 8}
!1459 = !DILocation(line: 632, column: 55, scope: !1429)
!1460 = !DILocation(line: 632, column: 5, scope: !1429)
!1461 = !DILocation(line: 633, column: 1, scope: !1429)
!1462 = distinct !DISubprogram(name: "gatt_client_stop_listening_for_characteristic_value_updates", scope: !3, file: !3, line: 635, type: !1463, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !99}
!1465 = !{!1466}
!1466 = !DILocalVariable(name: "notification", arg: 1, scope: !1462, file: !3, line: 635, type: !99)
!1467 = !DILocation(line: 635, column: 94, scope: !1462)
!1468 = !DILocation(line: 637, column: 58, scope: !1462)
!1469 = !DILocation(line: 637, column: 5, scope: !1462)
!1470 = !DILocation(line: 638, column: 1, scope: !1462)
!1471 = distinct !DISubprogram(name: "gatt_client_discover_primary_services", scope: !3, file: !3, line: 1720, type: !1472, isLocal: false, isDefinition: true, scopeLine: 1721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!93, !105, !112}
!1474 = !{!1475, !1476, !1477}
!1475 = !DILocalVariable(name: "callback", arg: 1, scope: !1471, file: !3, line: 1720, type: !105)
!1476 = !DILocalVariable(name: "con_handle", arg: 2, scope: !1471, file: !3, line: 1720, type: !112)
!1477 = !DILocalVariable(name: "peripheral", scope: !1471, file: !3, line: 1722, type: !115)
!1478 = !DILocation(line: 1720, column: 72, scope: !1471)
!1479 = !DILocation(line: 1720, column: 99, scope: !1471)
!1480 = !DILocation(line: 1722, column: 33, scope: !1471)
!1481 = !DILocation(line: 1722, column: 20, scope: !1471)
!1482 = !DILocation(line: 1723, column: 10, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1723, column: 9)
!1484 = !DILocation(line: 1723, column: 9, scope: !1471)
!1485 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 1726, column: 10, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1726, column: 9)
!1488 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !1486)
!1489 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !1486)
!1490 = !DILocation(line: 1726, column: 9, scope: !1471)
!1491 = !DILocation(line: 1730, column: 17, scope: !1471)
!1492 = !DILocation(line: 1730, column: 26, scope: !1471)
!1493 = !DILocation(line: 1731, column: 17, scope: !1471)
!1494 = !DILocation(line: 1731, column: 36, scope: !1471)
!1495 = !DILocation(line: 1732, column: 17, scope: !1471)
!1496 = !DILocation(line: 1732, column: 36, scope: !1471)
!1497 = !DILocation(line: 1733, column: 35, scope: !1471)
!1498 = !DILocation(line: 1734, column: 17, scope: !1471)
!1499 = !DILocation(line: 1734, column: 24, scope: !1471)
!1500 = !{!324, !325, i64 28}
!1501 = !DILocation(line: 1735, column: 5, scope: !1471)
!1502 = !DILocation(line: 1736, column: 5, scope: !1471)
!1503 = !DILocation(line: 1737, column: 1, scope: !1471)
!1504 = distinct !DISubprogram(name: "provide_context_for_conn_handle_and_start_timer", scope: !3, file: !3, line: 242, type: !1366, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1505)
!1505 = !{!1506, !1507}
!1506 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1504, file: !3, line: 242, type: !112)
!1507 = !DILocalVariable(name: "context", scope: !1504, file: !3, line: 244, type: !115)
!1508 = !DILocation(line: 242, column: 88, scope: !1504)
!1509 = !DILocation(line: 244, column: 30, scope: !1504)
!1510 = !DILocation(line: 244, column: 20, scope: !1504)
!1511 = !DILocation(line: 245, column: 10, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 245, column: 9)
!1513 = !DILocation(line: 245, column: 9, scope: !1504)
!1514 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1515, file: !3, line: 188, type: !115)
!1515 = distinct !DISubprogram(name: "gatt_client_timeout_start", scope: !3, file: !3, line: 188, type: !865, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1516)
!1516 = !{!1514}
!1517 = !DILocation(line: 188, column: 54, scope: !1515, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 248, column: 5, scope: !1504)
!1519 = !DILocation(line: 190, column: 5, scope: !1520, inlinedAt: !1518)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 190, column: 5)
!1521 = !DILocation(line: 190, column: 5, scope: !1515, inlinedAt: !1518)
!1522 = !DILocation(line: 190, column: 5, scope: !1523, inlinedAt: !1518)
!1523 = !DILexicalBlockFile(scope: !1520, file: !3, discriminator: 1)
!1524 = !DILocation(line: 191, column: 5, scope: !1515, inlinedAt: !1518)
!1525 = !DILocation(line: 193, column: 25, scope: !1515, inlinedAt: !1518)
!1526 = !DILocation(line: 193, column: 5, scope: !1515, inlinedAt: !1518)
!1527 = !DILocation(line: 194, column: 28, scope: !1515, inlinedAt: !1518)
!1528 = !DILocation(line: 194, column: 45, scope: !1515, inlinedAt: !1518)
!1529 = !DILocation(line: 195, column: 28, scope: !1515, inlinedAt: !1518)
!1530 = !DILocation(line: 195, column: 36, scope: !1515, inlinedAt: !1518)
!1531 = !{!324, !235, i64 108}
!1532 = !DILocation(line: 196, column: 28, scope: !1515, inlinedAt: !1518)
!1533 = !DILocation(line: 196, column: 36, scope: !1515, inlinedAt: !1518)
!1534 = !{!324, !235, i64 112}
!1535 = !DILocation(line: 197, column: 5, scope: !1515, inlinedAt: !1518)
!1536 = !DILocation(line: 249, column: 5, scope: !1504)
!1537 = !DILocation(line: 250, column: 1, scope: !1504)
!1538 = distinct !DISubprogram(name: "gatt_client_run", scope: !3, file: !3, line: 1034, type: !254, isLocal: true, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1539)
!1539 = !{!1540, !1541}
!1540 = !DILocalVariable(name: "it", scope: !1538, file: !3, line: 1040, type: !85)
!1541 = !DILocalVariable(name: "peripheral", scope: !1542, file: !3, line: 1043, type: !115)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1041, column: 83)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 1041, column: 5)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1041, column: 5)
!1545 = !DILocalVariable(name: "uuid16", scope: !1546, file: !3, line: 485, type: !153)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 484, column: 29)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 484, column: 9)
!1548 = distinct !DISubprogram(name: "send_gatt_by_uuid_request", scope: !3, file: !3, line: 482, type: !629, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1549)
!1549 = !{!1550, !1551, !1545, !1552}
!1550 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1548, file: !3, line: 482, type: !115)
!1551 = !DILocalVariable(name: "attribute_group_type", arg: 2, scope: !1548, file: !3, line: 482, type: !109)
!1552 = !DILocalVariable(name: "uuid128", scope: !1548, file: !3, line: 490, type: !135)
!1553 = !DILocation(line: 485, column: 17, scope: !1546, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 497, column: 5, scope: !1555, inlinedAt: !1558)
!1555 = distinct !DISubprogram(name: "send_gatt_services_by_uuid_request", scope: !3, file: !3, line: 495, type: !865, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1556)
!1556 = !{!1557}
!1557 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1555, file: !3, line: 495, type: !115)
!1558 = distinct !DILocation(line: 1113, column: 13, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1105, column: 48)
!1560 = !DILocation(line: 490, column: 13, scope: !1548, inlinedAt: !1554)
!1561 = !DILocation(line: 1036, column: 10, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1036, column: 9)
!1563 = !DILocation(line: 1036, column: 9, scope: !1538)
!1564 = !DILocation(line: 1040, column: 28, scope: !1538)
!1565 = !DILocation(line: 1041, column: 5, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1544, file: !3, discriminator: 1)
!1567 = !DILocation(line: 1043, column: 37, scope: !1542)
!1568 = !DILocation(line: 1043, column: 24, scope: !1542)
!1569 = !DILocation(line: 1045, column: 59, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1045, column: 13)
!1571 = !DILocation(line: 1045, column: 14, scope: !1570)
!1572 = !DILocation(line: 1045, column: 13, scope: !1542)
!1573 = !DILocation(line: 1046, column: 72, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 1045, column: 72)
!1575 = !DILocation(line: 1046, column: 13, scope: !1574)
!1576 = !DILocation(line: 1052, column: 29, scope: !1542)
!1577 = !DILocation(line: 1052, column: 9, scope: !1542)
!1578 = !DILocation(line: 1054, column: 35, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1053, column: 33)
!1580 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1052, column: 40)
!1581 = !DILocation(line: 1055, column: 50, scope: !1579)
!1582 = !DILocalVariable(name: "peripheral_handle", arg: 1, scope: !1583, file: !3, line: 439, type: !109)
!1583 = distinct !DISubprogram(name: "att_exchange_mtu_request", scope: !3, file: !3, line: 439, type: !1584, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !109}
!1586 = !{!1582, !1587, !1588}
!1587 = !DILocalVariable(name: "mtu", scope: !1583, file: !3, line: 441, type: !109)
!1588 = !DILocalVariable(name: "request", scope: !1583, file: !3, line: 444, type: !92)
!1589 = !DILocation(line: 439, column: 47, scope: !1583, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 1055, column: 13, scope: !1579)
!1591 = !DILocation(line: 441, column: 20, scope: !1583, inlinedAt: !1590)
!1592 = !DILocation(line: 441, column: 14, scope: !1583, inlinedAt: !1590)
!1593 = !DILocation(line: 443, column: 5, scope: !1583, inlinedAt: !1590)
!1594 = !DILocation(line: 444, column: 24, scope: !1583, inlinedAt: !1590)
!1595 = !DILocation(line: 444, column: 14, scope: !1583, inlinedAt: !1590)
!1596 = !DILocation(line: 445, column: 16, scope: !1583, inlinedAt: !1590)
!1597 = !DILocation(line: 446, column: 5, scope: !1583, inlinedAt: !1590)
!1598 = !DILocation(line: 447, column: 5, scope: !1583, inlinedAt: !1590)
!1599 = !DILocation(line: 448, column: 5, scope: !1600, inlinedAt: !1590)
!1600 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 448, column: 5)
!1601 = !DILocation(line: 448, column: 5, scope: !1583, inlinedAt: !1590)
!1602 = !DILocation(line: 448, column: 5, scope: !1603, inlinedAt: !1590)
!1603 = !DILexicalBlockFile(scope: !1600, file: !3, discriminator: 1)
!1604 = !DILocation(line: 1063, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1063, column: 13)
!1606 = !DILocation(line: 1063, column: 13, scope: !1580)
!1607 = !DILocation(line: 1063, column: 13, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1605, file: !3, discriminator: 1)
!1609 = !DILocation(line: 1064, column: 35, scope: !1580)
!1610 = !DILocation(line: 1065, column: 51, scope: !1580)
!1611 = !DILocalVariable(name: "peripheral_handle", arg: 1, scope: !1612, file: !3, line: 451, type: !109)
!1612 = distinct !DISubprogram(name: "att_exchange_mtu_response", scope: !3, file: !3, line: 451, type: !1584, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1613)
!1613 = !{!1611, !1614, !1615}
!1614 = !DILocalVariable(name: "mtu", scope: !1612, file: !3, line: 453, type: !109)
!1615 = !DILocalVariable(name: "request", scope: !1612, file: !3, line: 456, type: !92)
!1616 = !DILocation(line: 451, column: 48, scope: !1612, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 1065, column: 13, scope: !1580)
!1618 = !DILocation(line: 453, column: 20, scope: !1612, inlinedAt: !1617)
!1619 = !DILocation(line: 453, column: 14, scope: !1612, inlinedAt: !1617)
!1620 = !DILocation(line: 455, column: 5, scope: !1612, inlinedAt: !1617)
!1621 = !DILocation(line: 456, column: 24, scope: !1612, inlinedAt: !1617)
!1622 = !DILocation(line: 456, column: 14, scope: !1612, inlinedAt: !1617)
!1623 = !DILocation(line: 457, column: 16, scope: !1612, inlinedAt: !1617)
!1624 = !DILocation(line: 458, column: 5, scope: !1612, inlinedAt: !1617)
!1625 = !DILocation(line: 459, column: 5, scope: !1612, inlinedAt: !1617)
!1626 = !DILocation(line: 460, column: 5, scope: !1627, inlinedAt: !1617)
!1627 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 460, column: 5)
!1628 = !DILocation(line: 460, column: 5, scope: !1612, inlinedAt: !1617)
!1629 = !DILocation(line: 460, column: 5, scope: !1630, inlinedAt: !1617)
!1630 = !DILexicalBlockFile(scope: !1627, file: !3, discriminator: 1)
!1631 = !DILocation(line: 1072, column: 29, scope: !1542)
!1632 = !DILocation(line: 1072, column: 9, scope: !1542)
!1633 = !DILocation(line: 1074, column: 59, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1074, column: 17)
!1635 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1072, column: 40)
!1636 = !DILocation(line: 1074, column: 83, scope: !1634)
!1637 = !DILocation(line: 1074, column: 71, scope: !1634)
!1638 = !DILocation(line: 1074, column: 115, scope: !1634)
!1639 = !DILocalVariable(name: "peripheral_handle", arg: 1, scope: !1640, file: !3, line: 1018, type: !109)
!1640 = distinct !DISubprogram(name: "gatt_client_send_packet_data", scope: !3, file: !3, line: 1018, type: !1641, isLocal: true, isDefinition: true, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!159, !109, !92, !109}
!1643 = !{!1639, !1644, !1645, !1646, !1647}
!1644 = !DILocalVariable(name: "packet", arg: 2, scope: !1640, file: !3, line: 1018, type: !92)
!1645 = !DILocalVariable(name: "size", arg: 3, scope: !1640, file: !3, line: 1018, type: !109)
!1646 = !DILocalVariable(name: "ret", scope: !1640, file: !3, line: 1020, type: !159)
!1647 = !DILocalVariable(name: "request", scope: !1648, file: !3, line: 1023, type: !92)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1021, column: 40)
!1649 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1021, column: 9)
!1650 = !DILocation(line: 1018, column: 50, scope: !1640, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 1074, column: 18, scope: !1634)
!1652 = !DILocation(line: 1018, column: 78, scope: !1640, inlinedAt: !1651)
!1653 = !DILocation(line: 1018, column: 95, scope: !1640, inlinedAt: !1651)
!1654 = !DILocation(line: 1020, column: 9, scope: !1640, inlinedAt: !1651)
!1655 = !DILocation(line: 1021, column: 9, scope: !1649, inlinedAt: !1651)
!1656 = !DILocation(line: 1021, column: 9, scope: !1640, inlinedAt: !1651)
!1657 = !DILocation(line: 1074, column: 103, scope: !1634)
!1658 = !DILocation(line: 1023, column: 28, scope: !1648, inlinedAt: !1651)
!1659 = !DILocation(line: 1023, column: 18, scope: !1648, inlinedAt: !1651)
!1660 = !DILocation(line: 1025, column: 25, scope: !1648, inlinedAt: !1651)
!1661 = !DILocation(line: 1025, column: 9, scope: !1648, inlinedAt: !1651)
!1662 = !DILocation(line: 1027, column: 9, scope: !1648, inlinedAt: !1651)
!1663 = !DILocation(line: 1028, column: 15, scope: !1648, inlinedAt: !1651)
!1664 = !DILocation(line: 1074, column: 18, scope: !1634)
!1665 = !DILocation(line: 1074, column: 17, scope: !1635)
!1666 = !DILocation(line: 1075, column: 39, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 1074, column: 133)
!1668 = !DILocation(line: 1083, column: 25, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1083, column: 13)
!1670 = !DILocation(line: 1083, column: 13, scope: !1669)
!1671 = !DILocation(line: 1083, column: 13, scope: !1542)
!1672 = !DILocation(line: 1084, column: 43, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 1083, column: 44)
!1674 = !DILocation(line: 1085, column: 42, scope: !1673)
!1675 = !DILocalVariable(name: "peripheral_handle", arg: 1, scope: !1676, file: !3, line: 278, type: !109)
!1676 = distinct !DISubprogram(name: "att_confirmation", scope: !3, file: !3, line: 278, type: !1584, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1677)
!1677 = !{!1675, !1678}
!1678 = !DILocalVariable(name: "request", scope: !1676, file: !3, line: 281, type: !92)
!1679 = !DILocation(line: 278, column: 39, scope: !1676, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 1085, column: 13, scope: !1673)
!1681 = !DILocation(line: 280, column: 5, scope: !1676, inlinedAt: !1680)
!1682 = !DILocation(line: 281, column: 24, scope: !1676, inlinedAt: !1680)
!1683 = !DILocation(line: 281, column: 14, scope: !1676, inlinedAt: !1680)
!1684 = !DILocation(line: 282, column: 16, scope: !1676, inlinedAt: !1680)
!1685 = !DILocation(line: 283, column: 5, scope: !1676, inlinedAt: !1680)
!1686 = !DILocation(line: 1090, column: 29, scope: !1542)
!1687 = !DILocation(line: 1090, column: 9, scope: !1542)
!1688 = !DILocation(line: 1093, column: 29, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 1093, column: 17)
!1690 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1090, column: 48)
!1691 = !{!324, !325, i64 62}
!1692 = !DILocation(line: 1093, column: 17, scope: !1689)
!1693 = !DILocation(line: 1093, column: 49, scope: !1689)
!1694 = !DILocation(line: 1093, column: 76, scope: !1689)
!1695 = !DILocation(line: 1093, column: 46, scope: !1689)
!1696 = !DILocation(line: 1093, column: 17, scope: !1690)
!1697 = !DILocation(line: 1096, column: 13, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 1096, column: 13)
!1699 = !DILocation(line: 1096, column: 13, scope: !1690)
!1700 = !DILocation(line: 1096, column: 13, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1698, file: !3, discriminator: 1)
!1702 = !DILocation(line: 1096, column: 13, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1698, file: !3, discriminator: 2)
!1704 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 1097, column: 13, scope: !1690)
!1706 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !1705)
!1707 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !1705)
!1708 = !DILocation(line: 1098, column: 13, scope: !1690)
!1709 = !DILocation(line: 1105, column: 29, scope: !1542)
!1710 = !DILocation(line: 1105, column: 9, scope: !1542)
!1711 = !DILocation(line: 1107, column: 43, scope: !1559)
!1712 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1713, file: !3, line: 477, type: !115)
!1713 = distinct !DISubprogram(name: "send_gatt_services_request", scope: !3, file: !3, line: 477, type: !865, isLocal: true, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1714)
!1714 = !{!1712}
!1715 = !DILocation(line: 477, column: 55, scope: !1713, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 1108, column: 13, scope: !1559)
!1717 = !DILocation(line: 479, column: 121, scope: !1713, inlinedAt: !1716)
!1718 = !DILocation(line: 479, column: 145, scope: !1713, inlinedAt: !1716)
!1719 = !DILocation(line: 479, column: 177, scope: !1713, inlinedAt: !1716)
!1720 = !DILocation(line: 479, column: 5, scope: !1713, inlinedAt: !1716)
!1721 = !DILocation(line: 1112, column: 43, scope: !1559)
!1722 = !DILocation(line: 495, column: 63, scope: !1555, inlinedAt: !1558)
!1723 = !DILocation(line: 482, column: 75, scope: !1548, inlinedAt: !1554)
!1724 = !DILocation(line: 484, column: 21, scope: !1547, inlinedAt: !1554)
!1725 = !DILocation(line: 484, column: 9, scope: !1547, inlinedAt: !1554)
!1726 = !DILocation(line: 484, column: 9, scope: !1548, inlinedAt: !1554)
!1727 = !DILocation(line: 485, column: 9, scope: !1546, inlinedAt: !1554)
!1728 = !DILocation(line: 486, column: 9, scope: !1546, inlinedAt: !1554)
!1729 = !DILocation(line: 487, column: 106, scope: !1546, inlinedAt: !1554)
!1730 = !DILocation(line: 487, column: 130, scope: !1546, inlinedAt: !1554)
!1731 = !DILocation(line: 487, column: 162, scope: !1546, inlinedAt: !1554)
!1732 = !DILocation(line: 487, column: 9, scope: !1546, inlinedAt: !1554)
!1733 = !DILocation(line: 489, column: 5, scope: !1547, inlinedAt: !1554)
!1734 = !DILocation(line: 490, column: 5, scope: !1548, inlinedAt: !1554)
!1735 = !DILocation(line: 491, column: 17, scope: !1548, inlinedAt: !1554)
!1736 = !DILocation(line: 491, column: 5, scope: !1548, inlinedAt: !1554)
!1737 = !DILocation(line: 492, column: 102, scope: !1548, inlinedAt: !1554)
!1738 = !DILocation(line: 492, column: 126, scope: !1548, inlinedAt: !1554)
!1739 = !DILocation(line: 492, column: 158, scope: !1548, inlinedAt: !1554)
!1740 = !DILocation(line: 492, column: 5, scope: !1548, inlinedAt: !1554)
!1741 = !DILocation(line: 493, column: 1, scope: !1548, inlinedAt: !1554)
!1742 = !DILocation(line: 1117, column: 43, scope: !1559)
!1743 = !DILocation(line: 1118, column: 13, scope: !1559)
!1744 = !DILocation(line: 1122, column: 43, scope: !1559)
!1745 = !DILocation(line: 1123, column: 13, scope: !1559)
!1746 = !DILocation(line: 1127, column: 43, scope: !1559)
!1747 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1748, file: !3, line: 524, type: !115)
!1748 = distinct !DISubprogram(name: "send_gatt_characteristic_descriptor_request", scope: !3, file: !3, line: 524, type: !865, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1749)
!1749 = !{!1747}
!1750 = !DILocation(line: 524, column: 72, scope: !1748, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 1128, column: 13, scope: !1559)
!1752 = !DILocation(line: 526, column: 76, scope: !1748, inlinedAt: !1751)
!1753 = !DILocation(line: 526, column: 100, scope: !1748, inlinedAt: !1751)
!1754 = !DILocation(line: 526, column: 132, scope: !1748, inlinedAt: !1751)
!1755 = !DILocalVariable(name: "request_type", arg: 1, scope: !1756, file: !3, line: 287, type: !109)
!1756 = distinct !DISubprogram(name: "att_find_information_request", scope: !3, file: !3, line: 287, type: !1757, isLocal: true, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !109, !109, !109, !109}
!1759 = !{!1755, !1760, !1761, !1762, !1763}
!1760 = !DILocalVariable(name: "peripheral_handle", arg: 2, scope: !1756, file: !3, line: 287, type: !109)
!1761 = !DILocalVariable(name: "start_handle", arg: 3, scope: !1756, file: !3, line: 287, type: !109)
!1762 = !DILocalVariable(name: "end_handle", arg: 4, scope: !1756, file: !3, line: 287, type: !109)
!1763 = !DILocalVariable(name: "request", scope: !1756, file: !3, line: 290, type: !92)
!1764 = !DILocation(line: 287, column: 51, scope: !1756, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 526, column: 5, scope: !1748, inlinedAt: !1751)
!1766 = !DILocation(line: 289, column: 5, scope: !1756, inlinedAt: !1765)
!1767 = !DILocation(line: 290, column: 24, scope: !1756, inlinedAt: !1765)
!1768 = !DILocation(line: 290, column: 14, scope: !1756, inlinedAt: !1765)
!1769 = !DILocation(line: 291, column: 16, scope: !1756, inlinedAt: !1765)
!1770 = !DILocation(line: 292, column: 5, scope: !1756, inlinedAt: !1765)
!1771 = !DILocation(line: 293, column: 5, scope: !1756, inlinedAt: !1765)
!1772 = !DILocation(line: 295, column: 5, scope: !1756, inlinedAt: !1765)
!1773 = !DILocation(line: 1132, column: 43, scope: !1559)
!1774 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1775, file: !3, line: 505, type: !115)
!1775 = distinct !DISubprogram(name: "send_gatt_included_service_request", scope: !3, file: !3, line: 505, type: !865, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1776)
!1776 = !{!1774}
!1777 = !DILocation(line: 505, column: 63, scope: !1775, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 1133, column: 13, scope: !1559)
!1779 = !DILocation(line: 507, column: 115, scope: !1775, inlinedAt: !1778)
!1780 = !DILocation(line: 507, column: 139, scope: !1775, inlinedAt: !1778)
!1781 = !DILocation(line: 507, column: 171, scope: !1775, inlinedAt: !1778)
!1782 = !DILocation(line: 507, column: 5, scope: !1775, inlinedAt: !1778)
!1783 = !DILocation(line: 1137, column: 43, scope: !1559)
!1784 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1785, file: !3, line: 500, type: !115)
!1785 = distinct !DISubprogram(name: "send_gatt_included_service_uuid_request", scope: !3, file: !3, line: 500, type: !865, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1786)
!1786 = !{!1784}
!1787 = !DILocation(line: 500, column: 68, scope: !1785, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 1138, column: 13, scope: !1559)
!1789 = !DILocation(line: 502, column: 52, scope: !1785, inlinedAt: !1788)
!1790 = !DILocation(line: 502, column: 76, scope: !1785, inlinedAt: !1788)
!1791 = !DILocation(line: 502, column: 5, scope: !1785, inlinedAt: !1788)
!1792 = !DILocation(line: 1142, column: 43, scope: !1559)
!1793 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1794, file: !3, line: 529, type: !115)
!1794 = distinct !DISubprogram(name: "send_gatt_read_characteristic_value_request", scope: !3, file: !3, line: 529, type: !865, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1795)
!1795 = !{!1793}
!1796 = !DILocation(line: 529, column: 72, scope: !1794, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 1143, column: 13, scope: !1559)
!1798 = !DILocation(line: 531, column: 52, scope: !1794, inlinedAt: !1797)
!1799 = !DILocation(line: 531, column: 76, scope: !1794, inlinedAt: !1797)
!1800 = !DILocation(line: 531, column: 5, scope: !1794, inlinedAt: !1797)
!1801 = !DILocation(line: 1147, column: 43, scope: !1559)
!1802 = !DILocation(line: 1148, column: 13, scope: !1559)
!1803 = !DILocation(line: 1152, column: 43, scope: !1559)
!1804 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1805, file: !3, line: 534, type: !115)
!1805 = distinct !DISubprogram(name: "send_gatt_read_by_type_request", scope: !3, file: !3, line: 534, type: !865, isLocal: true, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1806)
!1806 = !{!1804}
!1807 = !DILocation(line: 534, column: 59, scope: !1805, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 1153, column: 13, scope: !1559)
!1809 = !DILocation(line: 536, column: 21, scope: !1810, inlinedAt: !1808)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 536, column: 9)
!1811 = !DILocation(line: 536, column: 9, scope: !1810, inlinedAt: !1808)
!1812 = !DILocation(line: 539, column: 114, scope: !1813, inlinedAt: !1808)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 538, column: 12)
!1814 = !DILocation(line: 539, column: 138, scope: !1813, inlinedAt: !1808)
!1815 = !DILocation(line: 539, column: 170, scope: !1813, inlinedAt: !1808)
!1816 = !DILocation(line: 536, column: 9, scope: !1805, inlinedAt: !1808)
!1817 = !DILocation(line: 537, column: 9, scope: !1818, inlinedAt: !1808)
!1818 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 536, column: 29)
!1819 = !DILocation(line: 538, column: 5, scope: !1818, inlinedAt: !1808)
!1820 = !DILocation(line: 539, column: 81, scope: !1813, inlinedAt: !1808)
!1821 = !DILocation(line: 539, column: 9, scope: !1813, inlinedAt: !1808)
!1822 = !DILocation(line: 1157, column: 43, scope: !1559)
!1823 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1824, file: !3, line: 548, type: !115)
!1824 = distinct !DISubprogram(name: "send_gatt_read_multiple_request", scope: !3, file: !3, line: 548, type: !865, isLocal: true, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1825)
!1825 = !{!1823}
!1826 = !DILocation(line: 548, column: 60, scope: !1824, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 1158, column: 13, scope: !1559)
!1828 = !DILocation(line: 550, column: 43, scope: !1824, inlinedAt: !1827)
!1829 = !DILocation(line: 550, column: 67, scope: !1824, inlinedAt: !1827)
!1830 = !{!324, !325, i64 68}
!1831 = !DILocation(line: 550, column: 107, scope: !1824, inlinedAt: !1827)
!1832 = !{!324, !235, i64 72}
!1833 = !DILocalVariable(name: "peripheral_handle", arg: 1, scope: !1834, file: !3, line: 375, type: !109)
!1834 = distinct !DISubprogram(name: "att_read_multiple_request", scope: !3, file: !3, line: 375, type: !1835, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !109, !109, !150}
!1837 = !{!1833, !1838, !1839, !1840, !1841, !1842}
!1838 = !DILocalVariable(name: "num_value_handles", arg: 2, scope: !1834, file: !3, line: 375, type: !109)
!1839 = !DILocalVariable(name: "value_handles", arg: 3, scope: !1834, file: !3, line: 375, type: !150)
!1840 = !DILocalVariable(name: "request", scope: !1834, file: !3, line: 378, type: !92)
!1841 = !DILocalVariable(name: "i", scope: !1834, file: !3, line: 380, type: !159)
!1842 = !DILocalVariable(name: "offset", scope: !1834, file: !3, line: 381, type: !159)
!1843 = !DILocation(line: 375, column: 48, scope: !1834, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 550, column: 5, scope: !1824, inlinedAt: !1827)
!1845 = !DILocation(line: 375, column: 76, scope: !1834, inlinedAt: !1844)
!1846 = !DILocation(line: 375, column: 105, scope: !1834, inlinedAt: !1844)
!1847 = !DILocation(line: 377, column: 5, scope: !1834, inlinedAt: !1844)
!1848 = !DILocation(line: 378, column: 24, scope: !1834, inlinedAt: !1844)
!1849 = !DILocation(line: 378, column: 14, scope: !1834, inlinedAt: !1844)
!1850 = !DILocation(line: 379, column: 16, scope: !1834, inlinedAt: !1844)
!1851 = !DILocation(line: 381, column: 9, scope: !1834, inlinedAt: !1844)
!1852 = !DILocation(line: 380, column: 9, scope: !1834, inlinedAt: !1844)
!1853 = !DILocation(line: 382, column: 21, scope: !1854, inlinedAt: !1844)
!1854 = !DILexicalBlockFile(scope: !1855, file: !3, discriminator: 1)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 382, column: 5)
!1856 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 382, column: 5)
!1857 = !DILocation(line: 382, column: 19, scope: !1854, inlinedAt: !1844)
!1858 = !DILocation(line: 382, column: 5, scope: !1859, inlinedAt: !1844)
!1859 = !DILexicalBlockFile(scope: !1856, file: !3, discriminator: 1)
!1860 = !DILocation(line: 383, column: 49, scope: !1861, inlinedAt: !1844)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 382, column: 45)
!1862 = !DILocation(line: 383, column: 9, scope: !1861, inlinedAt: !1844)
!1863 = !DILocation(line: 384, column: 16, scope: !1861, inlinedAt: !1844)
!1864 = !DILocation(line: 382, column: 41, scope: !1865, inlinedAt: !1844)
!1865 = !DILexicalBlockFile(scope: !1855, file: !3, discriminator: 2)
!1866 = distinct !{!1866, !1867, !1868}
!1867 = !DILocation(line: 382, column: 5, scope: !1856)
!1868 = !DILocation(line: 385, column: 5, scope: !1856)
!1869 = !DILocation(line: 386, column: 5, scope: !1834, inlinedAt: !1844)
!1870 = !DILocation(line: 1159, column: 13, scope: !1559)
!1871 = !DILocation(line: 1162, column: 43, scope: !1559)
!1872 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1873, file: !3, line: 553, type: !115)
!1873 = distinct !DISubprogram(name: "send_gatt_write_attribute_value_request", scope: !3, file: !3, line: 553, type: !865, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1874)
!1874 = !{!1872}
!1875 = !DILocation(line: 553, column: 68, scope: !1873, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 1163, column: 13, scope: !1559)
!1877 = !DILocation(line: 555, column: 54, scope: !1873, inlinedAt: !1876)
!1878 = !DILocation(line: 555, column: 78, scope: !1873, inlinedAt: !1876)
!1879 = !DILocation(line: 555, column: 108, scope: !1873, inlinedAt: !1876)
!1880 = !DILocation(line: 555, column: 138, scope: !1873, inlinedAt: !1876)
!1881 = !{!324, !235, i64 64}
!1882 = !DILocation(line: 555, column: 5, scope: !1873, inlinedAt: !1876)
!1883 = !DILocation(line: 1167, column: 43, scope: !1559)
!1884 = !DILocation(line: 1168, column: 13, scope: !1559)
!1885 = !DILocation(line: 1172, column: 43, scope: !1559)
!1886 = !DILocation(line: 1173, column: 13, scope: !1559)
!1887 = !DILocation(line: 1177, column: 43, scope: !1559)
!1888 = !DILocation(line: 1178, column: 13, scope: !1559)
!1889 = !DILocation(line: 1182, column: 43, scope: !1559)
!1890 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1891, file: !3, line: 568, type: !115)
!1891 = distinct !DISubprogram(name: "send_gatt_execute_write_request", scope: !3, file: !3, line: 568, type: !865, isLocal: true, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1892)
!1892 = !{!1890}
!1893 = !DILocation(line: 568, column: 60, scope: !1891, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 1183, column: 13, scope: !1559)
!1895 = !DILocation(line: 570, column: 70, scope: !1891, inlinedAt: !1894)
!1896 = !DILocation(line: 570, column: 5, scope: !1891, inlinedAt: !1894)
!1897 = !DILocation(line: 1187, column: 43, scope: !1559)
!1898 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1899, file: !3, line: 573, type: !115)
!1899 = distinct !DISubprogram(name: "send_gatt_cancel_prepared_write_request", scope: !3, file: !3, line: 573, type: !865, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1900)
!1900 = !{!1898}
!1901 = !DILocation(line: 573, column: 68, scope: !1899, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 1188, column: 13, scope: !1559)
!1903 = !DILocation(line: 575, column: 70, scope: !1899, inlinedAt: !1902)
!1904 = !DILocation(line: 575, column: 5, scope: !1899, inlinedAt: !1902)
!1905 = !DILocation(line: 1192, column: 43, scope: !1559)
!1906 = !DILocation(line: 573, column: 68, scope: !1899, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 1193, column: 13, scope: !1559)
!1908 = !DILocation(line: 575, column: 70, scope: !1899, inlinedAt: !1907)
!1909 = !DILocation(line: 575, column: 5, scope: !1899, inlinedAt: !1907)
!1910 = !DILocation(line: 1197, column: 43, scope: !1559)
!1911 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1912, file: !3, line: 578, type: !115)
!1912 = distinct !DISubprogram(name: "send_gatt_read_client_characteristic_configuration_request", scope: !3, file: !3, line: 578, type: !865, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1913)
!1913 = !{!1911}
!1914 = !DILocation(line: 578, column: 87, scope: !1912, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 1198, column: 13, scope: !1559)
!1916 = !DILocation(line: 580, column: 131, scope: !1912, inlinedAt: !1915)
!1917 = !DILocation(line: 580, column: 155, scope: !1912, inlinedAt: !1915)
!1918 = !DILocation(line: 580, column: 187, scope: !1912, inlinedAt: !1915)
!1919 = !DILocation(line: 580, column: 5, scope: !1912, inlinedAt: !1915)
!1920 = !DILocation(line: 1202, column: 43, scope: !1559)
!1921 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1922, file: !3, line: 583, type: !115)
!1922 = distinct !DISubprogram(name: "send_gatt_read_characteristic_descriptor_request", scope: !3, file: !3, line: 583, type: !865, isLocal: true, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1923)
!1923 = !{!1921}
!1924 = !DILocation(line: 583, column: 77, scope: !1922, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 1203, column: 13, scope: !1559)
!1926 = !DILocation(line: 585, column: 52, scope: !1922, inlinedAt: !1925)
!1927 = !DILocation(line: 585, column: 76, scope: !1922, inlinedAt: !1925)
!1928 = !DILocation(line: 585, column: 5, scope: !1922, inlinedAt: !1925)
!1929 = !DILocation(line: 1207, column: 43, scope: !1559)
!1930 = !DILocation(line: 1208, column: 13, scope: !1559)
!1931 = !DILocation(line: 1212, column: 43, scope: !1559)
!1932 = !DILocation(line: 553, column: 68, scope: !1873, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 1213, column: 13, scope: !1559)
!1934 = !DILocation(line: 555, column: 54, scope: !1873, inlinedAt: !1933)
!1935 = !DILocation(line: 555, column: 78, scope: !1873, inlinedAt: !1933)
!1936 = !DILocation(line: 555, column: 108, scope: !1873, inlinedAt: !1933)
!1937 = !DILocation(line: 555, column: 138, scope: !1873, inlinedAt: !1933)
!1938 = !DILocation(line: 555, column: 5, scope: !1873, inlinedAt: !1933)
!1939 = !DILocation(line: 1217, column: 43, scope: !1559)
!1940 = !DILocalVariable(name: "peripheral", arg: 1, scope: !1941, file: !3, line: 558, type: !115)
!1941 = distinct !DISubprogram(name: "send_gatt_write_client_characteristic_configuration_request", scope: !3, file: !3, line: 558, type: !865, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1942)
!1942 = !{!1940}
!1943 = !DILocation(line: 558, column: 88, scope: !1941, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 1218, column: 13, scope: !1559)
!1945 = !DILocation(line: 560, column: 54, scope: !1941, inlinedAt: !1944)
!1946 = !DILocation(line: 560, column: 78, scope: !1941, inlinedAt: !1944)
!1947 = !DILocation(line: 560, column: 125, scope: !1941, inlinedAt: !1944)
!1948 = !DILocation(line: 560, column: 5, scope: !1941, inlinedAt: !1944)
!1949 = !DILocation(line: 1222, column: 43, scope: !1559)
!1950 = !DILocation(line: 1223, column: 13, scope: !1559)
!1951 = !DILocation(line: 1227, column: 43, scope: !1559)
!1952 = !DILocation(line: 568, column: 60, scope: !1891, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 1228, column: 13, scope: !1559)
!1954 = !DILocation(line: 570, column: 70, scope: !1891, inlinedAt: !1953)
!1955 = !DILocation(line: 570, column: 5, scope: !1891, inlinedAt: !1953)
!1956 = !DILocation(line: 1041, column: 77, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1543, file: !3, discriminator: 2)
!1958 = distinct !{!1958, !1959, !1960}
!1959 = !DILocation(line: 1041, column: 5, scope: !1544)
!1960 = !DILocation(line: 1259, column: 5, scope: !1544)
!1961 = !DILocation(line: 1261, column: 1, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1538, file: !3, discriminator: 2)
!1963 = distinct !DISubprogram(name: "gatt_client_discover_primary_services_by_uuid16", scope: !3, file: !3, line: 1740, type: !1964, isLocal: false, isDefinition: true, scopeLine: 1741, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!93, !105, !112, !109}
!1966 = !{!1967, !1968, !1969, !1970}
!1967 = !DILocalVariable(name: "callback", arg: 1, scope: !1963, file: !3, line: 1740, type: !105)
!1968 = !DILocalVariable(name: "con_handle", arg: 2, scope: !1963, file: !3, line: 1740, type: !112)
!1969 = !DILocalVariable(name: "uuid16", arg: 3, scope: !1963, file: !3, line: 1740, type: !109)
!1970 = !DILocalVariable(name: "peripheral", scope: !1963, file: !3, line: 1742, type: !115)
!1971 = !DILocation(line: 1740, column: 82, scope: !1963)
!1972 = !DILocation(line: 1740, column: 109, scope: !1963)
!1973 = !DILocation(line: 1740, column: 130, scope: !1963)
!1974 = !DILocation(line: 1742, column: 33, scope: !1963)
!1975 = !DILocation(line: 1742, column: 20, scope: !1963)
!1976 = !DILocation(line: 1744, column: 10, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1744, column: 9)
!1978 = !DILocation(line: 1744, column: 9, scope: !1963)
!1979 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 1747, column: 10, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1747, column: 9)
!1982 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !1980)
!1983 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !1980)
!1984 = !DILocation(line: 1747, column: 9, scope: !1963)
!1985 = !DILocation(line: 1751, column: 17, scope: !1963)
!1986 = !DILocation(line: 1751, column: 26, scope: !1963)
!1987 = !DILocation(line: 1752, column: 17, scope: !1963)
!1988 = !DILocation(line: 1752, column: 36, scope: !1963)
!1989 = !DILocation(line: 1753, column: 17, scope: !1963)
!1990 = !DILocation(line: 1753, column: 36, scope: !1963)
!1991 = !DILocation(line: 1754, column: 35, scope: !1963)
!1992 = !DILocation(line: 1755, column: 17, scope: !1963)
!1993 = !DILocation(line: 1755, column: 24, scope: !1963)
!1994 = !DILocation(line: 1756, column: 31, scope: !1963)
!1995 = !DILocation(line: 1756, column: 68, scope: !1963)
!1996 = !DILocation(line: 1756, column: 5, scope: !1963)
!1997 = !DILocation(line: 1757, column: 5, scope: !1963)
!1998 = !DILocation(line: 1758, column: 5, scope: !1963)
!1999 = !DILocation(line: 1759, column: 1, scope: !1963)
!2000 = distinct !DISubprogram(name: "gatt_client_discover_primary_services_by_uuid128", scope: !3, file: !3, line: 1761, type: !2001, isLocal: false, isDefinition: true, scopeLine: 1762, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2005)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!93, !105, !112, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2005 = !{!2006, !2007, !2008, !2009}
!2006 = !DILocalVariable(name: "callback", arg: 1, scope: !2000, file: !3, line: 1761, type: !105)
!2007 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2000, file: !3, line: 1761, type: !112)
!2008 = !DILocalVariable(name: "uuid128", arg: 3, scope: !2000, file: !3, line: 1761, type: !2003)
!2009 = !DILocalVariable(name: "peripheral", scope: !2000, file: !3, line: 1763, type: !115)
!2010 = !DILocation(line: 1761, column: 83, scope: !2000)
!2011 = !DILocation(line: 1761, column: 110, scope: !2000)
!2012 = !DILocation(line: 1761, column: 137, scope: !2000)
!2013 = !DILocation(line: 1763, column: 33, scope: !2000)
!2014 = !DILocation(line: 1763, column: 20, scope: !2000)
!2015 = !DILocation(line: 1765, column: 10, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 1765, column: 9)
!2017 = !DILocation(line: 1765, column: 9, scope: !2000)
!2018 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 1768, column: 10, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 1768, column: 9)
!2021 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2019)
!2022 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2019)
!2023 = !DILocation(line: 1768, column: 9, scope: !2000)
!2024 = !DILocation(line: 1772, column: 17, scope: !2000)
!2025 = !DILocation(line: 1772, column: 26, scope: !2000)
!2026 = !DILocation(line: 1773, column: 17, scope: !2000)
!2027 = !DILocation(line: 1773, column: 36, scope: !2000)
!2028 = !DILocation(line: 1774, column: 17, scope: !2000)
!2029 = !DILocation(line: 1774, column: 36, scope: !2000)
!2030 = !DILocation(line: 1775, column: 17, scope: !2000)
!2031 = !DILocation(line: 1775, column: 24, scope: !2000)
!2032 = !DILocation(line: 1776, column: 5, scope: !2000)
!2033 = !DILocation(line: 1777, column: 35, scope: !2000)
!2034 = !DILocation(line: 1778, column: 5, scope: !2000)
!2035 = !DILocation(line: 1779, column: 5, scope: !2000)
!2036 = !DILocation(line: 1780, column: 1, scope: !2000)
!2037 = distinct !DISubprogram(name: "gatt_client_discover_characteristics_for_service", scope: !3, file: !3, line: 1782, type: !2038, isLocal: false, isDefinition: true, scopeLine: 1783, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2048)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!93, !105, !112, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_service_t", file: !1434, line: 24, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 19, size: 176, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "start_group_handle", scope: !2042, file: !1434, line: 20, baseType: !109, size: 16)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "end_group_handle", scope: !2042, file: !1434, line: 21, baseType: !109, size: 16, offset: 16)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !2042, file: !1434, line: 22, baseType: !109, size: 16, offset: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !2042, file: !1434, line: 23, baseType: !135, size: 128, offset: 48)
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DILocalVariable(name: "callback", arg: 1, scope: !2037, file: !3, line: 1782, type: !105)
!2050 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2037, file: !3, line: 1782, type: !112)
!2051 = !DILocalVariable(name: "service", arg: 3, scope: !2037, file: !3, line: 1782, type: !2040)
!2052 = !DILocalVariable(name: "peripheral", scope: !2037, file: !3, line: 1784, type: !115)
!2053 = !DILocation(line: 1782, column: 83, scope: !2037)
!2054 = !DILocation(line: 1782, column: 110, scope: !2037)
!2055 = !DILocation(line: 1782, column: 145, scope: !2037)
!2056 = !DILocation(line: 1784, column: 33, scope: !2037)
!2057 = !DILocation(line: 1784, column: 20, scope: !2037)
!2058 = !DILocation(line: 1786, column: 10, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 1786, column: 9)
!2060 = !DILocation(line: 1786, column: 9, scope: !2037)
!2061 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 1789, column: 10, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 1789, column: 9)
!2064 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2062)
!2065 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2062)
!2066 = !DILocation(line: 1789, column: 9, scope: !2037)
!2067 = !DILocation(line: 1793, column: 17, scope: !2037)
!2068 = !DILocation(line: 1793, column: 26, scope: !2037)
!2069 = !DILocation(line: 1794, column: 47, scope: !2037)
!2070 = !{!2071, !325, i64 0}
!2071 = !{!"", !325, i64 0, !325, i64 2, !325, i64 4, !228, i64 6}
!2072 = !DILocation(line: 1794, column: 17, scope: !2037)
!2073 = !DILocation(line: 1794, column: 36, scope: !2037)
!2074 = !DILocation(line: 1795, column: 47, scope: !2037)
!2075 = !{!2071, !325, i64 2}
!2076 = !DILocation(line: 1795, column: 17, scope: !2037)
!2077 = !DILocation(line: 1795, column: 36, scope: !2037)
!2078 = !DILocation(line: 1796, column: 17, scope: !2037)
!2079 = !DILocation(line: 1796, column: 34, scope: !2037)
!2080 = !{!324, !228, i64 80}
!2081 = !DILocation(line: 1797, column: 17, scope: !2037)
!2082 = !DILocation(line: 1797, column: 45, scope: !2037)
!2083 = !{!324, !325, i64 56}
!2084 = !DILocation(line: 1798, column: 35, scope: !2037)
!2085 = !DILocation(line: 1799, column: 5, scope: !2037)
!2086 = !DILocation(line: 1800, column: 5, scope: !2037)
!2087 = !DILocation(line: 1801, column: 1, scope: !2037)
!2088 = distinct !DISubprogram(name: "gatt_client_find_included_services_for_service", scope: !3, file: !3, line: 1803, type: !2038, isLocal: false, isDefinition: true, scopeLine: 1804, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2089)
!2089 = !{!2090, !2091, !2092, !2093}
!2090 = !DILocalVariable(name: "callback", arg: 1, scope: !2088, file: !3, line: 1803, type: !105)
!2091 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2088, file: !3, line: 1803, type: !112)
!2092 = !DILocalVariable(name: "service", arg: 3, scope: !2088, file: !3, line: 1803, type: !2040)
!2093 = !DILocalVariable(name: "peripheral", scope: !2088, file: !3, line: 1805, type: !115)
!2094 = !DILocation(line: 1803, column: 81, scope: !2088)
!2095 = !DILocation(line: 1803, column: 108, scope: !2088)
!2096 = !DILocation(line: 1803, column: 143, scope: !2088)
!2097 = !DILocation(line: 1805, column: 33, scope: !2088)
!2098 = !DILocation(line: 1805, column: 20, scope: !2088)
!2099 = !DILocation(line: 1807, column: 10, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1807, column: 9)
!2101 = !DILocation(line: 1807, column: 9, scope: !2088)
!2102 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 1810, column: 10, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1810, column: 9)
!2105 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2103)
!2106 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2103)
!2107 = !DILocation(line: 1810, column: 9, scope: !2088)
!2108 = !DILocation(line: 1814, column: 17, scope: !2088)
!2109 = !DILocation(line: 1814, column: 26, scope: !2088)
!2110 = !DILocation(line: 1815, column: 47, scope: !2088)
!2111 = !DILocation(line: 1815, column: 17, scope: !2088)
!2112 = !DILocation(line: 1815, column: 36, scope: !2088)
!2113 = !DILocation(line: 1816, column: 47, scope: !2088)
!2114 = !DILocation(line: 1816, column: 17, scope: !2088)
!2115 = !DILocation(line: 1816, column: 36, scope: !2088)
!2116 = !DILocation(line: 1817, column: 35, scope: !2088)
!2117 = !DILocation(line: 1819, column: 5, scope: !2088)
!2118 = !DILocation(line: 1820, column: 5, scope: !2088)
!2119 = !DILocation(line: 1821, column: 1, scope: !2088)
!2120 = distinct !DISubprogram(name: "gatt_client_discover_characteristics_for_handle_range_by_uuid16", scope: !3, file: !3, line: 1823, type: !2121, isLocal: false, isDefinition: true, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!93, !105, !112, !109, !109, !109}
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129}
!2124 = !DILocalVariable(name: "callback", arg: 1, scope: !2120, file: !3, line: 1823, type: !105)
!2125 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2120, file: !3, line: 1823, type: !112)
!2126 = !DILocalVariable(name: "start_handle", arg: 3, scope: !2120, file: !3, line: 1823, type: !109)
!2127 = !DILocalVariable(name: "end_handle", arg: 4, scope: !2120, file: !3, line: 1823, type: !109)
!2128 = !DILocalVariable(name: "uuid16", arg: 5, scope: !2120, file: !3, line: 1823, type: !109)
!2129 = !DILocalVariable(name: "peripheral", scope: !2120, file: !3, line: 1825, type: !115)
!2130 = !DILocation(line: 1823, column: 98, scope: !2120)
!2131 = !DILocation(line: 1823, column: 125, scope: !2120)
!2132 = !DILocation(line: 1823, column: 146, scope: !2120)
!2133 = !DILocation(line: 1823, column: 169, scope: !2120)
!2134 = !DILocation(line: 1823, column: 190, scope: !2120)
!2135 = !DILocation(line: 1825, column: 33, scope: !2120)
!2136 = !DILocation(line: 1825, column: 20, scope: !2120)
!2137 = !DILocation(line: 1827, column: 10, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1827, column: 9)
!2139 = !DILocation(line: 1827, column: 9, scope: !2120)
!2140 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 1830, column: 10, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1830, column: 9)
!2143 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2141)
!2144 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2141)
!2145 = !DILocation(line: 1830, column: 9, scope: !2120)
!2146 = !DILocation(line: 1834, column: 17, scope: !2120)
!2147 = !DILocation(line: 1834, column: 26, scope: !2120)
!2148 = !DILocation(line: 1835, column: 17, scope: !2120)
!2149 = !DILocation(line: 1835, column: 36, scope: !2120)
!2150 = !DILocation(line: 1836, column: 17, scope: !2120)
!2151 = !DILocation(line: 1836, column: 36, scope: !2120)
!2152 = !DILocation(line: 1837, column: 17, scope: !2120)
!2153 = !DILocation(line: 1837, column: 34, scope: !2120)
!2154 = !DILocation(line: 1838, column: 17, scope: !2120)
!2155 = !DILocation(line: 1838, column: 24, scope: !2120)
!2156 = !DILocation(line: 1839, column: 31, scope: !2120)
!2157 = !DILocation(line: 1839, column: 68, scope: !2120)
!2158 = !DILocation(line: 1839, column: 5, scope: !2120)
!2159 = !DILocation(line: 1840, column: 17, scope: !2120)
!2160 = !DILocation(line: 1840, column: 45, scope: !2120)
!2161 = !DILocation(line: 1841, column: 35, scope: !2120)
!2162 = !DILocation(line: 1843, column: 5, scope: !2120)
!2163 = !DILocation(line: 1844, column: 5, scope: !2120)
!2164 = !DILocation(line: 1845, column: 1, scope: !2120)
!2165 = distinct !DISubprogram(name: "gatt_client_discover_characteristics_for_handle_range_by_uuid128", scope: !3, file: !3, line: 1847, type: !2166, isLocal: false, isDefinition: true, scopeLine: 1848, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!93, !105, !112, !109, !109, !92}
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174}
!2169 = !DILocalVariable(name: "callback", arg: 1, scope: !2165, file: !3, line: 1847, type: !105)
!2170 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2165, file: !3, line: 1847, type: !112)
!2171 = !DILocalVariable(name: "start_handle", arg: 3, scope: !2165, file: !3, line: 1847, type: !109)
!2172 = !DILocalVariable(name: "end_handle", arg: 4, scope: !2165, file: !3, line: 1847, type: !109)
!2173 = !DILocalVariable(name: "uuid128", arg: 5, scope: !2165, file: !3, line: 1847, type: !92)
!2174 = !DILocalVariable(name: "peripheral", scope: !2165, file: !3, line: 1849, type: !115)
!2175 = !DILocation(line: 1847, column: 99, scope: !2165)
!2176 = !DILocation(line: 1847, column: 126, scope: !2165)
!2177 = !DILocation(line: 1847, column: 147, scope: !2165)
!2178 = !DILocation(line: 1847, column: 170, scope: !2165)
!2179 = !DILocation(line: 1847, column: 191, scope: !2165)
!2180 = !DILocation(line: 1849, column: 33, scope: !2165)
!2181 = !DILocation(line: 1849, column: 20, scope: !2165)
!2182 = !DILocation(line: 1851, column: 10, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 1851, column: 9)
!2184 = !DILocation(line: 1851, column: 9, scope: !2165)
!2185 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 1854, column: 10, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 1854, column: 9)
!2188 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2186)
!2189 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2186)
!2190 = !DILocation(line: 1854, column: 9, scope: !2165)
!2191 = !DILocation(line: 1858, column: 17, scope: !2165)
!2192 = !DILocation(line: 1858, column: 26, scope: !2165)
!2193 = !DILocation(line: 1859, column: 17, scope: !2165)
!2194 = !DILocation(line: 1859, column: 36, scope: !2165)
!2195 = !DILocation(line: 1860, column: 17, scope: !2165)
!2196 = !DILocation(line: 1860, column: 36, scope: !2165)
!2197 = !DILocation(line: 1861, column: 17, scope: !2165)
!2198 = !DILocation(line: 1861, column: 34, scope: !2165)
!2199 = !DILocation(line: 1862, column: 17, scope: !2165)
!2200 = !DILocation(line: 1862, column: 24, scope: !2165)
!2201 = !DILocation(line: 1863, column: 5, scope: !2165)
!2202 = !DILocation(line: 1864, column: 17, scope: !2165)
!2203 = !DILocation(line: 1864, column: 45, scope: !2165)
!2204 = !DILocation(line: 1865, column: 35, scope: !2165)
!2205 = !DILocation(line: 1867, column: 5, scope: !2165)
!2206 = !DILocation(line: 1868, column: 5, scope: !2165)
!2207 = !DILocation(line: 1869, column: 1, scope: !2165)
!2208 = distinct !DISubprogram(name: "gatt_client_discover_characteristics_for_service_by_uuid16", scope: !3, file: !3, line: 1872, type: !2209, isLocal: false, isDefinition: true, scopeLine: 1873, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!93, !105, !109, !2040, !109}
!2211 = !{!2212, !2213, !2214, !2215}
!2212 = !DILocalVariable(name: "callback", arg: 1, scope: !2208, file: !3, line: 1872, type: !105)
!2213 = !DILocalVariable(name: "handle", arg: 2, scope: !2208, file: !3, line: 1872, type: !109)
!2214 = !DILocalVariable(name: "service", arg: 3, scope: !2208, file: !3, line: 1872, type: !2040)
!2215 = !DILocalVariable(name: "uuid16", arg: 4, scope: !2208, file: !3, line: 1872, type: !109)
!2216 = !DILocation(line: 1872, column: 93, scope: !2208)
!2217 = !DILocation(line: 1872, column: 112, scope: !2208)
!2218 = !DILocation(line: 1872, column: 143, scope: !2208)
!2219 = !DILocation(line: 1872, column: 162, scope: !2208)
!2220 = !DILocation(line: 1874, column: 103, scope: !2208)
!2221 = !DILocation(line: 1874, column: 132, scope: !2208)
!2222 = !DILocation(line: 1874, column: 12, scope: !2208)
!2223 = !DILocation(line: 1874, column: 5, scope: !2208)
!2224 = distinct !DISubprogram(name: "gatt_client_discover_characteristics_for_service_by_uuid128", scope: !3, file: !3, line: 1877, type: !2225, isLocal: false, isDefinition: true, scopeLine: 1878, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!93, !105, !109, !2040, !92}
!2227 = !{!2228, !2229, !2230, !2231}
!2228 = !DILocalVariable(name: "callback", arg: 1, scope: !2224, file: !3, line: 1877, type: !105)
!2229 = !DILocalVariable(name: "handle", arg: 2, scope: !2224, file: !3, line: 1877, type: !109)
!2230 = !DILocalVariable(name: "service", arg: 3, scope: !2224, file: !3, line: 1877, type: !2040)
!2231 = !DILocalVariable(name: "uuid128", arg: 4, scope: !2224, file: !3, line: 1877, type: !92)
!2232 = !DILocation(line: 1877, column: 94, scope: !2224)
!2233 = !DILocation(line: 1877, column: 113, scope: !2224)
!2234 = !DILocation(line: 1877, column: 144, scope: !2224)
!2235 = !DILocation(line: 1877, column: 162, scope: !2224)
!2236 = !DILocation(line: 1879, column: 104, scope: !2224)
!2237 = !DILocation(line: 1879, column: 133, scope: !2224)
!2238 = !DILocation(line: 1879, column: 12, scope: !2224)
!2239 = !DILocation(line: 1879, column: 5, scope: !2224)
!2240 = distinct !DISubprogram(name: "gatt_client_discover_characteristic_descriptors", scope: !3, file: !3, line: 1882, type: !2241, isLocal: false, isDefinition: true, scopeLine: 1883, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!93, !105, !112, !1432}
!2243 = !{!2244, !2245, !2246, !2247}
!2244 = !DILocalVariable(name: "callback", arg: 1, scope: !2240, file: !3, line: 1882, type: !105)
!2245 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2240, file: !3, line: 1882, type: !112)
!2246 = !DILocalVariable(name: "characteristic", arg: 3, scope: !2240, file: !3, line: 1882, type: !1432)
!2247 = !DILocalVariable(name: "peripheral", scope: !2240, file: !3, line: 1884, type: !115)
!2248 = !DILocation(line: 1882, column: 82, scope: !2240)
!2249 = !DILocation(line: 1882, column: 109, scope: !2240)
!2250 = !DILocation(line: 1882, column: 151, scope: !2240)
!2251 = !DILocation(line: 1884, column: 33, scope: !2240)
!2252 = !DILocation(line: 1884, column: 20, scope: !2240)
!2253 = !DILocation(line: 1886, column: 10, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1886, column: 9)
!2255 = !DILocation(line: 1886, column: 9, scope: !2240)
!2256 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 1889, column: 10, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1889, column: 9)
!2259 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2257)
!2260 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2257)
!2261 = !DILocation(line: 1889, column: 9, scope: !2240)
!2262 = !DILocation(line: 1893, column: 25, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1893, column: 9)
!2264 = !{!2265, !325, i64 2}
!2265 = !{!"", !325, i64 0, !325, i64 2, !325, i64 4, !325, i64 6, !325, i64 8, !228, i64 10}
!2266 = !DILocation(line: 1893, column: 57, scope: !2263)
!2267 = !{!2265, !325, i64 4}
!2268 = !DILocation(line: 1893, column: 38, scope: !2263)
!2269 = !DILocation(line: 1893, column: 9, scope: !2240)
!2270 = !DILocation(line: 1894, column: 9, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1893, column: 69)
!2272 = !DILocation(line: 1895, column: 9, scope: !2271)
!2273 = !DILocation(line: 1897, column: 17, scope: !2240)
!2274 = !DILocation(line: 1897, column: 26, scope: !2240)
!2275 = !DILocation(line: 1898, column: 67, scope: !2240)
!2276 = !DILocation(line: 1898, column: 17, scope: !2240)
!2277 = !DILocation(line: 1898, column: 36, scope: !2240)
!2278 = !DILocation(line: 1899, column: 17, scope: !2240)
!2279 = !DILocation(line: 1899, column: 36, scope: !2240)
!2280 = !DILocation(line: 1900, column: 35, scope: !2240)
!2281 = !DILocation(line: 1902, column: 5, scope: !2240)
!2282 = !DILocation(line: 1903, column: 5, scope: !2240)
!2283 = !DILocation(line: 1904, column: 1, scope: !2240)
!2284 = distinct !DISubprogram(name: "emit_gatt_complete_event", scope: !3, file: !3, line: 658, type: !2285, isLocal: true, isDefinition: true, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !115, !93}
!2287 = !{!2288, !2289, !2290}
!2288 = !DILocalVariable(name: "peripheral", arg: 1, scope: !2284, file: !3, line: 658, type: !115)
!2289 = !DILocalVariable(name: "status", arg: 2, scope: !2284, file: !3, line: 658, type: !93)
!2290 = !DILocalVariable(name: "packet", scope: !2284, file: !3, line: 661, type: !2291)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 40, elements: !2292)
!2292 = !{!2293}
!2293 = !DISubrange(count: 5)
!2294 = !DILocation(line: 658, column: 53, scope: !2284)
!2295 = !DILocation(line: 658, column: 73, scope: !2284)
!2296 = !DILocation(line: 661, column: 5, scope: !2284)
!2297 = !DILocation(line: 661, column: 13, scope: !2284)
!2298 = !DILocation(line: 662, column: 15, scope: !2284)
!2299 = !DILocation(line: 663, column: 5, scope: !2284)
!2300 = !DILocation(line: 663, column: 15, scope: !2284)
!2301 = !DILocation(line: 664, column: 51, scope: !2284)
!2302 = !DILocation(line: 664, column: 5, scope: !2284)
!2303 = !DILocation(line: 665, column: 5, scope: !2284)
!2304 = !DILocation(line: 665, column: 15, scope: !2284)
!2305 = !DILocation(line: 666, column: 32, scope: !2284)
!2306 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 666, column: 5, scope: !2284)
!2308 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !2307)
!2309 = !DILocation(line: 619, column: 89, scope: !905, inlinedAt: !2307)
!2310 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !2307)
!2311 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !2307)
!2312 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !2307)
!2313 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !2307)
!2314 = !DILocation(line: 667, column: 1, scope: !2284)
!2315 = distinct !DISubprogram(name: "gatt_client_discover_characteristic_descriptors_by_handle", scope: !3, file: !3, line: 1905, type: !2316, isLocal: false, isDefinition: true, scopeLine: 1906, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!93, !105, !112, !109, !109}
!2318 = !{!2319, !2320, !2321, !2322, !2323}
!2319 = !DILocalVariable(name: "callback", arg: 1, scope: !2315, file: !3, line: 1905, type: !105)
!2320 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2315, file: !3, line: 1905, type: !112)
!2321 = !DILocalVariable(name: "start_handel", arg: 3, scope: !2315, file: !3, line: 1905, type: !109)
!2322 = !DILocalVariable(name: "end_handle", arg: 4, scope: !2315, file: !3, line: 1905, type: !109)
!2323 = !DILocalVariable(name: "peripheral", scope: !2315, file: !3, line: 1907, type: !115)
!2324 = !DILocation(line: 1905, column: 92, scope: !2315)
!2325 = !DILocation(line: 1905, column: 119, scope: !2315)
!2326 = !DILocation(line: 1905, column: 140, scope: !2315)
!2327 = !DILocation(line: 1905, column: 163, scope: !2315)
!2328 = !DILocation(line: 1907, column: 33, scope: !2315)
!2329 = !DILocation(line: 1907, column: 20, scope: !2315)
!2330 = !DILocation(line: 1909, column: 10, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 1909, column: 9)
!2332 = !DILocation(line: 1909, column: 9, scope: !2315)
!2333 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 1912, column: 10, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 1912, column: 9)
!2336 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2334)
!2337 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2334)
!2338 = !DILocation(line: 1912, column: 9, scope: !2315)
!2339 = !DILocation(line: 1920, column: 17, scope: !2315)
!2340 = !DILocation(line: 1920, column: 26, scope: !2315)
!2341 = !DILocation(line: 1921, column: 17, scope: !2315)
!2342 = !DILocation(line: 1921, column: 36, scope: !2315)
!2343 = !DILocation(line: 1922, column: 17, scope: !2315)
!2344 = !DILocation(line: 1922, column: 36, scope: !2315)
!2345 = !DILocation(line: 1923, column: 35, scope: !2315)
!2346 = !DILocation(line: 1925, column: 5, scope: !2315)
!2347 = !DILocation(line: 1926, column: 5, scope: !2315)
!2348 = !DILocation(line: 1927, column: 1, scope: !2315)
!2349 = distinct !DISubprogram(name: "gatt_client_read_value_of_characteristic_using_value_handle", scope: !3, file: !3, line: 1928, type: !1964, isLocal: false, isDefinition: true, scopeLine: 1929, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2350)
!2350 = !{!2351, !2352, !2353, !2354}
!2351 = !DILocalVariable(name: "callback", arg: 1, scope: !2349, file: !3, line: 1928, type: !105)
!2352 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2349, file: !3, line: 1928, type: !112)
!2353 = !DILocalVariable(name: "value_handle", arg: 3, scope: !2349, file: !3, line: 1928, type: !109)
!2354 = !DILocalVariable(name: "peripheral", scope: !2349, file: !3, line: 1934, type: !115)
!2355 = !DILocation(line: 1928, column: 94, scope: !2349)
!2356 = !DILocation(line: 1928, column: 121, scope: !2349)
!2357 = !DILocation(line: 1928, column: 142, scope: !2349)
!2358 = !DILocation(line: 1930, column: 10, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1930, column: 9)
!2360 = !DILocation(line: 1930, column: 9, scope: !2349)
!2361 = !DILocation(line: 1934, column: 33, scope: !2349)
!2362 = !DILocation(line: 1934, column: 20, scope: !2349)
!2363 = !DILocation(line: 1936, column: 10, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1936, column: 9)
!2365 = !DILocation(line: 1936, column: 9, scope: !2349)
!2366 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 1939, column: 10, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1939, column: 9)
!2369 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2367)
!2370 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2367)
!2371 = !DILocation(line: 1939, column: 9, scope: !2349)
!2372 = !DILocation(line: 1943, column: 17, scope: !2349)
!2373 = !DILocation(line: 1943, column: 26, scope: !2349)
!2374 = !DILocation(line: 1944, column: 17, scope: !2349)
!2375 = !DILocation(line: 1944, column: 34, scope: !2349)
!2376 = !DILocation(line: 1945, column: 17, scope: !2349)
!2377 = !DILocation(line: 1945, column: 34, scope: !2349)
!2378 = !DILocation(line: 1946, column: 35, scope: !2349)
!2379 = !DILocation(line: 1947, column: 5, scope: !2349)
!2380 = !DILocation(line: 1948, column: 5, scope: !2349)
!2381 = !DILocation(line: 1949, column: 1, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2349, file: !3, discriminator: 1)
!2383 = distinct !DISubprogram(name: "gatt_client_read_value_of_characteristics_by_uuid16", scope: !3, file: !3, line: 1951, type: !2121, isLocal: false, isDefinition: true, scopeLine: 1952, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2384)
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390}
!2385 = !DILocalVariable(name: "callback", arg: 1, scope: !2383, file: !3, line: 1951, type: !105)
!2386 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2383, file: !3, line: 1951, type: !112)
!2387 = !DILocalVariable(name: "start_handle", arg: 3, scope: !2383, file: !3, line: 1951, type: !109)
!2388 = !DILocalVariable(name: "end_handle", arg: 4, scope: !2383, file: !3, line: 1951, type: !109)
!2389 = !DILocalVariable(name: "uuid16", arg: 5, scope: !2383, file: !3, line: 1951, type: !109)
!2390 = !DILocalVariable(name: "peripheral", scope: !2383, file: !3, line: 1953, type: !115)
!2391 = !DILocation(line: 1951, column: 86, scope: !2383)
!2392 = !DILocation(line: 1951, column: 113, scope: !2383)
!2393 = !DILocation(line: 1951, column: 134, scope: !2383)
!2394 = !DILocation(line: 1951, column: 157, scope: !2383)
!2395 = !DILocation(line: 1951, column: 178, scope: !2383)
!2396 = !DILocation(line: 1953, column: 33, scope: !2383)
!2397 = !DILocation(line: 1953, column: 20, scope: !2383)
!2398 = !DILocation(line: 1955, column: 10, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 1955, column: 9)
!2400 = !DILocation(line: 1955, column: 9, scope: !2383)
!2401 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1958, column: 10, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 1958, column: 9)
!2404 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2402)
!2405 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2402)
!2406 = !DILocation(line: 1958, column: 9, scope: !2383)
!2407 = !DILocation(line: 1962, column: 17, scope: !2383)
!2408 = !DILocation(line: 1962, column: 26, scope: !2383)
!2409 = !DILocation(line: 1963, column: 17, scope: !2383)
!2410 = !DILocation(line: 1963, column: 36, scope: !2383)
!2411 = !DILocation(line: 1964, column: 17, scope: !2383)
!2412 = !DILocation(line: 1964, column: 34, scope: !2383)
!2413 = !DILocation(line: 1965, column: 17, scope: !2383)
!2414 = !DILocation(line: 1965, column: 36, scope: !2383)
!2415 = !DILocation(line: 1966, column: 17, scope: !2383)
!2416 = !DILocation(line: 1966, column: 34, scope: !2383)
!2417 = !DILocation(line: 1967, column: 17, scope: !2383)
!2418 = !DILocation(line: 1967, column: 24, scope: !2383)
!2419 = !DILocation(line: 1968, column: 31, scope: !2383)
!2420 = !DILocation(line: 1968, column: 68, scope: !2383)
!2421 = !DILocation(line: 1968, column: 5, scope: !2383)
!2422 = !DILocation(line: 1969, column: 35, scope: !2383)
!2423 = !DILocation(line: 1970, column: 5, scope: !2383)
!2424 = !DILocation(line: 1971, column: 5, scope: !2383)
!2425 = !DILocation(line: 1972, column: 1, scope: !2383)
!2426 = distinct !DISubprogram(name: "gatt_client_read_value_of_characteristics_by_uuid128", scope: !3, file: !3, line: 1974, type: !2166, isLocal: false, isDefinition: true, scopeLine: 1975, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433}
!2428 = !DILocalVariable(name: "callback", arg: 1, scope: !2426, file: !3, line: 1974, type: !105)
!2429 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2426, file: !3, line: 1974, type: !112)
!2430 = !DILocalVariable(name: "start_handle", arg: 3, scope: !2426, file: !3, line: 1974, type: !109)
!2431 = !DILocalVariable(name: "end_handle", arg: 4, scope: !2426, file: !3, line: 1974, type: !109)
!2432 = !DILocalVariable(name: "uuid128", arg: 5, scope: !2426, file: !3, line: 1974, type: !92)
!2433 = !DILocalVariable(name: "peripheral", scope: !2426, file: !3, line: 1976, type: !115)
!2434 = !DILocation(line: 1974, column: 87, scope: !2426)
!2435 = !DILocation(line: 1974, column: 114, scope: !2426)
!2436 = !DILocation(line: 1974, column: 135, scope: !2426)
!2437 = !DILocation(line: 1974, column: 158, scope: !2426)
!2438 = !DILocation(line: 1974, column: 179, scope: !2426)
!2439 = !DILocation(line: 1976, column: 33, scope: !2426)
!2440 = !DILocation(line: 1976, column: 20, scope: !2426)
!2441 = !DILocation(line: 1978, column: 10, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1978, column: 9)
!2443 = !DILocation(line: 1978, column: 9, scope: !2426)
!2444 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1981, column: 10, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1981, column: 9)
!2447 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2445)
!2448 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2445)
!2449 = !DILocation(line: 1981, column: 9, scope: !2426)
!2450 = !DILocation(line: 1985, column: 17, scope: !2426)
!2451 = !DILocation(line: 1985, column: 26, scope: !2426)
!2452 = !DILocation(line: 1986, column: 17, scope: !2426)
!2453 = !DILocation(line: 1986, column: 36, scope: !2426)
!2454 = !DILocation(line: 1987, column: 17, scope: !2426)
!2455 = !DILocation(line: 1987, column: 34, scope: !2426)
!2456 = !DILocation(line: 1988, column: 17, scope: !2426)
!2457 = !DILocation(line: 1988, column: 36, scope: !2426)
!2458 = !DILocation(line: 1989, column: 17, scope: !2426)
!2459 = !DILocation(line: 1989, column: 34, scope: !2426)
!2460 = !DILocation(line: 1990, column: 17, scope: !2426)
!2461 = !DILocation(line: 1990, column: 24, scope: !2426)
!2462 = !DILocation(line: 1991, column: 5, scope: !2426)
!2463 = !DILocation(line: 1992, column: 35, scope: !2426)
!2464 = !DILocation(line: 1993, column: 5, scope: !2426)
!2465 = !DILocation(line: 1994, column: 5, scope: !2426)
!2466 = !DILocation(line: 1995, column: 1, scope: !2426)
!2467 = distinct !DISubprogram(name: "gatt_client_read_value_of_characteristic", scope: !3, file: !3, line: 1998, type: !2468, isLocal: false, isDefinition: true, scopeLine: 1999, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!93, !105, !109, !1432}
!2470 = !{!2471, !2472, !2473}
!2471 = !DILocalVariable(name: "callback", arg: 1, scope: !2467, file: !3, line: 1998, type: !105)
!2472 = !DILocalVariable(name: "handle", arg: 2, scope: !2467, file: !3, line: 1998, type: !109)
!2473 = !DILocalVariable(name: "characteristic", arg: 3, scope: !2467, file: !3, line: 1998, type: !1432)
!2474 = !DILocation(line: 1998, column: 75, scope: !2467)
!2475 = !DILocation(line: 1998, column: 94, scope: !2467)
!2476 = !DILocation(line: 1998, column: 132, scope: !2467)
!2477 = !DILocation(line: 2000, column: 106, scope: !2467)
!2478 = !DILocation(line: 2000, column: 12, scope: !2467)
!2479 = !DILocation(line: 2000, column: 5, scope: !2467)
!2480 = distinct !DISubprogram(name: "gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset", scope: !3, file: !3, line: 2003, type: !2316, isLocal: false, isDefinition: true, scopeLine: 2004, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486}
!2482 = !DILocalVariable(name: "callback", arg: 1, scope: !2480, file: !3, line: 2003, type: !105)
!2483 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2480, file: !3, line: 2003, type: !112)
!2484 = !DILocalVariable(name: "characteristic_value_handle", arg: 3, scope: !2480, file: !3, line: 2003, type: !109)
!2485 = !DILocalVariable(name: "offset", arg: 4, scope: !2480, file: !3, line: 2003, type: !109)
!2486 = !DILocalVariable(name: "peripheral", scope: !2480, file: !3, line: 2009, type: !115)
!2487 = !DILocation(line: 2003, column: 111, scope: !2480)
!2488 = !DILocation(line: 2003, column: 138, scope: !2480)
!2489 = !DILocation(line: 2003, column: 159, scope: !2480)
!2490 = !DILocation(line: 2003, column: 197, scope: !2480)
!2491 = !DILocation(line: 2005, column: 10, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 2005, column: 9)
!2493 = !DILocation(line: 2005, column: 9, scope: !2480)
!2494 = !DILocation(line: 2009, column: 33, scope: !2480)
!2495 = !DILocation(line: 2009, column: 20, scope: !2480)
!2496 = !DILocation(line: 2011, column: 10, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 2011, column: 9)
!2498 = !DILocation(line: 2011, column: 9, scope: !2480)
!2499 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 2014, column: 10, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 2014, column: 9)
!2502 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2500)
!2503 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2500)
!2504 = !DILocation(line: 2014, column: 9, scope: !2480)
!2505 = !DILocation(line: 2018, column: 17, scope: !2480)
!2506 = !DILocation(line: 2018, column: 26, scope: !2480)
!2507 = !DILocation(line: 2019, column: 17, scope: !2480)
!2508 = !DILocation(line: 2019, column: 34, scope: !2480)
!2509 = !DILocation(line: 2020, column: 17, scope: !2480)
!2510 = !DILocation(line: 2020, column: 34, scope: !2480)
!2511 = !DILocation(line: 2021, column: 35, scope: !2480)
!2512 = !DILocation(line: 2022, column: 5, scope: !2480)
!2513 = !DILocation(line: 2023, column: 5, scope: !2480)
!2514 = !DILocation(line: 2024, column: 1, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2480, file: !3, discriminator: 1)
!2516 = distinct !DISubprogram(name: "gatt_client_read_long_value_of_characteristic_using_value_handle", scope: !3, file: !3, line: 2026, type: !1964, isLocal: false, isDefinition: true, scopeLine: 2027, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2517)
!2517 = !{!2518, !2519, !2520}
!2518 = !DILocalVariable(name: "callback", arg: 1, scope: !2516, file: !3, line: 2026, type: !105)
!2519 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2516, file: !3, line: 2026, type: !112)
!2520 = !DILocalVariable(name: "characteristic_value_handle", arg: 3, scope: !2516, file: !3, line: 2026, type: !109)
!2521 = !DILocation(line: 2026, column: 99, scope: !2516)
!2522 = !DILocation(line: 2026, column: 126, scope: !2516)
!2523 = !DILocation(line: 2026, column: 147, scope: !2516)
!2524 = !DILocation(line: 2028, column: 12, scope: !2516)
!2525 = !DILocation(line: 2028, column: 5, scope: !2516)
!2526 = distinct !DISubprogram(name: "gatt_client_read_long_value_of_characteristic", scope: !3, file: !3, line: 2031, type: !2468, isLocal: false, isDefinition: true, scopeLine: 2032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2527)
!2527 = !{!2528, !2529, !2530}
!2528 = !DILocalVariable(name: "callback", arg: 1, scope: !2526, file: !3, line: 2031, type: !105)
!2529 = !DILocalVariable(name: "handle", arg: 2, scope: !2526, file: !3, line: 2031, type: !109)
!2530 = !DILocalVariable(name: "characteristic", arg: 3, scope: !2526, file: !3, line: 2031, type: !1432)
!2531 = !DILocation(line: 2031, column: 80, scope: !2526)
!2532 = !DILocation(line: 2031, column: 99, scope: !2526)
!2533 = !DILocation(line: 2031, column: 137, scope: !2526)
!2534 = !DILocation(line: 2033, column: 111, scope: !2526)
!2535 = !DILocation(line: 2026, column: 99, scope: !2516, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 2033, column: 12, scope: !2526)
!2537 = !DILocation(line: 2026, column: 126, scope: !2516, inlinedAt: !2536)
!2538 = !DILocation(line: 2026, column: 147, scope: !2516, inlinedAt: !2536)
!2539 = !DILocation(line: 2028, column: 12, scope: !2516, inlinedAt: !2536)
!2540 = !DILocation(line: 2033, column: 5, scope: !2526)
!2541 = distinct !DISubprogram(name: "gatt_client_read_multiple_characteristic_values", scope: !3, file: !3, line: 2036, type: !2542, isLocal: false, isDefinition: true, scopeLine: 2037, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!93, !105, !112, !159, !150}
!2544 = !{!2545, !2546, !2547, !2548, !2549}
!2545 = !DILocalVariable(name: "callback", arg: 1, scope: !2541, file: !3, line: 2036, type: !105)
!2546 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2541, file: !3, line: 2036, type: !112)
!2547 = !DILocalVariable(name: "num_value_handles", arg: 3, scope: !2541, file: !3, line: 2036, type: !159)
!2548 = !DILocalVariable(name: "value_handles", arg: 4, scope: !2541, file: !3, line: 2036, type: !150)
!2549 = !DILocalVariable(name: "peripheral", scope: !2541, file: !3, line: 2038, type: !115)
!2550 = !DILocation(line: 2036, column: 82, scope: !2541)
!2551 = !DILocation(line: 2036, column: 109, scope: !2541)
!2552 = !DILocation(line: 2036, column: 125, scope: !2541)
!2553 = !DILocation(line: 2036, column: 154, scope: !2541)
!2554 = !DILocation(line: 2038, column: 33, scope: !2541)
!2555 = !DILocation(line: 2038, column: 20, scope: !2541)
!2556 = !DILocation(line: 2040, column: 10, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 2040, column: 9)
!2558 = !DILocation(line: 2040, column: 9, scope: !2541)
!2559 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 2043, column: 10, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 2043, column: 9)
!2562 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2560)
!2563 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2560)
!2564 = !DILocation(line: 2043, column: 9, scope: !2541)
!2565 = !DILocation(line: 2047, column: 17, scope: !2541)
!2566 = !DILocation(line: 2047, column: 26, scope: !2541)
!2567 = !DILocation(line: 2048, column: 46, scope: !2541)
!2568 = !DILocation(line: 2048, column: 17, scope: !2541)
!2569 = !DILocation(line: 2048, column: 44, scope: !2541)
!2570 = !DILocation(line: 2049, column: 17, scope: !2541)
!2571 = !DILocation(line: 2049, column: 39, scope: !2541)
!2572 = !DILocation(line: 2050, column: 35, scope: !2541)
!2573 = !DILocation(line: 2051, column: 5, scope: !2541)
!2574 = !DILocation(line: 2052, column: 5, scope: !2541)
!2575 = !DILocation(line: 2053, column: 1, scope: !2541)
!2576 = distinct !DISubprogram(name: "gatt_client_write_value_of_characteristic_without_response", scope: !3, file: !3, line: 2055, type: !2577, isLocal: false, isDefinition: true, scopeLine: 2056, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!93, !112, !109, !109, !92}
!2579 = !{!2580, !2581, !2582, !2583, !2584}
!2580 = !DILocalVariable(name: "con_handle", arg: 1, scope: !2576, file: !3, line: 2055, type: !112)
!2581 = !DILocalVariable(name: "value_handle", arg: 2, scope: !2576, file: !3, line: 2055, type: !109)
!2582 = !DILocalVariable(name: "value_length", arg: 3, scope: !2576, file: !3, line: 2055, type: !109)
!2583 = !DILocalVariable(name: "value", arg: 4, scope: !2576, file: !3, line: 2055, type: !92)
!2584 = !DILocalVariable(name: "peripheral", scope: !2576, file: !3, line: 2057, type: !115)
!2585 = !DILocation(line: 2055, column: 85, scope: !2576)
!2586 = !DILocation(line: 2055, column: 106, scope: !2576)
!2587 = !DILocation(line: 2055, column: 129, scope: !2576)
!2588 = !DILocation(line: 2055, column: 152, scope: !2576)
!2589 = !DILocation(line: 2057, column: 33, scope: !2576)
!2590 = !DILocation(line: 2057, column: 20, scope: !2576)
!2591 = !DILocation(line: 2059, column: 10, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 2059, column: 9)
!2593 = !DILocation(line: 2059, column: 9, scope: !2576)
!2594 = !DILocation(line: 2063, column: 10, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 2063, column: 9)
!2596 = !DILocation(line: 2063, column: 9, scope: !2576)
!2597 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 2066, column: 10, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 2066, column: 9)
!2600 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2598)
!2601 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2598)
!2602 = !DILocation(line: 2066, column: 9, scope: !2576)
!2603 = !DILocation(line: 2070, column: 9, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 2070, column: 9)
!2605 = !DILocation(line: 2070, column: 24, scope: !2604)
!2606 = !DILocation(line: 2070, column: 51, scope: !2604)
!2607 = !DILocation(line: 2070, column: 22, scope: !2604)
!2608 = !DILocation(line: 2070, column: 9, scope: !2576)
!2609 = !DILocation(line: 2073, column: 55, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 2073, column: 9)
!2611 = !DILocation(line: 2073, column: 10, scope: !2610)
!2612 = !DILocation(line: 2073, column: 9, scope: !2576)
!2613 = !DILocation(line: 2077, column: 54, scope: !2576)
!2614 = !DILocation(line: 2077, column: 5, scope: !2576)
!2615 = !DILocation(line: 2078, column: 5, scope: !2576)
!2616 = !DILocation(line: 2079, column: 1, scope: !2576)
!2617 = distinct !DISubprogram(name: "peripheral_mtu", scope: !3, file: !3, line: 145, type: !2618, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!109, !115}
!2620 = !{!2621}
!2621 = !DILocalVariable(name: "peripheral", arg: 1, scope: !2617, file: !3, line: 145, type: !115)
!2622 = !DILocation(line: 145, column: 47, scope: !2617)
!2623 = !DILocation(line: 147, column: 21, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 147, column: 9)
!2625 = !DILocation(line: 147, column: 27, scope: !2624)
!2626 = !DILocation(line: 147, column: 25, scope: !2624)
!2627 = !DILocation(line: 147, column: 9, scope: !2617)
!2628 = !DILocation(line: 148, column: 9, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 148, column: 9)
!2630 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 147, column: 47)
!2631 = !DILocation(line: 148, column: 9, scope: !2630)
!2632 = !DILocation(line: 148, column: 9, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2629, file: !3, discriminator: 1)
!2634 = !DILocation(line: 149, column: 16, scope: !2630)
!2635 = !DILocation(line: 149, column: 9, scope: !2630)
!2636 = !DILocation(line: 151, column: 24, scope: !2617)
!2637 = !DILocation(line: 151, column: 5, scope: !2617)
!2638 = !DILocation(line: 152, column: 1, scope: !2617)
!2639 = distinct !DISubprogram(name: "att_write_request", scope: !3, file: !3, line: 405, type: !2640, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !109, !109, !109, !109, !92}
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648}
!2643 = !DILocalVariable(name: "request_type", arg: 1, scope: !2639, file: !3, line: 405, type: !109)
!2644 = !DILocalVariable(name: "peripheral_handle", arg: 2, scope: !2639, file: !3, line: 405, type: !109)
!2645 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !2639, file: !3, line: 405, type: !109)
!2646 = !DILocalVariable(name: "value_length", arg: 4, scope: !2639, file: !3, line: 405, type: !109)
!2647 = !DILocalVariable(name: "value", arg: 5, scope: !2639, file: !3, line: 405, type: !92)
!2648 = !DILocalVariable(name: "request", scope: !2639, file: !3, line: 408, type: !92)
!2649 = !DILocation(line: 405, column: 40, scope: !2639)
!2650 = !DILocation(line: 405, column: 63, scope: !2639)
!2651 = !DILocation(line: 405, column: 91, scope: !2639)
!2652 = !DILocation(line: 405, column: 118, scope: !2639)
!2653 = !DILocation(line: 405, column: 141, scope: !2639)
!2654 = !DILocation(line: 407, column: 5, scope: !2639)
!2655 = !DILocation(line: 408, column: 24, scope: !2639)
!2656 = !DILocation(line: 408, column: 14, scope: !2639)
!2657 = !DILocation(line: 409, column: 18, scope: !2639)
!2658 = !DILocation(line: 409, column: 16, scope: !2639)
!2659 = !DILocation(line: 410, column: 5, scope: !2639)
!2660 = !DILocation(line: 411, column: 13, scope: !2639)
!2661 = !DILocation(line: 411, column: 32, scope: !2639)
!2662 = !DILocation(line: 411, column: 5, scope: !2639)
!2663 = !DILocation(line: 413, column: 91, scope: !2639)
!2664 = !DILocation(line: 413, column: 5, scope: !2639)
!2665 = !DILocation(line: 414, column: 1, scope: !2639)
!2666 = distinct !DISubprogram(name: "gatt_client_write_value_of_characteristic", scope: !3, file: !3, line: 2081, type: !2166, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673}
!2668 = !DILocalVariable(name: "callback", arg: 1, scope: !2666, file: !3, line: 2081, type: !105)
!2669 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2666, file: !3, line: 2081, type: !112)
!2670 = !DILocalVariable(name: "value_handle", arg: 3, scope: !2666, file: !3, line: 2081, type: !109)
!2671 = !DILocalVariable(name: "value_length", arg: 4, scope: !2666, file: !3, line: 2081, type: !109)
!2672 = !DILocalVariable(name: "data", arg: 5, scope: !2666, file: !3, line: 2081, type: !92)
!2673 = !DILocalVariable(name: "peripheral", scope: !2666, file: !3, line: 2087, type: !115)
!2674 = !DILocation(line: 2081, column: 76, scope: !2666)
!2675 = !DILocation(line: 2081, column: 103, scope: !2666)
!2676 = !DILocation(line: 2081, column: 124, scope: !2666)
!2677 = !DILocation(line: 2081, column: 147, scope: !2666)
!2678 = !DILocation(line: 2081, column: 170, scope: !2666)
!2679 = !DILocation(line: 2083, column: 10, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 2083, column: 9)
!2681 = !DILocation(line: 2083, column: 9, scope: !2666)
!2682 = !DILocation(line: 2087, column: 33, scope: !2666)
!2683 = !DILocation(line: 2087, column: 20, scope: !2666)
!2684 = !DILocation(line: 2089, column: 10, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 2089, column: 9)
!2686 = !DILocation(line: 2089, column: 9, scope: !2666)
!2687 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 2092, column: 10, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 2092, column: 9)
!2690 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2688)
!2691 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2688)
!2692 = !DILocation(line: 2092, column: 9, scope: !2666)
!2693 = !DILocation(line: 2096, column: 17, scope: !2666)
!2694 = !DILocation(line: 2096, column: 26, scope: !2666)
!2695 = !DILocation(line: 2097, column: 17, scope: !2666)
!2696 = !DILocation(line: 2097, column: 34, scope: !2666)
!2697 = !DILocation(line: 2098, column: 17, scope: !2666)
!2698 = !DILocation(line: 2098, column: 34, scope: !2666)
!2699 = !DILocation(line: 2099, column: 17, scope: !2666)
!2700 = !DILocation(line: 2099, column: 33, scope: !2666)
!2701 = !DILocation(line: 2100, column: 35, scope: !2666)
!2702 = !DILocation(line: 2101, column: 5, scope: !2666)
!2703 = !DILocation(line: 2102, column: 5, scope: !2666)
!2704 = !DILocation(line: 2103, column: 1, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2666, file: !3, discriminator: 1)
!2706 = distinct !DISubprogram(name: "gatt_client_write_long_value_of_characteristic_with_offset", scope: !3, file: !3, line: 2105, type: !2707, isLocal: false, isDefinition: true, scopeLine: 2106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!93, !105, !112, !109, !109, !109, !92}
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716}
!2710 = !DILocalVariable(name: "callback", arg: 1, scope: !2706, file: !3, line: 2105, type: !105)
!2711 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2706, file: !3, line: 2105, type: !112)
!2712 = !DILocalVariable(name: "value_handle", arg: 3, scope: !2706, file: !3, line: 2105, type: !109)
!2713 = !DILocalVariable(name: "offset", arg: 4, scope: !2706, file: !3, line: 2105, type: !109)
!2714 = !DILocalVariable(name: "value_length", arg: 5, scope: !2706, file: !3, line: 2105, type: !109)
!2715 = !DILocalVariable(name: "data", arg: 6, scope: !2706, file: !3, line: 2105, type: !92)
!2716 = !DILocalVariable(name: "peripheral", scope: !2706, file: !3, line: 2107, type: !115)
!2717 = !DILocation(line: 2105, column: 93, scope: !2706)
!2718 = !DILocation(line: 2105, column: 120, scope: !2706)
!2719 = !DILocation(line: 2105, column: 141, scope: !2706)
!2720 = !DILocation(line: 2105, column: 164, scope: !2706)
!2721 = !DILocation(line: 2105, column: 181, scope: !2706)
!2722 = !DILocation(line: 2105, column: 206, scope: !2706)
!2723 = !DILocation(line: 2107, column: 33, scope: !2706)
!2724 = !DILocation(line: 2107, column: 20, scope: !2706)
!2725 = !DILocation(line: 2109, column: 10, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 2109, column: 9)
!2727 = !DILocation(line: 2109, column: 9, scope: !2706)
!2728 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 2112, column: 10, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 2112, column: 9)
!2731 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2729)
!2732 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2729)
!2733 = !DILocation(line: 2112, column: 9, scope: !2706)
!2734 = !DILocation(line: 2116, column: 17, scope: !2706)
!2735 = !DILocation(line: 2116, column: 26, scope: !2706)
!2736 = !DILocation(line: 2117, column: 17, scope: !2706)
!2737 = !DILocation(line: 2117, column: 34, scope: !2706)
!2738 = !DILocation(line: 2118, column: 17, scope: !2706)
!2739 = !DILocation(line: 2118, column: 34, scope: !2706)
!2740 = !DILocation(line: 2119, column: 17, scope: !2706)
!2741 = !DILocation(line: 2119, column: 34, scope: !2706)
!2742 = !DILocation(line: 2120, column: 17, scope: !2706)
!2743 = !DILocation(line: 2120, column: 33, scope: !2706)
!2744 = !DILocation(line: 2121, column: 35, scope: !2706)
!2745 = !DILocation(line: 2122, column: 5, scope: !2706)
!2746 = !DILocation(line: 2123, column: 5, scope: !2706)
!2747 = !DILocation(line: 2124, column: 1, scope: !2706)
!2748 = distinct !DISubprogram(name: "gatt_client_write_long_value_of_characteristic", scope: !3, file: !3, line: 2126, type: !2166, isLocal: false, isDefinition: true, scopeLine: 2127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2749)
!2749 = !{!2750, !2751, !2752, !2753, !2754}
!2750 = !DILocalVariable(name: "callback", arg: 1, scope: !2748, file: !3, line: 2126, type: !105)
!2751 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2748, file: !3, line: 2126, type: !112)
!2752 = !DILocalVariable(name: "value_handle", arg: 3, scope: !2748, file: !3, line: 2126, type: !109)
!2753 = !DILocalVariable(name: "value_length", arg: 4, scope: !2748, file: !3, line: 2126, type: !109)
!2754 = !DILocalVariable(name: "value", arg: 5, scope: !2748, file: !3, line: 2126, type: !92)
!2755 = !DILocation(line: 2126, column: 81, scope: !2748)
!2756 = !DILocation(line: 2126, column: 108, scope: !2748)
!2757 = !DILocation(line: 2126, column: 129, scope: !2748)
!2758 = !DILocation(line: 2126, column: 152, scope: !2748)
!2759 = !DILocation(line: 2126, column: 175, scope: !2748)
!2760 = !DILocation(line: 2128, column: 12, scope: !2748)
!2761 = !DILocation(line: 2128, column: 5, scope: !2748)
!2762 = distinct !DISubprogram(name: "gatt_client_reliable_write_long_value_of_characteristic", scope: !3, file: !3, line: 2131, type: !2166, isLocal: false, isDefinition: true, scopeLine: 2132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769}
!2764 = !DILocalVariable(name: "callback", arg: 1, scope: !2762, file: !3, line: 2131, type: !105)
!2765 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2762, file: !3, line: 2131, type: !112)
!2766 = !DILocalVariable(name: "value_handle", arg: 3, scope: !2762, file: !3, line: 2131, type: !109)
!2767 = !DILocalVariable(name: "value_length", arg: 4, scope: !2762, file: !3, line: 2131, type: !109)
!2768 = !DILocalVariable(name: "value", arg: 5, scope: !2762, file: !3, line: 2131, type: !92)
!2769 = !DILocalVariable(name: "peripheral", scope: !2762, file: !3, line: 2133, type: !115)
!2770 = !DILocation(line: 2131, column: 90, scope: !2762)
!2771 = !DILocation(line: 2131, column: 117, scope: !2762)
!2772 = !DILocation(line: 2131, column: 138, scope: !2762)
!2773 = !DILocation(line: 2131, column: 161, scope: !2762)
!2774 = !DILocation(line: 2131, column: 184, scope: !2762)
!2775 = !DILocation(line: 2133, column: 33, scope: !2762)
!2776 = !DILocation(line: 2133, column: 20, scope: !2762)
!2777 = !DILocation(line: 2135, column: 10, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 2135, column: 9)
!2779 = !DILocation(line: 2135, column: 9, scope: !2762)
!2780 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 2138, column: 10, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 2138, column: 9)
!2783 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2781)
!2784 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2781)
!2785 = !DILocation(line: 2138, column: 9, scope: !2762)
!2786 = !DILocation(line: 2142, column: 17, scope: !2762)
!2787 = !DILocation(line: 2142, column: 26, scope: !2762)
!2788 = !DILocation(line: 2143, column: 17, scope: !2762)
!2789 = !DILocation(line: 2143, column: 34, scope: !2762)
!2790 = !DILocation(line: 2144, column: 17, scope: !2762)
!2791 = !DILocation(line: 2144, column: 34, scope: !2762)
!2792 = !DILocation(line: 2145, column: 17, scope: !2762)
!2793 = !DILocation(line: 2145, column: 34, scope: !2762)
!2794 = !DILocation(line: 2146, column: 17, scope: !2762)
!2795 = !DILocation(line: 2146, column: 33, scope: !2762)
!2796 = !DILocation(line: 2147, column: 35, scope: !2762)
!2797 = !DILocation(line: 2148, column: 5, scope: !2762)
!2798 = !DILocation(line: 2149, column: 5, scope: !2762)
!2799 = !DILocation(line: 2150, column: 1, scope: !2762)
!2800 = distinct !DISubprogram(name: "gatt_client_write_client_characteristic_configuration", scope: !3, file: !3, line: 2152, type: !2801, isLocal: false, isDefinition: true, scopeLine: 2153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!93, !105, !112, !1432, !109}
!2803 = !{!2804, !2805, !2806, !2807, !2808}
!2804 = !DILocalVariable(name: "callback", arg: 1, scope: !2800, file: !3, line: 2152, type: !105)
!2805 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2800, file: !3, line: 2152, type: !112)
!2806 = !DILocalVariable(name: "characteristic", arg: 3, scope: !2800, file: !3, line: 2152, type: !1432)
!2807 = !DILocalVariable(name: "configuration", arg: 4, scope: !2800, file: !3, line: 2152, type: !109)
!2808 = !DILocalVariable(name: "peripheral", scope: !2800, file: !3, line: 2154, type: !115)
!2809 = !DILocation(line: 2152, column: 88, scope: !2800)
!2810 = !DILocation(line: 2152, column: 115, scope: !2800)
!2811 = !DILocation(line: 2152, column: 157, scope: !2800)
!2812 = !DILocation(line: 2152, column: 182, scope: !2800)
!2813 = !DILocation(line: 2154, column: 33, scope: !2800)
!2814 = !DILocation(line: 2154, column: 20, scope: !2800)
!2815 = !DILocation(line: 2156, column: 10, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 2156, column: 9)
!2817 = !DILocation(line: 2156, column: 9, scope: !2800)
!2818 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 2159, column: 10, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 2159, column: 9)
!2821 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2819)
!2822 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2819)
!2823 = !DILocation(line: 2159, column: 9, scope: !2800)
!2824 = !DILocation(line: 2163, column: 10, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 2163, column: 9)
!2826 = !DILocation(line: 2163, column: 24, scope: !2825)
!2827 = !DILocation(line: 2163, column: 82, scope: !2825)
!2828 = !DILocation(line: 2164, column: 26, scope: !2825)
!2829 = !{!2265, !325, i64 6}
!2830 = !DILocation(line: 2164, column: 37, scope: !2825)
!2831 = !DILocation(line: 2164, column: 60, scope: !2825)
!2832 = !DILocation(line: 2163, column: 9, scope: !2833)
!2833 = !DILexicalBlockFile(scope: !2800, file: !3, discriminator: 1)
!2834 = !DILocation(line: 2165, column: 9, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 2165, column: 9)
!2836 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 2164, column: 66)
!2837 = !DILocation(line: 2165, column: 9, scope: !2836)
!2838 = !DILocation(line: 2165, column: 9, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2835, file: !3, discriminator: 1)
!2840 = !DILocation(line: 2167, column: 31, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 2167, column: 16)
!2842 = !DILocation(line: 2167, column: 87, scope: !2841)
!2843 = !DILocation(line: 2168, column: 33, scope: !2841)
!2844 = !DILocation(line: 2168, column: 44, scope: !2841)
!2845 = !DILocation(line: 2168, column: 69, scope: !2841)
!2846 = !DILocation(line: 2167, column: 16, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2825, file: !3, discriminator: 1)
!2848 = !DILocation(line: 2169, column: 9, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 2169, column: 9)
!2850 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 2168, column: 75)
!2851 = !DILocation(line: 2169, column: 9, scope: !2850)
!2852 = !DILocation(line: 2169, column: 9, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2849, file: !3, discriminator: 1)
!2854 = !DILocation(line: 2173, column: 17, scope: !2800)
!2855 = !DILocation(line: 2173, column: 26, scope: !2800)
!2856 = !DILocation(line: 2174, column: 54, scope: !2800)
!2857 = !DILocation(line: 2174, column: 17, scope: !2800)
!2858 = !DILocation(line: 2174, column: 36, scope: !2800)
!2859 = !DILocation(line: 2175, column: 52, scope: !2800)
!2860 = !DILocation(line: 2175, column: 17, scope: !2800)
!2861 = !DILocation(line: 2175, column: 34, scope: !2800)
!2862 = !DILocation(line: 2176, column: 28, scope: !2800)
!2863 = !DILocation(line: 2176, column: 5, scope: !2800)
!2864 = !DILocation(line: 2178, column: 35, scope: !2800)
!2865 = !DILocation(line: 2179, column: 5, scope: !2800)
!2866 = !DILocation(line: 2180, column: 5, scope: !2800)
!2867 = !DILocation(line: 2181, column: 1, scope: !2800)
!2868 = distinct !DISubprogram(name: "gatt_client_read_characteristics_for_handle_range_by_uuid16", scope: !3, file: !3, line: 2183, type: !2869, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!93, !105, !109, !109, !109, !109}
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877}
!2872 = !DILocalVariable(name: "callback", arg: 1, scope: !2868, file: !3, line: 2183, type: !105)
!2873 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2868, file: !3, line: 2183, type: !109)
!2874 = !DILocalVariable(name: "start_handle", arg: 3, scope: !2868, file: !3, line: 2183, type: !109)
!2875 = !DILocalVariable(name: "end_handle", arg: 4, scope: !2868, file: !3, line: 2183, type: !109)
!2876 = !DILocalVariable(name: "uuid16", arg: 5, scope: !2868, file: !3, line: 2183, type: !109)
!2877 = !DILocalVariable(name: "peripheral", scope: !2868, file: !3, line: 2185, type: !115)
!2878 = !DILocation(line: 2183, column: 94, scope: !2868)
!2879 = !DILocation(line: 2183, column: 113, scope: !2868)
!2880 = !DILocation(line: 2183, column: 134, scope: !2868)
!2881 = !DILocation(line: 2183, column: 157, scope: !2868)
!2882 = !DILocation(line: 2183, column: 178, scope: !2868)
!2883 = !DILocation(line: 2185, column: 33, scope: !2868)
!2884 = !DILocation(line: 2185, column: 20, scope: !2868)
!2885 = !DILocation(line: 2187, column: 10, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 2187, column: 9)
!2887 = !DILocation(line: 2187, column: 9, scope: !2868)
!2888 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 2190, column: 10, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 2190, column: 9)
!2891 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2889)
!2892 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2889)
!2893 = !DILocation(line: 2190, column: 9, scope: !2868)
!2894 = !DILocation(line: 2194, column: 17, scope: !2868)
!2895 = !DILocation(line: 2194, column: 26, scope: !2868)
!2896 = !DILocation(line: 2195, column: 17, scope: !2868)
!2897 = !DILocation(line: 2195, column: 36, scope: !2868)
!2898 = !DILocation(line: 2196, column: 17, scope: !2868)
!2899 = !DILocation(line: 2196, column: 36, scope: !2868)
!2900 = !DILocation(line: 2197, column: 17, scope: !2868)
!2901 = !DILocation(line: 2197, column: 34, scope: !2868)
!2902 = !DILocation(line: 2198, column: 17, scope: !2868)
!2903 = !DILocation(line: 2198, column: 24, scope: !2868)
!2904 = !DILocation(line: 2199, column: 24, scope: !2868)
!2905 = !DILocation(line: 2199, column: 61, scope: !2868)
!2906 = !DILocation(line: 2199, column: 5, scope: !2868)
!2907 = !DILocation(line: 2200, column: 17, scope: !2868)
!2908 = !DILocation(line: 2200, column: 45, scope: !2868)
!2909 = !DILocation(line: 2201, column: 35, scope: !2868)
!2910 = !DILocation(line: 2203, column: 5, scope: !2868)
!2911 = !DILocation(line: 2204, column: 5, scope: !2868)
!2912 = !DILocation(line: 2205, column: 1, scope: !2868)
!2913 = distinct !DISubprogram(name: "gatt_client_read_characteristics_for_handle_range_by_uuid128", scope: !3, file: !3, line: 2206, type: !2914, isLocal: false, isDefinition: true, scopeLine: 2207, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!93, !105, !109, !109, !109, !92}
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922}
!2917 = !DILocalVariable(name: "callback", arg: 1, scope: !2913, file: !3, line: 2206, type: !105)
!2918 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2913, file: !3, line: 2206, type: !109)
!2919 = !DILocalVariable(name: "start_handle", arg: 3, scope: !2913, file: !3, line: 2206, type: !109)
!2920 = !DILocalVariable(name: "end_handle", arg: 4, scope: !2913, file: !3, line: 2206, type: !109)
!2921 = !DILocalVariable(name: "uuid128", arg: 5, scope: !2913, file: !3, line: 2206, type: !92)
!2922 = !DILocalVariable(name: "peripheral", scope: !2913, file: !3, line: 2208, type: !115)
!2923 = !DILocation(line: 2206, column: 95, scope: !2913)
!2924 = !DILocation(line: 2206, column: 114, scope: !2913)
!2925 = !DILocation(line: 2206, column: 135, scope: !2913)
!2926 = !DILocation(line: 2206, column: 158, scope: !2913)
!2927 = !DILocation(line: 2206, column: 179, scope: !2913)
!2928 = !DILocation(line: 2208, column: 33, scope: !2913)
!2929 = !DILocation(line: 2208, column: 20, scope: !2913)
!2930 = !DILocation(line: 2210, column: 10, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 2210, column: 9)
!2932 = !DILocation(line: 2210, column: 9, scope: !2913)
!2933 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 2213, column: 10, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 2213, column: 9)
!2936 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2934)
!2937 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2934)
!2938 = !DILocation(line: 2213, column: 9, scope: !2913)
!2939 = !DILocation(line: 2217, column: 17, scope: !2913)
!2940 = !DILocation(line: 2217, column: 26, scope: !2913)
!2941 = !DILocation(line: 2218, column: 17, scope: !2913)
!2942 = !DILocation(line: 2218, column: 36, scope: !2913)
!2943 = !DILocation(line: 2219, column: 17, scope: !2913)
!2944 = !DILocation(line: 2219, column: 36, scope: !2913)
!2945 = !DILocation(line: 2220, column: 17, scope: !2913)
!2946 = !DILocation(line: 2220, column: 34, scope: !2913)
!2947 = !DILocation(line: 2221, column: 17, scope: !2913)
!2948 = !DILocation(line: 2221, column: 24, scope: !2913)
!2949 = !DILocation(line: 2222, column: 5, scope: !2913)
!2950 = !DILocation(line: 2223, column: 17, scope: !2913)
!2951 = !DILocation(line: 2223, column: 45, scope: !2913)
!2952 = !DILocation(line: 2224, column: 35, scope: !2913)
!2953 = !DILocation(line: 2226, column: 5, scope: !2913)
!2954 = !DILocation(line: 2227, column: 5, scope: !2913)
!2955 = !DILocation(line: 2228, column: 1, scope: !2913)
!2956 = distinct !DISubprogram(name: "gatt_client_read_characteristic_descriptor_using_descriptor_handle", scope: !3, file: !3, line: 2229, type: !1964, isLocal: false, isDefinition: true, scopeLine: 2230, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2957)
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DILocalVariable(name: "callback", arg: 1, scope: !2956, file: !3, line: 2229, type: !105)
!2959 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2956, file: !3, line: 2229, type: !112)
!2960 = !DILocalVariable(name: "descriptor_handle", arg: 3, scope: !2956, file: !3, line: 2229, type: !109)
!2961 = !DILocalVariable(name: "peripheral", scope: !2956, file: !3, line: 2231, type: !115)
!2962 = !DILocation(line: 2229, column: 101, scope: !2956)
!2963 = !DILocation(line: 2229, column: 128, scope: !2956)
!2964 = !DILocation(line: 2229, column: 149, scope: !2956)
!2965 = !DILocation(line: 2231, column: 33, scope: !2956)
!2966 = !DILocation(line: 2231, column: 20, scope: !2956)
!2967 = !DILocation(line: 2233, column: 10, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 2233, column: 9)
!2969 = !DILocation(line: 2233, column: 9, scope: !2956)
!2970 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 2236, column: 10, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 2236, column: 9)
!2973 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !2971)
!2974 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !2971)
!2975 = !DILocation(line: 2236, column: 9, scope: !2956)
!2976 = !DILocation(line: 2240, column: 17, scope: !2956)
!2977 = !DILocation(line: 2240, column: 26, scope: !2956)
!2978 = !DILocation(line: 2241, column: 17, scope: !2956)
!2979 = !DILocation(line: 2241, column: 34, scope: !2956)
!2980 = !DILocation(line: 2243, column: 35, scope: !2956)
!2981 = !DILocation(line: 2244, column: 5, scope: !2956)
!2982 = !DILocation(line: 2245, column: 5, scope: !2956)
!2983 = !DILocation(line: 2246, column: 1, scope: !2956)
!2984 = distinct !DISubprogram(name: "gatt_client_read_characteristic_descriptor", scope: !3, file: !3, line: 2248, type: !2985, isLocal: false, isDefinition: true, scopeLine: 2249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2994)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!93, !105, !112, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_characteristic_descriptor_t", file: !1434, line: 40, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 36, size: 160, elements: !2990)
!2990 = !{!2991, !2992, !2993}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2989, file: !1434, line: 37, baseType: !109, size: 16)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !2989, file: !1434, line: 38, baseType: !109, size: 16, offset: 16)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !2989, file: !1434, line: 39, baseType: !135, size: 128, offset: 32)
!2994 = !{!2995, !2996, !2997}
!2995 = !DILocalVariable(name: "callback", arg: 1, scope: !2984, file: !3, line: 2248, type: !105)
!2996 = !DILocalVariable(name: "con_handle", arg: 2, scope: !2984, file: !3, line: 2248, type: !112)
!2997 = !DILocalVariable(name: "descriptor", arg: 3, scope: !2984, file: !3, line: 2248, type: !2987)
!2998 = !DILocation(line: 2248, column: 77, scope: !2984)
!2999 = !DILocation(line: 2248, column: 104, scope: !2984)
!3000 = !DILocation(line: 2248, column: 157, scope: !2984)
!3001 = !DILocation(line: 2250, column: 113, scope: !2984)
!3002 = !{!3003, !325, i64 0}
!3003 = !{!"", !325, i64 0, !325, i64 2, !228, i64 4}
!3004 = !DILocation(line: 2250, column: 12, scope: !2984)
!3005 = !DILocation(line: 2250, column: 5, scope: !2984)
!3006 = distinct !DISubprogram(name: "gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset", scope: !3, file: !3, line: 2253, type: !2316, isLocal: false, isDefinition: true, scopeLine: 2254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3007)
!3007 = !{!3008, !3009, !3010, !3011, !3012}
!3008 = !DILocalVariable(name: "callback", arg: 1, scope: !3006, file: !3, line: 2253, type: !105)
!3009 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3006, file: !3, line: 2253, type: !112)
!3010 = !DILocalVariable(name: "descriptor_handle", arg: 3, scope: !3006, file: !3, line: 2253, type: !109)
!3011 = !DILocalVariable(name: "offset", arg: 4, scope: !3006, file: !3, line: 2253, type: !109)
!3012 = !DILocalVariable(name: "peripheral", scope: !3006, file: !3, line: 2255, type: !115)
!3013 = !DILocation(line: 2253, column: 118, scope: !3006)
!3014 = !DILocation(line: 2253, column: 145, scope: !3006)
!3015 = !DILocation(line: 2253, column: 166, scope: !3006)
!3016 = !DILocation(line: 2253, column: 194, scope: !3006)
!3017 = !DILocation(line: 2255, column: 33, scope: !3006)
!3018 = !DILocation(line: 2255, column: 20, scope: !3006)
!3019 = !DILocation(line: 2257, column: 10, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 2257, column: 9)
!3021 = !DILocation(line: 2257, column: 9, scope: !3006)
!3022 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 2260, column: 10, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 2260, column: 9)
!3025 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3023)
!3026 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3023)
!3027 = !DILocation(line: 2260, column: 9, scope: !3006)
!3028 = !DILocation(line: 2264, column: 17, scope: !3006)
!3029 = !DILocation(line: 2264, column: 26, scope: !3006)
!3030 = !DILocation(line: 2265, column: 17, scope: !3006)
!3031 = !DILocation(line: 2265, column: 34, scope: !3006)
!3032 = !DILocation(line: 2266, column: 17, scope: !3006)
!3033 = !DILocation(line: 2266, column: 34, scope: !3006)
!3034 = !DILocation(line: 2267, column: 35, scope: !3006)
!3035 = !DILocation(line: 2268, column: 5, scope: !3006)
!3036 = !DILocation(line: 2269, column: 5, scope: !3006)
!3037 = !DILocation(line: 2270, column: 1, scope: !3006)
!3038 = distinct !DISubprogram(name: "gatt_client_read_long_characteristic_descriptor_using_descriptor_handle", scope: !3, file: !3, line: 2272, type: !1964, isLocal: false, isDefinition: true, scopeLine: 2273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "callback", arg: 1, scope: !3038, file: !3, line: 2272, type: !105)
!3041 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3038, file: !3, line: 2272, type: !112)
!3042 = !DILocalVariable(name: "descriptor_handle", arg: 3, scope: !3038, file: !3, line: 2272, type: !109)
!3043 = !DILocation(line: 2272, column: 106, scope: !3038)
!3044 = !DILocation(line: 2272, column: 133, scope: !3038)
!3045 = !DILocation(line: 2272, column: 154, scope: !3038)
!3046 = !DILocation(line: 2274, column: 12, scope: !3038)
!3047 = !DILocation(line: 2274, column: 5, scope: !3038)
!3048 = distinct !DISubprogram(name: "gatt_client_read_long_characteristic_descriptor", scope: !3, file: !3, line: 2277, type: !2985, isLocal: false, isDefinition: true, scopeLine: 2278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3049)
!3049 = !{!3050, !3051, !3052}
!3050 = !DILocalVariable(name: "callback", arg: 1, scope: !3048, file: !3, line: 2277, type: !105)
!3051 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3048, file: !3, line: 2277, type: !112)
!3052 = !DILocalVariable(name: "descriptor", arg: 3, scope: !3048, file: !3, line: 2277, type: !2987)
!3053 = !DILocation(line: 2277, column: 82, scope: !3048)
!3054 = !DILocation(line: 2277, column: 109, scope: !3048)
!3055 = !DILocation(line: 2277, column: 162, scope: !3048)
!3056 = !DILocation(line: 2279, column: 118, scope: !3048)
!3057 = !DILocation(line: 2272, column: 106, scope: !3038, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 2279, column: 12, scope: !3048)
!3059 = !DILocation(line: 2272, column: 133, scope: !3038, inlinedAt: !3058)
!3060 = !DILocation(line: 2272, column: 154, scope: !3038, inlinedAt: !3058)
!3061 = !DILocation(line: 2274, column: 12, scope: !3038, inlinedAt: !3058)
!3062 = !DILocation(line: 2279, column: 5, scope: !3048)
!3063 = distinct !DISubprogram(name: "gatt_client_write_characteristic_descriptor_using_descriptor_handle", scope: !3, file: !3, line: 2282, type: !2166, isLocal: false, isDefinition: true, scopeLine: 2283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070}
!3065 = !DILocalVariable(name: "callback", arg: 1, scope: !3063, file: !3, line: 2282, type: !105)
!3066 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3063, file: !3, line: 2282, type: !112)
!3067 = !DILocalVariable(name: "descriptor_handle", arg: 3, scope: !3063, file: !3, line: 2282, type: !109)
!3068 = !DILocalVariable(name: "length", arg: 4, scope: !3063, file: !3, line: 2282, type: !109)
!3069 = !DILocalVariable(name: "data", arg: 5, scope: !3063, file: !3, line: 2282, type: !92)
!3070 = !DILocalVariable(name: "peripheral", scope: !3063, file: !3, line: 2284, type: !115)
!3071 = !DILocation(line: 2282, column: 102, scope: !3063)
!3072 = !DILocation(line: 2282, column: 129, scope: !3063)
!3073 = !DILocation(line: 2282, column: 150, scope: !3063)
!3074 = !DILocation(line: 2282, column: 178, scope: !3063)
!3075 = !DILocation(line: 2282, column: 197, scope: !3063)
!3076 = !DILocation(line: 2284, column: 33, scope: !3063)
!3077 = !DILocation(line: 2284, column: 20, scope: !3063)
!3078 = !DILocation(line: 2286, column: 10, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 2286, column: 9)
!3080 = !DILocation(line: 2286, column: 9, scope: !3063)
!3081 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 2289, column: 10, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 2289, column: 9)
!3084 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3082)
!3085 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3082)
!3086 = !DILocation(line: 2289, column: 9, scope: !3063)
!3087 = !DILocation(line: 2293, column: 17, scope: !3063)
!3088 = !DILocation(line: 2293, column: 26, scope: !3063)
!3089 = !DILocation(line: 2294, column: 17, scope: !3063)
!3090 = !DILocation(line: 2294, column: 34, scope: !3063)
!3091 = !DILocation(line: 2295, column: 17, scope: !3063)
!3092 = !DILocation(line: 2295, column: 34, scope: !3063)
!3093 = !DILocation(line: 2296, column: 17, scope: !3063)
!3094 = !DILocation(line: 2296, column: 34, scope: !3063)
!3095 = !DILocation(line: 2297, column: 17, scope: !3063)
!3096 = !DILocation(line: 2297, column: 33, scope: !3063)
!3097 = !DILocation(line: 2298, column: 35, scope: !3063)
!3098 = !DILocation(line: 2299, column: 5, scope: !3063)
!3099 = !DILocation(line: 2300, column: 5, scope: !3063)
!3100 = !DILocation(line: 2301, column: 1, scope: !3063)
!3101 = distinct !DISubprogram(name: "gatt_client_write_characteristic_descriptor", scope: !3, file: !3, line: 2303, type: !3102, isLocal: false, isDefinition: true, scopeLine: 2304, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!93, !105, !112, !2987, !109, !92}
!3104 = !{!3105, !3106, !3107, !3108, !3109}
!3105 = !DILocalVariable(name: "callback", arg: 1, scope: !3101, file: !3, line: 2303, type: !105)
!3106 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3101, file: !3, line: 2303, type: !112)
!3107 = !DILocalVariable(name: "descriptor", arg: 3, scope: !3101, file: !3, line: 2303, type: !2987)
!3108 = !DILocalVariable(name: "length", arg: 4, scope: !3101, file: !3, line: 2303, type: !109)
!3109 = !DILocalVariable(name: "value", arg: 5, scope: !3101, file: !3, line: 2303, type: !92)
!3110 = !DILocation(line: 2303, column: 78, scope: !3101)
!3111 = !DILocation(line: 2303, column: 105, scope: !3101)
!3112 = !DILocation(line: 2303, column: 158, scope: !3101)
!3113 = !DILocation(line: 2303, column: 179, scope: !3101)
!3114 = !DILocation(line: 2303, column: 196, scope: !3101)
!3115 = !DILocation(line: 2305, column: 114, scope: !3101)
!3116 = !DILocation(line: 2305, column: 12, scope: !3101)
!3117 = !DILocation(line: 2305, column: 5, scope: !3101)
!3118 = distinct !DISubprogram(name: "gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset", scope: !3, file: !3, line: 2308, type: !2707, isLocal: false, isDefinition: true, scopeLine: 2309, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125, !3126}
!3120 = !DILocalVariable(name: "callback", arg: 1, scope: !3118, file: !3, line: 2308, type: !105)
!3121 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3118, file: !3, line: 2308, type: !112)
!3122 = !DILocalVariable(name: "descriptor_handle", arg: 3, scope: !3118, file: !3, line: 2308, type: !109)
!3123 = !DILocalVariable(name: "offset", arg: 4, scope: !3118, file: !3, line: 2308, type: !109)
!3124 = !DILocalVariable(name: "length", arg: 5, scope: !3118, file: !3, line: 2308, type: !109)
!3125 = !DILocalVariable(name: "data", arg: 6, scope: !3118, file: !3, line: 2308, type: !92)
!3126 = !DILocalVariable(name: "peripheral", scope: !3118, file: !3, line: 2310, type: !115)
!3127 = !DILocation(line: 2308, column: 119, scope: !3118)
!3128 = !DILocation(line: 2308, column: 146, scope: !3118)
!3129 = !DILocation(line: 2308, column: 167, scope: !3118)
!3130 = !DILocation(line: 2308, column: 195, scope: !3118)
!3131 = !DILocation(line: 2308, column: 212, scope: !3118)
!3132 = !DILocation(line: 2308, column: 231, scope: !3118)
!3133 = !DILocation(line: 2310, column: 33, scope: !3118)
!3134 = !DILocation(line: 2310, column: 20, scope: !3118)
!3135 = !DILocation(line: 2312, column: 10, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2312, column: 9)
!3137 = !DILocation(line: 2312, column: 9, scope: !3118)
!3138 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 2315, column: 10, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2315, column: 9)
!3141 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3139)
!3142 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3139)
!3143 = !DILocation(line: 2315, column: 9, scope: !3118)
!3144 = !DILocation(line: 2319, column: 17, scope: !3118)
!3145 = !DILocation(line: 2319, column: 26, scope: !3118)
!3146 = !DILocation(line: 2320, column: 17, scope: !3118)
!3147 = !DILocation(line: 2320, column: 34, scope: !3118)
!3148 = !DILocation(line: 2321, column: 17, scope: !3118)
!3149 = !DILocation(line: 2321, column: 34, scope: !3118)
!3150 = !DILocation(line: 2322, column: 17, scope: !3118)
!3151 = !DILocation(line: 2322, column: 34, scope: !3118)
!3152 = !DILocation(line: 2323, column: 17, scope: !3118)
!3153 = !DILocation(line: 2323, column: 33, scope: !3118)
!3154 = !DILocation(line: 2324, column: 35, scope: !3118)
!3155 = !DILocation(line: 2325, column: 5, scope: !3118)
!3156 = !DILocation(line: 2326, column: 5, scope: !3118)
!3157 = !DILocation(line: 2327, column: 1, scope: !3118)
!3158 = distinct !DISubprogram(name: "gatt_client_write_long_characteristic_descriptor_using_descriptor_handle", scope: !3, file: !3, line: 2329, type: !2166, isLocal: false, isDefinition: true, scopeLine: 2330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3159)
!3159 = !{!3160, !3161, !3162, !3163, !3164}
!3160 = !DILocalVariable(name: "callback", arg: 1, scope: !3158, file: !3, line: 2329, type: !105)
!3161 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3158, file: !3, line: 2329, type: !112)
!3162 = !DILocalVariable(name: "descriptor_handle", arg: 3, scope: !3158, file: !3, line: 2329, type: !109)
!3163 = !DILocalVariable(name: "length", arg: 4, scope: !3158, file: !3, line: 2329, type: !109)
!3164 = !DILocalVariable(name: "data", arg: 5, scope: !3158, file: !3, line: 2329, type: !92)
!3165 = !DILocation(line: 2329, column: 107, scope: !3158)
!3166 = !DILocation(line: 2329, column: 134, scope: !3158)
!3167 = !DILocation(line: 2329, column: 155, scope: !3158)
!3168 = !DILocation(line: 2329, column: 183, scope: !3158)
!3169 = !DILocation(line: 2329, column: 200, scope: !3158)
!3170 = !DILocation(line: 2331, column: 12, scope: !3158)
!3171 = !DILocation(line: 2331, column: 5, scope: !3158)
!3172 = distinct !DISubprogram(name: "gatt_client_write_long_characteristic_descriptor", scope: !3, file: !3, line: 2334, type: !3102, isLocal: false, isDefinition: true, scopeLine: 2335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178}
!3174 = !DILocalVariable(name: "callback", arg: 1, scope: !3172, file: !3, line: 2334, type: !105)
!3175 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3172, file: !3, line: 2334, type: !112)
!3176 = !DILocalVariable(name: "descriptor", arg: 3, scope: !3172, file: !3, line: 2334, type: !2987)
!3177 = !DILocalVariable(name: "length", arg: 4, scope: !3172, file: !3, line: 2334, type: !109)
!3178 = !DILocalVariable(name: "value", arg: 5, scope: !3172, file: !3, line: 2334, type: !92)
!3179 = !DILocation(line: 2334, column: 83, scope: !3172)
!3180 = !DILocation(line: 2334, column: 110, scope: !3172)
!3181 = !DILocation(line: 2334, column: 163, scope: !3172)
!3182 = !DILocation(line: 2334, column: 184, scope: !3172)
!3183 = !DILocation(line: 2334, column: 201, scope: !3172)
!3184 = !DILocation(line: 2336, column: 119, scope: !3172)
!3185 = !DILocation(line: 2329, column: 107, scope: !3158, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 2336, column: 12, scope: !3172)
!3187 = !DILocation(line: 2329, column: 134, scope: !3158, inlinedAt: !3186)
!3188 = !DILocation(line: 2329, column: 155, scope: !3158, inlinedAt: !3186)
!3189 = !DILocation(line: 2329, column: 183, scope: !3158, inlinedAt: !3186)
!3190 = !DILocation(line: 2329, column: 200, scope: !3158, inlinedAt: !3186)
!3191 = !DILocation(line: 2331, column: 12, scope: !3158, inlinedAt: !3186)
!3192 = !DILocation(line: 2336, column: 5, scope: !3172)
!3193 = distinct !DISubprogram(name: "gatt_client_prepare_write", scope: !3, file: !3, line: 2342, type: !2707, isLocal: false, isDefinition: true, scopeLine: 2343, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3194)
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200, !3201}
!3195 = !DILocalVariable(name: "callback", arg: 1, scope: !3193, file: !3, line: 2342, type: !105)
!3196 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3193, file: !3, line: 2342, type: !112)
!3197 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !3193, file: !3, line: 2342, type: !109)
!3198 = !DILocalVariable(name: "offset", arg: 4, scope: !3193, file: !3, line: 2342, type: !109)
!3199 = !DILocalVariable(name: "length", arg: 5, scope: !3193, file: !3, line: 2342, type: !109)
!3200 = !DILocalVariable(name: "data", arg: 6, scope: !3193, file: !3, line: 2342, type: !92)
!3201 = !DILocalVariable(name: "peripheral", scope: !3193, file: !3, line: 2344, type: !115)
!3202 = !DILocation(line: 2342, column: 60, scope: !3193)
!3203 = !DILocation(line: 2342, column: 87, scope: !3193)
!3204 = !DILocation(line: 2342, column: 108, scope: !3193)
!3205 = !DILocation(line: 2342, column: 135, scope: !3193)
!3206 = !DILocation(line: 2342, column: 152, scope: !3193)
!3207 = !DILocation(line: 2342, column: 169, scope: !3193)
!3208 = !DILocation(line: 2344, column: 33, scope: !3193)
!3209 = !DILocation(line: 2344, column: 20, scope: !3193)
!3210 = !DILocation(line: 2346, column: 10, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 2346, column: 9)
!3212 = !DILocation(line: 2346, column: 9, scope: !3193)
!3213 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 2349, column: 10, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 2349, column: 9)
!3216 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3214)
!3217 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3214)
!3218 = !DILocation(line: 2349, column: 9, scope: !3193)
!3219 = !DILocation(line: 2353, column: 17, scope: !3193)
!3220 = !DILocation(line: 2353, column: 26, scope: !3193)
!3221 = !DILocation(line: 2354, column: 17, scope: !3193)
!3222 = !DILocation(line: 2354, column: 34, scope: !3193)
!3223 = !DILocation(line: 2355, column: 17, scope: !3193)
!3224 = !DILocation(line: 2355, column: 34, scope: !3193)
!3225 = !DILocation(line: 2356, column: 17, scope: !3193)
!3226 = !DILocation(line: 2356, column: 34, scope: !3193)
!3227 = !DILocation(line: 2357, column: 17, scope: !3193)
!3228 = !DILocation(line: 2357, column: 33, scope: !3193)
!3229 = !DILocation(line: 2358, column: 35, scope: !3193)
!3230 = !DILocation(line: 2359, column: 5, scope: !3193)
!3231 = !DILocation(line: 2360, column: 5, scope: !3193)
!3232 = !DILocation(line: 2361, column: 1, scope: !3193)
!3233 = distinct !DISubprogram(name: "gatt_client_execute_write", scope: !3, file: !3, line: 2366, type: !1472, isLocal: false, isDefinition: true, scopeLine: 2367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DILocalVariable(name: "callback", arg: 1, scope: !3233, file: !3, line: 2366, type: !105)
!3236 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3233, file: !3, line: 2366, type: !112)
!3237 = !DILocalVariable(name: "peripheral", scope: !3233, file: !3, line: 2368, type: !115)
!3238 = !DILocation(line: 2366, column: 60, scope: !3233)
!3239 = !DILocation(line: 2366, column: 87, scope: !3233)
!3240 = !DILocation(line: 2368, column: 33, scope: !3233)
!3241 = !DILocation(line: 2368, column: 20, scope: !3233)
!3242 = !DILocation(line: 2370, column: 10, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 2370, column: 9)
!3244 = !DILocation(line: 2370, column: 9, scope: !3233)
!3245 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 2373, column: 10, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 2373, column: 9)
!3248 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3246)
!3249 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3246)
!3250 = !DILocation(line: 2373, column: 9, scope: !3233)
!3251 = !DILocation(line: 2377, column: 17, scope: !3233)
!3252 = !DILocation(line: 2377, column: 26, scope: !3233)
!3253 = !DILocation(line: 2378, column: 35, scope: !3233)
!3254 = !DILocation(line: 2379, column: 5, scope: !3233)
!3255 = !DILocation(line: 2380, column: 5, scope: !3233)
!3256 = !DILocation(line: 2381, column: 1, scope: !3233)
!3257 = distinct !DISubprogram(name: "gatt_client_cancel_write", scope: !3, file: !3, line: 2386, type: !1472, isLocal: false, isDefinition: true, scopeLine: 2387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DILocalVariable(name: "callback", arg: 1, scope: !3257, file: !3, line: 2386, type: !105)
!3260 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3257, file: !3, line: 2386, type: !112)
!3261 = !DILocalVariable(name: "peripheral", scope: !3257, file: !3, line: 2388, type: !115)
!3262 = !DILocation(line: 2386, column: 59, scope: !3257)
!3263 = !DILocation(line: 2386, column: 86, scope: !3257)
!3264 = !DILocation(line: 2388, column: 33, scope: !3257)
!3265 = !DILocation(line: 2388, column: 20, scope: !3257)
!3266 = !DILocation(line: 2390, column: 10, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 2390, column: 9)
!3268 = !DILocation(line: 2390, column: 9, scope: !3257)
!3269 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 2393, column: 10, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 2393, column: 9)
!3272 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3270)
!3273 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3270)
!3274 = !DILocation(line: 2393, column: 9, scope: !3257)
!3275 = !DILocation(line: 2397, column: 17, scope: !3257)
!3276 = !DILocation(line: 2397, column: 26, scope: !3257)
!3277 = !DILocation(line: 2398, column: 35, scope: !3257)
!3278 = !DILocation(line: 2399, column: 5, scope: !3257)
!3279 = !DILocation(line: 2400, column: 5, scope: !3257)
!3280 = !DILocation(line: 2401, column: 1, scope: !3257)
!3281 = distinct !DISubprogram(name: "gatt_client_pts_suppress_mtu_exchange", scope: !3, file: !3, line: 2403, type: !254, isLocal: false, isDefinition: true, scopeLine: 2404, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !256)
!3282 = !DILocation(line: 2405, column: 39, scope: !3281)
!3283 = !DILocation(line: 2406, column: 1, scope: !3281)
!3284 = distinct !DISubprogram(name: "gatt_client_deserialize_service", scope: !3, file: !3, line: 2408, type: !3285, isLocal: false, isDefinition: true, scopeLine: 2409, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !2003, !159, !2040}
!3287 = !{!3288, !3289, !3290}
!3288 = !DILocalVariable(name: "packet", arg: 1, scope: !3284, file: !3, line: 2408, type: !2003)
!3289 = !DILocalVariable(name: "offset", arg: 2, scope: !3284, file: !3, line: 2408, type: !159)
!3290 = !DILocalVariable(name: "service", arg: 3, scope: !3284, file: !3, line: 2408, type: !2040)
!3291 = !DILocation(line: 2408, column: 53, scope: !3284)
!3292 = !DILocation(line: 2408, column: 65, scope: !3284)
!3293 = !DILocation(line: 2408, column: 96, scope: !3284)
!3294 = !DILocation(line: 2410, column: 35, scope: !3284)
!3295 = !DILocation(line: 2410, column: 14, scope: !3284)
!3296 = !DILocation(line: 2410, column: 33, scope: !3284)
!3297 = !DILocation(line: 2411, column: 70, scope: !3284)
!3298 = !DILocation(line: 2411, column: 33, scope: !3284)
!3299 = !DILocation(line: 2411, column: 14, scope: !3284)
!3300 = !DILocation(line: 2411, column: 31, scope: !3284)
!3301 = !DILocation(line: 2412, column: 32, scope: !3284)
!3302 = !DILocation(line: 2412, column: 18, scope: !3284)
!3303 = !DILocation(line: 2412, column: 38, scope: !3284)
!3304 = !DILocation(line: 2412, column: 5, scope: !3284)
!3305 = !DILocation(line: 2413, column: 9, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 2413, column: 9)
!3307 = !DILocation(line: 2413, column: 9, scope: !3284)
!3308 = !DILocation(line: 2414, column: 27, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 2413, column: 54)
!3310 = !DILocation(line: 2414, column: 18, scope: !3309)
!3311 = !DILocation(line: 2414, column: 25, scope: !3309)
!3312 = !{!2071, !325, i64 4}
!3313 = !DILocation(line: 2415, column: 5, scope: !3309)
!3314 = !DILocation(line: 2416, column: 1, scope: !3284)
!3315 = distinct !DISubprogram(name: "gatt_client_deserialize_characteristic", scope: !3, file: !3, line: 2418, type: !3316, isLocal: false, isDefinition: true, scopeLine: 2419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !2003, !159, !1432}
!3318 = !{!3319, !3320, !3321}
!3319 = !DILocalVariable(name: "packet", arg: 1, scope: !3315, file: !3, line: 2418, type: !2003)
!3320 = !DILocalVariable(name: "offset", arg: 2, scope: !3315, file: !3, line: 2418, type: !159)
!3321 = !DILocalVariable(name: "characteristic", arg: 3, scope: !3315, file: !3, line: 2418, type: !1432)
!3322 = !DILocation(line: 2418, column: 60, scope: !3315)
!3323 = !DILocation(line: 2418, column: 72, scope: !3315)
!3324 = !DILocation(line: 2418, column: 110, scope: !3315)
!3325 = !DILocation(line: 2420, column: 36, scope: !3315)
!3326 = !DILocation(line: 2420, column: 21, scope: !3315)
!3327 = !DILocation(line: 2420, column: 34, scope: !3315)
!3328 = !{!2265, !325, i64 0}
!3329 = !DILocation(line: 2421, column: 73, scope: !3315)
!3330 = !DILocation(line: 2421, column: 36, scope: !3315)
!3331 = !DILocation(line: 2421, column: 21, scope: !3315)
!3332 = !DILocation(line: 2421, column: 34, scope: !3315)
!3333 = !DILocation(line: 2422, column: 71, scope: !3315)
!3334 = !DILocation(line: 2422, column: 34, scope: !3315)
!3335 = !DILocation(line: 2422, column: 21, scope: !3315)
!3336 = !DILocation(line: 2422, column: 32, scope: !3315)
!3337 = !DILocation(line: 2423, column: 71, scope: !3315)
!3338 = !DILocation(line: 2423, column: 34, scope: !3315)
!3339 = !DILocation(line: 2423, column: 21, scope: !3315)
!3340 = !DILocation(line: 2423, column: 32, scope: !3315)
!3341 = !DILocation(line: 2424, column: 32, scope: !3315)
!3342 = !DILocation(line: 2424, column: 18, scope: !3315)
!3343 = !DILocation(line: 2424, column: 38, scope: !3315)
!3344 = !DILocation(line: 2424, column: 5, scope: !3315)
!3345 = !DILocation(line: 2425, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 2425, column: 9)
!3347 = !DILocation(line: 2425, column: 9, scope: !3315)
!3348 = !DILocation(line: 2426, column: 34, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 2425, column: 61)
!3350 = !DILocation(line: 2426, column: 25, scope: !3349)
!3351 = !DILocation(line: 2426, column: 32, scope: !3349)
!3352 = !{!2265, !325, i64 8}
!3353 = !DILocation(line: 2427, column: 5, scope: !3349)
!3354 = !DILocation(line: 2428, column: 1, scope: !3315)
!3355 = distinct !DISubprogram(name: "gatt_client_deserialize_characteristic_descriptor", scope: !3, file: !3, line: 2430, type: !3356, isLocal: false, isDefinition: true, scopeLine: 2431, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !2003, !159, !2987}
!3358 = !{!3359, !3360, !3361}
!3359 = !DILocalVariable(name: "packet", arg: 1, scope: !3355, file: !3, line: 2430, type: !2003)
!3360 = !DILocalVariable(name: "offset", arg: 2, scope: !3355, file: !3, line: 2430, type: !159)
!3361 = !DILocalVariable(name: "descriptor", arg: 3, scope: !3355, file: !3, line: 2430, type: !2987)
!3362 = !DILocation(line: 2430, column: 71, scope: !3355)
!3363 = !DILocation(line: 2430, column: 83, scope: !3355)
!3364 = !DILocation(line: 2430, column: 132, scope: !3355)
!3365 = !DILocation(line: 2432, column: 26, scope: !3355)
!3366 = !DILocation(line: 2432, column: 17, scope: !3355)
!3367 = !DILocation(line: 2432, column: 24, scope: !3355)
!3368 = !DILocation(line: 2433, column: 32, scope: !3355)
!3369 = !DILocation(line: 2433, column: 18, scope: !3355)
!3370 = !DILocation(line: 2433, column: 38, scope: !3355)
!3371 = !DILocation(line: 2433, column: 5, scope: !3355)
!3372 = !DILocation(line: 2434, column: 9, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 2434, column: 9)
!3374 = !DILocation(line: 2434, column: 9, scope: !3355)
!3375 = !DILocation(line: 2435, column: 30, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 2434, column: 57)
!3377 = !DILocation(line: 2435, column: 21, scope: !3376)
!3378 = !DILocation(line: 2435, column: 28, scope: !3376)
!3379 = !{!3003, !325, i64 2}
!3380 = !DILocation(line: 2436, column: 5, scope: !3376)
!3381 = !DILocation(line: 2437, column: 1, scope: !3355)
!3382 = distinct !DISubprogram(name: "gatt_client_listen_for_characteristic_value_updates_simple", scope: !3, file: !3, line: 2439, type: !3383, isLocal: false, isDefinition: true, scopeLine: 2440, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3386)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !99, !105, !112, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 46, baseType: !110)
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DILocalVariable(name: "notification", arg: 1, scope: !3382, file: !3, line: 2439, type: !99)
!3388 = !DILocalVariable(name: "packet_handler", arg: 2, scope: !3382, file: !3, line: 2439, type: !105)
!3389 = !DILocalVariable(name: "con_handle", arg: 3, scope: !3382, file: !3, line: 2439, type: !112)
!3390 = !DILocalVariable(name: "value_handle", arg: 4, scope: !3382, file: !3, line: 2439, type: !3385)
!3391 = !DILocation(line: 2439, column: 93, scope: !3382)
!3392 = !DILocation(line: 2439, column: 132, scope: !3382)
!3393 = !DILocation(line: 2439, column: 165, scope: !3382)
!3394 = !DILocation(line: 2439, column: 181, scope: !3382)
!3395 = !DILocation(line: 2441, column: 19, scope: !3382)
!3396 = !DILocation(line: 2441, column: 28, scope: !3382)
!3397 = !DILocation(line: 2442, column: 19, scope: !3382)
!3398 = !DILocation(line: 2442, column: 30, scope: !3382)
!3399 = !DILocation(line: 2443, column: 19, scope: !3382)
!3400 = !DILocation(line: 2443, column: 36, scope: !3382)
!3401 = !{!1455, !325, i64 10}
!3402 = !DILocation(line: 2444, column: 5, scope: !3382)
!3403 = !DILocation(line: 2445, column: 1, scope: !3382)
!3404 = distinct !DISubprogram(name: "gatt_client_discover_self_characteristic_descriptors", scope: !3, file: !3, line: 2447, type: !1472, isLocal: false, isDefinition: true, scopeLine: 2448, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3405)
!3405 = !{!3406, !3407, !3408}
!3406 = !DILocalVariable(name: "callback", arg: 1, scope: !3404, file: !3, line: 2447, type: !105)
!3407 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3404, file: !3, line: 2447, type: !112)
!3408 = !DILocalVariable(name: "peripheral", scope: !3404, file: !3, line: 2449, type: !115)
!3409 = !DILocation(line: 2447, column: 87, scope: !3404)
!3410 = !DILocation(line: 2447, column: 114, scope: !3404)
!3411 = !DILocation(line: 2449, column: 33, scope: !3404)
!3412 = !DILocation(line: 2449, column: 20, scope: !3404)
!3413 = !DILocation(line: 2451, column: 10, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 2451, column: 9)
!3415 = !DILocation(line: 2451, column: 9, scope: !3404)
!3416 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 2454, column: 10, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 2454, column: 9)
!3419 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3417)
!3420 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3417)
!3421 = !DILocation(line: 2454, column: 9, scope: !3404)
!3422 = !DILocation(line: 2458, column: 17, scope: !3404)
!3423 = !DILocation(line: 2458, column: 26, scope: !3404)
!3424 = !DILocation(line: 2459, column: 17, scope: !3404)
!3425 = !DILocation(line: 2459, column: 36, scope: !3404)
!3426 = !DILocation(line: 2460, column: 17, scope: !3404)
!3427 = !DILocation(line: 2460, column: 36, scope: !3404)
!3428 = !DILocation(line: 2461, column: 35, scope: !3404)
!3429 = !DILocation(line: 2463, column: 5, scope: !3404)
!3430 = !DILocation(line: 2464, column: 5, scope: !3404)
!3431 = !DILocation(line: 2465, column: 1, scope: !3404)
!3432 = distinct !DISubprogram(name: "gatt_client_discover_self_characteristics_for_service", scope: !3, file: !3, line: 2467, type: !1472, isLocal: false, isDefinition: true, scopeLine: 2468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "callback", arg: 1, scope: !3432, file: !3, line: 2467, type: !105)
!3435 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3432, file: !3, line: 2467, type: !112)
!3436 = !DILocalVariable(name: "peripheral", scope: !3432, file: !3, line: 2469, type: !115)
!3437 = !DILocation(line: 2467, column: 88, scope: !3432)
!3438 = !DILocation(line: 2467, column: 115, scope: !3432)
!3439 = !DILocation(line: 2469, column: 33, scope: !3432)
!3440 = !DILocation(line: 2469, column: 20, scope: !3432)
!3441 = !DILocation(line: 2471, column: 10, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 2471, column: 9)
!3443 = !DILocation(line: 2471, column: 9, scope: !3432)
!3444 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 2474, column: 10, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 2474, column: 9)
!3447 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3445)
!3448 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3445)
!3449 = !DILocation(line: 2474, column: 9, scope: !3432)
!3450 = !DILocation(line: 2478, column: 17, scope: !3432)
!3451 = !DILocation(line: 2478, column: 26, scope: !3432)
!3452 = !DILocation(line: 2479, column: 17, scope: !3432)
!3453 = !DILocation(line: 2479, column: 36, scope: !3432)
!3454 = !DILocation(line: 2480, column: 17, scope: !3432)
!3455 = !DILocation(line: 2480, column: 36, scope: !3432)
!3456 = !DILocation(line: 2481, column: 17, scope: !3432)
!3457 = !DILocation(line: 2481, column: 34, scope: !3432)
!3458 = !DILocation(line: 2482, column: 17, scope: !3432)
!3459 = !DILocation(line: 2482, column: 45, scope: !3432)
!3460 = !DILocation(line: 2483, column: 35, scope: !3432)
!3461 = !DILocation(line: 2484, column: 5, scope: !3432)
!3462 = !DILocation(line: 2485, column: 5, scope: !3432)
!3463 = !DILocation(line: 2486, column: 1, scope: !3432)
!3464 = distinct !DISubprogram(name: "call_gatt_client_run", scope: !3, file: !3, line: 2490, type: !254, isLocal: false, isDefinition: true, scopeLine: 2491, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !256)
!3465 = !DILocation(line: 2492, column: 5, scope: !3464)
!3466 = !DILocation(line: 2493, column: 1, scope: !3464)
!3467 = distinct !DISubprogram(name: "gatt_client_sync_mtu", scope: !3, file: !3, line: 2495, type: !3468, isLocal: false, isDefinition: true, scopeLine: 2496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!159, !112, !3385}
!3470 = !{!3471, !3472, !3473}
!3471 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3467, file: !3, line: 2495, type: !112)
!3472 = !DILocalVariable(name: "mtu", arg: 2, scope: !3467, file: !3, line: 2495, type: !3385)
!3473 = !DILocalVariable(name: "peripheral", scope: !3467, file: !3, line: 2497, type: !115)
!3474 = !DILocation(line: 2495, column: 43, scope: !3467)
!3475 = !DILocation(line: 2495, column: 59, scope: !3467)
!3476 = !DILocation(line: 201, column: 67, scope: !301, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 2497, column: 33, scope: !3467)
!3478 = !DILocation(line: 203, column: 28, scope: !301, inlinedAt: !3477)
!3479 = !DILocation(line: 204, column: 5, scope: !315, inlinedAt: !3477)
!3480 = !DILocation(line: 206, column: 25, scope: !317, inlinedAt: !3477)
!3481 = !DILocation(line: 204, column: 77, scope: !319, inlinedAt: !3477)
!3482 = !DILocation(line: 206, column: 36, scope: !317, inlinedAt: !3477)
!3483 = !DILocation(line: 205, column: 37, scope: !307, inlinedAt: !3477)
!3484 = !DILocation(line: 2506, column: 5, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 2506, column: 5)
!3486 = !DILocation(line: 2506, column: 5, scope: !3467)
!3487 = !DILocation(line: 2506, column: 5, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3485, file: !3, discriminator: 1)
!3489 = !DILocation(line: 2507, column: 17, scope: !3467)
!3490 = !DILocation(line: 2507, column: 21, scope: !3467)
!3491 = !DILocation(line: 2508, column: 5, scope: !3467)
!3492 = !DILocation(line: 2509, column: 5, scope: !3467)
!3493 = !DILocation(line: 2510, column: 1, scope: !3467)
!3494 = distinct !DISubprogram(name: "gatt_client_att_emit_mtu_event", scope: !3, file: !3, line: 109, type: !3495, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !112, !109}
!3497 = !{!3498, !3499, !3500, !3501}
!3498 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3494, file: !3, line: 109, type: !112)
!3499 = !DILocalVariable(name: "mtu", arg: 2, scope: !3494, file: !3, line: 109, type: !109)
!3500 = !DILocalVariable(name: "event", scope: !3494, file: !3, line: 114, type: !127)
!3501 = !DILocalVariable(name: "pos", scope: !3494, file: !3, line: 115, type: !159)
!3502 = !DILocation(line: 109, column: 61, scope: !3494)
!3503 = !DILocation(line: 109, column: 82, scope: !3494)
!3504 = !DILocation(line: 111, column: 18, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 111, column: 9)
!3506 = !DILocation(line: 111, column: 10, scope: !3505)
!3507 = !DILocation(line: 111, column: 9, scope: !3494)
!3508 = !DILocation(line: 114, column: 5, scope: !3494)
!3509 = !DILocation(line: 114, column: 13, scope: !3494)
!3510 = !DILocation(line: 115, column: 9, scope: !3494)
!3511 = !DILocation(line: 116, column: 18, scope: !3494)
!3512 = !DILocation(line: 117, column: 5, scope: !3494)
!3513 = !DILocation(line: 117, column: 18, scope: !3494)
!3514 = !DILocation(line: 118, column: 5, scope: !3494)
!3515 = !DILocation(line: 120, column: 5, scope: !3494)
!3516 = !DILocation(line: 121, column: 15, scope: !3494)
!3517 = !DILocation(line: 121, column: 5, scope: !3494)
!3518 = !DILocation(line: 122, column: 1, scope: !3494)
!3519 = !DILocation(line: 122, column: 1, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3494, file: !3, discriminator: 1)
!3521 = distinct !DISubprogram(name: "hci_event_packet_get_type", scope: !3522, file: !3522, line: 38, type: !3523, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3525)
!3522 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!93, !2003}
!3525 = !{!3526}
!3526 = !DILocalVariable(name: "event", arg: 1, scope: !3521, file: !3522, line: 38, type: !2003)
!3527 = !DILocation(line: 38, column: 68, scope: !3521)
!3528 = !DILocation(line: 40, column: 16, scope: !3521)
!3529 = !DILocation(line: 40, column: 9, scope: !3521)
!3530 = distinct !DISubprogram(name: "gatt_client_report_error_if_pending", scope: !3, file: !3, line: 1263, type: !2285, isLocal: true, isDefinition: true, scopeLine: 1264, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3531)
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3530, file: !3, line: 1263, type: !115)
!3533 = !DILocalVariable(name: "error_code", arg: 2, scope: !3530, file: !3, line: 1263, type: !93)
!3534 = !DILocation(line: 1263, column: 64, scope: !3530)
!3535 = !DILocation(line: 1263, column: 84, scope: !3530)
!3536 = !DILocation(line: 252, column: 36, scope: !1355, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 1265, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 1265, column: 9)
!3539 = !DILocation(line: 254, column: 21, scope: !1355, inlinedAt: !3537)
!3540 = !DILocation(line: 254, column: 39, scope: !1355, inlinedAt: !3537)
!3541 = !DILocation(line: 1265, column: 9, scope: !3530)
!3542 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1268, column: 5, scope: !3530)
!3544 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !3543)
!3545 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !3543)
!3546 = !DILocation(line: 1269, column: 5, scope: !3530)
!3547 = !DILocation(line: 1270, column: 1, scope: !3530)
!3548 = !DILocation(line: 1270, column: 1, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !3530, file: !3, discriminator: 1)
!3550 = distinct !DISubprogram(name: "gatt_client_timeout_stop", scope: !3, file: !3, line: 182, type: !865, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3551)
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3550, file: !3, line: 182, type: !115)
!3553 = !DILocation(line: 182, column: 53, scope: !3550)
!3554 = !DILocation(line: 184, column: 5, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 184, column: 5)
!3556 = !DILocation(line: 184, column: 5, scope: !3550)
!3557 = !DILocation(line: 184, column: 5, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3555, file: !3, discriminator: 1)
!3559 = !DILocation(line: 185, column: 48, scope: !3550)
!3560 = !DILocation(line: 185, column: 5, scope: !3550)
!3561 = !DILocation(line: 186, column: 1, scope: !3550)
!3562 = distinct !DISubprogram(name: "report_gatt_characteristics", scope: !3, file: !3, line: 796, type: !424, isLocal: true, isDefinition: true, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3574, !3575}
!3564 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3562, file: !3, line: 796, type: !115)
!3565 = !DILocalVariable(name: "packet", arg: 2, scope: !3562, file: !3, line: 796, type: !92)
!3566 = !DILocalVariable(name: "size", arg: 3, scope: !3562, file: !3, line: 796, type: !109)
!3567 = !DILocalVariable(name: "attr_length", scope: !3562, file: !3, line: 798, type: !93)
!3568 = !DILocalVariable(name: "uuid_length", scope: !3562, file: !3, line: 799, type: !93)
!3569 = !DILocalVariable(name: "i", scope: !3562, file: !3, line: 800, type: !159)
!3570 = !DILocalVariable(name: "start_handle", scope: !3571, file: !3, line: 802, type: !109)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 801, column: 45)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 801, column: 5)
!3573 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 801, column: 5)
!3574 = !DILocalVariable(name: "properties", scope: !3571, file: !3, line: 803, type: !93)
!3575 = !DILocalVariable(name: "value_handle", scope: !3571, file: !3, line: 804, type: !109)
!3576 = !DILocalVariable(name: "uuid128", scope: !3577, file: !3, line: 757, type: !135)
!3577 = distinct !DISubprogram(name: "characteristic_start_found", scope: !3, file: !3, line: 755, type: !3578, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{null, !115, !109, !93, !109, !92, !109}
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3576, !3587}
!3581 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3577, file: !3, line: 755, type: !115)
!3582 = !DILocalVariable(name: "start_handle", arg: 2, scope: !3577, file: !3, line: 755, type: !109)
!3583 = !DILocalVariable(name: "properties", arg: 3, scope: !3577, file: !3, line: 755, type: !93)
!3584 = !DILocalVariable(name: "value_handle", arg: 4, scope: !3577, file: !3, line: 755, type: !109)
!3585 = !DILocalVariable(name: "uuid", arg: 5, scope: !3577, file: !3, line: 755, type: !92)
!3586 = !DILocalVariable(name: "uuid_length", arg: 6, scope: !3577, file: !3, line: 755, type: !109)
!3587 = !DILocalVariable(name: "uuid16", scope: !3577, file: !3, line: 758, type: !109)
!3588 = !DILocation(line: 757, column: 13, scope: !3577, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 806, column: 9, scope: !3571)
!3590 = !DILocation(line: 796, column: 56, scope: !3562)
!3591 = !DILocation(line: 796, column: 77, scope: !3562)
!3592 = !DILocation(line: 796, column: 95, scope: !3562)
!3593 = !DILocation(line: 798, column: 27, scope: !3562)
!3594 = !DILocation(line: 798, column: 13, scope: !3562)
!3595 = !DILocation(line: 799, column: 27, scope: !3562)
!3596 = !DILocation(line: 800, column: 9, scope: !3562)
!3597 = !DILocation(line: 801, column: 21, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3572, file: !3, discriminator: 1)
!3599 = !DILocation(line: 801, column: 19, scope: !3598)
!3600 = !DILocation(line: 801, column: 5, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3573, file: !3, discriminator: 1)
!3602 = !DILocation(line: 802, column: 33, scope: !3571)
!3603 = !DILocation(line: 802, column: 18, scope: !3571)
!3604 = !DILocation(line: 803, column: 40, scope: !3571)
!3605 = !DILocation(line: 803, column: 31, scope: !3571)
!3606 = !DILocation(line: 803, column: 18, scope: !3571)
!3607 = !DILocation(line: 804, column: 65, scope: !3571)
!3608 = !DILocation(line: 804, column: 33, scope: !3571)
!3609 = !DILocation(line: 804, column: 18, scope: !3571)
!3610 = !DILocation(line: 805, column: 59, scope: !3571)
!3611 = !DILocation(line: 805, column: 9, scope: !3571)
!3612 = !DILocation(line: 806, column: 98, scope: !3571)
!3613 = !DILocation(line: 806, column: 89, scope: !3571)
!3614 = !DILocation(line: 755, column: 55, scope: !3577, inlinedAt: !3589)
!3615 = !DILocation(line: 755, column: 76, scope: !3577, inlinedAt: !3589)
!3616 = !DILocation(line: 755, column: 98, scope: !3577, inlinedAt: !3589)
!3617 = !DILocation(line: 755, column: 119, scope: !3577, inlinedAt: !3589)
!3618 = !DILocation(line: 755, column: 142, scope: !3577, inlinedAt: !3589)
!3619 = !DILocation(line: 757, column: 5, scope: !3577, inlinedAt: !3589)
!3620 = !DILocation(line: 758, column: 14, scope: !3577, inlinedAt: !3589)
!3621 = !DILocation(line: 759, column: 9, scope: !3577, inlinedAt: !3589)
!3622 = !DILocation(line: 760, column: 18, scope: !3623, inlinedAt: !3589)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 759, column: 27)
!3624 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 759, column: 9)
!3625 = !DILocation(line: 761, column: 56, scope: !3623, inlinedAt: !3589)
!3626 = !DILocation(line: 761, column: 9, scope: !3623, inlinedAt: !3589)
!3627 = !DILocation(line: 762, column: 5, scope: !3623, inlinedAt: !3589)
!3628 = !DILocation(line: 763, column: 9, scope: !3629, inlinedAt: !3589)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 762, column: 12)
!3630 = !DILocation(line: 766, column: 21, scope: !3631, inlinedAt: !3589)
!3631 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 766, column: 9)
!3632 = !DILocation(line: 766, column: 9, scope: !3631, inlinedAt: !3589)
!3633 = !DILocation(line: 766, column: 38, scope: !3631, inlinedAt: !3589)
!3634 = !DILocation(line: 766, column: 41, scope: !3635, inlinedAt: !3589)
!3635 = !DILexicalBlockFile(scope: !3631, file: !3, discriminator: 1)
!3636 = !DILocation(line: 766, column: 82, scope: !3635, inlinedAt: !3589)
!3637 = !DILocation(line: 766, column: 9, scope: !3638, inlinedAt: !3589)
!3638 = !DILexicalBlockFile(scope: !3577, file: !3, discriminator: 1)
!3639 = !DILocation(line: 770, column: 43, scope: !3577, inlinedAt: !3589)
!3640 = !{!324, !228, i64 54}
!3641 = !DILocation(line: 771, column: 45, scope: !3577, inlinedAt: !3589)
!3642 = !DILocation(line: 772, column: 34, scope: !3577, inlinedAt: !3589)
!3643 = !DILocation(line: 778, column: 24, scope: !3577, inlinedAt: !3589)
!3644 = !DILocation(line: 779, column: 5, scope: !3577, inlinedAt: !3589)
!3645 = !DILocation(line: 780, column: 1, scope: !3577, inlinedAt: !3589)
!3646 = !DILocation(line: 801, column: 29, scope: !3647)
!3647 = !DILexicalBlockFile(scope: !3572, file: !3, discriminator: 2)
!3648 = distinct !{!3648, !3649, !3650}
!3649 = !DILocation(line: 801, column: 5, scope: !3573)
!3650 = !DILocation(line: 807, column: 5, scope: !3573)
!3651 = !DILocation(line: 808, column: 1, scope: !3562)
!3652 = distinct !DISubprogram(name: "report_gatt_characteristic_value", scope: !3, file: !3, line: 876, type: !3653, isLocal: true, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !115, !109, !92, !109}
!3655 = !{!3656, !3657, !3658, !3659, !3660}
!3656 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3652, file: !3, line: 876, type: !115)
!3657 = !DILocalVariable(name: "attribute_handle", arg: 2, scope: !3652, file: !3, line: 876, type: !109)
!3658 = !DILocalVariable(name: "value", arg: 3, scope: !3652, file: !3, line: 876, type: !92)
!3659 = !DILocalVariable(name: "length", arg: 4, scope: !3652, file: !3, line: 876, type: !109)
!3660 = !DILocalVariable(name: "packet", scope: !3652, file: !3, line: 878, type: !92)
!3661 = !DILocation(line: 876, column: 61, scope: !3652)
!3662 = !DILocation(line: 876, column: 82, scope: !3652)
!3663 = !DILocation(line: 876, column: 109, scope: !3652)
!3664 = !DILocation(line: 876, column: 125, scope: !3652)
!3665 = !DILocation(line: 878, column: 115, scope: !3652)
!3666 = !DILocation(line: 878, column: 23, scope: !3652)
!3667 = !DILocation(line: 878, column: 14, scope: !3652)
!3668 = !DILocation(line: 879, column: 32, scope: !3652)
!3669 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 879, column: 5, scope: !3652)
!3671 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !3670)
!3672 = !DILocation(line: 619, column: 89, scope: !905, inlinedAt: !3670)
!3673 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !3670)
!3674 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !3670)
!3675 = !DILocation(line: 879, column: 89, scope: !3652)
!3676 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !3670)
!3677 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !3670)
!3678 = !DILocation(line: 880, column: 1, scope: !3652)
!3679 = distinct !DISubprogram(name: "emit_gatt_service_query_result_event", scope: !3, file: !3, line: 669, type: !3680, isLocal: true, isDefinition: true, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !115, !109, !109, !92}
!3682 = !{!3683, !3684, !3685, !3686, !3687}
!3683 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3679, file: !3, line: 669, type: !115)
!3684 = !DILocalVariable(name: "start_group_handle", arg: 2, scope: !3679, file: !3, line: 669, type: !109)
!3685 = !DILocalVariable(name: "end_group_handle", arg: 3, scope: !3679, file: !3, line: 669, type: !109)
!3686 = !DILocalVariable(name: "uuid128", arg: 4, scope: !3679, file: !3, line: 669, type: !92)
!3687 = !DILocalVariable(name: "packet", scope: !3679, file: !3, line: 672, type: !3688)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !3689)
!3689 = !{!3690}
!3690 = !DISubrange(count: 24)
!3691 = !DILocation(line: 669, column: 65, scope: !3679)
!3692 = !DILocation(line: 669, column: 86, scope: !3679)
!3693 = !DILocation(line: 669, column: 115, scope: !3679)
!3694 = !DILocation(line: 669, column: 142, scope: !3679)
!3695 = !DILocation(line: 672, column: 5, scope: !3679)
!3696 = !DILocation(line: 672, column: 13, scope: !3679)
!3697 = !DILocation(line: 673, column: 15, scope: !3679)
!3698 = !DILocation(line: 674, column: 5, scope: !3679)
!3699 = !DILocation(line: 674, column: 15, scope: !3679)
!3700 = !DILocation(line: 675, column: 51, scope: !3679)
!3701 = !DILocation(line: 675, column: 5, scope: !3679)
!3702 = !DILocation(line: 677, column: 5, scope: !3679)
!3703 = !DILocation(line: 678, column: 5, scope: !3679)
!3704 = !DILocation(line: 679, column: 27, scope: !3679)
!3705 = !DILocation(line: 679, column: 5, scope: !3679)
!3706 = !DILocation(line: 680, column: 32, scope: !3679)
!3707 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 680, column: 5, scope: !3679)
!3709 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !3708)
!3710 = !DILocation(line: 619, column: 89, scope: !905, inlinedAt: !3708)
!3711 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !3708)
!3712 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !3708)
!3713 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !3708)
!3714 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !3708)
!3715 = !DILocation(line: 681, column: 1, scope: !3679)
!3716 = distinct !DISubprogram(name: "is_value_valid", scope: !3, file: !3, line: 1004, type: !3717, isLocal: true, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!159, !115, !92, !109}
!3719 = !{!3720, !3721, !3722, !3723, !3724}
!3720 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3716, file: !3, line: 1004, type: !115)
!3721 = !DILocalVariable(name: "packet", arg: 2, scope: !3716, file: !3, line: 1004, type: !92)
!3722 = !DILocalVariable(name: "size", arg: 3, scope: !3716, file: !3, line: 1004, type: !109)
!3723 = !DILocalVariable(name: "attribute_handle", scope: !3716, file: !3, line: 1006, type: !109)
!3724 = !DILocalVariable(name: "value_offset", scope: !3716, file: !3, line: 1007, type: !109)
!3725 = !DILocation(line: 1004, column: 42, scope: !3716)
!3726 = !DILocation(line: 1004, column: 63, scope: !3716)
!3727 = !DILocation(line: 1004, column: 80, scope: !3716)
!3728 = !DILocation(line: 1006, column: 33, scope: !3716)
!3729 = !DILocation(line: 1006, column: 14, scope: !3716)
!3730 = !DILocation(line: 1007, column: 29, scope: !3716)
!3731 = !DILocation(line: 1007, column: 14, scope: !3716)
!3732 = !DILocation(line: 1009, column: 21, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1009, column: 9)
!3734 = !DILocation(line: 1009, column: 38, scope: !3733)
!3735 = !DILocation(line: 1009, column: 9, scope: !3716)
!3736 = !DILocation(line: 1012, column: 21, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1012, column: 9)
!3738 = !DILocation(line: 1012, column: 38, scope: !3737)
!3739 = !DILocation(line: 1012, column: 9, scope: !3716)
!3740 = !DILocation(line: 1012, column: 9, scope: !3737)
!3741 = !DILocation(line: 1015, column: 32, scope: !3716)
!3742 = !DILocation(line: 1015, column: 20, scope: !3716)
!3743 = !DILocation(line: 1015, column: 80, scope: !3716)
!3744 = !DILocation(line: 1015, column: 91, scope: !3716)
!3745 = !DILocation(line: 1015, column: 96, scope: !3716)
!3746 = !DILocation(line: 1015, column: 12, scope: !3716)
!3747 = !DILocation(line: 1015, column: 101, scope: !3716)
!3748 = !DILocation(line: 1015, column: 5, scope: !3716)
!3749 = !DILocation(line: 1016, column: 1, scope: !3716)
!3750 = distinct !DISubprogram(name: "characteristic_end_found", scope: !3, file: !3, line: 782, type: !629, isLocal: true, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3751)
!3751 = !{!3752, !3753}
!3752 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3750, file: !3, line: 782, type: !115)
!3753 = !DILocalVariable(name: "end_handle", arg: 2, scope: !3750, file: !3, line: 782, type: !109)
!3754 = !DILocalVariable(name: "packet", scope: !3755, file: !3, line: 703, type: !3765)
!3755 = distinct !DISubprogram(name: "emit_gatt_characteristic_query_result_event", scope: !3, file: !3, line: 699, type: !3756, isLocal: true, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !115, !109, !109, !109, !109, !92}
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3754}
!3759 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3755, file: !3, line: 699, type: !115)
!3760 = !DILocalVariable(name: "start_handle", arg: 2, scope: !3755, file: !3, line: 699, type: !109)
!3761 = !DILocalVariable(name: "value_handle", arg: 3, scope: !3755, file: !3, line: 699, type: !109)
!3762 = !DILocalVariable(name: "end_handle", arg: 4, scope: !3755, file: !3, line: 699, type: !109)
!3763 = !DILocalVariable(name: "properties", arg: 5, scope: !3755, file: !3, line: 700, type: !109)
!3764 = !DILocalVariable(name: "uuid128", arg: 6, scope: !3755, file: !3, line: 700, type: !92)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 224, elements: !3766)
!3766 = !{!3767}
!3767 = !DISubrange(count: 28)
!3768 = !DILocation(line: 703, column: 13, scope: !3755, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 790, column: 5, scope: !3750)
!3770 = !DILocation(line: 782, column: 53, scope: !3750)
!3771 = !DILocation(line: 782, column: 74, scope: !3750)
!3772 = !DILocation(line: 786, column: 22, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 786, column: 9)
!3774 = !DILocation(line: 786, column: 10, scope: !3773)
!3775 = !DILocation(line: 786, column: 9, scope: !3750)
!3776 = !DILocation(line: 790, column: 114, scope: !3750)
!3777 = !DILocation(line: 791, column: 37, scope: !3750)
!3778 = !DILocation(line: 791, column: 25, scope: !3750)
!3779 = !DILocation(line: 791, column: 64, scope: !3750)
!3780 = !DILocation(line: 699, column: 72, scope: !3755, inlinedAt: !3769)
!3781 = !DILocation(line: 699, column: 93, scope: !3755, inlinedAt: !3769)
!3782 = !DILocation(line: 699, column: 116, scope: !3755, inlinedAt: !3769)
!3783 = !DILocation(line: 699, column: 139, scope: !3755, inlinedAt: !3769)
!3784 = !DILocation(line: 700, column: 18, scope: !3755, inlinedAt: !3769)
!3785 = !DILocation(line: 700, column: 39, scope: !3755, inlinedAt: !3769)
!3786 = !DILocation(line: 703, column: 5, scope: !3755, inlinedAt: !3769)
!3787 = !DILocation(line: 704, column: 15, scope: !3755, inlinedAt: !3769)
!3788 = !DILocation(line: 705, column: 5, scope: !3755, inlinedAt: !3769)
!3789 = !DILocation(line: 705, column: 15, scope: !3755, inlinedAt: !3769)
!3790 = !DILocation(line: 706, column: 51, scope: !3755, inlinedAt: !3769)
!3791 = !DILocation(line: 706, column: 5, scope: !3755, inlinedAt: !3769)
!3792 = !DILocation(line: 708, column: 5, scope: !3755, inlinedAt: !3769)
!3793 = !DILocation(line: 709, column: 5, scope: !3755, inlinedAt: !3769)
!3794 = !DILocation(line: 710, column: 5, scope: !3755, inlinedAt: !3769)
!3795 = !DILocation(line: 711, column: 5, scope: !3755, inlinedAt: !3769)
!3796 = !DILocation(line: 712, column: 27, scope: !3755, inlinedAt: !3769)
!3797 = !DILocation(line: 712, column: 5, scope: !3755, inlinedAt: !3769)
!3798 = !DILocation(line: 713, column: 32, scope: !3755, inlinedAt: !3769)
!3799 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 713, column: 5, scope: !3755, inlinedAt: !3769)
!3801 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !3800)
!3802 = !DILocation(line: 619, column: 89, scope: !905, inlinedAt: !3800)
!3803 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !3800)
!3804 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !3800)
!3805 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !3800)
!3806 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !3800)
!3807 = !DILocation(line: 714, column: 1, scope: !3755, inlinedAt: !3769)
!3808 = !DILocation(line: 793, column: 45, scope: !3750)
!3809 = !DILocation(line: 794, column: 1, scope: !3750)
!3810 = !DILocation(line: 794, column: 1, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !3750, file: !3, discriminator: 1)
!3812 = distinct !DISubprogram(name: "setup_characteristic_value_packet", scope: !3, file: !3, line: 827, type: !3813, isLocal: true, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!92, !93, !112, !109, !92, !109}
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821}
!3816 = !DILocalVariable(name: "type", arg: 1, scope: !3812, file: !3, line: 827, type: !93)
!3817 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3812, file: !3, line: 827, type: !112)
!3818 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !3812, file: !3, line: 827, type: !109)
!3819 = !DILocalVariable(name: "value", arg: 4, scope: !3812, file: !3, line: 827, type: !92)
!3820 = !DILocalVariable(name: "length", arg: 5, scope: !3812, file: !3, line: 827, type: !109)
!3821 = !DILocalVariable(name: "packet", scope: !3812, file: !3, line: 830, type: !92)
!3822 = !DILocation(line: 827, column: 59, scope: !3812)
!3823 = !DILocation(line: 827, column: 82, scope: !3812)
!3824 = !DILocation(line: 827, column: 103, scope: !3812)
!3825 = !DILocation(line: 827, column: 130, scope: !3812)
!3826 = !DILocation(line: 827, column: 146, scope: !3812)
!3827 = !DILocation(line: 830, column: 29, scope: !3812)
!3828 = !DILocation(line: 830, column: 14, scope: !3812)
!3829 = !DILocation(line: 831, column: 15, scope: !3812)
!3830 = !DILocation(line: 832, column: 62, scope: !3812)
!3831 = !DILocation(line: 832, column: 60, scope: !3812)
!3832 = !DILocation(line: 832, column: 5, scope: !3812)
!3833 = !DILocation(line: 832, column: 15, scope: !3812)
!3834 = !DILocation(line: 833, column: 5, scope: !3812)
!3835 = !DILocation(line: 834, column: 5, scope: !3812)
!3836 = !DILocation(line: 835, column: 5, scope: !3812)
!3837 = !DILocation(line: 836, column: 5, scope: !3812)
!3838 = distinct !DISubprogram(name: "emit_event_to_registered_listeners", scope: !3, file: !3, line: 640, type: !3839, isLocal: true, isDefinition: true, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !112, !109, !92, !109}
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3853}
!3842 = !DILocalVariable(name: "con_handle", arg: 1, scope: !3838, file: !3, line: 640, type: !112)
!3843 = !DILocalVariable(name: "attribute_handle", arg: 2, scope: !3838, file: !3, line: 640, type: !109)
!3844 = !DILocalVariable(name: "packet", arg: 3, scope: !3838, file: !3, line: 640, type: !92)
!3845 = !DILocalVariable(name: "size", arg: 4, scope: !3838, file: !3, line: 640, type: !109)
!3846 = !DILocalVariable(name: "it", scope: !3838, file: !3, line: 642, type: !3847)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_iterator_t", file: !87, line: 65, baseType: !3848)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 61, size: 96, elements: !3849)
!3849 = !{!3850, !3851, !3852}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "advance_on_next", scope: !3848, file: !87, line: 62, baseType: !159, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !3848, file: !87, line: 63, baseType: !85, size: 32, offset: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !3848, file: !87, line: 64, baseType: !85, size: 32, offset: 64)
!3853 = !DILocalVariable(name: "notification", scope: !3854, file: !3, line: 645, type: !99)
!3854 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 644, column: 56)
!3855 = !DILocation(line: 640, column: 65, scope: !3838)
!3856 = !DILocation(line: 640, column: 86, scope: !3838)
!3857 = !DILocation(line: 642, column: 5, scope: !3838)
!3858 = !DILocation(line: 642, column: 36, scope: !3838)
!3859 = !DILocation(line: 643, column: 5, scope: !3838)
!3860 = !DILocation(line: 644, column: 12, scope: !3861)
!3861 = !DILexicalBlockFile(scope: !3838, file: !3, discriminator: 1)
!3862 = !DILocation(line: 644, column: 5, scope: !3861)
!3863 = !DILocation(line: 645, column: 83, scope: !3854)
!3864 = !DILocation(line: 652, column: 28, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 652, column: 13)
!3866 = !DILocation(line: 652, column: 13, scope: !3865)
!3867 = !DILocation(line: 652, column: 13, scope: !3854)
!3868 = distinct !{!3868, !3869, !3870}
!3869 = !DILocation(line: 644, column: 5, scope: !3838)
!3870 = !DILocation(line: 655, column: 5, scope: !3838)
!3871 = !DILocation(line: 653, column: 13, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 652, column: 38)
!3873 = !DILocation(line: 654, column: 9, scope: !3872)
!3874 = !DILocation(line: 656, column: 1, scope: !3838)
!3875 = distinct !DISubprogram(name: "trigger_next_query", scope: !3, file: !3, line: 931, type: !3876, isLocal: true, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !115, !109, !121}
!3878 = !{!3879, !3880, !3881}
!3879 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3875, file: !3, line: 931, type: !115)
!3880 = !DILocalVariable(name: "last_result_handle", arg: 2, scope: !3875, file: !3, line: 931, type: !109)
!3881 = !DILocalVariable(name: "next_query_state", arg: 3, scope: !3875, file: !3, line: 931, type: !121)
!3882 = !DILocation(line: 931, column: 47, scope: !3875)
!3883 = !DILocation(line: 931, column: 68, scope: !3875)
!3884 = !DILocation(line: 931, column: 108, scope: !3875)
!3885 = !DILocation(line: 926, column: 41, scope: !689, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 933, column: 9, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 933, column: 9)
!3888 = !DILocation(line: 926, column: 62, scope: !689, inlinedAt: !3886)
!3889 = !DILocation(line: 928, column: 46, scope: !689, inlinedAt: !3886)
!3890 = !DILocation(line: 928, column: 31, scope: !689, inlinedAt: !3886)
!3891 = !DILocation(line: 933, column: 9, scope: !3875)
!3892 = !DILocation(line: 613, column: 68, scope: !864, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 934, column: 9, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 933, column: 56)
!3895 = !DILocation(line: 615, column: 17, scope: !864, inlinedAt: !3893)
!3896 = !DILocation(line: 615, column: 35, scope: !864, inlinedAt: !3893)
!3897 = !DILocation(line: 616, column: 5, scope: !864, inlinedAt: !3893)
!3898 = !DILocation(line: 935, column: 9, scope: !3894)
!3899 = !DILocation(line: 936, column: 9, scope: !3894)
!3900 = !DILocation(line: 939, column: 57, scope: !3875)
!3901 = !DILocation(line: 939, column: 17, scope: !3875)
!3902 = !DILocation(line: 939, column: 36, scope: !3875)
!3903 = !DILocation(line: 940, column: 17, scope: !3875)
!3904 = !DILocation(line: 940, column: 35, scope: !3875)
!3905 = !DILocation(line: 941, column: 1, scope: !3875)
!3906 = !DILocation(line: 941, column: 1, scope: !3907)
!3907 = !DILexicalBlockFile(scope: !3875, file: !3, discriminator: 1)
!3908 = distinct !DISubprogram(name: "emit_gatt_included_service_query_result_event", scope: !3, file: !3, line: 683, type: !3909, isLocal: true, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !115, !109, !109, !109, !92}
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917}
!3912 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3908, file: !3, line: 683, type: !115)
!3913 = !DILocalVariable(name: "include_handle", arg: 2, scope: !3908, file: !3, line: 683, type: !109)
!3914 = !DILocalVariable(name: "start_group_handle", arg: 3, scope: !3908, file: !3, line: 683, type: !109)
!3915 = !DILocalVariable(name: "end_group_handle", arg: 4, scope: !3908, file: !3, line: 683, type: !109)
!3916 = !DILocalVariable(name: "uuid128", arg: 5, scope: !3908, file: !3, line: 683, type: !92)
!3917 = !DILocalVariable(name: "packet", scope: !3908, file: !3, line: 686, type: !3918)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 208, elements: !3919)
!3919 = !{!3920}
!3920 = !DISubrange(count: 26)
!3921 = !DILocation(line: 683, column: 74, scope: !3908)
!3922 = !DILocation(line: 683, column: 95, scope: !3908)
!3923 = !DILocation(line: 683, column: 120, scope: !3908)
!3924 = !DILocation(line: 683, column: 149, scope: !3908)
!3925 = !DILocation(line: 683, column: 176, scope: !3908)
!3926 = !DILocation(line: 686, column: 5, scope: !3908)
!3927 = !DILocation(line: 686, column: 13, scope: !3908)
!3928 = !DILocation(line: 687, column: 15, scope: !3908)
!3929 = !DILocation(line: 688, column: 5, scope: !3908)
!3930 = !DILocation(line: 688, column: 15, scope: !3908)
!3931 = !DILocation(line: 689, column: 51, scope: !3908)
!3932 = !DILocation(line: 689, column: 5, scope: !3908)
!3933 = !DILocation(line: 691, column: 5, scope: !3908)
!3934 = !DILocation(line: 693, column: 5, scope: !3908)
!3935 = !DILocation(line: 694, column: 5, scope: !3908)
!3936 = !DILocation(line: 695, column: 27, scope: !3908)
!3937 = !DILocation(line: 695, column: 5, scope: !3908)
!3938 = !DILocation(line: 696, column: 32, scope: !3908)
!3939 = !DILocation(line: 619, column: 53, scope: !905, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 696, column: 5, scope: !3908)
!3941 = !DILocation(line: 619, column: 72, scope: !905, inlinedAt: !3940)
!3942 = !DILocation(line: 619, column: 89, scope: !905, inlinedAt: !3940)
!3943 = !DILocation(line: 621, column: 10, scope: !915, inlinedAt: !3940)
!3944 = !DILocation(line: 621, column: 9, scope: !905, inlinedAt: !3940)
!3945 = !DILocation(line: 624, column: 5, scope: !905, inlinedAt: !3940)
!3946 = !DILocation(line: 625, column: 1, scope: !905, inlinedAt: !3940)
!3947 = !DILocation(line: 697, column: 1, scope: !3908)
!3948 = distinct !DISubprogram(name: "setup_long_characteristic_value_packet", scope: !3, file: !3, line: 842, type: !3949, isLocal: true, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!92, !93, !112, !109, !109, !92, !109}
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958}
!3952 = !DILocalVariable(name: "type", arg: 1, scope: !3948, file: !3, line: 842, type: !93)
!3953 = !DILocalVariable(name: "con_handle", arg: 2, scope: !3948, file: !3, line: 842, type: !112)
!3954 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !3948, file: !3, line: 842, type: !109)
!3955 = !DILocalVariable(name: "offset", arg: 4, scope: !3948, file: !3, line: 842, type: !109)
!3956 = !DILocalVariable(name: "value", arg: 5, scope: !3948, file: !3, line: 842, type: !92)
!3957 = !DILocalVariable(name: "length", arg: 6, scope: !3948, file: !3, line: 842, type: !109)
!3958 = !DILocalVariable(name: "packet", scope: !3948, file: !3, line: 846, type: !92)
!3959 = !DILocation(line: 842, column: 64, scope: !3948)
!3960 = !DILocation(line: 842, column: 87, scope: !3948)
!3961 = !DILocation(line: 842, column: 108, scope: !3948)
!3962 = !DILocation(line: 842, column: 135, scope: !3948)
!3963 = !DILocation(line: 842, column: 152, scope: !3948)
!3964 = !DILocation(line: 842, column: 168, scope: !3948)
!3965 = !DILocation(line: 846, column: 29, scope: !3948)
!3966 = !DILocation(line: 846, column: 14, scope: !3948)
!3967 = !DILocation(line: 847, column: 15, scope: !3948)
!3968 = !DILocation(line: 848, column: 67, scope: !3948)
!3969 = !DILocation(line: 848, column: 65, scope: !3948)
!3970 = !DILocation(line: 848, column: 5, scope: !3948)
!3971 = !DILocation(line: 848, column: 15, scope: !3948)
!3972 = !DILocation(line: 849, column: 5, scope: !3948)
!3973 = !DILocation(line: 850, column: 5, scope: !3948)
!3974 = !DILocation(line: 851, column: 5, scope: !3948)
!3975 = !DILocation(line: 852, column: 5, scope: !3948)
!3976 = !DILocation(line: 853, column: 5, scope: !3948)
!3977 = distinct !DISubprogram(name: "write_blob_length", scope: !3, file: !3, line: 464, type: !2618, isLocal: true, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3978)
!3978 = !{!3979, !3980, !3981}
!3979 = !DILocalVariable(name: "peripheral", arg: 1, scope: !3977, file: !3, line: 464, type: !115)
!3980 = !DILocalVariable(name: "max_blob_length", scope: !3977, file: !3, line: 466, type: !109)
!3981 = !DILocalVariable(name: "rest_length", scope: !3977, file: !3, line: 470, type: !109)
!3982 = !DILocation(line: 464, column: 50, scope: !3977)
!3983 = !DILocation(line: 466, column: 32, scope: !3977)
!3984 = !DILocation(line: 466, column: 59, scope: !3977)
!3985 = !DILocation(line: 466, column: 14, scope: !3977)
!3986 = !DILocation(line: 467, column: 21, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 467, column: 9)
!3988 = !DILocation(line: 467, column: 53, scope: !3987)
!3989 = !DILocation(line: 467, column: 38, scope: !3987)
!3990 = !DILocation(line: 467, column: 9, scope: !3977)
!3991 = !DILocation(line: 470, column: 57, scope: !3977)
!3992 = !DILocation(line: 470, column: 14, scope: !3977)
!3993 = !DILocation(line: 471, column: 25, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 471, column: 9)
!3995 = !DILocation(line: 472, column: 9, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 471, column: 40)
!3997 = !DILocation(line: 475, column: 1, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3977, file: !3, discriminator: 1)
!3999 = distinct !DISubprogram(name: "gatt_client_timeout_handler", scope: !3, file: !3, line: 172, type: !4000, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4003)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !4002}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!4003 = !{!4004, !4005}
!4004 = !DILocalVariable(name: "timer", arg: 1, scope: !3999, file: !3, line: 172, type: !4002)
!4005 = !DILocalVariable(name: "peripheral", scope: !3999, file: !3, line: 174, type: !115)
!4006 = !DILocation(line: 172, column: 65, scope: !3999)
!4007 = !DILocation(line: 174, column: 57, scope: !3999)
!4008 = !{!326, !235, i64 16}
!4009 = !DILocation(line: 174, column: 20, scope: !3999)
!4010 = !DILocation(line: 175, column: 10, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 175, column: 9)
!4012 = !DILocation(line: 175, column: 9, scope: !3999)
!4013 = !DILocation(line: 178, column: 5, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 178, column: 5)
!4015 = !DILocation(line: 178, column: 5, scope: !3999)
!4016 = !DILocation(line: 178, column: 5, scope: !4017)
!4017 = !DILexicalBlockFile(scope: !4014, file: !3, discriminator: 1)
!4018 = !DILocation(line: 179, column: 5, scope: !3999)
!4019 = !DILocation(line: 180, column: 1, scope: !3999)
!4020 = !DILocation(line: 180, column: 1, scope: !4021)
!4021 = !DILexicalBlockFile(scope: !3999, file: !3, discriminator: 2)
!4022 = distinct !DISubprogram(name: "send_gatt_characteristic_request", scope: !3, file: !3, line: 510, type: !865, isLocal: true, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4023)
!4023 = !{!4024}
!4024 = !DILocalVariable(name: "peripheral", arg: 1, scope: !4022, file: !3, line: 510, type: !115)
!4025 = !DILocation(line: 510, column: 61, scope: !4022)
!4026 = !DILocation(line: 512, column: 21, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 512, column: 9)
!4028 = !DILocation(line: 512, column: 38, scope: !4027)
!4029 = !DILocation(line: 512, column: 9, scope: !4022)
!4030 = !DILocation(line: 513, column: 108, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 512, column: 44)
!4032 = !DILocation(line: 513, column: 132, scope: !4031)
!4033 = !DILocation(line: 513, column: 164, scope: !4031)
!4034 = !DILocalVariable(name: "request_type", arg: 1, scope: !4035, file: !3, line: 314, type: !109)
!4035 = distinct !DISubprogram(name: "att_read_by_type_or_group_request", scope: !3, file: !3, line: 314, type: !4036, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !109, !109, !109, !109, !109}
!4038 = !{!4034, !4039, !4040, !4041, !4042, !4043}
!4039 = !DILocalVariable(name: "attribute_group_type", arg: 2, scope: !4035, file: !3, line: 314, type: !109)
!4040 = !DILocalVariable(name: "peripheral_handle", arg: 3, scope: !4035, file: !3, line: 314, type: !109)
!4041 = !DILocalVariable(name: "start_handle", arg: 4, scope: !4035, file: !3, line: 314, type: !109)
!4042 = !DILocalVariable(name: "end_handle", arg: 5, scope: !4035, file: !3, line: 314, type: !109)
!4043 = !DILocalVariable(name: "request", scope: !4035, file: !3, line: 317, type: !92)
!4044 = !DILocation(line: 314, column: 56, scope: !4035, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 513, column: 9, scope: !4031)
!4046 = !DILocation(line: 314, column: 79, scope: !4035, inlinedAt: !4045)
!4047 = !DILocation(line: 316, column: 5, scope: !4035, inlinedAt: !4045)
!4048 = !DILocation(line: 317, column: 24, scope: !4035, inlinedAt: !4045)
!4049 = !DILocation(line: 317, column: 14, scope: !4035, inlinedAt: !4045)
!4050 = !DILocation(line: 318, column: 16, scope: !4035, inlinedAt: !4045)
!4051 = !DILocation(line: 319, column: 5, scope: !4035, inlinedAt: !4045)
!4052 = !DILocation(line: 320, column: 5, scope: !4035, inlinedAt: !4045)
!4053 = !DILocation(line: 321, column: 5, scope: !4035, inlinedAt: !4045)
!4054 = !DILocation(line: 323, column: 5, scope: !4035, inlinedAt: !4045)
!4055 = !DILocation(line: 514, column: 5, scope: !4031)
!4056 = !DILocation(line: 515, column: 25, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 515, column: 13)
!4058 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 514, column: 12)
!4059 = !DILocation(line: 515, column: 32, scope: !4057)
!4060 = !DILocation(line: 516, column: 118, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 515, column: 38)
!4062 = !DILocation(line: 516, column: 142, scope: !4061)
!4063 = !DILocation(line: 516, column: 174, scope: !4061)
!4064 = !DILocation(line: 515, column: 13, scope: !4058)
!4065 = !DILocation(line: 516, column: 85, scope: !4061)
!4066 = !DILocation(line: 516, column: 13, scope: !4061)
!4067 = !DILocation(line: 517, column: 9, scope: !4061)
!4068 = !DILocation(line: 518, column: 13, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 517, column: 16)
!4070 = !DILocation(line: 522, column: 1, scope: !4022)
!4071 = distinct !DISubprogram(name: "send_gatt_read_blob_request", scope: !3, file: !3, line: 543, type: !865, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4072)
!4072 = !{!4073}
!4073 = !DILocalVariable(name: "peripheral", arg: 1, scope: !4071, file: !3, line: 543, type: !115)
!4074 = !DILocation(line: 543, column: 56, scope: !4071)
!4075 = !DILocation(line: 545, column: 62, scope: !4071)
!4076 = !DILocation(line: 545, column: 86, scope: !4071)
!4077 = !DILocation(line: 545, column: 116, scope: !4071)
!4078 = !DILocalVariable(name: "request_type", arg: 1, scope: !4079, file: !3, line: 364, type: !109)
!4079 = distinct !DISubprogram(name: "att_read_blob_request", scope: !3, file: !3, line: 364, type: !1757, isLocal: true, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4080)
!4080 = !{!4078, !4081, !4082, !4083, !4084}
!4081 = !DILocalVariable(name: "peripheral_handle", arg: 2, scope: !4079, file: !3, line: 364, type: !109)
!4082 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !4079, file: !3, line: 364, type: !109)
!4083 = !DILocalVariable(name: "value_offset", arg: 4, scope: !4079, file: !3, line: 364, type: !109)
!4084 = !DILocalVariable(name: "request", scope: !4079, file: !3, line: 367, type: !92)
!4085 = !DILocation(line: 364, column: 44, scope: !4079, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 545, column: 5, scope: !4071)
!4087 = !DILocation(line: 366, column: 5, scope: !4079, inlinedAt: !4086)
!4088 = !DILocation(line: 367, column: 24, scope: !4079, inlinedAt: !4086)
!4089 = !DILocation(line: 367, column: 14, scope: !4079, inlinedAt: !4086)
!4090 = !DILocation(line: 368, column: 16, scope: !4079, inlinedAt: !4086)
!4091 = !DILocation(line: 369, column: 5, scope: !4079, inlinedAt: !4086)
!4092 = !DILocation(line: 370, column: 5, scope: !4079, inlinedAt: !4086)
!4093 = !DILocation(line: 372, column: 5, scope: !4079, inlinedAt: !4086)
!4094 = !DILocation(line: 546, column: 1, scope: !4071)
!4095 = distinct !DISubprogram(name: "send_gatt_prepare_write_request", scope: !3, file: !3, line: 563, type: !865, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4096)
!4096 = !{!4097}
!4097 = !DILocalVariable(name: "peripheral", arg: 1, scope: !4095, file: !3, line: 563, type: !115)
!4098 = !DILocation(line: 563, column: 60, scope: !4095)
!4099 = !DILocation(line: 565, column: 70, scope: !4095)
!4100 = !DILocation(line: 565, column: 94, scope: !4095)
!4101 = !DILocation(line: 565, column: 124, scope: !4095)
!4102 = !DILocation(line: 565, column: 142, scope: !4095)
!4103 = !DILocation(line: 565, column: 185, scope: !4095)
!4104 = !DILocalVariable(name: "request_type", arg: 1, scope: !4105, file: !3, line: 427, type: !109)
!4105 = distinct !DISubprogram(name: "att_prepare_write_request", scope: !3, file: !3, line: 427, type: !4106, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !109, !109, !109, !109, !109, !92}
!4108 = !{!4104, !4109, !4110, !4111, !4112, !4113, !4114}
!4109 = !DILocalVariable(name: "peripheral_handle", arg: 2, scope: !4105, file: !3, line: 427, type: !109)
!4110 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !4105, file: !3, line: 427, type: !109)
!4111 = !DILocalVariable(name: "value_offset", arg: 4, scope: !4105, file: !3, line: 427, type: !109)
!4112 = !DILocalVariable(name: "blob_length", arg: 5, scope: !4105, file: !3, line: 427, type: !109)
!4113 = !DILocalVariable(name: "value", arg: 6, scope: !4105, file: !3, line: 427, type: !92)
!4114 = !DILocalVariable(name: "request", scope: !4105, file: !3, line: 430, type: !92)
!4115 = !DILocation(line: 427, column: 48, scope: !4105, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 565, column: 5, scope: !4117)
!4117 = !DILexicalBlockFile(scope: !4095, file: !3, discriminator: 1)
!4118 = !DILocation(line: 429, column: 5, scope: !4105, inlinedAt: !4116)
!4119 = !DILocation(line: 430, column: 24, scope: !4105, inlinedAt: !4116)
!4120 = !DILocation(line: 430, column: 14, scope: !4105, inlinedAt: !4116)
!4121 = !DILocation(line: 431, column: 16, scope: !4105, inlinedAt: !4116)
!4122 = !DILocation(line: 432, column: 5, scope: !4105, inlinedAt: !4116)
!4123 = !DILocation(line: 433, column: 5, scope: !4105, inlinedAt: !4116)
!4124 = !DILocation(line: 434, column: 13, scope: !4105, inlinedAt: !4116)
!4125 = !DILocation(line: 434, column: 26, scope: !4105, inlinedAt: !4116)
!4126 = !DILocation(line: 434, column: 47, scope: !4105, inlinedAt: !4116)
!4127 = !DILocation(line: 434, column: 5, scope: !4105, inlinedAt: !4116)
!4128 = !DILocation(line: 436, column: 91, scope: !4105, inlinedAt: !4116)
!4129 = !DILocation(line: 436, column: 5, scope: !4105, inlinedAt: !4116)
!4130 = !DILocation(line: 566, column: 1, scope: !4095)
!4131 = distinct !DISubprogram(name: "att_read_by_type_or_group_request_for_uuid16", scope: !3, file: !3, line: 327, type: !4036, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4132)
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138}
!4133 = !DILocalVariable(name: "request_type", arg: 1, scope: !4131, file: !3, line: 327, type: !109)
!4134 = !DILocalVariable(name: "uuid16", arg: 2, scope: !4131, file: !3, line: 327, type: !109)
!4135 = !DILocalVariable(name: "peripheral_handle", arg: 3, scope: !4131, file: !3, line: 327, type: !109)
!4136 = !DILocalVariable(name: "start_handle", arg: 4, scope: !4131, file: !3, line: 327, type: !109)
!4137 = !DILocalVariable(name: "end_handle", arg: 5, scope: !4131, file: !3, line: 327, type: !109)
!4138 = !DILocalVariable(name: "request", scope: !4131, file: !3, line: 330, type: !92)
!4139 = !DILocation(line: 327, column: 67, scope: !4131)
!4140 = !DILocation(line: 327, column: 90, scope: !4131)
!4141 = !DILocation(line: 327, column: 107, scope: !4131)
!4142 = !DILocation(line: 327, column: 135, scope: !4131)
!4143 = !DILocation(line: 327, column: 158, scope: !4131)
!4144 = !DILocation(line: 329, column: 5, scope: !4131)
!4145 = !DILocation(line: 330, column: 24, scope: !4131)
!4146 = !DILocation(line: 330, column: 14, scope: !4131)
!4147 = !DILocation(line: 331, column: 18, scope: !4131)
!4148 = !DILocation(line: 331, column: 16, scope: !4131)
!4149 = !DILocation(line: 332, column: 5, scope: !4131)
!4150 = !DILocation(line: 333, column: 5, scope: !4131)
!4151 = !DILocation(line: 334, column: 5, scope: !4131)
!4152 = !DILocation(line: 336, column: 5, scope: !4131)
!4153 = !DILocation(line: 337, column: 1, scope: !4131)
!4154 = distinct !DISubprogram(name: "att_find_by_type_value_request", scope: !3, file: !3, line: 299, type: !4155, isLocal: true, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !109, !109, !109, !109, !109, !92, !109}
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165}
!4158 = !DILocalVariable(name: "request_type", arg: 1, scope: !4154, file: !3, line: 299, type: !109)
!4159 = !DILocalVariable(name: "attribute_group_type", arg: 2, scope: !4154, file: !3, line: 299, type: !109)
!4160 = !DILocalVariable(name: "peripheral_handle", arg: 3, scope: !4154, file: !3, line: 299, type: !109)
!4161 = !DILocalVariable(name: "start_handle", arg: 4, scope: !4154, file: !3, line: 299, type: !109)
!4162 = !DILocalVariable(name: "end_handle", arg: 5, scope: !4154, file: !3, line: 299, type: !109)
!4163 = !DILocalVariable(name: "value", arg: 6, scope: !4154, file: !3, line: 299, type: !92)
!4164 = !DILocalVariable(name: "value_size", arg: 7, scope: !4154, file: !3, line: 299, type: !109)
!4165 = !DILocalVariable(name: "request", scope: !4154, file: !3, line: 302, type: !92)
!4166 = !DILocation(line: 299, column: 53, scope: !4154)
!4167 = !DILocation(line: 299, column: 76, scope: !4154)
!4168 = !DILocation(line: 301, column: 5, scope: !4154)
!4169 = !DILocation(line: 302, column: 24, scope: !4154)
!4170 = !DILocation(line: 302, column: 14, scope: !4154)
!4171 = !DILocation(line: 304, column: 16, scope: !4154)
!4172 = !DILocation(line: 305, column: 5, scope: !4154)
!4173 = !DILocation(line: 306, column: 5, scope: !4154)
!4174 = !DILocation(line: 307, column: 5, scope: !4154)
!4175 = !DILocation(line: 308, column: 13, scope: !4154)
!4176 = !DILocation(line: 308, column: 32, scope: !4154)
!4177 = !DILocation(line: 308, column: 5, scope: !4154)
!4178 = !DILocation(line: 310, column: 91, scope: !4154)
!4179 = !DILocation(line: 310, column: 5, scope: !4154)
!4180 = !DILocation(line: 311, column: 1, scope: !4154)
!4181 = distinct !DISubprogram(name: "att_read_by_type_or_group_request_for_uuid128", scope: !3, file: !3, line: 340, type: !4182, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4184)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !109, !92, !109, !109, !109}
!4184 = !{!4185, !4186, !4187, !4188, !4189, !4190}
!4185 = !DILocalVariable(name: "request_type", arg: 1, scope: !4181, file: !3, line: 340, type: !109)
!4186 = !DILocalVariable(name: "uuid128", arg: 2, scope: !4181, file: !3, line: 340, type: !92)
!4187 = !DILocalVariable(name: "peripheral_handle", arg: 3, scope: !4181, file: !3, line: 340, type: !109)
!4188 = !DILocalVariable(name: "start_handle", arg: 4, scope: !4181, file: !3, line: 340, type: !109)
!4189 = !DILocalVariable(name: "end_handle", arg: 5, scope: !4181, file: !3, line: 340, type: !109)
!4190 = !DILocalVariable(name: "request", scope: !4181, file: !3, line: 343, type: !92)
!4191 = !DILocation(line: 340, column: 68, scope: !4181)
!4192 = !DILocation(line: 342, column: 5, scope: !4181)
!4193 = !DILocation(line: 343, column: 24, scope: !4181)
!4194 = !DILocation(line: 343, column: 14, scope: !4181)
!4195 = !DILocation(line: 344, column: 16, scope: !4181)
!4196 = !DILocation(line: 345, column: 5, scope: !4181)
!4197 = !DILocation(line: 346, column: 5, scope: !4181)
!4198 = !DILocation(line: 347, column: 27, scope: !4181)
!4199 = !DILocation(line: 347, column: 5, scope: !4181)
!4200 = !DILocation(line: 349, column: 5, scope: !4181)
!4201 = !DILocation(line: 350, column: 1, scope: !4181)
!4202 = distinct !DISubprogram(name: "att_read_request", scope: !3, file: !3, line: 353, type: !4203, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !109, !109, !109}
!4205 = !{!4206, !4207, !4208, !4209}
!4206 = !DILocalVariable(name: "request_type", arg: 1, scope: !4202, file: !3, line: 353, type: !109)
!4207 = !DILocalVariable(name: "peripheral_handle", arg: 2, scope: !4202, file: !3, line: 353, type: !109)
!4208 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !4202, file: !3, line: 353, type: !109)
!4209 = !DILocalVariable(name: "request", scope: !4202, file: !3, line: 356, type: !92)
!4210 = !DILocation(line: 353, column: 39, scope: !4202)
!4211 = !DILocation(line: 355, column: 5, scope: !4202)
!4212 = !DILocation(line: 356, column: 24, scope: !4202)
!4213 = !DILocation(line: 356, column: 14, scope: !4202)
!4214 = !DILocation(line: 357, column: 16, scope: !4202)
!4215 = !DILocation(line: 358, column: 5, scope: !4202)
!4216 = !DILocation(line: 360, column: 5, scope: !4202)
!4217 = !DILocation(line: 361, column: 1, scope: !4202)
!4218 = distinct !DISubprogram(name: "att_execute_write_request", scope: !3, file: !3, line: 417, type: !4219, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !109, !109, !93}
!4221 = !{!4222, !4223, !4224, !4225}
!4222 = !DILocalVariable(name: "request_type", arg: 1, scope: !4218, file: !3, line: 417, type: !109)
!4223 = !DILocalVariable(name: "peripheral_handle", arg: 2, scope: !4218, file: !3, line: 417, type: !109)
!4224 = !DILocalVariable(name: "execute_write", arg: 3, scope: !4218, file: !3, line: 417, type: !93)
!4225 = !DILocalVariable(name: "request", scope: !4218, file: !3, line: 420, type: !92)
!4226 = !DILocation(line: 417, column: 48, scope: !4218)
!4227 = !DILocation(line: 419, column: 5, scope: !4218)
!4228 = !DILocation(line: 420, column: 24, scope: !4218)
!4229 = !DILocation(line: 420, column: 14, scope: !4218)
!4230 = !DILocation(line: 421, column: 16, scope: !4218)
!4231 = !DILocation(line: 422, column: 5, scope: !4218)
!4232 = !DILocation(line: 422, column: 16, scope: !4218)
!4233 = !DILocation(line: 423, column: 5, scope: !4218)
!4234 = !DILocation(line: 424, column: 1, scope: !4218)
