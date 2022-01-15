; ModuleID = 'bt_audio.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.hci_cmd_t = type { i16, i8* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@btstack_background_state = external constant %struct.hci_cmd_t, align 4
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [45 x i8] c"[api-info] :aec_sco_connection_start %d %d\0A\0A\00", align 1
@disable_sco_timer = internal unnamed_addr global i16 0, section ".bt_stack_data", align 2, !dbg !213
@str = private unnamed_addr constant [38 x i8] c"[api-info] :hook_sco_connection_flag\0A\00"
@str.6 = private unnamed_addr constant [41 x i8] c"[api-info] :hook_sco_disconnection_flag\0A\00"
@str.7 = private unnamed_addr constant [32 x i8] c"[api-info] :bd_esco_busy_other\0A\00"
@str.8 = private unnamed_addr constant [34 x i8] c"[api-info] :bd_esco_busy_current\0A\00"
@str.9 = private unnamed_addr constant [26 x i8] c"[api-info] :bd_esco_idle\0A\00"

; Function Attrs: nounwind optsize
define hidden void @aec_sco_connection_start(i8 zeroext, i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !223 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !230, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i16 %1, metadata !231, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i8* %2, metadata !232, metadata !DIExpression()), !dbg !235
  %4 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !236, !tbaa !238
  %5 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %4, i32 0, i32 9, !dbg !242
  %6 = load volatile i32, i32* %5, align 1, !dbg !242
  %7 = trunc i32 %6 to i16, !dbg !236
  %8 = icmp slt i16 %7, 0, !dbg !236
  br i1 %8, label %35, label %9, !dbg !243

; <label>:9:                                      ; preds = %3
  %10 = and i32 %6, 16384, !dbg !244
  %11 = icmp eq i32 %10, 0, !dbg !244
  br i1 %11, label %12, label %27, !dbg !246

; <label>:12:                                     ; preds = %9
  %13 = load volatile i32, i32* %5, align 1, !dbg !247
  %14 = or i32 %13, 32768, !dbg !247
  store volatile i32 %14, i32* %5, align 1, !dbg !247
  %15 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %4, i32 0, i32 14, i32 0, !dbg !249
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %2, i32 6, i32 1, i1 false), !dbg !249
  tail call void bitcast (void (...)* @__close_all_a2dp_media_coder to void ()*)() #8, !dbg !250
  %16 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_background_state, i32 1, i32 1) #8, !dbg !251
  tail call void @update_bt_current_status(i8* null, i8 zeroext 0, i8 zeroext 46) #8, !dbg !252
  %17 = load i8, i8* @profile_debug_enable, align 1, !dbg !253, !tbaa !255
  %18 = and i8 %17, 16, !dbg !253
  %19 = icmp eq i8 %18, 0, !dbg !253
  %20 = zext i8 %0 to i32
  %21 = zext i16 %1 to i32
  br i1 %19, label %24, label %22, !dbg !256

; <label>:22:                                     ; preds = %12
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 %20, i32 %21) #9, !dbg !257
  br label %24, !dbg !257

; <label>:24:                                     ; preds = %22, %12
  %25 = shl nuw i32 %21, 16, !dbg !259
  %26 = or i32 %25, %20, !dbg !260
  tail call void @bt_event_update_to_user(i8* null, i32 1129270784, i8 zeroext 25, i32 %26) #8, !dbg !261
  br label %29, !dbg !262

; <label>:27:                                     ; preds = %9
  %28 = tail call zeroext i16 @sys_timeout_add(i8* null, void (i8*)* nonnull @send_sco_disconn, i32 100) #8, !dbg !263
  store i16 %28, i16* @disable_sco_timer, align 2, !dbg !265, !tbaa !266
  br label %29

; <label>:29:                                     ; preds = %27, %24
  %30 = load i8, i8* @profile_debug_enable, align 1, !dbg !268, !tbaa !255
  %31 = and i8 %30, 16, !dbg !268
  %32 = icmp eq i8 %31, 0, !dbg !268
  br i1 %32, label %35, label %33, !dbg !270

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str, i32 0, i32 0)), !dbg !271
  br label %35, !dbg !271

; <label>:35:                                     ; preds = %33, %29, %3
  ret void, !dbg !273
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: optsize
declare void @__close_all_a2dp_media_coder(...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @stack_send_infor_2_user(%struct.hci_cmd_t*, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_bt_current_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bt_event_update_to_user(i8*, i32, i8 zeroext, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @sys_timeout_add(i8*, void (i8*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @send_sco_disconn(i8* nocapture readnone) #0 section ".bt_stack_code" !dbg !274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !278, metadata !DIExpression()), !dbg !279
  %2 = tail call i32 @user_send_cmd_prepare(i32 10, i16 zeroext 0, i8* null) #8, !dbg !280
  %3 = load i16, i16* @disable_sco_timer, align 2, !dbg !281, !tbaa !266
  %4 = icmp eq i16 %3, 0, !dbg !281
  br i1 %4, label %6, label %5, !dbg !283

; <label>:5:                                      ; preds = %1
  tail call void @sys_timeout_del(i16 zeroext %3) #8, !dbg !284
  store i16 0, i16* @disable_sco_timer, align 2, !dbg !286, !tbaa !266
  br label %6, !dbg !287

; <label>:6:                                      ; preds = %5, %1
  ret void, !dbg !288
}

; Function Attrs: nounwind optsize
define hidden void @aec_sco_connection_stop() local_unnamed_addr #0 section ".bt_stack_code" !dbg !289 {
  %1 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !293, !tbaa !238
  %2 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %1, i32 0, i32 9, !dbg !295
  %3 = load volatile i32, i32* %2, align 1, !dbg !295
  %4 = trunc i32 %3 to i16, !dbg !293
  %5 = icmp slt i16 %4, 0, !dbg !293
  br i1 %5, label %6, label %18, !dbg !296

; <label>:6:                                      ; preds = %0
  tail call void @update_bt_current_status(i8* null, i8 zeroext 0, i8 zeroext 45) #8, !dbg !297
  tail call void @bt_event_update_to_user(i8* null, i32 1129270784, i8 zeroext 25, i32 255) #8, !dbg !298
  %7 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !299, !tbaa !238
  %8 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %7, i32 0, i32 9, !dbg !300
  %9 = load volatile i32, i32* %8, align 1, !dbg !301
  %10 = and i32 %9, -32769, !dbg !301
  store volatile i32 %10, i32* %8, align 1, !dbg !301
  %11 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %7, i32 0, i32 14, i32 0, !dbg !302
  tail call void @llvm.memset.p0i8.i32(i8* %11, i8 0, i32 6, i32 1, i1 false), !dbg !302
  %12 = tail call i32 (%struct.hci_cmd_t*, ...) @stack_send_infor_2_user(%struct.hci_cmd_t* nonnull @btstack_background_state, i32 2, i32 0) #8, !dbg !303
  %13 = load i8, i8* @profile_debug_enable, align 1, !dbg !304, !tbaa !255
  %14 = and i8 %13, 16, !dbg !304
  %15 = icmp eq i8 %14, 0, !dbg !304
  br i1 %15, label %18, label %16, !dbg !306

; <label>:16:                                     ; preds = %6
  %17 = tail call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @str.6, i32 0, i32 0)), !dbg !307
  br label %18, !dbg !307

; <label>:18:                                     ; preds = %16, %6, %0
  ret void, !dbg !309
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

; Function Attrs: norecurse nounwind optsize
define hidden zeroext i8 @get_esco_coder_busy_flag() local_unnamed_addr #4 section ".bt_stack_code" !dbg !310 {
  %1 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !313, !tbaa !238
  %2 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %1, i32 0, i32 9, !dbg !314
  %3 = load volatile i32, i32* %2, align 1, !dbg !314
  %4 = lshr i32 %3, 15, !dbg !314
  %5 = trunc i32 %4 to i8, !dbg !314
  %6 = and i8 %5, 1, !dbg !314
  ret i8 %6, !dbg !315
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @check_esco_state_via_addr(i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !316 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !320, metadata !DIExpression()), !dbg !321
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !322, !tbaa !238
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !324
  %4 = load volatile i32, i32* %3, align 1, !dbg !324
  %5 = trunc i32 %4 to i16, !dbg !325
  %6 = icmp sgt i16 %5, -1, !dbg !325
  br i1 %6, label %7, label %13, !dbg !326

; <label>:7:                                      ; preds = %1
  %8 = load i8, i8* @profile_debug_enable, align 1, !dbg !327, !tbaa !255
  %9 = and i8 %8, 16, !dbg !327
  %10 = icmp eq i8 %9, 0, !dbg !327
  br i1 %10, label %26, label %11, !dbg !330

; <label>:11:                                     ; preds = %7
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.9, i32 0, i32 0)), !dbg !331
  br label %26, !dbg !331

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 14, i32 0, !dbg !333
  %15 = tail call i32 @memcmp(i8* %14, i8* %0, i32 6) #9, !dbg !335
  %16 = icmp eq i32 %15, 0, !dbg !336
  %17 = load i8, i8* @profile_debug_enable, align 1, !tbaa !255
  %18 = and i8 %17, 16
  %19 = icmp ne i8 %18, 0
  br i1 %16, label %20, label %23, !dbg !337

; <label>:20:                                     ; preds = %13
  br i1 %19, label %21, label %26, !dbg !338

; <label>:21:                                     ; preds = %20
  %22 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.8, i32 0, i32 0)), !dbg !340
  br label %26, !dbg !340

; <label>:23:                                     ; preds = %13
  br i1 %19, label %24, label %26, !dbg !343

; <label>:24:                                     ; preds = %23
  %25 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.7, i32 0, i32 0)), !dbg !344
  br label %26, !dbg !344

; <label>:26:                                     ; preds = %24, %23, %21, %20, %11, %7
  %27 = phi i8 [ 0, %7 ], [ 0, %11 ], [ 1, %21 ], [ 1, %20 ], [ 2, %24 ], [ 2, %23 ]
  ret i8 %27, !dbg !347
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @user_send_cmd_prepare(i32, i16 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sys_timeout_del(i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!220, !221}
!llvm.ident = !{!222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !218, line: 190, type: !219, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !210, globals: !212)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/bt_audio.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !59, !64}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 299, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!8 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!9 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!10 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!11 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!12 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!13 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!14 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!15 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!16 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!17 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!18 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!19 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!20 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!21 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!22 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!23 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!24 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!25 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!26 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!27 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!28 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!29 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!30 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!31 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!32 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!33 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!34 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!35 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!36 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!37 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!38 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!39 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!40 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!41 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!42 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!43 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!44 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!45 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!46 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!47 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!48 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!49 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!50 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!51 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!52 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!53 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!54 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!55 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!56 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!57 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!58 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 575, size: 32, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "BD_ESCO_IDLE", value: 0)
!62 = !DIEnumerator(name: "BD_ESCO_BUSY_CURRENT", value: 1)
!63 = !DIEnumerator(name: "BD_ESCO_BUSY_OTHER", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 12, size: 32, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!66 = !DIEnumerator(name: "USER_CTRL_START_CONNECTION", value: 0)
!67 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR", value: 1)
!68 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR_MANUALLY", value: 2)
!69 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_SPP_VIA_ADDR", value: 3)
!70 = !DIEnumerator(name: "USER_CTRL_DISCONNECTION_HCI", value: 4)
!71 = !DIEnumerator(name: "USER_CTRL_CONNECTION_CANCEL", value: 5)
!72 = !DIEnumerator(name: "USER_CTRL_READ_REMOTE_NAME", value: 6)
!73 = !DIEnumerator(name: "USER_CTRL_PAUSE_MUSIC", value: 7)
!74 = !DIEnumerator(name: "USER_CTRL_SCO_LINK", value: 8)
!75 = !DIEnumerator(name: "USER_CTRL_CONN_SCO", value: 9)
!76 = !DIEnumerator(name: "USER_CTRL_DISCONN_SCO", value: 10)
!77 = !DIEnumerator(name: "USER_CTRL_DISCONN_SDP_MASTER", value: 11)
!78 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_DISABLE", value: 12)
!79 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_ENABLE", value: 13)
!80 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_DISABLE", value: 14)
!81 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_ENABLE", value: 15)
!82 = !DIEnumerator(name: "USER_CTRL_SEARCH_DEVICE", value: 16)
!83 = !DIEnumerator(name: "USER_CTRL_INQUIRY_CANCEL", value: 17)
!84 = !DIEnumerator(name: "USER_CTRL_PAGE_CANCEL", value: 18)
!85 = !DIEnumerator(name: "USER_CTRL_SNIFF_IN", value: 19)
!86 = !DIEnumerator(name: "USER_CTRL_SNIFF_EXIT", value: 20)
!87 = !DIEnumerator(name: "USER_CTRL_ALL_SNIFF_EXIT", value: 21)
!88 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_BEGIN", value: 22)
!89 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_UP", value: 23)
!90 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_DOWN", value: 24)
!91 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_SET_VOLUME", value: 25)
!92 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_GET_VOLUME", value: 26)
!93 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_ANSWER", value: 27)
!94 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_HANGUP", value: 28)
!95 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_LAST_NO", value: 29)
!96 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_CURRENT", value: 30)
!97 = !DIEnumerator(name: "USER_CTRL_HFP_DTMF_TONES", value: 31)
!98 = !DIEnumerator(name: "USER_CTRL_DIAL_NUMBER", value: 32)
!99 = !DIEnumerator(name: "USER_CTRL_SEND_BATTERY", value: 33)
!100 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_STATUS", value: 34)
!101 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_OPEN", value: 35)
!102 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_CLOSE", value: 36)
!103 = !DIEnumerator(name: "USER_CTRL_HFP_GET_PHONE_DATE_TIME", value: 37)
!104 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_SEND_BIA", value: 38)
!105 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_GET_MANUFACTURER", value: 39)
!106 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_UPDATE_BATTARY", value: 40)
!107 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1", value: 41)
!108 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2", value: 42)
!109 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1X", value: 43)
!110 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2X", value: 44)
!111 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER3", value: 45)
!112 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_REJECT", value: 46)
!113 = !DIEnumerator(name: "USER_CTRL_HFP_DISCONNECT", value: 47)
!114 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_END", value: 48)
!115 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_BEGIN", value: 49)
!116 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PLAY", value: 50)
!117 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PAUSE", value: 51)
!118 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_STOP", value: 52)
!119 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_NEXT", value: 53)
!120 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PREV", value: 54)
!121 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_FORWARD", value: 55)
!122 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REWIND", value: 56)
!123 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REPEAT_MODE", value: 57)
!124 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SHUFFLE_MODE", value: 58)
!125 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_PLAY_TIME", value: 59)
!126 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SEND_VOL", value: 60)
!127 = !DIEnumerator(name: "USER_CTRL_AVCTP_DISCONNECT", value: 61)
!128 = !DIEnumerator(name: "USER_CTRL_AVCTP_CONN", value: 62)
!129 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_END", value: 63)
!130 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_BEGIN", value: 64)
!131 = !DIEnumerator(name: "USER_CTRL_AUTO_CONN_A2DP", value: 65)
!132 = !DIEnumerator(name: "USER_CTRL_CONN_A2DP", value: 66)
!133 = !DIEnumerator(name: "USER_CTRL_DISCONN_A2DP", value: 67)
!134 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_START", value: 68)
!135 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_CLOSE", value: 69)
!136 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_SUSPEND", value: 70)
!137 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_GET_CONFIGURATION", value: 71)
!138 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_ABORT", value: 72)
!139 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_END", value: 73)
!140 = !DIEnumerator(name: "USER_CTRL_POWER_OFF", value: 74)
!141 = !DIEnumerator(name: "USER_CTRL_POWER_ON", value: 75)
!142 = !DIEnumerator(name: "USER_CTRL_HID_CMD_BEGIN", value: 76)
!143 = !DIEnumerator(name: "USER_CTRL_HID_CONN", value: 77)
!144 = !DIEnumerator(name: "USER_CTRL_HID_ANDROID", value: 78)
!145 = !DIEnumerator(name: "USER_CTRL_HID_IOS", value: 79)
!146 = !DIEnumerator(name: "USER_CTRL_HID_BOTH", value: 80)
!147 = !DIEnumerator(name: "USER_CTRL_HID_DISCONNECT", value: 81)
!148 = !DIEnumerator(name: "USER_CTRL_HID_HOME", value: 82)
!149 = !DIEnumerator(name: "USER_CTRL_HID_RETURN", value: 83)
!150 = !DIEnumerator(name: "USER_CTRL_HID_LEFTARROW", value: 84)
!151 = !DIEnumerator(name: "USER_CTRL_HID_RIGHTARROW", value: 85)
!152 = !DIEnumerator(name: "USER_CTRL_HID_VOL_UP", value: 86)
!153 = !DIEnumerator(name: "USER_CTRL_HID_VOL_DOWN", value: 87)
!154 = !DIEnumerator(name: "USER_CTRL_HID_SEND_DATA", value: 88)
!155 = !DIEnumerator(name: "USER_CTRL_HID_CMD_END", value: 89)
!156 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_BEGIN", value: 90)
!157 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN", value: 91)
!158 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN", value: 92)
!159 = !DIEnumerator(name: "USER_CTRL_MONITOR", value: 93)
!160 = !DIEnumerator(name: "USER_CTRL_TWS_CONNEC_VIA_ADDR", value: 94)
!161 = !DIEnumerator(name: "USER_CTRL_TWS_COTROL_CDM", value: 95)
!162 = !DIEnumerator(name: "USER_CTRL_TWS_CLEAR_INFO", value: 96)
!163 = !DIEnumerator(name: "USER_CTRL_TWS_DISCONNECTION_HCI", value: 97)
!164 = !DIEnumerator(name: "USER_CTRL_TWS_START_CONNECTION", value: 98)
!165 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM", value: 99)
!166 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_SBC_CDM", value: 100)
!167 = !DIEnumerator(name: "USER_CTRL_TWS_RESTART_SBC_CDM", value: 101)
!168 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_CANCEL", value: 102)
!169 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN_CANCEL", value: 103)
!170 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM_FUN", value: 104)
!171 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_START", value: 105)
!172 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_CLOSE", value: 106)
!173 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_END", value: 107)
!174 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_BEGIN", value: 108)
!175 = !DIEnumerator(name: "USER_CTRL_SPP_SEND_DATA", value: 109)
!176 = !DIEnumerator(name: "USER_CTRL_SPP_TRY_SEND_DATA", value: 110)
!177 = !DIEnumerator(name: "USER_CTRL_SPP_UPDATA_DATA", value: 111)
!178 = !DIEnumerator(name: "USER_CTRL_SPP_DISCONNECT", value: 112)
!179 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_END", value: 113)
!180 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_BEGIN", value: 114)
!181 = !DIEnumerator(name: "USER_CTRL_PBG_SEND_DATA", value: 115)
!182 = !DIEnumerator(name: "USER_CTRL_PBG_TRY_SEND_DATA", value: 116)
!183 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_END", value: 117)
!184 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_BEGIN", value: 118)
!185 = !DIEnumerator(name: "USER_CTRL_ADT_CONNECT", value: 119)
!186 = !DIEnumerator(name: "USER_CTRL_ADT_KEY_MIC_OPEN", value: 120)
!187 = !DIEnumerator(name: "USER_CTRL_ADT_SEND_DATA", value: 121)
!188 = !DIEnumerator(name: "USER_CTRL_ADT_TRY_SEND_DATA", value: 122)
!189 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_END", value: 123)
!190 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_BEGIN", value: 124)
!191 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_PART", value: 125)
!192 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_ALL", value: 126)
!193 = !DIEnumerator(name: "USER_CTRL_PBAP_STOP_READING", value: 127)
!194 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_END", value: 128)
!195 = !DIEnumerator(name: "USER_CTRL_DEL_ALL_REMOTE_INFO", value: 129)
!196 = !DIEnumerator(name: "USER_CTRL_TEST_KEY", value: 130)
!197 = !DIEnumerator(name: "USER_CTRL_SEND_USER_INFO", value: 131)
!198 = !DIEnumerator(name: "USER_CTRL_KEYPRESS", value: 132)
!199 = !DIEnumerator(name: "USER_CTRL_PAIR", value: 133)
!200 = !DIEnumerator(name: "USER_CTRL_AFH_CHANNEL", value: 134)
!201 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_CREATE", value: 135)
!202 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_DEL", value: 136)
!203 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_INC", value: 137)
!204 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_DEC", value: 138)
!205 = !DIEnumerator(name: "USER_CTRL_CMD_CHANGE_PROFILE_MODE", value: 139)
!206 = !DIEnumerator(name: "USER_CTRL_CMD_RESERVE_INDEX4", value: 140)
!207 = !DIEnumerator(name: "USER_CTRL_CMD_RESUME_STACK", value: 141)
!208 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_MUSIC_INFO", value: 142)
!209 = !DIEnumerator(name: "USER_CTRL_LAST", value: 143)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!212 = !{!0, !213}
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "disable_sco_timer", scope: !2, file: !3, line: 109, type: !215, isLocal: true, isDefinition: true)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !216, line: 13, baseType: !217)
!216 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!219 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!220 = !{i32 2, !"Dwarf Version", i32 4}
!221 = !{i32 2, !"Debug Info Version", i32 3}
!222 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!223 = distinct !DISubprogram(name: "aec_sco_connection_start", scope: !3, file: !3, line: 120, type: !224, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !229)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !226, !215, !228}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !216, line: 11, baseType: !227)
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!229 = !{!230, !231, !232}
!230 = !DILocalVariable(name: "air_mode", arg: 1, scope: !223, file: !3, line: 120, type: !226)
!231 = !DILocalVariable(name: "len", arg: 2, scope: !223, file: !3, line: 120, type: !215)
!232 = !DILocalVariable(name: "addr", arg: 3, scope: !223, file: !3, line: 120, type: !228)
!233 = !DILocation(line: 120, column: 34, scope: !223)
!234 = !DILocation(line: 120, column: 48, scope: !223)
!235 = !DILocation(line: 120, column: 57, scope: !223)
!236 = !DILocation(line: 123, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !223, file: !3, line: 123, column: 9)
!238 = !{!239, !239, i64 0}
!239 = !{!"any pointer", !240, i64 0}
!240 = !{!"omnipotent char", !241, i64 0}
!241 = !{!"Simple C/C++ TBAA"}
!242 = !DILocation(line: 123, column: 29, scope: !237)
!243 = !DILocation(line: 123, column: 9, scope: !223)
!244 = !DILocation(line: 126, column: 10, scope: !245)
!245 = distinct !DILexicalBlock(scope: !223, file: !3, line: 126, column: 9)
!246 = !DILocation(line: 126, column: 9, scope: !223)
!247 = !DILocation(line: 127, column: 50, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 126, column: 43)
!249 = !DILocation(line: 128, column: 9, scope: !248)
!250 = !DILocation(line: 130, column: 9, scope: !248)
!251 = !DILocation(line: 131, column: 9, scope: !248)
!252 = !DILocation(line: 132, column: 9, scope: !248)
!253 = !DILocation(line: 133, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !3, line: 133, column: 9)
!255 = !{!240, !240, i64 0}
!256 = !DILocation(line: 133, column: 9, scope: !248)
!257 = !DILocation(line: 133, column: 9, scope: !258)
!258 = !DILexicalBlockFile(scope: !254, file: !3, discriminator: 1)
!259 = !DILocation(line: 134, column: 114, scope: !248)
!260 = !DILocation(line: 134, column: 107, scope: !248)
!261 = !DILocation(line: 134, column: 9, scope: !248)
!262 = !DILocation(line: 135, column: 5, scope: !248)
!263 = !DILocation(line: 142, column: 29, scope: !264)
!264 = distinct !DILexicalBlock(scope: !245, file: !3, line: 135, column: 12)
!265 = !DILocation(line: 142, column: 27, scope: !264)
!266 = !{!267, !267, i64 0}
!267 = !{!"short", !240, i64 0}
!268 = !DILocation(line: 144, column: 5, scope: !269)
!269 = distinct !DILexicalBlock(scope: !223, file: !3, line: 144, column: 5)
!270 = !DILocation(line: 144, column: 5, scope: !223)
!271 = !DILocation(line: 144, column: 5, scope: !272)
!272 = !DILexicalBlockFile(scope: !269, file: !3, discriminator: 1)
!273 = !DILocation(line: 145, column: 1, scope: !223)
!274 = distinct !DISubprogram(name: "send_sco_disconn", scope: !3, file: !3, line: 110, type: !275, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !211}
!277 = !{!278}
!278 = !DILocalVariable(name: "priv", arg: 1, scope: !274, file: !3, line: 110, type: !211)
!279 = !DILocation(line: 110, column: 36, scope: !274)
!280 = !DILocation(line: 112, column: 5, scope: !274)
!281 = !DILocation(line: 113, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !3, line: 113, column: 9)
!283 = !DILocation(line: 113, column: 9, scope: !274)
!284 = !DILocation(line: 115, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !3, line: 113, column: 28)
!286 = !DILocation(line: 116, column: 27, scope: !285)
!287 = !DILocation(line: 117, column: 5, scope: !285)
!288 = !DILocation(line: 118, column: 1, scope: !274)
!289 = distinct !DISubprogram(name: "aec_sco_connection_stop", scope: !3, file: !3, line: 146, type: !290, isLocal: false, isDefinition: true, scopeLine: 147, isOptimized: true, unit: !2, variables: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{null}
!292 = !{}
!293 = !DILocation(line: 148, column: 10, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !3, line: 148, column: 9)
!295 = !DILocation(line: 148, column: 30, scope: !294)
!296 = !DILocation(line: 148, column: 9, scope: !289)
!297 = !DILocation(line: 151, column: 5, scope: !289)
!298 = !DILocation(line: 156, column: 5, scope: !289)
!299 = !DILocation(line: 157, column: 5, scope: !289)
!300 = !DILocation(line: 157, column: 25, scope: !289)
!301 = !DILocation(line: 157, column: 46, scope: !289)
!302 = !DILocation(line: 158, column: 5, scope: !289)
!303 = !DILocation(line: 159, column: 5, scope: !289)
!304 = !DILocation(line: 160, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !289, file: !3, line: 160, column: 5)
!306 = !DILocation(line: 160, column: 5, scope: !289)
!307 = !DILocation(line: 160, column: 5, scope: !308)
!308 = !DILexicalBlockFile(scope: !305, file: !3, discriminator: 1)
!309 = !DILocation(line: 161, column: 1, scope: !289)
!310 = distinct !DISubprogram(name: "get_esco_coder_busy_flag", scope: !3, file: !3, line: 162, type: !311, isLocal: false, isDefinition: true, scopeLine: 163, isOptimized: true, unit: !2, variables: !292)
!311 = !DISubroutineType(types: !312)
!312 = !{!226}
!313 = !DILocation(line: 164, column: 12, scope: !310)
!314 = !DILocation(line: 164, column: 32, scope: !310)
!315 = !DILocation(line: 164, column: 5, scope: !310)
!316 = distinct !DISubprogram(name: "check_esco_state_via_addr", scope: !3, file: !3, line: 167, type: !317, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!226, !228}
!319 = !{!320}
!320 = !DILocalVariable(name: "addr", arg: 1, scope: !316, file: !3, line: 167, type: !228)
!321 = !DILocation(line: 167, column: 34, scope: !316)
!322 = !DILocation(line: 173, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !3, line: 173, column: 9)
!324 = !DILocation(line: 173, column: 29, scope: !323)
!325 = !DILocation(line: 173, column: 50, scope: !323)
!326 = !DILocation(line: 173, column: 9, scope: !316)
!327 = !DILocation(line: 174, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 174, column: 9)
!329 = distinct !DILexicalBlock(scope: !323, file: !3, line: 173, column: 56)
!330 = !DILocation(line: 174, column: 9, scope: !329)
!331 = !DILocation(line: 174, column: 9, scope: !332)
!332 = !DILexicalBlockFile(scope: !328, file: !3, discriminator: 1)
!333 = !DILocation(line: 178, column: 16, scope: !334)
!334 = distinct !DILexicalBlock(scope: !316, file: !3, line: 178, column: 9)
!335 = !DILocation(line: 178, column: 9, scope: !334)
!336 = !DILocation(line: 178, column: 56, scope: !334)
!337 = !DILocation(line: 178, column: 9, scope: !316)
!338 = !DILocation(line: 179, column: 9, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 178, column: 62)
!340 = !DILocation(line: 179, column: 9, scope: !341)
!341 = !DILexicalBlockFile(scope: !342, file: !3, discriminator: 1)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 179, column: 9)
!343 = !DILocation(line: 182, column: 5, scope: !316)
!344 = !DILocation(line: 182, column: 5, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !3, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !316, file: !3, line: 182, column: 5)
!347 = !DILocation(line: 185, column: 1, scope: !316)
