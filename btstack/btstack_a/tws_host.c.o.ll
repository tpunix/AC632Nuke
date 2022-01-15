; ModuleID = 'tws_host.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.search_tws_reasult_t = type { i8, [6 x i8], [6 x i8] }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@search_tws_reasult = hidden local_unnamed_addr global %struct.search_tws_reasult_t zeroinitializer, section ".bt_stack_bss", align 1, !dbg !13
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"priv_version_lenok=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ETWS\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"br22_tws_device_ok\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"crc_version_ok\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"tws_dev_indicate ok\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"TWS_STA_ESCO_OPEN_LINK\0A\00", align 1
@btstack_tws_debug_enable = external local_unnamed_addr global i8, align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"for app send size %d\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"<<<<<<<<<<<<tws host size %d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c">>>>>>>>>>>>>.tws host len %d\0A\0A\00", align 1
@tws_host_set_core_data.hci_connect_complete = private unnamed_addr constant [13 x i8] c"\03\0B\00\DD\00\EE\EE\EE\EE\EE\EE\01\00", align 1
@str = private unnamed_addr constant [20 x i8] c"<BT-log> :inquiry :\00"
@str.34 = private unnamed_addr constant [14 x i8] c"tws hci data\0A\00"
@str.35 = private unnamed_addr constant [17 x i8] c"l2cap conn data\0A\00"
@str.43 = private unnamed_addr constant [10 x i8] c"hfp data\0A\00"
@str.44 = private unnamed_addr constant [11 x i8] c"user data\0A\00"
@str.45 = private unnamed_addr constant [10 x i8] c"hid data\0A\00"
@str.46 = private unnamed_addr constant [10 x i8] c"spp data\0A\00"
@str.47 = private unnamed_addr constant [10 x i8] c"iap data\0A\00"
@str.48 = private unnamed_addr constant [10 x i8] c"app data\0A\00"
@str.49 = private unnamed_addr constant [21 x i8] c"IAP connection data\0A\00"
@str.50 = private unnamed_addr constant [21 x i8] c"spp connection data\0A\00"
@str.51 = private unnamed_addr constant [21 x i8] c"hid connection data\0A\00"
@str.52 = private unnamed_addr constant [21 x i8] c"app connection data\0A\00"
@str.53 = private unnamed_addr constant [22 x i8] c"user connection data\0A\00"
@str.54 = private unnamed_addr constant [21 x i8] c"hfp connection data\0A\00"
@str.55 = private unnamed_addr constant [18 x i8] c"rfc channel data\0A\00"
@str.56 = private unnamed_addr constant [22 x i8] c"rfc multiplexer data\0A\00"
@str.57 = private unnamed_addr constant [10 x i8] c"sdp data\0A\00"
@str.58 = private unnamed_addr constant [12 x i8] c"avctp data\0A\00"
@str.59 = private unnamed_addr constant [11 x i8] c"a2dp data\0A\00"
@str.60 = private unnamed_addr constant [12 x i8] c"avdtp data\0A\00"
@str.61 = private unnamed_addr constant [20 x i8] c"l2cap channel data\0A\00"
@str.62 = private unnamed_addr constant [20 x i8] c"l2cap connect data\0A\00"
@str.63 = private unnamed_addr constant [23 x i8] c"hci connect complete \0A\00"
@str.64 = private unnamed_addr constant [34 x i8] c"\0A\0A\0Al2cap_tws_acl deal err !!!!\0A\0A\0A\00"

; Function Attrs: nounwind optsize
define hidden zeroext i8 @get_tws_reomot_reasult(i8* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !29 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !34, metadata !DIExpression()), !dbg !35
  %2 = load i8, i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 0), align 1, !dbg !36, !tbaa !38
  %3 = icmp eq i8 %2, -86, !dbg !42
  br i1 %3, label %4, label %5, !dbg !43

; <label>:4:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 1, i32 0), i32 6, i32 1, i1 false), !dbg !44
  tail call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 1, i32 0), i8 0, i32 6, i32 1, i1 false), !dbg !46
  store i8 85, i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 0), align 1, !dbg !47, !tbaa !38
  br label %5, !dbg !48

; <label>:5:                                      ; preds = %4, %1
  %6 = phi i8 [ 1, %4 ], [ 0, %1 ]
  ret i8 %6, !dbg !49
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: nounwind optsize
define hidden zeroext i8 @get_tws_wait_phone_con_reasult(i8* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !50 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !52, metadata !DIExpression()), !dbg !53
  %2 = load i8, i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 0), align 1, !dbg !54, !tbaa !38
  %3 = icmp eq i8 %2, 85, !dbg !56
  br i1 %3, label %4, label %5, !dbg !57

; <label>:4:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 2, i32 0), i32 6, i32 1, i1 false), !dbg !58
  br label %5, !dbg !60

; <label>:5:                                      ; preds = %4, %1
  %6 = phi i8 [ 1, %4 ], [ 0, %1 ]
  ret i8 %6, !dbg !61
}

; Function Attrs: nounwind optsize
define weak hidden void @bt_get_tws_device_indicate(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !62 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !66, metadata !DIExpression()), !dbg !72
  tail call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !67, metadata !DIExpression()), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: nounwind optsize
define hidden void @hci_event_extended_inquiry_result(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !75 {
  %3 = alloca i16, align 2
  %4 = alloca [2 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [20 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !80, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i16 %1, metadata !81, metadata !DIExpression()), !dbg !95
  %7 = bitcast i16* %3 to i8*, !dbg !96
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %7) #8, !dbg !96
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i32 0, i32 0, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %8) #8, !dbg !97
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %4, metadata !83, metadata !DIExpression()), !dbg !98
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %9) #8, !dbg !99
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !85, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i8 0, metadata !86, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8 0, metadata !87, metadata !DIExpression()), !dbg !102
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #8, !dbg !103
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !88, metadata !DIExpression()), !dbg !104
  %11 = getelementptr inbounds i8, i8* %0, i32 14, !dbg !105
  %12 = load i8, i8* %11, align 1, !dbg !105, !tbaa !106
  %13 = zext i8 %12 to i32, !dbg !105
  %14 = getelementptr inbounds i8, i8* %0, i32 15, !dbg !105
  %15 = load i8, i8* %14, align 1, !dbg !105, !tbaa !106
  %16 = zext i8 %15 to i32, !dbg !105
  %17 = shl nuw nsw i32 %16, 8, !dbg !105
  %18 = or i32 %17, %13, !dbg !105
  %19 = inttoptr i32 %18 to i8*, !dbg !107
  call void @llvm.dbg.value(metadata i8* %19, metadata !92, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8 0, metadata !93, metadata !DIExpression()), !dbg !109
  %20 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !110, !tbaa !106
  %21 = icmp slt i8 %20, 0, !dbg !110
  br i1 %21, label %22, label %25, !dbg !112

; <label>:22:                                     ; preds = %2
  %23 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str, i32 0, i32 0)), !dbg !113
  %24 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !106
  br label %25, !dbg !113

; <label>:25:                                     ; preds = %22, %2
  %26 = phi i8 [ %24, %22 ], [ %20, %2 ], !dbg !115
  %27 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !117
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %9, i8* %27, i32 6, i32 1, i1 false), !dbg !118
  %28 = and i8 %26, 64, !dbg !115
  %29 = icmp eq i8 %28, 0, !dbg !115
  br i1 %29, label %31, label %30, !dbg !119

; <label>:30:                                     ; preds = %25
  call void @put_buf(i8* nonnull %9, i32 6) #9, !dbg !120
  br label %31, !dbg !120

; <label>:31:                                     ; preds = %30, %25
  call void @llvm.dbg.value(metadata i16 240, metadata !81, metadata !DIExpression()), !dbg !95
  call void @llvm.memset.p0i8.i32(i8* nonnull %10, i8 0, i32 20, i32 1, i1 false), !dbg !122
  call void @llvm.dbg.value(metadata i8* %19, metadata !92, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8 0, metadata !87, metadata !DIExpression()), !dbg !102
  br label %32, !dbg !123

; <label>:32:                                     ; preds = %50, %31
  %33 = phi i32 [ 240, %31 ], [ %57, %50 ]
  %34 = phi i8* [ %19, %31 ], [ %56, %50 ]
  %35 = phi i8 [ 0, %31 ], [ %52, %50 ]
  %36 = load i8, i8* %34, align 1, !dbg !125, !tbaa !106
  %37 = icmp eq i8 %36, 0, !dbg !128
  br i1 %37, label %59, label %38, !dbg !129

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !130
  %40 = load i8, i8* %39, align 1, !dbg !132, !tbaa !106
  %41 = icmp eq i8 %40, -1, !dbg !134
  br i1 %41, label %42, label %50, !dbg !135

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i8 %36, metadata !87, metadata !DIExpression()), !dbg !102
  %43 = zext i8 %36 to i32, !dbg !136
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 %43) #10, !dbg !138
  call void @llvm.dbg.value(metadata i8 20, metadata !87, metadata !DIExpression()), !dbg !102
  %45 = icmp ult i8 %36, 20, !dbg !139
  %46 = select i1 %45, i8 %36, i8 20, !dbg !139
  call void @llvm.dbg.value(metadata i8 %46, metadata !87, metadata !DIExpression()), !dbg !102
  %47 = getelementptr inbounds i8, i8* %34, i32 2, !dbg !140
  %48 = zext i8 %46 to i32, !dbg !141
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %10, i8* %47, i32 %48, i32 1, i1 false), !dbg !142
  call void @put_buf(i8* nonnull %10, i32 %48) #9, !dbg !143
  %49 = load i8, i8* %34, align 1, !tbaa !106
  br label %50, !dbg !144

; <label>:50:                                     ; preds = %42, %38
  %51 = phi i8 [ %49, %42 ], [ %36, %38 ], !dbg !145
  %52 = phi i8 [ %46, %42 ], [ %35, %38 ]
  call void @llvm.dbg.value(metadata i8 %52, metadata !87, metadata !DIExpression()), !dbg !102
  %53 = zext i8 %51 to i32, !dbg !145
  %54 = add nuw nsw i32 %53, 1, !dbg !146
  %55 = sub nsw i32 %33, %54, !dbg !147
  %56 = getelementptr inbounds i8, i8* %34, i32 %54, !dbg !148
  call void @llvm.dbg.value(metadata i8* %56, metadata !92, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %56, metadata !92, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8 %52, metadata !87, metadata !DIExpression()), !dbg !102
  %57 = and i32 %55, 65535, !dbg !149
  %58 = icmp eq i32 %57, 0, !dbg !150
  br i1 %58, label %59, label %32, !dbg !123, !llvm.loop !151

; <label>:59:                                     ; preds = %50, %32
  %60 = phi i8 [ %52, %50 ], [ %35, %32 ]
  %61 = icmp eq i8 %60, 0, !dbg !154
  br i1 %61, label %79, label %62, !dbg !156

; <label>:62:                                     ; preds = %59
  %63 = call i32 @memcmp(i8* nonnull %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 4) #10, !dbg !157
  %64 = icmp eq i32 %63, 0, !dbg !159
  br i1 %64, label %65, label %79, !dbg !160

; <label>:65:                                     ; preds = %62
  %66 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #10, !dbg !161
  call void @bt_get_tws_device_indicate(i8* nonnull %8) #10, !dbg !163
  call void @put_buf(i8* nonnull %8, i32 2) #9, !dbg !164
  %67 = call zeroext i16 @CRC16(i8* nonnull %10, i32 12) #9, !dbg !165
  call void @llvm.dbg.value(metadata i16 %67, metadata !82, metadata !DIExpression()), !dbg !166
  store i16 %67, i16* %3, align 2, !dbg !167, !tbaa !168
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 12, !dbg !170
  %69 = call i32 @memcmp(i8* %68, i8* nonnull %7, i32 2) #10, !dbg !172
  %70 = icmp eq i32 %69, 0, !dbg !173
  br i1 %70, label %71, label %79, !dbg !174

; <label>:71:                                     ; preds = %65
  %72 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !175
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 4, !dbg !177
  %74 = call i32 @memcmp(i8* %73, i8* nonnull %8, i32 2) #10, !dbg !179
  %75 = icmp eq i32 %74, 0, !dbg !180
  br i1 %75, label %76, label %79, !dbg !181

; <label>:76:                                     ; preds = %71
  %77 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !182
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 2, i32 0), i8* nonnull %9, i32 6, i32 1, i1 false), !dbg !184
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 6, !dbg !185
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 1, i32 0), i8* %78, i32 6, i32 1, i1 false), !dbg !186
  store i8 -86, i8* getelementptr inbounds (%struct.search_tws_reasult_t, %struct.search_tws_reasult_t* @search_tws_reasult, i32 0, i32 0), align 1, !dbg !187, !tbaa !38
  call void bitcast (void (...)* @lmp_hci_cancel_inquiry to void ()*)() #9, !dbg !188
  br label %79, !dbg !189

; <label>:79:                                     ; preds = %76, %71, %65, %62, %59
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #8, !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %9) #8, !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %8) #8, !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %7) #8, !dbg !190
  ret void, !dbg !190
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @CRC16(i8*, i32) local_unnamed_addr #4

; Function Attrs: optsize
declare void @lmp_hci_cancel_inquiry(...) local_unnamed_addr #4

; Function Attrs: norecurse nounwind optsize readnone
define hidden i32 @btstack_api_connect_completed() local_unnamed_addr #6 section ".bt_stack_code" !dbg !191 {
  ret i32 0, !dbg !194
}

; Function Attrs: nounwind optsize readonly
define hidden void @tws_host_acl_handler(i8* nocapture) local_unnamed_addr #7 section ".bt_stack_code" !dbg !195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !197, metadata !DIExpression()), !dbg !198
  ret void, !dbg !199
}

; Function Attrs: nounwind optsize
define hidden i32 @tws_profile_init() local_unnamed_addr #0 section ".bt_stack_code" !dbg !200 {
  tail call void bitcast (void (...)* @tws_task_init to void ()*)() #9, !dbg !201
  ret i32 0, !dbg !202
}

; Function Attrs: optsize
declare void @tws_task_init(...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_profile_exit() local_unnamed_addr #0 section ".bt_stack_code" !dbg !203 {
  tail call void bitcast (void (...)* @tws_task_exit to void ()*)() #9, !dbg !204
  ret i32 0, !dbg !205
}

; Function Attrs: optsize
declare void @tws_task_exit(...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden zeroext i8 @cheack_tws_connect_state() local_unnamed_addr #0 section ".bt_stack_code" !dbg !206 {
  %1 = tail call zeroext i8 @check_conn_channel_for_tws() #9, !dbg !220
  call void @llvm.dbg.value(metadata i8 %1, metadata !210, metadata !DIExpression()), !dbg !221
  %2 = tail call zeroext i8 @check_user_cmd_for_tws() #9, !dbg !222
  call void @llvm.dbg.value(metadata i8 %2, metadata !211, metadata !DIExpression()), !dbg !223
  %3 = tail call zeroext i8 @check_sdp_master_channel_state() #9, !dbg !224
  call void @llvm.dbg.value(metadata i8 %3, metadata !212, metadata !DIExpression()), !dbg !225
  %4 = tail call zeroext i8 @avctp_cmd_send_state() #9, !dbg !226
  call void @llvm.dbg.value(metadata i8 %4, metadata !213, metadata !DIExpression()), !dbg !227
  %5 = tail call zeroext i8 @hid_send_step_state() #9, !dbg !228
  call void @llvm.dbg.value(metadata i8 %5, metadata !214, metadata !DIExpression()), !dbg !229
  %6 = tail call zeroext i8 @check_hfp_resend_data() #9, !dbg !230
  call void @llvm.dbg.value(metadata i8 %6, metadata !215, metadata !DIExpression()), !dbg !231
  %7 = tail call zeroext i8 @check_l2cap_send_state() #9, !dbg !232
  call void @llvm.dbg.value(metadata i8 %7, metadata !216, metadata !DIExpression()), !dbg !233
  %8 = or i8 %2, %1, !dbg !234
  %9 = or i8 %8, %3, !dbg !234
  %10 = or i8 %9, %4, !dbg !234
  %11 = or i8 %10, %5, !dbg !234
  %12 = or i8 %11, %6, !dbg !234
  %13 = or i8 %12, %7, !dbg !234
  %14 = icmp eq i8 %13, 0, !dbg !234
  br i1 %14, label %21, label %15, !dbg !234

; <label>:15:                                     ; preds = %0
  %16 = tail call i32 bitcast (i32 (...)* @tws_api_get_tws_state to i32 ()*)() #9, !dbg !235
  call void @llvm.dbg.value(metadata i32 %16, metadata !217, metadata !DIExpression()), !dbg !236
  %17 = and i32 %16, 256, !dbg !237
  %18 = icmp eq i32 %17, 0, !dbg !237
  br i1 %18, label %21, label %19, !dbg !239

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #10, !dbg !240
  br label %21, !dbg !242

; <label>:21:                                     ; preds = %19, %15, %0
  %22 = phi i8 [ 1, %19 ], [ 0, %15 ], [ 1, %0 ]
  ret i8 %22, !dbg !243
}

; Function Attrs: optsize
declare zeroext i8 @check_conn_channel_for_tws() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @check_user_cmd_for_tws() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @check_sdp_master_channel_state() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @avctp_cmd_send_state() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @hid_send_step_state() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @check_hfp_resend_data() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @check_l2cap_send_state() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @tws_api_get_tws_state(...) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_hci_connected_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !248, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 %1, metadata !249, metadata !DIExpression()), !dbg !251
  store i8 -95, i8* %0, align 1, !dbg !252, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !253
  store i8 11, i8* %3, align 1, !dbg !254, !tbaa !106
  %4 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !255
  store i8 0, i8* %4, align 1, !dbg !256, !tbaa !106
  %5 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !257
  %6 = tail call zeroext i8 @lmp_get_tws_phone_addr(i8* %5, i32 1) #9, !dbg !259
  %7 = icmp eq i8 %6, 0, !dbg !259
  br i1 %7, label %20, label %8, !dbg !260

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !261, !tbaa !106
  %10 = and i8 %9, 1, !dbg !261
  %11 = icmp eq i8 %10, 0, !dbg !261
  br i1 %11, label %15, label %12, !dbg !264

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.34, i32 0, i32 0)), !dbg !265
  %14 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %15, !dbg !265

; <label>:15:                                     ; preds = %12, %8
  %16 = phi i8 [ %9, %8 ], [ %14, %12 ], !dbg !267
  %17 = and i8 %16, 2, !dbg !267
  %18 = icmp eq i8 %17, 0, !dbg !267
  br i1 %18, label %20, label %19, !dbg !269

; <label>:19:                                     ; preds = %15
  tail call void @put_buf(i8* %0, i32 11) #9, !dbg !270
  br label %20, !dbg !270

; <label>:20:                                     ; preds = %19, %15, %2
  %21 = phi i32 [ 11, %15 ], [ 11, %19 ], [ 0, %2 ]
  ret i32 %21, !dbg !273
}

; Function Attrs: optsize
declare zeroext i8 @lmp_get_tws_phone_addr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_hci_connected_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %1, metadata !279, metadata !DIExpression()), !dbg !281
  %3 = trunc i32 %1 to i16, !dbg !282
  tail call void @hci_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !283
  ret void, !dbg !284
}

; Function Attrs: optsize
declare void @hci_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_l2cap_connected_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !285 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !287, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %1, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 0, metadata !289, metadata !DIExpression()), !dbg !292
  store i8 -94, i8* %0, align 1, !dbg !293, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !294
  %4 = trunc i32 %1 to i16, !dbg !295
  %5 = tail call i32 @l2cap_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !296
  %6 = add nsw i32 %5, 3, !dbg !297
  call void @llvm.dbg.value(metadata i32 %6, metadata !289, metadata !DIExpression()), !dbg !292
  %7 = trunc i32 %6 to i8, !dbg !298
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !299
  store i8 %7, i8* %8, align 1, !dbg !300, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !301
  %10 = trunc i32 %9 to i8, !dbg !302
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !303
  store i8 %10, i8* %11, align 1, !dbg !304, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !305, !tbaa !106
  %13 = and i8 %12, 1, !dbg !305
  %14 = icmp eq i8 %13, 0, !dbg !305
  br i1 %14, label %18, label %15, !dbg !307

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.35, i32 0, i32 0)), !dbg !308
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !308

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !310
  %20 = and i8 %19, 2, !dbg !310
  %21 = icmp eq i8 %20, 0, !dbg !310
  br i1 %21, label %23, label %22, !dbg !312

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !313
  br label %23, !dbg !313

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !316
}

; Function Attrs: optsize
declare i32 @l2cap_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_l2cap_connected_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !319, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %1, metadata !320, metadata !DIExpression()), !dbg !322
  %3 = trunc i32 %1 to i16, !dbg !323
  tail call void @l2cap_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !324
  ret void, !dbg !325
}

; Function Attrs: optsize
declare void @l2cap_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_l2cap_channel_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i32 %1, metadata !329, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.value(metadata i32 0, metadata !330, metadata !DIExpression()), !dbg !333
  store i8 -93, i8* %0, align 1, !dbg !334, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !335
  %4 = trunc i32 %1 to i16, !dbg !336
  %5 = tail call i32 @l2cap_channel_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !337
  %6 = add nsw i32 %5, 3, !dbg !338
  call void @llvm.dbg.value(metadata i32 %6, metadata !330, metadata !DIExpression()), !dbg !333
  %7 = trunc i32 %6 to i8, !dbg !339
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !340
  store i8 %7, i8* %8, align 1, !dbg !341, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !342
  %10 = trunc i32 %9 to i8, !dbg !343
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !344
  store i8 %10, i8* %11, align 1, !dbg !345, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !346, !tbaa !106
  %13 = and i8 %12, 1, !dbg !346
  %14 = icmp eq i8 %13, 0, !dbg !346
  br i1 %14, label %18, label %15, !dbg !348

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str.61, i32 0, i32 0)), !dbg !349
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !349

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !351
  %20 = and i8 %19, 2, !dbg !351
  %21 = icmp eq i8 %20, 0, !dbg !351
  br i1 %21, label %23, label %22, !dbg !353

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !354
  br label %23, !dbg !354

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !357
}

; Function Attrs: optsize
declare i32 @l2cap_channel_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_l2cap_channel_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !358 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !360, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i32 %1, metadata !361, metadata !DIExpression()), !dbg !363
  %3 = trunc i32 %1 to i16, !dbg !364
  tail call void @l2cap_channel_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: optsize
declare void @l2cap_channel_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_avdtp_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %1, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !374
  store i8 -92, i8* %0, align 1, !dbg !375, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !376
  %4 = trunc i32 %1 to i16, !dbg !377
  %5 = tail call i32 @avdtp_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !378
  %6 = add nsw i32 %5, 3, !dbg !379
  call void @llvm.dbg.value(metadata i32 %6, metadata !371, metadata !DIExpression()), !dbg !374
  %7 = trunc i32 %6 to i8, !dbg !380
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !381
  store i8 %7, i8* %8, align 1, !dbg !382, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !383
  %10 = trunc i32 %9 to i8, !dbg !384
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !385
  store i8 %10, i8* %11, align 1, !dbg !386, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !387, !tbaa !106
  %13 = and i8 %12, 1, !dbg !387
  %14 = icmp eq i8 %13, 0, !dbg !387
  br i1 %14, label %18, label %15, !dbg !389

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.60, i32 0, i32 0)), !dbg !390
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !390

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !392
  %20 = and i8 %19, 2, !dbg !392
  %21 = icmp eq i8 %20, 0, !dbg !392
  br i1 %21, label %23, label %22, !dbg !394

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !395
  br label %23, !dbg !395

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !398
}

; Function Attrs: optsize
declare i32 @avdtp_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_avdtp_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !401, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i32 %1, metadata !402, metadata !DIExpression()), !dbg !404
  %3 = trunc i32 %1 to i16, !dbg !405
  tail call void @avdtp_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: optsize
declare void @avdtp_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_a2dp_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !410, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 %1, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()), !dbg !415
  store i8 -91, i8* %0, align 1, !dbg !416, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !417
  %4 = trunc i32 %1 to i16, !dbg !418
  %5 = tail call i32 @a2dp_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !419
  %6 = add nsw i32 %5, 3, !dbg !420
  call void @llvm.dbg.value(metadata i32 %6, metadata !412, metadata !DIExpression()), !dbg !415
  %7 = trunc i32 %6 to i8, !dbg !421
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !422
  store i8 %7, i8* %8, align 1, !dbg !423, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !424
  %10 = trunc i32 %9 to i8, !dbg !425
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !426
  store i8 %10, i8* %11, align 1, !dbg !427, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !428, !tbaa !106
  %13 = and i8 %12, 1, !dbg !428
  %14 = icmp eq i8 %13, 0, !dbg !428
  br i1 %14, label %18, label %15, !dbg !430

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.59, i32 0, i32 0)), !dbg !431
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !431

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !433
  %20 = and i8 %19, 2, !dbg !433
  %21 = icmp eq i8 %20, 0, !dbg !433
  br i1 %21, label %23, label %22, !dbg !435

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !436
  br label %23, !dbg !436

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !439
}

; Function Attrs: optsize
declare i32 @a2dp_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_a2dp_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !440 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !442, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 %1, metadata !443, metadata !DIExpression()), !dbg !445
  %3 = trunc i32 %1 to i16, !dbg !446
  tail call void @a2dp_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !447
  ret void, !dbg !448
}

; Function Attrs: optsize
declare void @a2dp_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_avctp_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !449 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !451, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32 %1, metadata !452, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 0, metadata !453, metadata !DIExpression()), !dbg !456
  store i8 -90, i8* %0, align 1, !dbg !457, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !458
  %4 = trunc i32 %1 to i16, !dbg !459
  %5 = tail call i32 @avctp_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !460
  %6 = add nsw i32 %5, 3, !dbg !461
  call void @llvm.dbg.value(metadata i32 %6, metadata !453, metadata !DIExpression()), !dbg !456
  %7 = trunc i32 %6 to i8, !dbg !462
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !463
  store i8 %7, i8* %8, align 1, !dbg !464, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !465
  %10 = trunc i32 %9 to i8, !dbg !466
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !467
  store i8 %10, i8* %11, align 1, !dbg !468, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !469, !tbaa !106
  %13 = and i8 %12, 1, !dbg !469
  %14 = icmp eq i8 %13, 0, !dbg !469
  br i1 %14, label %18, label %15, !dbg !471

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.58, i32 0, i32 0)), !dbg !472
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !472

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !474
  %20 = and i8 %19, 2, !dbg !474
  %21 = icmp eq i8 %20, 0, !dbg !474
  br i1 %21, label %23, label %22, !dbg !476

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !477
  br label %23, !dbg !477

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !480
}

; Function Attrs: optsize
declare i32 @avctp_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_avctp_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !481 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i32 %1, metadata !484, metadata !DIExpression()), !dbg !486
  %3 = trunc i32 %1 to i16, !dbg !487
  tail call void @avctp_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !488
  ret void, !dbg !489
}

; Function Attrs: optsize
declare void @avctp_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_sdp_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !490 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata i32 %1, metadata !493, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i32 0, metadata !494, metadata !DIExpression()), !dbg !497
  store i8 -89, i8* %0, align 1, !dbg !498, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !499
  %4 = trunc i32 %1 to i16, !dbg !500
  %5 = tail call i32 @sdp_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !501
  %6 = add nsw i32 %5, 3, !dbg !502
  call void @llvm.dbg.value(metadata i32 %6, metadata !494, metadata !DIExpression()), !dbg !497
  %7 = trunc i32 %6 to i8, !dbg !503
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !504
  store i8 %7, i8* %8, align 1, !dbg !505, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !506
  %10 = trunc i32 %9 to i8, !dbg !507
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !508
  store i8 %10, i8* %11, align 1, !dbg !509, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !510, !tbaa !106
  %13 = and i8 %12, 1, !dbg !510
  %14 = icmp eq i8 %13, 0, !dbg !510
  br i1 %14, label %18, label %15, !dbg !512

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.57, i32 0, i32 0)), !dbg !513
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !513

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !515
  %20 = and i8 %19, 2, !dbg !515
  %21 = icmp eq i8 %20, 0, !dbg !515
  br i1 %21, label %23, label %22, !dbg !517

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !518
  br label %23, !dbg !518

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !521
}

; Function Attrs: optsize
declare i32 @sdp_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_sdp_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !524, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i32 %1, metadata !525, metadata !DIExpression()), !dbg !527
  %3 = trunc i32 %1 to i16, !dbg !528
  tail call void @sdp_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: optsize
declare void @sdp_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_rfc_channel_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !531 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !533, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 %1, metadata !534, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 0, metadata !535, metadata !DIExpression()), !dbg !538
  store i8 -88, i8* %0, align 1, !dbg !539, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !540
  %4 = trunc i32 %1 to i16, !dbg !541
  %5 = tail call i32 @rfc_channel_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !542
  %6 = add nsw i32 %5, 3, !dbg !543
  call void @llvm.dbg.value(metadata i32 %6, metadata !535, metadata !DIExpression()), !dbg !538
  %7 = trunc i32 %6 to i8, !dbg !544
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !545
  store i8 %7, i8* %8, align 1, !dbg !546, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !547
  %10 = trunc i32 %9 to i8, !dbg !548
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !549
  store i8 %10, i8* %11, align 1, !dbg !550, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !551, !tbaa !106
  %13 = and i8 %12, 1, !dbg !551
  %14 = icmp eq i8 %13, 0, !dbg !551
  br i1 %14, label %18, label %15, !dbg !553

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @str.55, i32 0, i32 0)), !dbg !554
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !554

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !556
  %20 = and i8 %19, 2, !dbg !556
  %21 = icmp eq i8 %20, 0, !dbg !556
  br i1 %21, label %23, label %22, !dbg !558

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !559
  br label %23, !dbg !559

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !562
}

; Function Attrs: optsize
declare i32 @rfc_channel_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_rfc_channel_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !565, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 %1, metadata !566, metadata !DIExpression()), !dbg !568
  %3 = trunc i32 %1 to i16, !dbg !569
  tail call void @rfc_channel_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !570
  ret void, !dbg !571
}

; Function Attrs: optsize
declare void @rfc_channel_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_rfc_multiplexer_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !572 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !574, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i32 %1, metadata !575, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata i32 0, metadata !576, metadata !DIExpression()), !dbg !579
  store i8 -87, i8* %0, align 1, !dbg !580, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !581
  %4 = trunc i32 %1 to i16, !dbg !582
  %5 = tail call i32 @rfc_multiplexer_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !583
  %6 = add nsw i32 %5, 3, !dbg !584
  call void @llvm.dbg.value(metadata i32 %6, metadata !576, metadata !DIExpression()), !dbg !579
  %7 = trunc i32 %6 to i8, !dbg !585
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !586
  store i8 %7, i8* %8, align 1, !dbg !587, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !588
  %10 = trunc i32 %9 to i8, !dbg !589
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !590
  store i8 %10, i8* %11, align 1, !dbg !591, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !592, !tbaa !106
  %13 = and i8 %12, 1, !dbg !592
  %14 = icmp eq i8 %13, 0, !dbg !592
  br i1 %14, label %18, label %15, !dbg !594

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.56, i32 0, i32 0)), !dbg !595
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !595

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !597
  %20 = and i8 %19, 2, !dbg !597
  %21 = icmp eq i8 %20, 0, !dbg !597
  br i1 %21, label %23, label %22, !dbg !599

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !600
  br label %23, !dbg !600

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !603
}

; Function Attrs: optsize
declare i32 @rfc_multiplexer_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_rfc_multiplexer_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !606, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i32 %1, metadata !607, metadata !DIExpression()), !dbg !609
  %3 = trunc i32 %1 to i16, !dbg !610
  tail call void @rfc_multiplexer_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !611
  ret void, !dbg !612
}

; Function Attrs: optsize
declare void @rfc_multiplexer_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_hfp_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !613 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !615, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 %1, metadata !616, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 0, metadata !617, metadata !DIExpression()), !dbg !620
  store i8 -86, i8* %0, align 1, !dbg !621, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !622
  %4 = trunc i32 %1 to i16, !dbg !623
  %5 = tail call i32 @hfp_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !624
  %6 = add nsw i32 %5, 3, !dbg !625
  call void @llvm.dbg.value(metadata i32 %6, metadata !617, metadata !DIExpression()), !dbg !620
  %7 = trunc i32 %6 to i8, !dbg !626
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !627
  store i8 %7, i8* %8, align 1, !dbg !628, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !629
  %10 = trunc i32 %9 to i8, !dbg !630
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !631
  store i8 %10, i8* %11, align 1, !dbg !632, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !633, !tbaa !106
  %13 = and i8 %12, 1, !dbg !633
  %14 = icmp eq i8 %13, 0, !dbg !633
  br i1 %14, label %18, label %15, !dbg !635

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.43, i32 0, i32 0)), !dbg !636
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !636

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !638
  %20 = and i8 %19, 2, !dbg !638
  %21 = icmp eq i8 %20, 0, !dbg !638
  br i1 %21, label %23, label %22, !dbg !640

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !641
  br label %23, !dbg !641

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !644
}

; Function Attrs: optsize
declare i32 @hfp_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_hfp_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !645 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !647, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i32 %1, metadata !648, metadata !DIExpression()), !dbg !650
  %3 = trunc i32 %1 to i16, !dbg !651
  tail call void @hfp_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !652
  ret void, !dbg !653
}

; Function Attrs: optsize
declare void @hfp_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_user_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !654 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !656, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata i32 %1, metadata !657, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 0, metadata !658, metadata !DIExpression()), !dbg !661
  store i8 -85, i8* %0, align 1, !dbg !662, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !663
  %4 = trunc i32 %1 to i16, !dbg !664
  %5 = tail call i32 @user_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !665
  %6 = add nsw i32 %5, 3, !dbg !666
  call void @llvm.dbg.value(metadata i32 %6, metadata !658, metadata !DIExpression()), !dbg !661
  %7 = trunc i32 %6 to i8, !dbg !667
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !668
  store i8 %7, i8* %8, align 1, !dbg !669, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !670
  %10 = trunc i32 %9 to i8, !dbg !671
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !672
  store i8 %10, i8* %11, align 1, !dbg !673, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !674, !tbaa !106
  %13 = and i8 %12, 1, !dbg !674
  %14 = icmp eq i8 %13, 0, !dbg !674
  br i1 %14, label %18, label %15, !dbg !676

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.44, i32 0, i32 0)), !dbg !677
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !677

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !679
  %20 = and i8 %19, 2, !dbg !679
  %21 = icmp eq i8 %20, 0, !dbg !679
  br i1 %21, label %23, label %22, !dbg !681

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !682
  br label %23, !dbg !682

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !685
}

; Function Attrs: optsize
declare i32 @user_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_user_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !688, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i32 %1, metadata !689, metadata !DIExpression()), !dbg !691
  %3 = trunc i32 %1 to i16, !dbg !692
  tail call void @user_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !693
  ret void, !dbg !694
}

; Function Attrs: optsize
declare void @user_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_hid_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !695 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !697, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i32 %1, metadata !698, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i32 0, metadata !699, metadata !DIExpression()), !dbg !702
  store i8 -83, i8* %0, align 1, !dbg !703, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !704
  %4 = trunc i32 %1 to i16, !dbg !705
  %5 = tail call i32 @hid_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !706
  %6 = add nsw i32 %5, 3, !dbg !707
  call void @llvm.dbg.value(metadata i32 %6, metadata !699, metadata !DIExpression()), !dbg !702
  %7 = trunc i32 %6 to i8, !dbg !708
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !709
  store i8 %7, i8* %8, align 1, !dbg !710, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !711
  %10 = trunc i32 %9 to i8, !dbg !712
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !713
  store i8 %10, i8* %11, align 1, !dbg !714, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !715, !tbaa !106
  %13 = and i8 %12, 1, !dbg !715
  %14 = icmp eq i8 %13, 0, !dbg !715
  br i1 %14, label %18, label %15, !dbg !717

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.45, i32 0, i32 0)), !dbg !718
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !718

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !720
  %20 = and i8 %19, 2, !dbg !720
  %21 = icmp eq i8 %20, 0, !dbg !720
  br i1 %21, label %23, label %22, !dbg !722

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !723
  br label %23, !dbg !723

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !726
}

; Function Attrs: optsize
declare i32 @hid_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_hid_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !727 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !729, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 %1, metadata !730, metadata !DIExpression()), !dbg !732
  %3 = trunc i32 %1 to i16, !dbg !733
  tail call void @hid_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !734
  ret void, !dbg !735
}

; Function Attrs: optsize
declare void @hid_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_spp_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !738, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 %1, metadata !739, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 0, metadata !740, metadata !DIExpression()), !dbg !743
  store i8 -82, i8* %0, align 1, !dbg !744, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !745
  %4 = trunc i32 %1 to i16, !dbg !746
  %5 = tail call i32 @spp_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !747
  %6 = add nsw i32 %5, 3, !dbg !748
  call void @llvm.dbg.value(metadata i32 %6, metadata !740, metadata !DIExpression()), !dbg !743
  %7 = trunc i32 %6 to i8, !dbg !749
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !750
  store i8 %7, i8* %8, align 1, !dbg !751, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !752
  %10 = trunc i32 %9 to i8, !dbg !753
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !754
  store i8 %10, i8* %11, align 1, !dbg !755, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !756, !tbaa !106
  %13 = and i8 %12, 1, !dbg !756
  %14 = icmp eq i8 %13, 0, !dbg !756
  br i1 %14, label %18, label %15, !dbg !758

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.46, i32 0, i32 0)), !dbg !759
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !759

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !761
  %20 = and i8 %19, 2, !dbg !761
  %21 = icmp eq i8 %20, 0, !dbg !761
  br i1 %21, label %23, label %22, !dbg !763

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !764
  br label %23, !dbg !764

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !767
}

; Function Attrs: optsize
declare i32 @spp_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_spp_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !770, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i32 %1, metadata !771, metadata !DIExpression()), !dbg !773
  %3 = trunc i32 %1 to i16, !dbg !774
  tail call void @spp_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !775
  ret void, !dbg !776
}

; Function Attrs: optsize
declare void @spp_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden i32 @tws_iap_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !777 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !779, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 %1, metadata !780, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 0, metadata !781, metadata !DIExpression()), !dbg !784
  store i8 -81, i8* %0, align 1, !dbg !785, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !786
  %4 = trunc i32 %1 to i16, !dbg !787
  %5 = tail call i32 @iap_core_data_for_send(i8* %3, i16 zeroext %4) #9, !dbg !788
  %6 = add nsw i32 %5, 3, !dbg !789
  call void @llvm.dbg.value(metadata i32 %6, metadata !781, metadata !DIExpression()), !dbg !784
  %7 = trunc i32 %6 to i8, !dbg !790
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !791
  store i8 %7, i8* %8, align 1, !dbg !792, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !793
  %10 = trunc i32 %9 to i8, !dbg !794
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !795
  store i8 %10, i8* %11, align 1, !dbg !796, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !797, !tbaa !106
  %13 = and i8 %12, 1, !dbg !797
  %14 = icmp eq i8 %13, 0, !dbg !797
  br i1 %14, label %18, label %15, !dbg !799

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.47, i32 0, i32 0)), !dbg !800
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !800

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !802
  %20 = and i8 %19, 2, !dbg !802
  %21 = icmp eq i8 %20, 0, !dbg !802
  br i1 %21, label %23, label %22, !dbg !804

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !805
  br label %23, !dbg !805

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !808
}

; Function Attrs: optsize
declare i32 @iap_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define hidden void @tws_iap_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !809 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !811, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32 %1, metadata !812, metadata !DIExpression()), !dbg !814
  %3 = trunc i32 %1 to i16, !dbg !815
  tail call void @iap_core_data_for_set(i8* %0, i16 zeroext %3) #9, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: optsize
declare void @iap_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind optsize
define weak hidden i32 @app_core_data_for_send(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !818 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !822, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i16 %1, metadata !823, metadata !DIExpression()), !dbg !825
  %3 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !826, !tbaa !106
  %4 = and i8 %3, 1, !dbg !826
  %5 = icmp eq i8 %4, 0, !dbg !826
  br i1 %5, label %9, label %6, !dbg !828

; <label>:6:                                      ; preds = %2
  %7 = zext i16 %1 to i32, !dbg !829
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i32 %7) #10, !dbg !829
  br label %9, !dbg !829

; <label>:9:                                      ; preds = %6, %2
  ret i32 0, !dbg !831
}

; Function Attrs: nounwind optsize
define weak hidden void @app_core_data_for_set(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !832 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !834, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i16 %1, metadata !835, metadata !DIExpression()), !dbg !837
  ret void, !dbg !838
}

; Function Attrs: nounwind optsize
define hidden i32 @tws_app_info_for_send(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 %1, metadata !842, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32 0, metadata !843, metadata !DIExpression()), !dbg !846
  store i8 -84, i8* %0, align 1, !dbg !847, !tbaa !106
  %3 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !848
  %4 = trunc i32 %1 to i16, !dbg !849
  %5 = tail call i32 @app_core_data_for_send(i8* %3, i16 zeroext %4) #10, !dbg !850
  %6 = add nsw i32 %5, 3, !dbg !851
  call void @llvm.dbg.value(metadata i32 %6, metadata !843, metadata !DIExpression()), !dbg !846
  %7 = trunc i32 %6 to i8, !dbg !852
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !853
  store i8 %7, i8* %8, align 1, !dbg !854, !tbaa !106
  %9 = lshr i32 %6, 8, !dbg !855
  %10 = trunc i32 %9 to i8, !dbg !856
  %11 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !857
  store i8 %10, i8* %11, align 1, !dbg !858, !tbaa !106
  %12 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !859, !tbaa !106
  %13 = and i8 %12, 1, !dbg !859
  %14 = icmp eq i8 %13, 0, !dbg !859
  br i1 %14, label %18, label %15, !dbg !861

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.48, i32 0, i32 0)), !dbg !862
  %17 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %18, !dbg !862

; <label>:18:                                     ; preds = %15, %2
  %19 = phi i8 [ %12, %2 ], [ %17, %15 ], !dbg !864
  %20 = and i8 %19, 2, !dbg !864
  %21 = icmp eq i8 %20, 0, !dbg !864
  br i1 %21, label %23, label %22, !dbg !866

; <label>:22:                                     ; preds = %18
  tail call void @put_buf(i8* nonnull %0, i32 %6) #9, !dbg !867
  br label %23, !dbg !867

; <label>:23:                                     ; preds = %22, %18
  ret i32 %6, !dbg !870
}

; Function Attrs: nounwind optsize
define hidden void @tws_app_info_for_set(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !873, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %1, metadata !874, metadata !DIExpression()), !dbg !876
  %3 = trunc i32 %1 to i16, !dbg !877
  tail call void @app_core_data_for_set(i8* %0, i16 zeroext %3) #10, !dbg !878
  ret void, !dbg !879
}

; Function Attrs: nounwind optsize
define hidden i32 @tws_host_get_core_data(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !882, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i32 %1, metadata !883, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i32 0, metadata !884, metadata !DIExpression()), !dbg !887
  %3 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !888, !tbaa !106
  %4 = and i8 %3, 1, !dbg !888
  %5 = icmp eq i8 %4, 0, !dbg !888
  br i1 %5, label %8, label %6, !dbg !890

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), i32 %1) #10, !dbg !891
  br label %8, !dbg !891

; <label>:8:                                      ; preds = %6, %2
  %9 = tail call i32 @tws_hci_connected_info_for_send(i8* %0, i32 undef) #10, !dbg !893
  call void @llvm.dbg.value(metadata i32 %9, metadata !884, metadata !DIExpression()), !dbg !887
  %10 = getelementptr inbounds i8, i8* %0, i32 %9, !dbg !894
  %11 = sub nsw i32 %1, %9, !dbg !895
  %12 = tail call i32 @tws_l2cap_connected_info_for_send(i8* %10, i32 %11) #10, !dbg !896
  %13 = add nsw i32 %12, %9, !dbg !897
  call void @llvm.dbg.value(metadata i32 %13, metadata !884, metadata !DIExpression()), !dbg !887
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !898
  %15 = sub nsw i32 %1, %13, !dbg !899
  %16 = tail call i32 @tws_l2cap_channel_info_for_send(i8* %14, i32 %15) #10, !dbg !900
  %17 = add nsw i32 %13, %16, !dbg !901
  call void @llvm.dbg.value(metadata i32 %17, metadata !884, metadata !DIExpression()), !dbg !887
  %18 = getelementptr inbounds i8, i8* %0, i32 %17, !dbg !902
  %19 = sub nsw i32 %1, %17, !dbg !903
  %20 = tail call i32 @tws_avdtp_info_for_send(i8* %18, i32 %19) #10, !dbg !904
  %21 = add nsw i32 %17, %20, !dbg !905
  call void @llvm.dbg.value(metadata i32 %21, metadata !884, metadata !DIExpression()), !dbg !887
  %22 = getelementptr inbounds i8, i8* %0, i32 %21, !dbg !906
  %23 = sub nsw i32 %1, %21, !dbg !907
  %24 = tail call i32 @tws_a2dp_info_for_send(i8* %22, i32 %23) #10, !dbg !908
  %25 = add nsw i32 %21, %24, !dbg !909
  call void @llvm.dbg.value(metadata i32 %25, metadata !884, metadata !DIExpression()), !dbg !887
  %26 = getelementptr inbounds i8, i8* %0, i32 %25, !dbg !910
  %27 = sub nsw i32 %1, %25, !dbg !911
  %28 = tail call i32 @tws_avctp_info_for_send(i8* %26, i32 %27) #10, !dbg !912
  %29 = add nsw i32 %25, %28, !dbg !913
  call void @llvm.dbg.value(metadata i32 %29, metadata !884, metadata !DIExpression()), !dbg !887
  %30 = getelementptr inbounds i8, i8* %0, i32 %29, !dbg !914
  %31 = sub nsw i32 %1, %29, !dbg !915
  %32 = tail call i32 @tws_sdp_info_for_send(i8* %30, i32 %31) #10, !dbg !916
  %33 = add nsw i32 %29, %32, !dbg !917
  call void @llvm.dbg.value(metadata i32 %33, metadata !884, metadata !DIExpression()), !dbg !887
  %34 = getelementptr inbounds i8, i8* %0, i32 %33, !dbg !918
  %35 = sub nsw i32 %1, %33, !dbg !919
  %36 = tail call i32 @tws_rfc_multiplexer_info_for_send(i8* %34, i32 %35) #10, !dbg !920
  %37 = add nsw i32 %33, %36, !dbg !921
  call void @llvm.dbg.value(metadata i32 %37, metadata !884, metadata !DIExpression()), !dbg !887
  %38 = getelementptr inbounds i8, i8* %0, i32 %37, !dbg !922
  %39 = sub nsw i32 %1, %37, !dbg !923
  %40 = tail call i32 @tws_rfc_channel_info_for_send(i8* %38, i32 %39) #10, !dbg !924
  %41 = add nsw i32 %37, %40, !dbg !925
  call void @llvm.dbg.value(metadata i32 %41, metadata !884, metadata !DIExpression()), !dbg !887
  %42 = getelementptr inbounds i8, i8* %0, i32 %41, !dbg !926
  %43 = sub nsw i32 %1, %41, !dbg !927
  %44 = tail call i32 @tws_hfp_info_for_send(i8* %42, i32 %43) #10, !dbg !928
  %45 = add nsw i32 %41, %44, !dbg !929
  call void @llvm.dbg.value(metadata i32 %45, metadata !884, metadata !DIExpression()), !dbg !887
  %46 = getelementptr inbounds i8, i8* %0, i32 %45, !dbg !930
  %47 = sub nsw i32 %1, %45, !dbg !931
  %48 = tail call i32 @tws_user_info_for_send(i8* %46, i32 %47) #10, !dbg !932
  %49 = add nsw i32 %45, %48, !dbg !933
  call void @llvm.dbg.value(metadata i32 %49, metadata !884, metadata !DIExpression()), !dbg !887
  %50 = getelementptr inbounds i8, i8* %0, i32 %49, !dbg !934
  %51 = sub nsw i32 %1, %49, !dbg !935
  %52 = tail call i32 @tws_app_info_for_send(i8* %50, i32 %51) #10, !dbg !936
  %53 = add nsw i32 %49, %52, !dbg !937
  call void @llvm.dbg.value(metadata i32 %53, metadata !884, metadata !DIExpression()), !dbg !887
  %54 = getelementptr inbounds i8, i8* %0, i32 %53, !dbg !938
  %55 = sub nsw i32 %1, %53, !dbg !939
  %56 = tail call i32 @tws_hid_info_for_send(i8* %54, i32 %55) #10, !dbg !940
  %57 = add nsw i32 %53, %56, !dbg !941
  call void @llvm.dbg.value(metadata i32 %57, metadata !884, metadata !DIExpression()), !dbg !887
  %58 = getelementptr inbounds i8, i8* %0, i32 %57, !dbg !942
  %59 = sub nsw i32 %1, %57, !dbg !943
  %60 = tail call i32 @tws_spp_info_for_send(i8* %58, i32 %59) #10, !dbg !944
  %61 = add nsw i32 %57, %60, !dbg !945
  call void @llvm.dbg.value(metadata i32 %61, metadata !884, metadata !DIExpression()), !dbg !887
  %62 = getelementptr inbounds i8, i8* %0, i32 %61, !dbg !946
  %63 = sub nsw i32 %1, %61, !dbg !947
  %64 = tail call i32 @tws_iap_info_for_send(i8* %62, i32 %63) #10, !dbg !948
  %65 = add nsw i32 %61, %64, !dbg !949
  call void @llvm.dbg.value(metadata i32 %65, metadata !884, metadata !DIExpression()), !dbg !887
  %66 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !950, !tbaa !106
  %67 = and i8 %66, 1, !dbg !950
  %68 = icmp eq i8 %67, 0, !dbg !950
  br i1 %68, label %71, label %69, !dbg !952

; <label>:69:                                     ; preds = %8
  %70 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0), i32 %65) #10, !dbg !953
  br label %71, !dbg !953

; <label>:71:                                     ; preds = %69, %8
  ret i32 %65, !dbg !955
}

; Function Attrs: nounwind optsize
define hidden i32 @tws_host_set_core_data(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !956 {
  %3 = alloca [13 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !958, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata i32 %1, metadata !959, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i8* %0, metadata !960, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i16 0, metadata !961, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i16 0, metadata !962, metadata !DIExpression()), !dbg !971
  %4 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i32 0, i32 0, !dbg !972
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %4) #8, !dbg !972
  tail call void @llvm.dbg.declare(metadata [13 x i8]* %3, metadata !963, metadata !DIExpression()), !dbg !973
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tws_host_set_core_data.hci_connect_complete, i32 0, i32 0), i32 13, i32 1, i1 false), !dbg !973
  %5 = icmp sgt i32 %1, 0, !dbg !974
  call void @llvm.dbg.value(metadata i8* %0, metadata !960, metadata !DIExpression()), !dbg !969
  br i1 %5, label %6, label %273, !dbg !976

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i32 0, i32 3
  %8 = getelementptr inbounds i8, i8* %0, i32 3
  %9 = bitcast i8* %8 to i64*
  %10 = bitcast i8* %7 to i64*
  br label %11, !dbg !977

; <label>:11:                                     ; preds = %268, %6
  %12 = phi i32 [ 0, %6 ], [ %270, %268 ]
  %13 = phi i8* [ %0, %6 ], [ %269, %268 ]
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !978
  %15 = load i8, i8* %14, align 1, !dbg !978, !tbaa !106
  %16 = zext i8 %15 to i32, !dbg !978
  %17 = getelementptr inbounds i8, i8* %13, i32 2, !dbg !980
  %18 = load i8, i8* %17, align 1, !dbg !980, !tbaa !106
  %19 = zext i8 %18 to i32, !dbg !980
  %20 = shl nuw nsw i32 %19, 8, !dbg !981
  %21 = or i32 %20, %16, !dbg !982
  %22 = add nuw nsw i32 %21, %12, !dbg !983
  %23 = load i8, i8* %13, align 1, !dbg !984, !tbaa !106
  switch i8 %23, label %262 [
    i8 -95, label %24
    i8 -94, label %38
    i8 -93, label %54
    i8 -92, label %70
    i8 -91, label %86
    i8 -90, label %102
    i8 -89, label %118
    i8 -87, label %134
    i8 -88, label %150
    i8 -86, label %166
    i8 -85, label %182
    i8 -84, label %198
    i8 -83, label %214
    i8 -82, label %230
    i8 -81, label %246
  ], !dbg !985

; <label>:24:                                     ; preds = %11
  %25 = load i64, i64* %9, align 1, !dbg !986
  store i64 %25, i64* %10, align 1, !dbg !986
  %26 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !988, !tbaa !106
  %27 = and i8 %26, 1, !dbg !988
  %28 = icmp eq i8 %27, 0, !dbg !988
  br i1 %28, label %32, label %29, !dbg !990

; <label>:29:                                     ; preds = %24
  %30 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.63, i32 0, i32 0)), !dbg !991
  %31 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %32, !dbg !991

; <label>:32:                                     ; preds = %29, %24
  %33 = phi i8 [ %26, %24 ], [ %31, %29 ], !dbg !993
  %34 = and i8 %33, 2, !dbg !993
  %35 = icmp eq i8 %34, 0, !dbg !993
  br i1 %35, label %37, label %36, !dbg !995

; <label>:36:                                     ; preds = %32
  call void @put_buf(i8* nonnull %4, i32 13) #9, !dbg !996
  br label %37, !dbg !996

; <label>:37:                                     ; preds = %36, %32
  call void @llvm.dbg.value(metadata i8* %4, metadata !278, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 13, metadata !279, metadata !DIExpression()), !dbg !1001
  call void @hci_core_data_for_set(i8* nonnull %4, i16 zeroext 13) #9, !dbg !1002
  br label %268, !dbg !1003

; <label>:38:                                     ; preds = %11
  %39 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1004, !tbaa !106
  %40 = and i8 %39, 1, !dbg !1004
  %41 = icmp eq i8 %40, 0, !dbg !1004
  br i1 %41, label %45, label %42, !dbg !1006

; <label>:42:                                     ; preds = %38
  %43 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str.62, i32 0, i32 0)), !dbg !1007
  %44 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %45, !dbg !1007

; <label>:45:                                     ; preds = %42, %38
  %46 = phi i8 [ %39, %38 ], [ %44, %42 ], !dbg !1009
  %47 = and i8 %46, 2, !dbg !1009
  %48 = icmp eq i8 %47, 0, !dbg !1009
  br i1 %48, label %50, label %49, !dbg !1011

; <label>:49:                                     ; preds = %45
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1012
  br label %50, !dbg !1012

; <label>:50:                                     ; preds = %49, %45
  %51 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1015
  %52 = add nuw nsw i32 %21, 65533, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %51, metadata !319, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i32 %52, metadata !320, metadata !DIExpression()), !dbg !1019
  %53 = trunc i32 %52 to i16, !dbg !1020
  call void @l2cap_core_data_for_set(i8* %51, i16 zeroext %53) #9, !dbg !1021
  br label %268, !dbg !1022

; <label>:54:                                     ; preds = %11
  %55 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1023, !tbaa !106
  %56 = and i8 %55, 1, !dbg !1023
  %57 = icmp eq i8 %56, 0, !dbg !1023
  br i1 %57, label %61, label %58, !dbg !1025

; <label>:58:                                     ; preds = %54
  %59 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str.61, i32 0, i32 0)), !dbg !1026
  %60 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %61, !dbg !1026

; <label>:61:                                     ; preds = %58, %54
  %62 = phi i8 [ %55, %54 ], [ %60, %58 ], !dbg !1028
  %63 = and i8 %62, 2, !dbg !1028
  %64 = icmp eq i8 %63, 0, !dbg !1028
  br i1 %64, label %66, label %65, !dbg !1030

; <label>:65:                                     ; preds = %61
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1031
  br label %66, !dbg !1031

; <label>:66:                                     ; preds = %65, %61
  %67 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1034
  %68 = add nuw nsw i32 %21, 65533, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %67, metadata !360, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %68, metadata !361, metadata !DIExpression()), !dbg !1038
  %69 = trunc i32 %68 to i16, !dbg !1039
  call void @l2cap_channel_core_data_for_set(i8* %67, i16 zeroext %69) #9, !dbg !1040
  br label %268, !dbg !1041

; <label>:70:                                     ; preds = %11
  %71 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1042, !tbaa !106
  %72 = and i8 %71, 1, !dbg !1042
  %73 = icmp eq i8 %72, 0, !dbg !1042
  br i1 %73, label %77, label %74, !dbg !1044

; <label>:74:                                     ; preds = %70
  %75 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.60, i32 0, i32 0)), !dbg !1045
  %76 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %77, !dbg !1045

; <label>:77:                                     ; preds = %74, %70
  %78 = phi i8 [ %71, %70 ], [ %76, %74 ], !dbg !1047
  %79 = and i8 %78, 2, !dbg !1047
  %80 = icmp eq i8 %79, 0, !dbg !1047
  br i1 %80, label %82, label %81, !dbg !1049

; <label>:81:                                     ; preds = %77
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1050
  br label %82, !dbg !1050

; <label>:82:                                     ; preds = %81, %77
  %83 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1053
  %84 = add nuw nsw i32 %21, 65533, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %83, metadata !401, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i32 %84, metadata !402, metadata !DIExpression()), !dbg !1057
  %85 = trunc i32 %84 to i16, !dbg !1058
  call void @avdtp_core_data_for_set(i8* %83, i16 zeroext %85) #9, !dbg !1059
  br label %268, !dbg !1060

; <label>:86:                                     ; preds = %11
  %87 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1061, !tbaa !106
  %88 = and i8 %87, 1, !dbg !1061
  %89 = icmp eq i8 %88, 0, !dbg !1061
  br i1 %89, label %93, label %90, !dbg !1063

; <label>:90:                                     ; preds = %86
  %91 = call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.59, i32 0, i32 0)), !dbg !1064
  %92 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %93, !dbg !1064

; <label>:93:                                     ; preds = %90, %86
  %94 = phi i8 [ %87, %86 ], [ %92, %90 ], !dbg !1066
  %95 = and i8 %94, 2, !dbg !1066
  %96 = icmp eq i8 %95, 0, !dbg !1066
  br i1 %96, label %98, label %97, !dbg !1068

; <label>:97:                                     ; preds = %93
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1069
  br label %98, !dbg !1069

; <label>:98:                                     ; preds = %97, %93
  %99 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1072
  %100 = add nuw nsw i32 %21, 65533, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %99, metadata !442, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i32 %100, metadata !443, metadata !DIExpression()), !dbg !1076
  %101 = trunc i32 %100 to i16, !dbg !1077
  call void @a2dp_core_data_for_set(i8* %99, i16 zeroext %101) #9, !dbg !1078
  br label %268, !dbg !1079

; <label>:102:                                    ; preds = %11
  %103 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1080, !tbaa !106
  %104 = and i8 %103, 1, !dbg !1080
  %105 = icmp eq i8 %104, 0, !dbg !1080
  br i1 %105, label %109, label %106, !dbg !1082

; <label>:106:                                    ; preds = %102
  %107 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.58, i32 0, i32 0)), !dbg !1083
  %108 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %109, !dbg !1083

; <label>:109:                                    ; preds = %106, %102
  %110 = phi i8 [ %103, %102 ], [ %108, %106 ], !dbg !1085
  %111 = and i8 %110, 2, !dbg !1085
  %112 = icmp eq i8 %111, 0, !dbg !1085
  br i1 %112, label %114, label %113, !dbg !1087

; <label>:113:                                    ; preds = %109
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1088
  br label %114, !dbg !1088

; <label>:114:                                    ; preds = %113, %109
  %115 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1091
  %116 = add nuw nsw i32 %21, 65533, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %115, metadata !483, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 %116, metadata !484, metadata !DIExpression()), !dbg !1095
  %117 = trunc i32 %116 to i16, !dbg !1096
  call void @avctp_core_data_for_set(i8* %115, i16 zeroext %117) #9, !dbg !1097
  br label %268, !dbg !1098

; <label>:118:                                    ; preds = %11
  %119 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1099, !tbaa !106
  %120 = and i8 %119, 1, !dbg !1099
  %121 = icmp eq i8 %120, 0, !dbg !1099
  br i1 %121, label %125, label %122, !dbg !1101

; <label>:122:                                    ; preds = %118
  %123 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.57, i32 0, i32 0)), !dbg !1102
  %124 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %125, !dbg !1102

; <label>:125:                                    ; preds = %122, %118
  %126 = phi i8 [ %119, %118 ], [ %124, %122 ], !dbg !1104
  %127 = and i8 %126, 2, !dbg !1104
  %128 = icmp eq i8 %127, 0, !dbg !1104
  br i1 %128, label %130, label %129, !dbg !1106

; <label>:129:                                    ; preds = %125
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1107
  br label %130, !dbg !1107

; <label>:130:                                    ; preds = %129, %125
  %131 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1110
  %132 = add nuw nsw i32 %21, 65533, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %131, metadata !524, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 %132, metadata !525, metadata !DIExpression()), !dbg !1114
  %133 = trunc i32 %132 to i16, !dbg !1115
  call void @sdp_core_data_for_set(i8* %131, i16 zeroext %133) #9, !dbg !1116
  br label %268, !dbg !1117

; <label>:134:                                    ; preds = %11
  %135 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1118, !tbaa !106
  %136 = and i8 %135, 1, !dbg !1118
  %137 = icmp eq i8 %136, 0, !dbg !1118
  br i1 %137, label %141, label %138, !dbg !1120

; <label>:138:                                    ; preds = %134
  %139 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.56, i32 0, i32 0)), !dbg !1121
  %140 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %141, !dbg !1121

; <label>:141:                                    ; preds = %138, %134
  %142 = phi i8 [ %135, %134 ], [ %140, %138 ], !dbg !1123
  %143 = and i8 %142, 2, !dbg !1123
  %144 = icmp eq i8 %143, 0, !dbg !1123
  br i1 %144, label %146, label %145, !dbg !1125

; <label>:145:                                    ; preds = %141
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1126
  br label %146, !dbg !1126

; <label>:146:                                    ; preds = %145, %141
  %147 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1129
  %148 = add nuw nsw i32 %21, 65533, !dbg !1130
  call void @llvm.dbg.value(metadata i8* %147, metadata !606, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 %148, metadata !607, metadata !DIExpression()), !dbg !1133
  %149 = trunc i32 %148 to i16, !dbg !1134
  call void @rfc_multiplexer_core_data_for_set(i8* %147, i16 zeroext %149) #9, !dbg !1135
  br label %268, !dbg !1136

; <label>:150:                                    ; preds = %11
  %151 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1137, !tbaa !106
  %152 = and i8 %151, 1, !dbg !1137
  %153 = icmp eq i8 %152, 0, !dbg !1137
  br i1 %153, label %157, label %154, !dbg !1139

; <label>:154:                                    ; preds = %150
  %155 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @str.55, i32 0, i32 0)), !dbg !1140
  %156 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %157, !dbg !1140

; <label>:157:                                    ; preds = %154, %150
  %158 = phi i8 [ %151, %150 ], [ %156, %154 ], !dbg !1142
  %159 = and i8 %158, 2, !dbg !1142
  %160 = icmp eq i8 %159, 0, !dbg !1142
  br i1 %160, label %162, label %161, !dbg !1144

; <label>:161:                                    ; preds = %157
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1145
  br label %162, !dbg !1145

; <label>:162:                                    ; preds = %161, %157
  %163 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1148
  %164 = add nuw nsw i32 %21, 65533, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %163, metadata !565, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i32 %164, metadata !566, metadata !DIExpression()), !dbg !1152
  %165 = trunc i32 %164 to i16, !dbg !1153
  call void @rfc_channel_core_data_for_set(i8* %163, i16 zeroext %165) #9, !dbg !1154
  br label %268, !dbg !1155

; <label>:166:                                    ; preds = %11
  %167 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1156, !tbaa !106
  %168 = and i8 %167, 1, !dbg !1156
  %169 = icmp eq i8 %168, 0, !dbg !1156
  br i1 %169, label %173, label %170, !dbg !1158

; <label>:170:                                    ; preds = %166
  %171 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.54, i32 0, i32 0)), !dbg !1159
  %172 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %173, !dbg !1159

; <label>:173:                                    ; preds = %170, %166
  %174 = phi i8 [ %167, %166 ], [ %172, %170 ], !dbg !1161
  %175 = and i8 %174, 2, !dbg !1161
  %176 = icmp eq i8 %175, 0, !dbg !1161
  br i1 %176, label %178, label %177, !dbg !1163

; <label>:177:                                    ; preds = %173
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1164
  br label %178, !dbg !1164

; <label>:178:                                    ; preds = %177, %173
  %179 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1167
  %180 = add nuw nsw i32 %21, 65533, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %179, metadata !647, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i32 %180, metadata !648, metadata !DIExpression()), !dbg !1171
  %181 = trunc i32 %180 to i16, !dbg !1172
  call void @hfp_core_data_for_set(i8* %179, i16 zeroext %181) #9, !dbg !1173
  br label %268, !dbg !1174

; <label>:182:                                    ; preds = %11
  %183 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1175, !tbaa !106
  %184 = and i8 %183, 1, !dbg !1175
  %185 = icmp eq i8 %184, 0, !dbg !1175
  br i1 %185, label %189, label %186, !dbg !1177

; <label>:186:                                    ; preds = %182
  %187 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.53, i32 0, i32 0)), !dbg !1178
  %188 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %189, !dbg !1178

; <label>:189:                                    ; preds = %186, %182
  %190 = phi i8 [ %183, %182 ], [ %188, %186 ], !dbg !1180
  %191 = and i8 %190, 2, !dbg !1180
  %192 = icmp eq i8 %191, 0, !dbg !1180
  br i1 %192, label %194, label %193, !dbg !1182

; <label>:193:                                    ; preds = %189
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1183
  br label %194, !dbg !1183

; <label>:194:                                    ; preds = %193, %189
  %195 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1186
  %196 = add nuw nsw i32 %21, 65533, !dbg !1187
  call void @llvm.dbg.value(metadata i8* %195, metadata !688, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 %196, metadata !689, metadata !DIExpression()), !dbg !1190
  %197 = trunc i32 %196 to i16, !dbg !1191
  call void @user_core_data_for_set(i8* %195, i16 zeroext %197) #9, !dbg !1192
  br label %268, !dbg !1193

; <label>:198:                                    ; preds = %11
  %199 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1194, !tbaa !106
  %200 = and i8 %199, 1, !dbg !1194
  %201 = icmp eq i8 %200, 0, !dbg !1194
  br i1 %201, label %205, label %202, !dbg !1196

; <label>:202:                                    ; preds = %198
  %203 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.52, i32 0, i32 0)), !dbg !1197
  %204 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %205, !dbg !1197

; <label>:205:                                    ; preds = %202, %198
  %206 = phi i8 [ %199, %198 ], [ %204, %202 ], !dbg !1199
  %207 = and i8 %206, 2, !dbg !1199
  %208 = icmp eq i8 %207, 0, !dbg !1199
  br i1 %208, label %210, label %209, !dbg !1201

; <label>:209:                                    ; preds = %205
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1202
  br label %210, !dbg !1202

; <label>:210:                                    ; preds = %209, %205
  %211 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1205
  %212 = add nuw nsw i32 %21, 65533, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %211, metadata !873, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %212, metadata !874, metadata !DIExpression()), !dbg !1209
  %213 = trunc i32 %212 to i16, !dbg !1210
  call void @app_core_data_for_set(i8* %211, i16 zeroext %213) #9, !dbg !1211
  br label %268, !dbg !1212

; <label>:214:                                    ; preds = %11
  %215 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1213, !tbaa !106
  %216 = and i8 %215, 1, !dbg !1213
  %217 = icmp eq i8 %216, 0, !dbg !1213
  br i1 %217, label %221, label %218, !dbg !1215

; <label>:218:                                    ; preds = %214
  %219 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.51, i32 0, i32 0)), !dbg !1216
  %220 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %221, !dbg !1216

; <label>:221:                                    ; preds = %218, %214
  %222 = phi i8 [ %215, %214 ], [ %220, %218 ], !dbg !1218
  %223 = and i8 %222, 2, !dbg !1218
  %224 = icmp eq i8 %223, 0, !dbg !1218
  br i1 %224, label %226, label %225, !dbg !1220

; <label>:225:                                    ; preds = %221
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1221
  br label %226, !dbg !1221

; <label>:226:                                    ; preds = %225, %221
  %227 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1224
  %228 = add nuw nsw i32 %21, 65533, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %227, metadata !729, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i32 %228, metadata !730, metadata !DIExpression()), !dbg !1228
  %229 = trunc i32 %228 to i16, !dbg !1229
  call void @hid_core_data_for_set(i8* %227, i16 zeroext %229) #9, !dbg !1230
  br label %268, !dbg !1231

; <label>:230:                                    ; preds = %11
  %231 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1232, !tbaa !106
  %232 = and i8 %231, 1, !dbg !1232
  %233 = icmp eq i8 %232, 0, !dbg !1232
  br i1 %233, label %237, label %234, !dbg !1234

; <label>:234:                                    ; preds = %230
  %235 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.50, i32 0, i32 0)), !dbg !1235
  %236 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %237, !dbg !1235

; <label>:237:                                    ; preds = %234, %230
  %238 = phi i8 [ %231, %230 ], [ %236, %234 ], !dbg !1237
  %239 = and i8 %238, 2, !dbg !1237
  %240 = icmp eq i8 %239, 0, !dbg !1237
  br i1 %240, label %242, label %241, !dbg !1239

; <label>:241:                                    ; preds = %237
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1240
  br label %242, !dbg !1240

; <label>:242:                                    ; preds = %241, %237
  %243 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1243
  %244 = add nuw nsw i32 %21, 65533, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %243, metadata !770, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %244, metadata !771, metadata !DIExpression()), !dbg !1247
  %245 = trunc i32 %244 to i16, !dbg !1248
  call void @spp_core_data_for_set(i8* %243, i16 zeroext %245) #9, !dbg !1249
  br label %268, !dbg !1250

; <label>:246:                                    ; preds = %11
  %247 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1251, !tbaa !106
  %248 = and i8 %247, 1, !dbg !1251
  %249 = icmp eq i8 %248, 0, !dbg !1251
  br i1 %249, label %253, label %250, !dbg !1253

; <label>:250:                                    ; preds = %246
  %251 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.49, i32 0, i32 0)), !dbg !1254
  %252 = load i8, i8* @btstack_tws_debug_enable, align 1, !tbaa !106
  br label %253, !dbg !1254

; <label>:253:                                    ; preds = %250, %246
  %254 = phi i8 [ %247, %246 ], [ %252, %250 ], !dbg !1256
  %255 = and i8 %254, 2, !dbg !1256
  %256 = icmp eq i8 %255, 0, !dbg !1256
  br i1 %256, label %258, label %257, !dbg !1258

; <label>:257:                                    ; preds = %253
  call void @put_buf(i8* %13, i32 %21) #9, !dbg !1259
  br label %258, !dbg !1259

; <label>:258:                                    ; preds = %257, %253
  %259 = getelementptr inbounds i8, i8* %13, i32 3, !dbg !1262
  %260 = add nuw nsw i32 %21, 65533, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %259, metadata !811, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i32 %260, metadata !812, metadata !DIExpression()), !dbg !1266
  %261 = trunc i32 %260 to i16, !dbg !1267
  call void @iap_core_data_for_set(i8* %259, i16 zeroext %261) #9, !dbg !1268
  br label %268, !dbg !1269

; <label>:262:                                    ; preds = %11
  %263 = load i8, i8* @btstack_tws_debug_enable, align 1, !dbg !1270, !tbaa !106
  %264 = and i8 %263, 1, !dbg !1270
  %265 = icmp eq i8 %264, 0, !dbg !1270
  br i1 %265, label %268, label %266, !dbg !1272

; <label>:266:                                    ; preds = %262
  %267 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.64, i32 0, i32 0)), !dbg !1273
  br label %268, !dbg !1273

; <label>:268:                                    ; preds = %266, %262, %258, %242, %226, %210, %194, %178, %162, %146, %130, %114, %98, %82, %66, %50, %37
  %269 = getelementptr inbounds i8, i8* %13, i32 %21, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %269, metadata !960, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i8* %269, metadata !960, metadata !DIExpression()), !dbg !969
  %270 = and i32 %22, 65535, !dbg !1276
  %271 = icmp slt i32 %270, %1, !dbg !974
  br i1 %271, label %11, label %272, !dbg !977, !llvm.loop !1277

; <label>:272:                                    ; preds = %268
  br label %273, !dbg !1280

; <label>:273:                                    ; preds = %272, %2
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %4) #8, !dbg !1280
  ret i32 0, !dbg !1280
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !24, line: 190, type: !25, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12)
!3 = !DIFile(filename: "../tws_host.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 44, baseType: !9)
!8 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 46, baseType: !11)
!11 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!12 = !{!0, !13}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "search_tws_reasult", scope: !2, file: !15, line: 39, type: !16, isLocal: false, isDefinition: true)
!15 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/tws_host.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "search_tws_reasult_t", file: !15, line: 33, size: 104, elements: !17)
!17 = !{!18, !19, !23}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "search_tws_add_state", scope: !16, file: !15, line: 34, baseType: !7, size: 8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tws_remote_addr", scope: !16, file: !15, line: 35, baseType: !20, size: 48, offset: 8)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 48, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 6)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tws_wait_phone_conn_addr", scope: !16, file: !15, line: 36, baseType: !20, size: 48, offset: 56)
!24 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!29 = distinct !DISubprogram(name: "get_tws_reomot_reasult", scope: !15, file: !15, line: 40, type: !30, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !6}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !8, line: 44, baseType: !9)
!33 = !{!34}
!34 = !DILocalVariable(name: "addr", arg: 1, scope: !29, file: !15, line: 40, type: !6)
!35 = !DILocation(line: 40, column: 33, scope: !29)
!36 = !DILocation(line: 42, column: 28, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !15, line: 42, column: 9)
!38 = !{!39, !40, i64 0}
!39 = !{!"search_tws_reasult_t", !40, i64 0, !40, i64 1, !40, i64 7}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 42, column: 49, scope: !37)
!43 = !DILocation(line: 42, column: 9, scope: !29)
!44 = !DILocation(line: 43, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !37, file: !15, line: 42, column: 58)
!46 = !DILocation(line: 44, column: 9, scope: !45)
!47 = !DILocation(line: 45, column: 49, scope: !45)
!48 = !DILocation(line: 46, column: 9, scope: !45)
!49 = !DILocation(line: 50, column: 1, scope: !29)
!50 = distinct !DISubprogram(name: "get_tws_wait_phone_con_reasult", scope: !15, file: !15, line: 51, type: !30, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !51)
!51 = !{!52}
!52 = !DILocalVariable(name: "addr", arg: 1, scope: !50, file: !15, line: 51, type: !6)
!53 = !DILocation(line: 51, column: 41, scope: !50)
!54 = !DILocation(line: 53, column: 28, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !15, line: 53, column: 9)
!56 = !DILocation(line: 53, column: 49, scope: !55)
!57 = !DILocation(line: 53, column: 9, scope: !50)
!58 = !DILocation(line: 54, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !15, line: 53, column: 58)
!60 = !DILocation(line: 55, column: 9, scope: !59)
!61 = !DILocation(line: 58, column: 1, scope: !50)
!62 = distinct !DISubprogram(name: "bt_get_tws_device_indicate", scope: !15, file: !15, line: 59, type: !63, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !6}
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "tws_device_indicate", arg: 1, scope: !62, file: !15, line: 59, type: !6)
!67 = !DILocalVariable(name: "tws_device_indicate_t", scope: !62, file: !15, line: 61, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 16, elements: !70)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !{!71}
!71 = !DISubrange(count: 2)
!72 = !DILocation(line: 59, column: 58, scope: !62)
!73 = !DILocation(line: 61, column: 10, scope: !62)
!74 = !DILocation(line: 63, column: 1, scope: !62)
!75 = distinct !DISubprogram(name: "hci_event_extended_inquiry_result", scope: !15, file: !15, line: 64, type: !76, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !79)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !6, !78}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 46, baseType: !11)
!79 = !{!80, !81, !82, !83, !85, !86, !87, !88, !92, !93}
!80 = !DILocalVariable(name: "packet", arg: 1, scope: !75, file: !15, line: 64, type: !6)
!81 = !DILocalVariable(name: "len", arg: 2, scope: !75, file: !15, line: 64, type: !78)
!82 = !DILocalVariable(name: "crc_priv", scope: !75, file: !15, line: 67, type: !78)
!83 = !DILocalVariable(name: "tws_dev_indicate", scope: !75, file: !15, line: 68, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !70)
!85 = !DILocalVariable(name: "remote_addr", scope: !75, file: !15, line: 69, type: !20)
!86 = !DILocalVariable(name: "remote_name_len", scope: !75, file: !15, line: 70, type: !7)
!87 = !DILocalVariable(name: "priv_version_len", scope: !75, file: !15, line: 71, type: !7)
!88 = !DILocalVariable(name: "priv_version", scope: !75, file: !15, line: 72, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 20)
!92 = !DILocalVariable(name: "p", scope: !75, file: !15, line: 74, type: !6)
!93 = !DILocalVariable(name: "name_cmp_flag", scope: !75, file: !15, line: 75, type: !7)
!94 = !DILocation(line: 64, column: 44, scope: !75)
!95 = !DILocation(line: 64, column: 56, scope: !75)
!96 = !DILocation(line: 67, column: 5, scope: !75)
!97 = !DILocation(line: 68, column: 5, scope: !75)
!98 = !DILocation(line: 68, column: 8, scope: !75)
!99 = !DILocation(line: 69, column: 5, scope: !75)
!100 = !DILocation(line: 69, column: 8, scope: !75)
!101 = !DILocation(line: 70, column: 8, scope: !75)
!102 = !DILocation(line: 71, column: 8, scope: !75)
!103 = !DILocation(line: 72, column: 5, scope: !75)
!104 = !DILocation(line: 72, column: 8, scope: !75)
!105 = !DILocation(line: 74, column: 19, scope: !75)
!106 = !{!40, !40, i64 0}
!107 = !DILocation(line: 74, column: 13, scope: !75)
!108 = !DILocation(line: 74, column: 9, scope: !75)
!109 = !DILocation(line: 75, column: 8, scope: !75)
!110 = !DILocation(line: 77, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !75, file: !15, line: 77, column: 5)
!112 = !DILocation(line: 77, column: 5, scope: !75)
!113 = !DILocation(line: 77, column: 5, scope: !114)
!114 = !DILexicalBlockFile(scope: !111, file: !15, discriminator: 1)
!115 = !DILocation(line: 80, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !75, file: !15, line: 80, column: 5)
!117 = !DILocation(line: 79, column: 26, scope: !75)
!118 = !DILocation(line: 79, column: 5, scope: !75)
!119 = !DILocation(line: 80, column: 5, scope: !75)
!120 = !DILocation(line: 80, column: 5, scope: !121)
!121 = !DILexicalBlockFile(scope: !116, file: !15, discriminator: 1)
!122 = !DILocation(line: 86, column: 5, scope: !75)
!123 = !DILocation(line: 93, column: 5, scope: !124)
!124 = !DILexicalBlockFile(scope: !75, file: !15, discriminator: 1)
!125 = !DILocation(line: 94, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !15, line: 94, column: 13)
!127 = distinct !DILexicalBlock(scope: !75, file: !15, line: 93, column: 21)
!128 = !DILocation(line: 94, column: 18, scope: !126)
!129 = !DILocation(line: 94, column: 13, scope: !127)
!130 = !DILocation(line: 101, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !15, line: 101, column: 13)
!132 = !DILocation(line: 109, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !127, file: !15, line: 109, column: 13)
!134 = !DILocation(line: 109, column: 18, scope: !133)
!135 = !DILocation(line: 109, column: 13, scope: !127)
!136 = !DILocation(line: 111, column: 47, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !15, line: 109, column: 27)
!138 = !DILocation(line: 111, column: 13, scope: !137)
!139 = !DILocation(line: 112, column: 17, scope: !137)
!140 = !DILocation(line: 115, column: 35, scope: !137)
!141 = !DILocation(line: 115, column: 41, scope: !137)
!142 = !DILocation(line: 115, column: 13, scope: !137)
!143 = !DILocation(line: 116, column: 13, scope: !137)
!144 = !DILocation(line: 117, column: 9, scope: !137)
!145 = !DILocation(line: 118, column: 16, scope: !127)
!146 = !DILocation(line: 118, column: 21, scope: !127)
!147 = !DILocation(line: 118, column: 13, scope: !127)
!148 = !DILocation(line: 119, column: 11, scope: !127)
!149 = !DILocation(line: 93, column: 12, scope: !124)
!150 = !DILocation(line: 93, column: 16, scope: !124)
!151 = distinct !{!151, !152, !153}
!152 = !DILocation(line: 93, column: 5, scope: !75)
!153 = !DILocation(line: 120, column: 5, scope: !75)
!154 = !DILocation(line: 121, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !75, file: !15, line: 121, column: 9)
!156 = !DILocation(line: 121, column: 26, scope: !155)
!157 = !DILocation(line: 121, column: 29, scope: !158)
!158 = !DILexicalBlockFile(scope: !155, file: !15, discriminator: 1)
!159 = !DILocation(line: 121, column: 72, scope: !158)
!160 = !DILocation(line: 121, column: 9, scope: !124)
!161 = !DILocation(line: 123, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !15, line: 121, column: 78)
!163 = !DILocation(line: 124, column: 9, scope: !162)
!164 = !DILocation(line: 125, column: 9, scope: !162)
!165 = !DILocation(line: 126, column: 20, scope: !162)
!166 = !DILocation(line: 67, column: 9, scope: !75)
!167 = !DILocation(line: 126, column: 18, scope: !162)
!168 = !{!169, !169, i64 0}
!169 = !{!"short", !40, i64 0}
!170 = !DILocation(line: 128, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !162, file: !15, line: 128, column: 13)
!172 = !DILocation(line: 128, column: 13, scope: !171)
!173 = !DILocation(line: 128, column: 53, scope: !171)
!174 = !DILocation(line: 128, column: 13, scope: !162)
!175 = !DILocation(line: 129, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !15, line: 128, column: 59)
!177 = !DILocation(line: 130, column: 26, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !15, line: 130, column: 17)
!179 = !DILocation(line: 130, column: 17, scope: !178)
!180 = !DILocation(line: 130, column: 65, scope: !178)
!181 = !DILocation(line: 130, column: 17, scope: !176)
!182 = !DILocation(line: 131, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !15, line: 130, column: 71)
!184 = !DILocation(line: 132, column: 17, scope: !183)
!185 = !DILocation(line: 133, column: 61, scope: !183)
!186 = !DILocation(line: 133, column: 17, scope: !183)
!187 = !DILocation(line: 134, column: 57, scope: !183)
!188 = !DILocation(line: 135, column: 17, scope: !183)
!189 = !DILocation(line: 136, column: 13, scope: !183)
!190 = !DILocation(line: 141, column: 1, scope: !75)
!191 = distinct !DISubprogram(name: "btstack_api_connect_completed", scope: !15, file: !15, line: 145, type: !192, isLocal: false, isDefinition: true, scopeLine: 146, isOptimized: true, unit: !2, variables: !4)
!192 = !DISubroutineType(types: !193)
!193 = !{!25}
!194 = !DILocation(line: 147, column: 5, scope: !191)
!195 = distinct !DISubprogram(name: "tws_host_acl_handler", scope: !15, file: !15, line: 174, type: !63, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !196)
!196 = !{!197}
!197 = !DILocalVariable(name: "packet", arg: 1, scope: !195, file: !15, line: 174, type: !6)
!198 = !DILocation(line: 174, column: 31, scope: !195)
!199 = !DILocation(line: 183, column: 1, scope: !195)
!200 = distinct !DISubprogram(name: "tws_profile_init", scope: !15, file: !15, line: 192, type: !192, isLocal: false, isDefinition: true, scopeLine: 193, isOptimized: true, unit: !2, variables: !4)
!201 = !DILocation(line: 194, column: 5, scope: !200)
!202 = !DILocation(line: 196, column: 5, scope: !200)
!203 = distinct !DISubprogram(name: "tws_profile_exit", scope: !15, file: !15, line: 199, type: !192, isLocal: false, isDefinition: true, scopeLine: 200, isOptimized: true, unit: !2, variables: !4)
!204 = !DILocation(line: 204, column: 5, scope: !203)
!205 = !DILocation(line: 206, column: 5, scope: !203)
!206 = distinct !DISubprogram(name: "cheack_tws_connect_state", scope: !15, file: !15, line: 255, type: !207, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!7}
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217}
!210 = !DILocalVariable(name: "check_tws_con_channel", scope: !206, file: !15, line: 257, type: !7)
!211 = !DILocalVariable(name: "check_user_cmd", scope: !206, file: !15, line: 258, type: !7)
!212 = !DILocalVariable(name: "sdp_master_channel", scope: !206, file: !15, line: 259, type: !7)
!213 = !DILocalVariable(name: "check_avctp_cmd", scope: !206, file: !15, line: 260, type: !7)
!214 = !DILocalVariable(name: "check_hid_step", scope: !206, file: !15, line: 261, type: !7)
!215 = !DILocalVariable(name: "check_hfp_resend", scope: !206, file: !15, line: 262, type: !7)
!216 = !DILocalVariable(name: "check_l2cap_state", scope: !206, file: !15, line: 263, type: !7)
!217 = !DILocalVariable(name: "state", scope: !218, file: !15, line: 267, type: !25)
!218 = distinct !DILexicalBlock(scope: !219, file: !15, line: 265, column: 88)
!219 = distinct !DILexicalBlock(scope: !206, file: !15, line: 264, column: 9)
!220 = !DILocation(line: 257, column: 33, scope: !206)
!221 = !DILocation(line: 257, column: 9, scope: !206)
!222 = !DILocation(line: 258, column: 26, scope: !206)
!223 = !DILocation(line: 258, column: 9, scope: !206)
!224 = !DILocation(line: 259, column: 29, scope: !206)
!225 = !DILocation(line: 259, column: 8, scope: !206)
!226 = !DILocation(line: 260, column: 26, scope: !206)
!227 = !DILocation(line: 260, column: 8, scope: !206)
!228 = !DILocation(line: 261, column: 25, scope: !206)
!229 = !DILocation(line: 261, column: 8, scope: !206)
!230 = !DILocation(line: 262, column: 27, scope: !206)
!231 = !DILocation(line: 262, column: 8, scope: !206)
!232 = !DILocation(line: 263, column: 28, scope: !206)
!233 = !DILocation(line: 263, column: 8, scope: !206)
!234 = !DILocation(line: 264, column: 31, scope: !219)
!235 = !DILocation(line: 267, column: 21, scope: !218)
!236 = !DILocation(line: 267, column: 13, scope: !218)
!237 = !DILocation(line: 268, column: 19, scope: !238)
!238 = distinct !DILexicalBlock(scope: !218, file: !15, line: 268, column: 13)
!239 = !DILocation(line: 268, column: 13, scope: !218)
!240 = !DILocation(line: 269, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !15, line: 268, column: 45)
!242 = !DILocation(line: 270, column: 13, scope: !241)
!243 = !DILocation(line: 275, column: 1, scope: !206)
!244 = distinct !DISubprogram(name: "tws_hci_connected_info_for_send", scope: !15, file: !15, line: 277, type: !245, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!25, !6, !25}
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "packet", arg: 1, scope: !244, file: !15, line: 277, type: !6)
!249 = !DILocalVariable(name: "size", arg: 2, scope: !244, file: !15, line: 277, type: !25)
!250 = !DILocation(line: 277, column: 41, scope: !244)
!251 = !DILocation(line: 277, column: 53, scope: !244)
!252 = !DILocation(line: 279, column: 15, scope: !244)
!253 = !DILocation(line: 280, column: 5, scope: !244)
!254 = !DILocation(line: 280, column: 15, scope: !244)
!255 = !DILocation(line: 281, column: 5, scope: !244)
!256 = !DILocation(line: 281, column: 15, scope: !244)
!257 = !DILocation(line: 283, column: 39, scope: !258)
!258 = distinct !DILexicalBlock(scope: !244, file: !15, line: 283, column: 9)
!259 = !DILocation(line: 283, column: 9, scope: !258)
!260 = !DILocation(line: 283, column: 9, scope: !244)
!261 = !DILocation(line: 284, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !15, line: 284, column: 9)
!263 = distinct !DILexicalBlock(scope: !258, file: !15, line: 283, column: 60)
!264 = !DILocation(line: 284, column: 9, scope: !263)
!265 = !DILocation(line: 284, column: 9, scope: !266)
!266 = !DILexicalBlockFile(scope: !262, file: !15, discriminator: 1)
!267 = !DILocation(line: 285, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !15, line: 285, column: 9)
!269 = !DILocation(line: 285, column: 9, scope: !263)
!270 = !DILocation(line: 285, column: 9, scope: !271)
!271 = !DILexicalBlockFile(scope: !272, file: !15, discriminator: 1)
!272 = distinct !DILexicalBlock(scope: !268, file: !15, line: 285, column: 9)
!273 = !DILocation(line: 290, column: 1, scope: !244)
!274 = distinct !DISubprogram(name: "tws_hci_connected_info_for_set", scope: !15, file: !15, line: 292, type: !275, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !6, !25}
!277 = !{!278, !279}
!278 = !DILocalVariable(name: "packet", arg: 1, scope: !274, file: !15, line: 292, type: !6)
!279 = !DILocalVariable(name: "size", arg: 2, scope: !274, file: !15, line: 292, type: !25)
!280 = !DILocation(line: 292, column: 41, scope: !274)
!281 = !DILocation(line: 292, column: 53, scope: !274)
!282 = !DILocation(line: 294, column: 35, scope: !274)
!283 = !DILocation(line: 294, column: 5, scope: !274)
!284 = !DILocation(line: 295, column: 1, scope: !274)
!285 = distinct !DISubprogram(name: "tws_l2cap_connected_info_for_send", scope: !15, file: !15, line: 297, type: !245, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !286)
!286 = !{!287, !288, !289}
!287 = !DILocalVariable(name: "packet", arg: 1, scope: !285, file: !15, line: 297, type: !6)
!288 = !DILocalVariable(name: "size", arg: 2, scope: !285, file: !15, line: 297, type: !25)
!289 = !DILocalVariable(name: "len", scope: !285, file: !15, line: 299, type: !25)
!290 = !DILocation(line: 297, column: 43, scope: !285)
!291 = !DILocation(line: 297, column: 55, scope: !285)
!292 = !DILocation(line: 299, column: 9, scope: !285)
!293 = !DILocation(line: 300, column: 15, scope: !285)
!294 = !DILocation(line: 301, column: 47, scope: !285)
!295 = !DILocation(line: 301, column: 52, scope: !285)
!296 = !DILocation(line: 301, column: 15, scope: !285)
!297 = !DILocation(line: 301, column: 13, scope: !285)
!298 = !DILocation(line: 302, column: 17, scope: !285)
!299 = !DILocation(line: 302, column: 5, scope: !285)
!300 = !DILocation(line: 302, column: 15, scope: !285)
!301 = !DILocation(line: 303, column: 21, scope: !285)
!302 = !DILocation(line: 303, column: 17, scope: !285)
!303 = !DILocation(line: 303, column: 5, scope: !285)
!304 = !DILocation(line: 303, column: 15, scope: !285)
!305 = !DILocation(line: 305, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !285, file: !15, line: 305, column: 5)
!307 = !DILocation(line: 305, column: 5, scope: !285)
!308 = !DILocation(line: 305, column: 5, scope: !309)
!309 = !DILexicalBlockFile(scope: !306, file: !15, discriminator: 1)
!310 = !DILocation(line: 306, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !285, file: !15, line: 306, column: 5)
!312 = !DILocation(line: 306, column: 5, scope: !285)
!313 = !DILocation(line: 306, column: 5, scope: !314)
!314 = !DILexicalBlockFile(scope: !315, file: !15, discriminator: 1)
!315 = distinct !DILexicalBlock(scope: !311, file: !15, line: 306, column: 5)
!316 = !DILocation(line: 307, column: 5, scope: !285)
!317 = distinct !DISubprogram(name: "tws_l2cap_connected_info_for_set", scope: !15, file: !15, line: 310, type: !275, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !318)
!318 = !{!319, !320}
!319 = !DILocalVariable(name: "packet", arg: 1, scope: !317, file: !15, line: 310, type: !6)
!320 = !DILocalVariable(name: "size", arg: 2, scope: !317, file: !15, line: 310, type: !25)
!321 = !DILocation(line: 310, column: 43, scope: !317)
!322 = !DILocation(line: 310, column: 55, scope: !317)
!323 = !DILocation(line: 312, column: 37, scope: !317)
!324 = !DILocation(line: 312, column: 5, scope: !317)
!325 = !DILocation(line: 313, column: 1, scope: !317)
!326 = distinct !DISubprogram(name: "tws_l2cap_channel_info_for_send", scope: !15, file: !15, line: 315, type: !245, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !327)
!327 = !{!328, !329, !330}
!328 = !DILocalVariable(name: "packet", arg: 1, scope: !326, file: !15, line: 315, type: !6)
!329 = !DILocalVariable(name: "size", arg: 2, scope: !326, file: !15, line: 315, type: !25)
!330 = !DILocalVariable(name: "len", scope: !326, file: !15, line: 317, type: !25)
!331 = !DILocation(line: 315, column: 41, scope: !326)
!332 = !DILocation(line: 315, column: 53, scope: !326)
!333 = !DILocation(line: 317, column: 9, scope: !326)
!334 = !DILocation(line: 318, column: 15, scope: !326)
!335 = !DILocation(line: 319, column: 55, scope: !326)
!336 = !DILocation(line: 319, column: 60, scope: !326)
!337 = !DILocation(line: 319, column: 15, scope: !326)
!338 = !DILocation(line: 319, column: 13, scope: !326)
!339 = !DILocation(line: 320, column: 17, scope: !326)
!340 = !DILocation(line: 320, column: 5, scope: !326)
!341 = !DILocation(line: 320, column: 15, scope: !326)
!342 = !DILocation(line: 321, column: 21, scope: !326)
!343 = !DILocation(line: 321, column: 17, scope: !326)
!344 = !DILocation(line: 321, column: 5, scope: !326)
!345 = !DILocation(line: 321, column: 15, scope: !326)
!346 = !DILocation(line: 323, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !326, file: !15, line: 323, column: 5)
!348 = !DILocation(line: 323, column: 5, scope: !326)
!349 = !DILocation(line: 323, column: 5, scope: !350)
!350 = !DILexicalBlockFile(scope: !347, file: !15, discriminator: 1)
!351 = !DILocation(line: 324, column: 5, scope: !352)
!352 = distinct !DILexicalBlock(scope: !326, file: !15, line: 324, column: 5)
!353 = !DILocation(line: 324, column: 5, scope: !326)
!354 = !DILocation(line: 324, column: 5, scope: !355)
!355 = !DILexicalBlockFile(scope: !356, file: !15, discriminator: 1)
!356 = distinct !DILexicalBlock(scope: !352, file: !15, line: 324, column: 5)
!357 = !DILocation(line: 325, column: 5, scope: !326)
!358 = distinct !DISubprogram(name: "tws_l2cap_channel_info_for_set", scope: !15, file: !15, line: 328, type: !275, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !359)
!359 = !{!360, !361}
!360 = !DILocalVariable(name: "packet", arg: 1, scope: !358, file: !15, line: 328, type: !6)
!361 = !DILocalVariable(name: "size", arg: 2, scope: !358, file: !15, line: 328, type: !25)
!362 = !DILocation(line: 328, column: 41, scope: !358)
!363 = !DILocation(line: 328, column: 53, scope: !358)
!364 = !DILocation(line: 330, column: 45, scope: !358)
!365 = !DILocation(line: 330, column: 5, scope: !358)
!366 = !DILocation(line: 331, column: 1, scope: !358)
!367 = distinct !DISubprogram(name: "tws_avdtp_info_for_send", scope: !15, file: !15, line: 333, type: !245, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !368)
!368 = !{!369, !370, !371}
!369 = !DILocalVariable(name: "packet", arg: 1, scope: !367, file: !15, line: 333, type: !6)
!370 = !DILocalVariable(name: "size", arg: 2, scope: !367, file: !15, line: 333, type: !25)
!371 = !DILocalVariable(name: "len", scope: !367, file: !15, line: 335, type: !25)
!372 = !DILocation(line: 333, column: 33, scope: !367)
!373 = !DILocation(line: 333, column: 45, scope: !367)
!374 = !DILocation(line: 335, column: 9, scope: !367)
!375 = !DILocation(line: 336, column: 15, scope: !367)
!376 = !DILocation(line: 337, column: 47, scope: !367)
!377 = !DILocation(line: 337, column: 52, scope: !367)
!378 = !DILocation(line: 337, column: 15, scope: !367)
!379 = !DILocation(line: 337, column: 13, scope: !367)
!380 = !DILocation(line: 338, column: 17, scope: !367)
!381 = !DILocation(line: 338, column: 5, scope: !367)
!382 = !DILocation(line: 338, column: 15, scope: !367)
!383 = !DILocation(line: 339, column: 21, scope: !367)
!384 = !DILocation(line: 339, column: 17, scope: !367)
!385 = !DILocation(line: 339, column: 5, scope: !367)
!386 = !DILocation(line: 339, column: 15, scope: !367)
!387 = !DILocation(line: 341, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !367, file: !15, line: 341, column: 5)
!389 = !DILocation(line: 341, column: 5, scope: !367)
!390 = !DILocation(line: 341, column: 5, scope: !391)
!391 = !DILexicalBlockFile(scope: !388, file: !15, discriminator: 1)
!392 = !DILocation(line: 342, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !367, file: !15, line: 342, column: 5)
!394 = !DILocation(line: 342, column: 5, scope: !367)
!395 = !DILocation(line: 342, column: 5, scope: !396)
!396 = !DILexicalBlockFile(scope: !397, file: !15, discriminator: 1)
!397 = distinct !DILexicalBlock(scope: !393, file: !15, line: 342, column: 5)
!398 = !DILocation(line: 343, column: 5, scope: !367)
!399 = distinct !DISubprogram(name: "tws_avdtp_info_for_set", scope: !15, file: !15, line: 346, type: !275, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !400)
!400 = !{!401, !402}
!401 = !DILocalVariable(name: "packet", arg: 1, scope: !399, file: !15, line: 346, type: !6)
!402 = !DILocalVariable(name: "size", arg: 2, scope: !399, file: !15, line: 346, type: !25)
!403 = !DILocation(line: 346, column: 33, scope: !399)
!404 = !DILocation(line: 346, column: 45, scope: !399)
!405 = !DILocation(line: 348, column: 37, scope: !399)
!406 = !DILocation(line: 348, column: 5, scope: !399)
!407 = !DILocation(line: 349, column: 1, scope: !399)
!408 = distinct !DISubprogram(name: "tws_a2dp_info_for_send", scope: !15, file: !15, line: 351, type: !245, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !409)
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "packet", arg: 1, scope: !408, file: !15, line: 351, type: !6)
!411 = !DILocalVariable(name: "size", arg: 2, scope: !408, file: !15, line: 351, type: !25)
!412 = !DILocalVariable(name: "len", scope: !408, file: !15, line: 353, type: !25)
!413 = !DILocation(line: 351, column: 32, scope: !408)
!414 = !DILocation(line: 351, column: 44, scope: !408)
!415 = !DILocation(line: 353, column: 9, scope: !408)
!416 = !DILocation(line: 354, column: 15, scope: !408)
!417 = !DILocation(line: 355, column: 46, scope: !408)
!418 = !DILocation(line: 355, column: 51, scope: !408)
!419 = !DILocation(line: 355, column: 15, scope: !408)
!420 = !DILocation(line: 355, column: 13, scope: !408)
!421 = !DILocation(line: 356, column: 17, scope: !408)
!422 = !DILocation(line: 356, column: 5, scope: !408)
!423 = !DILocation(line: 356, column: 15, scope: !408)
!424 = !DILocation(line: 357, column: 21, scope: !408)
!425 = !DILocation(line: 357, column: 17, scope: !408)
!426 = !DILocation(line: 357, column: 5, scope: !408)
!427 = !DILocation(line: 357, column: 15, scope: !408)
!428 = !DILocation(line: 359, column: 5, scope: !429)
!429 = distinct !DILexicalBlock(scope: !408, file: !15, line: 359, column: 5)
!430 = !DILocation(line: 359, column: 5, scope: !408)
!431 = !DILocation(line: 359, column: 5, scope: !432)
!432 = !DILexicalBlockFile(scope: !429, file: !15, discriminator: 1)
!433 = !DILocation(line: 360, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !408, file: !15, line: 360, column: 5)
!435 = !DILocation(line: 360, column: 5, scope: !408)
!436 = !DILocation(line: 360, column: 5, scope: !437)
!437 = !DILexicalBlockFile(scope: !438, file: !15, discriminator: 1)
!438 = distinct !DILexicalBlock(scope: !434, file: !15, line: 360, column: 5)
!439 = !DILocation(line: 361, column: 5, scope: !408)
!440 = distinct !DISubprogram(name: "tws_a2dp_info_for_set", scope: !15, file: !15, line: 364, type: !275, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !441)
!441 = !{!442, !443}
!442 = !DILocalVariable(name: "packet", arg: 1, scope: !440, file: !15, line: 364, type: !6)
!443 = !DILocalVariable(name: "size", arg: 2, scope: !440, file: !15, line: 364, type: !25)
!444 = !DILocation(line: 364, column: 32, scope: !440)
!445 = !DILocation(line: 364, column: 44, scope: !440)
!446 = !DILocation(line: 366, column: 36, scope: !440)
!447 = !DILocation(line: 366, column: 5, scope: !440)
!448 = !DILocation(line: 368, column: 1, scope: !440)
!449 = distinct !DISubprogram(name: "tws_avctp_info_for_send", scope: !15, file: !15, line: 370, type: !245, isLocal: false, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !450)
!450 = !{!451, !452, !453}
!451 = !DILocalVariable(name: "packet", arg: 1, scope: !449, file: !15, line: 370, type: !6)
!452 = !DILocalVariable(name: "size", arg: 2, scope: !449, file: !15, line: 370, type: !25)
!453 = !DILocalVariable(name: "len", scope: !449, file: !15, line: 372, type: !25)
!454 = !DILocation(line: 370, column: 33, scope: !449)
!455 = !DILocation(line: 370, column: 45, scope: !449)
!456 = !DILocation(line: 372, column: 9, scope: !449)
!457 = !DILocation(line: 373, column: 15, scope: !449)
!458 = !DILocation(line: 374, column: 47, scope: !449)
!459 = !DILocation(line: 374, column: 52, scope: !449)
!460 = !DILocation(line: 374, column: 15, scope: !449)
!461 = !DILocation(line: 374, column: 13, scope: !449)
!462 = !DILocation(line: 375, column: 17, scope: !449)
!463 = !DILocation(line: 375, column: 5, scope: !449)
!464 = !DILocation(line: 375, column: 15, scope: !449)
!465 = !DILocation(line: 376, column: 21, scope: !449)
!466 = !DILocation(line: 376, column: 17, scope: !449)
!467 = !DILocation(line: 376, column: 5, scope: !449)
!468 = !DILocation(line: 376, column: 15, scope: !449)
!469 = !DILocation(line: 378, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !449, file: !15, line: 378, column: 5)
!471 = !DILocation(line: 378, column: 5, scope: !449)
!472 = !DILocation(line: 378, column: 5, scope: !473)
!473 = !DILexicalBlockFile(scope: !470, file: !15, discriminator: 1)
!474 = !DILocation(line: 379, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !449, file: !15, line: 379, column: 5)
!476 = !DILocation(line: 379, column: 5, scope: !449)
!477 = !DILocation(line: 379, column: 5, scope: !478)
!478 = !DILexicalBlockFile(scope: !479, file: !15, discriminator: 1)
!479 = distinct !DILexicalBlock(scope: !475, file: !15, line: 379, column: 5)
!480 = !DILocation(line: 380, column: 5, scope: !449)
!481 = distinct !DISubprogram(name: "tws_avctp_info_for_set", scope: !15, file: !15, line: 383, type: !275, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !482)
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "packet", arg: 1, scope: !481, file: !15, line: 383, type: !6)
!484 = !DILocalVariable(name: "size", arg: 2, scope: !481, file: !15, line: 383, type: !25)
!485 = !DILocation(line: 383, column: 33, scope: !481)
!486 = !DILocation(line: 383, column: 45, scope: !481)
!487 = !DILocation(line: 385, column: 37, scope: !481)
!488 = !DILocation(line: 385, column: 5, scope: !481)
!489 = !DILocation(line: 386, column: 1, scope: !481)
!490 = distinct !DISubprogram(name: "tws_sdp_info_for_send", scope: !15, file: !15, line: 388, type: !245, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !491)
!491 = !{!492, !493, !494}
!492 = !DILocalVariable(name: "packet", arg: 1, scope: !490, file: !15, line: 388, type: !6)
!493 = !DILocalVariable(name: "size", arg: 2, scope: !490, file: !15, line: 388, type: !25)
!494 = !DILocalVariable(name: "len", scope: !490, file: !15, line: 390, type: !25)
!495 = !DILocation(line: 388, column: 31, scope: !490)
!496 = !DILocation(line: 388, column: 43, scope: !490)
!497 = !DILocation(line: 390, column: 9, scope: !490)
!498 = !DILocation(line: 391, column: 15, scope: !490)
!499 = !DILocation(line: 392, column: 45, scope: !490)
!500 = !DILocation(line: 392, column: 50, scope: !490)
!501 = !DILocation(line: 392, column: 15, scope: !490)
!502 = !DILocation(line: 392, column: 13, scope: !490)
!503 = !DILocation(line: 393, column: 17, scope: !490)
!504 = !DILocation(line: 393, column: 5, scope: !490)
!505 = !DILocation(line: 393, column: 15, scope: !490)
!506 = !DILocation(line: 394, column: 21, scope: !490)
!507 = !DILocation(line: 394, column: 17, scope: !490)
!508 = !DILocation(line: 394, column: 5, scope: !490)
!509 = !DILocation(line: 394, column: 15, scope: !490)
!510 = !DILocation(line: 396, column: 5, scope: !511)
!511 = distinct !DILexicalBlock(scope: !490, file: !15, line: 396, column: 5)
!512 = !DILocation(line: 396, column: 5, scope: !490)
!513 = !DILocation(line: 396, column: 5, scope: !514)
!514 = !DILexicalBlockFile(scope: !511, file: !15, discriminator: 1)
!515 = !DILocation(line: 397, column: 5, scope: !516)
!516 = distinct !DILexicalBlock(scope: !490, file: !15, line: 397, column: 5)
!517 = !DILocation(line: 397, column: 5, scope: !490)
!518 = !DILocation(line: 397, column: 5, scope: !519)
!519 = !DILexicalBlockFile(scope: !520, file: !15, discriminator: 1)
!520 = distinct !DILexicalBlock(scope: !516, file: !15, line: 397, column: 5)
!521 = !DILocation(line: 398, column: 5, scope: !490)
!522 = distinct !DISubprogram(name: "tws_sdp_info_for_set", scope: !15, file: !15, line: 401, type: !275, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !523)
!523 = !{!524, !525}
!524 = !DILocalVariable(name: "packet", arg: 1, scope: !522, file: !15, line: 401, type: !6)
!525 = !DILocalVariable(name: "size", arg: 2, scope: !522, file: !15, line: 401, type: !25)
!526 = !DILocation(line: 401, column: 31, scope: !522)
!527 = !DILocation(line: 401, column: 43, scope: !522)
!528 = !DILocation(line: 403, column: 35, scope: !522)
!529 = !DILocation(line: 403, column: 5, scope: !522)
!530 = !DILocation(line: 404, column: 1, scope: !522)
!531 = distinct !DISubprogram(name: "tws_rfc_channel_info_for_send", scope: !15, file: !15, line: 406, type: !245, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !532)
!532 = !{!533, !534, !535}
!533 = !DILocalVariable(name: "packet", arg: 1, scope: !531, file: !15, line: 406, type: !6)
!534 = !DILocalVariable(name: "size", arg: 2, scope: !531, file: !15, line: 406, type: !25)
!535 = !DILocalVariable(name: "len", scope: !531, file: !15, line: 408, type: !25)
!536 = !DILocation(line: 406, column: 39, scope: !531)
!537 = !DILocation(line: 406, column: 51, scope: !531)
!538 = !DILocation(line: 408, column: 9, scope: !531)
!539 = !DILocation(line: 409, column: 15, scope: !531)
!540 = !DILocation(line: 410, column: 53, scope: !531)
!541 = !DILocation(line: 410, column: 58, scope: !531)
!542 = !DILocation(line: 410, column: 15, scope: !531)
!543 = !DILocation(line: 410, column: 13, scope: !531)
!544 = !DILocation(line: 411, column: 17, scope: !531)
!545 = !DILocation(line: 411, column: 5, scope: !531)
!546 = !DILocation(line: 411, column: 15, scope: !531)
!547 = !DILocation(line: 412, column: 21, scope: !531)
!548 = !DILocation(line: 412, column: 17, scope: !531)
!549 = !DILocation(line: 412, column: 5, scope: !531)
!550 = !DILocation(line: 412, column: 15, scope: !531)
!551 = !DILocation(line: 414, column: 5, scope: !552)
!552 = distinct !DILexicalBlock(scope: !531, file: !15, line: 414, column: 5)
!553 = !DILocation(line: 414, column: 5, scope: !531)
!554 = !DILocation(line: 414, column: 5, scope: !555)
!555 = !DILexicalBlockFile(scope: !552, file: !15, discriminator: 1)
!556 = !DILocation(line: 415, column: 5, scope: !557)
!557 = distinct !DILexicalBlock(scope: !531, file: !15, line: 415, column: 5)
!558 = !DILocation(line: 415, column: 5, scope: !531)
!559 = !DILocation(line: 415, column: 5, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !15, discriminator: 1)
!561 = distinct !DILexicalBlock(scope: !557, file: !15, line: 415, column: 5)
!562 = !DILocation(line: 416, column: 5, scope: !531)
!563 = distinct !DISubprogram(name: "tws_rfc_channel_info_for_set", scope: !15, file: !15, line: 419, type: !275, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !564)
!564 = !{!565, !566}
!565 = !DILocalVariable(name: "packet", arg: 1, scope: !563, file: !15, line: 419, type: !6)
!566 = !DILocalVariable(name: "size", arg: 2, scope: !563, file: !15, line: 419, type: !25)
!567 = !DILocation(line: 419, column: 39, scope: !563)
!568 = !DILocation(line: 419, column: 51, scope: !563)
!569 = !DILocation(line: 421, column: 43, scope: !563)
!570 = !DILocation(line: 421, column: 5, scope: !563)
!571 = !DILocation(line: 422, column: 1, scope: !563)
!572 = distinct !DISubprogram(name: "tws_rfc_multiplexer_info_for_send", scope: !15, file: !15, line: 424, type: !245, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !573)
!573 = !{!574, !575, !576}
!574 = !DILocalVariable(name: "packet", arg: 1, scope: !572, file: !15, line: 424, type: !6)
!575 = !DILocalVariable(name: "size", arg: 2, scope: !572, file: !15, line: 424, type: !25)
!576 = !DILocalVariable(name: "len", scope: !572, file: !15, line: 426, type: !25)
!577 = !DILocation(line: 424, column: 43, scope: !572)
!578 = !DILocation(line: 424, column: 55, scope: !572)
!579 = !DILocation(line: 426, column: 9, scope: !572)
!580 = !DILocation(line: 427, column: 15, scope: !572)
!581 = !DILocation(line: 428, column: 57, scope: !572)
!582 = !DILocation(line: 428, column: 62, scope: !572)
!583 = !DILocation(line: 428, column: 15, scope: !572)
!584 = !DILocation(line: 428, column: 13, scope: !572)
!585 = !DILocation(line: 429, column: 17, scope: !572)
!586 = !DILocation(line: 429, column: 5, scope: !572)
!587 = !DILocation(line: 429, column: 15, scope: !572)
!588 = !DILocation(line: 430, column: 21, scope: !572)
!589 = !DILocation(line: 430, column: 17, scope: !572)
!590 = !DILocation(line: 430, column: 5, scope: !572)
!591 = !DILocation(line: 430, column: 15, scope: !572)
!592 = !DILocation(line: 432, column: 5, scope: !593)
!593 = distinct !DILexicalBlock(scope: !572, file: !15, line: 432, column: 5)
!594 = !DILocation(line: 432, column: 5, scope: !572)
!595 = !DILocation(line: 432, column: 5, scope: !596)
!596 = !DILexicalBlockFile(scope: !593, file: !15, discriminator: 1)
!597 = !DILocation(line: 433, column: 5, scope: !598)
!598 = distinct !DILexicalBlock(scope: !572, file: !15, line: 433, column: 5)
!599 = !DILocation(line: 433, column: 5, scope: !572)
!600 = !DILocation(line: 433, column: 5, scope: !601)
!601 = !DILexicalBlockFile(scope: !602, file: !15, discriminator: 1)
!602 = distinct !DILexicalBlock(scope: !598, file: !15, line: 433, column: 5)
!603 = !DILocation(line: 434, column: 5, scope: !572)
!604 = distinct !DISubprogram(name: "tws_rfc_multiplexer_info_for_set", scope: !15, file: !15, line: 437, type: !275, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !605)
!605 = !{!606, !607}
!606 = !DILocalVariable(name: "packet", arg: 1, scope: !604, file: !15, line: 437, type: !6)
!607 = !DILocalVariable(name: "size", arg: 2, scope: !604, file: !15, line: 437, type: !25)
!608 = !DILocation(line: 437, column: 43, scope: !604)
!609 = !DILocation(line: 437, column: 55, scope: !604)
!610 = !DILocation(line: 439, column: 47, scope: !604)
!611 = !DILocation(line: 439, column: 5, scope: !604)
!612 = !DILocation(line: 440, column: 1, scope: !604)
!613 = distinct !DISubprogram(name: "tws_hfp_info_for_send", scope: !15, file: !15, line: 442, type: !245, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !614)
!614 = !{!615, !616, !617}
!615 = !DILocalVariable(name: "packet", arg: 1, scope: !613, file: !15, line: 442, type: !6)
!616 = !DILocalVariable(name: "size", arg: 2, scope: !613, file: !15, line: 442, type: !25)
!617 = !DILocalVariable(name: "len", scope: !613, file: !15, line: 444, type: !25)
!618 = !DILocation(line: 442, column: 31, scope: !613)
!619 = !DILocation(line: 442, column: 43, scope: !613)
!620 = !DILocation(line: 444, column: 9, scope: !613)
!621 = !DILocation(line: 445, column: 15, scope: !613)
!622 = !DILocation(line: 446, column: 45, scope: !613)
!623 = !DILocation(line: 446, column: 50, scope: !613)
!624 = !DILocation(line: 446, column: 15, scope: !613)
!625 = !DILocation(line: 446, column: 13, scope: !613)
!626 = !DILocation(line: 447, column: 17, scope: !613)
!627 = !DILocation(line: 447, column: 5, scope: !613)
!628 = !DILocation(line: 447, column: 15, scope: !613)
!629 = !DILocation(line: 448, column: 21, scope: !613)
!630 = !DILocation(line: 448, column: 17, scope: !613)
!631 = !DILocation(line: 448, column: 5, scope: !613)
!632 = !DILocation(line: 448, column: 15, scope: !613)
!633 = !DILocation(line: 450, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !613, file: !15, line: 450, column: 5)
!635 = !DILocation(line: 450, column: 5, scope: !613)
!636 = !DILocation(line: 450, column: 5, scope: !637)
!637 = !DILexicalBlockFile(scope: !634, file: !15, discriminator: 1)
!638 = !DILocation(line: 451, column: 5, scope: !639)
!639 = distinct !DILexicalBlock(scope: !613, file: !15, line: 451, column: 5)
!640 = !DILocation(line: 451, column: 5, scope: !613)
!641 = !DILocation(line: 451, column: 5, scope: !642)
!642 = !DILexicalBlockFile(scope: !643, file: !15, discriminator: 1)
!643 = distinct !DILexicalBlock(scope: !639, file: !15, line: 451, column: 5)
!644 = !DILocation(line: 452, column: 5, scope: !613)
!645 = distinct !DISubprogram(name: "tws_hfp_info_for_set", scope: !15, file: !15, line: 455, type: !275, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !646)
!646 = !{!647, !648}
!647 = !DILocalVariable(name: "packet", arg: 1, scope: !645, file: !15, line: 455, type: !6)
!648 = !DILocalVariable(name: "size", arg: 2, scope: !645, file: !15, line: 455, type: !25)
!649 = !DILocation(line: 455, column: 31, scope: !645)
!650 = !DILocation(line: 455, column: 43, scope: !645)
!651 = !DILocation(line: 457, column: 35, scope: !645)
!652 = !DILocation(line: 457, column: 5, scope: !645)
!653 = !DILocation(line: 458, column: 1, scope: !645)
!654 = distinct !DISubprogram(name: "tws_user_info_for_send", scope: !15, file: !15, line: 460, type: !245, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !655)
!655 = !{!656, !657, !658}
!656 = !DILocalVariable(name: "packet", arg: 1, scope: !654, file: !15, line: 460, type: !6)
!657 = !DILocalVariable(name: "size", arg: 2, scope: !654, file: !15, line: 460, type: !25)
!658 = !DILocalVariable(name: "len", scope: !654, file: !15, line: 462, type: !25)
!659 = !DILocation(line: 460, column: 32, scope: !654)
!660 = !DILocation(line: 460, column: 44, scope: !654)
!661 = !DILocation(line: 462, column: 9, scope: !654)
!662 = !DILocation(line: 463, column: 15, scope: !654)
!663 = !DILocation(line: 464, column: 46, scope: !654)
!664 = !DILocation(line: 464, column: 51, scope: !654)
!665 = !DILocation(line: 464, column: 15, scope: !654)
!666 = !DILocation(line: 464, column: 13, scope: !654)
!667 = !DILocation(line: 465, column: 17, scope: !654)
!668 = !DILocation(line: 465, column: 5, scope: !654)
!669 = !DILocation(line: 465, column: 15, scope: !654)
!670 = !DILocation(line: 466, column: 21, scope: !654)
!671 = !DILocation(line: 466, column: 17, scope: !654)
!672 = !DILocation(line: 466, column: 5, scope: !654)
!673 = !DILocation(line: 466, column: 15, scope: !654)
!674 = !DILocation(line: 468, column: 5, scope: !675)
!675 = distinct !DILexicalBlock(scope: !654, file: !15, line: 468, column: 5)
!676 = !DILocation(line: 468, column: 5, scope: !654)
!677 = !DILocation(line: 468, column: 5, scope: !678)
!678 = !DILexicalBlockFile(scope: !675, file: !15, discriminator: 1)
!679 = !DILocation(line: 469, column: 5, scope: !680)
!680 = distinct !DILexicalBlock(scope: !654, file: !15, line: 469, column: 5)
!681 = !DILocation(line: 469, column: 5, scope: !654)
!682 = !DILocation(line: 469, column: 5, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !15, discriminator: 1)
!684 = distinct !DILexicalBlock(scope: !680, file: !15, line: 469, column: 5)
!685 = !DILocation(line: 470, column: 5, scope: !654)
!686 = distinct !DISubprogram(name: "tws_user_info_for_set", scope: !15, file: !15, line: 473, type: !275, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !687)
!687 = !{!688, !689}
!688 = !DILocalVariable(name: "packet", arg: 1, scope: !686, file: !15, line: 473, type: !6)
!689 = !DILocalVariable(name: "size", arg: 2, scope: !686, file: !15, line: 473, type: !25)
!690 = !DILocation(line: 473, column: 32, scope: !686)
!691 = !DILocation(line: 473, column: 44, scope: !686)
!692 = !DILocation(line: 475, column: 36, scope: !686)
!693 = !DILocation(line: 475, column: 5, scope: !686)
!694 = !DILocation(line: 476, column: 1, scope: !686)
!695 = distinct !DISubprogram(name: "tws_hid_info_for_send", scope: !15, file: !15, line: 478, type: !245, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !696)
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "packet", arg: 1, scope: !695, file: !15, line: 478, type: !6)
!698 = !DILocalVariable(name: "size", arg: 2, scope: !695, file: !15, line: 478, type: !25)
!699 = !DILocalVariable(name: "len", scope: !695, file: !15, line: 480, type: !25)
!700 = !DILocation(line: 478, column: 31, scope: !695)
!701 = !DILocation(line: 478, column: 43, scope: !695)
!702 = !DILocation(line: 480, column: 9, scope: !695)
!703 = !DILocation(line: 481, column: 15, scope: !695)
!704 = !DILocation(line: 482, column: 45, scope: !695)
!705 = !DILocation(line: 482, column: 50, scope: !695)
!706 = !DILocation(line: 482, column: 15, scope: !695)
!707 = !DILocation(line: 482, column: 13, scope: !695)
!708 = !DILocation(line: 483, column: 17, scope: !695)
!709 = !DILocation(line: 483, column: 5, scope: !695)
!710 = !DILocation(line: 483, column: 15, scope: !695)
!711 = !DILocation(line: 484, column: 21, scope: !695)
!712 = !DILocation(line: 484, column: 17, scope: !695)
!713 = !DILocation(line: 484, column: 5, scope: !695)
!714 = !DILocation(line: 484, column: 15, scope: !695)
!715 = !DILocation(line: 486, column: 5, scope: !716)
!716 = distinct !DILexicalBlock(scope: !695, file: !15, line: 486, column: 5)
!717 = !DILocation(line: 486, column: 5, scope: !695)
!718 = !DILocation(line: 486, column: 5, scope: !719)
!719 = !DILexicalBlockFile(scope: !716, file: !15, discriminator: 1)
!720 = !DILocation(line: 487, column: 5, scope: !721)
!721 = distinct !DILexicalBlock(scope: !695, file: !15, line: 487, column: 5)
!722 = !DILocation(line: 487, column: 5, scope: !695)
!723 = !DILocation(line: 487, column: 5, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !15, discriminator: 1)
!725 = distinct !DILexicalBlock(scope: !721, file: !15, line: 487, column: 5)
!726 = !DILocation(line: 488, column: 5, scope: !695)
!727 = distinct !DISubprogram(name: "tws_hid_info_for_set", scope: !15, file: !15, line: 491, type: !275, isLocal: false, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !728)
!728 = !{!729, !730}
!729 = !DILocalVariable(name: "packet", arg: 1, scope: !727, file: !15, line: 491, type: !6)
!730 = !DILocalVariable(name: "size", arg: 2, scope: !727, file: !15, line: 491, type: !25)
!731 = !DILocation(line: 491, column: 31, scope: !727)
!732 = !DILocation(line: 491, column: 43, scope: !727)
!733 = !DILocation(line: 493, column: 35, scope: !727)
!734 = !DILocation(line: 493, column: 5, scope: !727)
!735 = !DILocation(line: 494, column: 1, scope: !727)
!736 = distinct !DISubprogram(name: "tws_spp_info_for_send", scope: !15, file: !15, line: 496, type: !245, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !737)
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "packet", arg: 1, scope: !736, file: !15, line: 496, type: !6)
!739 = !DILocalVariable(name: "size", arg: 2, scope: !736, file: !15, line: 496, type: !25)
!740 = !DILocalVariable(name: "len", scope: !736, file: !15, line: 498, type: !25)
!741 = !DILocation(line: 496, column: 31, scope: !736)
!742 = !DILocation(line: 496, column: 43, scope: !736)
!743 = !DILocation(line: 498, column: 9, scope: !736)
!744 = !DILocation(line: 499, column: 15, scope: !736)
!745 = !DILocation(line: 500, column: 45, scope: !736)
!746 = !DILocation(line: 500, column: 50, scope: !736)
!747 = !DILocation(line: 500, column: 15, scope: !736)
!748 = !DILocation(line: 500, column: 13, scope: !736)
!749 = !DILocation(line: 501, column: 17, scope: !736)
!750 = !DILocation(line: 501, column: 5, scope: !736)
!751 = !DILocation(line: 501, column: 15, scope: !736)
!752 = !DILocation(line: 502, column: 21, scope: !736)
!753 = !DILocation(line: 502, column: 17, scope: !736)
!754 = !DILocation(line: 502, column: 5, scope: !736)
!755 = !DILocation(line: 502, column: 15, scope: !736)
!756 = !DILocation(line: 504, column: 5, scope: !757)
!757 = distinct !DILexicalBlock(scope: !736, file: !15, line: 504, column: 5)
!758 = !DILocation(line: 504, column: 5, scope: !736)
!759 = !DILocation(line: 504, column: 5, scope: !760)
!760 = !DILexicalBlockFile(scope: !757, file: !15, discriminator: 1)
!761 = !DILocation(line: 505, column: 5, scope: !762)
!762 = distinct !DILexicalBlock(scope: !736, file: !15, line: 505, column: 5)
!763 = !DILocation(line: 505, column: 5, scope: !736)
!764 = !DILocation(line: 505, column: 5, scope: !765)
!765 = !DILexicalBlockFile(scope: !766, file: !15, discriminator: 1)
!766 = distinct !DILexicalBlock(scope: !762, file: !15, line: 505, column: 5)
!767 = !DILocation(line: 506, column: 5, scope: !736)
!768 = distinct !DISubprogram(name: "tws_spp_info_for_set", scope: !15, file: !15, line: 509, type: !275, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !769)
!769 = !{!770, !771}
!770 = !DILocalVariable(name: "packet", arg: 1, scope: !768, file: !15, line: 509, type: !6)
!771 = !DILocalVariable(name: "size", arg: 2, scope: !768, file: !15, line: 509, type: !25)
!772 = !DILocation(line: 509, column: 31, scope: !768)
!773 = !DILocation(line: 509, column: 43, scope: !768)
!774 = !DILocation(line: 511, column: 35, scope: !768)
!775 = !DILocation(line: 511, column: 5, scope: !768)
!776 = !DILocation(line: 512, column: 1, scope: !768)
!777 = distinct !DISubprogram(name: "tws_iap_info_for_send", scope: !15, file: !15, line: 514, type: !245, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !778)
!778 = !{!779, !780, !781}
!779 = !DILocalVariable(name: "packet", arg: 1, scope: !777, file: !15, line: 514, type: !6)
!780 = !DILocalVariable(name: "size", arg: 2, scope: !777, file: !15, line: 514, type: !25)
!781 = !DILocalVariable(name: "len", scope: !777, file: !15, line: 516, type: !25)
!782 = !DILocation(line: 514, column: 31, scope: !777)
!783 = !DILocation(line: 514, column: 43, scope: !777)
!784 = !DILocation(line: 516, column: 9, scope: !777)
!785 = !DILocation(line: 517, column: 15, scope: !777)
!786 = !DILocation(line: 518, column: 45, scope: !777)
!787 = !DILocation(line: 518, column: 50, scope: !777)
!788 = !DILocation(line: 518, column: 15, scope: !777)
!789 = !DILocation(line: 518, column: 13, scope: !777)
!790 = !DILocation(line: 519, column: 17, scope: !777)
!791 = !DILocation(line: 519, column: 5, scope: !777)
!792 = !DILocation(line: 519, column: 15, scope: !777)
!793 = !DILocation(line: 520, column: 21, scope: !777)
!794 = !DILocation(line: 520, column: 17, scope: !777)
!795 = !DILocation(line: 520, column: 5, scope: !777)
!796 = !DILocation(line: 520, column: 15, scope: !777)
!797 = !DILocation(line: 522, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !777, file: !15, line: 522, column: 5)
!799 = !DILocation(line: 522, column: 5, scope: !777)
!800 = !DILocation(line: 522, column: 5, scope: !801)
!801 = !DILexicalBlockFile(scope: !798, file: !15, discriminator: 1)
!802 = !DILocation(line: 523, column: 5, scope: !803)
!803 = distinct !DILexicalBlock(scope: !777, file: !15, line: 523, column: 5)
!804 = !DILocation(line: 523, column: 5, scope: !777)
!805 = !DILocation(line: 523, column: 5, scope: !806)
!806 = !DILexicalBlockFile(scope: !807, file: !15, discriminator: 1)
!807 = distinct !DILexicalBlock(scope: !803, file: !15, line: 523, column: 5)
!808 = !DILocation(line: 524, column: 5, scope: !777)
!809 = distinct !DISubprogram(name: "tws_iap_info_for_set", scope: !15, file: !15, line: 527, type: !275, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !810)
!810 = !{!811, !812}
!811 = !DILocalVariable(name: "packet", arg: 1, scope: !809, file: !15, line: 527, type: !6)
!812 = !DILocalVariable(name: "size", arg: 2, scope: !809, file: !15, line: 527, type: !25)
!813 = !DILocation(line: 527, column: 31, scope: !809)
!814 = !DILocation(line: 527, column: 43, scope: !809)
!815 = !DILocation(line: 529, column: 35, scope: !809)
!816 = !DILocation(line: 529, column: 5, scope: !809)
!817 = !DILocation(line: 530, column: 1, scope: !809)
!818 = distinct !DISubprogram(name: "app_core_data_for_send", scope: !15, file: !15, line: 532, type: !819, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!25, !6, !78}
!821 = !{!822, !823}
!822 = !DILocalVariable(name: "packet", arg: 1, scope: !818, file: !15, line: 532, type: !6)
!823 = !DILocalVariable(name: "size", arg: 2, scope: !818, file: !15, line: 532, type: !78)
!824 = !DILocation(line: 532, column: 32, scope: !818)
!825 = !DILocation(line: 532, column: 44, scope: !818)
!826 = !DILocation(line: 534, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !818, file: !15, line: 534, column: 5)
!828 = !DILocation(line: 534, column: 5, scope: !818)
!829 = !DILocation(line: 534, column: 5, scope: !830)
!830 = !DILexicalBlockFile(scope: !827, file: !15, discriminator: 1)
!831 = !DILocation(line: 535, column: 5, scope: !818)
!832 = distinct !DISubprogram(name: "app_core_data_for_set", scope: !15, file: !15, line: 539, type: !76, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !833)
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "packet", arg: 1, scope: !832, file: !15, line: 539, type: !6)
!835 = !DILocalVariable(name: "size", arg: 2, scope: !832, file: !15, line: 539, type: !78)
!836 = !DILocation(line: 539, column: 32, scope: !832)
!837 = !DILocation(line: 539, column: 44, scope: !832)
!838 = !DILocation(line: 541, column: 5, scope: !832)
!839 = distinct !DISubprogram(name: "tws_app_info_for_send", scope: !15, file: !15, line: 544, type: !245, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !840)
!840 = !{!841, !842, !843}
!841 = !DILocalVariable(name: "packet", arg: 1, scope: !839, file: !15, line: 544, type: !6)
!842 = !DILocalVariable(name: "size", arg: 2, scope: !839, file: !15, line: 544, type: !25)
!843 = !DILocalVariable(name: "len", scope: !839, file: !15, line: 546, type: !25)
!844 = !DILocation(line: 544, column: 31, scope: !839)
!845 = !DILocation(line: 544, column: 43, scope: !839)
!846 = !DILocation(line: 546, column: 9, scope: !839)
!847 = !DILocation(line: 547, column: 15, scope: !839)
!848 = !DILocation(line: 548, column: 45, scope: !839)
!849 = !DILocation(line: 548, column: 50, scope: !839)
!850 = !DILocation(line: 548, column: 15, scope: !839)
!851 = !DILocation(line: 548, column: 13, scope: !839)
!852 = !DILocation(line: 549, column: 17, scope: !839)
!853 = !DILocation(line: 549, column: 5, scope: !839)
!854 = !DILocation(line: 549, column: 15, scope: !839)
!855 = !DILocation(line: 550, column: 21, scope: !839)
!856 = !DILocation(line: 550, column: 17, scope: !839)
!857 = !DILocation(line: 550, column: 5, scope: !839)
!858 = !DILocation(line: 550, column: 15, scope: !839)
!859 = !DILocation(line: 552, column: 5, scope: !860)
!860 = distinct !DILexicalBlock(scope: !839, file: !15, line: 552, column: 5)
!861 = !DILocation(line: 552, column: 5, scope: !839)
!862 = !DILocation(line: 552, column: 5, scope: !863)
!863 = !DILexicalBlockFile(scope: !860, file: !15, discriminator: 1)
!864 = !DILocation(line: 553, column: 5, scope: !865)
!865 = distinct !DILexicalBlock(scope: !839, file: !15, line: 553, column: 5)
!866 = !DILocation(line: 553, column: 5, scope: !839)
!867 = !DILocation(line: 553, column: 5, scope: !868)
!868 = !DILexicalBlockFile(scope: !869, file: !15, discriminator: 1)
!869 = distinct !DILexicalBlock(scope: !865, file: !15, line: 553, column: 5)
!870 = !DILocation(line: 554, column: 5, scope: !839)
!871 = distinct !DISubprogram(name: "tws_app_info_for_set", scope: !15, file: !15, line: 557, type: !275, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !872)
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "packet", arg: 1, scope: !871, file: !15, line: 557, type: !6)
!874 = !DILocalVariable(name: "size", arg: 2, scope: !871, file: !15, line: 557, type: !25)
!875 = !DILocation(line: 557, column: 31, scope: !871)
!876 = !DILocation(line: 557, column: 43, scope: !871)
!877 = !DILocation(line: 559, column: 35, scope: !871)
!878 = !DILocation(line: 559, column: 5, scope: !871)
!879 = !DILocation(line: 560, column: 1, scope: !871)
!880 = distinct !DISubprogram(name: "tws_host_get_core_data", scope: !15, file: !15, line: 562, type: !245, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !881)
!881 = !{!882, !883, !884}
!882 = !DILocalVariable(name: "packet", arg: 1, scope: !880, file: !15, line: 562, type: !6)
!883 = !DILocalVariable(name: "size", arg: 2, scope: !880, file: !15, line: 562, type: !25)
!884 = !DILocalVariable(name: "len", scope: !880, file: !15, line: 564, type: !25)
!885 = !DILocation(line: 562, column: 32, scope: !880)
!886 = !DILocation(line: 562, column: 44, scope: !880)
!887 = !DILocation(line: 564, column: 9, scope: !880)
!888 = !DILocation(line: 566, column: 5, scope: !889)
!889 = distinct !DILexicalBlock(scope: !880, file: !15, line: 566, column: 5)
!890 = !DILocation(line: 566, column: 5, scope: !880)
!891 = !DILocation(line: 566, column: 5, scope: !892)
!892 = !DILexicalBlockFile(scope: !889, file: !15, discriminator: 1)
!893 = !DILocation(line: 568, column: 12, scope: !880)
!894 = !DILocation(line: 569, column: 53, scope: !880)
!895 = !DILocation(line: 569, column: 65, scope: !880)
!896 = !DILocation(line: 569, column: 12, scope: !880)
!897 = !DILocation(line: 569, column: 9, scope: !880)
!898 = !DILocation(line: 570, column: 51, scope: !880)
!899 = !DILocation(line: 570, column: 63, scope: !880)
!900 = !DILocation(line: 570, column: 12, scope: !880)
!901 = !DILocation(line: 570, column: 9, scope: !880)
!902 = !DILocation(line: 571, column: 43, scope: !880)
!903 = !DILocation(line: 571, column: 55, scope: !880)
!904 = !DILocation(line: 571, column: 12, scope: !880)
!905 = !DILocation(line: 571, column: 9, scope: !880)
!906 = !DILocation(line: 572, column: 42, scope: !880)
!907 = !DILocation(line: 572, column: 54, scope: !880)
!908 = !DILocation(line: 572, column: 12, scope: !880)
!909 = !DILocation(line: 572, column: 9, scope: !880)
!910 = !DILocation(line: 573, column: 43, scope: !880)
!911 = !DILocation(line: 573, column: 55, scope: !880)
!912 = !DILocation(line: 573, column: 12, scope: !880)
!913 = !DILocation(line: 573, column: 9, scope: !880)
!914 = !DILocation(line: 574, column: 41, scope: !880)
!915 = !DILocation(line: 574, column: 53, scope: !880)
!916 = !DILocation(line: 574, column: 12, scope: !880)
!917 = !DILocation(line: 574, column: 9, scope: !880)
!918 = !DILocation(line: 575, column: 53, scope: !880)
!919 = !DILocation(line: 575, column: 65, scope: !880)
!920 = !DILocation(line: 575, column: 12, scope: !880)
!921 = !DILocation(line: 575, column: 9, scope: !880)
!922 = !DILocation(line: 576, column: 49, scope: !880)
!923 = !DILocation(line: 576, column: 61, scope: !880)
!924 = !DILocation(line: 576, column: 12, scope: !880)
!925 = !DILocation(line: 576, column: 9, scope: !880)
!926 = !DILocation(line: 577, column: 41, scope: !880)
!927 = !DILocation(line: 577, column: 53, scope: !880)
!928 = !DILocation(line: 577, column: 12, scope: !880)
!929 = !DILocation(line: 577, column: 9, scope: !880)
!930 = !DILocation(line: 578, column: 42, scope: !880)
!931 = !DILocation(line: 578, column: 54, scope: !880)
!932 = !DILocation(line: 578, column: 12, scope: !880)
!933 = !DILocation(line: 578, column: 9, scope: !880)
!934 = !DILocation(line: 579, column: 41, scope: !880)
!935 = !DILocation(line: 579, column: 53, scope: !880)
!936 = !DILocation(line: 579, column: 12, scope: !880)
!937 = !DILocation(line: 579, column: 9, scope: !880)
!938 = !DILocation(line: 580, column: 41, scope: !880)
!939 = !DILocation(line: 580, column: 53, scope: !880)
!940 = !DILocation(line: 580, column: 12, scope: !880)
!941 = !DILocation(line: 580, column: 9, scope: !880)
!942 = !DILocation(line: 581, column: 41, scope: !880)
!943 = !DILocation(line: 581, column: 53, scope: !880)
!944 = !DILocation(line: 581, column: 12, scope: !880)
!945 = !DILocation(line: 581, column: 9, scope: !880)
!946 = !DILocation(line: 582, column: 41, scope: !880)
!947 = !DILocation(line: 582, column: 53, scope: !880)
!948 = !DILocation(line: 582, column: 12, scope: !880)
!949 = !DILocation(line: 582, column: 9, scope: !880)
!950 = !DILocation(line: 584, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !880, file: !15, line: 584, column: 5)
!952 = !DILocation(line: 584, column: 5, scope: !880)
!953 = !DILocation(line: 584, column: 5, scope: !954)
!954 = !DILexicalBlockFile(scope: !951, file: !15, discriminator: 1)
!955 = !DILocation(line: 585, column: 5, scope: !880)
!956 = distinct !DISubprogram(name: "tws_host_set_core_data", scope: !15, file: !15, line: 588, type: !245, isLocal: false, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !957)
!957 = !{!958, !959, !960, !961, !962, !963}
!958 = !DILocalVariable(name: "packet", arg: 1, scope: !956, file: !15, line: 588, type: !6)
!959 = !DILocalVariable(name: "size", arg: 2, scope: !956, file: !15, line: 588, type: !25)
!960 = !DILocalVariable(name: "deal_ptr", scope: !956, file: !15, line: 590, type: !6)
!961 = !DILocalVariable(name: "deal_len", scope: !956, file: !15, line: 591, type: !78)
!962 = !DILocalVariable(name: "info_len", scope: !956, file: !15, line: 592, type: !78)
!963 = !DILocalVariable(name: "hci_connect_complete", scope: !956, file: !15, line: 593, type: !964)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 104, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 13)
!967 = !DILocation(line: 588, column: 32, scope: !956)
!968 = !DILocation(line: 588, column: 44, scope: !956)
!969 = !DILocation(line: 590, column: 9, scope: !956)
!970 = !DILocation(line: 591, column: 9, scope: !956)
!971 = !DILocation(line: 592, column: 9, scope: !956)
!972 = !DILocation(line: 593, column: 5, scope: !956)
!973 = !DILocation(line: 593, column: 8, scope: !956)
!974 = !DILocation(line: 600, column: 21, scope: !975)
!975 = !DILexicalBlockFile(scope: !956, file: !15, discriminator: 1)
!976 = !DILocation(line: 595, column: 9, scope: !956)
!977 = !DILocation(line: 600, column: 5, scope: !975)
!978 = !DILocation(line: 602, column: 20, scope: !979)
!979 = distinct !DILexicalBlock(scope: !956, file: !15, line: 600, column: 29)
!980 = !DILocation(line: 602, column: 35, scope: !979)
!981 = !DILocation(line: 602, column: 47, scope: !979)
!982 = !DILocation(line: 602, column: 32, scope: !979)
!983 = !DILocation(line: 603, column: 18, scope: !979)
!984 = !DILocation(line: 605, column: 17, scope: !979)
!985 = !DILocation(line: 605, column: 9, scope: !979)
!986 = !DILocation(line: 607, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !979, file: !15, line: 605, column: 30)
!988 = !DILocation(line: 609, column: 13, scope: !989)
!989 = distinct !DILexicalBlock(scope: !987, file: !15, line: 609, column: 13)
!990 = !DILocation(line: 609, column: 13, scope: !987)
!991 = !DILocation(line: 609, column: 13, scope: !992)
!992 = !DILexicalBlockFile(scope: !989, file: !15, discriminator: 1)
!993 = !DILocation(line: 610, column: 13, scope: !994)
!994 = distinct !DILexicalBlock(scope: !987, file: !15, line: 610, column: 13)
!995 = !DILocation(line: 610, column: 13, scope: !987)
!996 = !DILocation(line: 610, column: 13, scope: !997)
!997 = !DILexicalBlockFile(scope: !998, file: !15, discriminator: 1)
!998 = distinct !DILexicalBlock(scope: !994, file: !15, line: 610, column: 13)
!999 = !DILocation(line: 292, column: 41, scope: !274, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 611, column: 13, scope: !987)
!1001 = !DILocation(line: 292, column: 53, scope: !274, inlinedAt: !1000)
!1002 = !DILocation(line: 294, column: 5, scope: !274, inlinedAt: !1000)
!1003 = !DILocation(line: 612, column: 13, scope: !987)
!1004 = !DILocation(line: 615, column: 13, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !987, file: !15, line: 615, column: 13)
!1006 = !DILocation(line: 615, column: 13, scope: !987)
!1007 = !DILocation(line: 615, column: 13, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1005, file: !15, discriminator: 1)
!1009 = !DILocation(line: 616, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !987, file: !15, line: 616, column: 13)
!1011 = !DILocation(line: 616, column: 13, scope: !987)
!1012 = !DILocation(line: 616, column: 13, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !15, discriminator: 1)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !15, line: 616, column: 13)
!1015 = !DILocation(line: 617, column: 47, scope: !987)
!1016 = !DILocation(line: 617, column: 70, scope: !987)
!1017 = !DILocation(line: 310, column: 43, scope: !317, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 617, column: 13, scope: !987)
!1019 = !DILocation(line: 310, column: 55, scope: !317, inlinedAt: !1018)
!1020 = !DILocation(line: 312, column: 37, scope: !317, inlinedAt: !1018)
!1021 = !DILocation(line: 312, column: 5, scope: !317, inlinedAt: !1018)
!1022 = !DILocation(line: 618, column: 13, scope: !987)
!1023 = !DILocation(line: 621, column: 13, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !987, file: !15, line: 621, column: 13)
!1025 = !DILocation(line: 621, column: 13, scope: !987)
!1026 = !DILocation(line: 621, column: 13, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1024, file: !15, discriminator: 1)
!1028 = !DILocation(line: 622, column: 13, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !987, file: !15, line: 622, column: 13)
!1030 = !DILocation(line: 622, column: 13, scope: !987)
!1031 = !DILocation(line: 622, column: 13, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !15, discriminator: 1)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !15, line: 622, column: 13)
!1034 = !DILocation(line: 623, column: 45, scope: !987)
!1035 = !DILocation(line: 623, column: 67, scope: !987)
!1036 = !DILocation(line: 328, column: 41, scope: !358, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 623, column: 13, scope: !987)
!1038 = !DILocation(line: 328, column: 53, scope: !358, inlinedAt: !1037)
!1039 = !DILocation(line: 330, column: 45, scope: !358, inlinedAt: !1037)
!1040 = !DILocation(line: 330, column: 5, scope: !358, inlinedAt: !1037)
!1041 = !DILocation(line: 624, column: 13, scope: !987)
!1042 = !DILocation(line: 627, column: 13, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !987, file: !15, line: 627, column: 13)
!1044 = !DILocation(line: 627, column: 13, scope: !987)
!1045 = !DILocation(line: 627, column: 13, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1043, file: !15, discriminator: 1)
!1047 = !DILocation(line: 628, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !987, file: !15, line: 628, column: 13)
!1049 = !DILocation(line: 628, column: 13, scope: !987)
!1050 = !DILocation(line: 628, column: 13, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1052, file: !15, discriminator: 1)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !15, line: 628, column: 13)
!1053 = !DILocation(line: 629, column: 37, scope: !987)
!1054 = !DILocation(line: 629, column: 59, scope: !987)
!1055 = !DILocation(line: 346, column: 33, scope: !399, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 629, column: 13, scope: !987)
!1057 = !DILocation(line: 346, column: 45, scope: !399, inlinedAt: !1056)
!1058 = !DILocation(line: 348, column: 37, scope: !399, inlinedAt: !1056)
!1059 = !DILocation(line: 348, column: 5, scope: !399, inlinedAt: !1056)
!1060 = !DILocation(line: 630, column: 13, scope: !987)
!1061 = !DILocation(line: 633, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !987, file: !15, line: 633, column: 13)
!1063 = !DILocation(line: 633, column: 13, scope: !987)
!1064 = !DILocation(line: 633, column: 13, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1062, file: !15, discriminator: 1)
!1066 = !DILocation(line: 634, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !987, file: !15, line: 634, column: 13)
!1068 = !DILocation(line: 634, column: 13, scope: !987)
!1069 = !DILocation(line: 634, column: 13, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !15, discriminator: 1)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !15, line: 634, column: 13)
!1072 = !DILocation(line: 635, column: 36, scope: !987)
!1073 = !DILocation(line: 635, column: 58, scope: !987)
!1074 = !DILocation(line: 364, column: 32, scope: !440, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 635, column: 13, scope: !987)
!1076 = !DILocation(line: 364, column: 44, scope: !440, inlinedAt: !1075)
!1077 = !DILocation(line: 366, column: 36, scope: !440, inlinedAt: !1075)
!1078 = !DILocation(line: 366, column: 5, scope: !440, inlinedAt: !1075)
!1079 = !DILocation(line: 636, column: 13, scope: !987)
!1080 = !DILocation(line: 639, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !987, file: !15, line: 639, column: 13)
!1082 = !DILocation(line: 639, column: 13, scope: !987)
!1083 = !DILocation(line: 639, column: 13, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1081, file: !15, discriminator: 1)
!1085 = !DILocation(line: 640, column: 13, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !987, file: !15, line: 640, column: 13)
!1087 = !DILocation(line: 640, column: 13, scope: !987)
!1088 = !DILocation(line: 640, column: 13, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1090, file: !15, discriminator: 1)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !15, line: 640, column: 13)
!1091 = !DILocation(line: 641, column: 37, scope: !987)
!1092 = !DILocation(line: 641, column: 59, scope: !987)
!1093 = !DILocation(line: 383, column: 33, scope: !481, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 641, column: 13, scope: !987)
!1095 = !DILocation(line: 383, column: 45, scope: !481, inlinedAt: !1094)
!1096 = !DILocation(line: 385, column: 37, scope: !481, inlinedAt: !1094)
!1097 = !DILocation(line: 385, column: 5, scope: !481, inlinedAt: !1094)
!1098 = !DILocation(line: 642, column: 13, scope: !987)
!1099 = !DILocation(line: 645, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !987, file: !15, line: 645, column: 13)
!1101 = !DILocation(line: 645, column: 13, scope: !987)
!1102 = !DILocation(line: 645, column: 13, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1100, file: !15, discriminator: 1)
!1104 = !DILocation(line: 646, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !987, file: !15, line: 646, column: 13)
!1106 = !DILocation(line: 646, column: 13, scope: !987)
!1107 = !DILocation(line: 646, column: 13, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1109, file: !15, discriminator: 1)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !15, line: 646, column: 13)
!1110 = !DILocation(line: 647, column: 35, scope: !987)
!1111 = !DILocation(line: 647, column: 57, scope: !987)
!1112 = !DILocation(line: 401, column: 31, scope: !522, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 647, column: 13, scope: !987)
!1114 = !DILocation(line: 401, column: 43, scope: !522, inlinedAt: !1113)
!1115 = !DILocation(line: 403, column: 35, scope: !522, inlinedAt: !1113)
!1116 = !DILocation(line: 403, column: 5, scope: !522, inlinedAt: !1113)
!1117 = !DILocation(line: 648, column: 13, scope: !987)
!1118 = !DILocation(line: 651, column: 13, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !987, file: !15, line: 651, column: 13)
!1120 = !DILocation(line: 651, column: 13, scope: !987)
!1121 = !DILocation(line: 651, column: 13, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1119, file: !15, discriminator: 1)
!1123 = !DILocation(line: 652, column: 13, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !987, file: !15, line: 652, column: 13)
!1125 = !DILocation(line: 652, column: 13, scope: !987)
!1126 = !DILocation(line: 652, column: 13, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !15, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !15, line: 652, column: 13)
!1129 = !DILocation(line: 653, column: 47, scope: !987)
!1130 = !DILocation(line: 653, column: 69, scope: !987)
!1131 = !DILocation(line: 437, column: 43, scope: !604, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 653, column: 13, scope: !987)
!1133 = !DILocation(line: 437, column: 55, scope: !604, inlinedAt: !1132)
!1134 = !DILocation(line: 439, column: 47, scope: !604, inlinedAt: !1132)
!1135 = !DILocation(line: 439, column: 5, scope: !604, inlinedAt: !1132)
!1136 = !DILocation(line: 654, column: 13, scope: !987)
!1137 = !DILocation(line: 657, column: 13, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !987, file: !15, line: 657, column: 13)
!1139 = !DILocation(line: 657, column: 13, scope: !987)
!1140 = !DILocation(line: 657, column: 13, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1138, file: !15, discriminator: 1)
!1142 = !DILocation(line: 658, column: 13, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !987, file: !15, line: 658, column: 13)
!1144 = !DILocation(line: 658, column: 13, scope: !987)
!1145 = !DILocation(line: 658, column: 13, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !15, discriminator: 1)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !15, line: 658, column: 13)
!1148 = !DILocation(line: 659, column: 43, scope: !987)
!1149 = !DILocation(line: 659, column: 65, scope: !987)
!1150 = !DILocation(line: 419, column: 39, scope: !563, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 659, column: 13, scope: !987)
!1152 = !DILocation(line: 419, column: 51, scope: !563, inlinedAt: !1151)
!1153 = !DILocation(line: 421, column: 43, scope: !563, inlinedAt: !1151)
!1154 = !DILocation(line: 421, column: 5, scope: !563, inlinedAt: !1151)
!1155 = !DILocation(line: 660, column: 13, scope: !987)
!1156 = !DILocation(line: 663, column: 13, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !987, file: !15, line: 663, column: 13)
!1158 = !DILocation(line: 663, column: 13, scope: !987)
!1159 = !DILocation(line: 663, column: 13, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1157, file: !15, discriminator: 1)
!1161 = !DILocation(line: 664, column: 13, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !987, file: !15, line: 664, column: 13)
!1163 = !DILocation(line: 664, column: 13, scope: !987)
!1164 = !DILocation(line: 664, column: 13, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !15, discriminator: 1)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !15, line: 664, column: 13)
!1167 = !DILocation(line: 665, column: 35, scope: !987)
!1168 = !DILocation(line: 665, column: 57, scope: !987)
!1169 = !DILocation(line: 455, column: 31, scope: !645, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 665, column: 13, scope: !987)
!1171 = !DILocation(line: 455, column: 43, scope: !645, inlinedAt: !1170)
!1172 = !DILocation(line: 457, column: 35, scope: !645, inlinedAt: !1170)
!1173 = !DILocation(line: 457, column: 5, scope: !645, inlinedAt: !1170)
!1174 = !DILocation(line: 666, column: 13, scope: !987)
!1175 = !DILocation(line: 669, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !987, file: !15, line: 669, column: 13)
!1177 = !DILocation(line: 669, column: 13, scope: !987)
!1178 = !DILocation(line: 669, column: 13, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1176, file: !15, discriminator: 1)
!1180 = !DILocation(line: 670, column: 13, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !987, file: !15, line: 670, column: 13)
!1182 = !DILocation(line: 670, column: 13, scope: !987)
!1183 = !DILocation(line: 670, column: 13, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !15, discriminator: 1)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !15, line: 670, column: 13)
!1186 = !DILocation(line: 671, column: 36, scope: !987)
!1187 = !DILocation(line: 671, column: 58, scope: !987)
!1188 = !DILocation(line: 473, column: 32, scope: !686, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 671, column: 13, scope: !987)
!1190 = !DILocation(line: 473, column: 44, scope: !686, inlinedAt: !1189)
!1191 = !DILocation(line: 475, column: 36, scope: !686, inlinedAt: !1189)
!1192 = !DILocation(line: 475, column: 5, scope: !686, inlinedAt: !1189)
!1193 = !DILocation(line: 672, column: 13, scope: !987)
!1194 = !DILocation(line: 675, column: 13, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !987, file: !15, line: 675, column: 13)
!1196 = !DILocation(line: 675, column: 13, scope: !987)
!1197 = !DILocation(line: 675, column: 13, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1195, file: !15, discriminator: 1)
!1199 = !DILocation(line: 676, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !987, file: !15, line: 676, column: 13)
!1201 = !DILocation(line: 676, column: 13, scope: !987)
!1202 = !DILocation(line: 676, column: 13, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !15, discriminator: 1)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !15, line: 676, column: 13)
!1205 = !DILocation(line: 677, column: 35, scope: !987)
!1206 = !DILocation(line: 677, column: 57, scope: !987)
!1207 = !DILocation(line: 557, column: 31, scope: !871, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 677, column: 13, scope: !987)
!1209 = !DILocation(line: 557, column: 43, scope: !871, inlinedAt: !1208)
!1210 = !DILocation(line: 559, column: 35, scope: !871, inlinedAt: !1208)
!1211 = !DILocation(line: 559, column: 5, scope: !871, inlinedAt: !1208)
!1212 = !DILocation(line: 678, column: 13, scope: !987)
!1213 = !DILocation(line: 681, column: 13, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !987, file: !15, line: 681, column: 13)
!1215 = !DILocation(line: 681, column: 13, scope: !987)
!1216 = !DILocation(line: 681, column: 13, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1214, file: !15, discriminator: 1)
!1218 = !DILocation(line: 682, column: 13, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !987, file: !15, line: 682, column: 13)
!1220 = !DILocation(line: 682, column: 13, scope: !987)
!1221 = !DILocation(line: 682, column: 13, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !15, discriminator: 1)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !15, line: 682, column: 13)
!1224 = !DILocation(line: 683, column: 35, scope: !987)
!1225 = !DILocation(line: 683, column: 57, scope: !987)
!1226 = !DILocation(line: 491, column: 31, scope: !727, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 683, column: 13, scope: !987)
!1228 = !DILocation(line: 491, column: 43, scope: !727, inlinedAt: !1227)
!1229 = !DILocation(line: 493, column: 35, scope: !727, inlinedAt: !1227)
!1230 = !DILocation(line: 493, column: 5, scope: !727, inlinedAt: !1227)
!1231 = !DILocation(line: 684, column: 13, scope: !987)
!1232 = !DILocation(line: 687, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !987, file: !15, line: 687, column: 13)
!1234 = !DILocation(line: 687, column: 13, scope: !987)
!1235 = !DILocation(line: 687, column: 13, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1233, file: !15, discriminator: 1)
!1237 = !DILocation(line: 688, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !987, file: !15, line: 688, column: 13)
!1239 = !DILocation(line: 688, column: 13, scope: !987)
!1240 = !DILocation(line: 688, column: 13, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1242, file: !15, discriminator: 1)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !15, line: 688, column: 13)
!1243 = !DILocation(line: 689, column: 35, scope: !987)
!1244 = !DILocation(line: 689, column: 57, scope: !987)
!1245 = !DILocation(line: 509, column: 31, scope: !768, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 689, column: 13, scope: !987)
!1247 = !DILocation(line: 509, column: 43, scope: !768, inlinedAt: !1246)
!1248 = !DILocation(line: 511, column: 35, scope: !768, inlinedAt: !1246)
!1249 = !DILocation(line: 511, column: 5, scope: !768, inlinedAt: !1246)
!1250 = !DILocation(line: 690, column: 13, scope: !987)
!1251 = !DILocation(line: 692, column: 13, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !987, file: !15, line: 692, column: 13)
!1253 = !DILocation(line: 692, column: 13, scope: !987)
!1254 = !DILocation(line: 692, column: 13, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1252, file: !15, discriminator: 1)
!1256 = !DILocation(line: 693, column: 13, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !987, file: !15, line: 693, column: 13)
!1258 = !DILocation(line: 693, column: 13, scope: !987)
!1259 = !DILocation(line: 693, column: 13, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !15, discriminator: 1)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !15, line: 693, column: 13)
!1262 = !DILocation(line: 694, column: 35, scope: !987)
!1263 = !DILocation(line: 694, column: 57, scope: !987)
!1264 = !DILocation(line: 527, column: 31, scope: !809, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 694, column: 13, scope: !987)
!1266 = !DILocation(line: 527, column: 43, scope: !809, inlinedAt: !1265)
!1267 = !DILocation(line: 529, column: 35, scope: !809, inlinedAt: !1265)
!1268 = !DILocation(line: 529, column: 5, scope: !809, inlinedAt: !1265)
!1269 = !DILocation(line: 695, column: 13, scope: !987)
!1270 = !DILocation(line: 698, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !987, file: !15, line: 698, column: 13)
!1272 = !DILocation(line: 698, column: 13, scope: !987)
!1273 = !DILocation(line: 698, column: 13, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1271, file: !15, discriminator: 1)
!1275 = !DILocation(line: 701, column: 18, scope: !979)
!1276 = !DILocation(line: 600, column: 12, scope: !975)
!1277 = distinct !{!1277, !1278, !1279}
!1278 = !DILocation(line: 600, column: 5, scope: !956)
!1279 = !DILocation(line: 702, column: 5, scope: !956)
!1280 = !DILocation(line: 705, column: 1, scope: !956)
