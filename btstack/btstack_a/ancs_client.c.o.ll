; ModuleID = 'ancs_client.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.ancs_info_t = type { i32, %struct.gatt_client_notification, %struct.gatt_client_notification, i16, i16, %struct.le_service_t, %struct.le_characteristic_t, %struct.le_characteristic_t, %struct.le_characteristic_t, i32, void (i8, i16, i8*, i16)*, %struct.btstack_packet_callback_registration_t, i16, i16, i16, i16, i8, i16, i8*, i32, i32 }
%struct.gatt_client_notification = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)*, i16, i16 }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.le_service_t = type { i16, i16, i16, [16 x i8] }
%struct.le_characteristic_t = type { i16, i16, i16, i16, i16, [16 x i8] }
%struct.btstack_packet_callback_registration_t = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@ancs_client_global_info = internal global %struct.ancs_info_t zeroinitializer, align 4, !dbg !26
@ancs_attribute_names = internal unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0)], align 4, !dbg !110
@ancs_out_callback = internal unnamed_addr global void (i8*, i16)* null, align 4, !dbg !118
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.3 = private unnamed_addr constant [117 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ASSERT-FAILD: buffer_size >= 32 %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"need buffer_size >=32!!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"AppIdentifier\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"IDTitle\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"IDSubtitle\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"IDMessage\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"IDMessageSize\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"IDDate\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"IDPositiveActionLable\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"IDNegativeActionLable\00", align 1
@ancs_service_uuid = internal constant [16 x i8] c"y\05\F41\B5\CEN\99\A4\0FK\1E\12-\00\D0", align 1, !dbg !145
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"[ble-info] :Encryption state change: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"HCI_EVENT_DISCONNECTION_COMPLETE:%02x \0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"[ble-info] :Connection handle 0x%04x, request encryption\0A\00", align 1
@ancs_notification_source_uuid = internal constant [16 x i8] c"\9F\BF\12\0Dc\01B\D9\8CX%\E6\99\A2\1D\BD", align 1, !dbg !149
@.str.20 = private unnamed_addr constant [65 x i8] c"[ble-info] :ANCS Notification Source found, attribute handle %u\0A\00", align 1
@ancs_control_point_uuid = internal constant [16 x i8] c"i\D1\D8\F3E\E1I\A8\98!\9B\BD\FD\AA\D9\D9", align 1, !dbg !151
@.str.21 = private unnamed_addr constant [59 x i8] c"[ble-info] :ANCS Control Point found, attribute handle %u\0A\00", align 1
@ancs_data_source_uuid = internal constant [16 x i8] c"\22\EA\C6\E9$\D6K\B5\BED\B3j\CE|{\FB", align 1, !dbg !153
@.str.22 = private unnamed_addr constant [57 x i8] c"[ble-info] :ANCS Data Source found, attribute handle %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"[ble-info] :ANCS Characteristcs count %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"[ble-info] :ANCS Notification, value handle %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [111 x i8] c"[ble-info] :Notification received: EventID %02x, EventFlags %02x, CategoryID %02x, CategoryCount %u, UID %04x\0A\00", align 1
@handle_hci_event.get_notification_attributes = internal global [17 x i8] c"\00\00\00\00\00\00\01\80\00\02\80\00\03\00\01\04\05", align 1, !dbg !125
@.str.31 = private unnamed_addr constant [31 x i8] c"ancs_warning:cut data %d>>>%d\0A\00", align 1
@str = private unnamed_addr constant [16 x i8] c"ancs trunk end \00"
@str.32 = private unnamed_addr constant [18 x i8] c"ancs trunk start \00"
@str.33 = private unnamed_addr constant [12 x i8] c"[ble-dump]:\00"
@str.34 = private unnamed_addr constant [29 x i8] c"[ble-info] :Unknown Source: \00"
@str.35 = private unnamed_addr constant [40 x i8] c"[ble-info] :ANCS Data Source subscribed\00"
@str.36 = private unnamed_addr constant [48 x i8] c"[ble-info] :ANCS Notification Source subscribed\00"
@str.37 = private unnamed_addr constant [35 x i8] c"[ble-info] :ANCS Service not found\00"
@str.38 = private unnamed_addr constant [72 x i8] c"[ble-info] :ANCS Client - Discover characteristics for ANCS SERVICE111 \00"
@str.39 = private unnamed_addr constant [72 x i8] c"[ble-info] :ANCS Client - Discover characteristics for ANCS SERVICE222 \00"
@str.41 = private unnamed_addr constant [57 x i8] c"[ble-info] :WARNING: ANCS BUFFER NO ENOUGH,INFO LOSS !!!\00"

; Function Attrs: nounwind optsize
define weak hidden void @ancs_update_status(i8 zeroext) local_unnamed_addr #0 !dbg !159 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !163, metadata !DIExpression()), !dbg !164
  switch i8 %0, label %6 [
    i8 1, label %2
    i8 2, label %4
  ], !dbg !165

; <label>:2:                                      ; preds = %1
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @str.32, i32 0, i32 0)), !dbg !166
  br label %6, !dbg !168

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str, i32 0, i32 0)), !dbg !169
  br label %6, !dbg !170

; <label>:6:                                      ; preds = %4, %2, %1
  ret void, !dbg !171
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden void @ancs_client_register_callback(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 !dbg !172 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !176, metadata !DIExpression()), !dbg !177
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 10), align 4, !dbg !178, !tbaa !179
  ret void, !dbg !191
}

; Function Attrs: nounwind optsize readnone
define hidden i8* @ancs_client_attribute_name_for_id(i32) local_unnamed_addr #3 !dbg !192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !196, metadata !DIExpression()), !dbg !197
  %2 = icmp sgt i32 %0, 7, !dbg !198
  br i1 %2, label %6, label %3, !dbg !200

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ancs_attribute_names, i32 0, i32 %0, !dbg !201
  %5 = load i8*, i8** %4, align 4, !dbg !201, !tbaa !202
  br label %6, !dbg !203

; <label>:6:                                      ; preds = %3, %1
  %7 = phi i8* [ %5, %3 ], [ null, %1 ]
  ret i8* %7, !dbg !204
}

; Function Attrs: nounwind optsize
define hidden void @ancs_set_out_callback(i8*) local_unnamed_addr #0 !dbg !205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !210, metadata !DIExpression()), !dbg !211
  store i8* %0, i8** bitcast (void (i8*, i16)** @ancs_out_callback to i8**), align 4, !dbg !212, !tbaa !202
  ret void, !dbg !213
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden i32 @get_notification_uid() local_unnamed_addr #4 !dbg !214 {
  %1 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 0), align 4, !dbg !219, !tbaa !220
  ret i32 %1, !dbg !221
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i16 @get_controlpoint_handle() local_unnamed_addr #4 !dbg !222 {
  %1 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 7, i32 1), align 2, !dbg !225, !tbaa !226
  ret i16 %1, !dbg !227
}

; Function Attrs: nounwind optsize
define hidden void @ancs_client_init() local_unnamed_addr #0 !dbg !228 {
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.ancs_info_t* @ancs_client_global_info to i8*), i8 0, i32 172, i32 4, i1 false), !dbg !231
  store void (i8, i16, i8*, i16)* @handle_hci_event, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 11, i32 1), align 4, !dbg !232, !tbaa !233
  tail call void @hci_add_event_handler(i8* bitcast (%struct.btstack_packet_callback_registration_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 11) to i8*)) #9, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #5

; Function Attrs: nounwind optsize
define internal void @handle_hci_event(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 !dbg !127 {
  %5 = alloca [13 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [13 x i8]* %5, metadata !236, metadata !DIExpression()), !dbg !245
  %6 = alloca %struct.le_characteristic_t, align 2
  call void @llvm.dbg.value(metadata i8 %0, metadata !129, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i16 %1, metadata !130, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata i8* %2, metadata !131, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i16 %3, metadata !132, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !268
  %7 = load i8, i8* %2, align 1, !dbg !270, !tbaa !271
  switch i8 %7, label %51 [
    i8 62, label %8
    i8 8, label %15
    i8 5, label %42
  ], !dbg !272

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !273
  %10 = load i8, i8* %9, align 1, !dbg !273, !tbaa !271
  %11 = icmp eq i8 %10, 1, !dbg !275
  br i1 %11, label %12, label %331, !dbg !275

; <label>:12:                                     ; preds = %8
  %13 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 4) #9, !dbg !276
  store i16 %13, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !278, !tbaa !279
  store i16 0, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 3), align 4, !dbg !280, !tbaa !281
  store i16 0, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 4), align 2, !dbg !282, !tbaa !283
  store i32 2, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !284, !tbaa !285
  %14 = tail call zeroext i8 @gatt_client_discover_primary_services_by_uuid128(void (i8, i16, i8*, i16)* nonnull @handle_hci_event, i16 zeroext %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ancs_service_uuid, i32 0, i32 0)) #9, !dbg !286
  br label %331, !dbg !287

; <label>:15:                                     ; preds = %4
  %16 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !288, !tbaa !279
  %17 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #9, !dbg !290
  %18 = icmp eq i16 %16, %17, !dbg !291
  br i1 %18, label %19, label %331, !dbg !292

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !293
  %21 = load i8, i8* %20, align 1, !dbg !293, !tbaa !271
  call void @llvm.dbg.value(metadata i32 %26, metadata !133, metadata !DIExpression()), !dbg !294
  %22 = load i8, i8* @ble_debug_enable, align 1, !dbg !295, !tbaa !271
  %23 = and i8 %22, 1, !dbg !295
  %24 = icmp eq i8 %23, 0, !dbg !295
  br i1 %24, label %28, label %25, !dbg !297

; <label>:25:                                     ; preds = %19
  %26 = zext i8 %21 to i32, !dbg !293
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 %26) #10, !dbg !298
  br label %28, !dbg !298

; <label>:28:                                     ; preds = %25, %19
  %29 = icmp eq i8 %21, 0, !dbg !300
  br i1 %29, label %331, label %30, !dbg !302

; <label>:30:                                     ; preds = %28
  store i16 1, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 4), align 2, !dbg !303, !tbaa !283
  %31 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !304, !tbaa !285
  %32 = icmp eq i32 %31, 1, !dbg !306
  br i1 %32, label %33, label %51, !dbg !307

; <label>:33:                                     ; preds = %30
  store i32 3, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !308, !tbaa !285
  %34 = load i8, i8* @ble_debug_enable, align 1, !dbg !310, !tbaa !271
  %35 = and i8 %34, 1, !dbg !310
  %36 = icmp eq i8 %35, 0, !dbg !310
  br i1 %36, label %39, label %37, !dbg !312

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @puts(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @str.39, i32 0, i32 0)), !dbg !313
  br label %39, !dbg !313

; <label>:39:                                     ; preds = %37, %33
  %40 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !315, !tbaa !279
  %41 = tail call zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)* nonnull @handle_hci_event, i16 zeroext %40, %struct.le_service_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 5)) #9, !dbg !316
  br label %51, !dbg !317

; <label>:42:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !318, metadata !DIExpression()), !dbg !323
  %43 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #9, !dbg !326
  %44 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !327, !tbaa !279
  %45 = icmp eq i16 %43, %44, !dbg !328
  br i1 %45, label %46, label %51, !dbg !329

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !330
  %48 = load i8, i8* %47, align 1, !dbg !330, !tbaa !271
  %49 = zext i8 %48 to i32, !dbg !330
  %50 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i32 %49) #10, !dbg !331
  tail call fastcc void @notify_client_simple(i32 242) #10, !dbg !332
  store i32 0, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !333, !tbaa !285
  store i16 0, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !334, !tbaa !279
  br label %331, !dbg !335

; <label>:51:                                     ; preds = %42, %39, %30, %4
  %52 = bitcast %struct.le_characteristic_t* %6 to i8*, !dbg !336
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %52) #8, !dbg !336
  %53 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !337, !tbaa !285
  switch i32 %53, label %330 [
    i32 2, label %54
    i32 3, label %90
    i32 5, label %149
    i32 4, label %161
    i32 6, label %171
  ], !dbg !338

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !339
  %55 = load i8, i8* %2, align 1, !dbg !341, !tbaa !271
  switch i8 %55, label %330 [
    i8 -95, label %56
    i8 -96, label %57
  ], !dbg !342

; <label>:56:                                     ; preds = %54
  call void @llvm.dbg.value(metadata %struct.le_service_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 5), metadata !343, metadata !DIExpression()), !dbg !350
  tail call void @gatt_client_deserialize_service(i8* nonnull %2, i32 4, %struct.le_service_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 5)) #9, !dbg !353
  store i16 1, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 3), align 4, !dbg !354, !tbaa !281
  br label %330, !dbg !355

; <label>:57:                                     ; preds = %54
  %58 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 3), align 4, !dbg !356, !tbaa !281
  %59 = icmp eq i16 %58, 0, !dbg !358
  br i1 %59, label %60, label %67, !dbg !359

; <label>:60:                                     ; preds = %57
  %61 = load i8, i8* @ble_debug_enable, align 1, !dbg !360, !tbaa !271
  %62 = and i8 %61, 1, !dbg !360
  %63 = icmp eq i8 %62, 0, !dbg !360
  br i1 %63, label %66, label %64, !dbg !363

; <label>:64:                                     ; preds = %60
  %65 = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @str.37, i32 0, i32 0)), !dbg !364
  br label %66, !dbg !364

; <label>:66:                                     ; preds = %64, %60
  store i32 0, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !366, !tbaa !285
  br label %330, !dbg !367

; <label>:67:                                     ; preds = %57
  %68 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 4), align 2, !dbg !368, !tbaa !283
  %69 = icmp eq i16 %68, 0, !dbg !370
  br i1 %69, label %79, label %70, !dbg !371

; <label>:70:                                     ; preds = %67
  store i32 3, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !372, !tbaa !285
  %71 = load i8, i8* @ble_debug_enable, align 1, !dbg !374, !tbaa !271
  %72 = and i8 %71, 1, !dbg !374
  %73 = icmp eq i8 %72, 0, !dbg !374
  br i1 %73, label %76, label %74, !dbg !376

; <label>:74:                                     ; preds = %70
  %75 = tail call i32 @puts(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @str.38, i32 0, i32 0)), !dbg !377
  br label %76, !dbg !377

; <label>:76:                                     ; preds = %74, %70
  %77 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !379, !tbaa !279
  %78 = tail call zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)* nonnull @handle_hci_event, i16 zeroext %77, %struct.le_service_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 5)) #9, !dbg !380
  br label %330, !dbg !381

; <label>:79:                                     ; preds = %67
  %80 = load i8, i8* @ble_debug_enable, align 1, !dbg !382, !tbaa !271
  %81 = and i8 %80, 1, !dbg !382
  %82 = icmp eq i8 %81, 0, !dbg !382
  br i1 %82, label %87, label %83, !dbg !385

; <label>:83:                                     ; preds = %79
  %84 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !386, !tbaa !279
  %85 = zext i16 %84 to i32, !dbg !386
  %86 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i32 0, i32 0), i32 %85) #10, !dbg !386
  br label %87, !dbg !386

; <label>:87:                                     ; preds = %83, %79
  store i32 1, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !388, !tbaa !285
  %88 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !389, !tbaa !279
  %89 = tail call zeroext i8 @sm_api_request_pairing(i16 zeroext %88) #9, !dbg !390
  br label %330

; <label>:90:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !391
  %91 = load i8, i8* %2, align 1, !dbg !393, !tbaa !271
  switch i8 %91, label %330 [
    i8 -94, label %92
    i8 -96, label %138
  ], !dbg !394

; <label>:92:                                     ; preds = %90
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %6, metadata !134, metadata !DIExpression(DW_OP_deref)), !dbg !395
  call void @llvm.dbg.value(metadata i8* %2, metadata !396, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %6, metadata !402, metadata !DIExpression()), !dbg !406
  call void @gatt_client_deserialize_characteristic(i8* nonnull %2, i32 4, %struct.le_characteristic_t* nonnull %6) #9, !dbg !407
  %93 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %6, i32 0, i32 5, i32 0, !dbg !408
  %94 = call i32 @memcmp(i8* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ancs_notification_source_uuid, i32 0, i32 0), i32 16) #10, !dbg !410
  %95 = icmp eq i32 %94, 0, !dbg !411
  br i1 %95, label %96, label %108, !dbg !412

; <label>:96:                                     ; preds = %92
  %97 = load i8, i8* @ble_debug_enable, align 1, !dbg !413, !tbaa !271
  %98 = and i8 %97, 1, !dbg !413
  %99 = icmp eq i8 %98, 0, !dbg !413
  br i1 %99, label %105, label %100, !dbg !416

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %6, i32 0, i32 1, !dbg !417
  %102 = load i16, i16* %101, align 2, !dbg !417, !tbaa !419
  %103 = zext i16 %102 to i32, !dbg !417
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i32 %103) #10, !dbg !417
  br label %105, !dbg !417

; <label>:105:                                    ; preds = %100, %96
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.le_characteristic_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 6) to i8*), i8* nonnull %52, i32 26, i32 2, i1 false), !dbg !420, !tbaa.struct !421
  %106 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 9), align 4, !dbg !423, !tbaa !424
  %107 = add nsw i32 %106, 1, !dbg !423
  store i32 %107, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 9), align 4, !dbg !423, !tbaa !424
  br label %330, !dbg !425

; <label>:108:                                    ; preds = %92
  %109 = call i32 @memcmp(i8* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ancs_control_point_uuid, i32 0, i32 0), i32 16) #10, !dbg !426
  %110 = icmp eq i32 %109, 0, !dbg !428
  br i1 %110, label %111, label %123, !dbg !429

; <label>:111:                                    ; preds = %108
  %112 = load i8, i8* @ble_debug_enable, align 1, !dbg !430, !tbaa !271
  %113 = and i8 %112, 1, !dbg !430
  %114 = icmp eq i8 %113, 0, !dbg !430
  br i1 %114, label %120, label %115, !dbg !433

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %6, i32 0, i32 1, !dbg !434
  %117 = load i16, i16* %116, align 2, !dbg !434, !tbaa !419
  %118 = zext i16 %117 to i32, !dbg !434
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i32 %118) #10, !dbg !434
  br label %120, !dbg !434

; <label>:120:                                    ; preds = %115, %111
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.le_characteristic_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 7) to i8*), i8* nonnull %52, i32 26, i32 2, i1 false), !dbg !436, !tbaa.struct !421
  %121 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 9), align 4, !dbg !437, !tbaa !424
  %122 = add nsw i32 %121, 1, !dbg !437
  store i32 %122, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 9), align 4, !dbg !437, !tbaa !424
  br label %330, !dbg !438

; <label>:123:                                    ; preds = %108
  %124 = call i32 @memcmp(i8* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ancs_data_source_uuid, i32 0, i32 0), i32 16) #10, !dbg !439
  %125 = icmp eq i32 %124, 0, !dbg !441
  br i1 %125, label %126, label %330, !dbg !442

; <label>:126:                                    ; preds = %123
  %127 = load i8, i8* @ble_debug_enable, align 1, !dbg !443, !tbaa !271
  %128 = and i8 %127, 1, !dbg !443
  %129 = icmp eq i8 %128, 0, !dbg !443
  br i1 %129, label %135, label %130, !dbg !446

; <label>:130:                                    ; preds = %126
  %131 = getelementptr inbounds %struct.le_characteristic_t, %struct.le_characteristic_t* %6, i32 0, i32 1, !dbg !447
  %132 = load i16, i16* %131, align 2, !dbg !447, !tbaa !419
  %133 = zext i16 %132 to i32, !dbg !447
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0), i32 %133) #10, !dbg !447
  br label %135, !dbg !447

; <label>:135:                                    ; preds = %130, %126
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.le_characteristic_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 8) to i8*), i8* nonnull %52, i32 26, i32 2, i1 false), !dbg !449, !tbaa.struct !421
  %136 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 9), align 4, !dbg !450, !tbaa !424
  %137 = add nsw i32 %136, 1, !dbg !450
  store i32 %137, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 9), align 4, !dbg !450, !tbaa !424
  br label %330, !dbg !451

; <label>:138:                                    ; preds = %90
  %139 = load i8, i8* @ble_debug_enable, align 1, !dbg !452, !tbaa !271
  %140 = and i8 %139, 1, !dbg !452
  %141 = icmp eq i8 %140, 0, !dbg !452
  br i1 %141, label %145, label %142, !dbg !454

; <label>:142:                                    ; preds = %138
  %143 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 9), align 4, !dbg !455, !tbaa !424
  %144 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0), i32 %143) #10, !dbg !455
  br label %145, !dbg !455

; <label>:145:                                    ; preds = %142, %138
  store i32 5, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !457, !tbaa !285
  %146 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !458, !tbaa !279
  tail call void @gatt_client_listen_for_characteristic_value_updates(%struct.gatt_client_notification* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 1), void (i8, i16, i8*, i16)* nonnull @handle_hci_event, i16 zeroext %146, %struct.le_characteristic_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 6)) #9, !dbg !459
  %147 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !460, !tbaa !279
  %148 = tail call zeroext i8 @gatt_client_write_client_characteristic_configuration(void (i8, i16, i8*, i16)* nonnull @handle_hci_event, i16 zeroext %147, %struct.le_characteristic_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 6), i16 zeroext 1) #9, !dbg !461
  br label %330, !dbg !462

; <label>:149:                                    ; preds = %51
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !463
  %150 = load i8, i8* %2, align 1, !dbg !465, !tbaa !271
  %151 = icmp eq i8 %150, -96, !dbg !466
  br i1 %151, label %152, label %330, !dbg !466

; <label>:152:                                    ; preds = %149
  %153 = load i8, i8* @ble_debug_enable, align 1, !dbg !467, !tbaa !271
  %154 = and i8 %153, 1, !dbg !467
  %155 = icmp eq i8 %154, 0, !dbg !467
  br i1 %155, label %158, label %156, !dbg !470

; <label>:156:                                    ; preds = %152
  %157 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.36, i32 0, i32 0)), !dbg !471
  br label %158, !dbg !471

; <label>:158:                                    ; preds = %156, %152
  store i32 4, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !473, !tbaa !285
  %159 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !474, !tbaa !279
  %160 = tail call zeroext i8 @gatt_client_write_client_characteristic_configuration(void (i8, i16, i8*, i16)* nonnull @handle_hci_event, i16 zeroext %159, %struct.le_characteristic_t* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 8), i16 zeroext 1) #9, !dbg !475
  br label %330, !dbg !476

; <label>:161:                                    ; preds = %51
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !477
  %162 = load i8, i8* %2, align 1, !dbg !479, !tbaa !271
  %163 = icmp eq i8 %162, -96, !dbg !480
  br i1 %163, label %164, label %330, !dbg !480

; <label>:164:                                    ; preds = %161
  %165 = load i8, i8* @ble_debug_enable, align 1, !dbg !481, !tbaa !271
  %166 = and i8 %165, 1, !dbg !481
  %167 = icmp eq i8 %166, 0, !dbg !481
  br i1 %167, label %170, label %168, !dbg !484

; <label>:168:                                    ; preds = %164
  %169 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.35, i32 0, i32 0)), !dbg !485
  br label %170, !dbg !485

; <label>:170:                                    ; preds = %168, %164
  store i32 6, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 19), align 4, !dbg !487, !tbaa !285
  tail call fastcc void @notify_client_simple(i32 240) #10, !dbg !488
  br label %330, !dbg !489

; <label>:171:                                    ; preds = %51
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !490
  %172 = load i8, i8* %2, align 1, !dbg !493, !tbaa !271
  %173 = add i8 %172, 89, !dbg !494
  %174 = icmp ult i8 %173, 2, !dbg !494
  br i1 %174, label %175, label %330, !dbg !494

; <label>:175:                                    ; preds = %171
  %176 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 4) #9, !dbg !495
  call void @llvm.dbg.value(metadata i16 %176, metadata !136, metadata !DIExpression()), !dbg !496
  %177 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 6) #9, !dbg !497
  call void @llvm.dbg.value(metadata i16 %177, metadata !137, metadata !DIExpression()), !dbg !498
  %178 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !499
  call void @llvm.dbg.value(metadata i8* %178, metadata !135, metadata !DIExpression()), !dbg !500
  %179 = load i8, i8* @ble_debug_enable, align 1, !dbg !501, !tbaa !271
  %180 = and i8 %179, 1, !dbg !501
  %181 = icmp eq i8 %180, 0, !dbg !501
  br i1 %181, label %185, label %182, !dbg !503

; <label>:182:                                    ; preds = %175
  %183 = zext i16 %176 to i32, !dbg !504
  %184 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i32 0, i32 0), i32 %183) #10, !dbg !504
  br label %185, !dbg !504

; <label>:185:                                    ; preds = %182, %175
  %186 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 8, i32 1), align 2, !dbg !506, !tbaa !507
  %187 = icmp eq i16 %176, %186, !dbg !508
  br i1 %187, label %188, label %285, !dbg !509

; <label>:188:                                    ; preds = %185
  call void @llvm.dbg.value(metadata i32 0, metadata !138, metadata !DIExpression()), !dbg !510
  %189 = zext i16 %177 to i32, !dbg !511
  %190 = icmp eq i16 %177, 0, !dbg !513
  br i1 %190, label %330, label %191, !dbg !514

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i32 0, i32 0
  %193 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i32 0, i32 1
  %194 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i32 0, i32 2
  %195 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i32 0, i32 7
  %196 = bitcast i8* %195 to i16*
  %197 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i32 0, i32 9
  %198 = bitcast i8* %197 to i32*
  br label %199, !dbg !514

; <label>:199:                                    ; preds = %282, %191
  %200 = phi i32 [ 0, %191 ], [ %283, %282 ]
  %201 = getelementptr inbounds i8, i8* %178, i32 %200, !dbg !516
  %202 = load i8, i8* %201, align 1, !dbg !516, !tbaa !271
  call void @llvm.dbg.value(metadata i8 %202, metadata !252, metadata !DIExpression()), !dbg !517
  %203 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 17), align 2, !dbg !518, !tbaa !520
  %204 = icmp eq i16 %203, 0, !dbg !521
  br i1 %204, label %282, label %205, !dbg !522

; <label>:205:                                    ; preds = %199
  %206 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 12), align 4, !dbg !523, !tbaa !525
  %207 = icmp ugt i16 %203, %206, !dbg !523
  br i1 %207, label %214, label %208, !dbg !526

; <label>:208:                                    ; preds = %205
  %209 = load i8, i8* @ble_debug_enable, align 1, !dbg !527, !tbaa !271
  %210 = and i8 %209, 1, !dbg !527
  %211 = icmp eq i8 %210, 0, !dbg !527
  br i1 %211, label %282, label %212, !dbg !531

; <label>:212:                                    ; preds = %208
  %213 = call i32 @puts(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @str.41, i32 0, i32 0)) #8, !dbg !533
  br label %282, !dbg !533

; <label>:214:                                    ; preds = %205
  %215 = zext i16 %206 to i32, !dbg !523
  %216 = load i8*, i8** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 18), align 4, !dbg !535, !tbaa !536
  %217 = add i16 %206, 1, !dbg !537
  store i16 %217, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 12), align 4, !dbg !537, !tbaa !525
  %218 = getelementptr inbounds i8, i8* %216, i32 %215, !dbg !538
  store i8 %202, i8* %218, align 1, !dbg !539, !tbaa !271
  %219 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 12), align 4, !dbg !540, !tbaa !525
  %220 = zext i16 %219 to i32, !dbg !542
  %221 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 13), align 2, !dbg !543, !tbaa !544
  %222 = icmp ult i16 %219, %221, !dbg !545
  br i1 %222, label %282, label %223, !dbg !546

; <label>:223:                                    ; preds = %214
  %224 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 20), align 4, !dbg !547, !tbaa !548
  switch i32 %224, label %282 [
    i32 0, label %225
    i32 1, label %233
    i32 2, label %250
  ], !dbg !549

; <label>:225:                                    ; preds = %223
  %226 = load i8*, i8** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 18), align 4, !dbg !550, !tbaa !536
  %227 = add nsw i32 %220, -1, !dbg !551
  %228 = getelementptr inbounds i8, i8* %226, i32 %227, !dbg !552
  %229 = load i8, i8* %228, align 1, !dbg !552, !tbaa !271
  store i8 %229, i8* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 16), align 4, !dbg !553, !tbaa !554
  %230 = icmp eq i8 %229, 0, !dbg !555
  br i1 %230, label %231, label %232, !dbg !557

; <label>:231:                                    ; preds = %225
  call void @ancs_update_status(i8 zeroext 1) #9, !dbg !558
  br label %232, !dbg !560

; <label>:232:                                    ; preds = %231, %225
  store i16 0, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 12), align 4, !dbg !561, !tbaa !525
  store i16 2, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 13), align 2, !dbg !562, !tbaa !544
  store i32 1, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 20), align 4, !dbg !563, !tbaa !548
  br label %282, !dbg !564

; <label>:233:                                    ; preds = %223
  %234 = load i8*, i8** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 18), align 4, !dbg !565, !tbaa !536
  %235 = add nsw i32 %220, -2, !dbg !566
  %236 = call zeroext i16 @little_endian_read_16(i8* %234, i32 %235) #9, !dbg !567
  store i16 %236, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 14), align 4, !dbg !568, !tbaa !569
  store i16 0, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 12), align 4, !dbg !570, !tbaa !525
  store i16 %236, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 13), align 2, !dbg !571, !tbaa !544
  %237 = zext i16 %236 to i32, !dbg !572
  %238 = icmp eq i16 %236, 0, !dbg !574
  br i1 %238, label %239, label %240, !dbg !575

; <label>:239:                                    ; preds = %233
  store i16 1, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 13), align 2, !dbg !576, !tbaa !544
  store i32 0, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 20), align 4, !dbg !578, !tbaa !548
  br label %282, !dbg !579

; <label>:240:                                    ; preds = %233
  %241 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 17), align 2, !dbg !580, !tbaa !520
  %242 = zext i16 %241 to i32, !dbg !582
  %243 = add nsw i32 %242, -1, !dbg !583
  %244 = icmp sgt i32 %237, %243, !dbg !584
  br i1 %244, label %245, label %249, !dbg !585

; <label>:245:                                    ; preds = %240
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i32 %237, i32 %243) #9, !dbg !586
  %247 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 17), align 2, !dbg !588, !tbaa !520
  %248 = add i16 %247, -1, !dbg !589
  store i16 %248, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 14), align 4, !dbg !590, !tbaa !569
  br label %249, !dbg !591

; <label>:249:                                    ; preds = %245, %240
  store i32 2, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 20), align 4, !dbg !592, !tbaa !548
  br label %282, !dbg !593

; <label>:250:                                    ; preds = %223
  %251 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 17), align 2, !dbg !594, !tbaa !520
  %252 = icmp ugt i16 %251, %219, !dbg !594
  br i1 %252, label %259, label %253, !dbg !596

; <label>:253:                                    ; preds = %250
  %254 = load i8, i8* @ble_debug_enable, align 1, !dbg !597, !tbaa !271
  %255 = and i8 %254, 1, !dbg !597
  %256 = icmp eq i8 %255, 0, !dbg !597
  br i1 %256, label %282, label %257, !dbg !601

; <label>:257:                                    ; preds = %253
  %258 = call i32 @puts(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @str.41, i32 0, i32 0)) #8, !dbg !603
  br label %282, !dbg !603

; <label>:259:                                    ; preds = %250
  %260 = load i8*, i8** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 18), align 4, !dbg !605, !tbaa !536
  %261 = getelementptr inbounds i8, i8* %260, i32 %220, !dbg !606
  store i8 0, i8* %261, align 1, !dbg !607, !tbaa !271
  call void @llvm.dbg.value(metadata i32 241, metadata !241, metadata !DIExpression()), !dbg !608
  %262 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 10), align 4, !dbg !609, !tbaa !179
  %263 = icmp eq void (i8, i16, i8*, i16)* %262, null, !dbg !611
  %264 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 17), align 2, !dbg !612
  %265 = icmp eq i16 %264, 0, !dbg !614
  %266 = or i1 %263, %265, !dbg !615
  br i1 %266, label %277, label %267, !dbg !615

; <label>:267:                                    ; preds = %259
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %192) #8, !dbg !616
  store i8 -22, i8* %192, align 1, !dbg !617, !tbaa !271
  store i8 11, i8* %193, align 1, !dbg !618, !tbaa !271
  store i8 -15, i8* %194, align 1, !dbg !619, !tbaa !271
  %268 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !620, !tbaa !279
  call void @little_endian_store_16(i8* nonnull %192, i16 zeroext 3, i16 zeroext %268) #9, !dbg !621
  %269 = load i8, i8* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 16), align 4, !dbg !622, !tbaa !554
  %270 = zext i8 %269 to i16, !dbg !623
  call void @little_endian_store_16(i8* nonnull %192, i16 zeroext 5, i16 zeroext %270) #9, !dbg !624
  %271 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 14), align 4, !dbg !625
  store i16 %271, i16* %196, align 1, !dbg !625
  %272 = load i32, i32* bitcast (i8** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 18) to i32*), align 4, !dbg !626
  store i32 %272, i32* %198, align 1, !dbg !626
  %273 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 10), align 4, !dbg !627, !tbaa !179
  %274 = load i8, i8* %193, align 1, !dbg !628, !tbaa !271
  %275 = zext i8 %274 to i16, !dbg !628
  %276 = add nuw nsw i16 %275, 2, !dbg !629
  call void %273(i8 zeroext 4, i16 zeroext 0, i8* nonnull %192, i16 zeroext %276) #9, !dbg !630
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %192) #8, !dbg !631
  br label %277, !dbg !631

; <label>:277:                                    ; preds = %267, %259
  %278 = load i8, i8* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 16), align 4, !dbg !632, !tbaa !554
  %279 = icmp eq i8 %278, 5, !dbg !634
  br i1 %279, label %280, label %281, !dbg !635

; <label>:280:                                    ; preds = %277
  call void @ancs_update_status(i8 zeroext 2) #9, !dbg !636
  br label %281, !dbg !638

; <label>:281:                                    ; preds = %280, %277
  store i16 0, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 12), align 4, !dbg !639, !tbaa !525
  store i16 1, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 13), align 2, !dbg !640, !tbaa !544
  store i32 0, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 20), align 4, !dbg !641, !tbaa !548
  br label %282, !dbg !642

; <label>:282:                                    ; preds = %281, %257, %253, %249, %239, %232, %223, %214, %212, %208, %199
  %283 = add nuw nsw i32 %200, 1, !dbg !643
  call void @llvm.dbg.value(metadata i32 %283, metadata !138, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i32 %283, metadata !138, metadata !DIExpression()), !dbg !510
  %284 = icmp eq i32 %283, %189, !dbg !513
  br i1 %284, label %329, label %199, !dbg !514, !llvm.loop !645

; <label>:285:                                    ; preds = %185
  %286 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 6, i32 1), align 2, !dbg !648, !tbaa !651
  %287 = icmp eq i16 %176, %286, !dbg !652
  br i1 %287, label %288, label %315, !dbg !653

; <label>:288:                                    ; preds = %285
  %289 = tail call i32 @little_endian_read_32(i8* %178, i32 4) #9, !dbg !655
  store i32 %289, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 0), align 4, !dbg !657, !tbaa !220
  %290 = load i8, i8* @ble_debug_enable, align 1, !dbg !658, !tbaa !271
  %291 = and i8 %290, 1, !dbg !658
  %292 = icmp eq i8 %291, 0, !dbg !658
  br i1 %292, label %307, label %293, !dbg !660

; <label>:293:                                    ; preds = %288
  %294 = load i8, i8* %178, align 1, !dbg !661, !tbaa !271
  %295 = zext i8 %294 to i32, !dbg !661
  %296 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !661
  %297 = load i8, i8* %296, align 1, !dbg !661, !tbaa !271
  %298 = zext i8 %297 to i32, !dbg !661
  %299 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !661
  %300 = load i8, i8* %299, align 1, !dbg !661, !tbaa !271
  %301 = zext i8 %300 to i32, !dbg !661
  %302 = getelementptr inbounds i8, i8* %2, i32 11, !dbg !661
  %303 = load i8, i8* %302, align 1, !dbg !661, !tbaa !271
  %304 = zext i8 %303 to i32, !dbg !661
  %305 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.27, i32 0, i32 0), i32 %295, i32 %298, i32 %301, i32 %304, i32 %289) #10, !dbg !661
  %306 = load i32, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 0), align 4, !tbaa !220
  br label %307, !dbg !661

; <label>:307:                                    ; preds = %293, %288
  %308 = phi i32 [ %289, %288 ], [ %306, %293 ], !dbg !663
  tail call void @little_endian_store_32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @handle_hci_event.get_notification_attributes, i32 0, i32 0), i16 zeroext 1, i32 %308) #9, !dbg !664
  store i32 0, i32* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 20), align 4, !dbg !665, !tbaa !548
  store i16 0, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 12), align 4, !dbg !668, !tbaa !525
  store i16 6, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 13), align 2, !dbg !669, !tbaa !544
  %309 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !670, !tbaa !279
  %310 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 7, i32 1), align 2, !dbg !671, !tbaa !226
  %311 = tail call zeroext i8 @gatt_client_write_value_of_characteristic(void (i8, i16, i8*, i16)* nonnull @handle_hci_event, i16 zeroext %309, i16 zeroext %310, i16 zeroext 17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @handle_hci_event.get_notification_attributes, i32 0, i32 0)) #9, !dbg !672
  %312 = load void (i8*, i16)*, void (i8*, i16)** @ancs_out_callback, align 4, !dbg !673, !tbaa !202
  %313 = icmp eq void (i8*, i16)* %312, null, !dbg !673
  br i1 %313, label %330, label %314, !dbg !675

; <label>:314:                                    ; preds = %307
  tail call void %312(i8* %2, i16 zeroext %3) #9, !dbg !676
  br label %330, !dbg !678

; <label>:315:                                    ; preds = %285
  %316 = load i8, i8* @ble_debug_enable, align 1, !dbg !679, !tbaa !271
  %317 = and i8 %316, 1, !dbg !679
  %318 = icmp eq i8 %317, 0, !dbg !679
  br i1 %318, label %322, label %319, !dbg !682

; <label>:319:                                    ; preds = %315
  %320 = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str.34, i32 0, i32 0)), !dbg !683
  %321 = load i8, i8* @ble_debug_enable, align 1, !tbaa !271
  br label %322, !dbg !683

; <label>:322:                                    ; preds = %319, %315
  %323 = phi i8 [ %316, %315 ], [ %321, %319 ], !dbg !685
  %324 = and i8 %323, 2, !dbg !685
  %325 = icmp eq i8 %324, 0, !dbg !685
  br i1 %325, label %330, label %326, !dbg !687

; <label>:326:                                    ; preds = %322
  %327 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.33, i32 0, i32 0)), !dbg !688
  %328 = zext i16 %177 to i32, !dbg !688
  tail call void @put_buf(i8* %178, i32 %328) #9, !dbg !691
  br label %330, !dbg !688

; <label>:329:                                    ; preds = %282
  br label %330, !dbg !693

; <label>:330:                                    ; preds = %329, %326, %322, %314, %307, %188, %171, %170, %161, %158, %149, %145, %135, %123, %120, %105, %90, %87, %76, %66, %56, %54, %51
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %52) #8, !dbg !693
  br label %331, !dbg !693

; <label>:331:                                    ; preds = %330, %46, %28, %15, %12, %8
  ret void, !dbg !694
}

; Function Attrs: optsize
declare void @hci_add_event_handler(i8*) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden void @ancs_set_notification_buffer(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !698, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i16 %1, metadata !699, metadata !DIExpression()), !dbg !701
  %3 = load i32, i32* @config_asser, align 4, !dbg !702, !tbaa !706
  %4 = icmp eq i32 %3, 0, !dbg !702
  %5 = icmp ugt i16 %1, 31
  br i1 %4, label %10, label %6, !dbg !707

; <label>:6:                                      ; preds = %2
  br i1 %5, label %12, label %7, !dbg !709

; <label>:7:                                      ; preds = %6
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i32 0, i32 0), i32 482) #10, !dbg !712
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !716
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !718
  br label %12, !dbg !712

; <label>:10:                                     ; preds = %2
  br i1 %5, label %12, label %11, !dbg !720

; <label>:11:                                     ; preds = %10
  tail call void @p33_soft_reset() #9, !dbg !723
  br label %12, !dbg !730

; <label>:12:                                     ; preds = %11, %10, %7, %6
  store i16 %1, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 17), align 2, !dbg !731, !tbaa !520
  store i8* %0, i8** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 18), align 4, !dbg !732, !tbaa !536
  ret void, !dbg !733
}

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gatt_client_discover_primary_services_by_uuid128(void (i8, i16, i8*, i16)*, i16 zeroext, i8*) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_service_t*) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define internal fastcc void @notify_client_simple(i32) unnamed_addr #0 !dbg !734 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !736, metadata !DIExpression()), !dbg !741
  %3 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 10), align 4, !dbg !742, !tbaa !179
  %4 = icmp eq void (i8, i16, i8*, i16)* %3, null, !dbg !744
  br i1 %4, label %12, label %5, !dbg !745

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !746
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %6) #8, !dbg !746
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !737, metadata !DIExpression()), !dbg !747
  store i8 -22, i8* %6, align 1, !dbg !748, !tbaa !271
  %7 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 1, !dbg !749
  store i8 3, i8* %7, align 1, !dbg !750, !tbaa !271
  %8 = trunc i32 %0 to i8, !dbg !751
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 2, !dbg !752
  store i8 %8, i8* %9, align 1, !dbg !753, !tbaa !271
  %10 = load i16, i16* getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 15), align 2, !dbg !754, !tbaa !279
  call void @little_endian_store_16(i8* nonnull %6, i16 zeroext 3, i16 zeroext %10) #9, !dbg !755
  %11 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.ancs_info_t, %struct.ancs_info_t* @ancs_client_global_info, i32 0, i32 10), align 4, !dbg !756, !tbaa !179
  call void %11(i8 zeroext 4, i16 zeroext 0, i8* nonnull %6, i16 zeroext 5) #9, !dbg !757
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %6) #8, !dbg !758
  br label %12, !dbg !758

; <label>:12:                                     ; preds = %5, %1
  ret void, !dbg !759
}

; Function Attrs: optsize
declare zeroext i8 @sm_api_request_pairing(i16 zeroext) local_unnamed_addr #6

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: optsize
declare void @gatt_client_listen_for_characteristic_value_updates(%struct.gatt_client_notification*, void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t*) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gatt_client_write_client_characteristic_configuration(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t*, i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @little_endian_read_32(i8*, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare void @little_endian_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gatt_client_write_value_of_characteristic(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #6

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare void @little_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gatt_client_deserialize_service(i8*, i32, %struct.le_service_t*) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gatt_client_deserialize_characteristic(i8*, i32, %struct.le_characteristic_t*) local_unnamed_addr #6

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!156, !157}
!llvm.ident = !{!158}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !155, line: 190, type: !21, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !22)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BLE/ancs_client.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 74, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "TC_IDLE", value: 0)
!8 = !DIEnumerator(name: "TC_W4_ENCRYPTED_CONNECTION", value: 1)
!9 = !DIEnumerator(name: "TC_W4_SERVICE_RESULT", value: 2)
!10 = !DIEnumerator(name: "TC_W4_CHARACTERISTIC_RESULT", value: 3)
!11 = !DIEnumerator(name: "TC_W4_DATA_SOURCE_SUBSCRIBED", value: 4)
!12 = !DIEnumerator(name: "TC_W4_NOTIFICATION_SOURCE_SUBSCRIBED", value: 5)
!13 = !DIEnumerator(name: "TC_SUBSCRIBED", value: 6)
!14 = !DIEnumerator(name: "TC_W4_DISCONNECT", value: 7)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ancs_chunk_parser_state", file: !3, line: 68, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "W4_ATTRIBUTE_ID", value: 0)
!18 = !DIEnumerator(name: "W4_ATTRIBUTE_LEN", value: 1)
!19 = !DIEnumerator(name: "W4_ATTRIBUTE_COMPLETE", value: 2)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!0, !23, !26, !110, !118, !125, !145, !149, !151, !153}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "ANCS_ATTRBUTE_NAMES_COUNT", scope: !2, file: !3, line: 95, type: !25, isLocal: true, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "ancs_client_global_info", scope: !2, file: !3, line: 129, type: !28, isLocal: true, isDefinition: true)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "ancs_info_t", file: !3, line: 127, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 104, size: 1376, elements: !30)
!30 = !{!31, !35, !63, !64, !66, !67, !79, !89, !90, !91, !92, !93, !99, !100, !101, !102, !103, !104, !105, !106, !108}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_notification_uid", scope: !29, file: !3, line: 105, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 48, baseType: !34)
!33 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_notification_source_notification", scope: !29, file: !3, line: 106, baseType: !36, size: 96, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_notification_t", file: !37, line: 198, baseType: !38)
!37 = !DIFile(filename: "../btstack/Protocol/include/ble/gatt_client.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_client_notification", file: !37, line: 193, size: 96, elements: !39)
!39 = !{!40, !48, !59, !62}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !38, file: !37, line: 194, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !42, line: 100, baseType: !43)
!42 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !42, line: 55, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !42, line: 53, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !42, line: 54, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !38, file: !37, line: 195, baseType: !49, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !50, line: 58, baseType: !51)
!50 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !56, !58, !56}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !33, line: 44, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !33, line: 46, baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !38, file: !37, line: 196, baseType: !60, size: 16, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !61, line: 60, baseType: !56)
!61 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_handle", scope: !38, file: !37, line: 197, baseType: !56, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_data_source_notification", scope: !29, file: !3, line: 107, baseType: !36, size: 96, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_service_found", scope: !29, file: !3, line: 108, baseType: !65, size: 16, offset: 224)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 46, baseType: !57)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_encrypted_complete", scope: !29, file: !3, line: 109, baseType: !65, size: 16, offset: 240)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_service", scope: !29, file: !3, line: 110, baseType: !68, size: 176, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_service_t", file: !69, line: 24, baseType: !70)
!69 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/gatt.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 19, size: 176, elements: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "start_group_handle", scope: !70, file: !69, line: 20, baseType: !56, size: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "end_group_handle", scope: !70, file: !69, line: 21, baseType: !56, size: 16, offset: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !70, file: !69, line: 22, baseType: !56, size: 16, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !70, file: !69, line: 23, baseType: !76, size: 128, offset: 48)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 16)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_notification_source_characteristic", scope: !29, file: !3, line: 111, baseType: !80, size: 208, offset: 432)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_characteristic_t", file: !69, line: 34, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 27, size: 208, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "start_handle", scope: !81, file: !69, line: 28, baseType: !56, size: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "value_handle", scope: !81, file: !69, line: 29, baseType: !56, size: 16, offset: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "end_handle", scope: !81, file: !69, line: 30, baseType: !56, size: 16, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !81, file: !69, line: 31, baseType: !56, size: 16, offset: 48)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !81, file: !69, line: 32, baseType: !56, size: 16, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !81, file: !69, line: 33, baseType: !76, size: 128, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_control_point_characteristic", scope: !29, file: !3, line: 112, baseType: !80, size: 208, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_data_source_characteristic", scope: !29, file: !3, line: 113, baseType: !80, size: 208, offset: 848)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_characteristcs", scope: !29, file: !3, line: 114, baseType: !21, size: 32, offset: 1056)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "client_handler", scope: !29, file: !3, line: 115, baseType: !49, size: 32, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "hci_event_callback_registration", scope: !29, file: !3, line: 116, baseType: !94, size: 64, offset: 1120)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_callback_registration_t", file: !50, line: 64, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 61, size: 64, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !95, file: !50, line: 62, baseType: !41, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !95, file: !50, line: 63, baseType: !49, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_bytes_received", scope: !29, file: !3, line: 118, baseType: !56, size: 16, offset: 1184)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_bytes_needed", scope: !29, file: !3, line: 119, baseType: !56, size: 16, offset: 1200)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_attribute_len", scope: !29, file: !3, line: 120, baseType: !56, size: 16, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "gc_handle", scope: !29, file: !3, line: 121, baseType: !56, size: 16, offset: 1232)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_attribute_id", scope: !29, file: !3, line: 122, baseType: !54, size: 8, offset: 1248)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_notification_buffer_size", scope: !29, file: !3, line: 123, baseType: !56, size: 16, offset: 1264)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ancs_notification_buffer", scope: !29, file: !3, line: 124, baseType: !58, size: 32, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tc_state", scope: !29, file: !3, line: 125, baseType: !107, size: 32, offset: 1312)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "tc_state_t", file: !3, line: 83, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_parser_state", scope: !29, file: !3, line: 126, baseType: !109, size: 32, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ancs_chunk_parser_state_t", file: !3, line: 72, baseType: !15)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "ancs_attribute_names", scope: !2, file: !3, line: 85, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !116)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!116 = !{!117}
!117 = !DISubrange(count: 8)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "ancs_out_callback", scope: !2, file: !3, line: 97, type: !120, isLocal: true, isDefinition: true)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !65}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 44, baseType: !55)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "get_notification_attributes", scope: !127, file: !3, line: 440, type: !142, isLocal: true, isDefinition: true)
!127 = distinct !DISubprogram(name: "handle_hci_event", scope: !3, file: !3, line: 262, type: !52, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!129 = !DILocalVariable(name: "packet_type", arg: 1, scope: !127, file: !3, line: 262, type: !54)
!130 = !DILocalVariable(name: "channel", arg: 2, scope: !127, file: !3, line: 262, type: !56)
!131 = !DILocalVariable(name: "packet", arg: 3, scope: !127, file: !3, line: 262, type: !58)
!132 = !DILocalVariable(name: "size", arg: 4, scope: !127, file: !3, line: 262, type: !56)
!133 = !DILocalVariable(name: "connection_encrypted", scope: !127, file: !3, line: 269, type: !21)
!134 = !DILocalVariable(name: "characteristic", scope: !127, file: !3, line: 324, type: !80)
!135 = !DILocalVariable(name: "value", scope: !127, file: !3, line: 325, type: !58)
!136 = !DILocalVariable(name: "value_handle", scope: !127, file: !3, line: 326, type: !56)
!137 = !DILocalVariable(name: "value_length", scope: !127, file: !3, line: 327, type: !56)
!138 = !DILocalVariable(name: "i", scope: !139, file: !3, line: 430, type: !21)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 429, column: 83)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 429, column: 13)
!141 = distinct !DILexicalBlock(scope: !127, file: !3, line: 329, column: 31)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 136, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 17)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "ancs_service_uuid", scope: !2, file: !3, line: 99, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, elements: !77)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "ancs_notification_source_uuid", scope: !2, file: !3, line: 100, type: !147, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "ancs_control_point_uuid", scope: !2, file: !3, line: 101, type: !147, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "ancs_data_source_uuid", scope: !2, file: !3, line: 102, type: !147, isLocal: true, isDefinition: true)
!155 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!156 = !{i32 2, !"Dwarf Version", i32 4}
!157 = !{i32 2, !"Debug Info Version", i32 3}
!158 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!159 = distinct !DISubprogram(name: "ancs_update_status", scope: !3, file: !3, line: 133, type: !160, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !124}
!162 = !{!163}
!163 = !DILocalVariable(name: "status", arg: 1, scope: !159, file: !3, line: 133, type: !124)
!164 = !DILocation(line: 133, column: 28, scope: !159)
!165 = !DILocation(line: 135, column: 5, scope: !159)
!166 = !DILocation(line: 137, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !159, file: !3, line: 135, column: 21)
!168 = !DILocation(line: 138, column: 9, scope: !167)
!169 = !DILocation(line: 140, column: 9, scope: !167)
!170 = !DILocation(line: 141, column: 9, scope: !167)
!171 = !DILocation(line: 145, column: 1, scope: !159)
!172 = distinct !DISubprogram(name: "ancs_client_register_callback", scope: !3, file: !3, line: 147, type: !173, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !49}
!175 = !{!176}
!176 = !DILocalVariable(name: "handler", arg: 1, scope: !172, file: !3, line: 147, type: !49)
!177 = !DILocation(line: 147, column: 61, scope: !172)
!178 = !DILocation(line: 149, column: 28, scope: !172)
!179 = !{!180, !186, i64 136}
!180 = !{!"", !181, i64 0, !184, i64 4, !184, i64 16, !187, i64 28, !187, i64 30, !188, i64 32, !189, i64 54, !189, i64 80, !189, i64 106, !181, i64 132, !186, i64 136, !190, i64 140, !187, i64 148, !187, i64 150, !187, i64 152, !187, i64 154, !182, i64 156, !187, i64 158, !186, i64 160, !182, i64 164, !182, i64 168}
!181 = !{!"int", !182, i64 0}
!182 = !{!"omnipotent char", !183, i64 0}
!183 = !{!"Simple C/C++ TBAA"}
!184 = !{!"gatt_client_notification", !185, i64 0, !186, i64 4, !187, i64 8, !187, i64 10}
!185 = !{!"btstack_linked_item", !186, i64 0}
!186 = !{!"any pointer", !182, i64 0}
!187 = !{!"short", !182, i64 0}
!188 = !{!"", !187, i64 0, !187, i64 2, !187, i64 4, !182, i64 6}
!189 = !{!"", !187, i64 0, !187, i64 2, !187, i64 4, !187, i64 6, !187, i64 8, !182, i64 10}
!190 = !{!"", !185, i64 0, !186, i64 4}
!191 = !DILocation(line: 150, column: 1, scope: !172)
!192 = distinct !DISubprogram(name: "ancs_client_attribute_name_for_id", scope: !3, file: !3, line: 199, type: !193, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!113, !21}
!195 = !{!196}
!196 = !DILocalVariable(name: "id", arg: 1, scope: !192, file: !3, line: 199, type: !21)
!197 = !DILocation(line: 199, column: 51, scope: !192)
!198 = !DILocation(line: 201, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 201, column: 9)
!200 = !DILocation(line: 201, column: 9, scope: !192)
!201 = !DILocation(line: 204, column: 12, scope: !192)
!202 = !{!186, !186, i64 0}
!203 = !DILocation(line: 204, column: 5, scope: !192)
!204 = !DILocation(line: 205, column: 1, scope: !192)
!205 = distinct !DISubprogram(name: "ancs_set_out_callback", scope: !3, file: !3, line: 460, type: !206, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !209)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!209 = !{!210}
!210 = !DILocalVariable(name: "cb", arg: 1, scope: !205, file: !3, line: 460, type: !208)
!211 = !DILocation(line: 460, column: 34, scope: !205)
!212 = !DILocation(line: 462, column: 23, scope: !205)
!213 = !DILocation(line: 463, column: 1, scope: !205)
!214 = distinct !DISubprogram(name: "get_notification_uid", scope: !3, file: !3, line: 465, type: !215, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !218)
!215 = !DISubroutineType(types: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 48, baseType: !34)
!218 = !{}
!219 = !DILocation(line: 467, column: 20, scope: !214)
!220 = !{!180, !181, i64 0}
!221 = !DILocation(line: 467, column: 5, scope: !214)
!222 = distinct !DISubprogram(name: "get_controlpoint_handle", scope: !3, file: !3, line: 469, type: !223, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !218)
!223 = !DISubroutineType(types: !224)
!224 = !{!65}
!225 = !DILocation(line: 471, column: 55, scope: !222)
!226 = !{!180, !187, i64 82}
!227 = !DILocation(line: 471, column: 5, scope: !222)
!228 = distinct !DISubprogram(name: "ancs_client_init", scope: !3, file: !3, line: 473, type: !229, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !218)
!229 = !DISubroutineType(types: !230)
!230 = !{null}
!231 = !DILocation(line: 475, column: 5, scope: !228)
!232 = !DILocation(line: 476, column: 54, scope: !228)
!233 = !{!180, !186, i64 144}
!234 = !DILocation(line: 477, column: 5, scope: !228)
!235 = !DILocation(line: 478, column: 1, scope: !228)
!236 = !DILocalVariable(name: "event", scope: !237, file: !3, line: 163, type: !242)
!237 = distinct !DISubprogram(name: "notify_client_text", scope: !3, file: !3, line: 152, type: !238, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !21}
!240 = !{!241, !236}
!241 = !DILocalVariable(name: "event_type", arg: 1, scope: !237, file: !3, line: 152, type: !21)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 104, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 13)
!245 = !DILocation(line: 163, column: 13, scope: !237, inlinedAt: !246)
!246 = distinct !DILocation(line: 251, column: 9, scope: !247, inlinedAt: !253)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 220, column: 41)
!248 = distinct !DISubprogram(name: "ancs_chunk_parser_handle_byte", scope: !3, file: !3, line: 207, type: !249, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !54}
!251 = !{!252}
!252 = !DILocalVariable(name: "data", arg: 1, scope: !248, file: !3, line: 207, type: !54)
!253 = distinct !DILocation(line: 433, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 432, column: 48)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 432, column: 13)
!256 = distinct !DILexicalBlock(scope: !139, file: !3, line: 432, column: 13)
!257 = !DILocation(line: 262, column: 38, scope: !127)
!258 = !DILocation(line: 262, column: 60, scope: !127)
!259 = !DILocation(line: 262, column: 78, scope: !127)
!260 = !DILocation(line: 262, column: 95, scope: !127)
!261 = !DILocalVariable(name: "event", arg: 1, scope: !262, file: !263, line: 38, type: !266)
!262 = distinct !DISubprogram(name: "hci_event_packet_get_type", scope: !263, file: !263, line: 38, type: !264, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !267)
!263 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!264 = !DISubroutineType(types: !265)
!265 = !{!54, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!267 = !{!261}
!268 = !DILocation(line: 38, column: 68, scope: !262, inlinedAt: !269)
!269 = distinct !DILocation(line: 272, column: 13, scope: !127)
!270 = !DILocation(line: 40, column: 16, scope: !262, inlinedAt: !269)
!271 = !{!182, !182, i64 0}
!272 = !DILocation(line: 272, column: 5, scope: !127)
!273 = !DILocation(line: 274, column: 17, scope: !274)
!274 = distinct !DILexicalBlock(scope: !127, file: !3, line: 272, column: 48)
!275 = !DILocation(line: 274, column: 9, scope: !274)
!276 = !DILocation(line: 276, column: 33, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !3, line: 274, column: 28)
!278 = !DILocation(line: 276, column: 31, scope: !277)
!279 = !{!180, !187, i64 154}
!280 = !DILocation(line: 279, column: 40, scope: !277)
!281 = !{!180, !187, i64 28}
!282 = !DILocation(line: 280, column: 45, scope: !277)
!283 = !{!180, !187, i64 30}
!284 = !DILocation(line: 281, column: 30, scope: !277)
!285 = !{!180, !182, i64 164}
!286 = !DILocation(line: 282, column: 13, scope: !277)
!287 = !DILocation(line: 283, column: 13, scope: !277)
!288 = !DILocation(line: 291, column: 21, scope: !289)
!289 = distinct !DILexicalBlock(scope: !274, file: !3, line: 291, column: 13)
!290 = !DILocation(line: 291, column: 34, scope: !289)
!291 = !DILocation(line: 291, column: 31, scope: !289)
!292 = !DILocation(line: 291, column: 13, scope: !274)
!293 = !DILocation(line: 294, column: 32, scope: !274)
!294 = !DILocation(line: 269, column: 9, scope: !127)
!295 = !DILocation(line: 295, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !274, file: !3, line: 295, column: 9)
!297 = !DILocation(line: 295, column: 9, scope: !274)
!298 = !DILocation(line: 295, column: 9, scope: !299)
!299 = !DILexicalBlockFile(scope: !296, file: !3, discriminator: 1)
!300 = !DILocation(line: 296, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !274, file: !3, line: 296, column: 13)
!302 = !DILocation(line: 296, column: 13, scope: !274)
!303 = !DILocation(line: 300, column: 41, scope: !274)
!304 = !DILocation(line: 302, column: 21, scope: !305)
!305 = distinct !DILexicalBlock(scope: !274, file: !3, line: 302, column: 13)
!306 = !DILocation(line: 302, column: 30, scope: !305)
!307 = !DILocation(line: 302, column: 13, scope: !274)
!308 = !DILocation(line: 304, column: 30, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 302, column: 61)
!310 = !DILocation(line: 305, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !3, line: 305, column: 13)
!312 = !DILocation(line: 305, column: 13, scope: !309)
!313 = !DILocation(line: 305, column: 13, scope: !314)
!314 = !DILexicalBlockFile(scope: !311, file: !3, discriminator: 1)
!315 = !DILocation(line: 306, column: 88, scope: !309)
!316 = !DILocation(line: 306, column: 13, scope: !309)
!317 = !DILocation(line: 307, column: 9, scope: !309)
!318 = !DILocalVariable(name: "event", arg: 1, scope: !319, file: !263, line: 322, type: !266)
!319 = distinct !DISubprogram(name: "hci_event_disconnection_complete_get_connection_handle", scope: !263, file: !263, line: 322, type: !320, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!56, !266}
!322 = !{!318}
!323 = !DILocation(line: 322, column: 98, scope: !319, inlinedAt: !324)
!324 = distinct !DILocation(line: 311, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !274, file: !3, line: 311, column: 13)
!326 = !DILocation(line: 324, column: 16, scope: !319, inlinedAt: !324)
!327 = !DILocation(line: 311, column: 87, scope: !325)
!328 = !DILocation(line: 311, column: 76, scope: !325)
!329 = !DILocation(line: 311, column: 13, scope: !274)
!330 = !DILocation(line: 314, column: 60, scope: !274)
!331 = !DILocation(line: 314, column: 9, scope: !274)
!332 = !DILocation(line: 315, column: 9, scope: !274)
!333 = !DILocation(line: 316, column: 26, scope: !274)
!334 = !DILocation(line: 317, column: 27, scope: !274)
!335 = !DILocation(line: 318, column: 9, scope: !274)
!336 = !DILocation(line: 324, column: 5, scope: !127)
!337 = !DILocation(line: 329, column: 21, scope: !127)
!338 = !DILocation(line: 329, column: 5, scope: !127)
!339 = !DILocation(line: 38, column: 68, scope: !262, inlinedAt: !340)
!340 = distinct !DILocation(line: 331, column: 17, scope: !141)
!341 = !DILocation(line: 40, column: 16, scope: !262, inlinedAt: !340)
!342 = !DILocation(line: 331, column: 9, scope: !141)
!343 = !DILocalVariable(name: "service", arg: 2, scope: !344, file: !263, line: 1919, type: !347)
!344 = distinct !DISubprogram(name: "gatt_event_service_query_result_get_service", scope: !263, file: !263, line: 1919, type: !345, isLocal: true, isDefinition: true, scopeLine: 1920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !348)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !266, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!348 = !{!349, !343}
!349 = !DILocalVariable(name: "event", arg: 1, scope: !344, file: !263, line: 1919, type: !266)
!350 = !DILocation(line: 1919, column: 113, scope: !344, inlinedAt: !351)
!351 = distinct !DILocation(line: 333, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !141, file: !3, line: 331, column: 52)
!353 = !DILocation(line: 1921, column: 9, scope: !344, inlinedAt: !351)
!354 = !DILocation(line: 334, column: 40, scope: !352)
!355 = !DILocation(line: 335, column: 13, scope: !352)
!356 = !DILocation(line: 337, column: 26, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 337, column: 17)
!358 = !DILocation(line: 337, column: 18, scope: !357)
!359 = !DILocation(line: 337, column: 17, scope: !352)
!360 = !DILocation(line: 338, column: 17, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 338, column: 17)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 337, column: 46)
!363 = !DILocation(line: 338, column: 17, scope: !362)
!364 = !DILocation(line: 338, column: 17, scope: !365)
!365 = !DILexicalBlockFile(scope: !361, file: !3, discriminator: 1)
!366 = !DILocation(line: 339, column: 34, scope: !362)
!367 = !DILocation(line: 340, column: 17, scope: !362)
!368 = !DILocation(line: 343, column: 25, scope: !369)
!369 = distinct !DILexicalBlock(scope: !352, file: !3, line: 343, column: 17)
!370 = !DILocation(line: 343, column: 17, scope: !369)
!371 = !DILocation(line: 343, column: 17, scope: !352)
!372 = !DILocation(line: 344, column: 34, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !3, line: 343, column: 50)
!374 = !DILocation(line: 345, column: 17, scope: !375)
!375 = distinct !DILexicalBlock(scope: !373, file: !3, line: 345, column: 17)
!376 = !DILocation(line: 345, column: 17, scope: !373)
!377 = !DILocation(line: 345, column: 17, scope: !378)
!378 = !DILexicalBlockFile(scope: !375, file: !3, discriminator: 1)
!379 = !DILocation(line: 346, column: 92, scope: !373)
!380 = !DILocation(line: 346, column: 17, scope: !373)
!381 = !DILocation(line: 347, column: 13, scope: !373)
!382 = !DILocation(line: 349, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 349, column: 17)
!384 = distinct !DILexicalBlock(scope: !369, file: !3, line: 347, column: 20)
!385 = !DILocation(line: 349, column: 17, scope: !384)
!386 = !DILocation(line: 349, column: 17, scope: !387)
!387 = !DILexicalBlockFile(scope: !383, file: !3, discriminator: 1)
!388 = !DILocation(line: 350, column: 34, scope: !384)
!389 = !DILocation(line: 352, column: 48, scope: !384)
!390 = !DILocation(line: 352, column: 17, scope: !384)
!391 = !DILocation(line: 38, column: 68, scope: !262, inlinedAt: !392)
!392 = distinct !DILocation(line: 361, column: 17, scope: !141)
!393 = !DILocation(line: 40, column: 16, scope: !262, inlinedAt: !392)
!394 = !DILocation(line: 361, column: 9, scope: !141)
!395 = !DILocation(line: 324, column: 34, scope: !127)
!396 = !DILocalVariable(name: "event", arg: 1, scope: !397, file: !263, line: 1942, type: !266)
!397 = distinct !DISubprogram(name: "gatt_event_characteristic_query_result_get_characteristic", scope: !263, file: !263, line: 1942, type: !398, isLocal: true, isDefinition: true, scopeLine: 1943, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !401)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !266, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 32)
!401 = !{!396, !402}
!402 = !DILocalVariable(name: "characteristic", arg: 2, scope: !397, file: !263, line: 1942, type: !400)
!403 = !DILocation(line: 1942, column: 97, scope: !397, inlinedAt: !404)
!404 = distinct !DILocation(line: 363, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !141, file: !3, line: 361, column: 52)
!406 = !DILocation(line: 1942, column: 134, scope: !397, inlinedAt: !404)
!407 = !DILocation(line: 1944, column: 9, scope: !397, inlinedAt: !404)
!408 = !DILocation(line: 364, column: 24, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 364, column: 17)
!410 = !DILocation(line: 364, column: 17, scope: !409)
!411 = !DILocation(line: 364, column: 83, scope: !409)
!412 = !DILocation(line: 364, column: 17, scope: !405)
!413 = !DILocation(line: 365, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 365, column: 17)
!415 = distinct !DILexicalBlock(scope: !409, file: !3, line: 364, column: 89)
!416 = !DILocation(line: 365, column: 17, scope: !415)
!417 = !DILocation(line: 365, column: 17, scope: !418)
!418 = !DILexicalBlockFile(scope: !414, file: !3, discriminator: 1)
!419 = !{!189, !187, i64 2}
!420 = !DILocation(line: 366, column: 67, scope: !415)
!421 = !{i64 0, i64 2, !422, i64 2, i64 2, !422, i64 4, i64 2, !422, i64 6, i64 2, !422, i64 8, i64 2, !422, i64 10, i64 16, !271}
!422 = !{!187, !187, i64 0}
!423 = !DILocation(line: 367, column: 44, scope: !415)
!424 = !{!180, !181, i64 132}
!425 = !DILocation(line: 368, column: 17, scope: !415)
!426 = !DILocation(line: 370, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !405, file: !3, line: 370, column: 17)
!428 = !DILocation(line: 370, column: 77, scope: !427)
!429 = !DILocation(line: 370, column: 17, scope: !405)
!430 = !DILocation(line: 371, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 371, column: 17)
!432 = distinct !DILexicalBlock(scope: !427, file: !3, line: 370, column: 83)
!433 = !DILocation(line: 371, column: 17, scope: !432)
!434 = !DILocation(line: 371, column: 17, scope: !435)
!435 = !DILexicalBlockFile(scope: !431, file: !3, discriminator: 1)
!436 = !DILocation(line: 372, column: 61, scope: !432)
!437 = !DILocation(line: 373, column: 44, scope: !432)
!438 = !DILocation(line: 374, column: 17, scope: !432)
!439 = !DILocation(line: 376, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !405, file: !3, line: 376, column: 17)
!441 = !DILocation(line: 376, column: 75, scope: !440)
!442 = !DILocation(line: 376, column: 17, scope: !405)
!443 = !DILocation(line: 377, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 377, column: 17)
!445 = distinct !DILexicalBlock(scope: !440, file: !3, line: 376, column: 81)
!446 = !DILocation(line: 377, column: 17, scope: !445)
!447 = !DILocation(line: 377, column: 17, scope: !448)
!448 = !DILexicalBlockFile(scope: !444, file: !3, discriminator: 1)
!449 = !DILocation(line: 378, column: 59, scope: !445)
!450 = !DILocation(line: 379, column: 44, scope: !445)
!451 = !DILocation(line: 380, column: 17, scope: !445)
!452 = !DILocation(line: 384, column: 13, scope: !453)
!453 = distinct !DILexicalBlock(scope: !405, file: !3, line: 384, column: 13)
!454 = !DILocation(line: 384, column: 13, scope: !405)
!455 = !DILocation(line: 384, column: 13, scope: !456)
!456 = !DILexicalBlockFile(scope: !453, file: !3, discriminator: 1)
!457 = !DILocation(line: 385, column: 30, scope: !405)
!458 = !DILocation(line: 386, column: 140, scope: !405)
!459 = !DILocation(line: 386, column: 13, scope: !405)
!460 = !DILocation(line: 387, column: 93, scope: !405)
!461 = !DILocation(line: 387, column: 13, scope: !405)
!462 = !DILocation(line: 389, column: 13, scope: !405)
!463 = !DILocation(line: 38, column: 68, scope: !262, inlinedAt: !464)
!464 = distinct !DILocation(line: 395, column: 17, scope: !141)
!465 = !DILocation(line: 40, column: 16, scope: !262, inlinedAt: !464)
!466 = !DILocation(line: 395, column: 9, scope: !141)
!467 = !DILocation(line: 397, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 397, column: 13)
!469 = distinct !DILexicalBlock(scope: !141, file: !3, line: 395, column: 52)
!470 = !DILocation(line: 397, column: 13, scope: !469)
!471 = !DILocation(line: 397, column: 13, scope: !472)
!472 = !DILexicalBlockFile(scope: !468, file: !3, discriminator: 1)
!473 = !DILocation(line: 398, column: 30, scope: !469)
!474 = !DILocation(line: 400, column: 93, scope: !469)
!475 = !DILocation(line: 400, column: 13, scope: !469)
!476 = !DILocation(line: 402, column: 13, scope: !469)
!477 = !DILocation(line: 38, column: 68, scope: !262, inlinedAt: !478)
!478 = distinct !DILocation(line: 408, column: 17, scope: !141)
!479 = !DILocation(line: 40, column: 16, scope: !262, inlinedAt: !478)
!480 = !DILocation(line: 408, column: 9, scope: !141)
!481 = !DILocation(line: 410, column: 13, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 410, column: 13)
!483 = distinct !DILexicalBlock(scope: !141, file: !3, line: 408, column: 52)
!484 = !DILocation(line: 410, column: 13, scope: !483)
!485 = !DILocation(line: 410, column: 13, scope: !486)
!486 = !DILexicalBlockFile(scope: !482, file: !3, discriminator: 1)
!487 = !DILocation(line: 411, column: 30, scope: !483)
!488 = !DILocation(line: 412, column: 13, scope: !483)
!489 = !DILocation(line: 413, column: 13, scope: !483)
!490 = !DILocation(line: 38, column: 68, scope: !262, inlinedAt: !491)
!491 = distinct !DILocation(line: 419, column: 13, scope: !492)
!492 = distinct !DILexicalBlock(scope: !141, file: !3, line: 419, column: 13)
!493 = !DILocation(line: 40, column: 16, scope: !262, inlinedAt: !491)
!494 = !DILocation(line: 419, column: 74, scope: !492)
!495 = !DILocation(line: 423, column: 24, scope: !141)
!496 = !DILocation(line: 326, column: 25, scope: !127)
!497 = !DILocation(line: 424, column: 24, scope: !141)
!498 = !DILocation(line: 327, column: 25, scope: !127)
!499 = !DILocation(line: 425, column: 18, scope: !141)
!500 = !DILocation(line: 325, column: 25, scope: !127)
!501 = !DILocation(line: 427, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !141, file: !3, line: 427, column: 9)
!503 = !DILocation(line: 427, column: 9, scope: !141)
!504 = !DILocation(line: 427, column: 9, scope: !505)
!505 = !DILexicalBlockFile(scope: !502, file: !3, discriminator: 1)
!506 = !DILocation(line: 429, column: 69, scope: !140)
!507 = !{!180, !187, i64 108}
!508 = !DILocation(line: 429, column: 26, scope: !140)
!509 = !DILocation(line: 429, column: 13, scope: !141)
!510 = !DILocation(line: 430, column: 17, scope: !139)
!511 = !DILocation(line: 432, column: 29, scope: !512)
!512 = !DILexicalBlockFile(scope: !255, file: !3, discriminator: 1)
!513 = !DILocation(line: 432, column: 27, scope: !512)
!514 = !DILocation(line: 432, column: 13, scope: !515)
!515 = !DILexicalBlockFile(scope: !256, file: !3, discriminator: 1)
!516 = !DILocation(line: 433, column: 47, scope: !254)
!517 = !DILocation(line: 207, column: 51, scope: !248, inlinedAt: !253)
!518 = !DILocation(line: 209, column: 22, scope: !519, inlinedAt: !253)
!519 = distinct !DILexicalBlock(scope: !248, file: !3, line: 209, column: 9)
!520 = !{!180, !187, i64 158}
!521 = !DILocation(line: 209, column: 11, scope: !519, inlinedAt: !253)
!522 = !DILocation(line: 209, column: 9, scope: !248, inlinedAt: !253)
!523 = !DILocation(line: 213, column: 5, scope: !524, inlinedAt: !253)
!524 = distinct !DILexicalBlock(scope: !248, file: !3, line: 213, column: 5)
!525 = !{!180, !187, i64 148}
!526 = !DILocation(line: 213, column: 5, scope: !248, inlinedAt: !253)
!527 = !DILocation(line: 213, column: 5, scope: !528, inlinedAt: !253)
!528 = !DILexicalBlockFile(scope: !529, file: !3, discriminator: 1)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 213, column: 5)
!530 = distinct !DILexicalBlock(scope: !524, file: !3, line: 213, column: 5)
!531 = !DILocation(line: 213, column: 5, scope: !532, inlinedAt: !253)
!532 = !DILexicalBlockFile(scope: !530, file: !3, discriminator: 1)
!533 = !DILocation(line: 213, column: 5, scope: !534, inlinedAt: !253)
!534 = !DILexicalBlockFile(scope: !529, file: !3, discriminator: 2)
!535 = !DILocation(line: 215, column: 13, scope: !248, inlinedAt: !253)
!536 = !{!180, !186, i64 160}
!537 = !DILocation(line: 215, column: 65, scope: !248, inlinedAt: !253)
!538 = !DILocation(line: 215, column: 5, scope: !248, inlinedAt: !253)
!539 = !DILocation(line: 215, column: 69, scope: !248, inlinedAt: !253)
!540 = !DILocation(line: 216, column: 17, scope: !541, inlinedAt: !253)
!541 = distinct !DILexicalBlock(scope: !248, file: !3, line: 216, column: 9)
!542 = !DILocation(line: 216, column: 9, scope: !541, inlinedAt: !253)
!543 = !DILocation(line: 216, column: 47, scope: !541, inlinedAt: !253)
!544 = !{!180, !187, i64 150}
!545 = !DILocation(line: 216, column: 37, scope: !541, inlinedAt: !253)
!546 = !DILocation(line: 216, column: 9, scope: !248, inlinedAt: !253)
!547 = !DILocation(line: 220, column: 21, scope: !248, inlinedAt: !253)
!548 = !{!180, !182, i64 168}
!549 = !DILocation(line: 220, column: 5, scope: !248, inlinedAt: !253)
!550 = !DILocation(line: 222, column: 47, scope: !247, inlinedAt: !253)
!551 = !DILocation(line: 222, column: 100, scope: !247, inlinedAt: !253)
!552 = !DILocation(line: 222, column: 39, scope: !247, inlinedAt: !253)
!553 = !DILocation(line: 222, column: 37, scope: !247, inlinedAt: !253)
!554 = !{!180, !182, i64 156}
!555 = !DILocation(line: 223, column: 39, scope: !556, inlinedAt: !253)
!556 = distinct !DILexicalBlock(scope: !247, file: !3, line: 223, column: 13)
!557 = !DILocation(line: 223, column: 13, scope: !247, inlinedAt: !253)
!558 = !DILocation(line: 224, column: 13, scope: !559, inlinedAt: !253)
!559 = distinct !DILexicalBlock(scope: !556, file: !3, line: 223, column: 45)
!560 = !DILocation(line: 225, column: 9, scope: !559, inlinedAt: !253)
!561 = !DILocation(line: 226, column: 37, scope: !247, inlinedAt: !253)
!562 = !DILocation(line: 227, column: 37, scope: !247, inlinedAt: !253)
!563 = !DILocation(line: 228, column: 37, scope: !247, inlinedAt: !253)
!564 = !DILocation(line: 229, column: 9, scope: !247, inlinedAt: !253)
!565 = !DILocation(line: 231, column: 69, scope: !247, inlinedAt: !253)
!566 = !DILocation(line: 231, column: 123, scope: !247, inlinedAt: !253)
!567 = !DILocation(line: 231, column: 39, scope: !247, inlinedAt: !253)
!568 = !DILocation(line: 231, column: 37, scope: !247, inlinedAt: !253)
!569 = !{!180, !187, i64 152}
!570 = !DILocation(line: 232, column: 37, scope: !247, inlinedAt: !253)
!571 = !DILocation(line: 233, column: 37, scope: !247, inlinedAt: !253)
!572 = !DILocation(line: 234, column: 13, scope: !573, inlinedAt: !253)
!573 = distinct !DILexicalBlock(scope: !247, file: !3, line: 234, column: 13)
!574 = !DILocation(line: 234, column: 40, scope: !573, inlinedAt: !253)
!575 = !DILocation(line: 234, column: 13, scope: !247, inlinedAt: !253)
!576 = !DILocation(line: 235, column: 41, scope: !577, inlinedAt: !253)
!577 = distinct !DILexicalBlock(scope: !573, file: !3, line: 234, column: 46)
!578 = !DILocation(line: 236, column: 41, scope: !577, inlinedAt: !253)
!579 = !DILocation(line: 237, column: 13, scope: !577, inlinedAt: !253)
!580 = !DILocation(line: 240, column: 50, scope: !581, inlinedAt: !253)
!581 = distinct !DILexicalBlock(scope: !247, file: !3, line: 240, column: 13)
!582 = !DILocation(line: 240, column: 42, scope: !581, inlinedAt: !253)
!583 = !DILocation(line: 240, column: 80, scope: !581, inlinedAt: !253)
!584 = !DILocation(line: 240, column: 40, scope: !581, inlinedAt: !253)
!585 = !DILocation(line: 240, column: 13, scope: !247, inlinedAt: !253)
!586 = !DILocation(line: 241, column: 13, scope: !587, inlinedAt: !253)
!587 = distinct !DILexicalBlock(scope: !581, file: !3, line: 240, column: 85)
!588 = !DILocation(line: 242, column: 50, scope: !587, inlinedAt: !253)
!589 = !DILocation(line: 242, column: 80, scope: !587, inlinedAt: !253)
!590 = !DILocation(line: 242, column: 40, scope: !587, inlinedAt: !253)
!591 = !DILocation(line: 243, column: 9, scope: !587, inlinedAt: !253)
!592 = !DILocation(line: 245, column: 37, scope: !247, inlinedAt: !253)
!593 = !DILocation(line: 246, column: 9, scope: !247, inlinedAt: !253)
!594 = !DILocation(line: 248, column: 9, scope: !595, inlinedAt: !253)
!595 = distinct !DILexicalBlock(scope: !247, file: !3, line: 248, column: 9)
!596 = !DILocation(line: 248, column: 9, scope: !247, inlinedAt: !253)
!597 = !DILocation(line: 248, column: 9, scope: !598, inlinedAt: !253)
!598 = !DILexicalBlockFile(scope: !599, file: !3, discriminator: 1)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 248, column: 9)
!600 = distinct !DILexicalBlock(scope: !595, file: !3, line: 248, column: 9)
!601 = !DILocation(line: 248, column: 9, scope: !602, inlinedAt: !253)
!602 = !DILexicalBlockFile(scope: !600, file: !3, discriminator: 1)
!603 = !DILocation(line: 248, column: 9, scope: !604, inlinedAt: !253)
!604 = !DILexicalBlockFile(scope: !599, file: !3, discriminator: 2)
!605 = !DILocation(line: 250, column: 17, scope: !247, inlinedAt: !253)
!606 = !DILocation(line: 250, column: 9, scope: !247, inlinedAt: !253)
!607 = !DILocation(line: 250, column: 71, scope: !247, inlinedAt: !253)
!608 = !DILocation(line: 152, column: 36, scope: !237, inlinedAt: !246)
!609 = !DILocation(line: 154, column: 18, scope: !610, inlinedAt: !246)
!610 = distinct !DILexicalBlock(scope: !237, file: !3, line: 154, column: 9)
!611 = !DILocation(line: 154, column: 10, scope: !610, inlinedAt: !246)
!612 = !DILocation(line: 158, column: 22, scope: !613, inlinedAt: !246)
!613 = distinct !DILexicalBlock(scope: !237, file: !3, line: 158, column: 9)
!614 = !DILocation(line: 158, column: 11, scope: !613, inlinedAt: !246)
!615 = !DILocation(line: 154, column: 9, scope: !237, inlinedAt: !246)
!616 = !DILocation(line: 163, column: 5, scope: !237, inlinedAt: !246)
!617 = !DILocation(line: 164, column: 14, scope: !237, inlinedAt: !246)
!618 = !DILocation(line: 166, column: 14, scope: !237, inlinedAt: !246)
!619 = !DILocation(line: 167, column: 14, scope: !237, inlinedAt: !246)
!620 = !DILocation(line: 168, column: 46, scope: !237, inlinedAt: !246)
!621 = !DILocation(line: 168, column: 5, scope: !237, inlinedAt: !246)
!622 = !DILocation(line: 169, column: 46, scope: !237, inlinedAt: !246)
!623 = !DILocation(line: 169, column: 38, scope: !237, inlinedAt: !246)
!624 = !DILocation(line: 169, column: 5, scope: !237, inlinedAt: !246)
!625 = !DILocation(line: 173, column: 5, scope: !237, inlinedAt: !246)
!626 = !DILocation(line: 174, column: 5, scope: !237, inlinedAt: !246)
!627 = !DILocation(line: 176, column: 15, scope: !237, inlinedAt: !246)
!628 = !DILocation(line: 176, column: 59, scope: !237, inlinedAt: !246)
!629 = !DILocation(line: 176, column: 68, scope: !237, inlinedAt: !246)
!630 = !DILocation(line: 176, column: 5, scope: !237, inlinedAt: !246)
!631 = !DILocation(line: 177, column: 1, scope: !237, inlinedAt: !246)
!632 = !DILocation(line: 252, column: 21, scope: !633, inlinedAt: !253)
!633 = distinct !DILexicalBlock(scope: !247, file: !3, line: 252, column: 13)
!634 = !DILocation(line: 252, column: 39, scope: !633, inlinedAt: !253)
!635 = !DILocation(line: 252, column: 13, scope: !247, inlinedAt: !253)
!636 = !DILocation(line: 253, column: 13, scope: !637, inlinedAt: !253)
!637 = distinct !DILexicalBlock(scope: !633, file: !3, line: 252, column: 45)
!638 = !DILocation(line: 254, column: 9, scope: !637, inlinedAt: !253)
!639 = !DILocation(line: 255, column: 37, scope: !247, inlinedAt: !253)
!640 = !DILocation(line: 256, column: 37, scope: !247, inlinedAt: !253)
!641 = !DILocation(line: 257, column: 37, scope: !247, inlinedAt: !253)
!642 = !DILocation(line: 258, column: 9, scope: !247, inlinedAt: !253)
!643 = !DILocation(line: 432, column: 44, scope: !644)
!644 = !DILexicalBlockFile(scope: !255, file: !3, discriminator: 2)
!645 = distinct !{!645, !646, !647}
!646 = !DILocation(line: 432, column: 13, scope: !256)
!647 = !DILocation(line: 434, column: 13, scope: !256)
!648 = !DILocation(line: 436, column: 84, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !3, discriminator: 1)
!650 = distinct !DILexicalBlock(scope: !140, file: !3, line: 436, column: 20)
!651 = !{!180, !187, i64 56}
!652 = !DILocation(line: 436, column: 33, scope: !649)
!653 = !DILocation(line: 436, column: 20, scope: !654)
!654 = !DILexicalBlockFile(scope: !140, file: !3, discriminator: 1)
!655 = !DILocation(line: 437, column: 45, scope: !656)
!656 = distinct !DILexicalBlock(scope: !650, file: !3, line: 436, column: 98)
!657 = !DILocation(line: 437, column: 43, scope: !656)
!658 = !DILocation(line: 438, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 438, column: 13)
!660 = !DILocation(line: 438, column: 13, scope: !656)
!661 = !DILocation(line: 438, column: 13, scope: !662)
!662 = !DILexicalBlockFile(scope: !659, file: !3, discriminator: 1)
!663 = !DILocation(line: 441, column: 76, scope: !656)
!664 = !DILocation(line: 441, column: 13, scope: !656)
!665 = !DILocation(line: 194, column: 32, scope: !666, inlinedAt: !667)
!666 = distinct !DISubprogram(name: "ancs_chunk_parser_init", scope: !3, file: !3, line: 192, type: !229, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !218)
!667 = distinct !DILocation(line: 443, column: 13, scope: !656)
!668 = !DILocation(line: 195, column: 33, scope: !666, inlinedAt: !667)
!669 = !DILocation(line: 196, column: 31, scope: !666, inlinedAt: !667)
!670 = !DILocation(line: 444, column: 81, scope: !656)
!671 = !DILocation(line: 444, column: 134, scope: !656)
!672 = !DILocation(line: 444, column: 13, scope: !656)
!673 = !DILocation(line: 446, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !656, file: !3, line: 446, column: 17)
!675 = !DILocation(line: 446, column: 17, scope: !656)
!676 = !DILocation(line: 447, column: 17, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 446, column: 36)
!678 = !DILocation(line: 448, column: 13, scope: !677)
!679 = !DILocation(line: 450, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 450, column: 13)
!681 = distinct !DILexicalBlock(scope: !650, file: !3, line: 449, column: 16)
!682 = !DILocation(line: 450, column: 13, scope: !681)
!683 = !DILocation(line: 450, column: 13, scope: !684)
!684 = !DILexicalBlockFile(scope: !680, file: !3, discriminator: 1)
!685 = !DILocation(line: 451, column: 13, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !3, line: 451, column: 13)
!687 = !DILocation(line: 451, column: 13, scope: !681)
!688 = !DILocation(line: 451, column: 13, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !686, file: !3, line: 451, column: 13)
!691 = !DILocation(line: 451, column: 13, scope: !692)
!692 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 2)
!693 = !DILocation(line: 458, column: 1, scope: !127)
!694 = !DILocation(line: 458, column: 1, scope: !695)
!695 = !DILexicalBlockFile(scope: !127, file: !3, discriminator: 2)
!696 = distinct !DISubprogram(name: "ancs_set_notification_buffer", scope: !3, file: !3, line: 480, type: !121, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !697)
!697 = !{!698, !699}
!698 = !DILocalVariable(name: "buffer", arg: 1, scope: !696, file: !3, line: 480, type: !123)
!699 = !DILocalVariable(name: "buffer_size", arg: 2, scope: !696, file: !3, line: 480, type: !65)
!700 = !DILocation(line: 480, column: 39, scope: !696)
!701 = !DILocation(line: 480, column: 51, scope: !696)
!702 = !DILocation(line: 482, column: 5, scope: !703)
!703 = !DILexicalBlockFile(scope: !704, file: !3, discriminator: 1)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 482, column: 5)
!705 = distinct !DILexicalBlock(scope: !696, file: !3, line: 482, column: 5)
!706 = !{!181, !181, i64 0}
!707 = !DILocation(line: 482, column: 5, scope: !708)
!708 = !DILexicalBlockFile(scope: !705, file: !3, discriminator: 1)
!709 = !DILocation(line: 482, column: 5, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !3, discriminator: 2)
!711 = distinct !DILexicalBlock(scope: !704, file: !3, line: 482, column: 5)
!712 = !DILocation(line: 482, column: 5, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !3, discriminator: 3)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 482, column: 5)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 482, column: 5)
!716 = !DILocation(line: 482, column: 5, scope: !717)
!717 = !DILexicalBlockFile(scope: !714, file: !3, discriminator: 8)
!718 = !DILocation(line: 482, column: 5, scope: !719)
!719 = !DILexicalBlockFile(scope: !714, file: !3, discriminator: 9)
!720 = !DILocation(line: 482, column: 5, scope: !721)
!721 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 5)
!722 = distinct !DILexicalBlock(scope: !704, file: !3, line: 482, column: 5)
!723 = !DILocation(line: 148, column: 5, scope: !724, inlinedAt: !726)
!724 = distinct !DISubprogram(name: "cpu_reset", scope: !725, file: !725, line: 145, type: !229, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !218)
!725 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!726 = distinct !DILocation(line: 482, column: 5, scope: !727)
!727 = !DILexicalBlockFile(scope: !728, file: !3, discriminator: 6)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 482, column: 5)
!729 = distinct !DILexicalBlock(scope: !722, file: !3, line: 482, column: 5)
!730 = !DILocation(line: 482, column: 5, scope: !727)
!731 = !DILocation(line: 483, column: 43, scope: !696)
!732 = !DILocation(line: 484, column: 38, scope: !696)
!733 = !DILocation(line: 485, column: 1, scope: !696)
!734 = distinct !DISubprogram(name: "notify_client_simple", scope: !3, file: !3, line: 179, type: !238, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !735)
!735 = !{!736, !737}
!736 = !DILocalVariable(name: "event_type", arg: 1, scope: !734, file: !3, line: 179, type: !21)
!737 = !DILocalVariable(name: "event", scope: !734, file: !3, line: 184, type: !738)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 40, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 5)
!741 = !DILocation(line: 179, column: 38, scope: !734)
!742 = !DILocation(line: 181, column: 18, scope: !743)
!743 = distinct !DILexicalBlock(scope: !734, file: !3, line: 181, column: 9)
!744 = !DILocation(line: 181, column: 10, scope: !743)
!745 = !DILocation(line: 181, column: 9, scope: !734)
!746 = !DILocation(line: 184, column: 5, scope: !734)
!747 = !DILocation(line: 184, column: 13, scope: !734)
!748 = !DILocation(line: 185, column: 14, scope: !734)
!749 = !DILocation(line: 186, column: 5, scope: !734)
!750 = !DILocation(line: 186, column: 14, scope: !734)
!751 = !DILocation(line: 187, column: 16, scope: !734)
!752 = !DILocation(line: 187, column: 5, scope: !734)
!753 = !DILocation(line: 187, column: 14, scope: !734)
!754 = !DILocation(line: 188, column: 46, scope: !734)
!755 = !DILocation(line: 188, column: 5, scope: !734)
!756 = !DILocation(line: 189, column: 15, scope: !734)
!757 = !DILocation(line: 189, column: 5, scope: !734)
!758 = !DILocation(line: 190, column: 1, scope: !734)
!759 = !DILocation(line: 190, column: 1, scope: !760)
!760 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 1)
