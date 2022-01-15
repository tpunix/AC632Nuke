; ModuleID = 'client_user.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.client_ctl_t = type { i32, %struct.le_service_t*, %struct.le_characteristic_t*, i16, i16, i16, i16, %struct.search_result_t, [16 x %struct.le_service_t], [4 x i32] }
%struct.le_service_t = type { i16, i16, i16, [16 x i8] }
%struct.le_characteristic_t = type { i16, i16, i16, i16, i16, [16 x i8] }
%struct.search_result_t = type { %struct.service_report_t, %struct.charact_report_t, i16, i16 }
%struct.service_report_t = type { i16, i16, i16, [16 x i8] }
%struct.charact_report_t = type { i16, i16, i16, i16, i16, [16 x i8] }
%struct.gatt_client_notification = type { %struct.btstack_linked_item, void (i8, i16, i8*, i16)*, i16, i16 }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.att_data_report_t = type { i16, i16, i16, i16, i8*, i16 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@config_le_gatt_client_num = external local_unnamed_addr constant i32, align 4
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [40 x i8] c"[ble-info] :client cbk gatt event %x \0A\0A\00", align 1
@client_s_hdl = internal unnamed_addr global %struct.client_ctl_t* null, section ".bt_stack_bss", align 4, !dbg !79
@gc_search_handle = internal unnamed_addr global i16 0, section ".bt_stack_bss", align 2, !dbg !77
@.str.1 = private unnamed_addr constant [45 x i8] c"[ble-info] :record server %d,uuid16= %04x \0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"[ble-info] :SERVICE_QUERY_RESULT - Error status %x.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"[ble-info] :search_service finish (%d)!!!\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"[ble-info] :CHARACTERISTIC_QUERY_RESULT - Error status %x.\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"[ble-info] :current_service characteristics = %d\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"[ble-info] :Client, unhandled state %d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"[ble-info] :search_pfl_type = %d\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"[ble-info] :search start busy!!!%d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"client_user buffer not good enough!!!,need = %d\0A\00", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.14 = private unnamed_addr constant [106 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ASSERT-FAILD: 0 \00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"[ble-info] :client_user bufferneed = %d\0A\0A\00", align 1
@common_notification_registration = internal global %struct.gatt_client_notification zeroinitializer, section ".bt_stack_bss", align 4, !dbg !50
@.str.18 = private unnamed_addr constant [27 x i8] c"[ble-info] :ATT MTU = %u\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"[ble-info] :\0A-utype= %02x\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"[ble-info] :\0A---discover service_index: %d ---\0A\0A\00", align 1
@str = private unnamed_addr constant [49 x i8] c"[ble-info] :user_client_search_profile_complete\0A\00"
@str.23 = private unnamed_addr constant [33 x i8] c"[ble-info] :find no services!!!\0A\00"
@str.24 = private unnamed_addr constant [40 x i8] c"[ble-info] :services is overflow!!!!!!\0A\00"
@str.25 = private unnamed_addr constant [12 x i8] c"[ble-dump]:\00"
@str.26 = private unnamed_addr constant [21 x i8] c"[ble-info] :uuid128:\00"
@str.27 = private unnamed_addr constant [37 x i8] c"[ble-info] :discover_service end!!!\0A\00"

; Function Attrs: nounwind optsize
define weak hidden void @user_client_report_search_result(%struct.search_result_t*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !161 {
  call void @llvm.dbg.value(metadata %struct.search_result_t* %0, metadata !166, metadata !DIExpression()), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: nounwind optsize
define weak hidden void @user_client_report_data_callback(%struct.att_data_report_t*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !169 {
  call void @llvm.dbg.value(metadata %struct.att_data_report_t* %0, metadata !185, metadata !DIExpression()), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: nounwind optsize
define hidden void @user_client_set_search_complete() local_unnamed_addr #0 section ".bt_stack_code" !dbg !188 {
  tail call fastcc void @user_client_search_profile_complete() #8, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: nounwind optsize
define internal fastcc void @user_client_search_profile_complete() unnamed_addr #0 section ".bt_stack_code" !dbg !194 {
  %1 = alloca i16, align 2
  %2 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !197, !tbaa !199
  %3 = icmp eq i32 %2, 0, !dbg !197
  br i1 %3, label %39, label %4, !dbg !203

; <label>:4:                                      ; preds = %0
  %5 = bitcast i16* %1 to i8*, !dbg !204
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %5) #6, !dbg !204
  %6 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !205, !tbaa !207
  %7 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 3, !dbg !209
  %8 = load i16, i16* %7, align 4, !dbg !209, !tbaa !210
  %9 = icmp eq i16 %8, 0, !dbg !216
  br i1 %9, label %10, label %16, !dbg !217

; <label>:10:                                     ; preds = %4
  %11 = load i8, i8* @ble_debug_enable, align 1, !dbg !218, !tbaa !221
  %12 = and i8 %11, 1, !dbg !218
  %13 = icmp eq i8 %12, 0, !dbg !218
  br i1 %13, label %16, label %14, !dbg !222

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.23, i32 0, i32 0)), !dbg !223
  br label %16, !dbg !223

; <label>:16:                                     ; preds = %14, %10, %4
  %17 = load i16, i16* @gc_search_handle, align 2, !dbg !225, !tbaa !226
  call void @llvm.dbg.value(metadata i16* %1, metadata !196, metadata !DIExpression(DW_OP_deref)), !dbg !227
  %18 = call zeroext i8 @gatt_client_get_mtu(i16 zeroext %17, i16* nonnull %1) #9, !dbg !228
  %19 = load i16, i16* %1, align 2, !dbg !229, !tbaa !226
  call void @llvm.dbg.value(metadata i16 %19, metadata !196, metadata !DIExpression()), !dbg !227
  %20 = add i16 %19, -3, !dbg !229
  call void @llvm.dbg.value(metadata i16 %20, metadata !196, metadata !DIExpression()), !dbg !227
  store i16 %20, i16* %1, align 2, !dbg !229, !tbaa !226
  %21 = load i8, i8* @ble_debug_enable, align 1, !dbg !230, !tbaa !221
  %22 = and i8 %21, 1, !dbg !230
  %23 = icmp eq i8 %22, 0, !dbg !230
  br i1 %23, label %28, label %24, !dbg !232

; <label>:24:                                     ; preds = %16
  %25 = zext i16 %20 to i32, !dbg !233
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 %25) #8, !dbg !233
  %27 = load i16, i16* %1, align 2, !tbaa !226
  br label %28, !dbg !233

; <label>:28:                                     ; preds = %24, %16
  %29 = phi i16 [ %20, %16 ], [ %27, %24 ], !dbg !235
  %30 = load i16, i16* @gc_search_handle, align 2, !dbg !236, !tbaa !226
  call void @llvm.dbg.value(metadata i16 %29, metadata !196, metadata !DIExpression()), !dbg !227
  call void @att_send_set_mtu_size(i16 zeroext %30, i16 zeroext %29) #9, !dbg !237
  %31 = load i8, i8* @ble_debug_enable, align 1, !dbg !238, !tbaa !221
  %32 = and i8 %31, 1, !dbg !238
  %33 = icmp eq i8 %32, 0, !dbg !238
  br i1 %33, label %36, label %34, !dbg !240

; <label>:34:                                     ; preds = %28
  %35 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @str, i32 0, i32 0)), !dbg !241
  br label %36, !dbg !241

; <label>:36:                                     ; preds = %34, %28
  call void @user_client_report_search_result(%struct.search_result_t* inttoptr (i32 -1 to %struct.search_result_t*)) #8, !dbg !243
  %37 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !244, !tbaa !207
  %38 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %37, i32 0, i32 0, !dbg !245
  store i32 20, i32* %38, align 4, !dbg !246, !tbaa !247
  store i16 0, i16* @gc_search_handle, align 2, !dbg !248, !tbaa !226
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %5) #6, !dbg !249
  br label %39, !dbg !249

; <label>:39:                                     ; preds = %36, %0
  ret void, !dbg !250
}

; Function Attrs: nounwind optsize
define hidden void @user_client_gatt_event(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 section ".bt_stack_code" !dbg !252 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !254, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata i16 %1, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i8* %2, metadata !256, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i16 %3, metadata !257, metadata !DIExpression()), !dbg !261
  %5 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !262, !tbaa !199
  %6 = icmp eq i32 %5, 0, !dbg !262
  br i1 %6, label %209, label %7, !dbg !264

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* @ble_debug_enable, align 1, !dbg !265, !tbaa !221
  %9 = and i8 %8, 1, !dbg !265
  %10 = icmp eq i8 %9, 0, !dbg !265
  br i1 %10, label %16, label %11, !dbg !267

; <label>:11:                                     ; preds = %7
  %12 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !268, !tbaa !207
  %13 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %12, i32 0, i32 0, !dbg !268
  %14 = load i32, i32* %13, align 4, !dbg !268, !tbaa !247
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i32 %14) #8, !dbg !268
  br label %16, !dbg !268

; <label>:16:                                     ; preds = %11, %7
  %17 = load i16, i16* @gc_search_handle, align 2, !dbg !270, !tbaa !226
  %18 = zext i16 %17 to i32, !dbg !270
  %19 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !272
  %20 = load i8, i8* %19, align 1, !dbg !272, !tbaa !221
  %21 = zext i8 %20 to i32, !dbg !272
  %22 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !272
  %23 = load i8, i8* %22, align 1, !dbg !272, !tbaa !221
  %24 = zext i8 %23 to i32, !dbg !272
  %25 = shl nuw nsw i32 %24, 8, !dbg !272
  %26 = or i32 %25, %21, !dbg !272
  %27 = icmp eq i32 %18, %26, !dbg !273
  br i1 %27, label %29, label %28, !dbg !274

; <label>:28:                                     ; preds = %16
  tail call fastcc void @user_client_report_acc_data(i8* nonnull %2, i16 zeroext %3) #8, !dbg !275
  br label %209, !dbg !277

; <label>:29:                                     ; preds = %16
  %30 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !278, !tbaa !207
  %31 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %30, i32 0, i32 0, !dbg !279
  %32 = load i32, i32* %31, align 4, !dbg !279, !tbaa !247
  switch i32 %32, label %203 [
    i32 20, label %33
    i32 4, label %34
    i32 6, label %145
  ], !dbg !280

; <label>:33:                                     ; preds = %29
  tail call fastcc void @user_client_report_acc_data(i8* nonnull %2, i16 zeroext %3) #8, !dbg !281
  br label %209, !dbg !283

; <label>:34:                                     ; preds = %29
  %35 = icmp eq %struct.client_ctl_t* %30, null, !dbg !284
  br i1 %35, label %209, label %36, !dbg !286

; <label>:36:                                     ; preds = %34
  %37 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* nonnull %2) #8, !dbg !287
  switch i8 %37, label %209 [
    i8 -95, label %38
    i8 -96, label %105
  ], !dbg !288

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %30, i32 0, i32 1, !dbg !289
  %40 = load %struct.le_service_t*, %struct.le_service_t** %39, align 4, !dbg !289, !tbaa !291
  tail call fastcc void @gatt_event_service_query_result_get_service(i8* nonnull %2, %struct.le_service_t* %40) #8, !dbg !292
  %41 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !293, !tbaa !207
  %42 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %41, i32 0, i32 4, !dbg !295
  %43 = load i16, i16* %42, align 2, !dbg !295, !tbaa !296
  %44 = zext i16 %43 to i32, !dbg !293
  %45 = icmp ult i16 %43, 16, !dbg !297
  %46 = load i8, i8* @ble_debug_enable, align 1, !tbaa !221
  %47 = and i8 %46, 1
  %48 = icmp ne i8 %47, 0
  br i1 %45, label %49, label %96, !dbg !298

; <label>:49:                                     ; preds = %38
  br i1 %48, label %50, label %58, !dbg !299

; <label>:50:                                     ; preds = %49
  %51 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %41, i32 0, i32 1, !dbg !301
  %52 = load %struct.le_service_t*, %struct.le_service_t** %51, align 4, !dbg !301, !tbaa !291
  %53 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %52, i32 0, i32 2, !dbg !301
  %54 = load i16, i16* %53, align 2, !dbg !301, !tbaa !304
  %55 = zext i16 %54 to i32, !dbg !301
  %56 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i32 %44, i32 %55) #8, !dbg !301
  %57 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !tbaa !207
  br label %58, !dbg !301

; <label>:58:                                     ; preds = %50, %49
  %59 = phi %struct.client_ctl_t* [ %57, %50 ], [ %41, %49 ], !dbg !305
  %60 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %59, i32 0, i32 1, !dbg !307
  %61 = load %struct.le_service_t*, %struct.le_service_t** %60, align 4, !dbg !307, !tbaa !291
  %62 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %61, i32 0, i32 2, !dbg !308
  %63 = load i16, i16* %62, align 2, !dbg !308, !tbaa !304
  %64 = icmp eq i16 %63, 0, !dbg !305
  br i1 %64, label %65, label %82, !dbg !309

; <label>:65:                                     ; preds = %58
  %66 = load i8, i8* @ble_debug_enable, align 1, !dbg !310, !tbaa !221
  %67 = and i8 %66, 1, !dbg !310
  %68 = icmp eq i8 %67, 0, !dbg !310
  br i1 %68, label %72, label %69, !dbg !313

; <label>:69:                                     ; preds = %65
  %70 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.26, i32 0, i32 0)), !dbg !314
  %71 = load i8, i8* @ble_debug_enable, align 1, !tbaa !221
  br label %72, !dbg !314

; <label>:72:                                     ; preds = %69, %65
  %73 = phi i8 [ %66, %65 ], [ %71, %69 ], !dbg !316
  %74 = and i8 %73, 2, !dbg !316
  %75 = icmp eq i8 %74, 0, !dbg !316
  br i1 %75, label %82, label %76, !dbg !318

; <label>:76:                                     ; preds = %72
  %77 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.25, i32 0, i32 0)), !dbg !319
  %78 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !319, !tbaa !207
  %79 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %78, i32 0, i32 1, !dbg !319
  %80 = load %struct.le_service_t*, %struct.le_service_t** %79, align 4, !dbg !319, !tbaa !291
  %81 = getelementptr inbounds %struct.le_service_t, %struct.le_service_t* %80, i32 0, i32 3, i32 0, !dbg !319
  tail call void @put_buf(i8* %81, i32 16) #9, !dbg !322
  br label %82, !dbg !319

; <label>:82:                                     ; preds = %76, %72, %58
  %83 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !324, !tbaa !207
  %84 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %83, i32 0, i32 4, !dbg !325
  %85 = load i16, i16* %84, align 2, !dbg !326, !tbaa !296
  %86 = add i16 %85, 1, !dbg !326
  store i16 %86, i16* %84, align 2, !dbg !326, !tbaa !296
  %87 = zext i16 %85 to i32, !dbg !324
  %88 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %83, i32 0, i32 8, i32 %87, !dbg !324
  %89 = bitcast %struct.le_service_t* %88 to i8*, !dbg !327
  %90 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %83, i32 0, i32 1, !dbg !328
  %91 = bitcast %struct.le_service_t** %90 to i8**, !dbg !328
  %92 = load i8*, i8** %91, align 4, !dbg !328, !tbaa !291
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %92, i32 22, i32 2, i1 false), !dbg !327
  %93 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %83, i32 0, i32 3, !dbg !329
  %94 = load i16, i16* %93, align 4, !dbg !330, !tbaa !210
  %95 = add i16 %94, 1, !dbg !330
  store i16 %95, i16* %93, align 4, !dbg !330, !tbaa !210
  br label %100, !dbg !331

; <label>:96:                                     ; preds = %38
  br i1 %48, label %97, label %100, !dbg !332

; <label>:97:                                     ; preds = %96
  %98 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.24, i32 0, i32 0)), !dbg !334
  %99 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !tbaa !207
  br label %100, !dbg !334

; <label>:100:                                    ; preds = %97, %96, %82
  %101 = phi %struct.client_ctl_t* [ %41, %96 ], [ %99, %97 ], [ %83, %82 ], !dbg !337
  %102 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %101, i32 0, i32 1, !dbg !338
  %103 = bitcast %struct.le_service_t** %102 to i8**, !dbg !338
  %104 = load i8*, i8** %103, align 4, !dbg !338, !tbaa !291
  tail call void @llvm.memset.p0i8.i32(i8* %104, i8 0, i32 22, i32 2, i1 false), !dbg !339
  br label %209, !dbg !340

; <label>:105:                                    ; preds = %36
  %106 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !341
  %107 = load i8, i8* %106, align 1, !dbg !341, !tbaa !221
  %108 = zext i8 %107 to i32, !dbg !341
  %109 = icmp eq i8 %107, 0, !dbg !343
  %110 = load i8, i8* @ble_debug_enable, align 1, !tbaa !221
  %111 = and i8 %110, 1
  %112 = icmp ne i8 %111, 0
  br i1 %109, label %117, label %113, !dbg !344

; <label>:113:                                    ; preds = %105
  br i1 %112, label %114, label %116, !dbg !345

; <label>:114:                                    ; preds = %113
  %115 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i32 %108) #8, !dbg !347
  br label %116, !dbg !347

; <label>:116:                                    ; preds = %114, %113
  tail call fastcc void @user_client_search_profile_complete() #8, !dbg !350
  br label %209, !dbg !351

; <label>:117:                                    ; preds = %105
  br i1 %112, label %118, label %124, !dbg !352

; <label>:118:                                    ; preds = %117
  %119 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %30, i32 0, i32 3, !dbg !353
  %120 = load i16, i16* %119, align 4, !dbg !353, !tbaa !210
  %121 = zext i16 %120 to i32, !dbg !353
  %122 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), i32 %121) #8, !dbg !353
  %123 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !tbaa !207
  br label %124, !dbg !353

; <label>:124:                                    ; preds = %118, %117
  %125 = phi %struct.client_ctl_t* [ %123, %118 ], [ %30, %117 ], !dbg !356
  %126 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %125, i32 0, i32 3, !dbg !358
  %127 = load i16, i16* %126, align 4, !dbg !358, !tbaa !210
  %128 = icmp eq i16 %127, 0, !dbg !359
  br i1 %128, label %129, label %130, !dbg !360

; <label>:129:                                    ; preds = %124
  tail call fastcc void @user_client_search_profile_complete() #8, !dbg !361
  br label %209, !dbg !363

; <label>:130:                                    ; preds = %124
  %131 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %125, i32 0, i32 4, !dbg !364
  store i16 0, i16* %131, align 2, !dbg !366, !tbaa !296
  %132 = tail call fastcc i32 @user_client_discover_next_service() #8, !dbg !367
  %133 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !368, !tbaa !207
  %134 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %133, i32 0, i32 0, !dbg !371
  %135 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %133, i32 0, i32 5, !dbg !372
  store i16 0, i16* %135, align 4, !dbg !373, !tbaa !374
  %136 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %133, i32 0, i32 6, !dbg !375
  store i16 0, i16* %136, align 2, !dbg !376, !tbaa !377
  %137 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %133, i32 0, i32 7, i32 3, !dbg !378
  store i16 -1, i16* %137, align 2, !dbg !379, !tbaa !380
  %138 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %133, i32 0, i32 2, !dbg !381
  %139 = bitcast %struct.le_characteristic_t** %138 to i8**, !dbg !381
  %140 = load i8*, i8** %139, align 4, !dbg !381, !tbaa !382
  tail call void @llvm.memset.p0i8.i32(i8* %140, i8 0, i32 26, i32 2, i1 false) #6, !dbg !383
  store i32 6, i32* %134, align 4, !dbg !384, !tbaa !247
  %141 = load i16, i16* @gc_search_handle, align 2, !dbg !385, !tbaa !226
  %142 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %133, i32 0, i32 1, !dbg !386
  %143 = load %struct.le_service_t*, %struct.le_service_t** %142, align 4, !dbg !386, !tbaa !291
  %144 = tail call zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %141, %struct.le_service_t* %143) #9, !dbg !387
  br label %209

; <label>:145:                                    ; preds = %29
  %146 = icmp eq %struct.client_ctl_t* %30, null, !dbg !388
  br i1 %146, label %209, label %147, !dbg !390

; <label>:147:                                    ; preds = %145
  %148 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* nonnull %2) #8, !dbg !391
  switch i8 %148, label %209 [
    i8 -94, label %149
    i8 -96, label %168
  ], !dbg !392

; <label>:149:                                    ; preds = %147
  %150 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %30, i32 0, i32 2, !dbg !393
  %151 = load %struct.le_characteristic_t*, %struct.le_characteristic_t** %150, align 4, !dbg !393, !tbaa !382
  tail call fastcc void @gatt_event_characteristic_query_result_get_characteristic(i8* nonnull %2, %struct.le_characteristic_t* %151) #8, !dbg !395
  %152 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !396, !tbaa !207
  %153 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %152, i32 0, i32 4, !dbg !399
  %154 = load i16, i16* %153, align 2, !dbg !399, !tbaa !296
  %155 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %152, i32 0, i32 7, i32 2, !dbg !400
  store i16 %154, i16* %155, align 4, !dbg !401, !tbaa !402
  %156 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %152, i32 0, i32 6, !dbg !403
  %157 = load i16, i16* %156, align 2, !dbg !403, !tbaa !377
  %158 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %152, i32 0, i32 7, i32 3, !dbg !404
  store i16 %157, i16* %158, align 2, !dbg !405, !tbaa !380
  %159 = add i16 %157, 1, !dbg !406
  store i16 %159, i16* %156, align 2, !dbg !406, !tbaa !377
  %160 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %152, i32 0, i32 5, !dbg !407
  %161 = load i16, i16* %160, align 4, !dbg !408, !tbaa !374
  %162 = add i16 %161, 1, !dbg !408
  store i16 %162, i16* %160, align 4, !dbg !408, !tbaa !374
  %163 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %152, i32 0, i32 7, !dbg !409
  tail call void @user_client_report_search_result(%struct.search_result_t* %163) #9, !dbg !410
  %164 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !411, !tbaa !207
  %165 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %164, i32 0, i32 2, !dbg !412
  %166 = bitcast %struct.le_characteristic_t** %165 to i8**, !dbg !412
  %167 = load i8*, i8** %166, align 4, !dbg !412, !tbaa !382
  tail call void @llvm.memset.p0i8.i32(i8* %167, i8 0, i32 26, i32 2, i1 false), !dbg !413
  br label %209, !dbg !414

; <label>:168:                                    ; preds = %147
  %169 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !415
  %170 = load i8, i8* %169, align 1, !dbg !415, !tbaa !221
  %171 = zext i8 %170 to i32, !dbg !415
  %172 = icmp eq i8 %170, 0, !dbg !417
  %173 = load i8, i8* @ble_debug_enable, align 1, !tbaa !221
  %174 = and i8 %173, 1
  %175 = icmp ne i8 %174, 0
  br i1 %172, label %180, label %176, !dbg !418

; <label>:176:                                    ; preds = %168
  br i1 %175, label %177, label %179, !dbg !419

; <label>:177:                                    ; preds = %176
  %178 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %171) #8, !dbg !421
  br label %179, !dbg !421

; <label>:179:                                    ; preds = %177, %176
  tail call fastcc void @user_client_search_profile_complete() #8, !dbg !424
  br label %209, !dbg !425

; <label>:180:                                    ; preds = %168
  br i1 %175, label %181, label %186, !dbg !426

; <label>:181:                                    ; preds = %180
  %182 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %30, i32 0, i32 5, !dbg !427
  %183 = load i16, i16* %182, align 4, !dbg !427, !tbaa !374
  %184 = zext i16 %183 to i32, !dbg !427
  %185 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i32 %184) #8, !dbg !427
  br label %186, !dbg !427

; <label>:186:                                    ; preds = %181, %180
  %187 = tail call fastcc i32 @user_client_discover_next_service() #8, !dbg !430
  %188 = icmp eq i32 %187, 0, !dbg !430
  br i1 %188, label %202, label %189, !dbg !432

; <label>:189:                                    ; preds = %186
  %190 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !433, !tbaa !207
  %191 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %190, i32 0, i32 0, !dbg !436
  store i32 6, i32* %191, align 4, !dbg !437, !tbaa !247
  %192 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %190, i32 0, i32 5, !dbg !438
  store i16 0, i16* %192, align 4, !dbg !439, !tbaa !374
  %193 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %190, i32 0, i32 6, !dbg !440
  store i16 0, i16* %193, align 2, !dbg !441, !tbaa !377
  %194 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %190, i32 0, i32 7, i32 3, !dbg !442
  store i16 -1, i16* %194, align 2, !dbg !443, !tbaa !380
  %195 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %190, i32 0, i32 2, !dbg !444
  %196 = bitcast %struct.le_characteristic_t** %195 to i8**, !dbg !444
  %197 = load i8*, i8** %196, align 4, !dbg !444, !tbaa !382
  tail call void @llvm.memset.p0i8.i32(i8* %197, i8 0, i32 26, i32 2, i1 false) #6, !dbg !445
  %198 = load i16, i16* @gc_search_handle, align 2, !dbg !446, !tbaa !226
  %199 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %190, i32 0, i32 1, !dbg !447
  %200 = load %struct.le_service_t*, %struct.le_service_t** %199, align 4, !dbg !447, !tbaa !291
  %201 = tail call zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %198, %struct.le_service_t* %200) #9, !dbg !448
  br label %209, !dbg !449

; <label>:202:                                    ; preds = %186
  tail call fastcc void @user_client_search_profile_complete() #8, !dbg !450
  br label %209, !dbg !452

; <label>:203:                                    ; preds = %29
  %204 = load i8, i8* @ble_debug_enable, align 1, !dbg !453, !tbaa !221
  %205 = and i8 %204, 1, !dbg !453
  %206 = icmp eq i8 %205, 0, !dbg !453
  br i1 %206, label %209, label %207, !dbg !455

; <label>:207:                                    ; preds = %203
  %208 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 %32) #8, !dbg !456
  br label %209, !dbg !456

; <label>:209:                                    ; preds = %207, %203, %202, %189, %179, %149, %147, %145, %130, %129, %116, %100, %36, %34, %33, %28, %4
  ret void, !dbg !458
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind optsize
define internal fastcc void @user_client_report_acc_data(i8*, i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !459 {
  %3 = alloca %struct.att_data_report_t, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !463, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i16 %1, metadata !464, metadata !DIExpression()), !dbg !469
  %4 = bitcast %struct.att_data_report_t* %3 to i8*, !dbg !470
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !470
  call void @llvm.dbg.value(metadata i8 0, metadata !466, metadata !DIExpression()), !dbg !471
  %5 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* %0) #8, !dbg !472
  %6 = zext i8 %5 to i16, !dbg !472
  %7 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 0, !dbg !473
  store i16 %6, i16* %7, align 4, !dbg !474, !tbaa !475
  %8 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !477
  %9 = load i8, i8* %8, align 1, !dbg !477, !tbaa !221
  %10 = zext i8 %9 to i16, !dbg !477
  %11 = getelementptr inbounds i8, i8* %0, i32 5, !dbg !477
  %12 = load i8, i8* %11, align 1, !dbg !477, !tbaa !221
  %13 = zext i8 %12 to i16, !dbg !477
  %14 = shl nuw i16 %13, 8, !dbg !477
  %15 = or i16 %14, %10, !dbg !477
  %16 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 1, !dbg !478
  store i16 %15, i16* %16, align 2, !dbg !479, !tbaa !480
  %17 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !481
  %18 = load i8, i8* %17, align 1, !dbg !481, !tbaa !221
  %19 = zext i8 %18 to i16, !dbg !481
  %20 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !481
  %21 = load i8, i8* %20, align 1, !dbg !481, !tbaa !221
  %22 = zext i8 %21 to i16, !dbg !481
  %23 = shl nuw i16 %22, 8, !dbg !481
  %24 = or i16 %23, %19, !dbg !481
  %25 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 5, !dbg !482
  store i16 %24, i16* %25, align 4, !dbg !483, !tbaa !484
  switch i8 %5, label %44 [
    i8 -89, label %26
    i8 -88, label %26
    i8 -91, label %26
    i8 -90, label %31
    i8 -96, label %55
  ], !dbg !485

; <label>:26:                                     ; preds = %2, %2, %2
  %27 = getelementptr inbounds i8, i8* %0, i32 8, !dbg !486
  %28 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 4, !dbg !488
  store i8* %27, i8** %28, align 4, !dbg !489, !tbaa !490
  %29 = add i16 %1, -8, !dbg !491
  %30 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 3, !dbg !492
  store i16 %29, i16* %30, align 2, !dbg !493, !tbaa !494
  call void @llvm.dbg.value(metadata i8 1, metadata !466, metadata !DIExpression()), !dbg !471
  br label %52, !dbg !495

; <label>:31:                                     ; preds = %2
  %32 = getelementptr inbounds i8, i8* %0, i32 10, !dbg !496
  %33 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 4, !dbg !497
  store i8* %32, i8** %33, align 4, !dbg !498, !tbaa !490
  %34 = add i16 %1, -10, !dbg !499
  %35 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 3, !dbg !500
  store i16 %34, i16* %35, align 2, !dbg !501, !tbaa !494
  %36 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !502
  %37 = load i8, i8* %36, align 1, !dbg !502, !tbaa !221
  %38 = zext i8 %37 to i16, !dbg !502
  %39 = getelementptr inbounds i8, i8* %0, i32 7, !dbg !502
  %40 = load i8, i8* %39, align 1, !dbg !502, !tbaa !221
  %41 = zext i8 %40 to i16, !dbg !502
  %42 = shl nuw i16 %41, 8, !dbg !502
  %43 = or i16 %42, %38, !dbg !502
  call void @llvm.dbg.value(metadata i8 1, metadata !466, metadata !DIExpression()), !dbg !471
  br label %52, !dbg !503

; <label>:44:                                     ; preds = %2
  %45 = load i8, i8* @ble_debug_enable, align 1, !dbg !504, !tbaa !221
  %46 = and i8 %45, 1, !dbg !504
  %47 = icmp eq i8 %46, 0, !dbg !504
  br i1 %47, label %55, label %48, !dbg !506

; <label>:48:                                     ; preds = %44
  %49 = tail call fastcc zeroext i8 @hci_event_packet_get_type(i8* nonnull %0) #8, !dbg !507
  %50 = zext i8 %49 to i32, !dbg !507
  %51 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i32 %50) #8, !dbg !509
  br label %55

; <label>:52:                                     ; preds = %31, %26
  %53 = phi i16 [ 0, %26 ], [ %43, %31 ]
  %54 = getelementptr inbounds %struct.att_data_report_t, %struct.att_data_report_t* %3, i32 0, i32 2
  store i16 %53, i16* %54, align 4, !tbaa !511
  call void @llvm.dbg.value(metadata %struct.att_data_report_t* %3, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !512
  call void @user_client_report_data_callback(%struct.att_data_report_t* nonnull %3) #8, !dbg !513
  br label %55, !dbg !516

; <label>:55:                                     ; preds = %52, %48, %44, %2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !517
  ret void, !dbg !517
}

; Function Attrs: inlinehint nounwind optsize readonly
define internal fastcc zeroext i8 @hci_event_packet_get_type(i8* nocapture readonly) unnamed_addr #2 !dbg !518 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !525, metadata !DIExpression()), !dbg !526
  %2 = load i8, i8* %0, align 1, !dbg !527, !tbaa !221
  ret i8 %2, !dbg !528
}

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @gatt_event_service_query_result_get_service(i8*, %struct.le_service_t*) unnamed_addr #3 !dbg !529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata %struct.le_service_t* %1, metadata !536, metadata !DIExpression()), !dbg !538
  tail call void @gatt_client_deserialize_service(i8* %0, i32 4, %struct.le_service_t* %1) #9, !dbg !539
  ret void, !dbg !540
}

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #5

; Function Attrs: nounwind optsize
define internal fastcc i32 @user_client_discover_next_service() unnamed_addr #0 section ".bt_stack_code" !dbg !541 {
  %1 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !544, !tbaa !207
  %2 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %1, i32 0, i32 4, !dbg !546
  %3 = load i16, i16* %2, align 2, !dbg !546, !tbaa !296
  %4 = zext i16 %3 to i32, !dbg !544
  %5 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %1, i32 0, i32 3, !dbg !547
  %6 = load i16, i16* %5, align 4, !dbg !547, !tbaa !210
  %7 = icmp ult i16 %3, %6, !dbg !548
  %8 = load i8, i8* @ble_debug_enable, align 1, !tbaa !221
  %9 = and i8 %8, 1
  %10 = icmp ne i8 %9, 0
  br i1 %7, label %11, label %31, !dbg !549

; <label>:11:                                     ; preds = %0
  br i1 %10, label %12, label %17, !dbg !550

; <label>:12:                                     ; preds = %11
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0), i32 %4) #8, !dbg !552
  %14 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !tbaa !207
  %15 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %14, i32 0, i32 4
  %16 = load i16, i16* %15, align 2, !tbaa !296
  br label %17, !dbg !552

; <label>:17:                                     ; preds = %12, %11
  %18 = phi i16 [ %16, %12 ], [ %3, %11 ], !dbg !555
  %19 = phi %struct.client_ctl_t* [ %14, %12 ], [ %1, %11 ], !dbg !556
  %20 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %19, i32 0, i32 1, !dbg !557
  %21 = bitcast %struct.le_service_t** %20 to i8**, !dbg !557
  %22 = load i8*, i8** %21, align 4, !dbg !557, !tbaa !291
  %23 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %19, i32 0, i32 4, !dbg !558
  %24 = add i16 %18, 1, !dbg !555
  store i16 %24, i16* %23, align 2, !dbg !555, !tbaa !296
  %25 = zext i16 %18 to i32, !dbg !559
  %26 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %19, i32 0, i32 8, i32 %25, !dbg !559
  %27 = bitcast %struct.le_service_t* %26 to i8*, !dbg !560
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %27, i32 22, i32 2, i1 false), !dbg !560
  %28 = load i16, i16* @gc_search_handle, align 2, !dbg !561, !tbaa !226
  %29 = load %struct.le_service_t*, %struct.le_service_t** %20, align 4, !dbg !562, !tbaa !291
  %30 = tail call zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %28, %struct.le_service_t* %29) #9, !dbg !563
  br label %34, !dbg !564

; <label>:31:                                     ; preds = %0
  br i1 %10, label %32, label %34, !dbg !565

; <label>:32:                                     ; preds = %31
  %33 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str.27, i32 0, i32 0)), !dbg !567
  br label %34, !dbg !567

; <label>:34:                                     ; preds = %32, %31, %17
  %35 = phi i32 [ 1, %17 ], [ 0, %32 ], [ 0, %31 ]
  ret i32 %35, !dbg !570
}

; Function Attrs: optsize
declare zeroext i8 @gatt_client_discover_characteristics_for_service(void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_service_t*) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @gatt_event_characteristic_query_result_get_characteristic(i8*, %struct.le_characteristic_t*) unnamed_addr #3 !dbg !571 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !577, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata %struct.le_characteristic_t* %1, metadata !578, metadata !DIExpression()), !dbg !580
  tail call void @gatt_client_deserialize_characteristic(i8* %0, i32 4, %struct.le_characteristic_t* %1) #9, !dbg !581
  ret void, !dbg !582
}

; Function Attrs: nounwind optsize
define hidden i32 @user_client_search_profile_start(i32, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !587, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i32 %1, metadata !588, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 0, metadata !589, metadata !DIExpression()), !dbg !592
  %3 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !593, !tbaa !199
  %4 = icmp eq i32 %3, 0, !dbg !593
  br i1 %4, label %46, label %5, !dbg !595

; <label>:5:                                      ; preds = %2
  %6 = load %struct.client_ctl_t*, %struct.client_ctl_t** @client_s_hdl, align 4, !dbg !596, !tbaa !207
  %7 = icmp eq %struct.client_ctl_t* %6, null, !dbg !596
  br i1 %7, label %46, label %8, !dbg !598

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 0, !dbg !599
  store i32 4, i32* %9, align 4, !dbg !602, !tbaa !247
  %10 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 7, i32 0, !dbg !603
  %11 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 1, !dbg !604
  %12 = bitcast %struct.le_service_t** %11 to %struct.service_report_t**, !dbg !605
  store %struct.service_report_t* %10, %struct.service_report_t** %12, align 4, !dbg !605, !tbaa !291
  %13 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 7, i32 1, !dbg !606
  %14 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 2, !dbg !607
  %15 = bitcast %struct.le_characteristic_t** %14 to %struct.charact_report_t**, !dbg !608
  store %struct.charact_report_t* %13, %struct.charact_report_t** %15, align 4, !dbg !608, !tbaa !382
  %16 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 7, i32 2, !dbg !609
  store i16 1, i16* %16, align 4, !dbg !610, !tbaa !402
  %17 = getelementptr inbounds %struct.client_ctl_t, %struct.client_ctl_t* %6, i32 0, i32 7, i32 3, !dbg !611
  store i16 -1, i16* %17, align 2, !dbg !612, !tbaa !380
  %18 = bitcast %struct.service_report_t* %10 to i8*, !dbg !613
  tail call void @llvm.memset.p0i8.i32(i8* %18, i8 0, i32 22, i32 2, i1 false) #6, !dbg !614
  %19 = load i8, i8* @ble_debug_enable, align 1, !dbg !615, !tbaa !221
  %20 = and i8 %19, 1, !dbg !615
  %21 = icmp eq i8 %20, 0, !dbg !615
  br i1 %21, label %24, label %22, !dbg !617

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 %0) #8, !dbg !618
  br label %24, !dbg !618

; <label>:24:                                     ; preds = %22, %8
  switch i32 %0, label %46 [
    i32 1, label %25
    i32 2, label %29
    i32 3, label %33
  ], !dbg !620

; <label>:25:                                     ; preds = %24
  %26 = load i16, i16* @gc_search_handle, align 2, !dbg !621, !tbaa !226
  %27 = trunc i32 %1 to i16, !dbg !623
  %28 = tail call zeroext i8 @gatt_client_discover_primary_services_by_uuid16(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %26, i16 zeroext %27) #9, !dbg !624
  br label %36, !dbg !625

; <label>:29:                                     ; preds = %24
  %30 = load i16, i16* @gc_search_handle, align 2, !dbg !626, !tbaa !226
  %31 = inttoptr i32 %1 to i8*, !dbg !627
  %32 = tail call zeroext i8 @gatt_client_discover_primary_services_by_uuid128(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %30, i8* %31) #9, !dbg !628
  br label %36, !dbg !629

; <label>:33:                                     ; preds = %24
  %34 = load i16, i16* @gc_search_handle, align 2, !dbg !630, !tbaa !226
  %35 = tail call zeroext i8 @gatt_client_discover_primary_services(void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %34) #9, !dbg !631
  call void @llvm.dbg.value(metadata i32 %38, metadata !589, metadata !DIExpression()), !dbg !592
  br label %36, !dbg !632

; <label>:36:                                     ; preds = %33, %29, %25
  %37 = phi i8 [ %35, %33 ], [ %32, %29 ], [ %28, %25 ]
  %38 = zext i8 %37 to i32
  call void @llvm.dbg.value(metadata i32 %38, metadata !589, metadata !DIExpression()), !dbg !592
  %39 = icmp eq i8 %37, -107, !dbg !633
  br i1 %39, label %40, label %46, !dbg !635

; <label>:40:                                     ; preds = %36
  %41 = load i8, i8* @ble_debug_enable, align 1, !dbg !636, !tbaa !221
  %42 = and i8 %41, 1, !dbg !636
  %43 = icmp eq i8 %42, 0, !dbg !636
  br i1 %43, label %46, label %44, !dbg !639

; <label>:44:                                     ; preds = %40
  %45 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i32 %0) #8, !dbg !640
  br label %46, !dbg !640

; <label>:46:                                     ; preds = %44, %40, %36, %24, %5, %2
  %47 = phi i32 [ 84, %2 ], [ -98, %5 ], [ 149, %40 ], [ 149, %44 ], [ %38, %36 ], [ -1, %24 ]
  ret i32 %47, !dbg !642
}

; Function Attrs: optsize
declare zeroext i8 @gatt_client_discover_primary_services_by_uuid16(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @gatt_client_discover_primary_services_by_uuid128(void (i8, i16, i8*, i16)*, i16 zeroext, i8*) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @gatt_client_discover_primary_services(void (i8, i16, i8*, i16)*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @user_client_init(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !643 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !648, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i8* %1, metadata !649, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i16 %2, metadata !650, metadata !DIExpression()), !dbg !653
  %4 = load i32, i32* @config_le_gatt_client_num, align 4, !dbg !654, !tbaa !199
  %5 = icmp eq i32 %4, 0, !dbg !654
  br i1 %5, label %28, label %6, !dbg !656

; <label>:6:                                      ; preds = %3
  %7 = icmp ult i16 %2, 440, !dbg !657
  br i1 %7, label %8, label %16, !dbg !659

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0), i32 440) #8, !dbg !660
  %10 = load i32, i32* @config_asser, align 4, !dbg !662, !tbaa !199
  %11 = icmp eq i32 %10, 0, !dbg !662
  br i1 %11, label %15, label %12, !dbg !666

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.14, i32 0, i32 0), i32 513) #8, !dbg !668
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !673
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !675
  br label %16, !dbg !677

; <label>:15:                                     ; preds = %8
  tail call fastcc void @cpu_reset() #8, !dbg !679
  br label %16

; <label>:16:                                     ; preds = %15, %12, %6
  %17 = load i8, i8* @ble_debug_enable, align 1, !dbg !684, !tbaa !221
  %18 = and i8 %17, 1, !dbg !684
  %19 = icmp eq i8 %18, 0, !dbg !684
  br i1 %19, label %22, label %20, !dbg !686

; <label>:20:                                     ; preds = %16
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0), i32 440) #8, !dbg !687
  br label %22, !dbg !687

; <label>:22:                                     ; preds = %20, %16
  store i8* %1, i8** bitcast (%struct.client_ctl_t** @client_s_hdl to i8**), align 4, !dbg !689, !tbaa !207
  %23 = icmp eq i8* %1, null, !dbg !690
  br i1 %23, label %28, label %24, !dbg !692

; <label>:24:                                     ; preds = %22
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %1, i8 0, i32 440, i32 4, i1 false), !dbg !693
  store i16 %0, i16* @gc_search_handle, align 2, !dbg !695, !tbaa !226
  %25 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** getelementptr inbounds (%struct.gatt_client_notification, %struct.gatt_client_notification* @common_notification_registration, i32 0, i32 1), align 4, !dbg !696, !tbaa !698
  %26 = icmp eq void (i8, i16, i8*, i16)* %25, @user_client_gatt_event, !dbg !701
  br i1 %26, label %28, label %27, !dbg !702

; <label>:27:                                     ; preds = %24
  tail call void @gatt_client_listen_for_characteristic_value_updates(%struct.gatt_client_notification* nonnull @common_notification_registration, void (i8, i16, i8*, i16)* nonnull @user_client_gatt_event, i16 zeroext %0, %struct.le_characteristic_t* null) #9, !dbg !703
  br label %28, !dbg !705

; <label>:28:                                     ; preds = %27, %24, %22, %3
  ret void, !dbg !706
}

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #3 !dbg !707 {
  tail call void @p33_soft_reset() #9, !dbg !708
  ret void, !dbg !709
}

; Function Attrs: optsize
declare void @gatt_client_listen_for_characteristic_value_updates(%struct.gatt_client_notification*, void (i8, i16, i8*, i16)*, i16 zeroext, %struct.le_characteristic_t*) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @gatt_client_get_mtu(i16 zeroext, i16*) local_unnamed_addr #4

; Function Attrs: optsize
declare void @att_send_set_mtu_size(i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gatt_client_deserialize_service(i8*, i32, %struct.le_service_t*) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gatt_client_deserialize_characteristic(i8*, i32, %struct.le_characteristic_t*) local_unnamed_addr #4

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!158, !159}
!llvm.ident = !{!160}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !156, line: 190, type: !157, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !49)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/ble/client_user.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !31}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 41, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!7 = !DIEnumerator(name: "TC_IDLE", value: 0)
!8 = !DIEnumerator(name: "TC_W4_SCAN_RESULT", value: 1)
!9 = !DIEnumerator(name: "TC_W4_CONNECT", value: 2)
!10 = !DIEnumerator(name: "TC_W4_ENCRYPTED_CONNECTION", value: 3)
!11 = !DIEnumerator(name: "TC_W4_SERVICE_RESULT", value: 4)
!12 = !DIEnumerator(name: "TC_W4_SERVICE_WITH_UUID_RESULT", value: 5)
!13 = !DIEnumerator(name: "TC_W4_CHARACTERISTIC_RESULT", value: 6)
!14 = !DIEnumerator(name: "TC_W4_CHARACTERISTIC_WITH_UUID_RESULT", value: 7)
!15 = !DIEnumerator(name: "TC_W4_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 8)
!16 = !DIEnumerator(name: "TC_W4_INCLUDED_SERVICE_RESULT", value: 9)
!17 = !DIEnumerator(name: "TC_W4_READ_RESULT", value: 10)
!18 = !DIEnumerator(name: "TC_W4_READ_LONG_RESULT", value: 11)
!19 = !DIEnumerator(name: "TC_W2_WRITE_WITHOUT_RESPONSE", value: 12)
!20 = !DIEnumerator(name: "TC_W4_WRITE_WITHOUT_RESPONSE_SENT", value: 13)
!21 = !DIEnumerator(name: "TC_W4_WRITE_RESULT", value: 14)
!22 = !DIEnumerator(name: "TC_W4_LONG_WRITE_RESULT", value: 15)
!23 = !DIEnumerator(name: "TC_W4_RELIABLE_WRITE_RESULT", value: 16)
!24 = !DIEnumerator(name: "TC_W4_ACC_ENABLE", value: 17)
!25 = !DIEnumerator(name: "TC_W4_ACC_CLIENT_CONFIG_CHARACTERISTIC_RESULT", value: 18)
!26 = !DIEnumerator(name: "TC_W4_ACC_SUBSCRIBE", value: 19)
!27 = !DIEnumerator(name: "TC_W4_ACC_DATA", value: 20)
!28 = !DIEnumerator(name: "TC_W4_DISCONNECT", value: 21)
!29 = !DIEnumerator(name: "TC_DISCONNECTED", value: 22)
!30 = !DIEnumerator(name: "TC_CONNECTED", value: 23)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 89, size: 32, elements: !33)
!32 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/ble_api.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "BLE_CMD_RET_SUCESS", value: 0)
!35 = !DIEnumerator(name: "BLE_CMD_RET_BUSY", value: -100)
!36 = !DIEnumerator(name: "BLE_CMD_PARAM_OVERFLOW", value: -99)
!37 = !DIEnumerator(name: "BLE_CMD_OPT_FAIL", value: -98)
!38 = !DIEnumerator(name: "BLE_BUFFER_FULL", value: -97)
!39 = !DIEnumerator(name: "BLE_BUFFER_ERROR", value: -96)
!40 = !DIEnumerator(name: "BLE_CMD_PARAM_ERROR", value: -95)
!41 = !DIEnumerator(name: "BLE_CMD_STACK_NOT_RUN", value: -94)
!42 = !DIEnumerator(name: "BLE_CMD_CCC_FAIL", value: -93)
!43 = !{!44, !47, !48}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !45, line: 46, baseType: !46)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!49 = !{!0, !50, !77, !79}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "common_notification_registration", scope: !2, file: !3, line: 105, type: !52, isLocal: true, isDefinition: true)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_notification_t", file: !53, line: 198, baseType: !54)
!53 = !DIFile(filename: "../btstack/Protocol/include/ble/gatt_client.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_client_notification", file: !53, line: 193, size: 96, elements: !55)
!55 = !{!56, !64, !73, !76}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !54, file: !53, line: 194, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !58, line: 100, baseType: !59)
!58 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !58, line: 55, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !58, line: 53, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !58, line: 54, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !54, file: !53, line: 195, baseType: !65, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !66, line: 58, baseType: !67)
!66 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !44, !72, !44}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 44, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !54, file: !53, line: 196, baseType: !74, size: 16, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !75, line: 60, baseType: !44)
!75 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_handle", scope: !54, file: !53, line: 197, baseType: !44, size: 16, offset: 80)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "gc_search_handle", scope: !2, file: !3, line: 106, type: !74, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "client_s_hdl", scope: !2, file: !3, line: 108, type: !81, isLocal: true, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "client_ctl_t", file: !3, line: 103, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 85, size: 3520, elements: !84)
!84 = !{!85, !87, !106, !117, !118, !119, !120, !121, !148, !150}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tc_state", scope: !83, file: !3, line: 86, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "tc_state_t", file: !3, line: 75, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "current_service", scope: !83, file: !3, line: 89, baseType: !88, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_service_t", file: !90, line: 24, baseType: !91)
!90 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/gatt.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 19, size: 176, elements: !92)
!92 = !{!93, !98, !99, !100}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "start_group_handle", scope: !91, file: !90, line: 20, baseType: !94, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 26, baseType: !96)
!95 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !97, line: 43, baseType: !46)
!97 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "end_group_handle", scope: !91, file: !90, line: 21, baseType: !94, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !91, file: !90, line: 22, baseType: !94, size: 16, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !91, file: !90, line: 23, baseType: !101, size: 128, offset: 48)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !95, line: 20, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !97, line: 29, baseType: !71)
!104 = !{!105}
!105 = !DISubrange(count: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "current_characteristic", scope: !83, file: !3, line: 90, baseType: !107, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_characteristic_t", file: !90, line: 34, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 27, size: 208, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "start_handle", scope: !109, file: !90, line: 28, baseType: !94, size: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "value_handle", scope: !109, file: !90, line: 29, baseType: !94, size: 16, offset: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "end_handle", scope: !109, file: !90, line: 30, baseType: !94, size: 16, offset: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !109, file: !90, line: 31, baseType: !94, size: 16, offset: 48)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !109, file: !90, line: 32, baseType: !94, size: 16, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !109, file: !90, line: 33, baseType: !101, size: 128, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "service_count", scope: !83, file: !3, line: 96, baseType: !47, size: 16, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "service_index", scope: !83, file: !3, line: 97, baseType: !47, size: 16, offset: 112)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_count", scope: !83, file: !3, line: 98, baseType: !47, size: 16, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_index", scope: !83, file: !3, line: 99, baseType: !47, size: 16, offset: 144)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cur_search_info", scope: !83, file: !3, line: 100, baseType: !122, size: 416, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "search_result_t", file: !123, line: 90, baseType: !124)
!123 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/att.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 85, size: 416, elements: !125)
!125 = !{!126, !134, !144, !147}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "services", scope: !124, file: !123, line: 86, baseType: !127, size: 176)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "service_report_t", file: !123, line: 64, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 59, size: 176, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "start_group_handle", scope: !128, file: !123, line: 60, baseType: !94, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "end_group_handle", scope: !128, file: !123, line: 61, baseType: !94, size: 16, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !128, file: !123, line: 62, baseType: !94, size: 16, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !128, file: !123, line: 63, baseType: !101, size: 128, offset: 48)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic", scope: !124, file: !123, line: 87, baseType: !135, size: 208, offset: 176)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "charact_report_t", file: !123, line: 73, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 66, size: 208, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "start_handle", scope: !136, file: !123, line: 67, baseType: !94, size: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "value_handle", scope: !136, file: !123, line: 68, baseType: !94, size: 16, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "end_handle", scope: !136, file: !123, line: 69, baseType: !94, size: 16, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !136, file: !123, line: 70, baseType: !94, size: 16, offset: 48)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !136, file: !123, line: 71, baseType: !94, size: 16, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !136, file: !123, line: 72, baseType: !101, size: 128, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "service_index", scope: !124, file: !123, line: 88, baseType: !145, size: 16, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !146, line: 13, baseType: !46)
!146 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_index", scope: !124, file: !123, line: 89, baseType: !145, size: 16, offset: 400)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "remote_services", scope: !83, file: !3, line: 101, baseType: !149, size: 2816, offset: 576)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2816, elements: !104)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserve_buf", scope: !83, file: !3, line: 102, baseType: !151, size: 128, offset: 3392)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !154)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !45, line: 48, baseType: !153)
!153 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!157 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!158 = !{i32 2, !"Dwarf Version", i32 4}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!161 = distinct !DISubprogram(name: "user_client_report_search_result", scope: !3, file: !3, line: 163, type: !162, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !165)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!165 = !{!166}
!166 = !DILocalVariable(name: "result_info", arg: 1, scope: !161, file: !3, line: 163, type: !164)
!167 = !DILocation(line: 163, column: 56, scope: !161)
!168 = !DILocation(line: 166, column: 1, scope: !161)
!169 = distinct !DISubprogram(name: "user_client_report_data_callback", scope: !3, file: !3, line: 256, type: !170, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !184)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_data_report_t", file: !123, line: 82, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 75, size: 128, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !183}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "packet_type", scope: !174, file: !123, line: 76, baseType: !145, size: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "value_handle", scope: !174, file: !123, line: 77, baseType: !145, size: 16, offset: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "value_offset", scope: !174, file: !123, line: 78, baseType: !145, size: 16, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "blob_length", scope: !174, file: !123, line: 79, baseType: !145, size: 16, offset: 48)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !174, file: !123, line: 80, baseType: !181, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !146, line: 11, baseType: !71)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handle", scope: !174, file: !123, line: 81, baseType: !145, size: 16, offset: 96)
!184 = !{!185}
!185 = !DILocalVariable(name: "report_data", arg: 1, scope: !169, file: !3, line: 256, type: !172)
!186 = !DILocation(line: 256, column: 58, scope: !169)
!187 = !DILocation(line: 267, column: 1, scope: !169)
!188 = distinct !DISubprogram(name: "user_client_set_search_complete", scope: !3, file: !3, line: 316, type: !189, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{null}
!191 = !{}
!192 = !DILocation(line: 318, column: 5, scope: !188)
!193 = !DILocation(line: 319, column: 1, scope: !188)
!194 = distinct !DISubprogram(name: "user_client_search_profile_complete", scope: !3, file: !3, line: 168, type: !189, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !195)
!195 = !{!196}
!196 = !DILocalVariable(name: "mtu", scope: !194, file: !3, line: 174, type: !47)
!197 = !DILocation(line: 170, column: 10, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 170, column: 9)
!199 = !{!200, !200, i64 0}
!200 = !{!"int", !201, i64 0}
!201 = !{!"omnipotent char", !202, i64 0}
!202 = !{!"Simple C/C++ TBAA"}
!203 = !DILocation(line: 170, column: 9, scope: !194)
!204 = !DILocation(line: 174, column: 5, scope: !194)
!205 = !DILocation(line: 175, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !194, file: !3, line: 175, column: 9)
!207 = !{!208, !208, i64 0}
!208 = !{!"any pointer", !201, i64 0}
!209 = !DILocation(line: 175, column: 17, scope: !206)
!210 = !{!211, !212, i64 12}
!211 = !{!"", !201, i64 0, !208, i64 4, !208, i64 8, !212, i64 12, !212, i64 14, !212, i64 16, !212, i64 18, !213, i64 20, !201, i64 72, !201, i64 424}
!212 = !{!"short", !201, i64 0}
!213 = !{!"", !214, i64 0, !215, i64 22, !212, i64 48, !212, i64 50}
!214 = !{!"", !212, i64 0, !212, i64 2, !212, i64 4, !201, i64 6}
!215 = !{!"", !212, i64 0, !212, i64 2, !212, i64 4, !212, i64 6, !212, i64 8, !201, i64 10}
!216 = !DILocation(line: 175, column: 31, scope: !206)
!217 = !DILocation(line: 175, column: 9, scope: !194)
!218 = !DILocation(line: 176, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 176, column: 9)
!220 = distinct !DILexicalBlock(scope: !206, file: !3, line: 175, column: 37)
!221 = !{!201, !201, i64 0}
!222 = !DILocation(line: 176, column: 9, scope: !220)
!223 = !DILocation(line: 176, column: 9, scope: !224)
!224 = !DILexicalBlockFile(scope: !219, file: !3, discriminator: 1)
!225 = !DILocation(line: 179, column: 25, scope: !194)
!226 = !{!212, !212, i64 0}
!227 = !DILocation(line: 174, column: 9, scope: !194)
!228 = !DILocation(line: 179, column: 5, scope: !194)
!229 = !DILocation(line: 180, column: 9, scope: !194)
!230 = !DILocation(line: 181, column: 5, scope: !231)
!231 = distinct !DILexicalBlock(scope: !194, file: !3, line: 181, column: 5)
!232 = !DILocation(line: 181, column: 5, scope: !194)
!233 = !DILocation(line: 181, column: 5, scope: !234)
!234 = !DILexicalBlockFile(scope: !231, file: !3, discriminator: 1)
!235 = !DILocation(line: 182, column: 45, scope: !194)
!236 = !DILocation(line: 182, column: 27, scope: !194)
!237 = !DILocation(line: 182, column: 5, scope: !194)
!238 = !DILocation(line: 183, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !194, file: !3, line: 183, column: 5)
!240 = !DILocation(line: 183, column: 5, scope: !194)
!241 = !DILocation(line: 183, column: 5, scope: !242)
!242 = !DILexicalBlockFile(scope: !239, file: !3, discriminator: 1)
!243 = !DILocation(line: 184, column: 5, scope: !194)
!244 = !DILocation(line: 185, column: 5, scope: !194)
!245 = !DILocation(line: 185, column: 13, scope: !194)
!246 = !DILocation(line: 185, column: 22, scope: !194)
!247 = !{!211, !201, i64 0}
!248 = !DILocation(line: 186, column: 22, scope: !194)
!249 = !DILocation(line: 187, column: 1, scope: !194)
!250 = !DILocation(line: 187, column: 1, scope: !251)
!251 = !DILexicalBlockFile(scope: !194, file: !3, discriminator: 1)
!252 = distinct !DISubprogram(name: "user_client_gatt_event", scope: !3, file: !3, line: 321, type: !68, isLocal: false, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !253)
!253 = !{!254, !255, !256, !257}
!254 = !DILocalVariable(name: "packet_type", arg: 1, scope: !252, file: !3, line: 321, type: !70)
!255 = !DILocalVariable(name: "channel", arg: 2, scope: !252, file: !3, line: 321, type: !44)
!256 = !DILocalVariable(name: "packet", arg: 3, scope: !252, file: !3, line: 321, type: !72)
!257 = !DILocalVariable(name: "size", arg: 4, scope: !252, file: !3, line: 321, type: !44)
!258 = !DILocation(line: 321, column: 37, scope: !252)
!259 = !DILocation(line: 321, column: 59, scope: !252)
!260 = !DILocation(line: 321, column: 77, scope: !252)
!261 = !DILocation(line: 321, column: 94, scope: !252)
!262 = !DILocation(line: 323, column: 10, scope: !263)
!263 = distinct !DILexicalBlock(scope: !252, file: !3, line: 323, column: 9)
!264 = !DILocation(line: 323, column: 9, scope: !252)
!265 = !DILocation(line: 327, column: 5, scope: !266)
!266 = distinct !DILexicalBlock(scope: !252, file: !3, line: 327, column: 5)
!267 = !DILocation(line: 327, column: 5, scope: !252)
!268 = !DILocation(line: 327, column: 5, scope: !269)
!269 = !DILexicalBlockFile(scope: !266, file: !3, discriminator: 1)
!270 = !DILocation(line: 330, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !252, file: !3, line: 330, column: 9)
!272 = !DILocation(line: 330, column: 29, scope: !271)
!273 = !DILocation(line: 330, column: 26, scope: !271)
!274 = !DILocation(line: 330, column: 9, scope: !252)
!275 = !DILocation(line: 332, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 330, column: 52)
!277 = !DILocation(line: 333, column: 9, scope: !276)
!278 = !DILocation(line: 336, column: 13, scope: !252)
!279 = !DILocation(line: 336, column: 21, scope: !252)
!280 = !DILocation(line: 336, column: 5, scope: !252)
!281 = !DILocation(line: 339, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !252, file: !3, line: 336, column: 31)
!283 = !DILocation(line: 340, column: 9, scope: !282)
!284 = !DILocation(line: 343, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !3, line: 343, column: 9)
!286 = !DILocation(line: 343, column: 9, scope: !282)
!287 = !DILocation(line: 344, column: 17, scope: !282)
!288 = !DILocation(line: 344, column: 9, scope: !282)
!289 = !DILocation(line: 346, column: 73, scope: !290)
!290 = distinct !DILexicalBlock(scope: !282, file: !3, line: 344, column: 52)
!291 = !{!211, !208, i64 4}
!292 = !DILocation(line: 346, column: 13, scope: !290)
!293 = !DILocation(line: 347, column: 17, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 347, column: 17)
!295 = !DILocation(line: 347, column: 25, scope: !294)
!296 = !{!211, !212, i64 14}
!297 = !DILocation(line: 347, column: 39, scope: !294)
!298 = !DILocation(line: 347, column: 17, scope: !290)
!299 = !DILocation(line: 348, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !294, file: !3, line: 347, column: 66)
!301 = !DILocation(line: 348, column: 17, scope: !302)
!302 = !DILexicalBlockFile(scope: !303, file: !3, discriminator: 1)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 348, column: 17)
!304 = !{!214, !212, i64 4}
!305 = !DILocation(line: 349, column: 22, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !3, line: 349, column: 21)
!307 = !DILocation(line: 349, column: 30, scope: !306)
!308 = !DILocation(line: 349, column: 47, scope: !306)
!309 = !DILocation(line: 349, column: 21, scope: !300)
!310 = !DILocation(line: 350, column: 21, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 350, column: 21)
!312 = distinct !DILexicalBlock(scope: !306, file: !3, line: 349, column: 55)
!313 = !DILocation(line: 350, column: 21, scope: !312)
!314 = !DILocation(line: 350, column: 21, scope: !315)
!315 = !DILexicalBlockFile(scope: !311, file: !3, discriminator: 1)
!316 = !DILocation(line: 351, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 351, column: 21)
!318 = !DILocation(line: 351, column: 21, scope: !312)
!319 = !DILocation(line: 351, column: 21, scope: !320)
!320 = !DILexicalBlockFile(scope: !321, file: !3, discriminator: 1)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 351, column: 21)
!322 = !DILocation(line: 351, column: 21, scope: !323)
!323 = !DILexicalBlockFile(scope: !321, file: !3, discriminator: 2)
!324 = !DILocation(line: 353, column: 25, scope: !300)
!325 = !DILocation(line: 353, column: 57, scope: !300)
!326 = !DILocation(line: 353, column: 70, scope: !300)
!327 = !DILocation(line: 353, column: 17, scope: !300)
!328 = !DILocation(line: 353, column: 83, scope: !300)
!329 = !DILocation(line: 354, column: 25, scope: !300)
!330 = !DILocation(line: 354, column: 38, scope: !300)
!331 = !DILocation(line: 355, column: 13, scope: !300)
!332 = !DILocation(line: 356, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !294, file: !3, line: 355, column: 20)
!334 = !DILocation(line: 356, column: 17, scope: !335)
!335 = !DILexicalBlockFile(scope: !336, file: !3, discriminator: 1)
!336 = distinct !DILexicalBlock(scope: !333, file: !3, line: 356, column: 17)
!337 = !DILocation(line: 358, column: 20, scope: !290)
!338 = !DILocation(line: 358, column: 28, scope: !290)
!339 = !DILocation(line: 358, column: 13, scope: !290)
!340 = !DILocation(line: 359, column: 13, scope: !290)
!341 = !DILocation(line: 362, column: 17, scope: !342)
!342 = distinct !DILexicalBlock(scope: !290, file: !3, line: 362, column: 17)
!343 = !DILocation(line: 362, column: 27, scope: !342)
!344 = !DILocation(line: 362, column: 17, scope: !290)
!345 = !DILocation(line: 363, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !3, line: 362, column: 33)
!347 = !DILocation(line: 363, column: 17, scope: !348)
!348 = !DILexicalBlockFile(scope: !349, file: !3, discriminator: 1)
!349 = distinct !DILexicalBlock(scope: !346, file: !3, line: 363, column: 17)
!350 = !DILocation(line: 364, column: 17, scope: !346)
!351 = !DILocation(line: 365, column: 17, scope: !346)
!352 = !DILocation(line: 368, column: 13, scope: !290)
!353 = !DILocation(line: 368, column: 13, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !3, discriminator: 1)
!355 = distinct !DILexicalBlock(scope: !290, file: !3, line: 368, column: 13)
!356 = !DILocation(line: 369, column: 17, scope: !357)
!357 = distinct !DILexicalBlock(scope: !290, file: !3, line: 369, column: 17)
!358 = !DILocation(line: 369, column: 25, scope: !357)
!359 = !DILocation(line: 369, column: 39, scope: !357)
!360 = !DILocation(line: 369, column: 17, scope: !290)
!361 = !DILocation(line: 370, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 369, column: 45)
!363 = !DILocation(line: 371, column: 13, scope: !362)
!364 = !DILocation(line: 372, column: 25, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !3, line: 371, column: 20)
!366 = !DILocation(line: 372, column: 39, scope: !365)
!367 = !DILocation(line: 373, column: 17, scope: !365)
!368 = !DILocation(line: 154, column: 5, scope: !369, inlinedAt: !370)
!369 = distinct !DISubprogram(name: "user_client_search_characteristic_init", scope: !3, file: !3, line: 152, type: !189, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!370 = distinct !DILocation(line: 374, column: 17, scope: !365)
!371 = !DILocation(line: 154, column: 13, scope: !369, inlinedAt: !370)
!372 = !DILocation(line: 155, column: 13, scope: !369, inlinedAt: !370)
!373 = !DILocation(line: 155, column: 34, scope: !369, inlinedAt: !370)
!374 = !{!211, !212, i64 16}
!375 = !DILocation(line: 156, column: 13, scope: !369, inlinedAt: !370)
!376 = !DILocation(line: 156, column: 34, scope: !369, inlinedAt: !370)
!377 = !{!211, !212, i64 18}
!378 = !DILocation(line: 157, column: 29, scope: !369, inlinedAt: !370)
!379 = !DILocation(line: 157, column: 50, scope: !369, inlinedAt: !370)
!380 = !{!211, !212, i64 70}
!381 = !DILocation(line: 158, column: 20, scope: !369, inlinedAt: !370)
!382 = !{!211, !208, i64 8}
!383 = !DILocation(line: 158, column: 5, scope: !369, inlinedAt: !370)
!384 = !DILocation(line: 375, column: 34, scope: !365)
!385 = !DILocation(line: 376, column: 90, scope: !365)
!386 = !DILocation(line: 376, column: 116, scope: !365)
!387 = !DILocation(line: 376, column: 17, scope: !365)
!388 = !DILocation(line: 385, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !282, file: !3, line: 385, column: 9)
!390 = !DILocation(line: 385, column: 9, scope: !282)
!391 = !DILocation(line: 386, column: 17, scope: !282)
!392 = !DILocation(line: 386, column: 9, scope: !282)
!393 = !DILocation(line: 388, column: 87, scope: !394)
!394 = distinct !DILexicalBlock(scope: !282, file: !3, line: 386, column: 52)
!395 = !DILocation(line: 388, column: 13, scope: !394)
!396 = !DILocation(line: 191, column: 45, scope: !397, inlinedAt: !398)
!397 = distinct !DISubprogram(name: "user_client_search_report_characteristtic", scope: !3, file: !3, line: 189, type: !189, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!398 = distinct !DILocation(line: 389, column: 13, scope: !394)
!399 = !DILocation(line: 191, column: 53, scope: !397, inlinedAt: !398)
!400 = !DILocation(line: 191, column: 29, scope: !397, inlinedAt: !398)
!401 = !DILocation(line: 191, column: 43, scope: !397, inlinedAt: !398)
!402 = !{!211, !212, i64 68}
!403 = !DILocation(line: 192, column: 60, scope: !397, inlinedAt: !398)
!404 = !DILocation(line: 192, column: 29, scope: !397, inlinedAt: !398)
!405 = !DILocation(line: 192, column: 50, scope: !397, inlinedAt: !398)
!406 = !DILocation(line: 193, column: 33, scope: !397, inlinedAt: !398)
!407 = !DILocation(line: 194, column: 13, scope: !397, inlinedAt: !398)
!408 = !DILocation(line: 194, column: 33, scope: !397, inlinedAt: !398)
!409 = !DILocation(line: 195, column: 47, scope: !397, inlinedAt: !398)
!410 = !DILocation(line: 195, column: 5, scope: !397, inlinedAt: !398)
!411 = !DILocation(line: 390, column: 20, scope: !394)
!412 = !DILocation(line: 390, column: 28, scope: !394)
!413 = !DILocation(line: 390, column: 13, scope: !394)
!414 = !DILocation(line: 391, column: 13, scope: !394)
!415 = !DILocation(line: 394, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !394, file: !3, line: 394, column: 17)
!417 = !DILocation(line: 394, column: 27, scope: !416)
!418 = !DILocation(line: 394, column: 17, scope: !394)
!419 = !DILocation(line: 395, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !3, line: 394, column: 33)
!421 = !DILocation(line: 395, column: 17, scope: !422)
!422 = !DILexicalBlockFile(scope: !423, file: !3, discriminator: 1)
!423 = distinct !DILexicalBlock(scope: !420, file: !3, line: 395, column: 17)
!424 = !DILocation(line: 396, column: 17, scope: !420)
!425 = !DILocation(line: 397, column: 17, scope: !420)
!426 = !DILocation(line: 399, column: 13, scope: !394)
!427 = !DILocation(line: 399, column: 13, scope: !428)
!428 = !DILexicalBlockFile(scope: !429, file: !3, discriminator: 1)
!429 = distinct !DILexicalBlock(scope: !394, file: !3, line: 399, column: 13)
!430 = !DILocation(line: 400, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !394, file: !3, line: 400, column: 17)
!432 = !DILocation(line: 400, column: 17, scope: !394)
!433 = !DILocation(line: 154, column: 5, scope: !369, inlinedAt: !434)
!434 = distinct !DILocation(line: 401, column: 17, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !3, line: 400, column: 54)
!436 = !DILocation(line: 154, column: 13, scope: !369, inlinedAt: !434)
!437 = !DILocation(line: 154, column: 22, scope: !369, inlinedAt: !434)
!438 = !DILocation(line: 155, column: 13, scope: !369, inlinedAt: !434)
!439 = !DILocation(line: 155, column: 34, scope: !369, inlinedAt: !434)
!440 = !DILocation(line: 156, column: 13, scope: !369, inlinedAt: !434)
!441 = !DILocation(line: 156, column: 34, scope: !369, inlinedAt: !434)
!442 = !DILocation(line: 157, column: 29, scope: !369, inlinedAt: !434)
!443 = !DILocation(line: 157, column: 50, scope: !369, inlinedAt: !434)
!444 = !DILocation(line: 158, column: 20, scope: !369, inlinedAt: !434)
!445 = !DILocation(line: 158, column: 5, scope: !369, inlinedAt: !434)
!446 = !DILocation(line: 402, column: 90, scope: !435)
!447 = !DILocation(line: 402, column: 116, scope: !435)
!448 = !DILocation(line: 402, column: 17, scope: !435)
!449 = !DILocation(line: 403, column: 17, scope: !435)
!450 = !DILocation(line: 405, column: 17, scope: !451)
!451 = distinct !DILexicalBlock(scope: !431, file: !3, line: 404, column: 20)
!452 = !DILocation(line: 407, column: 13, scope: !394)
!453 = !DILocation(line: 444, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !282, file: !3, line: 444, column: 9)
!455 = !DILocation(line: 444, column: 9, scope: !282)
!456 = !DILocation(line: 444, column: 9, scope: !457)
!457 = !DILexicalBlockFile(scope: !454, file: !3, discriminator: 1)
!458 = !DILocation(line: 448, column: 1, scope: !252)
!459 = distinct !DISubprogram(name: "user_client_report_acc_data", scope: !3, file: !3, line: 271, type: !460, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !72, !44}
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(name: "packet", arg: 1, scope: !459, file: !3, line: 271, type: !72)
!464 = !DILocalVariable(name: "size", arg: 2, scope: !459, file: !3, line: 271, type: !44)
!465 = !DILocalVariable(name: "report_data", scope: !459, file: !3, line: 273, type: !173)
!466 = !DILocalVariable(name: "get_data_flag", scope: !459, file: !3, line: 274, type: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !45, line: 44, baseType: !71)
!468 = !DILocation(line: 271, column: 50, scope: !459)
!469 = !DILocation(line: 271, column: 67, scope: !459)
!470 = !DILocation(line: 273, column: 5, scope: !459)
!471 = !DILocation(line: 274, column: 8, scope: !459)
!472 = !DILocation(line: 276, column: 31, scope: !459)
!473 = !DILocation(line: 276, column: 17, scope: !459)
!474 = !DILocation(line: 276, column: 29, scope: !459)
!475 = !{!476, !212, i64 0}
!476 = !{!"", !212, i64 0, !212, i64 2, !212, i64 4, !212, i64 6, !208, i64 8, !212, i64 12}
!477 = !DILocation(line: 277, column: 32, scope: !459)
!478 = !DILocation(line: 277, column: 17, scope: !459)
!479 = !DILocation(line: 277, column: 30, scope: !459)
!480 = !{!476, !212, i64 2}
!481 = !DILocation(line: 278, column: 32, scope: !459)
!482 = !DILocation(line: 278, column: 17, scope: !459)
!483 = !DILocation(line: 278, column: 29, scope: !459)
!484 = !{!476, !212, i64 12}
!485 = !DILocation(line: 282, column: 5, scope: !459)
!486 = !DILocation(line: 286, column: 35, scope: !487)
!487 = distinct !DILexicalBlock(scope: !459, file: !3, line: 282, column: 38)
!488 = !DILocation(line: 286, column: 21, scope: !487)
!489 = !DILocation(line: 286, column: 26, scope: !487)
!490 = !{!476, !208, i64 8}
!491 = !DILocation(line: 287, column: 40, scope: !487)
!492 = !DILocation(line: 287, column: 21, scope: !487)
!493 = !DILocation(line: 287, column: 33, scope: !487)
!494 = !{!476, !212, i64 6}
!495 = !DILocation(line: 290, column: 9, scope: !487)
!496 = !DILocation(line: 295, column: 35, scope: !487)
!497 = !DILocation(line: 295, column: 21, scope: !487)
!498 = !DILocation(line: 295, column: 26, scope: !487)
!499 = !DILocation(line: 296, column: 40, scope: !487)
!500 = !DILocation(line: 296, column: 21, scope: !487)
!501 = !DILocation(line: 296, column: 33, scope: !487)
!502 = !DILocation(line: 297, column: 36, scope: !487)
!503 = !DILocation(line: 299, column: 9, scope: !487)
!504 = !DILocation(line: 306, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !487, file: !3, line: 306, column: 9)
!506 = !DILocation(line: 306, column: 9, scope: !487)
!507 = !DILocation(line: 306, column: 9, scope: !508)
!508 = !DILexicalBlockFile(scope: !505, file: !3, discriminator: 1)
!509 = !DILocation(line: 306, column: 9, scope: !510)
!510 = !DILexicalBlockFile(scope: !505, file: !3, discriminator: 2)
!511 = !{!476, !212, i64 4}
!512 = !DILocation(line: 273, column: 23, scope: !459)
!513 = !DILocation(line: 312, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 311, column: 24)
!515 = distinct !DILexicalBlock(scope: !459, file: !3, line: 311, column: 9)
!516 = !DILocation(line: 313, column: 5, scope: !514)
!517 = !DILocation(line: 314, column: 1, scope: !459)
!518 = distinct !DISubprogram(name: "hci_event_packet_get_type", scope: !519, file: !519, line: 38, type: !520, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !524)
!519 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!520 = !DISubroutineType(types: !521)
!521 = !{!102, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!524 = !{!525}
!525 = !DILocalVariable(name: "event", arg: 1, scope: !518, file: !519, line: 38, type: !522)
!526 = !DILocation(line: 38, column: 68, scope: !518)
!527 = !DILocation(line: 40, column: 16, scope: !518)
!528 = !DILocation(line: 40, column: 9, scope: !518)
!529 = distinct !DISubprogram(name: "gatt_event_service_query_result_get_service", scope: !519, file: !519, line: 1919, type: !530, isLocal: true, isDefinition: true, scopeLine: 1920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !534)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !522, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_service_t", file: !90, line: 24, baseType: !91)
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "event", arg: 1, scope: !529, file: !519, line: 1919, type: !522)
!536 = !DILocalVariable(name: "service", arg: 2, scope: !529, file: !519, line: 1919, type: !532)
!537 = !DILocation(line: 1919, column: 83, scope: !529)
!538 = !DILocation(line: 1919, column: 113, scope: !529)
!539 = !DILocation(line: 1921, column: 9, scope: !529)
!540 = !DILocation(line: 1922, column: 5, scope: !529)
!541 = distinct !DISubprogram(name: "user_client_discover_next_service", scope: !3, file: !3, line: 211, type: !542, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!542 = !DISubroutineType(types: !543)
!543 = !{!157}
!544 = !DILocation(line: 213, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 213, column: 9)
!546 = !DILocation(line: 213, column: 17, scope: !545)
!547 = !DILocation(line: 213, column: 41, scope: !545)
!548 = !DILocation(line: 213, column: 31, scope: !545)
!549 = !DILocation(line: 213, column: 9, scope: !541)
!550 = !DILocation(line: 214, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !545, file: !3, line: 213, column: 56)
!552 = !DILocation(line: 214, column: 9, scope: !553)
!553 = !DILexicalBlockFile(scope: !554, file: !3, discriminator: 1)
!554 = distinct !DILexicalBlock(scope: !551, file: !3, line: 214, column: 9)
!555 = !DILocation(line: 215, column: 87, scope: !551)
!556 = !DILocation(line: 217, column: 100, scope: !551)
!557 = !DILocation(line: 215, column: 24, scope: !551)
!558 = !DILocation(line: 215, column: 74, scope: !551)
!559 = !DILocation(line: 215, column: 42, scope: !551)
!560 = !DILocation(line: 215, column: 9, scope: !551)
!561 = !DILocation(line: 217, column: 82, scope: !551)
!562 = !DILocation(line: 217, column: 108, scope: !551)
!563 = !DILocation(line: 217, column: 9, scope: !551)
!564 = !DILocation(line: 218, column: 9, scope: !551)
!565 = !DILocation(line: 220, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !545, file: !3, line: 219, column: 12)
!567 = !DILocation(line: 220, column: 9, scope: !568)
!568 = !DILexicalBlockFile(scope: !569, file: !3, discriminator: 1)
!569 = distinct !DILexicalBlock(scope: !566, file: !3, line: 220, column: 9)
!570 = !DILocation(line: 223, column: 1, scope: !541)
!571 = distinct !DISubprogram(name: "gatt_event_characteristic_query_result_get_characteristic", scope: !519, file: !519, line: 1942, type: !572, isLocal: true, isDefinition: true, scopeLine: 1943, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !576)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !522, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_characteristic_t", file: !90, line: 34, baseType: !109)
!576 = !{!577, !578}
!577 = !DILocalVariable(name: "event", arg: 1, scope: !571, file: !519, line: 1942, type: !522)
!578 = !DILocalVariable(name: "characteristic", arg: 2, scope: !571, file: !519, line: 1942, type: !574)
!579 = !DILocation(line: 1942, column: 97, scope: !571)
!580 = !DILocation(line: 1942, column: 134, scope: !571)
!581 = !DILocation(line: 1944, column: 9, scope: !571)
!582 = !DILocation(line: 1945, column: 5, scope: !571)
!583 = distinct !DISubprogram(name: "user_client_search_profile_start", scope: !3, file: !3, line: 466, type: !584, isLocal: false, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{!157, !152, !152}
!586 = !{!587, !588, !589}
!587 = !DILocalVariable(name: "search_pfl_type", arg: 1, scope: !583, file: !3, line: 466, type: !152)
!588 = !DILocalVariable(name: "search_data", arg: 2, scope: !583, file: !3, line: 466, type: !152)
!589 = !DILocalVariable(name: "res", scope: !583, file: !3, line: 468, type: !157)
!590 = !DILocation(line: 466, column: 42, scope: !583)
!591 = !DILocation(line: 466, column: 63, scope: !583)
!592 = !DILocation(line: 468, column: 9, scope: !583)
!593 = !DILocation(line: 470, column: 10, scope: !594)
!594 = distinct !DILexicalBlock(scope: !583, file: !3, line: 470, column: 9)
!595 = !DILocation(line: 470, column: 9, scope: !583)
!596 = !DILocation(line: 474, column: 5, scope: !597)
!597 = distinct !DILexicalBlock(scope: !583, file: !3, line: 474, column: 5)
!598 = !DILocation(line: 474, column: 5, scope: !583)
!599 = !DILocation(line: 144, column: 13, scope: !600, inlinedAt: !601)
!600 = distinct !DISubprogram(name: "user_client_search_service_init", scope: !3, file: !3, line: 142, type: !189, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!601 = distinct !DILocation(line: 476, column: 5, scope: !583)
!602 = !DILocation(line: 144, column: 22, scope: !600, inlinedAt: !601)
!603 = !DILocation(line: 145, column: 67, scope: !600, inlinedAt: !601)
!604 = !DILocation(line: 145, column: 13, scope: !600, inlinedAt: !601)
!605 = !DILocation(line: 145, column: 29, scope: !600, inlinedAt: !601)
!606 = !DILocation(line: 146, column: 74, scope: !600, inlinedAt: !601)
!607 = !DILocation(line: 146, column: 13, scope: !600, inlinedAt: !601)
!608 = !DILocation(line: 146, column: 36, scope: !600, inlinedAt: !601)
!609 = !DILocation(line: 147, column: 29, scope: !600, inlinedAt: !601)
!610 = !DILocation(line: 147, column: 43, scope: !600, inlinedAt: !601)
!611 = !DILocation(line: 148, column: 29, scope: !600, inlinedAt: !601)
!612 = !DILocation(line: 148, column: 50, scope: !600, inlinedAt: !601)
!613 = !DILocation(line: 149, column: 20, scope: !600, inlinedAt: !601)
!614 = !DILocation(line: 149, column: 5, scope: !600, inlinedAt: !601)
!615 = !DILocation(line: 478, column: 5, scope: !616)
!616 = distinct !DILexicalBlock(scope: !583, file: !3, line: 478, column: 5)
!617 = !DILocation(line: 478, column: 5, scope: !583)
!618 = !DILocation(line: 478, column: 5, scope: !619)
!619 = !DILexicalBlockFile(scope: !616, file: !3, discriminator: 1)
!620 = !DILocation(line: 480, column: 5, scope: !583)
!621 = !DILocation(line: 482, column: 87, scope: !622)
!622 = distinct !DILexicalBlock(scope: !583, file: !3, line: 480, column: 30)
!623 = !DILocation(line: 482, column: 105, scope: !622)
!624 = !DILocation(line: 482, column: 15, scope: !622)
!625 = !DILocation(line: 483, column: 9, scope: !622)
!626 = !DILocation(line: 486, column: 88, scope: !622)
!627 = !DILocation(line: 486, column: 106, scope: !622)
!628 = !DILocation(line: 486, column: 15, scope: !622)
!629 = !DILocation(line: 487, column: 9, scope: !622)
!630 = !DILocation(line: 490, column: 77, scope: !622)
!631 = !DILocation(line: 490, column: 15, scope: !622)
!632 = !DILocation(line: 491, column: 9, scope: !622)
!633 = !DILocation(line: 498, column: 36, scope: !634)
!634 = distinct !DILexicalBlock(scope: !583, file: !3, line: 498, column: 9)
!635 = !DILocation(line: 498, column: 9, scope: !583)
!636 = !DILocation(line: 499, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 499, column: 9)
!638 = distinct !DILexicalBlock(scope: !634, file: !3, line: 498, column: 44)
!639 = !DILocation(line: 499, column: 9, scope: !638)
!640 = !DILocation(line: 499, column: 9, scope: !641)
!641 = !DILexicalBlockFile(scope: !637, file: !3, discriminator: 1)
!642 = !DILocation(line: 503, column: 1, scope: !583)
!643 = distinct !DISubprogram(name: "user_client_init", scope: !3, file: !3, line: 505, type: !644, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !647)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !47, !646, !47}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 32)
!647 = !{!648, !649, !650}
!648 = !DILocalVariable(name: "handle", arg: 1, scope: !643, file: !3, line: 505, type: !47)
!649 = !DILocalVariable(name: "buffer", arg: 2, scope: !643, file: !3, line: 505, type: !646)
!650 = !DILocalVariable(name: "buffer_size", arg: 3, scope: !643, file: !3, line: 505, type: !47)
!651 = !DILocation(line: 505, column: 27, scope: !643)
!652 = !DILocation(line: 505, column: 39, scope: !643)
!653 = !DILocation(line: 505, column: 51, scope: !643)
!654 = !DILocation(line: 507, column: 10, scope: !655)
!655 = distinct !DILexicalBlock(scope: !643, file: !3, line: 507, column: 9)
!656 = !DILocation(line: 507, column: 9, scope: !643)
!657 = !DILocation(line: 511, column: 21, scope: !658)
!658 = distinct !DILexicalBlock(scope: !643, file: !3, line: 511, column: 9)
!659 = !DILocation(line: 511, column: 9, scope: !643)
!660 = !DILocation(line: 512, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 511, column: 45)
!662 = !DILocation(line: 513, column: 9, scope: !663)
!663 = !DILexicalBlockFile(scope: !664, file: !3, discriminator: 1)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 513, column: 9)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 513, column: 9)
!666 = !DILocation(line: 513, column: 9, scope: !667)
!667 = !DILexicalBlockFile(scope: !665, file: !3, discriminator: 1)
!668 = !DILocation(line: 513, column: 9, scope: !669)
!669 = !DILexicalBlockFile(scope: !670, file: !3, discriminator: 2)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 513, column: 9)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 513, column: 9)
!672 = distinct !DILexicalBlock(scope: !664, file: !3, line: 513, column: 9)
!673 = !DILocation(line: 513, column: 9, scope: !674)
!674 = !DILexicalBlockFile(scope: !670, file: !3, discriminator: 5)
!675 = !DILocation(line: 513, column: 9, scope: !676)
!676 = !DILexicalBlockFile(scope: !670, file: !3, discriminator: 6)
!677 = !DILocation(line: 513, column: 9, scope: !678)
!678 = !DILexicalBlockFile(scope: !672, file: !3, discriminator: 2)
!679 = !DILocation(line: 513, column: 9, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !3, discriminator: 3)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 513, column: 9)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 513, column: 9)
!683 = distinct !DILexicalBlock(scope: !664, file: !3, line: 513, column: 9)
!684 = !DILocation(line: 516, column: 5, scope: !685)
!685 = distinct !DILexicalBlock(scope: !643, file: !3, line: 516, column: 5)
!686 = !DILocation(line: 516, column: 5, scope: !643)
!687 = !DILocation(line: 516, column: 5, scope: !688)
!688 = !DILexicalBlockFile(scope: !685, file: !3, discriminator: 1)
!689 = !DILocation(line: 518, column: 12, scope: !643)
!690 = !DILocation(line: 519, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !643, file: !3, line: 519, column: 9)
!692 = !DILocation(line: 519, column: 9, scope: !643)
!693 = !DILocation(line: 520, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 519, column: 17)
!695 = !DILocation(line: 521, column: 26, scope: !694)
!696 = !DILocation(line: 523, column: 46, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 523, column: 13)
!698 = !{!699, !208, i64 4}
!699 = !{!"gatt_client_notification", !700, i64 0, !208, i64 4, !212, i64 8, !212, i64 10}
!700 = !{!"btstack_linked_item", !208, i64 0}
!701 = !DILocation(line: 523, column: 55, scope: !697)
!702 = !DILocation(line: 523, column: 13, scope: !694)
!703 = !DILocation(line: 525, column: 13, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !3, line: 523, column: 82)
!705 = !DILocation(line: 526, column: 9, scope: !704)
!706 = !DILocation(line: 528, column: 1, scope: !643)
!707 = distinct !DISubprogram(name: "cpu_reset", scope: !146, file: !146, line: 145, type: !189, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!708 = !DILocation(line: 148, column: 5, scope: !707)
!709 = !DILocation(line: 149, column: 1, scope: !707)
