; ModuleID = 'hid.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hid.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.hid_handl = type { %struct.hid_core_data_t, %struct.run_loop }
%struct.hid_core_data_t = type { [1 x %struct.hid_conn], %struct.hid_keyboard_cmd, %struct._HID_AC_CMD }
%struct.hid_conn = type { [10 x i8], [6 x i8], i8, i8, i8, i16, i16, i16 }
%struct.hid_keyboard_cmd = type { i8, i8, i16, i16 }
%struct._HID_AC_CMD = type <{ i8, i32 }>
%struct.run_loop = type { %struct.btstack_linked_item, void (%struct.run_loop*)*, i8* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.hid_mouse_cmd = type { i8, i8, i8, i8, i8 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@bt_suspend_hid_resumehid_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @hid_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @hid_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @hid_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !23
@hid = internal unnamed_addr global %struct.hid_handl* null, section ".bt_stack_data", align 4, !dbg !41
@hid_run_loop_buy = internal unnamed_addr global i1 false, section ".bt_stack_data", align 1
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@diy_data_len = internal unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !123
@diy_data_buf = internal global [30 x i8] zeroinitializer, section ".bt_stack_bss", align 1, !dbg !36
@hid_msg_callback = internal unnamed_addr global void (i32, i8*, i32)* null, section ".bt_stack_data", align 4, !dbg !125
@hid_interrupt_callback = internal unnamed_addr global void (i8*, i32, i16)* null, section ".bt_stack_data", align 4, !dbg !130
@.str.5 = private unnamed_addr constant [40 x i8] c"<BT-log> :hid ctrl CONNECTION open %x\0A\0A\00", align 1
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"<BT-log> :INTERRUPT_TYPE income  1111  %x\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"<BT-log> :INTERRUPT_TYPE income  2222  %x\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"<BT-log> :hid_channel_open %d,%x,%x\0A\0A\00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.12 = private unnamed_addr constant [112 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hid.c\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"ASSERT-FAILD: conn != NULL \00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"<BT-log> :get other refuse----accept pending channel  %x\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"<BT-log> :refuse pending channel  %x\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"<BT-log> :hid int CONNECTION open %x\0A\0A\00", align 1
@ios_key_down = internal constant %struct.hid_mouse_cmd { i8 -95, i8 3, i8 0, i8 2, i8 0 }, section ".bt_stack_const", align 1, !dbg !111
@ios_key_up = internal constant %struct.hid_mouse_cmd { i8 -95, i8 3, i8 0, i8 0, i8 0 }, section ".bt_stack_const", align 1, !dbg !121
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_hid_resumehid_release to i8*)], section "llvm.metadata"
@str = private unnamed_addr constant [31 x i8] c"<BT-log> :hid cmd_buf busy!!!\0A\00"
@str.20 = private unnamed_addr constant [31 x i8] c"<BT-log> :over hid cmd_buf!!!\0A\00"
@str.21 = private unnamed_addr constant [32 x i8] c"<BT-log> :hid data_buf busy!!!\0A\00"
@str.22 = private unnamed_addr constant [32 x i8] c"<BT-log> :over hid data_buf!!!\0A\00"
@str.23 = private unnamed_addr constant [38 x i8] c"<BT-log> :hid ctrl CONNECTION close \0A\00"
@str.24 = private unnamed_addr constant [41 x i8] c"<BT-log> :hid ctrl INCOMING_CONNECTION \0A\00"
@str.25 = private unnamed_addr constant [26 x i8] c"[pro-info] :get hid data\0A\00"
@str.26 = private unnamed_addr constant [37 x i8] c"<BT-log> :hid int CONNECTION close \0A\00"
@str.27 = private unnamed_addr constant [42 x i8] c"<BT-log> :hid inter INCOMING_CONNECTION \0A\00"
@str.28 = private unnamed_addr constant [27 x i8] c"[pro-info] :hid_send_succ\0A\00"

; Function Attrs: alwaysinline nounwind optsize
define hidden void @hid_init(%struct.hid_handl*, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !139 {
  call void @llvm.dbg.value(metadata %struct.hid_handl* %0, metadata !145, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i8* %1, metadata !146, metadata !DIExpression()), !dbg !148
  store %struct.hid_handl* %0, %struct.hid_handl** @hid, align 4, !dbg !149, !tbaa !150
  %3 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !154
  tail call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 52, i32 4, i1 false), !dbg !154
  store i1 false, i1* @hid_run_loop_buy, align 4
  tail call void @l2cap_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__hid_ctrl_packet_handler, i16 zeroext 17, i16 zeroext -1) #11, !dbg !155
  tail call void @l2cap_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__hid_interrupt_packet_handler, i16 zeroext 19, i16 zeroext -1) #11, !dbg !156
  %4 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !157, !tbaa !150
  %5 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %4, i32 0, i32 1, !dbg !158
  tail call void @stack_run_loop_register(%struct.run_loop* %5, void (%struct.run_loop*)* nonnull @__hid_run_loop, i8* %1) #11, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: optsize
declare void @l2cap_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @__hid_ctrl_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #4 section ".bt_stack_code" !dbg !161 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i16 %1, metadata !166, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i8* %2, metadata !167, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i16 %3, metadata !168, metadata !DIExpression()), !dbg !172
  switch i8 %0, label %81 [
    i8 4, label %5
    i8 6, label %8
  ], !dbg !173

; <label>:5:                                      ; preds = %4
  %6 = load i8, i8* %2, align 1, !dbg !174, !tbaa !176
  switch i8 %6, label %81 [
    i8 116, label %7
    i8 114, label %58
    i8 112, label %64
    i8 121, label %79
    i8 113, label %73
  ], !dbg !177

; <label>:7:                                      ; preds = %5
  tail call fastcc void @hid_ctrl_try_send(i16 zeroext %1) #12, !dbg !178
  br label %81, !dbg !180

; <label>:8:                                      ; preds = %4
  %9 = load void (i8*, i32, i16)*, void (i8*, i32, i16)** @hid_interrupt_callback, align 4, !dbg !181, !tbaa !150
  %10 = icmp eq void (i8*, i32, i16)* %9, null, !dbg !181
  br i1 %10, label %13, label %11, !dbg !191

; <label>:11:                                     ; preds = %8
  %12 = zext i16 %3 to i32, !dbg !192
  tail call void %9(i8* %2, i32 %12, i16 zeroext %1) #11, !dbg !194
  br label %13, !dbg !195

; <label>:13:                                     ; preds = %11, %8
  call void @llvm.dbg.value(metadata i32 0, metadata !196, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i16 %1, metadata !210, metadata !DIExpression()), !dbg !216
  %14 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !218
  %15 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %14, i32 0, i32 0, i32 0, i32 0, !dbg !218
  %16 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %14, i32 0, i32 0, i32 0, i32 1
  br label %17, !dbg !220

; <label>:17:                                     ; preds = %27, %13
  %18 = phi %struct.hid_conn* [ %15, %13 ], [ %28, %27 ]
  %19 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %18, i32 0, i32 5, !dbg !222
  %20 = load i16, i16* %19, align 2, !dbg !222, !tbaa !226
  %21 = icmp eq i16 %20, %1, !dbg !229
  br i1 %21, label %22, label %27, !dbg !230

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %18, i32 0, i32 4, !dbg !231
  %24 = load i8, i8* %23, align 2, !dbg !231
  %25 = and i8 %24, 1, !dbg !231
  %26 = icmp eq i8 %25, 0, !dbg !233
  br i1 %26, label %27, label %30, !dbg !234

; <label>:27:                                     ; preds = %22, %17
  %28 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %18, i32 1, !dbg !236
  call void @llvm.dbg.value(metadata %struct.hid_conn* %28, metadata !215, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata %struct.hid_conn* %28, metadata !215, metadata !DIExpression()), !dbg !238
  %29 = icmp ult %struct.hid_conn* %28, %16, !dbg !239
  br i1 %29, label %17, label %80, !dbg !220, !llvm.loop !241

; <label>:30:                                     ; preds = %22
  call void @llvm.dbg.value(metadata %struct.hid_conn* %18, metadata !205, metadata !DIExpression()), !dbg !244
  %31 = load i8, i8* %2, align 1, !dbg !245, !tbaa !176
  %32 = zext i8 %31 to i32, !dbg !245
  %33 = and i32 %32, 240, !dbg !246
  %34 = add nsw i32 %33, -16, !dbg !247
  %35 = lshr exact i32 %34, 4, !dbg !247
  %36 = trunc i32 %35 to i28, !dbg !247
  switch i28 %36, label %54 [
    i28 7, label %37
    i28 8, label %37
    i28 5, label %37
    i28 6, label %37
    i28 0, label %41
    i28 9, label %48
    i28 10, label %48
  ], !dbg !247

; <label>:37:                                     ; preds = %30, %30, %30, %30
  %38 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %18, i32 0, i32 0, i32 0, !dbg !248
  store i8 0, i8* %38, align 2, !dbg !250, !tbaa !176
  %39 = and i8 %24, 31, !dbg !251
  %40 = or i8 %39, 32, !dbg !251
  store i8 %40, i8* %23, align 2, !dbg !251
  tail call fastcc void @hid_ctrl_try_send(i16 zeroext %1) #11, !dbg !252
  br label %81, !dbg !253

; <label>:41:                                     ; preds = %30
  %42 = and i32 %32, 15, !dbg !254
  %43 = icmp eq i32 %42, 5, !dbg !256
  br i1 %43, label %44, label %81, !dbg !257

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %18, i32 0, i32 0, i32 0, !dbg !258
  store i8 21, i8* %45, align 2, !dbg !260, !tbaa !176
  %46 = and i8 %24, 31, !dbg !261
  %47 = or i8 %46, 32, !dbg !261
  store i8 %47, i8* %23, align 2, !dbg !261
  tail call fastcc void @hid_ctrl_try_send(i16 zeroext %1) #11, !dbg !262
  br label %81, !dbg !263

; <label>:48:                                     ; preds = %30, %30
  %49 = load i8, i8* @profile_debug_enable, align 1, !dbg !264, !tbaa !176
  %50 = and i8 %49, 1, !dbg !264
  %51 = icmp eq i8 %50, 0, !dbg !264
  br i1 %51, label %81, label %52, !dbg !266

; <label>:52:                                     ; preds = %48
  %53 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.25, i32 0, i32 0)) #10, !dbg !267
  br label %81, !dbg !267

; <label>:54:                                     ; preds = %30
  %55 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %18, i32 0, i32 0, i32 0, !dbg !269
  store i8 3, i8* %55, align 2, !dbg !270, !tbaa !176
  %56 = and i8 %24, 31, !dbg !271
  %57 = or i8 %56, 32, !dbg !271
  store i8 %57, i8* %23, align 2, !dbg !271
  tail call fastcc void @hid_ctrl_try_send(i16 zeroext %1) #11, !dbg !272
  br label %81, !dbg !273

; <label>:58:                                     ; preds = %5
  %59 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !274, !tbaa !176
  %60 = icmp slt i8 %59, 0, !dbg !274
  br i1 %60, label %61, label %63, !dbg !277

; <label>:61:                                     ; preds = %58
  %62 = tail call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @str.24, i32 0, i32 0)) #10, !dbg !278
  br label %63, !dbg !278

; <label>:63:                                     ; preds = %61, %58
  tail call fastcc void @hid_incoming_connection(i16 zeroext %1, i8* nonnull %2, i8 zeroext 1) #11, !dbg !280
  br label %81, !dbg !281

; <label>:64:                                     ; preds = %5
  %65 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !282, !tbaa !176
  %66 = icmp slt i8 %65, 0, !dbg !282
  br i1 %66, label %67, label %72, !dbg !284

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !285
  %69 = load i8, i8* %68, align 1, !dbg !285, !tbaa !176
  %70 = zext i8 %69 to i32, !dbg !285
  %71 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i32 %70) #11, !dbg !285
  br label %72, !dbg !285

; <label>:72:                                     ; preds = %67, %64
  tail call fastcc void @hid_connection_open(i16 zeroext %1, i8* nonnull %2, i8 zeroext 1) #11, !dbg !287
  br label %81, !dbg !288

; <label>:73:                                     ; preds = %5
  %74 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !289, !tbaa !176
  %75 = icmp slt i8 %74, 0, !dbg !289
  br i1 %75, label %76, label %78, !dbg !291

; <label>:76:                                     ; preds = %73
  %77 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.23, i32 0, i32 0)) #10, !dbg !292
  br label %78, !dbg !292

; <label>:78:                                     ; preds = %76, %73
  tail call fastcc void @hid_connection_close(i16 zeroext %1, i8 zeroext 1) #11, !dbg !294
  br label %81, !dbg !295

; <label>:79:                                     ; preds = %5
  tail call fastcc void @hid_monitor_connection_open(i16 zeroext %1, i8* nonnull %2, i8 zeroext 1) #11, !dbg !296
  br label %81, !dbg !297

; <label>:80:                                     ; preds = %27
  br label %81, !dbg !298

; <label>:81:                                     ; preds = %80, %79, %78, %72, %63, %54, %52, %48, %44, %41, %37, %7, %5, %4
  ret void, !dbg !298
}

; Function Attrs: nounwind optsize
define internal void @__hid_interrupt_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #4 section ".bt_stack_code" !dbg !300 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !302, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i16 %1, metadata !303, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i8* %2, metadata !304, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i16 %3, metadata !305, metadata !DIExpression()), !dbg !309
  switch i8 %0, label %34 [
    i8 4, label %5
    i8 6, label %7
  ], !dbg !310

; <label>:5:                                      ; preds = %4
  %6 = load i8, i8* %2, align 1, !dbg !311, !tbaa !176
  switch i8 %6, label %34 [
    i8 113, label %27
    i8 114, label %12
    i8 112, label %18
    i8 121, label %33
  ], !dbg !313

; <label>:7:                                      ; preds = %4
  %8 = load void (i8*, i32, i16)*, void (i8*, i32, i16)** @hid_interrupt_callback, align 4, !dbg !314, !tbaa !150
  %9 = icmp eq void (i8*, i32, i16)* %8, null, !dbg !314
  br i1 %9, label %34, label %10, !dbg !324

; <label>:10:                                     ; preds = %7
  %11 = zext i16 %3 to i32, !dbg !325
  tail call void %8(i8* %2, i32 %11, i16 zeroext %1) #11, !dbg !327
  br label %34, !dbg !328

; <label>:12:                                     ; preds = %5
  %13 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !329, !tbaa !176
  %14 = icmp slt i8 %13, 0, !dbg !329
  br i1 %14, label %15, label %17, !dbg !332

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.27, i32 0, i32 0)) #10, !dbg !333
  br label %17, !dbg !333

; <label>:17:                                     ; preds = %15, %12
  tail call fastcc void @hid_incoming_connection(i16 zeroext %1, i8* nonnull %2, i8 zeroext 2) #11, !dbg !335
  br label %34, !dbg !336

; <label>:18:                                     ; preds = %5
  %19 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !337, !tbaa !176
  %20 = icmp slt i8 %19, 0, !dbg !337
  br i1 %20, label %21, label %26, !dbg !339

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !340
  %23 = load i8, i8* %22, align 1, !dbg !340, !tbaa !176
  %24 = zext i8 %23 to i32, !dbg !340
  %25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i32 %24) #11, !dbg !340
  br label %26, !dbg !340

; <label>:26:                                     ; preds = %21, %18
  tail call fastcc void @hid_connection_open(i16 zeroext %1, i8* nonnull %2, i8 zeroext 2) #11, !dbg !342
  br label %34, !dbg !343

; <label>:27:                                     ; preds = %5
  %28 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !344, !tbaa !176
  %29 = icmp slt i8 %28, 0, !dbg !344
  br i1 %29, label %30, label %32, !dbg !346

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str.26, i32 0, i32 0)) #10, !dbg !347
  br label %32, !dbg !347

; <label>:32:                                     ; preds = %30, %27
  tail call fastcc void @hid_connection_close(i16 zeroext %1, i8 zeroext 2) #11, !dbg !349
  br label %34, !dbg !350

; <label>:33:                                     ; preds = %5
  tail call fastcc void @hid_monitor_connection_open(i16 zeroext %1, i8* nonnull %2, i8 zeroext 2) #11, !dbg !351
  br label %34, !dbg !352

; <label>:34:                                     ; preds = %33, %32, %26, %17, %10, %7, %5, %4
  ret void, !dbg !353
}

; Function Attrs: optsize
declare void @stack_run_loop_register(%struct.run_loop*, void (%struct.run_loop*)*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @__hid_run_loop(%struct.run_loop* nocapture readnone) #4 section ".bt_stack_code" !dbg !355 {
  call void @llvm.dbg.value(metadata %struct.run_loop* %0, metadata !357, metadata !DIExpression()), !dbg !359
  %2 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !360, !tbaa !150
  %3 = icmp eq %struct.hid_handl* %2, null, !dbg !362
  br i1 %3, label %111, label %4, !dbg !363

; <label>:4:                                      ; preds = %1
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #11, !dbg !364
  store i1 true, i1* @hid_run_loop_buy, align 4
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #11, !dbg !365
  %5 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !366, !tbaa !150
  call void @llvm.dbg.value(metadata %struct.hid_conn* %6, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.hid_conn* %6, metadata !358, metadata !DIExpression()), !dbg !368
  %6 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %5, i32 0, i32 0, i32 0, i32 0, !dbg !366
  br label %7, !dbg !369

; <label>:7:                                      ; preds = %105, %4
  %8 = phi %struct.hid_handl* [ %106, %105 ], [ %5, %4 ]
  %9 = phi %struct.hid_conn* [ %107, %105 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 0, i32 6, !dbg !369
  %11 = load i16, i16* %10, align 2, !dbg !369, !tbaa !373
  %12 = icmp eq i16 %11, 0, !dbg !374
  br i1 %12, label %105, label %13, !dbg !375

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 0, i32 4, !dbg !376
  %15 = load i8, i8* %14, align 2, !dbg !376
  %16 = and i8 %15, 1, !dbg !376
  %17 = icmp eq i8 %16, 0, !dbg !378
  br i1 %17, label %105, label %18, !dbg !379

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata %struct.hid_conn* null, metadata !381, metadata !DIExpression()), !dbg !389
  %19 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %8, i32 0, i32 0, i32 0, i32 0, !dbg !391
  br label %20, !dbg !393

; <label>:20:                                     ; preds = %99, %18
  %21 = phi %struct.hid_handl* [ %101, %99 ], [ %8, %18 ], !dbg !397
  %22 = phi %struct.hid_conn* [ %100, %99 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %22, i32 0, i32 6, !dbg !393
  %24 = load i16, i16* %23, align 2, !dbg !393, !tbaa !373
  %25 = icmp eq i16 %24, 0, !dbg !406
  br i1 %25, label %99, label %26, !dbg !407

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %22, i32 0, i32 4, !dbg !408
  %28 = load i8, i8* %27, align 2, !dbg !408
  %29 = and i8 %28, 1, !dbg !408
  %30 = icmp eq i8 %29, 0, !dbg !410
  br i1 %30, label %99, label %31, !dbg !411

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %22, i32 0, i32 2, !dbg !413
  %33 = load i8, i8* %32, align 2, !dbg !413, !tbaa !414
  switch i8 %33, label %76 [
    i8 1, label %34
    i8 4, label %39
    i8 7, label %44
    i8 10, label %49
    i8 16, label %54
    i8 19, label %59
    i8 2, label %64
    i8 5, label %64
    i8 8, label %64
    i8 11, label %64
    i8 17, label %64
    i8 20, label %64
    i8 65, label %69
    i8 66, label %72
    i8 -127, label %77
    i8 -126, label %75
  ], !dbg !415

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 40, metadata !403, metadata !DIExpression()), !dbg !416
  %35 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 0, !dbg !418
  store i8 -95, i8* %35, align 2, !dbg !419, !tbaa !420
  %36 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 1, !dbg !428
  store i8 2, i8* %36, align 1, !dbg !429, !tbaa !430
  %37 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 2, !dbg !431
  store i16 40, i16* %37, align 2, !dbg !432, !tbaa !433
  %38 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 3, !dbg !434
  store i16 0, i16* %38, align 2, !dbg !435, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %35, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 6, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !439

; <label>:39:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 41, metadata !403, metadata !DIExpression()), !dbg !440
  %40 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 0, !dbg !442
  store i8 -95, i8* %40, align 2, !dbg !443, !tbaa !420
  %41 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 1, !dbg !444
  store i8 2, i8* %41, align 1, !dbg !445, !tbaa !430
  %42 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 2, !dbg !446
  store i16 41, i16* %42, align 2, !dbg !447, !tbaa !433
  %43 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 3, !dbg !448
  store i16 0, i16* %43, align 2, !dbg !449, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %40, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 6, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !450

; <label>:44:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 80, metadata !403, metadata !DIExpression()), !dbg !451
  %45 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 0, !dbg !453
  store i8 -95, i8* %45, align 2, !dbg !454, !tbaa !420
  %46 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 1, !dbg !455
  store i8 2, i8* %46, align 1, !dbg !456, !tbaa !430
  %47 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 2, !dbg !457
  store i16 80, i16* %47, align 2, !dbg !458, !tbaa !433
  %48 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 3, !dbg !459
  store i16 0, i16* %48, align 2, !dbg !460, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %45, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 6, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !461

; <label>:49:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 79, metadata !403, metadata !DIExpression()), !dbg !462
  %50 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 0, !dbg !464
  store i8 -95, i8* %50, align 2, !dbg !465, !tbaa !420
  %51 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 1, !dbg !466
  store i8 2, i8* %51, align 1, !dbg !467, !tbaa !430
  %52 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 2, !dbg !468
  store i16 79, i16* %52, align 2, !dbg !469, !tbaa !433
  %53 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 3, !dbg !470
  store i16 0, i16* %53, align 2, !dbg !471, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %50, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 6, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !472

; <label>:54:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 233, metadata !403, metadata !DIExpression()), !dbg !473
  %55 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 0, !dbg !475
  store i8 -95, i8* %55, align 2, !dbg !476, !tbaa !420
  %56 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 1, !dbg !477
  store i8 2, i8* %56, align 1, !dbg !478, !tbaa !430
  %57 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 2, !dbg !479
  store i16 233, i16* %57, align 2, !dbg !480, !tbaa !433
  %58 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 3, !dbg !481
  store i16 0, i16* %58, align 2, !dbg !482, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %55, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 6, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !483

; <label>:59:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 234, metadata !403, metadata !DIExpression()), !dbg !484
  %60 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 0, !dbg !486
  store i8 -95, i8* %60, align 2, !dbg !487, !tbaa !420
  %61 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 1, !dbg !488
  store i8 2, i8* %61, align 1, !dbg !489, !tbaa !430
  %62 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 2, !dbg !490
  store i16 234, i16* %62, align 2, !dbg !491, !tbaa !433
  %63 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 3, !dbg !492
  store i16 0, i16* %63, align 2, !dbg !493, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %60, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 6, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !494

; <label>:64:                                     ; preds = %31, %31, %31, %31, %31, %31
  call void @llvm.dbg.value(metadata i16 0, metadata !403, metadata !DIExpression()), !dbg !495
  %65 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 0, !dbg !496
  store i8 -95, i8* %65, align 2, !dbg !497, !tbaa !420
  %66 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 1, !dbg !498
  store i8 2, i8* %66, align 1, !dbg !499, !tbaa !430
  %67 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 2, !dbg !500
  store i16 0, i16* %67, align 2, !dbg !501, !tbaa !433
  %68 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 1, i32 3, !dbg !502
  store i16 0, i16* %68, align 2, !dbg !503, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %65, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 6, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !504

; <label>:69:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 1, metadata !505, metadata !DIExpression()), !dbg !511
  %70 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 2, i32 0, !dbg !513
  store i8 -95, i8* %70, align 4, !dbg !514, !tbaa !515
  %71 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 2, i32 1, !dbg !516
  store i32 259, i32* %71, align 1, !dbg !517
  call void @llvm.dbg.value(metadata i8* %70, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 5, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !518

; <label>:72:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i16 0, metadata !505, metadata !DIExpression()), !dbg !519
  %73 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 2, i32 0, !dbg !521
  store i8 -95, i8* %73, align 4, !dbg !522, !tbaa !515
  %74 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %21, i32 0, i32 0, i32 2, i32 1, !dbg !523
  store i32 3, i32* %74, align 1, !dbg !524
  call void @llvm.dbg.value(metadata i8* %73, metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 5, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !525

; <label>:75:                                     ; preds = %31
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds (%struct.hid_mouse_cmd, %struct.hid_mouse_cmd* @ios_key_up, i32 0, i32 0), metadata !387, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 5, metadata !388, metadata !DIExpression()), !dbg !438
  br label %77, !dbg !526

; <label>:76:                                     ; preds = %31
  store i8 0, i8* %32, align 2, !dbg !527, !tbaa !414
  tail call fastcc void @hid_inter_try_send(i16 zeroext %24) #11, !dbg !528
  br label %99, !dbg !529

; <label>:77:                                     ; preds = %75, %72, %69, %64, %59, %54, %49, %44, %39, %34, %31
  %78 = phi i8* [ getelementptr inbounds (%struct.hid_mouse_cmd, %struct.hid_mouse_cmd* @ios_key_up, i32 0, i32 0), %75 ], [ %73, %72 ], [ %70, %69 ], [ %65, %64 ], [ %60, %59 ], [ %55, %54 ], [ %50, %49 ], [ %45, %44 ], [ %40, %39 ], [ %35, %34 ], [ getelementptr inbounds (%struct.hid_mouse_cmd, %struct.hid_mouse_cmd* @ios_key_down, i32 0, i32 0), %31 ]
  %79 = phi i16 [ 5, %75 ], [ 5, %72 ], [ 5, %69 ], [ 6, %64 ], [ 6, %59 ], [ 6, %54 ], [ 6, %49 ], [ 6, %44 ], [ 6, %39 ], [ 6, %34 ], [ 5, %31 ]
  call void @llvm.dbg.value(metadata i8* %78, metadata !387, metadata !DIExpression()), !dbg !437
  %80 = load i16, i16* %23, align 2, !dbg !530, !tbaa !373
  %81 = tail call i32 @l2cap_send_internal(i16 zeroext %80, i8* %78, i16 zeroext %79, i8 zeroext 0) #11, !dbg !531
  call void @llvm.dbg.value(metadata i32 %81, metadata !386, metadata !DIExpression()), !dbg !532
  %82 = icmp eq i32 %81, 0, !dbg !533
  br i1 %82, label %83, label %99, !dbg !535

; <label>:83:                                     ; preds = %77
  %84 = load i8, i8* @profile_debug_enable, align 1, !dbg !536, !tbaa !176
  %85 = and i8 %84, 1, !dbg !536
  %86 = icmp eq i8 %85, 0, !dbg !536
  br i1 %86, label %89, label %87, !dbg !539

; <label>:87:                                     ; preds = %83
  %88 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.28, i32 0, i32 0)) #10, !dbg !540
  br label %89, !dbg !540

; <label>:89:                                     ; preds = %87, %83
  %90 = load i8, i8* %32, align 2, !dbg !542, !tbaa !414
  %91 = add i8 %90, 1, !dbg !542
  store i8 %91, i8* %32, align 2, !dbg !542, !tbaa !414
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #11, !dbg !543
  %92 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %22, i32 0, i32 3, !dbg !544
  %93 = load i8, i8* %92, align 1, !dbg !544, !tbaa !546
  %94 = icmp eq i8 %93, 85, !dbg !547
  br i1 %94, label %95, label %99, !dbg !548

; <label>:95:                                     ; preds = %89
  %96 = load i8, i8* %32, align 2, !dbg !549, !tbaa !414
  %97 = icmp eq i8 %96, 3, !dbg !551
  br i1 %97, label %98, label %99, !dbg !552

; <label>:98:                                     ; preds = %95
  store i8 0, i8* %92, align 1, !dbg !554, !tbaa !546
  store i8 -127, i8* %32, align 2, !dbg !556, !tbaa !414
  br label %99, !dbg !557

; <label>:99:                                     ; preds = %98, %95, %89, %77, %76, %26, %20
  %100 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %22, i32 1, !dbg !558
  call void @llvm.dbg.value(metadata %struct.hid_conn* %100, metadata !381, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata %struct.hid_conn* %100, metadata !381, metadata !DIExpression()), !dbg !389
  %101 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !560, !tbaa !150
  %102 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %101, i32 0, i32 0, i32 0, i32 1, !dbg !560
  %103 = icmp ult %struct.hid_conn* %100, %102, !dbg !560
  br i1 %103, label %20, label %104, !dbg !562, !llvm.loop !564

; <label>:104:                                    ; preds = %99
  br label %105, !dbg !567

; <label>:105:                                    ; preds = %104, %13, %7
  %106 = phi %struct.hid_handl* [ %8, %7 ], [ %8, %13 ], [ %101, %104 ], !dbg !569
  %107 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 1, !dbg !567
  call void @llvm.dbg.value(metadata %struct.hid_conn* %107, metadata !358, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata %struct.hid_conn* %107, metadata !358, metadata !DIExpression()), !dbg !368
  %108 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %106, i32 0, i32 0, i32 0, i32 1, !dbg !569
  %109 = icmp ult %struct.hid_conn* %107, %108, !dbg !569
  br i1 %109, label %7, label %110, !dbg !571, !llvm.loop !573

; <label>:110:                                    ; preds = %105
  store i1 false, i1* @hid_run_loop_buy, align 4
  br label %111, !dbg !575

; <label>:111:                                    ; preds = %110, %1
  ret void, !dbg !576
}

; Function Attrs: nounwind optsize
define hidden i32 @hid_send_cmd_ioctrl(i8* nocapture readonly, i32) local_unnamed_addr #4 section ".bt_stack_code" !dbg !578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !582, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i32 %1, metadata !583, metadata !DIExpression()), !dbg !585
  %3 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !586, !tbaa !150
  %4 = icmp eq %struct.hid_handl* %3, null, !dbg !588
  br i1 %4, label %113, label %5, !dbg !589

; <label>:5:                                      ; preds = %2
  switch i32 %1, label %113 [
    i32 1, label %6
    i32 2, label %7
    i32 3, label %15
    i32 4, label %27
    i32 5, label %35
    i32 10, label %43
    i32 11, label %44
    i32 6, label %45
    i32 7, label %53
    i32 9, label %61
    i32 8, label %74
    i32 12, label %99
  ], !dbg !590

; <label>:6:                                      ; preds = %5
  tail call fastcc void @hid_android_shutter(i8* %0) #12, !dbg !591
  br label %112, !dbg !593

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !594, metadata !DIExpression()), !dbg !600
  %8 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !602
  call void @llvm.dbg.value(metadata %struct.hid_conn* %8, metadata !599, metadata !DIExpression()), !dbg !603
  %9 = icmp eq %struct.hid_conn* %8, null, !dbg !604
  br i1 %9, label %112, label %10, !dbg !606

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %8, i32 0, i32 2, !dbg !607
  %12 = load i8, i8* %11, align 2, !dbg !607, !tbaa !414
  %13 = icmp eq i8 %12, 0, !dbg !609
  br i1 %13, label %14, label %112, !dbg !610

; <label>:14:                                     ; preds = %10
  store i8 -127, i8* %11, align 2, !dbg !612, !tbaa !414
  br label %112, !dbg !614

; <label>:15:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !615, metadata !DIExpression()), !dbg !619
  %16 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !621
  call void @llvm.dbg.value(metadata %struct.hid_conn* %16, metadata !618, metadata !DIExpression()), !dbg !622
  %17 = icmp eq %struct.hid_conn* %16, null, !dbg !623
  br i1 %17, label %112, label %18, !dbg !625

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %16, i32 0, i32 3, !dbg !626
  %20 = load i8, i8* %19, align 1, !dbg !626, !tbaa !546
  %21 = icmp eq i8 %20, 0, !dbg !628
  br i1 %21, label %22, label %112, !dbg !629

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %16, i32 0, i32 2, !dbg !630
  %24 = load i8, i8* %23, align 2, !dbg !630, !tbaa !414
  %25 = icmp eq i8 %24, 0, !dbg !632
  br i1 %25, label %26, label %112, !dbg !633

; <label>:26:                                     ; preds = %22
  store i8 85, i8* %19, align 1, !dbg !635, !tbaa !546
  tail call fastcc void @hid_android_shutter(i8* %0) #11, !dbg !637
  br label %112, !dbg !638

; <label>:27:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !639, metadata !DIExpression()), !dbg !643
  %28 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !645
  call void @llvm.dbg.value(metadata %struct.hid_conn* %28, metadata !642, metadata !DIExpression()), !dbg !646
  %29 = icmp eq %struct.hid_conn* %28, null, !dbg !647
  br i1 %29, label %112, label %30, !dbg !649

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %28, i32 0, i32 2, !dbg !650
  %32 = load i8, i8* %31, align 2, !dbg !650, !tbaa !414
  %33 = icmp eq i8 %32, 0, !dbg !652
  br i1 %33, label %34, label %112, !dbg !653

; <label>:34:                                     ; preds = %30
  store i8 65, i8* %31, align 2, !dbg !655, !tbaa !414
  br label %112, !dbg !657

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !658, metadata !DIExpression()), !dbg !662
  %36 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !664
  call void @llvm.dbg.value(metadata %struct.hid_conn* %36, metadata !661, metadata !DIExpression()), !dbg !665
  %37 = icmp eq %struct.hid_conn* %36, null, !dbg !666
  br i1 %37, label %112, label %38, !dbg !668

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %36, i32 0, i32 2, !dbg !669
  %40 = load i8, i8* %39, align 2, !dbg !669, !tbaa !414
  %41 = icmp eq i8 %40, 0, !dbg !671
  br i1 %41, label %42, label %112, !dbg !672

; <label>:42:                                     ; preds = %38
  store i8 4, i8* %39, align 2, !dbg !674, !tbaa !414
  br label %112, !dbg !676

; <label>:43:                                     ; preds = %5
  tail call fastcc void @hid_vol_ctrl(i8* %0, i8 zeroext 1) #12, !dbg !677
  br label %112, !dbg !678

; <label>:44:                                     ; preds = %5
  tail call fastcc void @hid_vol_ctrl(i8* %0, i8 zeroext 0) #12, !dbg !679
  br label %112, !dbg !680

; <label>:45:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !681, metadata !DIExpression()), !dbg !685
  %46 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !687
  call void @llvm.dbg.value(metadata %struct.hid_conn* %46, metadata !684, metadata !DIExpression()), !dbg !688
  %47 = icmp eq %struct.hid_conn* %46, null, !dbg !689
  br i1 %47, label %112, label %48, !dbg !691

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %46, i32 0, i32 2, !dbg !692
  %50 = load i8, i8* %49, align 2, !dbg !692, !tbaa !414
  %51 = icmp eq i8 %50, 0, !dbg !694
  br i1 %51, label %52, label %112, !dbg !695

; <label>:52:                                     ; preds = %48
  store i8 7, i8* %49, align 2, !dbg !697, !tbaa !414
  br label %112, !dbg !699

; <label>:53:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !700, metadata !DIExpression()), !dbg !704
  %54 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !706
  call void @llvm.dbg.value(metadata %struct.hid_conn* %54, metadata !703, metadata !DIExpression()), !dbg !707
  %55 = icmp eq %struct.hid_conn* %54, null, !dbg !708
  br i1 %55, label %112, label %56, !dbg !710

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %54, i32 0, i32 2, !dbg !711
  %58 = load i8, i8* %57, align 2, !dbg !711, !tbaa !414
  %59 = icmp eq i8 %58, 0, !dbg !713
  br i1 %59, label %60, label %112, !dbg !714

; <label>:60:                                     ; preds = %56
  store i8 10, i8* %57, align 2, !dbg !716, !tbaa !414
  br label %112, !dbg !718

; <label>:61:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !719, metadata !DIExpression()), !dbg !723
  %62 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !725
  call void @llvm.dbg.value(metadata %struct.hid_conn* %62, metadata !722, metadata !DIExpression()), !dbg !726
  %63 = icmp eq %struct.hid_conn* %62, null, !dbg !727
  br i1 %63, label %112, label %64, !dbg !729

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %62, i32 0, i32 6, !dbg !730
  %66 = load i16, i16* %65, align 2, !dbg !730, !tbaa !373
  %67 = icmp eq i16 %66, 0, !dbg !732
  %68 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %62, i32 0, i32 5
  br i1 %67, label %69, label %72, !dbg !733

; <label>:69:                                     ; preds = %64
  %70 = load i16, i16* %68, align 2, !dbg !734, !tbaa !226
  %71 = icmp eq i16 %70, 0, !dbg !736
  br i1 %71, label %112, label %72, !dbg !737

; <label>:72:                                     ; preds = %69, %64
  tail call void @l2cap_disconnect_internal(i16 zeroext %66, i8 zeroext 19) #11, !dbg !739
  %73 = load i16, i16* %68, align 2, !dbg !741, !tbaa !226
  tail call void @l2cap_disconnect_internal(i16 zeroext %73, i8 zeroext 19) #11, !dbg !742
  br label %112, !dbg !743

; <label>:74:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !744, metadata !DIExpression()), !dbg !748
  %75 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !750
  call void @llvm.dbg.value(metadata %struct.hid_conn* %75, metadata !747, metadata !DIExpression()), !dbg !751
  %76 = icmp eq %struct.hid_conn* %75, null, !dbg !752
  br i1 %76, label %77, label %81, !dbg !754

; <label>:77:                                     ; preds = %74
  %78 = tail call fastcc %struct.hid_conn* @__create_hid_conn(i8* %0) #11, !dbg !755
  call void @llvm.dbg.value(metadata %struct.hid_conn* %78, metadata !747, metadata !DIExpression()), !dbg !751
  %79 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %78, i32 0, i32 4
  %80 = load i8, i8* %79, align 2
  br label %90, !dbg !757

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %75, i32 0, i32 5, !dbg !758
  %83 = load i16, i16* %82, align 2, !dbg !758, !tbaa !226
  %84 = icmp eq i16 %83, 0, !dbg !761
  br i1 %84, label %85, label %112, !dbg !762

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %75, i32 0, i32 4, !dbg !763
  %87 = load i8, i8* %86, align 2, !dbg !763
  %88 = and i8 %87, 2, !dbg !763
  %89 = icmp eq i8 %88, 0, !dbg !765
  br i1 %89, label %90, label %112, !dbg !766

; <label>:90:                                     ; preds = %85, %77
  %91 = phi i8 [ %87, %85 ], [ %80, %77 ], !dbg !768
  %92 = phi %struct.hid_conn* [ %75, %85 ], [ %78, %77 ]
  call void @llvm.dbg.value(metadata %struct.hid_conn* %92, metadata !747, metadata !DIExpression()), !dbg !751
  %93 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %92, i32 0, i32 4, !dbg !769
  %94 = or i8 %91, 2, !dbg !768
  store i8 %94, i8* %93, align 2, !dbg !768
  %95 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %92, i32 0, i32 1, i32 0, !dbg !770
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %95, i8* %0, i32 6, i32 1, i1 false) #10, !dbg !770
  %96 = and i8 %94, -25, !dbg !771
  %97 = or i8 %96, 8, !dbg !771
  store i8 %97, i8* %93, align 2, !dbg !771
  %98 = tail call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__hid_ctrl_packet_handler, i8* %95, i16 zeroext 17, i16 zeroext -1) #11, !dbg !772
  br label %112, !dbg !773

; <label>:99:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !774, metadata !DIExpression()), !dbg !778
  %100 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #11, !dbg !780
  call void @llvm.dbg.value(metadata %struct.hid_conn* %100, metadata !777, metadata !DIExpression()), !dbg !781
  %101 = icmp eq %struct.hid_conn* %100, null, !dbg !782
  br i1 %101, label %112, label %102, !dbg !784

; <label>:102:                                    ; preds = %99
  %103 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %100, i32 0, i32 6, !dbg !785
  %104 = load i16, i16* %103, align 2, !dbg !785, !tbaa !373
  %105 = icmp eq i16 %104, 0, !dbg !787
  br i1 %105, label %107, label %106, !dbg !788

; <label>:106:                                    ; preds = %102
  tail call fastcc void @hid_inter_try_send(i16 zeroext %104) #11, !dbg !789
  br label %107, !dbg !791

; <label>:107:                                    ; preds = %106, %102
  %108 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %100, i32 0, i32 5, !dbg !792
  %109 = load i16, i16* %108, align 2, !dbg !792, !tbaa !226
  %110 = icmp eq i16 %109, 0, !dbg !794
  br i1 %110, label %112, label %111, !dbg !795

; <label>:111:                                    ; preds = %107
  tail call fastcc void @hid_ctrl_try_send(i16 zeroext %109) #11, !dbg !796
  br label %112, !dbg !798

; <label>:112:                                    ; preds = %111, %107, %99, %90, %85, %81, %72, %69, %61, %60, %56, %53, %52, %48, %45, %44, %43, %42, %38, %35, %34, %30, %27, %26, %22, %18, %15, %14, %10, %7, %6
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #11, !dbg !799
  br label %113, !dbg !800

; <label>:113:                                    ; preds = %112, %5, %2
  %114 = phi i32 [ 0, %112 ], [ -1000, %2 ], [ -1001, %5 ]
  ret i32 %114, !dbg !801
}

; Function Attrs: nounwind optsize
define internal fastcc void @hid_android_shutter(i8* nocapture readonly) unnamed_addr #4 section ".bt_stack_code" !dbg !802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !804, metadata !DIExpression()), !dbg !806
  %2 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !807, !tbaa !150
  %3 = icmp eq %struct.hid_handl* %2, null, !dbg !809
  br i1 %3, label %12, label %4, !dbg !810

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #12, !dbg !811
  call void @llvm.dbg.value(metadata %struct.hid_conn* %5, metadata !805, metadata !DIExpression()), !dbg !812
  %6 = icmp eq %struct.hid_conn* %5, null, !dbg !813
  br i1 %6, label %12, label %7, !dbg !815

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %5, i32 0, i32 2, !dbg !816
  %9 = load i8, i8* %8, align 2, !dbg !816, !tbaa !414
  %10 = icmp eq i8 %9, 0, !dbg !818
  br i1 %10, label %11, label %12, !dbg !819

; <label>:11:                                     ; preds = %7
  store i8 1, i8* %8, align 2, !dbg !821, !tbaa !414
  br label %12, !dbg !823

; <label>:12:                                     ; preds = %11, %7, %4, %1
  ret void, !dbg !824
}

; Function Attrs: nounwind optsize
define internal fastcc void @hid_vol_ctrl(i8* nocapture readonly, i8 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !830, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i8 %1, metadata !831, metadata !DIExpression()), !dbg !834
  %3 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !835, !tbaa !150
  %4 = icmp eq %struct.hid_handl* %3, null, !dbg !837
  br i1 %4, label %15, label %5, !dbg !838

; <label>:5:                                      ; preds = %2
  %6 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %0) #12, !dbg !839
  call void @llvm.dbg.value(metadata %struct.hid_conn* %6, metadata !832, metadata !DIExpression()), !dbg !840
  %7 = icmp eq %struct.hid_conn* %6, null, !dbg !841
  br i1 %7, label %15, label %8, !dbg !843

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 2, !dbg !844
  %10 = load i8, i8* %9, align 2, !dbg !844, !tbaa !414
  %11 = icmp eq i8 %10, 0, !dbg !846
  br i1 %11, label %12, label %15, !dbg !847

; <label>:12:                                     ; preds = %8
  %13 = icmp ne i8 %1, 0, !dbg !849
  %14 = select i1 %13, i8 16, i8 19, !dbg !852
  store i8 %14, i8* %9, align 2, !tbaa !414
  br label %15, !dbg !853

; <label>:15:                                     ; preds = %12, %8, %5, %2
  ret void, !dbg !854
}

; Function Attrs: optsize
declare void @stack_run_loop_resume(...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @hid_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !860, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i16 %1, metadata !861, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i8 0, metadata !862, metadata !DIExpression()), !dbg !865
  %3 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !866, !tbaa !150
  %4 = icmp eq %struct.hid_handl* %3, null, !dbg !868
  br i1 %4, label %7, label %5, !dbg !869

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 38, metadata !862, metadata !DIExpression()), !dbg !865
  %6 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !870
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %6, i32 38, i32 1, i1 false), !dbg !870
  br label %7, !dbg !871

; <label>:7:                                      ; preds = %5, %2
  %8 = phi i32 [ 38, %5 ], [ 0, %2 ]
  ret i32 %8, !dbg !872
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind optsize
define hidden void @hid_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !877, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata i16 %1, metadata !878, metadata !DIExpression()), !dbg !881
  %3 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !882, !tbaa !150
  %4 = icmp eq %struct.hid_handl* %3, null, !dbg !884
  br i1 %4, label %7, label %5, !dbg !885

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8 38, metadata !879, metadata !DIExpression()), !dbg !886
  %6 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !887
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %0, i32 38, i32 1, i1 false), !dbg !887
  br label %7, !dbg !888

; <label>:7:                                      ; preds = %5, %2
  ret void, !dbg !889
}

; Function Attrs: nounwind optsize
define hidden i32 @hid_diy_data_try_send(i16 zeroext, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !891 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !895, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i8* %1, metadata !896, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i16 %2, metadata !897, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !898, metadata !DIExpression()), !dbg !903
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #11, !dbg !904
  %4 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !905, !tbaa !150
  %5 = icmp eq %struct.hid_handl* %4, null, !dbg !907
  br i1 %5, label %92, label %6, !dbg !908

; <label>:6:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i16 %0, metadata !909, metadata !DIExpression()), !dbg !913
  %7 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %4, i32 0, i32 0, i32 0, i32 0, !dbg !915
  %8 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %4, i32 0, i32 0, i32 0, i32 1
  br label %9, !dbg !917

; <label>:9:                                      ; preds = %19, %6
  %10 = phi %struct.hid_conn* [ %7, %6 ], [ %20, %19 ]
  %11 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %10, i32 0, i32 6, !dbg !919
  %12 = load i16, i16* %11, align 2, !dbg !919, !tbaa !373
  %13 = icmp eq i16 %12, %0, !dbg !923
  br i1 %13, label %14, label %19, !dbg !924

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %10, i32 0, i32 4, !dbg !925
  %16 = load i8, i8* %15, align 2, !dbg !925
  %17 = and i8 %16, 1, !dbg !925
  %18 = icmp eq i8 %17, 0, !dbg !927
  br i1 %18, label %19, label %37, !dbg !928

; <label>:19:                                     ; preds = %14, %9
  %20 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %10, i32 1, !dbg !930
  call void @llvm.dbg.value(metadata %struct.hid_conn* %20, metadata !912, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata %struct.hid_conn* %20, metadata !912, metadata !DIExpression()), !dbg !932
  %21 = icmp ult %struct.hid_conn* %20, %8, !dbg !933
  br i1 %21, label %9, label %22, !dbg !917, !llvm.loop !935

; <label>:22:                                     ; preds = %19
  br label %23, !dbg !938

; <label>:23:                                     ; preds = %33, %22
  %24 = phi %struct.hid_conn* [ %34, %33 ], [ %7, %22 ]
  %25 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %24, i32 0, i32 5, !dbg !938
  %26 = load i16, i16* %25, align 2, !dbg !938, !tbaa !226
  %27 = icmp eq i16 %26, %0, !dbg !942
  br i1 %27, label %28, label %33, !dbg !943

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %24, i32 0, i32 4, !dbg !944
  %30 = load i8, i8* %29, align 2, !dbg !944
  %31 = and i8 %30, 1, !dbg !944
  %32 = icmp eq i8 %31, 0, !dbg !945
  br i1 %32, label %33, label %36, !dbg !946

; <label>:33:                                     ; preds = %28, %23
  %34 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %24, i32 1, !dbg !947
  call void @llvm.dbg.value(metadata %struct.hid_conn* %34, metadata !215, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata %struct.hid_conn* %34, metadata !215, metadata !DIExpression()), !dbg !948
  %35 = icmp ult %struct.hid_conn* %34, %8, !dbg !949
  br i1 %35, label %23, label %91, !dbg !950, !llvm.loop !241

; <label>:36:                                     ; preds = %28
  br label %38, !dbg !951

; <label>:37:                                     ; preds = %14
  br label %38, !dbg !951

; <label>:38:                                     ; preds = %37, %36
  %39 = phi i8 [ %30, %36 ], [ %16, %37 ], !dbg !951
  %40 = phi %struct.hid_conn* [ %24, %36 ], [ %10, %37 ]
  %41 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %40, i32 0, i32 4, !dbg !951
  %42 = and i8 %39, 1, !dbg !951
  %43 = icmp eq i8 %42, 0, !dbg !955
  br i1 %43, label %92, label %44, !dbg !956

; <label>:44:                                     ; preds = %38
  %45 = tail call i32 bitcast (i32 (...)* @lmp_private_get_tx_remain_buffer to i32 ()*)() #11, !dbg !957
  %46 = icmp ult i32 %45, 256, !dbg !959
  br i1 %46, label %92, label %47, !dbg !960

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %40, i32 0, i32 6, !dbg !961
  %49 = load i16, i16* %48, align 2, !dbg !961, !tbaa !373
  %50 = icmp eq i16 %49, %0, !dbg !963
  %51 = zext i16 %2 to i32
  br i1 %50, label %52, label %69, !dbg !964

; <label>:52:                                     ; preds = %47
  %53 = icmp ugt i16 %2, 30, !dbg !965
  br i1 %53, label %54, label %59, !dbg !968

; <label>:54:                                     ; preds = %52
  %55 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !969, !tbaa !176
  %56 = icmp slt i8 %55, 0, !dbg !969
  br i1 %56, label %57, label %92, !dbg !972

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.22, i32 0, i32 0)), !dbg !973
  br label %92, !dbg !973

; <label>:59:                                     ; preds = %52
  %60 = load i8, i8* @diy_data_len, align 1, !dbg !975, !tbaa !176
  %61 = icmp eq i8 %60, 0, !dbg !975
  br i1 %61, label %67, label %62, !dbg !978

; <label>:62:                                     ; preds = %59
  %63 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !979, !tbaa !176
  %64 = icmp slt i8 %63, 0, !dbg !979
  br i1 %64, label %65, label %92, !dbg !982

; <label>:65:                                     ; preds = %62
  %66 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.21, i32 0, i32 0)), !dbg !983
  br label %92, !dbg !983

; <label>:67:                                     ; preds = %59
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @diy_data_buf, i32 0, i32 0), i8* %1, i32 %51, i32 1, i1 false), !dbg !985
  %68 = trunc i16 %2 to i8, !dbg !987
  store i8 %68, i8* @diy_data_len, align 1, !dbg !988, !tbaa !176
  br label %92, !dbg !989

; <label>:69:                                     ; preds = %47
  %70 = icmp ugt i16 %2, 10, !dbg !990
  br i1 %70, label %71, label %76, !dbg !993

; <label>:71:                                     ; preds = %69
  %72 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !994, !tbaa !176
  %73 = icmp slt i8 %72, 0, !dbg !994
  br i1 %73, label %74, label %92, !dbg !997

; <label>:74:                                     ; preds = %71
  %75 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.20, i32 0, i32 0)), !dbg !998
  br label %92, !dbg !998

; <label>:76:                                     ; preds = %69
  %77 = load i8, i8* %41, align 2, !dbg !1000
  %78 = icmp ugt i8 %77, 31, !dbg !1003
  br i1 %78, label %79, label %84, !dbg !1004

; <label>:79:                                     ; preds = %76
  %80 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1005, !tbaa !176
  %81 = icmp slt i8 %80, 0, !dbg !1005
  br i1 %81, label %82, label %92, !dbg !1008

; <label>:82:                                     ; preds = %79
  %83 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str, i32 0, i32 0)), !dbg !1009
  br label %92, !dbg !1009

; <label>:84:                                     ; preds = %76
  %85 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %40, i32 0, i32 0, i32 0, !dbg !1011
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %85, i8* %1, i32 %51, i32 1, i1 false), !dbg !1011
  %86 = trunc i16 %2 to i8, !dbg !1013
  %87 = load i8, i8* %41, align 2, !dbg !1014
  %88 = shl i8 %86, 5, !dbg !1014
  %89 = and i8 %87, 31, !dbg !1014
  %90 = or i8 %89, %88, !dbg !1014
  store i8 %90, i8* %41, align 2, !dbg !1014
  br label %92

; <label>:91:                                     ; preds = %33
  br label %92, !dbg !903

; <label>:92:                                     ; preds = %91, %84, %82, %79, %74, %71, %67, %65, %62, %57, %54, %44, %38, %3
  %93 = phi i32 [ 0, %67 ], [ 0, %84 ], [ 1, %3 ], [ 2, %38 ], [ 30, %44 ], [ 3, %57 ], [ 3, %54 ], [ 4, %65 ], [ 4, %62 ], [ 20, %74 ], [ 20, %71 ], [ 21, %82 ], [ 21, %79 ], [ 2, %91 ]
  call void @llvm.dbg.value(metadata i32 %93, metadata !898, metadata !DIExpression()), !dbg !903
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #11, !dbg !1015
  ret i32 %93, !dbg !1016
}

; Function Attrs: optsize
declare void @local_irq_disable(...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lmp_private_get_tx_remain_buffer(...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @local_irq_enable(...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @hid_diy_regiest_callback(i8*, i8*) local_unnamed_addr #4 section ".bt_stack_code" !dbg !1017 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1021, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %1, metadata !1022, metadata !DIExpression()), !dbg !1024
  store i8* %0, i8** bitcast (void (i32, i8*, i32)** @hid_msg_callback to i8**), align 4, !dbg !1025, !tbaa !150
  store i8* %1, i8** bitcast (void (i8*, i32, i16)** @hid_interrupt_callback to i8**), align 4, !dbg !1026, !tbaa !150
  ret void, !dbg !1027
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @hid_send_step_state() local_unnamed_addr #6 section ".bt_stack_code" !dbg !1028 {
  %1 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !1033, !tbaa !150
  %2 = icmp eq %struct.hid_handl* %1, null, !dbg !1035
  br i1 %2, label %25, label %3, !dbg !1036

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.hid_conn* %5, metadata !1032, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata %struct.hid_conn* %5, metadata !1032, metadata !DIExpression()), !dbg !1037
  %4 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %1, i32 0, i32 0, i32 0, i32 1, !dbg !1038
  %5 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %1, i32 0, i32 0, i32 0, i32 0, !dbg !1042
  br label %6, !dbg !1043

; <label>:6:                                      ; preds = %20, %3
  %7 = phi %struct.hid_conn* [ %5, %3 ], [ %21, %20 ]
  %8 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 0, i32 6, !dbg !1045
  %9 = load i16, i16* %8, align 2, !dbg !1045, !tbaa !373
  %10 = icmp eq i16 %9, 0, !dbg !1048
  br i1 %10, label %20, label %11, !dbg !1049

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 0, i32 4, !dbg !1050
  %13 = load i8, i8* %12, align 2, !dbg !1050
  %14 = and i8 %13, 1, !dbg !1050
  %15 = icmp eq i8 %14, 0, !dbg !1052
  br i1 %15, label %20, label %16, !dbg !1053

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 0, i32 2, !dbg !1055
  %18 = load i8, i8* %17, align 2, !dbg !1055, !tbaa !414
  %19 = icmp eq i8 %18, 0, !dbg !1057
  br i1 %19, label %20, label %23, !dbg !1058

; <label>:20:                                     ; preds = %16, %11, %6
  %21 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 1, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.hid_conn* %21, metadata !1032, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata %struct.hid_conn* %21, metadata !1032, metadata !DIExpression()), !dbg !1037
  %22 = icmp ult %struct.hid_conn* %21, %4, !dbg !1038
  br i1 %22, label %6, label %23, !dbg !1043, !llvm.loop !1061

; <label>:23:                                     ; preds = %20, %16
  %24 = phi i8 [ 1, %16 ], [ 0, %20 ]
  br label %25, !dbg !1063

; <label>:25:                                     ; preds = %23, %0
  %26 = phi i8 [ 0, %0 ], [ %24, %23 ]
  ret i8 %26, !dbg !1063
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @hid_suspend() #7 section ".bt_stack_code" !dbg !1064 {
  ret i32 0, !dbg !1068
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @hid_resume() #7 section ".bt_stack_code" !dbg !1069 {
  ret i32 0, !dbg !1070
}

; Function Attrs: nounwind optsize
define internal i32 @hid_release() #4 section ".bt_stack_code" !dbg !1071 {
  %1 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !1074, !tbaa !150
  %2 = icmp eq %struct.hid_handl* %1, null, !dbg !1076
  br i1 %2, label %20, label %3, !dbg !1077

; <label>:3:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.hid_conn* %5, metadata !1073, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata %struct.hid_conn* %5, metadata !1073, metadata !DIExpression()), !dbg !1078
  %4 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %1, i32 0, i32 0, i32 0, i32 1, !dbg !1079
  %5 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %1, i32 0, i32 0, i32 0, i32 0, !dbg !1083
  br label %8, !dbg !1084

; <label>:6:                                      ; preds = %14
  call void @llvm.dbg.value(metadata %struct.hid_conn* %16, metadata !1073, metadata !DIExpression()), !dbg !1078
  %7 = icmp ult %struct.hid_conn* %16, %4, !dbg !1079
  br i1 %7, label %8, label %17, !dbg !1084, !llvm.loop !1086

; <label>:8:                                      ; preds = %6, %3
  %9 = phi %struct.hid_conn* [ %5, %3 ], [ %16, %6 ]
  %10 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 0, i32 4, !dbg !1088
  %11 = load i8, i8* %10, align 2, !dbg !1088
  %12 = and i8 %11, 1, !dbg !1088
  %13 = icmp eq i8 %12, 0, !dbg !1091
  br i1 %13, label %14, label %19, !dbg !1092

; <label>:14:                                     ; preds = %8
  %15 = load i1, i1* @hid_run_loop_buy, align 4
  %16 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 1, !dbg !1093
  call void @llvm.dbg.value(metadata %struct.hid_conn* %16, metadata !1073, metadata !DIExpression()), !dbg !1078
  br i1 %15, label %19, label %6, !dbg !1095

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %1, i32 0, i32 1, !dbg !1097
  tail call void @stack_run_loop_remove(%struct.run_loop* %18) #11, !dbg !1098
  store %struct.hid_handl* null, %struct.hid_handl** @hid, align 4, !dbg !1099, !tbaa !150
  store i1 false, i1* @hid_run_loop_buy, align 4
  br label %20, !dbg !1100

; <label>:19:                                     ; preds = %14, %8
  br label %20, !dbg !1101

; <label>:20:                                     ; preds = %19, %17, %0
  %21 = phi i32 [ 0, %17 ], [ 0, %0 ], [ 1, %19 ]
  ret i32 %21, !dbg !1101
}

; Function Attrs: optsize
declare void @stack_run_loop_remove(%struct.run_loop*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @hid_ctrl_try_send(i16 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !1102 {
  %2 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i16 %0, metadata !1106, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i16 %0, metadata !210, metadata !DIExpression()), !dbg !1110
  %3 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !1112
  %4 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %3, i32 0, i32 0, i32 0, i32 0, !dbg !1112
  %5 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %3, i32 0, i32 0, i32 0, i32 1
  br label %6, !dbg !1113

; <label>:6:                                      ; preds = %16, %1
  %7 = phi %struct.hid_conn* [ %4, %1 ], [ %17, %16 ]
  %8 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 0, i32 5, !dbg !1114
  %9 = load i16, i16* %8, align 2, !dbg !1114, !tbaa !226
  %10 = icmp eq i16 %9, %0, !dbg !1115
  br i1 %10, label %11, label %16, !dbg !1116

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 0, i32 4, !dbg !1117
  %13 = load i8, i8* %12, align 2, !dbg !1117
  %14 = and i8 %13, 1, !dbg !1117
  %15 = icmp eq i8 %14, 0, !dbg !1118
  br i1 %15, label %16, label %19, !dbg !1119

; <label>:16:                                     ; preds = %11, %6
  %17 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 1, !dbg !1120
  call void @llvm.dbg.value(metadata %struct.hid_conn* %17, metadata !215, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata %struct.hid_conn* %17, metadata !215, metadata !DIExpression()), !dbg !1121
  %18 = icmp ult %struct.hid_conn* %17, %5, !dbg !1122
  br i1 %18, label %6, label %36, !dbg !1113, !llvm.loop !241

; <label>:19:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.hid_conn* %7, metadata !1108, metadata !DIExpression()), !dbg !1123
  %20 = lshr i8 %13, 5, !dbg !1124
  %21 = icmp eq i8 %20, 0, !dbg !1127
  br i1 %21, label %37, label %22, !dbg !1128

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %7, i32 0, i32 0, i32 0, !dbg !1129
  %24 = zext i8 %20 to i16, !dbg !1130
  %25 = tail call i32 @l2cap_send_internal(i16 zeroext %0, i8* %23, i16 zeroext %24, i8 zeroext 0) #11, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %25, metadata !1107, metadata !DIExpression()), !dbg !1132
  %26 = icmp eq i32 %25, 0, !dbg !1133
  br i1 %26, label %27, label %37, !dbg !1135

; <label>:27:                                     ; preds = %22
  %28 = load i8, i8* %12, align 2, !dbg !1136
  %29 = and i8 %28, 31, !dbg !1136
  store i8 %29, i8* %12, align 2, !dbg !1136
  %30 = load i16, i16* %8, align 2, !dbg !1138, !tbaa !226
  %31 = bitcast i16* %2 to i8*, !dbg !1139
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %31), !dbg !1139
  call void @llvm.dbg.value(metadata i32 3, metadata !1144, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i8* null, metadata !1145, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata i16 %30, metadata !1146, metadata !DIExpression()), !dbg !1159
  store i16 %30, i16* %2, align 2, !tbaa !1160
  %32 = load void (i32, i8*, i32)*, void (i32, i8*, i32)** @hid_msg_callback, align 4, !dbg !1161, !tbaa !150
  %33 = icmp eq void (i32, i8*, i32)* %32, null, !dbg !1161
  br i1 %33, label %35, label %34, !dbg !1163

; <label>:34:                                     ; preds = %27
  call void %32(i32 3, i8* nonnull %31, i32 2) #11, !dbg !1164
  br label %35, !dbg !1165

; <label>:35:                                     ; preds = %34, %27
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %31), !dbg !1166
  br label %37, !dbg !1168

; <label>:36:                                     ; preds = %16
  br label %37, !dbg !1169

; <label>:37:                                     ; preds = %36, %35, %22, %19
  ret void, !dbg !1169
}

; Function Attrs: optsize
declare i32 @l2cap_send_internal(i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @hid_diy_state_sync(i32, i8* nocapture readonly, i16 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !1140 {
  %4 = alloca i16, align 2
  %5 = alloca [2 x i16], align 2
  call void @llvm.dbg.value(metadata i32 %0, metadata !1144, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %1, metadata !1145, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i16 %2, metadata !1146, metadata !DIExpression()), !dbg !1173
  store i16 %2, i16* %4, align 2, !tbaa !1160
  %6 = load void (i32, i8*, i32)*, void (i32, i8*, i32)** @hid_msg_callback, align 4, !dbg !1174, !tbaa !150
  %7 = icmp eq void (i32, i8*, i32)* %6, null, !dbg !1174
  br i1 %7, label %27, label %8, !dbg !1175

; <label>:8:                                      ; preds = %3
  switch i32 %0, label %27 [
    i32 1, label %9
    i32 2, label %24
    i32 3, label %25
  ], !dbg !1176

; <label>:9:                                      ; preds = %8
  %10 = tail call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* %1) #12, !dbg !1177
  call void @llvm.dbg.value(metadata %struct.hid_conn* %10, metadata !1147, metadata !DIExpression()), !dbg !1178
  %11 = icmp eq %struct.hid_conn* %10, null, !dbg !1179
  br i1 %11, label %27, label %12, !dbg !1180

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %10, i32 0, i32 6, !dbg !1181
  %14 = load i16, i16* %13, align 2, !dbg !1181, !tbaa !373
  %15 = icmp eq i16 %14, 0, !dbg !1182
  br i1 %15, label %27, label %16, !dbg !1183

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %10, i32 0, i32 5, !dbg !1184
  %18 = load i16, i16* %17, align 2, !dbg !1184, !tbaa !226
  %19 = icmp eq i16 %18, 0, !dbg !1186
  br i1 %19, label %27, label %20, !dbg !1187

; <label>:20:                                     ; preds = %16
  %21 = bitcast [2 x i16]* %5 to i8*, !dbg !1189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #10, !dbg !1189
  tail call void @llvm.dbg.declare(metadata [2 x i16]* %5, metadata !1148, metadata !DIExpression()), !dbg !1190
  %22 = getelementptr inbounds [2 x i16], [2 x i16]* %5, i32 0, i32 0, !dbg !1191
  store i16 %18, i16* %22, align 2, !dbg !1192, !tbaa !1160
  %23 = getelementptr inbounds [2 x i16], [2 x i16]* %5, i32 0, i32 1, !dbg !1193
  store i16 %14, i16* %23, align 2, !dbg !1194, !tbaa !1160
  call void %6(i32 1, i8* nonnull %21, i32 4) #11, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #10, !dbg !1196
  br label %27, !dbg !1197

; <label>:24:                                     ; preds = %8
  tail call void %6(i32 2, i8* null, i32 0) #11, !dbg !1198
  br label %27, !dbg !1199

; <label>:25:                                     ; preds = %8
  %26 = bitcast i16* %4 to i8*, !dbg !1200
  call void %6(i32 3, i8* nonnull %26, i32 2) #11, !dbg !1201
  br label %27, !dbg !1202

; <label>:27:                                     ; preds = %25, %24, %20, %16, %12, %9, %8, %3
  ret void, !dbg !1203
}

; Function Attrs: nounwind optsize readonly
define internal fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* nocapture readonly) unnamed_addr #6 section ".bt_stack_code" !dbg !1204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1213, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata %struct.hid_conn* %3, metadata !1214, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata %struct.hid_conn* %3, metadata !1214, metadata !DIExpression()), !dbg !1216
  %2 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !1217
  %3 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %2, i32 0, i32 0, i32 0, i32 0, !dbg !1217
  %4 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %2, i32 0, i32 0, i32 0, i32 1
  br label %5, !dbg !1219

; <label>:5:                                      ; preds = %15, %1
  %6 = phi %struct.hid_conn* [ %3, %1 ], [ %16, %15 ]
  %7 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 1, i32 0, !dbg !1221
  %8 = tail call i32 @memcmp(i8* %7, i8* %0, i32 6) #12, !dbg !1225
  %9 = icmp eq i32 %8, 0, !dbg !1225
  br i1 %9, label %10, label %15, !dbg !1226

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 4, !dbg !1227
  %12 = load i8, i8* %11, align 2, !dbg !1227
  %13 = and i8 %12, 1, !dbg !1227
  %14 = icmp eq i8 %13, 0, !dbg !1229
  br i1 %14, label %15, label %18, !dbg !1230

; <label>:15:                                     ; preds = %10, %5
  %16 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 1, !dbg !1232
  call void @llvm.dbg.value(metadata %struct.hid_conn* %16, metadata !1214, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata %struct.hid_conn* %16, metadata !1214, metadata !DIExpression()), !dbg !1216
  %17 = icmp ult %struct.hid_conn* %16, %4, !dbg !1234
  br i1 %17, label %5, label %18, !dbg !1219, !llvm.loop !1236

; <label>:18:                                     ; preds = %15, %10
  %19 = phi %struct.hid_conn* [ %6, %10 ], [ null, %15 ]
  ret %struct.hid_conn* %19, !dbg !1238
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind optsize
define internal fastcc void @hid_incoming_connection(i16 zeroext, i8*, i8 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !1239 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !1245, metadata !DIExpression()), !dbg !1252
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !1253
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #10, !dbg !1253
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !1247, metadata !DIExpression()), !dbg !1254
  switch i8 %2, label %50 [
    i8 1, label %6
    i8 2, label %17
  ], !dbg !1255

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1256
  call void @bt_flip_addr(i8* nonnull %5, i8* %7) #11, !dbg !1259
  %8 = call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* nonnull %5) #12, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.hid_conn* %8, metadata !1251, metadata !DIExpression()), !dbg !1261
  %9 = icmp eq %struct.hid_conn* %8, null, !dbg !1262
  br i1 %9, label %10, label %13, !dbg !1264

; <label>:10:                                     ; preds = %6
  %11 = call fastcc %struct.hid_conn* @__create_hid_conn(i8* nonnull %5) #12, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.hid_conn* %11, metadata !1251, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata %struct.hid_conn* %11, metadata !1251, metadata !DIExpression()), !dbg !1261
  %12 = icmp eq %struct.hid_conn* %11, null, !dbg !1267
  br i1 %12, label %16, label %13, !dbg !1269

; <label>:13:                                     ; preds = %10, %6
  %14 = phi %struct.hid_conn* [ %11, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %14, i32 0, i32 5, !dbg !1270
  store i16 %0, i16* %15, align 2, !dbg !1272, !tbaa !226
  call void @l2cap_accept_connection_internal(i16 zeroext %0) #11, !dbg !1273
  br label %50, !dbg !1274

; <label>:16:                                     ; preds = %10
  call void @l2cap_decline_connection_internal(i16 zeroext %0, i8 zeroext 4) #11, !dbg !1275
  br label %50

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1277
  call void @bt_flip_addr(i8* nonnull %5, i8* %18) #11, !dbg !1280
  %19 = call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* nonnull %5) #12, !dbg !1281
  call void @llvm.dbg.value(metadata %struct.hid_conn* %19, metadata !1251, metadata !DIExpression()), !dbg !1261
  %20 = icmp eq %struct.hid_conn* %19, null, !dbg !1282
  br i1 %20, label %21, label %24, !dbg !1284

; <label>:21:                                     ; preds = %17
  %22 = call fastcc %struct.hid_conn* @__create_hid_conn(i8* nonnull %5) #12, !dbg !1285
  call void @llvm.dbg.value(metadata %struct.hid_conn* %22, metadata !1251, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata %struct.hid_conn* %22, metadata !1251, metadata !DIExpression()), !dbg !1261
  %23 = icmp eq %struct.hid_conn* %22, null, !dbg !1287
  br i1 %23, label %41, label %24, !dbg !1289

; <label>:24:                                     ; preds = %21, %17
  %25 = phi %struct.hid_conn* [ %22, %21 ], [ %19, %17 ]
  %26 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %25, i32 0, i32 4, !dbg !1290
  %27 = load i8, i8* %26, align 2, !dbg !1290
  %28 = and i8 %27, 2, !dbg !1290
  %29 = icmp eq i8 %28, 0, !dbg !1292
  br i1 %29, label %30, label %41, !dbg !1293

; <label>:30:                                     ; preds = %24
  %31 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1295, !tbaa !176
  %32 = icmp slt i8 %31, 0, !dbg !1295
  br i1 %32, label %33, label %36, !dbg !1298

; <label>:33:                                     ; preds = %30
  %34 = zext i16 %0 to i32, !dbg !1299
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 %34) #12, !dbg !1299
  br label %36, !dbg !1299

; <label>:36:                                     ; preds = %33, %30
  %37 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %25, i32 0, i32 6, !dbg !1301
  store i16 %0, i16* %37, align 2, !dbg !1302, !tbaa !373
  call void @l2cap_accept_connection_internal(i16 zeroext %0) #11, !dbg !1303
  %38 = load i8, i8* %26, align 2, !dbg !1304
  %39 = and i8 %38, -25, !dbg !1304
  %40 = or i8 %39, 16, !dbg !1304
  store i8 %40, i8* %26, align 2, !dbg !1304
  br label %50, !dbg !1305

; <label>:41:                                     ; preds = %24, %21
  %42 = phi %struct.hid_conn* [ null, %21 ], [ %25, %24 ]
  %43 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1306, !tbaa !176
  %44 = icmp slt i8 %43, 0, !dbg !1306
  br i1 %44, label %45, label %48, !dbg !1309

; <label>:45:                                     ; preds = %41
  %46 = zext i16 %0 to i32, !dbg !1310
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i32 %46) #12, !dbg !1310
  br label %48, !dbg !1310

; <label>:48:                                     ; preds = %45, %41
  %49 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %42, i32 0, i32 7, !dbg !1312
  store i16 %0, i16* %49, align 2, !dbg !1313, !tbaa !1314
  call void @l2cap_decline_connection_internal(i16 zeroext %0, i8 zeroext 1) #11, !dbg !1315
  br label %50

; <label>:50:                                     ; preds = %48, %36, %16, %13, %3
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #10, !dbg !1316
  ret void, !dbg !1316
}

; Function Attrs: nounwind optsize
define internal fastcc void @hid_connection_open(i16 zeroext, i8*, i8 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !1317 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !1323, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 1, metadata !1325, metadata !DIExpression()), !dbg !1329
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !1330
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #10, !dbg !1330
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !1326, metadata !DIExpression()), !dbg !1331
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1332, !tbaa !176
  %7 = icmp slt i8 %6, 0, !dbg !1332
  br i1 %7, label %8, label %15, !dbg !1334

; <label>:8:                                      ; preds = %3
  %9 = zext i16 %0 to i32, !dbg !1335
  %10 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1335
  %11 = load i8, i8* %10, align 1, !dbg !1335, !tbaa !176
  %12 = zext i8 %11 to i32, !dbg !1335
  %13 = zext i8 %2 to i32, !dbg !1335
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i32 %9, i32 %12, i32 %13) #12, !dbg !1335
  br label %15, !dbg !1335

; <label>:15:                                     ; preds = %8, %3
  %16 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1337
  call void @bt_flip_addr(i8* nonnull %5, i8* %16) #11, !dbg !1338
  %17 = call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* nonnull %5) #12, !dbg !1339
  call void @llvm.dbg.value(metadata %struct.hid_conn* %17, metadata !1327, metadata !DIExpression()), !dbg !1340
  %18 = icmp eq i8 %2, 1, !dbg !1341
  br i1 %18, label %19, label %62, !dbg !1343

; <label>:19:                                     ; preds = %15
  %20 = icmp eq %struct.hid_conn* %17, null, !dbg !1344
  %21 = getelementptr inbounds i8, i8* %1, i32 2
  br i1 %20, label %22, label %32, !dbg !1347

; <label>:22:                                     ; preds = %19
  %23 = load i8, i8* %21, align 1, !dbg !1348, !tbaa !176
  switch i8 %23, label %117 [
    i8 0, label %30
    i8 101, label %24
  ], !dbg !1351

; <label>:24:                                     ; preds = %22
  %25 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1352, !tbaa !150
  %26 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %25, i32 0, i32 5, !dbg !1357
  %27 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %26, align 4, !dbg !1357, !tbaa !1358
  %28 = icmp eq void (i8*, i32, i32, i8)* %27, null, !dbg !1352
  br i1 %28, label %117, label %29, !dbg !1360

; <label>:29:                                     ; preds = %24
  call void %27(i8* nonnull %5, i32 2, i32 16, i8 zeroext 1) #11, !dbg !1361
  br label %117, !dbg !1363

; <label>:30:                                     ; preds = %22
  %31 = call fastcc %struct.hid_conn* @__create_hid_conn(i8* nonnull %5) #12, !dbg !1364
  call void @llvm.dbg.value(metadata %struct.hid_conn* %31, metadata !1327, metadata !DIExpression()), !dbg !1340
  br label %32, !dbg !1365

; <label>:32:                                     ; preds = %30, %19
  %33 = phi %struct.hid_conn* [ %31, %30 ], [ %17, %19 ]
  call void @llvm.dbg.value(metadata %struct.hid_conn* %33, metadata !1327, metadata !DIExpression()), !dbg !1340
  %34 = load i8, i8* %21, align 1, !dbg !1366, !tbaa !176
  switch i8 %34, label %42 [
    i8 0, label %43
    i8 101, label %35
  ], !dbg !1368

; <label>:35:                                     ; preds = %32
  %36 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1369, !tbaa !150
  %37 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %36, i32 0, i32 5, !dbg !1374
  %38 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %37, align 4, !dbg !1374, !tbaa !1358
  %39 = icmp eq void (i8*, i32, i32, i8)* %38, null, !dbg !1369
  br i1 %39, label %42, label %40, !dbg !1375

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %33, i32 0, i32 1, i32 0, !dbg !1376
  call void %38(i8* %41, i32 2, i32 16, i8 zeroext 1) #11, !dbg !1378
  br label %42, !dbg !1379

; <label>:42:                                     ; preds = %40, %35, %32
  call fastcc void @__free_hid_conn(%struct.hid_conn* %33) #12, !dbg !1380
  br label %117, !dbg !1381

; <label>:43:                                     ; preds = %32
  %44 = load i32, i32* @config_asser, align 4, !dbg !1382, !tbaa !1386
  %45 = icmp eq i32 %44, 0, !dbg !1382
  %46 = icmp ne %struct.hid_conn* %33, null
  br i1 %45, label %51, label %47, !dbg !1387

; <label>:47:                                     ; preds = %43
  br i1 %46, label %53, label %48, !dbg !1389

; <label>:48:                                     ; preds = %47
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i32 0, i32 0), i32 241) #12, !dbg !1392
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !1396
  call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #11, !dbg !1398
  br label %53, !dbg !1392

; <label>:51:                                     ; preds = %43
  br i1 %46, label %53, label %52, !dbg !1400

; <label>:52:                                     ; preds = %51
  call fastcc void @cpu_reset() #12, !dbg !1403
  br label %53, !dbg !1403

; <label>:53:                                     ; preds = %52, %51, %48, %47
  %54 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %33, i32 0, i32 5, !dbg !1407
  store i16 %0, i16* %54, align 2, !dbg !1408, !tbaa !226
  %55 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %33, i32 0, i32 4, !dbg !1409
  %56 = load i8, i8* %55, align 2, !dbg !1409
  %57 = and i8 %56, 2, !dbg !1409
  %58 = icmp eq i8 %57, 0, !dbg !1411
  br i1 %58, label %62, label %59, !dbg !1412

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %33, i32 0, i32 1, i32 0, !dbg !1413
  %61 = call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @__hid_interrupt_packet_handler, i8* %60, i16 zeroext 19, i16 zeroext -1) #11, !dbg !1415
  br label %62, !dbg !1416

; <label>:62:                                     ; preds = %59, %53, %15
  %63 = phi %struct.hid_conn* [ %33, %59 ], [ %33, %53 ], [ %17, %15 ]
  call void @llvm.dbg.value(metadata %struct.hid_conn* %63, metadata !1327, metadata !DIExpression()), !dbg !1340
  %64 = icmp eq i8 %2, 2, !dbg !1417
  br i1 %64, label %65, label %116, !dbg !1419

; <label>:65:                                     ; preds = %62
  %66 = icmp eq %struct.hid_conn* %63, null, !dbg !1420
  br i1 %66, label %67, label %68, !dbg !1423

; <label>:67:                                     ; preds = %65
  call void @l2cap_disconnect_internal(i16 zeroext %0, i8 zeroext 19) #11, !dbg !1424
  br label %117, !dbg !1426

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1427
  %70 = load i8, i8* %69, align 1, !dbg !1427, !tbaa !176
  %71 = icmp eq i8 %70, 0, !dbg !1427
  br i1 %71, label %92, label %72, !dbg !1429

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %63, i32 0, i32 6, !dbg !1430
  store i16 0, i16* %73, align 2, !dbg !1432, !tbaa !373
  %74 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %63, i32 0, i32 4, !dbg !1433
  %75 = load i8, i8* %74, align 2, !dbg !1434
  %76 = and i8 %75, -25, !dbg !1434
  store i8 %76, i8* %74, align 2, !dbg !1434
  %77 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %63, i32 0, i32 7, !dbg !1435
  %78 = load i16, i16* %77, align 2, !dbg !1435, !tbaa !1314
  %79 = zext i16 %78 to i32, !dbg !1437
  %80 = icmp eq i16 %78, 0, !dbg !1438
  br i1 %80, label %117, label %81, !dbg !1439

; <label>:81:                                     ; preds = %72
  %82 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1440, !tbaa !176
  %83 = icmp slt i8 %82, 0, !dbg !1440
  br i1 %83, label %84, label %87, !dbg !1443

; <label>:84:                                     ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i32 0, i32 0), i32 %79) #12, !dbg !1444
  %86 = load i16, i16* %77, align 2, !tbaa !1314
  br label %87, !dbg !1444

; <label>:87:                                     ; preds = %84, %81
  %88 = phi i16 [ %86, %84 ], [ %78, %81 ], !dbg !1446
  store i16 %88, i16* %73, align 2, !dbg !1447, !tbaa !373
  call void @l2cap_accept_connection_internal(i16 zeroext %88) #11, !dbg !1448
  %89 = load i8, i8* %74, align 2, !dbg !1449
  %90 = and i8 %89, -25, !dbg !1449
  %91 = or i8 %90, 16, !dbg !1449
  store i8 %91, i8* %74, align 2, !dbg !1449
  store i16 0, i16* %77, align 2, !dbg !1450, !tbaa !1314
  br label %117, !dbg !1451

; <label>:92:                                     ; preds = %68
  %93 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %63, i32 0, i32 4, !dbg !1452
  %94 = load i8, i8* %93, align 2, !dbg !1454
  %95 = and i8 %94, -27, !dbg !1455
  store i8 %95, i8* %93, align 2, !dbg !1455
  %96 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %63, i32 0, i32 6, !dbg !1456
  store i16 %0, i16* %96, align 2, !dbg !1457, !tbaa !373
  %97 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1458, !tbaa !150
  %98 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %97, i32 0, i32 5, !dbg !1460
  %99 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %98, align 4, !dbg !1460, !tbaa !1358
  %100 = icmp eq void (i8*, i32, i32, i8)* %99, null, !dbg !1458
  br i1 %100, label %103, label %101, !dbg !1461

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %63, i32 0, i32 1, i32 0, !dbg !1462
  call void %99(i8* %102, i32 1, i32 16, i8 zeroext 1) #11, !dbg !1464
  br label %103, !dbg !1465

; <label>:103:                                    ; preds = %101, %92
  %104 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %63, i32 0, i32 7, !dbg !1466
  %105 = load i16, i16* %104, align 2, !dbg !1466, !tbaa !1314
  %106 = zext i16 %105 to i32, !dbg !1468
  %107 = icmp eq i16 %105, 0, !dbg !1469
  br i1 %107, label %116, label %108, !dbg !1470

; <label>:108:                                    ; preds = %103
  %109 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1471, !tbaa !176
  %110 = icmp slt i8 %109, 0, !dbg !1471
  br i1 %110, label %111, label %114, !dbg !1474

; <label>:111:                                    ; preds = %108
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i32 %106) #12, !dbg !1475
  %113 = load i16, i16* %104, align 2, !tbaa !1314
  br label %114, !dbg !1475

; <label>:114:                                    ; preds = %111, %108
  %115 = phi i16 [ %113, %111 ], [ %105, %108 ], !dbg !1477
  call void @l2cap_decline_connection_internal(i16 zeroext %115, i8 zeroext 4) #11, !dbg !1478
  store i16 0, i16* %104, align 2, !dbg !1479, !tbaa !1314
  br label %116, !dbg !1480

; <label>:116:                                    ; preds = %114, %103, %62
  call fastcc void @hid_diy_state_sync(i32 1, i8* nonnull %5, i16 zeroext %0) #12, !dbg !1481
  br label %117, !dbg !1482

; <label>:117:                                    ; preds = %116, %87, %72, %67, %42, %29, %24, %22
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #10, !dbg !1482
  ret void, !dbg !1483
}

; Function Attrs: nounwind optsize
define internal fastcc void @hid_connection_close(i16 zeroext, i8 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !1485 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1489, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %1, metadata !1490, metadata !DIExpression()), !dbg !1493
  %3 = icmp eq i8 %1, 1, !dbg !1494
  br i1 %3, label %4, label %23, !dbg !1496

; <label>:4:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i16 %0, metadata !210, metadata !DIExpression()), !dbg !1497
  %5 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !1500
  %6 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %5, i32 0, i32 0, i32 0, i32 0, !dbg !1500
  %7 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %5, i32 0, i32 0, i32 0, i32 1
  br label %8, !dbg !1501

; <label>:8:                                      ; preds = %18, %4
  %9 = phi %struct.hid_conn* [ %6, %4 ], [ %19, %18 ]
  %10 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 0, i32 5, !dbg !1502
  %11 = load i16, i16* %10, align 2, !dbg !1502, !tbaa !226
  %12 = icmp eq i16 %11, %0, !dbg !1503
  br i1 %12, label %13, label %18, !dbg !1504

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 0, i32 4, !dbg !1505
  %15 = load i8, i8* %14, align 2, !dbg !1505
  %16 = and i8 %15, 1, !dbg !1505
  %17 = icmp eq i8 %16, 0, !dbg !1506
  br i1 %17, label %18, label %21, !dbg !1507

; <label>:18:                                     ; preds = %13, %8
  %19 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %9, i32 1, !dbg !1508
  call void @llvm.dbg.value(metadata %struct.hid_conn* %19, metadata !215, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata %struct.hid_conn* %19, metadata !215, metadata !DIExpression()), !dbg !1509
  %20 = icmp ult %struct.hid_conn* %19, %7, !dbg !1510
  br i1 %20, label %8, label %22, !dbg !1501, !llvm.loop !241

; <label>:21:                                     ; preds = %13
  call void @llvm.dbg.value(metadata %struct.hid_conn* %9, metadata !1491, metadata !DIExpression()), !dbg !1511
  store i16 0, i16* %10, align 2, !dbg !1512, !tbaa !226
  br label %23, !dbg !1515

; <label>:22:                                     ; preds = %18
  br label %23, !dbg !1511

; <label>:23:                                     ; preds = %22, %21, %2
  %24 = phi %struct.hid_conn* [ %9, %21 ], [ undef, %2 ], [ null, %22 ]
  call void @llvm.dbg.value(metadata %struct.hid_conn* %24, metadata !1491, metadata !DIExpression()), !dbg !1511
  %25 = icmp eq i8 %1, 2, !dbg !1516
  br i1 %25, label %26, label %45, !dbg !1518

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i16 %0, metadata !909, metadata !DIExpression()), !dbg !1519
  %27 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !1522
  %28 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %27, i32 0, i32 0, i32 0, i32 0, !dbg !1522
  %29 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %27, i32 0, i32 0, i32 0, i32 1
  br label %30, !dbg !1523

; <label>:30:                                     ; preds = %40, %26
  %31 = phi %struct.hid_conn* [ %28, %26 ], [ %41, %40 ]
  %32 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %31, i32 0, i32 6, !dbg !1524
  %33 = load i16, i16* %32, align 2, !dbg !1524, !tbaa !373
  %34 = icmp eq i16 %33, %0, !dbg !1525
  br i1 %34, label %35, label %40, !dbg !1526

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %31, i32 0, i32 4, !dbg !1527
  %37 = load i8, i8* %36, align 2, !dbg !1527
  %38 = and i8 %37, 1, !dbg !1527
  %39 = icmp eq i8 %38, 0, !dbg !1528
  br i1 %39, label %40, label %43, !dbg !1529

; <label>:40:                                     ; preds = %35, %30
  %41 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %31, i32 1, !dbg !1530
  call void @llvm.dbg.value(metadata %struct.hid_conn* %41, metadata !912, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata %struct.hid_conn* %41, metadata !912, metadata !DIExpression()), !dbg !1531
  %42 = icmp ult %struct.hid_conn* %41, %29, !dbg !1532
  br i1 %42, label %30, label %64, !dbg !1523, !llvm.loop !935

; <label>:43:                                     ; preds = %35
  call void @llvm.dbg.value(metadata %struct.hid_conn* %31, metadata !1491, metadata !DIExpression()), !dbg !1511
  store i16 0, i16* %32, align 2, !dbg !1533, !tbaa !373
  %44 = and i8 %37, -25, !dbg !1536
  store i8 %44, i8* %36, align 2, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.hid_conn* %24, metadata !1491, metadata !DIExpression()), !dbg !1511
  br label %47, !dbg !1537

; <label>:45:                                     ; preds = %23
  call void @llvm.dbg.value(metadata %struct.hid_conn* %24, metadata !1491, metadata !DIExpression()), !dbg !1511
  %46 = icmp eq %struct.hid_conn* %24, null, !dbg !1539
  br i1 %46, label %65, label %47, !dbg !1537

; <label>:47:                                     ; preds = %45, %43
  %48 = phi %struct.hid_conn* [ %31, %43 ], [ %24, %45 ]
  %49 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %48, i32 0, i32 5, !dbg !1540
  %50 = load i16, i16* %49, align 2, !dbg !1540, !tbaa !226
  %51 = icmp eq i16 %50, 0, !dbg !1542
  br i1 %51, label %52, label %65, !dbg !1543

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %48, i32 0, i32 6, !dbg !1544
  %54 = load i16, i16* %53, align 2, !dbg !1544, !tbaa !373
  %55 = icmp eq i16 %54, 0, !dbg !1546
  br i1 %55, label %56, label %65, !dbg !1547

; <label>:56:                                     ; preds = %52
  %57 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1549, !tbaa !150
  %58 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %57, i32 0, i32 5, !dbg !1552
  %59 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %58, align 4, !dbg !1552, !tbaa !1358
  %60 = icmp eq void (i8*, i32, i32, i8)* %59, null, !dbg !1549
  br i1 %60, label %63, label %61, !dbg !1553

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %48, i32 0, i32 1, i32 0, !dbg !1554
  tail call void %59(i8* %62, i32 0, i32 16, i8 zeroext 0) #11, !dbg !1556
  br label %63, !dbg !1557

; <label>:63:                                     ; preds = %61, %56
  tail call fastcc void @__free_hid_conn(%struct.hid_conn* nonnull %48) #12, !dbg !1558
  br label %65, !dbg !1559

; <label>:64:                                     ; preds = %40
  br label %65, !dbg !1560

; <label>:65:                                     ; preds = %64, %63, %52, %47, %45
  ret void, !dbg !1560
}

; Function Attrs: nounwind optsize
define internal fastcc void @hid_monitor_connection_open(i16 zeroext, i8*, i8 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !1561 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 0, metadata !1565, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i8 0, metadata !1567, metadata !DIExpression()), !dbg !1571
  %5 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #10, !dbg !1572
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !1568, metadata !DIExpression()), !dbg !1573
  %6 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1574
  call void @bt_flip_addr(i8* nonnull %5, i8* %6) #11, !dbg !1575
  %7 = call fastcc %struct.hid_conn* @__hid_conn_for_addr(i8* nonnull %5) #12, !dbg !1576
  call void @llvm.dbg.value(metadata %struct.hid_conn* %7, metadata !1569, metadata !DIExpression()), !dbg !1577
  %8 = icmp eq i8 %2, 1, !dbg !1578
  br i1 %8, label %9, label %30, !dbg !1580

; <label>:9:                                      ; preds = %3
  %10 = icmp eq %struct.hid_conn* %7, null, !dbg !1581
  br i1 %10, label %11, label %17, !dbg !1584

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1585
  %13 = load i8, i8* %12, align 1, !dbg !1585, !tbaa !176
  %14 = icmp eq i8 %13, 0, !dbg !1585
  br i1 %14, label %15, label %63, !dbg !1588

; <label>:15:                                     ; preds = %11
  %16 = call fastcc %struct.hid_conn* @__create_hid_conn(i8* nonnull %5) #12, !dbg !1589
  call void @llvm.dbg.value(metadata %struct.hid_conn* %16, metadata !1569, metadata !DIExpression()), !dbg !1577
  br label %17, !dbg !1590

; <label>:17:                                     ; preds = %15, %9
  %18 = phi %struct.hid_conn* [ %7, %9 ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata %struct.hid_conn* %18, metadata !1569, metadata !DIExpression()), !dbg !1577
  %19 = load i32, i32* @config_asser, align 4, !dbg !1591, !tbaa !1386
  %20 = icmp eq i32 %19, 0, !dbg !1591
  %21 = icmp ne %struct.hid_conn* %18, null
  br i1 %20, label %26, label %22, !dbg !1595

; <label>:22:                                     ; preds = %17
  br i1 %21, label %28, label %23, !dbg !1597

; <label>:23:                                     ; preds = %22
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i32 0, i32 0), i32 297) #12, !dbg !1600
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !1604
  call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #11, !dbg !1606
  br label %28, !dbg !1600

; <label>:26:                                     ; preds = %17
  br i1 %21, label %28, label %27, !dbg !1608

; <label>:27:                                     ; preds = %26
  call fastcc void @cpu_reset() #12, !dbg !1611
  br label %28, !dbg !1611

; <label>:28:                                     ; preds = %27, %26, %23, %22
  %29 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %18, i32 0, i32 5, !dbg !1615
  store i16 %0, i16* %29, align 2, !dbg !1616, !tbaa !226
  br label %30, !dbg !1617

; <label>:30:                                     ; preds = %28, %3
  %31 = phi %struct.hid_conn* [ %18, %28 ], [ %7, %3 ]
  call void @llvm.dbg.value(metadata %struct.hid_conn* %31, metadata !1569, metadata !DIExpression()), !dbg !1577
  %32 = icmp eq i8 %2, 2, !dbg !1618
  br i1 %32, label %33, label %63, !dbg !1620

; <label>:33:                                     ; preds = %30
  %34 = icmp eq %struct.hid_conn* %31, null, !dbg !1621
  br i1 %34, label %35, label %46, !dbg !1624

; <label>:35:                                     ; preds = %33
  %36 = call fastcc %struct.hid_conn* @__create_hid_conn(i8* nonnull %5) #12, !dbg !1625
  call void @llvm.dbg.value(metadata %struct.hid_conn* %36, metadata !1569, metadata !DIExpression()), !dbg !1577
  %37 = load i32, i32* @config_asser, align 4, !dbg !1627, !tbaa !1386
  %38 = icmp eq i32 %37, 0, !dbg !1627
  %39 = icmp ne %struct.hid_conn* %36, null
  br i1 %38, label %44, label %40, !dbg !1631

; <label>:40:                                     ; preds = %35
  br i1 %39, label %46, label %41, !dbg !1633

; <label>:41:                                     ; preds = %40
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i32 0, i32 0), i32 305) #12, !dbg !1636
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !1640
  call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #11, !dbg !1642
  br label %46, !dbg !1636

; <label>:44:                                     ; preds = %35
  br i1 %39, label %46, label %45, !dbg !1644

; <label>:45:                                     ; preds = %44
  call fastcc void @cpu_reset() #12, !dbg !1647
  br label %46, !dbg !1647

; <label>:46:                                     ; preds = %45, %44, %41, %40, %33
  %47 = phi %struct.hid_conn* [ %36, %40 ], [ null, %41 ], [ %36, %44 ], [ null, %45 ], [ %31, %33 ]
  call void @llvm.dbg.value(metadata %struct.hid_conn* %47, metadata !1569, metadata !DIExpression()), !dbg !1577
  %48 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1651
  %49 = load i8, i8* %48, align 1, !dbg !1651, !tbaa !176
  %50 = icmp eq i8 %49, 0, !dbg !1651
  %51 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %47, i32 0, i32 6
  br i1 %50, label %56, label %52, !dbg !1653

; <label>:52:                                     ; preds = %46
  store i16 0, i16* %51, align 2, !dbg !1654, !tbaa !373
  %53 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %47, i32 0, i32 4, !dbg !1656
  %54 = load i8, i8* %53, align 2, !dbg !1657
  %55 = and i8 %54, -25, !dbg !1657
  store i8 %55, i8* %53, align 2, !dbg !1657
  br label %63, !dbg !1658

; <label>:56:                                     ; preds = %46
  store i16 %0, i16* %51, align 2, !dbg !1659, !tbaa !373
  %57 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !1661, !tbaa !150
  %58 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %57, i32 0, i32 5, !dbg !1663
  %59 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %58, align 4, !dbg !1663, !tbaa !1358
  %60 = icmp eq void (i8*, i32, i32, i8)* %59, null, !dbg !1661
  br i1 %60, label %63, label %61, !dbg !1664

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %47, i32 0, i32 1, i32 0, !dbg !1665
  call void %59(i8* %62, i32 1, i32 16, i8 zeroext 0) #11, !dbg !1667
  br label %63, !dbg !1668

; <label>:63:                                     ; preds = %61, %56, %52, %30, %11
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #10, !dbg !1669
  ret void, !dbg !1670
}

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc %struct.hid_conn* @__create_hid_conn(i8* nocapture readonly) unnamed_addr #4 section ".bt_stack_code" !dbg !1672 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1674, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata %struct.hid_conn* %3, metadata !1675, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata %struct.hid_conn* %3, metadata !1675, metadata !DIExpression()), !dbg !1677
  %2 = load %struct.hid_handl*, %struct.hid_handl** @hid, align 4, !dbg !1678
  %3 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %2, i32 0, i32 0, i32 0, i32 0, !dbg !1678
  %4 = getelementptr inbounds %struct.hid_handl, %struct.hid_handl* %2, i32 0, i32 0, i32 0, i32 1
  br label %5, !dbg !1680

; <label>:5:                                      ; preds = %19, %1
  %6 = phi %struct.hid_conn* [ %3, %1 ], [ %20, %19 ]
  %7 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 4, !dbg !1682
  %8 = load i8, i8* %7, align 2, !dbg !1682
  %9 = and i8 %8, 1, !dbg !1682
  %10 = icmp eq i8 %9, 0, !dbg !1686
  br i1 %10, label %11, label %19, !dbg !1687

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 5, !dbg !1688
  store i16 0, i16* %12, align 2, !dbg !1690, !tbaa !226
  %13 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 6, !dbg !1691
  store i16 0, i16* %13, align 2, !dbg !1692, !tbaa !373
  %14 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 2, !dbg !1693
  store i8 0, i8* %14, align 2, !dbg !1694, !tbaa !414
  %15 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 7, !dbg !1695
  store i16 0, i16* %15, align 2, !dbg !1696, !tbaa !1314
  %16 = and i8 %8, -4, !dbg !1697
  %17 = or i8 %16, 1, !dbg !1697
  store i8 %17, i8* %7, align 2, !dbg !1697
  %18 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 0, i32 1, i32 0, !dbg !1698
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %0, i32 6, i32 1, i1 false), !dbg !1698
  br label %23, !dbg !1699

; <label>:19:                                     ; preds = %5
  %20 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %6, i32 1, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.hid_conn* %20, metadata !1675, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata %struct.hid_conn* %20, metadata !1675, metadata !DIExpression()), !dbg !1677
  %21 = icmp ult %struct.hid_conn* %20, %4, !dbg !1702
  br i1 %21, label %5, label %22, !dbg !1680, !llvm.loop !1704

; <label>:22:                                     ; preds = %19
  br label %23, !dbg !1706

; <label>:23:                                     ; preds = %22, %11
  %24 = phi %struct.hid_conn* [ %6, %11 ], [ null, %22 ]
  ret %struct.hid_conn* %24, !dbg !1706
}

; Function Attrs: optsize
declare void @l2cap_accept_connection_internal(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_decline_connection_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @__free_hid_conn(%struct.hid_conn*) unnamed_addr #4 section ".bt_stack_code" !dbg !1707 {
  call void @llvm.dbg.value(metadata %struct.hid_conn* %0, metadata !1709, metadata !DIExpression()), !dbg !1710
  %2 = icmp eq %struct.hid_conn* %0, null, !dbg !1711
  br i1 %2, label %13, label %3, !dbg !1713

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %0, i32 0, i32 4, !dbg !1714
  %5 = load i8, i8* %4, align 2, !dbg !1715
  %6 = and i8 %5, -2, !dbg !1715
  store i8 %6, i8* %4, align 2, !dbg !1715
  %7 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %0, i32 0, i32 5, !dbg !1716
  store i16 0, i16* %7, align 2, !dbg !1717, !tbaa !226
  %8 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %0, i32 0, i32 6, !dbg !1718
  store i16 0, i16* %8, align 2, !dbg !1719, !tbaa !373
  %9 = getelementptr inbounds %struct.hid_conn, %struct.hid_conn* %0, i32 0, i32 1, i32 0, !dbg !1720
  call void @llvm.dbg.value(metadata i32 2, metadata !1144, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* null, metadata !1145, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i16 0, metadata !1146, metadata !DIExpression()), !dbg !1724
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 7, i32 2, i1 false), !dbg !1725
  %10 = load void (i32, i8*, i32)*, void (i32, i8*, i32)** @hid_msg_callback, align 4, !dbg !1726, !tbaa !150
  %11 = icmp eq void (i32, i8*, i32)* %10, null, !dbg !1726
  br i1 %11, label %13, label %12, !dbg !1727

; <label>:12:                                     ; preds = %3
  tail call void %10(i32 2, i8* null, i32 0) #11, !dbg !1728
  br label %13, !dbg !1729

; <label>:13:                                     ; preds = %12, %3, %1
  ret void, !dbg !1730
}

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #9 !dbg !1732 {
  tail call void @p33_soft_reset() #11, !dbg !1735
  ret void, !dbg !1736
}

; Function Attrs: optsize
declare zeroext i8 @l2cap_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @hid_inter_try_send(i16 zeroext) unnamed_addr #4 section ".bt_stack_code" !dbg !1737 {
  %2 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i16 %0, metadata !1739, metadata !DIExpression()), !dbg !1741
  %3 = load i8, i8* @diy_data_len, align 1, !dbg !1742, !tbaa !176
  %4 = icmp eq i8 %3, 0, !dbg !1744
  br i1 %4, label %15, label %5, !dbg !1745

; <label>:5:                                      ; preds = %1
  %6 = zext i8 %3 to i16, !dbg !1746
  %7 = tail call i32 @l2cap_send_internal(i16 zeroext %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @diy_data_buf, i32 0, i32 0), i16 zeroext %6, i8 zeroext 0) #11, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %7, metadata !1740, metadata !DIExpression()), !dbg !1748
  %8 = icmp eq i32 %7, 0, !dbg !1749
  br i1 %8, label %9, label %15, !dbg !1751

; <label>:9:                                      ; preds = %5
  store i8 0, i8* @diy_data_len, align 1, !dbg !1752, !tbaa !176
  %10 = bitcast i16* %2 to i8*, !dbg !1754
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %10), !dbg !1754
  call void @llvm.dbg.value(metadata i32 3, metadata !1144, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8* null, metadata !1145, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i16 %0, metadata !1146, metadata !DIExpression()), !dbg !1757
  store i16 %0, i16* %2, align 2, !tbaa !1160
  %11 = load void (i32, i8*, i32)*, void (i32, i8*, i32)** @hid_msg_callback, align 4, !dbg !1758, !tbaa !150
  %12 = icmp eq void (i32, i8*, i32)* %11, null, !dbg !1758
  br i1 %12, label %14, label %13, !dbg !1759

; <label>:13:                                     ; preds = %9
  call void %11(i32 3, i8* nonnull %10, i32 2) #11, !dbg !1760
  br label %14, !dbg !1761

; <label>:14:                                     ; preds = %13, %9
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %10), !dbg !1762
  br label %15, !dbg !1763

; <label>:15:                                     ; preds = %14, %5, %1
  ret void, !dbg !1764
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!136, !137}
!llvm.ident = !{!138}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !135, line: 190, type: !33, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !22)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/hid.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 31, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15}
!8 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!9 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!10 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!11 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!12 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!13 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!14 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!15 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 11, baseType: !21)
!20 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!0, !23, !36, !41, !109, !111, !121, !123, !125, !130}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "bt_suspend_hid_resumehid_release", scope: !2, file: !3, line: 815, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !27, line: 313, size: 96, elements: !28)
!27 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!28 = !{!29, !34, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !26, file: !27, line: 314, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, null}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !26, file: !27, line: 315, baseType: !30, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !26, file: !27, line: 316, baseType: !30, size: 32, offset: 64)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "diy_data_buf", scope: !2, file: !3, line: 25, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 240, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 30)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "hid", scope: !2, file: !3, line: 19, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_handl", file: !45, line: 141, size: 416, elements: !46)
!45 = !DIFile(filename: "../btstack/Profile/include/bredr/hid_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!46 = !{!47, !92}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "hid_core_data", scope: !44, file: !45, line: 142, baseType: !48, size: 304)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "hid_core_data_t", file: !45, line: 139, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 135, size: 304, elements: !50)
!50 = !{!51, !77, !84}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !49, file: !45, line: 136, baseType: !52, size: 208)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 208, elements: !75)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_conn", file: !45, line: 120, size: 208, elements: !54)
!54 = !{!55, !59, !63, !64, !65, !66, !67, !68, !69, !70, !73, !74}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !53, file: !45, line: 121, baseType: !56, size: 80)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 80, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 10)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !53, file: !45, line: 122, baseType: !60, size: 48, offset: 80)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 48, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 6)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "send_step", scope: !53, file: !45, line: 123, baseType: !19, size: 8, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "send_continue", scope: !53, file: !45, line: 124, baseType: !19, size: 8, offset: 136)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !53, file: !45, line: 125, baseType: !19, size: 1, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "connect_inter_channel", scope: !53, file: !45, line: 126, baseType: !19, size: 1, offset: 145, flags: DIFlagBitField, extraData: i64 144)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "hid_background", scope: !53, file: !45, line: 127, baseType: !19, size: 1, offset: 146, flags: DIFlagBitField, extraData: i64 144)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "income_con_flag", scope: !53, file: !45, line: 128, baseType: !19, size: 2, offset: 147, flags: DIFlagBitField, extraData: i64 144)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf_len", scope: !53, file: !45, line: 129, baseType: !19, size: 3, offset: 149, flags: DIFlagBitField, extraData: i64 144)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_channel", scope: !53, file: !45, line: 130, baseType: !71, size: 16, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 13, baseType: !72)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "inter_channel", scope: !53, file: !45, line: 131, baseType: !71, size: 16, offset: 176)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pending_channel", scope: !53, file: !45, line: 132, baseType: !71, size: 16, offset: 192)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "hid_kb_cmd", scope: !49, file: !45, line: 137, baseType: !78, size: 48, offset: 208)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_keyboard_cmd", file: !45, line: 85, size: 48, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "HIDP_Hdr", scope: !78, file: !45, line: 87, baseType: !19, size: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "report_id", scope: !78, file: !45, line: 89, baseType: !19, size: 8, offset: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "key_cmd1", scope: !78, file: !45, line: 92, baseType: !71, size: 16, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "key_cmd2", scope: !78, file: !45, line: 93, baseType: !71, size: 16, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "hid_AC_cmd", scope: !49, file: !45, line: 138, baseType: !85, size: 40, offset: 256)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HID_AC_CMD", file: !45, line: 101, size: 40, elements: !86)
!86 = !{!87, !88, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "HIDP_Hdr", scope: !85, file: !45, line: 103, baseType: !19, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "report_id", scope: !85, file: !45, line: 105, baseType: !89, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 15, baseType: !90)
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !85, file: !45, line: 106, baseType: !89, size: 24, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !44, file: !45, line: 143, baseType: !93, size: 96, offset: 320)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "run_loop", file: !94, line: 9, size: 96, elements: !95)
!94 = !DIFile(filename: "../btcommon/run_loop.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!95 = !{!96, !103, !108}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !93, file: !94, line: 10, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !98, line: 55, baseType: !99)
!98 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !98, line: 53, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !98, line: 54, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !93, file: !94, line: 11, baseType: !104, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !93, file: !94, line: 12, baseType: !17, size: 32, offset: 64)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "hid_run_loop_buy", scope: !2, file: !3, line: 27, type: !19, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "ios_key_down", scope: !2, file: !3, line: 57, type: !113, isLocal: true, isDefinition: true)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_mouse_cmd", file: !45, line: 110, size: 40, elements: !115)
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "HIDP_Hdr", scope: !114, file: !45, line: 112, baseType: !19, size: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "report_id", scope: !114, file: !45, line: 114, baseType: !19, size: 8, offset: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "point_x", scope: !114, file: !45, line: 115, baseType: !19, size: 8, offset: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "point_y", scope: !114, file: !45, line: 116, baseType: !19, size: 8, offset: 24)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !114, file: !45, line: 117, baseType: !19, size: 8, offset: 32)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "ios_key_up", scope: !2, file: !3, line: 64, type: !113, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "diy_data_len", scope: !2, file: !3, line: 26, type: !19, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "hid_msg_callback", scope: !2, file: !3, line: 22, type: !127, isLocal: true, isDefinition: true)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !89, !18, !89}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "hid_interrupt_callback", scope: !2, file: !3, line: 23, type: !132, isLocal: true, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !18, !89, !71}
!135 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!136 = !{i32 2, !"Dwarf Version", i32 4}
!137 = !{i32 2, !"Debug Info Version", i32 3}
!138 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!139 = distinct !DISubprogram(name: "hid_init", scope: !3, file: !3, line: 820, type: !140, isLocal: false, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !144)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142, !17}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "hid_stack_t", file: !45, line: 144, baseType: !44)
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "hid_t", arg: 1, scope: !139, file: !3, line: 820, type: !142)
!146 = !DILocalVariable(name: "var", arg: 2, scope: !139, file: !3, line: 820, type: !17)
!147 = !DILocation(line: 820, column: 28, scope: !139)
!148 = !DILocation(line: 820, column: 41, scope: !139)
!149 = !DILocation(line: 822, column: 9, scope: !139)
!150 = !{!151, !151, i64 0}
!151 = !{!"any pointer", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C/C++ TBAA"}
!154 = !DILocation(line: 823, column: 5, scope: !139)
!155 = !DILocation(line: 828, column: 5, scope: !139)
!156 = !DILocation(line: 831, column: 5, scope: !139)
!157 = !DILocation(line: 833, column: 30, scope: !139)
!158 = !DILocation(line: 833, column: 35, scope: !139)
!159 = !DILocation(line: 833, column: 5, scope: !139)
!160 = !DILocation(line: 834, column: 1, scope: !139)
!161 = distinct !DISubprogram(name: "__hid_ctrl_packet_handler", scope: !3, file: !3, line: 500, type: !162, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !19, !71, !18, !71}
!164 = !{!165, !166, !167, !168}
!165 = !DILocalVariable(name: "packet_type", arg: 1, scope: !161, file: !3, line: 500, type: !19)
!166 = !DILocalVariable(name: "channel", arg: 2, scope: !161, file: !3, line: 500, type: !71)
!167 = !DILocalVariable(name: "packet", arg: 3, scope: !161, file: !3, line: 501, type: !18)
!168 = !DILocalVariable(name: "size", arg: 4, scope: !161, file: !3, line: 501, type: !71)
!169 = !DILocation(line: 500, column: 42, scope: !161)
!170 = !DILocation(line: 500, column: 59, scope: !161)
!171 = !DILocation(line: 501, column: 43, scope: !161)
!172 = !DILocation(line: 501, column: 55, scope: !161)
!173 = !DILocation(line: 503, column: 5, scope: !161)
!174 = !DILocation(line: 505, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !161, file: !3, line: 503, column: 26)
!176 = !{!152, !152, i64 0}
!177 = !DILocation(line: 505, column: 9, scope: !175)
!178 = !DILocation(line: 507, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 505, column: 28)
!180 = !DILocation(line: 508, column: 13, scope: !179)
!181 = !DILocation(line: 462, column: 13, scope: !182, inlinedAt: !190)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 462, column: 13)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 460, column: 26)
!184 = distinct !DISubprogram(name: "hid_ctrl_packet_handler", scope: !3, file: !3, line: 457, type: !162, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DILocalVariable(name: "packet_type", arg: 1, scope: !184, file: !3, line: 457, type: !19)
!187 = !DILocalVariable(name: "channel", arg: 2, scope: !184, file: !3, line: 457, type: !71)
!188 = !DILocalVariable(name: "packet", arg: 3, scope: !184, file: !3, line: 458, type: !18)
!189 = !DILocalVariable(name: "size", arg: 4, scope: !184, file: !3, line: 458, type: !71)
!190 = distinct !DILocation(line: 511, column: 5, scope: !161)
!191 = !DILocation(line: 462, column: 13, scope: !183, inlinedAt: !190)
!192 = !DILocation(line: 463, column: 44, scope: !193, inlinedAt: !190)
!193 = distinct !DILexicalBlock(scope: !182, file: !3, line: 462, column: 37)
!194 = !DILocation(line: 463, column: 13, scope: !193, inlinedAt: !190)
!195 = !DILocation(line: 464, column: 9, scope: !193, inlinedAt: !190)
!196 = !DILocalVariable(name: "size", arg: 3, scope: !197, file: !3, line: 367, type: !33)
!197 = distinct !DISubprogram(name: "hid_ctrl_data_parse", scope: !3, file: !3, line: 367, type: !198, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !202)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !71, !200, !33}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!202 = !{!203, !204, !196, !205}
!203 = !DILocalVariable(name: "channel", arg: 1, scope: !197, file: !3, line: 367, type: !71)
!204 = !DILocalVariable(name: "packet", arg: 2, scope: !197, file: !3, line: 367, type: !200)
!205 = !DILocalVariable(name: "conn", scope: !197, file: !3, line: 370, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "hid_conn_t", file: !45, line: 133, baseType: !53)
!208 = !DILocation(line: 367, column: 68, scope: !197, inlinedAt: !209)
!209 = distinct !DILocation(line: 465, column: 9, scope: !183, inlinedAt: !190)
!210 = !DILocalVariable(name: "channel", arg: 1, scope: !211, file: !3, line: 115, type: !71)
!211 = distinct !DISubprogram(name: "__hid_conn_for_channel", scope: !3, file: !3, line: 115, type: !212, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!206, !71}
!214 = !{!210, !215}
!215 = !DILocalVariable(name: "conn", scope: !211, file: !3, line: 117, type: !206)
!216 = !DILocation(line: 115, column: 47, scope: !211, inlinedAt: !217)
!217 = distinct !DILocation(line: 370, column: 25, scope: !197, inlinedAt: !209)
!218 = !DILocation(line: 118, column: 5, scope: !219, inlinedAt: !217)
!219 = distinct !DILexicalBlock(scope: !211, file: !3, line: 118, column: 5)
!220 = !DILocation(line: 118, column: 5, scope: !221, inlinedAt: !217)
!221 = !DILexicalBlockFile(scope: !219, file: !3, discriminator: 1)
!222 = !DILocation(line: 119, column: 19, scope: !223, inlinedAt: !217)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 119, column: 13)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 118, column: 34)
!225 = distinct !DILexicalBlock(scope: !219, file: !3, line: 118, column: 5)
!226 = !{!227, !228, i64 20}
!227 = !{!"hid_conn", !152, i64 0, !152, i64 10, !152, i64 16, !152, i64 17, !152, i64 18, !152, i64 18, !152, i64 18, !152, i64 18, !152, i64 18, !228, i64 20, !228, i64 22, !228, i64 24}
!228 = !{!"short", !152, i64 0}
!229 = !DILocation(line: 119, column: 32, scope: !223, inlinedAt: !217)
!230 = !DILocation(line: 119, column: 43, scope: !223, inlinedAt: !217)
!231 = !DILocation(line: 119, column: 53, scope: !232, inlinedAt: !217)
!232 = !DILexicalBlockFile(scope: !223, file: !3, discriminator: 1)
!233 = !DILocation(line: 119, column: 60, scope: !232, inlinedAt: !217)
!234 = !DILocation(line: 119, column: 13, scope: !235, inlinedAt: !217)
!235 = !DILexicalBlockFile(scope: !224, file: !3, discriminator: 1)
!236 = !DILocation(line: 118, column: 5, scope: !237, inlinedAt: !217)
!237 = !DILexicalBlockFile(scope: !225, file: !3, discriminator: 2)
!238 = !DILocation(line: 117, column: 17, scope: !211, inlinedAt: !217)
!239 = !DILocation(line: 118, column: 5, scope: !240, inlinedAt: !217)
!240 = !DILexicalBlockFile(scope: !225, file: !3, discriminator: 1)
!241 = distinct !{!241, !242, !243}
!242 = !DILocation(line: 118, column: 5, scope: !219)
!243 = !DILocation(line: 122, column: 5, scope: !219)
!244 = !DILocation(line: 370, column: 17, scope: !197, inlinedAt: !209)
!245 = !DILocation(line: 374, column: 13, scope: !197, inlinedAt: !209)
!246 = !DILocation(line: 374, column: 23, scope: !197, inlinedAt: !209)
!247 = !DILocation(line: 374, column: 5, scope: !197, inlinedAt: !209)
!248 = !DILocation(line: 379, column: 9, scope: !249, inlinedAt: !209)
!249 = distinct !DILexicalBlock(scope: !197, file: !3, line: 374, column: 31)
!250 = !DILocation(line: 379, column: 25, scope: !249, inlinedAt: !209)
!251 = !DILocation(line: 380, column: 26, scope: !249, inlinedAt: !209)
!252 = !DILocation(line: 381, column: 9, scope: !249, inlinedAt: !209)
!253 = !DILocation(line: 382, column: 9, scope: !249, inlinedAt: !209)
!254 = !DILocation(line: 384, column: 24, scope: !255, inlinedAt: !209)
!255 = distinct !DILexicalBlock(scope: !249, file: !3, line: 384, column: 13)
!256 = !DILocation(line: 384, column: 32, scope: !255, inlinedAt: !209)
!257 = !DILocation(line: 384, column: 13, scope: !249, inlinedAt: !209)
!258 = !DILocation(line: 385, column: 13, scope: !259, inlinedAt: !209)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 384, column: 69)
!260 = !DILocation(line: 385, column: 29, scope: !259, inlinedAt: !209)
!261 = !DILocation(line: 386, column: 30, scope: !259, inlinedAt: !209)
!262 = !DILocation(line: 387, column: 13, scope: !259, inlinedAt: !209)
!263 = !DILocation(line: 388, column: 9, scope: !259, inlinedAt: !209)
!264 = !DILocation(line: 392, column: 9, scope: !265, inlinedAt: !209)
!265 = distinct !DILexicalBlock(scope: !249, file: !3, line: 392, column: 9)
!266 = !DILocation(line: 392, column: 9, scope: !249, inlinedAt: !209)
!267 = !DILocation(line: 392, column: 9, scope: !268, inlinedAt: !209)
!268 = !DILexicalBlockFile(scope: !265, file: !3, discriminator: 1)
!269 = !DILocation(line: 395, column: 9, scope: !249, inlinedAt: !209)
!270 = !DILocation(line: 395, column: 25, scope: !249, inlinedAt: !209)
!271 = !DILocation(line: 396, column: 26, scope: !249, inlinedAt: !209)
!272 = !DILocation(line: 397, column: 9, scope: !249, inlinedAt: !209)
!273 = !DILocation(line: 398, column: 9, scope: !249, inlinedAt: !209)
!274 = !DILocation(line: 471, column: 13, scope: !275, inlinedAt: !190)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 471, column: 13)
!276 = distinct !DILexicalBlock(scope: !183, file: !3, line: 469, column: 28)
!277 = !DILocation(line: 471, column: 13, scope: !276, inlinedAt: !190)
!278 = !DILocation(line: 471, column: 13, scope: !279, inlinedAt: !190)
!279 = !DILexicalBlockFile(scope: !275, file: !3, discriminator: 1)
!280 = !DILocation(line: 472, column: 13, scope: !276, inlinedAt: !190)
!281 = !DILocation(line: 473, column: 13, scope: !276, inlinedAt: !190)
!282 = !DILocation(line: 475, column: 13, scope: !283, inlinedAt: !190)
!283 = distinct !DILexicalBlock(scope: !276, file: !3, line: 475, column: 13)
!284 = !DILocation(line: 475, column: 13, scope: !276, inlinedAt: !190)
!285 = !DILocation(line: 475, column: 13, scope: !286, inlinedAt: !190)
!286 = !DILexicalBlockFile(scope: !283, file: !3, discriminator: 1)
!287 = !DILocation(line: 476, column: 13, scope: !276, inlinedAt: !190)
!288 = !DILocation(line: 477, column: 13, scope: !276, inlinedAt: !190)
!289 = !DILocation(line: 482, column: 13, scope: !290, inlinedAt: !190)
!290 = distinct !DILexicalBlock(scope: !276, file: !3, line: 482, column: 13)
!291 = !DILocation(line: 482, column: 13, scope: !276, inlinedAt: !190)
!292 = !DILocation(line: 482, column: 13, scope: !293, inlinedAt: !190)
!293 = !DILexicalBlockFile(scope: !290, file: !3, discriminator: 1)
!294 = !DILocation(line: 483, column: 13, scope: !276, inlinedAt: !190)
!295 = !DILocation(line: 484, column: 13, scope: !276, inlinedAt: !190)
!296 = !DILocation(line: 487, column: 13, scope: !276, inlinedAt: !190)
!297 = !DILocation(line: 488, column: 13, scope: !276, inlinedAt: !190)
!298 = !DILocation(line: 512, column: 1, scope: !299)
!299 = !DILexicalBlockFile(scope: !161, file: !3, discriminator: 1)
!300 = distinct !DISubprogram(name: "__hid_interrupt_packet_handler", scope: !3, file: !3, line: 444, type: !162, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !301)
!301 = !{!302, !303, !304, !305}
!302 = !DILocalVariable(name: "packet_type", arg: 1, scope: !300, file: !3, line: 444, type: !19)
!303 = !DILocalVariable(name: "channel", arg: 2, scope: !300, file: !3, line: 444, type: !71)
!304 = !DILocalVariable(name: "packet", arg: 3, scope: !300, file: !3, line: 444, type: !18)
!305 = !DILocalVariable(name: "size", arg: 4, scope: !300, file: !3, line: 444, type: !71)
!306 = !DILocation(line: 444, column: 47, scope: !300)
!307 = !DILocation(line: 444, column: 64, scope: !300)
!308 = !DILocation(line: 444, column: 77, scope: !300)
!309 = !DILocation(line: 444, column: 89, scope: !300)
!310 = !DILocation(line: 446, column: 5, scope: !300)
!311 = !DILocation(line: 448, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !300, file: !3, line: 446, column: 26)
!313 = !DILocation(line: 448, column: 9, scope: !312)
!314 = !DILocation(line: 407, column: 13, scope: !315, inlinedAt: !323)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 407, column: 13)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 405, column: 26)
!317 = distinct !DISubprogram(name: "hid_interrupt_packet_handler", scope: !3, file: !3, line: 403, type: !162, isLocal: true, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !318)
!318 = !{!319, !320, !321, !322}
!319 = !DILocalVariable(name: "packet_type", arg: 1, scope: !317, file: !3, line: 403, type: !19)
!320 = !DILocalVariable(name: "channel", arg: 2, scope: !317, file: !3, line: 403, type: !71)
!321 = !DILocalVariable(name: "packet", arg: 3, scope: !317, file: !3, line: 403, type: !18)
!322 = !DILocalVariable(name: "size", arg: 4, scope: !317, file: !3, line: 403, type: !71)
!323 = distinct !DILocation(line: 453, column: 5, scope: !300)
!324 = !DILocation(line: 407, column: 13, scope: !316, inlinedAt: !323)
!325 = !DILocation(line: 408, column: 44, scope: !326, inlinedAt: !323)
!326 = distinct !DILexicalBlock(scope: !315, file: !3, line: 407, column: 37)
!327 = !DILocation(line: 408, column: 13, scope: !326, inlinedAt: !323)
!328 = !DILocation(line: 409, column: 9, scope: !326, inlinedAt: !323)
!329 = !DILocation(line: 415, column: 13, scope: !330, inlinedAt: !323)
!330 = distinct !DILexicalBlock(scope: !331, file: !3, line: 415, column: 13)
!331 = distinct !DILexicalBlock(scope: !316, file: !3, line: 413, column: 28)
!332 = !DILocation(line: 415, column: 13, scope: !331, inlinedAt: !323)
!333 = !DILocation(line: 415, column: 13, scope: !334, inlinedAt: !323)
!334 = !DILexicalBlockFile(scope: !330, file: !3, discriminator: 1)
!335 = !DILocation(line: 416, column: 13, scope: !331, inlinedAt: !323)
!336 = !DILocation(line: 417, column: 13, scope: !331, inlinedAt: !323)
!337 = !DILocation(line: 420, column: 13, scope: !338, inlinedAt: !323)
!338 = distinct !DILexicalBlock(scope: !331, file: !3, line: 420, column: 13)
!339 = !DILocation(line: 420, column: 13, scope: !331, inlinedAt: !323)
!340 = !DILocation(line: 420, column: 13, scope: !341, inlinedAt: !323)
!341 = !DILexicalBlockFile(scope: !338, file: !3, discriminator: 1)
!342 = !DILocation(line: 421, column: 13, scope: !331, inlinedAt: !323)
!343 = !DILocation(line: 422, column: 13, scope: !331, inlinedAt: !323)
!344 = !DILocation(line: 426, column: 13, scope: !345, inlinedAt: !323)
!345 = distinct !DILexicalBlock(scope: !331, file: !3, line: 426, column: 13)
!346 = !DILocation(line: 426, column: 13, scope: !331, inlinedAt: !323)
!347 = !DILocation(line: 426, column: 13, scope: !348, inlinedAt: !323)
!348 = !DILexicalBlockFile(scope: !345, file: !3, discriminator: 1)
!349 = !DILocation(line: 427, column: 13, scope: !331, inlinedAt: !323)
!350 = !DILocation(line: 428, column: 13, scope: !331, inlinedAt: !323)
!351 = !DILocation(line: 431, column: 13, scope: !331, inlinedAt: !323)
!352 = !DILocation(line: 432, column: 13, scope: !331, inlinedAt: !323)
!353 = !DILocation(line: 454, column: 1, scope: !354)
!354 = !DILexicalBlockFile(scope: !300, file: !3, discriminator: 1)
!355 = distinct !DISubprogram(name: "__hid_run_loop", scope: !3, file: !3, line: 602, type: !105, isLocal: true, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !356)
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "loop", arg: 1, scope: !355, file: !3, line: 602, type: !107)
!358 = !DILocalVariable(name: "conn", scope: !355, file: !3, line: 604, type: !206)
!359 = !DILocation(line: 602, column: 45, scope: !355)
!360 = !DILocation(line: 606, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !355, file: !3, line: 606, column: 9)
!362 = !DILocation(line: 606, column: 13, scope: !361)
!363 = !DILocation(line: 606, column: 9, scope: !355)
!364 = !DILocation(line: 610, column: 5, scope: !355)
!365 = !DILocation(line: 612, column: 5, scope: !355)
!366 = !DILocation(line: 614, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !355, file: !3, line: 614, column: 5)
!368 = !DILocation(line: 604, column: 17, scope: !355)
!369 = !DILocation(line: 615, column: 19, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 615, column: 13)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 614, column: 34)
!372 = distinct !DILexicalBlock(scope: !367, file: !3, line: 614, column: 5)
!373 = !{!227, !228, i64 22}
!374 = !DILocation(line: 615, column: 33, scope: !370)
!375 = !DILocation(line: 615, column: 38, scope: !370)
!376 = !DILocation(line: 615, column: 47, scope: !377)
!377 = !DILexicalBlockFile(scope: !370, file: !3, discriminator: 1)
!378 = !DILocation(line: 615, column: 54, scope: !377)
!379 = !DILocation(line: 615, column: 13, scope: !380)
!380 = !DILexicalBlockFile(scope: !371, file: !3, discriminator: 1)
!381 = !DILocalVariable(name: "conn", arg: 1, scope: !382, file: !3, line: 515, type: !206)
!382 = distinct !DISubprogram(name: "hid_run_loop", scope: !3, file: !3, line: 515, type: !383, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !206}
!385 = !{!381, !386, !387, !388}
!386 = !DILocalVariable(name: "err", scope: !382, file: !3, line: 517, type: !33)
!387 = !DILocalVariable(name: "cmd", scope: !382, file: !3, line: 518, type: !17)
!388 = !DILocalVariable(name: "cmd_len", scope: !382, file: !3, line: 519, type: !33)
!389 = !DILocation(line: 515, column: 38, scope: !382, inlinedAt: !390)
!390 = distinct !DILocation(line: 618, column: 9, scope: !371)
!391 = !DILocation(line: 520, column: 5, scope: !392, inlinedAt: !390)
!392 = distinct !DILexicalBlock(scope: !382, file: !3, line: 520, column: 5)
!393 = !DILocation(line: 521, column: 19, scope: !394, inlinedAt: !390)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 521, column: 13)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 520, column: 34)
!396 = distinct !DILexicalBlock(scope: !392, file: !3, line: 520, column: 5)
!397 = !DILocation(line: 49, column: 13, scope: !398, inlinedAt: !404)
!398 = distinct !DISubprogram(name: "hid_keyboard", scope: !3, file: !3, line: 47, type: !399, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !402)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !71}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 32)
!402 = !{!403}
!403 = !DILocalVariable(name: "keyboard_cmd", arg: 1, scope: !398, file: !3, line: 47, type: !71)
!404 = distinct !DILocation(line: 559, column: 27, scope: !405, inlinedAt: !390)
!405 = distinct !DILexicalBlock(scope: !395, file: !3, line: 525, column: 34)
!406 = !DILocation(line: 521, column: 33, scope: !394, inlinedAt: !390)
!407 = !DILocation(line: 522, column: 13, scope: !394, inlinedAt: !390)
!408 = !DILocation(line: 522, column: 22, scope: !409, inlinedAt: !390)
!409 = !DILexicalBlockFile(scope: !394, file: !3, discriminator: 1)
!410 = !DILocation(line: 522, column: 29, scope: !409, inlinedAt: !390)
!411 = !DILocation(line: 521, column: 13, scope: !412, inlinedAt: !390)
!412 = !DILexicalBlockFile(scope: !395, file: !3, discriminator: 1)
!413 = !DILocation(line: 525, column: 23, scope: !395, inlinedAt: !390)
!414 = !{!227, !152, i64 16}
!415 = !DILocation(line: 525, column: 9, scope: !395, inlinedAt: !390)
!416 = !DILocation(line: 47, column: 50, scope: !398, inlinedAt: !417)
!417 = distinct !DILocation(line: 528, column: 27, scope: !405, inlinedAt: !390)
!418 = !DILocation(line: 49, column: 5, scope: !398, inlinedAt: !417)
!419 = !DILocation(line: 50, column: 44, scope: !398, inlinedAt: !417)
!420 = !{!421, !152, i64 26}
!421 = !{!"hid_handl", !422, i64 0, !426, i64 40}
!422 = !{!"", !152, i64 0, !423, i64 26, !424, i64 32}
!423 = !{!"hid_keyboard_cmd", !152, i64 0, !152, i64 1, !228, i64 2, !228, i64 4}
!424 = !{!"_HID_AC_CMD", !152, i64 0, !425, i64 1, !425, i64 2}
!425 = !{!"int", !152, i64 0}
!426 = !{!"run_loop", !427, i64 0, !151, i64 4, !151, i64 8}
!427 = !{!"btstack_linked_item", !151, i64 0}
!428 = !DILocation(line: 51, column: 35, scope: !398, inlinedAt: !417)
!429 = !DILocation(line: 51, column: 45, scope: !398, inlinedAt: !417)
!430 = !{!421, !152, i64 27}
!431 = !DILocation(line: 52, column: 35, scope: !398, inlinedAt: !417)
!432 = !DILocation(line: 52, column: 44, scope: !398, inlinedAt: !417)
!433 = !{!421, !228, i64 28}
!434 = !DILocation(line: 53, column: 35, scope: !398, inlinedAt: !417)
!435 = !DILocation(line: 53, column: 44, scope: !398, inlinedAt: !417)
!436 = !{!421, !228, i64 30}
!437 = !DILocation(line: 518, column: 11, scope: !382, inlinedAt: !390)
!438 = !DILocation(line: 519, column: 9, scope: !382, inlinedAt: !390)
!439 = !DILocation(line: 530, column: 13, scope: !405, inlinedAt: !390)
!440 = !DILocation(line: 47, column: 50, scope: !398, inlinedAt: !441)
!441 = distinct !DILocation(line: 532, column: 27, scope: !405, inlinedAt: !390)
!442 = !DILocation(line: 49, column: 5, scope: !398, inlinedAt: !441)
!443 = !DILocation(line: 50, column: 44, scope: !398, inlinedAt: !441)
!444 = !DILocation(line: 51, column: 35, scope: !398, inlinedAt: !441)
!445 = !DILocation(line: 51, column: 45, scope: !398, inlinedAt: !441)
!446 = !DILocation(line: 52, column: 35, scope: !398, inlinedAt: !441)
!447 = !DILocation(line: 52, column: 44, scope: !398, inlinedAt: !441)
!448 = !DILocation(line: 53, column: 35, scope: !398, inlinedAt: !441)
!449 = !DILocation(line: 53, column: 44, scope: !398, inlinedAt: !441)
!450 = !DILocation(line: 534, column: 13, scope: !405, inlinedAt: !390)
!451 = !DILocation(line: 47, column: 50, scope: !398, inlinedAt: !452)
!452 = distinct !DILocation(line: 536, column: 27, scope: !405, inlinedAt: !390)
!453 = !DILocation(line: 49, column: 5, scope: !398, inlinedAt: !452)
!454 = !DILocation(line: 50, column: 44, scope: !398, inlinedAt: !452)
!455 = !DILocation(line: 51, column: 35, scope: !398, inlinedAt: !452)
!456 = !DILocation(line: 51, column: 45, scope: !398, inlinedAt: !452)
!457 = !DILocation(line: 52, column: 35, scope: !398, inlinedAt: !452)
!458 = !DILocation(line: 52, column: 44, scope: !398, inlinedAt: !452)
!459 = !DILocation(line: 53, column: 35, scope: !398, inlinedAt: !452)
!460 = !DILocation(line: 53, column: 44, scope: !398, inlinedAt: !452)
!461 = !DILocation(line: 538, column: 13, scope: !405, inlinedAt: !390)
!462 = !DILocation(line: 47, column: 50, scope: !398, inlinedAt: !463)
!463 = distinct !DILocation(line: 540, column: 27, scope: !405, inlinedAt: !390)
!464 = !DILocation(line: 49, column: 5, scope: !398, inlinedAt: !463)
!465 = !DILocation(line: 50, column: 44, scope: !398, inlinedAt: !463)
!466 = !DILocation(line: 51, column: 35, scope: !398, inlinedAt: !463)
!467 = !DILocation(line: 51, column: 45, scope: !398, inlinedAt: !463)
!468 = !DILocation(line: 52, column: 35, scope: !398, inlinedAt: !463)
!469 = !DILocation(line: 52, column: 44, scope: !398, inlinedAt: !463)
!470 = !DILocation(line: 53, column: 35, scope: !398, inlinedAt: !463)
!471 = !DILocation(line: 53, column: 44, scope: !398, inlinedAt: !463)
!472 = !DILocation(line: 542, column: 13, scope: !405, inlinedAt: !390)
!473 = !DILocation(line: 47, column: 50, scope: !398, inlinedAt: !474)
!474 = distinct !DILocation(line: 544, column: 27, scope: !405, inlinedAt: !390)
!475 = !DILocation(line: 49, column: 5, scope: !398, inlinedAt: !474)
!476 = !DILocation(line: 50, column: 44, scope: !398, inlinedAt: !474)
!477 = !DILocation(line: 51, column: 35, scope: !398, inlinedAt: !474)
!478 = !DILocation(line: 51, column: 45, scope: !398, inlinedAt: !474)
!479 = !DILocation(line: 52, column: 35, scope: !398, inlinedAt: !474)
!480 = !DILocation(line: 52, column: 44, scope: !398, inlinedAt: !474)
!481 = !DILocation(line: 53, column: 35, scope: !398, inlinedAt: !474)
!482 = !DILocation(line: 53, column: 44, scope: !398, inlinedAt: !474)
!483 = !DILocation(line: 546, column: 13, scope: !405, inlinedAt: !390)
!484 = !DILocation(line: 47, column: 50, scope: !398, inlinedAt: !485)
!485 = distinct !DILocation(line: 548, column: 27, scope: !405, inlinedAt: !390)
!486 = !DILocation(line: 49, column: 5, scope: !398, inlinedAt: !485)
!487 = !DILocation(line: 50, column: 44, scope: !398, inlinedAt: !485)
!488 = !DILocation(line: 51, column: 35, scope: !398, inlinedAt: !485)
!489 = !DILocation(line: 51, column: 45, scope: !398, inlinedAt: !485)
!490 = !DILocation(line: 52, column: 35, scope: !398, inlinedAt: !485)
!491 = !DILocation(line: 52, column: 44, scope: !398, inlinedAt: !485)
!492 = !DILocation(line: 53, column: 35, scope: !398, inlinedAt: !485)
!493 = !DILocation(line: 53, column: 44, scope: !398, inlinedAt: !485)
!494 = !DILocation(line: 550, column: 13, scope: !405, inlinedAt: !390)
!495 = !DILocation(line: 47, column: 50, scope: !398, inlinedAt: !404)
!496 = !DILocation(line: 49, column: 5, scope: !398, inlinedAt: !404)
!497 = !DILocation(line: 50, column: 44, scope: !398, inlinedAt: !404)
!498 = !DILocation(line: 51, column: 35, scope: !398, inlinedAt: !404)
!499 = !DILocation(line: 51, column: 45, scope: !398, inlinedAt: !404)
!500 = !DILocation(line: 52, column: 35, scope: !398, inlinedAt: !404)
!501 = !DILocation(line: 52, column: 44, scope: !398, inlinedAt: !404)
!502 = !DILocation(line: 53, column: 35, scope: !398, inlinedAt: !404)
!503 = !DILocation(line: 53, column: 44, scope: !398, inlinedAt: !404)
!504 = !DILocation(line: 561, column: 13, scope: !405, inlinedAt: !390)
!505 = !DILocalVariable(name: "ac_cmd", arg: 1, scope: !506, file: !3, line: 89, type: !71)
!506 = distinct !DISubprogram(name: "hid_ackey", scope: !3, file: !3, line: 89, type: !507, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !510)
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !71}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!510 = !{!505}
!511 = !DILocation(line: 89, column: 42, scope: !506, inlinedAt: !512)
!512 = distinct !DILocation(line: 565, column: 27, scope: !405, inlinedAt: !390)
!513 = !DILocation(line: 91, column: 35, scope: !506, inlinedAt: !512)
!514 = !DILocation(line: 91, column: 44, scope: !506, inlinedAt: !512)
!515 = !{!421, !152, i64 32}
!516 = !DILocation(line: 92, column: 35, scope: !506, inlinedAt: !512)
!517 = !DILocation(line: 93, column: 40, scope: !506, inlinedAt: !512)
!518 = !DILocation(line: 567, column: 13, scope: !405, inlinedAt: !390)
!519 = !DILocation(line: 89, column: 42, scope: !506, inlinedAt: !520)
!520 = distinct !DILocation(line: 569, column: 27, scope: !405, inlinedAt: !390)
!521 = !DILocation(line: 91, column: 35, scope: !506, inlinedAt: !520)
!522 = !DILocation(line: 91, column: 44, scope: !506, inlinedAt: !520)
!523 = !DILocation(line: 92, column: 35, scope: !506, inlinedAt: !520)
!524 = !DILocation(line: 93, column: 40, scope: !506, inlinedAt: !520)
!525 = !DILocation(line: 571, column: 13, scope: !405, inlinedAt: !390)
!526 = !DILocation(line: 581, column: 13, scope: !405, inlinedAt: !390)
!527 = !DILocation(line: 584, column: 29, scope: !405, inlinedAt: !390)
!528 = !DILocation(line: 585, column: 13, scope: !405, inlinedAt: !390)
!529 = !DILocation(line: 586, column: 13, scope: !405, inlinedAt: !390)
!530 = !DILocation(line: 589, column: 41, scope: !395, inlinedAt: !390)
!531 = !DILocation(line: 589, column: 15, scope: !395, inlinedAt: !390)
!532 = !DILocation(line: 517, column: 9, scope: !382, inlinedAt: !390)
!533 = !DILocation(line: 590, column: 14, scope: !534, inlinedAt: !390)
!534 = distinct !DILexicalBlock(scope: !395, file: !3, line: 590, column: 13)
!535 = !DILocation(line: 590, column: 13, scope: !395, inlinedAt: !390)
!536 = !DILocation(line: 591, column: 13, scope: !537, inlinedAt: !390)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 591, column: 13)
!538 = distinct !DILexicalBlock(scope: !534, file: !3, line: 590, column: 19)
!539 = !DILocation(line: 591, column: 13, scope: !538, inlinedAt: !390)
!540 = !DILocation(line: 591, column: 13, scope: !541, inlinedAt: !390)
!541 = !DILexicalBlockFile(scope: !537, file: !3, discriminator: 1)
!542 = !DILocation(line: 592, column: 28, scope: !538, inlinedAt: !390)
!543 = !DILocation(line: 593, column: 13, scope: !538, inlinedAt: !390)
!544 = !DILocation(line: 594, column: 24, scope: !545, inlinedAt: !390)
!545 = distinct !DILexicalBlock(scope: !538, file: !3, line: 594, column: 17)
!546 = !{!227, !152, i64 17}
!547 = !DILocation(line: 594, column: 38, scope: !545, inlinedAt: !390)
!548 = !DILocation(line: 594, column: 47, scope: !545, inlinedAt: !390)
!549 = !DILocation(line: 594, column: 57, scope: !550, inlinedAt: !390)
!550 = !DILexicalBlockFile(scope: !545, file: !3, discriminator: 1)
!551 = !DILocation(line: 594, column: 67, scope: !550, inlinedAt: !390)
!552 = !DILocation(line: 594, column: 17, scope: !553, inlinedAt: !390)
!553 = !DILexicalBlockFile(scope: !538, file: !3, discriminator: 1)
!554 = !DILocation(line: 595, column: 37, scope: !555, inlinedAt: !390)
!555 = distinct !DILexicalBlock(scope: !545, file: !3, line: 594, column: 76)
!556 = !DILocation(line: 596, column: 33, scope: !555, inlinedAt: !390)
!557 = !DILocation(line: 597, column: 13, scope: !555, inlinedAt: !390)
!558 = !DILocation(line: 520, column: 5, scope: !559, inlinedAt: !390)
!559 = !DILexicalBlockFile(scope: !396, file: !3, discriminator: 2)
!560 = !DILocation(line: 520, column: 5, scope: !561, inlinedAt: !390)
!561 = !DILexicalBlockFile(scope: !396, file: !3, discriminator: 1)
!562 = !DILocation(line: 520, column: 5, scope: !563, inlinedAt: !390)
!563 = !DILexicalBlockFile(scope: !392, file: !3, discriminator: 1)
!564 = distinct !{!564, !565, !566}
!565 = !DILocation(line: 520, column: 5, scope: !392)
!566 = !DILocation(line: 599, column: 5, scope: !392)
!567 = !DILocation(line: 614, column: 5, scope: !568)
!568 = !DILexicalBlockFile(scope: !372, file: !3, discriminator: 2)
!569 = !DILocation(line: 614, column: 5, scope: !570)
!570 = !DILexicalBlockFile(scope: !372, file: !3, discriminator: 1)
!571 = !DILocation(line: 614, column: 5, scope: !572)
!572 = !DILexicalBlockFile(scope: !367, file: !3, discriminator: 1)
!573 = distinct !{!573, !366, !574}
!574 = !DILocation(line: 619, column: 5, scope: !367)
!575 = !DILocation(line: 621, column: 1, scope: !355)
!576 = !DILocation(line: 621, column: 1, scope: !577)
!577 = !DILexicalBlockFile(scope: !355, file: !3, discriminator: 2)
!578 = distinct !DISubprogram(name: "hid_send_cmd_ioctrl", scope: !3, file: !3, line: 837, type: !579, isLocal: false, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!33, !18, !89}
!581 = !{!582, !583}
!582 = !DILocalVariable(name: "addr", arg: 1, scope: !578, file: !3, line: 837, type: !18)
!583 = !DILocalVariable(name: "op_type", arg: 2, scope: !578, file: !3, line: 837, type: !89)
!584 = !DILocation(line: 837, column: 29, scope: !578)
!585 = !DILocation(line: 837, column: 39, scope: !578)
!586 = !DILocation(line: 839, column: 9, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !3, line: 839, column: 9)
!588 = !DILocation(line: 839, column: 13, scope: !587)
!589 = !DILocation(line: 839, column: 9, scope: !578)
!590 = !DILocation(line: 842, column: 5, scope: !578)
!591 = !DILocation(line: 844, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !578, file: !3, line: 842, column: 22)
!593 = !DILocation(line: 845, column: 9, scope: !592)
!594 = !DILocalVariable(name: "addr", arg: 1, scope: !595, file: !3, line: 638, type: !18)
!595 = distinct !DISubprogram(name: "hid_ios_shutter", scope: !3, file: !3, line: 638, type: !596, isLocal: true, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !18}
!598 = !{!594, !599}
!599 = !DILocalVariable(name: "conn", scope: !595, file: !3, line: 640, type: !206)
!600 = !DILocation(line: 638, column: 33, scope: !595, inlinedAt: !601)
!601 = distinct !DILocation(line: 847, column: 9, scope: !592)
!602 = !DILocation(line: 644, column: 12, scope: !595, inlinedAt: !601)
!603 = !DILocation(line: 640, column: 17, scope: !595, inlinedAt: !601)
!604 = !DILocation(line: 645, column: 9, scope: !605, inlinedAt: !601)
!605 = distinct !DILexicalBlock(scope: !595, file: !3, line: 645, column: 9)
!606 = !DILocation(line: 645, column: 14, scope: !605, inlinedAt: !601)
!607 = !DILocation(line: 645, column: 23, scope: !608, inlinedAt: !601)
!608 = !DILexicalBlockFile(scope: !605, file: !3, discriminator: 1)
!609 = !DILocation(line: 645, column: 33, scope: !608, inlinedAt: !601)
!610 = !DILocation(line: 645, column: 9, scope: !611, inlinedAt: !601)
!611 = !DILexicalBlockFile(scope: !595, file: !3, discriminator: 1)
!612 = !DILocation(line: 646, column: 25, scope: !613, inlinedAt: !601)
!613 = distinct !DILexicalBlock(scope: !605, file: !3, line: 645, column: 39)
!614 = !DILocation(line: 647, column: 5, scope: !613, inlinedAt: !601)
!615 = !DILocalVariable(name: "addr", arg: 1, scope: !616, file: !3, line: 651, type: !18)
!616 = distinct !DISubprogram(name: "hid_both_key", scope: !3, file: !3, line: 651, type: !596, isLocal: true, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !617)
!617 = !{!615, !618}
!618 = !DILocalVariable(name: "conn", scope: !616, file: !3, line: 653, type: !206)
!619 = !DILocation(line: 651, column: 30, scope: !616, inlinedAt: !620)
!620 = distinct !DILocation(line: 850, column: 9, scope: !592)
!621 = !DILocation(line: 657, column: 12, scope: !616, inlinedAt: !620)
!622 = !DILocation(line: 653, column: 17, scope: !616, inlinedAt: !620)
!623 = !DILocation(line: 658, column: 9, scope: !624, inlinedAt: !620)
!624 = distinct !DILexicalBlock(scope: !616, file: !3, line: 658, column: 9)
!625 = !DILocation(line: 658, column: 14, scope: !624, inlinedAt: !620)
!626 = !DILocation(line: 658, column: 24, scope: !627, inlinedAt: !620)
!627 = !DILexicalBlockFile(scope: !624, file: !3, discriminator: 1)
!628 = !DILocation(line: 658, column: 38, scope: !627, inlinedAt: !620)
!629 = !DILocation(line: 658, column: 44, scope: !627, inlinedAt: !620)
!630 = !DILocation(line: 658, column: 54, scope: !631, inlinedAt: !620)
!631 = !DILexicalBlockFile(scope: !624, file: !3, discriminator: 2)
!632 = !DILocation(line: 658, column: 64, scope: !631, inlinedAt: !620)
!633 = !DILocation(line: 658, column: 9, scope: !634, inlinedAt: !620)
!634 = !DILexicalBlockFile(scope: !616, file: !3, discriminator: 2)
!635 = !DILocation(line: 659, column: 29, scope: !636, inlinedAt: !620)
!636 = distinct !DILexicalBlock(scope: !624, file: !3, line: 658, column: 71)
!637 = !DILocation(line: 660, column: 9, scope: !636, inlinedAt: !620)
!638 = !DILocation(line: 661, column: 5, scope: !636, inlinedAt: !620)
!639 = !DILocalVariable(name: "addr", arg: 1, scope: !640, file: !3, line: 665, type: !18)
!640 = distinct !DISubprogram(name: "hid_Home_key", scope: !3, file: !3, line: 665, type: !596, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !641)
!641 = !{!639, !642}
!642 = !DILocalVariable(name: "conn", scope: !640, file: !3, line: 667, type: !206)
!643 = !DILocation(line: 665, column: 30, scope: !640, inlinedAt: !644)
!644 = distinct !DILocation(line: 853, column: 9, scope: !592)
!645 = !DILocation(line: 671, column: 12, scope: !640, inlinedAt: !644)
!646 = !DILocation(line: 667, column: 17, scope: !640, inlinedAt: !644)
!647 = !DILocation(line: 672, column: 9, scope: !648, inlinedAt: !644)
!648 = distinct !DILexicalBlock(scope: !640, file: !3, line: 672, column: 9)
!649 = !DILocation(line: 672, column: 16, scope: !648, inlinedAt: !644)
!650 = !DILocation(line: 672, column: 26, scope: !651, inlinedAt: !644)
!651 = !DILexicalBlockFile(scope: !648, file: !3, discriminator: 1)
!652 = !DILocation(line: 672, column: 36, scope: !651, inlinedAt: !644)
!653 = !DILocation(line: 672, column: 9, scope: !654, inlinedAt: !644)
!654 = !DILexicalBlockFile(scope: !640, file: !3, discriminator: 1)
!655 = !DILocation(line: 673, column: 25, scope: !656, inlinedAt: !644)
!656 = distinct !DILexicalBlock(scope: !648, file: !3, line: 672, column: 43)
!657 = !DILocation(line: 674, column: 5, scope: !656, inlinedAt: !644)
!658 = !DILocalVariable(name: "addr", arg: 1, scope: !659, file: !3, line: 699, type: !18)
!659 = distinct !DISubprogram(name: "hid_Return_key", scope: !3, file: !3, line: 699, type: !596, isLocal: true, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !660)
!660 = !{!658, !661}
!661 = !DILocalVariable(name: "conn", scope: !659, file: !3, line: 701, type: !206)
!662 = !DILocation(line: 699, column: 32, scope: !659, inlinedAt: !663)
!663 = distinct !DILocation(line: 856, column: 9, scope: !592)
!664 = !DILocation(line: 705, column: 12, scope: !659, inlinedAt: !663)
!665 = !DILocation(line: 701, column: 17, scope: !659, inlinedAt: !663)
!666 = !DILocation(line: 706, column: 9, scope: !667, inlinedAt: !663)
!667 = distinct !DILexicalBlock(scope: !659, file: !3, line: 706, column: 9)
!668 = !DILocation(line: 706, column: 16, scope: !667, inlinedAt: !663)
!669 = !DILocation(line: 706, column: 26, scope: !670, inlinedAt: !663)
!670 = !DILexicalBlockFile(scope: !667, file: !3, discriminator: 1)
!671 = !DILocation(line: 706, column: 36, scope: !670, inlinedAt: !663)
!672 = !DILocation(line: 706, column: 9, scope: !673, inlinedAt: !663)
!673 = !DILexicalBlockFile(scope: !659, file: !3, discriminator: 1)
!674 = !DILocation(line: 707, column: 25, scope: !675, inlinedAt: !663)
!675 = distinct !DILexicalBlock(scope: !667, file: !3, line: 706, column: 43)
!676 = !DILocation(line: 708, column: 5, scope: !675, inlinedAt: !663)
!677 = !DILocation(line: 859, column: 9, scope: !592)
!678 = !DILocation(line: 860, column: 9, scope: !592)
!679 = !DILocation(line: 862, column: 9, scope: !592)
!680 = !DILocation(line: 863, column: 9, scope: !592)
!681 = !DILocalVariable(name: "addr", arg: 1, scope: !682, file: !3, line: 713, type: !18)
!682 = distinct !DISubprogram(name: "hid_LeftArrow_key", scope: !3, file: !3, line: 713, type: !596, isLocal: true, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !683)
!683 = !{!681, !684}
!684 = !DILocalVariable(name: "conn", scope: !682, file: !3, line: 715, type: !206)
!685 = !DILocation(line: 713, column: 35, scope: !682, inlinedAt: !686)
!686 = distinct !DILocation(line: 865, column: 9, scope: !592)
!687 = !DILocation(line: 719, column: 12, scope: !682, inlinedAt: !686)
!688 = !DILocation(line: 715, column: 17, scope: !682, inlinedAt: !686)
!689 = !DILocation(line: 720, column: 9, scope: !690, inlinedAt: !686)
!690 = distinct !DILexicalBlock(scope: !682, file: !3, line: 720, column: 9)
!691 = !DILocation(line: 720, column: 16, scope: !690, inlinedAt: !686)
!692 = !DILocation(line: 720, column: 26, scope: !693, inlinedAt: !686)
!693 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 1)
!694 = !DILocation(line: 720, column: 36, scope: !693, inlinedAt: !686)
!695 = !DILocation(line: 720, column: 9, scope: !696, inlinedAt: !686)
!696 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 1)
!697 = !DILocation(line: 721, column: 25, scope: !698, inlinedAt: !686)
!698 = distinct !DILexicalBlock(scope: !690, file: !3, line: 720, column: 43)
!699 = !DILocation(line: 722, column: 5, scope: !698, inlinedAt: !686)
!700 = !DILocalVariable(name: "addr", arg: 1, scope: !701, file: !3, line: 726, type: !18)
!701 = distinct !DISubprogram(name: "hid_RightArrow_key", scope: !3, file: !3, line: 726, type: !596, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !702)
!702 = !{!700, !703}
!703 = !DILocalVariable(name: "conn", scope: !701, file: !3, line: 728, type: !206)
!704 = !DILocation(line: 726, column: 36, scope: !701, inlinedAt: !705)
!705 = distinct !DILocation(line: 868, column: 9, scope: !592)
!706 = !DILocation(line: 732, column: 12, scope: !701, inlinedAt: !705)
!707 = !DILocation(line: 728, column: 17, scope: !701, inlinedAt: !705)
!708 = !DILocation(line: 733, column: 9, scope: !709, inlinedAt: !705)
!709 = distinct !DILexicalBlock(scope: !701, file: !3, line: 733, column: 9)
!710 = !DILocation(line: 733, column: 16, scope: !709, inlinedAt: !705)
!711 = !DILocation(line: 733, column: 26, scope: !712, inlinedAt: !705)
!712 = !DILexicalBlockFile(scope: !709, file: !3, discriminator: 1)
!713 = !DILocation(line: 733, column: 36, scope: !712, inlinedAt: !705)
!714 = !DILocation(line: 733, column: 9, scope: !715, inlinedAt: !705)
!715 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!716 = !DILocation(line: 734, column: 25, scope: !717, inlinedAt: !705)
!717 = distinct !DILexicalBlock(scope: !709, file: !3, line: 733, column: 43)
!718 = !DILocation(line: 735, column: 5, scope: !717, inlinedAt: !705)
!719 = !DILocalVariable(name: "addr", arg: 1, scope: !720, file: !3, line: 762, type: !18)
!720 = distinct !DISubprogram(name: "hid_disconnect", scope: !3, file: !3, line: 762, type: !596, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !721)
!721 = !{!719, !722}
!722 = !DILocalVariable(name: "conn", scope: !720, file: !3, line: 765, type: !206)
!723 = !DILocation(line: 762, column: 32, scope: !720, inlinedAt: !724)
!724 = distinct !DILocation(line: 871, column: 9, scope: !592)
!725 = !DILocation(line: 769, column: 12, scope: !720, inlinedAt: !724)
!726 = !DILocation(line: 765, column: 17, scope: !720, inlinedAt: !724)
!727 = !DILocation(line: 770, column: 10, scope: !728, inlinedAt: !724)
!728 = distinct !DILexicalBlock(scope: !720, file: !3, line: 770, column: 9)
!729 = !DILocation(line: 770, column: 9, scope: !720, inlinedAt: !724)
!730 = !DILocation(line: 773, column: 15, scope: !731, inlinedAt: !724)
!731 = distinct !DILexicalBlock(scope: !720, file: !3, line: 773, column: 9)
!732 = !DILocation(line: 773, column: 9, scope: !731, inlinedAt: !724)
!733 = !DILocation(line: 773, column: 29, scope: !731, inlinedAt: !724)
!734 = !DILocation(line: 773, column: 38, scope: !735, inlinedAt: !724)
!735 = !DILexicalBlockFile(scope: !731, file: !3, discriminator: 1)
!736 = !DILocation(line: 773, column: 32, scope: !735, inlinedAt: !724)
!737 = !DILocation(line: 773, column: 9, scope: !738, inlinedAt: !724)
!738 = !DILexicalBlockFile(scope: !720, file: !3, discriminator: 1)
!739 = !DILocation(line: 774, column: 9, scope: !740, inlinedAt: !724)
!740 = distinct !DILexicalBlock(scope: !731, file: !3, line: 773, column: 52)
!741 = !DILocation(line: 775, column: 41, scope: !740, inlinedAt: !724)
!742 = !DILocation(line: 775, column: 9, scope: !740, inlinedAt: !724)
!743 = !DILocation(line: 776, column: 5, scope: !740, inlinedAt: !724)
!744 = !DILocalVariable(name: "addr", arg: 1, scope: !745, file: !3, line: 739, type: !18)
!745 = distinct !DISubprogram(name: "hid_connect", scope: !3, file: !3, line: 739, type: !596, isLocal: true, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !746)
!746 = !{!744, !747}
!747 = !DILocalVariable(name: "conn", scope: !745, file: !3, line: 741, type: !206)
!748 = !DILocation(line: 739, column: 29, scope: !745, inlinedAt: !749)
!749 = distinct !DILocation(line: 875, column: 9, scope: !592)
!750 = !DILocation(line: 745, column: 12, scope: !745, inlinedAt: !749)
!751 = !DILocation(line: 741, column: 17, scope: !745, inlinedAt: !749)
!752 = !DILocation(line: 746, column: 10, scope: !753, inlinedAt: !749)
!753 = distinct !DILexicalBlock(scope: !745, file: !3, line: 746, column: 9)
!754 = !DILocation(line: 746, column: 9, scope: !745, inlinedAt: !749)
!755 = !DILocation(line: 748, column: 16, scope: !756, inlinedAt: !749)
!756 = distinct !DILexicalBlock(scope: !753, file: !3, line: 746, column: 16)
!757 = !DILocation(line: 749, column: 5, scope: !756, inlinedAt: !749)
!758 = !DILocation(line: 750, column: 20, scope: !759, inlinedAt: !749)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 750, column: 13)
!760 = distinct !DILexicalBlock(scope: !753, file: !3, line: 749, column: 12)
!761 = !DILocation(line: 750, column: 13, scope: !759, inlinedAt: !749)
!762 = !DILocation(line: 750, column: 34, scope: !759, inlinedAt: !749)
!763 = !DILocation(line: 750, column: 44, scope: !764, inlinedAt: !749)
!764 = !DILexicalBlockFile(scope: !759, file: !3, discriminator: 1)
!765 = !DILocation(line: 750, column: 37, scope: !764, inlinedAt: !749)
!766 = !DILocation(line: 750, column: 13, scope: !767, inlinedAt: !749)
!767 = !DILexicalBlockFile(scope: !760, file: !3, discriminator: 1)
!768 = !DILocation(line: 754, column: 33, scope: !745, inlinedAt: !749)
!769 = !DILocation(line: 754, column: 11, scope: !745, inlinedAt: !749)
!770 = !DILocation(line: 755, column: 5, scope: !745, inlinedAt: !749)
!771 = !DILocation(line: 756, column: 27, scope: !745, inlinedAt: !749)
!772 = !DILocation(line: 757, column: 5, scope: !745, inlinedAt: !749)
!773 = !DILocation(line: 759, column: 1, scope: !745, inlinedAt: !749)
!774 = !DILocalVariable(name: "addr", arg: 1, scope: !775, file: !3, line: 1006, type: !18)
!775 = distinct !DISubprogram(name: "hid_diy_resume_send", scope: !3, file: !3, line: 1006, type: !596, isLocal: true, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !776)
!776 = !{!774, !777}
!777 = !DILocalVariable(name: "conn", scope: !775, file: !3, line: 1008, type: !206)
!778 = !DILocation(line: 1006, column: 37, scope: !775, inlinedAt: !779)
!779 = distinct !DILocation(line: 879, column: 9, scope: !592)
!780 = !DILocation(line: 1013, column: 12, scope: !775, inlinedAt: !779)
!781 = !DILocation(line: 1008, column: 17, scope: !775, inlinedAt: !779)
!782 = !DILocation(line: 1014, column: 10, scope: !783, inlinedAt: !779)
!783 = distinct !DILexicalBlock(scope: !775, file: !3, line: 1014, column: 9)
!784 = !DILocation(line: 1014, column: 9, scope: !775, inlinedAt: !779)
!785 = !DILocation(line: 1018, column: 15, scope: !786, inlinedAt: !779)
!786 = distinct !DILexicalBlock(scope: !775, file: !3, line: 1018, column: 9)
!787 = !DILocation(line: 1018, column: 9, scope: !786, inlinedAt: !779)
!788 = !DILocation(line: 1018, column: 9, scope: !775, inlinedAt: !779)
!789 = !DILocation(line: 1019, column: 9, scope: !790, inlinedAt: !779)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 1018, column: 30)
!791 = !DILocation(line: 1020, column: 5, scope: !790, inlinedAt: !779)
!792 = !DILocation(line: 1022, column: 15, scope: !793, inlinedAt: !779)
!793 = distinct !DILexicalBlock(scope: !775, file: !3, line: 1022, column: 9)
!794 = !DILocation(line: 1022, column: 9, scope: !793, inlinedAt: !779)
!795 = !DILocation(line: 1022, column: 9, scope: !775, inlinedAt: !779)
!796 = !DILocation(line: 1023, column: 9, scope: !797, inlinedAt: !779)
!797 = distinct !DILexicalBlock(scope: !793, file: !3, line: 1022, column: 29)
!798 = !DILocation(line: 1024, column: 5, scope: !797, inlinedAt: !779)
!799 = !DILocation(line: 886, column: 5, scope: !578)
!800 = !DILocation(line: 887, column: 5, scope: !578)
!801 = !DILocation(line: 888, column: 1, scope: !578)
!802 = distinct !DISubprogram(name: "hid_android_shutter", scope: !3, file: !3, line: 625, type: !596, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !803)
!803 = !{!804, !805}
!804 = !DILocalVariable(name: "addr", arg: 1, scope: !802, file: !3, line: 625, type: !18)
!805 = !DILocalVariable(name: "conn", scope: !802, file: !3, line: 627, type: !206)
!806 = !DILocation(line: 625, column: 37, scope: !802)
!807 = !DILocation(line: 628, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !802, file: !3, line: 628, column: 9)
!809 = !DILocation(line: 628, column: 13, scope: !808)
!810 = !DILocation(line: 628, column: 9, scope: !802)
!811 = !DILocation(line: 631, column: 12, scope: !802)
!812 = !DILocation(line: 627, column: 17, scope: !802)
!813 = !DILocation(line: 632, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !802, file: !3, line: 632, column: 9)
!815 = !DILocation(line: 632, column: 14, scope: !814)
!816 = !DILocation(line: 632, column: 23, scope: !817)
!817 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 1)
!818 = !DILocation(line: 632, column: 33, scope: !817)
!819 = !DILocation(line: 632, column: 9, scope: !820)
!820 = !DILexicalBlockFile(scope: !802, file: !3, discriminator: 1)
!821 = !DILocation(line: 633, column: 25, scope: !822)
!822 = distinct !DILexicalBlock(scope: !814, file: !3, line: 632, column: 39)
!823 = !DILocation(line: 634, column: 5, scope: !822)
!824 = !DILocation(line: 635, column: 1, scope: !825)
!825 = !DILexicalBlockFile(scope: !802, file: !3, discriminator: 2)
!826 = distinct !DISubprogram(name: "hid_vol_ctrl", scope: !3, file: !3, line: 678, type: !827, isLocal: true, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !18, !19}
!829 = !{!830, !831, !832}
!830 = !DILocalVariable(name: "addr", arg: 1, scope: !826, file: !3, line: 678, type: !18)
!831 = !DILocalVariable(name: "flag", arg: 2, scope: !826, file: !3, line: 678, type: !19)
!832 = !DILocalVariable(name: "conn", scope: !826, file: !3, line: 680, type: !206)
!833 = !DILocation(line: 678, column: 30, scope: !826)
!834 = !DILocation(line: 678, column: 39, scope: !826)
!835 = !DILocation(line: 681, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !826, file: !3, line: 681, column: 9)
!837 = !DILocation(line: 681, column: 13, scope: !836)
!838 = !DILocation(line: 681, column: 9, scope: !826)
!839 = !DILocation(line: 685, column: 12, scope: !826)
!840 = !DILocation(line: 680, column: 17, scope: !826)
!841 = !DILocation(line: 687, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !826, file: !3, line: 687, column: 9)
!843 = !DILocation(line: 687, column: 16, scope: !842)
!844 = !DILocation(line: 687, column: 26, scope: !845)
!845 = !DILexicalBlockFile(scope: !842, file: !3, discriminator: 1)
!846 = !DILocation(line: 687, column: 36, scope: !845)
!847 = !DILocation(line: 687, column: 9, scope: !848)
!848 = !DILexicalBlockFile(scope: !826, file: !3, discriminator: 1)
!849 = !DILocation(line: 688, column: 13, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 688, column: 13)
!851 = distinct !DILexicalBlock(scope: !842, file: !3, line: 687, column: 43)
!852 = !DILocation(line: 688, column: 13, scope: !851)
!853 = !DILocation(line: 696, column: 5, scope: !851)
!854 = !DILocation(line: 697, column: 1, scope: !855)
!855 = !DILexicalBlockFile(scope: !826, file: !3, discriminator: 2)
!856 = distinct !DISubprogram(name: "hid_core_data_for_send", scope: !3, file: !3, line: 890, type: !857, isLocal: false, isDefinition: true, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!33, !18, !71}
!859 = !{!860, !861, !862}
!860 = !DILocalVariable(name: "packet", arg: 1, scope: !856, file: !3, line: 890, type: !18)
!861 = !DILocalVariable(name: "size", arg: 2, scope: !856, file: !3, line: 890, type: !71)
!862 = !DILocalVariable(name: "len", scope: !856, file: !3, line: 892, type: !19)
!863 = !DILocation(line: 890, column: 32, scope: !856)
!864 = !DILocation(line: 890, column: 44, scope: !856)
!865 = !DILocation(line: 892, column: 8, scope: !856)
!866 = !DILocation(line: 894, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !856, file: !3, line: 894, column: 9)
!868 = !DILocation(line: 894, column: 13, scope: !867)
!869 = !DILocation(line: 894, column: 9, scope: !856)
!870 = !DILocation(line: 900, column: 5, scope: !856)
!871 = !DILocation(line: 902, column: 5, scope: !856)
!872 = !DILocation(line: 903, column: 1, scope: !856)
!873 = distinct !DISubprogram(name: "hid_core_data_for_set", scope: !3, file: !3, line: 905, type: !874, isLocal: false, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !18, !71}
!876 = !{!877, !878, !879}
!877 = !DILocalVariable(name: "packet", arg: 1, scope: !873, file: !3, line: 905, type: !18)
!878 = !DILocalVariable(name: "size", arg: 2, scope: !873, file: !3, line: 905, type: !71)
!879 = !DILocalVariable(name: "len", scope: !873, file: !3, line: 907, type: !19)
!880 = !DILocation(line: 905, column: 32, scope: !873)
!881 = !DILocation(line: 905, column: 44, scope: !873)
!882 = !DILocation(line: 909, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !873, file: !3, line: 909, column: 9)
!884 = !DILocation(line: 909, column: 13, scope: !883)
!885 = !DILocation(line: 909, column: 9, scope: !873)
!886 = !DILocation(line: 907, column: 8, scope: !873)
!887 = !DILocation(line: 915, column: 5, scope: !873)
!888 = !DILocation(line: 916, column: 1, scope: !873)
!889 = !DILocation(line: 916, column: 1, scope: !890)
!890 = !DILexicalBlockFile(scope: !873, file: !3, discriminator: 1)
!891 = distinct !DISubprogram(name: "hid_diy_data_try_send", scope: !3, file: !3, line: 935, type: !892, isLocal: false, isDefinition: true, scopeLine: 936, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!33, !71, !18, !71}
!894 = !{!895, !896, !897, !898, !899}
!895 = !DILocalVariable(name: "channel", arg: 1, scope: !891, file: !3, line: 935, type: !71)
!896 = !DILocalVariable(name: "data", arg: 2, scope: !891, file: !3, line: 935, type: !18)
!897 = !DILocalVariable(name: "len", arg: 3, scope: !891, file: !3, line: 935, type: !71)
!898 = !DILocalVariable(name: "err", scope: !891, file: !3, line: 937, type: !33)
!899 = !DILocalVariable(name: "conn", scope: !891, file: !3, line: 945, type: !206)
!900 = !DILocation(line: 935, column: 31, scope: !891)
!901 = !DILocation(line: 935, column: 44, scope: !891)
!902 = !DILocation(line: 935, column: 54, scope: !891)
!903 = !DILocation(line: 937, column: 9, scope: !891)
!904 = !DILocation(line: 939, column: 5, scope: !891)
!905 = !DILocation(line: 940, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !891, file: !3, line: 940, column: 9)
!907 = !DILocation(line: 940, column: 13, scope: !906)
!908 = !DILocation(line: 940, column: 9, scope: !891)
!909 = !DILocalVariable(name: "channel", arg: 1, scope: !910, file: !3, line: 127, type: !71)
!910 = distinct !DISubprogram(name: "__hid_conn_for_int_channel", scope: !3, file: !3, line: 127, type: !212, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !911)
!911 = !{!909, !912}
!912 = !DILocalVariable(name: "conn", scope: !910, file: !3, line: 129, type: !206)
!913 = !DILocation(line: 127, column: 51, scope: !910, inlinedAt: !914)
!914 = distinct !DILocation(line: 945, column: 25, scope: !891)
!915 = !DILocation(line: 130, column: 5, scope: !916, inlinedAt: !914)
!916 = distinct !DILexicalBlock(scope: !910, file: !3, line: 130, column: 5)
!917 = !DILocation(line: 130, column: 5, scope: !918, inlinedAt: !914)
!918 = !DILexicalBlockFile(scope: !916, file: !3, discriminator: 1)
!919 = !DILocation(line: 131, column: 19, scope: !920, inlinedAt: !914)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 131, column: 13)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 130, column: 34)
!922 = distinct !DILexicalBlock(scope: !916, file: !3, line: 130, column: 5)
!923 = !DILocation(line: 131, column: 33, scope: !920, inlinedAt: !914)
!924 = !DILocation(line: 131, column: 44, scope: !920, inlinedAt: !914)
!925 = !DILocation(line: 131, column: 54, scope: !926, inlinedAt: !914)
!926 = !DILexicalBlockFile(scope: !920, file: !3, discriminator: 1)
!927 = !DILocation(line: 131, column: 61, scope: !926, inlinedAt: !914)
!928 = !DILocation(line: 131, column: 13, scope: !929, inlinedAt: !914)
!929 = !DILexicalBlockFile(scope: !921, file: !3, discriminator: 1)
!930 = !DILocation(line: 130, column: 5, scope: !931, inlinedAt: !914)
!931 = !DILexicalBlockFile(scope: !922, file: !3, discriminator: 2)
!932 = !DILocation(line: 129, column: 17, scope: !910, inlinedAt: !914)
!933 = !DILocation(line: 130, column: 5, scope: !934, inlinedAt: !914)
!934 = !DILexicalBlockFile(scope: !922, file: !3, discriminator: 1)
!935 = distinct !{!935, !936, !937}
!936 = !DILocation(line: 130, column: 5, scope: !916)
!937 = !DILocation(line: 134, column: 5, scope: !916)
!938 = !DILocation(line: 119, column: 19, scope: !223, inlinedAt: !939)
!939 = distinct !DILocation(line: 947, column: 17, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 946, column: 16)
!941 = distinct !DILexicalBlock(scope: !891, file: !3, line: 946, column: 9)
!942 = !DILocation(line: 119, column: 32, scope: !223, inlinedAt: !939)
!943 = !DILocation(line: 119, column: 43, scope: !223, inlinedAt: !939)
!944 = !DILocation(line: 119, column: 53, scope: !232, inlinedAt: !939)
!945 = !DILocation(line: 119, column: 60, scope: !232, inlinedAt: !939)
!946 = !DILocation(line: 119, column: 13, scope: !235, inlinedAt: !939)
!947 = !DILocation(line: 118, column: 5, scope: !237, inlinedAt: !939)
!948 = !DILocation(line: 117, column: 17, scope: !211, inlinedAt: !939)
!949 = !DILocation(line: 118, column: 5, scope: !240, inlinedAt: !939)
!950 = !DILocation(line: 118, column: 5, scope: !221, inlinedAt: !939)
!951 = !DILocation(line: 954, column: 19, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 954, column: 13)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 953, column: 12)
!954 = distinct !DILexicalBlock(scope: !891, file: !3, line: 949, column: 9)
!955 = !DILocation(line: 954, column: 26, scope: !952)
!956 = !DILocation(line: 954, column: 13, scope: !953)
!957 = !DILocation(line: 962, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !891, file: !3, line: 962, column: 9)
!959 = !DILocation(line: 962, column: 44, scope: !958)
!960 = !DILocation(line: 962, column: 9, scope: !891)
!961 = !DILocation(line: 967, column: 26, scope: !962)
!962 = distinct !DILexicalBlock(scope: !891, file: !3, line: 967, column: 9)
!963 = !DILocation(line: 967, column: 17, scope: !962)
!964 = !DILocation(line: 967, column: 9, scope: !891)
!965 = !DILocation(line: 968, column: 17, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 968, column: 13)
!967 = distinct !DILexicalBlock(scope: !962, file: !3, line: 967, column: 41)
!968 = !DILocation(line: 968, column: 13, scope: !967)
!969 = !DILocation(line: 969, column: 13, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 969, column: 13)
!971 = distinct !DILexicalBlock(scope: !966, file: !3, line: 968, column: 36)
!972 = !DILocation(line: 969, column: 13, scope: !971)
!973 = !DILocation(line: 969, column: 13, scope: !974)
!974 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 1)
!975 = !DILocation(line: 973, column: 17, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 973, column: 17)
!977 = distinct !DILexicalBlock(scope: !966, file: !3, line: 972, column: 16)
!978 = !DILocation(line: 973, column: 17, scope: !977)
!979 = !DILocation(line: 974, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 974, column: 17)
!981 = distinct !DILexicalBlock(scope: !976, file: !3, line: 973, column: 31)
!982 = !DILocation(line: 974, column: 17, scope: !981)
!983 = !DILocation(line: 974, column: 17, scope: !984)
!984 = !DILexicalBlockFile(scope: !980, file: !3, discriminator: 1)
!985 = !DILocation(line: 979, column: 17, scope: !986)
!986 = distinct !DILexicalBlock(scope: !976, file: !3, line: 977, column: 20)
!987 = !DILocation(line: 980, column: 32, scope: !986)
!988 = !DILocation(line: 980, column: 30, scope: !986)
!989 = !DILocation(line: 983, column: 5, scope: !967)
!990 = !DILocation(line: 984, column: 17, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 984, column: 13)
!992 = distinct !DILexicalBlock(scope: !962, file: !3, line: 983, column: 12)
!993 = !DILocation(line: 984, column: 13, scope: !992)
!994 = !DILocation(line: 985, column: 13, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 985, column: 13)
!996 = distinct !DILexicalBlock(scope: !991, file: !3, line: 984, column: 36)
!997 = !DILocation(line: 985, column: 13, scope: !996)
!998 = !DILocation(line: 985, column: 13, scope: !999)
!999 = !DILexicalBlockFile(scope: !995, file: !3, discriminator: 1)
!1000 = !DILocation(line: 989, column: 23, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 989, column: 17)
!1002 = distinct !DILexicalBlock(scope: !991, file: !3, line: 988, column: 16)
!1003 = !DILocation(line: 989, column: 17, scope: !1001)
!1004 = !DILocation(line: 989, column: 17, scope: !1002)
!1005 = !DILocation(line: 990, column: 17, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 990, column: 17)
!1007 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 989, column: 35)
!1008 = !DILocation(line: 990, column: 17, scope: !1007)
!1009 = !DILocation(line: 990, column: 17, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1006, file: !3, discriminator: 1)
!1011 = !DILocation(line: 995, column: 17, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 993, column: 20)
!1013 = !DILocation(line: 996, column: 36, scope: !1012)
!1014 = !DILocation(line: 996, column: 34, scope: !1012)
!1015 = !DILocation(line: 1002, column: 5, scope: !891)
!1016 = !DILocation(line: 1003, column: 5, scope: !891)
!1017 = distinct !DISubprogram(name: "hid_diy_regiest_callback", scope: !3, file: !3, line: 1027, type: !1018, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !17, !17}
!1020 = !{!1021, !1022}
!1021 = !DILocalVariable(name: "cb", arg: 1, scope: !1017, file: !3, line: 1027, type: !17)
!1022 = !DILocalVariable(name: "interrupt_cb", arg: 2, scope: !1017, file: !3, line: 1027, type: !17)
!1023 = !DILocation(line: 1027, column: 37, scope: !1017)
!1024 = !DILocation(line: 1027, column: 47, scope: !1017)
!1025 = !DILocation(line: 1029, column: 22, scope: !1017)
!1026 = !DILocation(line: 1030, column: 28, scope: !1017)
!1027 = !DILocation(line: 1031, column: 1, scope: !1017)
!1028 = distinct !DISubprogram(name: "hid_send_step_state", scope: !3, file: !3, line: 1068, type: !1029, isLocal: false, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!19}
!1031 = !{!1032}
!1032 = !DILocalVariable(name: "conn", scope: !1028, file: !3, line: 1070, type: !206)
!1033 = !DILocation(line: 1072, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1072, column: 9)
!1035 = !DILocation(line: 1072, column: 13, scope: !1034)
!1036 = !DILocation(line: 1072, column: 9, scope: !1028)
!1037 = !DILocation(line: 1070, column: 17, scope: !1028)
!1038 = !DILocation(line: 1076, column: 5, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1040, file: !3, discriminator: 1)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 1076, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1076, column: 5)
!1042 = !DILocation(line: 1076, column: 5, scope: !1041)
!1043 = !DILocation(line: 1076, column: 5, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1041, file: !3, discriminator: 1)
!1045 = !DILocation(line: 1077, column: 19, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 1077, column: 13)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 1076, column: 34)
!1048 = !DILocation(line: 1077, column: 33, scope: !1046)
!1049 = !DILocation(line: 1078, column: 13, scope: !1046)
!1050 = !DILocation(line: 1078, column: 22, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 1)
!1052 = !DILocation(line: 1078, column: 29, scope: !1051)
!1053 = !DILocation(line: 1077, column: 13, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1047, file: !3, discriminator: 1)
!1055 = !DILocation(line: 1082, column: 19, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 1082, column: 13)
!1057 = !DILocation(line: 1082, column: 13, scope: !1056)
!1058 = !DILocation(line: 1082, column: 13, scope: !1047)
!1059 = !DILocation(line: 1076, column: 5, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1040, file: !3, discriminator: 2)
!1061 = distinct !{!1061, !1042, !1062}
!1062 = !DILocation(line: 1085, column: 5, scope: !1041)
!1063 = !DILocation(line: 1087, column: 1, scope: !1028)
!1064 = distinct !DISubprogram(name: "hid_suspend", scope: !3, file: !3, line: 806, type: !1065, isLocal: true, isDefinition: true, scopeLine: 807, isOptimized: true, unit: !2, variables: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!33}
!1067 = !{}
!1068 = !DILocation(line: 813, column: 1, scope: !1064)
!1069 = distinct !DISubprogram(name: "hid_resume", scope: !3, file: !3, line: 797, type: !1065, isLocal: true, isDefinition: true, scopeLine: 798, isOptimized: true, unit: !2, variables: !1067)
!1070 = !DILocation(line: 804, column: 1, scope: !1069)
!1071 = distinct !DISubprogram(name: "hid_release", scope: !3, file: !3, line: 780, type: !1065, isLocal: true, isDefinition: true, scopeLine: 781, isOptimized: true, unit: !2, variables: !1072)
!1072 = !{!1073}
!1073 = !DILocalVariable(name: "conn", scope: !1071, file: !3, line: 782, type: !206)
!1074 = !DILocation(line: 783, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 783, column: 9)
!1076 = !DILocation(line: 783, column: 13, scope: !1075)
!1077 = !DILocation(line: 783, column: 9, scope: !1071)
!1078 = !DILocation(line: 782, column: 17, scope: !1071)
!1079 = !DILocation(line: 786, column: 5, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1081, file: !3, discriminator: 1)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 786, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 786, column: 5)
!1083 = !DILocation(line: 786, column: 5, scope: !1082)
!1084 = !DILocation(line: 786, column: 5, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1082, file: !3, discriminator: 1)
!1086 = distinct !{!1086, !1083, !1087}
!1087 = !DILocation(line: 790, column: 5, scope: !1082)
!1088 = !DILocation(line: 787, column: 20, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 787, column: 13)
!1090 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 786, column: 34)
!1091 = !DILocation(line: 787, column: 27, scope: !1089)
!1092 = !DILocation(line: 787, column: 36, scope: !1089)
!1093 = !DILocation(line: 786, column: 5, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1081, file: !3, discriminator: 2)
!1095 = !DILocation(line: 787, column: 13, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1090, file: !3, discriminator: 1)
!1097 = !DILocation(line: 791, column: 33, scope: !1071)
!1098 = !DILocation(line: 791, column: 5, scope: !1071)
!1099 = !DILocation(line: 792, column: 9, scope: !1071)
!1100 = !DILocation(line: 794, column: 5, scope: !1071)
!1101 = !DILocation(line: 795, column: 1, scope: !1071)
!1102 = distinct !DISubprogram(name: "hid_ctrl_try_send", scope: !3, file: !3, line: 347, type: !1103, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !71}
!1105 = !{!1106, !1107, !1108}
!1106 = !DILocalVariable(name: "channel", arg: 1, scope: !1102, file: !3, line: 347, type: !71)
!1107 = !DILocalVariable(name: "err", scope: !1102, file: !3, line: 349, type: !33)
!1108 = !DILocalVariable(name: "conn", scope: !1102, file: !3, line: 350, type: !206)
!1109 = !DILocation(line: 347, column: 35, scope: !1102)
!1110 = !DILocation(line: 115, column: 47, scope: !211, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 350, column: 25, scope: !1102)
!1112 = !DILocation(line: 118, column: 5, scope: !219, inlinedAt: !1111)
!1113 = !DILocation(line: 118, column: 5, scope: !221, inlinedAt: !1111)
!1114 = !DILocation(line: 119, column: 19, scope: !223, inlinedAt: !1111)
!1115 = !DILocation(line: 119, column: 32, scope: !223, inlinedAt: !1111)
!1116 = !DILocation(line: 119, column: 43, scope: !223, inlinedAt: !1111)
!1117 = !DILocation(line: 119, column: 53, scope: !232, inlinedAt: !1111)
!1118 = !DILocation(line: 119, column: 60, scope: !232, inlinedAt: !1111)
!1119 = !DILocation(line: 119, column: 13, scope: !235, inlinedAt: !1111)
!1120 = !DILocation(line: 118, column: 5, scope: !237, inlinedAt: !1111)
!1121 = !DILocation(line: 117, column: 17, scope: !211, inlinedAt: !1111)
!1122 = !DILocation(line: 118, column: 5, scope: !240, inlinedAt: !1111)
!1123 = !DILocation(line: 350, column: 17, scope: !1102)
!1124 = !DILocation(line: 354, column: 31, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1126, file: !3, discriminator: 1)
!1126 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 354, column: 9)
!1127 = !DILocation(line: 354, column: 42, scope: !1125)
!1128 = !DILocation(line: 355, column: 9, scope: !1126)
!1129 = !DILocation(line: 358, column: 51, scope: !1102)
!1130 = !DILocation(line: 358, column: 65, scope: !1102)
!1131 = !DILocation(line: 358, column: 11, scope: !1102)
!1132 = !DILocation(line: 349, column: 9, scope: !1102)
!1133 = !DILocation(line: 359, column: 10, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 359, column: 9)
!1135 = !DILocation(line: 359, column: 9, scope: !1102)
!1136 = !DILocation(line: 360, column: 26, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 359, column: 15)
!1138 = !DILocation(line: 361, column: 40, scope: !1137)
!1139 = !DILocation(line: 1034, column: 36, scope: !1140, inlinedAt: !1157)
!1140 = distinct !DISubprogram(name: "hid_diy_state_sync", scope: !3, file: !3, line: 1034, type: !1141, isLocal: true, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !89, !18, !71}
!1143 = !{!1144, !1145, !1146, !1147, !1148}
!1144 = !DILocalVariable(name: "msg", arg: 1, scope: !1140, file: !3, line: 1034, type: !89)
!1145 = !DILocalVariable(name: "addr", arg: 2, scope: !1140, file: !3, line: 1034, type: !18)
!1146 = !DILocalVariable(name: "channel", arg: 3, scope: !1140, file: !3, line: 1034, type: !71)
!1147 = !DILocalVariable(name: "conn", scope: !1140, file: !3, line: 1036, type: !206)
!1148 = !DILocalVariable(name: "tmp_data", scope: !1149, file: !3, line: 1047, type: !1154)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 1046, column: 61)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1046, column: 17)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 1045, column: 19)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 1045, column: 13)
!1153 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1042, column: 18)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 32, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 2)
!1157 = distinct !DILocation(line: 361, column: 9, scope: !1137)
!1158 = !DILocation(line: 1034, column: 45, scope: !1140, inlinedAt: !1157)
!1159 = !DILocation(line: 1034, column: 55, scope: !1140, inlinedAt: !1157)
!1160 = !{!228, !228, i64 0}
!1161 = !DILocation(line: 1038, column: 10, scope: !1162, inlinedAt: !1157)
!1162 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1038, column: 9)
!1163 = !DILocation(line: 1038, column: 9, scope: !1140, inlinedAt: !1157)
!1164 = !DILocation(line: 1060, column: 9, scope: !1153, inlinedAt: !1157)
!1165 = !DILocation(line: 1061, column: 9, scope: !1153, inlinedAt: !1157)
!1166 = !DILocation(line: 1066, column: 1, scope: !1167, inlinedAt: !1157)
!1167 = !DILexicalBlockFile(scope: !1140, file: !3, discriminator: 2)
!1168 = !DILocation(line: 362, column: 5, scope: !1137)
!1169 = !DILocation(line: 363, column: 1, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1102, file: !3, discriminator: 2)
!1171 = !DILocation(line: 1034, column: 36, scope: !1140)
!1172 = !DILocation(line: 1034, column: 45, scope: !1140)
!1173 = !DILocation(line: 1034, column: 55, scope: !1140)
!1174 = !DILocation(line: 1038, column: 10, scope: !1162)
!1175 = !DILocation(line: 1038, column: 9, scope: !1140)
!1176 = !DILocation(line: 1042, column: 5, scope: !1140)
!1177 = !DILocation(line: 1044, column: 16, scope: !1153)
!1178 = !DILocation(line: 1036, column: 17, scope: !1140)
!1179 = !DILocation(line: 1045, column: 13, scope: !1152)
!1180 = !DILocation(line: 1045, column: 13, scope: !1153)
!1181 = !DILocation(line: 1046, column: 23, scope: !1150)
!1182 = !DILocation(line: 1046, column: 17, scope: !1150)
!1183 = !DILocation(line: 1046, column: 37, scope: !1150)
!1184 = !DILocation(line: 1046, column: 47, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1150, file: !3, discriminator: 1)
!1186 = !DILocation(line: 1046, column: 41, scope: !1185)
!1187 = !DILocation(line: 1046, column: 17, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1151, file: !3, discriminator: 1)
!1189 = !DILocation(line: 1047, column: 17, scope: !1149)
!1190 = !DILocation(line: 1047, column: 21, scope: !1149)
!1191 = !DILocation(line: 1048, column: 17, scope: !1149)
!1192 = !DILocation(line: 1048, column: 29, scope: !1149)
!1193 = !DILocation(line: 1049, column: 17, scope: !1149)
!1194 = !DILocation(line: 1049, column: 29, scope: !1149)
!1195 = !DILocation(line: 1050, column: 17, scope: !1149)
!1196 = !DILocation(line: 1051, column: 13, scope: !1150)
!1197 = !DILocation(line: 1051, column: 13, scope: !1149)
!1198 = !DILocation(line: 1056, column: 9, scope: !1153)
!1199 = !DILocation(line: 1057, column: 9, scope: !1153)
!1200 = !DILocation(line: 1060, column: 31, scope: !1153)
!1201 = !DILocation(line: 1060, column: 9, scope: !1153)
!1202 = !DILocation(line: 1061, column: 9, scope: !1153)
!1203 = !DILocation(line: 1066, column: 1, scope: !1167)
!1204 = distinct !DISubprogram(name: "__hid_conn_for_addr", scope: !3, file: !3, line: 103, type: !1205, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1212)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!206, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1209, line: 20, baseType: !1210)
!1209 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1211, line: 29, baseType: !21)
!1211 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1212 = !{!1213, !1214}
!1213 = !DILocalVariable(name: "addr", arg: 1, scope: !1204, file: !3, line: 103, type: !1207)
!1214 = !DILocalVariable(name: "conn", scope: !1204, file: !3, line: 105, type: !206)
!1215 = !DILocation(line: 103, column: 50, scope: !1204)
!1216 = !DILocation(line: 105, column: 17, scope: !1204)
!1217 = !DILocation(line: 106, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 106, column: 5)
!1219 = !DILocation(line: 106, column: 5, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1218, file: !3, discriminator: 1)
!1221 = !DILocation(line: 107, column: 21, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 107, column: 13)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 106, column: 34)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 106, column: 5)
!1225 = !DILocation(line: 107, column: 14, scope: !1222)
!1226 = !DILocation(line: 107, column: 52, scope: !1222)
!1227 = !DILocation(line: 107, column: 62, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1222, file: !3, discriminator: 1)
!1229 = !DILocation(line: 107, column: 69, scope: !1228)
!1230 = !DILocation(line: 107, column: 13, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1223, file: !3, discriminator: 1)
!1232 = !DILocation(line: 106, column: 5, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1224, file: !3, discriminator: 2)
!1234 = !DILocation(line: 106, column: 5, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1224, file: !3, discriminator: 1)
!1236 = distinct !{!1236, !1217, !1237}
!1237 = !DILocation(line: 110, column: 5, scope: !1218)
!1238 = !DILocation(line: 112, column: 1, scope: !1204)
!1239 = distinct !DISubprogram(name: "hid_incoming_connection", scope: !3, file: !3, line: 174, type: !1240, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !71, !18, !71, !19}
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1251}
!1243 = !DILocalVariable(name: "channel", arg: 1, scope: !1239, file: !3, line: 174, type: !71)
!1244 = !DILocalVariable(name: "packet", arg: 2, scope: !1239, file: !3, line: 174, type: !18)
!1245 = !DILocalVariable(name: "size", arg: 3, scope: !1239, file: !3, line: 174, type: !71)
!1246 = !DILocalVariable(name: "type", arg: 4, scope: !1239, file: !3, line: 174, type: !19)
!1247 = !DILocalVariable(name: "addr", scope: !1239, file: !3, line: 176, type: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !1249, line: 7, baseType: !1250)
!1249 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 48, elements: !61)
!1251 = !DILocalVariable(name: "conn", scope: !1239, file: !3, line: 177, type: !206)
!1252 = !DILocation(line: 174, column: 66, scope: !1239)
!1253 = !DILocation(line: 176, column: 5, scope: !1239)
!1254 = !DILocation(line: 176, column: 15, scope: !1239)
!1255 = !DILocation(line: 178, column: 9, scope: !1239)
!1256 = !DILocation(line: 179, column: 35, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 178, column: 31)
!1258 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 178, column: 9)
!1259 = !DILocation(line: 179, column: 9, scope: !1257)
!1260 = !DILocation(line: 181, column: 16, scope: !1257)
!1261 = !DILocation(line: 177, column: 17, scope: !1239)
!1262 = !DILocation(line: 182, column: 14, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 182, column: 13)
!1264 = !DILocation(line: 182, column: 13, scope: !1257)
!1265 = !DILocation(line: 183, column: 20, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 182, column: 20)
!1267 = !DILocation(line: 185, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 185, column: 13)
!1269 = !DILocation(line: 185, column: 13, scope: !1257)
!1270 = !DILocation(line: 186, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 185, column: 19)
!1272 = !DILocation(line: 186, column: 32, scope: !1271)
!1273 = !DILocation(line: 187, column: 13, scope: !1271)
!1274 = !DILocation(line: 188, column: 9, scope: !1271)
!1275 = !DILocation(line: 189, column: 13, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 188, column: 16)
!1277 = !DILocation(line: 193, column: 35, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 192, column: 33)
!1279 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 192, column: 9)
!1280 = !DILocation(line: 193, column: 9, scope: !1278)
!1281 = !DILocation(line: 194, column: 16, scope: !1278)
!1282 = !DILocation(line: 196, column: 14, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 196, column: 13)
!1284 = !DILocation(line: 196, column: 13, scope: !1278)
!1285 = !DILocation(line: 197, column: 20, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 196, column: 20)
!1287 = !DILocation(line: 199, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 199, column: 13)
!1289 = !DILocation(line: 199, column: 18, scope: !1288)
!1290 = !DILocation(line: 199, column: 28, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1288, file: !3, discriminator: 1)
!1292 = !DILocation(line: 199, column: 50, scope: !1291)
!1293 = !DILocation(line: 199, column: 13, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1278, file: !3, discriminator: 1)
!1295 = !DILocation(line: 200, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 200, column: 13)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 199, column: 57)
!1298 = !DILocation(line: 200, column: 13, scope: !1297)
!1299 = !DILocation(line: 200, column: 13, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1296, file: !3, discriminator: 1)
!1301 = !DILocation(line: 201, column: 19, scope: !1297)
!1302 = !DILocation(line: 201, column: 33, scope: !1297)
!1303 = !DILocation(line: 202, column: 13, scope: !1297)
!1304 = !DILocation(line: 203, column: 35, scope: !1297)
!1305 = !DILocation(line: 204, column: 9, scope: !1297)
!1306 = !DILocation(line: 205, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 205, column: 13)
!1308 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 204, column: 16)
!1309 = !DILocation(line: 205, column: 13, scope: !1308)
!1310 = !DILocation(line: 205, column: 13, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1307, file: !3, discriminator: 1)
!1312 = !DILocation(line: 206, column: 19, scope: !1308)
!1313 = !DILocation(line: 206, column: 35, scope: !1308)
!1314 = !{!227, !228, i64 24}
!1315 = !DILocation(line: 207, column: 13, scope: !1308)
!1316 = !DILocation(line: 211, column: 1, scope: !1239)
!1317 = distinct !DISubprogram(name: "hid_connection_open", scope: !3, file: !3, line: 213, type: !1318, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !71, !18, !71, !19, !19}
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1321 = !DILocalVariable(name: "channel", arg: 1, scope: !1317, file: !3, line: 213, type: !71)
!1322 = !DILocalVariable(name: "packet", arg: 2, scope: !1317, file: !3, line: 213, type: !18)
!1323 = !DILocalVariable(name: "size", arg: 3, scope: !1317, file: !3, line: 213, type: !71)
!1324 = !DILocalVariable(name: "type", arg: 4, scope: !1317, file: !3, line: 213, type: !19)
!1325 = !DILocalVariable(name: "conn_type", arg: 5, scope: !1317, file: !3, line: 213, type: !19)
!1326 = !DILocalVariable(name: "addr", scope: !1317, file: !3, line: 215, type: !1248)
!1327 = !DILocalVariable(name: "conn", scope: !1317, file: !3, line: 216, type: !206)
!1328 = !DILocation(line: 213, column: 62, scope: !1317)
!1329 = !DILocation(line: 213, column: 80, scope: !1317)
!1330 = !DILocation(line: 215, column: 5, scope: !1317)
!1331 = !DILocation(line: 215, column: 15, scope: !1317)
!1332 = !DILocation(line: 217, column: 5, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 217, column: 5)
!1334 = !DILocation(line: 217, column: 5, scope: !1317)
!1335 = !DILocation(line: 217, column: 5, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1333, file: !3, discriminator: 1)
!1337 = !DILocation(line: 218, column: 31, scope: !1317)
!1338 = !DILocation(line: 218, column: 5, scope: !1317)
!1339 = !DILocation(line: 219, column: 12, scope: !1317)
!1340 = !DILocation(line: 216, column: 17, scope: !1317)
!1341 = !DILocation(line: 220, column: 14, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 220, column: 9)
!1343 = !DILocation(line: 220, column: 9, scope: !1317)
!1344 = !DILocation(line: 221, column: 14, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 221, column: 13)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 220, column: 31)
!1347 = !DILocation(line: 221, column: 13, scope: !1346)
!1348 = !DILocation(line: 222, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 222, column: 17)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 221, column: 20)
!1351 = !DILocation(line: 222, column: 17, scope: !1350)
!1352 = !DILocation(line: 224, column: 25, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 224, column: 25)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 223, column: 80)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 223, column: 21)
!1356 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 222, column: 28)
!1357 = !DILocation(line: 224, column: 41, scope: !1353)
!1358 = !{!1359, !151, i64 20}
!1359 = !{!"user_interface_handler", !151, i64 0, !151, i64 4, !151, i64 8, !151, i64 12, !151, i64 16, !151, i64 20, !151, i64 24, !151, i64 28, !151, i64 32, !151, i64 36, !151, i64 40, !151, i64 44, !151, i64 48, !151, i64 52, !151, i64 56}
!1360 = !DILocation(line: 224, column: 25, scope: !1354)
!1361 = !DILocation(line: 225, column: 25, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 224, column: 66)
!1363 = !DILocation(line: 226, column: 21, scope: !1362)
!1364 = !DILocation(line: 230, column: 20, scope: !1350)
!1365 = !DILocation(line: 231, column: 9, scope: !1350)
!1366 = !DILocation(line: 232, column: 13, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 232, column: 13)
!1368 = !DILocation(line: 232, column: 13, scope: !1346)
!1369 = !DILocation(line: 234, column: 21, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 234, column: 21)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 233, column: 76)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 233, column: 17)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 232, column: 24)
!1374 = !DILocation(line: 234, column: 37, scope: !1370)
!1375 = !DILocation(line: 234, column: 21, scope: !1371)
!1376 = !DILocation(line: 235, column: 61, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 234, column: 62)
!1378 = !DILocation(line: 235, column: 21, scope: !1377)
!1379 = !DILocation(line: 236, column: 17, scope: !1377)
!1380 = !DILocation(line: 238, column: 13, scope: !1373)
!1381 = !DILocation(line: 239, column: 13, scope: !1373)
!1382 = !DILocation(line: 241, column: 9, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !3, discriminator: 1)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 241, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 241, column: 9)
!1386 = !{!425, !425, i64 0}
!1387 = !DILocation(line: 241, column: 9, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 1)
!1389 = !DILocation(line: 241, column: 9, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1391, file: !3, discriminator: 2)
!1391 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 241, column: 9)
!1392 = !DILocation(line: 241, column: 9, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1394, file: !3, discriminator: 3)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 241, column: 9)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 241, column: 9)
!1396 = !DILocation(line: 241, column: 9, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1394, file: !3, discriminator: 9)
!1398 = !DILocation(line: 241, column: 9, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1394, file: !3, discriminator: 10)
!1400 = !DILocation(line: 241, column: 9, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1402, file: !3, discriminator: 5)
!1402 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 241, column: 9)
!1403 = !DILocation(line: 241, column: 9, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1405, file: !3, discriminator: 6)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 241, column: 9)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 241, column: 9)
!1407 = !DILocation(line: 242, column: 15, scope: !1346)
!1408 = !DILocation(line: 242, column: 28, scope: !1346)
!1409 = !DILocation(line: 243, column: 19, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 243, column: 13)
!1411 = !DILocation(line: 243, column: 13, scope: !1410)
!1412 = !DILocation(line: 243, column: 41, scope: !1410)
!1413 = !DILocation(line: 246, column: 43, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 243, column: 55)
!1415 = !DILocation(line: 245, column: 13, scope: !1414)
!1416 = !DILocation(line: 247, column: 9, scope: !1414)
!1417 = !DILocation(line: 249, column: 14, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 249, column: 9)
!1419 = !DILocation(line: 249, column: 9, scope: !1317)
!1420 = !DILocation(line: 251, column: 18, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 251, column: 13)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 249, column: 33)
!1423 = !DILocation(line: 251, column: 13, scope: !1422)
!1424 = !DILocation(line: 252, column: 13, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 251, column: 27)
!1426 = !DILocation(line: 253, column: 13, scope: !1425)
!1427 = !DILocation(line: 255, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 255, column: 13)
!1429 = !DILocation(line: 255, column: 13, scope: !1422)
!1430 = !DILocation(line: 256, column: 19, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 255, column: 24)
!1432 = !DILocation(line: 256, column: 33, scope: !1431)
!1433 = !DILocation(line: 257, column: 19, scope: !1431)
!1434 = !DILocation(line: 257, column: 35, scope: !1431)
!1435 = !DILocation(line: 258, column: 23, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 258, column: 17)
!1437 = !DILocation(line: 258, column: 17, scope: !1436)
!1438 = !DILocation(line: 258, column: 39, scope: !1436)
!1439 = !DILocation(line: 258, column: 17, scope: !1431)
!1440 = !DILocation(line: 259, column: 17, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 259, column: 17)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 258, column: 45)
!1443 = !DILocation(line: 259, column: 17, scope: !1442)
!1444 = !DILocation(line: 259, column: 17, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1441, file: !3, discriminator: 1)
!1446 = !DILocation(line: 260, column: 45, scope: !1442)
!1447 = !DILocation(line: 260, column: 37, scope: !1442)
!1448 = !DILocation(line: 261, column: 17, scope: !1442)
!1449 = !DILocation(line: 262, column: 39, scope: !1442)
!1450 = !DILocation(line: 263, column: 39, scope: !1442)
!1451 = !DILocation(line: 264, column: 13, scope: !1442)
!1452 = !DILocation(line: 267, column: 19, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 266, column: 16)
!1454 = !DILocation(line: 267, column: 41, scope: !1453)
!1455 = !DILocation(line: 268, column: 35, scope: !1453)
!1456 = !DILocation(line: 269, column: 19, scope: !1453)
!1457 = !DILocation(line: 269, column: 33, scope: !1453)
!1458 = !DILocation(line: 270, column: 17, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 270, column: 17)
!1460 = !DILocation(line: 270, column: 33, scope: !1459)
!1461 = !DILocation(line: 270, column: 17, scope: !1453)
!1462 = !DILocation(line: 271, column: 57, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 270, column: 58)
!1464 = !DILocation(line: 271, column: 17, scope: !1463)
!1465 = !DILocation(line: 272, column: 13, scope: !1463)
!1466 = !DILocation(line: 273, column: 23, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 273, column: 17)
!1468 = !DILocation(line: 273, column: 17, scope: !1467)
!1469 = !DILocation(line: 273, column: 39, scope: !1467)
!1470 = !DILocation(line: 273, column: 17, scope: !1453)
!1471 = !DILocation(line: 274, column: 17, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 274, column: 17)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 273, column: 45)
!1474 = !DILocation(line: 274, column: 17, scope: !1473)
!1475 = !DILocation(line: 274, column: 17, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1472, file: !3, discriminator: 1)
!1477 = !DILocation(line: 275, column: 57, scope: !1473)
!1478 = !DILocation(line: 275, column: 17, scope: !1473)
!1479 = !DILocation(line: 276, column: 39, scope: !1473)
!1480 = !DILocation(line: 277, column: 13, scope: !1473)
!1481 = !DILocation(line: 281, column: 5, scope: !1317)
!1482 = !DILocation(line: 282, column: 1, scope: !1317)
!1483 = !DILocation(line: 282, column: 1, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1317, file: !3, discriminator: 2)
!1485 = distinct !DISubprogram(name: "hid_connection_close", scope: !3, file: !3, line: 321, type: !1486, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !71, !19}
!1488 = !{!1489, !1490, !1491}
!1489 = !DILocalVariable(name: "channel", arg: 1, scope: !1485, file: !3, line: 321, type: !71)
!1490 = !DILocalVariable(name: "type", arg: 2, scope: !1485, file: !3, line: 321, type: !19)
!1491 = !DILocalVariable(name: "conn", scope: !1485, file: !3, line: 323, type: !206)
!1492 = !DILocation(line: 321, column: 38, scope: !1485)
!1493 = !DILocation(line: 321, column: 50, scope: !1485)
!1494 = !DILocation(line: 324, column: 14, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 324, column: 9)
!1496 = !DILocation(line: 324, column: 9, scope: !1485)
!1497 = !DILocation(line: 115, column: 47, scope: !211, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 325, column: 16, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 324, column: 31)
!1500 = !DILocation(line: 118, column: 5, scope: !219, inlinedAt: !1498)
!1501 = !DILocation(line: 118, column: 5, scope: !221, inlinedAt: !1498)
!1502 = !DILocation(line: 119, column: 19, scope: !223, inlinedAt: !1498)
!1503 = !DILocation(line: 119, column: 32, scope: !223, inlinedAt: !1498)
!1504 = !DILocation(line: 119, column: 43, scope: !223, inlinedAt: !1498)
!1505 = !DILocation(line: 119, column: 53, scope: !232, inlinedAt: !1498)
!1506 = !DILocation(line: 119, column: 60, scope: !232, inlinedAt: !1498)
!1507 = !DILocation(line: 119, column: 13, scope: !235, inlinedAt: !1498)
!1508 = !DILocation(line: 118, column: 5, scope: !237, inlinedAt: !1498)
!1509 = !DILocation(line: 117, column: 17, scope: !211, inlinedAt: !1498)
!1510 = !DILocation(line: 118, column: 5, scope: !240, inlinedAt: !1498)
!1511 = !DILocation(line: 323, column: 17, scope: !1485)
!1512 = !DILocation(line: 327, column: 32, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 326, column: 19)
!1514 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 326, column: 13)
!1515 = !DILocation(line: 328, column: 9, scope: !1513)
!1516 = !DILocation(line: 331, column: 14, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 331, column: 9)
!1518 = !DILocation(line: 331, column: 9, scope: !1485)
!1519 = !DILocation(line: 127, column: 51, scope: !910, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 332, column: 16, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 331, column: 33)
!1522 = !DILocation(line: 130, column: 5, scope: !916, inlinedAt: !1520)
!1523 = !DILocation(line: 130, column: 5, scope: !918, inlinedAt: !1520)
!1524 = !DILocation(line: 131, column: 19, scope: !920, inlinedAt: !1520)
!1525 = !DILocation(line: 131, column: 33, scope: !920, inlinedAt: !1520)
!1526 = !DILocation(line: 131, column: 44, scope: !920, inlinedAt: !1520)
!1527 = !DILocation(line: 131, column: 54, scope: !926, inlinedAt: !1520)
!1528 = !DILocation(line: 131, column: 61, scope: !926, inlinedAt: !1520)
!1529 = !DILocation(line: 131, column: 13, scope: !929, inlinedAt: !1520)
!1530 = !DILocation(line: 130, column: 5, scope: !931, inlinedAt: !1520)
!1531 = !DILocation(line: 129, column: 17, scope: !910, inlinedAt: !1520)
!1532 = !DILocation(line: 130, column: 5, scope: !934, inlinedAt: !1520)
!1533 = !DILocation(line: 334, column: 33, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 333, column: 19)
!1535 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 333, column: 13)
!1536 = !DILocation(line: 335, column: 35, scope: !1534)
!1537 = !DILocation(line: 339, column: 14, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 339, column: 9)
!1539 = !DILocation(line: 339, column: 9, scope: !1538)
!1540 = !DILocation(line: 339, column: 24, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1538, file: !3, discriminator: 1)
!1542 = !DILocation(line: 339, column: 37, scope: !1541)
!1543 = !DILocation(line: 339, column: 43, scope: !1541)
!1544 = !DILocation(line: 339, column: 53, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1538, file: !3, discriminator: 2)
!1546 = !DILocation(line: 339, column: 67, scope: !1545)
!1547 = !DILocation(line: 339, column: 9, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1485, file: !3, discriminator: 2)
!1549 = !DILocation(line: 340, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 340, column: 13)
!1551 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 339, column: 74)
!1552 = !DILocation(line: 340, column: 29, scope: !1550)
!1553 = !DILocation(line: 340, column: 13, scope: !1551)
!1554 = !DILocation(line: 341, column: 53, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 340, column: 54)
!1556 = !DILocation(line: 341, column: 13, scope: !1555)
!1557 = !DILocation(line: 342, column: 9, scope: !1555)
!1558 = !DILocation(line: 343, column: 9, scope: !1551)
!1559 = !DILocation(line: 344, column: 5, scope: !1551)
!1560 = !DILocation(line: 345, column: 1, scope: !1485)
!1561 = distinct !DISubprogram(name: "hid_monitor_connection_open", scope: !3, file: !3, line: 284, type: !1318, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1563 = !DILocalVariable(name: "channel", arg: 1, scope: !1561, file: !3, line: 284, type: !71)
!1564 = !DILocalVariable(name: "packet", arg: 2, scope: !1561, file: !3, line: 284, type: !18)
!1565 = !DILocalVariable(name: "size", arg: 3, scope: !1561, file: !3, line: 284, type: !71)
!1566 = !DILocalVariable(name: "type", arg: 4, scope: !1561, file: !3, line: 284, type: !19)
!1567 = !DILocalVariable(name: "conn_type", arg: 5, scope: !1561, file: !3, line: 284, type: !19)
!1568 = !DILocalVariable(name: "addr", scope: !1561, file: !3, line: 286, type: !1248)
!1569 = !DILocalVariable(name: "conn", scope: !1561, file: !3, line: 287, type: !206)
!1570 = !DILocation(line: 284, column: 70, scope: !1561)
!1571 = !DILocation(line: 284, column: 88, scope: !1561)
!1572 = !DILocation(line: 286, column: 5, scope: !1561)
!1573 = !DILocation(line: 286, column: 15, scope: !1561)
!1574 = !DILocation(line: 288, column: 31, scope: !1561)
!1575 = !DILocation(line: 288, column: 5, scope: !1561)
!1576 = !DILocation(line: 289, column: 12, scope: !1561)
!1577 = !DILocation(line: 287, column: 17, scope: !1561)
!1578 = !DILocation(line: 290, column: 14, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 290, column: 9)
!1580 = !DILocation(line: 290, column: 9, scope: !1561)
!1581 = !DILocation(line: 291, column: 14, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 291, column: 13)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 290, column: 31)
!1584 = !DILocation(line: 291, column: 13, scope: !1583)
!1585 = !DILocation(line: 292, column: 17, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 292, column: 17)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 291, column: 20)
!1588 = !DILocation(line: 292, column: 17, scope: !1587)
!1589 = !DILocation(line: 295, column: 20, scope: !1587)
!1590 = !DILocation(line: 296, column: 9, scope: !1587)
!1591 = !DILocation(line: 297, column: 9, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !3, discriminator: 1)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 297, column: 9)
!1594 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 297, column: 9)
!1595 = !DILocation(line: 297, column: 9, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1594, file: !3, discriminator: 1)
!1597 = !DILocation(line: 297, column: 9, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !3, discriminator: 2)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 297, column: 9)
!1600 = !DILocation(line: 297, column: 9, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 3)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 297, column: 9)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 297, column: 9)
!1604 = !DILocation(line: 297, column: 9, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 9)
!1606 = !DILocation(line: 297, column: 9, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 10)
!1608 = !DILocation(line: 297, column: 9, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !3, discriminator: 5)
!1610 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 297, column: 9)
!1611 = !DILocation(line: 297, column: 9, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1613, file: !3, discriminator: 6)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 297, column: 9)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 297, column: 9)
!1615 = !DILocation(line: 298, column: 15, scope: !1583)
!1616 = !DILocation(line: 298, column: 28, scope: !1583)
!1617 = !DILocation(line: 300, column: 5, scope: !1583)
!1618 = !DILocation(line: 301, column: 14, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 301, column: 9)
!1620 = !DILocation(line: 301, column: 9, scope: !1561)
!1621 = !DILocation(line: 303, column: 18, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 303, column: 13)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 301, column: 33)
!1624 = !DILocation(line: 303, column: 13, scope: !1623)
!1625 = !DILocation(line: 304, column: 20, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 303, column: 27)
!1627 = !DILocation(line: 305, column: 13, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1629, file: !3, discriminator: 1)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 305, column: 13)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 305, column: 13)
!1631 = !DILocation(line: 305, column: 13, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1630, file: !3, discriminator: 1)
!1633 = !DILocation(line: 305, column: 13, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1635, file: !3, discriminator: 2)
!1635 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 305, column: 13)
!1636 = !DILocation(line: 305, column: 13, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !3, discriminator: 3)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 305, column: 13)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 305, column: 13)
!1640 = !DILocation(line: 305, column: 13, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1638, file: !3, discriminator: 9)
!1642 = !DILocation(line: 305, column: 13, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1638, file: !3, discriminator: 10)
!1644 = !DILocation(line: 305, column: 13, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1646, file: !3, discriminator: 5)
!1646 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 305, column: 13)
!1647 = !DILocation(line: 305, column: 13, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !3, discriminator: 6)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 305, column: 13)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 305, column: 13)
!1651 = !DILocation(line: 309, column: 13, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 309, column: 13)
!1653 = !DILocation(line: 309, column: 13, scope: !1623)
!1654 = !DILocation(line: 310, column: 33, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 309, column: 24)
!1656 = !DILocation(line: 311, column: 19, scope: !1655)
!1657 = !DILocation(line: 311, column: 35, scope: !1655)
!1658 = !DILocation(line: 312, column: 9, scope: !1655)
!1659 = !DILocation(line: 313, column: 33, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 312, column: 16)
!1661 = !DILocation(line: 314, column: 17, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 314, column: 17)
!1663 = !DILocation(line: 314, column: 33, scope: !1662)
!1664 = !DILocation(line: 314, column: 17, scope: !1660)
!1665 = !DILocation(line: 315, column: 57, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 314, column: 58)
!1667 = !DILocation(line: 315, column: 17, scope: !1666)
!1668 = !DILocation(line: 316, column: 13, scope: !1666)
!1669 = !DILocation(line: 319, column: 1, scope: !1561)
!1670 = !DILocation(line: 319, column: 1, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1561, file: !3, discriminator: 2)
!1672 = distinct !DISubprogram(name: "__create_hid_conn", scope: !3, file: !3, line: 139, type: !1205, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1673)
!1673 = !{!1674, !1675}
!1674 = !DILocalVariable(name: "addr", arg: 1, scope: !1672, file: !3, line: 139, type: !1207)
!1675 = !DILocalVariable(name: "conn", scope: !1672, file: !3, line: 141, type: !206)
!1676 = !DILocation(line: 139, column: 48, scope: !1672)
!1677 = !DILocation(line: 141, column: 17, scope: !1672)
!1678 = !DILocation(line: 143, column: 5, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 143, column: 5)
!1680 = !DILocation(line: 143, column: 5, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 1)
!1682 = !DILocation(line: 144, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 144, column: 13)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 143, column: 34)
!1685 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 143, column: 5)
!1686 = !DILocation(line: 144, column: 26, scope: !1683)
!1687 = !DILocation(line: 144, column: 13, scope: !1684)
!1688 = !DILocation(line: 146, column: 19, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 144, column: 35)
!1690 = !DILocation(line: 146, column: 32, scope: !1689)
!1691 = !DILocation(line: 147, column: 19, scope: !1689)
!1692 = !DILocation(line: 147, column: 34, scope: !1689)
!1693 = !DILocation(line: 148, column: 19, scope: !1689)
!1694 = !DILocation(line: 148, column: 29, scope: !1689)
!1695 = !DILocation(line: 149, column: 19, scope: !1689)
!1696 = !DILocation(line: 149, column: 35, scope: !1689)
!1697 = !DILocation(line: 150, column: 41, scope: !1689)
!1698 = !DILocation(line: 151, column: 13, scope: !1689)
!1699 = !DILocation(line: 152, column: 13, scope: !1689)
!1700 = !DILocation(line: 143, column: 5, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1685, file: !3, discriminator: 2)
!1702 = !DILocation(line: 143, column: 5, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1685, file: !3, discriminator: 1)
!1704 = distinct !{!1704, !1678, !1705}
!1705 = !DILocation(line: 154, column: 5, scope: !1679)
!1706 = !DILocation(line: 156, column: 1, scope: !1672)
!1707 = distinct !DISubprogram(name: "__free_hid_conn", scope: !3, file: !3, line: 159, type: !383, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1708)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "conn", arg: 1, scope: !1707, file: !3, line: 159, type: !206)
!1710 = !DILocation(line: 159, column: 41, scope: !1707)
!1711 = !DILocation(line: 161, column: 14, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 161, column: 9)
!1713 = !DILocation(line: 161, column: 9, scope: !1707)
!1714 = !DILocation(line: 164, column: 11, scope: !1707)
!1715 = !DILocation(line: 164, column: 18, scope: !1707)
!1716 = !DILocation(line: 165, column: 11, scope: !1707)
!1717 = !DILocation(line: 165, column: 24, scope: !1707)
!1718 = !DILocation(line: 166, column: 11, scope: !1707)
!1719 = !DILocation(line: 166, column: 26, scope: !1707)
!1720 = !DILocation(line: 168, column: 5, scope: !1707)
!1721 = !DILocation(line: 1034, column: 36, scope: !1140, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 169, column: 5, scope: !1707)
!1723 = !DILocation(line: 1034, column: 45, scope: !1140, inlinedAt: !1722)
!1724 = !DILocation(line: 1034, column: 55, scope: !1140, inlinedAt: !1722)
!1725 = !DILocation(line: 167, column: 21, scope: !1707)
!1726 = !DILocation(line: 1038, column: 10, scope: !1162, inlinedAt: !1722)
!1727 = !DILocation(line: 1038, column: 9, scope: !1140, inlinedAt: !1722)
!1728 = !DILocation(line: 1056, column: 9, scope: !1153, inlinedAt: !1722)
!1729 = !DILocation(line: 1057, column: 9, scope: !1153, inlinedAt: !1722)
!1730 = !DILocation(line: 170, column: 1, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1707, file: !3, discriminator: 1)
!1732 = distinct !DISubprogram(name: "cpu_reset", scope: !20, file: !20, line: 145, type: !1733, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1067)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null}
!1735 = !DILocation(line: 148, column: 5, scope: !1732)
!1736 = !DILocation(line: 149, column: 1, scope: !1732)
!1737 = distinct !DISubprogram(name: "hid_inter_try_send", scope: !3, file: !3, line: 920, type: !1103, isLocal: true, isDefinition: true, scopeLine: 921, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1738)
!1738 = !{!1739, !1740}
!1739 = !DILocalVariable(name: "channel", arg: 1, scope: !1737, file: !3, line: 920, type: !71)
!1740 = !DILocalVariable(name: "err", scope: !1737, file: !3, line: 922, type: !33)
!1741 = !DILocation(line: 920, column: 36, scope: !1737)
!1742 = !DILocation(line: 925, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 925, column: 9)
!1744 = !DILocation(line: 925, column: 22, scope: !1743)
!1745 = !DILocation(line: 925, column: 9, scope: !1737)
!1746 = !DILocation(line: 928, column: 54, scope: !1737)
!1747 = !DILocation(line: 928, column: 11, scope: !1737)
!1748 = !DILocation(line: 922, column: 9, scope: !1737)
!1749 = !DILocation(line: 929, column: 10, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 929, column: 9)
!1751 = !DILocation(line: 929, column: 9, scope: !1737)
!1752 = !DILocation(line: 930, column: 22, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 929, column: 15)
!1754 = !DILocation(line: 1034, column: 36, scope: !1140, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 931, column: 9, scope: !1753)
!1756 = !DILocation(line: 1034, column: 45, scope: !1140, inlinedAt: !1755)
!1757 = !DILocation(line: 1034, column: 55, scope: !1140, inlinedAt: !1755)
!1758 = !DILocation(line: 1038, column: 10, scope: !1162, inlinedAt: !1755)
!1759 = !DILocation(line: 1038, column: 9, scope: !1140, inlinedAt: !1755)
!1760 = !DILocation(line: 1060, column: 9, scope: !1153, inlinedAt: !1755)
!1761 = !DILocation(line: 1061, column: 9, scope: !1153, inlinedAt: !1755)
!1762 = !DILocation(line: 1066, column: 1, scope: !1167, inlinedAt: !1755)
!1763 = !DILocation(line: 932, column: 5, scope: !1753)
!1764 = !DILocation(line: 933, column: 1, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1737, file: !3, discriminator: 2)
