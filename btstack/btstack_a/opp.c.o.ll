; ModuleID = 'opp.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.opp_channel_info = type { i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, [16 x i16], [6 x i8], i8* }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.profile_cmd_handle = type { i32 (i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i8*)*, i32 (i8*)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@opp_info = internal unnamed_addr global %struct.opp_channel_info* null, align 4, !dbg !174
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@pbap_connect.type_head = internal constant [2 x i8] c"F\00", align 1, !dbg !155
@.str.2 = private unnamed_addr constant [15 x i8] c"telecom/pb.vcf\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SIM1/telecom/pb.vcf\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"telecom/ich.vcf\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"telecom/mch.vcf\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"telecom/och.vcf\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"x-bt/phonebook\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"x-bt/vcard-listing\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"x-bt/vcard\00", align 1
@fill_app_parameters.parameters = private unnamed_addr constant [25 x i8] c"\06\08\00\00\00\00\00\00\00\87\07\01\00\04\02\03\E7\05\02\00\00\00\00\00\00", align 1
@fill_listing_app_param.parameters = private unnamed_addr constant [20 x i8] c"\01\01\00\02\00\03\01\01\04\02\FF\FE\05\02\00\00\00\00\00\00", align 1
@fill_singal_app_param.parameters = private unnamed_addr constant [15 x i8] c"\06\08\00\00\00\00\00\00\00\87\07\01\00\00\00", align 1
@number_type = hidden local_unnamed_addr global i8 0, align 1, !dbg !165
@stack_configs_app = external local_unnamed_addr global %struct._stack_config, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"[pro-info] :\0Agetting phone book%d \0A\0A\00", align 1
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"[pro-info] :\0AHEADER_CONNECTION_ID:%d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"[pro-info] :pbap_status %d\0A\0A\00", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.17 = private unnamed_addr constant [112 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"ASSERT-FAILD: opp_buf.ptr != NULL \00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"ASSERT-FAILD: opp_info->temp_data_buffer != NULL \00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"[pro-info] :\0Apacket_total_len:%d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"[pro-info] :FINAL_get:%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"[pro-info] :card_len:%d\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"[pro-info] :opp_cmd_io_ctrl:%d\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"ASSERT-FAILD: opp_ptr != NULL \00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@profile_cmd_hdl_str = external local_unnamed_addr global %struct.profile_cmd_handle, align 4
@opp_buf.0 = internal unnamed_addr global i32* null, align 4
@opp_buf.1 = internal unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [47 x i8] c"[pro-info] :****opp RFCOMM_CHANNEL_CLOSED****\0A\00"
@str.39 = private unnamed_addr constant [47 x i8] c"[pro-info] :opp RFCOMM channel open succeeded\0A\00"
@str.40 = private unnamed_addr constant [48 x i8] c"[pro-info] :pbap RFCOMM channel open succeeded\0A\00"
@str.41 = private unnamed_addr constant [37 x i8] c"[pro-info] :opp channel open failed\0A\00"
@str.42 = private unnamed_addr constant [47 x i8] c"[pro-info] :\0A\0A****opp_INCOMING_CONNECTION****\0A\00"
@str.43 = private unnamed_addr constant [22 x i8] c"[pro-info] :get next\0A\00"
@str.44 = private unnamed_addr constant [22 x i8] c"[pro-info] :send_err\0A\00"
@str.45 = private unnamed_addr constant [17 x i8] c"[pro-info] :WHO\0A\00"
@str.46 = private unnamed_addr constant [32 x i8] c"[pro-info] :unkonw head return\0A\00"
@str.47 = private unnamed_addr constant [30 x i8] c"[pro-info] :\0A get_all_vcard \0A\00"
@str.48 = private unnamed_addr constant [23 x i8] c"[pro-info] :\0ANOT__ACC\0A\00"
@str.49 = private unnamed_addr constant [39 x i8] c"[pro-info] :\0APBAP_WAIT_VCARD_RESPONSE\0A\00"
@str.50 = private unnamed_addr constant [40 x i8] c"[pro-info] :PBAP_WILL_SENT_SETROOTPATH\0A\00"
@str.51 = private unnamed_addr constant [50 x i8] c"[pro-info] :Operation is understood but refused!\0A\00"
@str.52 = private unnamed_addr constant [25 x i8] c"[pro-info] :bad request!\00"
@str.53 = private unnamed_addr constant [26 x i8] c"[pro-info] :obex disconn\0A\00"
@str.54 = private unnamed_addr constant [23 x i8] c"[pro-info] :obex conn\0A\00"
@str.55 = private unnamed_addr constant [23 x i8] c"[pro-info] :copy over\0A\00"
@str.56 = private unnamed_addr constant [25 x i8] c"[pro-info] :pbap useing\0A\00"

; Function Attrs: nounwind optsize
define hidden void @pbap_init(%struct.opp_channel_info*, i8*, i32) local_unnamed_addr #0 !dbg !182 {
  call void @llvm.dbg.value(metadata %struct.opp_channel_info* %0, metadata !186, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i8* %1, metadata !187, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 %2, metadata !188, metadata !DIExpression()), !dbg !191
  %4 = icmp eq %struct.opp_channel_info* %0, null, !dbg !192
  br i1 %4, label %5, label %7, !dbg !194

; <label>:5:                                      ; preds = %3
  %6 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  br label %8, !dbg !194

; <label>:7:                                      ; preds = %3
  store %struct.opp_channel_info* %0, %struct.opp_channel_info** @opp_info, align 4, !dbg !199, !tbaa !195
  br label %8, !dbg !201

; <label>:8:                                      ; preds = %7, %5
  %9 = phi %struct.opp_channel_info* [ %6, %5 ], [ %0, %7 ], !dbg !202
  %10 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 0, !dbg !203
  store i8 0, i8* %10, align 4, !dbg !204, !tbaa !205
  %11 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 1, !dbg !209
  store i8 0, i8* %11, align 1, !dbg !210, !tbaa !211
  %12 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 11, !dbg !212
  store i32 0, i32* %12, align 4, !dbg !213, !tbaa !214
  %13 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 7, !dbg !215
  store i16 0, i16* %13, align 2, !dbg !216, !tbaa !217
  %14 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 6, !dbg !218
  store i16 0, i16* %14, align 4, !dbg !219, !tbaa !220
  %15 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 10, !dbg !221
  store i32 0, i32* %15, align 4, !dbg !222, !tbaa !223
  store i8* %1, i8** bitcast (i32** @opp_buf.0 to i8**), align 4, !dbg !224, !tbaa !225
  store i32 %2, i32* @opp_buf.1, align 4, !dbg !227, !tbaa !228
  %16 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 5, !dbg !229
  store i16 0, i16* %16, align 2, !dbg !230, !tbaa !231
  %17 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 14, !dbg !232
  store i8* null, i8** %17, align 4, !dbg !233, !tbaa !234
  %18 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 13, i32 0, !dbg !235
  tail call void @llvm.memset.p0i8.i32(i8* %18, i8 0, i32 6, i32 4, i1 false), !dbg !235
  tail call void @rfcomm_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @obex_packet_handler, i8 zeroext 7, i16 zeroext 512) #9, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: optsize
declare void @rfcomm_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i8 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @obex_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 !dbg !238 {
  %5 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !242, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i16 %1, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %2, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i16 %3, metadata !245, metadata !DIExpression()), !dbg !250
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !251
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #8, !dbg !251
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !246, metadata !DIExpression()), !dbg !252
  switch i8 %0, label %104 [
    i8 4, label %7
    i8 7, label %103
  ], !dbg !253

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %2, align 1, !dbg !254, !tbaa !256
  switch i8 %8, label %104 [
    i8 -126, label %9
    i8 -128, label %26
    i8 -127, label %82
    i8 -124, label %102
  ], !dbg !257

; <label>:9:                                      ; preds = %7
  %10 = load i8, i8* @profile_debug_enable, align 1, !dbg !258, !tbaa !256
  %11 = and i8 %10, 1, !dbg !258
  %12 = icmp eq i8 %11, 0, !dbg !258
  br i1 %12, label %15, label %13, !dbg !261

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.42, i32 0, i32 0)), !dbg !262
  br label %15, !dbg !262

; <label>:15:                                     ; preds = %13, %9
  %16 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !264
  %17 = load i8, i8* %16, align 1, !dbg !264, !tbaa !256
  %18 = zext i8 %17 to i16, !dbg !264
  %19 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !264
  %20 = load i8, i8* %19, align 1, !dbg !264, !tbaa !256
  %21 = zext i8 %20 to i16, !dbg !264
  %22 = shl nuw i16 %21, 8, !dbg !264
  %23 = or i16 %22, %18, !dbg !264
  %24 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !265, !tbaa !195
  %25 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %24, i32 0, i32 7, !dbg !266
  store i16 %23, i16* %25, align 2, !dbg !267, !tbaa !217
  tail call void @rfcomm_accept_connection_internal(i16 zeroext %23) #9, !dbg !268
  br label %104, !dbg !269

; <label>:26:                                     ; preds = %7
  %27 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !270
  %28 = load i8, i8* %27, align 1, !dbg !270, !tbaa !256
  %29 = icmp eq i8 %28, 0, !dbg !270
  br i1 %29, label %36, label %30, !dbg !272

; <label>:30:                                     ; preds = %26
  %31 = load i8, i8* @profile_debug_enable, align 1, !dbg !273, !tbaa !256
  %32 = and i8 %31, 1, !dbg !273
  %33 = icmp eq i8 %32, 0, !dbg !273
  br i1 %33, label %104, label %34, !dbg !276

; <label>:34:                                     ; preds = %30
  %35 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str.41, i32 0, i32 0)), !dbg !277
  br label %104, !dbg !277

; <label>:36:                                     ; preds = %26
  %37 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !279, !tbaa !195
  %38 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %37, i32 0, i32 11, !dbg !282
  %39 = load i32, i32* %38, align 4, !dbg !282, !tbaa !214
  %40 = icmp eq i32 %39, 2, !dbg !283
  br i1 %40, label %41, label %65, !dbg !284

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %37, i32 0, i32 13, i32 0, !dbg !285
  %43 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !287
  tail call void @bt_flip_addr(i8* %42, i8* %43) #9, !dbg !288
  %44 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !289
  %45 = load i8, i8* %44, align 1, !dbg !289, !tbaa !256
  %46 = zext i8 %45 to i16, !dbg !289
  %47 = getelementptr inbounds i8, i8* %2, i32 13, !dbg !289
  %48 = load i8, i8* %47, align 1, !dbg !289, !tbaa !256
  %49 = zext i8 %48 to i16, !dbg !289
  %50 = shl nuw i16 %49, 8, !dbg !289
  %51 = or i16 %50, %46, !dbg !289
  call void @llvm.dbg.value(metadata i16 %51, metadata !290, metadata !DIExpression()), !dbg !295
  %52 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !297, !tbaa !195
  %53 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %52, i32 0, i32 7, !dbg !298
  store i16 %51, i16* %53, align 2, !dbg !299, !tbaa !217
  %54 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %52, i32 0, i32 11, !dbg !300
  store i32 3, i32* %54, align 4, !dbg !301, !tbaa !214
  tail call void @pbap_connect() #10, !dbg !302
  %55 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !303, !tbaa !195
  %56 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %55, i32 0, i32 5, !dbg !304
  %57 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %56, align 4, !dbg !304, !tbaa !305
  %58 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !307, !tbaa !195
  %59 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %58, i32 0, i32 13, i32 0, !dbg !307
  tail call void %57(i8* %59, i32 1, i32 64, i8 zeroext 1) #9, !dbg !303
  %60 = load i8, i8* @profile_debug_enable, align 1, !dbg !308, !tbaa !256
  %61 = and i8 %60, 1, !dbg !308
  %62 = icmp eq i8 %61, 0, !dbg !308
  br i1 %62, label %104, label %63, !dbg !310

; <label>:63:                                     ; preds = %41
  %64 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.40, i32 0, i32 0)), !dbg !311
  br label %104, !dbg !311

; <label>:65:                                     ; preds = %36
  %66 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %37, i32 0, i32 10, !dbg !313
  store i32 0, i32* %66, align 4, !dbg !315, !tbaa !223
  %67 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %37, i32 0, i32 8, !dbg !316
  store i16 0, i16* %67, align 4, !dbg !317, !tbaa !318
  %68 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !319
  %69 = load i8, i8* %68, align 1, !dbg !319, !tbaa !256
  %70 = zext i8 %69 to i16, !dbg !319
  %71 = getelementptr inbounds i8, i8* %2, i32 13, !dbg !319
  %72 = load i8, i8* %71, align 1, !dbg !319, !tbaa !256
  %73 = zext i8 %72 to i16, !dbg !319
  %74 = shl nuw i16 %73, 8, !dbg !319
  %75 = or i16 %74, %70, !dbg !319
  %76 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %37, i32 0, i32 7, !dbg !320
  store i16 %75, i16* %76, align 2, !dbg !321, !tbaa !217
  %77 = load i8, i8* @profile_debug_enable, align 1, !dbg !322, !tbaa !256
  %78 = and i8 %77, 1, !dbg !322
  %79 = icmp eq i8 %78, 0, !dbg !322
  br i1 %79, label %104, label %80, !dbg !324

; <label>:80:                                     ; preds = %65
  %81 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.39, i32 0, i32 0)), !dbg !325
  br label %104, !dbg !325

; <label>:82:                                     ; preds = %7
  %83 = load i8, i8* @profile_debug_enable, align 1, !dbg !327, !tbaa !256
  %84 = and i8 %83, 1, !dbg !327
  %85 = icmp eq i8 %84, 0, !dbg !327
  br i1 %85, label %88, label %86, !dbg !329

; <label>:86:                                     ; preds = %82
  %87 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str, i32 0, i32 0)), !dbg !330
  br label %88, !dbg !330

; <label>:88:                                     ; preds = %86, %82
  %89 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !332, !tbaa !195
  %90 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %89, i32 0, i32 13, i32 0, !dbg !333
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %6, i8* %90, i32 6, i32 1, i1 false), !dbg !333
  %91 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %89, i32 0, i32 0, !dbg !334
  store i8 0, i8* %91, align 4, !dbg !337, !tbaa !205
  %92 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %89, i32 0, i32 1, !dbg !338
  store i8 0, i8* %92, align 1, !dbg !339, !tbaa !211
  %93 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %89, i32 0, i32 7, !dbg !340
  store i16 0, i16* %93, align 2, !dbg !341, !tbaa !217
  %94 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %89, i32 0, i32 6, !dbg !342
  store i16 0, i16* %94, align 4, !dbg !343, !tbaa !220
  %95 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %89, i32 0, i32 10, !dbg !344
  tail call void @llvm.memset.p0i8.i32(i8* %90, i8 0, i32 6, i32 4, i1 false) #8, !dbg !345
  %96 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %89, i32 0, i32 8, !dbg !346
  store i16 0, i16* %96, align 4, !dbg !347, !tbaa !318
  %97 = bitcast i32* %95 to i64*, !dbg !348
  store i64 0, i64* %97, align 4, !dbg !348
  tail call void bitcast (void (...)* @pbap_close_status_update_to_user to void ()*)() #9, !dbg !349
  tail call void @pbap_mutex_free() #10, !dbg !350
  %98 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !351, !tbaa !195
  %99 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %98, i32 0, i32 5, !dbg !352
  %100 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %99, align 4, !dbg !352, !tbaa !305
  call void %100(i8* nonnull %6, i32 0, i32 64, i8 zeroext 1) #9, !dbg !351
  %101 = load i8*, i8** bitcast (%struct.opp_channel_info** @opp_info to i8**), align 4, !dbg !353, !tbaa !195
  call void @free(i8* %101) #10, !dbg !354
  store %struct.opp_channel_info* null, %struct.opp_channel_info** @opp_info, align 4, !dbg !355, !tbaa !195
  br label %104, !dbg !356

; <label>:102:                                    ; preds = %7
  tail call void @pbap_connect() #10, !dbg !357
  br label %104, !dbg !358

; <label>:103:                                    ; preds = %4
  tail call void @opp_parse_raw_data(i8* %2, i16 zeroext %3) #10, !dbg !359
  br label %104, !dbg !360

; <label>:104:                                    ; preds = %103, %102, %88, %80, %65, %63, %41, %34, %30, %15, %7, %4
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #8, !dbg !361
  ret void, !dbg !361
}

; Function Attrs: norecurse nounwind optsize
define hidden void @pbap_get_last_phone_card() local_unnamed_addr #4 !dbg !362 {
  %1 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !363, !tbaa !195
  %2 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 6, !dbg !365
  %3 = load i16, i16* %2, align 4, !dbg !365, !tbaa !220
  %4 = icmp ugt i16 %3, 1, !dbg !366
  br i1 %4, label %5, label %7, !dbg !367

; <label>:5:                                      ; preds = %0
  %6 = add i16 %3, -1, !dbg !368
  store i16 %6, i16* %2, align 4, !dbg !368, !tbaa !220
  br label %7, !dbg !370

; <label>:7:                                      ; preds = %5, %0
  %8 = phi i16 [ %6, %5 ], [ %3, %0 ], !dbg !371
  %9 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 1, !dbg !372
  %10 = load i8, i8* %9, align 1, !dbg !373, !tbaa !211
  %11 = add i8 %10, 1, !dbg !373
  store i8 %11, i8* %9, align 1, !dbg !373, !tbaa !211
  %12 = zext i8 %10 to i32, !dbg !374
  %13 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 12, i32 %12, !dbg !374
  store i16 %8, i16* %13, align 2, !dbg !375, !tbaa !376
  %14 = icmp ugt i8 %11, 15, !dbg !377
  br i1 %14, label %15, label %16, !dbg !379

; <label>:15:                                     ; preds = %7
  store i8 0, i8* %9, align 1, !dbg !380, !tbaa !211
  br label %16, !dbg !382

; <label>:16:                                     ; preds = %15, %7
  ret void, !dbg !383
}

; Function Attrs: nounwind optsize
define hidden void @pbap_get_next_phone_card() local_unnamed_addr #0 !dbg !384 {
  %1 = load i8, i8* @profile_debug_enable, align 1, !dbg !385, !tbaa !256
  %2 = and i8 %1, 1, !dbg !385
  %3 = icmp eq i8 %2, 0, !dbg !385
  br i1 %3, label %6, label %4, !dbg !387

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.43, i32 0, i32 0)), !dbg !388
  br label %6, !dbg !388

; <label>:6:                                      ; preds = %4, %0
  %7 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !390, !tbaa !195
  %8 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %7, i32 0, i32 6, !dbg !391
  %9 = load i16, i16* %8, align 4, !dbg !392, !tbaa !220
  %10 = add i16 %9, 1, !dbg !392
  store i16 %10, i16* %8, align 4, !dbg !392, !tbaa !220
  %11 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %7, i32 0, i32 1, !dbg !393
  %12 = load i8, i8* %11, align 1, !dbg !394, !tbaa !211
  %13 = add i8 %12, 1, !dbg !394
  store i8 %13, i8* %11, align 1, !dbg !394, !tbaa !211
  %14 = zext i8 %12 to i32, !dbg !395
  %15 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %7, i32 0, i32 12, i32 %14, !dbg !395
  store i16 %10, i16* %15, align 2, !dbg !396, !tbaa !376
  %16 = icmp ugt i8 %13, 15, !dbg !397
  br i1 %16, label %17, label %18, !dbg !399

; <label>:17:                                     ; preds = %6
  store i8 0, i8* %11, align 1, !dbg !400, !tbaa !211
  br label %18, !dbg !402

; <label>:18:                                     ; preds = %17, %6
  ret void, !dbg !403
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind optsize
define hidden void @pbap_get_phone_card(i32) local_unnamed_addr #0 !dbg !404 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !408, metadata !DIExpression()), !dbg !414
  %3 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 0, !dbg !415
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %3) #8, !dbg !415
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !409, metadata !DIExpression()), !dbg !416
  call void @llvm.memset.p0i8.i32(i8* nonnull %3, i8 0, i32 10, i32 1, i1 false), !dbg !416
  call void @llvm.dbg.value(metadata i8 0, metadata !413, metadata !DIExpression()), !dbg !417
  %4 = add i32 %0, -1, !dbg !418
  %5 = icmp ugt i32 %4, 998, !dbg !418
  call void @llvm.dbg.value(metadata i32 1, metadata !408, metadata !DIExpression()), !dbg !414
  %6 = select i1 %5, i32 1, i32 %0, !dbg !418
  call void @llvm.dbg.value(metadata i32 %6, metadata !408, metadata !DIExpression()), !dbg !414
  %7 = icmp ult i32 %6, 10, !dbg !420
  br i1 %7, label %8, label %9, !dbg !422

; <label>:8:                                      ; preds = %1
  call void @ASCII_IntToStr(i8* nonnull %3, i32 %6, i32 1, i32 10) #9, !dbg !423
  br label %15, !dbg !425

; <label>:9:                                      ; preds = %1
  %10 = icmp ult i32 %6, 99, !dbg !426
  br i1 %10, label %11, label %12, !dbg !429

; <label>:11:                                     ; preds = %9
  call void @ASCII_IntToStr(i8* nonnull %3, i32 %6, i32 2, i32 10) #9, !dbg !431
  br label %15, !dbg !433

; <label>:12:                                     ; preds = %9
  %13 = icmp ult i32 %6, 999, !dbg !434
  br i1 %13, label %14, label %15, !dbg !437

; <label>:14:                                     ; preds = %12
  call void @ASCII_IntToStr(i8* nonnull %3, i32 %6, i32 3, i32 10) #9, !dbg !438
  br label %15, !dbg !440

; <label>:15:                                     ; preds = %14, %12, %11, %8
  %16 = call i32 @strlen(i8* nonnull %3) #10, !dbg !441
  %17 = trunc i32 %16 to i8, !dbg !441
  call void @llvm.dbg.value(metadata i8 %17, metadata !413, metadata !DIExpression()), !dbg !417
  %18 = add i32 %16, 1, !dbg !442
  %19 = and i32 %16, 255, !dbg !443
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 %19, !dbg !443
  store i8 46, i8* %20, align 1, !dbg !444, !tbaa !256
  %21 = add i32 %16, 2, !dbg !445
  %22 = and i32 %18, 255, !dbg !446
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 %22, !dbg !446
  store i8 118, i8* %23, align 1, !dbg !447, !tbaa !256
  %24 = add i32 %16, 3, !dbg !448
  %25 = and i32 %21, 255, !dbg !449
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 %25, !dbg !449
  store i8 99, i8* %26, align 1, !dbg !450, !tbaa !256
  %27 = add i8 %17, 4, !dbg !451
  call void @llvm.dbg.value(metadata i8 %27, metadata !413, metadata !DIExpression()), !dbg !417
  %28 = and i32 %24, 255, !dbg !452
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 %28, !dbg !452
  store i8 102, i8* %29, align 1, !dbg !453, !tbaa !256
  %30 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !454, !tbaa !195
  %31 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %30, i32 0, i32 11, !dbg !455
  store i32 9, i32* %31, align 4, !dbg !456, !tbaa !214
  %32 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %30, i32 0, i32 7, !dbg !457
  %33 = load i16, i16* %32, align 2, !dbg !457, !tbaa !217
  %34 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %30, i32 0, i32 9, !dbg !458
  %35 = load i32, i32* %34, align 4, !dbg !458, !tbaa !459
  call void @pull_vCard_entry(i16 zeroext %33, i32 %35, i8* nonnull %3, i8 zeroext %27) #10, !dbg !460
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %3) #8, !dbg !461
  ret void, !dbg !461
}

; Function Attrs: optsize
declare void @ASCII_IntToStr(i8*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden void @pull_vCard_entry(i16 zeroext, i32, i8*, i8 zeroext) local_unnamed_addr #0 !dbg !462 {
  %5 = alloca [100 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !467, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i32 %1, metadata !468, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i8* %2, metadata !469, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i8 %3, metadata !470, metadata !DIExpression()), !dbg !479
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0, !dbg !480
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %6) #8, !dbg !480
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !471, metadata !DIExpression()), !dbg !481
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 4
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 96, i32 1, i1 false), !dbg !481
  call void @llvm.dbg.value(metadata i16 0, metadata !475, metadata !DIExpression()), !dbg !482
  store i8 -125, i8* %6, align 1, !dbg !483, !tbaa !256
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 1, !dbg !484
  store i8 0, i8* %8, align 1, !dbg !485, !tbaa !256
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 2, !dbg !486
  store i8 0, i8* %9, align 1, !dbg !487, !tbaa !256
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 3, !dbg !488
  store i8 -53, i8* %10, align 1, !dbg !489, !tbaa !256
  call void @net_store_32(i8* nonnull %6, i16 zeroext 4, i32 %1) #9, !dbg !490
  %11 = call i32 @fill_unicode_name(i8* nonnull %6, i16 zeroext 8, i8* %2, i8 zeroext %3) #9, !dbg !491
  %12 = trunc i32 %11 to i16, !dbg !491
  call void @llvm.dbg.value(metadata i16 %12, metadata !475, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i8* %6, metadata !492, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i16 %12, metadata !497, metadata !DIExpression()), !dbg !500
  %13 = call i32 @fill_type(i8* nonnull %6, i16 zeroext %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8 zeroext 10) #9, !dbg !501
  %14 = trunc i32 %13 to i16, !dbg !501
  call void @llvm.dbg.value(metadata i16 %14, metadata !475, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i8* %6, metadata !502, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i16 %14, metadata !505, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i16 0, metadata !506, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata [15 x i8]* @fill_singal_app_param.parameters, metadata !507, metadata !DIExpression()) #8, !dbg !515
  %15 = add i32 %13, 1, !dbg !516
  %16 = and i32 %13, 65535, !dbg !517
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 %16, !dbg !517
  store i8 76, i8* %17, align 1, !dbg !518, !tbaa !256
  %18 = add i32 %13, 2, !dbg !519
  %19 = and i32 %15, 65535, !dbg !520
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 %19, !dbg !520
  store i8 0, i8* %20, align 1, !dbg !521, !tbaa !256
  %21 = add i32 %13, 3, !dbg !522
  %22 = and i32 %18, 65535, !dbg !523
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 %22, !dbg !523
  store i8 16, i8* %23, align 1, !dbg !524, !tbaa !256
  call void @llvm.dbg.value(metadata i16 0, metadata !506, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i16 0, metadata !506, metadata !DIExpression()), !dbg !514
  %24 = and i32 %21, 65535
  %25 = getelementptr [100 x i8], [100 x i8]* %5, i32 0, i32 %24, !dbg !525
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fill_singal_app_param.parameters, i32 0, i32 0), i32 13, i32 1, i1 false) #8, !dbg !528
  %26 = add i16 %14, 16, !dbg !531
  call void @llvm.dbg.value(metadata i16 %26, metadata !475, metadata !DIExpression()), !dbg !482
  %27 = zext i16 %26 to i32, !dbg !532
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 %27, !dbg !532
  store i8 0, i8* %28, align 1, !dbg !533, !tbaa !256
  call void @net_store_16(i8* nonnull %6, i16 zeroext 1, i16 zeroext %26) #9, !dbg !534
  %29 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %6, i16 zeroext %26) #9, !dbg !535
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %6) #8, !dbg !536
  ret void, !dbg !536
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @pbap_check_status() local_unnamed_addr #7 !dbg !537 {
  %1 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !540, !tbaa !195
  %2 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 11, !dbg !541
  %3 = load i32, i32* %2, align 4, !dbg !541, !tbaa !214
  %4 = trunc i32 %3 to i8, !dbg !540
  ret i8 %4, !dbg !542
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i16 @pbap_get_rfcomm_cid() local_unnamed_addr #7 !dbg !543 {
  %1 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !546, !tbaa !195
  %2 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 7, !dbg !547
  %3 = load i16, i16* %2, align 2, !dbg !547, !tbaa !217
  ret i16 %3, !dbg !548
}

; Function Attrs: nounwind optsize
define hidden void @pbap_set_rfcomm_cid(i16 zeroext) local_unnamed_addr #0 !dbg !291 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !290, metadata !DIExpression()), !dbg !549
  %2 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !550, !tbaa !195
  %3 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %2, i32 0, i32 7, !dbg !551
  store i16 %0, i16* %3, align 2, !dbg !552, !tbaa !217
  %4 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %2, i32 0, i32 11, !dbg !553
  store i32 3, i32* %4, align 4, !dbg !554, !tbaa !214
  ret void, !dbg !555
}

; Function Attrs: nounwind optsize
define hidden void @pbap_connect() local_unnamed_addr #0 !dbg !157 {
  %1 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !556, !tbaa !195
  %2 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 7, !dbg !558
  %3 = load i16, i16* %2, align 2, !dbg !558, !tbaa !217
  %4 = icmp eq i16 %3, 0, !dbg !556
  br i1 %4, label %21, label %5, !dbg !559

; <label>:5:                                      ; preds = %0
  %6 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 11, !dbg !560
  %7 = load i32, i32* %6, align 4, !dbg !560, !tbaa !214
  %8 = icmp eq i32 %7, 3, !dbg !562
  br i1 %8, label %9, label %21, !dbg !563

; <label>:9:                                      ; preds = %5
  %10 = tail call zeroext i8 @obex_connection_req(i16 zeroext %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pbap_connect.type_head, i32 0, i32 0), i8 zeroext 1) #9, !dbg !565
  %11 = icmp eq i8 %10, 0, !dbg !568
  br i1 %11, label %18, label %12, !dbg !569

; <label>:12:                                     ; preds = %9
  %13 = load i8, i8* @profile_debug_enable, align 1, !dbg !570, !tbaa !256
  %14 = and i8 %13, 1, !dbg !570
  %15 = icmp eq i8 %14, 0, !dbg !570
  br i1 %15, label %21, label %16, !dbg !573

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.44, i32 0, i32 0)), !dbg !574
  br label %21, !dbg !574

; <label>:18:                                     ; preds = %9
  %19 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !576, !tbaa !195
  %20 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %19, i32 0, i32 11, !dbg !578
  store i32 5, i32* %20, align 4, !dbg !579, !tbaa !214
  br label %21

; <label>:21:                                     ; preds = %18, %16, %12, %5, %0
  ret void, !dbg !580
}

; Function Attrs: optsize
declare zeroext i8 @obex_connection_req(i16 zeroext, i8*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @pbap_disconnect(i16 zeroext, i32) local_unnamed_addr #0 !dbg !581 {
  %3 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !585, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %1, metadata !586, metadata !DIExpression()), !dbg !590
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !591
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #8, !dbg !591
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !587, metadata !DIExpression()), !dbg !592
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 4
  call void @llvm.memset.p0i8.i32(i8* nonnull %5, i8 0, i32 6, i32 1, i1 false), !dbg !592
  store i8 -127, i8* %4, align 1, !dbg !593, !tbaa !256
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 1, !dbg !594
  store i8 0, i8* %6, align 1, !dbg !595, !tbaa !256
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 2, !dbg !596
  store i8 8, i8* %7, align 1, !dbg !597, !tbaa !256
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 3, !dbg !598
  store i8 -53, i8* %8, align 1, !dbg !599, !tbaa !256
  call void @net_store_32(i8* nonnull %4, i16 zeroext 4, i32 %1) #9, !dbg !600
  %9 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !601, !tbaa !195
  %10 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 11, !dbg !602
  store i32 0, i32* %10, align 4, !dbg !603, !tbaa !214
  %11 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %4, i16 zeroext 8) #9, !dbg !604
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %4) #8, !dbg !605
  ret void, !dbg !605
}

; Function Attrs: optsize
declare void @net_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rfcomm_send_internal(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_Pb_name(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !606 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !608, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i16 %1, metadata !609, metadata !DIExpression()), !dbg !611
  %3 = tail call i32 @fill_unicode_name(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8 zeroext 14) #9, !dbg !612
  %4 = trunc i32 %3 to i16, !dbg !612
  ret i16 %4, !dbg !613
}

; Function Attrs: optsize
declare i32 @fill_unicode_name(i8*, i16 zeroext, i8*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_SIMPb_name(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i16 %1, metadata !617, metadata !DIExpression()), !dbg !619
  %3 = tail call i32 @fill_unicode_name(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8 zeroext 19) #9, !dbg !620
  %4 = trunc i32 %3 to i16, !dbg !620
  ret i16 %4, !dbg !621
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_ich_name(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !624, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i16 %1, metadata !625, metadata !DIExpression()), !dbg !627
  %3 = tail call i32 @fill_unicode_name(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8 zeroext 15) #9, !dbg !628
  %4 = trunc i32 %3 to i16, !dbg !628
  ret i16 %4, !dbg !629
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_mch_name(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !630 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !632, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i16 %1, metadata !633, metadata !DIExpression()), !dbg !635
  %3 = tail call i32 @fill_unicode_name(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8 zeroext 15) #9, !dbg !636
  %4 = trunc i32 %3 to i16, !dbg !636
  ret i16 %4, !dbg !637
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_och_name(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !638 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !640, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata i16 %1, metadata !641, metadata !DIExpression()), !dbg !643
  %3 = tail call i32 @fill_unicode_name(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8 zeroext 15) #9, !dbg !644
  %4 = trunc i32 %3 to i16, !dbg !644
  ret i16 %4, !dbg !645
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_Pb_type(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i16 %1, metadata !649, metadata !DIExpression()), !dbg !651
  %3 = tail call i32 @fill_type(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8 zeroext 14) #9, !dbg !652
  %4 = trunc i32 %3 to i16, !dbg !652
  ret i16 %4, !dbg !653
}

; Function Attrs: optsize
declare i32 @fill_type(i8*, i16 zeroext, i8*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_listing_type(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !654 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i16 %1, metadata !657, metadata !DIExpression()), !dbg !659
  %3 = tail call i32 @fill_type(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8 zeroext 18) #9, !dbg !660
  %4 = trunc i32 %3 to i16, !dbg !660
  ret i16 %4, !dbg !661
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_vCard_type(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !492, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i16 %1, metadata !497, metadata !DIExpression()), !dbg !663
  %3 = tail call i32 @fill_type(i8* %0, i16 zeroext %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8 zeroext 10) #9, !dbg !664
  %4 = trunc i32 %3 to i16, !dbg !664
  ret i16 %4, !dbg !665
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_app_parameters(i8* nocapture, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !666 {
  %4 = alloca [25 x i8], align 1
  %5 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i32 0, i32 0
  call void @llvm.dbg.value(metadata i8* %0, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i16 %1, metadata !671, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i16 %2, metadata !672, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i16 0, metadata !673, metadata !DIExpression()), !dbg !681
  %6 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i32 0, i32 0, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %6) #8, !dbg !682
  tail call void @llvm.dbg.declare(metadata [25 x i8]* %4, metadata !674, metadata !DIExpression()), !dbg !683
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @fill_app_parameters.parameters, i32 0, i32 0), i32 25, i32 1, i1 false), !dbg !683
  %7 = add i16 %1, 1, !dbg !684
  call void @llvm.dbg.value(metadata i16 %7, metadata !671, metadata !DIExpression()), !dbg !679
  %8 = zext i16 %1 to i32, !dbg !685
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !685
  store i8 76, i8* %9, align 1, !dbg !686, !tbaa !256
  %10 = add i16 %1, 2, !dbg !687
  call void @llvm.dbg.value(metadata i16 %10, metadata !671, metadata !DIExpression()), !dbg !679
  %11 = zext i16 %7 to i32, !dbg !688
  %12 = getelementptr inbounds i8, i8* %0, i32 %11, !dbg !688
  store i8 0, i8* %12, align 1, !dbg !689, !tbaa !256
  %13 = add i16 %1, 3, !dbg !690
  call void @llvm.dbg.value(metadata i16 %13, metadata !671, metadata !DIExpression()), !dbg !679
  %14 = zext i16 %10 to i32, !dbg !691
  %15 = getelementptr inbounds i8, i8* %0, i32 %14, !dbg !691
  store i8 24, i8* %15, align 1, !dbg !692, !tbaa !256
  call void @net_store_16(i8* nonnull %6, i16 zeroext 15, i16 zeroext %2) #9, !dbg !693
  call void @llvm.dbg.value(metadata i16 0, metadata !673, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i16 0, metadata !673, metadata !DIExpression()), !dbg !681
  %16 = zext i16 %13 to i32
  %17 = getelementptr i8, i8* %0, i32 %16, !dbg !694
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %5, i32 21, i32 1, i1 false), !dbg !697
  %18 = add i16 %1, 24, !dbg !700
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %6) #8, !dbg !701
  ret i16 %18, !dbg !702
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: optsize
declare void @net_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_listing_app_param(i8* nocapture, i16 zeroext) local_unnamed_addr #0 !dbg !703 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !705, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i16 %1, metadata !706, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i16 0, metadata !707, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.declare(metadata [20 x i8]* @fill_listing_app_param.parameters, metadata !708, metadata !DIExpression()), !dbg !715
  %3 = add i16 %1, 1, !dbg !716
  call void @llvm.dbg.value(metadata i16 %3, metadata !706, metadata !DIExpression()), !dbg !713
  %4 = zext i16 %1 to i32, !dbg !717
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !717
  store i8 76, i8* %5, align 1, !dbg !718, !tbaa !256
  %6 = add i16 %1, 2, !dbg !719
  call void @llvm.dbg.value(metadata i16 %6, metadata !706, metadata !DIExpression()), !dbg !713
  %7 = zext i16 %3 to i32, !dbg !720
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !720
  store i8 0, i8* %8, align 1, !dbg !721, !tbaa !256
  %9 = add i16 %1, 3, !dbg !722
  call void @llvm.dbg.value(metadata i16 %9, metadata !706, metadata !DIExpression()), !dbg !713
  %10 = zext i16 %6 to i32, !dbg !723
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !723
  store i8 16, i8* %11, align 1, !dbg !724, !tbaa !256
  call void @llvm.dbg.value(metadata i16 0, metadata !707, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i16 0, metadata !707, metadata !DIExpression()), !dbg !714
  %12 = zext i16 %9 to i32
  %13 = getelementptr i8, i8* %0, i32 %12, !dbg !725
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fill_listing_app_param.parameters, i32 0, i32 0), i32 16, i32 1, i1 false), !dbg !728
  %14 = add i16 %1, 19, !dbg !731
  ret i16 %14, !dbg !732
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @fill_singal_app_param(i8* nocapture, i16 zeroext) local_unnamed_addr #0 !dbg !503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i16 %1, metadata !505, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i16 0, metadata !506, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.declare(metadata [15 x i8]* @fill_singal_app_param.parameters, metadata !507, metadata !DIExpression()), !dbg !736
  %3 = add i16 %1, 1, !dbg !737
  call void @llvm.dbg.value(metadata i16 %3, metadata !505, metadata !DIExpression()), !dbg !734
  %4 = zext i16 %1 to i32, !dbg !738
  %5 = getelementptr inbounds i8, i8* %0, i32 %4, !dbg !738
  store i8 76, i8* %5, align 1, !dbg !739, !tbaa !256
  %6 = add i16 %1, 2, !dbg !740
  call void @llvm.dbg.value(metadata i16 %6, metadata !505, metadata !DIExpression()), !dbg !734
  %7 = zext i16 %3 to i32, !dbg !741
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !741
  store i8 0, i8* %8, align 1, !dbg !742, !tbaa !256
  %9 = add i16 %1, 3, !dbg !743
  call void @llvm.dbg.value(metadata i16 %9, metadata !505, metadata !DIExpression()), !dbg !734
  %10 = zext i16 %6 to i32, !dbg !744
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !744
  store i8 16, i8* %11, align 1, !dbg !745, !tbaa !256
  call void @llvm.dbg.value(metadata i16 0, metadata !506, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i16 0, metadata !506, metadata !DIExpression()), !dbg !735
  %12 = zext i16 %9 to i32
  %13 = getelementptr i8, i8* %0, i32 %12, !dbg !746
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fill_singal_app_param.parameters, i32 0, i32 0), i32 13, i32 1, i1 false), !dbg !747
  %14 = add i16 %1, 16, !dbg !748
  ret i16 %14, !dbg !749
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @check_cur_number_type() local_unnamed_addr #7 !dbg !750 {
  %1 = load i8, i8* @number_type, align 1, !dbg !751, !tbaa !256
  ret i8 %1, !dbg !752
}

; Function Attrs: nounwind optsize
define hidden void @pull_phone_book(i16 zeroext, i32, i8 zeroext) local_unnamed_addr #0 !dbg !753 {
  %4 = alloca [110 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !757, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i32 %1, metadata !758, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i8 %2, metadata !759, metadata !DIExpression()), !dbg !768
  %5 = getelementptr inbounds [110 x i8], [110 x i8]* %4, i32 0, i32 0, !dbg !769
  call void @llvm.lifetime.start.p0i8(i64 110, i8* nonnull %5) #8, !dbg !769
  tail call void @llvm.dbg.declare(metadata [110 x i8]* %4, metadata !760, metadata !DIExpression()), !dbg !770
  %6 = getelementptr inbounds [110 x i8], [110 x i8]* %4, i32 0, i32 4
  call void @llvm.memset.p0i8.i32(i8* nonnull %6, i8 0, i32 106, i32 1, i1 false), !dbg !770
  call void @llvm.dbg.value(metadata i16 999, metadata !764, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i16 0, metadata !765, metadata !DIExpression()), !dbg !772
  store i8 -125, i8* %5, align 1, !dbg !773, !tbaa !256
  %7 = getelementptr inbounds [110 x i8], [110 x i8]* %4, i32 0, i32 1, !dbg !774
  store i8 0, i8* %7, align 1, !dbg !775, !tbaa !256
  %8 = getelementptr inbounds [110 x i8], [110 x i8]* %4, i32 0, i32 2, !dbg !776
  store i8 0, i8* %8, align 1, !dbg !777, !tbaa !256
  %9 = getelementptr inbounds [110 x i8], [110 x i8]* %4, i32 0, i32 3, !dbg !778
  store i8 -53, i8* %9, align 1, !dbg !779, !tbaa !256
  call void @net_store_32(i8* nonnull %5, i16 zeroext 4, i32 %1) #9, !dbg !780
  %10 = zext i8 %2 to i32, !dbg !781
  switch i8 %2, label %21 [
    i8 0, label %11
    i8 1, label %13
    i8 3, label %15
    i8 2, label %17
    i8 4, label %19
  ], !dbg !782

; <label>:11:                                     ; preds = %3
  store i8 0, i8* @number_type, align 1, !dbg !783, !tbaa !256
  call void @llvm.dbg.value(metadata i8* %5, metadata !608, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 8, metadata !609, metadata !DIExpression()), !dbg !787
  %12 = call i32 @fill_unicode_name(i8* nonnull %5, i16 zeroext 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8 zeroext 14) #9, !dbg !788
  br label %23, !dbg !789

; <label>:13:                                     ; preds = %3
  store i8 0, i8* @number_type, align 1, !dbg !790, !tbaa !256
  call void @llvm.dbg.value(metadata i8* %5, metadata !616, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata i16 8, metadata !617, metadata !DIExpression()), !dbg !793
  %14 = call i32 @fill_unicode_name(i8* nonnull %5, i16 zeroext 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8 zeroext 19) #9, !dbg !794
  br label %23, !dbg !795

; <label>:15:                                     ; preds = %3
  store i8 2, i8* @number_type, align 1, !dbg !796, !tbaa !256
  call void @llvm.dbg.value(metadata i8* %5, metadata !624, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i16 8, metadata !625, metadata !DIExpression()), !dbg !799
  %16 = call i32 @fill_unicode_name(i8* nonnull %5, i16 zeroext 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8 zeroext 15) #9, !dbg !800
  br label %23, !dbg !801

; <label>:17:                                     ; preds = %3
  store i8 1, i8* @number_type, align 1, !dbg !802, !tbaa !256
  call void @llvm.dbg.value(metadata i8* %5, metadata !640, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i16 8, metadata !641, metadata !DIExpression()), !dbg !805
  %18 = call i32 @fill_unicode_name(i8* nonnull %5, i16 zeroext 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8 zeroext 15) #9, !dbg !806
  br label %23, !dbg !807

; <label>:19:                                     ; preds = %3
  store i8 3, i8* @number_type, align 1, !dbg !808, !tbaa !256
  call void @llvm.dbg.value(metadata i8* %5, metadata !632, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i16 8, metadata !633, metadata !DIExpression()), !dbg !811
  %20 = call i32 @fill_unicode_name(i8* nonnull %5, i16 zeroext 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8 zeroext 15) #9, !dbg !812
  br label %23, !dbg !813

; <label>:21:                                     ; preds = %3
  store i8 0, i8* @number_type, align 1, !dbg !814, !tbaa !256
  call void @llvm.dbg.value(metadata i8* %5, metadata !608, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i16 8, metadata !609, metadata !DIExpression()), !dbg !817
  %22 = call i32 @fill_unicode_name(i8* nonnull %5, i16 zeroext 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8 zeroext 14) #9, !dbg !818
  call void @llvm.dbg.value(metadata i16 %25, metadata !765, metadata !DIExpression()), !dbg !772
  br label %23, !dbg !819

; <label>:23:                                     ; preds = %21, %19, %17, %15, %13, %11
  %24 = phi i32 [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ]
  %25 = trunc i32 %24 to i16
  call void @llvm.dbg.value(metadata i16 %25, metadata !765, metadata !DIExpression()), !dbg !772
  %26 = icmp ult i8 %2, 2, !dbg !820
  %27 = load i8, i8* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 13), align 4, !dbg !822
  %28 = zext i8 %27 to i16, !dbg !824
  call void @llvm.dbg.value(metadata i16 %28, metadata !764, metadata !DIExpression()), !dbg !771
  %29 = select i1 %26, i16 999, i16 %28, !dbg !820
  call void @llvm.dbg.value(metadata i16 %29, metadata !764, metadata !DIExpression()), !dbg !771
  %30 = load i8, i8* @profile_debug_enable, align 1, !dbg !825, !tbaa !256
  %31 = and i8 %30, 1, !dbg !825
  %32 = icmp eq i8 %31, 0, !dbg !825
  br i1 %32, label %35, label %33, !dbg !827

; <label>:33:                                     ; preds = %23
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i32 %10) #10, !dbg !828
  br label %35, !dbg !828

; <label>:35:                                     ; preds = %33, %23
  call void @llvm.dbg.value(metadata i8* %5, metadata !648, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i16 %25, metadata !649, metadata !DIExpression()), !dbg !832
  %36 = call i32 @fill_type(i8* nonnull %5, i16 zeroext %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8 zeroext 14) #9, !dbg !833
  %37 = trunc i32 %36 to i16, !dbg !833
  call void @llvm.dbg.value(metadata i16 %37, metadata !765, metadata !DIExpression()), !dbg !772
  %38 = call zeroext i16 @fill_app_parameters(i8* nonnull %5, i16 zeroext %37, i16 zeroext %29) #10, !dbg !834
  call void @llvm.dbg.value(metadata i16 %38, metadata !765, metadata !DIExpression()), !dbg !772
  %39 = zext i16 %38 to i32, !dbg !835
  %40 = getelementptr inbounds [110 x i8], [110 x i8]* %4, i32 0, i32 %39, !dbg !835
  store i8 0, i8* %40, align 1, !dbg !836, !tbaa !256
  call void @net_store_16(i8* nonnull %5, i16 zeroext 1, i16 zeroext %38) #9, !dbg !837
  %41 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %5, i16 zeroext %38) #9, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 110, i8* nonnull %5) #8, !dbg !839
  ret void, !dbg !839
}

; Function Attrs: nounwind optsize
define hidden void @set_phone_book(i16 zeroext, i32, i8*, i8 zeroext) local_unnamed_addr #0 !dbg !840 {
  %5 = alloca [60 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !842, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 %1, metadata !843, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8* %2, metadata !844, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8 %3, metadata !845, metadata !DIExpression()), !dbg !854
  %6 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i32 0, i32 0, !dbg !855
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %6) #8, !dbg !855
  tail call void @llvm.dbg.declare(metadata [60 x i8]* %5, metadata !846, metadata !DIExpression()), !dbg !856
  %7 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i32 0, i32 6
  call void @llvm.memset.p0i8.i32(i8* nonnull %7, i8 0, i32 54, i32 1, i1 false), !dbg !856
  call void @llvm.dbg.value(metadata i16 0, metadata !850, metadata !DIExpression()), !dbg !857
  store i8 -123, i8* %6, align 1, !dbg !858, !tbaa !256
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i32 0, i32 1, !dbg !859
  %9 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i32 0, i32 5, !dbg !860
  %10 = bitcast i8* %8 to i32*, !dbg !861
  store i32 0, i32* %10, align 1, !dbg !861
  store i8 -53, i8* %9, align 1, !dbg !862, !tbaa !256
  call void @net_store_32(i8* nonnull %6, i16 zeroext 6, i32 %1) #9, !dbg !863
  %11 = call i32 @fill_unicode_name(i8* nonnull %6, i16 zeroext 10, i8* %2, i8 zeroext %3) #9, !dbg !864
  %12 = trunc i32 %11 to i16, !dbg !864
  call void @llvm.dbg.value(metadata i16 %12, metadata !850, metadata !DIExpression()), !dbg !857
  %13 = and i32 %11, 65535, !dbg !865
  %14 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i32 0, i32 %13, !dbg !865
  store i8 0, i8* %14, align 1, !dbg !866, !tbaa !256
  call void @net_store_16(i8* nonnull %6, i16 zeroext 1, i16 zeroext %12) #9, !dbg !867
  %15 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %6, i16 zeroext %12) #9, !dbg !868
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %6) #8, !dbg !869
  ret void, !dbg !869
}

; Function Attrs: nounwind optsize
define hidden void @pull_vCard_listing(i16 zeroext, i32) local_unnamed_addr #0 !dbg !870 {
  %3 = alloca [100 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !872, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i32 %1, metadata !873, metadata !DIExpression()), !dbg !877
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0, !dbg !878
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %4) #8, !dbg !878
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !874, metadata !DIExpression()), !dbg !879
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 4
  call void @llvm.memset.p0i8.i32(i8* nonnull %5, i8 0, i32 96, i32 1, i1 false), !dbg !879
  call void @llvm.dbg.value(metadata i16 0, metadata !875, metadata !DIExpression()), !dbg !880
  store i8 -125, i8* %4, align 1, !dbg !881, !tbaa !256
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 1, !dbg !882
  store i8 0, i8* %6, align 1, !dbg !883, !tbaa !256
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 2, !dbg !884
  store i8 0, i8* %7, align 1, !dbg !885, !tbaa !256
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 3, !dbg !886
  store i8 -53, i8* %8, align 1, !dbg !887, !tbaa !256
  call void @net_store_32(i8* nonnull %4, i16 zeroext 4, i32 %1) #9, !dbg !888
  call void @llvm.dbg.value(metadata i8* %4, metadata !656, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i16 0, metadata !657, metadata !DIExpression()), !dbg !891
  %9 = call i32 @fill_type(i8* nonnull %4, i16 zeroext 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8 zeroext 18) #9, !dbg !892
  %10 = trunc i32 %9 to i16, !dbg !892
  call void @llvm.dbg.value(metadata i16 %10, metadata !875, metadata !DIExpression()), !dbg !880
  %11 = call i32 @fill_empty_name(i8* nonnull %4, i16 zeroext %10) #9, !dbg !893
  %12 = trunc i32 %11 to i16, !dbg !893
  call void @llvm.dbg.value(metadata i16 %12, metadata !875, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata i8* %4, metadata !705, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i16 %12, metadata !706, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i16 0, metadata !707, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata [20 x i8]* @fill_listing_app_param.parameters, metadata !708, metadata !DIExpression()) #8, !dbg !898
  %13 = add i32 %11, 1, !dbg !899
  %14 = and i32 %11, 65535, !dbg !900
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 %14, !dbg !900
  store i8 76, i8* %15, align 1, !dbg !901, !tbaa !256
  %16 = add i32 %11, 2, !dbg !902
  %17 = and i32 %13, 65535, !dbg !903
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 %17, !dbg !903
  store i8 0, i8* %18, align 1, !dbg !904, !tbaa !256
  %19 = add i32 %11, 3, !dbg !905
  %20 = and i32 %16, 65535, !dbg !906
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 %20, !dbg !906
  store i8 16, i8* %21, align 1, !dbg !907, !tbaa !256
  call void @llvm.dbg.value(metadata i16 0, metadata !707, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata i16 0, metadata !707, metadata !DIExpression()), !dbg !897
  %22 = and i32 %19, 65535
  %23 = getelementptr [100 x i8], [100 x i8]* %3, i32 0, i32 %22, !dbg !908
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fill_listing_app_param.parameters, i32 0, i32 0), i32 16, i32 1, i1 false) #8, !dbg !909
  %24 = add i16 %12, 19, !dbg !910
  call void @llvm.dbg.value(metadata i16 %24, metadata !875, metadata !DIExpression()), !dbg !880
  %25 = zext i16 %24 to i32, !dbg !911
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 %25, !dbg !911
  store i8 0, i8* %26, align 1, !dbg !912, !tbaa !256
  call void @net_store_16(i8* nonnull %4, i16 zeroext 1, i16 zeroext %24) #9, !dbg !913
  %27 = call i32 @rfcomm_send_internal(i16 zeroext %0, i8* nonnull %4, i16 zeroext %24) #9, !dbg !914
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %4) #8, !dbg !915
  ret void, !dbg !915
}

; Function Attrs: optsize
declare i32 @fill_empty_name(i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @obex_parse_header_foreach(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !916 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !921, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i16 %1, metadata !922, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i8* %0, metadata !923, metadata !DIExpression()), !dbg !927
  %3 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !928, !tbaa !256
  %4 = and i8 %3, 64, !dbg !928
  %5 = icmp eq i8 %4, 0, !dbg !928
  %6 = zext i16 %1 to i32
  br i1 %5, label %8, label %7, !dbg !930

; <label>:7:                                      ; preds = %2
  tail call void @put_buf(i8* %0, i32 %6) #9, !dbg !931
  br label %8, !dbg !931

; <label>:8:                                      ; preds = %7, %2
  %9 = ptrtoint i8* %0 to i32
  %10 = icmp eq i16 %1, 0
  br i1 %10, label %84, label %11, !dbg !927

; <label>:11:                                     ; preds = %8
  br label %12

; <label>:12:                                     ; preds = %71, %11
  %13 = phi i8* [ %73, %71 ], [ %0, %11 ]
  %14 = load i8, i8* %13, align 1, !tbaa !256
  br label %15, !dbg !927

; <label>:15:                                     ; preds = %15, %12
  %16 = phi i8 [ %14, %12 ], [ 70, %15 ], !dbg !933
  call void @llvm.dbg.value(metadata i8* %13, metadata !923, metadata !DIExpression()), !dbg !927
  switch i8 %16, label %77 [
    i8 -53, label %17
    i8 74, label %65
    i8 70, label %15
  ], !dbg !935, !llvm.loop !936

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* @profile_debug_enable, align 1, !dbg !939, !tbaa !256
  %19 = and i8 %18, 1, !dbg !939
  %20 = icmp eq i8 %19, 0, !dbg !939
  %21 = getelementptr inbounds i8, i8* %13, i32 4
  br i1 %20, label %22, label %26, !dbg !942

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !943
  %24 = getelementptr inbounds i8, i8* %13, i32 2, !dbg !943
  %25 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !943
  br label %45, !dbg !942

; <label>:26:                                     ; preds = %17
  %27 = load i8, i8* %21, align 1, !dbg !944, !tbaa !256
  %28 = zext i8 %27 to i32, !dbg !944
  %29 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !944
  %30 = load i8, i8* %29, align 1, !dbg !944, !tbaa !256
  %31 = zext i8 %30 to i32, !dbg !944
  %32 = shl nuw nsw i32 %31, 8, !dbg !944
  %33 = or i32 %32, %28, !dbg !944
  %34 = getelementptr inbounds i8, i8* %13, i32 2, !dbg !944
  %35 = load i8, i8* %34, align 1, !dbg !944, !tbaa !256
  %36 = zext i8 %35 to i32, !dbg !944
  %37 = shl nuw nsw i32 %36, 16, !dbg !944
  %38 = or i32 %33, %37, !dbg !944
  %39 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !944
  %40 = load i8, i8* %39, align 1, !dbg !944, !tbaa !256
  %41 = zext i8 %40 to i32, !dbg !944
  %42 = shl nuw i32 %41, 24, !dbg !944
  %43 = or i32 %38, %42, !dbg !944
  %44 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i32 %43) #10, !dbg !944
  br label %45, !dbg !944

; <label>:45:                                     ; preds = %26, %22
  %46 = phi i8* [ %25, %22 ], [ %39, %26 ], !dbg !943
  %47 = phi i8* [ %24, %22 ], [ %34, %26 ], !dbg !943
  %48 = phi i8* [ %23, %22 ], [ %29, %26 ], !dbg !943
  %49 = load i8, i8* %21, align 1, !dbg !943, !tbaa !256
  %50 = zext i8 %49 to i32, !dbg !943
  %51 = load i8, i8* %48, align 1, !dbg !943, !tbaa !256
  %52 = zext i8 %51 to i32, !dbg !943
  %53 = shl nuw nsw i32 %52, 8, !dbg !943
  %54 = or i32 %53, %50, !dbg !943
  %55 = load i8, i8* %47, align 1, !dbg !943, !tbaa !256
  %56 = zext i8 %55 to i32, !dbg !943
  %57 = shl nuw nsw i32 %56, 16, !dbg !943
  %58 = or i32 %54, %57, !dbg !943
  %59 = load i8, i8* %46, align 1, !dbg !943, !tbaa !256
  %60 = zext i8 %59 to i32, !dbg !943
  %61 = shl nuw i32 %60, 24, !dbg !943
  %62 = or i32 %58, %61, !dbg !943
  %63 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !946, !tbaa !195
  %64 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %63, i32 0, i32 9, !dbg !947
  store i32 %62, i32* %64, align 4, !dbg !948, !tbaa !459
  br label %71, !dbg !949

; <label>:65:                                     ; preds = %15
  %66 = load i8, i8* @profile_debug_enable, align 1, !dbg !950, !tbaa !256
  %67 = and i8 %66, 1, !dbg !950
  %68 = icmp eq i8 %67, 0, !dbg !950
  br i1 %68, label %71, label %69, !dbg !952

; <label>:69:                                     ; preds = %65
  %70 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.45, i32 0, i32 0)), !dbg !953
  br label %71, !dbg !953

; <label>:71:                                     ; preds = %69, %65, %45
  %72 = phi i32 [ 5, %45 ], [ 19, %65 ], [ 19, %69 ]
  %73 = getelementptr inbounds i8, i8* %13, i32 %72
  %74 = ptrtoint i8* %73 to i32
  %75 = sub i32 %74, %9
  %76 = icmp slt i32 %75, %6
  br i1 %76, label %12, label %83, !dbg !927, !llvm.loop !936

; <label>:77:                                     ; preds = %15
  %78 = load i8, i8* @profile_debug_enable, align 1, !dbg !955, !tbaa !256
  %79 = and i8 %78, 1, !dbg !955
  %80 = icmp eq i8 %79, 0, !dbg !955
  br i1 %80, label %84, label %81, !dbg !957

; <label>:81:                                     ; preds = %77
  %82 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.46, i32 0, i32 0)), !dbg !958
  br label %84, !dbg !958

; <label>:83:                                     ; preds = %71
  br label %84, !dbg !960

; <label>:84:                                     ; preds = %83, %81, %77, %8
  ret void, !dbg !960
}

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @list_all_phone_books() local_unnamed_addr #0 !dbg !962 {
  call void @llvm.dbg.value(metadata i8 0, metadata !964, metadata !DIExpression()), !dbg !965
  %1 = load i8, i8* @profile_debug_enable, align 1, !dbg !966, !tbaa !256
  %2 = and i8 %1, 1, !dbg !966
  %3 = icmp eq i8 %2, 0, !dbg !966
  br i1 %3, label %9, label %4, !dbg !968

; <label>:4:                                      ; preds = %0
  %5 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !969, !tbaa !195
  %6 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %5, i32 0, i32 11, !dbg !969
  %7 = load i32, i32* %6, align 4, !dbg !969, !tbaa !214
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 %7) #10, !dbg !969
  br label %9, !dbg !969

; <label>:9:                                      ; preds = %4, %0
  %10 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !971, !tbaa !195
  %11 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %10, i32 0, i32 11, !dbg !972
  %12 = load i32, i32* %11, align 4, !dbg !972, !tbaa !214
  switch i32 %12, label %17 [
    i32 5, label %24
    i32 10, label %13
    i32 11, label %14
    i32 13, label %15
    i32 12, label %16
  ], !dbg !973

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8 1, metadata !964, metadata !DIExpression()), !dbg !965
  br label %24, !dbg !974

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8 2, metadata !964, metadata !DIExpression()), !dbg !965
  br label %24, !dbg !976

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8 3, metadata !964, metadata !DIExpression()), !dbg !965
  br label %24, !dbg !977

; <label>:16:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8 4, metadata !964, metadata !DIExpression()), !dbg !965
  br label %24, !dbg !978

; <label>:17:                                     ; preds = %9
  store i32 8, i32* %11, align 4, !dbg !979, !tbaa !214
  %18 = load i8, i8* @profile_debug_enable, align 1, !dbg !980, !tbaa !256
  %19 = and i8 %18, 1, !dbg !980
  %20 = icmp eq i8 %19, 0, !dbg !980
  br i1 %20, label %23, label %21, !dbg !982

; <label>:21:                                     ; preds = %17
  %22 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.47, i32 0, i32 0)), !dbg !983
  br label %23, !dbg !983

; <label>:23:                                     ; preds = %21, %17
  tail call fastcc void @pbap_close() #10, !dbg !985
  br label %31, !dbg !986

; <label>:24:                                     ; preds = %16, %15, %14, %13, %9
  %25 = phi i8 [ 4, %16 ], [ 3, %15 ], [ 2, %14 ], [ 1, %13 ], [ 0, %9 ]
  %26 = phi i32 [ 14, %16 ], [ 12, %15 ], [ 13, %14 ], [ 11, %13 ], [ 10, %9 ]
  call void @llvm.dbg.value(metadata i8 %25, metadata !964, metadata !DIExpression()), !dbg !965
  store i32 %26, i32* %11, align 4, !tbaa !214
  %27 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %10, i32 0, i32 7, !dbg !987
  %28 = load i16, i16* %27, align 2, !dbg !987, !tbaa !217
  %29 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %10, i32 0, i32 9, !dbg !988
  %30 = load i32, i32* %29, align 4, !dbg !988, !tbaa !459
  tail call void @pull_phone_book(i16 zeroext %28, i32 %30, i8 zeroext %25) #10, !dbg !989
  br label %31, !dbg !990

; <label>:31:                                     ; preds = %24, %23
  ret void, !dbg !991
}

; Function Attrs: nounwind optsize
define hidden void @pbap_mutex_malloc() local_unnamed_addr #0 !dbg !993 {
  %1 = load i32, i32* @config_asser, align 4, !dbg !994, !tbaa !998
  %2 = icmp eq i32 %1, 0, !dbg !994
  %3 = load i32*, i32** @opp_buf.0, align 4, !tbaa !225
  %4 = icmp ne i32* %3, null
  br i1 %2, label %9, label %5, !dbg !999

; <label>:5:                                      ; preds = %0
  br i1 %4, label %11, label %6, !dbg !1001

; <label>:6:                                      ; preds = %5
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.17, i32 0, i32 0), i32 597) #10, !dbg !1004
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !1008
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1010
  br label %11, !dbg !1004

; <label>:9:                                      ; preds = %0
  br i1 %4, label %11, label %10, !dbg !1012

; <label>:10:                                     ; preds = %9
  tail call void @p33_soft_reset() #9, !dbg !1015
  br label %11, !dbg !1021

; <label>:11:                                     ; preds = %10, %9, %6, %5
  %12 = load i8*, i8** bitcast (i32** @opp_buf.0 to i8**), align 4, !dbg !1022, !tbaa !225
  %13 = load i32, i32* @opp_buf.1, align 4, !dbg !1023, !tbaa !228
  tail call void @vcard_buffer_init(i8* %12, i32 %13) #9, !dbg !1024
  %14 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1025, !tbaa !195
  %15 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %14, i32 0, i32 14, !dbg !1027
  %16 = load i8*, i8** %15, align 4, !dbg !1027, !tbaa !234
  %17 = icmp eq i8* %16, null, !dbg !1028
  br i1 %17, label %18, label %30, !dbg !1029

; <label>:18:                                     ; preds = %11
  %19 = tail call i8* @vcard_malloc(i32 1024) #9, !dbg !1030
  %20 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1032, !tbaa !195
  %21 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %20, i32 0, i32 14, !dbg !1033
  store i8* %19, i8** %21, align 4, !dbg !1034, !tbaa !234
  %22 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %20, i32 0, i32 5, !dbg !1035
  store i16 1024, i16* %22, align 2, !dbg !1036, !tbaa !231
  %23 = icmp ne i8* %19, null
  br i1 %2, label %28, label %24, !dbg !1037

; <label>:24:                                     ; preds = %18
  br i1 %23, label %30, label %25, !dbg !1040

; <label>:25:                                     ; preds = %24
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.17, i32 0, i32 0), i32 602) #10, !dbg !1044
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !1048
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1050
  br label %30, !dbg !1044

; <label>:28:                                     ; preds = %18
  br i1 %23, label %30, label %29, !dbg !1052

; <label>:29:                                     ; preds = %28
  tail call void @p33_soft_reset() #9, !dbg !1055
  br label %30, !dbg !1060

; <label>:30:                                     ; preds = %29, %28, %25, %24, %11
  tail call void @list_all_phone_books() #10, !dbg !1061
  ret void, !dbg !1062
}

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vcard_buffer_init(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @vcard_malloc(i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @pbap_mutex_free() local_unnamed_addr #0 !dbg !1063 {
  %1 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1064, !tbaa !195
  %2 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 14, !dbg !1066
  %3 = load i8*, i8** %2, align 4, !dbg !1066, !tbaa !234
  %4 = icmp eq i8* %3, null, !dbg !1064
  br i1 %4, label %8, label %5, !dbg !1067

; <label>:5:                                      ; preds = %0
  tail call void @vcard_free(i8* nonnull %3) #9, !dbg !1068
  %6 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1070, !tbaa !195
  %7 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %6, i32 0, i32 14, !dbg !1071
  store i8* null, i8** %7, align 4, !dbg !1072, !tbaa !234
  br label %8, !dbg !1073

; <label>:8:                                      ; preds = %5, %0
  ret void, !dbg !1074
}

; Function Attrs: optsize
declare void @vcard_free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @opp_parse_raw_data(i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1075 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1077, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i16 %1, metadata !1078, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* null, metadata !1080, metadata !DIExpression()), !dbg !1089
  %3 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1090, !tbaa !195
  %4 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %3, i32 0, i32 8, !dbg !1092
  %5 = load i16, i16* %4, align 4, !dbg !1092, !tbaa !318
  %6 = icmp eq i16 %5, 0, !dbg !1093
  br i1 %6, label %7, label %33, !dbg !1094

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @prase_put_packet(i8* %0, i16 zeroext %1, i8 zeroext 0) #9, !dbg !1095
  %9 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1097, !tbaa !195
  %10 = zext i16 %1 to i32, !dbg !1098
  %11 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 8, !dbg !1099
  %12 = sub i32 %8, %10, !dbg !1100
  %13 = trunc i32 %12 to i16, !dbg !1100
  store i16 %13, i16* %11, align 4, !dbg !1100, !tbaa !318
  %14 = load i8, i8* @profile_debug_enable, align 1, !dbg !1101, !tbaa !256
  %15 = and i8 %14, 1, !dbg !1101
  %16 = icmp eq i8 %15, 0, !dbg !1101
  br i1 %16, label %23, label %17, !dbg !1103

; <label>:17:                                     ; preds = %7
  %18 = and i32 %12, 65535, !dbg !1104
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i32 %18) #10, !dbg !1104
  %20 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  %21 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %20, i32 0, i32 8
  %22 = load i16, i16* %21, align 4, !tbaa !318
  br label %23, !dbg !1104

; <label>:23:                                     ; preds = %17, %7
  %24 = phi i16 [ %13, %7 ], [ %22, %17 ], !dbg !1106
  %25 = phi %struct.opp_channel_info* [ %9, %7 ], [ %20, %17 ], !dbg !1108
  %26 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %25, i32 0, i32 4, !dbg !1109
  store i16 %1, i16* %26, align 4, !dbg !1110, !tbaa !1111
  %27 = icmp eq i16 %24, 0, !dbg !1112
  br i1 %27, label %59, label %28, !dbg !1113

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %25, i32 0, i32 14, !dbg !1114
  %30 = load i8*, i8** %29, align 4, !dbg !1114, !tbaa !234
  %31 = icmp eq i8* %30, null, !dbg !1117
  br i1 %31, label %59, label %32, !dbg !1118

; <label>:32:                                     ; preds = %28
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %30, i8* %0, i32 %10, i32 1, i1 false), !dbg !1119
  br label %248, !dbg !1121

; <label>:33:                                     ; preds = %2
  %34 = sub i16 %5, %1, !dbg !1122
  store i16 %34, i16* %4, align 4, !dbg !1122, !tbaa !318
  %35 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %3, i32 0, i32 14, !dbg !1124
  %36 = load i8*, i8** %35, align 4, !dbg !1124, !tbaa !234
  %37 = icmp eq i8* %36, null, !dbg !1126
  br i1 %37, label %248, label %38, !dbg !1127

; <label>:38:                                     ; preds = %33
  %39 = zext i16 %1 to i32, !dbg !1128
  %40 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %3, i32 0, i32 4, !dbg !1129
  %41 = load i16, i16* %40, align 4, !dbg !1129, !tbaa !1111
  %42 = zext i16 %41 to i32, !dbg !1131
  %43 = getelementptr inbounds i8, i8* %36, i32 %42, !dbg !1131
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %0, i32 %39, i32 1, i1 false), !dbg !1132
  %44 = load i16, i16* %40, align 4, !dbg !1133, !tbaa !1111
  %45 = add i16 %44, %1, !dbg !1133
  store i16 %45, i16* %40, align 4, !dbg !1133, !tbaa !1111
  %46 = load i16, i16* %4, align 4, !dbg !1134, !tbaa !318
  %47 = icmp eq i16 %46, 0, !dbg !1136
  br i1 %47, label %48, label %248, !dbg !1137

; <label>:48:                                     ; preds = %38
  %49 = load i8, i8* @profile_debug_enable, align 1, !dbg !1138, !tbaa !256
  %50 = and i8 %49, 1, !dbg !1138
  %51 = icmp eq i8 %50, 0, !dbg !1138
  br i1 %51, label %55, label %52, !dbg !1141

; <label>:52:                                     ; preds = %48
  %53 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.55, i32 0, i32 0)), !dbg !1142
  %54 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  br label %55, !dbg !1142

; <label>:55:                                     ; preds = %52, %48
  %56 = phi %struct.opp_channel_info* [ %3, %48 ], [ %54, %52 ], !dbg !1144
  %57 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %56, i32 0, i32 14, !dbg !1146
  %58 = load i8*, i8** %57, align 4, !dbg !1146, !tbaa !234
  call void @llvm.dbg.value(metadata i8* %58, metadata !1080, metadata !DIExpression()), !dbg !1089
  br label %59, !dbg !1147

; <label>:59:                                     ; preds = %55, %28, %23
  %60 = phi %struct.opp_channel_info* [ %25, %28 ], [ %25, %23 ], [ %56, %55 ], !dbg !1148
  %61 = phi i8* [ %0, %28 ], [ %0, %23 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1080, metadata !DIExpression()), !dbg !1089
  %62 = icmp eq i8* %61, null, !dbg !1149
  br i1 %62, label %248, label %63, !dbg !1151

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %60, i32 0, i32 4, !dbg !1152
  %65 = load i16, i16* %64, align 4, !dbg !1152, !tbaa !1111
  call void @llvm.dbg.value(metadata i16 %65, metadata !1078, metadata !DIExpression()), !dbg !1088
  %66 = load i8, i8* %61, align 1, !dbg !1153, !tbaa !256
  switch i8 %66, label %248 [
    i8 -128, label %67
    i8 -127, label %80
    i8 2, label %91
    i8 -126, label %118
    i8 -64, label %156
    i8 -61, label %162
    i8 -96, label %168
    i8 -112, label %212
    i8 -60, label %241
    i8 -48, label %241
    i8 -58, label %241
  ], !dbg !1154

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %60, i32 0, i32 10, !dbg !1155
  store i32 0, i32* %68, align 4, !dbg !1156, !tbaa !223
  %69 = load i8, i8* @profile_debug_enable, align 1, !dbg !1157, !tbaa !256
  %70 = and i8 %69, 1, !dbg !1157
  %71 = icmp eq i8 %70, 0, !dbg !1157
  br i1 %71, label %75, label %72, !dbg !1159

; <label>:72:                                     ; preds = %67
  %73 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.54, i32 0, i32 0)), !dbg !1160
  %74 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  br label %75, !dbg !1160

; <label>:75:                                     ; preds = %72, %67
  %76 = phi %struct.opp_channel_info* [ %60, %67 ], [ %74, %72 ], !dbg !1162
  %77 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %76, i32 0, i32 7, !dbg !1163
  %78 = load i16, i16* %77, align 2, !dbg !1163, !tbaa !217
  %79 = tail call zeroext i8 @send_accept_opp_connection(i16 zeroext %78) #9, !dbg !1164
  br label %248, !dbg !1165

; <label>:80:                                     ; preds = %63
  %81 = load i8, i8* @profile_debug_enable, align 1, !dbg !1166, !tbaa !256
  %82 = and i8 %81, 1, !dbg !1166
  %83 = icmp eq i8 %82, 0, !dbg !1166
  br i1 %83, label %87, label %84, !dbg !1168

; <label>:84:                                     ; preds = %80
  %85 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.53, i32 0, i32 0)), !dbg !1169
  %86 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  br label %87, !dbg !1169

; <label>:87:                                     ; preds = %84, %80
  %88 = phi %struct.opp_channel_info* [ %60, %80 ], [ %86, %84 ], !dbg !1171
  %89 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %88, i32 0, i32 7, !dbg !1172
  %90 = load i16, i16* %89, align 2, !dbg !1172, !tbaa !217
  tail call void @send_accept_disconnection(i16 zeroext %90) #9, !dbg !1173
  br label %248, !dbg !1174

; <label>:91:                                     ; preds = %63
  %92 = tail call i32 @prase_put_packet(i8* nonnull %61, i16 zeroext %65, i8 zeroext 72) #9, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %92, metadata !1079, metadata !DIExpression()), !dbg !1176
  %93 = getelementptr inbounds i8, i8* %61, i32 %92, !dbg !1177
  %94 = load i8, i8* %93, align 1, !dbg !1177, !tbaa !256
  %95 = icmp eq i8 %94, 72, !dbg !1179
  br i1 %95, label %98, label %96, !dbg !1180

; <label>:96:                                     ; preds = %91
  %97 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  br label %114, !dbg !1180

; <label>:98:                                     ; preds = %91
  %99 = add nsw i32 %92, 1, !dbg !1181
  %100 = add nsw i32 %92, 2, !dbg !1181
  %101 = getelementptr inbounds i8, i8* %61, i32 %100, !dbg !1181
  %102 = load i8, i8* %101, align 1, !dbg !1181, !tbaa !256
  %103 = zext i8 %102 to i32, !dbg !1181
  %104 = getelementptr inbounds i8, i8* %61, i32 %99, !dbg !1181
  %105 = load i8, i8* %104, align 1, !dbg !1181, !tbaa !256
  %106 = zext i8 %105 to i32, !dbg !1181
  %107 = shl nuw nsw i32 %106, 8, !dbg !1181
  %108 = or i32 %107, %103, !dbg !1181
  %109 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1183, !tbaa !195
  %110 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %109, i32 0, i32 10, !dbg !1184
  %111 = load i32, i32* %110, align 4, !dbg !1185, !tbaa !223
  %112 = add i32 %111, -3, !dbg !1186
  %113 = add i32 %112, %108, !dbg !1185
  store i32 %113, i32* %110, align 4, !dbg !1185, !tbaa !223
  br label %114, !dbg !1187

; <label>:114:                                    ; preds = %98, %96
  %115 = phi %struct.opp_channel_info* [ %97, %96 ], [ %109, %98 ], !dbg !1188
  %116 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %115, i32 0, i32 7, !dbg !1189
  %117 = load i16, i16* %116, align 2, !dbg !1189, !tbaa !217
  tail call void @send_accept_opp_put_cmd(i16 zeroext %117) #9, !dbg !1190
  br label %248, !dbg !1191

; <label>:118:                                    ; preds = %63
  %119 = tail call i32 @prase_put_packet(i8* nonnull %61, i16 zeroext %65, i8 zeroext 73) #9, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %119, metadata !1079, metadata !DIExpression()), !dbg !1176
  %120 = getelementptr inbounds i8, i8* %61, i32 %119, !dbg !1193
  %121 = load i8, i8* %120, align 1, !dbg !1193, !tbaa !256
  %122 = icmp eq i8 %121, 73, !dbg !1195
  br i1 %122, label %125, label %123, !dbg !1196

; <label>:123:                                    ; preds = %118
  %124 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  br label %141, !dbg !1196

; <label>:125:                                    ; preds = %118
  %126 = add nsw i32 %119, 1, !dbg !1197
  %127 = add nsw i32 %119, 2, !dbg !1197
  %128 = getelementptr inbounds i8, i8* %61, i32 %127, !dbg !1197
  %129 = load i8, i8* %128, align 1, !dbg !1197, !tbaa !256
  %130 = zext i8 %129 to i32, !dbg !1197
  %131 = getelementptr inbounds i8, i8* %61, i32 %126, !dbg !1197
  %132 = load i8, i8* %131, align 1, !dbg !1197, !tbaa !256
  %133 = zext i8 %132 to i32, !dbg !1197
  %134 = shl nuw nsw i32 %133, 8, !dbg !1197
  %135 = or i32 %134, %130, !dbg !1197
  %136 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1199, !tbaa !195
  %137 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %136, i32 0, i32 10, !dbg !1200
  %138 = load i32, i32* %137, align 4, !dbg !1201, !tbaa !223
  %139 = add i32 %138, -3, !dbg !1202
  %140 = add i32 %139, %135, !dbg !1201
  store i32 %140, i32* %137, align 4, !dbg !1201, !tbaa !223
  br label %141, !dbg !1203

; <label>:141:                                    ; preds = %125, %123
  %142 = phi %struct.opp_channel_info* [ %124, %123 ], [ %136, %125 ], !dbg !1204
  %143 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %142, i32 0, i32 7, !dbg !1205
  %144 = load i16, i16* %143, align 2, !dbg !1205, !tbaa !217
  tail call void @send_success_ending(i16 zeroext %144) #9, !dbg !1206
  %145 = load i8, i8* @profile_debug_enable, align 1, !dbg !1207, !tbaa !256
  %146 = and i8 %145, 1, !dbg !1207
  %147 = icmp eq i8 %146, 0, !dbg !1207
  br i1 %147, label %153, label %148, !dbg !1209

; <label>:148:                                    ; preds = %141
  %149 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1210, !tbaa !195
  %150 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %149, i32 0, i32 10, !dbg !1210
  %151 = load i32, i32* %150, align 4, !dbg !1210, !tbaa !223
  %152 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i32 %151) #10, !dbg !1210
  br label %153, !dbg !1210

; <label>:153:                                    ; preds = %148, %141
  %154 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1212, !tbaa !195
  %155 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %154, i32 0, i32 10, !dbg !1213
  store i32 0, i32* %155, align 4, !dbg !1214, !tbaa !223
  br label %248, !dbg !1215

; <label>:156:                                    ; preds = %63
  %157 = load i8, i8* @profile_debug_enable, align 1, !dbg !1216, !tbaa !256
  %158 = and i8 %157, 1, !dbg !1216
  %159 = icmp eq i8 %158, 0, !dbg !1216
  br i1 %159, label %248, label %160, !dbg !1218

; <label>:160:                                    ; preds = %156
  %161 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.52, i32 0, i32 0)), !dbg !1219
  br label %248, !dbg !1219

; <label>:162:                                    ; preds = %63
  %163 = load i8, i8* @profile_debug_enable, align 1, !dbg !1221, !tbaa !256
  %164 = and i8 %163, 1, !dbg !1221
  %165 = icmp eq i8 %164, 0, !dbg !1221
  br i1 %165, label %248, label %166, !dbg !1223

; <label>:166:                                    ; preds = %162
  %167 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @str.51, i32 0, i32 0)), !dbg !1224
  br label %248, !dbg !1224

; <label>:168:                                    ; preds = %63
  %169 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %60, i32 0, i32 11, !dbg !1226
  %170 = load i32, i32* %169, align 4, !dbg !1226, !tbaa !214
  switch i32 %170, label %248 [
    i32 0, label %171
    i32 15, label %209
    i32 14, label %190
    i32 5, label %174
    i32 12, label %190
    i32 9, label %190
    i32 10, label %190
    i32 11, label %190
    i32 13, label %190
  ], !dbg !1227

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %60, i32 0, i32 7, !dbg !1228
  %173 = load i16, i16* %172, align 2, !dbg !1228, !tbaa !217
  tail call void @rfcomm_disconnect_internal(i16 zeroext %173) #9, !dbg !1229
  br label %248, !dbg !1230

; <label>:174:                                    ; preds = %168
  %175 = load i8, i8* @profile_debug_enable, align 1, !dbg !1231, !tbaa !256
  %176 = and i8 %175, 1, !dbg !1231
  %177 = icmp eq i8 %176, 0, !dbg !1231
  br i1 %177, label %180, label %178, !dbg !1233

; <label>:178:                                    ; preds = %174
  %179 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.50, i32 0, i32 0)), !dbg !1234
  br label %180, !dbg !1234

; <label>:180:                                    ; preds = %178, %174
  %181 = getelementptr inbounds i8, i8* %61, i32 7, !dbg !1236
  %182 = add i16 %65, -7, !dbg !1237
  tail call void @obex_parse_header_foreach(i8* %181, i16 zeroext %182) #10, !dbg !1238
  %183 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1239, !tbaa !195
  %184 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %183, i32 0, i32 2, !dbg !1241
  %185 = load i8, i8* %184, align 2, !dbg !1241, !tbaa !1242
  %186 = icmp eq i8 %185, 2, !dbg !1243
  br i1 %186, label %187, label %189, !dbg !1244

; <label>:187:                                    ; preds = %180
  %188 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %183, i32 0, i32 11, !dbg !1245
  store i32 11, i32* %188, align 4, !dbg !1247, !tbaa !214
  br label %189, !dbg !1248

; <label>:189:                                    ; preds = %187, %180
  tail call void @pbap_mutex_malloc() #10, !dbg !1249
  br label %248

; <label>:190:                                    ; preds = %168, %168, %168, %168, %168, %168
  %191 = load i8, i8* @profile_debug_enable, align 1, !dbg !1250, !tbaa !256
  %192 = and i8 %191, 1, !dbg !1250
  %193 = icmp eq i8 %192, 0, !dbg !1250
  br i1 %193, label %196, label %194, !dbg !1252

; <label>:194:                                    ; preds = %190
  %195 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.49, i32 0, i32 0)), !dbg !1253
  br label %196, !dbg !1253

; <label>:196:                                    ; preds = %194, %190
  %197 = tail call i32 @prase_put_packet(i8* nonnull %61, i16 zeroext %65, i8 zeroext 73) #9, !dbg !1255
  %198 = trunc i32 %197 to i16, !dbg !1255
  call void @llvm.dbg.value(metadata i16 %198, metadata !1085, metadata !DIExpression()), !dbg !1256
  %199 = icmp eq i16 %198, 0, !dbg !1257
  br i1 %199, label %208, label %200, !dbg !1259

; <label>:200:                                    ; preds = %196
  %201 = and i32 %197, 65535, !dbg !1260
  %202 = getelementptr inbounds i8, i8* %61, i32 %201, !dbg !1262
  %203 = getelementptr inbounds i8, i8* %202, i32 3, !dbg !1263
  %204 = zext i16 %65 to i32, !dbg !1264
  %205 = add nsw i32 %204, -3, !dbg !1265
  %206 = sub nsw i32 %205, %201, !dbg !1266
  %207 = tail call i32 @contacts_svc_vcard_foreach(i8* %203, i32 %206, i32 (i8*, i8*)* null, i8 zeroext 1) #9, !dbg !1267
  br label %208, !dbg !1268

; <label>:208:                                    ; preds = %200, %196
  tail call void @list_all_phone_books() #10, !dbg !1269
  br label %248, !dbg !1270

; <label>:209:                                    ; preds = %168
  %210 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %60, i32 0, i32 7, !dbg !1271
  %211 = load i16, i16* %210, align 2, !dbg !1271, !tbaa !217
  tail call void @rfcomm_disconnect_internal(i16 zeroext %211) #9, !dbg !1272
  br label %248, !dbg !1273

; <label>:212:                                    ; preds = %63
  %213 = load i8, i8* @profile_debug_enable, align 1, !dbg !1274, !tbaa !256
  %214 = and i8 %213, 1, !dbg !1274
  %215 = icmp eq i8 %214, 0, !dbg !1274
  br i1 %215, label %219, label %216, !dbg !1276

; <label>:216:                                    ; preds = %212
  %217 = zext i16 %65 to i32, !dbg !1277
  %218 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i32 %217) #10, !dbg !1277
  br label %219, !dbg !1277

; <label>:219:                                    ; preds = %216, %212
  %220 = tail call i32 @prase_put_packet(i8* nonnull %61, i16 zeroext %65, i8 zeroext 72) #9, !dbg !1279
  %221 = trunc i32 %220 to i16, !dbg !1279
  call void @llvm.dbg.value(metadata i16 %221, metadata !1086, metadata !DIExpression()), !dbg !1280
  %222 = icmp eq i16 %221, 0, !dbg !1281
  br i1 %222, label %231, label %223, !dbg !1283

; <label>:223:                                    ; preds = %219
  %224 = and i32 %220, 65535, !dbg !1284
  %225 = getelementptr inbounds i8, i8* %61, i32 %224, !dbg !1286
  %226 = getelementptr inbounds i8, i8* %225, i32 3, !dbg !1287
  %227 = zext i16 %65 to i32, !dbg !1288
  %228 = add nsw i32 %227, -3, !dbg !1289
  %229 = sub nsw i32 %228, %224, !dbg !1290
  %230 = tail call i32 @contacts_svc_vcard_foreach(i8* %226, i32 %229, i32 (i8*, i8*)* null, i8 zeroext 0) #9, !dbg !1291
  br label %231, !dbg !1292

; <label>:231:                                    ; preds = %223, %219
  %232 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1293, !tbaa !195
  %233 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %232, i32 0, i32 11, !dbg !1295
  %234 = load i32, i32* %233, align 4, !dbg !1295, !tbaa !214
  %235 = icmp eq i32 %234, 0, !dbg !1296
  br i1 %235, label %248, label %236, !dbg !1297

; <label>:236:                                    ; preds = %231
  %237 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %232, i32 0, i32 7, !dbg !1298
  %238 = load i16, i16* %237, align 2, !dbg !1298, !tbaa !217
  %239 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %232, i32 0, i32 9, !dbg !1300
  %240 = load i32, i32* %239, align 4, !dbg !1300, !tbaa !459
  tail call void @send_continue_respone(i16 zeroext %238, i32 %240) #9, !dbg !1301
  br label %248, !dbg !1302

; <label>:241:                                    ; preds = %63, %63, %63
  %242 = load i8, i8* @profile_debug_enable, align 1, !dbg !1303, !tbaa !256
  %243 = and i8 %242, 1, !dbg !1303
  %244 = icmp eq i8 %243, 0, !dbg !1303
  br i1 %244, label %247, label %245, !dbg !1305

; <label>:245:                                    ; preds = %241
  %246 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.48, i32 0, i32 0)), !dbg !1306
  br label %247, !dbg !1306

; <label>:247:                                    ; preds = %245, %241
  tail call void @list_all_phone_books() #10, !dbg !1308
  br label %248, !dbg !1309

; <label>:248:                                    ; preds = %247, %236, %231, %209, %208, %189, %171, %168, %166, %162, %160, %156, %153, %114, %87, %75, %63, %59, %38, %33, %32
  ret void, !dbg !1310
}

; Function Attrs: optsize
declare i32 @prase_put_packet(i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @send_accept_opp_connection(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @send_accept_disconnection(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @send_accept_opp_put_cmd(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @send_success_ending(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rfcomm_disconnect_internal(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @contacts_svc_vcard_foreach(i8*, i32, i32 (i8*, i8*)*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @send_continue_respone(i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @opp_cmd_io_ctrl(i8*, i32, i32) local_unnamed_addr #0 !dbg !1312 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1316, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i32 %1, metadata !1317, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %2, metadata !1318, metadata !DIExpression()), !dbg !1325
  %4 = load i8, i8* @profile_debug_enable, align 1, !dbg !1326, !tbaa !256
  %5 = and i8 %4, 1, !dbg !1326
  %6 = icmp eq i8 %5, 0, !dbg !1326
  br i1 %6, label %9, label %7, !dbg !1328

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0), i32 %1) #10, !dbg !1329
  br label %9, !dbg !1329

; <label>:9:                                      ; preds = %7, %3
  %10 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1331, !tbaa !195
  %11 = icmp eq %struct.opp_channel_info* %10, null, !dbg !1332
  br i1 %11, label %12, label %26, !dbg !1333

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* null, metadata !1319, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i16 4172, metadata !1322, metadata !DIExpression()), !dbg !1335
  %13 = tail call i8* @malloc(i32 4172) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %13, metadata !1319, metadata !DIExpression()), !dbg !1334
  %14 = load i32, i32* @config_asser, align 4, !dbg !1337, !tbaa !998
  %15 = icmp eq i32 %14, 0, !dbg !1337
  %16 = icmp ne i8* %13, null
  br i1 %15, label %21, label %17, !dbg !1341

; <label>:17:                                     ; preds = %12
  br i1 %16, label %23, label %18, !dbg !1343

; <label>:18:                                     ; preds = %17
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.17, i32 0, i32 0), i32 846) #10, !dbg !1346
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0)) #10, !dbg !1350
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1352
  br label %23, !dbg !1346

; <label>:21:                                     ; preds = %12
  br i1 %16, label %23, label %22, !dbg !1354

; <label>:22:                                     ; preds = %21
  tail call void @p33_soft_reset() #9, !dbg !1357
  br label %23, !dbg !1362

; <label>:23:                                     ; preds = %22, %21, %18, %17
  tail call void @llvm.memset.p0i8.i32(i8* %13, i8 0, i32 4172, i32 1, i1 false), !dbg !1363
  %24 = bitcast i8* %13 to %struct.opp_channel_info*, !dbg !1364
  %25 = getelementptr inbounds i8, i8* %13, i32 76, !dbg !1365
  tail call void @pbap_init(%struct.opp_channel_info* %24, i8* %25, i32 4096) #10, !dbg !1366
  br label %26, !dbg !1367

; <label>:26:                                     ; preds = %23, %9
  switch i32 %1, label %54 [
    i32 1, label %53
    i32 2, label %27
    i32 3, label %30
    i32 4, label %30
    i32 5, label %52
  ], !dbg !1368

; <label>:27:                                     ; preds = %26
  %28 = bitcast i8* %0 to [6 x i8]*, !dbg !1369
  %29 = trunc i32 %2 to i8, !dbg !1371
  tail call void @rfcomm_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @obex_packet_handler, [6 x i8]* %28, i8 zeroext %29) #9, !dbg !1372
  br label %53, !dbg !1373

; <label>:30:                                     ; preds = %26, %26
  %31 = trunc i32 %2 to i8, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %0, metadata !1375, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i8 %31, metadata !1381, metadata !DIExpression()), !dbg !1384
  %32 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1385, !tbaa !195
  %33 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %32, i32 0, i32 11, !dbg !1387
  %34 = load i32, i32* %33, align 4, !dbg !1387, !tbaa !214
  %35 = icmp eq i32 %34, 0, !dbg !1388
  br i1 %35, label %36, label %46, !dbg !1389

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %32, i32 0, i32 7, !dbg !1390
  %38 = load i16, i16* %37, align 2, !dbg !1390, !tbaa !217
  %39 = icmp eq i16 %38, 0, !dbg !1392
  br i1 %39, label %40, label %46, !dbg !1393

; <label>:40:                                     ; preds = %36
  store i32 2, i32* %33, align 4, !dbg !1395, !tbaa !214
  %41 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %32, i32 0, i32 2, !dbg !1397
  store i8 %31, i8* %41, align 2, !dbg !1398, !tbaa !1242
  %42 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !1399, !tbaa !1401
  %43 = icmp eq i32 (i8*, i32, i32)* %42, null, !dbg !1403
  br i1 %43, label %53, label %44, !dbg !1404

; <label>:44:                                     ; preds = %40
  %45 = tail call i32 %42(i8* %0, i32 0, i32 4399) #9, !dbg !1405
  br label %53, !dbg !1407

; <label>:46:                                     ; preds = %36, %30
  %47 = load i8, i8* @profile_debug_enable, align 1, !dbg !1408, !tbaa !256
  %48 = and i8 %47, 1, !dbg !1408
  %49 = icmp eq i8 %48, 0, !dbg !1408
  br i1 %49, label %53, label %50, !dbg !1411

; <label>:50:                                     ; preds = %46
  %51 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.56, i32 0, i32 0)) #8, !dbg !1412
  br label %53, !dbg !1412

; <label>:52:                                     ; preds = %26
  tail call fastcc void @pbap_close() #10, !dbg !1414
  br label %53, !dbg !1415

; <label>:53:                                     ; preds = %52, %50, %46, %44, %40, %27, %26
  br label %54, !dbg !1416

; <label>:54:                                     ; preds = %53, %26
  %55 = phi i32 [ 0, %53 ], [ -1001, %26 ]
  ret i32 %55, !dbg !1417
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #5

; Function Attrs: optsize
declare void @rfcomm_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, [6 x i8]*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @pbap_close() unnamed_addr #0 !dbg !1418 {
  %1 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1419, !tbaa !195
  %2 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 11, !dbg !1421
  %3 = load i32, i32* %2, align 4, !dbg !1421, !tbaa !214
  switch i32 %3, label %4 [
    i32 0, label %26
    i32 15, label %26
  ], !dbg !1422

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %1, i32 0, i32 7, !dbg !1423
  %6 = load i16, i16* %5, align 2, !dbg !1423, !tbaa !217
  %7 = icmp eq i16 %6, 0, !dbg !1425
  br i1 %7, label %26, label %8, !dbg !1426

; <label>:8:                                      ; preds = %4
  tail call void @send_abort_cmd(i16 zeroext %6) #9, !dbg !1428
  %9 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !dbg !1431, !tbaa !195
  %10 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %9, i32 0, i32 7, !dbg !1433
  %11 = load i16, i16* %10, align 2, !dbg !1433, !tbaa !217
  %12 = tail call i32 @is_rfcomm_other_conn(i16 zeroext %11) #9, !dbg !1434
  %13 = icmp eq i32 %12, 0, !dbg !1434
  %14 = load %struct.opp_channel_info*, %struct.opp_channel_info** @opp_info, align 4, !tbaa !195
  br i1 %13, label %20, label %15, !dbg !1435

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %14, i32 0, i32 7, !dbg !1436
  %17 = load i16, i16* %16, align 2, !dbg !1436, !tbaa !217
  %18 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %14, i32 0, i32 9, !dbg !1438
  %19 = load i32, i32* %18, align 4, !dbg !1438, !tbaa !459
  tail call void @pbap_disconnect(i16 zeroext %17, i32 %19) #10, !dbg !1439
  br label %26, !dbg !1440

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %14, i32 0, i32 11, !dbg !1441
  store i32 15, i32* %21, align 4, !dbg !1443, !tbaa !214
  %22 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %14, i32 0, i32 7, !dbg !1444
  %23 = load i16, i16* %22, align 2, !dbg !1444, !tbaa !217
  %24 = getelementptr inbounds %struct.opp_channel_info, %struct.opp_channel_info* %14, i32 0, i32 9, !dbg !1445
  %25 = load i32, i32* %24, align 4, !dbg !1445, !tbaa !459
  tail call void @pbap_disconnect(i16 zeroext %23, i32 %25) #10, !dbg !1446
  br label %26

; <label>:26:                                     ; preds = %20, %15, %4, %0, %0
  ret void, !dbg !1447
}

; Function Attrs: optsize
declare void @send_abort_cmd(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @is_rfcomm_other_conn(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #3

; Function Attrs: optsize
declare void @rfcomm_accept_connection_internal(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pbap_close_status_update_to_user(...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!179, !180}
!llvm.ident = !{!181}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !177, line: 190, type: !178, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !154)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/opp.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !24, !37, !59, !65, !75, !86}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/opp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!8 = !DIEnumerator(name: "PBAP_NOT_USE", value: 0)
!9 = !DIEnumerator(name: "PBAP_READY_OPEN_RFCOMM", value: 1)
!10 = !DIEnumerator(name: "PBAP_WILL_OPEN_RFCOMM", value: 2)
!11 = !DIEnumerator(name: "PBAP_WILL_SENT_CONNECT", value: 3)
!12 = !DIEnumerator(name: "PBAP_WILL_SENT_GET_CMD", value: 4)
!13 = !DIEnumerator(name: "PBAP_WILL_SENT_SETROOTPATH", value: 5)
!14 = !DIEnumerator(name: "PBAP_WILL_SENT_TELECOM_PATH", value: 6)
!15 = !DIEnumerator(name: "PBAP_WILL_SENT_SETFOLDER_PATH", value: 7)
!16 = !DIEnumerator(name: "PBAP_WILL_SENT_GET_VCARD", value: 8)
!17 = !DIEnumerator(name: "PBAP_WAIT_VCARD_RESPONSE", value: 9)
!18 = !DIEnumerator(name: "PBAP_WAIT_PHONEPB_RESPONSE", value: 10)
!19 = !DIEnumerator(name: "PBAP_WAIT_SIMPB_RESPONSE", value: 11)
!20 = !DIEnumerator(name: "PBAP_WAIT_ICH_RESPONSE", value: 12)
!21 = !DIEnumerator(name: "PBAP_WAIT_OCH_RESPONSE", value: 13)
!22 = !DIEnumerator(name: "PBAP_WAIT_MCH_RESPONSE", value: 14)
!23 = !DIEnumerator(name: "PBAP_WILL_SENT_DISCONNECT", value: 15)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 6, size: 32, elements: !26)
!25 = !DIFile(filename: "../btstack/Profile/include/bredr/obex.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!27 = !DIEnumerator(name: "OBEX_OPCODE_CONNECT", value: 128)
!28 = !DIEnumerator(name: "OBEX_OPCODE_DISCONNECT", value: 129)
!29 = !DIEnumerator(name: "OBEX_OPCODE_PUT", value: 2)
!30 = !DIEnumerator(name: "OBEX_OPCODE_FINAL_PUT", value: 130)
!31 = !DIEnumerator(name: "OBEX_OPCODE_GET", value: 3)
!32 = !DIEnumerator(name: "OBEX_OPCODE_FINAL_GET", value: 131)
!33 = !DIEnumerator(name: "OBEX_OPCODE_SETPATH", value: 133)
!34 = !DIEnumerator(name: "OBEX_OPCODE_ACTION", value: 134)
!35 = !DIEnumerator(name: "OBEX_OPCODE_SESSION", value: 135)
!36 = !DIEnumerator(name: "OBEX_OPCODE_ABORT", value: 255)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 62, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!39 = !DIEnumerator(name: "OBEX_HEADER_COUNT", value: 192)
!40 = !DIEnumerator(name: "OBEX_HEADER_OBJNAME", value: 1)
!41 = !DIEnumerator(name: "OBEX_HEADER_TYPE", value: 66)
!42 = !DIEnumerator(name: "OBEX_HEADER_LENGTH", value: 195)
!43 = !DIEnumerator(name: "OBEX_HEADER_TIME", value: 68)
!44 = !DIEnumerator(name: "OBEX_HEADER_DESCRIPTION", value: 5)
!45 = !DIEnumerator(name: "OBEX_HEADER_TARGET", value: 70)
!46 = !DIEnumerator(name: "OBEX_HEADER_HTTP", value: 71)
!47 = !DIEnumerator(name: "OBEX_HEADER_BODY", value: 72)
!48 = !DIEnumerator(name: "OBEX_HEADER_ENDOFBODY", value: 73)
!49 = !DIEnumerator(name: "OBEX_HEADER_WHO", value: 74)
!50 = !DIEnumerator(name: "OBEX_HEADER_CONNECTION_ID", value: 203)
!51 = !DIEnumerator(name: "OBEX_HEADER_APP_PARAMETERS", value: 76)
!52 = !DIEnumerator(name: "OBEX_HEADER_AUTH_CHALLENGE", value: 77)
!53 = !DIEnumerator(name: "OBEX_HEADER_AUTH_RESPONSE", value: 78)
!54 = !DIEnumerator(name: "OBEX_HEADER_CREATOR_ID", value: 207)
!55 = !DIEnumerator(name: "OBEX_HEADER_WAN_UUID", value: 80)
!56 = !DIEnumerator(name: "OBEX_HEADER_OBJ_CLASS", value: 81)
!57 = !DIEnumerator(name: "OBEX_HEADER_SESSION_PARAM", value: 82)
!58 = !DIEnumerator(name: "OBEX_HEADER_SESSION_SEQUENCE_NUM", value: 147)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CALL_TYPE", file: !60, line: 26, size: 32, elements: !61)
!60 = !DIFile(filename: "../btstack/Profile/include/bredr/vcard.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "DIALED", value: 1)
!63 = !DIEnumerator(name: "INCOME", value: 2)
!64 = !DIEnumerator(name: "MISS", value: 3)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 19, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74}
!67 = !DIEnumerator(name: "PHONE_PHONEBOOK", value: 0)
!68 = !DIEnumerator(name: "SIM_PHONEBOOK", value: 1)
!69 = !DIEnumerator(name: "OUTGOING_CALLS_HISTORY", value: 2)
!70 = !DIEnumerator(name: "INCOMING_CALLS_HISTORY", value: 3)
!71 = !DIEnumerator(name: "MISSED_CALLS_HISTORY", value: 4)
!72 = !DIEnumerator(name: "COMBINED_CALLS_HISTORY", value: 5)
!73 = !DIEnumerator(name: "SPEED_DIAL", value: 6)
!74 = !DIEnumerator(name: "FAVORITE_CONTACTS", value: 7)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 31, size: 32, elements: !77)
!76 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85}
!78 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!79 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!80 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!81 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!82 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!83 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!84 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!85 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 143, size: 32, elements: !88)
!87 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "SDP_CMD_CONNECT", value: 0)
!90 = !DIEnumerator(name: "SDP_CMD_DISCONNECT", value: 1)
!91 = !DIEnumerator(name: "SDP_CMD_GET_REMOTE_PNP_INFO", value: 2)
!92 = !{!93, !94, !98, !101, !103, !105, !121, !149}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 44, baseType: !97)
!96 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 48, baseType: !102)
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 46, baseType: !104)
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "Obex_connect_t", file: !25, line: 93, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Obex_connect", file: !25, line: 86, size: 56, elements: !108)
!108 = !{!109, !112, !114, !115, !116, !117}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !107, file: !25, line: 87, baseType: !110, size: 8)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !111, line: 11, baseType: !97)
!111 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_len", scope: !107, file: !25, line: 88, baseType: !113, size: 16, offset: 8)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !111, line: 13, baseType: !104)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !107, file: !25, line: 89, baseType: !110, size: 8, offset: 24)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !107, file: !25, line: 90, baseType: !110, size: 8, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "max_pkt_len", scope: !107, file: !25, line: 91, baseType: !113, size: 16, offset: 40)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "data_optional_headers", scope: !107, file: !25, line: 92, baseType: !118, offset: 56)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 0)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "opp_info_t", file: !6, line: 71, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opp_channel_info", file: !6, line: 54, size: 576, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !131, !132, !133, !134, !135, !137, !138, !140, !144, !148}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pbap_pos_read", scope: !123, file: !6, line: 55, baseType: !95, size: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "pbap_pos_write", scope: !123, file: !6, line: 56, baseType: !95, size: 8, offset: 8)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !123, file: !6, line: 57, baseType: !95, size: 8, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !123, file: !6, line: 58, baseType: !95, size: 8, offset: 24)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "last_index", scope: !123, file: !6, line: 59, baseType: !130, size: 16, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 46, baseType: !104)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "temp_buffer_size", scope: !123, file: !6, line: 60, baseType: !130, size: 16, offset: 48)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "current_index", scope: !123, file: !6, line: 61, baseType: !130, size: 16, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "opp_rfcomm_channel_id", scope: !123, file: !6, line: 62, baseType: !130, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "current_packet_total_len", scope: !123, file: !6, line: 63, baseType: !130, size: 16, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "header_conn_id", scope: !123, file: !6, line: 64, baseType: !136, size: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 48, baseType: !102)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "total_get_len", scope: !123, file: !6, line: 65, baseType: !136, size: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pbap_status", scope: !123, file: !6, line: 66, baseType: !139, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "PBAP_STATUS", file: !6, line: 48, baseType: !5)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pbap_index", scope: !123, file: !6, line: 67, baseType: !141, size: 256, offset: 224)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "conn_addr", scope: !123, file: !6, line: 68, baseType: !145, size: 48, offset: 480)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 48, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 6)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "temp_data_buffer", scope: !123, file: !6, line: 69, baseType: !94, size: 32, offset: 544)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !151, line: 7, baseType: !152)
!151 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 48, elements: !146)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 44, baseType: !97)
!154 = !{!0, !155, !165, !167, !174}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "type_head", scope: !157, file: !3, line: 258, type: !161, isLocal: true, isDefinition: true)
!157 = distinct !DISubprogram(name: "pbap_connect", scope: !3, file: !3, line: 256, type: !158, isLocal: false, isDefinition: true, scopeLine: 257, isOptimized: true, unit: !2, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null}
!160 = !{}
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 16, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!163 = !{!164}
!164 = !DISubrange(count: 2)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "number_type", scope: !2, file: !3, line: 414, type: !95, isLocal: false, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "opp_buf", scope: !2, file: !3, line: 38, type: !169, isLocal: true, isDefinition: true)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opp_buf_struct", file: !3, line: 34, size: 64, elements: !170)
!170 = !{!171, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !169, file: !3, line: 35, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !169, file: !3, line: 36, baseType: !136, size: 32, offset: 32)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "opp_info", scope: !2, file: !3, line: 29, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 32)
!177 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!178 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!179 = !{i32 2, !"Dwarf Version", i32 4}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!182 = distinct !DISubprogram(name: "pbap_init", scope: !3, file: !3, line: 52, type: !183, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !121, !94, !136}
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(name: "opp_info_str", arg: 1, scope: !182, file: !3, line: 52, type: !121)
!187 = !DILocalVariable(name: "buffer", arg: 2, scope: !182, file: !3, line: 52, type: !94)
!188 = !DILocalVariable(name: "buf_size", arg: 3, scope: !182, file: !3, line: 52, type: !136)
!189 = !DILocation(line: 52, column: 28, scope: !182)
!190 = !DILocation(line: 52, column: 46, scope: !182)
!191 = !DILocation(line: 52, column: 58, scope: !182)
!192 = !DILocation(line: 55, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !182, file: !3, line: 55, column: 9)
!194 = !DILocation(line: 55, column: 9, scope: !182)
!195 = !{!196, !196, i64 0}
!196 = !{!"any pointer", !197, i64 0}
!197 = !{!"omnipotent char", !198, i64 0}
!198 = !{!"Simple C/C++ TBAA"}
!199 = !DILocation(line: 56, column: 18, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !3, line: 55, column: 23)
!201 = !DILocation(line: 57, column: 5, scope: !200)
!202 = !DILocation(line: 69, column: 5, scope: !182)
!203 = !DILocation(line: 60, column: 15, scope: !182)
!204 = !DILocation(line: 60, column: 29, scope: !182)
!205 = !{!206, !197, i64 0}
!206 = !{!"opp_channel_info", !197, i64 0, !197, i64 1, !197, i64 2, !197, i64 3, !207, i64 4, !207, i64 6, !207, i64 8, !207, i64 10, !207, i64 12, !208, i64 16, !208, i64 20, !197, i64 24, !197, i64 28, !197, i64 60, !196, i64 68}
!207 = !{!"short", !197, i64 0}
!208 = !{!"int", !197, i64 0}
!209 = !DILocation(line: 61, column: 15, scope: !182)
!210 = !DILocation(line: 61, column: 30, scope: !182)
!211 = !{!206, !197, i64 1}
!212 = !DILocation(line: 62, column: 15, scope: !182)
!213 = !DILocation(line: 62, column: 27, scope: !182)
!214 = !{!206, !197, i64 24}
!215 = !DILocation(line: 63, column: 15, scope: !182)
!216 = !DILocation(line: 63, column: 37, scope: !182)
!217 = !{!206, !207, i64 10}
!218 = !DILocation(line: 64, column: 15, scope: !182)
!219 = !DILocation(line: 64, column: 29, scope: !182)
!220 = !{!206, !207, i64 8}
!221 = !DILocation(line: 65, column: 15, scope: !182)
!222 = !DILocation(line: 65, column: 29, scope: !182)
!223 = !{!206, !208, i64 20}
!224 = !DILocation(line: 66, column: 17, scope: !182)
!225 = !{!226, !196, i64 0}
!226 = !{!"opp_buf_struct", !196, i64 0, !208, i64 4}
!227 = !DILocation(line: 67, column: 17, scope: !182)
!228 = !{!226, !208, i64 4}
!229 = !DILocation(line: 68, column: 15, scope: !182)
!230 = !DILocation(line: 68, column: 32, scope: !182)
!231 = !{!206, !207, i64 6}
!232 = !DILocation(line: 69, column: 15, scope: !182)
!233 = !DILocation(line: 69, column: 32, scope: !182)
!234 = !{!206, !196, i64 68}
!235 = !DILocation(line: 70, column: 5, scope: !182)
!236 = !DILocation(line: 73, column: 5, scope: !182)
!237 = !DILocation(line: 74, column: 1, scope: !182)
!238 = distinct !DISubprogram(name: "obex_packet_handler", scope: !3, file: !3, line: 771, type: !239, isLocal: true, isDefinition: true, scopeLine: 772, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !95, !130, !94, !130}
!241 = !{!242, !243, !244, !245, !246}
!242 = !DILocalVariable(name: "packet_type", arg: 1, scope: !238, file: !3, line: 771, type: !95)
!243 = !DILocalVariable(name: "channel", arg: 2, scope: !238, file: !3, line: 771, type: !130)
!244 = !DILocalVariable(name: "packet", arg: 3, scope: !238, file: !3, line: 771, type: !94)
!245 = !DILocalVariable(name: "size", arg: 4, scope: !238, file: !3, line: 771, type: !130)
!246 = !DILocalVariable(name: "addr", scope: !238, file: !3, line: 773, type: !145)
!247 = !DILocation(line: 771, column: 36, scope: !238)
!248 = !DILocation(line: 771, column: 53, scope: !238)
!249 = !DILocation(line: 771, column: 66, scope: !238)
!250 = !DILocation(line: 771, column: 78, scope: !238)
!251 = !DILocation(line: 773, column: 5, scope: !238)
!252 = !DILocation(line: 773, column: 8, scope: !238)
!253 = !DILocation(line: 774, column: 5, scope: !238)
!254 = !DILocation(line: 776, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !238, file: !3, line: 774, column: 26)
!256 = !{!197, !197, i64 0}
!257 = !DILocation(line: 776, column: 9, scope: !255)
!258 = !DILocation(line: 778, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 778, column: 13)
!260 = distinct !DILexicalBlock(scope: !255, file: !3, line: 776, column: 28)
!261 = !DILocation(line: 778, column: 13, scope: !260)
!262 = !DILocation(line: 778, column: 13, scope: !263)
!263 = !DILexicalBlockFile(scope: !259, file: !3, discriminator: 1)
!264 = !DILocation(line: 780, column: 47, scope: !260)
!265 = !DILocation(line: 780, column: 13, scope: !260)
!266 = !DILocation(line: 780, column: 23, scope: !260)
!267 = !DILocation(line: 780, column: 45, scope: !260)
!268 = !DILocation(line: 781, column: 13, scope: !260)
!269 = !DILocation(line: 782, column: 13, scope: !260)
!270 = !DILocation(line: 786, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !260, file: !3, line: 786, column: 17)
!272 = !DILocation(line: 786, column: 17, scope: !260)
!273 = !DILocation(line: 787, column: 17, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 787, column: 17)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 786, column: 28)
!276 = !DILocation(line: 787, column: 17, scope: !275)
!277 = !DILocation(line: 787, column: 17, scope: !278)
!278 = !DILexicalBlockFile(scope: !274, file: !3, discriminator: 1)
!279 = !DILocation(line: 789, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 789, column: 21)
!281 = distinct !DILexicalBlock(scope: !271, file: !3, line: 788, column: 20)
!282 = !DILocation(line: 789, column: 31, scope: !280)
!283 = !DILocation(line: 789, column: 43, scope: !280)
!284 = !DILocation(line: 789, column: 21, scope: !281)
!285 = !DILocation(line: 790, column: 34, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !3, line: 789, column: 69)
!287 = !DILocation(line: 790, column: 62, scope: !286)
!288 = !DILocation(line: 790, column: 21, scope: !286)
!289 = !DILocation(line: 791, column: 41, scope: !286)
!290 = !DILocalVariable(name: "channel_id", arg: 1, scope: !291, file: !3, line: 247, type: !130)
!291 = distinct !DISubprogram(name: "pbap_set_rfcomm_cid", scope: !3, file: !3, line: 247, type: !292, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !130}
!294 = !{!290}
!295 = !DILocation(line: 247, column: 30, scope: !291, inlinedAt: !296)
!296 = distinct !DILocation(line: 791, column: 21, scope: !286)
!297 = !DILocation(line: 249, column: 5, scope: !291, inlinedAt: !296)
!298 = !DILocation(line: 249, column: 15, scope: !291, inlinedAt: !296)
!299 = !DILocation(line: 249, column: 37, scope: !291, inlinedAt: !296)
!300 = !DILocation(line: 250, column: 15, scope: !291, inlinedAt: !296)
!301 = !DILocation(line: 250, column: 27, scope: !291, inlinedAt: !296)
!302 = !DILocation(line: 792, column: 21, scope: !286)
!303 = !DILocation(line: 793, column: 21, scope: !286)
!304 = !DILocation(line: 793, column: 37, scope: !286)
!305 = !{!306, !196, i64 20}
!306 = !{!"user_interface_handler", !196, i64 0, !196, i64 4, !196, i64 8, !196, i64 12, !196, i64 16, !196, i64 20, !196, i64 24, !196, i64 28, !196, i64 32, !196, i64 36, !196, i64 40, !196, i64 44, !196, i64 48, !196, i64 52, !196, i64 56}
!307 = !DILocation(line: 793, column: 61, scope: !286)
!308 = !DILocation(line: 794, column: 21, scope: !309)
!309 = distinct !DILexicalBlock(scope: !286, file: !3, line: 794, column: 21)
!310 = !DILocation(line: 794, column: 21, scope: !286)
!311 = !DILocation(line: 794, column: 21, scope: !312)
!312 = !DILexicalBlockFile(scope: !309, file: !3, discriminator: 1)
!313 = !DILocation(line: 796, column: 31, scope: !314)
!314 = distinct !DILexicalBlock(scope: !280, file: !3, line: 795, column: 24)
!315 = !DILocation(line: 796, column: 45, scope: !314)
!316 = !DILocation(line: 797, column: 31, scope: !314)
!317 = !DILocation(line: 797, column: 56, scope: !314)
!318 = !{!206, !207, i64 12}
!319 = !DILocation(line: 798, column: 55, scope: !314)
!320 = !DILocation(line: 798, column: 31, scope: !314)
!321 = !DILocation(line: 798, column: 53, scope: !314)
!322 = !DILocation(line: 799, column: 21, scope: !323)
!323 = distinct !DILexicalBlock(scope: !314, file: !3, line: 799, column: 21)
!324 = !DILocation(line: 799, column: 21, scope: !314)
!325 = !DILocation(line: 799, column: 21, scope: !326)
!326 = !DILexicalBlockFile(scope: !323, file: !3, discriminator: 1)
!327 = !DILocation(line: 806, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !260, file: !3, line: 806, column: 13)
!329 = !DILocation(line: 806, column: 13, scope: !260)
!330 = !DILocation(line: 806, column: 13, scope: !331)
!331 = !DILexicalBlockFile(scope: !328, file: !3, discriminator: 1)
!332 = !DILocation(line: 807, column: 26, scope: !260)
!333 = !DILocation(line: 807, column: 13, scope: !260)
!334 = !DILocation(line: 77, column: 15, scope: !335, inlinedAt: !336)
!335 = distinct !DISubprogram(name: "pbap_value_init", scope: !3, file: !3, line: 75, type: !158, isLocal: true, isDefinition: true, scopeLine: 76, isOptimized: true, unit: !2, variables: !160)
!336 = distinct !DILocation(line: 808, column: 13, scope: !260)
!337 = !DILocation(line: 77, column: 29, scope: !335, inlinedAt: !336)
!338 = !DILocation(line: 78, column: 15, scope: !335, inlinedAt: !336)
!339 = !DILocation(line: 78, column: 30, scope: !335, inlinedAt: !336)
!340 = !DILocation(line: 80, column: 15, scope: !335, inlinedAt: !336)
!341 = !DILocation(line: 80, column: 37, scope: !335, inlinedAt: !336)
!342 = !DILocation(line: 81, column: 15, scope: !335, inlinedAt: !336)
!343 = !DILocation(line: 81, column: 29, scope: !335, inlinedAt: !336)
!344 = !DILocation(line: 82, column: 15, scope: !335, inlinedAt: !336)
!345 = !DILocation(line: 83, column: 5, scope: !335, inlinedAt: !336)
!346 = !DILocation(line: 810, column: 23, scope: !260)
!347 = !DILocation(line: 810, column: 48, scope: !260)
!348 = !DILocation(line: 79, column: 27, scope: !335, inlinedAt: !336)
!349 = !DILocation(line: 811, column: 13, scope: !260)
!350 = !DILocation(line: 812, column: 13, scope: !260)
!351 = !DILocation(line: 814, column: 13, scope: !260)
!352 = !DILocation(line: 814, column: 29, scope: !260)
!353 = !DILocation(line: 816, column: 18, scope: !260)
!354 = !DILocation(line: 816, column: 13, scope: !260)
!355 = !DILocation(line: 817, column: 22, scope: !260)
!356 = !DILocation(line: 819, column: 13, scope: !260)
!357 = !DILocation(line: 822, column: 13, scope: !260)
!358 = !DILocation(line: 823, column: 13, scope: !260)
!359 = !DILocation(line: 830, column: 9, scope: !255)
!360 = !DILocation(line: 831, column: 9, scope: !255)
!361 = !DILocation(line: 835, column: 1, scope: !238)
!362 = distinct !DISubprogram(name: "pbap_get_last_phone_card", scope: !3, file: !3, line: 151, type: !158, isLocal: false, isDefinition: true, scopeLine: 152, isOptimized: true, unit: !2, variables: !160)
!363 = !DILocation(line: 153, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !362, file: !3, line: 153, column: 9)
!365 = !DILocation(line: 153, column: 19, scope: !364)
!366 = !DILocation(line: 153, column: 33, scope: !364)
!367 = !DILocation(line: 153, column: 9, scope: !362)
!368 = !DILocation(line: 154, column: 32, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !3, line: 153, column: 38)
!370 = !DILocation(line: 155, column: 5, scope: !369)
!371 = !DILocation(line: 156, column: 66, scope: !362)
!372 = !DILocation(line: 156, column: 36, scope: !362)
!373 = !DILocation(line: 156, column: 50, scope: !362)
!374 = !DILocation(line: 156, column: 5, scope: !362)
!375 = !DILocation(line: 156, column: 54, scope: !362)
!376 = !{!207, !207, i64 0}
!377 = !DILocation(line: 157, column: 34, scope: !378)
!378 = distinct !DILexicalBlock(scope: !362, file: !3, line: 157, column: 9)
!379 = !DILocation(line: 157, column: 9, scope: !362)
!380 = !DILocation(line: 158, column: 34, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 157, column: 56)
!382 = !DILocation(line: 159, column: 5, scope: !381)
!383 = !DILocation(line: 160, column: 1, scope: !362)
!384 = distinct !DISubprogram(name: "pbap_get_next_phone_card", scope: !3, file: !3, line: 170, type: !158, isLocal: false, isDefinition: true, scopeLine: 171, isOptimized: true, unit: !2, variables: !160)
!385 = !DILocation(line: 172, column: 5, scope: !386)
!386 = distinct !DILexicalBlock(scope: !384, file: !3, line: 172, column: 5)
!387 = !DILocation(line: 172, column: 5, scope: !384)
!388 = !DILocation(line: 172, column: 5, scope: !389)
!389 = !DILexicalBlockFile(scope: !386, file: !3, discriminator: 1)
!390 = !DILocation(line: 173, column: 5, scope: !384)
!391 = !DILocation(line: 173, column: 15, scope: !384)
!392 = !DILocation(line: 173, column: 28, scope: !384)
!393 = !DILocation(line: 174, column: 36, scope: !384)
!394 = !DILocation(line: 174, column: 50, scope: !384)
!395 = !DILocation(line: 174, column: 5, scope: !384)
!396 = !DILocation(line: 174, column: 54, scope: !384)
!397 = !DILocation(line: 175, column: 34, scope: !398)
!398 = distinct !DILexicalBlock(scope: !384, file: !3, line: 175, column: 9)
!399 = !DILocation(line: 175, column: 9, scope: !384)
!400 = !DILocation(line: 176, column: 34, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !3, line: 175, column: 56)
!402 = !DILocation(line: 177, column: 5, scope: !401)
!403 = !DILocation(line: 178, column: 1, scope: !384)
!404 = distinct !DISubprogram(name: "pbap_get_phone_card", scope: !3, file: !3, line: 205, type: !405, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !136}
!407 = !{!408, !409, !413}
!408 = !DILocalVariable(name: "get_index", arg: 1, scope: !404, file: !3, line: 205, type: !136)
!409 = !DILocalVariable(name: "cardName", scope: !404, file: !3, line: 207, type: !410)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 80, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 10)
!413 = !DILocalVariable(name: "currLen", scope: !404, file: !3, line: 208, type: !95)
!414 = !DILocation(line: 205, column: 30, scope: !404)
!415 = !DILocation(line: 207, column: 5, scope: !404)
!416 = !DILocation(line: 207, column: 10, scope: !404)
!417 = !DILocation(line: 208, column: 8, scope: !404)
!418 = !DILocation(line: 209, column: 23, scope: !419)
!419 = distinct !DILexicalBlock(scope: !404, file: !3, line: 209, column: 9)
!420 = !DILocation(line: 212, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !404, file: !3, line: 212, column: 9)
!422 = !DILocation(line: 212, column: 9, scope: !404)
!423 = !DILocation(line: 213, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 212, column: 25)
!425 = !DILocation(line: 214, column: 5, scope: !424)
!426 = !DILocation(line: 214, column: 26, scope: !427)
!427 = !DILexicalBlockFile(scope: !428, file: !3, discriminator: 1)
!428 = distinct !DILexicalBlock(scope: !421, file: !3, line: 214, column: 16)
!429 = !DILocation(line: 214, column: 16, scope: !430)
!430 = !DILexicalBlockFile(scope: !421, file: !3, discriminator: 1)
!431 = !DILocation(line: 215, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !3, line: 214, column: 32)
!433 = !DILocation(line: 216, column: 5, scope: !432)
!434 = !DILocation(line: 216, column: 26, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !3, discriminator: 1)
!436 = distinct !DILexicalBlock(scope: !428, file: !3, line: 216, column: 16)
!437 = !DILocation(line: 216, column: 16, scope: !427)
!438 = !DILocation(line: 217, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !3, line: 216, column: 33)
!440 = !DILocation(line: 218, column: 5, scope: !439)
!441 = !DILocation(line: 219, column: 15, scope: !404)
!442 = !DILocation(line: 220, column: 21, scope: !404)
!443 = !DILocation(line: 220, column: 5, scope: !404)
!444 = !DILocation(line: 220, column: 25, scope: !404)
!445 = !DILocation(line: 221, column: 21, scope: !404)
!446 = !DILocation(line: 221, column: 5, scope: !404)
!447 = !DILocation(line: 221, column: 25, scope: !404)
!448 = !DILocation(line: 222, column: 21, scope: !404)
!449 = !DILocation(line: 222, column: 5, scope: !404)
!450 = !DILocation(line: 222, column: 25, scope: !404)
!451 = !DILocation(line: 223, column: 21, scope: !404)
!452 = !DILocation(line: 223, column: 5, scope: !404)
!453 = !DILocation(line: 223, column: 25, scope: !404)
!454 = !DILocation(line: 225, column: 5, scope: !404)
!455 = !DILocation(line: 225, column: 15, scope: !404)
!456 = !DILocation(line: 225, column: 27, scope: !404)
!457 = !DILocation(line: 226, column: 32, scope: !404)
!458 = !DILocation(line: 226, column: 65, scope: !404)
!459 = !{!206, !208, i64 16}
!460 = !DILocation(line: 226, column: 5, scope: !404)
!461 = !DILocation(line: 227, column: 1, scope: !404)
!462 = distinct !DISubprogram(name: "pull_vCard_entry", scope: !3, file: !3, line: 517, type: !463, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !466)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !130, !136, !465, !95}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!466 = !{!467, !468, !469, !470, !471, !475}
!467 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !462, file: !3, line: 517, type: !130)
!468 = !DILocalVariable(name: "connection_ID", arg: 2, scope: !462, file: !3, line: 517, type: !136)
!469 = !DILocalVariable(name: "vcard_name", arg: 3, scope: !462, file: !3, line: 517, type: !465)
!470 = !DILocalVariable(name: "name_len", arg: 4, scope: !462, file: !3, line: 517, type: !95)
!471 = !DILocalVariable(name: "pullOpcode", scope: !462, file: !3, line: 519, type: !472)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 800, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 100)
!475 = !DILocalVariable(name: "curPosition", scope: !462, file: !3, line: 520, type: !130)
!476 = !DILocation(line: 517, column: 27, scope: !462)
!477 = !DILocation(line: 517, column: 50, scope: !462)
!478 = !DILocation(line: 517, column: 71, scope: !462)
!479 = !DILocation(line: 517, column: 86, scope: !462)
!480 = !DILocation(line: 519, column: 5, scope: !462)
!481 = !DILocation(line: 519, column: 8, scope: !462)
!482 = !DILocation(line: 520, column: 9, scope: !462)
!483 = !DILocation(line: 521, column: 19, scope: !462)
!484 = !DILocation(line: 522, column: 5, scope: !462)
!485 = !DILocation(line: 522, column: 19, scope: !462)
!486 = !DILocation(line: 523, column: 5, scope: !462)
!487 = !DILocation(line: 523, column: 19, scope: !462)
!488 = !DILocation(line: 524, column: 5, scope: !462)
!489 = !DILocation(line: 524, column: 19, scope: !462)
!490 = !DILocation(line: 525, column: 5, scope: !462)
!491 = !DILocation(line: 526, column: 19, scope: !462)
!492 = !DILocalVariable(name: "type", arg: 1, scope: !493, file: !3, line: 344, type: !94)
!493 = distinct !DISubprogram(name: "fill_vCard_type", scope: !3, file: !3, line: 344, type: !494, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!130, !94, !130}
!496 = !{!492, !497}
!497 = !DILocalVariable(name: "pos", arg: 2, scope: !493, file: !3, line: 344, type: !130)
!498 = !DILocation(line: 344, column: 25, scope: !493, inlinedAt: !499)
!499 = distinct !DILocation(line: 527, column: 19, scope: !462)
!500 = !DILocation(line: 344, column: 35, scope: !493, inlinedAt: !499)
!501 = !DILocation(line: 346, column: 12, scope: !493, inlinedAt: !499)
!502 = !DILocalVariable(name: "app_param", arg: 1, scope: !503, file: !3, line: 395, type: !94)
!503 = distinct !DISubprogram(name: "fill_singal_app_param", scope: !3, file: !3, line: 395, type: !494, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !504)
!504 = !{!502, !505, !506, !507}
!505 = !DILocalVariable(name: "pos", arg: 2, scope: !503, file: !3, line: 395, type: !130)
!506 = !DILocalVariable(name: "i", scope: !503, file: !3, line: 397, type: !130)
!507 = !DILocalVariable(name: "parameters", scope: !503, file: !3, line: 398, type: !508)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 120, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 15)
!511 = !DILocation(line: 395, column: 31, scope: !503, inlinedAt: !512)
!512 = distinct !DILocation(line: 528, column: 19, scope: !462)
!513 = !DILocation(line: 395, column: 46, scope: !503, inlinedAt: !512)
!514 = !DILocation(line: 397, column: 9, scope: !503, inlinedAt: !512)
!515 = !DILocation(line: 398, column: 8, scope: !503, inlinedAt: !512)
!516 = !DILocation(line: 401, column: 18, scope: !503, inlinedAt: !512)
!517 = !DILocation(line: 401, column: 5, scope: !503, inlinedAt: !512)
!518 = !DILocation(line: 401, column: 22, scope: !503, inlinedAt: !512)
!519 = !DILocation(line: 402, column: 18, scope: !503, inlinedAt: !512)
!520 = !DILocation(line: 402, column: 5, scope: !503, inlinedAt: !512)
!521 = !DILocation(line: 402, column: 22, scope: !503, inlinedAt: !512)
!522 = !DILocation(line: 403, column: 18, scope: !503, inlinedAt: !512)
!523 = !DILocation(line: 403, column: 5, scope: !503, inlinedAt: !512)
!524 = !DILocation(line: 403, column: 22, scope: !503, inlinedAt: !512)
!525 = !DILocation(line: 404, column: 5, scope: !526, inlinedAt: !512)
!526 = !DILexicalBlockFile(scope: !527, file: !3, discriminator: 1)
!527 = distinct !DILexicalBlock(scope: !503, file: !3, line: 404, column: 5)
!528 = !DILocation(line: 405, column: 28, scope: !529, inlinedAt: !512)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 404, column: 31)
!530 = distinct !DILexicalBlock(scope: !527, file: !3, line: 404, column: 5)
!531 = !DILocation(line: 407, column: 17, scope: !503, inlinedAt: !512)
!532 = !DILocation(line: 530, column: 5, scope: !462)
!533 = !DILocation(line: 530, column: 29, scope: !462)
!534 = !DILocation(line: 531, column: 5, scope: !462)
!535 = !DILocation(line: 532, column: 5, scope: !462)
!536 = !DILocation(line: 533, column: 1, scope: !462)
!537 = distinct !DISubprogram(name: "pbap_check_status", scope: !3, file: !3, line: 236, type: !538, isLocal: false, isDefinition: true, scopeLine: 237, isOptimized: true, unit: !2, variables: !160)
!538 = !DISubroutineType(types: !539)
!539 = !{!95}
!540 = !DILocation(line: 238, column: 12, scope: !537)
!541 = !DILocation(line: 238, column: 22, scope: !537)
!542 = !DILocation(line: 238, column: 5, scope: !537)
!543 = distinct !DISubprogram(name: "pbap_get_rfcomm_cid", scope: !3, file: !3, line: 242, type: !544, isLocal: false, isDefinition: true, scopeLine: 243, isOptimized: true, unit: !2, variables: !160)
!544 = !DISubroutineType(types: !545)
!545 = !{!130}
!546 = !DILocation(line: 244, column: 12, scope: !543)
!547 = !DILocation(line: 244, column: 22, scope: !543)
!548 = !DILocation(line: 244, column: 5, scope: !543)
!549 = !DILocation(line: 247, column: 30, scope: !291)
!550 = !DILocation(line: 249, column: 5, scope: !291)
!551 = !DILocation(line: 249, column: 15, scope: !291)
!552 = !DILocation(line: 249, column: 37, scope: !291)
!553 = !DILocation(line: 250, column: 15, scope: !291)
!554 = !DILocation(line: 250, column: 27, scope: !291)
!555 = !DILocation(line: 252, column: 1, scope: !291)
!556 = !DILocation(line: 260, column: 9, scope: !557)
!557 = distinct !DILexicalBlock(scope: !157, file: !3, line: 260, column: 9)
!558 = !DILocation(line: 260, column: 19, scope: !557)
!559 = !DILocation(line: 260, column: 41, scope: !557)
!560 = !DILocation(line: 260, column: 55, scope: !561)
!561 = !DILexicalBlockFile(scope: !557, file: !3, discriminator: 1)
!562 = !DILocation(line: 260, column: 67, scope: !561)
!563 = !DILocation(line: 260, column: 9, scope: !564)
!564 = !DILexicalBlockFile(scope: !157, file: !3, discriminator: 1)
!565 = !DILocation(line: 261, column: 13, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 261, column: 13)
!567 = distinct !DILexicalBlock(scope: !557, file: !3, line: 260, column: 95)
!568 = !DILocation(line: 261, column: 86, scope: !566)
!569 = !DILocation(line: 261, column: 13, scope: !567)
!570 = !DILocation(line: 263, column: 13, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 263, column: 13)
!572 = distinct !DILexicalBlock(scope: !566, file: !3, line: 261, column: 92)
!573 = !DILocation(line: 263, column: 13, scope: !572)
!574 = !DILocation(line: 263, column: 13, scope: !575)
!575 = !DILexicalBlockFile(scope: !571, file: !3, discriminator: 1)
!576 = !DILocation(line: 265, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !566, file: !3, line: 264, column: 16)
!578 = !DILocation(line: 265, column: 23, scope: !577)
!579 = !DILocation(line: 265, column: 35, scope: !577)
!580 = !DILocation(line: 268, column: 1, scope: !157)
!581 = distinct !DISubprogram(name: "pbap_disconnect", scope: !3, file: !3, line: 270, type: !582, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !130, !136}
!584 = !{!585, !586, !587}
!585 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !581, file: !3, line: 270, type: !130)
!586 = !DILocalVariable(name: "connection_ID", arg: 2, scope: !581, file: !3, line: 270, type: !136)
!587 = !DILocalVariable(name: "opcode", scope: !581, file: !3, line: 272, type: !588)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 80, elements: !411)
!589 = !DILocation(line: 270, column: 26, scope: !581)
!590 = !DILocation(line: 270, column: 49, scope: !581)
!591 = !DILocation(line: 272, column: 5, scope: !581)
!592 = !DILocation(line: 272, column: 8, scope: !581)
!593 = !DILocation(line: 273, column: 15, scope: !581)
!594 = !DILocation(line: 274, column: 5, scope: !581)
!595 = !DILocation(line: 274, column: 15, scope: !581)
!596 = !DILocation(line: 275, column: 5, scope: !581)
!597 = !DILocation(line: 275, column: 15, scope: !581)
!598 = !DILocation(line: 276, column: 5, scope: !581)
!599 = !DILocation(line: 276, column: 15, scope: !581)
!600 = !DILocation(line: 277, column: 5, scope: !581)
!601 = !DILocation(line: 278, column: 5, scope: !581)
!602 = !DILocation(line: 278, column: 15, scope: !581)
!603 = !DILocation(line: 278, column: 27, scope: !581)
!604 = !DILocation(line: 279, column: 5, scope: !581)
!605 = !DILocation(line: 280, column: 1, scope: !581)
!606 = distinct !DISubprogram(name: "fill_Pb_name", scope: !3, file: !3, line: 287, type: !494, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !607)
!607 = !{!608, !609}
!608 = !DILocalVariable(name: "name", arg: 1, scope: !606, file: !3, line: 287, type: !94)
!609 = !DILocalVariable(name: "pos", arg: 2, scope: !606, file: !3, line: 287, type: !130)
!610 = !DILocation(line: 287, column: 22, scope: !606)
!611 = !DILocation(line: 287, column: 32, scope: !606)
!612 = !DILocation(line: 289, column: 12, scope: !606)
!613 = !DILocation(line: 289, column: 5, scope: !606)
!614 = distinct !DISubprogram(name: "fill_SIMPb_name", scope: !3, file: !3, line: 295, type: !494, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !615)
!615 = !{!616, !617}
!616 = !DILocalVariable(name: "name", arg: 1, scope: !614, file: !3, line: 295, type: !94)
!617 = !DILocalVariable(name: "pos", arg: 2, scope: !614, file: !3, line: 295, type: !130)
!618 = !DILocation(line: 295, column: 25, scope: !614)
!619 = !DILocation(line: 295, column: 35, scope: !614)
!620 = !DILocation(line: 297, column: 12, scope: !614)
!621 = !DILocation(line: 297, column: 5, scope: !614)
!622 = distinct !DISubprogram(name: "fill_ich_name", scope: !3, file: !3, line: 303, type: !494, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !623)
!623 = !{!624, !625}
!624 = !DILocalVariable(name: "name", arg: 1, scope: !622, file: !3, line: 303, type: !94)
!625 = !DILocalVariable(name: "pos", arg: 2, scope: !622, file: !3, line: 303, type: !130)
!626 = !DILocation(line: 303, column: 23, scope: !622)
!627 = !DILocation(line: 303, column: 33, scope: !622)
!628 = !DILocation(line: 305, column: 12, scope: !622)
!629 = !DILocation(line: 305, column: 5, scope: !622)
!630 = distinct !DISubprogram(name: "fill_mch_name", scope: !3, file: !3, line: 311, type: !494, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !631)
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "name", arg: 1, scope: !630, file: !3, line: 311, type: !94)
!633 = !DILocalVariable(name: "pos", arg: 2, scope: !630, file: !3, line: 311, type: !130)
!634 = !DILocation(line: 311, column: 23, scope: !630)
!635 = !DILocation(line: 311, column: 33, scope: !630)
!636 = !DILocation(line: 313, column: 12, scope: !630)
!637 = !DILocation(line: 313, column: 5, scope: !630)
!638 = distinct !DISubprogram(name: "fill_och_name", scope: !3, file: !3, line: 319, type: !494, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !639)
!639 = !{!640, !641}
!640 = !DILocalVariable(name: "name", arg: 1, scope: !638, file: !3, line: 319, type: !94)
!641 = !DILocalVariable(name: "pos", arg: 2, scope: !638, file: !3, line: 319, type: !130)
!642 = !DILocation(line: 319, column: 23, scope: !638)
!643 = !DILocation(line: 319, column: 33, scope: !638)
!644 = !DILocation(line: 321, column: 12, scope: !638)
!645 = !DILocation(line: 321, column: 5, scope: !638)
!646 = distinct !DISubprogram(name: "fill_Pb_type", scope: !3, file: !3, line: 327, type: !494, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !647)
!647 = !{!648, !649}
!648 = !DILocalVariable(name: "type", arg: 1, scope: !646, file: !3, line: 327, type: !94)
!649 = !DILocalVariable(name: "pos", arg: 2, scope: !646, file: !3, line: 327, type: !130)
!650 = !DILocation(line: 327, column: 22, scope: !646)
!651 = !DILocation(line: 327, column: 32, scope: !646)
!652 = !DILocation(line: 329, column: 12, scope: !646)
!653 = !DILocation(line: 329, column: 5, scope: !646)
!654 = distinct !DISubprogram(name: "fill_listing_type", scope: !3, file: !3, line: 336, type: !494, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !655)
!655 = !{!656, !657}
!656 = !DILocalVariable(name: "type", arg: 1, scope: !654, file: !3, line: 336, type: !94)
!657 = !DILocalVariable(name: "pos", arg: 2, scope: !654, file: !3, line: 336, type: !130)
!658 = !DILocation(line: 336, column: 27, scope: !654)
!659 = !DILocation(line: 336, column: 37, scope: !654)
!660 = !DILocation(line: 338, column: 12, scope: !654)
!661 = !DILocation(line: 338, column: 5, scope: !654)
!662 = !DILocation(line: 344, column: 25, scope: !493)
!663 = !DILocation(line: 344, column: 35, scope: !493)
!664 = !DILocation(line: 346, column: 12, scope: !493)
!665 = !DILocation(line: 346, column: 5, scope: !493)
!666 = distinct !DISubprogram(name: "fill_app_parameters", scope: !3, file: !3, line: 353, type: !667, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!130, !94, !130, !130}
!669 = !{!670, !671, !672, !673, !674}
!670 = !DILocalVariable(name: "app_param", arg: 1, scope: !666, file: !3, line: 353, type: !94)
!671 = !DILocalVariable(name: "pos", arg: 2, scope: !666, file: !3, line: 353, type: !130)
!672 = !DILocalVariable(name: "max_cnt", arg: 3, scope: !666, file: !3, line: 353, type: !130)
!673 = !DILocalVariable(name: "i", scope: !666, file: !3, line: 355, type: !130)
!674 = !DILocalVariable(name: "parameters", scope: !666, file: !3, line: 356, type: !675)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 200, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 25)
!678 = !DILocation(line: 353, column: 29, scope: !666)
!679 = !DILocation(line: 353, column: 44, scope: !666)
!680 = !DILocation(line: 353, column: 53, scope: !666)
!681 = !DILocation(line: 355, column: 9, scope: !666)
!682 = !DILocation(line: 356, column: 5, scope: !666)
!683 = !DILocation(line: 356, column: 8, scope: !666)
!684 = !DILocation(line: 361, column: 18, scope: !666)
!685 = !DILocation(line: 361, column: 5, scope: !666)
!686 = !DILocation(line: 361, column: 22, scope: !666)
!687 = !DILocation(line: 362, column: 18, scope: !666)
!688 = !DILocation(line: 362, column: 5, scope: !666)
!689 = !DILocation(line: 362, column: 22, scope: !666)
!690 = !DILocation(line: 363, column: 18, scope: !666)
!691 = !DILocation(line: 363, column: 5, scope: !666)
!692 = !DILocation(line: 363, column: 22, scope: !666)
!693 = !DILocation(line: 364, column: 5, scope: !666)
!694 = !DILocation(line: 365, column: 5, scope: !695)
!695 = !DILexicalBlockFile(scope: !696, file: !3, discriminator: 1)
!696 = distinct !DILexicalBlock(scope: !666, file: !3, line: 365, column: 5)
!697 = !DILocation(line: 366, column: 28, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 365, column: 31)
!699 = distinct !DILexicalBlock(scope: !696, file: !3, line: 365, column: 5)
!700 = !DILocation(line: 368, column: 17, scope: !666)
!701 = !DILocation(line: 369, column: 1, scope: !666)
!702 = !DILocation(line: 368, column: 5, scope: !666)
!703 = distinct !DISubprogram(name: "fill_listing_app_param", scope: !3, file: !3, line: 374, type: !494, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !704)
!704 = !{!705, !706, !707, !708}
!705 = !DILocalVariable(name: "app_param", arg: 1, scope: !703, file: !3, line: 374, type: !94)
!706 = !DILocalVariable(name: "pos", arg: 2, scope: !703, file: !3, line: 374, type: !130)
!707 = !DILocalVariable(name: "i", scope: !703, file: !3, line: 376, type: !130)
!708 = !DILocalVariable(name: "parameters", scope: !703, file: !3, line: 377, type: !709)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 160, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 20)
!712 = !DILocation(line: 374, column: 32, scope: !703)
!713 = !DILocation(line: 374, column: 47, scope: !703)
!714 = !DILocation(line: 376, column: 9, scope: !703)
!715 = !DILocation(line: 377, column: 8, scope: !703)
!716 = !DILocation(line: 383, column: 18, scope: !703)
!717 = !DILocation(line: 383, column: 5, scope: !703)
!718 = !DILocation(line: 383, column: 22, scope: !703)
!719 = !DILocation(line: 384, column: 18, scope: !703)
!720 = !DILocation(line: 384, column: 5, scope: !703)
!721 = !DILocation(line: 384, column: 22, scope: !703)
!722 = !DILocation(line: 385, column: 18, scope: !703)
!723 = !DILocation(line: 385, column: 5, scope: !703)
!724 = !DILocation(line: 385, column: 22, scope: !703)
!725 = !DILocation(line: 386, column: 5, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !3, discriminator: 1)
!727 = distinct !DILexicalBlock(scope: !703, file: !3, line: 386, column: 5)
!728 = !DILocation(line: 387, column: 28, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 386, column: 31)
!730 = distinct !DILexicalBlock(scope: !727, file: !3, line: 386, column: 5)
!731 = !DILocation(line: 389, column: 17, scope: !703)
!732 = !DILocation(line: 389, column: 5, scope: !703)
!733 = !DILocation(line: 395, column: 31, scope: !503)
!734 = !DILocation(line: 395, column: 46, scope: !503)
!735 = !DILocation(line: 397, column: 9, scope: !503)
!736 = !DILocation(line: 398, column: 8, scope: !503)
!737 = !DILocation(line: 401, column: 18, scope: !503)
!738 = !DILocation(line: 401, column: 5, scope: !503)
!739 = !DILocation(line: 401, column: 22, scope: !503)
!740 = !DILocation(line: 402, column: 18, scope: !503)
!741 = !DILocation(line: 402, column: 5, scope: !503)
!742 = !DILocation(line: 402, column: 22, scope: !503)
!743 = !DILocation(line: 403, column: 18, scope: !503)
!744 = !DILocation(line: 403, column: 5, scope: !503)
!745 = !DILocation(line: 403, column: 22, scope: !503)
!746 = !DILocation(line: 404, column: 5, scope: !526)
!747 = !DILocation(line: 405, column: 28, scope: !529)
!748 = !DILocation(line: 407, column: 17, scope: !503)
!749 = !DILocation(line: 407, column: 5, scope: !503)
!750 = distinct !DISubprogram(name: "check_cur_number_type", scope: !3, file: !3, line: 415, type: !538, isLocal: false, isDefinition: true, scopeLine: 416, isOptimized: true, unit: !2, variables: !160)
!751 = !DILocation(line: 417, column: 12, scope: !750)
!752 = !DILocation(line: 417, column: 5, scope: !750)
!753 = distinct !DISubprogram(name: "pull_phone_book", scope: !3, file: !3, line: 420, type: !754, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !130, !136, !95}
!756 = !{!757, !758, !759, !760, !764, !765}
!757 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !753, file: !3, line: 420, type: !130)
!758 = !DILocalVariable(name: "connection_ID", arg: 2, scope: !753, file: !3, line: 420, type: !136)
!759 = !DILocalVariable(name: "pbap_pb_type", arg: 3, scope: !753, file: !3, line: 420, type: !95)
!760 = !DILocalVariable(name: "pullOpcode", scope: !753, file: !3, line: 422, type: !761)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 880, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 110)
!764 = !DILocalVariable(name: "item_num", scope: !753, file: !3, line: 423, type: !130)
!765 = !DILocalVariable(name: "curPosition", scope: !753, file: !3, line: 424, type: !130)
!766 = !DILocation(line: 420, column: 26, scope: !753)
!767 = !DILocation(line: 420, column: 49, scope: !753)
!768 = !DILocation(line: 420, column: 67, scope: !753)
!769 = !DILocation(line: 422, column: 5, scope: !753)
!770 = !DILocation(line: 422, column: 8, scope: !753)
!771 = !DILocation(line: 423, column: 9, scope: !753)
!772 = !DILocation(line: 424, column: 9, scope: !753)
!773 = !DILocation(line: 425, column: 19, scope: !753)
!774 = !DILocation(line: 426, column: 5, scope: !753)
!775 = !DILocation(line: 426, column: 19, scope: !753)
!776 = !DILocation(line: 427, column: 5, scope: !753)
!777 = !DILocation(line: 427, column: 19, scope: !753)
!778 = !DILocation(line: 428, column: 5, scope: !753)
!779 = !DILocation(line: 428, column: 19, scope: !753)
!780 = !DILocation(line: 429, column: 5, scope: !753)
!781 = !DILocation(line: 430, column: 13, scope: !753)
!782 = !DILocation(line: 430, column: 5, scope: !753)
!783 = !DILocation(line: 432, column: 21, scope: !784)
!784 = distinct !DILexicalBlock(scope: !753, file: !3, line: 430, column: 27)
!785 = !DILocation(line: 287, column: 22, scope: !606, inlinedAt: !786)
!786 = distinct !DILocation(line: 433, column: 23, scope: !784)
!787 = !DILocation(line: 287, column: 32, scope: !606, inlinedAt: !786)
!788 = !DILocation(line: 289, column: 12, scope: !606, inlinedAt: !786)
!789 = !DILocation(line: 434, column: 9, scope: !784)
!790 = !DILocation(line: 436, column: 21, scope: !784)
!791 = !DILocation(line: 295, column: 25, scope: !614, inlinedAt: !792)
!792 = distinct !DILocation(line: 437, column: 23, scope: !784)
!793 = !DILocation(line: 295, column: 35, scope: !614, inlinedAt: !792)
!794 = !DILocation(line: 297, column: 12, scope: !614, inlinedAt: !792)
!795 = !DILocation(line: 438, column: 9, scope: !784)
!796 = !DILocation(line: 440, column: 21, scope: !784)
!797 = !DILocation(line: 303, column: 23, scope: !622, inlinedAt: !798)
!798 = distinct !DILocation(line: 441, column: 23, scope: !784)
!799 = !DILocation(line: 303, column: 33, scope: !622, inlinedAt: !798)
!800 = !DILocation(line: 305, column: 12, scope: !622, inlinedAt: !798)
!801 = !DILocation(line: 442, column: 9, scope: !784)
!802 = !DILocation(line: 444, column: 21, scope: !784)
!803 = !DILocation(line: 319, column: 23, scope: !638, inlinedAt: !804)
!804 = distinct !DILocation(line: 445, column: 23, scope: !784)
!805 = !DILocation(line: 319, column: 33, scope: !638, inlinedAt: !804)
!806 = !DILocation(line: 321, column: 12, scope: !638, inlinedAt: !804)
!807 = !DILocation(line: 446, column: 9, scope: !784)
!808 = !DILocation(line: 448, column: 21, scope: !784)
!809 = !DILocation(line: 311, column: 23, scope: !630, inlinedAt: !810)
!810 = distinct !DILocation(line: 449, column: 23, scope: !784)
!811 = !DILocation(line: 311, column: 33, scope: !630, inlinedAt: !810)
!812 = !DILocation(line: 313, column: 12, scope: !630, inlinedAt: !810)
!813 = !DILocation(line: 450, column: 9, scope: !784)
!814 = !DILocation(line: 452, column: 21, scope: !784)
!815 = !DILocation(line: 287, column: 22, scope: !606, inlinedAt: !816)
!816 = distinct !DILocation(line: 453, column: 23, scope: !784)
!817 = !DILocation(line: 287, column: 32, scope: !606, inlinedAt: !816)
!818 = !DILocation(line: 289, column: 12, scope: !606, inlinedAt: !816)
!819 = !DILocation(line: 454, column: 9, scope: !784)
!820 = !DILocation(line: 458, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !753, file: !3, line: 457, column: 9)
!822 = !DILocation(line: 460, column: 38, scope: !823)
!823 = distinct !DILexicalBlock(scope: !821, file: !3, line: 458, column: 44)
!824 = !DILocation(line: 460, column: 20, scope: !823)
!825 = !DILocation(line: 462, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !753, file: !3, line: 462, column: 5)
!827 = !DILocation(line: 462, column: 5, scope: !753)
!828 = !DILocation(line: 462, column: 5, scope: !829)
!829 = !DILexicalBlockFile(scope: !826, file: !3, discriminator: 1)
!830 = !DILocation(line: 327, column: 22, scope: !646, inlinedAt: !831)
!831 = distinct !DILocation(line: 463, column: 19, scope: !753)
!832 = !DILocation(line: 327, column: 32, scope: !646, inlinedAt: !831)
!833 = !DILocation(line: 329, column: 12, scope: !646, inlinedAt: !831)
!834 = !DILocation(line: 464, column: 19, scope: !753)
!835 = !DILocation(line: 465, column: 5, scope: !753)
!836 = !DILocation(line: 465, column: 29, scope: !753)
!837 = !DILocation(line: 466, column: 5, scope: !753)
!838 = !DILocation(line: 467, column: 5, scope: !753)
!839 = !DILocation(line: 468, column: 1, scope: !753)
!840 = distinct !DISubprogram(name: "set_phone_book", scope: !3, file: !3, line: 474, type: !463, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !841)
!841 = !{!842, !843, !844, !845, !846, !850}
!842 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !840, file: !3, line: 474, type: !130)
!843 = !DILocalVariable(name: "connection_ID", arg: 2, scope: !840, file: !3, line: 474, type: !136)
!844 = !DILocalVariable(name: "path", arg: 3, scope: !840, file: !3, line: 474, type: !465)
!845 = !DILocalVariable(name: "path_len", arg: 4, scope: !840, file: !3, line: 474, type: !95)
!846 = !DILocalVariable(name: "setPathOpcode", scope: !840, file: !3, line: 476, type: !847)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 480, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 60)
!850 = !DILocalVariable(name: "curPosition", scope: !840, file: !3, line: 477, type: !130)
!851 = !DILocation(line: 474, column: 25, scope: !840)
!852 = !DILocation(line: 474, column: 48, scope: !840)
!853 = !DILocation(line: 474, column: 69, scope: !840)
!854 = !DILocation(line: 474, column: 78, scope: !840)
!855 = !DILocation(line: 476, column: 5, scope: !840)
!856 = !DILocation(line: 476, column: 8, scope: !840)
!857 = !DILocation(line: 477, column: 9, scope: !840)
!858 = !DILocation(line: 478, column: 22, scope: !840)
!859 = !DILocation(line: 479, column: 5, scope: !840)
!860 = !DILocation(line: 483, column: 5, scope: !840)
!861 = !DILocation(line: 480, column: 22, scope: !840)
!862 = !DILocation(line: 483, column: 22, scope: !840)
!863 = !DILocation(line: 484, column: 5, scope: !840)
!864 = !DILocation(line: 485, column: 19, scope: !840)
!865 = !DILocation(line: 486, column: 5, scope: !840)
!866 = !DILocation(line: 486, column: 32, scope: !840)
!867 = !DILocation(line: 487, column: 5, scope: !840)
!868 = !DILocation(line: 488, column: 5, scope: !840)
!869 = !DILocation(line: 489, column: 1, scope: !840)
!870 = distinct !DISubprogram(name: "pull_vCard_listing", scope: !3, file: !3, line: 496, type: !582, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DILocalVariable(name: "rfcomm_channel_id", arg: 1, scope: !870, file: !3, line: 496, type: !130)
!873 = !DILocalVariable(name: "connection_ID", arg: 2, scope: !870, file: !3, line: 496, type: !136)
!874 = !DILocalVariable(name: "pullOpcode", scope: !870, file: !3, line: 498, type: !472)
!875 = !DILocalVariable(name: "curPosition", scope: !870, file: !3, line: 499, type: !130)
!876 = !DILocation(line: 496, column: 29, scope: !870)
!877 = !DILocation(line: 496, column: 52, scope: !870)
!878 = !DILocation(line: 498, column: 5, scope: !870)
!879 = !DILocation(line: 498, column: 8, scope: !870)
!880 = !DILocation(line: 499, column: 9, scope: !870)
!881 = !DILocation(line: 500, column: 19, scope: !870)
!882 = !DILocation(line: 501, column: 5, scope: !870)
!883 = !DILocation(line: 501, column: 19, scope: !870)
!884 = !DILocation(line: 502, column: 5, scope: !870)
!885 = !DILocation(line: 502, column: 19, scope: !870)
!886 = !DILocation(line: 503, column: 5, scope: !870)
!887 = !DILocation(line: 503, column: 19, scope: !870)
!888 = !DILocation(line: 504, column: 5, scope: !870)
!889 = !DILocation(line: 336, column: 27, scope: !654, inlinedAt: !890)
!890 = distinct !DILocation(line: 505, column: 19, scope: !870)
!891 = !DILocation(line: 336, column: 37, scope: !654, inlinedAt: !890)
!892 = !DILocation(line: 338, column: 12, scope: !654, inlinedAt: !890)
!893 = !DILocation(line: 506, column: 19, scope: !870)
!894 = !DILocation(line: 374, column: 32, scope: !703, inlinedAt: !895)
!895 = distinct !DILocation(line: 507, column: 19, scope: !870)
!896 = !DILocation(line: 374, column: 47, scope: !703, inlinedAt: !895)
!897 = !DILocation(line: 376, column: 9, scope: !703, inlinedAt: !895)
!898 = !DILocation(line: 377, column: 8, scope: !703, inlinedAt: !895)
!899 = !DILocation(line: 383, column: 18, scope: !703, inlinedAt: !895)
!900 = !DILocation(line: 383, column: 5, scope: !703, inlinedAt: !895)
!901 = !DILocation(line: 383, column: 22, scope: !703, inlinedAt: !895)
!902 = !DILocation(line: 384, column: 18, scope: !703, inlinedAt: !895)
!903 = !DILocation(line: 384, column: 5, scope: !703, inlinedAt: !895)
!904 = !DILocation(line: 384, column: 22, scope: !703, inlinedAt: !895)
!905 = !DILocation(line: 385, column: 18, scope: !703, inlinedAt: !895)
!906 = !DILocation(line: 385, column: 5, scope: !703, inlinedAt: !895)
!907 = !DILocation(line: 385, column: 22, scope: !703, inlinedAt: !895)
!908 = !DILocation(line: 386, column: 5, scope: !726, inlinedAt: !895)
!909 = !DILocation(line: 387, column: 28, scope: !729, inlinedAt: !895)
!910 = !DILocation(line: 389, column: 17, scope: !703, inlinedAt: !895)
!911 = !DILocation(line: 508, column: 5, scope: !870)
!912 = !DILocation(line: 508, column: 29, scope: !870)
!913 = !DILocation(line: 509, column: 5, scope: !870)
!914 = !DILocation(line: 510, column: 5, scope: !870)
!915 = !DILocation(line: 511, column: 1, scope: !870)
!916 = distinct !DISubprogram(name: "obex_parse_header_foreach", scope: !3, file: !3, line: 536, type: !917, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !920)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !919, !130}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!920 = !{!921, !922, !923, !924}
!921 = !DILocalVariable(name: "head_list", arg: 1, scope: !916, file: !3, line: 536, type: !919)
!922 = !DILocalVariable(name: "size", arg: 2, scope: !916, file: !3, line: 536, type: !130)
!923 = !DILocalVariable(name: "search_pt", scope: !916, file: !3, line: 538, type: !94)
!924 = !DILocalVariable(name: "header", scope: !916, file: !3, line: 539, type: !95)
!925 = !DILocation(line: 536, column: 42, scope: !916)
!926 = !DILocation(line: 536, column: 57, scope: !916)
!927 = !DILocation(line: 538, column: 9, scope: !916)
!928 = !DILocation(line: 541, column: 5, scope: !929)
!929 = distinct !DILexicalBlock(scope: !916, file: !3, line: 541, column: 5)
!930 = !DILocation(line: 541, column: 5, scope: !916)
!931 = !DILocation(line: 541, column: 5, scope: !932)
!932 = !DILexicalBlockFile(scope: !929, file: !3, discriminator: 1)
!933 = !DILocation(line: 543, column: 18, scope: !934)
!934 = distinct !DILexicalBlock(scope: !916, file: !3, line: 542, column: 42)
!935 = !DILocation(line: 544, column: 9, scope: !934)
!936 = distinct !{!936, !937, !938}
!937 = !DILocation(line: 542, column: 5, scope: !916)
!938 = !DILocation(line: 560, column: 5, scope: !916)
!939 = !DILocation(line: 546, column: 13, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 546, column: 13)
!941 = distinct !DILexicalBlock(scope: !934, file: !3, line: 544, column: 25)
!942 = !DILocation(line: 546, column: 13, scope: !941)
!943 = !DILocation(line: 547, column: 40, scope: !941)
!944 = !DILocation(line: 546, column: 13, scope: !945)
!945 = !DILexicalBlockFile(scope: !940, file: !3, discriminator: 1)
!946 = !DILocation(line: 547, column: 13, scope: !941)
!947 = !DILocation(line: 547, column: 23, scope: !941)
!948 = !DILocation(line: 547, column: 38, scope: !941)
!949 = !DILocation(line: 549, column: 13, scope: !941)
!950 = !DILocation(line: 551, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !941, file: !3, line: 551, column: 13)
!952 = !DILocation(line: 551, column: 13, scope: !941)
!953 = !DILocation(line: 551, column: 13, scope: !954)
!954 = !DILexicalBlockFile(scope: !951, file: !3, discriminator: 1)
!955 = !DILocation(line: 557, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !941, file: !3, line: 557, column: 13)
!957 = !DILocation(line: 557, column: 13, scope: !941)
!958 = !DILocation(line: 557, column: 13, scope: !959)
!959 = !DILexicalBlockFile(scope: !956, file: !3, discriminator: 1)
!960 = !DILocation(line: 561, column: 1, scope: !961)
!961 = !DILexicalBlockFile(scope: !916, file: !3, discriminator: 2)
!962 = distinct !DISubprogram(name: "list_all_phone_books", scope: !3, file: !3, line: 562, type: !158, isLocal: false, isDefinition: true, scopeLine: 563, isOptimized: true, unit: !2, variables: !963)
!963 = !{!964}
!964 = !DILocalVariable(name: "type", scope: !962, file: !3, line: 564, type: !95)
!965 = !DILocation(line: 564, column: 8, scope: !962)
!966 = !DILocation(line: 565, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !3, line: 565, column: 5)
!968 = !DILocation(line: 565, column: 5, scope: !962)
!969 = !DILocation(line: 565, column: 5, scope: !970)
!970 = !DILexicalBlockFile(scope: !967, file: !3, discriminator: 1)
!971 = !DILocation(line: 566, column: 13, scope: !962)
!972 = !DILocation(line: 566, column: 23, scope: !962)
!973 = !DILocation(line: 566, column: 5, scope: !962)
!974 = !DILocation(line: 574, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !962, file: !3, line: 566, column: 36)
!976 = !DILocation(line: 578, column: 9, scope: !975)
!977 = !DILocation(line: 582, column: 9, scope: !975)
!978 = !DILocation(line: 586, column: 9, scope: !975)
!979 = !DILocation(line: 588, column: 31, scope: !975)
!980 = !DILocation(line: 589, column: 9, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !3, line: 589, column: 9)
!982 = !DILocation(line: 589, column: 9, scope: !975)
!983 = !DILocation(line: 589, column: 9, scope: !984)
!984 = !DILexicalBlockFile(scope: !981, file: !3, discriminator: 1)
!985 = !DILocation(line: 590, column: 9, scope: !975)
!986 = !DILocation(line: 591, column: 9, scope: !975)
!987 = !DILocation(line: 593, column: 31, scope: !962)
!988 = !DILocation(line: 593, column: 64, scope: !962)
!989 = !DILocation(line: 593, column: 5, scope: !962)
!990 = !DILocation(line: 594, column: 1, scope: !962)
!991 = !DILocation(line: 594, column: 1, scope: !992)
!992 = !DILexicalBlockFile(scope: !962, file: !3, discriminator: 1)
!993 = distinct !DISubprogram(name: "pbap_mutex_malloc", scope: !3, file: !3, line: 595, type: !158, isLocal: false, isDefinition: true, scopeLine: 596, isOptimized: true, unit: !2, variables: !160)
!994 = !DILocation(line: 597, column: 5, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !3, discriminator: 1)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 597, column: 5)
!997 = distinct !DILexicalBlock(scope: !993, file: !3, line: 597, column: 5)
!998 = !{!208, !208, i64 0}
!999 = !DILocation(line: 597, column: 5, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !997, file: !3, discriminator: 1)
!1001 = !DILocation(line: 597, column: 5, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !3, discriminator: 2)
!1003 = distinct !DILexicalBlock(scope: !996, file: !3, line: 597, column: 5)
!1004 = !DILocation(line: 597, column: 5, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !3, discriminator: 3)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 597, column: 5)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 597, column: 5)
!1008 = !DILocation(line: 597, column: 5, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1006, file: !3, discriminator: 8)
!1010 = !DILocation(line: 597, column: 5, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1006, file: !3, discriminator: 9)
!1012 = !DILocation(line: 597, column: 5, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !3, discriminator: 5)
!1014 = distinct !DILexicalBlock(scope: !996, file: !3, line: 597, column: 5)
!1015 = !DILocation(line: 148, column: 5, scope: !1016, inlinedAt: !1017)
!1016 = distinct !DISubprogram(name: "cpu_reset", scope: !111, file: !111, line: 145, type: !158, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !160)
!1017 = distinct !DILocation(line: 597, column: 5, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !3, discriminator: 6)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 597, column: 5)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 597, column: 5)
!1021 = !DILocation(line: 597, column: 5, scope: !1018)
!1022 = !DILocation(line: 598, column: 31, scope: !993)
!1023 = !DILocation(line: 598, column: 44, scope: !993)
!1024 = !DILocation(line: 598, column: 5, scope: !993)
!1025 = !DILocation(line: 599, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !993, file: !3, line: 599, column: 9)
!1027 = !DILocation(line: 599, column: 19, scope: !1026)
!1028 = !DILocation(line: 599, column: 36, scope: !1026)
!1029 = !DILocation(line: 599, column: 9, scope: !993)
!1030 = !DILocation(line: 600, column: 38, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 599, column: 45)
!1032 = !DILocation(line: 600, column: 9, scope: !1031)
!1033 = !DILocation(line: 600, column: 19, scope: !1031)
!1034 = !DILocation(line: 600, column: 36, scope: !1031)
!1035 = !DILocation(line: 601, column: 19, scope: !1031)
!1036 = !DILocation(line: 601, column: 36, scope: !1031)
!1037 = !DILocation(line: 602, column: 9, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 1)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 602, column: 9)
!1040 = !DILocation(line: 602, column: 9, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1042, file: !3, discriminator: 2)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 602, column: 9)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 602, column: 9)
!1044 = !DILocation(line: 602, column: 9, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 3)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 602, column: 9)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 602, column: 9)
!1048 = !DILocation(line: 602, column: 9, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 8)
!1050 = !DILocation(line: 602, column: 9, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 9)
!1052 = !DILocation(line: 602, column: 9, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1054, file: !3, discriminator: 5)
!1054 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 602, column: 9)
!1055 = !DILocation(line: 148, column: 5, scope: !1016, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 602, column: 9, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !3, discriminator: 6)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 602, column: 9)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 602, column: 9)
!1060 = !DILocation(line: 602, column: 9, scope: !1057)
!1061 = !DILocation(line: 604, column: 5, scope: !993)
!1062 = !DILocation(line: 605, column: 1, scope: !993)
!1063 = distinct !DISubprogram(name: "pbap_mutex_free", scope: !3, file: !3, line: 606, type: !158, isLocal: false, isDefinition: true, scopeLine: 607, isOptimized: true, unit: !2, variables: !160)
!1064 = !DILocation(line: 608, column: 9, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 608, column: 9)
!1066 = !DILocation(line: 608, column: 19, scope: !1065)
!1067 = !DILocation(line: 608, column: 9, scope: !1063)
!1068 = !DILocation(line: 609, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 608, column: 37)
!1070 = !DILocation(line: 610, column: 9, scope: !1069)
!1071 = !DILocation(line: 610, column: 19, scope: !1069)
!1072 = !DILocation(line: 610, column: 36, scope: !1069)
!1073 = !DILocation(line: 611, column: 5, scope: !1069)
!1074 = !DILocation(line: 612, column: 1, scope: !1063)
!1075 = distinct !DISubprogram(name: "opp_parse_raw_data", scope: !3, file: !3, line: 617, type: !917, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1085, !1086}
!1077 = !DILocalVariable(name: "packet", arg: 1, scope: !1075, file: !3, line: 617, type: !919)
!1078 = !DILocalVariable(name: "size", arg: 2, scope: !1075, file: !3, line: 617, type: !130)
!1079 = !DILocalVariable(name: "obex_header_body_index", scope: !1075, file: !3, line: 619, type: !178)
!1080 = !DILocalVariable(name: "packet_ptr", scope: !1075, file: !3, line: 620, type: !94)
!1081 = !DILocalVariable(name: "conn_op", scope: !1082, file: !3, line: 705, type: !105)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 703, column: 9)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 693, column: 40)
!1084 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 659, column: 28)
!1085 = !DILocalVariable(name: "head_index", scope: !1083, file: !3, line: 728, type: !130)
!1086 = !DILocalVariable(name: "head_index", scope: !1084, file: !3, line: 749, type: !130)
!1087 = !DILocation(line: 617, column: 35, scope: !1075)
!1088 = !DILocation(line: 617, column: 47, scope: !1075)
!1089 = !DILocation(line: 620, column: 9, scope: !1075)
!1090 = !DILocation(line: 621, column: 14, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 621, column: 9)
!1092 = !DILocation(line: 621, column: 24, scope: !1091)
!1093 = !DILocation(line: 621, column: 11, scope: !1091)
!1094 = !DILocation(line: 621, column: 9, scope: !1075)
!1095 = !DILocation(line: 622, column: 46, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 621, column: 50)
!1097 = !DILocation(line: 622, column: 9, scope: !1096)
!1098 = !DILocation(line: 627, column: 47, scope: !1096)
!1099 = !DILocation(line: 627, column: 19, scope: !1096)
!1100 = !DILocation(line: 627, column: 44, scope: !1096)
!1101 = !DILocation(line: 628, column: 9, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 628, column: 9)
!1103 = !DILocation(line: 628, column: 9, scope: !1096)
!1104 = !DILocation(line: 628, column: 9, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1102, file: !3, discriminator: 1)
!1106 = !DILocation(line: 630, column: 23, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 630, column: 13)
!1108 = !DILocation(line: 629, column: 9, scope: !1096)
!1109 = !DILocation(line: 629, column: 19, scope: !1096)
!1110 = !DILocation(line: 629, column: 30, scope: !1096)
!1111 = !{!206, !207, i64 4}
!1112 = !DILocation(line: 630, column: 48, scope: !1107)
!1113 = !DILocation(line: 630, column: 13, scope: !1096)
!1114 = !DILocation(line: 631, column: 27, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 631, column: 17)
!1116 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 630, column: 53)
!1117 = !DILocation(line: 631, column: 44, scope: !1115)
!1118 = !DILocation(line: 631, column: 17, scope: !1116)
!1119 = !DILocation(line: 632, column: 17, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 631, column: 53)
!1121 = !DILocation(line: 633, column: 17, scope: !1120)
!1122 = !DILocation(line: 638, column: 44, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 637, column: 12)
!1124 = !DILocation(line: 639, column: 23, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 639, column: 13)
!1126 = !DILocation(line: 639, column: 40, scope: !1125)
!1127 = !DILocation(line: 639, column: 13, scope: !1123)
!1128 = !DILocation(line: 638, column: 47, scope: !1123)
!1129 = !DILocation(line: 640, column: 58, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 639, column: 49)
!1131 = !DILocation(line: 640, column: 21, scope: !1130)
!1132 = !DILocation(line: 640, column: 13, scope: !1130)
!1133 = !DILocation(line: 645, column: 30, scope: !1123)
!1134 = !DILocation(line: 646, column: 23, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 646, column: 13)
!1136 = !DILocation(line: 646, column: 48, scope: !1135)
!1137 = !DILocation(line: 646, column: 13, scope: !1123)
!1138 = !DILocation(line: 647, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 647, column: 13)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 646, column: 54)
!1141 = !DILocation(line: 647, column: 13, scope: !1140)
!1142 = !DILocation(line: 647, column: 13, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1139, file: !3, discriminator: 1)
!1144 = !DILocation(line: 648, column: 17, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 648, column: 17)
!1146 = !DILocation(line: 648, column: 27, scope: !1145)
!1147 = !DILocation(line: 648, column: 17, scope: !1140)
!1148 = !DILocation(line: 658, column: 12, scope: !1075)
!1149 = !DILocation(line: 655, column: 20, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 655, column: 9)
!1151 = !DILocation(line: 655, column: 9, scope: !1075)
!1152 = !DILocation(line: 658, column: 22, scope: !1075)
!1153 = !DILocation(line: 659, column: 13, scope: !1075)
!1154 = !DILocation(line: 659, column: 5, scope: !1075)
!1155 = !DILocation(line: 661, column: 19, scope: !1084)
!1156 = !DILocation(line: 661, column: 33, scope: !1084)
!1157 = !DILocation(line: 662, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 662, column: 9)
!1159 = !DILocation(line: 662, column: 9, scope: !1084)
!1160 = !DILocation(line: 662, column: 9, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1158, file: !3, discriminator: 1)
!1162 = !DILocation(line: 663, column: 36, scope: !1084)
!1163 = !DILocation(line: 663, column: 46, scope: !1084)
!1164 = !DILocation(line: 663, column: 9, scope: !1084)
!1165 = !DILocation(line: 665, column: 9, scope: !1084)
!1166 = !DILocation(line: 667, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 667, column: 9)
!1168 = !DILocation(line: 667, column: 9, scope: !1084)
!1169 = !DILocation(line: 667, column: 9, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1167, file: !3, discriminator: 1)
!1171 = !DILocation(line: 668, column: 35, scope: !1084)
!1172 = !DILocation(line: 668, column: 45, scope: !1084)
!1173 = !DILocation(line: 668, column: 9, scope: !1084)
!1174 = !DILocation(line: 669, column: 9, scope: !1084)
!1175 = !DILocation(line: 671, column: 34, scope: !1084)
!1176 = !DILocation(line: 619, column: 9, scope: !1075)
!1177 = !DILocation(line: 672, column: 13, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 672, column: 13)
!1179 = !DILocation(line: 672, column: 48, scope: !1178)
!1180 = !DILocation(line: 672, column: 13, scope: !1084)
!1181 = !DILocation(line: 673, column: 41, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 672, column: 69)
!1183 = !DILocation(line: 673, column: 13, scope: !1182)
!1184 = !DILocation(line: 673, column: 23, scope: !1182)
!1185 = !DILocation(line: 673, column: 37, scope: !1182)
!1186 = !DILocation(line: 673, column: 93, scope: !1182)
!1187 = !DILocation(line: 674, column: 9, scope: !1182)
!1188 = !DILocation(line: 675, column: 33, scope: !1084)
!1189 = !DILocation(line: 675, column: 43, scope: !1084)
!1190 = !DILocation(line: 675, column: 9, scope: !1084)
!1191 = !DILocation(line: 676, column: 9, scope: !1084)
!1192 = !DILocation(line: 678, column: 34, scope: !1084)
!1193 = !DILocation(line: 679, column: 13, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 679, column: 13)
!1195 = !DILocation(line: 679, column: 48, scope: !1194)
!1196 = !DILocation(line: 679, column: 13, scope: !1084)
!1197 = !DILocation(line: 680, column: 41, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 679, column: 74)
!1199 = !DILocation(line: 680, column: 13, scope: !1198)
!1200 = !DILocation(line: 680, column: 23, scope: !1198)
!1201 = !DILocation(line: 680, column: 37, scope: !1198)
!1202 = !DILocation(line: 680, column: 93, scope: !1198)
!1203 = !DILocation(line: 681, column: 9, scope: !1198)
!1204 = !DILocation(line: 682, column: 29, scope: !1084)
!1205 = !DILocation(line: 682, column: 39, scope: !1084)
!1206 = !DILocation(line: 682, column: 9, scope: !1084)
!1207 = !DILocation(line: 683, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 683, column: 9)
!1209 = !DILocation(line: 683, column: 9, scope: !1084)
!1210 = !DILocation(line: 683, column: 9, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1208, file: !3, discriminator: 1)
!1212 = !DILocation(line: 684, column: 9, scope: !1084)
!1213 = !DILocation(line: 684, column: 19, scope: !1084)
!1214 = !DILocation(line: 684, column: 33, scope: !1084)
!1215 = !DILocation(line: 685, column: 9, scope: !1084)
!1216 = !DILocation(line: 687, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 687, column: 9)
!1218 = !DILocation(line: 687, column: 9, scope: !1084)
!1219 = !DILocation(line: 687, column: 9, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1217, file: !3, discriminator: 1)
!1221 = !DILocation(line: 690, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 690, column: 9)
!1223 = !DILocation(line: 690, column: 9, scope: !1084)
!1224 = !DILocation(line: 690, column: 9, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1222, file: !3, discriminator: 1)
!1226 = !DILocation(line: 693, column: 27, scope: !1084)
!1227 = !DILocation(line: 693, column: 9, scope: !1084)
!1228 = !DILocation(line: 695, column: 50, scope: !1083)
!1229 = !DILocation(line: 695, column: 13, scope: !1083)
!1230 = !DILocation(line: 696, column: 13, scope: !1083)
!1231 = !DILocation(line: 704, column: 13, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 704, column: 13)
!1233 = !DILocation(line: 704, column: 13, scope: !1082)
!1234 = !DILocation(line: 704, column: 13, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1232, file: !3, discriminator: 1)
!1236 = !DILocation(line: 706, column: 48, scope: !1082)
!1237 = !DILocation(line: 706, column: 76, scope: !1082)
!1238 = !DILocation(line: 706, column: 13, scope: !1082)
!1239 = !DILocation(line: 707, column: 17, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 707, column: 17)
!1241 = !DILocation(line: 707, column: 27, scope: !1240)
!1242 = !{!206, !197, i64 2}
!1243 = !DILocation(line: 707, column: 35, scope: !1240)
!1244 = !DILocation(line: 707, column: 17, scope: !1082)
!1245 = !DILocation(line: 708, column: 27, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 707, column: 60)
!1247 = !DILocation(line: 708, column: 39, scope: !1246)
!1248 = !DILocation(line: 709, column: 13, scope: !1246)
!1249 = !DILocation(line: 710, column: 13, scope: !1082)
!1250 = !DILocation(line: 727, column: 13, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 727, column: 13)
!1252 = !DILocation(line: 727, column: 13, scope: !1083)
!1253 = !DILocation(line: 727, column: 13, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1251, file: !3, discriminator: 1)
!1255 = !DILocation(line: 729, column: 26, scope: !1083)
!1256 = !DILocation(line: 728, column: 17, scope: !1083)
!1257 = !DILocation(line: 730, column: 17, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 730, column: 17)
!1259 = !DILocation(line: 730, column: 17, scope: !1083)
!1260 = !DILocation(line: 731, column: 71, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 730, column: 29)
!1262 = !DILocation(line: 731, column: 69, scope: !1261)
!1263 = !DILocation(line: 731, column: 82, scope: !1261)
!1264 = !DILocation(line: 731, column: 87, scope: !1261)
!1265 = !DILocation(line: 731, column: 92, scope: !1261)
!1266 = !DILocation(line: 731, column: 105, scope: !1261)
!1267 = !DILocation(line: 731, column: 17, scope: !1261)
!1268 = !DILocation(line: 732, column: 13, scope: !1261)
!1269 = !DILocation(line: 735, column: 13, scope: !1083)
!1270 = !DILocation(line: 737, column: 13, scope: !1083)
!1271 = !DILocation(line: 739, column: 50, scope: !1083)
!1272 = !DILocation(line: 739, column: 13, scope: !1083)
!1273 = !DILocation(line: 740, column: 13, scope: !1083)
!1274 = !DILocation(line: 748, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 748, column: 9)
!1276 = !DILocation(line: 748, column: 9, scope: !1084)
!1277 = !DILocation(line: 748, column: 9, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1275, file: !3, discriminator: 1)
!1279 = !DILocation(line: 750, column: 22, scope: !1084)
!1280 = !DILocation(line: 749, column: 13, scope: !1084)
!1281 = !DILocation(line: 751, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 751, column: 13)
!1283 = !DILocation(line: 751, column: 13, scope: !1084)
!1284 = !DILocation(line: 752, column: 67, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 751, column: 25)
!1286 = !DILocation(line: 752, column: 65, scope: !1285)
!1287 = !DILocation(line: 752, column: 78, scope: !1285)
!1288 = !DILocation(line: 752, column: 83, scope: !1285)
!1289 = !DILocation(line: 752, column: 88, scope: !1285)
!1290 = !DILocation(line: 752, column: 101, scope: !1285)
!1291 = !DILocation(line: 752, column: 13, scope: !1285)
!1292 = !DILocation(line: 753, column: 9, scope: !1285)
!1293 = !DILocation(line: 755, column: 13, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 755, column: 13)
!1295 = !DILocation(line: 755, column: 23, scope: !1294)
!1296 = !DILocation(line: 755, column: 35, scope: !1294)
!1297 = !DILocation(line: 755, column: 13, scope: !1084)
!1298 = !DILocation(line: 756, column: 45, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 755, column: 52)
!1300 = !DILocation(line: 756, column: 78, scope: !1299)
!1301 = !DILocation(line: 756, column: 13, scope: !1299)
!1302 = !DILocation(line: 757, column: 9, scope: !1299)
!1303 = !DILocation(line: 763, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 763, column: 9)
!1305 = !DILocation(line: 763, column: 9, scope: !1084)
!1306 = !DILocation(line: 763, column: 9, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1304, file: !3, discriminator: 1)
!1308 = !DILocation(line: 764, column: 9, scope: !1084)
!1309 = !DILocation(line: 765, column: 9, scope: !1084)
!1310 = !DILocation(line: 769, column: 1, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1075, file: !3, discriminator: 2)
!1312 = distinct !DISubprogram(name: "opp_cmd_io_ctrl", scope: !3, file: !3, line: 837, type: !1313, isLocal: false, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!178, !94, !136, !136}
!1315 = !{!1316, !1317, !1318, !1319, !1322}
!1316 = !DILocalVariable(name: "addr", arg: 1, scope: !1312, file: !3, line: 837, type: !94)
!1317 = !DILocalVariable(name: "cmd", arg: 2, scope: !1312, file: !3, line: 837, type: !136)
!1318 = !DILocalVariable(name: "value", arg: 3, scope: !1312, file: !3, line: 837, type: !136)
!1319 = !DILocalVariable(name: "opp_ptr", scope: !1320, file: !3, line: 843, type: !94)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 842, column: 27)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 842, column: 9)
!1322 = !DILocalVariable(name: "opp_malloc_size", scope: !1320, file: !3, line: 844, type: !130)
!1323 = !DILocation(line: 837, column: 25, scope: !1312)
!1324 = !DILocation(line: 837, column: 35, scope: !1312)
!1325 = !DILocation(line: 837, column: 45, scope: !1312)
!1326 = !DILocation(line: 839, column: 5, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 839, column: 5)
!1328 = !DILocation(line: 839, column: 5, scope: !1312)
!1329 = !DILocation(line: 839, column: 5, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 1)
!1331 = !DILocation(line: 842, column: 9, scope: !1321)
!1332 = !DILocation(line: 842, column: 18, scope: !1321)
!1333 = !DILocation(line: 842, column: 9, scope: !1312)
!1334 = !DILocation(line: 843, column: 14, scope: !1320)
!1335 = !DILocation(line: 844, column: 13, scope: !1320)
!1336 = !DILocation(line: 845, column: 19, scope: !1320)
!1337 = !DILocation(line: 846, column: 9, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !3, discriminator: 1)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 846, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 846, column: 9)
!1341 = !DILocation(line: 846, column: 9, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1340, file: !3, discriminator: 1)
!1343 = !DILocation(line: 846, column: 9, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !3, discriminator: 2)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 846, column: 9)
!1346 = !DILocation(line: 846, column: 9, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 3)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 846, column: 9)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 846, column: 9)
!1350 = !DILocation(line: 846, column: 9, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 9)
!1352 = !DILocation(line: 846, column: 9, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 10)
!1354 = !DILocation(line: 846, column: 9, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 5)
!1356 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 846, column: 9)
!1357 = !DILocation(line: 148, column: 5, scope: !1016, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 846, column: 9, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1360, file: !3, discriminator: 6)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 846, column: 9)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 846, column: 9)
!1362 = !DILocation(line: 846, column: 9, scope: !1359)
!1363 = !DILocation(line: 847, column: 9, scope: !1320)
!1364 = !DILocation(line: 848, column: 19, scope: !1320)
!1365 = !DILocation(line: 848, column: 71, scope: !1320)
!1366 = !DILocation(line: 848, column: 9, scope: !1320)
!1367 = !DILocation(line: 849, column: 5, scope: !1320)
!1368 = !DILocation(line: 851, column: 5, scope: !1312)
!1369 = !DILocation(line: 855, column: 67, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 851, column: 18)
!1371 = !DILocation(line: 855, column: 86, scope: !1370)
!1372 = !DILocation(line: 855, column: 9, scope: !1370)
!1373 = !DILocation(line: 856, column: 9, scope: !1370)
!1374 = !DILocation(line: 859, column: 25, scope: !1370)
!1375 = !DILocalVariable(name: "address", arg: 1, scope: !1376, file: !3, line: 96, type: !1379)
!1376 = distinct !DISubprogram(name: "pbap_open", scope: !3, file: !3, line: 96, type: !1377, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1380)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1379, !95}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!1380 = !{!1375, !1381}
!1381 = !DILocalVariable(name: "op", arg: 2, scope: !1376, file: !3, line: 96, type: !95)
!1382 = !DILocation(line: 96, column: 33, scope: !1376, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 859, column: 9, scope: !1370)
!1384 = !DILocation(line: 96, column: 45, scope: !1376, inlinedAt: !1383)
!1385 = !DILocation(line: 99, column: 9, scope: !1386, inlinedAt: !1383)
!1386 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 99, column: 9)
!1387 = !DILocation(line: 99, column: 19, scope: !1386, inlinedAt: !1383)
!1388 = !DILocation(line: 99, column: 31, scope: !1386, inlinedAt: !1383)
!1389 = !DILocation(line: 99, column: 47, scope: !1386, inlinedAt: !1383)
!1390 = !DILocation(line: 99, column: 60, scope: !1391, inlinedAt: !1383)
!1391 = !DILexicalBlockFile(scope: !1386, file: !3, discriminator: 1)
!1392 = !DILocation(line: 99, column: 82, scope: !1391, inlinedAt: !1383)
!1393 = !DILocation(line: 99, column: 9, scope: !1394, inlinedAt: !1383)
!1394 = !DILexicalBlockFile(scope: !1376, file: !3, discriminator: 1)
!1395 = !DILocation(line: 101, column: 31, scope: !1396, inlinedAt: !1383)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 99, column: 88)
!1397 = !DILocation(line: 102, column: 19, scope: !1396, inlinedAt: !1383)
!1398 = !DILocation(line: 102, column: 27, scope: !1396, inlinedAt: !1383)
!1399 = !DILocation(line: 103, column: 33, scope: !1400, inlinedAt: !1383)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 103, column: 13)
!1401 = !{!1402, !196, i64 32}
!1402 = !{!"profile_cmd_handle", !196, i64 0, !196, i64 4, !196, i64 8, !196, i64 12, !196, i64 16, !196, i64 20, !196, i64 24, !196, i64 28, !196, i64 32, !196, i64 36, !196, i64 40}
!1403 = !DILocation(line: 103, column: 13, scope: !1400, inlinedAt: !1383)
!1404 = !DILocation(line: 103, column: 13, scope: !1396, inlinedAt: !1383)
!1405 = !DILocation(line: 104, column: 13, scope: !1406, inlinedAt: !1383)
!1406 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 103, column: 47)
!1407 = !DILocation(line: 105, column: 9, scope: !1406, inlinedAt: !1383)
!1408 = !DILocation(line: 107, column: 9, scope: !1409, inlinedAt: !1383)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 107, column: 9)
!1410 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 106, column: 12)
!1411 = !DILocation(line: 107, column: 9, scope: !1410, inlinedAt: !1383)
!1412 = !DILocation(line: 107, column: 9, scope: !1413, inlinedAt: !1383)
!1413 = !DILexicalBlockFile(scope: !1409, file: !3, discriminator: 1)
!1414 = !DILocation(line: 862, column: 9, scope: !1370)
!1415 = !DILocation(line: 863, column: 9, scope: !1370)
!1416 = !DILocation(line: 867, column: 5, scope: !1312)
!1417 = !DILocation(line: 868, column: 1, scope: !1312)
!1418 = distinct !DISubprogram(name: "pbap_close", scope: !3, file: !3, line: 121, type: !158, isLocal: true, isDefinition: true, scopeLine: 122, isOptimized: true, unit: !2, variables: !160)
!1419 = !DILocation(line: 123, column: 9, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 123, column: 9)
!1421 = !DILocation(line: 123, column: 19, scope: !1420)
!1422 = !DILocation(line: 124, column: 9, scope: !1420)
!1423 = !DILocation(line: 125, column: 23, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1420, file: !3, discriminator: 1)
!1425 = !DILocation(line: 125, column: 45, scope: !1424)
!1426 = !DILocation(line: 123, column: 9, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 1)
!1428 = !DILocation(line: 129, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 128, column: 42)
!1430 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 128, column: 9)
!1431 = !DILocation(line: 132, column: 30, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 132, column: 9)
!1433 = !DILocation(line: 132, column: 40, scope: !1432)
!1434 = !DILocation(line: 132, column: 9, scope: !1432)
!1435 = !DILocation(line: 132, column: 9, scope: !1418)
!1436 = !DILocation(line: 134, column: 35, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 132, column: 64)
!1438 = !DILocation(line: 134, column: 68, scope: !1437)
!1439 = !DILocation(line: 134, column: 9, scope: !1437)
!1440 = !DILocation(line: 135, column: 5, scope: !1437)
!1441 = !DILocation(line: 137, column: 19, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 135, column: 12)
!1443 = !DILocation(line: 137, column: 31, scope: !1442)
!1444 = !DILocation(line: 138, column: 35, scope: !1442)
!1445 = !DILocation(line: 138, column: 68, scope: !1442)
!1446 = !DILocation(line: 138, column: 9, scope: !1442)
!1447 = !DILocation(line: 141, column: 1, scope: !1418)
