; ModuleID = 'user_interface.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.hci_cmd_t = type { i16, i8* }
%struct.sys_event = type { i16, i8, i8*, %union.anon }
%union.anon = type { %struct.matrix_key_event }
%struct.matrix_key_event = type { [6 x i16], i8* }
%struct.bt_event = type { i8, [7 x i8], i32 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@user_interface_app = external global %struct.user_interface_handler, align 4
@user_interface = hidden local_unnamed_addr global %struct.user_interface_handler* @user_interface_app, section ".bt_stack_data", align 4, !dbg !8
@stack_configs_app = external global %struct._stack_config, align 4
@user_stack_configs = hidden local_unnamed_addr global %struct._stack_config* @stack_configs_app, section ".bt_stack_data", align 4, !dbg !77

; Function Attrs: nounwind optsize
define hidden void @bt_music_info_handle_register(void (i8, i32, i8*, i16)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !130 {
  call void @llvm.dbg.value(metadata void (i8, i32, i8*, i16)* %0, metadata !134, metadata !DIExpression()), !dbg !135
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !136, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 8, !dbg !141
  store void (i8, i32, i8*, i16)* %0, void (i8, i32, i8*, i16)** %3, align 4, !dbg !142, !tbaa !143
  ret void, !dbg !145
}

; Function Attrs: nounwind optsize
define hidden void @music_vol_change_handle_register(void (i32)*, i32 ()*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !146 {
  call void @llvm.dbg.value(metadata void (i32)* %0, metadata !150, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 ()* %1, metadata !151, metadata !DIExpression()), !dbg !153
  %3 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !154, !tbaa !137
  %4 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %3, i32 0, i32 7, !dbg !155
  store void (i32)* %0, void (i32)** %4, align 4, !dbg !156, !tbaa !157
  %5 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %3, i32 0, i32 6, !dbg !158
  store i32 ()* %1, i32 ()** %5, align 4, !dbg !159, !tbaa !160
  ret void, !dbg !161
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @is_support_vol_sync() local_unnamed_addr #1 section ".bt_stack_code" !dbg !162 {
  %1 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !165, !tbaa !137
  %2 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %1, i32 0, i32 6, !dbg !167
  %3 = load i32 ()*, i32 ()** %2, align 4, !dbg !167, !tbaa !160
  %4 = icmp eq i32 ()* %3, null, !dbg !165
  br i1 %4, label %9, label %5, !dbg !168

; <label>:5:                                      ; preds = %0
  %6 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %1, i32 0, i32 7, !dbg !169
  %7 = load void (i32)*, void (i32)** %6, align 4, !dbg !169, !tbaa !157
  %8 = icmp eq void (i32)* %7, null, !dbg !171
  br i1 %8, label %9, label %10, !dbg !172

; <label>:9:                                      ; preds = %5, %0
  br label %10, !dbg !174

; <label>:10:                                     ; preds = %9, %5
  %11 = phi i8 [ 0, %9 ], [ 1, %5 ]
  ret i8 %11, !dbg !176
}

; Function Attrs: nounwind optsize
define hidden void @profile_function_status_handle_register(void (i8*, i32, i32)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !177 {
  call void @llvm.dbg.value(metadata void (i8*, i32, i32)* %0, metadata !181, metadata !DIExpression()), !dbg !182
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !183, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 0, !dbg !184
  store void (i8*, i32, i32)* %0, void (i8*, i32, i32)** %3, align 4, !dbg !185, !tbaa !186
  ret void, !dbg !187
}

; Function Attrs: nounwind optsize
define hidden void @read_remote_name_handle_register(void (i8, i8*, i8*)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !188 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i8*)* %0, metadata !192, metadata !DIExpression()), !dbg !193
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !194, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 1, !dbg !195
  store void (i8, i8*, i8*)* %0, void (i8, i8*, i8*)** %3, align 4, !dbg !196, !tbaa !197
  ret void, !dbg !198
}

; Function Attrs: nounwind optsize
define hidden void @get_battery_percent_register(i32 ()*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !199 {
  call void @llvm.dbg.value(metadata i32 ()* %0, metadata !203, metadata !DIExpression()), !dbg !204
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !205, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 14, !dbg !206
  store i32 ()* %0, i32 ()** %3, align 4, !dbg !207, !tbaa !208
  ret void, !dbg !209
}

; Function Attrs: nounwind optsize
define hidden void @get_battery_value_register(i32 ()*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !210 {
  call void @llvm.dbg.value(metadata i32 ()* %0, metadata !212, metadata !DIExpression()), !dbg !213
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !214, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 3, !dbg !215
  store i32 ()* %0, i32 ()** %3, align 4, !dbg !216, !tbaa !217
  ret void, !dbg !218
}

; Function Attrs: nounwind optsize
define hidden void @spp_data_deal_handle_register(void (i8, i16, i8*, i16)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !219 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !223, metadata !DIExpression()), !dbg !224
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !225, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 4, !dbg !226
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %3, align 4, !dbg !227, !tbaa !228
  ret void, !dbg !229
}

; Function Attrs: nounwind optsize
define hidden void @profile_channels_status_handle_register(void (i8*, i32, i32, i8)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !230 {
  call void @llvm.dbg.value(metadata void (i8*, i32, i32, i8)* %0, metadata !234, metadata !DIExpression()), !dbg !235
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !236, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 5, !dbg !237
  store void (i8*, i32, i32, i8)* %0, void (i8*, i32, i32, i8)** %3, align 4, !dbg !238, !tbaa !239
  ret void, !dbg !240
}

; Function Attrs: nounwind optsize
define hidden void @__set_auto_conn_device_num(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !241 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8 %0, metadata !243, metadata !DIExpression()), !dbg !244
  %2 = icmp ult i8 %0, 9, !dbg !245
  %3 = select i1 %2, i8 %0, i8 9, !dbg !245
  call void @llvm.dbg.value(metadata i8 %3, metadata !243, metadata !DIExpression()), !dbg !244
  %4 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !246, !tbaa !137
  %5 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %4, i32 0, i32 9, !dbg !247
  %6 = load i32, i32* %5, align 1, !dbg !248
  %7 = and i8 %3, 15, !dbg !248
  %8 = zext i8 %7 to i32, !dbg !248
  %9 = and i32 %6, -16, !dbg !248
  %10 = or i32 %9, %8, !dbg !248
  store i32 %10, i32* %5, align 1, !dbg !248
  ret void, !dbg !249
}

; Function Attrs: nounwind optsize
define hidden void @__bt_set_hid_independent_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !250 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !254, metadata !DIExpression()), !dbg !255
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !256, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !257
  %4 = load i32, i32* %3, align 1, !dbg !258
  %5 = shl i8 %0, 6, !dbg !258
  %6 = and i8 %5, 64, !dbg !258
  %7 = zext i8 %6 to i32, !dbg !258
  %8 = and i32 %4, -65, !dbg !258
  %9 = or i32 %8, %7, !dbg !258
  store i32 %9, i32* %3, align 1, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @__get_hid_independent_flag() local_unnamed_addr #1 section ".bt_stack_code" !dbg !260 {
  %1 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !263, !tbaa !137
  %2 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %1, i32 0, i32 9, !dbg !264
  %3 = load i32, i32* %2, align 1, !dbg !264
  %4 = lshr i32 %3, 6, !dbg !264
  %5 = trunc i32 %4 to i8, !dbg !264
  %6 = and i8 %5, 1, !dbg !264
  ret i8 %6, !dbg !265
}

; Function Attrs: nounwind optsize
define hidden void @__set_support_msbc_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !266 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !268, metadata !DIExpression()), !dbg !269
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !270, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !271
  %4 = load i32, i32* %3, align 1, !dbg !272
  %5 = and i8 %0, 1, !dbg !272
  %6 = zext i8 %5 to i32, !dbg !272
  %7 = shl nuw nsw i32 %6, 11, !dbg !272
  %8 = and i32 %4, -2049, !dbg !272
  %9 = or i32 %8, %7, !dbg !272
  store i32 %9, i32* %3, align 1, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: nounwind optsize
define hidden void @__set_support_aac_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !274 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !276, metadata !DIExpression()), !dbg !277
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !278, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !279
  %4 = load i32, i32* %3, align 1, !dbg !280
  %5 = shl i8 %0, 7, !dbg !280
  %6 = zext i8 %5 to i32, !dbg !280
  %7 = and i32 %4, -129, !dbg !280
  %8 = or i32 %7, %6, !dbg !280
  store i32 %8, i32* %3, align 1, !dbg !280
  ret void, !dbg !281
}

; Function Attrs: nounwind optsize
define hidden void @__set_support_aptx_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !282 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !284, metadata !DIExpression()), !dbg !285
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !286, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !287
  %4 = load i32, i32* %3, align 1, !dbg !288
  %5 = and i8 %0, 1, !dbg !288
  %6 = zext i8 %5 to i32, !dbg !288
  %7 = shl nuw nsw i32 %6, 8, !dbg !288
  %8 = and i32 %4, -257, !dbg !288
  %9 = or i32 %8, %7, !dbg !288
  store i32 %9, i32* %3, align 1, !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nounwind optsize
define hidden void @__set_support_ldac_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !290 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !292, metadata !DIExpression()), !dbg !293
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !294, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !295
  %4 = load i32, i32* %3, align 1, !dbg !296
  %5 = and i8 %0, 1, !dbg !296
  %6 = zext i8 %5 to i32, !dbg !296
  %7 = shl nuw nsw i32 %6, 9, !dbg !296
  %8 = and i32 %4, -513, !dbg !296
  %9 = or i32 %8, %7, !dbg !296
  store i32 %9, i32* %3, align 1, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind optsize
define hidden void @__set_support_non_a2dp_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !298 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !300, metadata !DIExpression()), !dbg !301
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !302, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !303
  %4 = load i32, i32* %3, align 1, !dbg !304
  %5 = and i8 %0, 1, !dbg !304
  %6 = zext i8 %5 to i32, !dbg !304
  %7 = shl nuw nsw i32 %6, 10, !dbg !304
  %8 = and i32 %4, -1025, !dbg !304
  %9 = or i32 %8, %7, !dbg !304
  store i32 %9, i32* %3, align 1, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nounwind optsize
define hidden void @__set_simple_pair_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !306 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !308, metadata !DIExpression()), !dbg !309
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !310, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !311
  %4 = load i32, i32* %3, align 1, !dbg !312
  %5 = and i8 %0, 1, !dbg !312
  %6 = zext i8 %5 to i32, !dbg !312
  %7 = shl nuw nsw i32 %6, 12, !dbg !312
  %8 = and i32 %4, -4097, !dbg !312
  %9 = or i32 %8, %7, !dbg !312
  store i32 %9, i32* %3, align 1, !dbg !312
  ret void, !dbg !313
}

; Function Attrs: nounwind optsize
define hidden void @__change_hci_class_type(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !318, metadata !DIExpression()), !dbg !319
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !320, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 0, !dbg !321
  store i32 %0, i32* %3, align 4, !dbg !322, !tbaa !323
  ret void, !dbg !327
}

; Function Attrs: nounwind optsize
define hidden void @__set_super_timeout_value(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !328 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !332, metadata !DIExpression()), !dbg !333
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !334, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 2, !dbg !335
  store i16 %0, i16* %3, align 2, !dbg !336, !tbaa !337
  ret void, !dbg !338
}

; Function Attrs: nounwind optsize
define hidden void @__set_page_timeout_value(i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !339 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !341, metadata !DIExpression()), !dbg !342
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !343, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 1, !dbg !344
  store i16 %0, i16* %3, align 4, !dbg !345, !tbaa !346
  ret void, !dbg !347
}

; Function Attrs: nounwind optsize
define hidden void @__set_sbc_cap_bitpool(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !348 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !350, metadata !DIExpression()), !dbg !351
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !352, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 7, !dbg !353
  store i8 %0, i8* %3, align 1, !dbg !354, !tbaa !355
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize
define hidden void @__set_a2dp_auto_play_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !357 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !359, metadata !DIExpression()), !dbg !360
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !361, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !362
  %4 = load i32, i32* %3, align 1, !dbg !363
  %5 = and i8 %0, 1, !dbg !363
  %6 = zext i8 %5 to i32, !dbg !363
  %7 = shl nuw nsw i32 %6, 21, !dbg !363
  %8 = and i32 %4, -2097153, !dbg !363
  %9 = or i32 %8, %7, !dbg !363
  store i32 %9, i32* %3, align 1, !dbg !363
  ret void, !dbg !364
}

; Function Attrs: nounwind optsize
define hidden void @__set_hfp_switch(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !365 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !367, metadata !DIExpression()), !dbg !368
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !369, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !370
  %4 = load i32, i32* %3, align 1, !dbg !371
  %5 = and i8 %0, 1, !dbg !371
  %6 = zext i8 %5 to i32, !dbg !371
  %7 = shl nuw nsw i32 %6, 16, !dbg !371
  %8 = and i32 %4, -65537, !dbg !371
  %9 = or i32 %8, %7, !dbg !371
  store i32 %9, i32* %3, align 1, !dbg !371
  ret void, !dbg !372
}

; Function Attrs: nounwind optsize
define hidden void @__set_hfp_restore(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !373 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !375, metadata !DIExpression()), !dbg !376
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !377, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !378
  %4 = load i32, i32* %3, align 1, !dbg !379
  %5 = and i8 %0, 1, !dbg !379
  %6 = zext i8 %5 to i32, !dbg !379
  %7 = shl nuw nsw i32 %6, 17, !dbg !379
  %8 = and i32 %4, -131073, !dbg !379
  %9 = or i32 %8, %7, !dbg !379
  store i32 %9, i32* %3, align 1, !dbg !379
  ret void, !dbg !380
}

; Function Attrs: nounwind optsize
define hidden void @__set_auto_pause_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !381 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !383, metadata !DIExpression()), !dbg !384
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !385, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 10, !dbg !386
  store i8 %0, i8* %3, align 1, !dbg !387, !tbaa !388
  ret void, !dbg !389
}

; Function Attrs: nounwind optsize
define hidden void @__set_music_break_in_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !390 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !392, metadata !DIExpression()), !dbg !393
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !394, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !395
  %4 = load i32, i32* %3, align 1, !dbg !396
  %5 = and i8 %0, 1, !dbg !396
  %6 = zext i8 %5 to i32, !dbg !396
  %7 = shl nuw nsw i32 %6, 19, !dbg !396
  %8 = and i32 %4, -524289, !dbg !396
  %9 = or i32 %8, %7, !dbg !396
  store i32 %9, i32* %3, align 1, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nounwind optsize
define hidden void @__set_a2dp_sound_detect_counter(i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !398 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !402, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8 %1, metadata !403, metadata !DIExpression()), !dbg !405
  %3 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !406, !tbaa !137
  %4 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %3, i32 0, i32 11, !dbg !407
  store i8 %0, i8* %4, align 2, !dbg !408, !tbaa !409
  %5 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %3, i32 0, i32 12, !dbg !410
  store i8 %1, i8* %5, align 1, !dbg !411, !tbaa !412
  ret void, !dbg !413
}

; Function Attrs: nounwind optsize
define hidden void @__set_emitter_enable_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !414 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !416, metadata !DIExpression()), !dbg !417
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !418, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !419
  %4 = load i32, i32* %3, align 1, !dbg !420
  %5 = and i8 %0, 1, !dbg !420
  %6 = zext i8 %5 to i32, !dbg !420
  %7 = shl nuw nsw i32 %6, 20, !dbg !420
  %8 = and i32 %4, -1048577, !dbg !420
  %9 = or i32 %8, %7, !dbg !420
  store i32 %9, i32* %3, align 1, !dbg !420
  ret void, !dbg !421
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @get_remote_test_flag() local_unnamed_addr #1 section ".bt_stack_code" !dbg !422 {
  %1 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !423, !tbaa !137
  %2 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %1, i32 0, i32 9, !dbg !425
  %3 = load i32, i32* %2, align 1, !dbg !425
  %4 = lshr i32 %3, 18, !dbg !426
  %5 = trunc i32 %4 to i8, !dbg !426
  %6 = and i8 %5, 1, !dbg !426
  ret i8 %6, !dbg !428
}

; Function Attrs: nounwind optsize
define hidden void @set_remote_test_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !429 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !431, metadata !DIExpression()), !dbg !432
  %2 = icmp eq i8 %0, 0, !dbg !433
  %3 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !tbaa !137
  %4 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 1
  br i1 %2, label %6, label %8, !dbg !435

; <label>:6:                                      ; preds = %1
  %7 = and i32 %5, -262145, !dbg !436
  br label %14, !dbg !438

; <label>:8:                                      ; preds = %1
  %9 = and i8 %0, 1, !dbg !439
  %10 = zext i8 %9 to i32, !dbg !439
  %11 = shl nuw nsw i32 %10, 18, !dbg !439
  %12 = and i32 %5, -262145, !dbg !439
  %13 = or i32 %12, %11, !dbg !439
  br label %14

; <label>:14:                                     ; preds = %8, %6
  %15 = phi i32 [ %13, %8 ], [ %7, %6 ]
  store i32 %15, i32* %4, align 1
  ret void, !dbg !441
}

; Function Attrs: nounwind optsize
define hidden void @bt_fast_test_handle_register(void ()*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !442 {
  call void @llvm.dbg.value(metadata void ()* %0, metadata !446, metadata !DIExpression()), !dbg !447
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !448, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 10, !dbg !449
  store void ()* %0, void ()** %3, align 4, !dbg !450, !tbaa !451
  ret void, !dbg !452
}

; Function Attrs: nounwind optsize
define hidden void @bt_dut_test_handle_register(void (i8)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !453 {
  call void @llvm.dbg.value(metadata void (i8)* %0, metadata !457, metadata !DIExpression()), !dbg !458
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !459, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 11, !dbg !460
  store void (i8)* %0, void (i8)** %3, align 4, !dbg !461, !tbaa !462
  ret void, !dbg !463
}

; Function Attrs: nounwind optsize
define hidden void @inquiry_result_handle_register(void (i8*, i8, i8*, i32, i8)*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !464 {
  call void @llvm.dbg.value(metadata void (i8*, i8, i8*, i32, i8)* %0, metadata !471, metadata !DIExpression()), !dbg !472
  %2 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !473, !tbaa !137
  %3 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %2, i32 0, i32 12, !dbg !474
  %4 = bitcast i8 (i8*, i8, i8*, i32, i8)** %3 to void (i8*, i8, i8*, i32, i8)**, !dbg !475
  store void (i8*, i8, i8*, i32, i8)* %0, void (i8*, i8, i8*, i32, i8)** %4, align 4, !dbg !475, !tbaa !476
  ret void, !dbg !477
}

; Function Attrs: nounwind optsize
define hidden void @__set_user_ctrl_conn_num(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !478 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !480, metadata !DIExpression()), !dbg !481
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !482, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !483
  %4 = load i32, i32* %3, align 1, !dbg !484
  %5 = shl i8 %0, 4, !dbg !484
  %6 = and i8 %5, 48, !dbg !484
  %7 = zext i8 %6 to i32, !dbg !484
  %8 = and i32 %4, -49, !dbg !484
  %9 = or i32 %8, %7, !dbg !484
  store i32 %9, i32* %3, align 1, !dbg !484
  ret void, !dbg !485
}

; Function Attrs: nounwind optsize
define hidden void @__bt_set_update_battery_time(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !486 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !488, metadata !DIExpression()), !dbg !489
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !490, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 6, !dbg !491
  store i8 %0, i8* %3, align 2, !dbg !492, !tbaa !493
  %4 = icmp eq i8 %0, 0, !dbg !494
  %5 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9
  %6 = load i32, i32* %5, align 1
  %7 = and i32 %6, -8193
  %8 = or i32 %6, 8192, !dbg !496
  %9 = select i1 %4, i32 %7, i32 %8, !dbg !498
  store i32 %9, i32* %5, align 1
  ret void, !dbg !499
}

; Function Attrs: nounwind optsize
define hidden void @__set_disable_sco_flag(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !500 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !502, metadata !DIExpression()), !dbg !503
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !504, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !505
  %4 = load i32, i32* %3, align 1, !dbg !506
  %5 = and i8 %0, 1, !dbg !506
  %6 = zext i8 %5 to i32, !dbg !506
  %7 = shl nuw nsw i32 %6, 14, !dbg !506
  %8 = and i32 %4, -16385, !dbg !506
  %9 = or i32 %8, %7, !dbg !506
  store i32 %9, i32* %3, align 1, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: norecurse nounwind optsize
define hidden zeroext i8 @get_esco_busy_flag() local_unnamed_addr #2 section ".bt_stack_code" !dbg !508 {
  %1 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !509, !tbaa !137
  %2 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %1, i32 0, i32 9, !dbg !511
  %3 = load volatile i32, i32* %2, align 1, !dbg !511
  %4 = trunc i32 %3 to i16, !dbg !512
  %5 = lshr i16 %4, 15, !dbg !513
  %6 = trunc i16 %5 to i8, !dbg !513
  ret i8 %6, !dbg !515
}

; Function Attrs: nounwind optsize
define hidden void @__set_simple_pair_param(i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !516 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !520, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i8 %1, metadata !521, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i8 %2, metadata !522, metadata !DIExpression()), !dbg !525
  %4 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !526, !tbaa !137
  %5 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %4, i32 0, i32 9, !dbg !527
  %6 = load i32, i32* %5, align 1, !dbg !528
  %7 = and i8 %0, 3, !dbg !528
  %8 = zext i8 %7 to i32, !dbg !528
  %9 = shl nuw nsw i32 %8, 24, !dbg !528
  %10 = and i32 %6, 16777215, !dbg !528
  %11 = or i32 %10, %9, !dbg !528
  %12 = and i8 %1, 3, !dbg !529
  %13 = zext i8 %12 to i32, !dbg !529
  %14 = shl nuw nsw i32 %13, 26, !dbg !529
  %15 = zext i8 %2 to i32, !dbg !530
  %16 = shl i32 %15, 28, !dbg !530
  %17 = or i32 %11, %14, !dbg !530
  %18 = or i32 %17, %16, !dbg !530
  store i32 %18, i32* %5, align 1, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: nounwind optsize
define hidden void @__set_user_background_goback(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !532 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !534, metadata !DIExpression()), !dbg !535
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !536, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 8, !dbg !537
  store i8 %0, i8* %3, align 4, !dbg !538, !tbaa !539
  ret void, !dbg !540
}

; Function Attrs: nounwind optsize
define hidden void @__set_a2dp_not_support_remote_connect(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !541 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !543, metadata !DIExpression()), !dbg !544
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !545, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 9, !dbg !546
  %4 = load i32, i32* %3, align 1, !dbg !547
  %5 = and i8 %0, 1, !dbg !547
  %6 = zext i8 %5 to i32, !dbg !547
  %7 = shl nuw nsw i32 %6, 23, !dbg !547
  %8 = and i32 %4, -8388609, !dbg !547
  %9 = or i32 %8, %7, !dbg !547
  store i32 %9, i32* %3, align 1, !dbg !547
  ret void, !dbg !548
}

; Function Attrs: nounwind optsize
define hidden void @__set_keep_spp_connect(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !549 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !551, metadata !DIExpression()), !dbg !552
  %2 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !553, !tbaa !137
  %3 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %2, i32 0, i32 15, !dbg !554
  %4 = load i8, i8* %3, align 1, !dbg !555
  %5 = and i8 %0, 1, !dbg !555
  %6 = and i8 %4, -2, !dbg !555
  %7 = or i8 %6, %5, !dbg !555
  store i8 %7, i8* %3, align 1, !dbg !555
  ret void, !dbg !556
}

; Function Attrs: nounwind optsize readnone
define hidden i32 @stack_send_infor_2_user(%struct.hci_cmd_t* nocapture readnone, ...) local_unnamed_addr #3 section ".bt_stack_code" !dbg !557 {
  call void @llvm.dbg.value(metadata %struct.hci_cmd_t* %0, metadata !575, metadata !DIExpression()), !dbg !576
  ret i32 0, !dbg !577
}

; Function Attrs: nounwind optsize
define hidden void @bt_event_update_to_user(i8* readonly, i32, i8 zeroext, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !578 {
  %5 = alloca %struct.sys_event, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !582, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i32 %1, metadata !583, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8 %2, metadata !584, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i32 %3, metadata !585, metadata !DIExpression()), !dbg !712
  %6 = bitcast %struct.sys_event* %5 to i8*, !dbg !713
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !713
  %7 = getelementptr inbounds %struct.sys_event, %struct.sys_event* %5, i32 0, i32 0, !dbg !714
  store i16 16, i16* %7, align 4, !dbg !715, !tbaa !716
  %8 = icmp eq i8* %0, null, !dbg !718
  %9 = getelementptr inbounds %struct.sys_event, %struct.sys_event* %5, i32 0, i32 3
  br i1 %8, label %13, label %10, !dbg !720

; <label>:10:                                     ; preds = %4
  %11 = bitcast %union.anon* %9 to %struct.bt_event*, !dbg !721
  %12 = getelementptr inbounds %struct.bt_event, %struct.bt_event* %11, i32 0, i32 1, i32 0, !dbg !723
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %0, i32 6, i32 1, i1 false), !dbg !723
  br label %13, !dbg !724

; <label>:13:                                     ; preds = %10, %4
  %14 = inttoptr i32 %1 to i8*, !dbg !725
  %15 = getelementptr inbounds %struct.sys_event, %struct.sys_event* %5, i32 0, i32 2, !dbg !726
  store i8* %14, i8** %15, align 4, !dbg !727, !tbaa !728
  %16 = bitcast %union.anon* %9 to i8*, !dbg !729
  store i8 %2, i8* %16, align 4, !dbg !730, !tbaa !731
  %17 = getelementptr inbounds %struct.sys_event, %struct.sys_event* %5, i32 0, i32 3, i32 0, i32 0, i32 4, !dbg !733
  %18 = bitcast i16* %17 to i32*, !dbg !733
  store i32 %3, i32* %18, align 4, !dbg !734, !tbaa !735
  call void @llvm.dbg.value(metadata %struct.sys_event* %5, metadata !586, metadata !DIExpression(DW_OP_deref)), !dbg !736
  call void @sys_event_notify(%struct.sys_event* nonnull %5) #8, !dbg !737
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !738
  ret void, !dbg !738
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: optsize
declare void @sys_event_notify(%struct.sys_event*) local_unnamed_addr #5

; Function Attrs: nounwind optsize
define hidden i32 @update_multi_bd_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !743, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8 %1, metadata !744, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i8 %2, metadata !745, metadata !DIExpression()), !dbg !748
  %4 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !749, !tbaa !137
  %5 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %4, i32 0, i32 9, !dbg !751
  %6 = load i32 (i8*, i8, i8)*, i32 (i8*, i8, i8)** %5, align 4, !dbg !751, !tbaa !752
  %7 = icmp eq i32 (i8*, i8, i8)* %6, null, !dbg !749
  br i1 %7, label %10, label %8, !dbg !753

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 %6(i8* %0, i8 zeroext %1, i8 zeroext %2) #8, !dbg !754
  br label %10, !dbg !756

; <label>:10:                                     ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  ret i32 %11, !dbg !757
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!127, !128}
!llvm.ident = !{!129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !126, line: 190, type: !24, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Host/BR_EDR/user_interface.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!7 = !{!0, !8, !77}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "user_interface", scope: !2, file: !3, line: 23, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_interface_handler", file: !12, line: 28, size: 480, elements: !13)
!12 = !DIFile(filename: "../btstack/Host/include/bredr/user_interface.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!13 = !{!14, !25, !29, !33, !37, !43, !47, !48, !52, !56, !61, !65, !69, !75, !76}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "profile_function_status", scope: !11, file: !12, line: 29, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !22, !24}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 11, baseType: !21)
!20 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 15, baseType: !23)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "read_remote_name_handle", scope: !11, file: !12, line: 30, baseType: !26, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !19, !18, !18}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "discon_complete_handle", scope: !11, file: !12, line: 31, baseType: !30, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !18, !24}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_get_battery_value", scope: !11, file: !12, line: 32, baseType: !34, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DISubroutineType(types: !36)
!36 = !{!24}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "spp_data_deal_handle", scope: !11, file: !12, line: 33, baseType: !38, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !19, !41, !18, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 13, baseType: !42)
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "profile_channels_status", scope: !11, file: !12, line: 34, baseType: !44, size: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !18, !24, !24, !19}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "get_music_current_vol_handle", scope: !11, file: !12, line: 35, baseType: !34, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "music_vol_change_handle", scope: !11, file: !12, line: 36, baseType: !49, size: 32, offset: 224)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !24}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "bt_music_info", scope: !11, file: !12, line: 41, baseType: !53, size: 32, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !19, !22, !18, !41}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "multi_bd_deal_handle", scope: !11, file: !12, line: 42, baseType: !57, size: 32, offset: 288)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !6, !19, !19}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !20, line: 16, baseType: !24)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "bt_fast_test", scope: !11, file: !12, line: 43, baseType: !62, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!63 = !DISubroutineType(types: !64)
!64 = !{null}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bt_dut_test", scope: !11, file: !12, line: 44, baseType: !66, size: 32, offset: 352)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !19}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_result", scope: !11, file: !12, line: 45, baseType: !70, size: 32, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!71 = !DISubroutineType(types: !72)
!72 = !{!19, !73, !19, !18, !22, !74}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "iap_data_deal_handle", scope: !11, file: !12, line: 46, baseType: !38, size: 32, offset: 416)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_get_battery_percent", scope: !11, file: !12, line: 47, baseType: !34, size: 32, offset: 448)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "user_stack_configs", scope: !2, file: !3, line: 24, type: !79, isLocal: false, isDefinition: true)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stack_config", file: !12, line: 57, size: 256, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !124, !125}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "hci_dev_class", scope: !80, file: !12, line: 58, baseType: !22, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "page_timeout", scope: !80, file: !12, line: 59, baseType: !41, size: 16, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "super_timeout", scope: !80, file: !12, line: 60, baseType: !41, size: 16, offset: 48)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sdp_handler", scope: !80, file: !12, line: 61, baseType: !41, size: 16, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "support_profile", scope: !80, file: !12, line: 62, baseType: !41, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "connecting_support_profile", scope: !80, file: !12, line: 63, baseType: !41, size: 16, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "update_battery_timeout", scope: !80, file: !12, line: 64, baseType: !19, size: 8, offset: 112)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sbc_cap_bitpoola", scope: !80, file: !12, line: 65, baseType: !19, size: 8, offset: 120)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "background_goback", scope: !80, file: !12, line: 66, baseType: !19, size: 8, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "auto_conn_device_num", scope: !80, file: !12, line: 67, baseType: !19, size: 4, offset: 136, flags: DIFlagBitField, extraData: i64 136)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctrl_conn_num", scope: !80, file: !12, line: 68, baseType: !19, size: 2, offset: 140, flags: DIFlagBitField, extraData: i64 136)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "hid_independent_flag", scope: !80, file: !12, line: 69, baseType: !94, size: 1, offset: 142, flags: DIFlagBitField, extraData: i64 136)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !20, line: 11, baseType: !21)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "support_aac", scope: !80, file: !12, line: 70, baseType: !94, size: 1, offset: 143, flags: DIFlagBitField, extraData: i64 136)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "support_aptx", scope: !80, file: !12, line: 71, baseType: !94, size: 1, offset: 144, flags: DIFlagBitField, extraData: i64 136)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "support_ldac", scope: !80, file: !12, line: 72, baseType: !94, size: 1, offset: 145, flags: DIFlagBitField, extraData: i64 136)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "support_lc3", scope: !80, file: !12, line: 73, baseType: !94, size: 1, offset: 146, flags: DIFlagBitField, extraData: i64 136)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "support_msbc", scope: !80, file: !12, line: 74, baseType: !94, size: 1, offset: 147, flags: DIFlagBitField, extraData: i64 136)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "simple_pair_en", scope: !80, file: !12, line: 75, baseType: !94, size: 1, offset: 148, flags: DIFlagBitField, extraData: i64 136)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "display_battery", scope: !80, file: !12, line: 76, baseType: !94, size: 1, offset: 149, flags: DIFlagBitField, extraData: i64 136)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "disable_sco", scope: !80, file: !12, line: 77, baseType: !94, size: 1, offset: 150, flags: DIFlagBitField, extraData: i64 136)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "esco_coder_busy_flag", scope: !80, file: !12, line: 78, baseType: !104, size: 1, offset: 151, flags: DIFlagBitField, extraData: i64 136)
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_switch", scope: !80, file: !12, line: 79, baseType: !19, size: 1, offset: 152, flags: DIFlagBitField, extraData: i64 136)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_restore", scope: !80, file: !12, line: 80, baseType: !19, size: 1, offset: 153, flags: DIFlagBitField, extraData: i64 136)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "own_remote_test_flag", scope: !80, file: !12, line: 81, baseType: !94, size: 1, offset: 154, flags: DIFlagBitField, extraData: i64 136)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "music_break_in_flag", scope: !80, file: !12, line: 82, baseType: !19, size: 1, offset: 155, flags: DIFlagBitField, extraData: i64 136)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "emitter_enable", scope: !80, file: !12, line: 83, baseType: !19, size: 1, offset: 156, flags: DIFlagBitField, extraData: i64 136)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_auto_play_en", scope: !80, file: !12, line: 84, baseType: !19, size: 1, offset: 157, flags: DIFlagBitField, extraData: i64 136)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "get_l2cap_info_once", scope: !80, file: !12, line: 85, baseType: !19, size: 1, offset: 158, flags: DIFlagBitField, extraData: i64 136)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_not_support_remote_connect", scope: !80, file: !12, line: 86, baseType: !19, size: 1, offset: 159, flags: DIFlagBitField, extraData: i64 136)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "io_capabilities", scope: !80, file: !12, line: 89, baseType: !19, size: 2, offset: 160, flags: DIFlagBitField, extraData: i64 136)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "oob_authentication_data", scope: !80, file: !12, line: 90, baseType: !19, size: 2, offset: 162, flags: DIFlagBitField, extraData: i64 136)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "authentication_requirements", scope: !80, file: !12, line: 98, baseType: !19, size: 4, offset: 164, flags: DIFlagBitField, extraData: i64 136)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "auto_pause_when_interrupt", scope: !80, file: !12, line: 102, baseType: !19, size: 8, offset: 168)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sound_come_cnt", scope: !80, file: !12, line: 103, baseType: !19, size: 8, offset: 176)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sound_go_cnt", scope: !80, file: !12, line: 104, baseType: !19, size: 8, offset: 184)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "phone_history_call_num", scope: !80, file: !12, line: 105, baseType: !19, size: 8, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "esco_addr", scope: !80, file: !12, line: 106, baseType: !121, size: 48, offset: 200)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 48, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 6)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "keep_spp_connect", scope: !80, file: !12, line: 107, baseType: !19, size: 1, offset: 248, flags: DIFlagBitField, extraData: i64 248)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "res_7bit", scope: !80, file: !12, line: 108, baseType: !19, size: 7, offset: 249, flags: DIFlagBitField, extraData: i64 248)
!126 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!127 = !{i32 2, !"Dwarf Version", i32 4}
!128 = !{i32 2, !"Debug Info Version", i32 3}
!129 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!130 = distinct !DISubprogram(name: "bt_music_info_handle_register", scope: !3, file: !3, line: 29, type: !131, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !53}
!133 = !{!134}
!134 = !DILocalVariable(name: "handler", arg: 1, scope: !130, file: !3, line: 29, type: !53)
!135 = !DILocation(line: 29, column: 43, scope: !130)
!136 = !DILocation(line: 31, column: 5, scope: !130)
!137 = !{!138, !138, i64 0}
!138 = !{!"any pointer", !139, i64 0}
!139 = !{!"omnipotent char", !140, i64 0}
!140 = !{!"Simple C/C++ TBAA"}
!141 = !DILocation(line: 31, column: 21, scope: !130)
!142 = !DILocation(line: 31, column: 35, scope: !130)
!143 = !{!144, !138, i64 32}
!144 = !{!"user_interface_handler", !138, i64 0, !138, i64 4, !138, i64 8, !138, i64 12, !138, i64 16, !138, i64 20, !138, i64 24, !138, i64 28, !138, i64 32, !138, i64 36, !138, i64 40, !138, i64 44, !138, i64 48, !138, i64 52, !138, i64 56}
!145 = !DILocation(line: 32, column: 1, scope: !130)
!146 = distinct !DISubprogram(name: "music_vol_change_handle_register", scope: !3, file: !3, line: 34, type: !147, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !49, !34}
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "handle", arg: 1, scope: !146, file: !3, line: 34, type: !49)
!151 = !DILocalVariable(name: "handle2", arg: 2, scope: !146, file: !3, line: 34, type: !34)
!152 = !DILocation(line: 34, column: 46, scope: !146)
!153 = !DILocation(line: 34, column: 70, scope: !146)
!154 = !DILocation(line: 36, column: 5, scope: !146)
!155 = !DILocation(line: 36, column: 21, scope: !146)
!156 = !DILocation(line: 36, column: 45, scope: !146)
!157 = !{!144, !138, i64 28}
!158 = !DILocation(line: 37, column: 21, scope: !146)
!159 = !DILocation(line: 37, column: 50, scope: !146)
!160 = !{!144, !138, i64 24}
!161 = !DILocation(line: 38, column: 1, scope: !146)
!162 = distinct !DISubprogram(name: "is_support_vol_sync", scope: !3, file: !3, line: 40, type: !163, isLocal: false, isDefinition: true, scopeLine: 41, isOptimized: true, unit: !2, variables: !4)
!163 = !DISubroutineType(types: !164)
!164 = !{!94}
!165 = !DILocation(line: 42, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 42, column: 9)
!167 = !DILocation(line: 42, column: 25, scope: !166)
!168 = !DILocation(line: 43, column: 9, scope: !166)
!169 = !DILocation(line: 43, column: 28, scope: !170)
!170 = !DILexicalBlockFile(scope: !166, file: !3, discriminator: 1)
!171 = !DILocation(line: 43, column: 12, scope: !170)
!172 = !DILocation(line: 42, column: 9, scope: !173)
!173 = !DILexicalBlockFile(scope: !162, file: !3, discriminator: 1)
!174 = !DILocation(line: 46, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !166, file: !3, line: 45, column: 12)
!176 = !DILocation(line: 48, column: 1, scope: !162)
!177 = distinct !DISubprogram(name: "profile_function_status_handle_register", scope: !3, file: !3, line: 50, type: !178, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !15}
!180 = !{!181}
!181 = !DILocalVariable(name: "handle", arg: 1, scope: !177, file: !3, line: 50, type: !15)
!182 = !DILocation(line: 50, column: 53, scope: !177)
!183 = !DILocation(line: 52, column: 5, scope: !177)
!184 = !DILocation(line: 52, column: 21, scope: !177)
!185 = !DILocation(line: 52, column: 45, scope: !177)
!186 = !{!144, !138, i64 0}
!187 = !DILocation(line: 53, column: 1, scope: !177)
!188 = distinct !DISubprogram(name: "read_remote_name_handle_register", scope: !3, file: !3, line: 57, type: !189, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !26}
!191 = !{!192}
!192 = !DILocalVariable(name: "handle", arg: 1, scope: !188, file: !3, line: 57, type: !26)
!193 = !DILocation(line: 57, column: 46, scope: !188)
!194 = !DILocation(line: 59, column: 5, scope: !188)
!195 = !DILocation(line: 59, column: 21, scope: !188)
!196 = !DILocation(line: 59, column: 45, scope: !188)
!197 = !{!144, !138, i64 4}
!198 = !DILocation(line: 60, column: 1, scope: !188)
!199 = distinct !DISubprogram(name: "get_battery_percent_register", scope: !3, file: !3, line: 65, type: !200, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !34}
!202 = !{!203}
!203 = !DILocalVariable(name: "handle", arg: 1, scope: !199, file: !3, line: 65, type: !34)
!204 = !DILocation(line: 65, column: 41, scope: !199)
!205 = !DILocation(line: 67, column: 5, scope: !199)
!206 = !DILocation(line: 67, column: 21, scope: !199)
!207 = !DILocation(line: 67, column: 45, scope: !199)
!208 = !{!144, !138, i64 56}
!209 = !DILocation(line: 68, column: 1, scope: !199)
!210 = distinct !DISubprogram(name: "get_battery_value_register", scope: !3, file: !3, line: 69, type: !200, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !211)
!211 = !{!212}
!212 = !DILocalVariable(name: "handle", arg: 1, scope: !210, file: !3, line: 69, type: !34)
!213 = !DILocation(line: 69, column: 39, scope: !210)
!214 = !DILocation(line: 71, column: 5, scope: !210)
!215 = !DILocation(line: 71, column: 21, scope: !210)
!216 = !DILocation(line: 71, column: 43, scope: !210)
!217 = !{!144, !138, i64 12}
!218 = !DILocation(line: 72, column: 1, scope: !210)
!219 = distinct !DISubprogram(name: "spp_data_deal_handle_register", scope: !3, file: !3, line: 75, type: !220, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !38}
!222 = !{!223}
!223 = !DILocalVariable(name: "handler", arg: 1, scope: !219, file: !3, line: 75, type: !38)
!224 = !DILocation(line: 75, column: 43, scope: !219)
!225 = !DILocation(line: 77, column: 5, scope: !219)
!226 = !DILocation(line: 77, column: 21, scope: !219)
!227 = !DILocation(line: 77, column: 42, scope: !219)
!228 = !{!144, !138, i64 16}
!229 = !DILocation(line: 78, column: 1, scope: !219)
!230 = distinct !DISubprogram(name: "profile_channels_status_handle_register", scope: !3, file: !3, line: 80, type: !231, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !44}
!233 = !{!234}
!234 = !DILocalVariable(name: "handle", arg: 1, scope: !230, file: !3, line: 80, type: !44)
!235 = !DILocation(line: 80, column: 53, scope: !230)
!236 = !DILocation(line: 82, column: 5, scope: !230)
!237 = !DILocation(line: 82, column: 21, scope: !230)
!238 = !DILocation(line: 82, column: 45, scope: !230)
!239 = !{!144, !138, i64 20}
!240 = !DILocation(line: 83, column: 1, scope: !230)
!241 = distinct !DISubprogram(name: "__set_auto_conn_device_num", scope: !3, file: !3, line: 99, type: !67, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !242)
!242 = !{!243}
!243 = !DILocalVariable(name: "num", arg: 1, scope: !241, file: !3, line: 99, type: !19)
!244 = !DILocation(line: 99, column: 36, scope: !241)
!245 = !DILocation(line: 104, column: 9, scope: !241)
!246 = !DILocation(line: 107, column: 5, scope: !241)
!247 = !DILocation(line: 107, column: 25, scope: !241)
!248 = !DILocation(line: 107, column: 46, scope: !241)
!249 = !DILocation(line: 108, column: 1, scope: !241)
!250 = distinct !DISubprogram(name: "__bt_set_hid_independent_flag", scope: !3, file: !3, line: 111, type: !251, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !94}
!253 = !{!254}
!254 = !DILocalVariable(name: "flag", arg: 1, scope: !250, file: !3, line: 111, type: !94)
!255 = !DILocation(line: 111, column: 41, scope: !250)
!256 = !DILocation(line: 113, column: 5, scope: !250)
!257 = !DILocation(line: 113, column: 25, scope: !250)
!258 = !DILocation(line: 113, column: 46, scope: !250)
!259 = !DILocation(line: 114, column: 1, scope: !250)
!260 = distinct !DISubprogram(name: "__get_hid_independent_flag", scope: !3, file: !3, line: 115, type: !261, isLocal: false, isDefinition: true, scopeLine: 116, isOptimized: true, unit: !2, variables: !4)
!261 = !DISubroutineType(types: !262)
!262 = !{!19}
!263 = !DILocation(line: 117, column: 12, scope: !260)
!264 = !DILocation(line: 117, column: 32, scope: !260)
!265 = !DILocation(line: 117, column: 5, scope: !260)
!266 = distinct !DISubprogram(name: "__set_support_msbc_flag", scope: !3, file: !3, line: 120, type: !251, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !267)
!267 = !{!268}
!268 = !DILocalVariable(name: "flag", arg: 1, scope: !266, file: !3, line: 120, type: !94)
!269 = !DILocation(line: 120, column: 35, scope: !266)
!270 = !DILocation(line: 122, column: 5, scope: !266)
!271 = !DILocation(line: 122, column: 25, scope: !266)
!272 = !DILocation(line: 122, column: 38, scope: !266)
!273 = !DILocation(line: 123, column: 1, scope: !266)
!274 = distinct !DISubprogram(name: "__set_support_aac_flag", scope: !3, file: !3, line: 124, type: !251, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !275)
!275 = !{!276}
!276 = !DILocalVariable(name: "flag", arg: 1, scope: !274, file: !3, line: 124, type: !94)
!277 = !DILocation(line: 124, column: 34, scope: !274)
!278 = !DILocation(line: 126, column: 5, scope: !274)
!279 = !DILocation(line: 126, column: 25, scope: !274)
!280 = !DILocation(line: 126, column: 37, scope: !274)
!281 = !DILocation(line: 127, column: 1, scope: !274)
!282 = distinct !DISubprogram(name: "__set_support_aptx_flag", scope: !3, file: !3, line: 128, type: !251, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !283)
!283 = !{!284}
!284 = !DILocalVariable(name: "flag", arg: 1, scope: !282, file: !3, line: 128, type: !94)
!285 = !DILocation(line: 128, column: 35, scope: !282)
!286 = !DILocation(line: 130, column: 5, scope: !282)
!287 = !DILocation(line: 130, column: 25, scope: !282)
!288 = !DILocation(line: 130, column: 38, scope: !282)
!289 = !DILocation(line: 131, column: 1, scope: !282)
!290 = distinct !DISubprogram(name: "__set_support_ldac_flag", scope: !3, file: !3, line: 132, type: !251, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !291)
!291 = !{!292}
!292 = !DILocalVariable(name: "flag", arg: 1, scope: !290, file: !3, line: 132, type: !94)
!293 = !DILocation(line: 132, column: 35, scope: !290)
!294 = !DILocation(line: 134, column: 5, scope: !290)
!295 = !DILocation(line: 134, column: 25, scope: !290)
!296 = !DILocation(line: 134, column: 38, scope: !290)
!297 = !DILocation(line: 135, column: 1, scope: !290)
!298 = distinct !DISubprogram(name: "__set_support_non_a2dp_flag", scope: !3, file: !3, line: 136, type: !251, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !299)
!299 = !{!300}
!300 = !DILocalVariable(name: "flag", arg: 1, scope: !298, file: !3, line: 136, type: !94)
!301 = !DILocation(line: 136, column: 39, scope: !298)
!302 = !DILocation(line: 138, column: 5, scope: !298)
!303 = !DILocation(line: 138, column: 25, scope: !298)
!304 = !DILocation(line: 138, column: 37, scope: !298)
!305 = !DILocation(line: 139, column: 1, scope: !298)
!306 = distinct !DISubprogram(name: "__set_simple_pair_flag", scope: !3, file: !3, line: 140, type: !251, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !307)
!307 = !{!308}
!308 = !DILocalVariable(name: "flag", arg: 1, scope: !306, file: !3, line: 140, type: !94)
!309 = !DILocation(line: 140, column: 34, scope: !306)
!310 = !DILocation(line: 142, column: 5, scope: !306)
!311 = !DILocation(line: 142, column: 25, scope: !306)
!312 = !DILocation(line: 142, column: 40, scope: !306)
!313 = !DILocation(line: 143, column: 1, scope: !306)
!314 = distinct !DISubprogram(name: "__change_hci_class_type", scope: !3, file: !3, line: 144, type: !315, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !22}
!317 = !{!318}
!318 = !DILocalVariable(name: "class", arg: 1, scope: !314, file: !3, line: 144, type: !22)
!319 = !DILocation(line: 144, column: 34, scope: !314)
!320 = !DILocation(line: 146, column: 5, scope: !314)
!321 = !DILocation(line: 146, column: 25, scope: !314)
!322 = !DILocation(line: 146, column: 39, scope: !314)
!323 = !{!324, !325, i64 0}
!324 = !{!"_stack_config", !325, i64 0, !326, i64 4, !326, i64 6, !326, i64 8, !326, i64 10, !326, i64 12, !139, i64 14, !139, i64 15, !139, i64 16, !139, i64 17, !139, i64 17, !139, i64 17, !139, i64 17, !139, i64 18, !139, i64 18, !139, i64 18, !139, i64 18, !139, i64 18, !139, i64 18, !139, i64 18, !139, i64 18, !139, i64 19, !139, i64 19, !139, i64 19, !139, i64 19, !139, i64 19, !139, i64 19, !139, i64 19, !139, i64 19, !139, i64 20, !139, i64 20, !139, i64 20, !139, i64 21, !139, i64 22, !139, i64 23, !139, i64 24, !139, i64 25, !139, i64 31, !139, i64 31}
!325 = !{!"int", !139, i64 0}
!326 = !{!"short", !139, i64 0}
!327 = !DILocation(line: 147, column: 1, scope: !314)
!328 = distinct !DISubprogram(name: "__set_super_timeout_value", scope: !3, file: !3, line: 149, type: !329, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !41}
!331 = !{!332}
!332 = !DILocalVariable(name: "time", arg: 1, scope: !328, file: !3, line: 149, type: !41)
!333 = !DILocation(line: 149, column: 36, scope: !328)
!334 = !DILocation(line: 151, column: 5, scope: !328)
!335 = !DILocation(line: 151, column: 25, scope: !328)
!336 = !DILocation(line: 151, column: 39, scope: !328)
!337 = !{!324, !326, i64 6}
!338 = !DILocation(line: 152, column: 1, scope: !328)
!339 = distinct !DISubprogram(name: "__set_page_timeout_value", scope: !3, file: !3, line: 154, type: !329, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !340)
!340 = !{!341}
!341 = !DILocalVariable(name: "time", arg: 1, scope: !339, file: !3, line: 154, type: !41)
!342 = !DILocation(line: 154, column: 35, scope: !339)
!343 = !DILocation(line: 156, column: 5, scope: !339)
!344 = !DILocation(line: 156, column: 25, scope: !339)
!345 = !DILocation(line: 156, column: 38, scope: !339)
!346 = !{!324, !326, i64 4}
!347 = !DILocation(line: 157, column: 1, scope: !339)
!348 = distinct !DISubprogram(name: "__set_sbc_cap_bitpool", scope: !3, file: !3, line: 158, type: !67, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !349)
!349 = !{!350}
!350 = !DILocalVariable(name: "sbc_cap_bitpoola", arg: 1, scope: !348, file: !3, line: 158, type: !19)
!351 = !DILocation(line: 158, column: 31, scope: !348)
!352 = !DILocation(line: 160, column: 5, scope: !348)
!353 = !DILocation(line: 160, column: 25, scope: !348)
!354 = !DILocation(line: 160, column: 42, scope: !348)
!355 = !{!324, !139, i64 15}
!356 = !DILocation(line: 161, column: 1, scope: !348)
!357 = distinct !DISubprogram(name: "__set_a2dp_auto_play_flag", scope: !3, file: !3, line: 163, type: !67, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !358)
!358 = !{!359}
!359 = !DILocalVariable(name: "auto_en", arg: 1, scope: !357, file: !3, line: 163, type: !19)
!360 = !DILocation(line: 163, column: 35, scope: !357)
!361 = !DILocation(line: 165, column: 5, scope: !357)
!362 = !DILocation(line: 165, column: 25, scope: !357)
!363 = !DILocation(line: 165, column: 43, scope: !357)
!364 = !DILocation(line: 166, column: 1, scope: !357)
!365 = distinct !DISubprogram(name: "__set_hfp_switch", scope: !3, file: !3, line: 170, type: !67, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !366)
!366 = !{!367}
!367 = !DILocalVariable(name: "switch_en", arg: 1, scope: !365, file: !3, line: 170, type: !19)
!368 = !DILocation(line: 170, column: 26, scope: !365)
!369 = !DILocation(line: 172, column: 5, scope: !365)
!370 = !DILocation(line: 172, column: 25, scope: !365)
!371 = !DILocation(line: 172, column: 36, scope: !365)
!372 = !DILocation(line: 173, column: 1, scope: !365)
!373 = distinct !DISubprogram(name: "__set_hfp_restore", scope: !3, file: !3, line: 178, type: !67, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !374)
!374 = !{!375}
!375 = !DILocalVariable(name: "restore_en", arg: 1, scope: !373, file: !3, line: 178, type: !19)
!376 = !DILocation(line: 178, column: 27, scope: !373)
!377 = !DILocation(line: 180, column: 5, scope: !373)
!378 = !DILocation(line: 180, column: 25, scope: !373)
!379 = !DILocation(line: 180, column: 37, scope: !373)
!380 = !DILocation(line: 181, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "__set_auto_pause_flag", scope: !3, file: !3, line: 185, type: !67, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !382)
!382 = !{!383}
!383 = !DILocalVariable(name: "flag", arg: 1, scope: !381, file: !3, line: 185, type: !19)
!384 = !DILocation(line: 185, column: 31, scope: !381)
!385 = !DILocation(line: 187, column: 5, scope: !381)
!386 = !DILocation(line: 187, column: 25, scope: !381)
!387 = !DILocation(line: 187, column: 51, scope: !381)
!388 = !{!324, !139, i64 21}
!389 = !DILocation(line: 188, column: 1, scope: !381)
!390 = distinct !DISubprogram(name: "__set_music_break_in_flag", scope: !3, file: !3, line: 192, type: !67, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !391)
!391 = !{!392}
!392 = !DILocalVariable(name: "flag", arg: 1, scope: !390, file: !3, line: 192, type: !19)
!393 = !DILocation(line: 192, column: 35, scope: !390)
!394 = !DILocation(line: 194, column: 5, scope: !390)
!395 = !DILocation(line: 194, column: 25, scope: !390)
!396 = !DILocation(line: 194, column: 45, scope: !390)
!397 = !DILocation(line: 195, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "__set_a2dp_sound_detect_counter", scope: !3, file: !3, line: 199, type: !399, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !19, !19}
!401 = !{!402, !403}
!402 = !DILocalVariable(name: "sound_come", arg: 1, scope: !398, file: !3, line: 199, type: !19)
!403 = !DILocalVariable(name: "sound_go", arg: 2, scope: !398, file: !3, line: 199, type: !19)
!404 = !DILocation(line: 199, column: 41, scope: !398)
!405 = !DILocation(line: 199, column: 56, scope: !398)
!406 = !DILocation(line: 201, column: 5, scope: !398)
!407 = !DILocation(line: 201, column: 25, scope: !398)
!408 = !DILocation(line: 201, column: 40, scope: !398)
!409 = !{!324, !139, i64 22}
!410 = !DILocation(line: 202, column: 25, scope: !398)
!411 = !DILocation(line: 202, column: 38, scope: !398)
!412 = !{!324, !139, i64 23}
!413 = !DILocation(line: 203, column: 1, scope: !398)
!414 = distinct !DISubprogram(name: "__set_emitter_enable_flag", scope: !3, file: !3, line: 207, type: !67, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !415)
!415 = !{!416}
!416 = !DILocalVariable(name: "flag", arg: 1, scope: !414, file: !3, line: 207, type: !19)
!417 = !DILocation(line: 207, column: 35, scope: !414)
!418 = !DILocation(line: 209, column: 5, scope: !414)
!419 = !DILocation(line: 209, column: 25, scope: !414)
!420 = !DILocation(line: 209, column: 40, scope: !414)
!421 = !DILocation(line: 210, column: 1, scope: !414)
!422 = distinct !DISubprogram(name: "get_remote_test_flag", scope: !3, file: !3, line: 211, type: !163, isLocal: false, isDefinition: true, scopeLine: 212, isOptimized: true, unit: !2, variables: !4)
!423 = !DILocation(line: 213, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !422, file: !3, line: 213, column: 9)
!425 = !DILocation(line: 213, column: 29, scope: !424)
!426 = !DILocation(line: 216, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !3, line: 215, column: 12)
!428 = !DILocation(line: 218, column: 1, scope: !422)
!429 = distinct !DISubprogram(name: "set_remote_test_flag", scope: !3, file: !3, line: 219, type: !67, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !430)
!430 = !{!431}
!431 = !DILocalVariable(name: "own_remote_test", arg: 1, scope: !429, file: !3, line: 219, type: !19)
!432 = !DILocation(line: 219, column: 30, scope: !429)
!433 = !DILocation(line: 222, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !3, line: 222, column: 9)
!435 = !DILocation(line: 222, column: 9, scope: !429)
!436 = !DILocation(line: 223, column: 50, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 222, column: 31)
!438 = !DILocation(line: 224, column: 5, scope: !437)
!439 = !DILocation(line: 225, column: 50, scope: !440)
!440 = distinct !DILexicalBlock(scope: !434, file: !3, line: 224, column: 12)
!441 = !DILocation(line: 227, column: 1, scope: !429)
!442 = distinct !DISubprogram(name: "bt_fast_test_handle_register", scope: !3, file: !3, line: 228, type: !443, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !62}
!445 = !{!446}
!446 = !DILocalVariable(name: "handle", arg: 1, scope: !442, file: !3, line: 228, type: !62)
!447 = !DILocation(line: 228, column: 42, scope: !442)
!448 = !DILocation(line: 230, column: 5, scope: !442)
!449 = !DILocation(line: 230, column: 21, scope: !442)
!450 = !DILocation(line: 230, column: 34, scope: !442)
!451 = !{!144, !138, i64 40}
!452 = !DILocation(line: 231, column: 1, scope: !442)
!453 = distinct !DISubprogram(name: "bt_dut_test_handle_register", scope: !3, file: !3, line: 232, type: !454, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !66}
!456 = !{!457}
!457 = !DILocalVariable(name: "handle", arg: 1, scope: !453, file: !3, line: 232, type: !66)
!458 = !DILocation(line: 232, column: 41, scope: !453)
!459 = !DILocation(line: 234, column: 5, scope: !453)
!460 = !DILocation(line: 234, column: 21, scope: !453)
!461 = !DILocation(line: 234, column: 33, scope: !453)
!462 = !{!144, !138, i64 44}
!463 = !DILocation(line: 235, column: 1, scope: !453)
!464 = distinct !DISubprogram(name: "inquiry_result_handle_register", scope: !3, file: !3, line: 237, type: !465, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !470)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !73, !19, !18, !22, !74}
!470 = !{!471}
!471 = !DILocalVariable(name: "handle", arg: 1, scope: !464, file: !3, line: 237, type: !467)
!472 = !DILocation(line: 237, column: 44, scope: !464)
!473 = !DILocation(line: 239, column: 5, scope: !464)
!474 = !DILocation(line: 239, column: 21, scope: !464)
!475 = !DILocation(line: 239, column: 36, scope: !464)
!476 = !{!144, !138, i64 48}
!477 = !DILocation(line: 240, column: 1, scope: !464)
!478 = distinct !DISubprogram(name: "__set_user_ctrl_conn_num", scope: !3, file: !3, line: 243, type: !67, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !479)
!479 = !{!480}
!480 = !DILocalVariable(name: "num", arg: 1, scope: !478, file: !3, line: 243, type: !19)
!481 = !DILocation(line: 243, column: 34, scope: !478)
!482 = !DILocation(line: 245, column: 5, scope: !478)
!483 = !DILocation(line: 245, column: 25, scope: !478)
!484 = !DILocation(line: 245, column: 44, scope: !478)
!485 = !DILocation(line: 246, column: 1, scope: !478)
!486 = distinct !DISubprogram(name: "__bt_set_update_battery_time", scope: !3, file: !3, line: 248, type: !67, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !487)
!487 = !{!488}
!488 = !DILocalVariable(name: "time", arg: 1, scope: !486, file: !3, line: 248, type: !19)
!489 = !DILocation(line: 248, column: 38, scope: !486)
!490 = !DILocation(line: 250, column: 5, scope: !486)
!491 = !DILocation(line: 250, column: 25, scope: !486)
!492 = !DILocation(line: 250, column: 48, scope: !486)
!493 = !{!324, !139, i64 14}
!494 = !DILocation(line: 251, column: 14, scope: !495)
!495 = distinct !DILexicalBlock(scope: !486, file: !3, line: 251, column: 9)
!496 = !DILocation(line: 254, column: 45, scope: !497)
!497 = distinct !DILexicalBlock(scope: !495, file: !3, line: 253, column: 12)
!498 = !DILocation(line: 251, column: 9, scope: !486)
!499 = !DILocation(line: 256, column: 1, scope: !486)
!500 = distinct !DISubprogram(name: "__set_disable_sco_flag", scope: !3, file: !3, line: 258, type: !251, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !501)
!501 = !{!502}
!502 = !DILocalVariable(name: "flag", arg: 1, scope: !500, file: !3, line: 258, type: !94)
!503 = !DILocation(line: 258, column: 34, scope: !500)
!504 = !DILocation(line: 260, column: 5, scope: !500)
!505 = !DILocation(line: 260, column: 25, scope: !500)
!506 = !DILocation(line: 260, column: 37, scope: !500)
!507 = !DILocation(line: 261, column: 1, scope: !500)
!508 = distinct !DISubprogram(name: "get_esco_busy_flag", scope: !3, file: !3, line: 262, type: !163, isLocal: false, isDefinition: true, scopeLine: 263, isOptimized: true, unit: !2, variables: !4)
!509 = !DILocation(line: 264, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !508, file: !3, line: 264, column: 9)
!511 = !DILocation(line: 264, column: 29, scope: !510)
!512 = !DILocation(line: 264, column: 50, scope: !510)
!513 = !DILocation(line: 265, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !3, line: 264, column: 56)
!515 = !DILocation(line: 268, column: 1, scope: !508)
!516 = distinct !DISubprogram(name: "__set_simple_pair_param", scope: !3, file: !3, line: 270, type: !517, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !19, !19, !19}
!519 = !{!520, !521, !522}
!520 = !DILocalVariable(name: "io_cap", arg: 1, scope: !516, file: !3, line: 270, type: !19)
!521 = !DILocalVariable(name: "oob_data", arg: 2, scope: !516, file: !3, line: 270, type: !19)
!522 = !DILocalVariable(name: "mitm", arg: 3, scope: !516, file: !3, line: 270, type: !19)
!523 = !DILocation(line: 270, column: 33, scope: !516)
!524 = !DILocation(line: 270, column: 44, scope: !516)
!525 = !DILocation(line: 270, column: 57, scope: !516)
!526 = !DILocation(line: 272, column: 5, scope: !516)
!527 = !DILocation(line: 272, column: 25, scope: !516)
!528 = !DILocation(line: 272, column: 41, scope: !516)
!529 = !DILocation(line: 273, column: 49, scope: !516)
!530 = !DILocation(line: 274, column: 53, scope: !516)
!531 = !DILocation(line: 275, column: 1, scope: !516)
!532 = distinct !DISubprogram(name: "__set_user_background_goback", scope: !3, file: !3, line: 277, type: !67, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !533)
!533 = !{!534}
!534 = !DILocalVariable(name: "en", arg: 1, scope: !532, file: !3, line: 277, type: !19)
!535 = !DILocation(line: 277, column: 38, scope: !532)
!536 = !DILocation(line: 279, column: 5, scope: !532)
!537 = !DILocation(line: 279, column: 25, scope: !532)
!538 = !DILocation(line: 279, column: 43, scope: !532)
!539 = !{!324, !139, i64 16}
!540 = !DILocation(line: 280, column: 1, scope: !532)
!541 = distinct !DISubprogram(name: "__set_a2dp_not_support_remote_connect", scope: !3, file: !3, line: 282, type: !251, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !542)
!542 = !{!543}
!543 = !DILocalVariable(name: "flag", arg: 1, scope: !541, file: !3, line: 282, type: !94)
!544 = !DILocation(line: 282, column: 49, scope: !541)
!545 = !DILocation(line: 284, column: 5, scope: !541)
!546 = !DILocation(line: 284, column: 25, scope: !541)
!547 = !DILocation(line: 284, column: 57, scope: !541)
!548 = !DILocation(line: 285, column: 1, scope: !541)
!549 = distinct !DISubprogram(name: "__set_keep_spp_connect", scope: !3, file: !3, line: 287, type: !67, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !550)
!550 = !{!551}
!551 = !DILocalVariable(name: "en", arg: 1, scope: !549, file: !3, line: 287, type: !19)
!552 = !DILocation(line: 287, column: 32, scope: !549)
!553 = !DILocation(line: 289, column: 5, scope: !549)
!554 = !DILocation(line: 289, column: 25, scope: !549)
!555 = !DILocation(line: 289, column: 42, scope: !549)
!556 = !DILocation(line: 290, column: 1, scope: !549)
!557 = distinct !DISubprogram(name: "stack_send_infor_2_user", scope: !3, file: !3, line: 296, type: !558, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !574)
!558 = !DISubroutineType(types: !559)
!559 = !{!24, !560, null}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_cmd_t", file: !563, line: 508, baseType: !564)
!563 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/bluetooth.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 505, size: 64, elements: !565)
!565 = !{!566, !571}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !564, file: !563, line: 506, baseType: !567, size: 16)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !568, line: 26, baseType: !569)
!568 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !570, line: 43, baseType: !42)
!570 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !564, file: !563, line: 507, baseType: !572, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!574 = !{!575}
!575 = !DILocalVariable(name: "cmd", arg: 1, scope: !557, file: !3, line: 296, type: !560)
!576 = !DILocation(line: 296, column: 46, scope: !557)
!577 = !DILocation(line: 309, column: 5, scope: !557)
!578 = distinct !DISubprogram(name: "bt_event_update_to_user", scope: !3, file: !3, line: 312, type: !579, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !18, !22, !19, !22}
!581 = !{!582, !583, !584, !585, !586}
!582 = !DILocalVariable(name: "addr", arg: 1, scope: !578, file: !3, line: 312, type: !18)
!583 = !DILocalVariable(name: "type", arg: 2, scope: !578, file: !3, line: 312, type: !22)
!584 = !DILocalVariable(name: "event", arg: 3, scope: !578, file: !3, line: 312, type: !19)
!585 = !DILocalVariable(name: "value", arg: 4, scope: !578, file: !3, line: 312, type: !22)
!586 = !DILocalVariable(name: "e", scope: !578, file: !3, line: 315, type: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_event", file: !588, line: 249, size: 192, elements: !589)
!588 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!589 = !{!590, !591, !592, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !588, line: 250, baseType: !41, size: 16)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !587, file: !588, line: 251, baseType: !19, size: 8, offset: 16)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !587, file: !588, line: 252, baseType: !6, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !587, file: !588, line: 277, baseType: !594, size: 128, offset: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !588, line: 253, size: 128, elements: !595)
!595 = !{!596, !604, !612, !618, !623, !628, !637, !642, !648, !652, !660, !664, !669, !673, !677, !683, !687, !692, !698, !704}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !594, file: !588, line: 254, baseType: !597, size: 96)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_event", file: !588, line: 141, size: 96, elements: !598)
!598 = !{!599, !600, !601, !602, !603}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !597, file: !588, line: 142, baseType: !19, size: 8)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !588, line: 143, baseType: !19, size: 8, offset: 8)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !597, file: !588, line: 144, baseType: !41, size: 16, offset: 16)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !588, line: 145, baseType: !22, size: 32, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !597, file: !588, line: 146, baseType: !22, size: 32, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !594, file: !588, line: 255, baseType: !605, size: 48)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "axis_event", file: !588, line: 190, size: 48, elements: !606)
!606 = !{!607, !608, !611}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !605, file: !588, line: 191, baseType: !19, size: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !605, file: !588, line: 192, baseType: !609, size: 16, offset: 16)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !20, line: 14, baseType: !610)
!610 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !605, file: !588, line: 193, baseType: !609, size: 16, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "codesw", scope: !594, file: !588, line: 256, baseType: !613, size: 16)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "codesw_event", file: !588, line: 196, size: 16, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !613, file: !588, line: 197, baseType: !19, size: 8)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !588, line: 198, baseType: !617, size: 8, offset: 8)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !20, line: 12, baseType: !74)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !594, file: !588, line: 260, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_event", file: !588, line: 165, size: 64, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !619, file: !588, line: 166, baseType: !19, size: 8)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !588, line: 167, baseType: !24, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !594, file: !588, line: 261, baseType: !624, size: 16)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net_event", file: !588, line: 180, size: 16, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !624, file: !588, line: 181, baseType: !19, size: 8)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !624, file: !588, line: 182, baseType: !19, size: 8, offset: 8)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !594, file: !588, line: 262, baseType: !629, size: 96)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_event", file: !588, line: 184, size: 96, elements: !630)
!630 = !{!631, !632, !636}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !629, file: !588, line: 185, baseType: !19, size: 8)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !629, file: !588, line: 186, baseType: !633, size: 56, offset: 8)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 56, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 7)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !588, line: 187, baseType: !22, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !594, file: !588, line: 263, baseType: !638, size: 16)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msg_event", file: !588, line: 153, size: 16, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !638, file: !588, line: 154, baseType: !19, size: 8)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !588, line: 155, baseType: !19, size: 8, offset: 8)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "chargestore", scope: !594, file: !588, line: 264, baseType: !643, size: 96)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chargestore_event", file: !588, line: 169, size: 96, elements: !644)
!644 = !{!645, !646, !647}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !643, file: !588, line: 170, baseType: !19, size: 8)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !643, file: !588, line: 171, baseType: !18, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !643, file: !588, line: 172, baseType: !19, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ir", scope: !594, file: !588, line: 265, baseType: !649, size: 8)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_event", file: !588, line: 149, size: 8, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !649, file: !588, line: 150, baseType: !19, size: 8)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pbg", scope: !594, file: !588, line: 266, baseType: !653, size: 32)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbg_event", file: !588, line: 201, size: 32, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !653, file: !588, line: 202, baseType: !19, size: 8)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !653, file: !588, line: 203, baseType: !657, size: 24, offset: 8)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 3)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "uart", scope: !594, file: !588, line: 267, baseType: !661, size: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_event", file: !588, line: 211, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ut_bus", scope: !661, file: !588, line: 212, baseType: !6, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "uart_cmd", scope: !594, file: !588, line: 268, baseType: !665, size: 16)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_cmd_event", file: !588, line: 215, size: 16, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !665, file: !588, line: 216, baseType: !19, size: 8)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !665, file: !588, line: 217, baseType: !19, size: 8, offset: 8)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ai", scope: !594, file: !588, line: 269, baseType: !670, size: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ai_event", file: !588, line: 220, size: 32, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !670, file: !588, line: 221, baseType: !22, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ear", scope: !594, file: !588, line: 270, baseType: !674, size: 8)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ear_event", file: !588, line: 224, size: 8, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !588, line: 225, baseType: !19, size: 8)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rcsp", scope: !594, file: !588, line: 271, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcsp_event", file: !588, line: 228, size: 64, elements: !679)
!679 = !{!680, !681, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !678, file: !588, line: 229, baseType: !19, size: 8)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !678, file: !588, line: 230, baseType: !121, size: 48, offset: 8)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !678, file: !588, line: 231, baseType: !19, size: 8, offset: 56)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "chargebox", scope: !594, file: !588, line: 272, baseType: !684, size: 8)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chargebox_event", file: !588, line: 234, size: 8, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !684, file: !588, line: 235, baseType: !19, size: 8)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ancbox", scope: !594, file: !588, line: 273, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ancbox_event", file: !588, line: 175, size: 64, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !688, file: !588, line: 176, baseType: !19, size: 8)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !688, file: !588, line: 177, baseType: !22, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_key", scope: !594, file: !588, line: 274, baseType: !693, size: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "matrix_key_event", file: !588, line: 238, size: 128, elements: !694)
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !693, file: !588, line: 239, baseType: !696, size: 96)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 96, elements: !122)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !693, file: !588, line: 240, baseType: !18, size: 32, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "touchpad", scope: !594, file: !588, line: 275, baseType: !699, size: 24)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "touchpad_event", file: !588, line: 243, size: 24, elements: !700)
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gesture_event", scope: !699, file: !588, line: 244, baseType: !19, size: 8)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !699, file: !588, line: 245, baseType: !617, size: 8, offset: 8)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !699, file: !588, line: 246, baseType: !617, size: 8, offset: 16)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "adt", scope: !594, file: !588, line: 276, baseType: !705, size: 32)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "adt_event", file: !588, line: 206, size: 32, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !705, file: !588, line: 207, baseType: !19, size: 8)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !705, file: !588, line: 208, baseType: !657, size: 24, offset: 8)
!709 = !DILocation(line: 312, column: 34, scope: !578)
!710 = !DILocation(line: 312, column: 44, scope: !578)
!711 = !DILocation(line: 312, column: 53, scope: !578)
!712 = !DILocation(line: 312, column: 64, scope: !578)
!713 = !DILocation(line: 315, column: 5, scope: !578)
!714 = !DILocation(line: 316, column: 7, scope: !578)
!715 = !DILocation(line: 316, column: 12, scope: !578)
!716 = !{!717, !326, i64 0}
!717 = !{!"sys_event", !326, i64 0, !139, i64 2, !138, i64 4, !139, i64 8}
!718 = !DILocation(line: 317, column: 14, scope: !719)
!719 = distinct !DILexicalBlock(scope: !578, file: !3, line: 317, column: 9)
!720 = !DILocation(line: 317, column: 9, scope: !578)
!721 = !DILocation(line: 318, column: 20, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 317, column: 23)
!723 = !DILocation(line: 318, column: 9, scope: !722)
!724 = !DILocation(line: 319, column: 5, scope: !722)
!725 = !DILocation(line: 320, column: 14, scope: !578)
!726 = !DILocation(line: 320, column: 7, scope: !578)
!727 = !DILocation(line: 320, column: 12, scope: !578)
!728 = !{!717, !138, i64 4}
!729 = !DILocation(line: 321, column: 12, scope: !578)
!730 = !DILocation(line: 321, column: 18, scope: !578)
!731 = !{!732, !139, i64 0}
!732 = !{!"bt_event", !139, i64 0, !139, i64 1, !325, i64 8}
!733 = !DILocation(line: 322, column: 12, scope: !578)
!734 = !DILocation(line: 322, column: 18, scope: !578)
!735 = !{!732, !325, i64 8}
!736 = !DILocation(line: 315, column: 22, scope: !578)
!737 = !DILocation(line: 323, column: 5, scope: !578)
!738 = !DILocation(line: 325, column: 1, scope: !578)
!739 = distinct !DISubprogram(name: "update_multi_bd_status", scope: !3, file: !3, line: 331, type: !740, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{!22, !6, !19, !19}
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(name: "priv", arg: 1, scope: !739, file: !3, line: 331, type: !6)
!744 = !DILocalVariable(name: "status", arg: 2, scope: !739, file: !3, line: 331, type: !19)
!745 = !DILocalVariable(name: "link_type", arg: 3, scope: !739, file: !3, line: 331, type: !19)
!746 = !DILocation(line: 331, column: 34, scope: !739)
!747 = !DILocation(line: 331, column: 43, scope: !739)
!748 = !DILocation(line: 331, column: 54, scope: !739)
!749 = !DILocation(line: 333, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !739, file: !3, line: 333, column: 9)
!751 = !DILocation(line: 333, column: 25, scope: !750)
!752 = !{!144, !138, i64 36}
!753 = !DILocation(line: 333, column: 9, scope: !739)
!754 = !DILocation(line: 334, column: 16, scope: !755)
!755 = distinct !DILexicalBlock(scope: !750, file: !3, line: 333, column: 47)
!756 = !DILocation(line: 334, column: 9, scope: !755)
!757 = !DILocation(line: 337, column: 1, scope: !739)
