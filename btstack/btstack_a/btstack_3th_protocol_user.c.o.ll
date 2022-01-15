; ModuleID = 'btstack_3th_protocol_user.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.__BT_3TH_USER_CB = type { i32, i32, %struct.__JL_PRO_CB, void (i16, i8*, i32)*, void (i8*, i32)*, i32 (i8)* }
%struct.__JL_PRO_CB = type { i8*, i8 (i8*)*, i32 (i8*, i8*, i16)*, void (i8*, i8, i8, i8*, i16)*, void (i8*, i8, i8, i8*, i16)*, void (i8*, i8, i8*, i16)*, void (i8*, i8, i8*, i16)*, void (i8*, i8, i8, i8*, i16)*, void (i8*, i8, i8, i8*, i16)*, i8 (i8*, i8, i8)*, void (i8*)* }
%struct.__BT_3TH_PROTOCOL_CB = type { i32, void (i8)*, void ()*, void (i8*, i8*, i16)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@config_rcsp_stack_enable = external local_unnamed_addr constant i32, align 4
@g_bt_3th_user_pro = internal unnamed_addr global %struct.__BT_3TH_USER_CB* null, align 4, !dbg !58
@bt_3th_spp_callback = internal global %struct.__JL_PRO_CB zeroinitializer, align 4, !dbg !11
@bt_3th_ble_callback = internal global %struct.__JL_PRO_CB zeroinitializer, align 4, !dbg !56
@JL_bt_chl = internal global i8 0, align 1, !dbg !79
@g_bt_3th_lib_pro = internal unnamed_addr global %struct.__BT_3TH_PROTOCOL_CB* null, align 4, !dbg !82

; Function Attrs: nounwind optsize
define hidden i32 @btstack_3th_protocol_open(i32) local_unnamed_addr #0 !dbg !105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !109, metadata !DIExpression()), !dbg !110
  %2 = icmp eq i32 %0, 1, !dbg !111
  %3 = load i32, i32* @config_rcsp_stack_enable, align 4, !dbg !112
  %4 = icmp ne i32 %3, 0, !dbg !112
  %5 = and i1 %2, %4, !dbg !111
  br i1 %5, label %6, label %7, !dbg !111

; <label>:6:                                      ; preds = %1
  tail call void @bt_rcsp_3th_pro_lib_init() #6, !dbg !115
  br label %7, !dbg !117

; <label>:7:                                      ; preds = %6, %1
  ret i32 0, !dbg !118
}

; Function Attrs: optsize
declare void @bt_rcsp_3th_pro_lib_init() local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden i32 @btstack_3th_protocol_user_init(%struct.__BT_3TH_USER_CB*) local_unnamed_addr #0 !dbg !119 {
  call void @llvm.dbg.value(metadata %struct.__BT_3TH_USER_CB* %0, metadata !123, metadata !DIExpression()), !dbg !124
  %2 = icmp eq %struct.__BT_3TH_USER_CB* %0, null, !dbg !125
  br i1 %2, label %29, label %3, !dbg !127

; <label>:3:                                      ; preds = %1
  store %struct.__BT_3TH_USER_CB* %0, %struct.__BT_3TH_USER_CB** @g_bt_3th_user_pro, align 4, !dbg !128, !tbaa !130
  %4 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %0, i32 0, i32 1, !dbg !134
  %5 = load i32, i32* %4, align 4, !dbg !134, !tbaa !136
  %6 = and i32 %5, 2, !dbg !140
  %7 = icmp eq i32 %6, 0, !dbg !140
  br i1 %7, label %15, label %8, !dbg !141

; <label>:8:                                      ; preds = %3
  tail call void @bt_3th_spp_init() #6, !dbg !142
  %9 = load %struct.__BT_3TH_USER_CB*, %struct.__BT_3TH_USER_CB** @g_bt_3th_user_pro, align 4, !dbg !144, !tbaa !130
  %10 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %9, i32 0, i32 2, !dbg !145
  %11 = bitcast %struct.__JL_PRO_CB* %10 to i8*, !dbg !145
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.__JL_PRO_CB* @bt_3th_spp_callback to i8*), i8* %11, i32 44, i32 4, i1 false), !dbg !145, !tbaa.struct !146
  store i8 (i8*)* @bt_3th_spp_fw_ready, i8 (i8*)** getelementptr inbounds (%struct.__JL_PRO_CB, %struct.__JL_PRO_CB* @bt_3th_spp_callback, i32 0, i32 1), align 4, !dbg !147, !tbaa !148
  store i32 (i8*, i8*, i16)* @bt_3th_spp_send, i32 (i8*, i8*, i16)** getelementptr inbounds (%struct.__JL_PRO_CB, %struct.__JL_PRO_CB* @bt_3th_spp_callback, i32 0, i32 2), align 4, !dbg !149, !tbaa !150
  tail call void @bt_3th_spp_get_operation_table() #6, !dbg !151
  %12 = load %struct.__BT_3TH_USER_CB*, %struct.__BT_3TH_USER_CB** @g_bt_3th_user_pro, align 4, !tbaa !130
  %13 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4, !tbaa !136
  br label %15, !dbg !152

; <label>:15:                                     ; preds = %8, %3
  %16 = phi i32 [ %5, %3 ], [ %14, %8 ], !dbg !153
  %17 = phi %struct.__BT_3TH_USER_CB* [ %0, %3 ], [ %12, %8 ], !dbg !155
  %18 = and i32 %16, 1, !dbg !156
  %19 = icmp eq i32 %18, 0, !dbg !156
  br i1 %19, label %24, label %20, !dbg !157

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %17, i32 0, i32 2, !dbg !158
  %22 = bitcast %struct.__JL_PRO_CB* %21 to i8*, !dbg !158
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.__JL_PRO_CB* @bt_3th_ble_callback to i8*), i8* %22, i32 44, i32 4, i1 false), !dbg !158, !tbaa.struct !146
  store i8 (i8*)* @bt_3th_ble_ready, i8 (i8*)** getelementptr inbounds (%struct.__JL_PRO_CB, %struct.__JL_PRO_CB* @bt_3th_ble_callback, i32 0, i32 1), align 4, !dbg !160, !tbaa !148
  store i32 (i8*, i8*, i16)* @bt_3th_ble_send, i32 (i8*, i8*, i16)** getelementptr inbounds (%struct.__JL_PRO_CB, %struct.__JL_PRO_CB* @bt_3th_ble_callback, i32 0, i32 2), align 4, !dbg !161, !tbaa !150
  tail call void @bt_3th_ble_get_operation_table() #6, !dbg !162
  %23 = load %struct.__BT_3TH_USER_CB*, %struct.__BT_3TH_USER_CB** @g_bt_3th_user_pro, align 4, !tbaa !130
  br label %24, !dbg !163

; <label>:24:                                     ; preds = %20, %15
  %25 = phi %struct.__BT_3TH_USER_CB* [ %17, %15 ], [ %23, %20 ], !dbg !164
  %26 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %25, i32 0, i32 0, !dbg !165
  %27 = load i32, i32* %26, align 4, !dbg !165, !tbaa !166
  %28 = tail call i32 @btstack_3th_protocol_open(i32 %27) #7, !dbg !167
  br label %29, !dbg !168

; <label>:29:                                     ; preds = %24, %1
  ret i32 0, !dbg !169
}

; Function Attrs: optsize
declare void @bt_3th_spp_init() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: optsize
declare zeroext i8 @bt_3th_spp_fw_ready(i8*) #1

; Function Attrs: optsize
declare i32 @bt_3th_spp_send(i8*, i8*, i16 zeroext) #1

; Function Attrs: optsize
declare void @bt_3th_spp_get_operation_table() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bt_3th_ble_ready(i8*) #1

; Function Attrs: optsize
declare i32 @bt_3th_ble_send(i8*, i8*, i16 zeroext) #1

; Function Attrs: optsize
declare void @bt_3th_ble_get_operation_table() local_unnamed_addr #1

; Function Attrs: nounwind optsize
define hidden void @bt_3th_spp_state_handle(i8 zeroext) local_unnamed_addr #0 !dbg !170 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !172, metadata !DIExpression()), !dbg !173
  %2 = load %struct.__BT_3TH_USER_CB*, %struct.__BT_3TH_USER_CB** @g_bt_3th_user_pro, align 4, !dbg !174, !tbaa !130
  %3 = icmp eq %struct.__BT_3TH_USER_CB* %2, null, !dbg !176
  br i1 %3, label %10, label %4, !dbg !177

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %2, i32 0, i32 5, !dbg !178
  %6 = load i32 (i8)*, i32 (i8)** %5, align 4, !dbg !178, !tbaa !180
  %7 = icmp eq i32 (i8)* %6, null, !dbg !181
  br i1 %7, label %10, label %8, !dbg !182

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 %6(i8 zeroext %0) #6, !dbg !184
  br label %10, !dbg !186

; <label>:10:                                     ; preds = %8, %4, %1
  ret void, !dbg !187
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_set_spp_callback_priv(i8*) local_unnamed_addr #0 !dbg !188 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !190, metadata !DIExpression()), !dbg !191
  store i8* %0, i8** getelementptr inbounds (%struct.__JL_PRO_CB, %struct.__JL_PRO_CB* @bt_3th_spp_callback, i32 0, i32 0), align 4, !dbg !192, !tbaa !193
  ret void, !dbg !194
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden nonnull %struct.__JL_PRO_CB* @bt_3th_get_spp_callback() local_unnamed_addr #3 !dbg !195 {
  ret %struct.__JL_PRO_CB* @bt_3th_spp_callback, !dbg !200
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_set_ble_callback_priv(i8*) local_unnamed_addr #0 !dbg !201 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()), !dbg !204
  store i8* %0, i8** getelementptr inbounds (%struct.__JL_PRO_CB, %struct.__JL_PRO_CB* @bt_3th_ble_callback, i32 0, i32 0), align 4, !dbg !205, !tbaa !193
  ret void, !dbg !206
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden nonnull %struct.__JL_PRO_CB* @bt_3th_get_ble_callback() local_unnamed_addr #3 !dbg !207 {
  ret %struct.__JL_PRO_CB* @bt_3th_ble_callback, !dbg !208
}

; Function Attrs: norecurse nounwind optsize
define hidden zeroext i8 @bt_3th_get_cur_bt_channel_sel() local_unnamed_addr #4 !dbg !209 {
  %1 = load volatile i8, i8* @JL_bt_chl, align 1, !dbg !212, !tbaa !213
  ret i8 %1, !dbg !214
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_type_dev_switch(i8 zeroext) local_unnamed_addr #0 !dbg !215 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !217, metadata !DIExpression()), !dbg !218
  %2 = load %struct.__BT_3TH_PROTOCOL_CB*, %struct.__BT_3TH_PROTOCOL_CB** @g_bt_3th_lib_pro, align 4, !dbg !219, !tbaa !130
  %3 = icmp eq %struct.__BT_3TH_PROTOCOL_CB* %2, null, !dbg !221
  br i1 %3, label %9, label %4, !dbg !222

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.__BT_3TH_PROTOCOL_CB, %struct.__BT_3TH_PROTOCOL_CB* %2, i32 0, i32 1, !dbg !223
  %6 = load void (i8)*, void (i8)** %5, align 4, !dbg !223, !tbaa !225
  %7 = icmp eq void (i8)* %6, null, !dbg !227
  br i1 %7, label %9, label %8, !dbg !228

; <label>:8:                                      ; preds = %4
  tail call void %6(i8 zeroext %0) #6, !dbg !230
  br label %9, !dbg !232

; <label>:9:                                      ; preds = %8, %4, %1
  ret void, !dbg !233
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_type_dev_select(i8 zeroext) local_unnamed_addr #0 !dbg !234 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !236, metadata !DIExpression()), !dbg !237
  %2 = load %struct.__BT_3TH_PROTOCOL_CB*, %struct.__BT_3TH_PROTOCOL_CB** @g_bt_3th_lib_pro, align 4, !dbg !238, !tbaa !130
  %3 = icmp eq %struct.__BT_3TH_PROTOCOL_CB* %2, null, !dbg !238
  br i1 %3, label %31, label %4, !dbg !240

; <label>:4:                                      ; preds = %1
  %5 = icmp eq i8 %0, 0, !dbg !241
  br i1 %5, label %6, label %19, !dbg !244

; <label>:6:                                      ; preds = %4
  store volatile i8 0, i8* @JL_bt_chl, align 1, !dbg !245, !tbaa !213
  tail call void @bt_3th_spp_callback_set(void ()* null, void (i8*, i8*, i16)* null, void (i8)* null) #6, !dbg !247
  %7 = load %struct.__BT_3TH_PROTOCOL_CB*, %struct.__BT_3TH_PROTOCOL_CB** @g_bt_3th_lib_pro, align 4, !dbg !248, !tbaa !130
  %8 = getelementptr inbounds %struct.__BT_3TH_PROTOCOL_CB, %struct.__BT_3TH_PROTOCOL_CB* %7, i32 0, i32 2, !dbg !249
  %9 = load void ()*, void ()** %8, align 4, !dbg !249, !tbaa !250
  %10 = getelementptr inbounds %struct.__BT_3TH_PROTOCOL_CB, %struct.__BT_3TH_PROTOCOL_CB* %7, i32 0, i32 3, !dbg !251
  %11 = load void (i8*, i8*, i16)*, void (i8*, i8*, i16)** %10, align 4, !dbg !251, !tbaa !252
  tail call void @bt_3th_ble_callback_set(void ()* %9, void (i8*, i8*, i16)* %11, void (i8*, i32)* nonnull @bt_3th_ble_status_callback) #6, !dbg !253
  call void @llvm.dbg.value(metadata i8 %0, metadata !217, metadata !DIExpression()), !dbg !254
  %12 = load %struct.__BT_3TH_PROTOCOL_CB*, %struct.__BT_3TH_PROTOCOL_CB** @g_bt_3th_lib_pro, align 4, !dbg !256, !tbaa !130
  %13 = icmp eq %struct.__BT_3TH_PROTOCOL_CB* %12, null, !dbg !257
  br i1 %13, label %31, label %14, !dbg !258

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.__BT_3TH_PROTOCOL_CB, %struct.__BT_3TH_PROTOCOL_CB* %12, i32 0, i32 1, !dbg !259
  %16 = load void (i8)*, void (i8)** %15, align 4, !dbg !259, !tbaa !225
  %17 = icmp eq void (i8)* %16, null, !dbg !260
  br i1 %17, label %31, label %18, !dbg !261

; <label>:18:                                     ; preds = %14
  tail call void %16(i8 zeroext 0) #6, !dbg !262
  br label %31, !dbg !263

; <label>:19:                                     ; preds = %4
  store volatile i8 1, i8* @JL_bt_chl, align 1, !dbg !264, !tbaa !213
  %20 = getelementptr inbounds %struct.__BT_3TH_PROTOCOL_CB, %struct.__BT_3TH_PROTOCOL_CB* %2, i32 0, i32 2, !dbg !266
  %21 = load void ()*, void ()** %20, align 4, !dbg !266, !tbaa !250
  %22 = getelementptr inbounds %struct.__BT_3TH_PROTOCOL_CB, %struct.__BT_3TH_PROTOCOL_CB* %2, i32 0, i32 3, !dbg !267
  %23 = load void (i8*, i8*, i16)*, void (i8*, i8*, i16)** %22, align 4, !dbg !267, !tbaa !252
  tail call void @bt_3th_spp_callback_set(void ()* %21, void (i8*, i8*, i16)* %23, void (i8)* nonnull @bt_3th_spp_status_callback) #6, !dbg !268
  tail call void @bt_3th_ble_callback_set(void ()* null, void (i8*, i8*, i16)* null, void (i8*, i32)* null) #6, !dbg !269
  call void @llvm.dbg.value(metadata i8 %0, metadata !217, metadata !DIExpression()), !dbg !270
  %24 = load %struct.__BT_3TH_PROTOCOL_CB*, %struct.__BT_3TH_PROTOCOL_CB** @g_bt_3th_lib_pro, align 4, !dbg !272, !tbaa !130
  %25 = icmp eq %struct.__BT_3TH_PROTOCOL_CB* %24, null, !dbg !273
  br i1 %25, label %31, label %26, !dbg !274

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.__BT_3TH_PROTOCOL_CB, %struct.__BT_3TH_PROTOCOL_CB* %24, i32 0, i32 1, !dbg !275
  %28 = load void (i8)*, void (i8)** %27, align 4, !dbg !275, !tbaa !225
  %29 = icmp eq void (i8)* %28, null, !dbg !276
  br i1 %29, label %31, label %30, !dbg !277

; <label>:30:                                     ; preds = %26
  tail call void %28(i8 zeroext %0) #6, !dbg !278
  br label %31, !dbg !279

; <label>:31:                                     ; preds = %30, %26, %19, %18, %14, %6, %1
  ret void, !dbg !280
}

; Function Attrs: optsize
declare void @bt_3th_spp_callback_set(void ()*, void (i8*, i8*, i16)*, void (i8)*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bt_3th_ble_callback_set(void ()*, void (i8*, i8*, i16)*, void (i8*, i32)*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bt_3th_ble_status_callback(i8*, i32) #1

; Function Attrs: optsize
declare void @bt_3th_spp_status_callback(i8 zeroext) #1

; Function Attrs: nounwind optsize
define hidden void @bt_3th_dev_type_spp() local_unnamed_addr #0 !dbg !281 {
  tail call void @bt_3th_type_dev_select(i8 zeroext 1) #7, !dbg !282
  ret void, !dbg !283
}

; Function Attrs: nounwind optsize
define hidden i32 @btstack_3th_protocol_lib_init(%struct.__BT_3TH_PROTOCOL_CB*) local_unnamed_addr #0 !dbg !284 {
  call void @llvm.dbg.value(metadata %struct.__BT_3TH_PROTOCOL_CB* %0, metadata !288, metadata !DIExpression()), !dbg !289
  store %struct.__BT_3TH_PROTOCOL_CB* %0, %struct.__BT_3TH_PROTOCOL_CB** @g_bt_3th_lib_pro, align 4, !dbg !290, !tbaa !130
  ret i32 0, !dbg !291
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_event_send_to_user(i16 zeroext, i8*, i32) local_unnamed_addr #0 !dbg !292 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !294, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i8* %1, metadata !295, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i32 %2, metadata !296, metadata !DIExpression()), !dbg !299
  %4 = load %struct.__BT_3TH_USER_CB*, %struct.__BT_3TH_USER_CB** @g_bt_3th_user_pro, align 4, !dbg !300, !tbaa !130
  %5 = icmp eq %struct.__BT_3TH_USER_CB* %4, null, !dbg !302
  br i1 %5, label %11, label %6, !dbg !303

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %4, i32 0, i32 3, !dbg !304
  %8 = load void (i16, i8*, i32)*, void (i16, i8*, i32)** %7, align 4, !dbg !304, !tbaa !306
  %9 = icmp eq void (i16, i8*, i32)* %8, null, !dbg !307
  br i1 %9, label %11, label %10, !dbg !308

; <label>:10:                                     ; preds = %6
  tail call void %8(i16 zeroext %0, i8* %1, i32 %2) #6, !dbg !310
  br label %11, !dbg !312

; <label>:11:                                     ; preds = %10, %6, %3
  ret void, !dbg !313
}

; Function Attrs: nounwind optsize
define hidden void @bt_3th_data_send_to_user(i8*, i32) local_unnamed_addr #0 !dbg !314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !316, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %1, metadata !317, metadata !DIExpression()), !dbg !319
  %3 = load %struct.__BT_3TH_USER_CB*, %struct.__BT_3TH_USER_CB** @g_bt_3th_user_pro, align 4, !dbg !320, !tbaa !130
  %4 = icmp eq %struct.__BT_3TH_USER_CB* %3, null, !dbg !322
  br i1 %4, label %10, label %5, !dbg !323

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.__BT_3TH_USER_CB, %struct.__BT_3TH_USER_CB* %3, i32 0, i32 4, !dbg !324
  %7 = load void (i8*, i32)*, void (i8*, i32)** %6, align 4, !dbg !324, !tbaa !326
  %8 = icmp eq void (i8*, i32)* %7, null, !dbg !327
  br i1 %8, label %10, label %9, !dbg !328

; <label>:9:                                      ; preds = %5
  tail call void %7(i8* %0, i32 %1) #6, !dbg !330
  br label %10, !dbg !332

; <label>:10:                                     ; preds = %9, %5, %2
  ret void, !dbg !333
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!102, !103}
!llvm.ident = !{!104}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !101, line: 190, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !10)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/third_party_profile/common/btstack_3th_protocol_user.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 35, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/third_party/common/btstack_3th_protocol_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9}
!8 = !DIEnumerator(name: "RCSP_BLE", value: 0)
!9 = !DIEnumerator(name: "RCSP_SPP", value: 1)
!10 = !{!0, !11, !56, !58, !79, !82}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "bt_3th_spp_callback", scope: !2, file: !3, line: 11, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "JL_PRO_CB", file: !14, line: 177, baseType: !15)
!14 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/third_party/rcsp/JL_rcsp_protocol.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__JL_PRO_CB", file: !14, line: 163, size: 352, elements: !16)
!16 = !{!17, !19, !26, !34, !40, !41, !45, !46, !47, !48, !52}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !15, file: !14, line: 165, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fw_ready", scope: !15, file: !14, line: 166, baseType: !20, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !18}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 11, baseType: !25)
!24 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "fw_send", scope: !15, file: !14, line: 167, baseType: !27, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !18, !18, !32}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !24, line: 16, baseType: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !24, line: 13, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "CMD_resp", scope: !15, file: !14, line: 169, baseType: !35, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !18, !38, !38, !39, !32}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 11, baseType: !25)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "DATA_resp", scope: !15, file: !14, line: 170, baseType: !35, size: 32, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "CMD_no_resp", scope: !15, file: !14, line: 171, baseType: !42, size: 32, offset: 160)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !18, !38, !39, !32}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "DATA_no_resp", scope: !15, file: !14, line: 172, baseType: !42, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "CMD_recieve_resp", scope: !15, file: !14, line: 173, baseType: !35, size: 32, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "DATA_recieve_resp", scope: !15, file: !14, line: 174, baseType: !35, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "wait_resp_timeout", scope: !15, file: !14, line: 175, baseType: !49, size: 32, offset: 288)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DISubroutineType(types: !51)
!51 = !{!38, !18, !38, !38}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "auth_pass_callback", scope: !15, file: !14, line: 176, baseType: !53, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !18}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "bt_3th_ble_callback", scope: !2, file: !3, line: 12, type: !13, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "g_bt_3th_user_pro", scope: !2, file: !3, line: 13, type: !60, isLocal: true, isDefinition: true)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "BT_3TH_USER_CB", file: !6, line: 48, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__BT_3TH_USER_CB", file: !6, line: 41, size: 512, elements: !63)
!63 = !{!64, !65, !66, !67, !71, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !6, line: 42, baseType: !31, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bt_config", scope: !62, file: !6, line: 43, baseType: !31, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bt_3th_handler", scope: !62, file: !6, line: 44, baseType: !13, size: 352, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "BT_3TH_event_handler", scope: !62, file: !6, line: 45, baseType: !68, size: 32, offset: 416)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !32, !39, !31}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "BT_3TH_data_handler", scope: !62, file: !6, line: 46, baseType: !72, size: 32, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !39, !31}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "BT_3TH_spp_state_specific", scope: !62, file: !6, line: 47, baseType: !76, size: 32, offset: 480)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!77 = !DISubroutineType(types: !78)
!78 = !{!31, !38}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "JL_bt_chl", scope: !2, file: !3, line: 10, type: !81, isLocal: true, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "g_bt_3th_lib_pro", scope: !2, file: !3, line: 14, type: !84, isLocal: true, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "BT_3TH_PROTOCOL_CB", file: !6, line: 55, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__BT_3TH_PROTOCOL_CB", file: !6, line: 50, size: 128, elements: !87)
!87 = !{!88, !89, !93, !97}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !6, line: 51, baseType: !31, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "BT_3TH_type_dev_select", scope: !86, file: !6, line: 52, baseType: !90, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !38}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !86, file: !6, line: 53, baseType: !94, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "recieve", scope: !86, file: !6, line: 54, baseType: !98, size: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !18, !18, !32}
!101 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!102 = !{i32 2, !"Dwarf Version", i32 4}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!105 = distinct !DISubprogram(name: "btstack_3th_protocol_open", scope: !3, file: !3, line: 27, type: !106, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{!31, !31}
!108 = !{!109}
!109 = !DILocalVariable(name: "type", arg: 1, scope: !105, file: !3, line: 27, type: !31)
!110 = !DILocation(line: 27, column: 35, scope: !105)
!111 = !DILocation(line: 29, column: 5, scope: !105)
!112 = !DILocation(line: 31, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 31, column: 13)
!114 = distinct !DILexicalBlock(scope: !105, file: !3, line: 29, column: 19)
!115 = !DILocation(line: 32, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !3, line: 31, column: 39)
!117 = !DILocation(line: 33, column: 9, scope: !116)
!118 = !DILocation(line: 39, column: 5, scope: !105)
!119 = distinct !DISubprogram(name: "btstack_3th_protocol_user_init", scope: !3, file: !3, line: 51, type: !120, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!31, !60}
!122 = !{!123}
!123 = !DILocalVariable(name: "protocol_user_callback", arg: 1, scope: !119, file: !3, line: 51, type: !60)
!124 = !DILocation(line: 51, column: 52, scope: !119)
!125 = !DILocation(line: 53, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !3, line: 53, column: 9)
!127 = !DILocation(line: 53, column: 9, scope: !119)
!128 = !DILocation(line: 54, column: 16, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 53, column: 33)
!130 = !{!131, !131, i64 0}
!131 = !{!"any pointer", !132, i64 0}
!132 = !{!"omnipotent char", !133, i64 0}
!133 = !{!"Simple C/C++ TBAA"}
!134 = !DILocation(line: 55, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !3, line: 55, column: 13)
!136 = !{!137, !138, i64 4}
!137 = !{!"__BT_3TH_USER_CB", !138, i64 0, !138, i64 4, !139, i64 8, !131, i64 52, !131, i64 56, !131, i64 60}
!138 = !{!"int", !132, i64 0}
!139 = !{!"__JL_PRO_CB", !131, i64 0, !131, i64 4, !131, i64 8, !131, i64 12, !131, i64 16, !131, i64 20, !131, i64 24, !131, i64 28, !131, i64 32, !131, i64 36, !131, i64 40}
!140 = !DILocation(line: 55, column: 31, scope: !135)
!141 = !DILocation(line: 55, column: 13, scope: !129)
!142 = !DILocation(line: 56, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !3, line: 55, column: 48)
!144 = !DILocation(line: 57, column: 44, scope: !143)
!145 = !DILocation(line: 57, column: 52, scope: !143)
!146 = !{i64 0, i64 4, !130, i64 4, i64 4, !130, i64 8, i64 4, !130, i64 12, i64 4, !130, i64 16, i64 4, !130, i64 20, i64 4, !130, i64 24, i64 4, !130, i64 28, i64 4, !130, i64 32, i64 4, !130, i64 36, i64 4, !130, i64 40, i64 4, !130}
!147 = !DILocation(line: 58, column: 42, scope: !143)
!148 = !{!139, !131, i64 4}
!149 = !DILocation(line: 59, column: 42, scope: !143)
!150 = !{!139, !131, i64 8}
!151 = !DILocation(line: 60, column: 13, scope: !143)
!152 = !DILocation(line: 61, column: 9, scope: !143)
!153 = !DILocation(line: 63, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !129, file: !3, line: 63, column: 13)
!155 = !DILocation(line: 63, column: 13, scope: !154)
!156 = !DILocation(line: 63, column: 31, scope: !154)
!157 = !DILocation(line: 63, column: 13, scope: !129)
!158 = !DILocation(line: 64, column: 52, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 63, column: 48)
!160 = !DILocation(line: 65, column: 42, scope: !159)
!161 = !DILocation(line: 66, column: 42, scope: !159)
!162 = !DILocation(line: 67, column: 13, scope: !159)
!163 = !DILocation(line: 68, column: 9, scope: !159)
!164 = !DILocation(line: 70, column: 35, scope: !129)
!165 = !DILocation(line: 70, column: 43, scope: !129)
!166 = !{!137, !138, i64 0}
!167 = !DILocation(line: 70, column: 9, scope: !129)
!168 = !DILocation(line: 72, column: 5, scope: !129)
!169 = !DILocation(line: 74, column: 5, scope: !119)
!170 = distinct !DISubprogram(name: "bt_3th_spp_state_handle", scope: !3, file: !3, line: 78, type: !91, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !171)
!171 = !{!172}
!172 = !DILocalVariable(name: "type", arg: 1, scope: !170, file: !3, line: 78, type: !38)
!173 = !DILocation(line: 78, column: 33, scope: !170)
!174 = !DILocation(line: 80, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 80, column: 9)
!176 = !DILocation(line: 80, column: 9, scope: !175)
!177 = !DILocation(line: 80, column: 18, scope: !175)
!178 = !DILocation(line: 80, column: 30, scope: !179)
!179 = !DILexicalBlockFile(scope: !175, file: !3, discriminator: 1)
!180 = !{!137, !131, i64 60}
!181 = !DILocation(line: 80, column: 21, scope: !179)
!182 = !DILocation(line: 80, column: 9, scope: !183)
!183 = !DILexicalBlockFile(scope: !170, file: !3, discriminator: 1)
!184 = !DILocation(line: 81, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !175, file: !3, line: 80, column: 58)
!186 = !DILocation(line: 82, column: 5, scope: !185)
!187 = !DILocation(line: 83, column: 1, scope: !170)
!188 = distinct !DISubprogram(name: "bt_3th_set_spp_callback_priv", scope: !3, file: !3, line: 85, type: !54, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !189)
!189 = !{!190}
!190 = !DILocalVariable(name: "priv", arg: 1, scope: !188, file: !3, line: 85, type: !18)
!191 = !DILocation(line: 85, column: 41, scope: !188)
!192 = !DILocation(line: 87, column: 30, scope: !188)
!193 = !{!139, !131, i64 0}
!194 = !DILocation(line: 88, column: 1, scope: !188)
!195 = distinct !DISubprogram(name: "bt_3th_get_spp_callback", scope: !3, file: !3, line: 90, type: !196, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !199)
!196 = !DISubroutineType(types: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!199 = !{}
!200 = !DILocation(line: 92, column: 5, scope: !195)
!201 = distinct !DISubprogram(name: "bt_3th_set_ble_callback_priv", scope: !3, file: !3, line: 96, type: !54, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !202)
!202 = !{!203}
!203 = !DILocalVariable(name: "priv", arg: 1, scope: !201, file: !3, line: 96, type: !18)
!204 = !DILocation(line: 96, column: 41, scope: !201)
!205 = !DILocation(line: 98, column: 30, scope: !201)
!206 = !DILocation(line: 99, column: 1, scope: !201)
!207 = distinct !DISubprogram(name: "bt_3th_get_ble_callback", scope: !3, file: !3, line: 101, type: !196, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !199)
!208 = !DILocation(line: 103, column: 5, scope: !207)
!209 = distinct !DISubprogram(name: "bt_3th_get_cur_bt_channel_sel", scope: !3, file: !3, line: 107, type: !210, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !199)
!210 = !DISubroutineType(types: !211)
!211 = !{!38}
!212 = !DILocation(line: 109, column: 12, scope: !209)
!213 = !{!132, !132, i64 0}
!214 = !DILocation(line: 109, column: 5, scope: !209)
!215 = distinct !DISubprogram(name: "bt_3th_type_dev_switch", scope: !3, file: !3, line: 112, type: !91, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !216)
!216 = !{!217}
!217 = !DILocalVariable(name: "type", arg: 1, scope: !215, file: !3, line: 112, type: !38)
!218 = !DILocation(line: 112, column: 32, scope: !215)
!219 = !DILocation(line: 114, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 114, column: 9)
!221 = !DILocation(line: 114, column: 9, scope: !220)
!222 = !DILocation(line: 114, column: 28, scope: !220)
!223 = !DILocation(line: 114, column: 50, scope: !224)
!224 = !DILexicalBlockFile(scope: !220, file: !3, discriminator: 1)
!225 = !{!226, !131, i64 4}
!226 = !{!"__BT_3TH_PROTOCOL_CB", !138, i64 0, !131, i64 4, !131, i64 8, !131, i64 12}
!227 = !DILocation(line: 114, column: 31, scope: !224)
!228 = !DILocation(line: 114, column: 9, scope: !229)
!229 = !DILexicalBlockFile(scope: !215, file: !3, discriminator: 1)
!230 = !DILocation(line: 115, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !220, file: !3, line: 114, column: 75)
!232 = !DILocation(line: 116, column: 5, scope: !231)
!233 = !DILocation(line: 117, column: 1, scope: !215)
!234 = distinct !DISubprogram(name: "bt_3th_type_dev_select", scope: !3, file: !3, line: 120, type: !91, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !235)
!235 = !{!236}
!236 = !DILocalVariable(name: "type", arg: 1, scope: !234, file: !3, line: 120, type: !38)
!237 = !DILocation(line: 120, column: 32, scope: !234)
!238 = !DILocation(line: 122, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 122, column: 9)
!240 = !DILocation(line: 122, column: 9, scope: !234)
!241 = !DILocation(line: 123, column: 18, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 123, column: 13)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 122, column: 27)
!244 = !DILocation(line: 123, column: 13, scope: !243)
!245 = !DILocation(line: 125, column: 23, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 123, column: 31)
!247 = !DILocation(line: 127, column: 13, scope: !246)
!248 = !DILocation(line: 128, column: 37, scope: !246)
!249 = !DILocation(line: 128, column: 55, scope: !246)
!250 = !{!226, !131, i64 8}
!251 = !DILocation(line: 128, column: 81, scope: !246)
!252 = !{!226, !131, i64 12}
!253 = !DILocation(line: 128, column: 13, scope: !246)
!254 = !DILocation(line: 112, column: 32, scope: !215, inlinedAt: !255)
!255 = distinct !DILocation(line: 129, column: 13, scope: !246)
!256 = !DILocation(line: 114, column: 10, scope: !220, inlinedAt: !255)
!257 = !DILocation(line: 114, column: 9, scope: !220, inlinedAt: !255)
!258 = !DILocation(line: 114, column: 28, scope: !220, inlinedAt: !255)
!259 = !DILocation(line: 114, column: 50, scope: !224, inlinedAt: !255)
!260 = !DILocation(line: 114, column: 31, scope: !224, inlinedAt: !255)
!261 = !DILocation(line: 114, column: 9, scope: !229, inlinedAt: !255)
!262 = !DILocation(line: 115, column: 9, scope: !231, inlinedAt: !255)
!263 = !DILocation(line: 116, column: 5, scope: !231, inlinedAt: !255)
!264 = !DILocation(line: 132, column: 23, scope: !265)
!265 = distinct !DILexicalBlock(scope: !242, file: !3, line: 130, column: 16)
!266 = !DILocation(line: 134, column: 55, scope: !265)
!267 = !DILocation(line: 134, column: 81, scope: !265)
!268 = !DILocation(line: 134, column: 13, scope: !265)
!269 = !DILocation(line: 135, column: 13, scope: !265)
!270 = !DILocation(line: 112, column: 32, scope: !215, inlinedAt: !271)
!271 = distinct !DILocation(line: 136, column: 13, scope: !265)
!272 = !DILocation(line: 114, column: 10, scope: !220, inlinedAt: !271)
!273 = !DILocation(line: 114, column: 9, scope: !220, inlinedAt: !271)
!274 = !DILocation(line: 114, column: 28, scope: !220, inlinedAt: !271)
!275 = !DILocation(line: 114, column: 50, scope: !224, inlinedAt: !271)
!276 = !DILocation(line: 114, column: 31, scope: !224, inlinedAt: !271)
!277 = !DILocation(line: 114, column: 9, scope: !229, inlinedAt: !271)
!278 = !DILocation(line: 115, column: 9, scope: !231, inlinedAt: !271)
!279 = !DILocation(line: 116, column: 5, scope: !231, inlinedAt: !271)
!280 = !DILocation(line: 139, column: 1, scope: !234)
!281 = distinct !DISubprogram(name: "bt_3th_dev_type_spp", scope: !3, file: !3, line: 141, type: !95, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !199)
!282 = !DILocation(line: 143, column: 5, scope: !281)
!283 = !DILocation(line: 144, column: 1, scope: !281)
!284 = distinct !DISubprogram(name: "btstack_3th_protocol_lib_init", scope: !3, file: !3, line: 154, type: !285, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!31, !84}
!287 = !{!288}
!288 = !DILocalVariable(name: "protocol_lib_callback", arg: 1, scope: !284, file: !3, line: 154, type: !84)
!289 = !DILocation(line: 154, column: 55, scope: !284)
!290 = !DILocation(line: 156, column: 22, scope: !284)
!291 = !DILocation(line: 157, column: 5, scope: !284)
!292 = distinct !DISubprogram(name: "bt_3th_event_send_to_user", scope: !3, file: !3, line: 161, type: !69, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !293)
!293 = !{!294, !295, !296}
!294 = !DILocalVariable(name: "opcode", arg: 1, scope: !292, file: !3, line: 161, type: !32)
!295 = !DILocalVariable(name: "packet", arg: 2, scope: !292, file: !3, line: 161, type: !39)
!296 = !DILocalVariable(name: "size", arg: 3, scope: !292, file: !3, line: 161, type: !31)
!297 = !DILocation(line: 161, column: 36, scope: !292)
!298 = !DILocation(line: 161, column: 48, scope: !292)
!299 = !DILocation(line: 161, column: 60, scope: !292)
!300 = !DILocation(line: 163, column: 10, scope: !301)
!301 = distinct !DILexicalBlock(scope: !292, file: !3, line: 163, column: 9)
!302 = !DILocation(line: 163, column: 9, scope: !301)
!303 = !DILocation(line: 163, column: 18, scope: !301)
!304 = !DILocation(line: 163, column: 30, scope: !305)
!305 = !DILexicalBlockFile(scope: !301, file: !3, discriminator: 1)
!306 = !{!137, !131, i64 52}
!307 = !DILocation(line: 163, column: 21, scope: !305)
!308 = !DILocation(line: 163, column: 9, scope: !309)
!309 = !DILexicalBlockFile(scope: !292, file: !3, discriminator: 1)
!310 = !DILocation(line: 164, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !301, file: !3, line: 163, column: 53)
!312 = !DILocation(line: 165, column: 5, scope: !311)
!313 = !DILocation(line: 166, column: 1, scope: !292)
!314 = distinct !DISubprogram(name: "bt_3th_data_send_to_user", scope: !3, file: !3, line: 168, type: !73, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !315)
!315 = !{!316, !317}
!316 = !DILocalVariable(name: "packet", arg: 1, scope: !314, file: !3, line: 168, type: !39)
!317 = !DILocalVariable(name: "size", arg: 2, scope: !314, file: !3, line: 168, type: !31)
!318 = !DILocation(line: 168, column: 35, scope: !314)
!319 = !DILocation(line: 168, column: 47, scope: !314)
!320 = !DILocation(line: 170, column: 10, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !3, line: 170, column: 9)
!322 = !DILocation(line: 170, column: 9, scope: !321)
!323 = !DILocation(line: 170, column: 18, scope: !321)
!324 = !DILocation(line: 170, column: 30, scope: !325)
!325 = !DILexicalBlockFile(scope: !321, file: !3, discriminator: 1)
!326 = !{!137, !131, i64 56}
!327 = !DILocation(line: 170, column: 21, scope: !325)
!328 = !DILocation(line: 170, column: 9, scope: !329)
!329 = !DILexicalBlockFile(scope: !314, file: !3, discriminator: 1)
!330 = !DILocation(line: 171, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !321, file: !3, line: 170, column: 52)
!332 = !DILocation(line: 172, column: 5, scope: !331)
!333 = !DILocation(line: 173, column: 1, scope: !314)
