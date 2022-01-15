; ModuleID = 'att_server.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_server.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.att_info_t = type { void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)*, i8, i8*, i16 (i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)*, i8, i16, %struct.btstack_linked_item*, %struct.btstack_packet_callback_registration_t, %struct.btstack_packet_callback_registration_t, void (i8, i16, i8*, i16)*, %struct.btstack_linked_item*, i8 }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.att_server_t = type { i32, i8, [6 x i8], i32, i32, i32, %struct.btstack_timer_source, %struct.att_connection, i16, [517 x i8], i8, void (i16, i8)* }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.att_connection = type { i16, i16, i16, i8, i8, i8 }
%struct.__le_hci_connection = type { %struct.btstack_linked_item, [6 x i8], i16, i32, i8, i32, i8, i16, i16, i16, i16, %struct.sm_connection, %struct.att_server_t, [529 x i8], i16, i16, i8, [6 x i8], [6 x i8], i32 }
%struct.sm_connection = type { i16, i8, i8, i8, i8, [6 x i8], i32, i32, i8, i8, i8, [7 x i8], i32, i16, [8 x i8], i8, i32, i32 }
%struct.btstack_linked_list_iterator_t = type { i32, %struct.btstack_linked_item*, %struct.btstack_linked_item* }
%struct.btstack_context_callback_registration_t = type { %struct.btstack_linked_item*, void (i8*)*, i8* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [17 x i8] c"no handle 0x%04x\00", align 1
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@config_le_gatt_server_num = external local_unnamed_addr constant i32, align 4
@att_global_info = external global %struct.att_info_t, align 4
@config_le_sm_support_enable = external local_unnamed_addr constant i32, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"[ble-info] :att_server_request_can_send_now_event 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"[ble-info] :att_server_flow_hold= %04x,%02x\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"[ble-info] :no handle 0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"[ble-info] :%s,%d\0A\0A\00", align 1
@__FUNCTION__.att_server_sync_mtu = private unnamed_addr constant [20 x i8] c"att_server_sync_mtu\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"[ble-info] :SM_EVENT_IDENTITY_RESOLVING_SUCCEEDED id %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"[ble-info] :ATT Packet, handle 0x%04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"[ble-info] :ATT packet,no handle 0x%04x\0A\00", align 1
@.str.16 = private unnamed_addr constant [100 x i8] c"[ble-info] :att_packet_handler: dropping att pdu 0x%02x as size %u > att_server->request_buffer %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [87 x i8] c"[ble-info] :att_packet_handler: skipping att pdu 0x%02x as server not idle (state %u)\0A\00", align 1
@search_ios_ancs_server = internal unnamed_addr constant [23 x i8] c"\06\01\00\FF\FF\00(\D0\00-\12\1EK\0F\A4\99N\CE\B51\F4\05y", section ".ble_att_const", align 1, !dbg !351
@str = private unnamed_addr constant [30 x i8] c"[ble-info] :set exchange_mtu\0A\00"
@str.26 = private unnamed_addr constant [28 x i8] c"[ble-info] :att_server_init\00"
@str.27 = private unnamed_addr constant [47 x i8] c"[ble-info] :SM_EVENT_IDENTITY_RESOLVING_FAILED\00"
@str.28 = private unnamed_addr constant [48 x i8] c"[ble-info] :SM_EVENT_IDENTITY_RESOLVING_STARTED\00"
@str.29 = private unnamed_addr constant [12 x i8] c"att disconn\00"
@str.30 = private unnamed_addr constant [26 x i8] c"[ble-info] :@@is android\0A\00"
@str.31 = private unnamed_addr constant [22 x i8] c"[ble-info] :@@is ios\0A\00"
@str.32 = private unnamed_addr constant [30 x i8] c"[ble-info] :ATT_WRITE_COMMAND\00"
@str.34 = private unnamed_addr constant [30 x i8] c"[ble-info] :set check remote\0A\00"
@str.35 = private unnamed_addr constant [32 x i8] c"[ble-info] :att_server is null\0A\00"
@str.36 = private unnamed_addr constant [54 x i8] c"[ble-info] :ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED\00"
@str.37 = private unnamed_addr constant [20 x i8] c"[ble-info] :555555!\00"
@str.38 = private unnamed_addr constant [30 x i8] c"[ble-info] :RX MTU_RESPONSE!\0A\00"
@str.39 = private unnamed_addr constant [20 x i8] c"[ble-info] :444444!\00"
@str.40 = private unnamed_addr constant [35 x i8] c"[ble-info] :AUTHORIZATION_PENDING!\00"
@str.41 = private unnamed_addr constant [35 x i8] c"[ble-info] :AUTHORIZATION_UNKNOWN!\00"

; Function Attrs: nounwind optsize
define hidden void @att_server_set_exchange_mtu(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !361 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !365, metadata !DIExpression()), !dbg !367
  %2 = icmp eq i16 %0, 0, !dbg !368
  br i1 %2, label %19, label %3, !dbg !370

; <label>:3:                                      ; preds = %1
  %4 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %0) #8, !dbg !371
  call void @llvm.dbg.value(metadata %struct.att_server_t* %4, metadata !366, metadata !DIExpression()), !dbg !372
  %5 = icmp eq %struct.att_server_t* %4, null, !dbg !373
  br i1 %5, label %6, label %9, !dbg !375

; <label>:6:                                      ; preds = %3
  %7 = zext i16 %0 to i32, !dbg !376
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 %7) #8, !dbg !378
  br label %19, !dbg !379

; <label>:9:                                      ; preds = %3
  %10 = load i8, i8* @ble_debug_enable, align 1, !dbg !380, !tbaa !382
  %11 = and i8 %10, 1, !dbg !380
  %12 = icmp eq i8 %11, 0, !dbg !380
  br i1 %12, label %15, label %13, !dbg !385

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str, i32 0, i32 0)), !dbg !386
  br label %15, !dbg !386

; <label>:15:                                     ; preds = %13, %9
  %16 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %4, i32 0, i32 10, !dbg !388
  %17 = load i8, i8* %16, align 1, !dbg !389
  %18 = or i8 %17, 2, !dbg !389
  store i8 %18, i8* %16, align 1, !dbg !389
  tail call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %0) #9, !dbg !390
  br label %19, !dbg !391

; <label>:19:                                     ; preds = %15, %6, %1
  ret void, !dbg !392
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define internal fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext) unnamed_addr #0 section ".ble_att_code" !dbg !394 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !398, metadata !DIExpression()), !dbg !400
  %2 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !401, !tbaa !403
  %3 = icmp eq i32 %2, 0, !dbg !401
  br i1 %3, label %9, label %4, !dbg !405

; <label>:4:                                      ; preds = %1
  %5 = tail call %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext %0) #9, !dbg !406
  call void @llvm.dbg.value(metadata %struct.__le_hci_connection* %5, metadata !399, metadata !DIExpression()), !dbg !407
  %6 = icmp eq %struct.__le_hci_connection* %5, null, !dbg !408
  %7 = getelementptr inbounds %struct.__le_hci_connection, %struct.__le_hci_connection* %5, i32 0, i32 12, !dbg !410
  %8 = select i1 %6, %struct.att_server_t* null, %struct.att_server_t* %7, !dbg !411
  br label %9, !dbg !411

; <label>:9:                                      ; preds = %4, %1
  %10 = phi %struct.att_server_t* [ null, %1 ], [ %8, %4 ]
  ret %struct.att_server_t* %10, !dbg !412
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @att_dispatch_server_request_can_send_now_event(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @att_server_init(i8*, i16 (i16, i16, i16, i8*, i16)*, i32 (i16, i16, i16, i16, i8*, i16)*) local_unnamed_addr #0 section ".ble_att_code" !dbg !414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !430, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i16 (i16, i16, i16, i8*, i16)* %1, metadata !431, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 (i16, i16, i16, i16, i8*, i16)* %2, metadata !432, metadata !DIExpression()), !dbg !435
  %4 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !436, !tbaa !403
  %5 = icmp eq i32 %4, 0, !dbg !436
  br i1 %5, label %17, label %6, !dbg !438

; <label>:6:                                      ; preds = %3
  store void (i8, i16, i8*, i16)* @att_event_packet_handler, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 9, i32 1), align 4, !dbg !439, !tbaa !440
  tail call void @hci_add_event_handler(i8* bitcast (%struct.btstack_packet_callback_registration_t* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 9) to i8*)) #9, !dbg !446
  %7 = load i32, i32* @config_le_sm_support_enable, align 4, !dbg !447, !tbaa !403
  %8 = icmp eq i32 %7, 0, !dbg !447
  br i1 %8, label %10, label %9, !dbg !449

; <label>:9:                                      ; preds = %6
  store void (i8, i16, i8*, i16)* @att_event_packet_handler, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 10, i32 1), align 4, !dbg !450, !tbaa !452
  tail call void @sm_add_event_handler(%struct.btstack_packet_callback_registration_t* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 10)) #9, !dbg !453
  br label %10, !dbg !454

; <label>:10:                                     ; preds = %9, %6
  tail call void @att_dispatch_register_server(void (i8, i16, i8*, i16)* nonnull @att_packet_handler) #9, !dbg !455
  %11 = load i8, i8* @ble_debug_enable, align 1, !dbg !456, !tbaa !382
  %12 = and i8 %11, 1, !dbg !456
  %13 = icmp eq i8 %12, 0, !dbg !456
  br i1 %13, label %16, label %14, !dbg !458

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.26, i32 0, i32 0)), !dbg !459
  br label %16, !dbg !459

; <label>:16:                                     ; preds = %14, %10
  tail call void @att_set_db(i8* %0) #9, !dbg !461
  tail call void @att_set_read_callback(i16 (i16, i16, i16, i8*, i16)* %1) #9, !dbg !462
  tail call void @att_set_write_callback(i32 (i16, i16, i16, i16, i8*, i16)* %2) #9, !dbg !463
  br label %17, !dbg !464

; <label>:17:                                     ; preds = %16, %3
  ret void, !dbg !465
}

; Function Attrs: nounwind optsize
define internal void @att_event_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".ble_att_code" !dbg !467 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !471, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i16 %1, metadata !472, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i8* %2, metadata !473, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i16 %3, metadata !474, metadata !DIExpression()), !dbg !480
  %5 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !481, !tbaa !403
  %6 = icmp ne i32 %5, 0, !dbg !481
  %7 = icmp eq i8 %0, 4, !dbg !483
  %8 = and i1 %7, %6, !dbg !484
  br i1 %8, label %9, label %106, !dbg !484

; <label>:9:                                      ; preds = %4
  %10 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* %2) #8, !dbg !485
  switch i8 %10, label %106 [
    i8 62, label %11
    i8 8, label %39
    i8 48, label %39
    i8 5, label %50
    i8 -40, label %59
    i8 -38, label %71
    i8 -39, label %86
    i8 -36, label %99
  ], !dbg !487

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !488
  %13 = load i8, i8* %12, align 1, !dbg !488, !tbaa !382
  %14 = icmp eq i8 %13, 1, !dbg !490
  br i1 %14, label %15, label %106, !dbg !490

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 4) #9, !dbg !491
  call void @llvm.dbg.value(metadata i16 %16, metadata !476, metadata !DIExpression()), !dbg !493
  %17 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %16) #8, !dbg !494
  call void @llvm.dbg.value(metadata %struct.att_server_t* %17, metadata !475, metadata !DIExpression()), !dbg !495
  %18 = icmp eq %struct.att_server_t* %17, null, !dbg !496
  br i1 %18, label %106, label %19, !dbg !498

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds i8, i8* %2, i32 7, !dbg !499
  %21 = load i8, i8* %20, align 1, !dbg !499, !tbaa !382
  %22 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 1, !dbg !500
  store i8 %21, i8* %22, align 4, !dbg !501, !tbaa !502
  %23 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !506
  %24 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 2, i32 0, !dbg !507
  tail call void @reverse_bd_addr(i8* %23, i8* %24) #9, !dbg !508
  %25 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 7, i32 0, !dbg !509
  store i16 %16, i16* %25, align 4, !dbg !510, !tbaa !511
  %26 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 0, !dbg !512
  store i32 0, i32* %26, align 4, !dbg !513, !tbaa !514
  %27 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 7, i32 1, !dbg !515
  store i16 23, i16* %27, align 2, !dbg !516, !tbaa !517
  %28 = tail call zeroext i16 @l2cap_max_le_mtu() #9, !dbg !518
  %29 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 7, i32 2, !dbg !519
  %30 = icmp ult i16 %28, 517, !dbg !520
  %31 = select i1 %30, i16 %28, i16 517, !dbg !520
  store i16 %31, i16* %29, align 4, !dbg !521, !tbaa !522
  %32 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 7, i32 3, !dbg !523
  store i8 0, i8* %32, align 2, !dbg !524, !tbaa !525
  %33 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 7, i32 4, !dbg !526
  store i8 0, i8* %33, align 1, !dbg !527, !tbaa !528
  %34 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 7, i32 5, !dbg !529
  store i8 0, i8* %34, align 4, !dbg !530, !tbaa !531
  %35 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 3, !dbg !532
  store i32 -1, i32* %35, align 4, !dbg !533, !tbaa !534
  %36 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %17, i32 0, i32 10, !dbg !535
  %37 = load i8, i8* %36, align 1, !dbg !536
  %38 = and i8 %37, -2, !dbg !536
  store i8 %38, i8* %36, align 1, !dbg !536
  br label %106, !dbg !537

; <label>:39:                                     ; preds = %9, %9
  %40 = tail call zeroext i16 @little_endian_read_16(i8* %2, i32 3) #9, !dbg !538
  call void @llvm.dbg.value(metadata i16 %40, metadata !476, metadata !DIExpression()), !dbg !493
  %41 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %40) #8, !dbg !539
  call void @llvm.dbg.value(metadata %struct.att_server_t* %41, metadata !475, metadata !DIExpression()), !dbg !495
  %42 = icmp eq %struct.att_server_t* %41, null, !dbg !540
  br i1 %42, label %106, label %43, !dbg !542

; <label>:43:                                     ; preds = %39
  %44 = tail call i32 @sm_encryption_key_size(i16 zeroext %40) #9, !dbg !543
  %45 = trunc i32 %44 to i8, !dbg !543
  %46 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %41, i32 0, i32 7, i32 3, !dbg !544
  store i8 %45, i8* %46, align 2, !dbg !545, !tbaa !525
  %47 = tail call i32 @sm_authenticated(i16 zeroext %40) #9, !dbg !546
  %48 = trunc i32 %47 to i8, !dbg !546
  %49 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %41, i32 0, i32 7, i32 4, !dbg !547
  store i8 %48, i8* %49, align 1, !dbg !548, !tbaa !528
  br label %106, !dbg !549

; <label>:50:                                     ; preds = %9
  %51 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.29, i32 0, i32 0)), !dbg !550
  %52 = tail call fastcc zeroext i16 @hci_event_disconnection_complete_get_connection_handle(i8* %2) #8, !dbg !551
  call void @llvm.dbg.value(metadata i16 %52, metadata !476, metadata !DIExpression()), !dbg !493
  %53 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %52) #8, !dbg !552
  call void @llvm.dbg.value(metadata %struct.att_server_t* %53, metadata !475, metadata !DIExpression()), !dbg !495
  %54 = icmp eq %struct.att_server_t* %53, null, !dbg !553
  br i1 %54, label %106, label %55, !dbg !555

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %53, i32 0, i32 7, i32 0, !dbg !556
  store i16 0, i16* %56, align 4, !dbg !557, !tbaa !511
  %57 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %53, i32 0, i32 5, !dbg !558
  store i32 0, i32* %57, align 4, !dbg !559, !tbaa !560
  %58 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %53, i32 0, i32 0, !dbg !561
  store i32 0, i32* %58, align 4, !dbg !562, !tbaa !514
  br label %106, !dbg !563

; <label>:59:                                     ; preds = %9
  %60 = tail call fastcc zeroext i16 @sm_event_identity_resolving_started_get_handle(i8* %2) #8, !dbg !564
  call void @llvm.dbg.value(metadata i16 %60, metadata !476, metadata !DIExpression()), !dbg !493
  %61 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %60) #8, !dbg !565
  call void @llvm.dbg.value(metadata %struct.att_server_t* %61, metadata !475, metadata !DIExpression()), !dbg !495
  %62 = icmp eq %struct.att_server_t* %61, null, !dbg !566
  br i1 %62, label %106, label %63, !dbg !568

; <label>:63:                                     ; preds = %59
  %64 = load i8, i8* @ble_debug_enable, align 1, !dbg !569, !tbaa !382
  %65 = and i8 %64, 1, !dbg !569
  %66 = icmp eq i8 %65, 0, !dbg !569
  br i1 %66, label %69, label %67, !dbg !571

; <label>:67:                                     ; preds = %63
  %68 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.28, i32 0, i32 0)), !dbg !572
  br label %69, !dbg !572

; <label>:69:                                     ; preds = %67, %63
  %70 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %61, i32 0, i32 4, !dbg !574
  store i32 1, i32* %70, align 4, !dbg !575, !tbaa !576
  br label %106, !dbg !577

; <label>:71:                                     ; preds = %9
  %72 = tail call fastcc zeroext i16 @sm_event_identity_resolving_succeeded_get_handle(i8* %2) #8, !dbg !578
  call void @llvm.dbg.value(metadata i16 %72, metadata !476, metadata !DIExpression()), !dbg !493
  %73 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %72) #8, !dbg !579
  call void @llvm.dbg.value(metadata %struct.att_server_t* %73, metadata !475, metadata !DIExpression()), !dbg !495
  %74 = icmp eq %struct.att_server_t* %73, null, !dbg !580
  br i1 %74, label %106, label %75, !dbg !582

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %73, i32 0, i32 4, !dbg !583
  store i32 0, i32* %76, align 4, !dbg !584, !tbaa !576
  %77 = tail call fastcc zeroext i16 @sm_event_identity_resolving_succeeded_get_index_internal(i8* %2) #8, !dbg !585
  %78 = zext i16 %77 to i32, !dbg !585
  %79 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %73, i32 0, i32 3, !dbg !586
  store i32 %78, i32* %79, align 4, !dbg !587, !tbaa !534
  %80 = load i8, i8* @ble_debug_enable, align 1, !dbg !588, !tbaa !382
  %81 = and i8 %80, 1, !dbg !588
  %82 = icmp eq i8 %81, 0, !dbg !588
  br i1 %82, label %85, label %83, !dbg !590

; <label>:83:                                     ; preds = %75
  %84 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i32 0, i32 0), i32 %78) #8, !dbg !591
  br label %85, !dbg !591

; <label>:85:                                     ; preds = %83, %75
  tail call fastcc void @att_run_for_context(%struct.att_server_t* nonnull %73) #8, !dbg !593
  br label %106, !dbg !594

; <label>:86:                                     ; preds = %9
  %87 = tail call fastcc zeroext i16 @sm_event_identity_resolving_failed_get_handle(i8* %2) #8, !dbg !595
  call void @llvm.dbg.value(metadata i16 %87, metadata !476, metadata !DIExpression()), !dbg !493
  %88 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %87) #8, !dbg !596
  call void @llvm.dbg.value(metadata %struct.att_server_t* %88, metadata !475, metadata !DIExpression()), !dbg !495
  %89 = icmp eq %struct.att_server_t* %88, null, !dbg !597
  br i1 %89, label %106, label %90, !dbg !599

; <label>:90:                                     ; preds = %86
  %91 = load i8, i8* @ble_debug_enable, align 1, !dbg !600, !tbaa !382
  %92 = and i8 %91, 1, !dbg !600
  %93 = icmp eq i8 %92, 0, !dbg !600
  br i1 %93, label %96, label %94, !dbg !602

; <label>:94:                                     ; preds = %90
  %95 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.27, i32 0, i32 0)), !dbg !603
  br label %96, !dbg !603

; <label>:96:                                     ; preds = %94, %90
  %97 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %88, i32 0, i32 4, !dbg !605
  store i32 0, i32* %97, align 4, !dbg !606, !tbaa !576
  %98 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %88, i32 0, i32 3, !dbg !607
  store i32 -1, i32* %98, align 4, !dbg !608, !tbaa !534
  tail call fastcc void @att_run_for_context(%struct.att_server_t* nonnull %88) #8, !dbg !609
  br label %106, !dbg !610

; <label>:99:                                     ; preds = %9
  %100 = tail call fastcc zeroext i16 @sm_event_authorization_result_get_handle(i8* %2) #8, !dbg !611
  call void @llvm.dbg.value(metadata i16 %100, metadata !476, metadata !DIExpression()), !dbg !493
  %101 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %100) #8, !dbg !613
  call void @llvm.dbg.value(metadata %struct.att_server_t* %101, metadata !475, metadata !DIExpression()), !dbg !495
  %102 = icmp eq %struct.att_server_t* %101, null, !dbg !614
  br i1 %102, label %106, label %103, !dbg !616

; <label>:103:                                    ; preds = %99
  %104 = tail call fastcc zeroext i8 @sm_event_authorization_result_get_authorization_result(i8* %2) #8, !dbg !617
  %105 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %101, i32 0, i32 7, i32 5, !dbg !618
  store i8 %104, i8* %105, align 4, !dbg !619, !tbaa !531
  tail call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %100) #9, !dbg !620
  br label %106, !dbg !621

; <label>:106:                                    ; preds = %103, %99, %96, %86, %85, %71, %69, %59, %55, %50, %43, %39, %19, %15, %11, %9, %4
  ret void, !dbg !622
}

; Function Attrs: optsize
declare void @hci_add_event_handler(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sm_add_event_handler(%struct.btstack_packet_callback_registration_t*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @att_dispatch_register_server(void (i8, i16, i8*, i16)*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @att_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".ble_att_code" !dbg !624 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.btstack_linked_list_iterator_t, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !626, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i16 %1, metadata !627, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i8* %2, metadata !628, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i16 %3, metadata !629, metadata !DIExpression()), !dbg !638
  switch i8 %0, label %328 [
    i8 4, label %7
    i8 8, label %222
  ], !dbg !639

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %2, align 1, !dbg !640, !tbaa !382
  %9 = icmp ne i8 %8, 120, !dbg !642
  %10 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !643
  %11 = icmp eq i32 %10, 0, !dbg !643
  %12 = or i1 %9, %11, !dbg !668
  br i1 %12, label %328, label %13, !dbg !668

; <label>:13:                                     ; preds = %7
  %14 = bitcast %struct.btstack_linked_list_iterator_t* %6 to i8*, !dbg !669
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %14) #7, !dbg !669
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %6, metadata !649, metadata !DIExpression(DW_OP_deref)), !dbg !670
  call void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t* nonnull %6) #9, !dbg !671
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %6, metadata !649, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %15 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %6) #9, !dbg !672
  %16 = icmp eq i32 %15, 0, !dbg !674
  br i1 %16, label %19, label %17, !dbg !674

; <label>:17:                                     ; preds = %13
  br label %20, !dbg !670

; <label>:18:                                     ; preds = %28
  br label %19, !dbg !675

; <label>:19:                                     ; preds = %18, %13
  br label %186, !dbg !675

; <label>:20:                                     ; preds = %28, %17
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %6, metadata !649, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %21 = call %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t* nonnull %6) #9, !dbg !676
  %22 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 23, !dbg !677
  %23 = bitcast %struct.btstack_linked_item* %22 to %struct.att_server_t*, !dbg !677
  call void @llvm.dbg.value(metadata %struct.att_server_t* %23, metadata !660, metadata !DIExpression()), !dbg !678
  %24 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %23, i32 0, i32 10, !dbg !679
  %25 = load i8, i8* %24, align 1, !dbg !679
  %26 = and i8 %25, 1, !dbg !679
  %27 = icmp eq i8 %26, 0, !dbg !681
  br i1 %27, label %31, label %28, !dbg !682

; <label>:28:                                     ; preds = %181, %160, %157, %130, %127, %102, %91, %81, %73, %67, %20
  call void @llvm.dbg.value(metadata %struct.btstack_linked_list_iterator_t* %6, metadata !649, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %29 = call i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t* nonnull %6) #9, !dbg !672
  %30 = icmp eq i32 %29, 0, !dbg !674
  br i1 %30, label %18, label %20, !dbg !674, !llvm.loop !683

; <label>:31:                                     ; preds = %20
  %32 = bitcast %struct.btstack_linked_item* %22 to i32*, !dbg !686
  %33 = load i32, i32* %32, align 4, !dbg !686, !tbaa !514
  %34 = icmp eq i32 %33, 3, !dbg !687
  br i1 %34, label %35, label %130, !dbg !688

; <label>:35:                                     ; preds = %31
  %36 = load i8, i8* @ble_debug_enable, align 1, !dbg !689, !tbaa !382
  %37 = and i8 %36, 1, !dbg !689
  %38 = icmp eq i8 %37, 0, !dbg !689
  br i1 %38, label %41, label %39, !dbg !691

; <label>:39:                                     ; preds = %35
  %40 = call i32 @puts(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @str.36, i32 0, i32 0)) #7, !dbg !692
  br label %41, !dbg !692

; <label>:41:                                     ; preds = %39, %35
  call void @llvm.dbg.value(metadata %struct.att_server_t* %23, metadata !694, metadata !DIExpression()), !dbg !701
  %42 = call i32 @l2cap_reserve_packet_buffer() #9, !dbg !703
  %43 = call i8* @l2cap_get_outgoing_buffer() #9, !dbg !704
  call void @llvm.dbg.value(metadata i8* %43, metadata !699, metadata !DIExpression()), !dbg !705
  %44 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 34, !dbg !706
  %45 = bitcast %struct.btstack_linked_item* %44 to %struct.att_connection*, !dbg !706
  %46 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 37, !dbg !707
  %47 = bitcast %struct.btstack_linked_item* %46 to i8*, !dbg !707
  %48 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %23, i32 0, i32 8, !dbg !708
  %49 = load i16, i16* %48, align 2, !dbg !708, !tbaa !709
  %50 = call zeroext i16 @att_handle_request(%struct.att_connection* %45, i8* %47, i16 zeroext %49, i8* %43) #9, !dbg !710
  call void @llvm.dbg.value(metadata i16 %50, metadata !700, metadata !DIExpression()), !dbg !711
  %51 = icmp ugt i16 %50, 3, !dbg !712
  br i1 %51, label %52, label %83, !dbg !714

; <label>:52:                                     ; preds = %41
  %53 = load i8, i8* %43, align 1, !dbg !715, !tbaa !382
  %54 = icmp eq i8 %53, 1, !dbg !717
  br i1 %54, label %55, label %82, !dbg !718

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %43, i32 4, !dbg !719
  %57 = load i8, i8* %56, align 1, !dbg !719, !tbaa !382
  %58 = icmp eq i8 %57, 8, !dbg !720
  br i1 %58, label %59, label %82, !dbg !721

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %23, i32 0, i32 7, i32 4, !dbg !722
  %61 = load i8, i8* %60, align 1, !dbg !722, !tbaa !528
  %62 = icmp eq i8 %61, 0, !dbg !723
  br i1 %62, label %82, label %63, !dbg !724

; <label>:63:                                     ; preds = %59
  %64 = bitcast %struct.btstack_linked_item* %44 to i16*, !dbg !726
  %65 = load i16, i16* %64, align 4, !dbg !726, !tbaa !511
  %66 = call i32 @sm_authorization_state(i16 zeroext %65) #9, !dbg !728
  switch i32 %66, label %82 [
    i32 0, label %67
    i32 1, label %75
  ], !dbg !729

; <label>:67:                                     ; preds = %63
  call void @l2cap_release_packet_buffer() #9, !dbg !730
  %68 = load i16, i16* %64, align 4, !dbg !732, !tbaa !511
  %69 = call zeroext i8 @sm_api_request_pairing(i16 zeroext %68) #9, !dbg !733
  %70 = load i8, i8* @ble_debug_enable, align 1, !dbg !734, !tbaa !382
  %71 = and i8 %70, 1, !dbg !734
  %72 = icmp eq i8 %71, 0, !dbg !734
  br i1 %72, label %28, label %73, !dbg !736

; <label>:73:                                     ; preds = %67
  %74 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @str.41, i32 0, i32 0)) #7, !dbg !737
  br label %28, !dbg !737

; <label>:75:                                     ; preds = %63
  %76 = load i8, i8* @ble_debug_enable, align 1, !dbg !739, !tbaa !382
  %77 = and i8 %76, 1, !dbg !739
  %78 = icmp eq i8 %77, 0, !dbg !739
  br i1 %78, label %81, label %79, !dbg !741

; <label>:79:                                     ; preds = %75
  %80 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @str.40, i32 0, i32 0)) #7, !dbg !742
  br label %81, !dbg !742

; <label>:81:                                     ; preds = %79, %75
  call void @l2cap_release_packet_buffer() #9, !dbg !744
  br label %28, !dbg !745

; <label>:82:                                     ; preds = %63, %59, %55, %52
  store i32 0, i32* %32, align 4, !dbg !746, !tbaa !514
  br label %107, !dbg !747

; <label>:83:                                     ; preds = %41
  store i32 0, i32* %32, align 4, !dbg !746, !tbaa !514
  %84 = icmp eq i16 %50, 0, !dbg !748
  br i1 %84, label %85, label %107, !dbg !747

; <label>:85:                                     ; preds = %83
  %86 = load i8, i8* @ble_debug_enable, align 1, !dbg !750, !tbaa !382
  %87 = and i8 %86, 1, !dbg !750
  %88 = icmp eq i8 %87, 0, !dbg !750
  br i1 %88, label %91, label %89, !dbg !753

; <label>:89:                                     ; preds = %85
  %90 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str.39, i32 0, i32 0)) #7, !dbg !754
  br label %91, !dbg !754

; <label>:91:                                     ; preds = %89, %85
  call void @l2cap_release_packet_buffer() #9, !dbg !756
  %92 = load i8, i8* %47, align 4, !dbg !757, !tbaa !382
  %93 = icmp eq i8 %92, 3, !dbg !759
  br i1 %93, label %94, label %28, !dbg !760

; <label>:94:                                     ; preds = %91
  %95 = load i8, i8* %24, align 1, !dbg !761
  %96 = and i8 %95, -33, !dbg !761
  store i8 %96, i8* %24, align 1, !dbg !761
  %97 = load i8, i8* @ble_debug_enable, align 1, !dbg !763, !tbaa !382
  %98 = and i8 %97, 1, !dbg !763
  %99 = icmp eq i8 %98, 0, !dbg !763
  br i1 %99, label %102, label %100, !dbg !765

; <label>:100:                                    ; preds = %94
  %101 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.38, i32 0, i32 0)) #7, !dbg !766
  br label %102, !dbg !766

; <label>:102:                                    ; preds = %100, %94
  %103 = bitcast %struct.btstack_linked_item* %44 to i16*, !dbg !768
  %104 = load i16, i16* %103, align 4, !dbg !768, !tbaa !511
  %105 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %23, i32 0, i32 7, i32 1, !dbg !769
  %106 = load i16, i16* %105, align 2, !dbg !769, !tbaa !517
  call fastcc void @att_emit_mtu_event(i16 zeroext %104, i16 zeroext %106) #9, !dbg !770
  br label %28, !dbg !771

; <label>:107:                                    ; preds = %83, %82
  %108 = bitcast %struct.btstack_linked_item* %44 to i16*, !dbg !772
  %109 = load i16, i16* %108, align 4, !dbg !772, !tbaa !511
  %110 = call i32 @l2cap_send_prepared_connectionless(i16 zeroext %109, i16 zeroext 4, i16 zeroext %50) #9, !dbg !773
  %111 = load i8, i8* @ble_debug_enable, align 1, !dbg !774, !tbaa !382
  %112 = and i8 %111, 1, !dbg !774
  %113 = icmp eq i8 %112, 0, !dbg !774
  br i1 %113, label %116, label %114, !dbg !776

; <label>:114:                                    ; preds = %107
  %115 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str.37, i32 0, i32 0)) #7, !dbg !777
  br label %116, !dbg !777

; <label>:116:                                    ; preds = %114, %107
  %117 = load i8, i8* %43, align 1, !dbg !779, !tbaa !382
  %118 = icmp eq i8 %117, 3, !dbg !781
  br i1 %118, label %119, label %123, !dbg !782

; <label>:119:                                    ; preds = %116
  %120 = load i16, i16* %108, align 4, !dbg !783, !tbaa !511
  %121 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %23, i32 0, i32 7, i32 1, !dbg !785
  %122 = load i16, i16* %121, align 2, !dbg !785, !tbaa !517
  call fastcc void @att_emit_mtu_event(i16 zeroext %120, i16 zeroext %122) #9, !dbg !786
  br label %123, !dbg !787

; <label>:123:                                    ; preds = %119, %116
  call void @llvm.dbg.value(metadata i32 1, metadata !661, metadata !DIExpression()), !dbg !788
  %124 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !789
  %125 = and i8 %124, 1, !dbg !789
  %126 = icmp eq i8 %125, 0, !dbg !792
  br i1 %126, label %127, label %184, !dbg !793

; <label>:127:                                    ; preds = %123
  %128 = call i32 @btstack_linked_list_empty(%struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 12)) #9, !dbg !794
  %129 = icmp eq i32 %128, 0, !dbg !794
  br i1 %129, label %184, label %28, !dbg !796

; <label>:130:                                    ; preds = %31
  %131 = and i8 %25, 32, !dbg !798
  %132 = icmp eq i8 %131, 0, !dbg !801
  br i1 %132, label %133, label %28, !dbg !802

; <label>:133:                                    ; preds = %130
  %134 = and i8 %25, 2, !dbg !804
  %135 = icmp eq i8 %134, 0, !dbg !807
  br i1 %135, label %160, label %136, !dbg !808

; <label>:136:                                    ; preds = %133
  call void @llvm.dbg.value(metadata %struct.att_server_t* %23, metadata !809, metadata !DIExpression()), !dbg !813
  %137 = call i32 @l2cap_reserve_packet_buffer() #9, !dbg !817
  %138 = icmp eq i32 %137, 0, !dbg !817
  br i1 %138, label %139, label %142, !dbg !819

; <label>:139:                                    ; preds = %136
  %140 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 34, !dbg !820
  %141 = bitcast %struct.btstack_linked_item* %140 to i16*, !dbg !821
  br label %157, !dbg !819

; <label>:142:                                    ; preds = %136
  %143 = call i8* @l2cap_get_outgoing_buffer() #9, !dbg !822
  call void @llvm.dbg.value(metadata i8* %143, metadata !812, metadata !DIExpression()), !dbg !823
  store i8 2, i8* %143, align 1, !dbg !824, !tbaa !382
  %144 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 35, !dbg !825
  %145 = bitcast %struct.btstack_linked_item* %144 to i16*, !dbg !825
  %146 = load i16, i16* %145, align 4, !dbg !825, !tbaa !522
  call void @little_endian_store_16(i8* %143, i16 zeroext 1, i16 zeroext %146) #9, !dbg !826
  %147 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 34, !dbg !827
  %148 = bitcast %struct.btstack_linked_item* %147 to i16*, !dbg !827
  %149 = load i16, i16* %148, align 4, !dbg !827, !tbaa !511
  %150 = call i32 @l2cap_send_prepared_connectionless(i16 zeroext %149, i16 zeroext 4, i16 zeroext 3) #9, !dbg !829
  %151 = icmp eq i32 %150, 0, !dbg !829
  br i1 %151, label %153, label %152, !dbg !830

; <label>:152:                                    ; preds = %142
  call void @l2cap_release_packet_buffer() #9, !dbg !831
  br label %157, !dbg !833

; <label>:153:                                    ; preds = %142
  %154 = load i8, i8* %24, align 1, !dbg !834
  %155 = and i8 %154, -35, !dbg !834
  %156 = or i8 %155, 32, !dbg !835
  store i8 %156, i8* %24, align 1, !dbg !835
  br label %157, !dbg !837

; <label>:157:                                    ; preds = %153, %152, %139
  %158 = phi i16* [ %141, %139 ], [ %148, %152 ], [ %148, %153 ], !dbg !821
  %159 = load i16, i16* %158, align 4, !dbg !821, !tbaa !511
  call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %159) #9, !dbg !838
  br label %28, !dbg !839

; <label>:160:                                    ; preds = %133
  %161 = and i8 %25, 28, !dbg !840
  %162 = icmp eq i8 %161, 4, !dbg !843
  br i1 %162, label %163, label %28, !dbg !844

; <label>:163:                                    ; preds = %160
  call void @llvm.dbg.value(metadata %struct.att_server_t* %23, metadata !846, metadata !DIExpression()), !dbg !851
  %164 = call i32 @l2cap_reserve_packet_buffer() #9, !dbg !855
  %165 = icmp eq i32 %164, 0, !dbg !855
  br i1 %165, label %166, label %169, !dbg !857

; <label>:166:                                    ; preds = %163
  %167 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 34, !dbg !858
  %168 = bitcast %struct.btstack_linked_item* %167 to i16*, !dbg !859
  br label %181, !dbg !857

; <label>:169:                                    ; preds = %163
  %170 = call i8* @l2cap_get_outgoing_buffer() #9, !dbg !860
  call void @llvm.dbg.value(metadata i8* %170, metadata !849, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8 23, metadata !850, metadata !DIExpression()), !dbg !862
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @search_ios_ancs_server, i32 0, i32 0), i32 23, i32 1, i1 false) #7, !dbg !863
  %171 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %21, i32 34, !dbg !864
  %172 = bitcast %struct.btstack_linked_item* %171 to i16*, !dbg !864
  %173 = load i16, i16* %172, align 4, !dbg !864, !tbaa !511
  %174 = call i32 @l2cap_send_prepared_connectionless(i16 zeroext %173, i16 zeroext 4, i16 zeroext 23) #9, !dbg !866
  %175 = icmp eq i32 %174, 0, !dbg !866
  br i1 %175, label %177, label %176, !dbg !867

; <label>:176:                                    ; preds = %169
  call void @l2cap_release_packet_buffer() #9, !dbg !868
  br label %181, !dbg !870

; <label>:177:                                    ; preds = %169
  %178 = load i8, i8* %24, align 1, !dbg !871
  %179 = and i8 %178, -61, !dbg !871
  %180 = or i8 %179, 40, !dbg !872
  store i8 %180, i8* %24, align 1, !dbg !872
  br label %181, !dbg !874

; <label>:181:                                    ; preds = %177, %176, %166
  %182 = phi i16* [ %168, %166 ], [ %172, %176 ], [ %172, %177 ], !dbg !859
  %183 = load i16, i16* %182, align 4, !dbg !859, !tbaa !511
  call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %183) #9, !dbg !875
  br label %28, !dbg !876

; <label>:184:                                    ; preds = %127, %123
  %185 = load i16, i16* %108, align 4, !dbg !877, !tbaa !511
  call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %185) #9, !dbg !879
  br label %221

; <label>:186:                                    ; preds = %189, %19
  %187 = call i32 @btstack_linked_list_empty(%struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 12)) #9, !dbg !675
  %188 = icmp eq i32 %187, 0, !dbg !880
  br i1 %188, label %189, label %211, !dbg !881

; <label>:189:                                    ; preds = %186
  %190 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 12), align 4, !dbg !882, !tbaa !883
  %191 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %190, i32 2, !dbg !884
  %192 = bitcast %struct.btstack_linked_item* %191 to i8**, !dbg !884
  %193 = bitcast %struct.btstack_linked_item* %191 to i32*, !dbg !884
  %194 = load i32, i32* %193, align 4, !dbg !884, !tbaa !885
  %195 = trunc i32 %194 to i16, !dbg !887
  call void @llvm.dbg.value(metadata i16 %195, metadata !666, metadata !DIExpression()), !dbg !888
  %196 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 12), %struct.btstack_linked_item* %190) #9, !dbg !889
  %197 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %190, i32 1, !dbg !890
  %198 = bitcast %struct.btstack_linked_item* %197 to void (i8*)**, !dbg !890
  %199 = load void (i8*)*, void (i8*)** %198, align 4, !dbg !890, !tbaa !891
  %200 = load i8*, i8** %192, align 4, !dbg !892, !tbaa !885
  call void %199(i8* %200) #9, !dbg !893
  %201 = call i32 @att_dispatch_server_can_send_now(i16 zeroext %195) #9, !dbg !894
  %202 = icmp eq i32 %201, 0, !dbg !894
  br i1 %202, label %203, label %186, !dbg !896

; <label>:203:                                    ; preds = %189
  %204 = call i32 @btstack_linked_list_empty(%struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 12)) #9, !dbg !897
  %205 = icmp eq i32 %204, 0, !dbg !897
  br i1 %205, label %210, label %206, !dbg !900

; <label>:206:                                    ; preds = %203
  %207 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !901
  %208 = and i8 %207, 1, !dbg !901
  %209 = icmp eq i8 %208, 0, !dbg !903
  br i1 %209, label %221, label %210, !dbg !904

; <label>:210:                                    ; preds = %206, %203
  call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %195) #9, !dbg !906
  br label %221

; <label>:211:                                    ; preds = %186
  %212 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !908
  %213 = and i8 %212, 1, !dbg !908
  %214 = icmp eq i8 %213, 0, !dbg !910
  br i1 %214, label %221, label %215, !dbg !911

; <label>:215:                                    ; preds = %211
  %216 = and i8 %212, -2, !dbg !912
  store i8 %216, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !912
  %217 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 11), align 4, !dbg !914, !tbaa !923
  %218 = icmp eq void (i8, i16, i8*, i16)* %217, null, !dbg !924
  br i1 %218, label %221, label %219, !dbg !925

; <label>:219:                                    ; preds = %215
  %220 = bitcast i16* %5 to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %220) #7, !dbg !926
  store i16 183, i16* %5, align 2, !dbg !927
  call void %217(i8 zeroext 4, i16 zeroext 0, i8* nonnull %220, i16 zeroext 2) #9, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %220) #7, !dbg !929
  br label %221, !dbg !929

; <label>:221:                                    ; preds = %219, %215, %211, %210, %206, %184
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %14) #7, !dbg !930
  br label %328

; <label>:222:                                    ; preds = %4
  %223 = load i8, i8* @ble_debug_enable, align 1, !dbg !931, !tbaa !382
  %224 = and i8 %223, 1, !dbg !931
  %225 = icmp eq i8 %224, 0, !dbg !931
  br i1 %225, label %229, label %226, !dbg !933

; <label>:226:                                    ; preds = %222
  %227 = zext i16 %1 to i32, !dbg !934
  %228 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i32 %227) #8, !dbg !934
  br label %229, !dbg !934

; <label>:229:                                    ; preds = %226, %222
  %230 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %1) #8, !dbg !936
  call void @llvm.dbg.value(metadata %struct.att_server_t* %230, metadata !630, metadata !DIExpression()), !dbg !937
  %231 = icmp eq %struct.att_server_t* %230, null, !dbg !938
  br i1 %231, label %232, label %239, !dbg !940

; <label>:232:                                    ; preds = %229
  %233 = load i8, i8* @ble_debug_enable, align 1, !dbg !941, !tbaa !382
  %234 = and i8 %233, 1, !dbg !941
  %235 = icmp eq i8 %234, 0, !dbg !941
  br i1 %235, label %328, label %236, !dbg !944

; <label>:236:                                    ; preds = %232
  %237 = zext i16 %1 to i32, !dbg !945
  %238 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 %237) #8, !dbg !945
  br label %328, !dbg !945

; <label>:239:                                    ; preds = %229
  %240 = load i8, i8* %2, align 1, !dbg !947, !tbaa !382
  %241 = icmp eq i8 %240, 30, !dbg !948
  br i1 %241, label %242, label %253, !dbg !949

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 5, !dbg !950
  %244 = load i32, i32* %243, align 4, !dbg !950, !tbaa !560
  %245 = icmp eq i32 %244, 0, !dbg !952
  br i1 %245, label %265, label %246, !dbg !953

; <label>:246:                                    ; preds = %242
  call void @llvm.dbg.value(metadata %struct.att_server_t* %230, metadata !955, metadata !DIExpression()), !dbg !960
  %247 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 6, !dbg !962
  %248 = tail call i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source* %247) #9, !dbg !963
  %249 = load i32, i32* %243, align 4, !dbg !964, !tbaa !560
  %250 = trunc i32 %249 to i16, !dbg !965
  call void @llvm.dbg.value(metadata i16 %250, metadata !631, metadata !DIExpression()), !dbg !966
  store i32 0, i32* %243, align 4, !dbg !967, !tbaa !560
  %251 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 7, i32 0, !dbg !968
  %252 = load i16, i16* %251, align 4, !dbg !968, !tbaa !511
  tail call fastcc void @att_handle_value_indication_notify_client(i8 zeroext 0, i16 zeroext %252, i16 zeroext %250) #8, !dbg !969
  br label %328

; <label>:253:                                    ; preds = %239
  %254 = zext i8 %240 to i32, !dbg !970
  %255 = icmp eq i8 %240, 82, !dbg !972
  br i1 %255, label %256, label %265, !dbg !973

; <label>:256:                                    ; preds = %253
  %257 = load i8, i8* @ble_debug_enable, align 1, !dbg !974, !tbaa !382
  %258 = and i8 %257, 1, !dbg !974
  %259 = icmp eq i8 %258, 0, !dbg !974
  br i1 %259, label %262, label %260, !dbg !977

; <label>:260:                                    ; preds = %256
  %261 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.32, i32 0, i32 0)), !dbg !978
  br label %262, !dbg !978

; <label>:262:                                    ; preds = %260, %256
  %263 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 7, !dbg !980
  %264 = tail call zeroext i16 @att_handle_request(%struct.att_connection* %263, i8* nonnull %2, i16 zeroext %3, i8* null) #9, !dbg !981
  br label %328, !dbg !982

; <label>:265:                                    ; preds = %253, %242
  %266 = phi i32 [ %254, %253 ], [ 30, %242 ]
  %267 = zext i16 %3 to i32, !dbg !983
  %268 = icmp ugt i16 %3, 517, !dbg !985
  br i1 %268, label %269, label %275, !dbg !986

; <label>:269:                                    ; preds = %265
  %270 = load i8, i8* @ble_debug_enable, align 1, !dbg !987, !tbaa !382
  %271 = and i8 %270, 1, !dbg !987
  %272 = icmp eq i8 %271, 0, !dbg !987
  br i1 %272, label %328, label %273, !dbg !990

; <label>:273:                                    ; preds = %269
  %274 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.16, i32 0, i32 0), i32 %266, i32 %267, i32 517) #8, !dbg !991
  br label %328, !dbg !991

; <label>:275:                                    ; preds = %265
  %276 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 0, !dbg !993
  %277 = load i32, i32* %276, align 4, !dbg !993, !tbaa !514
  %278 = icmp eq i32 %277, 0, !dbg !995
  br i1 %278, label %285, label %279, !dbg !996

; <label>:279:                                    ; preds = %275
  %280 = load i8, i8* @ble_debug_enable, align 1, !dbg !997, !tbaa !382
  %281 = and i8 %280, 1, !dbg !997
  %282 = icmp eq i8 %281, 0, !dbg !997
  br i1 %282, label %328, label %283, !dbg !1000

; <label>:283:                                    ; preds = %279
  %284 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.17, i32 0, i32 0), i32 %266, i32 %277) #8, !dbg !1001
  br label %328, !dbg !1001

; <label>:285:                                    ; preds = %275
  %286 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 10, !dbg !1003
  %287 = load i8, i8* %286, align 1, !dbg !1003
  %288 = and i8 %287, 28, !dbg !1003
  %289 = icmp eq i8 %288, 8, !dbg !1005
  br i1 %289, label %290, label %325, !dbg !1006

; <label>:290:                                    ; preds = %285
  switch i8 %240, label %325 [
    i8 7, label %291
    i8 1, label %308
  ], !dbg !1007

; <label>:291:                                    ; preds = %290
  %292 = load i8, i8* @ble_debug_enable, align 1, !dbg !1009, !tbaa !382
  %293 = and i8 %292, 1, !dbg !1009
  %294 = icmp eq i8 %293, 0, !dbg !1009
  br i1 %294, label %298, label %295, !dbg !1012

; <label>:295:                                    ; preds = %291
  %296 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.31, i32 0, i32 0)), !dbg !1013
  %297 = load i8, i8* %286, align 1
  br label %298, !dbg !1013

; <label>:298:                                    ; preds = %295, %291
  %299 = phi i8 [ %287, %291 ], [ %297, %295 ], !dbg !1015
  %300 = and i8 %299, -61, !dbg !1015
  %301 = or i8 %300, 20, !dbg !1015
  store i8 %301, i8* %286, align 1, !dbg !1016
  %302 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 11, !dbg !1017
  %303 = load void (i16, i8)*, void (i16, i8)** %302, align 4, !dbg !1017, !tbaa !1019
  %304 = icmp eq void (i16, i8)* %303, null, !dbg !1020
  br i1 %304, label %325, label %305, !dbg !1021

; <label>:305:                                    ; preds = %298
  %306 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 7, i32 0, !dbg !1022
  %307 = load i16, i16* %306, align 4, !dbg !1022, !tbaa !511
  tail call void %303(i16 zeroext %307, i8 zeroext 2) #9, !dbg !1024
  br label %325, !dbg !1025

; <label>:308:                                    ; preds = %290
  %309 = load i8, i8* @ble_debug_enable, align 1, !dbg !1026, !tbaa !382
  %310 = and i8 %309, 1, !dbg !1026
  %311 = icmp eq i8 %310, 0, !dbg !1026
  br i1 %311, label %315, label %312, !dbg !1028

; <label>:312:                                    ; preds = %308
  %313 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.30, i32 0, i32 0)), !dbg !1029
  %314 = load i8, i8* %286, align 1
  br label %315, !dbg !1029

; <label>:315:                                    ; preds = %312, %308
  %316 = phi i8 [ %287, %308 ], [ %314, %312 ], !dbg !1031
  %317 = and i8 %316, -61, !dbg !1031
  %318 = or i8 %317, 16, !dbg !1031
  store i8 %318, i8* %286, align 1, !dbg !1032
  %319 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 11, !dbg !1033
  %320 = load void (i16, i8)*, void (i16, i8)** %319, align 4, !dbg !1033, !tbaa !1019
  %321 = icmp eq void (i16, i8)* %320, null, !dbg !1035
  br i1 %321, label %325, label %322, !dbg !1036

; <label>:322:                                    ; preds = %315
  %323 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 7, i32 0, !dbg !1037
  %324 = load i16, i16* %323, align 4, !dbg !1037, !tbaa !511
  tail call void %320(i16 zeroext %324, i8 zeroext 1) #9, !dbg !1039
  br label %325, !dbg !1040

; <label>:325:                                    ; preds = %322, %315, %305, %298, %290, %285
  store i32 1, i32* %276, align 4, !dbg !1041, !tbaa !514
  %326 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 8, !dbg !1042
  store i16 %3, i16* %326, align 2, !dbg !1043, !tbaa !709
  %327 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %230, i32 0, i32 9, i32 0, !dbg !1044
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %327, i8* %2, i32 %267, i32 1, i1 false), !dbg !1044
  tail call fastcc void @att_run_for_context(%struct.att_server_t* nonnull %230) #8, !dbg !1045
  br label %328, !dbg !1046

; <label>:328:                                    ; preds = %325, %283, %279, %273, %269, %262, %246, %236, %232, %221, %7, %4
  ret void, !dbg !1047
}

; Function Attrs: optsize
declare void @att_set_db(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @att_set_read_callback(i16 (i16, i16, i16, i8*, i16)*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @att_set_write_callback(i32 (i16, i16, i16, i16, i8*, i16)*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @att_server_change_profile(i8*) local_unnamed_addr #0 section ".ble_att_code" !dbg !1049 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()), !dbg !1055
  %2 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1056, !tbaa !403
  %3 = icmp eq i32 %2, 0, !dbg !1056
  br i1 %3, label %5, label %4, !dbg !1058

; <label>:4:                                      ; preds = %1
  tail call void @att_set_db(i8* %0) #9, !dbg !1059
  br label %5, !dbg !1062

; <label>:5:                                      ; preds = %4, %1
  %6 = phi i32 [ 0, %4 ], [ -1, %1 ]
  ret i32 %6, !dbg !1063
}

; Function Attrs: nounwind optsize
define hidden void @att_server_register_packet_handler(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".ble_att_code" !dbg !1064 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !1070, metadata !DIExpression()), !dbg !1071
  %2 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1072, !tbaa !403
  %3 = icmp eq i32 %2, 0, !dbg !1072
  br i1 %3, label %5, label %4, !dbg !1074

; <label>:4:                                      ; preds = %1
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 11), align 4, !dbg !1075, !tbaa !923
  br label %5, !dbg !1077

; <label>:5:                                      ; preds = %4, %1
  ret void, !dbg !1078
}

; Function Attrs: nounwind optsize
define hidden i32 @att_server_can_send_packet_now(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1079 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1083, metadata !DIExpression()), !dbg !1084
  %2 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1085, !tbaa !403
  %3 = icmp eq i32 %2, 0, !dbg !1085
  br i1 %3, label %6, label %4, !dbg !1087

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @att_dispatch_server_can_send_now(i16 zeroext %0) #9, !dbg !1088
  br label %6, !dbg !1090

; <label>:6:                                      ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7, !dbg !1091
}

; Function Attrs: optsize
declare i32 @att_dispatch_server_can_send_now(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @att_server_request_can_send_now_event(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1092 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1096, metadata !DIExpression()), !dbg !1097
  %2 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1098, !tbaa !403
  %3 = icmp eq i32 %2, 0, !dbg !1098
  br i1 %3, label %14, label %4, !dbg !1100

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* @ble_debug_enable, align 1, !dbg !1101, !tbaa !382
  %6 = and i8 %5, 1, !dbg !1101
  %7 = icmp eq i8 %6, 0, !dbg !1101
  br i1 %7, label %11, label %8, !dbg !1104

; <label>:8:                                      ; preds = %4
  %9 = zext i16 %0 to i32, !dbg !1105
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0), i32 %9) #8, !dbg !1105
  br label %11, !dbg !1105

; <label>:11:                                     ; preds = %8, %4
  %12 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !1107
  %13 = or i8 %12, 1, !dbg !1107
  store i8 %13, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !1107
  tail call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %0) #9, !dbg !1108
  br label %14, !dbg !1109

; <label>:14:                                     ; preds = %11, %1
  ret void, !dbg !1110
}

; Function Attrs: nounwind optsize
define hidden void @att_server_register_can_send_now_callback(%struct.btstack_context_callback_registration_t*, i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1111 {
  call void @llvm.dbg.value(metadata %struct.btstack_context_callback_registration_t* %0, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i16 %1, metadata !1116, metadata !DIExpression()), !dbg !1118
  %3 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1119, !tbaa !403
  %4 = icmp eq i32 %3, 0, !dbg !1119
  br i1 %4, label %18, label %5, !dbg !1121

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @att_dispatch_server_can_send_now(i16 zeroext %1) #9, !dbg !1122
  %7 = icmp eq i32 %6, 0, !dbg !1122
  br i1 %7, label %13, label %8, !dbg !1125

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.btstack_context_callback_registration_t, %struct.btstack_context_callback_registration_t* %0, i32 0, i32 1, !dbg !1126
  %10 = load void (i8*)*, void (i8*)** %9, align 4, !dbg !1126, !tbaa !891
  %11 = getelementptr inbounds %struct.btstack_context_callback_registration_t, %struct.btstack_context_callback_registration_t* %0, i32 0, i32 2, !dbg !1128
  %12 = load i8*, i8** %11, align 4, !dbg !1128, !tbaa !885
  tail call void %10(i8* %12) #9, !dbg !1129
  br label %18, !dbg !1130

; <label>:13:                                     ; preds = %5
  %14 = zext i16 %1 to i32, !dbg !1131
  %15 = inttoptr i32 %14 to i8*, !dbg !1132
  %16 = getelementptr inbounds %struct.btstack_context_callback_registration_t, %struct.btstack_context_callback_registration_t* %0, i32 0, i32 2, !dbg !1133
  store i8* %15, i8** %16, align 4, !dbg !1134, !tbaa !885
  %17 = bitcast %struct.btstack_context_callback_registration_t* %0 to %struct.btstack_linked_item*, !dbg !1135
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 12), %struct.btstack_linked_item* %17) #9, !dbg !1135
  tail call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %1) #9, !dbg !1136
  br label %18, !dbg !1137

; <label>:18:                                     ; preds = %13, %8, %2
  ret void, !dbg !1138
}

; Function Attrs: optsize
declare void @btstack_linked_list_add_tail(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @att_server_notify(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1139 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1143, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i16 %1, metadata !1144, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %2, metadata !1145, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i16 %3, metadata !1146, metadata !DIExpression()), !dbg !1153
  %5 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1154, !tbaa !403
  %6 = icmp eq i32 %5, 0, !dbg !1154
  br i1 %6, label %21, label %7, !dbg !1156

; <label>:7:                                      ; preds = %4
  %8 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %0) #8, !dbg !1157
  call void @llvm.dbg.value(metadata %struct.att_server_t* %8, metadata !1147, metadata !DIExpression()), !dbg !1158
  %9 = icmp eq %struct.att_server_t* %8, null, !dbg !1159
  br i1 %9, label %21, label %10, !dbg !1161

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @att_dispatch_server_can_send_now(i16 zeroext %0) #9, !dbg !1162
  %12 = icmp eq i32 %11, 0, !dbg !1162
  br i1 %12, label %21, label %13, !dbg !1164

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1165
  %15 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1166
  call void @llvm.dbg.value(metadata i8* %15, metadata !1148, metadata !DIExpression()), !dbg !1167
  %16 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %8, i32 0, i32 7, !dbg !1168
  %17 = tail call zeroext i16 @att_prepare_handle_value_notification(%struct.att_connection* %16, i16 zeroext %1, i8* %2, i16 zeroext %3, i8* %15) #9, !dbg !1169
  call void @llvm.dbg.value(metadata i16 %17, metadata !1149, metadata !DIExpression()), !dbg !1170
  %18 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %16, i32 0, i32 0, !dbg !1171
  %19 = load i16, i16* %18, align 4, !dbg !1171, !tbaa !511
  %20 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %19, i16 zeroext 4, i16 zeroext %17) #9, !dbg !1172
  br label %21

; <label>:21:                                     ; preds = %13, %10, %7, %4
  %22 = phi i32 [ 2, %4 ], [ %20, %13 ], [ 2, %7 ], [ 87, %10 ]
  ret i32 %22, !dbg !1173
}

; Function Attrs: optsize
declare i32 @l2cap_reserve_packet_buffer() local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @l2cap_get_outgoing_buffer() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @att_prepare_handle_value_notification(%struct.att_connection*, i16 zeroext, i8*, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @l2cap_send_prepared_connectionless(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @att_server_indicate(i16 zeroext, i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1175 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1177, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i16 %1, metadata !1178, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i8* %2, metadata !1179, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i16 %3, metadata !1180, metadata !DIExpression()), !dbg !1187
  %5 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1188, !tbaa !403
  %6 = icmp eq i32 %5, 0, !dbg !1188
  br i1 %6, label %32, label %7, !dbg !1190

; <label>:7:                                      ; preds = %4
  %8 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %0) #8, !dbg !1191
  call void @llvm.dbg.value(metadata %struct.att_server_t* %8, metadata !1181, metadata !DIExpression()), !dbg !1192
  %9 = icmp eq %struct.att_server_t* %8, null, !dbg !1193
  br i1 %9, label %32, label %10, !dbg !1195

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %8, i32 0, i32 5, !dbg !1196
  %12 = load i32, i32* %11, align 4, !dbg !1196, !tbaa !560
  %13 = icmp eq i32 %12, 0, !dbg !1198
  br i1 %13, label %14, label %32, !dbg !1199

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @att_dispatch_server_can_send_now(i16 zeroext %0) #9, !dbg !1200
  %16 = icmp eq i32 %15, 0, !dbg !1200
  br i1 %16, label %32, label %17, !dbg !1202

; <label>:17:                                     ; preds = %14
  %18 = zext i16 %1 to i32, !dbg !1203
  store i32 %18, i32* %11, align 4, !dbg !1204, !tbaa !560
  %19 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %8, i32 0, i32 6, !dbg !1205
  %20 = bitcast %struct.btstack_timer_source* %19 to i64*, !dbg !1206
  store i64 0, i64* %20, align 4, !dbg !1206
  %21 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %8, i32 0, i32 6, i32 2, !dbg !1207
  store i32 30000, i32* %21, align 4, !dbg !1208
  %22 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %8, i32 0, i32 6, i32 3, !dbg !1209
  store void (%struct.btstack_timer_source*)* @att_handle_value_indication_timeout, void (%struct.btstack_timer_source*)** %22, align 4, !dbg !1210, !tbaa !1211
  %23 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %8, i32 0, i32 6, i32 4, !dbg !1212
  %24 = bitcast i8** %23 to %struct.att_server_t**, !dbg !1213
  store %struct.att_server_t* %8, %struct.att_server_t** %24, align 4, !dbg !1213, !tbaa !1214
  tail call void @btstack_set_timer(%struct.btstack_timer_source* %19, i16 signext 130) #9, !dbg !1215
  %25 = tail call i32 @l2cap_reserve_packet_buffer() #9, !dbg !1216
  %26 = tail call i8* @l2cap_get_outgoing_buffer() #9, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %26, metadata !1182, metadata !DIExpression()), !dbg !1218
  %27 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %8, i32 0, i32 7, !dbg !1219
  %28 = tail call zeroext i16 @att_prepare_handle_value_indication(%struct.att_connection* %27, i16 zeroext %1, i8* %2, i16 zeroext %3, i8* %26) #9, !dbg !1220
  call void @llvm.dbg.value(metadata i16 %28, metadata !1183, metadata !DIExpression()), !dbg !1221
  %29 = getelementptr inbounds %struct.att_connection, %struct.att_connection* %27, i32 0, i32 0, !dbg !1222
  %30 = load i16, i16* %29, align 4, !dbg !1222, !tbaa !511
  %31 = tail call i32 @l2cap_send_prepared_connectionless(i16 zeroext %30, i16 zeroext 4, i16 zeroext %28) #9, !dbg !1223
  br label %32

; <label>:32:                                     ; preds = %17, %14, %10, %7, %4
  %33 = phi i32 [ 2, %4 ], [ 0, %17 ], [ 2, %7 ], [ 144, %10 ], [ 87, %14 ]
  ret i32 %33, !dbg !1224
}

; Function Attrs: nounwind optsize
define internal void @att_handle_value_indication_timeout(%struct.btstack_timer_source* nocapture readonly) #0 section ".ble_att_code" !dbg !1226 {
  call void @llvm.dbg.value(metadata %struct.btstack_timer_source* %0, metadata !1231, metadata !DIExpression()), !dbg !1234
  %2 = getelementptr inbounds %struct.btstack_timer_source, %struct.btstack_timer_source* %0, i32 0, i32 4, !dbg !1235
  %3 = bitcast i8** %2 to %struct.att_server_t**, !dbg !1235
  %4 = load %struct.att_server_t*, %struct.att_server_t** %3, align 4, !dbg !1235, !tbaa !1236
  call void @llvm.dbg.value(metadata %struct.att_server_t* %4, metadata !1232, metadata !DIExpression()), !dbg !1237
  %5 = icmp eq %struct.att_server_t* %4, null, !dbg !1238
  br i1 %5, label %12, label %6, !dbg !1240

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %4, i32 0, i32 5, !dbg !1241
  %8 = load i32, i32* %7, align 4, !dbg !1241, !tbaa !560
  %9 = trunc i32 %8 to i16, !dbg !1242
  call void @llvm.dbg.value(metadata i16 %9, metadata !1233, metadata !DIExpression()), !dbg !1243
  %10 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %4, i32 0, i32 7, i32 0, !dbg !1244
  %11 = load i16, i16* %10, align 4, !dbg !1244, !tbaa !511
  tail call fastcc void @att_handle_value_indication_notify_client(i8 zeroext -111, i16 zeroext %11, i16 zeroext %9) #8, !dbg !1245
  br label %12, !dbg !1246

; <label>:12:                                     ; preds = %6, %1
  ret void, !dbg !1247
}

; Function Attrs: optsize
declare void @btstack_set_timer(%struct.btstack_timer_source*, i16 signext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @att_prepare_handle_value_indication(%struct.att_connection*, i16 zeroext, i8*, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @att_server_send_request(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1249 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1251, metadata !DIExpression()), !dbg !1252
  %2 = load i32, i32* @config_le_gatt_server_num, align 4, !dbg !1253, !tbaa !403
  %3 = icmp eq i32 %2, 0, !dbg !1253
  br i1 %3, label %5, label %4, !dbg !1255

; <label>:4:                                      ; preds = %1
  tail call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %0) #9, !dbg !1256
  br label %5, !dbg !1258

; <label>:5:                                      ; preds = %4, %1
  ret void, !dbg !1259
}

; Function Attrs: nounwind optsize
define hidden void @att_server_flow_hold(i16 zeroext, i8 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1260 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1264, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8 %1, metadata !1265, metadata !DIExpression()), !dbg !1268
  %3 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %0) #8, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.att_server_t* %3, metadata !1266, metadata !DIExpression()), !dbg !1270
  %4 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !1271
  %5 = and i8 %4, 2, !dbg !1271
  %6 = icmp eq i8 %5, 0, !dbg !1273
  br i1 %6, label %33, label %7, !dbg !1274

; <label>:7:                                      ; preds = %2
  %8 = load i8, i8* @ble_debug_enable, align 1, !dbg !1275, !tbaa !382
  %9 = and i8 %8, 1, !dbg !1275
  %10 = icmp eq i8 %9, 0, !dbg !1275
  br i1 %10, label %15, label %11, !dbg !1277

; <label>:11:                                     ; preds = %7
  %12 = zext i16 %0 to i32, !dbg !1278
  %13 = zext i8 %1 to i32, !dbg !1278
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i32 %12, i32 %13) #8, !dbg !1278
  br label %15, !dbg !1278

; <label>:15:                                     ; preds = %11, %7
  %16 = icmp eq %struct.att_server_t* %3, null, !dbg !1280
  br i1 %16, label %17, label %23, !dbg !1282

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* @ble_debug_enable, align 1, !dbg !1283, !tbaa !382
  %19 = and i8 %18, 1, !dbg !1283
  %20 = icmp eq i8 %19, 0, !dbg !1283
  br i1 %20, label %33, label %21, !dbg !1286

; <label>:21:                                     ; preds = %17
  %22 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.35, i32 0, i32 0)), !dbg !1287
  br label %33, !dbg !1287

; <label>:23:                                     ; preds = %15
  %24 = icmp eq i8 %1, 0, !dbg !1289
  %25 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %3, i32 0, i32 10
  %26 = load i8, i8* %25, align 1
  br i1 %24, label %29, label %27, !dbg !1291

; <label>:27:                                     ; preds = %23
  %28 = or i8 %26, 1, !dbg !1292
  store i8 %28, i8* %25, align 1, !dbg !1292
  br label %33, !dbg !1294

; <label>:29:                                     ; preds = %23
  %30 = and i8 %26, -2
  store i8 %30, i8* %25, align 1, !dbg !1295
  call void @llvm.dbg.value(metadata i16 %0, metadata !1297, metadata !DIExpression()), !dbg !1300
  %31 = zext i16 %0 to i32, !dbg !1302
  %32 = tail call i32 (i32, i32, ...) @ble_user_cmd_prepare(i32 23, i32 1, i32 %31) #9, !dbg !1303
  br label %33

; <label>:33:                                     ; preds = %29, %27, %21, %17, %2
  ret void, !dbg !1304
}

; Function Attrs: nounwind optsize
define hidden void @att_server_flow_enable(i8 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1306 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1310, metadata !DIExpression()), !dbg !1311
  %2 = load i8, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !1312
  %3 = or i8 %2, 2, !dbg !1312
  store i8 %3, i8* getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 13), align 4, !dbg !1312
  ret void, !dbg !1313
}

; Function Attrs: nounwind optsize
define hidden void @att_server_set_check_remote(i16 zeroext, void (i16, i32)*) local_unnamed_addr #0 section ".ble_att_code" !dbg !1314 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1322, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata void (i16, i32)* %1, metadata !1323, metadata !DIExpression()), !dbg !1326
  %3 = icmp eq i16 %0, 0, !dbg !1327
  br i1 %3, label %26, label %4, !dbg !1329

; <label>:4:                                      ; preds = %2
  %5 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %0) #8, !dbg !1330
  call void @llvm.dbg.value(metadata %struct.att_server_t* %5, metadata !1324, metadata !DIExpression()), !dbg !1331
  %6 = icmp eq %struct.att_server_t* %5, null, !dbg !1332
  %7 = load i8, i8* @ble_debug_enable, align 1, !tbaa !382
  %8 = and i8 %7, 1
  %9 = icmp ne i8 %8, 0
  br i1 %6, label %10, label %14, !dbg !1334

; <label>:10:                                     ; preds = %4
  br i1 %9, label %11, label %26, !dbg !1335

; <label>:11:                                     ; preds = %10
  %12 = zext i16 %0 to i32, !dbg !1337
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %12) #8, !dbg !1337
  br label %26, !dbg !1337

; <label>:14:                                     ; preds = %4
  br i1 %9, label %15, label %17, !dbg !1340

; <label>:15:                                     ; preds = %14
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.34, i32 0, i32 0)), !dbg !1341
  br label %17, !dbg !1341

; <label>:17:                                     ; preds = %15, %14
  %18 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %5, i32 0, i32 10, !dbg !1344
  %19 = load i8, i8* %18, align 1, !dbg !1345
  %20 = and i8 %19, -29, !dbg !1345
  %21 = or i8 %20, 4, !dbg !1345
  store i8 %21, i8* %18, align 1, !dbg !1345
  %22 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %5, i32 0, i32 11, !dbg !1346
  %23 = bitcast void (i16, i8)** %22 to void (i16, i32)**, !dbg !1347
  store void (i16, i32)* %1, void (i16, i32)** %23, align 4, !dbg !1347, !tbaa !1019
  call void @llvm.dbg.value(metadata i16 %0, metadata !1297, metadata !DIExpression()), !dbg !1348
  %24 = zext i16 %0 to i32, !dbg !1350
  %25 = tail call i32 (i32, i32, ...) @ble_user_cmd_prepare(i32 23, i32 1, i32 %24) #9, !dbg !1351
  br label %26, !dbg !1352

; <label>:26:                                     ; preds = %17, %11, %10, %2
  ret void, !dbg !1353
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @att_server_get_remote_type(i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1355 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1359, metadata !DIExpression()), !dbg !1361
  %2 = icmp eq i16 %0, 0, !dbg !1362
  br i1 %2, label %22, label %3, !dbg !1364

; <label>:3:                                      ; preds = %1
  %4 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %0) #8, !dbg !1365
  call void @llvm.dbg.value(metadata %struct.att_server_t* %4, metadata !1360, metadata !DIExpression()), !dbg !1366
  %5 = icmp eq %struct.att_server_t* %4, null, !dbg !1367
  br i1 %5, label %6, label %13, !dbg !1369

; <label>:6:                                      ; preds = %3
  %7 = load i8, i8* @ble_debug_enable, align 1, !dbg !1370, !tbaa !382
  %8 = and i8 %7, 1, !dbg !1370
  %9 = icmp eq i8 %8, 0, !dbg !1370
  br i1 %9, label %22, label %10, !dbg !1373

; <label>:10:                                     ; preds = %6
  %11 = zext i16 %0 to i32, !dbg !1374
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i32 %11) #8, !dbg !1374
  br label %22, !dbg !1374

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %4, i32 0, i32 10, !dbg !1376
  %15 = load i8, i8* %14, align 1, !dbg !1376
  %16 = lshr i8 %15, 2, !dbg !1376
  %17 = and i8 %16, 7, !dbg !1376
  %18 = icmp eq i8 %17, 5, !dbg !1378
  %19 = select i1 %18, i8 2, i8 0, !dbg !1378
  %20 = icmp eq i8 %17, 4, !dbg !1378
  %21 = select i1 %20, i8 1, i8 %19, !dbg !1378
  br label %22, !dbg !1378

; <label>:22:                                     ; preds = %13, %10, %6, %1
  %23 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %10 ], [ %21, %13 ]
  ret i8 %23, !dbg !1379
}

; Function Attrs: nounwind optsize
define hidden i32 @att_server_sync_mtu(i16 zeroext, i16 zeroext) local_unnamed_addr #0 section ".ble_att_code" !dbg !1380 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1384, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i16 %1, metadata !1385, metadata !DIExpression()), !dbg !1388
  %3 = tail call fastcc %struct.att_server_t* @att_server_for_handle(i16 zeroext %0) #8, !dbg !1389
  call void @llvm.dbg.value(metadata %struct.att_server_t* %3, metadata !1386, metadata !DIExpression()), !dbg !1390
  %4 = icmp eq %struct.att_server_t* %3, null, !dbg !1391
  %5 = load i8, i8* @ble_debug_enable, align 1, !tbaa !382
  %6 = and i8 %5, 1
  %7 = icmp ne i8 %6, 0
  br i1 %4, label %8, label %11, !dbg !1393

; <label>:8:                                      ; preds = %2
  br i1 %7, label %9, label %19, !dbg !1394

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.35, i32 0, i32 0)), !dbg !1396
  br label %19, !dbg !1396

; <label>:11:                                     ; preds = %2
  br i1 %7, label %12, label %15, !dbg !1399

; <label>:12:                                     ; preds = %11
  %13 = zext i16 %1 to i32, !dbg !1400
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.att_server_sync_mtu, i32 0, i32 0), i32 %13) #8, !dbg !1400
  br label %15, !dbg !1400

; <label>:15:                                     ; preds = %12, %11
  %16 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %3, i32 0, i32 7, i32 1, !dbg !1403
  store i16 %1, i16* %16, align 2, !dbg !1404, !tbaa !517
  %17 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %3, i32 0, i32 7, i32 0, !dbg !1405
  %18 = load i16, i16* %17, align 4, !dbg !1405, !tbaa !511
  tail call fastcc void @att_emit_mtu_event(i16 zeroext %18, i16 zeroext %1) #8, !dbg !1406
  br label %19, !dbg !1407

; <label>:19:                                     ; preds = %15, %9, %8
  %20 = phi i32 [ 0, %15 ], [ 1, %9 ], [ 1, %8 ]
  ret i32 %20, !dbg !1408
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_emit_mtu_event(i16 zeroext, i16 zeroext) unnamed_addr #0 section ".ble_att_code" !dbg !1409 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !1413, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i16 %1, metadata !1414, metadata !DIExpression()), !dbg !1418
  %4 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 11), align 4, !dbg !1419, !tbaa !923
  %5 = icmp eq void (i8, i16, i8*, i16)* %4, null, !dbg !1421
  br i1 %5, label %10, label %6, !dbg !1422

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0, !dbg !1423
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #7, !dbg !1423
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !1415, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 0, metadata !1416, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 1, metadata !1416, metadata !DIExpression()), !dbg !1425
  store i8 -75, i8* %7, align 1, !dbg !1426, !tbaa !382
  call void @llvm.dbg.value(metadata i32 2, metadata !1416, metadata !DIExpression()), !dbg !1425
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 1, !dbg !1427
  store i8 4, i8* %8, align 1, !dbg !1428, !tbaa !382
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 2, i16 zeroext %0) #9, !dbg !1429
  call void @llvm.dbg.value(metadata i32 4, metadata !1416, metadata !DIExpression()), !dbg !1425
  call void @little_endian_store_16(i8* nonnull %7, i16 zeroext 4, i16 zeroext %1) #9, !dbg !1430
  %9 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 11), align 4, !dbg !1431, !tbaa !923
  call void %9(i8 zeroext 4, i16 zeroext 0, i8* nonnull %7, i16 zeroext 6) #9, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #7, !dbg !1433
  br label %10, !dbg !1433

; <label>:10:                                     ; preds = %6, %2
  ret void, !dbg !1434
}

; Function Attrs: optsize
declare %struct.__le_hci_connection* @le_hci_connection_for_handle(i16 zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_event_packet_get_type(i8* nocapture readonly) unnamed_addr #4 !dbg !1436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1441, metadata !DIExpression()), !dbg !1442
  %2 = load i8, i8* %0, align 1, !dbg !1443, !tbaa !382
  ret i8 %2, !dbg !1444
}

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @reverse_bd_addr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @l2cap_max_le_mtu() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sm_encryption_key_size(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sm_authenticated(i16 zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind optsize
define internal fastcc zeroext i16 @hci_event_disconnection_complete_get_connection_handle(i8*) unnamed_addr #5 !dbg !1445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1449, metadata !DIExpression()), !dbg !1450
  %2 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 3) #9, !dbg !1451
  ret i16 %2, !dbg !1452
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc zeroext i16 @sm_event_identity_resolving_started_get_handle(i8*) unnamed_addr #5 !dbg !1453 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1457, metadata !DIExpression()), !dbg !1458
  %2 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 2) #9, !dbg !1459
  ret i16 %2, !dbg !1460
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc zeroext i16 @sm_event_identity_resolving_succeeded_get_handle(i8*) unnamed_addr #5 !dbg !1461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1463, metadata !DIExpression()), !dbg !1464
  %2 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 2) #9, !dbg !1465
  ret i16 %2, !dbg !1466
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc zeroext i16 @sm_event_identity_resolving_succeeded_get_index_internal(i8*) unnamed_addr #5 !dbg !1467 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1469, metadata !DIExpression()), !dbg !1470
  %2 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 18) #9, !dbg !1471
  ret i16 %2, !dbg !1472
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_run_for_context(%struct.att_server_t* nocapture) unnamed_addr #0 section ".ble_att_code" !dbg !1473 {
  call void @llvm.dbg.value(metadata %struct.att_server_t* %0, metadata !1475, metadata !DIExpression()), !dbg !1476
  %2 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %0, i32 0, i32 0, !dbg !1477
  %3 = load i32, i32* %2, align 4, !dbg !1477, !tbaa !514
  %4 = icmp eq i32 %3, 1, !dbg !1478
  br i1 %4, label %5, label %8, !dbg !1478

; <label>:5:                                      ; preds = %1
  store i32 3, i32* %2, align 4, !dbg !1479, !tbaa !514
  %6 = getelementptr inbounds %struct.att_server_t, %struct.att_server_t* %0, i32 0, i32 7, i32 0, !dbg !1481
  %7 = load i16, i16* %6, align 4, !dbg !1481, !tbaa !511
  tail call void @att_dispatch_server_request_can_send_now_event(i16 zeroext %7) #9, !dbg !1482
  br label %8, !dbg !1483

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !1484
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc zeroext i16 @sm_event_identity_resolving_failed_get_handle(i8*) unnamed_addr #5 !dbg !1485 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1487, metadata !DIExpression()), !dbg !1488
  %2 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 2) #9, !dbg !1489
  ret i16 %2, !dbg !1490
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc zeroext i16 @sm_event_authorization_result_get_handle(i8*) unnamed_addr #5 !dbg !1491 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1493, metadata !DIExpression()), !dbg !1494
  %2 = tail call zeroext i16 @little_endian_read_16(i8* %0, i32 2) #9, !dbg !1495
  ret i16 %2, !dbg !1496
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @sm_event_authorization_result_get_authorization_result(i8* nocapture readonly) unnamed_addr #4 !dbg !1497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1499, metadata !DIExpression()), !dbg !1500
  %2 = getelementptr inbounds i8, i8* %0, i32 11, !dbg !1501
  %3 = load i8, i8* %2, align 1, !dbg !1501, !tbaa !382
  ret i8 %3, !dbg !1502
}

; Function Attrs: nounwind optsize
define internal fastcc void @att_handle_value_indication_notify_client(i8 zeroext, i16 zeroext, i16 zeroext) unnamed_addr #0 section ".ble_att_code" !dbg !1503 {
  %4 = alloca [7 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !1507, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i16 %1, metadata !1508, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i16 %2, metadata !1509, metadata !DIExpression()), !dbg !1514
  %5 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 11), align 4, !dbg !1515, !tbaa !923
  %6 = icmp eq void (i8, i16, i8*, i16)* %5, null, !dbg !1517
  br i1 %6, label %12, label %7, !dbg !1518

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i32 0, i32 0, !dbg !1519
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %8) #7, !dbg !1519
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %4, metadata !1510, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 0, metadata !1511, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 1, metadata !1511, metadata !DIExpression()), !dbg !1521
  store i8 -74, i8* %8, align 1, !dbg !1522, !tbaa !382
  call void @llvm.dbg.value(metadata i32 2, metadata !1511, metadata !DIExpression()), !dbg !1521
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i32 0, i32 1, !dbg !1523
  store i8 5, i8* %9, align 1, !dbg !1524, !tbaa !382
  call void @llvm.dbg.value(metadata i32 3, metadata !1511, metadata !DIExpression()), !dbg !1521
  %10 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i32 0, i32 2, !dbg !1525
  store i8 %0, i8* %10, align 1, !dbg !1526, !tbaa !382
  call void @little_endian_store_16(i8* nonnull %8, i16 zeroext 3, i16 zeroext %1) #9, !dbg !1527
  call void @llvm.dbg.value(metadata i32 5, metadata !1511, metadata !DIExpression()), !dbg !1521
  call void @little_endian_store_16(i8* nonnull %8, i16 zeroext 5, i16 zeroext %2) #9, !dbg !1528
  %11 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.att_info_t, %struct.att_info_t* @att_global_info, i32 0, i32 11), align 4, !dbg !1529, !tbaa !923
  call void %11(i8 zeroext 4, i16 zeroext 0, i8* nonnull %8, i16 zeroext 7) #9, !dbg !1530
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %8) #7, !dbg !1531
  br label %12, !dbg !1531

; <label>:12:                                     ; preds = %7, %3
  ret void, !dbg !1532
}

; Function Attrs: optsize
declare zeroext i16 @att_handle_request(%struct.att_connection*, i8*, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #6

; Function Attrs: optsize
declare void @hci_connections_get_iterator(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @btstack_linked_list_iterator_has_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #3

; Function Attrs: optsize
declare %struct.btstack_linked_item* @btstack_linked_list_iterator_next(%struct.btstack_linked_list_iterator_t*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @btstack_linked_list_empty(%struct.btstack_linked_item**) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sm_authorization_state(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_release_packet_buffer() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @sm_api_request_pairing(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @little_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @btstack_run_loop_remove_timer(%struct.btstack_timer_source*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ble_user_cmd_prepare(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!358, !359}
!llvm.ident = !{!360}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !357, line: 190, type: !208, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !193, globals: !350)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BLE/att_server.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !12, !18, !26, !34, !134, !141, !147}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 157, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Protocol/include/ble/att_server.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "ATT_SERVER_IDLE", value: 0)
!9 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED", value: 1)
!10 = !DIEnumerator(name: "ATT_SERVER_W4_SIGNED_WRITE_VALIDATION", value: 2)
!11 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 156, size: 32, elements: !14)
!13 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/ble_api.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "REMOTE_TYPE_UNKNOWN", value: 0)
!16 = !DIEnumerator(name: "REMOTE_TYPE_ANDROID", value: 1)
!17 = !DIEnumerator(name: "REMOTE_TYPE_IOS", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 1469, size: 32, elements: !20)
!19 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_PUBLIC", value: 0)
!22 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_RANDOM", value: 1)
!23 = !DIEnumerator(name: "BD_ADDR_TYPE_SCO", value: 254)
!24 = !DIEnumerator(name: "BD_ADDR_TYPE_CLASSIC", value: 255)
!25 = !DIEnumerator(name: "BD_ADDR_TYPE_UNKNOWN", value: 254)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 246, size: 32, elements: !28)
!27 = !DIFile(filename: "../btstack/Host/include/common/hci.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_NONE", value: 0)
!30 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_REQUEST", value: 1)
!31 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_RESPONSE", value: 2)
!32 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_CHANGE_HCI_CON_PARAMETERS", value: 3)
!33 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_DENY", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 295, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!36 = !DIEnumerator(name: "SM_GENERAL_IDLE", value: 0)
!37 = !DIEnumerator(name: "SM_GENERAL_SEND_PAIRING_FAILED", value: 1)
!38 = !DIEnumerator(name: "SM_GENERAL_TIMEOUT", value: 2)
!39 = !DIEnumerator(name: "SM_PH1_W4_USER_RESPONSE", value: 3)
!40 = !DIEnumerator(name: "SM_PH2_GET_RANDOM_TK", value: 4)
!41 = !DIEnumerator(name: "SM_PH2_W4_RANDOM_TK", value: 5)
!42 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_A", value: 6)
!43 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_A", value: 7)
!44 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_B", value: 8)
!45 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_B", value: 9)
!46 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_A", value: 10)
!47 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_A", value: 11)
!48 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_B", value: 12)
!49 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_B", value: 13)
!50 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_C", value: 14)
!51 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_C", value: 15)
!52 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_D", value: 16)
!53 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_D", value: 17)
!54 = !DIEnumerator(name: "SM_PH2_C1_SEND_PAIRING_CONFIRM", value: 18)
!55 = !DIEnumerator(name: "SM_PH2_SEND_PAIRING_RANDOM", value: 19)
!56 = !DIEnumerator(name: "SM_PH2_CALC_STK", value: 20)
!57 = !DIEnumerator(name: "SM_PH2_W4_STK", value: 21)
!58 = !DIEnumerator(name: "SM_PH2_W4_CONNECTION_ENCRYPTED", value: 22)
!59 = !DIEnumerator(name: "SM_PH3_GET_RANDOM", value: 23)
!60 = !DIEnumerator(name: "SM_PH3_W4_RANDOM", value: 24)
!61 = !DIEnumerator(name: "SM_PH3_GET_DIV", value: 25)
!62 = !DIEnumerator(name: "SM_PH3_W4_DIV", value: 26)
!63 = !DIEnumerator(name: "SM_PH3_Y_GET_ENC", value: 27)
!64 = !DIEnumerator(name: "SM_PH3_Y_W4_ENC", value: 28)
!65 = !DIEnumerator(name: "SM_PH3_LTK_GET_ENC", value: 29)
!66 = !DIEnumerator(name: "SM_PH3_LTK_W4_ENC", value: 30)
!67 = !DIEnumerator(name: "SM_PH3_CSRK_GET_ENC", value: 31)
!68 = !DIEnumerator(name: "SM_PH3_CSRK_W4_ENC", value: 32)
!69 = !DIEnumerator(name: "SM_PH3_DISTRIBUTE_KEYS", value: 33)
!70 = !DIEnumerator(name: "SM_PH3_RECEIVE_KEYS", value: 34)
!71 = !DIEnumerator(name: "SM_RESPONDER_IDLE", value: 35)
!72 = !DIEnumerator(name: "SM_RESPONDER_SEND_SECURITY_REQUEST", value: 36)
!73 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_REQUEST", value: 37)
!74 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_W4_IRK", value: 38)
!75 = !DIEnumerator(name: "SM_RESPONDER_PH0_SEND_LTK_REQUESTED_NEGATIVE_REPLY", value: 39)
!76 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_REQUEST", value: 40)
!77 = !DIEnumerator(name: "SM_RESPONDER_PH1_PAIRING_REQUEST_RECEIVED", value: 41)
!78 = !DIEnumerator(name: "SM_RESPONDER_PH1_SEND_PAIRING_RESPONSE", value: 42)
!79 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_CONFIRM", value: 43)
!80 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_PAIRING_RANDOM", value: 44)
!81 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_LTK_REQUEST", value: 45)
!82 = !DIEnumerator(name: "SM_RESPONDER_PH2_SEND_LTK_REPLY", value: 46)
!83 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_GET_ENC", value: 47)
!84 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_W4_ENC", value: 48)
!85 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_GET_ENC", value: 49)
!86 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_W4_ENC", value: 50)
!87 = !DIEnumerator(name: "SM_RESPONDER_PH4_SEND_LTK_REPLY", value: 51)
!88 = !DIEnumerator(name: "SM_INITIATOR_CONNECTED", value: 52)
!89 = !DIEnumerator(name: "SM_INITIATOR_PH0_HAS_LTK", value: 53)
!90 = !DIEnumerator(name: "SM_INITIATOR_PH0_SEND_START_ENCRYPTION", value: 54)
!91 = !DIEnumerator(name: "SM_INITIATOR_PH0_W4_CONNECTION_ENCRYPTED", value: 55)
!92 = !DIEnumerator(name: "SM_INITIATOR_PH1_W2_SEND_PAIRING_REQUEST", value: 56)
!93 = !DIEnumerator(name: "SM_INITIATOR_PH1_SEND_PAIRING_REQUEST", value: 57)
!94 = !DIEnumerator(name: "SM_INITIATOR_PH1_W4_PAIRING_RESPONSE", value: 58)
!95 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_CONFIRM", value: 59)
!96 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_RANDOM", value: 60)
!97 = !DIEnumerator(name: "SM_INITIATOR_PH3_SEND_START_ENCRYPTION", value: 61)
!98 = !DIEnumerator(name: "SM_SC_RECEIVED_LTK_REQUEST", value: 62)
!99 = !DIEnumerator(name: "SM_SC_SEND_PUBLIC_KEY_COMMAND", value: 63)
!100 = !DIEnumerator(name: "SM_SC_W4_PUBLIC_KEY_COMMAND", value: 64)
!101 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_A", value: 65)
!102 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_A", value: 66)
!103 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_B", value: 67)
!104 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_B", value: 68)
!105 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CONFIRMATION", value: 69)
!106 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CONFIRMATION", value: 70)
!107 = !DIEnumerator(name: "SM_SC_SEND_CONFIRMATION", value: 71)
!108 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CHECK_CONFIRMATION", value: 72)
!109 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CHECK_CONFIRMATION", value: 73)
!110 = !DIEnumerator(name: "SM_SC_W4_CONFIRMATION", value: 74)
!111 = !DIEnumerator(name: "SM_SC_SEND_PAIRING_RANDOM", value: 75)
!112 = !DIEnumerator(name: "SM_SC_W4_PAIRING_RANDOM", value: 76)
!113 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_G2", value: 77)
!114 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_G2", value: 78)
!115 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_DHKEY", value: 79)
!116 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_SALT", value: 80)
!117 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_SALT", value: 81)
!118 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_MACKEY", value: 82)
!119 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_MACKEY", value: 83)
!120 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_LTK", value: 84)
!121 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_LTK", value: 85)
!122 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_FOR_DHKEY_CHECK", value: 86)
!123 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_FOR_DHKEY_CHECK", value: 87)
!124 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 88)
!125 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 89)
!126 = !DIEnumerator(name: "SM_SC_W4_USER_RESPONSE", value: 90)
!127 = !DIEnumerator(name: "SM_SC_SEND_DHKEY_CHECK_COMMAND", value: 91)
!128 = !DIEnumerator(name: "SM_SC_W4_DHKEY_CHECK_COMMAND", value: 92)
!129 = !DIEnumerator(name: "SM_SC_W4_LTK_REQUEST_SC", value: 93)
!130 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_ILK", value: 94)
!131 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_ILK", value: 95)
!132 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_BR_EDR_LINK_KEY", value: 96)
!133 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_BR_EDR_LINK_KEY", value: 97)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 436, size: 32, elements: !135)
!135 = !{!136, !137, !138, !139, !140}
!136 = !DIEnumerator(name: "IRK_LOOKUP_IDLE", value: 0)
!137 = !DIEnumerator(name: "IRK_LOOKUP_W4_READY", value: 1)
!138 = !DIEnumerator(name: "IRK_LOOKUP_STARTED", value: 2)
!139 = !DIEnumerator(name: "IRK_LOOKUP_SUCCEEDED", value: 3)
!140 = !DIEnumerator(name: "IRK_LOOKUP_FAILED", value: 4)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 445, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "AUTHORIZATION_UNKNOWN", value: 0)
!144 = !DIEnumerator(name: "AUTHORIZATION_PENDING", value: 1)
!145 = !DIEnumerator(name: "AUTHORIZATION_DECLINED", value: 2)
!146 = !DIEnumerator(name: "AUTHORIZATION_GRANTED", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 30, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192}
!149 = !DIEnumerator(name: "BLE_CMD_ADV_ENABLE", value: 1)
!150 = !DIEnumerator(name: "BLE_CMD_ADV_PARAM", value: 2)
!151 = !DIEnumerator(name: "BLE_CMD_ADV_DATA", value: 3)
!152 = !DIEnumerator(name: "BLE_CMD_RSP_DATA", value: 4)
!153 = !DIEnumerator(name: "BLE_CMD_DISCONNECT", value: 5)
!154 = !DIEnumerator(name: "BLE_CMD_REGIEST_THREAD", value: 6)
!155 = !DIEnumerator(name: "BLE_CMD_ATT_SEND_INIT", value: 7)
!156 = !DIEnumerator(name: "BLE_CMD_ATT_MTU_SIZE", value: 8)
!157 = !DIEnumerator(name: "BLE_CMD_ATT_VAILD_LEN", value: 9)
!158 = !DIEnumerator(name: "BLE_CMD_ATT_SEND_DATA", value: 10)
!159 = !DIEnumerator(name: "BLE_CMD_REQ_CONN_PARAM_UPDATE", value: 11)
!160 = !DIEnumerator(name: "BLE_CMD_SCAN_ENABLE", value: 12)
!161 = !DIEnumerator(name: "BLE_CMD_SCAN_PARAM", value: 13)
!162 = !DIEnumerator(name: "BLE_CMD_STACK_EXIT", value: 14)
!163 = !DIEnumerator(name: "BLE_CMD_CREATE_CONN", value: 15)
!164 = !DIEnumerator(name: "BLE_CMD_CREATE_CONN_CANCEL", value: 16)
!165 = !DIEnumerator(name: "BLE_CMD_ADV_PARAM_EXT", value: 17)
!166 = !DIEnumerator(name: "BLE_CMD_SEND_TEST_KEY_NUM", value: 18)
!167 = !DIEnumerator(name: "BLE_CMD_LATENCY_HOLD_CNT", value: 19)
!168 = !DIEnumerator(name: "BLE_CMD_SET_DATA_LENGTH", value: 20)
!169 = !DIEnumerator(name: "BLE_CMD_SET_HCI_CFG", value: 21)
!170 = !DIEnumerator(name: "BLE_CMD_SCAN_ENABLE2", value: 22)
!171 = !DIEnumerator(name: "BLE_CMD_ATT_SERVER_REQ_RESUME", value: 23)
!172 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SEND_INIT", value: 24)
!173 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SET_CONN_HANDLE", value: 25)
!174 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SEND_DATA", value: 26)
!175 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_MTU_SIZE", value: 27)
!176 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_VAILD_LEN", value: 28)
!177 = !DIEnumerator(name: "BLE_CMD_SM_REQ_RESUME", value: 29)
!178 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_PARAM", value: 64)
!179 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_DATA", value: 65)
!180 = !DIEnumerator(name: "BLE_CMD_EXT_RSP_DATA", value: 66)
!181 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_ENABLE", value: 67)
!182 = !DIEnumerator(name: "BLE_CMD_SET_PHY", value: 68)
!183 = !DIEnumerator(name: "BLE_CMD_EXT_SCAN_PARAM", value: 69)
!184 = !DIEnumerator(name: "BLE_CMD_EXT_SCAN_ENABLE", value: 70)
!185 = !DIEnumerator(name: "BLE_CMD_EXT_CREATE_CONN", value: 71)
!186 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_PARAM", value: 72)
!187 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_DATA", value: 73)
!188 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_ENABLE", value: 74)
!189 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_CREAT_SYNC", value: 75)
!190 = !DIEnumerator(name: "BLE_CMD_SEARCH_PROFILE", value: 128)
!191 = !DIEnumerator(name: "BLE_CMD_WRITE_CCC", value: 129)
!192 = !DIEnumerator(name: "BLE_CMD_ONNN_PARAM_UPDATA", value: 130)
!193 = !{!194, !195, !200, !208, !209, !339, !349}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !196, line: 43, baseType: !197)
!196 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !198, line: 202, baseType: !199)
!198 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!199 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !202, line: 100, baseType: !203)
!202 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !202, line: 55, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !202, line: 53, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !202, line: 54, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!208 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_hci_connection_t", file: !27, line: 605, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__le_hci_connection", file: !27, line: 571, size: 9792, elements: !212)
!212 = !{!213, !214, !223, !227, !229, !230, !232, !233, !234, !235, !236, !237, !269, !329, !333, !334, !335, !336, !337, !338}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !211, file: !27, line: 572, baseType: !201, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !211, file: !27, line: 574, baseType: !215, size: 48, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !216, line: 7, baseType: !217)
!216 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 48, elements: !221)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !219, line: 44, baseType: !220)
!219 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!220 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !{!222}
!222 = !DISubrange(count: 6)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !211, file: !27, line: 576, baseType: !224, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !216, line: 9, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !219, line: 46, baseType: !226)
!226 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !211, file: !27, line: 578, baseType: !228, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_type_t", file: !19, line: 1475, baseType: !18)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !211, file: !27, line: 581, baseType: !218, size: 8, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_parameter_update_state", scope: !211, file: !27, line: 584, baseType: !231, size: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_con_parameter_update_state_t", file: !27, line: 252, baseType: !26)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_param_update_identifier", scope: !211, file: !27, line: 585, baseType: !218, size: 8, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !211, file: !27, line: 586, baseType: !225, size: 16, offset: 208)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !211, file: !27, line: 587, baseType: !225, size: 16, offset: 224)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency", scope: !211, file: !27, line: 588, baseType: !225, size: 16, offset: 240)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout", scope: !211, file: !27, line: 589, baseType: !225, size: 16, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection", scope: !211, file: !27, line: 592, baseType: !238, size: 448, offset: 288)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_connection_t", file: !27, line: 475, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sm_connection", file: !27, line: 456, size: 448, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !249, !251, !252, !253, !254, !259, !261, !262, !266, !267, !268}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sm_handle", scope: !239, file: !27, line: 457, baseType: !224, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sm_role", scope: !239, file: !27, line: 458, baseType: !218, size: 8, offset: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sm_security_request_received", scope: !239, file: !27, line: 459, baseType: !218, size: 8, offset: 24)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sm_bonding_requested", scope: !239, file: !27, line: 460, baseType: !218, size: 8, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_addr_type", scope: !239, file: !27, line: 461, baseType: !218, size: 8, offset: 40)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_address", scope: !239, file: !27, line: 462, baseType: !215, size: 48, offset: 48)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sm_engine_state", scope: !239, file: !27, line: 463, baseType: !248, size: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_manager_state_t", file: !27, line: 433, baseType: !34)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sm_irk_lookup_state", scope: !239, file: !27, line: 464, baseType: !250, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "irk_lookup_state_t", file: !27, line: 442, baseType: !134)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_encrypted", scope: !239, file: !27, line: 465, baseType: !218, size: 8, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authenticated", scope: !239, file: !27, line: 466, baseType: !218, size: 8, offset: 168)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sm_actual_encryption_key_size", scope: !239, file: !27, line: 467, baseType: !218, size: 8, offset: 176)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_preq", scope: !239, file: !27, line: 468, baseType: !255, size: 56, offset: 184)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_pairing_packet_t", file: !27, line: 452, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 56, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 7)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authorization_state", scope: !239, file: !27, line: 469, baseType: !260, size: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "authorization_state_t", file: !27, line: 450, baseType: !141)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ediv", scope: !239, file: !27, line: 470, baseType: !225, size: 16, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_rand", scope: !239, file: !27, line: 471, baseType: !263, size: 64, offset: 304)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 8)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sm_disconn_reason", scope: !239, file: !27, line: 472, baseType: !218, size: 8, offset: 368)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sm_le_db_index", scope: !239, file: !27, line: 473, baseType: !208, size: 32, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sm_timeout_id", scope: !239, file: !27, line: 474, baseType: !208, size: 32, offset: 416)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "att_server", scope: !211, file: !27, line: 595, baseType: !270, size: 4640, offset: 736)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_t", file: !6, line: 187, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 164, size: 4640, elements: !272)
!272 = !{!273, !275, !276, !277, !278, !279, !280, !300, !313, !314, !318, !319, !320, !321, !322, !323}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !271, file: !6, line: 165, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_state_t", file: !6, line: 162, baseType: !5)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr_type", scope: !271, file: !6, line: 167, baseType: !218, size: 8, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address", scope: !271, file: !6, line: 168, baseType: !215, size: 48, offset: 40)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ir_le_device_db_index", scope: !271, file: !6, line: 170, baseType: !208, size: 32, offset: 96)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ir_lookup_active", scope: !271, file: !6, line: 171, baseType: !208, size: 32, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_handle", scope: !271, file: !6, line: 173, baseType: !208, size: 32, offset: 160)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_timer", scope: !271, file: !6, line: 174, baseType: !281, size: 160, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !282, line: 19, baseType: !283)
!282 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !282, line: 7, size: 160, elements: !284)
!284 = !{!285, !286, !289, !290, !291, !292, !293, !294, !299}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !283, file: !282, line: 8, baseType: !203, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !283, file: !282, line: 10, baseType: !287, size: 32, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !219, line: 48, baseType: !288)
!288 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !283, file: !282, line: 11, baseType: !287, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !283, file: !282, line: 12, baseType: !287, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !283, file: !282, line: 13, baseType: !287, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !283, file: !282, line: 14, baseType: !287, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !283, file: !282, line: 15, baseType: !287, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !283, file: !282, line: 17, baseType: !295, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 32)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !283, file: !282, line: 18, baseType: !194, size: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !271, file: !6, line: 176, baseType: !301, size: 80, offset: 352)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_connection_t", file: !302, line: 41, baseType: !303)
!302 = !DIFile(filename: "../btstack/Protocol/include/ble/att_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_connection", file: !302, line: 34, size: 80, elements: !304)
!304 = !{!305, !308, !309, !310, !311, !312}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !303, file: !302, line: 35, baseType: !306, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !307, line: 60, baseType: !225)
!307 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !303, file: !302, line: 36, baseType: !225, size: 16, offset: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !303, file: !302, line: 37, baseType: !225, size: 16, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_key_size", scope: !303, file: !302, line: 38, baseType: !218, size: 8, offset: 48)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !303, file: !302, line: 39, baseType: !218, size: 8, offset: 56)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !303, file: !302, line: 40, baseType: !218, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "request_size", scope: !271, file: !6, line: 178, baseType: !225, size: 16, offset: 432)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffer", scope: !271, file: !6, line: 179, baseType: !315, size: 4136, offset: 448)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 4136, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 517)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flow_hold_flag", scope: !271, file: !6, line: 181, baseType: !218, size: 1, offset: 4584, flags: DIFlagBitField, extraData: i64 4584)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_request_flag", scope: !271, file: !6, line: 182, baseType: !218, size: 1, offset: 4585, flags: DIFlagBitField, extraData: i64 4584)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "check_remote_tag", scope: !271, file: !6, line: 183, baseType: !218, size: 3, offset: 4586, flags: DIFlagBitField, extraData: i64 4584)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "request_busy", scope: !271, file: !6, line: 184, baseType: !218, size: 1, offset: 4589, flags: DIFlagBitField, extraData: i64 4584)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reserverd", scope: !271, file: !6, line: 185, baseType: !218, size: 2, offset: 4590, flags: DIFlagBitField, extraData: i64 4584)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "result_callback", scope: !271, file: !6, line: 186, baseType: !324, size: 32, offset: 4608)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 32)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327, !328}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !219, line: 46, baseType: !226)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !219, line: 44, baseType: !220)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_buffer", scope: !211, file: !27, line: 597, baseType: !330, size: 4232, offset: 5376)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 4232, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 529)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_pos", scope: !211, file: !27, line: 598, baseType: !225, size: 16, offset: 9616)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_length", scope: !211, file: !27, line: 599, baseType: !225, size: 16, offset: 9632)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "num_acl_packets_sent", scope: !211, file: !27, line: 600, baseType: !218, size: 8, offset: 9648)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "own_id_address", scope: !211, file: !27, line: 602, baseType: !215, size: 48, offset: 9656)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "own_address", scope: !211, file: !27, line: 603, baseType: !215, size: 48, offset: 9704)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "own_address_type", scope: !211, file: !27, line: 604, baseType: !228, size: 32, offset: 9760)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_context_callback_registration_t", file: !19, line: 71, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 67, size: 96, elements: !342)
!342 = !{!343, !344, !348}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !341, file: !19, line: 68, baseType: !200, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !341, file: !19, line: 69, baseType: !345, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 32)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !194}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !341, file: !19, line: 70, baseType: !194, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 32)
!350 = !{!0, !351}
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "search_ios_ancs_server", scope: !2, file: !3, line: 362, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 184, elements: !355)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!355 = !{!356}
!356 = !DISubrange(count: 23)
!357 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!358 = !{i32 2, !"Dwarf Version", i32 4}
!359 = !{i32 2, !"Debug Info Version", i32 3}
!360 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!361 = distinct !DISubprogram(name: "att_server_set_exchange_mtu", scope: !3, file: !3, line: 344, type: !362, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !327}
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "con_handle", arg: 1, scope: !361, file: !3, line: 344, type: !327)
!366 = !DILocalVariable(name: "att_server", scope: !361, file: !3, line: 346, type: !349)
!367 = !DILocation(line: 344, column: 38, scope: !361)
!368 = !DILocation(line: 348, column: 10, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !3, line: 348, column: 9)
!370 = !DILocation(line: 348, column: 9, scope: !361)
!371 = !DILocation(line: 352, column: 18, scope: !361)
!372 = !DILocation(line: 346, column: 19, scope: !361)
!373 = !DILocation(line: 353, column: 10, scope: !374)
!374 = distinct !DILexicalBlock(scope: !361, file: !3, line: 353, column: 9)
!375 = !DILocation(line: 353, column: 9, scope: !361)
!376 = !DILocation(line: 354, column: 36, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !3, line: 353, column: 22)
!378 = !DILocation(line: 354, column: 9, scope: !377)
!379 = !DILocation(line: 355, column: 9, scope: !377)
!380 = !DILocation(line: 357, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !361, file: !3, line: 357, column: 5)
!382 = !{!383, !383, i64 0}
!383 = !{!"omnipotent char", !384, i64 0}
!384 = !{!"Simple C/C++ TBAA"}
!385 = !DILocation(line: 357, column: 5, scope: !361)
!386 = !DILocation(line: 357, column: 5, scope: !387)
!387 = !DILexicalBlockFile(scope: !381, file: !3, discriminator: 1)
!388 = !DILocation(line: 358, column: 17, scope: !361)
!389 = !DILocation(line: 358, column: 34, scope: !361)
!390 = !DILocation(line: 359, column: 5, scope: !361)
!391 = !DILocation(line: 360, column: 1, scope: !361)
!392 = !DILocation(line: 360, column: 1, scope: !393)
!393 = !DILexicalBlockFile(scope: !361, file: !3, discriminator: 2)
!394 = distinct !DISubprogram(name: "att_server_for_handle", scope: !3, file: !3, line: 82, type: !395, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{!349, !224}
!397 = !{!398, !399}
!398 = !DILocalVariable(name: "con_handle", arg: 1, scope: !394, file: !3, line: 82, type: !224)
!399 = !DILocalVariable(name: "hci_connection", scope: !394, file: !3, line: 88, type: !209)
!400 = !DILocation(line: 82, column: 61, scope: !394)
!401 = !DILocation(line: 84, column: 10, scope: !402)
!402 = distinct !DILexicalBlock(scope: !394, file: !3, line: 84, column: 9)
!403 = !{!404, !404, i64 0}
!404 = !{!"int", !383, i64 0}
!405 = !DILocation(line: 84, column: 9, scope: !394)
!406 = !DILocation(line: 88, column: 43, scope: !394)
!407 = !DILocation(line: 88, column: 26, scope: !394)
!408 = !DILocation(line: 89, column: 10, scope: !409)
!409 = distinct !DILexicalBlock(scope: !394, file: !3, line: 89, column: 9)
!410 = !DILocation(line: 92, column: 29, scope: !394)
!411 = !DILocation(line: 89, column: 9, scope: !394)
!412 = !DILocation(line: 93, column: 1, scope: !413)
!413 = !DILexicalBlockFile(scope: !394, file: !3, discriminator: 1)
!414 = distinct !DISubprogram(name: "att_server_init", scope: !3, file: !3, line: 650, type: !415, isLocal: false, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !429)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !419, !425}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_read_callback_t", file: !420, line: 116, baseType: !421)
!420 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/att.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!422 = !DISubroutineType(types: !423)
!423 = !{!225, !225, !225, !225, !424, !225}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_write_callback_t", file: !420, line: 127, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 32)
!427 = !DISubroutineType(types: !428)
!428 = !{!208, !225, !225, !225, !225, !424, !225}
!429 = !{!430, !431, !432}
!430 = !DILocalVariable(name: "db", arg: 1, scope: !414, file: !3, line: 650, type: !417)
!431 = !DILocalVariable(name: "read_callback", arg: 2, scope: !414, file: !3, line: 650, type: !419)
!432 = !DILocalVariable(name: "write_callback", arg: 3, scope: !414, file: !3, line: 650, type: !425)
!433 = !DILocation(line: 650, column: 37, scope: !414)
!434 = !DILocation(line: 650, column: 61, scope: !414)
!435 = !DILocation(line: 650, column: 97, scope: !414)
!436 = !DILocation(line: 652, column: 10, scope: !437)
!437 = distinct !DILexicalBlock(scope: !414, file: !3, line: 652, column: 9)
!438 = !DILocation(line: 652, column: 9, scope: !414)
!439 = !DILocation(line: 658, column: 54, scope: !414)
!440 = !{!441, !442, i64 36}
!441 = !{!"", !442, i64 0, !442, i64 4, !383, i64 8, !383, i64 8, !383, i64 8, !383, i64 8, !442, i64 12, !442, i64 16, !442, i64 20, !383, i64 24, !443, i64 26, !442, i64 28, !444, i64 32, !444, i64 40, !442, i64 48, !442, i64 52, !383, i64 56, !383, i64 56, !383, i64 56}
!442 = !{!"any pointer", !383, i64 0}
!443 = !{!"short", !383, i64 0}
!444 = !{!"", !445, i64 0, !442, i64 4}
!445 = !{!"btstack_linked_item", !442, i64 0}
!446 = !DILocation(line: 659, column: 5, scope: !414)
!447 = !DILocation(line: 661, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !414, file: !3, line: 661, column: 9)
!449 = !DILocation(line: 661, column: 9, scope: !414)
!450 = !DILocation(line: 663, column: 57, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !3, line: 661, column: 38)
!452 = !{!441, !442, i64 44}
!453 = !DILocation(line: 664, column: 9, scope: !451)
!454 = !DILocation(line: 665, column: 5, scope: !451)
!455 = !DILocation(line: 668, column: 5, scope: !414)
!456 = !DILocation(line: 669, column: 5, scope: !457)
!457 = distinct !DILexicalBlock(scope: !414, file: !3, line: 669, column: 5)
!458 = !DILocation(line: 669, column: 5, scope: !414)
!459 = !DILocation(line: 669, column: 5, scope: !460)
!460 = !DILexicalBlockFile(scope: !457, file: !3, discriminator: 1)
!461 = !DILocation(line: 670, column: 5, scope: !414)
!462 = !DILocation(line: 671, column: 5, scope: !414)
!463 = !DILocation(line: 672, column: 5, scope: !414)
!464 = !DILocation(line: 674, column: 1, scope: !414)
!465 = !DILocation(line: 674, column: 1, scope: !466)
!466 = !DILexicalBlockFile(scope: !414, file: !3, discriminator: 1)
!467 = distinct !DISubprogram(name: "att_event_packet_handler", scope: !3, file: !3, line: 175, type: !468, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !218, !225, !424, !225}
!470 = !{!471, !472, !473, !474, !475, !476}
!471 = !DILocalVariable(name: "packet_type", arg: 1, scope: !467, file: !3, line: 175, type: !218)
!472 = !DILocalVariable(name: "channel", arg: 2, scope: !467, file: !3, line: 175, type: !225)
!473 = !DILocalVariable(name: "packet", arg: 3, scope: !467, file: !3, line: 175, type: !424)
!474 = !DILocalVariable(name: "size", arg: 4, scope: !467, file: !3, line: 175, type: !225)
!475 = !DILocalVariable(name: "att_server", scope: !467, file: !3, line: 185, type: !349)
!476 = !DILocalVariable(name: "con_handle", scope: !467, file: !3, line: 186, type: !224)
!477 = !DILocation(line: 175, column: 46, scope: !467)
!478 = !DILocation(line: 175, column: 68, scope: !467)
!479 = !DILocation(line: 175, column: 86, scope: !467)
!480 = !DILocation(line: 175, column: 103, scope: !467)
!481 = !DILocation(line: 181, column: 10, scope: !482)
!482 = distinct !DILexicalBlock(scope: !467, file: !3, line: 181, column: 9)
!483 = !DILocation(line: 188, column: 5, scope: !467)
!484 = !DILocation(line: 181, column: 9, scope: !467)
!485 = !DILocation(line: 191, column: 17, scope: !486)
!486 = distinct !DILexicalBlock(scope: !467, file: !3, line: 188, column: 26)
!487 = !DILocation(line: 191, column: 9, scope: !486)
!488 = !DILocation(line: 194, column: 21, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !3, line: 191, column: 52)
!490 = !DILocation(line: 194, column: 13, scope: !489)
!491 = !DILocation(line: 196, column: 30, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !3, line: 194, column: 32)
!493 = !DILocation(line: 186, column: 22, scope: !467)
!494 = !DILocation(line: 197, column: 30, scope: !492)
!495 = !DILocation(line: 185, column: 19, scope: !467)
!496 = !DILocation(line: 198, column: 22, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !3, line: 198, column: 21)
!498 = !DILocation(line: 198, column: 21, scope: !492)
!499 = !DILocation(line: 202, column: 46, scope: !492)
!500 = !DILocation(line: 202, column: 29, scope: !492)
!501 = !DILocation(line: 202, column: 44, scope: !492)
!502 = !{!503, !383, i64 4}
!503 = !{!"", !383, i64 0, !383, i64 4, !383, i64 5, !404, i64 12, !404, i64 16, !404, i64 20, !504, i64 24, !505, i64 44, !443, i64 54, !383, i64 56, !383, i64 573, !383, i64 573, !383, i64 573, !383, i64 573, !383, i64 573, !442, i64 576}
!504 = !{!"btstack_timer_source", !445, i64 0, !404, i64 4, !404, i64 8, !404, i64 10, !404, i64 10, !404, i64 10, !404, i64 10, !442, i64 12, !442, i64 16}
!505 = !{!"att_connection", !443, i64 0, !443, i64 2, !443, i64 4, !383, i64 6, !383, i64 7, !383, i64 8}
!506 = !DILocation(line: 203, column: 34, scope: !492)
!507 = !DILocation(line: 203, column: 45, scope: !492)
!508 = !DILocation(line: 203, column: 17, scope: !492)
!509 = !DILocation(line: 204, column: 40, scope: !492)
!510 = !DILocation(line: 204, column: 51, scope: !492)
!511 = !{!503, !443, i64 44}
!512 = !DILocation(line: 206, column: 29, scope: !492)
!513 = !DILocation(line: 206, column: 35, scope: !492)
!514 = !{!503, !383, i64 0}
!515 = !DILocation(line: 207, column: 40, scope: !492)
!516 = !DILocation(line: 207, column: 44, scope: !492)
!517 = !{!503, !443, i64 46}
!518 = !DILocation(line: 208, column: 50, scope: !492)
!519 = !DILocation(line: 208, column: 40, scope: !492)
!520 = !DILocation(line: 209, column: 21, scope: !492)
!521 = !DILocation(line: 208, column: 48, scope: !492)
!522 = !{!503, !443, i64 48}
!523 = !DILocation(line: 212, column: 40, scope: !492)
!524 = !DILocation(line: 212, column: 60, scope: !492)
!525 = !{!503, !383, i64 50}
!526 = !DILocation(line: 213, column: 40, scope: !492)
!527 = !DILocation(line: 213, column: 54, scope: !492)
!528 = !{!503, !383, i64 51}
!529 = !DILocation(line: 214, column: 40, scope: !492)
!530 = !DILocation(line: 214, column: 51, scope: !492)
!531 = !{!503, !383, i64 52}
!532 = !DILocation(line: 215, column: 29, scope: !492)
!533 = !DILocation(line: 215, column: 51, scope: !492)
!534 = !{!503, !404, i64 12}
!535 = !DILocation(line: 216, column: 29, scope: !492)
!536 = !DILocation(line: 216, column: 44, scope: !492)
!537 = !DILocation(line: 217, column: 17, scope: !492)
!538 = !DILocation(line: 227, column: 26, scope: !489)
!539 = !DILocation(line: 228, column: 26, scope: !489)
!540 = !DILocation(line: 229, column: 18, scope: !541)
!541 = distinct !DILexicalBlock(scope: !489, file: !3, line: 229, column: 17)
!542 = !DILocation(line: 229, column: 17, scope: !489)
!543 = !DILocation(line: 232, column: 58, scope: !489)
!544 = !DILocation(line: 232, column: 36, scope: !489)
!545 = !DILocation(line: 232, column: 56, scope: !489)
!546 = !DILocation(line: 233, column: 52, scope: !489)
!547 = !DILocation(line: 233, column: 36, scope: !489)
!548 = !DILocation(line: 233, column: 50, scope: !489)
!549 = !DILocation(line: 234, column: 13, scope: !489)
!550 = !DILocation(line: 238, column: 13, scope: !489)
!551 = !DILocation(line: 239, column: 26, scope: !489)
!552 = !DILocation(line: 240, column: 26, scope: !489)
!553 = !DILocation(line: 241, column: 18, scope: !554)
!554 = distinct !DILexicalBlock(scope: !489, file: !3, line: 241, column: 17)
!555 = !DILocation(line: 241, column: 17, scope: !489)
!556 = !DILocation(line: 245, column: 36, scope: !489)
!557 = !DILocation(line: 245, column: 47, scope: !489)
!558 = !DILocation(line: 246, column: 25, scope: !489)
!559 = !DILocation(line: 246, column: 49, scope: !489)
!560 = !{!503, !404, i64 20}
!561 = !DILocation(line: 247, column: 25, scope: !489)
!562 = !DILocation(line: 247, column: 31, scope: !489)
!563 = !DILocation(line: 248, column: 13, scope: !489)
!564 = !DILocation(line: 251, column: 26, scope: !489)
!565 = !DILocation(line: 252, column: 26, scope: !489)
!566 = !DILocation(line: 253, column: 18, scope: !567)
!567 = distinct !DILexicalBlock(scope: !489, file: !3, line: 253, column: 17)
!568 = !DILocation(line: 253, column: 17, scope: !489)
!569 = !DILocation(line: 256, column: 13, scope: !570)
!570 = distinct !DILexicalBlock(scope: !489, file: !3, line: 256, column: 13)
!571 = !DILocation(line: 256, column: 13, scope: !489)
!572 = !DILocation(line: 256, column: 13, scope: !573)
!573 = !DILexicalBlockFile(scope: !570, file: !3, discriminator: 1)
!574 = !DILocation(line: 257, column: 25, scope: !489)
!575 = !DILocation(line: 257, column: 42, scope: !489)
!576 = !{!503, !404, i64 16}
!577 = !DILocation(line: 258, column: 13, scope: !489)
!578 = !DILocation(line: 260, column: 26, scope: !489)
!579 = !DILocation(line: 261, column: 26, scope: !489)
!580 = !DILocation(line: 262, column: 18, scope: !581)
!581 = distinct !DILexicalBlock(scope: !489, file: !3, line: 262, column: 17)
!582 = !DILocation(line: 262, column: 17, scope: !489)
!583 = !DILocation(line: 265, column: 25, scope: !489)
!584 = !DILocation(line: 265, column: 42, scope: !489)
!585 = !DILocation(line: 266, column: 49, scope: !489)
!586 = !DILocation(line: 266, column: 25, scope: !489)
!587 = !DILocation(line: 266, column: 47, scope: !489)
!588 = !DILocation(line: 267, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !489, file: !3, line: 267, column: 13)
!590 = !DILocation(line: 267, column: 13, scope: !489)
!591 = !DILocation(line: 267, column: 13, scope: !592)
!592 = !DILexicalBlockFile(scope: !589, file: !3, discriminator: 1)
!593 = !DILocation(line: 268, column: 13, scope: !489)
!594 = !DILocation(line: 269, column: 13, scope: !489)
!595 = !DILocation(line: 271, column: 26, scope: !489)
!596 = !DILocation(line: 272, column: 26, scope: !489)
!597 = !DILocation(line: 273, column: 18, scope: !598)
!598 = distinct !DILexicalBlock(scope: !489, file: !3, line: 273, column: 17)
!599 = !DILocation(line: 273, column: 17, scope: !489)
!600 = !DILocation(line: 276, column: 13, scope: !601)
!601 = distinct !DILexicalBlock(scope: !489, file: !3, line: 276, column: 13)
!602 = !DILocation(line: 276, column: 13, scope: !489)
!603 = !DILocation(line: 276, column: 13, scope: !604)
!604 = !DILexicalBlockFile(scope: !601, file: !3, discriminator: 1)
!605 = !DILocation(line: 277, column: 25, scope: !489)
!606 = !DILocation(line: 277, column: 42, scope: !489)
!607 = !DILocation(line: 278, column: 25, scope: !489)
!608 = !DILocation(line: 278, column: 47, scope: !489)
!609 = !DILocation(line: 279, column: 13, scope: !489)
!610 = !DILocation(line: 280, column: 13, scope: !489)
!611 = !DILocation(line: 282, column: 26, scope: !612)
!612 = distinct !DILexicalBlock(scope: !489, file: !3, line: 281, column: 45)
!613 = !DILocation(line: 283, column: 26, scope: !612)
!614 = !DILocation(line: 284, column: 18, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !3, line: 284, column: 17)
!616 = !DILocation(line: 284, column: 17, scope: !612)
!617 = !DILocation(line: 287, column: 49, scope: !612)
!618 = !DILocation(line: 287, column: 36, scope: !612)
!619 = !DILocation(line: 287, column: 47, scope: !612)
!620 = !DILocation(line: 288, column: 13, scope: !612)
!621 = !DILocation(line: 289, column: 13, scope: !612)
!622 = !DILocation(line: 298, column: 1, scope: !623)
!623 = !DILexicalBlockFile(scope: !467, file: !3, discriminator: 1)
!624 = distinct !DISubprogram(name: "att_packet_handler", scope: !3, file: !3, line: 562, type: !468, isLocal: true, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !625)
!625 = !{!626, !627, !628, !629, !630, !631}
!626 = !DILocalVariable(name: "packet_type", arg: 1, scope: !624, file: !3, line: 562, type: !218)
!627 = !DILocalVariable(name: "handle", arg: 2, scope: !624, file: !3, line: 562, type: !225)
!628 = !DILocalVariable(name: "packet", arg: 3, scope: !624, file: !3, line: 562, type: !424)
!629 = !DILocalVariable(name: "size", arg: 4, scope: !624, file: !3, line: 562, type: !225)
!630 = !DILocalVariable(name: "att_server", scope: !624, file: !3, line: 565, type: !349)
!631 = !DILocalVariable(name: "att_handle", scope: !632, file: !3, line: 587, type: !225)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 585, column: 96)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 585, column: 13)
!634 = distinct !DILexicalBlock(scope: !624, file: !3, line: 567, column: 26)
!635 = !DILocation(line: 562, column: 40, scope: !624)
!636 = !DILocation(line: 562, column: 62, scope: !624)
!637 = !DILocation(line: 562, column: 79, scope: !624)
!638 = !DILocation(line: 562, column: 96, scope: !624)
!639 = !DILocation(line: 567, column: 5, scope: !624)
!640 = !DILocation(line: 570, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !634, file: !3, line: 570, column: 13)
!642 = !DILocation(line: 570, column: 23, scope: !641)
!643 = !DILocation(line: 501, column: 10, scope: !644, inlinedAt: !667)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 501, column: 9)
!645 = distinct !DISubprogram(name: "att_server_handle_can_send_now", scope: !3, file: !3, line: 499, type: !646, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{null}
!648 = !{!649, !658, !660, !661, !664, !666}
!649 = !DILocalVariable(name: "it", scope: !645, file: !3, line: 507, type: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_iterator_t", file: !202, line: 102, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_iterator_t", file: !202, line: 65, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 61, size: 96, elements: !653)
!653 = !{!654, !655, !657}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "advance_on_next", scope: !652, file: !202, line: 62, baseType: !208, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !652, file: !202, line: 63, baseType: !656, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !652, file: !202, line: 64, baseType: !656, size: 32, offset: 64)
!658 = !DILocalVariable(name: "connection", scope: !659, file: !3, line: 510, type: !209)
!659 = distinct !DILexicalBlock(scope: !645, file: !3, line: 509, column: 48)
!660 = !DILocalVariable(name: "att_server", scope: !659, file: !3, line: 511, type: !349)
!661 = !DILocalVariable(name: "sent", scope: !662, file: !3, line: 519, type: !208)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 516, column: 77)
!663 = distinct !DILexicalBlock(scope: !659, file: !3, line: 516, column: 13)
!664 = !DILocalVariable(name: "client", scope: !665, file: !3, line: 541, type: !339)
!665 = distinct !DILexicalBlock(scope: !645, file: !3, line: 539, column: 62)
!666 = !DILocalVariable(name: "con_handle", scope: !665, file: !3, line: 542, type: !224)
!667 = distinct !DILocation(line: 573, column: 9, scope: !634)
!668 = !DILocation(line: 570, column: 13, scope: !634)
!669 = !DILocation(line: 507, column: 5, scope: !645, inlinedAt: !667)
!670 = !DILocation(line: 507, column: 28, scope: !645, inlinedAt: !667)
!671 = !DILocation(line: 508, column: 5, scope: !645, inlinedAt: !667)
!672 = !DILocation(line: 509, column: 12, scope: !673, inlinedAt: !667)
!673 = !DILexicalBlockFile(scope: !645, file: !3, discriminator: 1)
!674 = !DILocation(line: 509, column: 5, scope: !673, inlinedAt: !667)
!675 = !DILocation(line: 539, column: 13, scope: !673, inlinedAt: !667)
!676 = !DILocation(line: 510, column: 67, scope: !659, inlinedAt: !667)
!677 = !DILocation(line: 511, column: 49, scope: !659, inlinedAt: !667)
!678 = !DILocation(line: 511, column: 23, scope: !659, inlinedAt: !667)
!679 = !DILocation(line: 512, column: 25, scope: !680, inlinedAt: !667)
!680 = distinct !DILexicalBlock(scope: !659, file: !3, line: 512, column: 13)
!681 = !DILocation(line: 512, column: 13, scope: !680, inlinedAt: !667)
!682 = !DILocation(line: 512, column: 13, scope: !659, inlinedAt: !667)
!683 = distinct !{!683, !684, !685}
!684 = !DILocation(line: 509, column: 5, scope: !645)
!685 = !DILocation(line: 537, column: 5, scope: !645)
!686 = !DILocation(line: 516, column: 25, scope: !663, inlinedAt: !667)
!687 = !DILocation(line: 516, column: 31, scope: !663, inlinedAt: !667)
!688 = !DILocation(line: 516, column: 13, scope: !659, inlinedAt: !667)
!689 = !DILocation(line: 518, column: 13, scope: !690, inlinedAt: !667)
!690 = distinct !DILexicalBlock(scope: !662, file: !3, line: 518, column: 13)
!691 = !DILocation(line: 518, column: 13, scope: !662, inlinedAt: !667)
!692 = !DILocation(line: 518, column: 13, scope: !693, inlinedAt: !667)
!693 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 1)
!694 = !DILocalVariable(name: "att_server", arg: 1, scope: !695, file: !3, line: 388, type: !349)
!695 = distinct !DISubprogram(name: "att_server_process_validated_request", scope: !3, file: !3, line: 388, type: !696, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!208, !349}
!698 = !{!694, !699, !700}
!699 = !DILocalVariable(name: "att_response_buffer", scope: !695, file: !3, line: 392, type: !424)
!700 = !DILocalVariable(name: "att_response_size", scope: !695, file: !3, line: 393, type: !225)
!701 = !DILocation(line: 388, column: 63, scope: !695, inlinedAt: !702)
!702 = distinct !DILocation(line: 519, column: 24, scope: !662, inlinedAt: !667)
!703 = !DILocation(line: 391, column: 5, scope: !695, inlinedAt: !702)
!704 = !DILocation(line: 392, column: 36, scope: !695, inlinedAt: !702)
!705 = !DILocation(line: 392, column: 14, scope: !695, inlinedAt: !702)
!706 = !DILocation(line: 393, column: 69, scope: !695, inlinedAt: !702)
!707 = !DILocation(line: 393, column: 81, scope: !695, inlinedAt: !702)
!708 = !DILocation(line: 393, column: 121, scope: !695, inlinedAt: !702)
!709 = !{!503, !443, i64 54}
!710 = !DILocation(line: 393, column: 37, scope: !695, inlinedAt: !702)
!711 = !DILocation(line: 393, column: 15, scope: !695, inlinedAt: !702)
!712 = !DILocation(line: 396, column: 32, scope: !713, inlinedAt: !702)
!713 = distinct !DILexicalBlock(scope: !695, file: !3, line: 396, column: 9)
!714 = !DILocation(line: 397, column: 9, scope: !713, inlinedAt: !702)
!715 = !DILocation(line: 397, column: 13, scope: !716, inlinedAt: !702)
!716 = !DILexicalBlockFile(scope: !713, file: !3, discriminator: 1)
!717 = !DILocation(line: 397, column: 36, scope: !716, inlinedAt: !702)
!718 = !DILocation(line: 398, column: 9, scope: !713, inlinedAt: !702)
!719 = !DILocation(line: 398, column: 13, scope: !716, inlinedAt: !702)
!720 = !DILocation(line: 398, column: 36, scope: !716, inlinedAt: !702)
!721 = !DILocation(line: 399, column: 9, scope: !713, inlinedAt: !702)
!722 = !DILocation(line: 399, column: 36, scope: !716, inlinedAt: !702)
!723 = !DILocation(line: 399, column: 12, scope: !716, inlinedAt: !702)
!724 = !DILocation(line: 396, column: 9, scope: !725, inlinedAt: !702)
!725 = !DILexicalBlockFile(scope: !695, file: !3, discriminator: 1)
!726 = !DILocation(line: 401, column: 63, scope: !727, inlinedAt: !702)
!727 = distinct !DILexicalBlock(scope: !713, file: !3, line: 399, column: 52)
!728 = !DILocation(line: 401, column: 17, scope: !727, inlinedAt: !702)
!729 = !DILocation(line: 401, column: 9, scope: !727, inlinedAt: !702)
!730 = !DILocation(line: 403, column: 13, scope: !731, inlinedAt: !702)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 401, column: 76)
!732 = !DILocation(line: 405, column: 59, scope: !731, inlinedAt: !702)
!733 = !DILocation(line: 405, column: 13, scope: !731, inlinedAt: !702)
!734 = !DILocation(line: 406, column: 13, scope: !735, inlinedAt: !702)
!735 = distinct !DILexicalBlock(scope: !731, file: !3, line: 406, column: 13)
!736 = !DILocation(line: 406, column: 13, scope: !731, inlinedAt: !702)
!737 = !DILocation(line: 406, column: 13, scope: !738, inlinedAt: !702)
!738 = !DILexicalBlockFile(scope: !735, file: !3, discriminator: 1)
!739 = !DILocation(line: 409, column: 13, scope: !740, inlinedAt: !702)
!740 = distinct !DILexicalBlock(scope: !731, file: !3, line: 409, column: 13)
!741 = !DILocation(line: 409, column: 13, scope: !731, inlinedAt: !702)
!742 = !DILocation(line: 409, column: 13, scope: !743, inlinedAt: !702)
!743 = !DILexicalBlockFile(scope: !740, file: !3, discriminator: 1)
!744 = !DILocation(line: 410, column: 13, scope: !731, inlinedAt: !702)
!745 = !DILocation(line: 411, column: 13, scope: !731, inlinedAt: !702)
!746 = !DILocation(line: 417, column: 23, scope: !695, inlinedAt: !702)
!747 = !DILocation(line: 418, column: 9, scope: !695, inlinedAt: !702)
!748 = !DILocation(line: 418, column: 27, scope: !749, inlinedAt: !702)
!749 = distinct !DILexicalBlock(scope: !695, file: !3, line: 418, column: 9)
!750 = !DILocation(line: 419, column: 9, scope: !751, inlinedAt: !702)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 419, column: 9)
!752 = distinct !DILexicalBlock(scope: !749, file: !3, line: 418, column: 33)
!753 = !DILocation(line: 419, column: 9, scope: !752, inlinedAt: !702)
!754 = !DILocation(line: 419, column: 9, scope: !755, inlinedAt: !702)
!755 = !DILexicalBlockFile(scope: !751, file: !3, discriminator: 1)
!756 = !DILocation(line: 420, column: 9, scope: !752, inlinedAt: !702)
!757 = !DILocation(line: 423, column: 13, scope: !758, inlinedAt: !702)
!758 = distinct !DILexicalBlock(scope: !752, file: !3, line: 423, column: 13)
!759 = !DILocation(line: 423, column: 43, scope: !758, inlinedAt: !702)
!760 = !DILocation(line: 423, column: 13, scope: !752, inlinedAt: !702)
!761 = !DILocation(line: 424, column: 38, scope: !762, inlinedAt: !702)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 423, column: 73)
!763 = !DILocation(line: 425, column: 13, scope: !764, inlinedAt: !702)
!764 = distinct !DILexicalBlock(scope: !762, file: !3, line: 425, column: 13)
!765 = !DILocation(line: 425, column: 13, scope: !762, inlinedAt: !702)
!766 = !DILocation(line: 425, column: 13, scope: !767, inlinedAt: !702)
!767 = !DILexicalBlockFile(scope: !764, file: !3, discriminator: 1)
!768 = !DILocation(line: 426, column: 55, scope: !762, inlinedAt: !702)
!769 = !DILocation(line: 426, column: 90, scope: !762, inlinedAt: !702)
!770 = !DILocation(line: 426, column: 13, scope: !762, inlinedAt: !702)
!771 = !DILocation(line: 427, column: 9, scope: !762, inlinedAt: !702)
!772 = !DILocation(line: 431, column: 63, scope: !695, inlinedAt: !702)
!773 = !DILocation(line: 431, column: 5, scope: !695, inlinedAt: !702)
!774 = !DILocation(line: 433, column: 5, scope: !775, inlinedAt: !702)
!775 = distinct !DILexicalBlock(scope: !695, file: !3, line: 433, column: 5)
!776 = !DILocation(line: 433, column: 5, scope: !695, inlinedAt: !702)
!777 = !DILocation(line: 433, column: 5, scope: !778, inlinedAt: !702)
!778 = !DILexicalBlockFile(scope: !775, file: !3, discriminator: 1)
!779 = !DILocation(line: 435, column: 9, scope: !780, inlinedAt: !702)
!780 = distinct !DILexicalBlock(scope: !695, file: !3, line: 435, column: 9)
!781 = !DILocation(line: 435, column: 32, scope: !780, inlinedAt: !702)
!782 = !DILocation(line: 435, column: 9, scope: !695, inlinedAt: !702)
!783 = !DILocation(line: 437, column: 51, scope: !784, inlinedAt: !702)
!784 = distinct !DILexicalBlock(scope: !780, file: !3, line: 435, column: 62)
!785 = !DILocation(line: 437, column: 86, scope: !784, inlinedAt: !702)
!786 = !DILocation(line: 437, column: 9, scope: !784, inlinedAt: !702)
!787 = !DILocation(line: 438, column: 5, scope: !784, inlinedAt: !702)
!788 = !DILocation(line: 519, column: 17, scope: !662, inlinedAt: !667)
!789 = !DILocation(line: 520, column: 34, scope: !790, inlinedAt: !667)
!790 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 1)
!791 = distinct !DILexicalBlock(scope: !662, file: !3, line: 520, column: 17)
!792 = !DILocation(line: 520, column: 26, scope: !790, inlinedAt: !667)
!793 = !DILocation(line: 520, column: 59, scope: !790, inlinedAt: !667)
!794 = !DILocation(line: 520, column: 63, scope: !795, inlinedAt: !667)
!795 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 2)
!796 = !DILocation(line: 520, column: 17, scope: !797, inlinedAt: !667)
!797 = !DILexicalBlockFile(scope: !662, file: !3, discriminator: 2)
!798 = !DILocation(line: 524, column: 33, scope: !799, inlinedAt: !667)
!799 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 3)
!800 = distinct !DILexicalBlock(scope: !663, file: !3, line: 524, column: 20)
!801 = !DILocation(line: 524, column: 21, scope: !799, inlinedAt: !667)
!802 = !DILocation(line: 524, column: 20, scope: !803, inlinedAt: !667)
!803 = !DILexicalBlockFile(scope: !663, file: !3, discriminator: 3)
!804 = !DILocation(line: 525, column: 29, scope: !805, inlinedAt: !667)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 525, column: 17)
!806 = distinct !DILexicalBlock(scope: !800, file: !3, line: 524, column: 47)
!807 = !DILocation(line: 525, column: 17, scope: !805, inlinedAt: !667)
!808 = !DILocation(line: 525, column: 17, scope: !806, inlinedAt: !667)
!809 = !DILocalVariable(name: "att_server", arg: 1, scope: !810, file: !3, line: 327, type: !349)
!810 = distinct !DISubprogram(name: "att_server_exchange_mtu_request", scope: !3, file: !3, line: 327, type: !696, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !811)
!811 = !{!809, !812}
!812 = !DILocalVariable(name: "request", scope: !810, file: !3, line: 332, type: !424)
!813 = !DILocation(line: 327, column: 58, scope: !810, inlinedAt: !814)
!814 = distinct !DILocation(line: 526, column: 21, scope: !815, inlinedAt: !667)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 526, column: 21)
!816 = distinct !DILexicalBlock(scope: !805, file: !3, line: 525, column: 47)
!817 = !DILocation(line: 329, column: 10, scope: !818, inlinedAt: !814)
!818 = distinct !DILexicalBlock(scope: !810, file: !3, line: 329, column: 9)
!819 = !DILocation(line: 329, column: 9, scope: !810, inlinedAt: !814)
!820 = !DILocation(line: 529, column: 76, scope: !816, inlinedAt: !667)
!821 = !DILocation(line: 529, column: 87, scope: !816, inlinedAt: !667)
!822 = !DILocation(line: 332, column: 24, scope: !810, inlinedAt: !814)
!823 = !DILocation(line: 332, column: 14, scope: !810, inlinedAt: !814)
!824 = !DILocation(line: 333, column: 16, scope: !810, inlinedAt: !814)
!825 = !DILocation(line: 334, column: 63, scope: !810, inlinedAt: !814)
!826 = !DILocation(line: 334, column: 5, scope: !810, inlinedAt: !814)
!827 = !DILocation(line: 335, column: 67, scope: !828, inlinedAt: !814)
!828 = distinct !DILexicalBlock(scope: !810, file: !3, line: 335, column: 9)
!829 = !DILocation(line: 335, column: 9, scope: !828, inlinedAt: !814)
!830 = !DILocation(line: 335, column: 9, scope: !810, inlinedAt: !814)
!831 = !DILocation(line: 336, column: 9, scope: !832, inlinedAt: !814)
!832 = distinct !DILexicalBlock(scope: !828, file: !3, line: 335, column: 113)
!833 = !DILocation(line: 337, column: 9, scope: !832, inlinedAt: !814)
!834 = !DILocation(line: 340, column: 34, scope: !810, inlinedAt: !814)
!835 = !DILocation(line: 527, column: 46, scope: !836, inlinedAt: !667)
!836 = distinct !DILexicalBlock(scope: !815, file: !3, line: 526, column: 66)
!837 = !DILocation(line: 528, column: 17, scope: !836, inlinedAt: !667)
!838 = !DILocation(line: 529, column: 17, scope: !816, inlinedAt: !667)
!839 = !DILocation(line: 530, column: 13, scope: !816, inlinedAt: !667)
!840 = !DILocation(line: 530, column: 36, scope: !841, inlinedAt: !667)
!841 = !DILexicalBlockFile(scope: !842, file: !3, discriminator: 1)
!842 = distinct !DILexicalBlock(scope: !805, file: !3, line: 530, column: 24)
!843 = !DILocation(line: 530, column: 53, scope: !841, inlinedAt: !667)
!844 = !DILocation(line: 530, column: 24, scope: !845, inlinedAt: !667)
!845 = !DILexicalBlockFile(scope: !805, file: !3, discriminator: 1)
!846 = !DILocalVariable(name: "att_server", arg: 1, scope: !847, file: !3, line: 366, type: !349)
!847 = distinct !DISubprogram(name: "att_server_check_remote_request", scope: !3, file: !3, line: 366, type: !696, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !848)
!848 = !{!846, !849, !850}
!849 = !DILocalVariable(name: "request", scope: !847, file: !3, line: 371, type: !424)
!850 = !DILocalVariable(name: "cmd_len", scope: !847, file: !3, line: 372, type: !218)
!851 = !DILocation(line: 366, column: 58, scope: !847, inlinedAt: !852)
!852 = distinct !DILocation(line: 531, column: 21, scope: !853, inlinedAt: !667)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 531, column: 21)
!854 = distinct !DILexicalBlock(scope: !842, file: !3, line: 530, column: 59)
!855 = !DILocation(line: 368, column: 10, scope: !856, inlinedAt: !852)
!856 = distinct !DILexicalBlock(scope: !847, file: !3, line: 368, column: 9)
!857 = !DILocation(line: 368, column: 9, scope: !847, inlinedAt: !852)
!858 = !DILocation(line: 534, column: 76, scope: !854, inlinedAt: !667)
!859 = !DILocation(line: 534, column: 87, scope: !854, inlinedAt: !667)
!860 = !DILocation(line: 371, column: 24, scope: !847, inlinedAt: !852)
!861 = !DILocation(line: 371, column: 14, scope: !847, inlinedAt: !852)
!862 = !DILocation(line: 372, column: 13, scope: !847, inlinedAt: !852)
!863 = !DILocation(line: 373, column: 5, scope: !847, inlinedAt: !852)
!864 = !DILocation(line: 375, column: 67, scope: !865, inlinedAt: !852)
!865 = distinct !DILexicalBlock(scope: !847, file: !3, line: 375, column: 9)
!866 = !DILocation(line: 375, column: 9, scope: !865, inlinedAt: !852)
!867 = !DILocation(line: 375, column: 9, scope: !847, inlinedAt: !852)
!868 = !DILocation(line: 376, column: 9, scope: !869, inlinedAt: !852)
!869 = distinct !DILexicalBlock(scope: !865, file: !3, line: 375, column: 119)
!870 = !DILocation(line: 377, column: 9, scope: !869, inlinedAt: !852)
!871 = !DILocation(line: 380, column: 34, scope: !847, inlinedAt: !852)
!872 = !DILocation(line: 532, column: 46, scope: !873, inlinedAt: !667)
!873 = distinct !DILexicalBlock(scope: !853, file: !3, line: 531, column: 66)
!874 = !DILocation(line: 533, column: 17, scope: !873, inlinedAt: !667)
!875 = !DILocation(line: 534, column: 17, scope: !854, inlinedAt: !667)
!876 = !DILocation(line: 535, column: 13, scope: !854, inlinedAt: !667)
!877 = !DILocation(line: 521, column: 87, scope: !878, inlinedAt: !667)
!878 = distinct !DILexicalBlock(scope: !791, file: !3, line: 520, column: 113)
!879 = !DILocation(line: 521, column: 17, scope: !878, inlinedAt: !667)
!880 = !DILocation(line: 539, column: 12, scope: !673, inlinedAt: !667)
!881 = !DILocation(line: 539, column: 5, scope: !673, inlinedAt: !667)
!882 = !DILocation(line: 541, column: 111, scope: !665, inlinedAt: !667)
!883 = !{!441, !442, i64 52}
!884 = !DILocation(line: 542, column: 59, scope: !665, inlinedAt: !667)
!885 = !{!886, !442, i64 8}
!886 = !{!"", !442, i64 0, !442, i64 4, !442, i64 8}
!887 = !DILocation(line: 542, column: 39, scope: !665, inlinedAt: !667)
!888 = !DILocation(line: 542, column: 26, scope: !665, inlinedAt: !667)
!889 = !DILocation(line: 543, column: 9, scope: !665, inlinedAt: !667)
!890 = !DILocation(line: 544, column: 17, scope: !665, inlinedAt: !667)
!891 = !{!886, !442, i64 4}
!892 = !DILocation(line: 544, column: 34, scope: !665, inlinedAt: !667)
!893 = !DILocation(line: 544, column: 9, scope: !665, inlinedAt: !667)
!894 = !DILocation(line: 547, column: 14, scope: !895, inlinedAt: !667)
!895 = distinct !DILexicalBlock(scope: !665, file: !3, line: 547, column: 13)
!896 = !DILocation(line: 547, column: 13, scope: !665, inlinedAt: !667)
!897 = !DILocation(line: 548, column: 18, scope: !898, inlinedAt: !667)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 548, column: 17)
!899 = distinct !DILexicalBlock(scope: !895, file: !3, line: 547, column: 60)
!900 = !DILocation(line: 548, column: 66, scope: !898, inlinedAt: !667)
!901 = !DILocation(line: 548, column: 77, scope: !902, inlinedAt: !667)
!902 = !DILexicalBlockFile(scope: !898, file: !3, discriminator: 1)
!903 = !DILocation(line: 548, column: 69, scope: !902, inlinedAt: !667)
!904 = !DILocation(line: 548, column: 17, scope: !905, inlinedAt: !667)
!905 = !DILexicalBlockFile(scope: !899, file: !3, discriminator: 1)
!906 = !DILocation(line: 549, column: 17, scope: !907, inlinedAt: !667)
!907 = distinct !DILexicalBlock(scope: !898, file: !3, line: 548, column: 103)
!908 = !DILocation(line: 555, column: 17, scope: !909, inlinedAt: !667)
!909 = distinct !DILexicalBlock(scope: !645, file: !3, line: 555, column: 9)
!910 = !DILocation(line: 555, column: 9, scope: !909, inlinedAt: !667)
!911 = !DILocation(line: 555, column: 9, scope: !645, inlinedAt: !667)
!912 = !DILocation(line: 556, column: 42, scope: !913, inlinedAt: !667)
!913 = distinct !DILexicalBlock(scope: !909, file: !3, line: 555, column: 43)
!914 = !DILocation(line: 150, column: 18, scope: !915, inlinedAt: !922)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 150, column: 9)
!916 = distinct !DISubprogram(name: "att_emit_can_send_now_event", scope: !3, file: !3, line: 148, type: !646, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !917)
!917 = !{!918}
!918 = !DILocalVariable(name: "event", scope: !916, file: !3, line: 154, type: !919)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 16, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 2)
!922 = distinct !DILocation(line: 557, column: 9, scope: !913, inlinedAt: !667)
!923 = !{!441, !442, i64 48}
!924 = !DILocation(line: 150, column: 10, scope: !915, inlinedAt: !922)
!925 = !DILocation(line: 150, column: 9, scope: !916, inlinedAt: !922)
!926 = !DILocation(line: 154, column: 5, scope: !916, inlinedAt: !922)
!927 = !DILocation(line: 154, column: 13, scope: !916, inlinedAt: !922)
!928 = !DILocation(line: 155, column: 5, scope: !916, inlinedAt: !922)
!929 = !DILocation(line: 156, column: 1, scope: !916, inlinedAt: !922)
!930 = !DILocation(line: 559, column: 1, scope: !645, inlinedAt: !667)
!931 = !DILocation(line: 577, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !634, file: !3, line: 577, column: 9)
!933 = !DILocation(line: 577, column: 9, scope: !634)
!934 = !DILocation(line: 577, column: 9, scope: !935)
!935 = !DILexicalBlockFile(scope: !932, file: !3, discriminator: 1)
!936 = !DILocation(line: 578, column: 22, scope: !634)
!937 = !DILocation(line: 565, column: 19, scope: !624)
!938 = !DILocation(line: 579, column: 14, scope: !939)
!939 = distinct !DILexicalBlock(scope: !634, file: !3, line: 579, column: 13)
!940 = !DILocation(line: 579, column: 13, scope: !634)
!941 = !DILocation(line: 580, column: 13, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 580, column: 13)
!943 = distinct !DILexicalBlock(scope: !939, file: !3, line: 579, column: 26)
!944 = !DILocation(line: 580, column: 13, scope: !943)
!945 = !DILocation(line: 580, column: 13, scope: !946)
!946 = !DILexicalBlockFile(scope: !942, file: !3, discriminator: 1)
!947 = !DILocation(line: 585, column: 13, scope: !633)
!948 = !DILocation(line: 585, column: 23, scope: !633)
!949 = !DILocation(line: 585, column: 56, scope: !633)
!950 = !DILocation(line: 585, column: 71, scope: !951)
!951 = !DILexicalBlockFile(scope: !633, file: !3, discriminator: 1)
!952 = !DILocation(line: 585, column: 59, scope: !951)
!953 = !DILocation(line: 585, column: 13, scope: !954)
!954 = !DILexicalBlockFile(scope: !634, file: !3, discriminator: 1)
!955 = !DILocalVariable(name: "att_server", arg: 1, scope: !956, file: !3, line: 158, type: !349)
!956 = distinct !DISubprogram(name: "value_indication_timer_stop", scope: !3, file: !3, line: 158, type: !957, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !349}
!959 = !{!955}
!960 = !DILocation(line: 158, column: 55, scope: !956, inlinedAt: !961)
!961 = distinct !DILocation(line: 586, column: 13, scope: !632)
!962 = !DILocation(line: 160, column: 48, scope: !956, inlinedAt: !961)
!963 = !DILocation(line: 160, column: 5, scope: !956, inlinedAt: !961)
!964 = !DILocation(line: 587, column: 47, scope: !632)
!965 = !DILocation(line: 587, column: 35, scope: !632)
!966 = !DILocation(line: 587, column: 22, scope: !632)
!967 = !DILocation(line: 588, column: 49, scope: !632)
!968 = !DILocation(line: 589, column: 81, scope: !632)
!969 = !DILocation(line: 589, column: 13, scope: !632)
!970 = !DILocation(line: 595, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !634, file: !3, line: 595, column: 13)
!972 = !DILocation(line: 595, column: 23, scope: !971)
!973 = !DILocation(line: 595, column: 13, scope: !634)
!974 = !DILocation(line: 596, column: 13, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 596, column: 13)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 595, column: 45)
!977 = !DILocation(line: 596, column: 13, scope: !976)
!978 = !DILocation(line: 596, column: 13, scope: !979)
!979 = !DILexicalBlockFile(scope: !975, file: !3, discriminator: 1)
!980 = !DILocation(line: 597, column: 45, scope: !976)
!981 = !DILocation(line: 597, column: 13, scope: !976)
!982 = !DILocation(line: 598, column: 13, scope: !976)
!983 = !DILocation(line: 602, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !634, file: !3, line: 602, column: 13)
!985 = !DILocation(line: 602, column: 18, scope: !984)
!986 = !DILocation(line: 602, column: 13, scope: !634)
!987 = !DILocation(line: 603, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 603, column: 13)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 602, column: 56)
!990 = !DILocation(line: 603, column: 13, scope: !989)
!991 = !DILocation(line: 603, column: 13, scope: !992)
!992 = !DILexicalBlockFile(scope: !988, file: !3, discriminator: 1)
!993 = !DILocation(line: 608, column: 25, scope: !994)
!994 = distinct !DILexicalBlock(scope: !634, file: !3, line: 608, column: 13)
!995 = !DILocation(line: 608, column: 31, scope: !994)
!996 = !DILocation(line: 608, column: 13, scope: !634)
!997 = !DILocation(line: 609, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 609, column: 13)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 608, column: 51)
!1000 = !DILocation(line: 609, column: 13, scope: !999)
!1001 = !DILocation(line: 609, column: 13, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !998, file: !3, discriminator: 1)
!1003 = !DILocation(line: 613, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !634, file: !3, line: 613, column: 13)
!1005 = !DILocation(line: 613, column: 15, scope: !1004)
!1006 = !DILocation(line: 613, column: 13, scope: !634)
!1007 = !DILocation(line: 614, column: 13, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 613, column: 48)
!1009 = !DILocation(line: 616, column: 17, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 616, column: 17)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 614, column: 32)
!1012 = !DILocation(line: 616, column: 17, scope: !1011)
!1013 = !DILocation(line: 616, column: 17, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1010, file: !3, discriminator: 1)
!1015 = !DILocation(line: 618, column: 46, scope: !1011)
!1016 = !DILocation(line: 619, column: 42, scope: !1011)
!1017 = !DILocation(line: 620, column: 33, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 620, column: 21)
!1019 = !{!503, !442, i64 576}
!1020 = !DILocation(line: 620, column: 21, scope: !1018)
!1021 = !DILocation(line: 620, column: 21, scope: !1011)
!1022 = !DILocation(line: 621, column: 72, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 620, column: 50)
!1024 = !DILocation(line: 621, column: 21, scope: !1023)
!1025 = !DILocation(line: 622, column: 17, scope: !1023)
!1026 = !DILocation(line: 626, column: 17, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 626, column: 17)
!1028 = !DILocation(line: 626, column: 17, scope: !1011)
!1029 = !DILocation(line: 626, column: 17, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1027, file: !3, discriminator: 1)
!1031 = !DILocation(line: 628, column: 46, scope: !1011)
!1032 = !DILocation(line: 629, column: 42, scope: !1011)
!1033 = !DILocation(line: 630, column: 33, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 630, column: 21)
!1035 = !DILocation(line: 630, column: 21, scope: !1034)
!1036 = !DILocation(line: 630, column: 21, scope: !1011)
!1037 = !DILocation(line: 631, column: 72, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 630, column: 50)
!1039 = !DILocation(line: 631, column: 21, scope: !1038)
!1040 = !DILocation(line: 632, column: 17, scope: !1038)
!1041 = !DILocation(line: 641, column: 27, scope: !634)
!1042 = !DILocation(line: 642, column: 21, scope: !634)
!1043 = !DILocation(line: 642, column: 34, scope: !634)
!1044 = !DILocation(line: 643, column: 9, scope: !634)
!1045 = !DILocation(line: 645, column: 9, scope: !634)
!1046 = !DILocation(line: 646, column: 9, scope: !634)
!1047 = !DILocation(line: 648, column: 1, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !624, file: !3, discriminator: 2)
!1049 = distinct !DISubprogram(name: "att_server_change_profile", scope: !3, file: !3, line: 676, type: !1050, isLocal: false, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1053)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!208, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!1053 = !{!1054}
!1054 = !DILocalVariable(name: "profile_data", arg: 1, scope: !1049, file: !3, line: 676, type: !1052)
!1055 = !DILocation(line: 676, column: 41, scope: !1049)
!1056 = !DILocation(line: 678, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 678, column: 9)
!1058 = !DILocation(line: 678, column: 9, scope: !1049)
!1059 = !DILocation(line: 683, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 682, column: 17)
!1061 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 682, column: 9)
!1062 = !DILocation(line: 684, column: 9, scope: !1060)
!1063 = !DILocation(line: 688, column: 1, scope: !1049)
!1064 = distinct !DISubprogram(name: "att_server_register_packet_handler", scope: !3, file: !3, line: 690, type: !1065, isLocal: false, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1069)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !19, line: 58, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32)
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "handler", arg: 1, scope: !1064, file: !3, line: 690, type: !1067)
!1071 = !DILocation(line: 690, column: 66, scope: !1064)
!1072 = !DILocation(line: 692, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 692, column: 9)
!1074 = !DILocation(line: 692, column: 9, scope: !1064)
!1075 = !DILocation(line: 693, column: 39, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 692, column: 36)
!1077 = !DILocation(line: 694, column: 5, scope: !1076)
!1078 = !DILocation(line: 695, column: 1, scope: !1064)
!1079 = distinct !DISubprogram(name: "att_server_can_send_packet_now", scope: !3, file: !3, line: 697, type: !1080, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!208, !224}
!1082 = !{!1083}
!1083 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1079, file: !3, line: 697, type: !224)
!1084 = !DILocation(line: 697, column: 53, scope: !1079)
!1085 = !DILocation(line: 699, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 699, column: 9)
!1087 = !DILocation(line: 699, column: 9, scope: !1079)
!1088 = !DILocation(line: 700, column: 16, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 699, column: 36)
!1090 = !DILocation(line: 700, column: 9, scope: !1089)
!1091 = !DILocation(line: 703, column: 1, scope: !1079)
!1092 = distinct !DISubprogram(name: "att_server_request_can_send_now_event", scope: !3, file: !3, line: 705, type: !1093, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !224}
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1092, file: !3, line: 705, type: !224)
!1097 = !DILocation(line: 705, column: 61, scope: !1092)
!1098 = !DILocation(line: 707, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 707, column: 9)
!1100 = !DILocation(line: 707, column: 9, scope: !1092)
!1101 = !DILocation(line: 708, column: 9, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 708, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 707, column: 36)
!1104 = !DILocation(line: 708, column: 9, scope: !1103)
!1105 = !DILocation(line: 708, column: 9, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1102, file: !3, discriminator: 1)
!1107 = !DILocation(line: 709, column: 42, scope: !1103)
!1108 = !DILocation(line: 710, column: 9, scope: !1103)
!1109 = !DILocation(line: 711, column: 5, scope: !1103)
!1110 = !DILocation(line: 712, column: 1, scope: !1092)
!1111 = distinct !DISubprogram(name: "att_server_register_can_send_now_callback", scope: !3, file: !3, line: 714, type: !1112, isLocal: false, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !339, !224}
!1114 = !{!1115, !1116}
!1115 = !DILocalVariable(name: "callback_registration", arg: 1, scope: !1111, file: !3, line: 714, type: !339)
!1116 = !DILocalVariable(name: "con_handle", arg: 2, scope: !1111, file: !3, line: 714, type: !224)
!1117 = !DILocation(line: 714, column: 89, scope: !1111)
!1118 = !DILocation(line: 714, column: 129, scope: !1111)
!1119 = !DILocation(line: 716, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 716, column: 9)
!1121 = !DILocation(line: 716, column: 9, scope: !1111)
!1122 = !DILocation(line: 718, column: 13, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 718, column: 13)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 716, column: 36)
!1125 = !DILocation(line: 718, column: 13, scope: !1124)
!1126 = !DILocation(line: 719, column: 36, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 718, column: 59)
!1128 = !DILocation(line: 719, column: 68, scope: !1127)
!1129 = !DILocation(line: 719, column: 13, scope: !1127)
!1130 = !DILocation(line: 720, column: 13, scope: !1127)
!1131 = !DILocation(line: 722, column: 50, scope: !1124)
!1132 = !DILocation(line: 722, column: 42, scope: !1124)
!1133 = !DILocation(line: 722, column: 32, scope: !1124)
!1134 = !DILocation(line: 722, column: 40, scope: !1124)
!1135 = !DILocation(line: 723, column: 9, scope: !1124)
!1136 = !DILocation(line: 724, column: 9, scope: !1124)
!1137 = !DILocation(line: 725, column: 5, scope: !1124)
!1138 = !DILocation(line: 726, column: 1, scope: !1111)
!1139 = distinct !DISubprogram(name: "att_server_notify", scope: !3, file: !3, line: 729, type: !1140, isLocal: false, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!208, !224, !225, !424, !225}
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1143 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1139, file: !3, line: 729, type: !224)
!1144 = !DILocalVariable(name: "attribute_handle", arg: 2, scope: !1139, file: !3, line: 729, type: !225)
!1145 = !DILocalVariable(name: "value", arg: 3, scope: !1139, file: !3, line: 729, type: !424)
!1146 = !DILocalVariable(name: "value_len", arg: 4, scope: !1139, file: !3, line: 729, type: !225)
!1147 = !DILocalVariable(name: "att_server", scope: !1139, file: !3, line: 735, type: !349)
!1148 = !DILocalVariable(name: "packet_buffer", scope: !1139, file: !3, line: 745, type: !424)
!1149 = !DILocalVariable(name: "size", scope: !1139, file: !3, line: 746, type: !225)
!1150 = !DILocation(line: 729, column: 40, scope: !1139)
!1151 = !DILocation(line: 729, column: 61, scope: !1139)
!1152 = !DILocation(line: 729, column: 88, scope: !1139)
!1153 = !DILocation(line: 729, column: 104, scope: !1139)
!1154 = !DILocation(line: 731, column: 10, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 731, column: 9)
!1156 = !DILocation(line: 731, column: 9, scope: !1139)
!1157 = !DILocation(line: 735, column: 32, scope: !1139)
!1158 = !DILocation(line: 735, column: 19, scope: !1139)
!1159 = !DILocation(line: 736, column: 10, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 736, column: 9)
!1161 = !DILocation(line: 736, column: 9, scope: !1139)
!1162 = !DILocation(line: 740, column: 10, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 740, column: 9)
!1164 = !DILocation(line: 740, column: 9, scope: !1139)
!1165 = !DILocation(line: 744, column: 5, scope: !1139)
!1166 = !DILocation(line: 745, column: 30, scope: !1139)
!1167 = !DILocation(line: 745, column: 14, scope: !1139)
!1168 = !DILocation(line: 746, column: 72, scope: !1139)
!1169 = !DILocation(line: 746, column: 21, scope: !1139)
!1170 = !DILocation(line: 746, column: 14, scope: !1139)
!1171 = !DILocation(line: 747, column: 70, scope: !1139)
!1172 = !DILocation(line: 747, column: 12, scope: !1139)
!1173 = !DILocation(line: 748, column: 1, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1139, file: !3, discriminator: 2)
!1175 = distinct !DISubprogram(name: "att_server_indicate", scope: !3, file: !3, line: 750, type: !1140, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1177 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1175, file: !3, line: 750, type: !224)
!1178 = !DILocalVariable(name: "attribute_handle", arg: 2, scope: !1175, file: !3, line: 750, type: !225)
!1179 = !DILocalVariable(name: "value", arg: 3, scope: !1175, file: !3, line: 750, type: !424)
!1180 = !DILocalVariable(name: "value_len", arg: 4, scope: !1175, file: !3, line: 750, type: !225)
!1181 = !DILocalVariable(name: "att_server", scope: !1175, file: !3, line: 756, type: !349)
!1182 = !DILocalVariable(name: "packet_buffer", scope: !1175, file: !3, line: 778, type: !424)
!1183 = !DILocalVariable(name: "size", scope: !1175, file: !3, line: 779, type: !225)
!1184 = !DILocation(line: 750, column: 42, scope: !1175)
!1185 = !DILocation(line: 750, column: 63, scope: !1175)
!1186 = !DILocation(line: 750, column: 90, scope: !1175)
!1187 = !DILocation(line: 750, column: 106, scope: !1175)
!1188 = !DILocation(line: 752, column: 10, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 752, column: 9)
!1190 = !DILocation(line: 752, column: 9, scope: !1175)
!1191 = !DILocation(line: 756, column: 32, scope: !1175)
!1192 = !DILocation(line: 756, column: 19, scope: !1175)
!1193 = !DILocation(line: 757, column: 10, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 757, column: 9)
!1195 = !DILocation(line: 757, column: 9, scope: !1175)
!1196 = !DILocation(line: 761, column: 21, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 761, column: 9)
!1198 = !DILocation(line: 761, column: 9, scope: !1197)
!1199 = !DILocation(line: 761, column: 9, scope: !1175)
!1200 = !DILocation(line: 764, column: 10, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 764, column: 9)
!1202 = !DILocation(line: 764, column: 9, scope: !1175)
!1203 = !DILocation(line: 769, column: 43, scope: !1175)
!1204 = !DILocation(line: 769, column: 41, scope: !1175)
!1205 = !DILocation(line: 771, column: 25, scope: !1175)
!1206 = !DILocation(line: 771, column: 5, scope: !1175)
!1207 = !DILocation(line: 772, column: 40, scope: !1175)
!1208 = !DILocation(line: 772, column: 57, scope: !1175)
!1209 = !DILocation(line: 773, column: 40, scope: !1175)
!1210 = !DILocation(line: 773, column: 48, scope: !1175)
!1211 = !{!503, !442, i64 36}
!1212 = !DILocation(line: 774, column: 40, scope: !1175)
!1213 = !DILocation(line: 774, column: 48, scope: !1175)
!1214 = !{!503, !442, i64 40}
!1215 = !DILocation(line: 775, column: 5, scope: !1175)
!1216 = !DILocation(line: 777, column: 5, scope: !1175)
!1217 = !DILocation(line: 778, column: 30, scope: !1175)
!1218 = !DILocation(line: 778, column: 14, scope: !1175)
!1219 = !DILocation(line: 779, column: 70, scope: !1175)
!1220 = !DILocation(line: 779, column: 21, scope: !1175)
!1221 = !DILocation(line: 779, column: 14, scope: !1175)
!1222 = !DILocation(line: 780, column: 63, scope: !1175)
!1223 = !DILocation(line: 780, column: 5, scope: !1175)
!1224 = !DILocation(line: 782, column: 1, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1175, file: !3, discriminator: 2)
!1226 = distinct !DISubprogram(name: "att_handle_value_indication_timeout", scope: !3, file: !3, line: 163, type: !1227, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1230)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!1230 = !{!1231, !1232, !1233}
!1231 = !DILocalVariable(name: "ts", arg: 1, scope: !1226, file: !3, line: 163, type: !1229)
!1232 = !DILocalVariable(name: "att_server", scope: !1226, file: !3, line: 165, type: !349)
!1233 = !DILocalVariable(name: "att_handle", scope: !1226, file: !3, line: 171, type: !225)
!1234 = !DILocation(line: 163, column: 73, scope: !1226)
!1235 = !DILocation(line: 165, column: 52, scope: !1226)
!1236 = !{!504, !442, i64 16}
!1237 = !DILocation(line: 165, column: 19, scope: !1226)
!1238 = !DILocation(line: 166, column: 10, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 166, column: 9)
!1240 = !DILocation(line: 166, column: 9, scope: !1226)
!1241 = !DILocation(line: 171, column: 39, scope: !1226)
!1242 = !DILocation(line: 171, column: 27, scope: !1226)
!1243 = !DILocation(line: 171, column: 14, scope: !1226)
!1244 = !DILocation(line: 172, column: 107, scope: !1226)
!1245 = !DILocation(line: 172, column: 5, scope: !1226)
!1246 = !DILocation(line: 173, column: 1, scope: !1226)
!1247 = !DILocation(line: 173, column: 1, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1226, file: !3, discriminator: 2)
!1249 = distinct !DISubprogram(name: "att_server_send_request", scope: !3, file: !3, line: 786, type: !362, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1250)
!1250 = !{!1251}
!1251 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1249, file: !3, line: 786, type: !327)
!1252 = !DILocation(line: 786, column: 34, scope: !1249)
!1253 = !DILocation(line: 788, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 788, column: 9)
!1255 = !DILocation(line: 788, column: 9, scope: !1249)
!1256 = !DILocation(line: 789, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 788, column: 36)
!1258 = !DILocation(line: 790, column: 5, scope: !1257)
!1259 = !DILocation(line: 791, column: 1, scope: !1249)
!1260 = distinct !DISubprogram(name: "att_server_flow_hold", scope: !3, file: !3, line: 802, type: !1261, isLocal: false, isDefinition: true, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !224, !328}
!1263 = !{!1264, !1265, !1266}
!1264 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1260, file: !3, line: 802, type: !224)
!1265 = !DILocalVariable(name: "hold_flag", arg: 2, scope: !1260, file: !3, line: 802, type: !328)
!1266 = !DILocalVariable(name: "att_server", scope: !1260, file: !3, line: 804, type: !349)
!1267 = !DILocation(line: 802, column: 44, scope: !1260)
!1268 = !DILocation(line: 802, column: 59, scope: !1260)
!1269 = !DILocation(line: 804, column: 32, scope: !1260)
!1270 = !DILocation(line: 804, column: 19, scope: !1260)
!1271 = !DILocation(line: 806, column: 18, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 806, column: 9)
!1273 = !DILocation(line: 806, column: 10, scope: !1272)
!1274 = !DILocation(line: 806, column: 9, scope: !1260)
!1275 = !DILocation(line: 810, column: 5, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 810, column: 5)
!1277 = !DILocation(line: 810, column: 5, scope: !1260)
!1278 = !DILocation(line: 810, column: 5, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1276, file: !3, discriminator: 1)
!1280 = !DILocation(line: 811, column: 10, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 811, column: 9)
!1282 = !DILocation(line: 811, column: 9, scope: !1260)
!1283 = !DILocation(line: 812, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 812, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 811, column: 22)
!1286 = !DILocation(line: 812, column: 9, scope: !1285)
!1287 = !DILocation(line: 812, column: 9, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1284, file: !3, discriminator: 1)
!1289 = !DILocation(line: 815, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 815, column: 9)
!1291 = !DILocation(line: 815, column: 9, scope: !1260)
!1292 = !DILocation(line: 816, column: 36, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 815, column: 20)
!1294 = !DILocation(line: 817, column: 5, scope: !1293)
!1295 = !DILocation(line: 818, column: 36, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 817, column: 12)
!1297 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1298, file: !3, line: 796, type: !327)
!1298 = distinct !DISubprogram(name: "ble_att_server_send_resume", scope: !3, file: !3, line: 796, type: !362, isLocal: true, isDefinition: true, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1299)
!1299 = !{!1297}
!1300 = !DILocation(line: 796, column: 44, scope: !1298, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 819, column: 9, scope: !1296)
!1302 = !DILocation(line: 798, column: 60, scope: !1298, inlinedAt: !1301)
!1303 = !DILocation(line: 798, column: 5, scope: !1298, inlinedAt: !1301)
!1304 = !DILocation(line: 821, column: 1, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1260, file: !3, discriminator: 2)
!1306 = distinct !DISubprogram(name: "att_server_flow_enable", scope: !3, file: !3, line: 824, type: !1307, isLocal: false, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !328}
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "enable", arg: 1, scope: !1306, file: !3, line: 824, type: !328)
!1311 = !DILocation(line: 824, column: 32, scope: !1306)
!1312 = !DILocation(line: 826, column: 32, scope: !1306)
!1313 = !DILocation(line: 827, column: 1, scope: !1306)
!1314 = distinct !DISubprogram(name: "att_server_set_check_remote", scope: !3, file: !3, line: 829, type: !1315, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1321)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !327, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 32)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !327, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "remote_type_e", file: !13, line: 160, baseType: !12)
!1321 = !{!1322, !1323, !1324}
!1322 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1314, file: !3, line: 829, type: !327)
!1323 = !DILocalVariable(name: "callback", arg: 2, scope: !1314, file: !3, line: 829, type: !1317)
!1324 = !DILocalVariable(name: "att_server", scope: !1314, file: !3, line: 831, type: !349)
!1325 = !DILocation(line: 829, column: 38, scope: !1314)
!1326 = !DILocation(line: 829, column: 57, scope: !1314)
!1327 = !DILocation(line: 833, column: 10, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 833, column: 9)
!1329 = !DILocation(line: 833, column: 9, scope: !1314)
!1330 = !DILocation(line: 837, column: 18, scope: !1314)
!1331 = !DILocation(line: 831, column: 19, scope: !1314)
!1332 = !DILocation(line: 838, column: 10, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 838, column: 9)
!1334 = !DILocation(line: 838, column: 9, scope: !1314)
!1335 = !DILocation(line: 839, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 838, column: 22)
!1337 = !DILocation(line: 839, column: 9, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !3, discriminator: 1)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 839, column: 9)
!1340 = !DILocation(line: 842, column: 5, scope: !1314)
!1341 = !DILocation(line: 842, column: 5, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1343, file: !3, discriminator: 1)
!1343 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 842, column: 5)
!1344 = !DILocation(line: 843, column: 17, scope: !1314)
!1345 = !DILocation(line: 843, column: 34, scope: !1314)
!1346 = !DILocation(line: 844, column: 17, scope: !1314)
!1347 = !DILocation(line: 844, column: 33, scope: !1314)
!1348 = !DILocation(line: 796, column: 44, scope: !1298, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 845, column: 5, scope: !1314)
!1350 = !DILocation(line: 798, column: 60, scope: !1298, inlinedAt: !1349)
!1351 = !DILocation(line: 798, column: 5, scope: !1298, inlinedAt: !1349)
!1352 = !DILocation(line: 846, column: 1, scope: !1314)
!1353 = !DILocation(line: 846, column: 1, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1314, file: !3, discriminator: 2)
!1355 = distinct !DISubprogram(name: "att_server_get_remote_type", scope: !3, file: !3, line: 849, type: !1356, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!328, !327}
!1358 = !{!1359, !1360}
!1359 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1355, file: !3, line: 849, type: !327)
!1360 = !DILocalVariable(name: "att_server", scope: !1355, file: !3, line: 851, type: !349)
!1361 = !DILocation(line: 849, column: 35, scope: !1355)
!1362 = !DILocation(line: 852, column: 10, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 852, column: 9)
!1364 = !DILocation(line: 852, column: 9, scope: !1355)
!1365 = !DILocation(line: 856, column: 18, scope: !1355)
!1366 = !DILocation(line: 851, column: 19, scope: !1355)
!1367 = !DILocation(line: 857, column: 10, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 857, column: 9)
!1369 = !DILocation(line: 857, column: 9, scope: !1355)
!1370 = !DILocation(line: 858, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 858, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 857, column: 22)
!1373 = !DILocation(line: 858, column: 9, scope: !1372)
!1374 = !DILocation(line: 858, column: 9, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1371, file: !3, discriminator: 1)
!1376 = !DILocation(line: 862, column: 21, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 862, column: 9)
!1378 = !DILocation(line: 862, column: 9, scope: !1355)
!1379 = !DILocation(line: 869, column: 1, scope: !1355)
!1380 = distinct !DISubprogram(name: "att_server_sync_mtu", scope: !3, file: !3, line: 871, type: !1381, isLocal: false, isDefinition: true, scopeLine: 872, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!208, !224, !327}
!1383 = !{!1384, !1385, !1386}
!1384 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1380, file: !3, line: 871, type: !224)
!1385 = !DILocalVariable(name: "mtu", arg: 2, scope: !1380, file: !3, line: 871, type: !327)
!1386 = !DILocalVariable(name: "att_server", scope: !1380, file: !3, line: 873, type: !349)
!1387 = !DILocation(line: 871, column: 42, scope: !1380)
!1388 = !DILocation(line: 871, column: 58, scope: !1380)
!1389 = !DILocation(line: 873, column: 32, scope: !1380)
!1390 = !DILocation(line: 873, column: 19, scope: !1380)
!1391 = !DILocation(line: 875, column: 10, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 875, column: 9)
!1393 = !DILocation(line: 875, column: 9, scope: !1380)
!1394 = !DILocation(line: 876, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 875, column: 22)
!1396 = !DILocation(line: 876, column: 9, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1398, file: !3, discriminator: 1)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 876, column: 9)
!1399 = !DILocation(line: 880, column: 5, scope: !1380)
!1400 = !DILocation(line: 880, column: 5, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1402, file: !3, discriminator: 1)
!1402 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 880, column: 5)
!1403 = !DILocation(line: 881, column: 28, scope: !1380)
!1404 = !DILocation(line: 881, column: 32, scope: !1380)
!1405 = !DILocation(line: 882, column: 47, scope: !1380)
!1406 = !DILocation(line: 882, column: 5, scope: !1380)
!1407 = !DILocation(line: 883, column: 5, scope: !1380)
!1408 = !DILocation(line: 884, column: 1, scope: !1380)
!1409 = distinct !DISubprogram(name: "att_emit_mtu_event", scope: !3, file: !3, line: 132, type: !1410, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !224, !225}
!1412 = !{!1413, !1414, !1415, !1416}
!1413 = !DILocalVariable(name: "con_handle", arg: 1, scope: !1409, file: !3, line: 132, type: !224)
!1414 = !DILocalVariable(name: "mtu", arg: 2, scope: !1409, file: !3, line: 132, type: !225)
!1415 = !DILocalVariable(name: "event", scope: !1409, file: !3, line: 138, type: !217)
!1416 = !DILocalVariable(name: "pos", scope: !1409, file: !3, line: 139, type: !208)
!1417 = !DILocation(line: 132, column: 49, scope: !1409)
!1418 = !DILocation(line: 132, column: 70, scope: !1409)
!1419 = !DILocation(line: 134, column: 18, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 134, column: 9)
!1421 = !DILocation(line: 134, column: 10, scope: !1420)
!1422 = !DILocation(line: 134, column: 9, scope: !1409)
!1423 = !DILocation(line: 138, column: 5, scope: !1409)
!1424 = !DILocation(line: 138, column: 13, scope: !1409)
!1425 = !DILocation(line: 139, column: 9, scope: !1409)
!1426 = !DILocation(line: 140, column: 18, scope: !1409)
!1427 = !DILocation(line: 141, column: 5, scope: !1409)
!1428 = !DILocation(line: 141, column: 18, scope: !1409)
!1429 = !DILocation(line: 142, column: 5, scope: !1409)
!1430 = !DILocation(line: 144, column: 5, scope: !1409)
!1431 = !DILocation(line: 145, column: 13, scope: !1409)
!1432 = !DILocation(line: 145, column: 5, scope: !1409)
!1433 = !DILocation(line: 146, column: 1, scope: !1409)
!1434 = !DILocation(line: 146, column: 1, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1409, file: !3, discriminator: 1)
!1436 = distinct !DISubprogram(name: "hci_event_packet_get_type", scope: !1437, file: !1437, line: 38, type: !1438, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1440)
!1437 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!218, !417}
!1440 = !{!1441}
!1441 = !DILocalVariable(name: "event", arg: 1, scope: !1436, file: !1437, line: 38, type: !417)
!1442 = !DILocation(line: 38, column: 68, scope: !1436)
!1443 = !DILocation(line: 40, column: 16, scope: !1436)
!1444 = !DILocation(line: 40, column: 9, scope: !1436)
!1445 = distinct !DISubprogram(name: "hci_event_disconnection_complete_get_connection_handle", scope: !1437, file: !1437, line: 322, type: !1446, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!225, !417}
!1448 = !{!1449}
!1449 = !DILocalVariable(name: "event", arg: 1, scope: !1445, file: !1437, line: 322, type: !417)
!1450 = !DILocation(line: 322, column: 98, scope: !1445)
!1451 = !DILocation(line: 324, column: 16, scope: !1445)
!1452 = !DILocation(line: 324, column: 9, scope: !1445)
!1453 = distinct !DISubprogram(name: "sm_event_identity_resolving_started_get_handle", scope: !1437, file: !1437, line: 2854, type: !1454, isLocal: true, isDefinition: true, scopeLine: 2855, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!224, !417}
!1456 = !{!1457}
!1457 = !DILocalVariable(name: "event", arg: 1, scope: !1453, file: !1437, line: 2854, type: !417)
!1458 = !DILocation(line: 2854, column: 98, scope: !1453)
!1459 = !DILocation(line: 2856, column: 16, scope: !1453)
!1460 = !DILocation(line: 2856, column: 9, scope: !1453)
!1461 = distinct !DISubprogram(name: "sm_event_identity_resolving_succeeded_get_handle", scope: !1437, file: !1437, line: 2920, type: !1454, isLocal: true, isDefinition: true, scopeLine: 2921, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1462)
!1462 = !{!1463}
!1463 = !DILocalVariable(name: "event", arg: 1, scope: !1461, file: !1437, line: 2920, type: !417)
!1464 = !DILocation(line: 2920, column: 100, scope: !1461)
!1465 = !DILocation(line: 2922, column: 16, scope: !1461)
!1466 = !DILocation(line: 2922, column: 9, scope: !1461)
!1467 = distinct !DISubprogram(name: "sm_event_identity_resolving_succeeded_get_index_internal", scope: !1437, file: !1437, line: 2970, type: !1446, isLocal: true, isDefinition: true, scopeLine: 2971, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1468)
!1468 = !{!1469}
!1469 = !DILocalVariable(name: "event", arg: 1, scope: !1467, file: !1437, line: 2970, type: !417)
!1470 = !DILocation(line: 2970, column: 100, scope: !1467)
!1471 = !DILocation(line: 2972, column: 16, scope: !1467)
!1472 = !DILocation(line: 2972, column: 9, scope: !1467)
!1473 = distinct !DISubprogram(name: "att_run_for_context", scope: !3, file: !3, line: 442, type: !957, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1474)
!1474 = !{!1475}
!1475 = !DILocalVariable(name: "att_server", arg: 1, scope: !1473, file: !3, line: 442, type: !349)
!1476 = !DILocation(line: 442, column: 47, scope: !1473)
!1477 = !DILocation(line: 444, column: 25, scope: !1473)
!1478 = !DILocation(line: 444, column: 5, scope: !1473)
!1479 = !DILocation(line: 490, column: 27, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 444, column: 32)
!1481 = !DILocation(line: 491, column: 79, scope: !1480)
!1482 = !DILocation(line: 491, column: 9, scope: !1480)
!1483 = !DILocation(line: 492, column: 9, scope: !1480)
!1484 = !DILocation(line: 497, column: 1, scope: !1473)
!1485 = distinct !DISubprogram(name: "sm_event_identity_resolving_failed_get_handle", scope: !1437, file: !1437, line: 2887, type: !1454, isLocal: true, isDefinition: true, scopeLine: 2888, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1486)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "event", arg: 1, scope: !1485, file: !1437, line: 2887, type: !417)
!1488 = !DILocation(line: 2887, column: 97, scope: !1485)
!1489 = !DILocation(line: 2889, column: 16, scope: !1485)
!1490 = !DILocation(line: 2889, column: 9, scope: !1485)
!1491 = distinct !DISubprogram(name: "sm_event_authorization_result_get_handle", scope: !1437, file: !1437, line: 3016, type: !1454, isLocal: true, isDefinition: true, scopeLine: 3017, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1492)
!1492 = !{!1493}
!1493 = !DILocalVariable(name: "event", arg: 1, scope: !1491, file: !1437, line: 3016, type: !417)
!1494 = !DILocation(line: 3016, column: 92, scope: !1491)
!1495 = !DILocation(line: 3018, column: 16, scope: !1491)
!1496 = !DILocation(line: 3018, column: 9, scope: !1491)
!1497 = distinct !DISubprogram(name: "sm_event_authorization_result_get_authorization_result", scope: !1437, file: !1437, line: 3046, type: !1438, isLocal: true, isDefinition: true, scopeLine: 3047, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1498)
!1498 = !{!1499}
!1499 = !DILocalVariable(name: "event", arg: 1, scope: !1497, file: !1437, line: 3046, type: !417)
!1500 = !DILocation(line: 3046, column: 97, scope: !1497)
!1501 = !DILocation(line: 3048, column: 16, scope: !1497)
!1502 = !DILocation(line: 3048, column: 9, scope: !1497)
!1503 = distinct !DISubprogram(name: "att_handle_value_indication_notify_client", scope: !3, file: !3, line: 115, type: !1504, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !218, !225, !225}
!1506 = !{!1507, !1508, !1509, !1510, !1511}
!1507 = !DILocalVariable(name: "status", arg: 1, scope: !1503, file: !3, line: 115, type: !218)
!1508 = !DILocalVariable(name: "client_handle", arg: 2, scope: !1503, file: !3, line: 115, type: !225)
!1509 = !DILocalVariable(name: "attribute_handle", arg: 3, scope: !1503, file: !3, line: 115, type: !225)
!1510 = !DILocalVariable(name: "event", scope: !1503, file: !3, line: 121, type: !256)
!1511 = !DILocalVariable(name: "pos", scope: !1503, file: !3, line: 122, type: !208)
!1512 = !DILocation(line: 115, column: 63, scope: !1503)
!1513 = !DILocation(line: 115, column: 80, scope: !1503)
!1514 = !DILocation(line: 115, column: 104, scope: !1503)
!1515 = !DILocation(line: 117, column: 18, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 117, column: 9)
!1517 = !DILocation(line: 117, column: 10, scope: !1516)
!1518 = !DILocation(line: 117, column: 9, scope: !1503)
!1519 = !DILocation(line: 121, column: 5, scope: !1503)
!1520 = !DILocation(line: 121, column: 13, scope: !1503)
!1521 = !DILocation(line: 122, column: 9, scope: !1503)
!1522 = !DILocation(line: 123, column: 18, scope: !1503)
!1523 = !DILocation(line: 124, column: 5, scope: !1503)
!1524 = !DILocation(line: 124, column: 18, scope: !1503)
!1525 = !DILocation(line: 125, column: 5, scope: !1503)
!1526 = !DILocation(line: 125, column: 18, scope: !1503)
!1527 = !DILocation(line: 126, column: 5, scope: !1503)
!1528 = !DILocation(line: 128, column: 5, scope: !1503)
!1529 = !DILocation(line: 129, column: 13, scope: !1503)
!1530 = !DILocation(line: 129, column: 5, scope: !1503)
!1531 = !DILocation(line: 130, column: 1, scope: !1503)
!1532 = !DILocation(line: 130, column: 1, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1503, file: !3, discriminator: 1)
