; ModuleID = 'pan.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/pan.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.pan_cmd_deal_t = type { %struct.run_loop }
%struct.run_loop = type { %struct.btstack_linked_item, void (%struct.run_loop*)*, i8* }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.bt_sleep = type { i32 (...)*, i32 (...)*, i32 (...)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@pan = hidden local_unnamed_addr global %struct.pan_cmd_deal_t* null, align 4, !dbg !79
@sdp_pan_service_data = hidden local_unnamed_addr constant [200 x i8] c"6\00\A3\09\00\00\0A\00\01\00\02\09\00\016\00\05\1A\00\00\11\15\09\00\046\00\1B6\00\06\19\01\00\09\00\0F6\00\0F\19\00\0F\09\01\006\00\06\09\08\00\09\08\06\09\00\056\00\03\19\10\02\09\00\066\00\09\09en\09\00j\09\01\00\09\00\096\00\096\00\06\19\11\15\09\01\00\09\01\00%\1CPersonal Ad-hoc User Service\09\01\01%\1CPersonal Ad-hoc User Service\09\03\0A\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1, !dbg !102
@pan_deal = common hidden global %struct.pan_cmd_deal_t zeroinitializer, align 4, !dbg !122
@.str = private unnamed_addr constant [22 x i8] c"Connecting to  %s...\0A\00", align 1
@remote_addr = internal global [6 x i8] c"\00\1B\DC\072\EF", align 1, !dbg !161
@bt_suspend_pan_loop_resumepan_loop_release = hidden constant %struct.bt_sleep { i32 (...)* bitcast (i32 ()* @pan_loop_suspend to i32 (...)*), i32 (...)* bitcast (i32 ()* @pan_loop_resume to i32 (...)*), i32 (...)* bitcast (i32 ()* @pan_loop_release to i32 (...)*) }, section ".bt_sleep", align 4, !dbg !109
@default_panu_service_name = internal constant [29 x i8] c"Personal Ad-hoc User Service\00", align 1, !dbg !124
@default_nap_service_name = internal constant [29 x i8] c"Network Access Point Service\00", align 1, !dbg !131
@default_gn_service_name = internal constant [29 x i8] c"Group Ad-hoc Network Service\00", align 1, !dbg !133
@default_panu_service_desc = internal constant [29 x i8] c"Personal Ad-hoc User Service\00", align 1, !dbg !135
@default_nap_service_desc = internal constant [51 x i8] c"Personal Ad-hoc which provides access to a network\00", align 1, !dbg !137
@default_gn_service_desc = internal constant [38 x i8] c"Personal Group Ad-hoc Network Service\00", align 1, !dbg !142
@.str.2 = private unnamed_addr constant [57 x i8] c"SSP User Confirmation Request with numeric value '%06u'\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"BNEP channel open failed, status %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [94 x i8] c"BNEP connection open succeeded to %s source UUID 0x%04x dest UUID: 0x%04x, max frame size %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Dst Addr: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Src Addr: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Net Type: %04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"ICMP packet of type %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Unknown IPv4 protocol type %x\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"IPv6 packet of protocol 0x%02x\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Unknown network type %x\00", align 1
@send_ping_response_ipv4.ipv4_header = private unnamed_addr constant [20 x i8] c"E\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\00\00\00\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"pan local BD-ADDR: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_sleep* @bt_suspend_pan_loop_resumepan_loop_release to i8*)], section "llvm.metadata"
@str = private unnamed_addr constant [21 x i8] c"BNEP packet received\00"
@str.20 = private unnamed_addr constant [16 x i8] c"UDP IPv6 packet\00"
@str.21 = private unnamed_addr constant [16 x i8] c"UDP IPv4 packet\00"
@str.22 = private unnamed_addr constant [41 x i8] c"IPv4 Ping Request received, sending pong\00"
@str.23 = private unnamed_addr constant [20 x i8] c"BNEP channel closed\00"
@str.24 = private unnamed_addr constant [45 x i8] c"BNEP channel timeout! Channel will be closed\00"
@str.25 = private unnamed_addr constant [34 x i8] c"SSP User Confirmation Auto accept\00"
@str.26 = private unnamed_addr constant [16 x i8] c"BNEP Test ready\00"

; Function Attrs: nounwind optsize
define hidden void @pan_create_nap_sdp_record(i8*, i32, i16* readonly, i8*, i8*, i32, i32, i32, i8*, i8*) local_unnamed_addr #0 !dbg !167 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !177, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %1, metadata !178, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i16* %2, metadata !179, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i8* %3, metadata !180, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i8* %4, metadata !181, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %5, metadata !182, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %6, metadata !183, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i32 %7, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i8* %8, metadata !185, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i8* %9, metadata !186, metadata !DIExpression()), !dbg !196
  tail call fastcc void @pan_create_service(i8* %0, i32 %1, i32 4374, i16* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i8* %8, i8* %9) #8, !dbg !197
  ret void, !dbg !198
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define internal fastcc void @pan_create_service(i8*, i32, i32, i16* readonly, i8*, i8*, i32, i32, i32, i8*, i8*) unnamed_addr #0 !dbg !199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 %1, metadata !204, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.value(metadata i32 %2, metadata !205, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i16* %3, metadata !206, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i8* %4, metadata !207, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i8* %5, metadata !208, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 %6, metadata !209, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %7, metadata !210, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %8, metadata !211, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i8* %9, metadata !212, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i8* %10, metadata !213, metadata !DIExpression()), !dbg !232
  tail call void @de_create_sequence(i8* %0) #9, !dbg !233
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 0) #9, !dbg !234
  tail call void @de_add_number(i8* %0, i32 1, i32 2, i32 %1) #9, !dbg !235
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 1) #9, !dbg !236
  %12 = tail call i8* @de_push_sequence(i8* %0) #9, !dbg !237
  call void @llvm.dbg.value(metadata i8* %12, metadata !214, metadata !DIExpression()), !dbg !238
  tail call void @de_add_number(i8* %12, i32 3, i32 2, i32 %2) #9, !dbg !239
  tail call void @de_pop_sequence(i8* %0, i8* %12) #9, !dbg !241
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 4) #9, !dbg !242
  %13 = tail call i8* @de_push_sequence(i8* %0) #9, !dbg !243
  call void @llvm.dbg.value(metadata i8* %13, metadata !214, metadata !DIExpression()), !dbg !238
  %14 = tail call i8* @de_push_sequence(i8* %13) #9, !dbg !244
  call void @llvm.dbg.value(metadata i8* %14, metadata !215, metadata !DIExpression()), !dbg !245
  tail call void @de_add_number(i8* %14, i32 3, i32 1, i32 256) #9, !dbg !246
  tail call void @de_add_number(i8* %14, i32 1, i32 1, i32 15) #9, !dbg !248
  tail call void @de_pop_sequence(i8* %13, i8* %14) #9, !dbg !249
  %15 = tail call i8* @de_push_sequence(i8* %13) #9, !dbg !250
  call void @llvm.dbg.value(metadata i8* %15, metadata !217, metadata !DIExpression()), !dbg !251
  tail call void @de_add_number(i8* %15, i32 3, i32 1, i32 15) #9, !dbg !252
  tail call void @de_add_number(i8* %15, i32 1, i32 1, i32 256) #9, !dbg !253
  %16 = tail call i8* @de_push_sequence(i8* %15) #9, !dbg !254
  call void @llvm.dbg.value(metadata i8* %16, metadata !218, metadata !DIExpression()), !dbg !255
  %17 = icmp eq i16* %3, null, !dbg !256
  br i1 %17, label %30, label %18, !dbg !259

; <label>:18:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i16* %3, metadata !206, metadata !DIExpression()), !dbg !225
  %19 = load i16, i16* %3, align 2, !dbg !260, !tbaa !263
  %20 = icmp eq i16 %19, 0, !dbg !267
  br i1 %20, label %30, label %21, !dbg !267

; <label>:21:                                     ; preds = %18
  br label %22, !dbg !268

; <label>:22:                                     ; preds = %22, %21
  %23 = phi i16 [ %27, %22 ], [ %19, %21 ]
  %24 = phi i16* [ %25, %22 ], [ %3, %21 ]
  %25 = getelementptr inbounds i16, i16* %24, i32 1, !dbg !268
  call void @llvm.dbg.value(metadata i16* %25, metadata !206, metadata !DIExpression()), !dbg !225
  %26 = zext i16 %23 to i32, !dbg !270
  tail call void @de_add_number(i8* %16, i32 1, i32 1, i32 %26) #9, !dbg !271
  call void @llvm.dbg.value(metadata i16* %25, metadata !206, metadata !DIExpression()), !dbg !225
  %27 = load i16, i16* %25, align 2, !dbg !260, !tbaa !263
  %28 = icmp eq i16 %27, 0, !dbg !267
  br i1 %28, label %29, label %22, !dbg !267, !llvm.loop !272

; <label>:29:                                     ; preds = %22
  br label %30, !dbg !275

; <label>:30:                                     ; preds = %29, %18, %11
  tail call void @de_pop_sequence(i8* %15, i8* %16) #9, !dbg !275
  tail call void @de_pop_sequence(i8* %13, i8* %15) #9, !dbg !276
  tail call void @de_pop_sequence(i8* %0, i8* %13) #9, !dbg !277
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 5) #9, !dbg !278
  %31 = tail call i8* @de_push_sequence(i8* %0) #9, !dbg !279
  call void @llvm.dbg.value(metadata i8* %31, metadata !214, metadata !DIExpression()), !dbg !238
  tail call void @de_add_number(i8* %31, i32 3, i32 1, i32 4098) #9, !dbg !280
  tail call void @de_pop_sequence(i8* %0, i8* %31) #9, !dbg !282
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 6) #9, !dbg !283
  %32 = tail call i8* @de_push_sequence(i8* %0) #9, !dbg !284
  call void @llvm.dbg.value(metadata i8* %32, metadata !214, metadata !DIExpression()), !dbg !238
  tail call void @de_add_number(i8* %32, i32 1, i32 1, i32 25966) #9, !dbg !285
  tail call void @de_add_number(i8* %32, i32 1, i32 1, i32 106) #9, !dbg !287
  tail call void @de_add_number(i8* %32, i32 1, i32 1, i32 256) #9, !dbg !288
  tail call void @de_pop_sequence(i8* %0, i8* %32) #9, !dbg !289
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 9) #9, !dbg !290
  %33 = tail call i8* @de_push_sequence(i8* %0) #9, !dbg !291
  call void @llvm.dbg.value(metadata i8* %33, metadata !214, metadata !DIExpression()), !dbg !238
  %34 = tail call i8* @de_push_sequence(i8* %33) #9, !dbg !292
  call void @llvm.dbg.value(metadata i8* %34, metadata !220, metadata !DIExpression()), !dbg !293
  tail call void @de_add_number(i8* %34, i32 3, i32 1, i32 %2) #9, !dbg !294
  tail call void @de_add_number(i8* %34, i32 1, i32 1, i32 256) #9, !dbg !296
  tail call void @de_pop_sequence(i8* %33, i8* %34) #9, !dbg !297
  tail call void @de_pop_sequence(i8* %0, i8* %33) #9, !dbg !298
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 256) #9, !dbg !299
  %35 = icmp eq i8* %4, null, !dbg !300
  br i1 %35, label %39, label %36, !dbg !302

; <label>:36:                                     ; preds = %30
  %37 = tail call i32 @strlen(i8* nonnull %4) #8, !dbg !303
  %38 = trunc i32 %37 to i16, !dbg !303
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext %38, i8* nonnull %4) #9, !dbg !305
  br label %43, !dbg !307

; <label>:39:                                     ; preds = %30
  switch i32 %2, label %43 [
    i32 4373, label %40
    i32 4374, label %41
    i32 4375, label %42
  ], !dbg !308

; <label>:40:                                     ; preds = %39
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @default_panu_service_name, i32 0, i32 0)) #9, !dbg !310
  br label %43, !dbg !312

; <label>:41:                                     ; preds = %39
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @default_nap_service_name, i32 0, i32 0)) #9, !dbg !313
  br label %43, !dbg !314

; <label>:42:                                     ; preds = %39
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @default_gn_service_name, i32 0, i32 0)) #9, !dbg !315
  br label %43, !dbg !316

; <label>:43:                                     ; preds = %42, %41, %40, %39, %36
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 257) #9, !dbg !317
  %44 = icmp eq i8* %5, null, !dbg !318
  br i1 %44, label %48, label %45, !dbg !320

; <label>:45:                                     ; preds = %43
  %46 = tail call i32 @strlen(i8* nonnull %5) #8, !dbg !321
  %47 = trunc i32 %46 to i16, !dbg !321
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext %47, i8* nonnull %5) #9, !dbg !323
  br label %52, !dbg !325

; <label>:48:                                     ; preds = %43
  switch i32 %2, label %52 [
    i32 4373, label %49
    i32 4374, label %50
    i32 4375, label %51
  ], !dbg !326

; <label>:49:                                     ; preds = %48
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @default_panu_service_desc, i32 0, i32 0)) #9, !dbg !328
  br label %52, !dbg !330

; <label>:50:                                     ; preds = %48
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @default_nap_service_desc, i32 0, i32 0)) #9, !dbg !331
  br label %52, !dbg !332

; <label>:51:                                     ; preds = %48
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @default_gn_service_desc, i32 0, i32 0)) #9, !dbg !333
  br label %52, !dbg !334

; <label>:52:                                     ; preds = %51, %50, %49, %48, %45
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 778) #9, !dbg !335
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 %6) #9, !dbg !336
  %53 = icmp eq i32 %2, 4373, !dbg !337
  br i1 %53, label %67, label %54, !dbg !339

; <label>:54:                                     ; preds = %52
  %55 = icmp eq i8* %9, null, !dbg !340
  br i1 %55, label %59, label %56, !dbg !342

; <label>:56:                                     ; preds = %54
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 781) #9, !dbg !343
  %57 = tail call i32 @strlen(i8* nonnull %9) #8, !dbg !345
  %58 = trunc i32 %57 to i16, !dbg !345
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext %58, i8* nonnull %9) #9, !dbg !346
  br label %59, !dbg !348

; <label>:59:                                     ; preds = %56, %54
  %60 = icmp eq i8* %10, null, !dbg !349
  br i1 %60, label %64, label %61, !dbg !351

; <label>:61:                                     ; preds = %59
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 782) #9, !dbg !352
  %62 = tail call i32 @strlen(i8* nonnull %10) #8, !dbg !354
  %63 = trunc i32 %62 to i16, !dbg !354
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext %63, i8* nonnull %10) #9, !dbg !355
  br label %64, !dbg !357

; <label>:64:                                     ; preds = %61, %59
  %65 = icmp eq i32 %2, 4375, !dbg !358
  br i1 %65, label %67, label %66, !dbg !360

; <label>:66:                                     ; preds = %64
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 779) #9, !dbg !361
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 %7) #9, !dbg !362
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 780) #9, !dbg !363
  tail call void @de_add_number(i8* %0, i32 1, i32 2, i32 %8) #9, !dbg !364
  br label %67, !dbg !365

; <label>:67:                                     ; preds = %66, %64, %52
  ret void, !dbg !366
}

; Function Attrs: nounwind optsize
define hidden void @pan_create_gn_sdp_record(i8*, i32, i16* readonly, i8*, i8*, i32, i8*, i8*) local_unnamed_addr #0 !dbg !368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !372, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata i32 %1, metadata !373, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i16* %2, metadata !374, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8* %3, metadata !375, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %4, metadata !376, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 %5, metadata !377, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i8* %6, metadata !378, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i8* %7, metadata !379, metadata !DIExpression()), !dbg !387
  tail call fastcc void @pan_create_service(i8* %0, i32 %1, i32 4375, i16* %2, i8* %3, i8* %4, i32 %5, i32 65535, i32 0, i8* %6, i8* %7) #8, !dbg !388
  ret void, !dbg !389
}

; Function Attrs: nounwind optsize
define hidden void @pan_create_panu_sdp_record(i8*, i32, i16* readonly, i8*, i8*, i32) local_unnamed_addr #0 !dbg !390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 %1, metadata !395, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i16* %2, metadata !396, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i8* %3, metadata !397, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i8* %4, metadata !398, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i32 %5, metadata !399, metadata !DIExpression()), !dbg !405
  tail call fastcc void @pan_create_service(i8* %0, i32 %1, i32 4373, i16* %2, i8* %3, i8* %4, i32 %5, i32 65535, i32 0, i8* null, i8* null) #8, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: nounwind optsize
define hidden void @pan_init() local_unnamed_addr #0 !dbg !408 {
  %1 = load %struct.pan_cmd_deal_t*, %struct.pan_cmd_deal_t** @pan, align 4, !dbg !412, !tbaa !414
  %2 = icmp eq %struct.pan_cmd_deal_t* %1, null, !dbg !416
  br i1 %2, label %3, label %5, !dbg !417

; <label>:3:                                      ; preds = %0
  store %struct.pan_cmd_deal_t* @pan_deal, %struct.pan_cmd_deal_t** @pan, align 4, !dbg !418, !tbaa !414
  tail call void @stack_run_loop_register(%struct.run_loop* getelementptr inbounds (%struct.pan_cmd_deal_t, %struct.pan_cmd_deal_t* @pan_deal, i32 0, i32 0), void (%struct.run_loop*)* nonnull @pan_operation_loop, i8* bitcast (%struct.pan_cmd_deal_t* @pan_deal to i8*)) #9, !dbg !419
  tail call void @bnep_init() #9, !dbg !420
  %4 = tail call zeroext i8 @bnep_register_service(void (i8, i16, i8*, i16)* nonnull @pan_packet_handler, i16 zeroext 4373, i16 zeroext 1691) #9, !dbg !421
  br label %5, !dbg !422

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !423
}

; Function Attrs: optsize
declare void @stack_run_loop_register(%struct.run_loop*, void (%struct.run_loop*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @pan_operation_loop(%struct.run_loop* nocapture readnone) #0 !dbg !425 {
  call void @llvm.dbg.value(metadata %struct.run_loop* %0, metadata !427, metadata !DIExpression()), !dbg !428
  %2 = tail call i32 @putchar(i32 77) #8, !dbg !429
  tail call void @bnep_handle_can_send_now(i16 zeroext 0) #9, !dbg !430
  ret void, !dbg !431
}

; Function Attrs: optsize
declare void @bnep_init() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bnep_register_service(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal void @pan_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 !dbg !432 {
  %5 = alloca [100 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !452, metadata !DIExpression()), !dbg !470
  %6 = alloca [20 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !455, metadata !DIExpression()), !dbg !476
  %7 = alloca i64, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !436, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i16 %1, metadata !437, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i8* %2, metadata !438, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i16 %3, metadata !439, metadata !DIExpression()), !dbg !480
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i32 0, i32 0, !dbg !481
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %11) #7, !dbg !481
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %8, metadata !441, metadata !DIExpression()), !dbg !482
  %12 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !483
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %12) #7, !dbg !483
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %9, metadata !442, metadata !DIExpression()), !dbg !484
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i32 0, i32 0, !dbg !485
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %13) #7, !dbg !485
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %10, metadata !443, metadata !DIExpression()), !dbg !486
  switch i8 %0, label %115 [
    i8 4, label %14
    i8 11, label %48
  ], !dbg !487

; <label>:14:                                     ; preds = %4
  %15 = load i8, i8* %2, align 1, !dbg !488, !tbaa !489
  switch i8 %15, label %115 [
    i8 96, label %16
    i8 51, label %22
    i8 -63, label %26
    i8 -61, label %44
    i8 -62, label %46
  ], !dbg !490

; <label>:16:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %2, metadata !491, metadata !DIExpression()), !dbg !499
  %17 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !503
  %18 = load i8, i8* %17, align 1, !dbg !503, !tbaa !489
  %19 = icmp eq i8 %18, 2, !dbg !504
  br i1 %19, label %20, label %115, !dbg !505

; <label>:20:                                     ; preds = %16
  %21 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.26, i32 0, i32 0)), !dbg !506
  br label %115, !dbg !508

; <label>:22:                                     ; preds = %14
  %23 = tail call i32 @little_endian_read_32(i8* nonnull %2, i32 8) #9, !dbg !509
  %24 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i32 0, i32 0), i32 %23) #8, !dbg !510
  %25 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @str.25, i32 0, i32 0)), !dbg !512
  br label %115, !dbg !513

; <label>:26:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %2, metadata !514, metadata !DIExpression()), !dbg !517
  %27 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !520
  %28 = load i8, i8* %27, align 1, !dbg !520, !tbaa !489
  %29 = icmp eq i8 %28, 0, !dbg !521
  br i1 %29, label %33, label %30, !dbg !522

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %2, metadata !514, metadata !DIExpression()), !dbg !523
  %31 = zext i8 %28 to i32, !dbg !526
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %31) #8, !dbg !527
  br label %115, !dbg !529

; <label>:33:                                     ; preds = %26
  %34 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 3) #9, !dbg !530
  call void @llvm.dbg.value(metadata i8* %2, metadata !538, metadata !DIExpression()), !dbg !541
  %35 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 5) #9, !dbg !543
  call void @llvm.dbg.value(metadata i16 %35, metadata !444, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i8* %2, metadata !545, metadata !DIExpression()), !dbg !548
  %36 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 7) #9, !dbg !550
  call void @llvm.dbg.value(metadata i16 %36, metadata !445, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i8* %2, metadata !552, metadata !DIExpression()), !dbg !555
  %37 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 9) #9, !dbg !557
  call void @llvm.dbg.value(metadata i16 %37, metadata !446, metadata !DIExpression()), !dbg !558
  %38 = getelementptr inbounds i8, i8* %2, i32 11, !dbg !559
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %11, i8* %38, i32 6, i32 1, i1 false), !dbg !560
  %39 = call i8* @bd_addr_to_str(i8* nonnull %11) #9, !dbg !561
  %40 = zext i16 %35 to i32, !dbg !562
  %41 = zext i16 %36 to i32, !dbg !563
  %42 = zext i16 %37 to i32, !dbg !564
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.5, i32 0, i32 0), i8* %39, i32 %40, i32 %41, i32 %42) #8, !dbg !565
  br label %115

; <label>:44:                                     ; preds = %14
  %45 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @str.24, i32 0, i32 0)), !dbg !567
  br label %115, !dbg !568

; <label>:46:                                     ; preds = %14
  %47 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str.23, i32 0, i32 0)), !dbg !569
  br label %115, !dbg !570

; <label>:48:                                     ; preds = %4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %13, i8* %2, i32 6, i32 1, i1 false), !dbg !571
  %49 = getelementptr inbounds i8, i8* %2, i32 6, !dbg !572
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %12, i8* %49, i32 6, i32 1, i1 false), !dbg !573
  %50 = tail call i32 @big_endian_read_16(i8* %2, i32 12) #9, !dbg !574
  %51 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str, i32 0, i32 0)), !dbg !575
  %52 = call i8* @bd_addr_to_str(i8* nonnull %13) #9, !dbg !576
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* %52) #8, !dbg !577
  %54 = call i8* @bd_addr_to_str(i8* nonnull %12) #9, !dbg !579
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %54) #8, !dbg !580
  %56 = and i32 %50, 65535, !dbg !581
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 %56) #8, !dbg !582
  %58 = trunc i32 %50 to i16, !dbg !583
  switch i16 %58, label %113 [
    i16 2048, label %59
    i16 -31011, label %99
  ], !dbg !583

; <label>:59:                                     ; preds = %48
  %60 = getelementptr inbounds i8, i8* %2, i32 14, !dbg !584
  %61 = load i8, i8* %60, align 1, !dbg !584, !tbaa !489
  %62 = shl i8 %61, 2, !dbg !585
  %63 = and i8 %62, 60, !dbg !585
  %64 = add nuw nsw i8 %63, 14, !dbg !586
  %65 = zext i8 %64 to i32, !dbg !586
  call void @llvm.dbg.value(metadata i32 %65, metadata !451, metadata !DIExpression()), !dbg !587
  %66 = getelementptr inbounds i8, i8* %2, i32 23, !dbg !588
  %67 = load i8, i8* %66, align 1, !dbg !588, !tbaa !489
  call void @llvm.dbg.value(metadata i8 %67, metadata !448, metadata !DIExpression()), !dbg !589
  switch i8 %67, label %96 [
    i8 1, label %72
    i8 17, label %68
  ], !dbg !590

; <label>:68:                                     ; preds = %59
  %69 = getelementptr inbounds i8, i8* %2, i32 %65, !dbg !591
  %70 = zext i16 %3 to i32, !dbg !592
  %71 = sub nsw i32 %70, %65, !dbg !593
  br label %92, !dbg !590

; <label>:72:                                     ; preds = %59
  %73 = getelementptr inbounds i8, i8* %2, i32 %65, !dbg !594
  %74 = load i8, i8* %73, align 1, !dbg !594, !tbaa !489
  call void @llvm.dbg.value(metadata i8 %74, metadata !449, metadata !DIExpression()), !dbg !595
  %75 = zext i16 %3 to i32, !dbg !596
  %76 = sub nsw i32 %75, %65, !dbg !597
  call void @hexdumpf(i8* %73, i32 %76) #9, !dbg !598
  %77 = zext i8 %74 to i32, !dbg !599
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %77) #8, !dbg !600
  %79 = icmp eq i8 %74, 8, !dbg !601
  br i1 %79, label %80, label %92, !dbg !601

; <label>:80:                                     ; preds = %72
  %81 = call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @str.22, i32 0, i32 0)), !dbg !602
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0, !dbg !603
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %82) #7, !dbg !603
  %83 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0, !dbg !604
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %83) #7, !dbg !604
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @send_ping_response_ipv4.ipv4_header, i32 0, i32 0), i32 20, i32 1, i1 false) #7, !dbg !476
  %84 = bitcast i64* %7 to i8*, !dbg !605
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84) #7, !dbg !605
  store i64 0, i64* %7, align 4, !dbg !606
  call fastcc void @setup_ethernet_header(i8* nonnull %82, i16 zeroext 2048) #9, !dbg !607
  call void @llvm.dbg.value(metadata i32 14, metadata !463, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i32 28, metadata !464, metadata !DIExpression()), !dbg !609
  call void @big_endian_store_16(i8* nonnull %83, i16 zeroext 2, i16 zeroext 28) #9, !dbg !610
  %85 = call fastcc zeroext i16 @calc_internet_checksum(i8* nonnull %83, i32 20) #9, !dbg !611
  call void @llvm.dbg.value(metadata i16 %85, metadata !465, metadata !DIExpression()), !dbg !612
  call void @big_endian_store_16(i8* nonnull %83, i16 zeroext 10, i16 zeroext %85) #9, !dbg !613
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 14, !dbg !614
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %86, i8* nonnull %83, i32 20, i32 1, i1 false) #7, !dbg !615
  call void @llvm.dbg.value(metadata i32 34, metadata !463, metadata !DIExpression()), !dbg !608
  %87 = call fastcc zeroext i16 @calc_internet_checksum(i8* nonnull %84, i32 8) #9, !dbg !616
  call void @llvm.dbg.value(metadata i16 %87, metadata !466, metadata !DIExpression()), !dbg !617
  call void @big_endian_store_16(i8* nonnull %84, i16 zeroext 2, i16 zeroext %87) #9, !dbg !618
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 34, !dbg !619
  %89 = bitcast i8* %88 to i64*, !dbg !620
  %90 = load i64, i64* %7, align 4, !dbg !620
  store i64 %90, i64* %89, align 1, !dbg !620
  call void @llvm.dbg.value(metadata i32 42, metadata !463, metadata !DIExpression()), !dbg !608
  %91 = call i32 @bnep_send_for_addr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @remote_addr, i32 0, i32 0), i8* nonnull %82, i16 zeroext 42) #9, !dbg !621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84) #7, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %83) #7, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %82) #7, !dbg !622
  br label %92, !dbg !623

; <label>:92:                                     ; preds = %80, %72, %68
  %93 = phi i32 [ %71, %68 ], [ %76, %80 ], [ %76, %72 ], !dbg !593
  %94 = phi i8* [ %69, %68 ], [ %73, %80 ], [ %73, %72 ], !dbg !591
  %95 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.21, i32 0, i32 0)), !dbg !624
  call void @hexdumpf(i8* %94, i32 %93) #9, !dbg !625
  br label %115, !dbg !626

; <label>:96:                                     ; preds = %59
  %97 = zext i8 %67 to i32, !dbg !627
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 %97) #8, !dbg !628
  br label %115, !dbg !629

; <label>:99:                                     ; preds = %48
  %100 = load i8, i8* %49, align 1, !dbg !630, !tbaa !489
  call void @llvm.dbg.value(metadata i8 %100, metadata !448, metadata !DIExpression()), !dbg !589
  %101 = icmp eq i8 %100, 17, !dbg !631
  br i1 %101, label %102, label %107, !dbg !631

; <label>:102:                                    ; preds = %99
  %103 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.20, i32 0, i32 0)), !dbg !632
  call void @llvm.dbg.value(metadata i32 40, metadata !451, metadata !DIExpression()), !dbg !587
  %104 = getelementptr inbounds i8, i8* %2, i32 40, !dbg !634
  %105 = zext i16 %3 to i32, !dbg !635
  %106 = add nsw i32 %105, -40, !dbg !636
  call void @hexdumpf(i8* %104, i32 %106) #9, !dbg !637
  br label %115, !dbg !638

; <label>:107:                                    ; preds = %99
  %108 = zext i8 %100 to i32, !dbg !639
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i32 %108) #8, !dbg !640
  %110 = getelementptr inbounds i8, i8* %2, i32 14, !dbg !641
  %111 = zext i16 %3 to i32, !dbg !642
  %112 = add nsw i32 %111, -14, !dbg !643
  call void @hexdumpf(i8* %110, i32 %112) #9, !dbg !644
  br label %115, !dbg !645

; <label>:113:                                    ; preds = %48
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i32 %56) #8, !dbg !646
  br label %115, !dbg !647

; <label>:115:                                    ; preds = %113, %107, %102, %96, %92, %46, %44, %33, %30, %22, %20, %16, %14, %4
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %13) #7, !dbg !648
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %12) #7, !dbg !648
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %11) #7, !dbg !648
  ret void, !dbg !648
}

; Function Attrs: nounwind optsize
define hidden i32 @pan_cmd_io_ctrl(i8*, i32, i32, i8*) local_unnamed_addr #0 !dbg !649 {
  %5 = alloca [100 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !659, metadata !DIExpression()), !dbg !671
  %6 = alloca [40 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [40 x i8]* %6, metadata !662, metadata !DIExpression()), !dbg !674
  %7 = alloca i64, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !655, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %1, metadata !656, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %2, metadata !657, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8* %3, metadata !658, metadata !DIExpression()), !dbg !678
  %8 = load %struct.pan_cmd_deal_t*, %struct.pan_cmd_deal_t** @pan, align 4, !dbg !679, !tbaa !414
  %9 = icmp eq %struct.pan_cmd_deal_t* %8, null, !dbg !681
  br i1 %9, label %60, label %10, !dbg !682

; <label>:10:                                     ; preds = %4
  switch i32 %1, label %60 [
    i32 2, label %11
    i32 4, label %15
    i32 5, label %59
    i32 255, label %56
  ], !dbg !683

; <label>:11:                                     ; preds = %10
  %12 = tail call i8* @bd_addr_to_str(i8* %0) #9, !dbg !684
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* %12) #8, !dbg !685
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @remote_addr, i32 0, i32 0), i8* %0, i32 6, i32 1, i1 false), !dbg !687
  %14 = tail call i32 @bnep_connect(void (i8, i16, i8*, i16)* nonnull @pan_packet_handler, i8* %0, i16 zeroext 15, i16 zeroext 4373, i16 zeroext 4374) #9, !dbg !688
  br label %59, !dbg !689

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0, !dbg !690
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %16) #7, !dbg !690
  %17 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i32 0, i32 0, !dbg !691
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #7, !dbg !691
  %18 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i32 0, i32 1
  call void @llvm.memset.p0i8.i32(i8* nonnull %18, i8 0, i32 39, i32 1, i1 false) #7, !dbg !674
  store i8 96, i8* %17, align 1, !dbg !674
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i32 0, i32 6, !dbg !674
  store i8 58, i8* %19, align 1, !dbg !674
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i32 0, i32 7, !dbg !674
  store i8 1, i8* %20, align 1, !dbg !674
  %21 = bitcast i64* %7 to i8*, !dbg !692
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !692
  store i64 128, i64* %7, align 4, !dbg !693
  call fastcc void @setup_ethernet_header(i8* nonnull %16, i16 zeroext -31011) #9, !dbg !694
  call void @llvm.dbg.value(metadata i32 14, metadata !667, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 8, metadata !668, metadata !DIExpression()), !dbg !696
  call void @big_endian_store_16(i8* nonnull %17, i16 zeroext 4, i16 zeroext 8) #9, !dbg !697
  %22 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i32 0, i32 8, !dbg !698
  %23 = call fastcc zeroext i16 @calc_internet_checksum(i8* %22, i32 32) #9, !dbg !699
  call void @llvm.dbg.value(metadata i16 %23, metadata !700, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i16 8, metadata !705, metadata !DIExpression()), !dbg !709
  %24 = zext i16 %23 to i32, !dbg !710
  %25 = add nuw nsw i32 %24, 8, !dbg !711
  call void @llvm.dbg.value(metadata i32 %25, metadata !706, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 %25, metadata !706, metadata !DIExpression()), !dbg !712
  %26 = icmp ugt i32 %25, 65535, !dbg !713
  br i1 %26, label %27, label %34, !dbg !715

; <label>:27:                                     ; preds = %15
  %28 = and i32 %25, 65535, !dbg !716
  %29 = add nuw nsw i32 %28, 1, !dbg !716
  br label %30, !dbg !716

; <label>:30:                                     ; preds = %30, %27
  %31 = phi i32 [ 1, %30 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !706, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 %31, metadata !706, metadata !DIExpression()), !dbg !712
  %32 = icmp ugt i32 %31, 65535, !dbg !713
  br i1 %32, label %30, label %33, !dbg !715, !llvm.loop !718

; <label>:33:                                     ; preds = %30
  br label %34, !dbg !721

; <label>:34:                                     ; preds = %33, %15
  %35 = phi i32 [ %25, %15 ], [ %31, %33 ]
  call void @llvm.dbg.value(metadata i16 14848, metadata !705, metadata !DIExpression()), !dbg !721
  %36 = and i32 %35, 65535, !dbg !723
  %37 = add nuw nsw i32 %36, 14848, !dbg !724
  call void @llvm.dbg.value(metadata i32 %37, metadata !706, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %37, metadata !706, metadata !DIExpression()), !dbg !725
  %38 = icmp ugt i32 %37, 65535, !dbg !726
  br i1 %38, label %39, label %47, !dbg !727

; <label>:39:                                     ; preds = %34
  %40 = add nsw i32 %35, 14848, !dbg !728
  %41 = and i32 %40, 65535, !dbg !728
  %42 = add nuw nsw i32 %41, 1, !dbg !728
  br label %43, !dbg !728

; <label>:43:                                     ; preds = %43, %39
  %44 = phi i32 [ 1, %43 ], [ %42, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, metadata !706, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %44, metadata !706, metadata !DIExpression()), !dbg !725
  %45 = icmp ugt i32 %44, 65535, !dbg !726
  br i1 %45, label %43, label %46, !dbg !727, !llvm.loop !718

; <label>:46:                                     ; preds = %43
  br label %47, !dbg !729

; <label>:47:                                     ; preds = %46, %34
  %48 = phi i32 [ %37, %34 ], [ %44, %46 ]
  %49 = trunc i32 %48 to i16, !dbg !729
  call void @big_endian_store_16(i8* nonnull %21, i16 zeroext 2, i16 zeroext %49) #9, !dbg !730
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 14, !dbg !731
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %50, i8* nonnull %17, i32 40, i32 1, i1 false) #7, !dbg !732
  call void @llvm.dbg.value(metadata i32 54, metadata !667, metadata !DIExpression()), !dbg !695
  %51 = call fastcc zeroext i16 @calc_internet_checksum(i8* nonnull %21, i32 8) #9, !dbg !733
  call void @llvm.dbg.value(metadata i16 %51, metadata !670, metadata !DIExpression()), !dbg !734
  call void @big_endian_store_16(i8* nonnull %21, i16 zeroext 2, i16 zeroext %51) #9, !dbg !735
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 54, !dbg !736
  %53 = bitcast i8* %52 to i64*, !dbg !737
  %54 = load i64, i64* %7, align 4, !dbg !737
  store i64 %54, i64* %53, align 1, !dbg !737
  call void @llvm.dbg.value(metadata i32 62, metadata !667, metadata !DIExpression()), !dbg !695
  %55 = call i32 @bnep_send_for_addr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @remote_addr, i32 0, i32 0), i8* nonnull %16, i16 zeroext 62) #9, !dbg !738
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #7, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %16) #7, !dbg !739
  br label %59, !dbg !740

; <label>:56:                                     ; preds = %10
  %57 = trunc i32 %2 to i16, !dbg !741
  %58 = tail call i32 @bnep_send_for_addr(i8* %0, i8* %3, i16 zeroext %57) #9, !dbg !742
  br label %59, !dbg !743

; <label>:59:                                     ; preds = %56, %47, %11, %10
  br label %60, !dbg !744

; <label>:60:                                     ; preds = %59, %10, %4
  %61 = phi i32 [ 0, %59 ], [ 0, %4 ], [ -1001, %10 ]
  ret i32 %61, !dbg !745
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @bd_addr_to_str(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: optsize
declare i32 @bnep_connect(void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bnep_send_for_addr(i8*, i8*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @de_create_sequence(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @de_add_number(i8*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @de_push_sequence(i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @de_pop_sequence(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare void @de_add_data(i8*, i32, i16 zeroext, i8*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bnep_handle_can_send_now(i16 zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @little_endian_read_32(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @big_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hexdumpf(i8*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #4

; Function Attrs: nounwind optsize
define internal fastcc void @setup_ethernet_header(i8*, i16 zeroext) unnamed_addr #0 !dbg !746 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i32 1, metadata !751, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 0, metadata !752, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 0, metadata !753, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i32 0, metadata !755, metadata !DIExpression()), !dbg !760
  %4 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i32 0, i32 0, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %4) #7, !dbg !761
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %3, metadata !756, metadata !DIExpression()), !dbg !762
  call void @llvm.memset.p0i8.i32(i8* nonnull %4, i8 0, i32 6, i32 1, i1 false), !dbg !762
  %5 = tail call i8* bitcast (i8* (...)* @bt_get_mac_addr to i8* ()*)() #9, !dbg !763
  call void @reverse_bd_addr(i8* %5, i8* nonnull %4) #9, !dbg !764
  %6 = call i8* @bd_addr_to_str(i8* nonnull %4) #9, !dbg !766
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* %6) #8, !dbg !767
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 6, i32 1, i1 false), !dbg !768
  call void @llvm.dbg.value(metadata i32 6, metadata !755, metadata !DIExpression()), !dbg !760
  %8 = getelementptr inbounds i8, i8* %0, i32 6, !dbg !771
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* nonnull %4, i32 6, i32 1, i1 false), !dbg !771
  call void @llvm.dbg.value(metadata i32 12, metadata !755, metadata !DIExpression()), !dbg !760
  call void @big_endian_store_16(i8* %0, i16 zeroext 12, i16 zeroext %1) #9, !dbg !772
  call void @llvm.dbg.value(metadata i32 14, metadata !755, metadata !DIExpression()), !dbg !760
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %4) #7, !dbg !773
  ret void
}

; Function Attrs: optsize
declare void @big_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc zeroext i16 @calc_internet_checksum(i8*, i32) unnamed_addr #0 !dbg !774 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !778, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %1, metadata !779, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 0, metadata !780, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 %1, metadata !779, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i8* %0, metadata !778, metadata !DIExpression()), !dbg !781
  %3 = icmp eq i32 %1, 0, !dbg !784
  br i1 %3, label %28, label %4, !dbg !784

; <label>:4:                                      ; preds = %2
  br label %5, !dbg !786

; <label>:5:                                      ; preds = %21, %4
  %6 = phi i32 [ %22, %21 ], [ 0, %4 ]
  %7 = phi i32 [ %24, %21 ], [ %1, %4 ]
  %8 = phi i8* [ %23, %21 ], [ %0, %4 ]
  %9 = tail call i32 @big_endian_read_16(i8* %8, i32 0) #9, !dbg !786
  %10 = and i32 %6, 65535, !dbg !788
  %11 = and i32 %9, 65535, !dbg !791
  %12 = add nuw nsw i32 %11, %10, !dbg !792
  call void @llvm.dbg.value(metadata i32 %12, metadata !706, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 %12, metadata !706, metadata !DIExpression()), !dbg !793
  %13 = icmp ugt i32 %12, 65535, !dbg !794
  br i1 %13, label %14, label %21, !dbg !795

; <label>:14:                                     ; preds = %5
  br label %15, !dbg !796

; <label>:15:                                     ; preds = %15, %14
  %16 = phi i32 [ 65536, %15 ], [ %12, %14 ]
  %17 = and i32 %16, 65535, !dbg !796
  %18 = add nuw nsw i32 %17, 1, !dbg !797
  call void @llvm.dbg.value(metadata i32 %18, metadata !706, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i32 %18, metadata !706, metadata !DIExpression()), !dbg !793
  %19 = icmp ugt i32 %18, 65535, !dbg !794
  br i1 %19, label %15, label %20, !dbg !795, !llvm.loop !718

; <label>:20:                                     ; preds = %15
  br label %21, !dbg !798

; <label>:21:                                     ; preds = %20, %5
  %22 = phi i32 [ %12, %5 ], [ %18, %20 ]
  %23 = getelementptr inbounds i8, i8* %8, i32 2, !dbg !798
  call void @llvm.dbg.value(metadata i8* %23, metadata !778, metadata !DIExpression()), !dbg !781
  %24 = add nsw i32 %7, -2, !dbg !799
  call void @llvm.dbg.value(metadata i32 %24, metadata !779, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 %24, metadata !779, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i8* %23, metadata !778, metadata !DIExpression()), !dbg !781
  %25 = icmp eq i32 %24, 0, !dbg !784
  br i1 %25, label %26, label %5, !dbg !784, !llvm.loop !800

; <label>:26:                                     ; preds = %21
  %27 = trunc i32 %22 to i16, !dbg !803
  br label %28, !dbg !804

; <label>:28:                                     ; preds = %26, %2
  %29 = phi i16 [ 0, %2 ], [ %27, %26 ]
  ret i16 %29, !dbg !804
}

; Function Attrs: optsize
declare void @reverse_bd_addr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare i8* @bt_get_mac_addr(...) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @pan_loop_suspend() #6 !dbg !805 {
  ret i32 0, !dbg !808
}

; Function Attrs: norecurse nounwind optsize readnone
define internal i32 @pan_loop_resume() #6 !dbg !809 {
  ret i32 0, !dbg !810
}

; Function Attrs: nounwind optsize
define internal i32 @pan_loop_release() #0 !dbg !811 {
  %1 = load %struct.pan_cmd_deal_t*, %struct.pan_cmd_deal_t** @pan, align 4, !dbg !812, !tbaa !414
  %2 = icmp eq %struct.pan_cmd_deal_t* %1, null, !dbg !814
  br i1 %2, label %5, label %3, !dbg !815

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.pan_cmd_deal_t, %struct.pan_cmd_deal_t* %1, i32 0, i32 0, !dbg !816
  tail call void @stack_run_loop_remove(%struct.run_loop* %4) #9, !dbg !817
  store %struct.pan_cmd_deal_t* null, %struct.pan_cmd_deal_t** @pan, align 4, !dbg !818, !tbaa !414
  br label %5, !dbg !819

; <label>:5:                                      ; preds = %3, %0
  ret i32 0, !dbg !820
}

; Function Attrs: optsize
declare void @stack_run_loop_remove(%struct.run_loop*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!164, !165}
!llvm.ident = !{!166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !163, line: 190, type: !119, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !72, globals: !78)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/pan.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !11, !30, !41, !53, !63}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 41, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/pan.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "BNEP_SECURITY_NONE", value: 0)
!9 = !DIEnumerator(name: "BNEP_SECURITY_SERVICE_LEVEL_ENFORCED", value: 1)
!10 = !DIEnumerator(name: "BNEP_SECURITY_802_1X", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 47, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!13 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_PSTN", value: 0)
!14 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_ISDN", value: 1)
!15 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_DSL", value: 2)
!16 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_CABLE_MODEM", value: 3)
!17 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_10MB_ETHERNET", value: 4)
!18 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_100MB_ETHERNET", value: 5)
!19 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_4MB_TOKEN_RING", value: 6)
!20 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_16MB_TOKEN_RING", value: 7)
!21 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_100MB_TOKEN_RING", value: 8)
!22 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_FDDI", value: 9)
!23 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_GSM", value: 10)
!24 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_CDMA", value: 11)
!25 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_GPRS", value: 12)
!26 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_3G", value: 13)
!27 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_CELULAR", value: 14)
!28 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_OTHER", value: 65534)
!29 = !DIEnumerator(name: "PAN_NET_ACCESS_TYPE_NONE", value: 65535)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 31, size: 32, elements: !32)
!31 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40}
!33 = !DIEnumerator(name: "PROFILE_CMD_OK", value: 0)
!34 = !DIEnumerator(name: "PROFILE_CMD_DEVICE_NO_FOUND", value: -1000)
!35 = !DIEnumerator(name: "PROFILE_CMD_NO_FOUND", value: -1001)
!36 = !DIEnumerator(name: "PROFILE_CMD_SEND_ERROR", value: -1002)
!37 = !DIEnumerator(name: "PROFILE_CMD_REMOTE_NOT_SUPPORT", value: -1003)
!38 = !DIEnumerator(name: "PROFILE_CMD_TRY_AGAIN_LATER", value: -1004)
!39 = !DIEnumerator(name: "PROFILE_CMD_DATA_PARSE_ERROE", value: -1005)
!40 = !DIEnumerator(name: "PROFILE_CMD_PROFILE_NOT_SUPPORT", value: -1006)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 45, size: 32, elements: !43)
!42 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp_util.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DIEnumerator(name: "DE_NIL", value: 0)
!45 = !DIEnumerator(name: "DE_UINT", value: 1)
!46 = !DIEnumerator(name: "DE_INT", value: 2)
!47 = !DIEnumerator(name: "DE_UUID", value: 3)
!48 = !DIEnumerator(name: "DE_STRING", value: 4)
!49 = !DIEnumerator(name: "DE_BOOL", value: 5)
!50 = !DIEnumerator(name: "DE_DES", value: 6)
!51 = !DIEnumerator(name: "DE_DEA", value: 7)
!52 = !DIEnumerator(name: "DE_URL", value: 8)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 57, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62}
!55 = !DIEnumerator(name: "DE_SIZE_8", value: 0)
!56 = !DIEnumerator(name: "DE_SIZE_16", value: 1)
!57 = !DIEnumerator(name: "DE_SIZE_32", value: 2)
!58 = !DIEnumerator(name: "DE_SIZE_64", value: 3)
!59 = !DIEnumerator(name: "DE_SIZE_128", value: 4)
!60 = !DIEnumerator(name: "DE_SIZE_VAR_8", value: 5)
!61 = !DIEnumerator(name: "DE_SIZE_VAR_16", value: 6)
!62 = !DIEnumerator(name: "DE_SIZE_VAR_32", value: 7)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 1489, size: 32, elements: !65)
!64 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DIEnumerator(name: "HCI_STATE_OFF", value: 0)
!67 = !DIEnumerator(name: "HCI_STATE_INITIALIZING", value: 1)
!68 = !DIEnumerator(name: "HCI_STATE_WORKING", value: 2)
!69 = !DIEnumerator(name: "HCI_STATE_HALTING", value: 3)
!70 = !DIEnumerator(name: "HCI_STATE_SLEEPING", value: 4)
!71 = !DIEnumerator(name: "HCI_STATE_FALLING_ASLEEP", value: 5)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !76, line: 44, baseType: !77)
!76 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!0, !79, !102, !109, !122, !124, !131, !133, !135, !137, !142, !147, !151, !159, !161}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "pan", scope: !2, file: !3, line: 250, type: !81, isLocal: false, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "pan_cmd_deal_t", file: !3, line: 247, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 245, size: 96, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pan_loop", scope: !83, file: !3, line: 246, baseType: !86, size: 96)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "run_loop", file: !87, line: 9, size: 96, elements: !88)
!87 = !DIFile(filename: "../btcommon/run_loop.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!88 = !{!89, !96, !101}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !86, file: !87, line: 10, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !91, line: 55, baseType: !92)
!91 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !91, line: 53, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !91, line: 54, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !86, file: !87, line: 11, baseType: !97, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !86, file: !87, line: 12, baseType: !73, size: 32, offset: 64)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "sdp_pan_service_data", scope: !2, file: !3, line: 580, type: !104, isLocal: false, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1600, elements: !107)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !76, line: 44, baseType: !77)
!107 = !{!108}
!108 = !DISubrange(count: 200)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "bt_suspend_pan_loop_resumepan_loop_release", scope: !2, file: !3, line: 669, type: !111, isLocal: false, isDefinition: true)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_sleep", file: !113, line: 313, size: 96, elements: !114)
!113 = !DIFile(filename: "../btstack/Host/include/common/bt_config.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!114 = !{!115, !120, !121}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !112, file: !113, line: 314, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, null}
!119 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !112, file: !113, line: 315, baseType: !116, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !112, file: !113, line: 316, baseType: !116, size: 32, offset: 64)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "pan_deal", scope: !2, file: !3, line: 249, type: !82, isLocal: false, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "default_panu_service_name", scope: !2, file: !3, line: 33, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 232, elements: !129)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !{!130}
!130 = !DISubrange(count: 29)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "default_nap_service_name", scope: !2, file: !3, line: 36, type: !126, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "default_gn_service_name", scope: !2, file: !3, line: 39, type: !126, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "default_panu_service_desc", scope: !2, file: !3, line: 34, type: !126, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "default_nap_service_desc", scope: !2, file: !3, line: 37, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 408, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 51)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "default_gn_service_desc", scope: !2, file: !3, line: 40, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 304, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 38)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "bnep_cid", scope: !2, file: !3, line: 243, type: !149, isLocal: true, isDefinition: true)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !76, line: 46, baseType: !150)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "broadcast_addr", scope: !2, file: !3, line: 241, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !155, line: 7, baseType: !156)
!155 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 48, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 6)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "other_addr", scope: !2, file: !3, line: 239, type: !153, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "remote_addr", scope: !2, file: !3, line: 238, type: !154, isLocal: true, isDefinition: true)
!163 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!164 = !{i32 2, !"Dwarf Version", i32 4}
!165 = !{i32 2, !"Debug Info Version", i32 3}
!166 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!167 = distinct !DISubprogram(name: "pan_create_nap_sdp_record", scope: !3, file: !3, line: 205, type: !168, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !176)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !74, !170, !172, !173, !173, !174, !175, !170, !173, !173}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !76, line: 48, baseType: !171)
!171 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_description_t", file: !6, line: 45, baseType: !5)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "net_access_type_t", file: !6, line: 65, baseType: !11)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!177 = !DILocalVariable(name: "service", arg: 1, scope: !167, file: !3, line: 205, type: !74)
!178 = !DILocalVariable(name: "service_record_handle", arg: 2, scope: !167, file: !3, line: 205, type: !170)
!179 = !DILocalVariable(name: "network_packet_types", arg: 3, scope: !167, file: !3, line: 205, type: !172)
!180 = !DILocalVariable(name: "name", arg: 4, scope: !167, file: !3, line: 205, type: !173)
!181 = !DILocalVariable(name: "description", arg: 5, scope: !167, file: !3, line: 205, type: !173)
!182 = !DILocalVariable(name: "security_desc", arg: 6, scope: !167, file: !3, line: 205, type: !174)
!183 = !DILocalVariable(name: "net_access_type", arg: 7, scope: !167, file: !3, line: 206, type: !175)
!184 = !DILocalVariable(name: "max_net_access_rate", arg: 8, scope: !167, file: !3, line: 206, type: !170)
!185 = !DILocalVariable(name: "IPv4Subnet", arg: 9, scope: !167, file: !3, line: 206, type: !173)
!186 = !DILocalVariable(name: "IPv6Subnet", arg: 10, scope: !167, file: !3, line: 206, type: !173)
!187 = !DILocation(line: 205, column: 41, scope: !167)
!188 = !DILocation(line: 205, column: 59, scope: !167)
!189 = !DILocation(line: 205, column: 92, scope: !167)
!190 = !DILocation(line: 205, column: 126, scope: !167)
!191 = !DILocation(line: 205, column: 144, scope: !167)
!192 = !DILocation(line: 205, column: 180, scope: !167)
!193 = !DILocation(line: 206, column: 50, scope: !167)
!194 = !DILocation(line: 206, column: 76, scope: !167)
!195 = !DILocation(line: 206, column: 109, scope: !167)
!196 = !DILocation(line: 206, column: 133, scope: !167)
!197 = !DILocation(line: 209, column: 5, scope: !167)
!198 = !DILocation(line: 210, column: 1, scope: !167)
!199 = distinct !DISubprogram(name: "pan_create_service", scope: !3, file: !3, line: 42, type: !200, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !74, !170, !170, !172, !173, !173, !174, !175, !170, !173, !173}
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !217, !218, !220}
!203 = !DILocalVariable(name: "service", arg: 1, scope: !199, file: !3, line: 42, type: !74)
!204 = !DILocalVariable(name: "service_record_handle", arg: 2, scope: !199, file: !3, line: 42, type: !170)
!205 = !DILocalVariable(name: "service_uuid", arg: 3, scope: !199, file: !3, line: 43, type: !170)
!206 = !DILocalVariable(name: "network_packet_types", arg: 4, scope: !199, file: !3, line: 43, type: !172)
!207 = !DILocalVariable(name: "name", arg: 5, scope: !199, file: !3, line: 43, type: !173)
!208 = !DILocalVariable(name: "descriptor", arg: 6, scope: !199, file: !3, line: 43, type: !173)
!209 = !DILocalVariable(name: "security_desc", arg: 7, scope: !199, file: !3, line: 44, type: !174)
!210 = !DILocalVariable(name: "net_access_type", arg: 8, scope: !199, file: !3, line: 44, type: !175)
!211 = !DILocalVariable(name: "max_net_access_rate", arg: 9, scope: !199, file: !3, line: 44, type: !170)
!212 = !DILocalVariable(name: "IPv4Subnet", arg: 10, scope: !199, file: !3, line: 45, type: !173)
!213 = !DILocalVariable(name: "IPv6Subnet", arg: 11, scope: !199, file: !3, line: 45, type: !173)
!214 = !DILocalVariable(name: "attribute", scope: !199, file: !3, line: 48, type: !74)
!215 = !DILocalVariable(name: "l2cpProtocol", scope: !216, file: !3, line: 68, type: !74)
!216 = distinct !DILexicalBlock(scope: !199, file: !3, line: 67, column: 5)
!217 = !DILocalVariable(name: "bnep", scope: !216, file: !3, line: 75, type: !74)
!218 = !DILocalVariable(name: "net_packet_type_list", scope: !219, file: !3, line: 80, type: !74)
!219 = distinct !DILexicalBlock(scope: !216, file: !3, line: 76, column: 9)
!220 = !DILocalVariable(name: "sppProfile", scope: !221, file: !3, line: 121, type: !74)
!221 = distinct !DILexicalBlock(scope: !199, file: !3, line: 120, column: 5)
!222 = !DILocation(line: 42, column: 41, scope: !199)
!223 = !DILocation(line: 42, column: 59, scope: !199)
!224 = !DILocation(line: 43, column: 41, scope: !199)
!225 = !DILocation(line: 43, column: 65, scope: !199)
!226 = !DILocation(line: 43, column: 99, scope: !199)
!227 = !DILocation(line: 43, column: 117, scope: !199)
!228 = !DILocation(line: 44, column: 55, scope: !199)
!229 = !DILocation(line: 44, column: 88, scope: !199)
!230 = !DILocation(line: 44, column: 114, scope: !199)
!231 = !DILocation(line: 45, column: 44, scope: !199)
!232 = !DILocation(line: 45, column: 68, scope: !199)
!233 = !DILocation(line: 49, column: 5, scope: !199)
!234 = !DILocation(line: 52, column: 5, scope: !199)
!235 = !DILocation(line: 53, column: 5, scope: !199)
!236 = !DILocation(line: 56, column: 5, scope: !199)
!237 = !DILocation(line: 57, column: 17, scope: !199)
!238 = !DILocation(line: 48, column: 14, scope: !199)
!239 = !DILocation(line: 60, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !199, file: !3, line: 58, column: 5)
!241 = !DILocation(line: 62, column: 5, scope: !199)
!242 = !DILocation(line: 65, column: 5, scope: !199)
!243 = !DILocation(line: 66, column: 17, scope: !199)
!244 = !DILocation(line: 68, column: 33, scope: !216)
!245 = !DILocation(line: 68, column: 18, scope: !216)
!246 = !DILocation(line: 70, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !216, file: !3, line: 69, column: 9)
!248 = !DILocation(line: 71, column: 13, scope: !247)
!249 = !DILocation(line: 73, column: 9, scope: !216)
!250 = !DILocation(line: 75, column: 25, scope: !216)
!251 = !DILocation(line: 75, column: 18, scope: !216)
!252 = !DILocation(line: 77, column: 13, scope: !219)
!253 = !DILocation(line: 78, column: 13, scope: !219)
!254 = !DILocation(line: 80, column: 45, scope: !219)
!255 = !DILocation(line: 80, column: 22, scope: !219)
!256 = !DILocation(line: 82, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 82, column: 21)
!258 = distinct !DILexicalBlock(scope: !219, file: !3, line: 81, column: 13)
!259 = !DILocation(line: 82, column: 21, scope: !258)
!260 = !DILocation(line: 83, column: 28, scope: !261)
!261 = !DILexicalBlockFile(scope: !262, file: !3, discriminator: 1)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 82, column: 43)
!263 = !{!264, !264, i64 0}
!264 = !{!"short", !265, i64 0}
!265 = !{!"omnipotent char", !266, i64 0}
!266 = !{!"Simple C/C++ TBAA"}
!267 = !DILocation(line: 83, column: 21, scope: !261)
!268 = !DILocation(line: 84, column: 104, scope: !269)
!269 = distinct !DILexicalBlock(scope: !262, file: !3, line: 83, column: 51)
!270 = !DILocation(line: 84, column: 83, scope: !269)
!271 = !DILocation(line: 84, column: 25, scope: !269)
!272 = distinct !{!272, !273, !274}
!273 = !DILocation(line: 83, column: 21, scope: !262)
!274 = !DILocation(line: 85, column: 21, scope: !262)
!275 = !DILocation(line: 88, column: 13, scope: !219)
!276 = !DILocation(line: 90, column: 9, scope: !216)
!277 = !DILocation(line: 92, column: 5, scope: !199)
!278 = !DILocation(line: 95, column: 5, scope: !199)
!279 = !DILocation(line: 96, column: 17, scope: !199)
!280 = !DILocation(line: 99, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !199, file: !3, line: 97, column: 5)
!282 = !DILocation(line: 101, column: 5, scope: !199)
!283 = !DILocation(line: 104, column: 5, scope: !199)
!284 = !DILocation(line: 105, column: 17, scope: !199)
!285 = !DILocation(line: 107, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !199, file: !3, line: 106, column: 5)
!287 = !DILocation(line: 108, column: 9, scope: !286)
!288 = !DILocation(line: 109, column: 9, scope: !286)
!289 = !DILocation(line: 111, column: 5, scope: !199)
!290 = !DILocation(line: 118, column: 5, scope: !199)
!291 = !DILocation(line: 119, column: 17, scope: !199)
!292 = !DILocation(line: 121, column: 31, scope: !221)
!293 = !DILocation(line: 121, column: 18, scope: !221)
!294 = !DILocation(line: 123, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !221, file: !3, line: 122, column: 9)
!296 = !DILocation(line: 124, column: 13, scope: !295)
!297 = !DILocation(line: 126, column: 9, scope: !221)
!298 = !DILocation(line: 128, column: 5, scope: !199)
!299 = !DILocation(line: 131, column: 5, scope: !199)
!300 = !DILocation(line: 132, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !199, file: !3, line: 132, column: 9)
!302 = !DILocation(line: 132, column: 9, scope: !199)
!303 = !DILocation(line: 133, column: 42, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !3, line: 132, column: 15)
!305 = !DILocation(line: 133, column: 9, scope: !306)
!306 = !DILexicalBlockFile(scope: !304, file: !3, discriminator: 1)
!307 = !DILocation(line: 134, column: 5, scope: !304)
!308 = !DILocation(line: 135, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !301, file: !3, line: 134, column: 12)
!310 = !DILocation(line: 137, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !3, line: 135, column: 31)
!312 = !DILocation(line: 138, column: 13, scope: !311)
!313 = !DILocation(line: 140, column: 13, scope: !311)
!314 = !DILocation(line: 141, column: 13, scope: !311)
!315 = !DILocation(line: 143, column: 13, scope: !311)
!316 = !DILocation(line: 144, column: 13, scope: !311)
!317 = !DILocation(line: 151, column: 5, scope: !199)
!318 = !DILocation(line: 152, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !199, file: !3, line: 152, column: 9)
!320 = !DILocation(line: 152, column: 9, scope: !199)
!321 = !DILocation(line: 153, column: 42, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 152, column: 21)
!323 = !DILocation(line: 153, column: 9, scope: !324)
!324 = !DILexicalBlockFile(scope: !322, file: !3, discriminator: 1)
!325 = !DILocation(line: 154, column: 5, scope: !322)
!326 = !DILocation(line: 155, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !319, file: !3, line: 154, column: 12)
!328 = !DILocation(line: 157, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !3, line: 155, column: 31)
!330 = !DILocation(line: 158, column: 13, scope: !329)
!331 = !DILocation(line: 160, column: 13, scope: !329)
!332 = !DILocation(line: 161, column: 13, scope: !329)
!333 = !DILocation(line: 163, column: 13, scope: !329)
!334 = !DILocation(line: 164, column: 13, scope: !329)
!335 = !DILocation(line: 171, column: 5, scope: !199)
!336 = !DILocation(line: 172, column: 5, scope: !199)
!337 = !DILocation(line: 174, column: 22, scope: !338)
!338 = distinct !DILexicalBlock(scope: !199, file: !3, line: 174, column: 9)
!339 = !DILocation(line: 174, column: 9, scope: !199)
!340 = !DILocation(line: 178, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !199, file: !3, line: 178, column: 9)
!342 = !DILocation(line: 178, column: 9, scope: !199)
!343 = !DILocation(line: 180, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !341, file: !3, line: 178, column: 21)
!345 = !DILocation(line: 181, column: 42, scope: !344)
!346 = !DILocation(line: 181, column: 9, scope: !347)
!347 = !DILexicalBlockFile(scope: !344, file: !3, discriminator: 1)
!348 = !DILocation(line: 182, column: 5, scope: !344)
!349 = !DILocation(line: 184, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !199, file: !3, line: 184, column: 9)
!351 = !DILocation(line: 184, column: 9, scope: !199)
!352 = !DILocation(line: 186, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 184, column: 21)
!354 = !DILocation(line: 187, column: 42, scope: !353)
!355 = !DILocation(line: 187, column: 9, scope: !356)
!356 = !DILexicalBlockFile(scope: !353, file: !3, discriminator: 1)
!357 = !DILocation(line: 188, column: 5, scope: !353)
!358 = !DILocation(line: 190, column: 22, scope: !359)
!359 = distinct !DILexicalBlock(scope: !199, file: !3, line: 190, column: 9)
!360 = !DILocation(line: 190, column: 9, scope: !199)
!361 = !DILocation(line: 195, column: 5, scope: !199)
!362 = !DILocation(line: 196, column: 5, scope: !199)
!363 = !DILocation(line: 199, column: 5, scope: !199)
!364 = !DILocation(line: 200, column: 5, scope: !199)
!365 = !DILocation(line: 202, column: 1, scope: !199)
!366 = !DILocation(line: 202, column: 1, scope: !367)
!367 = !DILexicalBlockFile(scope: !199, file: !3, discriminator: 2)
!368 = distinct !DISubprogram(name: "pan_create_gn_sdp_record", scope: !3, file: !3, line: 212, type: !369, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !74, !170, !172, !173, !173, !174, !173, !173}
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379}
!372 = !DILocalVariable(name: "service", arg: 1, scope: !368, file: !3, line: 212, type: !74)
!373 = !DILocalVariable(name: "service_record_handle", arg: 2, scope: !368, file: !3, line: 212, type: !170)
!374 = !DILocalVariable(name: "network_packet_types", arg: 3, scope: !368, file: !3, line: 212, type: !172)
!375 = !DILocalVariable(name: "name", arg: 4, scope: !368, file: !3, line: 212, type: !173)
!376 = !DILocalVariable(name: "description", arg: 5, scope: !368, file: !3, line: 212, type: !173)
!377 = !DILocalVariable(name: "security_desc", arg: 6, scope: !368, file: !3, line: 212, type: !174)
!378 = !DILocalVariable(name: "IPv4Subnet", arg: 7, scope: !368, file: !3, line: 213, type: !173)
!379 = !DILocalVariable(name: "IPv6Subnet", arg: 8, scope: !368, file: !3, line: 213, type: !173)
!380 = !DILocation(line: 212, column: 40, scope: !368)
!381 = !DILocation(line: 212, column: 58, scope: !368)
!382 = !DILocation(line: 212, column: 91, scope: !368)
!383 = !DILocation(line: 212, column: 125, scope: !368)
!384 = !DILocation(line: 212, column: 143, scope: !368)
!385 = !DILocation(line: 212, column: 179, scope: !368)
!386 = !DILocation(line: 213, column: 43, scope: !368)
!387 = !DILocation(line: 213, column: 67, scope: !368)
!388 = !DILocation(line: 215, column: 5, scope: !368)
!389 = !DILocation(line: 216, column: 1, scope: !368)
!390 = distinct !DISubprogram(name: "pan_create_panu_sdp_record", scope: !3, file: !3, line: 218, type: !391, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !74, !170, !172, !173, !173, !174}
!393 = !{!394, !395, !396, !397, !398, !399}
!394 = !DILocalVariable(name: "service", arg: 1, scope: !390, file: !3, line: 218, type: !74)
!395 = !DILocalVariable(name: "service_record_handle", arg: 2, scope: !390, file: !3, line: 218, type: !170)
!396 = !DILocalVariable(name: "network_packet_types", arg: 3, scope: !390, file: !3, line: 218, type: !172)
!397 = !DILocalVariable(name: "name", arg: 4, scope: !390, file: !3, line: 218, type: !173)
!398 = !DILocalVariable(name: "description", arg: 5, scope: !390, file: !3, line: 218, type: !173)
!399 = !DILocalVariable(name: "security_desc", arg: 6, scope: !390, file: !3, line: 218, type: !174)
!400 = !DILocation(line: 218, column: 42, scope: !390)
!401 = !DILocation(line: 218, column: 60, scope: !390)
!402 = !DILocation(line: 218, column: 93, scope: !390)
!403 = !DILocation(line: 218, column: 127, scope: !390)
!404 = !DILocation(line: 218, column: 145, scope: !390)
!405 = !DILocation(line: 218, column: 181, scope: !390)
!406 = !DILocation(line: 220, column: 5, scope: !390)
!407 = !DILocation(line: 221, column: 1, scope: !390)
!408 = distinct !DISubprogram(name: "pan_init", scope: !3, file: !3, line: 595, type: !409, isLocal: false, isDefinition: true, scopeLine: 596, isOptimized: true, unit: !2, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{null}
!411 = !{}
!412 = !DILocation(line: 597, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !3, line: 597, column: 9)
!414 = !{!415, !415, i64 0}
!415 = !{!"any pointer", !265, i64 0}
!416 = !DILocation(line: 597, column: 13, scope: !413)
!417 = !DILocation(line: 597, column: 9, scope: !408)
!418 = !DILocation(line: 600, column: 9, scope: !408)
!419 = !DILocation(line: 608, column: 5, scope: !408)
!420 = !DILocation(line: 610, column: 5, scope: !408)
!421 = !DILocation(line: 622, column: 5, scope: !408)
!422 = !DILocation(line: 623, column: 1, scope: !408)
!423 = !DILocation(line: 623, column: 1, scope: !424)
!424 = !DILexicalBlockFile(scope: !408, file: !3, discriminator: 1)
!425 = distinct !DISubprogram(name: "pan_operation_loop", scope: !3, file: !3, line: 575, type: !98, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !426)
!426 = !{!427}
!427 = !DILocalVariable(name: "pan_loop", arg: 1, scope: !425, file: !3, line: 575, type: !100)
!428 = !DILocation(line: 575, column: 49, scope: !425)
!429 = !DILocation(line: 577, column: 5, scope: !425)
!430 = !DILocation(line: 578, column: 5, scope: !425)
!431 = !DILocation(line: 579, column: 1, scope: !425)
!432 = distinct !DISubprogram(name: "pan_packet_handler", scope: !3, file: !3, line: 425, type: !433, isLocal: true, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !75, !149, !74, !149}
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!436 = !DILocalVariable(name: "packet_type", arg: 1, scope: !432, file: !3, line: 425, type: !75)
!437 = !DILocalVariable(name: "channel", arg: 2, scope: !432, file: !3, line: 425, type: !149)
!438 = !DILocalVariable(name: "packet", arg: 3, scope: !432, file: !3, line: 425, type: !74)
!439 = !DILocalVariable(name: "size", arg: 4, scope: !432, file: !3, line: 425, type: !149)
!440 = !DILocalVariable(name: "event", scope: !432, file: !3, line: 429, type: !75)
!441 = !DILocalVariable(name: "event_addr", scope: !432, file: !3, line: 430, type: !154)
!442 = !DILocalVariable(name: "src_addr", scope: !432, file: !3, line: 431, type: !154)
!443 = !DILocalVariable(name: "dst_addr", scope: !432, file: !3, line: 432, type: !154)
!444 = !DILocalVariable(name: "uuid_source", scope: !432, file: !3, line: 433, type: !149)
!445 = !DILocalVariable(name: "uuid_dest", scope: !432, file: !3, line: 434, type: !149)
!446 = !DILocalVariable(name: "mtu", scope: !432, file: !3, line: 435, type: !149)
!447 = !DILocalVariable(name: "network_type", scope: !432, file: !3, line: 436, type: !149)
!448 = !DILocalVariable(name: "protocol_type", scope: !432, file: !3, line: 437, type: !75)
!449 = !DILocalVariable(name: "icmp_type", scope: !432, file: !3, line: 438, type: !75)
!450 = !DILocalVariable(name: "ihl", scope: !432, file: !3, line: 439, type: !119)
!451 = !DILocalVariable(name: "payload_offset", scope: !432, file: !3, line: 440, type: !119)
!452 = !DILocalVariable(name: "network_buffer", scope: !453, file: !3, line: 337, type: !467)
!453 = distinct !DISubprogram(name: "send_ping_response_ipv4", scope: !3, file: !3, line: 334, type: !409, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !454)
!454 = !{!452, !455, !459, !463, !464, !465, !466}
!455 = !DILocalVariable(name: "ipv4_header", scope: !453, file: !3, line: 338, type: !456)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 160, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 20)
!459 = !DILocalVariable(name: "icmp_packet", scope: !453, file: !3, line: 347, type: !460)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 8)
!463 = !DILocalVariable(name: "pos", scope: !453, file: !3, line: 354, type: !119)
!464 = !DILocalVariable(name: "total_length", scope: !453, file: !3, line: 357, type: !119)
!465 = !DILocalVariable(name: "ipv4_checksum", scope: !453, file: !3, line: 359, type: !149)
!466 = !DILocalVariable(name: "icmp_checksum", scope: !453, file: !3, line: 366, type: !149)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 800, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 100)
!470 = !DILocation(line: 337, column: 13, scope: !453, inlinedAt: !471)
!471 = distinct !DILocation(line: 531, column: 21, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 528, column: 36)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 523, column: 36)
!474 = distinct !DILexicalBlock(scope: !475, file: !3, line: 517, column: 31)
!475 = distinct !DILexicalBlock(scope: !432, file: !3, line: 442, column: 26)
!476 = !DILocation(line: 338, column: 13, scope: !453, inlinedAt: !471)
!477 = !DILocation(line: 425, column: 40, scope: !432)
!478 = !DILocation(line: 425, column: 62, scope: !432)
!479 = !DILocation(line: 425, column: 80, scope: !432)
!480 = !DILocation(line: 425, column: 97, scope: !432)
!481 = !DILocation(line: 430, column: 5, scope: !432)
!482 = !DILocation(line: 430, column: 15, scope: !432)
!483 = !DILocation(line: 431, column: 5, scope: !432)
!484 = !DILocation(line: 431, column: 15, scope: !432)
!485 = !DILocation(line: 432, column: 5, scope: !432)
!486 = !DILocation(line: 432, column: 15, scope: !432)
!487 = !DILocation(line: 442, column: 5, scope: !432)
!488 = !DILocation(line: 444, column: 17, scope: !475)
!489 = !{!265, !265, i64 0}
!490 = !DILocation(line: 445, column: 9, scope: !475)
!491 = !DILocalVariable(name: "event", arg: 1, scope: !492, file: !493, line: 1057, type: !496)
!492 = distinct !DISubprogram(name: "btstack_event_state_get_state", scope: !493, file: !493, line: 1057, type: !494, isLocal: true, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !498)
!493 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!494 = !DISubroutineType(types: !495)
!495 = !{!75, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!498 = !{!491}
!499 = !DILocation(line: 1057, column: 72, scope: !492, inlinedAt: !500)
!500 = distinct !DILocation(line: 448, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 448, column: 17)
!502 = distinct !DILexicalBlock(scope: !475, file: !3, line: 445, column: 24)
!503 = !DILocation(line: 1059, column: 16, scope: !492, inlinedAt: !500)
!504 = !DILocation(line: 448, column: 55, scope: !501)
!505 = !DILocation(line: 448, column: 17, scope: !502)
!506 = !DILocation(line: 449, column: 17, scope: !507)
!507 = distinct !DILexicalBlock(scope: !501, file: !3, line: 448, column: 77)
!508 = !DILocation(line: 450, column: 13, scope: !507)
!509 = !DILocation(line: 454, column: 81, scope: !502)
!510 = !DILocation(line: 454, column: 13, scope: !511)
!511 = !DILexicalBlockFile(scope: !502, file: !3, discriminator: 1)
!512 = !DILocation(line: 455, column: 13, scope: !502)
!513 = !DILocation(line: 456, column: 13, scope: !502)
!514 = !DILocalVariable(name: "event", arg: 1, scope: !515, file: !493, line: 2375, type: !496)
!515 = distinct !DISubprogram(name: "bnep_event_channel_opened_get_status", scope: !493, file: !493, line: 2375, type: !494, isLocal: true, isDefinition: true, scopeLine: 2376, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !516)
!516 = !{!514}
!517 = !DILocation(line: 2375, column: 79, scope: !515, inlinedAt: !518)
!518 = distinct !DILocation(line: 459, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !502, file: !3, line: 459, column: 17)
!520 = !DILocation(line: 2377, column: 16, scope: !515, inlinedAt: !518)
!521 = !DILocation(line: 459, column: 17, scope: !519)
!522 = !DILocation(line: 459, column: 17, scope: !502)
!523 = !DILocation(line: 2375, column: 79, scope: !515, inlinedAt: !524)
!524 = distinct !DILocation(line: 460, column: 67, scope: !525)
!525 = distinct !DILexicalBlock(scope: !519, file: !3, line: 459, column: 63)
!526 = !DILocation(line: 460, column: 67, scope: !525)
!527 = !DILocation(line: 460, column: 17, scope: !528)
!528 = !DILexicalBlockFile(scope: !525, file: !3, discriminator: 1)
!529 = !DILocation(line: 461, column: 13, scope: !525)
!530 = !DILocation(line: 2387, column: 16, scope: !531, inlinedAt: !536)
!531 = distinct !DISubprogram(name: "bnep_event_channel_opened_get_bnep_cid", scope: !493, file: !493, line: 2385, type: !532, isLocal: true, isDefinition: true, scopeLine: 2386, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!149, !496}
!534 = !{!535}
!535 = !DILocalVariable(name: "event", arg: 1, scope: !531, file: !493, line: 2385, type: !496)
!536 = distinct !DILocation(line: 463, column: 31, scope: !537)
!537 = distinct !DILexicalBlock(scope: !519, file: !3, line: 461, column: 20)
!538 = !DILocalVariable(name: "event", arg: 1, scope: !539, file: !493, line: 2395, type: !496)
!539 = distinct !DISubprogram(name: "bnep_event_channel_opened_get_source_uuid", scope: !493, file: !493, line: 2395, type: !532, isLocal: true, isDefinition: true, scopeLine: 2396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !540)
!540 = !{!538}
!541 = !DILocation(line: 2395, column: 85, scope: !539, inlinedAt: !542)
!542 = distinct !DILocation(line: 464, column: 31, scope: !537)
!543 = !DILocation(line: 2397, column: 16, scope: !539, inlinedAt: !542)
!544 = !DILocation(line: 433, column: 15, scope: !432)
!545 = !DILocalVariable(name: "event", arg: 1, scope: !546, file: !493, line: 2405, type: !496)
!546 = distinct !DISubprogram(name: "bnep_event_channel_opened_get_destination_uuid", scope: !493, file: !493, line: 2405, type: !532, isLocal: true, isDefinition: true, scopeLine: 2406, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !547)
!547 = !{!545}
!548 = !DILocation(line: 2405, column: 90, scope: !546, inlinedAt: !549)
!549 = distinct !DILocation(line: 465, column: 31, scope: !537)
!550 = !DILocation(line: 2407, column: 16, scope: !546, inlinedAt: !549)
!551 = !DILocation(line: 434, column: 15, scope: !432)
!552 = !DILocalVariable(name: "event", arg: 1, scope: !553, file: !493, line: 2415, type: !496)
!553 = distinct !DISubprogram(name: "bnep_event_channel_opened_get_mtu", scope: !493, file: !493, line: 2415, type: !532, isLocal: true, isDefinition: true, scopeLine: 2416, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !554)
!554 = !{!552}
!555 = !DILocation(line: 2415, column: 77, scope: !553, inlinedAt: !556)
!556 = distinct !DILocation(line: 466, column: 31, scope: !537)
!557 = !DILocation(line: 2417, column: 16, scope: !553, inlinedAt: !556)
!558 = !DILocation(line: 435, column: 15, scope: !432)
!559 = !DILocation(line: 468, column: 38, scope: !537)
!560 = !DILocation(line: 468, column: 17, scope: !537)
!561 = !DILocation(line: 470, column: 122, scope: !537)
!562 = !DILocation(line: 470, column: 150, scope: !537)
!563 = !DILocation(line: 470, column: 163, scope: !537)
!564 = !DILocation(line: 470, column: 174, scope: !537)
!565 = !DILocation(line: 470, column: 17, scope: !566)
!566 = !DILexicalBlockFile(scope: !537, file: !3, discriminator: 1)
!567 = !DILocation(line: 475, column: 13, scope: !502)
!568 = !DILocation(line: 476, column: 13, scope: !502)
!569 = !DILocation(line: 479, column: 13, scope: !502)
!570 = !DILocation(line: 480, column: 13, scope: !502)
!571 = !DILocation(line: 506, column: 9, scope: !475)
!572 = !DILocation(line: 507, column: 27, scope: !475)
!573 = !DILocation(line: 507, column: 9, scope: !475)
!574 = !DILocation(line: 510, column: 24, scope: !475)
!575 = !DILocation(line: 511, column: 9, scope: !475)
!576 = !DILocation(line: 512, column: 34, scope: !475)
!577 = !DILocation(line: 512, column: 9, scope: !578)
!578 = !DILexicalBlockFile(scope: !475, file: !3, discriminator: 1)
!579 = !DILocation(line: 513, column: 34, scope: !475)
!580 = !DILocation(line: 513, column: 9, scope: !578)
!581 = !DILocation(line: 514, column: 36, scope: !475)
!582 = !DILocation(line: 514, column: 9, scope: !475)
!583 = !DILocation(line: 517, column: 9, scope: !475)
!584 = !DILocation(line: 519, column: 19, scope: !474)
!585 = !DILocation(line: 520, column: 40, scope: !474)
!586 = !DILocation(line: 520, column: 33, scope: !474)
!587 = !DILocation(line: 440, column: 15, scope: !432)
!588 = !DILocation(line: 522, column: 29, scope: !474)
!589 = !DILocation(line: 437, column: 15, scope: !432)
!590 = !DILocation(line: 523, column: 13, scope: !474)
!591 = !DILocation(line: 537, column: 27, scope: !473)
!592 = !DILocation(line: 537, column: 51, scope: !473)
!593 = !DILocation(line: 537, column: 56, scope: !473)
!594 = !DILocation(line: 525, column: 29, scope: !473)
!595 = !DILocation(line: 438, column: 15, scope: !432)
!596 = !DILocation(line: 526, column: 51, scope: !473)
!597 = !DILocation(line: 526, column: 56, scope: !473)
!598 = !DILocation(line: 526, column: 17, scope: !473)
!599 = !DILocation(line: 527, column: 52, scope: !473)
!600 = !DILocation(line: 527, column: 17, scope: !473)
!601 = !DILocation(line: 528, column: 17, scope: !473)
!602 = !DILocation(line: 530, column: 21, scope: !472)
!603 = !DILocation(line: 337, column: 5, scope: !453, inlinedAt: !471)
!604 = !DILocation(line: 338, column: 5, scope: !453, inlinedAt: !471)
!605 = !DILocation(line: 347, column: 5, scope: !453, inlinedAt: !471)
!606 = !DILocation(line: 347, column: 13, scope: !453, inlinedAt: !471)
!607 = !DILocation(line: 354, column: 15, scope: !453, inlinedAt: !471)
!608 = !DILocation(line: 354, column: 9, scope: !453, inlinedAt: !471)
!609 = !DILocation(line: 357, column: 9, scope: !453, inlinedAt: !471)
!610 = !DILocation(line: 358, column: 5, scope: !453, inlinedAt: !471)
!611 = !DILocation(line: 359, column: 30, scope: !453, inlinedAt: !471)
!612 = !DILocation(line: 359, column: 14, scope: !453, inlinedAt: !471)
!613 = !DILocation(line: 360, column: 5, scope: !453, inlinedAt: !471)
!614 = !DILocation(line: 362, column: 13, scope: !453, inlinedAt: !471)
!615 = !DILocation(line: 362, column: 5, scope: !453, inlinedAt: !471)
!616 = !DILocation(line: 366, column: 30, scope: !453, inlinedAt: !471)
!617 = !DILocation(line: 366, column: 14, scope: !453, inlinedAt: !471)
!618 = !DILocation(line: 367, column: 5, scope: !453, inlinedAt: !471)
!619 = !DILocation(line: 368, column: 13, scope: !453, inlinedAt: !471)
!620 = !DILocation(line: 368, column: 5, scope: !453, inlinedAt: !471)
!621 = !DILocation(line: 372, column: 5, scope: !453, inlinedAt: !471)
!622 = !DILocation(line: 373, column: 1, scope: !453, inlinedAt: !471)
!623 = !DILocation(line: 532, column: 21, scope: !472)
!624 = !DILocation(line: 536, column: 17, scope: !473)
!625 = !DILocation(line: 537, column: 17, scope: !473)
!626 = !DILocation(line: 538, column: 17, scope: !473)
!627 = !DILocation(line: 523, column: 21, scope: !474)
!628 = !DILocation(line: 540, column: 17, scope: !473)
!629 = !DILocation(line: 541, column: 17, scope: !473)
!630 = !DILocation(line: 545, column: 29, scope: !474)
!631 = !DILocation(line: 546, column: 13, scope: !474)
!632 = !DILocation(line: 548, column: 17, scope: !633)
!633 = distinct !DILexicalBlock(scope: !474, file: !3, line: 546, column: 36)
!634 = !DILocation(line: 550, column: 27, scope: !633)
!635 = !DILocation(line: 550, column: 51, scope: !633)
!636 = !DILocation(line: 550, column: 56, scope: !633)
!637 = !DILocation(line: 550, column: 17, scope: !633)
!638 = !DILocation(line: 554, column: 17, scope: !633)
!639 = !DILocation(line: 546, column: 21, scope: !474)
!640 = !DILocation(line: 556, column: 17, scope: !633)
!641 = !DILocation(line: 557, column: 27, scope: !633)
!642 = !DILocation(line: 557, column: 39, scope: !633)
!643 = !DILocation(line: 557, column: 44, scope: !633)
!644 = !DILocation(line: 557, column: 17, scope: !633)
!645 = !DILocation(line: 558, column: 17, scope: !633)
!646 = !DILocation(line: 562, column: 13, scope: !474)
!647 = !DILocation(line: 563, column: 13, scope: !474)
!648 = !DILocation(line: 573, column: 1, scope: !432)
!649 = distinct !DISubprogram(name: "pan_cmd_io_ctrl", scope: !3, file: !3, line: 625, type: !650, isLocal: false, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !654)
!650 = !DISubroutineType(types: !651)
!651 = !{!119, !652, !653, !653, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !76, line: 48, baseType: !171)
!654 = !{!655, !656, !657, !658}
!655 = !DILocalVariable(name: "addr", arg: 1, scope: !649, file: !3, line: 625, type: !652)
!656 = !DILocalVariable(name: "cmd", arg: 2, scope: !649, file: !3, line: 625, type: !653)
!657 = !DILocalVariable(name: "value", arg: 3, scope: !649, file: !3, line: 625, type: !653)
!658 = !DILocalVariable(name: "data", arg: 4, scope: !649, file: !3, line: 625, type: !652)
!659 = !DILocalVariable(name: "network_buffer", scope: !660, file: !3, line: 379, type: !467)
!660 = distinct !DISubprogram(name: "send_ping_request_ipv6", scope: !3, file: !3, line: 376, type: !409, isLocal: true, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !661)
!661 = !{!659, !662, !666, !667, !668, !669, !670}
!662 = !DILocalVariable(name: "ipv6_header", scope: !660, file: !3, line: 380, type: !663)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 320, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 40)
!666 = !DILocalVariable(name: "icmp_packet", scope: !660, file: !3, line: 394, type: !460)
!667 = !DILocalVariable(name: "pos", scope: !660, file: !3, line: 401, type: !119)
!668 = !DILocalVariable(name: "payload_length", scope: !660, file: !3, line: 404, type: !119)
!669 = !DILocalVariable(name: "checksum", scope: !660, file: !3, line: 407, type: !119)
!670 = !DILocalVariable(name: "icmp_checksum", scope: !660, file: !3, line: 415, type: !149)
!671 = !DILocation(line: 379, column: 13, scope: !660, inlinedAt: !672)
!672 = distinct !DILocation(line: 637, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !649, file: !3, line: 630, column: 18)
!674 = !DILocation(line: 380, column: 13, scope: !660, inlinedAt: !672)
!675 = !DILocation(line: 625, column: 25, scope: !649)
!676 = !DILocation(line: 625, column: 35, scope: !649)
!677 = !DILocation(line: 625, column: 45, scope: !649)
!678 = !DILocation(line: 625, column: 56, scope: !649)
!679 = !DILocation(line: 627, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !649, file: !3, line: 627, column: 9)
!681 = !DILocation(line: 627, column: 13, scope: !680)
!682 = !DILocation(line: 627, column: 9, scope: !649)
!683 = !DILocation(line: 630, column: 5, scope: !649)
!684 = !DILocation(line: 632, column: 42, scope: !673)
!685 = !DILocation(line: 632, column: 9, scope: !686)
!686 = !DILexicalBlockFile(scope: !673, file: !3, discriminator: 1)
!687 = !DILocation(line: 633, column: 9, scope: !673)
!688 = !DILocation(line: 634, column: 9, scope: !673)
!689 = !DILocation(line: 635, column: 9, scope: !673)
!690 = !DILocation(line: 379, column: 5, scope: !660, inlinedAt: !672)
!691 = !DILocation(line: 380, column: 5, scope: !660, inlinedAt: !672)
!692 = !DILocation(line: 394, column: 5, scope: !660, inlinedAt: !672)
!693 = !DILocation(line: 394, column: 13, scope: !660, inlinedAt: !672)
!694 = !DILocation(line: 401, column: 15, scope: !660, inlinedAt: !672)
!695 = !DILocation(line: 401, column: 9, scope: !660, inlinedAt: !672)
!696 = !DILocation(line: 404, column: 9, scope: !660, inlinedAt: !672)
!697 = !DILocation(line: 405, column: 5, scope: !660, inlinedAt: !672)
!698 = !DILocation(line: 407, column: 44, scope: !660, inlinedAt: !672)
!699 = !DILocation(line: 407, column: 20, scope: !660, inlinedAt: !672)
!700 = !DILocalVariable(name: "a", arg: 1, scope: !701, file: !3, line: 274, type: !149)
!701 = distinct !DISubprogram(name: "sum_ones_complement", scope: !3, file: !3, line: 274, type: !702, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!149, !149, !149}
!704 = !{!700, !705, !706}
!705 = !DILocalVariable(name: "b", arg: 2, scope: !701, file: !3, line: 274, type: !149)
!706 = !DILocalVariable(name: "sum", scope: !701, file: !3, line: 276, type: !170)
!707 = !DILocation(line: 274, column: 46, scope: !701, inlinedAt: !708)
!708 = distinct !DILocation(line: 408, column: 16, scope: !660, inlinedAt: !672)
!709 = !DILocation(line: 274, column: 58, scope: !701, inlinedAt: !708)
!710 = !DILocation(line: 276, column: 20, scope: !701, inlinedAt: !708)
!711 = !DILocation(line: 276, column: 22, scope: !701, inlinedAt: !708)
!712 = !DILocation(line: 276, column: 14, scope: !701, inlinedAt: !708)
!713 = !DILocation(line: 277, column: 16, scope: !714, inlinedAt: !708)
!714 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!715 = !DILocation(line: 277, column: 5, scope: !714, inlinedAt: !708)
!716 = !DILocation(line: 278, column: 20, scope: !717, inlinedAt: !708)
!717 = distinct !DILexicalBlock(scope: !701, file: !3, line: 277, column: 26)
!718 = distinct !{!718, !719, !720}
!719 = !DILocation(line: 277, column: 5, scope: !701)
!720 = !DILocation(line: 279, column: 5, scope: !701)
!721 = !DILocation(line: 274, column: 58, scope: !701, inlinedAt: !722)
!722 = distinct !DILocation(line: 409, column: 16, scope: !660, inlinedAt: !672)
!723 = !DILocation(line: 276, column: 20, scope: !701, inlinedAt: !722)
!724 = !DILocation(line: 276, column: 22, scope: !701, inlinedAt: !722)
!725 = !DILocation(line: 276, column: 14, scope: !701, inlinedAt: !722)
!726 = !DILocation(line: 277, column: 16, scope: !714, inlinedAt: !722)
!727 = !DILocation(line: 277, column: 5, scope: !714, inlinedAt: !722)
!728 = !DILocation(line: 278, column: 20, scope: !717, inlinedAt: !722)
!729 = !DILocation(line: 280, column: 12, scope: !701, inlinedAt: !722)
!730 = !DILocation(line: 410, column: 5, scope: !660, inlinedAt: !672)
!731 = !DILocation(line: 411, column: 13, scope: !660, inlinedAt: !672)
!732 = !DILocation(line: 411, column: 5, scope: !660, inlinedAt: !672)
!733 = !DILocation(line: 415, column: 30, scope: !660, inlinedAt: !672)
!734 = !DILocation(line: 415, column: 14, scope: !660, inlinedAt: !672)
!735 = !DILocation(line: 416, column: 5, scope: !660, inlinedAt: !672)
!736 = !DILocation(line: 417, column: 13, scope: !660, inlinedAt: !672)
!737 = !DILocation(line: 417, column: 5, scope: !660, inlinedAt: !672)
!738 = !DILocation(line: 421, column: 5, scope: !660, inlinedAt: !672)
!739 = !DILocation(line: 422, column: 1, scope: !660, inlinedAt: !672)
!740 = !DILocation(line: 638, column: 9, scope: !673)
!741 = !DILocation(line: 642, column: 40, scope: !673)
!742 = !DILocation(line: 642, column: 9, scope: !673)
!743 = !DILocation(line: 643, column: 9, scope: !673)
!744 = !DILocation(line: 648, column: 5, scope: !649)
!745 = !DILocation(line: 649, column: 1, scope: !649)
!746 = distinct !DISubprogram(name: "setup_ethernet_header", scope: !3, file: !3, line: 253, type: !747, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{!149, !652, !119, !119, !119, !149}
!749 = !{!750, !751, !752, !753, !754, !755, !756}
!750 = !DILocalVariable(name: "buffer", arg: 1, scope: !746, file: !3, line: 253, type: !652)
!751 = !DILocalVariable(name: "src_compressed", arg: 2, scope: !746, file: !3, line: 253, type: !119)
!752 = !DILocalVariable(name: "dst_compressed", arg: 3, scope: !746, file: !3, line: 253, type: !119)
!753 = !DILocalVariable(name: "broadcast", arg: 4, scope: !746, file: !3, line: 253, type: !119)
!754 = !DILocalVariable(name: "network_protocol_type", arg: 5, scope: !746, file: !3, line: 253, type: !149)
!755 = !DILocalVariable(name: "pos", scope: !746, file: !3, line: 256, type: !119)
!756 = !DILocalVariable(name: "local_addr", scope: !746, file: !3, line: 257, type: !154)
!757 = !DILocation(line: 253, column: 55, scope: !746)
!758 = !DILocation(line: 253, column: 75, scope: !746)
!759 = !DILocation(line: 253, column: 95, scope: !746)
!760 = !DILocation(line: 256, column: 9, scope: !746)
!761 = !DILocation(line: 257, column: 5, scope: !746)
!762 = !DILocation(line: 257, column: 15, scope: !746)
!763 = !DILocation(line: 258, column: 21, scope: !746)
!764 = !DILocation(line: 258, column: 5, scope: !765)
!765 = !DILexicalBlockFile(scope: !746, file: !3, discriminator: 1)
!766 = !DILocation(line: 259, column: 39, scope: !746)
!767 = !DILocation(line: 259, column: 5, scope: !765)
!768 = !DILocation(line: 264, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 263, column: 12)
!770 = distinct !DILexicalBlock(scope: !746, file: !3, line: 261, column: 9)
!771 = !DILocation(line: 268, column: 5, scope: !746)
!772 = !DILocation(line: 270, column: 5, scope: !746)
!773 = !DILocation(line: 273, column: 1, scope: !746)
!774 = distinct !DISubprogram(name: "calc_internet_checksum", scope: !3, file: !3, line: 282, type: !775, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{!149, !74, !119}
!777 = !{!778, !779, !780}
!778 = !DILocalVariable(name: "data", arg: 1, scope: !774, file: !3, line: 282, type: !74)
!779 = !DILocalVariable(name: "size", arg: 2, scope: !774, file: !3, line: 282, type: !119)
!780 = !DILocalVariable(name: "checksum", scope: !774, file: !3, line: 284, type: !170)
!781 = !DILocation(line: 282, column: 49, scope: !774)
!782 = !DILocation(line: 282, column: 59, scope: !774)
!783 = !DILocation(line: 284, column: 14, scope: !774)
!784 = !DILocation(line: 285, column: 5, scope: !785)
!785 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 1)
!786 = !DILocation(line: 287, column: 50, scope: !787)
!787 = distinct !DILexicalBlock(scope: !774, file: !3, line: 285, column: 18)
!788 = !DILocation(line: 276, column: 20, scope: !701, inlinedAt: !789)
!789 = distinct !DILocation(line: 287, column: 20, scope: !790)
!790 = !DILexicalBlockFile(scope: !787, file: !3, discriminator: 1)
!791 = !DILocation(line: 276, column: 24, scope: !701, inlinedAt: !789)
!792 = !DILocation(line: 276, column: 22, scope: !701, inlinedAt: !789)
!793 = !DILocation(line: 276, column: 14, scope: !701, inlinedAt: !789)
!794 = !DILocation(line: 277, column: 16, scope: !714, inlinedAt: !789)
!795 = !DILocation(line: 277, column: 5, scope: !714, inlinedAt: !789)
!796 = !DILocation(line: 278, column: 20, scope: !717, inlinedAt: !789)
!797 = !DILocation(line: 278, column: 30, scope: !717, inlinedAt: !789)
!798 = !DILocation(line: 288, column: 14, scope: !787)
!799 = !DILocation(line: 289, column: 14, scope: !787)
!800 = distinct !{!800, !801, !802}
!801 = !DILocation(line: 285, column: 5, scope: !774)
!802 = !DILocation(line: 290, column: 5, scope: !774)
!803 = !DILocation(line: 280, column: 12, scope: !701, inlinedAt: !789)
!804 = !DILocation(line: 291, column: 5, scope: !774)
!805 = distinct !DISubprogram(name: "pan_loop_suspend", scope: !3, file: !3, line: 660, type: !806, isLocal: true, isDefinition: true, scopeLine: 661, isOptimized: true, unit: !2, variables: !411)
!806 = !DISubroutineType(types: !807)
!807 = !{!119}
!808 = !DILocation(line: 662, column: 5, scope: !805)
!809 = distinct !DISubprogram(name: "pan_loop_resume", scope: !3, file: !3, line: 664, type: !806, isLocal: true, isDefinition: true, scopeLine: 665, isOptimized: true, unit: !2, variables: !411)
!810 = !DILocation(line: 666, column: 5, scope: !809)
!811 = distinct !DISubprogram(name: "pan_loop_release", scope: !3, file: !3, line: 651, type: !806, isLocal: true, isDefinition: true, scopeLine: 652, isOptimized: true, unit: !2, variables: !411)
!812 = !DILocation(line: 653, column: 9, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !3, line: 653, column: 9)
!814 = !DILocation(line: 653, column: 13, scope: !813)
!815 = !DILocation(line: 653, column: 9, scope: !811)
!816 = !DILocation(line: 656, column: 33, scope: !811)
!817 = !DILocation(line: 656, column: 5, scope: !811)
!818 = !DILocation(line: 657, column: 9, scope: !811)
!819 = !DILocation(line: 658, column: 5, scope: !811)
!820 = !DILocation(line: 659, column: 1, scope: !811)
