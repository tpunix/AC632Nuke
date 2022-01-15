; ModuleID = 'a2dp_sink.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_sink.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.a2dp_media_probe = type { i32, i32 (i8*, i32 (i8*, i8*, i16)*)*, i32 (i8*, i8*, i16)*, i32 (...)*, i32 (...)*, i32 (...)* }
%struct.a2dp_event_handler = type { i32, i32 (%struct.a2dp_conn*, i32, i8)*, void (%struct.a2dp_conn*)*, void (%struct.a2dp_conn*, i8*, i16)*, void (%struct.a2dp_conn*, i8*)*, void (%struct.a2dp_conn*, i8*)*, void (%struct.a2dp_conn*)* }
%struct.a2dp_conn = type { [6 x i8], %struct.a2dp_core_data_t, %struct.avdtp, %struct.a2dp_media }
%struct.a2dp_core_data_t = type { i8 }
%struct.avdtp = type { [2 x %struct._avdtp_local_sep], %struct.avdtp_core_data_t }
%struct._avdtp_local_sep = type { %struct._avdtp_sep_ind*, %struct.avdtp*, %struct._seid_info, i8, [16 x i8] }
%struct._avdtp_sep_ind = type { i8 (i8, i8*, i8*)*, i8 (%struct._avdtp_local_sep*, i8*, i8, i8*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*)*, i8 (%struct._avdtp_local_sep*, %struct._avdtp_stream*, i8*)*, void (%struct._avdtp_local_sep*)*, i8 (...)*, i8 (i8, i16)* }
%struct._avdtp_stream = type { i8 }
%struct._seid_info = type { i16 }
%struct.avdtp_core_data_t = type { %struct._avdtp_stream, %struct._avdtp_local_sep*, i8, i16, [8 x %struct._seid_req], [16 x i8], i8, i8, i16 }
%struct._seid_req = type { i8 }
%struct.a2dp_media = type { %struct.media_core_data_t, %struct.a2dp_media_probe*, %struct.a2dp_media_codec*, i32, i8, i8 }
%struct.media_core_data_t = type { i16, i16, i32 }
%struct.a2dp_media_codec = type { i32, i32 (i32)*, i32 (i8*)*, i32 (i8*, i16)*, i32 (...)*, i32 (i8*)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@a2dp_sink_media_probe_begin = external global [0 x %struct.a2dp_media_probe], align 4
@a2dp_sink_media_probe_end = external global [0 x %struct.a2dp_media_probe], align 4
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [20 x i8] c"__sink_media_close\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"codec closed\0A\00", align 1
@a2dp_sink_event_handler = hidden constant %struct.a2dp_event_handler { i32 1, i32 (%struct.a2dp_conn*, i32, i8)* @__sink_channel_open, void (%struct.a2dp_conn*)* @__sink_event_credits, void (%struct.a2dp_conn*, i8*, i16)* @__sink_media_packet, void (%struct.a2dp_conn*, i8*)* null, void (%struct.a2dp_conn*, i8*)* @__sink_media_suspend, void (%struct.a2dp_conn*)* null }, section ".a2dp_event_handler", align 4, !dbg !30
@.str.2 = private unnamed_addr constant [21 x i8] c"sink: channel_close\0A\00", align 1
@a2dp_sink_media_codec_begin = external global [0 x %struct.a2dp_media_codec], align 4
@a2dp_sink_media_codec_end = external global [0 x %struct.a2dp_media_codec], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.a2dp_event_handler* @a2dp_sink_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: nounwind optsize readonly
define hidden %struct.a2dp_media_probe* @__sink_media_probe(i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !248, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata %struct.a2dp_media_probe* getelementptr inbounds ([0 x %struct.a2dp_media_probe], [0 x %struct.a2dp_media_probe]* @a2dp_sink_media_probe_begin, i32 0, i32 0), metadata !249, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata %struct.a2dp_media_probe* getelementptr inbounds ([0 x %struct.a2dp_media_probe], [0 x %struct.a2dp_media_probe]* @a2dp_sink_media_probe_begin, i32 0, i32 0), metadata !249, metadata !DIExpression()), !dbg !251
  br i1 icmp ult (%struct.a2dp_media_probe* getelementptr inbounds ([0 x %struct.a2dp_media_probe], [0 x %struct.a2dp_media_probe]* @a2dp_sink_media_probe_begin, i32 0, i32 0), %struct.a2dp_media_probe* getelementptr inbounds ([0 x %struct.a2dp_media_probe], [0 x %struct.a2dp_media_probe]* @a2dp_sink_media_probe_end, i32 0, i32 0)), label %2, label %13, !dbg !252

; <label>:2:                                      ; preds = %1
  br label %3, !dbg !255

; <label>:3:                                      ; preds = %8, %2
  %4 = phi %struct.a2dp_media_probe* [ %9, %8 ], [ getelementptr inbounds ([0 x %struct.a2dp_media_probe], [0 x %struct.a2dp_media_probe]* @a2dp_sink_media_probe_begin, i32 0, i32 0), %2 ]
  %5 = getelementptr inbounds %struct.a2dp_media_probe, %struct.a2dp_media_probe* %4, i32 0, i32 0, !dbg !255
  %6 = load i32, i32* %5, align 4, !dbg !255, !tbaa !259
  %7 = icmp eq i32 %6, %0, !dbg !265
  br i1 %7, label %11, label %8, !dbg !266

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.a2dp_media_probe, %struct.a2dp_media_probe* %4, i32 1, !dbg !267
  call void @llvm.dbg.value(metadata %struct.a2dp_media_probe* %9, metadata !249, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata %struct.a2dp_media_probe* %9, metadata !249, metadata !DIExpression()), !dbg !251
  %10 = icmp ult %struct.a2dp_media_probe* %9, getelementptr inbounds ([0 x %struct.a2dp_media_probe], [0 x %struct.a2dp_media_probe]* @a2dp_sink_media_probe_end, i32 0, i32 0), !dbg !269
  br i1 %10, label %3, label %11, !dbg !252, !llvm.loop !271

; <label>:11:                                     ; preds = %8, %3
  %12 = phi %struct.a2dp_media_probe* [ null, %8 ], [ %4, %3 ]
  br label %13, !dbg !274

; <label>:13:                                     ; preds = %11, %1
  %14 = phi %struct.a2dp_media_probe* [ null, %1 ], [ %12, %11 ]
  ret %struct.a2dp_media_probe* %14, !dbg !274
}

; Function Attrs: nounwind optsize
define hidden void @__sink_media_close(%struct.a2dp_conn*) local_unnamed_addr #1 section ".bt_stack_code" !dbg !275 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !277, metadata !DIExpression()), !dbg !280
  %2 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 3, i32 2, !dbg !281
  %3 = load %struct.a2dp_media_codec*, %struct.a2dp_media_codec** %2, align 4, !dbg !281, !tbaa !283
  %4 = icmp eq %struct.a2dp_media_codec* %3, null, !dbg !287
  br i1 %4, label %27, label %5, !dbg !288

; <label>:5:                                      ; preds = %1
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !289, !tbaa !291
  %7 = and i8 %6, 32, !dbg !289
  %8 = icmp eq i8 %7, 0, !dbg !289
  br i1 %8, label %13, label %9, !dbg !292

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #5, !dbg !293
  %11 = load %struct.a2dp_media_codec*, %struct.a2dp_media_codec** %2, align 4, !tbaa !283
  %12 = icmp eq %struct.a2dp_media_codec* %11, null, !dbg !295
  br i1 %12, label %21, label %13, !dbg !297

; <label>:13:                                     ; preds = %9, %5
  %14 = phi %struct.a2dp_media_codec* [ %11, %9 ], [ %3, %5 ]
  %15 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %14, i32 0, i32 5, !dbg !298
  %16 = load i32 (i8*)*, i32 (i8*)** %15, align 4, !dbg !298, !tbaa !300
  %17 = icmp eq i32 (i8*)* %16, null, !dbg !302
  br i1 %17, label %21, label %18, !dbg !303

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 0, i32 0, !dbg !305
  %20 = tail call i32 %16(i8* %19) #6, !dbg !307
  br label %21, !dbg !308

; <label>:21:                                     ; preds = %18, %13, %9
  store %struct.a2dp_media_codec* null, %struct.a2dp_media_codec** %2, align 4, !dbg !309, !tbaa !283
  %22 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !310, !tbaa !291
  %23 = and i8 %22, 32, !dbg !310
  %24 = icmp eq i8 %23, 0, !dbg !310
  br i1 %24, label %27, label %25, !dbg !312

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !313
  br label %27, !dbg !313

; <label>:27:                                     ; preds = %25, %21, %1
  ret void, !dbg !315
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal i32 @__sink_channel_open(%struct.a2dp_conn*, i32, i8 zeroext) #1 section ".bt_stack_code" !dbg !317 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !319, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %1, metadata !320, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i8 %2, metadata !321, metadata !DIExpression()), !dbg !324
  %4 = icmp eq i32 %1, 0, !dbg !325
  br i1 %4, label %12, label %5, !dbg !327

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !328, !tbaa !291
  %7 = and i8 %6, 32, !dbg !328
  %8 = icmp eq i8 %7, 0, !dbg !328
  br i1 %8, label %11, label %9, !dbg !331

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !332
  br label %11, !dbg !332

; <label>:11:                                     ; preds = %9, %5
  tail call void @__sink_media_close(%struct.a2dp_conn* %0) #5, !dbg !334
  br label %12, !dbg !335

; <label>:12:                                     ; preds = %11, %3
  ret i32 0, !dbg !336
}

; Function Attrs: nounwind optsize readnone
define internal void @__sink_event_credits(%struct.a2dp_conn* nocapture) #3 section ".bt_stack_code" !dbg !337 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !339, metadata !DIExpression()), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: nounwind optsize
define internal void @__sink_media_packet(%struct.a2dp_conn*, i8*, i16 zeroext) #1 section ".bt_stack_code" !dbg !342 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !344, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %1, metadata !345, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i16 %2, metadata !346, metadata !DIExpression()), !dbg !352
  %4 = zext i16 %2 to i32, !dbg !353
  %5 = icmp ult i16 %2, 12, !dbg !355
  br i1 %5, label %60, label %6, !dbg !356

; <label>:6:                                      ; preds = %3
  %7 = bitcast i8* %1 to i16*, !dbg !357
  %8 = load i16, i16* %7, align 1, !dbg !357
  %9 = shl i16 %8, 2, !dbg !358
  %10 = and i16 %9, 60, !dbg !358
  %11 = add nuw nsw i16 %10, 12, !dbg !359
  %12 = or i16 %11, 1, !dbg !360
  %13 = zext i16 %12 to i32, !dbg !360
  call void @llvm.dbg.value(metadata i32 %13, metadata !347, metadata !DIExpression()), !dbg !361
  %14 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 3, i32 0, i32 1, !dbg !362
  %15 = load i16, i16* %14, align 2, !dbg !362, !tbaa !364
  %16 = icmp ne i16 %15, 0, !dbg !365
  %17 = zext i1 %16 to i32, !dbg !365
  %18 = add nuw nsw i32 %13, %17, !dbg !365
  call void @llvm.dbg.value(metadata i32 %18, metadata !347, metadata !DIExpression()), !dbg !361
  %19 = icmp ult i32 %4, %18, !dbg !366
  br i1 %19, label %60, label %20, !dbg !368

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 3, i32 2, !dbg !369
  %22 = load %struct.a2dp_media_codec*, %struct.a2dp_media_codec** %21, align 4, !dbg !369, !tbaa !283
  %23 = icmp eq %struct.a2dp_media_codec* %22, null, !dbg !371
  br i1 %23, label %24, label %52, !dbg !372

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 3, i32 5, !dbg !373
  %26 = load i8, i8* %25, align 1, !dbg !373, !tbaa !375
  %27 = zext i8 %26 to i32, !dbg !376
  call void @llvm.dbg.value(metadata i32 %27, metadata !377, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), metadata !382, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), metadata !382, metadata !DIExpression()), !dbg !385
  br i1 icmp ult (%struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), %struct.a2dp_media_codec* getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_end, i32 0, i32 0)), label %28, label %43, !dbg !386

; <label>:28:                                     ; preds = %24
  br label %29, !dbg !389

; <label>:29:                                     ; preds = %39, %28
  %30 = phi %struct.a2dp_media_codec* [ %40, %39 ], [ getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_begin, i32 0, i32 0), %28 ]
  %31 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %30, i32 0, i32 0, !dbg !389
  %32 = load i32, i32* %31, align 4, !dbg !389, !tbaa !393
  %33 = icmp eq i32 %32, %27, !dbg !394
  br i1 %33, label %34, label %39, !dbg !395

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %30, i32 0, i32 1, !dbg !396
  %36 = load i32 (i32)*, i32 (i32)** %35, align 4, !dbg !396, !tbaa !399
  %37 = tail call i32 %36(i32 0) #6, !dbg !400
  %38 = icmp eq i32 %37, 0, !dbg !400
  br i1 %38, label %44, label %43, !dbg !401

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %30, i32 1, !dbg !402
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %40, metadata !382, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata %struct.a2dp_media_codec* %40, metadata !382, metadata !DIExpression()), !dbg !385
  %41 = icmp ult %struct.a2dp_media_codec* %40, getelementptr inbounds ([0 x %struct.a2dp_media_codec], [0 x %struct.a2dp_media_codec]* @a2dp_sink_media_codec_end, i32 0, i32 0), !dbg !404
  br i1 %41, label %29, label %42, !dbg !386, !llvm.loop !406

; <label>:42:                                     ; preds = %39
  br label %43, !dbg !409

; <label>:43:                                     ; preds = %42, %34, %24
  store %struct.a2dp_media_codec* null, %struct.a2dp_media_codec** %21, align 4, !dbg !409, !tbaa !283
  br label %60, !dbg !410

; <label>:44:                                     ; preds = %34
  %45 = load i32 (i32)*, i32 (i32)** %35, align 4, !dbg !411, !tbaa !399
  %46 = tail call i32 %45(i32 1) #6, !dbg !412
  store %struct.a2dp_media_codec* %30, %struct.a2dp_media_codec** %21, align 4, !dbg !409, !tbaa !283
  %47 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %30, i32 0, i32 2, !dbg !413
  %48 = load i32 (i8*)*, i32 (i8*)** %47, align 4, !dbg !413, !tbaa !414
  %49 = getelementptr inbounds %struct.a2dp_conn, %struct.a2dp_conn* %0, i32 0, i32 0, i32 0, !dbg !415
  %50 = tail call i32 %48(i8* %49) #6, !dbg !416
  %51 = load %struct.a2dp_media_codec*, %struct.a2dp_media_codec** %21, align 4, !tbaa !283
  br label %52, !dbg !417

; <label>:52:                                     ; preds = %44, %20
  %53 = phi %struct.a2dp_media_codec* [ %22, %20 ], [ %51, %44 ], !dbg !418
  %54 = getelementptr inbounds %struct.a2dp_media_codec, %struct.a2dp_media_codec* %53, i32 0, i32 3, !dbg !419
  %55 = load i32 (i8*, i16)*, i32 (i8*, i16)** %54, align 4, !dbg !419, !tbaa !420
  %56 = getelementptr inbounds i8, i8* %1, i32 %18, !dbg !421
  %57 = sub nsw i32 %4, %18, !dbg !422
  %58 = trunc i32 %57 to i16, !dbg !423
  %59 = tail call i32 %55(i8* %56, i16 zeroext %58) #6, !dbg !424
  br label %60, !dbg !425

; <label>:60:                                     ; preds = %52, %43, %6, %3
  ret void, !dbg !426
}

; Function Attrs: nounwind optsize
define internal void @__sink_media_suspend(%struct.a2dp_conn*, i8* nocapture readnone) #1 section ".bt_stack_code" !dbg !428 {
  call void @llvm.dbg.value(metadata %struct.a2dp_conn* %0, metadata !430, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i8* %1, metadata !431, metadata !DIExpression()), !dbg !433
  tail call void @__sink_media_close(%struct.a2dp_conn* %0) #5, !dbg !434
  ret void, !dbg !435
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!241, !242}
!llvm.ident = !{!243}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !240, line: 190, type: !37, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !29)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/a2dp_sink.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtp_header", file: !8, line: 25, baseType: !9)
!8 = !DIFile(filename: "../btstack/Profile/include/bredr/Rtp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rtp_header", file: !8, line: 12, size: 96, elements: !10)
!10 = !{!11, !15, !16, !17, !18, !19, !20, !21, !24, !25}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !9, file: !8, line: 13, baseType: !12, size: 4, flags: DIFlagBitField, extraData: i64 0)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 13, baseType: !14)
!13 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !9, file: !8, line: 14, baseType: !12, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !9, file: !8, line: 15, baseType: !12, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !9, file: !8, line: 16, baseType: !12, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !9, file: !8, line: 18, baseType: !12, size: 7, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !9, file: !8, line: 19, baseType: !12, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sequence_number", scope: !9, file: !8, line: 21, baseType: !12, size: 16, offset: 16)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !9, file: !8, line: 22, baseType: !22, size: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 15, baseType: !23)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ssrc", scope: !9, file: !8, line: 23, baseType: !22, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "csrc", scope: !9, file: !8, line: 24, baseType: !26, offset: 96)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 0)
!29 = !{!0, !30}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "a2dp_sink_event_handler", scope: !2, file: !3, line: 169, type: !32, isLocal: false, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_event_handler", file: !34, line: 252, size: 224, elements: !35)
!34 = !DIFile(filename: "../btstack/Profile/include/bredr/a2dp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!35 = !{!36, !38, !226, !230, !234, !238, !239}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !33, file: !34, line: 253, baseType: !37, size: 32)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "channel_open", scope: !33, file: !34, line: 254, baseType: !39, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!40 = !DISubroutineType(types: !41)
!41 = !{!37, !42, !37, !61}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_conn", file: !34, line: 237, size: 1024, elements: !44)
!44 = !{!45, !56, !64, !170}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !43, file: !34, line: 238, baseType: !46, size: 48)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !47, line: 66, baseType: !48)
!47 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 48, elements: !54)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 20, baseType: !51)
!50 = !DIFile(filename: "/opt/q32s/include/sys/_stdint.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 29, baseType: !53)
!52 = !DIFile(filename: "/opt/q32s/include/machine/_default_types.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55}
!55 = !DISubrange(count: 6)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_core_data", scope: !43, file: !34, line: 239, baseType: !57, size: 8, offset: 48)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "a2dp_core_data_t", file: !34, line: 229, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 225, size: 8, elements: !59)
!59 = !{!60, !62, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !58, file: !34, line: 226, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 11, baseType: !53)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "discover_req", scope: !58, file: !34, line: 227, baseType: !61, size: 4, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "bqb_test_cnt", scope: !58, file: !34, line: 228, baseType: !61, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !43, file: !34, line: 240, baseType: !65, size: 768, offset: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avdtp", file: !66, line: 335, size: 768, elements: !67)
!66 = !DIFile(filename: "../btstack/Profile/include/bredr/avdtp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!67 = !{!68, !144}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "local_seps", scope: !65, file: !66, line: 337, baseType: !69, size: 448)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 448, elements: !142)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_local_sep", file: !66, line: 293, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_local_sep", file: !66, line: 282, size: 224, elements: !72)
!72 = !{!73, !124, !126, !136, !137, !138}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !71, file: !66, line: 283, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_sep_ind", file: !66, line: 350, size: 288, elements: !77)
!77 = !{!78, !85, !90, !103, !107, !108, !112, !116, !120}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "get_capability", scope: !76, file: !66, line: 351, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 32)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !61, !83, !84}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 11, baseType: !53)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "set_configuration", scope: !76, file: !66, line: 353, baseType: !86, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!87 = !DISubroutineType(types: !88)
!88 = !{!82, !89, !84, !61, !83}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !76, file: !66, line: 355, baseType: !91, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!92 = !DISubroutineType(types: !93)
!93 = !{!82, !89, !94, !61}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_stream", file: !66, line: 280, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_avdtp_stream", file: !66, line: 268, size: 8, elements: !97)
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "rseid", scope: !96, file: !66, line: 270, baseType: !61, size: 4, flags: DIFlagBitField, extraData: i64 0)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "int_role", scope: !96, file: !66, line: 271, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "open_acp", scope: !96, file: !66, line: 272, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "starting", scope: !96, file: !66, line: 278, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !96, file: !66, line: 279, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !76, file: !66, line: 356, baseType: !104, size: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DISubroutineType(types: !106)
!106 = !{!82, !89, !94}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !76, file: !66, line: 357, baseType: !104, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !76, file: !66, line: 359, baseType: !109, size: 32, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = !DISubroutineType(types: !111)
!111 = !{!82, !89, !94, !84}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !76, file: !66, line: 361, baseType: !113, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !89}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !76, file: !66, line: 362, baseType: !117, size: 32, offset: 224)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!118 = !DISubroutineType(types: !119)
!119 = !{!82, null}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "delayreport", scope: !76, file: !66, line: 363, baseType: !121, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DISubroutineType(types: !123)
!123 = !{!82, !61, !12}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !71, file: !66, line: 284, baseType: !125, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !71, file: !66, line: 286, baseType: !127, size: 16, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_info", file: !66, line: 124, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_info", file: !66, line: 117, size: 16, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !128, file: !66, line: 118, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !128, file: !66, line: 119, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "seid", scope: !128, file: !66, line: 120, baseType: !61, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rfa2", scope: !128, file: !66, line: 121, baseType: !61, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !66, line: 122, baseType: !61, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "media_type", scope: !128, file: !66, line: 123, baseType: !61, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !71, file: !66, line: 288, baseType: !61, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "codec_type", scope: !71, file: !66, line: 289, baseType: !61, size: 4, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !71, file: !66, line: 290, baseType: !139, size: 128, offset: 88)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !{!143}
!143 = !DISubrange(count: 2)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "adp_core_data", scope: !65, file: !66, line: 338, baseType: !145, size: 320, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "avdtp_core_data_t", file: !66, line: 333, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 318, size: 320, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !146, file: !66, line: 319, baseType: !95, size: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep", scope: !146, file: !66, line: 320, baseType: !89, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "local_sep_ind", scope: !146, file: !66, line: 321, baseType: !61, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !146, file: !66, line: 322, baseType: !12, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !146, file: !66, line: 323, baseType: !153, size: 64, offset: 96)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !159)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "seid_req", file: !66, line: 129, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seid_req", file: !66, line: 126, size: 8, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rfa0", scope: !155, file: !66, line: 127, baseType: !61, size: 2, flags: DIFlagBitField, extraData: i64 0)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "acp_seid", scope: !155, file: !66, line: 128, baseType: !61, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !146, file: !66, line: 324, baseType: !139, size: 128, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "seid_ind", scope: !146, file: !66, line: 325, baseType: !61, size: 8, offset: 288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pending_req", scope: !146, file: !66, line: 326, baseType: !61, size: 8, offset: 296)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "max_acp_seid", scope: !146, file: !66, line: 327, baseType: !61, size: 4, offset: 304, flags: DIFlagBitField, extraData: i64 304)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cur_acp_seid", scope: !146, file: !66, line: 328, baseType: !61, size: 4, offset: 308, flags: DIFlagBitField, extraData: i64 304)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "aac_codec_prior", scope: !146, file: !66, line: 329, baseType: !61, size: 4, offset: 312, flags: DIFlagBitField, extraData: i64 304)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !146, file: !66, line: 330, baseType: !61, size: 2, offset: 316, flags: DIFlagBitField, extraData: i64 304)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "get_discover", scope: !146, file: !66, line: 331, baseType: !61, size: 1, offset: 318, flags: DIFlagBitField, extraData: i64 304)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !146, file: !66, line: 332, baseType: !61, size: 1, offset: 319, flags: DIFlagBitField, extraData: i64 304)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !43, file: !34, line: 241, baseType: !171, size: 192, offset: 832)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media", file: !34, line: 215, size: 192, elements: !172)
!172 = !{!173, !180, !203, !222, !223, !224, !225}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "media_core_data", scope: !171, file: !34, line: 216, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "media_core_data_t", file: !34, line: 213, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 209, size: 64, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !175, file: !34, line: 210, baseType: !12, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cp_type", scope: !175, file: !34, line: 211, baseType: !12, size: 16, offset: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "samplerate", scope: !175, file: !34, line: 212, baseType: !22, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !171, file: !34, line: 217, baseType: !181, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_probe", file: !34, line: 190, size: 192, elements: !183)
!183 = !{!184, !185, !192, !197, !201, !202}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !34, line: 192, baseType: !37, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !182, file: !34, line: 193, baseType: !186, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 32)
!187 = !DISubroutineType(types: !188)
!188 = !{!37, !83, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = !DISubroutineType(types: !191)
!191 = !{!37, !83, !84, !12}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !182, file: !34, line: 194, baseType: !193, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DISubroutineType(types: !195)
!195 = !{!37, !196, !84, !12}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !182, file: !34, line: 195, baseType: !198, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DISubroutineType(types: !200)
!200 = !{!37, null}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !182, file: !34, line: 196, baseType: !198, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !182, file: !34, line: 197, baseType: !198, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "codec", scope: !171, file: !34, line: 218, baseType: !204, size: 32, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "a2dp_media_codec", file: !34, line: 200, size: 192, elements: !206)
!206 = !{!207, !208, !212, !216, !220, !221}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !205, file: !34, line: 201, baseType: !37, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !205, file: !34, line: 202, baseType: !209, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32)
!210 = !DISubroutineType(types: !211)
!211 = !{!37, !37}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !205, file: !34, line: 203, baseType: !213, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DISubroutineType(types: !215)
!215 = !{!37, !83}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !205, file: !34, line: 204, baseType: !217, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = !DISubroutineType(types: !219)
!219 = !{!37, !84, !12}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !205, file: !34, line: 205, baseType: !198, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !205, file: !34, line: 206, baseType: !213, size: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate", scope: !171, file: !34, line: 219, baseType: !22, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "nchannels", scope: !171, file: !34, line: 220, baseType: !61, size: 4, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !171, file: !34, line: 221, baseType: !61, size: 4, offset: 164, flags: DIFlagBitField, extraData: i64 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !34, line: 222, baseType: !61, size: 8, offset: 168)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "event_credits", scope: !33, file: !34, line: 255, baseType: !227, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 32)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !42}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "media_packet", scope: !33, file: !34, line: 256, baseType: !231, size: 32, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !42, !84, !12}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !33, file: !34, line: 257, baseType: !235, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 32)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !42, !196}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !33, file: !34, line: 258, baseType: !235, size: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !33, file: !34, line: 259, baseType: !227, size: 32, offset: 192)
!240 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!241 = !{i32 2, !"Dwarf Version", i32 4}
!242 = !{i32 2, !"Debug Info Version", i32 3}
!243 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!244 = distinct !DISubprogram(name: "__sink_media_probe", scope: !3, file: !3, line: 18, type: !245, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!181, !37}
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "type", arg: 1, scope: !244, file: !3, line: 18, type: !37)
!249 = !DILocalVariable(name: "p", scope: !244, file: !3, line: 20, type: !181)
!250 = !DILocation(line: 18, column: 49, scope: !244)
!251 = !DILocation(line: 20, column: 30, scope: !244)
!252 = !DILocation(line: 22, column: 5, scope: !253)
!253 = !DILexicalBlockFile(scope: !254, file: !3, discriminator: 1)
!254 = distinct !DILexicalBlock(scope: !244, file: !3, line: 22, column: 5)
!255 = !DILocation(line: 23, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 23, column: 13)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 22, column: 44)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 22, column: 5)
!259 = !{!260, !261, i64 0}
!260 = !{!"a2dp_media_probe", !261, i64 0, !264, i64 4, !264, i64 8, !264, i64 12, !264, i64 16, !264, i64 20}
!261 = !{!"int", !262, i64 0}
!262 = !{!"omnipotent char", !263, i64 0}
!263 = !{!"Simple C/C++ TBAA"}
!264 = !{!"any pointer", !262, i64 0}
!265 = !DILocation(line: 23, column: 21, scope: !256)
!266 = !DILocation(line: 23, column: 13, scope: !257)
!267 = !DILocation(line: 22, column: 5, scope: !268)
!268 = !DILexicalBlockFile(scope: !258, file: !3, discriminator: 2)
!269 = !DILocation(line: 22, column: 5, scope: !270)
!270 = !DILexicalBlockFile(scope: !258, file: !3, discriminator: 1)
!271 = distinct !{!271, !272, !273}
!272 = !DILocation(line: 22, column: 5, scope: !254)
!273 = !DILocation(line: 26, column: 5, scope: !254)
!274 = !DILocation(line: 29, column: 1, scope: !244)
!275 = distinct !DISubprogram(name: "__sink_media_close", scope: !3, file: !3, line: 48, type: !228, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !276)
!276 = !{!277, !278}
!277 = !DILocalVariable(name: "conn", arg: 1, scope: !275, file: !3, line: 48, type: !42)
!278 = !DILocalVariable(name: "media", scope: !275, file: !3, line: 50, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!280 = !DILocation(line: 48, column: 43, scope: !275)
!281 = !DILocation(line: 52, column: 17, scope: !282)
!282 = distinct !DILexicalBlock(scope: !275, file: !3, line: 52, column: 9)
!283 = !{!284, !264, i64 12}
!284 = !{!"a2dp_media", !285, i64 0, !264, i64 8, !264, i64 12, !261, i64 16, !262, i64 20, !262, i64 20, !262, i64 21}
!285 = !{!"", !286, i64 0, !286, i64 2, !261, i64 4}
!286 = !{!"short", !262, i64 0}
!287 = !DILocation(line: 52, column: 10, scope: !282)
!288 = !DILocation(line: 52, column: 9, scope: !275)
!289 = !DILocation(line: 58, column: 5, scope: !290)
!290 = distinct !DILexicalBlock(scope: !275, file: !3, line: 58, column: 5)
!291 = !{!262, !262, i64 0}
!292 = !DILocation(line: 58, column: 5, scope: !275)
!293 = !DILocation(line: 58, column: 5, scope: !294)
!294 = !DILexicalBlockFile(scope: !290, file: !3, discriminator: 1)
!295 = !DILocation(line: 60, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !275, file: !3, line: 60, column: 9)
!297 = !DILocation(line: 60, column: 23, scope: !296)
!298 = !DILocation(line: 60, column: 40, scope: !299)
!299 = !DILexicalBlockFile(scope: !296, file: !3, discriminator: 1)
!300 = !{!301, !264, i64 20}
!301 = !{!"a2dp_media_codec", !261, i64 0, !264, i64 4, !264, i64 8, !264, i64 12, !264, i64 16, !264, i64 20}
!302 = !DILocation(line: 60, column: 26, scope: !299)
!303 = !DILocation(line: 60, column: 9, scope: !304)
!304 = !DILexicalBlockFile(scope: !275, file: !3, discriminator: 1)
!305 = !DILocation(line: 61, column: 28, scope: !306)
!306 = distinct !DILexicalBlock(scope: !296, file: !3, line: 60, column: 46)
!307 = !DILocation(line: 61, column: 9, scope: !306)
!308 = !DILocation(line: 62, column: 5, scope: !306)
!309 = !DILocation(line: 63, column: 18, scope: !275)
!310 = !DILocation(line: 65, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !275, file: !3, line: 65, column: 5)
!312 = !DILocation(line: 65, column: 5, scope: !275)
!313 = !DILocation(line: 65, column: 5, scope: !314)
!314 = !DILexicalBlockFile(scope: !311, file: !3, discriminator: 1)
!315 = !DILocation(line: 73, column: 1, scope: !316)
!316 = !DILexicalBlockFile(scope: !275, file: !3, discriminator: 2)
!317 = distinct !DISubprogram(name: "__sink_channel_open", scope: !3, file: !3, line: 76, type: !40, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !318)
!318 = !{!319, !320, !321}
!319 = !DILocalVariable(name: "conn", arg: 1, scope: !317, file: !3, line: 76, type: !42)
!320 = !DILocalVariable(name: "status", arg: 2, scope: !317, file: !3, line: 76, type: !37)
!321 = !DILocalVariable(name: "conn_type", arg: 3, scope: !317, file: !3, line: 76, type: !61)
!322 = !DILocation(line: 76, column: 50, scope: !317)
!323 = !DILocation(line: 76, column: 60, scope: !317)
!324 = !DILocation(line: 76, column: 71, scope: !317)
!325 = !DILocation(line: 78, column: 16, scope: !326)
!326 = distinct !DILexicalBlock(scope: !317, file: !3, line: 78, column: 9)
!327 = !DILocation(line: 78, column: 9, scope: !317)
!328 = !DILocation(line: 79, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 79, column: 9)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 78, column: 22)
!331 = !DILocation(line: 79, column: 9, scope: !330)
!332 = !DILocation(line: 79, column: 9, scope: !333)
!333 = !DILexicalBlockFile(scope: !329, file: !3, discriminator: 1)
!334 = !DILocation(line: 80, column: 9, scope: !330)
!335 = !DILocation(line: 81, column: 5, scope: !330)
!336 = !DILocation(line: 82, column: 5, scope: !317)
!337 = distinct !DISubprogram(name: "__sink_event_credits", scope: !3, file: !3, line: 85, type: !228, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !338)
!338 = !{!339}
!339 = !DILocalVariable(name: "conn", arg: 1, scope: !337, file: !3, line: 85, type: !42)
!340 = !DILocation(line: 85, column: 52, scope: !337)
!341 = !DILocation(line: 88, column: 1, scope: !337)
!342 = distinct !DISubprogram(name: "__sink_media_packet", scope: !3, file: !3, line: 109, type: !232, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !343)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DILocalVariable(name: "conn", arg: 1, scope: !342, file: !3, line: 109, type: !42)
!345 = !DILocalVariable(name: "packet", arg: 2, scope: !342, file: !3, line: 109, type: !84)
!346 = !DILocalVariable(name: "size", arg: 3, scope: !342, file: !3, line: 109, type: !12)
!347 = !DILocalVariable(name: "length", scope: !342, file: !3, line: 111, type: !37)
!348 = !DILocalVariable(name: "media", scope: !342, file: !3, line: 112, type: !279)
!349 = !DILocalVariable(name: "header", scope: !342, file: !3, line: 113, type: !6)
!350 = !DILocation(line: 109, column: 51, scope: !342)
!351 = !DILocation(line: 109, column: 61, scope: !342)
!352 = !DILocation(line: 109, column: 73, scope: !342)
!353 = !DILocation(line: 115, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !342, file: !3, line: 115, column: 9)
!355 = !DILocation(line: 115, column: 14, scope: !354)
!356 = !DILocation(line: 115, column: 9, scope: !342)
!357 = !DILocation(line: 118, column: 43, scope: !342)
!358 = !DILocation(line: 118, column: 46, scope: !342)
!359 = !DILocation(line: 118, column: 33, scope: !342)
!360 = !DILocation(line: 118, column: 50, scope: !342)
!361 = !DILocation(line: 111, column: 9, scope: !342)
!362 = !DILocation(line: 120, column: 32, scope: !363)
!363 = distinct !DILexicalBlock(scope: !342, file: !3, line: 120, column: 9)
!364 = !{!284, !286, i64 2}
!365 = !DILocation(line: 120, column: 9, scope: !342)
!366 = !DILocation(line: 125, column: 14, scope: !367)
!367 = distinct !DILexicalBlock(scope: !342, file: !3, line: 125, column: 9)
!368 = !DILocation(line: 125, column: 9, scope: !342)
!369 = !DILocation(line: 129, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !342, file: !3, line: 129, column: 9)
!371 = !DILocation(line: 129, column: 10, scope: !370)
!372 = !DILocation(line: 129, column: 9, scope: !342)
!373 = !DILocation(line: 132, column: 50, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !3, line: 129, column: 24)
!375 = !{!284, !262, i64 21}
!376 = !DILocation(line: 132, column: 43, scope: !374)
!377 = !DILocalVariable(name: "type", arg: 1, scope: !378, file: !3, line: 31, type: !37)
!378 = distinct !DISubprogram(name: "__sink_media_codec", scope: !3, file: !3, line: 31, type: !379, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!204, !37}
!381 = !{!377, !382}
!382 = !DILocalVariable(name: "codec", scope: !378, file: !3, line: 33, type: !204)
!383 = !DILocation(line: 31, column: 56, scope: !378, inlinedAt: !384)
!384 = distinct !DILocation(line: 132, column: 24, scope: !374)
!385 = !DILocation(line: 33, column: 30, scope: !378, inlinedAt: !384)
!386 = !DILocation(line: 35, column: 5, scope: !387, inlinedAt: !384)
!387 = !DILexicalBlockFile(scope: !388, file: !3, discriminator: 1)
!388 = distinct !DILexicalBlock(scope: !378, file: !3, line: 35, column: 5)
!389 = !DILocation(line: 36, column: 20, scope: !390, inlinedAt: !384)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 36, column: 13)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 35, column: 48)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 35, column: 5)
!393 = !{!301, !261, i64 0}
!394 = !DILocation(line: 36, column: 25, scope: !390, inlinedAt: !384)
!395 = !DILocation(line: 36, column: 13, scope: !391, inlinedAt: !384)
!396 = !DILocation(line: 37, column: 24, scope: !397, inlinedAt: !384)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 37, column: 17)
!398 = distinct !DILexicalBlock(scope: !390, file: !3, line: 36, column: 34)
!399 = !{!301, !264, i64 4}
!400 = !DILocation(line: 37, column: 17, scope: !397, inlinedAt: !384)
!401 = !DILocation(line: 37, column: 17, scope: !398, inlinedAt: !384)
!402 = !DILocation(line: 35, column: 5, scope: !403, inlinedAt: !384)
!403 = !DILexicalBlockFile(scope: !392, file: !3, discriminator: 2)
!404 = !DILocation(line: 35, column: 5, scope: !405, inlinedAt: !384)
!405 = !DILexicalBlockFile(scope: !392, file: !3, discriminator: 1)
!406 = distinct !{!406, !407, !408}
!407 = !DILocation(line: 35, column: 5, scope: !388)
!408 = !DILocation(line: 43, column: 5, scope: !388)
!409 = !DILocation(line: 132, column: 22, scope: !374)
!410 = !DILocation(line: 133, column: 13, scope: !374)
!411 = !DILocation(line: 40, column: 20, scope: !398, inlinedAt: !384)
!412 = !DILocation(line: 40, column: 13, scope: !398, inlinedAt: !384)
!413 = !DILocation(line: 136, column: 23, scope: !374)
!414 = !{!301, !264, i64 8}
!415 = !DILocation(line: 136, column: 28, scope: !374)
!416 = !DILocation(line: 136, column: 9, scope: !374)
!417 = !DILocation(line: 151, column: 5, scope: !374)
!418 = !DILocation(line: 156, column: 12, scope: !342)
!419 = !DILocation(line: 156, column: 19, scope: !342)
!420 = !{!301, !264, i64 12}
!421 = !DILocation(line: 156, column: 32, scope: !342)
!422 = !DILocation(line: 156, column: 47, scope: !342)
!423 = !DILocation(line: 156, column: 42, scope: !342)
!424 = !DILocation(line: 156, column: 5, scope: !342)
!425 = !DILocation(line: 158, column: 1, scope: !342)
!426 = !DILocation(line: 158, column: 1, scope: !427)
!427 = !DILexicalBlockFile(scope: !342, file: !3, discriminator: 2)
!428 = distinct !DISubprogram(name: "__sink_media_suspend", scope: !3, file: !3, line: 161, type: !236, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !429)
!429 = !{!430, !431}
!430 = !DILocalVariable(name: "conn", arg: 1, scope: !428, file: !3, line: 161, type: !42)
!431 = !DILocalVariable(name: "addr", arg: 2, scope: !428, file: !3, line: 161, type: !196)
!432 = !DILocation(line: 161, column: 52, scope: !428)
!433 = !DILocation(line: 161, column: 68, scope: !428)
!434 = !DILocation(line: 164, column: 5, scope: !428)
!435 = !DILocation(line: 165, column: 1, scope: !428)
