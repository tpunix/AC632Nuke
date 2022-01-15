; ModuleID = 'sdp.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.sdp_stack_t = type { %struct.sdp_core_data_t }
%struct.sdp_core_data_t = type { i16, i16, i16, i8, i8, i8 }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.service_record_item_t = type { %struct.btstack_linked_item, i32, i8* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@sdp_stack = hidden local_unnamed_addr global %struct.sdp_stack_t* null, section ".bt_stack_bss", align 4, !dbg !79
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [37 x i8] c"<BT-log> :====sdp_response_size %d\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"<BT-log> :pending channel %x\0A\0A\00", align 1
@bt_suspend_sdp_resumesdp_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @sdp_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @sdp_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @sdp_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !66
@.str.2 = private unnamed_addr constant [51 x i8] c"<BT-log> :sdp L2CAP_EVENT_INCOMING_CONNECTION %x\0A\0A\00", align 1
@hid_conn_depend_on_dev_company = external local_unnamed_addr constant i8, align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"<BT-log> :wait get remote device company %x\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"sdp CHANNEL_OPENED failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"sdp CHANNEL_OPENED OK\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"L2CAP_EVENT_CREDITS\0A \00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"<BT-log> :sdp CHANNEL_CLOSED %x %x \0A\0A\00", align 1
@sdp_record_item_begin = external global [0 x %struct.service_record_item_t], align 4
@sdp_record_item_end = external global [0 x %struct.service_record_item_t], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_sdp_resumesdp_release to i8*)], section "llvm.metadata"
@str = private unnamed_addr constant [41 x i8] c"<BT-log> :=========accetp direct=======\0A\00"
@str.10 = private unnamed_addr constant [26 x i8] c"<BT-log> :sdp release ok\0A\00"

; Function Attrs: alwaysinline nounwind optsize
define hidden void @sdp_init(%struct.sdp_stack_t*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !99 {
  call void @llvm.dbg.value(metadata %struct.sdp_stack_t* %0, metadata !103, metadata !DIExpression()), !dbg !104
  store %struct.sdp_stack_t* %0, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !105, !tbaa !106
  %2 = bitcast %struct.sdp_stack_t* %0 to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 10, i32 2, i1 false), !dbg !111
  %3 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !110, !tbaa !106
  %4 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %3, i32 0, i32 5, !dbg !112
  store i16 3, i16* %4, align 4, !dbg !113, !tbaa !114
  tail call void @l2cap_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @sdp_packet_handler, i16 zeroext 1, i16 zeroext -1) #7, !dbg !118
  ret void, !dbg !119
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: optsize
declare void @l2cap_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @sdp_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #4 section ".bt_stack_code" !dbg !120 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca [300 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [300 x i8]* %7, metadata !140, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.declare(metadata [300 x i8]* %7, metadata !203, metadata !DIExpression()), !dbg !227
  tail call void @llvm.dbg.declare(metadata [300 x i8]* %7, metadata !229, metadata !DIExpression()), !dbg !253
  %8 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !124, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i16 %1, metadata !125, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i8* %2, metadata !126, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i16 %3, metadata !127, metadata !DIExpression()), !dbg !258
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i32 0, i32 0, !dbg !259
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %9) #8, !dbg !259
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %8, metadata !131, metadata !DIExpression()), !dbg !260
  switch i8 %0, label %525 [
    i8 6, label %10
    i8 4, label %420
  ], !dbg !261

; <label>:10:                                     ; preds = %4
  %11 = load i8, i8* %2, align 1, !dbg !262, !tbaa !263
  %12 = tail call zeroext i16 @l2cap_get_remote_mtu_for_local_cid(i16 zeroext %1) #7, !dbg !264
  call void @llvm.dbg.value(metadata i16 %12, metadata !130, metadata !DIExpression()), !dbg !265
  %13 = icmp ult i16 %12, 300, !dbg !266
  %14 = select i1 %13, i16 %12, i16 300, !dbg !266
  call void @llvm.dbg.value(metadata i16 %14, metadata !130, metadata !DIExpression()), !dbg !265
  switch i8 %11, label %419 [
    i8 2, label %15
    i8 4, label %139
    i8 6, label %256
  ], !dbg !267

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i16 0, metadata !235, metadata !DIExpression()), !dbg !268
  %16 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 0, !dbg !269
  call void @llvm.lifetime.start.p0i8(i64 300, i8* nonnull %16) #8, !dbg !269
  call void @llvm.dbg.value(metadata i16 0, metadata !236, metadata !DIExpression()), !dbg !270
  %17 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !271
  %18 = load i8, i8* %17, align 1, !dbg !271, !tbaa !263
  %19 = zext i8 %18 to i16, !dbg !271
  %20 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !271
  %21 = load i8, i8* %20, align 1, !dbg !271, !tbaa !263
  %22 = zext i8 %21 to i16, !dbg !271
  %23 = shl nuw i16 %22, 8, !dbg !271
  %24 = or i16 %23, %19, !dbg !271
  call void @llvm.dbg.value(metadata i16 %24, metadata !237, metadata !DIExpression()), !dbg !272
  %25 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !273
  %26 = load i8, i8* %25, align 1, !dbg !273, !tbaa !263
  %27 = zext i8 %26 to i32, !dbg !273
  %28 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !273
  %29 = load i8, i8* %28, align 1, !dbg !273, !tbaa !263
  %30 = zext i8 %29 to i32, !dbg !273
  %31 = shl nuw nsw i32 %30, 8, !dbg !273
  %32 = or i32 %31, %27, !dbg !273
  call void @llvm.dbg.value(metadata i16 0, metadata !239, metadata !DIExpression()), !dbg !274
  call void @llvm.memset.p0i8.i32(i8* nonnull %16, i8 0, i32 300, i32 1, i1 false) #8, !dbg !275
  %33 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !276
  call void @llvm.dbg.value(metadata i8* %33, metadata !240, metadata !DIExpression()), !dbg !277
  %34 = tail call i32 @de_get_len(i8* %33) #7, !dbg !278
  %35 = and i32 %34, 65535, !dbg !279
  %36 = add nuw nsw i32 %35, 2, !dbg !281
  %37 = icmp ult i32 %36, %32, !dbg !282
  br i1 %37, label %38, label %137, !dbg !283

; <label>:38:                                     ; preds = %15
  %39 = add nuw nsw i32 %35, 5, !dbg !284
  %40 = add nuw nsw i32 %35, 6, !dbg !284
  %41 = getelementptr inbounds i8, i8* %2, i32 %40, !dbg !284
  %42 = load i8, i8* %41, align 1, !dbg !284, !tbaa !263
  %43 = zext i8 %42 to i16, !dbg !284
  %44 = getelementptr inbounds i8, i8* %2, i32 %39, !dbg !284
  %45 = load i8, i8* %44, align 1, !dbg !284, !tbaa !263
  %46 = zext i8 %45 to i16, !dbg !284
  %47 = shl nuw i16 %46, 8, !dbg !284
  %48 = or i16 %47, %43, !dbg !284
  call void @llvm.dbg.value(metadata i16 %48, metadata !242, metadata !DIExpression()), !dbg !286
  %49 = icmp eq i16 %48, 0, !dbg !287
  br i1 %49, label %137, label %50, !dbg !289

; <label>:50:                                     ; preds = %38
  %51 = add nuw nsw i32 %35, 7, !dbg !290
  %52 = getelementptr inbounds i8, i8* %2, i32 %51, !dbg !291
  call void @llvm.dbg.value(metadata i8* %52, metadata !243, metadata !DIExpression()), !dbg !292
  %53 = zext i16 %14 to i32, !dbg !293
  %54 = add nsw i32 %53, -12, !dbg !294
  %55 = sdiv i32 %54, 4, !dbg !295
  call void @llvm.dbg.value(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i16 0, metadata !246, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i16 9, metadata !247, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i16 0, metadata !248, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i16 0, metadata !249, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i16 0, metadata !250, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i16 0, metadata !252, metadata !DIExpression()), !dbg !302
  %56 = load i8, i8* %52, align 1, !dbg !303, !tbaa !263
  %57 = icmp eq i8 %56, 2, !dbg !305
  br i1 %57, label %58, label %67, !dbg !306

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %52, i32 2, !dbg !307
  %60 = load i8, i8* %59, align 1, !dbg !307, !tbaa !263
  %61 = zext i8 %60 to i16, !dbg !307
  %62 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !307
  %63 = load i8, i8* %62, align 1, !dbg !307, !tbaa !263
  %64 = zext i8 %63 to i16, !dbg !307
  %65 = shl nuw i16 %64, 8, !dbg !307
  %66 = or i16 %65, %61, !dbg !307
  call void @llvm.dbg.value(metadata i16 %66, metadata !246, metadata !DIExpression()), !dbg !297
  br label %67, !dbg !309

; <label>:67:                                     ; preds = %58, %50
  %68 = phi i16 [ %66, %58 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata i16 %68, metadata !246, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !251, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i16 0, metadata !252, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !251, metadata !DIExpression()), !dbg !310
  br i1 icmp ult (%struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0)), label %69, label %82, !dbg !311

; <label>:69:                                     ; preds = %67
  br label %70, !dbg !314

; <label>:70:                                     ; preds = %70, %69
  %71 = phi i16 [ %78, %70 ], [ 0, %69 ]
  %72 = phi %struct.service_record_item_t* [ %79, %70 ], [ getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %69 ]
  %73 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %72, i32 0, i32 2, !dbg !314
  %74 = load i8*, i8** %73, align 4, !dbg !314, !tbaa !318
  %75 = tail call i32 @sdp_record_matches_service_search_pattern(i8* %74, i8* %33) #7, !dbg !321
  %76 = icmp ne i32 %75, 0, !dbg !322
  %77 = zext i1 %76 to i16, !dbg !322
  %78 = add i16 %77, %71, !dbg !322
  call void @llvm.dbg.value(metadata i16 %78, metadata !252, metadata !DIExpression()), !dbg !302
  %79 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %72, i32 1, !dbg !323
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %79, metadata !251, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i16 %78, metadata !252, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %79, metadata !251, metadata !DIExpression()), !dbg !310
  %80 = icmp ult %struct.service_record_item_t* %79, getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0), !dbg !325
  br i1 %80, label %70, label %81, !dbg !311, !llvm.loop !327

; <label>:81:                                     ; preds = %70
  br label %82, !dbg !330

; <label>:82:                                     ; preds = %81, %67
  %83 = phi i16 [ 0, %67 ], [ %78, %81 ]
  %84 = icmp ugt i16 %83, %48, !dbg !330
  call void @llvm.dbg.value(metadata i16 %48, metadata !252, metadata !DIExpression()), !dbg !302
  %85 = select i1 %84, i16 %48, i16 %83, !dbg !332
  call void @llvm.dbg.value(metadata i16 %85, metadata !252, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !251, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !251, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i16 0, metadata !250, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i16 0, metadata !249, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i16 0, metadata !248, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i16 9, metadata !247, metadata !DIExpression()), !dbg !298
  br i1 icmp ult (%struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0)), label %86, label %126, !dbg !333

; <label>:86:                                     ; preds = %82
  %87 = and i32 %55, 65535
  br label %88, !dbg !333

; <label>:88:                                     ; preds = %110, %86
  %89 = phi %struct.service_record_item_t* [ getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %86 ], [ %115, %110 ]
  %90 = phi i16 [ 0, %86 ], [ %113, %110 ]
  %91 = phi i16 [ 0, %86 ], [ %114, %110 ]
  %92 = phi i16 [ 0, %86 ], [ %112, %110 ]
  %93 = phi i16 [ 9, %86 ], [ %111, %110 ]
  %94 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %89, i32 0, i32 2, !dbg !336
  %95 = load i8*, i8** %94, align 4, !dbg !336, !tbaa !318
  %96 = call i32 @sdp_record_matches_service_search_pattern(i8* %95, i8* %33) #7, !dbg !340
  %97 = icmp eq i32 %96, 0, !dbg !340
  br i1 %97, label %110, label %98, !dbg !341

; <label>:98:                                     ; preds = %88
  %99 = add i16 %90, 1, !dbg !342
  call void @llvm.dbg.value(metadata i16 %99, metadata !250, metadata !DIExpression()), !dbg !301
  %100 = icmp ult i16 %91, %68, !dbg !343
  br i1 %100, label %110, label %101, !dbg !345

; <label>:101:                                    ; preds = %98
  %102 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %89, i32 0, i32 1, !dbg !346
  %103 = load i32, i32* %102, align 4, !dbg !346, !tbaa !347
  call void @net_store_32(i8* nonnull %16, i16 zeroext %93, i32 %103) #7, !dbg !348
  %104 = add i16 %93, 4, !dbg !349
  call void @llvm.dbg.value(metadata i16 %104, metadata !247, metadata !DIExpression()), !dbg !298
  %105 = add i16 %92, 1, !dbg !350
  call void @llvm.dbg.value(metadata i16 %105, metadata !248, metadata !DIExpression()), !dbg !299
  %106 = icmp ult i16 %99, %85, !dbg !351
  br i1 %106, label %107, label %123, !dbg !353

; <label>:107:                                    ; preds = %101
  %108 = zext i16 %105 to i32, !dbg !354
  %109 = icmp ult i32 %108, %87, !dbg !356
  br i1 %109, label %110, label %117, !dbg !357

; <label>:110:                                    ; preds = %107, %98, %88
  %111 = phi i16 [ %93, %88 ], [ %93, %98 ], [ %104, %107 ]
  %112 = phi i16 [ %92, %88 ], [ %92, %98 ], [ %105, %107 ]
  %113 = phi i16 [ %90, %88 ], [ %99, %98 ], [ %99, %107 ]
  %114 = add i16 %91, 1
  call void @llvm.dbg.value(metadata i16 %113, metadata !250, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i16 %114, metadata !249, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i16 %112, metadata !248, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i16 %111, metadata !247, metadata !DIExpression()), !dbg !298
  %115 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %89, i32 1, !dbg !358
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %115, metadata !251, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %115, metadata !251, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i16 %113, metadata !250, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i16 %114, metadata !249, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i16 %112, metadata !248, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i16 %111, metadata !247, metadata !DIExpression()), !dbg !298
  %116 = icmp ult %struct.service_record_item_t* %115, getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0), !dbg !360
  br i1 %116, label %88, label %123, !dbg !333, !llvm.loop !362

; <label>:117:                                    ; preds = %107
  call void @llvm.dbg.value(metadata i32 1, metadata !245, metadata !DIExpression()), !dbg !296
  %118 = add i16 %91, 1, !dbg !365
  call void @llvm.dbg.value(metadata i16 %118, metadata !246, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i16 %105, metadata !248, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i16 %104, metadata !247, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i16 %118, metadata !246, metadata !DIExpression()), !dbg !297
  %119 = add i16 %93, 5
  call void @llvm.dbg.value(metadata i16 %119, metadata !247, metadata !DIExpression()), !dbg !298
  %120 = zext i16 %104 to i32
  %121 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %120
  store i8 2, i8* %121, align 1, !dbg !367, !tbaa !263
  call void @net_store_16(i8* nonnull %16, i16 zeroext %119, i16 zeroext %118) #7, !dbg !370
  %122 = add i16 %93, 7, !dbg !371
  call void @llvm.dbg.value(metadata i16 %122, metadata !247, metadata !DIExpression()), !dbg !298
  br label %132, !dbg !372

; <label>:123:                                    ; preds = %110, %101
  %124 = phi i16 [ %111, %110 ], [ %104, %101 ]
  %125 = phi i16 [ %112, %110 ], [ %105, %101 ]
  br label %126

; <label>:126:                                    ; preds = %123, %82
  %127 = phi i16 [ 9, %82 ], [ %124, %123 ]
  %128 = phi i16 [ 0, %82 ], [ %125, %123 ]
  %129 = add i16 %127, 1
  %130 = zext i16 %127 to i32
  %131 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %130
  store i8 0, i8* %131, align 1, !dbg !373, !tbaa !263
  br label %132

; <label>:132:                                    ; preds = %126, %117
  %133 = phi i16 [ %105, %117 ], [ %128, %126 ]
  %134 = phi i16 [ %122, %117 ], [ %129, %126 ]
  call void @llvm.dbg.value(metadata i16 %134, metadata !247, metadata !DIExpression()), !dbg !298
  store i8 3, i8* %16, align 1, !dbg !375, !tbaa !263
  call void @net_store_16(i8* nonnull %16, i16 zeroext 1, i16 zeroext %24) #7, !dbg !376
  %135 = add i16 %134, -5, !dbg !377
  call void @net_store_16(i8* nonnull %16, i16 zeroext 3, i16 zeroext %135) #7, !dbg !378
  call void @net_store_16(i8* nonnull %16, i16 zeroext 5, i16 zeroext %85) #7, !dbg !379
  call void @net_store_16(i8* nonnull %16, i16 zeroext 7, i16 zeroext %133) #7, !dbg !380
  call void @llvm.dbg.value(metadata i16 %134, metadata !236, metadata !DIExpression()), !dbg !270
  %136 = call i32 @sdp_try_respond(i16 zeroext %1, i8* nonnull %16, i16 zeroext %134) #7, !dbg !381
  br label %138, !dbg !382

; <label>:137:                                    ; preds = %38, %15
  call void @llvm.dbg.value(metadata i16 3, metadata !239, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i16 %1, metadata !383, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i16 undef, metadata !388, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i16 undef, metadata !389, metadata !DIExpression()), !dbg !393
  tail call void @l2cap_disconnect_internal(i16 zeroext %1, i8 zeroext 19) #7, !dbg !394
  br label %138, !dbg !395

; <label>:138:                                    ; preds = %137, %132
  call void @llvm.lifetime.end.p0i8(i64 300, i8* nonnull %16) #8, !dbg !396
  br label %525, !dbg !397

; <label>:139:                                    ; preds = %10
  %140 = bitcast i16* %6 to i8*, !dbg !398
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %140), !dbg !398
  %141 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 0, !dbg !398
  call void @llvm.lifetime.start.p0i8(i64 300, i8* nonnull %141) #8, !dbg !398
  call void @llvm.dbg.value(metadata i16 0, metadata !210, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i16 0, metadata !211, metadata !DIExpression()), !dbg !400
  %142 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !401
  %143 = load i8, i8* %142, align 1, !dbg !401, !tbaa !263
  %144 = zext i8 %143 to i16, !dbg !401
  %145 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !401
  %146 = load i8, i8* %145, align 1, !dbg !401, !tbaa !263
  %147 = zext i8 %146 to i16, !dbg !401
  %148 = shl nuw i16 %147, 8, !dbg !401
  %149 = or i16 %148, %144, !dbg !401
  call void @llvm.dbg.value(metadata i16 %149, metadata !212, metadata !DIExpression()), !dbg !402
  %150 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !403
  %151 = load i8, i8* %150, align 1, !dbg !403, !tbaa !263
  %152 = zext i8 %151 to i32, !dbg !403
  %153 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !403
  %154 = load i8, i8* %153, align 1, !dbg !403, !tbaa !263
  %155 = zext i8 %154 to i32, !dbg !403
  %156 = shl nuw nsw i32 %155, 8, !dbg !403
  %157 = or i32 %156, %152, !dbg !403
  call void @llvm.memset.p0i8.i32(i8* nonnull %141, i8 0, i32 300, i32 1, i1 false) #8, !dbg !404
  %158 = zext i16 %3 to i32, !dbg !405
  %159 = add nsw i32 %158, -5, !dbg !407
  %160 = icmp eq i32 %157, %159, !dbg !408
  br i1 %160, label %161, label %254, !dbg !409

; <label>:161:                                    ; preds = %139
  %162 = getelementptr inbounds i8, i8* %2, i32 8, !dbg !410
  %163 = load i8, i8* %162, align 1, !dbg !410, !tbaa !263
  %164 = zext i8 %163 to i32, !dbg !410
  %165 = getelementptr inbounds i8, i8* %2, i32 7, !dbg !410
  %166 = load i8, i8* %165, align 1, !dbg !410, !tbaa !263
  %167 = zext i8 %166 to i32, !dbg !410
  %168 = shl nuw nsw i32 %167, 8, !dbg !410
  %169 = or i32 %168, %164, !dbg !410
  %170 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !410
  %171 = load i8, i8* %170, align 1, !dbg !410, !tbaa !263
  %172 = zext i8 %171 to i32, !dbg !410
  %173 = shl nuw nsw i32 %172, 16, !dbg !410
  %174 = or i32 %169, %173, !dbg !410
  %175 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !410
  %176 = load i8, i8* %175, align 1, !dbg !410, !tbaa !263
  %177 = zext i8 %176 to i32, !dbg !410
  %178 = shl nuw i32 %177, 24, !dbg !410
  %179 = or i32 %174, %178, !dbg !410
  call void @llvm.dbg.value(metadata i32 %179, metadata !214, metadata !DIExpression()), !dbg !411
  %180 = getelementptr inbounds i8, i8* %2, i32 10, !dbg !412
  %181 = load i8, i8* %180, align 1, !dbg !412, !tbaa !263
  %182 = zext i8 %181 to i16, !dbg !412
  %183 = getelementptr inbounds i8, i8* %2, i32 9, !dbg !412
  %184 = load i8, i8* %183, align 1, !dbg !412, !tbaa !263
  %185 = zext i8 %184 to i16, !dbg !412
  %186 = shl nuw i16 %185, 8, !dbg !412
  %187 = or i16 %186, %182, !dbg !412
  call void @llvm.dbg.value(metadata i16 %187, metadata !215, metadata !DIExpression()), !dbg !413
  %188 = getelementptr inbounds i8, i8* %2, i32 11, !dbg !414
  call void @llvm.dbg.value(metadata i8* %188, metadata !216, metadata !DIExpression()), !dbg !415
  %189 = tail call i32 @de_get_len(i8* %188) #7, !dbg !416
  %190 = and i32 %189, 65535, !dbg !417
  %191 = add nuw nsw i32 %190, 11, !dbg !418
  %192 = getelementptr inbounds i8, i8* %2, i32 %191, !dbg !419
  call void @llvm.dbg.value(metadata i8* %192, metadata !218, metadata !DIExpression()), !dbg !420
  %193 = add nsw i16 %14, -10, !dbg !421
  call void @llvm.dbg.value(metadata i16 %193, metadata !219, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i16 0, metadata !220, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i16 7, metadata !222, metadata !DIExpression()), !dbg !424
  %194 = icmp ult i16 %193, %187, !dbg !425
  call void @llvm.dbg.value(metadata i16 %193, metadata !215, metadata !DIExpression()), !dbg !413
  %195 = select i1 %194, i16 %193, i16 %187, !dbg !427
  call void @llvm.dbg.value(metadata i16 %195, metadata !215, metadata !DIExpression()), !dbg !413
  %196 = load i8, i8* %192, align 1, !dbg !428, !tbaa !263
  %197 = icmp eq i8 %196, 2, !dbg !430
  br i1 %197, label %198, label %207, !dbg !431

; <label>:198:                                    ; preds = %161
  %199 = getelementptr inbounds i8, i8* %192, i32 2, !dbg !432
  %200 = load i8, i8* %199, align 1, !dbg !432, !tbaa !263
  %201 = zext i8 %200 to i16, !dbg !432
  %202 = getelementptr inbounds i8, i8* %192, i32 1, !dbg !432
  %203 = load i8, i8* %202, align 1, !dbg !432, !tbaa !263
  %204 = zext i8 %203 to i16, !dbg !432
  %205 = shl nuw i16 %204, 8, !dbg !432
  %206 = or i16 %205, %201, !dbg !432
  call void @llvm.dbg.value(metadata i16 %206, metadata !220, metadata !DIExpression()), !dbg !423
  br label %207, !dbg !434

; <label>:207:                                    ; preds = %198, %161
  %208 = phi i16 [ %206, %198 ], [ 0, %161 ]
  call void @llvm.dbg.value(metadata i16 %208, metadata !220, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %179, metadata !435, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !440, metadata !DIExpression()), !dbg !443
  br i1 icmp ult (%struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0)), label %209, label %254, !dbg !444

; <label>:209:                                    ; preds = %207
  br label %210, !dbg !447

; <label>:210:                                    ; preds = %215, %209
  %211 = phi %struct.service_record_item_t* [ %216, %215 ], [ getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %209 ]
  %212 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %211, i32 0, i32 1, !dbg !447
  %213 = load i32, i32* %212, align 4, !dbg !447, !tbaa !347
  %214 = icmp eq i32 %213, %179, !dbg !451
  br i1 %214, label %218, label %215, !dbg !452

; <label>:215:                                    ; preds = %210
  %216 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %211, i32 1, !dbg !453
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %216, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %216, metadata !440, metadata !DIExpression()), !dbg !443
  %217 = icmp ult %struct.service_record_item_t* %216, getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0), !dbg !455
  br i1 %217, label %210, label %253, !dbg !444, !llvm.loop !457

; <label>:218:                                    ; preds = %210
  %219 = icmp eq i16 %208, 0, !dbg !460
  %220 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %211, i32 0, i32 2
  br i1 %219, label %221, label %227, !dbg !462

; <label>:221:                                    ; preds = %218
  %222 = load i8*, i8** %220, align 4, !dbg !463, !tbaa !318
  %223 = tail call i32 @spd_get_filtered_size(i8* %222, i8* %188) #7, !dbg !465
  %224 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 7, !dbg !466
  %225 = and i32 %223, 65535, !dbg !467
  call void @de_store_descriptor_with_len(i8* %224, i32 6, i32 6, i32 %225) #7, !dbg !468
  %226 = add i16 %195, -3, !dbg !469
  call void @llvm.dbg.value(metadata i16 %226, metadata !215, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i16 10, metadata !222, metadata !DIExpression()), !dbg !424
  br label %227, !dbg !470

; <label>:227:                                    ; preds = %221, %218
  %228 = phi i16 [ %226, %221 ], [ %195, %218 ]
  %229 = phi i32 [ 10, %221 ], [ 7, %218 ]
  call void @llvm.dbg.value(metadata i16 %228, metadata !215, metadata !DIExpression()), !dbg !413
  %230 = load i8*, i8** %220, align 4, !dbg !471, !tbaa !318
  %231 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %229, !dbg !472
  call void @llvm.dbg.value(metadata i16* %6, metadata !224, metadata !DIExpression(DW_OP_deref)), !dbg !473
  %232 = call i32 @sdp_filter_attributes_in_attributeIDList(i8* %230, i8* %188, i16 zeroext %208, i16 zeroext %228, i16* nonnull %6, i8* %231) #7, !dbg !474
  call void @llvm.dbg.value(metadata i32 %232, metadata !225, metadata !DIExpression()), !dbg !475
  %233 = load i16, i16* %6, align 2, !dbg !476, !tbaa !477
  call void @llvm.dbg.value(metadata i16 %233, metadata !224, metadata !DIExpression()), !dbg !473
  %234 = zext i16 %233 to i32, !dbg !476
  %235 = add nuw nsw i32 %234, %229, !dbg !478
  %236 = trunc i32 %235 to i16, !dbg !478
  call void @llvm.dbg.value(metadata i16 %236, metadata !222, metadata !DIExpression()), !dbg !424
  %237 = and i32 %235, 65535, !dbg !479
  %238 = add nuw nsw i32 %235, 65529, !dbg !480
  %239 = trunc i32 %238 to i16, !dbg !479
  call void @llvm.dbg.value(metadata i16 %239, metadata !226, metadata !DIExpression()), !dbg !481
  %240 = icmp eq i32 %232, 0, !dbg !482
  br i1 %240, label %244, label %241, !dbg !484

; <label>:241:                                    ; preds = %227
  %242 = add i16 %236, 1, !dbg !485
  call void @llvm.dbg.value(metadata i16 %242, metadata !222, metadata !DIExpression()), !dbg !424
  %243 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %237, !dbg !487
  store i8 0, i8* %243, align 1, !dbg !488, !tbaa !263
  br label %249, !dbg !489

; <label>:244:                                    ; preds = %227
  %245 = add i16 %233, %208, !dbg !490
  call void @llvm.dbg.value(metadata i16 %245, metadata !220, metadata !DIExpression()), !dbg !423
  %246 = add i16 %236, 1, !dbg !492
  call void @llvm.dbg.value(metadata i16 %246, metadata !222, metadata !DIExpression()), !dbg !424
  %247 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %237, !dbg !493
  store i8 2, i8* %247, align 1, !dbg !494, !tbaa !263
  call void @net_store_16(i8* nonnull %141, i16 zeroext %246, i16 zeroext %245) #7, !dbg !495
  %248 = add i16 %236, 3, !dbg !496
  call void @llvm.dbg.value(metadata i16 %248, metadata !222, metadata !DIExpression()), !dbg !424
  br label %249

; <label>:249:                                    ; preds = %244, %241
  %250 = phi i16 [ %242, %241 ], [ %248, %244 ]
  call void @llvm.dbg.value(metadata i16 %250, metadata !222, metadata !DIExpression()), !dbg !424
  store i8 5, i8* %141, align 1, !dbg !497, !tbaa !263
  call void @net_store_16(i8* nonnull %141, i16 zeroext 1, i16 zeroext %149) #7, !dbg !498
  %251 = add i16 %250, -5, !dbg !499
  call void @net_store_16(i8* nonnull %141, i16 zeroext 3, i16 zeroext %251) #7, !dbg !500
  call void @net_store_16(i8* nonnull %141, i16 zeroext 5, i16 zeroext %239) #7, !dbg !501
  call void @llvm.dbg.value(metadata i16 %250, metadata !210, metadata !DIExpression()), !dbg !399
  %252 = call i32 @sdp_try_respond(i16 zeroext %1, i8* nonnull %141, i16 zeroext %250) #7, !dbg !502
  br label %255, !dbg !503

; <label>:253:                                    ; preds = %215
  br label %254, !dbg !504

; <label>:254:                                    ; preds = %253, %207, %139
  call void @llvm.dbg.value(metadata i16 %1, metadata !383, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i16 undef, metadata !388, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i16 undef, metadata !389, metadata !DIExpression()), !dbg !507
  tail call void @l2cap_disconnect_internal(i16 zeroext %1, i8 zeroext 19) #7, !dbg !508
  br label %255, !dbg !509

; <label>:255:                                    ; preds = %254, %249
  call void @llvm.lifetime.end.p0i8(i64 300, i8* nonnull %141) #8, !dbg !510
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %140)
  br label %525, !dbg !511

; <label>:256:                                    ; preds = %10
  call void @llvm.dbg.value(metadata i16 0, metadata !148, metadata !DIExpression()), !dbg !512
  %257 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 0, !dbg !513
  call void @llvm.lifetime.start.p0i8(i64 300, i8* nonnull %257) #8, !dbg !513
  call void @llvm.dbg.value(metadata i16 0, metadata !149, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i16 0, metadata !150, metadata !DIExpression()), !dbg !515
  %258 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !516
  %259 = load i8, i8* %258, align 1, !dbg !516, !tbaa !263
  %260 = zext i8 %259 to i16, !dbg !516
  %261 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !516
  %262 = load i8, i8* %261, align 1, !dbg !516, !tbaa !263
  %263 = zext i8 %262 to i16, !dbg !516
  %264 = shl nuw i16 %263, 8, !dbg !516
  %265 = or i16 %264, %260, !dbg !516
  call void @llvm.dbg.value(metadata i16 %265, metadata !151, metadata !DIExpression()), !dbg !517
  call void @llvm.memset.p0i8.i32(i8* nonnull %257, i8 0, i32 300, i32 1, i1 false) #8, !dbg !518
  %266 = getelementptr inbounds i8, i8* %2, i32 5, !dbg !519
  call void @llvm.dbg.value(metadata i8* %266, metadata !153, metadata !DIExpression()), !dbg !520
  %267 = tail call i32 @de_get_len(i8* %266) #7, !dbg !521
  %268 = and i32 %267, 65535, !dbg !522
  %269 = add nuw nsw i32 %268, 5, !dbg !522
  %270 = add nuw nsw i32 %268, 6, !dbg !522
  %271 = getelementptr inbounds i8, i8* %2, i32 %270, !dbg !522
  %272 = load i8, i8* %271, align 1, !dbg !522, !tbaa !263
  %273 = zext i8 %272 to i16, !dbg !522
  %274 = getelementptr inbounds i8, i8* %2, i32 %269, !dbg !522
  %275 = load i8, i8* %274, align 1, !dbg !522, !tbaa !263
  %276 = zext i8 %275 to i16, !dbg !522
  %277 = shl nuw i16 %276, 8, !dbg !522
  %278 = or i16 %277, %273, !dbg !522
  call void @llvm.dbg.value(metadata i16 %278, metadata !155, metadata !DIExpression()), !dbg !523
  %279 = add nuw nsw i32 %268, 7, !dbg !524
  %280 = getelementptr inbounds i8, i8* %2, i32 %279, !dbg !525
  call void @llvm.dbg.value(metadata i8* %280, metadata !156, metadata !DIExpression()), !dbg !526
  %281 = tail call i32 @de_get_len(i8* %280) #7, !dbg !527
  %282 = and i32 %281, 65535, !dbg !528
  %283 = add nuw nsw i32 %282, %279, !dbg !529
  %284 = getelementptr inbounds i8, i8* %2, i32 %283, !dbg !530
  call void @llvm.dbg.value(metadata i8* %284, metadata !158, metadata !DIExpression()), !dbg !531
  %285 = add nsw i16 %14, -12, !dbg !532
  call void @llvm.dbg.value(metadata i16 %285, metadata !159, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i16 0, metadata !160, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i16 0, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i32 1, metadata !165, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i16 0, metadata !166, metadata !DIExpression()), !dbg !537
  %286 = icmp ult i16 %285, %278, !dbg !538
  call void @llvm.dbg.value(metadata i16 %285, metadata !155, metadata !DIExpression()), !dbg !523
  %287 = select i1 %286, i16 %285, i16 %278, !dbg !540
  call void @llvm.dbg.value(metadata i16 %287, metadata !155, metadata !DIExpression()), !dbg !523
  %288 = load i8, i8* %284, align 1, !dbg !541, !tbaa !263
  %289 = icmp eq i8 %288, 4, !dbg !543
  br i1 %289, label %290, label %307, !dbg !544

; <label>:290:                                    ; preds = %256
  %291 = getelementptr inbounds i8, i8* %284, i32 2, !dbg !545
  %292 = load i8, i8* %291, align 1, !dbg !545, !tbaa !263
  %293 = zext i8 %292 to i32, !dbg !545
  %294 = getelementptr inbounds i8, i8* %284, i32 1, !dbg !545
  %295 = load i8, i8* %294, align 1, !dbg !545, !tbaa !263
  %296 = zext i8 %295 to i32, !dbg !545
  %297 = shl nuw nsw i32 %296, 8, !dbg !545
  %298 = or i32 %297, %293, !dbg !545
  %299 = getelementptr inbounds i8, i8* %284, i32 4, !dbg !547
  %300 = load i8, i8* %299, align 1, !dbg !547, !tbaa !263
  %301 = zext i8 %300 to i16, !dbg !547
  %302 = getelementptr inbounds i8, i8* %284, i32 3, !dbg !547
  %303 = load i8, i8* %302, align 1, !dbg !547, !tbaa !263
  %304 = zext i8 %303 to i16, !dbg !547
  %305 = shl nuw i16 %304, 8, !dbg !547
  %306 = or i16 %305, %301, !dbg !547
  call void @llvm.dbg.value(metadata i16 %306, metadata !161, metadata !DIExpression()), !dbg !535
  br label %307, !dbg !548

; <label>:307:                                    ; preds = %290, %256
  %308 = phi i16 [ %306, %290 ], [ 0, %256 ]
  %309 = phi i32 [ %298, %290 ], [ 0, %256 ]
  call void @llvm.dbg.value(metadata i16 %308, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i16 7, metadata !162, metadata !DIExpression()), !dbg !549
  %310 = icmp eq i32 %309, 0, !dbg !550
  %311 = icmp eq i16 %308, 0, !dbg !551
  %312 = and i1 %311, %310, !dbg !553
  br i1 %312, label %313, label %339, !dbg !553

; <label>:313:                                    ; preds = %307
  call void @llvm.dbg.value(metadata i8* %266, metadata !554, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i8* %280, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i16 0, metadata !560, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !561, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !561, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i16 0, metadata !560, metadata !DIExpression()), !dbg !565
  br i1 icmp ult (%struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0)), label %314, label %334, !dbg !567

; <label>:314:                                    ; preds = %313
  br label %315, !dbg !570

; <label>:315:                                    ; preds = %329, %314
  %316 = phi %struct.service_record_item_t* [ %331, %329 ], [ getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %314 ]
  %317 = phi i16 [ %330, %329 ], [ 0, %314 ]
  %318 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %316, i32 0, i32 2, !dbg !570
  %319 = load i8*, i8** %318, align 4, !dbg !570, !tbaa !318
  %320 = tail call i32 @sdp_record_matches_service_search_pattern(i8* %319, i8* %266) #7, !dbg !574
  %321 = icmp eq i32 %320, 0, !dbg !574
  br i1 %321, label %329, label %322, !dbg !575

; <label>:322:                                    ; preds = %315
  %323 = load i8*, i8** %318, align 4, !dbg !576, !tbaa !318
  %324 = tail call i32 @spd_get_filtered_size(i8* %323, i8* %280) #7, !dbg !577
  %325 = zext i16 %317 to i32, !dbg !578
  %326 = add nuw nsw i32 %325, 3, !dbg !579
  %327 = add i32 %326, %324, !dbg !578
  %328 = trunc i32 %327 to i16, !dbg !578
  call void @llvm.dbg.value(metadata i16 %328, metadata !560, metadata !DIExpression()), !dbg !565
  br label %329, !dbg !580

; <label>:329:                                    ; preds = %322, %315
  %330 = phi i16 [ %328, %322 ], [ %317, %315 ]
  call void @llvm.dbg.value(metadata i16 %330, metadata !560, metadata !DIExpression()), !dbg !565
  %331 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %316, i32 1, !dbg !581
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %331, metadata !561, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %331, metadata !561, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i16 %330, metadata !560, metadata !DIExpression()), !dbg !565
  %332 = icmp ult %struct.service_record_item_t* %331, getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0), !dbg !583
  br i1 %332, label %315, label %333, !dbg !567, !llvm.loop !585

; <label>:333:                                    ; preds = %329
  br label %334, !dbg !588

; <label>:334:                                    ; preds = %333, %313
  %335 = phi i16 [ 0, %313 ], [ %330, %333 ]
  call void @llvm.dbg.value(metadata i16 %335, metadata !167, metadata !DIExpression()), !dbg !588
  %336 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 7, !dbg !589
  %337 = zext i16 %335 to i32, !dbg !590
  call void @de_store_descriptor_with_len(i8* %336, i32 6, i32 6, i32 %337) #7, !dbg !591
  call void @llvm.dbg.value(metadata i16 10, metadata !162, metadata !DIExpression()), !dbg !549
  %338 = add i16 %287, -3, !dbg !592
  call void @llvm.dbg.value(metadata i16 %338, metadata !155, metadata !DIExpression()), !dbg !523
  br label %339, !dbg !593

; <label>:339:                                    ; preds = %334, %307
  %340 = phi i16 [ 7, %307 ], [ 10, %334 ]
  %341 = phi i16 [ %287, %307 ], [ %338, %334 ]
  call void @llvm.dbg.value(metadata i16 %341, metadata !155, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), metadata !170, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i16 0, metadata !166, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 1, metadata !165, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 0, metadata !164, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i16 %308, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i16 %340, metadata !162, metadata !DIExpression()), !dbg !549
  br i1 icmp ult (%struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %struct.service_record_item_t* getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0)), label %342, label %408, !dbg !596

; <label>:342:                                    ; preds = %339
  %343 = bitcast i16* %5 to i8*
  br label %344, !dbg !596

; <label>:344:                                    ; preds = %390, %342
  %345 = phi i16 [ %341, %342 ], [ %394, %390 ]
  %346 = phi %struct.service_record_item_t* [ getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_begin, i32 0, i32 0), %342 ], [ %396, %390 ]
  %347 = phi i16 [ 0, %342 ], [ %395, %390 ]
  %348 = phi i32 [ 1, %342 ], [ %393, %390 ]
  %349 = phi i16 [ %308, %342 ], [ %392, %390 ]
  %350 = phi i16 [ %340, %342 ], [ %391, %390 ]
  %351 = zext i16 %347 to i32, !dbg !598
  %352 = icmp slt i32 %351, %309, !dbg !600
  br i1 %352, label %390, label %353, !dbg !601

; <label>:353:                                    ; preds = %344
  %354 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %346, i32 0, i32 2, !dbg !602
  %355 = load i8*, i8** %354, align 4, !dbg !602, !tbaa !318
  %356 = call i32 @sdp_record_matches_service_search_pattern(i8* %355, i8* %266) #7, !dbg !604
  %357 = icmp eq i32 %356, 0, !dbg !604
  br i1 %357, label %390, label %358, !dbg !605

; <label>:358:                                    ; preds = %353
  %359 = icmp eq i16 %349, 0, !dbg !606
  br i1 %359, label %360, label %376, !dbg !607

; <label>:360:                                    ; preds = %358
  %361 = load i8*, i8** %354, align 4, !dbg !608, !tbaa !318
  %362 = call i32 @spd_get_filtered_size(i8* %361, i8* %280) #7, !dbg !609
  %363 = and i32 %362, 65535, !dbg !610
  %364 = icmp eq i32 %363, 0, !dbg !612
  br i1 %364, label %390, label %365, !dbg !613

; <label>:365:                                    ; preds = %360
  %366 = add nuw nsw i32 %363, 3, !dbg !614
  %367 = zext i16 %345 to i32, !dbg !616
  %368 = icmp ule i32 %366, %367, !dbg !617
  %369 = icmp ne i32 %348, 0, !dbg !618
  %370 = or i1 %369, %368, !dbg !620
  br i1 %370, label %371, label %398, !dbg !620

; <label>:371:                                    ; preds = %365
  %372 = zext i16 %350 to i32, !dbg !621
  %373 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %372, !dbg !621
  call void @de_store_descriptor_with_len(i8* %373, i32 6, i32 6, i32 %363) #7, !dbg !622
  %374 = add i16 %350, 3, !dbg !623
  call void @llvm.dbg.value(metadata i16 %374, metadata !162, metadata !DIExpression()), !dbg !549
  %375 = add i16 %345, -3, !dbg !624
  call void @llvm.dbg.value(metadata i16 %375, metadata !155, metadata !DIExpression()), !dbg !523
  br label %376

; <label>:376:                                    ; preds = %371, %358
  %377 = phi i16 [ %350, %358 ], [ %374, %371 ]
  %378 = phi i16 [ %345, %358 ], [ %375, %371 ]
  call void @llvm.dbg.value(metadata i16 %378, metadata !155, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i16 %347, metadata !166, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 0, metadata !164, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i16 %377, metadata !162, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !536
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %343) #8, !dbg !625
  %379 = load i8*, i8** %354, align 4, !dbg !626, !tbaa !318
  %380 = zext i16 %377 to i32, !dbg !627
  %381 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %380, !dbg !627
  call void @llvm.dbg.value(metadata i16* %5, metadata !193, metadata !DIExpression(DW_OP_deref)), !dbg !628
  %382 = call i32 @sdp_filter_attributes_in_attributeIDList(i8* %379, i8* %280, i16 zeroext %349, i16 zeroext %378, i16* nonnull %5, i8* %381) #7, !dbg !629
  call void @llvm.dbg.value(metadata i32 %382, metadata !195, metadata !DIExpression()), !dbg !630
  %383 = load i16, i16* %5, align 2, !dbg !631, !tbaa !477
  call void @llvm.dbg.value(metadata i16 %383, metadata !193, metadata !DIExpression()), !dbg !628
  %384 = add i16 %383, %377, !dbg !632
  call void @llvm.dbg.value(metadata i16 %384, metadata !162, metadata !DIExpression()), !dbg !549
  %385 = icmp eq i32 %382, 0, !dbg !633
  br i1 %385, label %388, label %386, !dbg !635

; <label>:386:                                    ; preds = %376
  %387 = sub i16 %378, %383, !dbg !636
  call void @llvm.dbg.value(metadata i16 0, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i16 undef, metadata !166, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 1, metadata !164, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %343) #8, !dbg !637
  br label %390

; <label>:388:                                    ; preds = %376
  call void @llvm.dbg.value(metadata i32 1, metadata !164, metadata !DIExpression()), !dbg !595
  %389 = add i16 %383, %349, !dbg !638
  call void @llvm.dbg.value(metadata i16 %389, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i16 undef, metadata !166, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 1, metadata !164, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i16 %389, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %343) #8, !dbg !637
  br label %399

; <label>:390:                                    ; preds = %386, %360, %353, %344
  %391 = phi i16 [ %384, %386 ], [ %350, %344 ], [ %350, %353 ], [ %350, %360 ]
  %392 = phi i16 [ 0, %386 ], [ %349, %344 ], [ %349, %353 ], [ 0, %360 ]
  %393 = phi i32 [ 0, %386 ], [ %348, %344 ], [ %348, %353 ], [ %348, %360 ]
  %394 = phi i16 [ %387, %386 ], [ %345, %344 ], [ %345, %353 ], [ %345, %360 ]
  %395 = add i16 %347, 1
  call void @llvm.dbg.value(metadata i16 %394, metadata !155, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i16 %395, metadata !166, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 %393, metadata !165, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 0, metadata !164, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i16 %392, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i16 %391, metadata !162, metadata !DIExpression()), !dbg !549
  %396 = getelementptr inbounds %struct.service_record_item_t, %struct.service_record_item_t* %346, i32 1, !dbg !639
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %396, metadata !170, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i16 %394, metadata !155, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata %struct.service_record_item_t* %396, metadata !170, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i16 %395, metadata !166, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 %393, metadata !165, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 0, metadata !164, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i16 %392, metadata !161, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i16 %391, metadata !162, metadata !DIExpression()), !dbg !549
  %397 = icmp ult %struct.service_record_item_t* %396, getelementptr inbounds ([0 x %struct.service_record_item_t], [0 x %struct.service_record_item_t]* @sdp_record_item_end, i32 0, i32 0), !dbg !641
  br i1 %397, label %344, label %407, !dbg !596, !llvm.loop !643

; <label>:398:                                    ; preds = %365
  br label %399, !dbg !646

; <label>:399:                                    ; preds = %398, %388
  %400 = phi i16 [ %384, %388 ], [ %350, %398 ]
  %401 = phi i16 [ %389, %388 ], [ 0, %398 ]
  %402 = zext i16 %400 to i32, !dbg !646
  %403 = add i16 %400, 1
  %404 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %402
  store i8 4, i8* %404, align 1, !dbg !647, !tbaa !263
  call void @net_store_16(i8* nonnull %257, i16 zeroext %403, i16 zeroext %347) #7, !dbg !650
  %405 = add i16 %400, 3, !dbg !651
  call void @llvm.dbg.value(metadata i16 %405, metadata !162, metadata !DIExpression()), !dbg !549
  call void @net_store_16(i8* nonnull %257, i16 zeroext %405, i16 zeroext %401) #7, !dbg !652
  %406 = add i16 %400, 5, !dbg !653
  call void @llvm.dbg.value(metadata i16 %406, metadata !162, metadata !DIExpression()), !dbg !549
  br label %413, !dbg !654

; <label>:407:                                    ; preds = %390
  br label %408, !dbg !646

; <label>:408:                                    ; preds = %407, %339
  %409 = phi i16 [ %340, %339 ], [ %391, %407 ]
  %410 = zext i16 %409 to i32, !dbg !646
  %411 = add i16 %409, 1
  %412 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i32 0, i32 %410
  store i8 0, i8* %412, align 1, !dbg !655, !tbaa !263
  br label %413

; <label>:413:                                    ; preds = %408, %399
  %414 = phi i16 [ %400, %399 ], [ %409, %408 ]
  %415 = phi i16 [ %406, %399 ], [ %411, %408 ]
  %416 = add i16 %414, -7, !dbg !657
  call void @llvm.dbg.value(metadata i16 %415, metadata !162, metadata !DIExpression()), !dbg !549
  store i8 7, i8* %257, align 1, !dbg !658, !tbaa !263
  call void @net_store_16(i8* nonnull %257, i16 zeroext 1, i16 zeroext %265) #7, !dbg !659
  %417 = add i16 %415, -5, !dbg !660
  call void @net_store_16(i8* nonnull %257, i16 zeroext 3, i16 zeroext %417) #7, !dbg !661
  call void @net_store_16(i8* nonnull %257, i16 zeroext 5, i16 zeroext %416) #7, !dbg !662
  call void @llvm.dbg.value(metadata i16 %415, metadata !149, metadata !DIExpression()), !dbg !514
  %418 = call i32 @sdp_try_respond(i16 zeroext %1, i8* nonnull %257, i16 zeroext %415) #7, !dbg !663
  call void @llvm.lifetime.end.p0i8(i64 300, i8* nonnull %257) #8, !dbg !664
  br label %525, !dbg !665

; <label>:419:                                    ; preds = %10
  call void @llvm.dbg.value(metadata i16 %1, metadata !383, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i16 undef, metadata !388, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i16 undef, metadata !389, metadata !DIExpression()), !dbg !669
  tail call void @l2cap_disconnect_internal(i16 zeroext %1, i8 zeroext 19) #7, !dbg !670
  br label %525, !dbg !671

; <label>:420:                                    ; preds = %4
  %421 = load i8, i8* %2, align 1, !dbg !672, !tbaa !263
  switch i8 %421, label %525 [
    i8 114, label %422
    i8 112, label %482
    i8 116, label %500
    i8 113, label %506
    i8 121, label %522
  ], !dbg !673

; <label>:422:                                    ; preds = %420
  %423 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !674, !tbaa !263
  %424 = icmp slt i8 %423, 0, !dbg !674
  br i1 %424, label %425, label %428, !dbg !677

; <label>:425:                                    ; preds = %422
  %426 = zext i16 %1 to i32, !dbg !678
  %427 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i32 %426) #9, !dbg !678
  br label %428, !dbg !678

; <label>:428:                                    ; preds = %425, %422
  %429 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !680
  call void @bt_flip_addr(i8* nonnull %9, i8* %429) #7, !dbg !681
  %430 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !682, !tbaa !106
  %431 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %430, i32 0, i32 9, !dbg !684
  %432 = load i32, i32* %431, align 1, !dbg !684
  %433 = and i32 %432, 1048576, !dbg !682
  %434 = icmp eq i32 %433, 0, !dbg !682
  br i1 %434, label %450, label %435, !dbg !685

; <label>:435:                                    ; preds = %428
  %436 = call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #7, !dbg !686
  %437 = icmp eq i8 %436, 0, !dbg !686
  %438 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !tbaa !106
  br i1 %437, label %439, label %448, !dbg !689

; <label>:439:                                    ; preds = %435
  %440 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %438, i32 0, i32 9, !dbg !690
  %441 = load i32, i32* %440, align 1, !dbg !690
  %442 = and i32 %441, 4194304, !dbg !693
  %443 = icmp eq i32 %442, 0, !dbg !693
  br i1 %443, label %471, label %444, !dbg !694

; <label>:444:                                    ; preds = %439
  %445 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %438, i32 0, i32 3, !dbg !695
  store i16 %1, i16* %445, align 4, !dbg !697, !tbaa !698
  %446 = call i32 @sdp_send_cmd_iotl(i8* nonnull %9, i32 0, i32 0) #7, !dbg !699
  %447 = icmp eq i32 %446, 0, !dbg !701
  br i1 %447, label %525, label %471, !dbg !702

; <label>:448:                                    ; preds = %435
  %449 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %438, i32 0, i32 5, !dbg !703
  store i16 3, i16* %449, align 4, !dbg !705, !tbaa !114
  br label %471

; <label>:450:                                    ; preds = %428
  %451 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %430, i32 0, i32 5, !dbg !706
  store i16 3, i16* %451, align 4, !dbg !708, !tbaa !114
  %452 = call zeroext i8 @handle_remote_dev_type([6 x i8]* nonnull %8, i8 zeroext -1) #7, !dbg !709
  %453 = icmp ne i8 %452, 0, !dbg !711
  %454 = load i8, i8* @hid_conn_depend_on_dev_company, align 1, !dbg !712
  %455 = icmp eq i8 %454, 0, !dbg !712
  %456 = or i1 %453, %455, !dbg !714
  br i1 %456, label %474, label %457, !dbg !714

; <label>:457:                                    ; preds = %450
  %458 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !715, !tbaa !106
  %459 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %458, i32 0, i32 3, !dbg !717
  store i16 %1, i16* %459, align 4, !dbg !718, !tbaa !698
  %460 = call i32 @sdp_send_cmd_iotl(i8* nonnull %9, i32 2, i32 0) #7, !dbg !719
  %461 = icmp eq i32 %460, 0, !dbg !721
  br i1 %461, label %462, label %471, !dbg !722

; <label>:462:                                    ; preds = %457
  %463 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !723, !tbaa !263
  %464 = icmp slt i8 %463, 0, !dbg !723
  br i1 %464, label %465, label %525, !dbg !726

; <label>:465:                                    ; preds = %462
  %466 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !727, !tbaa !106
  %467 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %466, i32 0, i32 3, !dbg !727
  %468 = load i16, i16* %467, align 4, !dbg !727, !tbaa !698
  %469 = zext i16 %468 to i32, !dbg !727
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i32 %469) #9, !dbg !727
  br label %525, !dbg !727

; <label>:471:                                    ; preds = %457, %448, %444, %439
  %472 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !tbaa !106
  %473 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %472, i32 0, i32 3
  store i16 0, i16* %473, align 4, !tbaa !698
  br label %474, !dbg !729

; <label>:474:                                    ; preds = %471, %450
  %475 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !729, !tbaa !263
  %476 = icmp slt i8 %475, 0, !dbg !729
  br i1 %476, label %477, label %479, !dbg !731

; <label>:477:                                    ; preds = %474
  %478 = call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @str, i32 0, i32 0)), !dbg !732
  br label %479, !dbg !732

; <label>:479:                                    ; preds = %477, %474
  %480 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !734, !tbaa !106
  %481 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %480, i32 0, i32 0, i32 0, !dbg !735
  store i16 %1, i16* %481, align 2, !dbg !736, !tbaa !737
  call void @l2cap_accept_connection_internal(i16 zeroext %1) #7, !dbg !740
  br label %525, !dbg !741

; <label>:482:                                    ; preds = %420
  %483 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !742
  %484 = load i8, i8* %483, align 1, !dbg !742, !tbaa !263
  %485 = icmp eq i8 %484, 0, !dbg !742
  %486 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !tbaa !106
  %487 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %486, i32 0, i32 0, i32 0
  br i1 %485, label %494, label %488, !dbg !744

; <label>:488:                                    ; preds = %482
  store i16 0, i16* %487, align 2, !dbg !745, !tbaa !737
  %489 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !747, !tbaa !263
  %490 = and i8 %489, 32, !dbg !747
  %491 = icmp eq i8 %490, 0, !dbg !747
  br i1 %491, label %525, label %492, !dbg !749

; <label>:492:                                    ; preds = %488
  %493 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #9, !dbg !750
  br label %525, !dbg !750

; <label>:494:                                    ; preds = %482
  store i16 %1, i16* %487, align 2, !dbg !752, !tbaa !737
  %495 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !754, !tbaa !263
  %496 = and i8 %495, 32, !dbg !754
  %497 = icmp eq i8 %496, 0, !dbg !754
  br i1 %497, label %525, label %498, !dbg !756

; <label>:498:                                    ; preds = %494
  %499 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !757
  br label %525, !dbg !757

; <label>:500:                                    ; preds = %420
  %501 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !759, !tbaa !263
  %502 = and i8 %501, 32, !dbg !759
  %503 = icmp eq i8 %502, 0, !dbg !759
  br i1 %503, label %525, label %504, !dbg !761

; <label>:504:                                    ; preds = %500
  %505 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #9, !dbg !762
  br label %525, !dbg !762

; <label>:506:                                    ; preds = %420
  %507 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !764, !tbaa !263
  %508 = icmp slt i8 %507, 0, !dbg !764
  br i1 %508, label %509, label %516, !dbg !766

; <label>:509:                                    ; preds = %506
  %510 = zext i16 %1 to i32, !dbg !767
  %511 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !767, !tbaa !106
  %512 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %511, i32 0, i32 0, i32 0, !dbg !767
  %513 = load i16, i16* %512, align 2, !dbg !767, !tbaa !737
  %514 = zext i16 %513 to i32, !dbg !767
  %515 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i32 %510, i32 %514) #9, !dbg !767
  br label %516, !dbg !767

; <label>:516:                                    ; preds = %509, %506
  %517 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !769, !tbaa !106
  %518 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %517, i32 0, i32 0, i32 0, !dbg !771
  %519 = load i16, i16* %518, align 2, !dbg !771, !tbaa !737
  %520 = icmp eq i16 %519, %1, !dbg !772
  br i1 %520, label %521, label %525, !dbg !773

; <label>:521:                                    ; preds = %516
  store i16 0, i16* %518, align 2, !dbg !774, !tbaa !737
  br label %525, !dbg !776

; <label>:522:                                    ; preds = %420
  %523 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !777, !tbaa !106
  %524 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %523, i32 0, i32 0, i32 0, !dbg !778
  store i16 %1, i16* %524, align 2, !dbg !779, !tbaa !737
  br label %525, !dbg !780

; <label>:525:                                    ; preds = %522, %521, %516, %504, %500, %498, %494, %492, %488, %479, %465, %462, %444, %420, %419, %413, %255, %138, %4
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %9) #8, !dbg !781
  ret void, !dbg !781
}

; Function Attrs: nounwind optsize
define hidden i32 @sdp_create_error_response(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !384 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !383, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i16 %1, metadata !388, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i16 %2, metadata !389, metadata !DIExpression()), !dbg !784
  tail call void @l2cap_disconnect_internal(i16 zeroext %0, i8 zeroext 19) #7, !dbg !785
  ret i32 0, !dbg !786
}

; Function Attrs: optsize
declare void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @sdp_try_respond(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !787 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !791, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8* %1, metadata !792, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i16 %2, metadata !793, metadata !DIExpression()), !dbg !796
  %4 = icmp eq i16 %2, 0, !dbg !797
  br i1 %4, label %16, label %5, !dbg !799

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %0) #7, !dbg !800
  %7 = icmp eq i32 %6, 0, !dbg !800
  br i1 %7, label %16, label %8, !dbg !802

; <label>:8:                                      ; preds = %5
  %9 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !803, !tbaa !263
  %10 = icmp slt i8 %9, 0, !dbg !803
  br i1 %10, label %11, label %14, !dbg !805

; <label>:11:                                     ; preds = %8
  %12 = zext i16 %2 to i32, !dbg !806
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 %12) #9, !dbg !806
  br label %14, !dbg !806

; <label>:14:                                     ; preds = %11, %8
  %15 = tail call i32 @l2cap_send_internal(i16 zeroext %0, i8* %1, i16 zeroext %2, i8 zeroext 0) #7, !dbg !808
  br label %16, !dbg !809

; <label>:16:                                     ; preds = %14, %5, %3
  %17 = phi i32 [ %15, %14 ], [ 129, %3 ], [ 130, %5 ]
  ret i32 %17, !dbg !810
}

; Function Attrs: optsize
declare i32 @l2cap_can_send_packet_now(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @l2cap_send_internal(i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @connect_pending_connnecting_sdp_handler() local_unnamed_addr #4 section ".bt_stack_code" !dbg !811 {
  %1 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !816, !tbaa !106
  %2 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %1, i32 0, i32 3, !dbg !817
  %3 = load i16, i16* %2, align 4, !dbg !817, !tbaa !698
  call void @llvm.dbg.value(metadata i16 %3, metadata !815, metadata !DIExpression()), !dbg !818
  %4 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !819, !tbaa !263
  %5 = icmp slt i8 %4, 0, !dbg !819
  br i1 %5, label %6, label %9, !dbg !821

; <label>:6:                                      ; preds = %0
  %7 = zext i16 %3 to i32, !dbg !822
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %7) #9, !dbg !822
  br label %9, !dbg !822

; <label>:9:                                      ; preds = %6, %0
  %10 = icmp eq i16 %3, 0, !dbg !824
  br i1 %10, label %16, label %11, !dbg !826

; <label>:11:                                     ; preds = %9
  %12 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !827, !tbaa !106
  %13 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %12, i32 0, i32 0, i32 0, !dbg !829
  store i16 %3, i16* %13, align 2, !dbg !830, !tbaa !737
  tail call void @l2cap_accept_connection_internal(i16 zeroext %3) #7, !dbg !831
  %14 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !832, !tbaa !106
  %15 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %14, i32 0, i32 3, !dbg !833
  store i16 0, i16* %15, align 4, !dbg !834, !tbaa !698
  br label %16, !dbg !835

; <label>:16:                                     ; preds = %11, %9
  %17 = phi i32 [ 1, %11 ], [ 0, %9 ]
  ret i32 %17, !dbg !836
}

; Function Attrs: optsize
declare void @l2cap_accept_connection_internal(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @sdp_slave_channel_disconnect() local_unnamed_addr #4 section ".bt_stack_code" !dbg !837 {
  %1 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !841, !tbaa !106
  %2 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %1, i32 0, i32 0, i32 0, !dbg !843
  %3 = load i16, i16* %2, align 2, !dbg !843, !tbaa !737
  %4 = icmp eq i16 %3, 0, !dbg !841
  br i1 %4, label %6, label %5, !dbg !844

; <label>:5:                                      ; preds = %0
  tail call void @l2cap_disconnect_internal(i16 zeroext %3, i8 zeroext 19) #7, !dbg !845
  br label %6, !dbg !847

; <label>:6:                                      ; preds = %5, %0
  ret void, !dbg !848
}

; Function Attrs: nounwind optsize
define hidden i32 @sdp_core_data_for_send(i8* nocapture, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !849 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !853, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i16 %1, metadata !854, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i8 0, metadata !855, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i8 10, metadata !855, metadata !DIExpression()), !dbg !858
  %3 = load i8*, i8** bitcast (%struct.sdp_stack_t** @sdp_stack to i8**), align 4, !dbg !859, !tbaa !106
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %3, i32 10, i32 1, i1 false), !dbg !860
  ret i32 10, !dbg !861
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind optsize
define hidden void @sdp_core_data_for_set(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !866, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i16 %1, metadata !867, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8 0, metadata !868, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i8 10, metadata !868, metadata !DIExpression()), !dbg !871
  %3 = load i8*, i8** bitcast (%struct.sdp_stack_t** @sdp_stack to i8**), align 4, !dbg !872, !tbaa !106
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %0, i32 10, i32 1, i1 false), !dbg !873
  ret void, !dbg !874
}

; Function Attrs: optsize
declare zeroext i16 @l2cap_get_remote_mtu_for_local_cid(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @get_remote_test_flag(...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sdp_send_cmd_iotl(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @handle_remote_dev_type([6 x i8]*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @de_get_len(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sdp_record_matches_service_search_pattern(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @net_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @net_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @spd_get_filtered_size(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @de_store_descriptor_with_len(i8*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sdp_filter_attributes_in_attributeIDList(i8*, i8*, i16 zeroext, i16 zeroext, i16*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @sdp_suspend() #6 section ".bt_stack_code" !dbg !875 {
  ret i32 0, !dbg !876
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @sdp_resume() #6 section ".bt_stack_code" !dbg !877 {
  ret i32 0, !dbg !878
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_release() #4 section ".bt_stack_code" !dbg !879 {
  %1 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !880, !tbaa !106
  %2 = icmp eq %struct.sdp_stack_t* %1, null, !dbg !882
  br i1 %2, label %27, label %3, !dbg !883

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %1, i32 0, i32 0, i32 0, !dbg !884
  %5 = load i16, i16* %4, align 2, !dbg !884, !tbaa !737
  %6 = icmp eq i16 %5, 0, !dbg !886
  br i1 %6, label %8, label %7, !dbg !887

; <label>:7:                                      ; preds = %3
  tail call void @sdp_slave_channel_disconnect() #9, !dbg !888
  br label %27, !dbg !890

; <label>:8:                                      ; preds = %3
  %9 = tail call zeroext i8 @sdp_master_channel_disconnect() #7, !dbg !891
  %10 = icmp eq i8 %9, 0, !dbg !891
  br i1 %10, label %11, label %27, !dbg !893

; <label>:11:                                     ; preds = %8
  %12 = load %struct.sdp_stack_t*, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !894, !tbaa !106
  %13 = getelementptr inbounds %struct.sdp_stack_t, %struct.sdp_stack_t* %12, i32 0, i32 0, i32 1, !dbg !896
  %14 = load i16, i16* %13, align 2, !dbg !896, !tbaa !897
  %15 = icmp eq i16 %14, 0, !dbg !898
  br i1 %15, label %18, label %16, !dbg !899

; <label>:16:                                     ; preds = %11
  %17 = tail call i32 @sdp_send_cmd_iotl(i8* null, i32 1, i32 0) #7, !dbg !900
  br label %27, !dbg !902

; <label>:18:                                     ; preds = %11
  %19 = tail call zeroext i8 bitcast (i8 (...)* @is_l2cap_can_release_now to i8 ()*)() #7, !dbg !903
  %20 = icmp eq i8 %19, 0, !dbg !903
  br i1 %20, label %27, label %21, !dbg !905

; <label>:21:                                     ; preds = %18
  %22 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !906, !tbaa !263
  %23 = icmp slt i8 %22, 0, !dbg !906
  br i1 %23, label %24, label %26, !dbg !908

; <label>:24:                                     ; preds = %21
  %25 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.10, i32 0, i32 0)), !dbg !909
  br label %26, !dbg !909

; <label>:26:                                     ; preds = %24, %21
  store %struct.sdp_stack_t* null, %struct.sdp_stack_t** @sdp_stack, align 4, !dbg !911, !tbaa !106
  br label %27, !dbg !912

; <label>:27:                                     ; preds = %26, %18, %16, %8, %7, %0
  %28 = phi i32 [ 1, %7 ], [ 1, %16 ], [ 0, %26 ], [ 0, %0 ], [ 1, %8 ], [ 1, %18 ]
  ret i32 %28, !dbg !913
}

; Function Attrs: optsize
declare zeroext i8 @sdp_master_channel_disconnect() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_l2cap_can_release_now(...) local_unnamed_addr #3

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
attributes #6 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!96, !97}
!llvm.ident = !{!98}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !95, line: 190, type: !76, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !49, globals: !65)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !15, !20, !27, !39}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 81, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14}
!8 = !DIEnumerator(name: "SDP_ErrorResponse", value: 1)
!9 = !DIEnumerator(name: "SDP_ServiceSearchRequest", value: 2)
!10 = !DIEnumerator(name: "SDP_ServiceSearchResponse", value: 3)
!11 = !DIEnumerator(name: "SDP_ServiceAttributeRequest", value: 4)
!12 = !DIEnumerator(name: "SDP_ServiceAttributeResponse", value: 5)
!13 = !DIEnumerator(name: "SDP_ServiceSearchAttributeRequest", value: 6)
!14 = !DIEnumerator(name: "SDP_ServiceSearchAttributeResponse", value: 7)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 143, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "SDP_CMD_CONNECT", value: 0)
!18 = !DIEnumerator(name: "SDP_CMD_DISCONNECT", value: 1)
!19 = !DIEnumerator(name: "SDP_CMD_GET_REMOTE_PNP_INFO", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 631, size: 32, elements: !22)
!21 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "REMOTE_DEV_UNKNOWN", value: 0)
!24 = !DIEnumerator(name: "REMOTE_DEV_ANDROID", value: 1)
!25 = !DIEnumerator(name: "REMOTE_DEV_IOS", value: 2)
!26 = !DIEnumerator(name: "REMOTE_DEV_XIAOMI", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 45, size: 32, elements: !29)
!28 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp_util.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38}
!30 = !DIEnumerator(name: "DE_NIL", value: 0)
!31 = !DIEnumerator(name: "DE_UINT", value: 1)
!32 = !DIEnumerator(name: "DE_INT", value: 2)
!33 = !DIEnumerator(name: "DE_UUID", value: 3)
!34 = !DIEnumerator(name: "DE_STRING", value: 4)
!35 = !DIEnumerator(name: "DE_BOOL", value: 5)
!36 = !DIEnumerator(name: "DE_DES", value: 6)
!37 = !DIEnumerator(name: "DE_DEA", value: 7)
!38 = !DIEnumerator(name: "DE_URL", value: 8)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 57, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48}
!41 = !DIEnumerator(name: "DE_SIZE_8", value: 0)
!42 = !DIEnumerator(name: "DE_SIZE_16", value: 1)
!43 = !DIEnumerator(name: "DE_SIZE_32", value: 2)
!44 = !DIEnumerator(name: "DE_SIZE_64", value: 3)
!45 = !DIEnumerator(name: "DE_SIZE_128", value: 4)
!46 = !DIEnumerator(name: "DE_SIZE_VAR_8", value: 5)
!47 = !DIEnumerator(name: "DE_SIZE_VAR_16", value: 6)
!48 = !DIEnumerator(name: "DE_SIZE_VAR_32", value: 7)
!49 = !{!50, !51, !52, !57, !61, !64}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "SDP_PDU_ID_t", file: !6, line: 89, baseType: !5)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !53, line: 26, baseType: !54)
!53 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !55, line: 43, baseType: !56)
!55 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !59, line: 11, baseType: !60)
!59 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 32, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !55, line: 65, baseType: !63)
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !59, line: 13, baseType: !56)
!65 = !{!0, !66, !79}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "bt_suspend_sdp_resumesdp_release", scope: !2, file: !3, line: 965, type: !68, isLocal: false, isDefinition: true)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !70, line: 313, size: 96, elements: !71)
!70 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!71 = !{!72, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !69, file: !70, line: 314, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, null}
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !69, file: !70, line: 315, baseType: !73, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !69, file: !70, line: 316, baseType: !73, size: 32, offset: 64)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "sdp_stack", scope: !2, file: !3, line: 62, type: !81, isLocal: false, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdp_stack_t", file: !6, line: 130, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 117, size: 80, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_core_data", scope: !83, file: !6, line: 128, baseType: !86, size: 80)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdp_core_data_t", file: !6, line: 115, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 102, size: 80, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_channel", scope: !87, file: !6, line: 106, baseType: !64, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_master_channel", scope: !87, file: !6, line: 110, baseType: !64, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "read_sdp_service_type", scope: !87, file: !6, line: 111, baseType: !64, size: 16, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_master_waitint_accept", scope: !87, file: !6, line: 112, baseType: !58, size: 8, offset: 48)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_cid", scope: !87, file: !6, line: 113, baseType: !58, size: 8, offset: 56)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_translaction_id", scope: !87, file: !6, line: 114, baseType: !58, size: 8, offset: 64)
!95 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!96 = !{i32 2, !"Dwarf Version", i32 4}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!99 = distinct !DISubprogram(name: "sdp_init", scope: !3, file: !3, line: 65, type: !100, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !81}
!102 = !{!103}
!103 = !DILocalVariable(name: "stack", arg: 1, scope: !99, file: !3, line: 65, type: !81)
!104 = !DILocation(line: 65, column: 28, scope: !99)
!105 = !DILocation(line: 69, column: 15, scope: !99)
!106 = !{!107, !107, i64 0}
!107 = !{!"any pointer", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !DILocation(line: 77, column: 5, scope: !99)
!111 = !DILocation(line: 76, column: 42, scope: !99)
!112 = !DILocation(line: 77, column: 25, scope: !99)
!113 = !DILocation(line: 77, column: 52, scope: !99)
!114 = !{!115, !117, i64 12}
!115 = !{!"_stack_config", !116, i64 0, !117, i64 4, !117, i64 6, !117, i64 8, !117, i64 10, !117, i64 12, !108, i64 14, !108, i64 15, !108, i64 16, !108, i64 17, !108, i64 17, !108, i64 17, !108, i64 17, !108, i64 18, !108, i64 18, !108, i64 18, !108, i64 18, !108, i64 18, !108, i64 18, !108, i64 18, !108, i64 18, !108, i64 19, !108, i64 19, !108, i64 19, !108, i64 19, !108, i64 19, !108, i64 19, !108, i64 19, !108, i64 19, !108, i64 20, !108, i64 20, !108, i64 20, !108, i64 21, !108, i64 22, !108, i64 23, !108, i64 24, !108, i64 25, !108, i64 31, !108, i64 31}
!116 = !{!"int", !108, i64 0}
!117 = !{!"short", !108, i64 0}
!118 = !DILocation(line: 78, column: 5, scope: !99)
!119 = !DILocation(line: 80, column: 1, scope: !99)
!120 = distinct !DISubprogram(name: "sdp_packet_handler", scope: !3, file: !3, line: 767, type: !121, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !123)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !58, !64, !57, !64}
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !139}
!124 = !DILocalVariable(name: "packet_type", arg: 1, scope: !120, file: !3, line: 767, type: !58)
!125 = !DILocalVariable(name: "channel", arg: 2, scope: !120, file: !3, line: 767, type: !64)
!126 = !DILocalVariable(name: "packet", arg: 3, scope: !120, file: !3, line: 767, type: !57)
!127 = !DILocalVariable(name: "size", arg: 4, scope: !120, file: !3, line: 767, type: !64)
!128 = !DILocalVariable(name: "transaction_id", scope: !120, file: !3, line: 769, type: !64)
!129 = !DILocalVariable(name: "pdu_id", scope: !120, file: !3, line: 770, type: !51)
!130 = !DILocalVariable(name: "remote_mtu", scope: !120, file: !3, line: 771, type: !64)
!131 = !DILocalVariable(name: "addr", scope: !120, file: !3, line: 772, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !133, line: 7, baseType: !134)
!133 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, elements: !137)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !53, line: 20, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !55, line: 29, baseType: !60)
!137 = !{!138}
!138 = !DISubrange(count: 6)
!139 = !DILocalVariable(name: "err", scope: !120, file: !3, line: 773, type: !76)
!140 = !DILocalVariable(name: "sdp_response_buffer", scope: !141, file: !3, line: 525, type: !196)
!141 = distinct !DISubprogram(name: "sdp_handle_service_search_attribute_request", scope: !3, file: !3, line: 523, type: !142, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!76, !64, !57, !64, !64}
!144 = !{!145, !146, !147, !148, !140, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !170, !187, !193, !195}
!145 = !DILocalVariable(name: "channel", arg: 1, scope: !141, file: !3, line: 523, type: !64)
!146 = !DILocalVariable(name: "packet", arg: 2, scope: !141, file: !3, line: 523, type: !57)
!147 = !DILocalVariable(name: "remote_mtu", arg: 3, scope: !141, file: !3, line: 523, type: !64)
!148 = !DILocalVariable(name: "packet_size", arg: 4, scope: !141, file: !3, line: 523, type: !64)
!149 = !DILocalVariable(name: "sdp_response_size", scope: !141, file: !3, line: 526, type: !64)
!150 = !DILocalVariable(name: "err_number", scope: !141, file: !3, line: 530, type: !64)
!151 = !DILocalVariable(name: "transaction_id", scope: !141, file: !3, line: 532, type: !64)
!152 = !DILocalVariable(name: "param_len", scope: !141, file: !3, line: 533, type: !64)
!153 = !DILocalVariable(name: "serviceSearchPattern", scope: !141, file: !3, line: 541, type: !57)
!154 = !DILocalVariable(name: "serviceSearchPatternLen", scope: !141, file: !3, line: 542, type: !64)
!155 = !DILocalVariable(name: "maximumAttributeByteCount", scope: !141, file: !3, line: 543, type: !64)
!156 = !DILocalVariable(name: "attributeIDList", scope: !141, file: !3, line: 544, type: !57)
!157 = !DILocalVariable(name: "attributeIDListLen", scope: !141, file: !3, line: 545, type: !64)
!158 = !DILocalVariable(name: "continuationState", scope: !141, file: !3, line: 546, type: !57)
!159 = !DILocalVariable(name: "maximumAttributeByteCount2", scope: !141, file: !3, line: 549, type: !64)
!160 = !DILocalVariable(name: "continuation_service_index", scope: !141, file: !3, line: 551, type: !64)
!161 = !DILocalVariable(name: "continuation_offset", scope: !141, file: !3, line: 552, type: !64)
!162 = !DILocalVariable(name: "pos", scope: !141, file: !3, line: 553, type: !64)
!163 = !DILocalVariable(name: "attributeListsByteCount", scope: !141, file: !3, line: 554, type: !64)
!164 = !DILocalVariable(name: "continuation", scope: !141, file: !3, line: 555, type: !76)
!165 = !DILocalVariable(name: "first_answer", scope: !141, file: !3, line: 556, type: !76)
!166 = !DILocalVariable(name: "current_service_index", scope: !141, file: !3, line: 557, type: !64)
!167 = !DILocalVariable(name: "total_response_size", scope: !168, file: !3, line: 588, type: !64)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 587, column: 70)
!169 = distinct !DILexicalBlock(scope: !141, file: !3, line: 587, column: 9)
!170 = !DILocalVariable(name: "item", scope: !171, file: !3, line: 655, type: !172)
!171 = distinct !DILexicalBlock(scope: !141, file: !3, line: 596, column: 5)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "service_record_item_t", file: !6, line: 100, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 93, size: 96, elements: !175)
!175 = !{!176, !184, !186}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !174, file: !6, line: 95, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !178, line: 100, baseType: !179)
!178 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !178, line: 55, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !178, line: 53, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !178, line: 54, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "service_record_handle", scope: !174, file: !6, line: 98, baseType: !185, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !59, line: 15, baseType: !63)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "service_record", scope: !174, file: !6, line: 99, baseType: !57, size: 32, offset: 64)
!187 = !DILocalVariable(name: "filtered_attributes_size", scope: !188, file: !3, line: 670, type: !64)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 667, column: 43)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 667, column: 17)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 656, column: 41)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 656, column: 9)
!192 = distinct !DILexicalBlock(scope: !171, file: !3, line: 656, column: 9)
!193 = !DILocalVariable(name: "bytes_used", scope: !194, file: !3, line: 693, type: !64)
!194 = distinct !DILexicalBlock(scope: !190, file: !3, line: 691, column: 13)
!195 = !DILocalVariable(name: "complete", scope: !194, file: !3, line: 694, type: !76)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2400, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 300)
!199 = !DILocation(line: 525, column: 8, scope: !141, inlinedAt: !200)
!200 = distinct !DILocation(line: 809, column: 13, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 798, column: 25)
!202 = distinct !DILexicalBlock(scope: !120, file: !3, line: 778, column: 26)
!203 = !DILocalVariable(name: "sdp_response_buffer", scope: !204, file: !3, line: 387, type: !196)
!204 = distinct !DISubprogram(name: "sdp_handle_service_attribute_request", scope: !3, file: !3, line: 385, type: !142, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !205)
!205 = !{!206, !207, !208, !209, !203, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!206 = !DILocalVariable(name: "channel", arg: 1, scope: !204, file: !3, line: 385, type: !64)
!207 = !DILocalVariable(name: "packet", arg: 2, scope: !204, file: !3, line: 385, type: !57)
!208 = !DILocalVariable(name: "remote_mtu", arg: 3, scope: !204, file: !3, line: 385, type: !64)
!209 = !DILocalVariable(name: "packet_size", arg: 4, scope: !204, file: !3, line: 385, type: !64)
!210 = !DILocalVariable(name: "sdp_response_size", scope: !204, file: !3, line: 388, type: !64)
!211 = !DILocalVariable(name: "err_number", scope: !204, file: !3, line: 390, type: !64)
!212 = !DILocalVariable(name: "transaction_id", scope: !204, file: !3, line: 391, type: !64)
!213 = !DILocalVariable(name: "param_len", scope: !204, file: !3, line: 392, type: !64)
!214 = !DILocalVariable(name: "serviceRecordHandle", scope: !204, file: !3, line: 398, type: !185)
!215 = !DILocalVariable(name: "maximumAttributeByteCount", scope: !204, file: !3, line: 399, type: !64)
!216 = !DILocalVariable(name: "attributeIDList", scope: !204, file: !3, line: 406, type: !57)
!217 = !DILocalVariable(name: "attributeIDListLen", scope: !204, file: !3, line: 407, type: !64)
!218 = !DILocalVariable(name: "continuationState", scope: !204, file: !3, line: 408, type: !57)
!219 = !DILocalVariable(name: "maximumAttributeByteCount2", scope: !204, file: !3, line: 411, type: !64)
!220 = !DILocalVariable(name: "continuation_offset", scope: !204, file: !3, line: 413, type: !64)
!221 = !DILocalVariable(name: "item", scope: !204, file: !3, line: 414, type: !172)
!222 = !DILocalVariable(name: "pos", scope: !204, file: !3, line: 416, type: !64)
!223 = !DILocalVariable(name: "filtered_attributes_size", scope: !204, file: !3, line: 417, type: !64)
!224 = !DILocalVariable(name: "bytes_used", scope: !204, file: !3, line: 418, type: !64)
!225 = !DILocalVariable(name: "complete", scope: !204, file: !3, line: 419, type: !76)
!226 = !DILocalVariable(name: "attributeListByteCount", scope: !204, file: !3, line: 421, type: !64)
!227 = !DILocation(line: 387, column: 8, scope: !204, inlinedAt: !228)
!228 = distinct !DILocation(line: 805, column: 13, scope: !201)
!229 = !DILocalVariable(name: "sdp_response_buffer", scope: !230, file: !3, line: 215, type: !196)
!230 = distinct !DISubprogram(name: "sdp_handle_service_search_request", scope: !3, file: !3, line: 212, type: !142, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !231)
!231 = !{!232, !233, !234, !235, !229, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!232 = !DILocalVariable(name: "channel", arg: 1, scope: !230, file: !3, line: 212, type: !64)
!233 = !DILocalVariable(name: "packet", arg: 2, scope: !230, file: !3, line: 212, type: !57)
!234 = !DILocalVariable(name: "remote_mtu", arg: 3, scope: !230, file: !3, line: 212, type: !64)
!235 = !DILocalVariable(name: "packet_size", arg: 4, scope: !230, file: !3, line: 212, type: !64)
!236 = !DILocalVariable(name: "sdp_response_size", scope: !230, file: !3, line: 216, type: !64)
!237 = !DILocalVariable(name: "transaction_id", scope: !230, file: !3, line: 218, type: !64)
!238 = !DILocalVariable(name: "param_len", scope: !230, file: !3, line: 219, type: !64)
!239 = !DILocalVariable(name: "err_number", scope: !230, file: !3, line: 220, type: !64)
!240 = !DILocalVariable(name: "serviceSearchPattern", scope: !230, file: !3, line: 229, type: !57)
!241 = !DILocalVariable(name: "serviceSearchPatternLen", scope: !230, file: !3, line: 230, type: !64)
!242 = !DILocalVariable(name: "maximumServiceRecordCount", scope: !230, file: !3, line: 237, type: !64)
!243 = !DILocalVariable(name: "continuationState", scope: !230, file: !3, line: 248, type: !57)
!244 = !DILocalVariable(name: "maxNrServiceRecordsPerResponse", scope: !230, file: !3, line: 251, type: !64)
!245 = !DILocalVariable(name: "continuation", scope: !230, file: !3, line: 254, type: !76)
!246 = !DILocalVariable(name: "continuation_index", scope: !230, file: !3, line: 255, type: !64)
!247 = !DILocalVariable(name: "pos", scope: !230, file: !3, line: 257, type: !64)
!248 = !DILocalVariable(name: "current_service_count", scope: !230, file: !3, line: 258, type: !64)
!249 = !DILocalVariable(name: "current_service_index", scope: !230, file: !3, line: 259, type: !64)
!250 = !DILocalVariable(name: "matching_service_count", scope: !230, file: !3, line: 260, type: !64)
!251 = !DILocalVariable(name: "item", scope: !230, file: !3, line: 264, type: !172)
!252 = !DILocalVariable(name: "total_service_count", scope: !230, file: !3, line: 266, type: !64)
!253 = !DILocation(line: 215, column: 8, scope: !230, inlinedAt: !254)
!254 = distinct !DILocation(line: 801, column: 13, scope: !201)
!255 = !DILocation(line: 767, column: 37, scope: !120)
!256 = !DILocation(line: 767, column: 54, scope: !120)
!257 = !DILocation(line: 767, column: 67, scope: !120)
!258 = !DILocation(line: 767, column: 79, scope: !120)
!259 = !DILocation(line: 772, column: 5, scope: !120)
!260 = !DILocation(line: 772, column: 15, scope: !120)
!261 = !DILocation(line: 778, column: 5, scope: !120)
!262 = !DILocation(line: 788, column: 33, scope: !202)
!263 = !{!108, !108, i64 0}
!264 = !DILocation(line: 791, column: 22, scope: !202)
!265 = !DILocation(line: 771, column: 9, scope: !120)
!266 = !DILocation(line: 793, column: 13, scope: !202)
!267 = !DILocation(line: 798, column: 9, scope: !202)
!268 = !DILocation(line: 212, column: 91, scope: !230, inlinedAt: !254)
!269 = !DILocation(line: 215, column: 5, scope: !230, inlinedAt: !254)
!270 = !DILocation(line: 216, column: 9, scope: !230, inlinedAt: !254)
!271 = !DILocation(line: 218, column: 27, scope: !230, inlinedAt: !254)
!272 = !DILocation(line: 218, column: 10, scope: !230, inlinedAt: !254)
!273 = !DILocation(line: 219, column: 22, scope: !230, inlinedAt: !254)
!274 = !DILocation(line: 220, column: 9, scope: !230, inlinedAt: !254)
!275 = !DILocation(line: 222, column: 5, scope: !230, inlinedAt: !254)
!276 = !DILocation(line: 229, column: 33, scope: !230, inlinedAt: !254)
!277 = !DILocation(line: 229, column: 9, scope: !230, inlinedAt: !254)
!278 = !DILocation(line: 230, column: 36, scope: !230, inlinedAt: !254)
!279 = !DILocation(line: 238, column: 9, scope: !280, inlinedAt: !254)
!280 = distinct !DILexicalBlock(scope: !230, file: !3, line: 238, column: 9)
!281 = !DILocation(line: 238, column: 33, scope: !280, inlinedAt: !254)
!282 = !DILocation(line: 238, column: 37, scope: !280, inlinedAt: !254)
!283 = !DILocation(line: 238, column: 9, scope: !230, inlinedAt: !254)
!284 = !DILocation(line: 239, column: 37, scope: !285, inlinedAt: !254)
!285 = distinct !DILexicalBlock(scope: !280, file: !3, line: 238, column: 50)
!286 = !DILocation(line: 237, column: 10, scope: !230, inlinedAt: !254)
!287 = !DILocation(line: 240, column: 39, scope: !288, inlinedAt: !254)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 240, column: 13)
!289 = !DILocation(line: 240, column: 13, scope: !285, inlinedAt: !254)
!290 = !DILocation(line: 248, column: 65, scope: !230, inlinedAt: !254)
!291 = !DILocation(line: 248, column: 30, scope: !230, inlinedAt: !254)
!292 = !DILocation(line: 248, column: 9, scope: !230, inlinedAt: !254)
!293 = !DILocation(line: 251, column: 43, scope: !230, inlinedAt: !254)
!294 = !DILocation(line: 251, column: 54, scope: !230, inlinedAt: !254)
!295 = !DILocation(line: 251, column: 65, scope: !230, inlinedAt: !254)
!296 = !DILocation(line: 254, column: 14, scope: !230, inlinedAt: !254)
!297 = !DILocation(line: 255, column: 9, scope: !230, inlinedAt: !254)
!298 = !DILocation(line: 257, column: 9, scope: !230, inlinedAt: !254)
!299 = !DILocation(line: 258, column: 9, scope: !230, inlinedAt: !254)
!300 = !DILocation(line: 259, column: 9, scope: !230, inlinedAt: !254)
!301 = !DILocation(line: 260, column: 9, scope: !230, inlinedAt: !254)
!302 = !DILocation(line: 266, column: 9, scope: !230, inlinedAt: !254)
!303 = !DILocation(line: 268, column: 9, scope: !304, inlinedAt: !254)
!304 = distinct !DILexicalBlock(scope: !230, file: !3, line: 268, column: 9)
!305 = !DILocation(line: 268, column: 30, scope: !304, inlinedAt: !254)
!306 = !DILocation(line: 268, column: 9, scope: !230, inlinedAt: !254)
!307 = !DILocation(line: 269, column: 30, scope: !308, inlinedAt: !254)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 268, column: 36)
!309 = !DILocation(line: 270, column: 5, scope: !308, inlinedAt: !254)
!310 = !DILocation(line: 264, column: 29, scope: !230, inlinedAt: !254)
!311 = !DILocation(line: 289, column: 5, scope: !312, inlinedAt: !254)
!312 = !DILexicalBlockFile(scope: !313, file: !3, discriminator: 1)
!313 = distinct !DILexicalBlock(scope: !230, file: !3, line: 289, column: 5)
!314 = !DILocation(line: 290, column: 62, scope: !315, inlinedAt: !254)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 290, column: 13)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 289, column: 37)
!317 = distinct !DILexicalBlock(scope: !313, file: !3, line: 289, column: 5)
!318 = !{!319, !107, i64 8}
!319 = !{!"", !320, i64 0, !116, i64 4, !107, i64 8}
!320 = !{!"btstack_linked_item", !107, i64 0}
!321 = !DILocation(line: 290, column: 14, scope: !315, inlinedAt: !254)
!322 = !DILocation(line: 290, column: 13, scope: !316, inlinedAt: !254)
!323 = !DILocation(line: 289, column: 5, scope: !324, inlinedAt: !254)
!324 = !DILexicalBlockFile(scope: !317, file: !3, discriminator: 2)
!325 = !DILocation(line: 289, column: 5, scope: !326, inlinedAt: !254)
!326 = !DILexicalBlockFile(scope: !317, file: !3, discriminator: 1)
!327 = distinct !{!327, !328, !329}
!328 = !DILocation(line: 289, column: 5, scope: !313)
!329 = !DILocation(line: 294, column: 5, scope: !313)
!330 = !DILocation(line: 297, column: 29, scope: !331, inlinedAt: !254)
!331 = distinct !DILexicalBlock(scope: !230, file: !3, line: 297, column: 9)
!332 = !DILocation(line: 297, column: 9, scope: !230, inlinedAt: !254)
!333 = !DILocation(line: 331, column: 5, scope: !334, inlinedAt: !254)
!334 = !DILexicalBlockFile(scope: !335, file: !3, discriminator: 1)
!335 = distinct !DILexicalBlock(scope: !230, file: !3, line: 331, column: 5)
!336 = !DILocation(line: 333, column: 62, scope: !337, inlinedAt: !254)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 333, column: 13)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 331, column: 37)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 331, column: 5)
!340 = !DILocation(line: 333, column: 14, scope: !337, inlinedAt: !254)
!341 = !DILocation(line: 333, column: 13, scope: !338, inlinedAt: !254)
!342 = !DILocation(line: 337, column: 31, scope: !338, inlinedAt: !254)
!343 = !DILocation(line: 339, column: 35, scope: !344, inlinedAt: !254)
!344 = distinct !DILexicalBlock(scope: !338, file: !3, line: 339, column: 13)
!345 = !DILocation(line: 339, column: 13, scope: !338, inlinedAt: !254)
!346 = !DILocation(line: 344, column: 54, scope: !338, inlinedAt: !254)
!347 = !{!319, !116, i64 4}
!348 = !DILocation(line: 344, column: 9, scope: !338, inlinedAt: !254)
!349 = !DILocation(line: 345, column: 13, scope: !338, inlinedAt: !254)
!350 = !DILocation(line: 346, column: 30, scope: !338, inlinedAt: !254)
!351 = !DILocation(line: 348, column: 36, scope: !352, inlinedAt: !254)
!352 = distinct !DILexicalBlock(scope: !338, file: !3, line: 348, column: 13)
!353 = !DILocation(line: 348, column: 13, scope: !338, inlinedAt: !254)
!354 = !DILocation(line: 352, column: 13, scope: !355, inlinedAt: !254)
!355 = distinct !DILexicalBlock(scope: !338, file: !3, line: 352, column: 13)
!356 = !DILocation(line: 352, column: 35, scope: !355, inlinedAt: !254)
!357 = !DILocation(line: 352, column: 13, scope: !338, inlinedAt: !254)
!358 = !DILocation(line: 331, column: 5, scope: !359, inlinedAt: !254)
!359 = !DILexicalBlockFile(scope: !339, file: !3, discriminator: 2)
!360 = !DILocation(line: 331, column: 5, scope: !361, inlinedAt: !254)
!361 = !DILexicalBlockFile(scope: !339, file: !3, discriminator: 1)
!362 = distinct !{!362, !363, !364}
!363 = !DILocation(line: 331, column: 5, scope: !335)
!364 = !DILocation(line: 358, column: 5, scope: !335)
!365 = !DILocation(line: 354, column: 56, scope: !366, inlinedAt: !254)
!366 = distinct !DILexicalBlock(scope: !355, file: !3, line: 352, column: 70)
!367 = !DILocation(line: 363, column: 36, scope: !368, inlinedAt: !254)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 362, column: 23)
!369 = distinct !DILexicalBlock(scope: !230, file: !3, line: 362, column: 9)
!370 = !DILocation(line: 364, column: 9, scope: !368, inlinedAt: !254)
!371 = !DILocation(line: 365, column: 13, scope: !368, inlinedAt: !254)
!372 = !DILocation(line: 366, column: 5, scope: !368, inlinedAt: !254)
!373 = !DILocation(line: 367, column: 36, scope: !374, inlinedAt: !254)
!374 = distinct !DILexicalBlock(scope: !369, file: !3, line: 366, column: 12)
!375 = !DILocation(line: 371, column: 28, scope: !230, inlinedAt: !254)
!376 = !DILocation(line: 372, column: 5, scope: !230, inlinedAt: !254)
!377 = !DILocation(line: 373, column: 46, scope: !230, inlinedAt: !254)
!378 = !DILocation(line: 373, column: 5, scope: !230, inlinedAt: !254)
!379 = !DILocation(line: 374, column: 5, scope: !230, inlinedAt: !254)
!380 = !DILocation(line: 375, column: 5, scope: !230, inlinedAt: !254)
!381 = !DILocation(line: 378, column: 12, scope: !230, inlinedAt: !254)
!382 = !DILocation(line: 378, column: 5, scope: !230, inlinedAt: !254)
!383 = !DILocalVariable(name: "channel", arg: 1, scope: !384, file: !3, line: 193, type: !64)
!384 = distinct !DISubprogram(name: "sdp_create_error_response", scope: !3, file: !3, line: 193, type: !385, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!76, !64, !64, !64}
!387 = !{!383, !388, !389}
!388 = !DILocalVariable(name: "transaction_id", arg: 2, scope: !384, file: !3, line: 193, type: !64)
!389 = !DILocalVariable(name: "error_code", arg: 3, scope: !384, file: !3, line: 193, type: !64)
!390 = !DILocation(line: 193, column: 35, scope: !384, inlinedAt: !391)
!391 = distinct !DILocation(line: 381, column: 12, scope: !230, inlinedAt: !254)
!392 = !DILocation(line: 193, column: 48, scope: !384, inlinedAt: !391)
!393 = !DILocation(line: 193, column: 68, scope: !384, inlinedAt: !391)
!394 = !DILocation(line: 206, column: 5, scope: !384, inlinedAt: !391)
!395 = !DILocation(line: 381, column: 5, scope: !230, inlinedAt: !254)
!396 = !DILocation(line: 382, column: 1, scope: !230, inlinedAt: !254)
!397 = !DILocation(line: 802, column: 13, scope: !201)
!398 = !DILocation(line: 387, column: 5, scope: !204, inlinedAt: !228)
!399 = !DILocation(line: 388, column: 9, scope: !204, inlinedAt: !228)
!400 = !DILocation(line: 390, column: 9, scope: !204, inlinedAt: !228)
!401 = !DILocation(line: 391, column: 27, scope: !204, inlinedAt: !228)
!402 = !DILocation(line: 391, column: 10, scope: !204, inlinedAt: !228)
!403 = !DILocation(line: 392, column: 22, scope: !204, inlinedAt: !228)
!404 = !DILocation(line: 393, column: 5, scope: !204, inlinedAt: !228)
!405 = !DILocation(line: 394, column: 23, scope: !406, inlinedAt: !228)
!406 = distinct !DILexicalBlock(scope: !204, file: !3, line: 394, column: 9)
!407 = !DILocation(line: 394, column: 35, scope: !406, inlinedAt: !228)
!408 = !DILocation(line: 394, column: 19, scope: !406, inlinedAt: !228)
!409 = !DILocation(line: 394, column: 9, scope: !204, inlinedAt: !228)
!410 = !DILocation(line: 398, column: 32, scope: !204, inlinedAt: !228)
!411 = !DILocation(line: 398, column: 10, scope: !204, inlinedAt: !228)
!412 = !DILocation(line: 399, column: 38, scope: !204, inlinedAt: !228)
!413 = !DILocation(line: 399, column: 10, scope: !204, inlinedAt: !228)
!414 = !DILocation(line: 406, column: 28, scope: !204, inlinedAt: !228)
!415 = !DILocation(line: 406, column: 9, scope: !204, inlinedAt: !228)
!416 = !DILocation(line: 407, column: 31, scope: !204, inlinedAt: !228)
!417 = !DILocation(line: 408, column: 42, scope: !204, inlinedAt: !228)
!418 = !DILocation(line: 408, column: 40, scope: !204, inlinedAt: !228)
!419 = !DILocation(line: 408, column: 30, scope: !204, inlinedAt: !228)
!420 = !DILocation(line: 408, column: 9, scope: !204, inlinedAt: !228)
!421 = !DILocation(line: 411, column: 49, scope: !204, inlinedAt: !228)
!422 = !DILocation(line: 411, column: 9, scope: !204, inlinedAt: !228)
!423 = !DILocation(line: 413, column: 9, scope: !204, inlinedAt: !228)
!424 = !DILocation(line: 416, column: 9, scope: !204, inlinedAt: !228)
!425 = !DILocation(line: 429, column: 36, scope: !426, inlinedAt: !228)
!426 = distinct !DILexicalBlock(scope: !204, file: !3, line: 429, column: 9)
!427 = !DILocation(line: 429, column: 9, scope: !204, inlinedAt: !228)
!428 = !DILocation(line: 435, column: 9, scope: !429, inlinedAt: !228)
!429 = distinct !DILexicalBlock(scope: !204, file: !3, line: 435, column: 9)
!430 = !DILocation(line: 435, column: 30, scope: !429, inlinedAt: !228)
!431 = !DILocation(line: 435, column: 9, scope: !204, inlinedAt: !228)
!432 = !DILocation(line: 436, column: 31, scope: !433, inlinedAt: !228)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 435, column: 36)
!434 = !DILocation(line: 437, column: 5, scope: !433, inlinedAt: !228)
!435 = !DILocalVariable(name: "handle", arg: 1, scope: !436, file: !3, line: 100, type: !185)
!436 = distinct !DISubprogram(name: "sdp_get_record_for_handle", scope: !3, file: !3, line: 100, type: !437, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!172, !185}
!439 = !{!435, !440}
!440 = !DILocalVariable(name: "item", scope: !436, file: !3, line: 111, type: !172)
!441 = !DILocation(line: 100, column: 61, scope: !436, inlinedAt: !442)
!442 = distinct !DILocation(line: 440, column: 12, scope: !204, inlinedAt: !228)
!443 = !DILocation(line: 111, column: 28, scope: !436, inlinedAt: !442)
!444 = !DILocation(line: 112, column: 5, scope: !445, inlinedAt: !442)
!445 = !DILexicalBlockFile(scope: !446, file: !3, discriminator: 1)
!446 = distinct !DILexicalBlock(scope: !436, file: !3, line: 112, column: 5)
!447 = !DILocation(line: 113, column: 19, scope: !448, inlinedAt: !442)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 113, column: 13)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 112, column: 37)
!450 = distinct !DILexicalBlock(scope: !446, file: !3, line: 112, column: 5)
!451 = !DILocation(line: 113, column: 41, scope: !448, inlinedAt: !442)
!452 = !DILocation(line: 113, column: 13, scope: !449, inlinedAt: !442)
!453 = !DILocation(line: 112, column: 5, scope: !454, inlinedAt: !442)
!454 = !DILexicalBlockFile(scope: !450, file: !3, discriminator: 2)
!455 = !DILocation(line: 112, column: 5, scope: !456, inlinedAt: !442)
!456 = !DILexicalBlockFile(scope: !450, file: !3, discriminator: 1)
!457 = distinct !{!457, !458, !459}
!458 = !DILocation(line: 112, column: 5, scope: !446)
!459 = !DILocation(line: 116, column: 5, scope: !446)
!460 = !DILocation(line: 452, column: 29, scope: !461, inlinedAt: !228)
!461 = distinct !DILexicalBlock(scope: !204, file: !3, line: 452, column: 9)
!462 = !DILocation(line: 452, column: 9, scope: !204, inlinedAt: !228)
!463 = !DILocation(line: 455, column: 64, scope: !464, inlinedAt: !228)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 452, column: 35)
!465 = !DILocation(line: 455, column: 36, scope: !464, inlinedAt: !228)
!466 = !DILocation(line: 458, column: 39, scope: !464, inlinedAt: !228)
!467 = !DILocation(line: 458, column: 89, scope: !464, inlinedAt: !228)
!468 = !DILocation(line: 458, column: 9, scope: !464, inlinedAt: !228)
!469 = !DILocation(line: 459, column: 35, scope: !464, inlinedAt: !228)
!470 = !DILocation(line: 461, column: 5, scope: !464, inlinedAt: !228)
!471 = !DILocation(line: 465, column: 63, scope: !204, inlinedAt: !228)
!472 = !DILocation(line: 465, column: 158, scope: !204, inlinedAt: !228)
!473 = !DILocation(line: 418, column: 9, scope: !204, inlinedAt: !228)
!474 = !DILocation(line: 465, column: 16, scope: !204, inlinedAt: !228)
!475 = !DILocation(line: 419, column: 9, scope: !204, inlinedAt: !228)
!476 = !DILocation(line: 466, column: 12, scope: !204, inlinedAt: !228)
!477 = !{!117, !117, i64 0}
!478 = !DILocation(line: 466, column: 9, scope: !204, inlinedAt: !228)
!479 = !DILocation(line: 468, column: 30, scope: !204, inlinedAt: !228)
!480 = !DILocation(line: 468, column: 34, scope: !204, inlinedAt: !228)
!481 = !DILocation(line: 421, column: 9, scope: !204, inlinedAt: !228)
!482 = !DILocation(line: 470, column: 9, scope: !483, inlinedAt: !228)
!483 = distinct !DILexicalBlock(scope: !204, file: !3, line: 470, column: 9)
!484 = !DILocation(line: 470, column: 9, scope: !204, inlinedAt: !228)
!485 = !DILocation(line: 471, column: 32, scope: !486, inlinedAt: !228)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 470, column: 19)
!487 = !DILocation(line: 471, column: 9, scope: !486, inlinedAt: !228)
!488 = !DILocation(line: 471, column: 36, scope: !486, inlinedAt: !228)
!489 = !DILocation(line: 472, column: 5, scope: !486, inlinedAt: !228)
!490 = !DILocation(line: 473, column: 29, scope: !491, inlinedAt: !228)
!491 = distinct !DILexicalBlock(scope: !483, file: !3, line: 472, column: 12)
!492 = !DILocation(line: 474, column: 32, scope: !491, inlinedAt: !228)
!493 = !DILocation(line: 474, column: 9, scope: !491, inlinedAt: !228)
!494 = !DILocation(line: 474, column: 36, scope: !491, inlinedAt: !228)
!495 = !DILocation(line: 475, column: 9, scope: !491, inlinedAt: !228)
!496 = !DILocation(line: 476, column: 13, scope: !491, inlinedAt: !228)
!497 = !DILocation(line: 480, column: 28, scope: !204, inlinedAt: !228)
!498 = !DILocation(line: 481, column: 5, scope: !204, inlinedAt: !228)
!499 = !DILocation(line: 482, column: 46, scope: !204, inlinedAt: !228)
!500 = !DILocation(line: 482, column: 5, scope: !204, inlinedAt: !228)
!501 = !DILocation(line: 483, column: 5, scope: !204, inlinedAt: !228)
!502 = !DILocation(line: 485, column: 12, scope: !204, inlinedAt: !228)
!503 = !DILocation(line: 485, column: 5, scope: !204, inlinedAt: !228)
!504 = !DILocation(line: 193, column: 35, scope: !384, inlinedAt: !505)
!505 = distinct !DILocation(line: 488, column: 12, scope: !204, inlinedAt: !228)
!506 = !DILocation(line: 193, column: 48, scope: !384, inlinedAt: !505)
!507 = !DILocation(line: 193, column: 68, scope: !384, inlinedAt: !505)
!508 = !DILocation(line: 206, column: 5, scope: !384, inlinedAt: !505)
!509 = !DILocation(line: 488, column: 5, scope: !204, inlinedAt: !228)
!510 = !DILocation(line: 489, column: 1, scope: !204, inlinedAt: !228)
!511 = !DILocation(line: 806, column: 13, scope: !201)
!512 = !DILocation(line: 523, column: 101, scope: !141, inlinedAt: !200)
!513 = !DILocation(line: 525, column: 5, scope: !141, inlinedAt: !200)
!514 = !DILocation(line: 526, column: 9, scope: !141, inlinedAt: !200)
!515 = !DILocation(line: 530, column: 9, scope: !141, inlinedAt: !200)
!516 = !DILocation(line: 532, column: 27, scope: !141, inlinedAt: !200)
!517 = !DILocation(line: 532, column: 10, scope: !141, inlinedAt: !200)
!518 = !DILocation(line: 534, column: 5, scope: !141, inlinedAt: !200)
!519 = !DILocation(line: 541, column: 33, scope: !141, inlinedAt: !200)
!520 = !DILocation(line: 541, column: 9, scope: !141, inlinedAt: !200)
!521 = !DILocation(line: 542, column: 36, scope: !141, inlinedAt: !200)
!522 = !DILocation(line: 543, column: 38, scope: !141, inlinedAt: !200)
!523 = !DILocation(line: 543, column: 10, scope: !141, inlinedAt: !200)
!524 = !DILocation(line: 544, column: 63, scope: !141, inlinedAt: !200)
!525 = !DILocation(line: 544, column: 28, scope: !141, inlinedAt: !200)
!526 = !DILocation(line: 544, column: 9, scope: !141, inlinedAt: !200)
!527 = !DILocation(line: 545, column: 31, scope: !141, inlinedAt: !200)
!528 = !DILocation(line: 546, column: 71, scope: !141, inlinedAt: !200)
!529 = !DILocation(line: 546, column: 69, scope: !141, inlinedAt: !200)
!530 = !DILocation(line: 546, column: 30, scope: !141, inlinedAt: !200)
!531 = !DILocation(line: 546, column: 9, scope: !141, inlinedAt: !200)
!532 = !DILocation(line: 549, column: 49, scope: !141, inlinedAt: !200)
!533 = !DILocation(line: 549, column: 9, scope: !141, inlinedAt: !200)
!534 = !DILocation(line: 551, column: 9, scope: !141, inlinedAt: !200)
!535 = !DILocation(line: 552, column: 9, scope: !141, inlinedAt: !200)
!536 = !DILocation(line: 556, column: 14, scope: !141, inlinedAt: !200)
!537 = !DILocation(line: 557, column: 9, scope: !141, inlinedAt: !200)
!538 = !DILocation(line: 559, column: 36, scope: !539, inlinedAt: !200)
!539 = distinct !DILexicalBlock(scope: !141, file: !3, line: 559, column: 9)
!540 = !DILocation(line: 559, column: 9, scope: !141, inlinedAt: !200)
!541 = !DILocation(line: 566, column: 9, scope: !542, inlinedAt: !200)
!542 = distinct !DILexicalBlock(scope: !141, file: !3, line: 566, column: 9)
!543 = !DILocation(line: 566, column: 30, scope: !542, inlinedAt: !200)
!544 = !DILocation(line: 566, column: 9, scope: !141, inlinedAt: !200)
!545 = !DILocation(line: 567, column: 38, scope: !546, inlinedAt: !200)
!546 = distinct !DILexicalBlock(scope: !542, file: !3, line: 566, column: 36)
!547 = !DILocation(line: 568, column: 31, scope: !546, inlinedAt: !200)
!548 = !DILocation(line: 569, column: 5, scope: !546, inlinedAt: !200)
!549 = !DILocation(line: 553, column: 9, scope: !141, inlinedAt: !200)
!550 = !DILocation(line: 587, column: 36, scope: !169, inlinedAt: !200)
!551 = !DILocation(line: 587, column: 64, scope: !552, inlinedAt: !200)
!552 = !DILexicalBlockFile(scope: !169, file: !3, discriminator: 1)
!553 = !DILocation(line: 587, column: 41, scope: !169, inlinedAt: !200)
!554 = !DILocalVariable(name: "serviceSearchPattern", arg: 1, scope: !555, file: !3, line: 492, type: !57)
!555 = distinct !DISubprogram(name: "sdp_get_size_for_service_search_attribute_response", scope: !3, file: !3, line: 492, type: !556, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!64, !57, !57}
!558 = !{!554, !559, !560, !561}
!559 = !DILocalVariable(name: "attributeIDList", arg: 2, scope: !555, file: !3, line: 492, type: !57)
!560 = !DILocalVariable(name: "total_response_size", scope: !555, file: !3, line: 494, type: !64)
!561 = !DILocalVariable(name: "item", scope: !555, file: !3, line: 509, type: !172)
!562 = !DILocation(line: 492, column: 69, scope: !555, inlinedAt: !563)
!563 = distinct !DILocation(line: 588, column: 35, scope: !168, inlinedAt: !200)
!564 = !DILocation(line: 492, column: 95, scope: !555, inlinedAt: !563)
!565 = !DILocation(line: 494, column: 9, scope: !555, inlinedAt: !563)
!566 = !DILocation(line: 509, column: 28, scope: !555, inlinedAt: !563)
!567 = !DILocation(line: 510, column: 5, scope: !568, inlinedAt: !563)
!568 = !DILexicalBlockFile(scope: !569, file: !3, discriminator: 1)
!569 = distinct !DILexicalBlock(scope: !555, file: !3, line: 510, column: 5)
!570 = !DILocation(line: 512, column: 62, scope: !571, inlinedAt: !563)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 512, column: 13)
!572 = distinct !DILexicalBlock(scope: !573, file: !3, line: 510, column: 37)
!573 = distinct !DILexicalBlock(scope: !569, file: !3, line: 510, column: 5)
!574 = !DILocation(line: 512, column: 14, scope: !571, inlinedAt: !563)
!575 = !DILocation(line: 512, column: 13, scope: !572, inlinedAt: !563)
!576 = !DILocation(line: 516, column: 64, scope: !572, inlinedAt: !563)
!577 = !DILocation(line: 516, column: 36, scope: !572, inlinedAt: !563)
!578 = !DILocation(line: 516, column: 29, scope: !572, inlinedAt: !563)
!579 = !DILocation(line: 516, column: 34, scope: !572, inlinedAt: !563)
!580 = !DILocation(line: 517, column: 5, scope: !572, inlinedAt: !563)
!581 = !DILocation(line: 510, column: 5, scope: !582, inlinedAt: !563)
!582 = !DILexicalBlockFile(scope: !573, file: !3, discriminator: 2)
!583 = !DILocation(line: 510, column: 5, scope: !584, inlinedAt: !563)
!584 = !DILexicalBlockFile(scope: !573, file: !3, discriminator: 1)
!585 = distinct !{!585, !586, !587}
!586 = !DILocation(line: 510, column: 5, scope: !569)
!587 = !DILocation(line: 517, column: 5, scope: !569)
!588 = !DILocation(line: 588, column: 13, scope: !168, inlinedAt: !200)
!589 = !DILocation(line: 589, column: 39, scope: !168, inlinedAt: !200)
!590 = !DILocation(line: 589, column: 89, scope: !168, inlinedAt: !200)
!591 = !DILocation(line: 589, column: 9, scope: !168, inlinedAt: !200)
!592 = !DILocation(line: 592, column: 35, scope: !168, inlinedAt: !200)
!593 = !DILocation(line: 593, column: 5, scope: !168, inlinedAt: !200)
!594 = !DILocation(line: 655, column: 32, scope: !171, inlinedAt: !200)
!595 = !DILocation(line: 555, column: 14, scope: !141, inlinedAt: !200)
!596 = !DILocation(line: 656, column: 9, scope: !597, inlinedAt: !200)
!597 = !DILexicalBlockFile(scope: !192, file: !3, discriminator: 1)
!598 = !DILocation(line: 658, column: 17, scope: !599, inlinedAt: !200)
!599 = distinct !DILexicalBlock(scope: !190, file: !3, line: 658, column: 17)
!600 = !DILocation(line: 658, column: 39, scope: !599, inlinedAt: !200)
!601 = !DILocation(line: 658, column: 17, scope: !190, inlinedAt: !200)
!602 = !DILocation(line: 662, column: 66, scope: !603, inlinedAt: !200)
!603 = distinct !DILexicalBlock(scope: !190, file: !3, line: 662, column: 17)
!604 = !DILocation(line: 662, column: 18, scope: !603, inlinedAt: !200)
!605 = !DILocation(line: 662, column: 17, scope: !190, inlinedAt: !200)
!606 = !DILocation(line: 667, column: 37, scope: !189, inlinedAt: !200)
!607 = !DILocation(line: 667, column: 17, scope: !190, inlinedAt: !200)
!608 = !DILocation(line: 670, column: 76, scope: !188, inlinedAt: !200)
!609 = !DILocation(line: 670, column: 48, scope: !188, inlinedAt: !200)
!610 = !DILocation(line: 672, column: 21, scope: !611, inlinedAt: !200)
!611 = distinct !DILexicalBlock(scope: !188, file: !3, line: 672, column: 21)
!612 = !DILocation(line: 672, column: 46, scope: !611, inlinedAt: !200)
!613 = !DILocation(line: 672, column: 21, scope: !188, inlinedAt: !200)
!614 = !DILocation(line: 677, column: 47, scope: !615, inlinedAt: !200)
!615 = distinct !DILexicalBlock(scope: !188, file: !3, line: 677, column: 21)
!616 = !DILocation(line: 677, column: 53, scope: !615, inlinedAt: !200)
!617 = !DILocation(line: 677, column: 51, scope: !615, inlinedAt: !200)
!618 = !DILocation(line: 677, column: 84, scope: !619, inlinedAt: !200)
!619 = !DILexicalBlockFile(scope: !615, file: !3, discriminator: 1)
!620 = !DILocation(line: 677, column: 80, scope: !615, inlinedAt: !200)
!621 = !DILocation(line: 683, column: 47, scope: !188, inlinedAt: !200)
!622 = !DILocation(line: 683, column: 17, scope: !188, inlinedAt: !200)
!623 = !DILocation(line: 684, column: 21, scope: !188, inlinedAt: !200)
!624 = !DILocation(line: 685, column: 43, scope: !188, inlinedAt: !200)
!625 = !DILocation(line: 693, column: 17, scope: !194, inlinedAt: !200)
!626 = !DILocation(line: 694, column: 79, scope: !194, inlinedAt: !200)
!627 = !DILocation(line: 694, column: 174, scope: !194, inlinedAt: !200)
!628 = !DILocation(line: 693, column: 21, scope: !194, inlinedAt: !200)
!629 = !DILocation(line: 694, column: 32, scope: !194, inlinedAt: !200)
!630 = !DILocation(line: 694, column: 21, scope: !194, inlinedAt: !200)
!631 = !DILocation(line: 695, column: 24, scope: !194, inlinedAt: !200)
!632 = !DILocation(line: 695, column: 21, scope: !194, inlinedAt: !200)
!633 = !DILocation(line: 698, column: 21, scope: !634, inlinedAt: !200)
!634 = distinct !DILexicalBlock(scope: !194, file: !3, line: 698, column: 21)
!635 = !DILocation(line: 698, column: 21, scope: !194, inlinedAt: !200)
!636 = !DILocation(line: 696, column: 43, scope: !194, inlinedAt: !200)
!637 = !DILocation(line: 707, column: 13, scope: !190, inlinedAt: !200)
!638 = !DILocation(line: 705, column: 37, scope: !194, inlinedAt: !200)
!639 = !DILocation(line: 656, column: 9, scope: !640, inlinedAt: !200)
!640 = !DILexicalBlockFile(scope: !191, file: !3, discriminator: 2)
!641 = !DILocation(line: 656, column: 9, scope: !642, inlinedAt: !200)
!642 = !DILexicalBlockFile(scope: !191, file: !3, discriminator: 1)
!643 = distinct !{!643, !644, !645}
!644 = !DILocation(line: 656, column: 9, scope: !192)
!645 = !DILocation(line: 708, column: 9, scope: !192)
!646 = !DILocation(line: 711, column: 31, scope: !141, inlinedAt: !200)
!647 = !DILocation(line: 715, column: 36, scope: !648, inlinedAt: !200)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 714, column: 23)
!649 = distinct !DILexicalBlock(scope: !141, file: !3, line: 714, column: 9)
!650 = !DILocation(line: 716, column: 9, scope: !648, inlinedAt: !200)
!651 = !DILocation(line: 717, column: 13, scope: !648, inlinedAt: !200)
!652 = !DILocation(line: 718, column: 9, scope: !648, inlinedAt: !200)
!653 = !DILocation(line: 719, column: 13, scope: !648, inlinedAt: !200)
!654 = !DILocation(line: 720, column: 5, scope: !648, inlinedAt: !200)
!655 = !DILocation(line: 722, column: 36, scope: !656, inlinedAt: !200)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 720, column: 12)
!657 = !DILocation(line: 711, column: 35, scope: !141, inlinedAt: !200)
!658 = !DILocation(line: 726, column: 28, scope: !141, inlinedAt: !200)
!659 = !DILocation(line: 727, column: 5, scope: !141, inlinedAt: !200)
!660 = !DILocation(line: 728, column: 46, scope: !141, inlinedAt: !200)
!661 = !DILocation(line: 728, column: 5, scope: !141, inlinedAt: !200)
!662 = !DILocation(line: 729, column: 5, scope: !141, inlinedAt: !200)
!663 = !DILocation(line: 732, column: 12, scope: !141, inlinedAt: !200)
!664 = !DILocation(line: 736, column: 1, scope: !141, inlinedAt: !200)
!665 = !DILocation(line: 810, column: 13, scope: !201)
!666 = !DILocation(line: 193, column: 35, scope: !384, inlinedAt: !667)
!667 = distinct !DILocation(line: 813, column: 13, scope: !201)
!668 = !DILocation(line: 193, column: 48, scope: !384, inlinedAt: !667)
!669 = !DILocation(line: 193, column: 68, scope: !384, inlinedAt: !667)
!670 = !DILocation(line: 206, column: 5, scope: !384, inlinedAt: !667)
!671 = !DILocation(line: 814, column: 13, scope: !201)
!672 = !DILocation(line: 820, column: 17, scope: !202)
!673 = !DILocation(line: 820, column: 9, scope: !202)
!674 = !DILocation(line: 823, column: 13, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 823, column: 13)
!676 = distinct !DILexicalBlock(scope: !202, file: !3, line: 820, column: 28)
!677 = !DILocation(line: 823, column: 13, scope: !676)
!678 = !DILocation(line: 823, column: 13, scope: !679)
!679 = !DILexicalBlockFile(scope: !675, file: !3, discriminator: 1)
!680 = !DILocation(line: 824, column: 39, scope: !676)
!681 = !DILocation(line: 824, column: 13, scope: !676)
!682 = !DILocation(line: 826, column: 17, scope: !683)
!683 = distinct !DILexicalBlock(scope: !676, file: !3, line: 826, column: 17)
!684 = !DILocation(line: 826, column: 37, scope: !683)
!685 = !DILocation(line: 826, column: 17, scope: !676)
!686 = !DILocation(line: 828, column: 22, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 828, column: 21)
!688 = distinct !DILexicalBlock(scope: !683, file: !3, line: 826, column: 53)
!689 = !DILocation(line: 828, column: 21, scope: !688)
!690 = !DILocation(line: 829, column: 45, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 829, column: 25)
!692 = distinct !DILexicalBlock(scope: !687, file: !3, line: 828, column: 46)
!693 = !DILocation(line: 829, column: 25, scope: !691)
!694 = !DILocation(line: 829, column: 25, scope: !692)
!695 = !DILocation(line: 831, column: 45, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !3, line: 829, column: 66)
!697 = !DILocation(line: 831, column: 65, scope: !696)
!698 = !{!115, !117, i64 8}
!699 = !DILocation(line: 832, column: 29, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 832, column: 29)
!701 = !DILocation(line: 832, column: 79, scope: !700)
!702 = !DILocation(line: 832, column: 29, scope: !696)
!703 = !DILocation(line: 839, column: 41, scope: !704)
!704 = distinct !DILexicalBlock(scope: !687, file: !3, line: 838, column: 24)
!705 = !DILocation(line: 839, column: 68, scope: !704)
!706 = !DILocation(line: 844, column: 37, scope: !707)
!707 = distinct !DILexicalBlock(scope: !683, file: !3, line: 843, column: 20)
!708 = !DILocation(line: 844, column: 64, scope: !707)
!709 = !DILocation(line: 845, column: 21, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !3, line: 845, column: 21)
!711 = !DILocation(line: 845, column: 57, scope: !710)
!712 = !DILocation(line: 846, column: 24, scope: !713)
!713 = !DILexicalBlockFile(scope: !710, file: !3, discriminator: 1)
!714 = !DILocation(line: 846, column: 21, scope: !710)
!715 = !DILocation(line: 847, column: 21, scope: !716)
!716 = distinct !DILexicalBlock(scope: !710, file: !3, line: 846, column: 56)
!717 = !DILocation(line: 847, column: 41, scope: !716)
!718 = !DILocation(line: 847, column: 61, scope: !716)
!719 = !DILocation(line: 848, column: 25, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !3, line: 848, column: 25)
!721 = !DILocation(line: 848, column: 87, scope: !720)
!722 = !DILocation(line: 848, column: 25, scope: !716)
!723 = !DILocation(line: 850, column: 25, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 850, column: 25)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 848, column: 93)
!726 = !DILocation(line: 850, column: 25, scope: !725)
!727 = !DILocation(line: 850, column: 25, scope: !728)
!728 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 1)
!729 = !DILocation(line: 856, column: 13, scope: !730)
!730 = distinct !DILexicalBlock(scope: !676, file: !3, line: 856, column: 13)
!731 = !DILocation(line: 856, column: 13, scope: !676)
!732 = !DILocation(line: 856, column: 13, scope: !733)
!733 = !DILexicalBlockFile(scope: !730, file: !3, discriminator: 1)
!734 = !DILocation(line: 857, column: 13, scope: !676)
!735 = !DILocation(line: 857, column: 38, scope: !676)
!736 = !DILocation(line: 857, column: 50, scope: !676)
!737 = !{!738, !117, i64 0}
!738 = !{!"", !739, i64 0}
!739 = !{!"", !117, i64 0, !117, i64 2, !117, i64 4, !108, i64 6, !108, i64 7, !108, i64 8}
!740 = !DILocation(line: 858, column: 13, scope: !676)
!741 = !DILocation(line: 859, column: 13, scope: !676)
!742 = !DILocation(line: 862, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !676, file: !3, line: 862, column: 17)
!744 = !DILocation(line: 862, column: 17, scope: !676)
!745 = !DILocation(line: 863, column: 54, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !3, line: 862, column: 28)
!747 = !DILocation(line: 864, column: 17, scope: !748)
!748 = distinct !DILexicalBlock(scope: !746, file: !3, line: 864, column: 17)
!749 = !DILocation(line: 864, column: 17, scope: !746)
!750 = !DILocation(line: 864, column: 17, scope: !751)
!751 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 1)
!752 = !DILocation(line: 866, column: 54, scope: !753)
!753 = distinct !DILexicalBlock(scope: !743, file: !3, line: 865, column: 20)
!754 = !DILocation(line: 867, column: 17, scope: !755)
!755 = distinct !DILexicalBlock(scope: !753, file: !3, line: 867, column: 17)
!756 = !DILocation(line: 867, column: 17, scope: !753)
!757 = !DILocation(line: 867, column: 17, scope: !758)
!758 = !DILexicalBlockFile(scope: !755, file: !3, discriminator: 1)
!759 = !DILocation(line: 872, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !676, file: !3, line: 872, column: 13)
!761 = !DILocation(line: 872, column: 13, scope: !676)
!762 = !DILocation(line: 872, column: 13, scope: !763)
!763 = !DILexicalBlockFile(scope: !760, file: !3, discriminator: 1)
!764 = !DILocation(line: 876, column: 13, scope: !765)
!765 = distinct !DILexicalBlock(scope: !676, file: !3, line: 876, column: 13)
!766 = !DILocation(line: 876, column: 13, scope: !676)
!767 = !DILocation(line: 876, column: 13, scope: !768)
!768 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 1)
!769 = !DILocation(line: 877, column: 28, scope: !770)
!770 = distinct !DILexicalBlock(scope: !676, file: !3, line: 877, column: 17)
!771 = !DILocation(line: 877, column: 53, scope: !770)
!772 = !DILocation(line: 877, column: 25, scope: !770)
!773 = !DILocation(line: 877, column: 17, scope: !676)
!774 = !DILocation(line: 878, column: 54, scope: !775)
!775 = distinct !DILexicalBlock(scope: !770, file: !3, line: 877, column: 66)
!776 = !DILocation(line: 879, column: 13, scope: !775)
!777 = !DILocation(line: 884, column: 13, scope: !676)
!778 = !DILocation(line: 884, column: 38, scope: !676)
!779 = !DILocation(line: 884, column: 50, scope: !676)
!780 = !DILocation(line: 885, column: 13, scope: !676)
!781 = !DILocation(line: 897, column: 1, scope: !120)
!782 = !DILocation(line: 193, column: 35, scope: !384)
!783 = !DILocation(line: 193, column: 48, scope: !384)
!784 = !DILocation(line: 193, column: 68, scope: !384)
!785 = !DILocation(line: 206, column: 5, scope: !384)
!786 = !DILocation(line: 207, column: 5, scope: !384)
!787 = distinct !DISubprogram(name: "sdp_try_respond", scope: !3, file: !3, line: 739, type: !788, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!76, !64, !57, !64}
!790 = !{!791, !792, !793}
!791 = !DILocalVariable(name: "channel", arg: 1, scope: !787, file: !3, line: 739, type: !64)
!792 = !DILocalVariable(name: "sdp_response_buffer", arg: 2, scope: !787, file: !3, line: 739, type: !57)
!793 = !DILocalVariable(name: "sdp_response_size", arg: 3, scope: !787, file: !3, line: 739, type: !64)
!794 = !DILocation(line: 739, column: 25, scope: !787)
!795 = !DILocation(line: 739, column: 38, scope: !787)
!796 = !DILocation(line: 739, column: 63, scope: !787)
!797 = !DILocation(line: 741, column: 10, scope: !798)
!798 = distinct !DILexicalBlock(scope: !787, file: !3, line: 741, column: 9)
!799 = !DILocation(line: 741, column: 9, scope: !787)
!800 = !DILocation(line: 744, column: 10, scope: !801)
!801 = distinct !DILexicalBlock(scope: !787, file: !3, line: 744, column: 9)
!802 = !DILocation(line: 744, column: 9, scope: !787)
!803 = !DILocation(line: 747, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !787, file: !3, line: 747, column: 5)
!805 = !DILocation(line: 747, column: 5, scope: !787)
!806 = !DILocation(line: 747, column: 5, scope: !807)
!807 = !DILexicalBlockFile(scope: !804, file: !3, discriminator: 1)
!808 = !DILocation(line: 749, column: 12, scope: !787)
!809 = !DILocation(line: 749, column: 5, scope: !787)
!810 = !DILocation(line: 750, column: 1, scope: !787)
!811 = distinct !DISubprogram(name: "connect_pending_connnecting_sdp_handler", scope: !3, file: !3, line: 752, type: !812, isLocal: false, isDefinition: true, scopeLine: 753, isOptimized: true, unit: !2, variables: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!76}
!814 = !{!815}
!815 = !DILocalVariable(name: "channel", scope: !811, file: !3, line: 754, type: !64)
!816 = !DILocation(line: 754, column: 19, scope: !811)
!817 = !DILocation(line: 754, column: 39, scope: !811)
!818 = !DILocation(line: 754, column: 9, scope: !811)
!819 = !DILocation(line: 755, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !811, file: !3, line: 755, column: 5)
!821 = !DILocation(line: 755, column: 5, scope: !811)
!822 = !DILocation(line: 755, column: 5, scope: !823)
!823 = !DILexicalBlockFile(scope: !820, file: !3, discriminator: 1)
!824 = !DILocation(line: 756, column: 17, scope: !825)
!825 = distinct !DILexicalBlock(scope: !811, file: !3, line: 756, column: 9)
!826 = !DILocation(line: 756, column: 9, scope: !811)
!827 = !DILocation(line: 757, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 756, column: 23)
!829 = !DILocation(line: 757, column: 34, scope: !828)
!830 = !DILocation(line: 757, column: 46, scope: !828)
!831 = !DILocation(line: 758, column: 9, scope: !828)
!832 = !DILocation(line: 759, column: 9, scope: !828)
!833 = !DILocation(line: 759, column: 29, scope: !828)
!834 = !DILocation(line: 759, column: 49, scope: !828)
!835 = !DILocation(line: 760, column: 9, scope: !828)
!836 = !DILocation(line: 763, column: 1, scope: !811)
!837 = distinct !DISubprogram(name: "sdp_slave_channel_disconnect", scope: !3, file: !3, line: 899, type: !838, isLocal: false, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{null}
!840 = !{}
!841 = !DILocation(line: 901, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 901, column: 9)
!843 = !DILocation(line: 901, column: 34, scope: !842)
!844 = !DILocation(line: 901, column: 9, scope: !837)
!845 = !DILocation(line: 903, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 901, column: 47)
!847 = !DILocation(line: 904, column: 5, scope: !846)
!848 = !DILocation(line: 905, column: 1, scope: !837)
!849 = distinct !DISubprogram(name: "sdp_core_data_for_send", scope: !3, file: !3, line: 908, type: !850, isLocal: false, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{!76, !57, !64}
!852 = !{!853, !854, !855}
!853 = !DILocalVariable(name: "packet", arg: 1, scope: !849, file: !3, line: 908, type: !57)
!854 = !DILocalVariable(name: "size", arg: 2, scope: !849, file: !3, line: 908, type: !64)
!855 = !DILocalVariable(name: "len", scope: !849, file: !3, line: 910, type: !58)
!856 = !DILocation(line: 908, column: 32, scope: !849)
!857 = !DILocation(line: 908, column: 44, scope: !849)
!858 = !DILocation(line: 910, column: 8, scope: !849)
!859 = !DILocation(line: 914, column: 21, scope: !849)
!860 = !DILocation(line: 914, column: 5, scope: !849)
!861 = !DILocation(line: 916, column: 5, scope: !849)
!862 = distinct !DISubprogram(name: "sdp_core_data_for_set", scope: !3, file: !3, line: 919, type: !863, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !57, !64}
!865 = !{!866, !867, !868}
!866 = !DILocalVariable(name: "packet", arg: 1, scope: !862, file: !3, line: 919, type: !57)
!867 = !DILocalVariable(name: "size", arg: 2, scope: !862, file: !3, line: 919, type: !64)
!868 = !DILocalVariable(name: "len", scope: !862, file: !3, line: 921, type: !58)
!869 = !DILocation(line: 919, column: 32, scope: !862)
!870 = !DILocation(line: 919, column: 44, scope: !862)
!871 = !DILocation(line: 921, column: 8, scope: !862)
!872 = !DILocation(line: 925, column: 13, scope: !862)
!873 = !DILocation(line: 925, column: 5, scope: !862)
!874 = !DILocation(line: 926, column: 1, scope: !862)
!875 = distinct !DISubprogram(name: "sdp_suspend", scope: !3, file: !3, line: 960, type: !812, isLocal: true, isDefinition: true, scopeLine: 961, isOptimized: true, unit: !2, variables: !840)
!876 = !DILocation(line: 962, column: 5, scope: !875)
!877 = distinct !DISubprogram(name: "sdp_resume", scope: !3, file: !3, line: 956, type: !812, isLocal: true, isDefinition: true, scopeLine: 957, isOptimized: true, unit: !2, variables: !840)
!878 = !DILocation(line: 958, column: 5, scope: !877)
!879 = distinct !DISubprogram(name: "sdp_release", scope: !3, file: !3, line: 932, type: !812, isLocal: true, isDefinition: true, scopeLine: 933, isOptimized: true, unit: !2, variables: !840)
!880 = !DILocation(line: 934, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !879, file: !3, line: 934, column: 9)
!882 = !DILocation(line: 934, column: 19, scope: !881)
!883 = !DILocation(line: 934, column: 9, scope: !879)
!884 = !DILocation(line: 937, column: 34, scope: !885)
!885 = distinct !DILexicalBlock(scope: !879, file: !3, line: 937, column: 9)
!886 = !DILocation(line: 937, column: 46, scope: !885)
!887 = !DILocation(line: 937, column: 9, scope: !879)
!888 = !DILocation(line: 938, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 937, column: 52)
!890 = !DILocation(line: 939, column: 9, scope: !889)
!891 = !DILocation(line: 941, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !879, file: !3, line: 941, column: 9)
!893 = !DILocation(line: 941, column: 9, scope: !879)
!894 = !DILocation(line: 944, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !879, file: !3, line: 944, column: 9)
!896 = !DILocation(line: 944, column: 34, scope: !895)
!897 = !{!738, !117, i64 2}
!898 = !DILocation(line: 944, column: 53, scope: !895)
!899 = !DILocation(line: 944, column: 9, scope: !879)
!900 = !DILocation(line: 945, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !895, file: !3, line: 944, column: 59)
!902 = !DILocation(line: 946, column: 9, scope: !901)
!903 = !DILocation(line: 948, column: 10, scope: !904)
!904 = distinct !DILexicalBlock(scope: !879, file: !3, line: 948, column: 9)
!905 = !DILocation(line: 948, column: 9, scope: !879)
!906 = !DILocation(line: 951, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !879, file: !3, line: 951, column: 5)
!908 = !DILocation(line: 951, column: 5, scope: !879)
!909 = !DILocation(line: 951, column: 5, scope: !910)
!910 = !DILexicalBlockFile(scope: !907, file: !3, discriminator: 1)
!911 = !DILocation(line: 952, column: 15, scope: !879)
!912 = !DILocation(line: 953, column: 5, scope: !879)
!913 = !DILocation(line: 954, column: 1, scope: !879)
