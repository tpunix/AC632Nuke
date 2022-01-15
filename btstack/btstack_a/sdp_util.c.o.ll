; ModuleID = 'sdp_util.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.__hid_sdp_info = type { i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8*, i8*, i8*, i8*, void (i8)*, i8*, i8 }
%struct.sdp_context_attributeID_search = type { i32, i16 }
%struct.sdp_context_append_attributes = type { i8*, i16, i16, i16, i8* }
%struct.sdp_context_filter_attributes = type { i8*, i16, i16, i16, i8*, i32 }
%struct.sdp_context_get_filtered_size = type { i8*, i16 }
%struct.sdp_context_attribute_by_id = type { i16, i8* }
%struct.sdp_context_set_attribute_for_id = type { i16, i32, i8 }
%struct.sdp_context_contains_uuid128 = type { i8*, i32 }
%struct.sdp_context_match_pattern = type { i8*, i32 }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"NIL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"UINT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UUID\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"BOOL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DES\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"DEA\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@sdp_type_names = hidden local_unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], section ".bt_stack_const", align 4, !dbg !99
@sdp_bluetooth_base_uuid = hidden local_unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\10\00\80\00\00\80_\9B4\FB", section ".bt_stack_const", align 1, !dbg !108
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"<BT-log> :enter here %d %d\0A\0A\00", align 1
@btstack_emitter_support = external local_unnamed_addr constant i8, align 1
@emitter_hfp_hf_support = external local_unnamed_addr global i8, align 1
@hid_profile_support = external local_unnamed_addr global i8, align 1
@hid_conn_depend_on_dev_company = external local_unnamed_addr constant i8, align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"JL_HID\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"hid key\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"JIELI\00", align 1
@hid_sdp_info = weak_odr hidden local_unnamed_addr constant %struct.__hid_sdp_info { i16 1494, i16 10, i16 576, i8 -128, i8 33, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i16 256, i16 273, i16 256, i16 8000, i16 1033, i16 256, i16 0, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), void (i8)* null, i8* null, i8 0 }, section ".bt_stack_const", align 4, !dbg !114
@sdp_pnp_service_data = hidden local_unnamed_addr constant [57 x i8] c"6\004\09\00\00\0A\00\01\00\0A\09\00\016\00\03\19\12\00\09\02\00\09\01\03\09\02\01\09\05\D6\09\02\02\09\00\0A\09\02\03\09\02@\09\02\04(\01\09\02\05\09\00\01\00\00", section ".bt_stack_const", align 1, !dbg !151
@sdp_pnp_service_data_for_hid = hidden local_unnamed_addr constant [95 x i8] c"6\00Z\09\00\00\0A\00\01\00\0A\09\00\015\03\19\12\00\09\00\045\0D5\06\19\01\00\09\00\015\03\19\00\01\09\00\055\03\19\10\02\09\00\095\085\06\19\12\00\09\01\00\09\02\00\09\01\03\09\02\01\09\05\AC\09\02\02\09\02,\09\02\03\09\01\1B\09\02\04(\01\09\02\05\09\00\02\00\00", section ".bt_stack_const", align 1, !dbg !156
@sdp_pnp_service_data2 = hidden local_unnamed_addr constant [72 x i8] c"6\00C\09\00\00\0A\00\01\00\0A\09\00\016\00\03\19\12\00\09\00\046\00\096\00\06\19\01\00\09\00\01\09\02\00\09\01\03\09\02\01\09\05\D6\09\02\02\09\00\0A\09\02\03\09\02@\09\02\04(\01\09\02\05\09\00\01\00\00", section ".bt_stack_const", align 1, !dbg !161
@sdp_a2dp_service_data = hidden constant [79 x i8] c"6\00J\09\00\00\0A\00\01\00\01\09\00\016\00\03\19\11\0B\09\00\046\00\126\00\06\19\01\00\09\00\196\00\06\19\00\19\09\01\03\09\00\096\00\096\00\06\19\11\0D\09\01\03\09\03\11\09\00\01\09\01\00%\07JL_A2DP\00\00", section ".bt_stack_const", align 1, !dbg !166
@sdp_avctp_ct_service_data = hidden local_unnamed_addr constant [70 x i8] c"6\00A\09\00\00\0A\00\01\00\02\09\00\016\00\06\19\11\0E\19\11\0F\09\00\046\00\126\00\06\19\01\00\09\00\176\00\06\19\00\17\09\01\04\09\00\096\00\096\00\06\19\11\0E\09\01\05\09\03\11\09\00\01\00\00", section ".bt_stack_const", align 1, !dbg !171
@sdp_avctp_ta_service_data = hidden local_unnamed_addr constant [67 x i8] c"6\00>\09\00\00\0A\00\01\00\05\09\00\016\00\03\19\11\0C\09\00\046\00\126\00\06\19\01\00\09\00\176\00\06\19\00\17\09\01\04\09\00\096\00\096\00\06\19\11\0E\09\01\05\09\03\11\09\00\02\00\00", section ".bt_stack_const", align 1, !dbg !176
@sdp_hfp_service_data = hidden constant [77 x i8] c"6\00H\09\00\00\0A\00\01\00\03\09\00\016\00\06\19\11\1E\19\12\03\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\04\09\00\096\00\096\00\06\19\11\1E\09\01\08\09\03\11\09\00?\09\01\00%\06JL_HFP\00\00", section ".bt_stack_const", align 1, !dbg !181
@sdp_spp_service_data = hidden local_unnamed_addr constant [68 x i8] c"6\00?\09\00\00\0A\00\01\00\04\09\00\016\00\03\19\11\01\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\01\09\00\096\00\096\00\06\19\11\01\09\01\02\09\01\00%\06JL_SPP\00\00", section ".bt_stack_const", align 1, !dbg !186
@sdp_spp_update_service_data = hidden local_unnamed_addr constant [70 x i8] c"6\00B\09\00\00\0A\00\01\00\0B\09\00\016\00\03\19\11\01\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\08\09\00\096\00\096\00\06\19\11\01\09\01\02\09\01\00%\09JL_SPP_UP\00", section ".bt_stack_const", align 1, !dbg !191
@sdp_dueros_ota_service_data = hidden local_unnamed_addr constant [96 x i8] c"6\00[\09\00\00\0A\00\01\00\0E\09\00\016\00\11\1C\00\00\FD\C3\00\00\10\00\80\00\00\80_\9B4\FB\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\0A\09\00\096\00\176\00\14\1C\00\00\FD\C3\00\00\10\00\80\00\00\80_\9B4\FB\09\01\02\09\01\00%\06JL_ota\00\00", section ".bt_stack_const", align 1, !dbg !193
@sdp_dueros_spp_service_data = hidden local_unnamed_addr constant [96 x i8] c"6\00[\09\00\00\0A\00\01\00\04\09\00\016\00\11\1CQ\DB\A1\09[\A9I\81\96\B7j\FE\13 \93\DE\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\02\09\00\096\00\176\00\14\1CQ\DB\A1\09[\A9I\81\96\B7j\FE\13 \93\DE\09\01\02\09\01\00%\06JL_SPP\00\00", section ".bt_stack_const", align 1, !dbg !198
@sdp_tme_service_data = hidden local_unnamed_addr constant [96 x i8] c"6\00[\09\00\00\0A\00\01\00\04\09\00\016\00\11\1C\00\00\FD\90\00\00\10\00\80\00\00\80_\9B4\FB\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\02\09\00\096\00\176\00\14\1C\00\00\FD\90\00\00\10\00\80\00\00\80_\9B4\FB\09\01\00\09\01\00%\06JL_SPP\00\00", section ".bt_stack_const", align 1, !dbg !200
@sdp_weixin_spp_service_data = hidden local_unnamed_addr constant [96 x i8] c"6\00[\09\00\00\0A\00\01\00\04\09\00\016\00\11\1C\8AH*\08U\07B\AC\B6s\A8\8D\F4\8B?\C7\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\02\09\00\096\00\176\00\14\1C\8AH*\08U\07B\AC\B6s\A8\8D\F4\8B?\C7\09\01\00\09\01\00%\06JL_SPP\00\00", section ".bt_stack_const", align 1, !dbg !202
@sdp_gma_spp_service_data = hidden local_unnamed_addr constant [96 x i8] c"6\00[\09\00\00\0A\00\01\00\04\09\00\016\00\11\1C\EB>\0A\F3W\F4G\89\ABU\86P\85\80)j\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\02\09\00\096\00\176\00\14\1C\EB>\0A\F3W\F4G\89\ABU\86P\85\80)j\09\01\00\09\01\00%\06JL_SPP\00\00", section ".bt_stack_const", align 1, !dbg !204
@sdp_ama_spp_service_data = hidden local_unnamed_addr constant [112 x i8] c"6\00d\09\00\00\0A\00\01\00\04\09\00\016\00\11\1C\93\1C~\8AT\0FF\86\B7\98\E8\DF\0A*\D9\F7\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\02\09\00\056\00\03\19\10\02\09\00\096\00\176\00\14\1C\93\1C~\8AT\0FF\86\B7\98\E8\DF\0A*\D9\F7\09\01\00\09\01\00%\06JL_SPP\00\00\00\00\00\00\00\00\00", section ".bt_stack_const", align 1, !dbg !206
@sdp_hid_service_data = hidden constant [271 x i8] c"6\01\0A\09\00\00\0A\00\01\00\06\09\00\016\00\03\19\11$\09\00\046\00\0F6\00\06\19\01\00\09\00\116\00\03\19\00\11\09\00\096\00\096\00\06\19\11$\09\01\00\09\00\0D6\00\126\00\0F6\00\06\19\01\00\09\00\136\00\03\19\00\11\09\01\00%\06JL_HID\09\01\01%\07hid key\09\02\01\09\01\11\09\02\02\08@\09\02\03\08!\09\02\04(\01\09\02\05(\01\09\02\066\00X6\00U\08\22%Q\05\0C\09\01\A1\01\85\02u\10\95\02\15\01&\8C\02\19\01*\8C\02\81\00\C0\05\0C\09\01\A1\01\85\03\15\00%\01u\01\95\0D\0A#\02\0A!\02\0A\B1\01\09\B8\09\B6\09\CD\09\B5\09\E2\09\EA\09\E9\090\0A\07\03\0A\08\03\81\02\95\01u\0B\81\03\C0\09\02\076\00\096\00\06\09\04\09\09\01\00\09\02\08(\00\09\02\09(\01\09\02\0A(\01\09\02\0B\09\01\00\09\02\0D(\01\09\02\0E(\01\00\00", section ".bt_stack_const", align 1, !dbg !211
@sdp_pbap_service_data = hidden local_unnamed_addr constant [54 x i8] c"6\001\09\00\00\0A\00\01\00\08\09\00\016\00\03\19\11.\09\00\096\00\096\00\06\19\110\09\01\02\09\01\00%\0CJL_Phonebook\00\00", section ".bt_stack_const", align 1, !dbg !216
@sdp_a2dp_source_service_data = hidden constant [82 x i8] c"6\00N\09\00\00\0A\00\01\00\0B\09\00\016\00\03\19\11\0A\09\00\046\00\126\00\06\19\01\00\09\00\196\00\06\19\00\19\09\01\00\09\00\096\00\096\00\06\19\11\0D\09\01\00\09\03\11\09\00\01\09\01\00%\0BJL_A2DP_SRC\00", section ".bt_stack_const", align 1, !dbg !221
@sdp_hfp_ag_service_data = hidden constant [84 x i8] c"6\00P\09\00\00\0A\00\01\00\0C\09\00\016\00\06\19\11\1F\19\12\03\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\06\09\00\096\00\096\00\06\19\11\1E\09\01\06\09\03\01\08\01\09\03\11\09\00/\09\01\00%\09JL_HFP_AG\00", section ".bt_stack_const", align 1, !dbg !226
@sdp_iap_service_data = hidden local_unnamed_addr constant [69 x i8] c"6\00B\09\00\00\0A\00\01\00\0D\09\00\016\00\11\1C\00\00\00\00\DE\CA\FA\DE\DE\CA\DE\AF\DE\CA\CA\FF\09\00\046\00\0E6\00\03\19\01\006\00\05\19\00\03\08\09\09\00\096\00\096\00\06\19\11\01\09\01\00", section ".bt_stack_const", align 1, !dbg !231
@.str.20 = private unnamed_addr constant [11 x i8] c"Apple,Inc.\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"<BT-log> :other company id %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"<BT-log> :service_buffer %d overflow!!!,need_size= %d\0A\0A\00", align 1
@config_asser = external local_unnamed_addr constant i32, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.24 = private unnamed_addr constant [118 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c\00", align 1
@str = private unnamed_addr constant [36 x i8] c"ASSERT-FAILD: 0 service_overflow!!!\00"

; Function Attrs: nounwind optsize
define hidden void @sdp_normalize_uuid(i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !240 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %1, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sdp_bluetooth_base_uuid, i32 0, i32 0), i32 16, i32 1, i1 false), !dbg !248
  tail call void @net_store_32(i8* %0, i16 zeroext 0, i32 %1) #9, !dbg !249
  ret void, !dbg !250
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: optsize
declare void @net_store_32(i8*, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize readonly
define hidden i32 @de_get_size_type(i8* nocapture readonly) local_unnamed_addr #4 section ".bt_stack_code" !dbg !251 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !256
  %2 = load i8, i8* %0, align 1, !dbg !257, !tbaa !258
  %3 = and i8 %2, 7, !dbg !261
  %4 = zext i8 %3 to i32, !dbg !261
  ret i32 %4, !dbg !262
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @de_get_element_type(i8* nocapture readonly) local_unnamed_addr #4 section ".bt_stack_code" !dbg !263 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !268
  %2 = load i8, i8* %0, align 1, !dbg !269, !tbaa !258
  %3 = zext i8 %2 to i32, !dbg !269
  %4 = lshr i32 %3, 3, !dbg !270
  ret i32 %4, !dbg !271
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @de_get_header_size(i8* nocapture readonly) local_unnamed_addr #4 section ".bt_stack_code" !dbg !272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !279
  %2 = load i8, i8* %0, align 1, !dbg !281, !tbaa !258
  %3 = and i8 %2, 7, !dbg !282
  call void @llvm.dbg.value(metadata i32 %6, metadata !277, metadata !DIExpression()), !dbg !283
  %4 = icmp ult i8 %3, 5, !dbg !284
  br i1 %4, label %10, label %5, !dbg !286

; <label>:5:                                      ; preds = %1
  %6 = zext i8 %3 to i32, !dbg !282
  %7 = add nsw i32 %6, -5, !dbg !287
  %8 = shl i32 1, %7, !dbg !288
  %9 = add nsw i32 %8, 1, !dbg !289
  br label %10, !dbg !290

; <label>:10:                                     ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ 1, %1 ]
  ret i32 %11, !dbg !291
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @de_get_data_size(i8* nocapture readonly) local_unnamed_addr #4 section ".bt_stack_code" !dbg !292 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !294, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i32 0, metadata !295, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !300
  %2 = load i8, i8* %0, align 1, !dbg !302, !tbaa !258
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 %38, metadata !297, metadata !DIExpression()), !dbg !305
  %3 = trunc i8 %2 to i3, !dbg !306
  switch i3 %3, label %36 [
    i3 -3, label %4
    i3 -2, label %8
    i3 -1, label %17
  ], !dbg !306

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !307
  %6 = load i8, i8* %5, align 1, !dbg !307, !tbaa !258
  %7 = zext i8 %6 to i32, !dbg !307
  call void @llvm.dbg.value(metadata i32 %7, metadata !295, metadata !DIExpression()), !dbg !299
  br label %42, !dbg !309

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !310
  %10 = load i8, i8* %9, align 1, !dbg !310, !tbaa !258
  %11 = zext i8 %10 to i32, !dbg !310
  %12 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !310
  %13 = load i8, i8* %12, align 1, !dbg !310, !tbaa !258
  %14 = zext i8 %13 to i32, !dbg !310
  %15 = shl nuw nsw i32 %14, 8, !dbg !310
  %16 = or i32 %15, %11, !dbg !310
  call void @llvm.dbg.value(metadata i32 %16, metadata !295, metadata !DIExpression()), !dbg !299
  br label %42, !dbg !311

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !312
  %19 = load i8, i8* %18, align 1, !dbg !312, !tbaa !258
  %20 = zext i8 %19 to i32, !dbg !312
  %21 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !312
  %22 = load i8, i8* %21, align 1, !dbg !312, !tbaa !258
  %23 = zext i8 %22 to i32, !dbg !312
  %24 = shl nuw nsw i32 %23, 8, !dbg !312
  %25 = or i32 %24, %20, !dbg !312
  %26 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !312
  %27 = load i8, i8* %26, align 1, !dbg !312, !tbaa !258
  %28 = zext i8 %27 to i32, !dbg !312
  %29 = shl nuw nsw i32 %28, 16, !dbg !312
  %30 = or i32 %25, %29, !dbg !312
  %31 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !312
  %32 = load i8, i8* %31, align 1, !dbg !312, !tbaa !258
  %33 = zext i8 %32 to i32, !dbg !312
  %34 = shl nuw i32 %33, 24, !dbg !312
  %35 = or i32 %30, %34, !dbg !312
  call void @llvm.dbg.value(metadata i32 %35, metadata !295, metadata !DIExpression()), !dbg !299
  br label %42, !dbg !313

; <label>:36:                                     ; preds = %1
  %37 = and i8 %2, 7, !dbg !314
  %38 = zext i8 %37 to i32, !dbg !314
  %39 = icmp ult i8 %2, 8, !dbg !315
  %40 = shl i32 1, %38, !dbg !317
  %41 = select i1 %39, i32 0, i32 %40, !dbg !318
  ret i32 %41, !dbg !318

; <label>:42:                                     ; preds = %17, %8, %4
  %43 = phi i32 [ %35, %17 ], [ %16, %8 ], [ %7, %4 ]
  ret i32 %43, !dbg !319
}

; Function Attrs: nounwind optsize readonly
define hidden i32 @de_get_len(i8* nocapture readonly) local_unnamed_addr #4 section ".bt_stack_code" !dbg !320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !326
  %2 = load i8, i8* %0, align 1, !dbg !328, !tbaa !258
  %3 = and i8 %2, 7, !dbg !329
  %4 = icmp ult i8 %3, 5, !dbg !330
  br i1 %4, label %10, label %5, !dbg !331

; <label>:5:                                      ; preds = %1
  %6 = zext i8 %3 to i32, !dbg !329
  %7 = add nsw i32 %6, -5, !dbg !332
  %8 = shl i32 1, %7, !dbg !333
  %9 = add nsw i32 %8, 1, !dbg !334
  br label %10, !dbg !335

; <label>:10:                                     ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ 1, %1 ]
  %12 = tail call i32 @de_get_data_size(i8* nonnull %0) #10, !dbg !336
  %13 = add nsw i32 %12, %11, !dbg !338
  ret i32 %13, !dbg !339
}

; Function Attrs: nounwind optsize
define hidden i32 @de_get_normalized_uuid(i8*, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !340 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !344, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i8* %1, metadata !345, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %1, metadata !267, metadata !DIExpression()), !dbg !351
  %3 = load i8, i8* %1, align 1, !dbg !353, !tbaa !258
  %4 = and i8 %3, -8, !dbg !354
  %5 = icmp eq i8 %4, 24, !dbg !354
  br i1 %5, label %6, label %36, !dbg !356

; <label>:6:                                      ; preds = %2
  %7 = trunc i8 %3 to i3, !dbg !357
  switch i3 %7, label %36 [
    i3 1, label %8
    i3 2, label %12
    i3 -4, label %26
  ], !dbg !357

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !358
  %10 = load i8, i8* %9, align 1, !dbg !358, !tbaa !258
  %11 = zext i8 %10 to i32, !dbg !358
  br label %28, !dbg !360

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !361
  %14 = load i8, i8* %13, align 1, !dbg !361, !tbaa !258
  %15 = zext i8 %14 to i32, !dbg !361
  %16 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !361
  %17 = load i8, i8* %16, align 1, !dbg !361, !tbaa !258
  %18 = zext i8 %17 to i32, !dbg !361
  %19 = shl nuw nsw i32 %18, 8, !dbg !361
  %20 = or i32 %19, %15, !dbg !361
  %21 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !361
  %22 = load i8, i8* %21, align 1, !dbg !361, !tbaa !258
  %23 = zext i8 %22 to i32, !dbg !361
  %24 = shl nuw nsw i32 %23, 16, !dbg !361
  %25 = or i32 %20, %24, !dbg !361
  call void @llvm.dbg.value(metadata i32 %35, metadata !346, metadata !DIExpression()), !dbg !362
  br label %28, !dbg !363

; <label>:26:                                     ; preds = %6
  %27 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !364
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %27, i32 16, i32 1, i1 false), !dbg !365
  br label %36, !dbg !366

; <label>:28:                                     ; preds = %12, %8
  %29 = phi i32 [ 24, %12 ], [ 8, %8 ]
  %30 = phi i32 [ %25, %12 ], [ %11, %8 ]
  %31 = getelementptr inbounds i8, i8* %1, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !258
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, %29
  %35 = or i32 %34, %30
  call void @llvm.dbg.value(metadata i32 %35, metadata !346, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i8* %0, metadata !244, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 %35, metadata !245, metadata !DIExpression()), !dbg !369
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sdp_bluetooth_base_uuid, i32 0, i32 0), i32 16, i32 1, i1 false) #11, !dbg !370
  tail call void @net_store_32(i8* %0, i16 zeroext 0, i32 %35) #9, !dbg !371
  br label %36, !dbg !372

; <label>:36:                                     ; preds = %28, %26, %6, %2
  %37 = phi i32 [ 1, %26 ], [ 1, %28 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %37, !dbg !373
}

; Function Attrs: nounwind optsize
define hidden void @de_store_descriptor_with_len(i8*, i32, i32, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %1, metadata !379, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i32 %2, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 %3, metadata !381, metadata !DIExpression()), !dbg !385
  %5 = shl i32 %1, 3, !dbg !386
  %6 = or i32 %5, %2, !dbg !387
  %7 = trunc i32 %6 to i8, !dbg !388
  store i8 %7, i8* %0, align 1, !dbg !389, !tbaa !258
  switch i32 %2, label %14 [
    i32 5, label %8
    i32 6, label %11
    i32 7, label %13
  ], !dbg !390

; <label>:8:                                      ; preds = %4
  %9 = trunc i32 %3 to i8, !dbg !391
  %10 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !393
  store i8 %9, i8* %10, align 1, !dbg !394, !tbaa !258
  br label %14, !dbg !395

; <label>:11:                                     ; preds = %4
  %12 = trunc i32 %3 to i16, !dbg !396
  tail call void @net_store_16(i8* nonnull %0, i16 zeroext 1, i16 zeroext %12) #9, !dbg !397
  br label %14, !dbg !398

; <label>:13:                                     ; preds = %4
  tail call void @net_store_32(i8* nonnull %0, i16 zeroext 1, i32 %3) #9, !dbg !399
  br label %14, !dbg !400

; <label>:14:                                     ; preds = %13, %11, %8, %4
  ret void, !dbg !401
}

; Function Attrs: optsize
declare void @net_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @de_create_sequence(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !402 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i32 6, metadata !379, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 6, metadata !380, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !412
  store i8 54, i8* %0, align 1, !dbg !413, !tbaa !258
  tail call void @net_store_16(i8* nonnull %0, i16 zeroext 1, i16 zeroext 0) #9, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: nounwind optsize
define hidden i8* @de_push_sequence(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !420, metadata !DIExpression()), !dbg !422
  %2 = tail call i32 @de_get_len(i8* %0) #10, !dbg !423
  call void @llvm.dbg.value(metadata i32 %2, metadata !421, metadata !DIExpression()), !dbg !424
  %3 = getelementptr inbounds i8, i8* %0, i32 %2, !dbg !425
  call void @llvm.dbg.value(metadata i8* %3, metadata !378, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i32 6, metadata !379, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i32 6, metadata !380, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !430
  store i8 54, i8* %3, align 1, !dbg !431, !tbaa !258
  tail call void @net_store_16(i8* nonnull %3, i16 zeroext 1, i16 zeroext 0) #9, !dbg !432
  ret i8* %3, !dbg !433
}

; Function Attrs: nounwind optsize
define hidden void @de_pop_sequence(i8*, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !438, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %1, metadata !439, metadata !DIExpression()), !dbg !443
  %3 = tail call i32 @de_get_len(i8* %1) #10, !dbg !444
  call void @llvm.dbg.value(metadata i32 %3, metadata !440, metadata !DIExpression()), !dbg !445
  %4 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !446
  %5 = load i8, i8* %4, align 1, !dbg !446, !tbaa !258
  %6 = zext i8 %5 to i32, !dbg !446
  %7 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !446
  %8 = load i8, i8* %7, align 1, !dbg !446, !tbaa !258
  %9 = zext i8 %8 to i32, !dbg !446
  %10 = shl nuw nsw i32 %9, 8, !dbg !446
  %11 = or i32 %10, %6, !dbg !446
  call void @llvm.dbg.value(metadata i32 %11, metadata !441, metadata !DIExpression()), !dbg !447
  %12 = add nsw i32 %11, %3, !dbg !448
  %13 = trunc i32 %12 to i16, !dbg !449
  tail call void @net_store_16(i8* %0, i16 zeroext 1, i16 zeroext %13) #9, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: nounwind optsize
define hidden void @de_add_number(i8*, i32, i32, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !452 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !454, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 %1, metadata !455, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata i32 %2, metadata !456, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i32 %3, metadata !457, metadata !DIExpression()), !dbg !463
  %5 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !464
  %6 = load i8, i8* %5, align 1, !dbg !464, !tbaa !258
  %7 = zext i8 %6 to i32, !dbg !464
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !464
  %9 = load i8, i8* %8, align 1, !dbg !464, !tbaa !258
  %10 = zext i8 %9 to i32, !dbg !464
  %11 = shl nuw nsw i32 %10, 8, !dbg !464
  %12 = or i32 %11, %7, !dbg !464
  call void @llvm.dbg.value(metadata i32 %12, metadata !458, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i32 1, metadata !459, metadata !DIExpression()), !dbg !466
  %13 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !467
  %14 = getelementptr inbounds i8, i8* %13, i32 %12, !dbg !468
  call void @llvm.dbg.value(metadata i8* %14, metadata !469, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i32 %1, metadata !474, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i32 %2, metadata !475, metadata !DIExpression()), !dbg !479
  %15 = shl i32 %1, 3, !dbg !480
  %16 = or i32 %15, %2, !dbg !481
  %17 = trunc i32 %16 to i8, !dbg !482
  store i8 %17, i8* %14, align 1, !dbg !483, !tbaa !258
  switch i32 %2, label %31 [
    i32 0, label %18
    i32 1, label %24
    i32 2, label %28
  ], !dbg !484

; <label>:18:                                     ; preds = %4
  %19 = icmp eq i32 %1, 0, !dbg !485
  br i1 %19, label %31, label %20, !dbg !488

; <label>:20:                                     ; preds = %18
  %21 = trunc i32 %3 to i8, !dbg !489
  %22 = add nuw nsw i32 %12, 4, !dbg !491
  %23 = getelementptr inbounds i8, i8* %0, i32 %22, !dbg !492
  store i8 %21, i8* %23, align 1, !dbg !493, !tbaa !258
  call void @llvm.dbg.value(metadata i32 2, metadata !459, metadata !DIExpression()), !dbg !466
  br label %31, !dbg !494

; <label>:24:                                     ; preds = %4
  %25 = add nuw nsw i32 %12, 4, !dbg !495
  %26 = trunc i32 %25 to i16, !dbg !496
  %27 = trunc i32 %3 to i16, !dbg !497
  tail call void @net_store_16(i8* nonnull %0, i16 zeroext %26, i16 zeroext %27) #9, !dbg !498
  call void @llvm.dbg.value(metadata i32 3, metadata !459, metadata !DIExpression()), !dbg !466
  br label %31, !dbg !499

; <label>:28:                                     ; preds = %4
  %29 = add nuw nsw i32 %12, 4, !dbg !500
  %30 = trunc i32 %29 to i16, !dbg !501
  tail call void @net_store_32(i8* nonnull %0, i16 zeroext %30, i32 %3) #9, !dbg !502
  call void @llvm.dbg.value(metadata i32 5, metadata !459, metadata !DIExpression()), !dbg !466
  br label %31, !dbg !503

; <label>:31:                                     ; preds = %28, %24, %20, %18, %4
  %32 = phi i32 [ 1, %4 ], [ 5, %28 ], [ 3, %24 ], [ 2, %20 ], [ 1, %18 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !459, metadata !DIExpression()), !dbg !466
  %33 = add nuw nsw i32 %32, %12, !dbg !504
  %34 = trunc i32 %33 to i16, !dbg !505
  tail call void @net_store_16(i8* nonnull %0, i16 zeroext 1, i16 zeroext %34) #9, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: nounwind optsize
define hidden void @de_add_data(i8*, i32, i16 zeroext, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !508 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !512, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32 %1, metadata !513, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i16 %2, metadata !514, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %3, metadata !515, metadata !DIExpression()), !dbg !520
  %5 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !521
  %6 = load i8, i8* %5, align 1, !dbg !521, !tbaa !258
  %7 = zext i8 %6 to i32, !dbg !521
  %8 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !521
  %9 = load i8, i8* %8, align 1, !dbg !521, !tbaa !258
  %10 = zext i8 %9 to i32, !dbg !521
  %11 = shl nuw nsw i32 %10, 8, !dbg !521
  %12 = or i32 %11, %7, !dbg !521
  call void @llvm.dbg.value(metadata i32 %12, metadata !516, metadata !DIExpression()), !dbg !522
  %13 = zext i16 %2 to i32, !dbg !523
  %14 = icmp ugt i16 %2, 255, !dbg !525
  %15 = getelementptr inbounds i8, i8* %0, i32 3
  %16 = getelementptr inbounds i8, i8* %15, i32 %12
  %17 = trunc i32 %1 to i8, !dbg !526
  %18 = shl i8 %17, 3, !dbg !526
  br i1 %14, label %19, label %21, !dbg !529

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %16, metadata !378, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 %1, metadata !379, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 6, metadata !380, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i32 %13, metadata !381, metadata !DIExpression()), !dbg !533
  %20 = or i8 %18, 6, !dbg !526
  store i8 %20, i8* %16, align 1, !dbg !534, !tbaa !258
  tail call void @net_store_16(i8* nonnull %16, i16 zeroext 1, i16 zeroext %2) #9, !dbg !535
  br label %25, !dbg !536

; <label>:21:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %16, metadata !378, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i32 %1, metadata !379, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 5, metadata !380, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %13, metadata !381, metadata !DIExpression()), !dbg !542
  %22 = or i8 %18, 5, !dbg !543
  store i8 %22, i8* %16, align 1, !dbg !544, !tbaa !258
  %23 = trunc i16 %2 to i8, !dbg !545
  %24 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !546
  store i8 %23, i8* %24, align 1, !dbg !547, !tbaa !258
  call void @llvm.dbg.value(metadata i32 %27, metadata !516, metadata !DIExpression()), !dbg !522
  br label %25

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i32 [ 2, %21 ], [ 3, %19 ]
  %27 = add nuw nsw i32 %26, %12
  call void @llvm.dbg.value(metadata i32 %27, metadata !516, metadata !DIExpression()), !dbg !522
  %28 = getelementptr inbounds i8, i8* %15, i32 %27, !dbg !548
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %3, i32 %13, i32 1, i1 false), !dbg !549
  %29 = add nuw nsw i32 %27, %13, !dbg !550
  call void @llvm.dbg.value(metadata i32 %29, metadata !516, metadata !DIExpression()), !dbg !522
  %30 = trunc i32 %29 to i16, !dbg !551
  tail call void @net_store_16(i8* nonnull %0, i16 zeroext 1, i16 zeroext %30) #9, !dbg !552
  ret void, !dbg !553
}

; Function Attrs: nounwind optsize
define hidden void @de_add_uuid128(i8*, i8* nocapture readonly) local_unnamed_addr #0 section ".bt_stack_code" !dbg !554 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !556, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %1, metadata !557, metadata !DIExpression()), !dbg !560
  %3 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !561
  %4 = load i8, i8* %3, align 1, !dbg !561, !tbaa !258
  %5 = zext i8 %4 to i32, !dbg !561
  %6 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !561
  %7 = load i8, i8* %6, align 1, !dbg !561, !tbaa !258
  %8 = zext i8 %7 to i32, !dbg !561
  %9 = shl nuw nsw i32 %8, 8, !dbg !561
  %10 = or i32 %9, %5, !dbg !561
  call void @llvm.dbg.value(metadata i32 %10, metadata !558, metadata !DIExpression()), !dbg !562
  %11 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !563
  %12 = getelementptr inbounds i8, i8* %11, i32 %10, !dbg !564
  call void @llvm.dbg.value(metadata i8* %12, metadata !469, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 3, metadata !474, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32 4, metadata !475, metadata !DIExpression()), !dbg !568
  store i8 28, i8* %12, align 1, !dbg !569, !tbaa !258
  %13 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !570
  %14 = getelementptr inbounds i8, i8* %13, i32 %10, !dbg !571
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 16, i32 1, i1 false), !dbg !572
  %15 = add nuw nsw i32 %10, 17, !dbg !573
  %16 = trunc i32 %15 to i16, !dbg !574
  tail call void @net_store_16(i8* %0, i16 zeroext 1, i16 zeroext %16) #9, !dbg !575
  ret void, !dbg !576
}

; Function Attrs: nounwind optsize readnone
define hidden void @sdp_add_attribute(i8* nocapture, i16 zeroext, i8 zeroext) local_unnamed_addr #5 section ".bt_stack_code" !dbg !577 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !581, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i16 %1, metadata !582, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8 %2, metadata !583, metadata !DIExpression()), !dbg !586
  ret void, !dbg !587
}

; Function Attrs: nounwind optsize
define hidden i32 @sdp_attribute_list_constains_id(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !588 {
  %3 = alloca %struct.sdp_context_attributeID_search, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !592, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i16 %1, metadata !593, metadata !DIExpression()), !dbg !596
  %4 = bitcast %struct.sdp_context_attributeID_search* %3 to i8*, !dbg !597
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !597
  %5 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %3, i32 0, i32 0, !dbg !598
  store i32 0, i32* %5, align 4, !dbg !599, !tbaa !600
  %6 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %3, i32 0, i32 1, !dbg !604
  store i16 %1, i16* %6, align 4, !dbg !605, !tbaa !606
  call fastcc void @de_traverse_sequence(i8* %0, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_attributeID_search, i8* nonnull %4) #10, !dbg !607
  %7 = load i32, i32* %5, align 4, !dbg !608, !tbaa !600
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !609
  ret i32 %7, !dbg !610
}

; Function Attrs: nounwind optsize
define internal fastcc void @de_traverse_sequence(i8*, i32 (i8*, i32, i32, i8*)* nocapture, i8*) unnamed_addr #0 section ".bt_stack_code" !dbg !611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !619, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*)* %1, metadata !620, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata i8* %2, metadata !621, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !632
  %4 = load i8, i8* %0, align 1, !dbg !634, !tbaa !258
  %5 = and i8 %4, -8, !dbg !635
  %6 = icmp eq i8 %5, 48, !dbg !635
  br i1 %6, label %7, label %36, !dbg !637

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !640
  %8 = and i8 %4, 7, !dbg !642
  %9 = icmp ult i8 %8, 5, !dbg !643
  br i1 %9, label %15, label %10, !dbg !644

; <label>:10:                                     ; preds = %7
  %11 = zext i8 %8 to i32, !dbg !642
  %12 = add nsw i32 %11, -5, !dbg !645
  %13 = shl i32 1, %12, !dbg !646
  %14 = add nsw i32 %13, 1, !dbg !647
  br label %15, !dbg !648

; <label>:15:                                     ; preds = %10, %7
  %16 = phi i32 [ %14, %10 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !622, metadata !DIExpression()), !dbg !649
  %17 = tail call i32 @de_get_len(i8* nonnull %0) #10, !dbg !650
  call void @llvm.dbg.value(metadata i32 %17, metadata !623, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32 %16, metadata !622, metadata !DIExpression()), !dbg !649
  %18 = icmp slt i32 %16, %17, !dbg !652
  br i1 %18, label %19, label %36, !dbg !654

; <label>:19:                                     ; preds = %15
  br label %20, !dbg !655

; <label>:20:                                     ; preds = %31, %19
  %21 = phi i32 [ %33, %31 ], [ %16, %19 ]
  %22 = getelementptr inbounds i8, i8* %0, i32 %21, !dbg !655
  call void @llvm.dbg.value(metadata i8* %22, metadata !267, metadata !DIExpression()), !dbg !656
  %23 = load i8, i8* %22, align 1, !dbg !658, !tbaa !258
  %24 = zext i8 %23 to i32, !dbg !658
  %25 = lshr i32 %24, 3, !dbg !659
  call void @llvm.dbg.value(metadata i32 %25, metadata !625, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i8* %22, metadata !255, metadata !DIExpression()), !dbg !661
  %26 = and i8 %23, 7, !dbg !663
  %27 = zext i8 %26 to i32, !dbg !663
  call void @llvm.dbg.value(metadata i32 %27, metadata !627, metadata !DIExpression()), !dbg !664
  %28 = tail call i32 %1(i8* %22, i32 %25, i32 %27, i8* %2) #9, !dbg !665
  %29 = trunc i32 %28 to i8, !dbg !665
  call void @llvm.dbg.value(metadata i8 %29, metadata !628, metadata !DIExpression()), !dbg !666
  %30 = icmp eq i8 %29, 0, !dbg !667
  br i1 %30, label %31, label %35, !dbg !669

; <label>:31:                                     ; preds = %20
  %32 = tail call i32 @de_get_len(i8* %22) #10, !dbg !670
  %33 = add nsw i32 %32, %21, !dbg !671
  call void @llvm.dbg.value(metadata i32 %33, metadata !622, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i32 %33, metadata !622, metadata !DIExpression()), !dbg !649
  %34 = icmp slt i32 %33, %17, !dbg !652
  br i1 %34, label %20, label %35, !dbg !654

; <label>:35:                                     ; preds = %31, %20
  br label %36, !dbg !672

; <label>:36:                                     ; preds = %35, %15, %3
  ret void, !dbg !672
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_attributeID_search(i8* nocapture readonly, i32, i32, i8* nocapture) #0 section ".bt_stack_code" !dbg !674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 %1, metadata !677, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %2, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8* %3, metadata !679, metadata !DIExpression()), !dbg !684
  %5 = icmp eq i32 %1, 1, !dbg !685
  br i1 %5, label %6, label %49, !dbg !687

; <label>:6:                                      ; preds = %4
  switch i32 %2, label %49 [
    i32 1, label %7
    i32 2, label %23
  ], !dbg !688

; <label>:7:                                      ; preds = %6
  %8 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !689
  %9 = load i8, i8* %8, align 1, !dbg !689, !tbaa !258
  %10 = zext i8 %9 to i32, !dbg !689
  %11 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !689
  %12 = load i8, i8* %11, align 1, !dbg !689, !tbaa !258
  %13 = zext i8 %12 to i32, !dbg !689
  %14 = shl nuw nsw i32 %13, 8, !dbg !689
  %15 = or i32 %14, %10, !dbg !689
  %16 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !692
  %17 = bitcast i8* %16 to i16*, !dbg !692
  %18 = load i16, i16* %17, align 4, !dbg !692, !tbaa !606
  %19 = zext i16 %18 to i32, !dbg !693
  %20 = icmp eq i32 %15, %19, !dbg !694
  br i1 %20, label %21, label %49, !dbg !695

; <label>:21:                                     ; preds = %7
  %22 = bitcast i8* %3 to i32*, !dbg !696
  store i32 1, i32* %22, align 4, !dbg !698, !tbaa !600
  br label %49, !dbg !699

; <label>:23:                                     ; preds = %6
  %24 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !700
  %25 = load i8, i8* %24, align 1, !dbg !700, !tbaa !258
  %26 = zext i8 %25 to i32, !dbg !700
  %27 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !700
  %28 = load i8, i8* %27, align 1, !dbg !700, !tbaa !258
  %29 = zext i8 %28 to i32, !dbg !700
  %30 = shl nuw nsw i32 %29, 8, !dbg !700
  %31 = or i32 %30, %26, !dbg !700
  %32 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !702
  %33 = bitcast i8* %32 to i16*, !dbg !702
  %34 = load i16, i16* %33, align 4, !dbg !702, !tbaa !606
  %35 = zext i16 %34 to i32, !dbg !703
  %36 = icmp ugt i32 %31, %35, !dbg !704
  br i1 %36, label %49, label %37, !dbg !705

; <label>:37:                                     ; preds = %23
  %38 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !706
  %39 = load i8, i8* %38, align 1, !dbg !706, !tbaa !258
  %40 = zext i8 %39 to i32, !dbg !706
  %41 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !706
  %42 = load i8, i8* %41, align 1, !dbg !706, !tbaa !258
  %43 = zext i8 %42 to i32, !dbg !706
  %44 = shl nuw nsw i32 %43, 8, !dbg !706
  %45 = or i32 %44, %40, !dbg !706
  %46 = icmp ugt i32 %35, %45, !dbg !708
  br i1 %46, label %49, label %47, !dbg !709

; <label>:47:                                     ; preds = %37
  %48 = bitcast i8* %3 to i32*, !dbg !711
  store i32 1, i32* %48, align 4, !dbg !713, !tbaa !600
  br label %49, !dbg !714

; <label>:49:                                     ; preds = %47, %37, %23, %21, %7, %6, %4
  %50 = phi i32 [ 1, %47 ], [ 1, %21 ], [ 0, %4 ], [ 0, %37 ], [ 0, %23 ], [ 0, %6 ], [ 0, %7 ]
  ret i32 %50, !dbg !715
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @sdp_append_attributes_in_attributeIDList(i8*, i8*, i16 zeroext, i16 zeroext, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !716 {
  %6 = alloca %struct.sdp_context_append_attributes, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !720, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8* %1, metadata !721, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i16 %2, metadata !722, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i16 %3, metadata !723, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8* %4, metadata !724, metadata !DIExpression()), !dbg !730
  %7 = bitcast %struct.sdp_context_append_attributes* %6 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #11, !dbg !731
  %8 = getelementptr inbounds %struct.sdp_context_append_attributes, %struct.sdp_context_append_attributes* %6, i32 0, i32 0, !dbg !732
  store i8* %4, i8** %8, align 4, !dbg !733, !tbaa !734
  %9 = getelementptr inbounds %struct.sdp_context_append_attributes, %struct.sdp_context_append_attributes* %6, i32 0, i32 2, !dbg !737
  store i16 %3, i16* %9, align 2, !dbg !738, !tbaa !739
  %10 = getelementptr inbounds %struct.sdp_context_append_attributes, %struct.sdp_context_append_attributes* %6, i32 0, i32 3, !dbg !740
  store i16 0, i16* %10, align 4, !dbg !741, !tbaa !742
  %11 = getelementptr inbounds %struct.sdp_context_append_attributes, %struct.sdp_context_append_attributes* %6, i32 0, i32 1, !dbg !743
  store i16 %2, i16* %11, align 4, !dbg !744, !tbaa !745
  %12 = getelementptr inbounds %struct.sdp_context_append_attributes, %struct.sdp_context_append_attributes* %6, i32 0, i32 4, !dbg !746
  store i8* %1, i8** %12, align 4, !dbg !747, !tbaa !748
  call fastcc void @sdp_attribute_list_traverse_sequence(i8* %0, i32 (i16, i8*, i32, i32, i8*)* nonnull @sdp_traversal_append_attributes, i8* nonnull %7) #10, !dbg !749
  %13 = load i16, i16* %10, align 4, !dbg !750, !tbaa !742
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #11, !dbg !751
  ret i16 %13, !dbg !752
}

; Function Attrs: nounwind optsize
define internal fastcc void @sdp_attribute_list_traverse_sequence(i8*, i32 (i16, i8*, i32, i32, i8*)* nocapture, i8*) unnamed_addr #0 section ".bt_stack_code" !dbg !753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !761, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i32 (i16, i8*, i32, i32, i8*)* %1, metadata !762, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %2, metadata !763, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !777
  %4 = load i8, i8* %0, align 1, !dbg !779, !tbaa !258
  %5 = and i8 %4, -8, !dbg !780
  %6 = icmp eq i8 %5, 48, !dbg !780
  br i1 %6, label %7, label %53, !dbg !782

; <label>:7:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !785
  %8 = and i8 %4, 7, !dbg !787
  %9 = icmp ult i8 %8, 5, !dbg !788
  br i1 %9, label %15, label %10, !dbg !789

; <label>:10:                                     ; preds = %7
  %11 = zext i8 %8 to i32, !dbg !787
  %12 = add nsw i32 %11, -5, !dbg !790
  %13 = shl i32 1, %12, !dbg !791
  %14 = add nsw i32 %13, 1, !dbg !792
  br label %15, !dbg !793

; <label>:15:                                     ; preds = %10, %7
  %16 = phi i32 [ %14, %10 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !764, metadata !DIExpression()), !dbg !794
  %17 = tail call i32 @de_get_len(i8* nonnull %0) #10, !dbg !795
  call void @llvm.dbg.value(metadata i32 %17, metadata !765, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 %16, metadata !764, metadata !DIExpression()), !dbg !794
  %18 = icmp slt i32 %16, %17, !dbg !797
  br i1 %18, label %19, label %53, !dbg !799

; <label>:19:                                     ; preds = %15
  br label %20, !dbg !800

; <label>:20:                                     ; preds = %48, %19
  %21 = phi i32 [ %50, %48 ], [ %16, %19 ]
  %22 = getelementptr inbounds i8, i8* %0, i32 %21, !dbg !800
  call void @llvm.dbg.value(metadata i8* %22, metadata !267, metadata !DIExpression()), !dbg !801
  %23 = load i8, i8* %22, align 1, !dbg !803, !tbaa !258
  call void @llvm.dbg.value(metadata i8* %22, metadata !255, metadata !DIExpression()), !dbg !804
  %24 = icmp eq i8 %23, 9, !dbg !806
  br i1 %24, label %25, label %52, !dbg !806

; <label>:25:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i16 %38, metadata !767, metadata !DIExpression()), !dbg !808
  %26 = add nsw i32 %21, 3, !dbg !809
  call void @llvm.dbg.value(metadata i32 %26, metadata !764, metadata !DIExpression()), !dbg !794
  %27 = icmp slt i32 %26, %17, !dbg !810
  br i1 %27, label %28, label %52, !dbg !812

; <label>:28:                                     ; preds = %25
  %29 = add nsw i32 %21, 2, !dbg !813
  %30 = getelementptr inbounds i8, i8* %0, i32 %29, !dbg !813
  %31 = load i8, i8* %30, align 1, !dbg !813, !tbaa !258
  %32 = add nsw i32 %21, 1, !dbg !813
  %33 = getelementptr inbounds i8, i8* %0, i32 %32, !dbg !813
  %34 = load i8, i8* %33, align 1, !dbg !813, !tbaa !258
  %35 = zext i8 %31 to i16, !dbg !813
  %36 = zext i8 %34 to i16, !dbg !813
  %37 = shl nuw i16 %36, 8, !dbg !813
  %38 = or i16 %37, %35, !dbg !813
  %39 = getelementptr inbounds i8, i8* %0, i32 %26, !dbg !814
  call void @llvm.dbg.value(metadata i8* %39, metadata !267, metadata !DIExpression()), !dbg !815
  %40 = load i8, i8* %39, align 1, !dbg !817, !tbaa !258
  %41 = zext i8 %40 to i32, !dbg !817
  %42 = lshr i32 %41, 3, !dbg !818
  call void @llvm.dbg.value(metadata i32 %42, metadata !770, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8* %39, metadata !255, metadata !DIExpression()), !dbg !820
  %43 = and i8 %40, 7, !dbg !822
  %44 = zext i8 %43 to i32, !dbg !822
  call void @llvm.dbg.value(metadata i32 %44, metadata !771, metadata !DIExpression()), !dbg !823
  %45 = tail call i32 %1(i16 zeroext %38, i8* %39, i32 %42, i32 %44, i8* %2) #9, !dbg !824
  %46 = trunc i32 %45 to i8, !dbg !824
  call void @llvm.dbg.value(metadata i8 %46, metadata !769, metadata !DIExpression()), !dbg !825
  %47 = icmp eq i8 %46, 0, !dbg !826
  br i1 %47, label %48, label %52, !dbg !828

; <label>:48:                                     ; preds = %28
  %49 = tail call i32 @de_get_len(i8* %39) #10, !dbg !829
  %50 = add nsw i32 %49, %26, !dbg !830
  call void @llvm.dbg.value(metadata i32 %50, metadata !764, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i32 %50, metadata !764, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i32 %50, metadata !764, metadata !DIExpression()), !dbg !794
  %51 = icmp slt i32 %50, %17, !dbg !797
  br i1 %51, label %20, label %52, !dbg !799

; <label>:52:                                     ; preds = %48, %28, %25, %20
  br label %53, !dbg !831

; <label>:53:                                     ; preds = %52, %15, %3
  ret void, !dbg !831
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_append_attributes(i16 zeroext, i8* nocapture readonly, i32, i32, i8* nocapture readonly) #0 section ".bt_stack_code" !dbg !833 {
  %6 = alloca %struct.sdp_context_attributeID_search, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !835, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i8* %1, metadata !836, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i32 %2, metadata !837, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i32 %3, metadata !838, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8* %4, metadata !839, metadata !DIExpression()), !dbg !849
  %7 = getelementptr inbounds i8, i8* %4, i32 12, !dbg !850
  %8 = bitcast i8* %7 to i8**, !dbg !850
  %9 = load i8*, i8** %8, align 4, !dbg !850, !tbaa !748
  call void @llvm.dbg.value(metadata i8* %9, metadata !592, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i16 %0, metadata !593, metadata !DIExpression()), !dbg !853
  %10 = bitcast %struct.sdp_context_attributeID_search* %6 to i8*, !dbg !854
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !854
  %11 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %6, i32 0, i32 0, !dbg !855
  store i32 0, i32* %11, align 4, !dbg !856, !tbaa !600
  %12 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %6, i32 0, i32 1, !dbg !857
  store i16 %0, i16* %12, align 4, !dbg !858, !tbaa !606
  call fastcc void @de_traverse_sequence(i8* %9, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_attributeID_search, i8* nonnull %10) #9, !dbg !859
  %13 = load i32, i32* %11, align 4, !dbg !860, !tbaa !600
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !861
  %14 = icmp eq i32 %13, 0, !dbg !862
  br i1 %14, label %44, label %15, !dbg !863

; <label>:15:                                     ; preds = %5
  %16 = bitcast i8* %4 to i8**, !dbg !864
  %17 = load i8*, i8** %16, align 4, !dbg !864, !tbaa !734
  %18 = getelementptr inbounds i8, i8* %17, i32 2, !dbg !864
  %19 = load i8, i8* %18, align 1, !dbg !864, !tbaa !258
  %20 = zext i8 %19 to i32, !dbg !864
  %21 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !864
  %22 = load i8, i8* %21, align 1, !dbg !864, !tbaa !258
  %23 = zext i8 %22 to i32, !dbg !864
  %24 = shl nuw nsw i32 %23, 8, !dbg !864
  %25 = or i32 %24, %20, !dbg !864
  %26 = call i32 @de_get_len(i8* %1) #10, !dbg !865
  call void @llvm.dbg.value(metadata i32 %26, metadata !844, metadata !DIExpression()), !dbg !866
  %27 = add nuw nsw i32 %25, 3, !dbg !867
  %28 = add nsw i32 %26, 3, !dbg !869
  %29 = add nsw i32 %28, %27, !dbg !870
  %30 = getelementptr inbounds i8, i8* %4, i32 6, !dbg !871
  %31 = bitcast i8* %30 to i16*, !dbg !871
  %32 = load i16, i16* %31, align 2, !dbg !871, !tbaa !739
  %33 = zext i16 %32 to i32, !dbg !872
  %34 = icmp sgt i32 %29, %33, !dbg !873
  br i1 %34, label %44, label %35, !dbg !874

; <label>:35:                                     ; preds = %15
  %36 = zext i16 %0 to i32, !dbg !875
  call void @de_add_number(i8* %17, i32 1, i32 1, i32 %36) #10, !dbg !877
  %37 = load i8*, i8** %16, align 4, !dbg !878, !tbaa !734
  %38 = getelementptr inbounds i8, i8* %37, i32 3, !dbg !879
  %39 = and i32 %27, 65535, !dbg !880
  %40 = getelementptr inbounds i8, i8* %38, i32 %39, !dbg !881
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %1, i32 %26, i32 1, i1 false), !dbg !882
  %41 = load i8*, i8** %16, align 4, !dbg !883, !tbaa !734
  %42 = add i32 %27, %26, !dbg !884
  %43 = trunc i32 %42 to i16, !dbg !885
  call void @net_store_16(i8* %41, i16 zeroext 1, i16 zeroext %43) #9, !dbg !886
  br label %44

; <label>:44:                                     ; preds = %35, %15, %5
  %45 = phi i32 [ 1, %15 ], [ 0, %35 ], [ 0, %5 ]
  ret i32 %45, !dbg !887
}

; Function Attrs: nounwind optsize
define weak hidden void @sdp_callback_remote_type(i8 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !888 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !890, metadata !DIExpression()), !dbg !891
  ret void, !dbg !892
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @sdp_decode_attributes_response(i8*, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !893 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !897, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8* %1, metadata !898, metadata !DIExpression()), !dbg !900
  tail call fastcc void @sdp_attribute_list_traverse_sequence(i8* %0, i32 (i16, i8*, i32, i32, i8*)* nonnull @sdp_traversal_append_remote_attributes, i8* %1) #10, !dbg !901
  ret i16 0, !dbg !902
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_append_remote_attributes(i16 zeroext, i8* nocapture readonly, i32, i32, i8*) #0 section ".bt_stack_code" !dbg !903 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !905, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i8* %1, metadata !906, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata i32 %2, metadata !907, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i32 %3, metadata !908, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i8* %4, metadata !909, metadata !DIExpression()), !dbg !915
  %6 = icmp eq i16 %0, 513, !dbg !916
  br i1 %6, label %7, label %31, !dbg !918

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !919
  %9 = load i8, i8* %8, align 1, !dbg !919, !tbaa !258
  %10 = zext i8 %9 to i32, !dbg !919
  %11 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !919
  %12 = load i8, i8* %11, align 1, !dbg !919, !tbaa !258
  %13 = zext i8 %12 to i32, !dbg !919
  %14 = shl nuw nsw i32 %13, 8, !dbg !919
  %15 = or i32 %14, %10, !dbg !919
  %16 = icmp eq i32 %15, 76, !dbg !922
  %17 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !258
  br i1 %16, label %18, label %25, !dbg !923

; <label>:18:                                     ; preds = %7
  %19 = and i8 %17, 32, !dbg !924
  %20 = icmp eq i8 %19, 0, !dbg !924
  br i1 %20, label %23, label %21, !dbg !927

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #10, !dbg !928
  br label %23, !dbg !928

; <label>:23:                                     ; preds = %21, %18
  %24 = tail call zeroext i8 @remote_dev_company_ioctrl(i8* %4, i8 zeroext 1, i8 zeroext 2) #9, !dbg !930
  tail call void @sdp_callback_remote_type(i8 zeroext 2) #10, !dbg !931
  br label %31, !dbg !932

; <label>:25:                                     ; preds = %7
  %26 = icmp slt i8 %17, 0, !dbg !933
  br i1 %26, label %27, label %29, !dbg !936

; <label>:27:                                     ; preds = %25
  %28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 %15) #10, !dbg !937
  br label %29, !dbg !937

; <label>:29:                                     ; preds = %27, %25
  %30 = tail call zeroext i8 @remote_dev_company_ioctrl(i8* %4, i8 zeroext 1, i8 zeroext 1) #9, !dbg !939
  tail call void @sdp_callback_remote_type(i8 zeroext 1) #10, !dbg !940
  br label %31

; <label>:31:                                     ; preds = %29, %23, %5
  ret i32 0, !dbg !941
}

; Function Attrs: nounwind optsize
define weak hidden void @sdp_decode_response_info_output(i16 zeroext, i16 zeroext, i8*, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !942 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !947, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i16 %1, metadata !948, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i8* %2, metadata !949, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i32 %3, metadata !950, metadata !DIExpression()), !dbg !954
  ret void, !dbg !955
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @sdp_decode_p_attributes_response(i8*, i16 zeroext, i16 zeroext, i8* nocapture) local_unnamed_addr #0 section ".bt_stack_code" !dbg !956 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !960, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i16 %1, metadata !961, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i16 %2, metadata !962, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8* %3, metadata !963, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 0, metadata !966, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 0, metadata !968, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !969, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !1003
  %5 = load i8, i8* %0, align 1, !dbg !1005, !tbaa !258
  %6 = and i8 %5, -8, !dbg !1006
  %7 = icmp eq i8 %6, 48, !dbg !1006
  br i1 %7, label %8, label %209, !dbg !1008

; <label>:8:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !964, metadata !DIExpression()), !dbg !1009
  %9 = zext i16 %1 to i32, !dbg !1010
  call void @llvm.dbg.value(metadata i16 %1, metadata !965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !1011
  %10 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1012, !tbaa !1013
  %11 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %10, i32 0, i32 5, !dbg !1014
  store i16 0, i16* %11, align 4, !dbg !1015, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 0, metadata !964, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 0, metadata !966, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 undef, metadata !967, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8 0, metadata !968, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !969, metadata !DIExpression()), !dbg !1002
  %12 = icmp eq i16 %1, 0, !dbg !1019
  br i1 %12, label %193, label %13, !dbg !1021

; <label>:13:                                     ; preds = %8
  br label %14, !dbg !1021

; <label>:14:                                     ; preds = %187, %13
  %15 = phi i32 [ %189, %187 ], [ 0, %13 ]
  %16 = phi i32 [ %146, %187 ], [ undef, %13 ]
  br label %17, !dbg !1021

; <label>:17:                                     ; preds = %39, %14
  %18 = phi i32 [ %15, %14 ], [ %34, %39 ]
  %19 = getelementptr inbounds i8, i8* %0, i32 %18, !dbg !1022
  call void @llvm.dbg.value(metadata i8* %19, metadata !267, metadata !DIExpression()), !dbg !1023
  %20 = load i8, i8* %19, align 1, !dbg !1025, !tbaa !258
  %21 = zext i8 %20 to i32, !dbg !1025
  %22 = lshr i32 %21, 3, !dbg !1026
  call void @llvm.dbg.value(metadata i32 %22, metadata !980, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %19, metadata !255, metadata !DIExpression()), !dbg !1028
  %23 = and i8 %20, 7, !dbg !1030
  %24 = zext i8 %23 to i32, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %24, metadata !981, metadata !DIExpression()), !dbg !1031
  %25 = icmp eq i32 %22, 6, !dbg !1032
  br i1 %25, label %26, label %41, !dbg !1034

; <label>:26:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i8* %19, metadata !276, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %19, metadata !255, metadata !DIExpression()), !dbg !1038
  %27 = icmp ult i8 %23, 5, !dbg !1040
  br i1 %27, label %32, label %28, !dbg !1041

; <label>:28:                                     ; preds = %26
  %29 = add nsw i32 %24, -5, !dbg !1042
  %30 = shl i32 1, %29, !dbg !1043
  %31 = add nsw i32 %30, 1, !dbg !1044
  br label %32, !dbg !1045

; <label>:32:                                     ; preds = %28, %26
  %33 = phi i32 [ %31, %28 ], [ 1, %26 ]
  call void @llvm.dbg.value(metadata i32 %33, metadata !981, metadata !DIExpression()), !dbg !1031
  %34 = add i32 %33, %18, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %34, metadata !964, metadata !DIExpression()), !dbg !1009
  %35 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1047, !tbaa !258
  %36 = icmp slt i8 %35, 0, !dbg !1047
  br i1 %36, label %37, label %39, !dbg !1049

; <label>:37:                                     ; preds = %32
  %38 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 %33, i32 %34) #10, !dbg !1050
  br label %39, !dbg !1050

; <label>:39:                                     ; preds = %37, %32
  call void @llvm.dbg.value(metadata i32 %34, metadata !964, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 0, metadata !966, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %16, metadata !967, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8 0, metadata !968, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !969, metadata !DIExpression()), !dbg !1002
  %40 = icmp slt i32 %34, %9, !dbg !1019
  br i1 %40, label %17, label %191, !dbg !1021, !llvm.loop !1052

; <label>:41:                                     ; preds = %17
  %42 = icmp ne i32 %22, 1, !dbg !1055
  %43 = icmp ne i8 %23, 1, !dbg !1057
  %44 = or i1 %43, %42, !dbg !1059
  br i1 %44, label %192, label %45, !dbg !1059

; <label>:45:                                     ; preds = %41
  %46 = add nsw i32 %18, 1, !dbg !1060
  %47 = add nsw i32 %18, 2, !dbg !1060
  %48 = getelementptr inbounds i8, i8* %0, i32 %47, !dbg !1060
  %49 = load i8, i8* %48, align 1, !dbg !1060, !tbaa !258
  %50 = zext i8 %49 to i16, !dbg !1060
  %51 = getelementptr inbounds i8, i8* %0, i32 %46, !dbg !1060
  %52 = load i8, i8* %51, align 1, !dbg !1060, !tbaa !258
  %53 = zext i8 %52 to i16, !dbg !1060
  %54 = shl nuw i16 %53, 8, !dbg !1060
  %55 = or i16 %54, %50, !dbg !1060
  call void @llvm.dbg.value(metadata i16 %55, metadata !972, metadata !DIExpression()), !dbg !1061
  %56 = add nsw i32 %18, 3, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %56, metadata !964, metadata !DIExpression()), !dbg !1009
  %57 = icmp slt i32 %56, %9, !dbg !1063
  br i1 %57, label %58, label %192, !dbg !1065

; <label>:58:                                     ; preds = %45
  %59 = getelementptr inbounds i8, i8* %0, i32 %56, !dbg !1066
  %60 = icmp eq i16 %55, 1, !dbg !1067
  br i1 %60, label %61, label %145, !dbg !1068, !llvm.loop !1069

; <label>:61:                                     ; preds = %58
  br label %62, !dbg !1072

; <label>:62:                                     ; preds = %139, %61
  %63 = phi i32 [ %140, %139 ], [ %16, %61 ]
  %64 = phi i32 [ %141, %139 ], [ 0, %61 ]
  call void @llvm.dbg.value(metadata i32 %64, metadata !982, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %63, metadata !967, metadata !DIExpression()), !dbg !1018
  %65 = getelementptr inbounds i8, i8* %59, i32 %64, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %65, metadata !267, metadata !DIExpression()), !dbg !1075
  %66 = load i8, i8* %65, align 1, !dbg !1077, !tbaa !258
  %67 = zext i8 %66 to i32, !dbg !1077
  %68 = lshr i32 %67, 3, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %68, metadata !978, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %65, metadata !276, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i8* %65, metadata !255, metadata !DIExpression()), !dbg !1082
  %69 = and i8 %66, 7, !dbg !1084
  %70 = icmp ult i8 %69, 5, !dbg !1085
  br i1 %70, label %76, label %71, !dbg !1086

; <label>:71:                                     ; preds = %62
  %72 = zext i8 %69 to i32, !dbg !1084
  %73 = add nsw i32 %72, -5, !dbg !1087
  %74 = shl i32 1, %73, !dbg !1088
  %75 = add nsw i32 %74, 1, !dbg !1089
  br label %76, !dbg !1090

; <label>:76:                                     ; preds = %71, %62
  %77 = phi i32 [ %75, %71 ], [ 1, %62 ]
  call void @llvm.dbg.value(metadata i32 %77, metadata !979, metadata !DIExpression()), !dbg !1091
  %78 = or i32 %68, 1, !dbg !1092
  %79 = icmp eq i32 %78, 7, !dbg !1092
  br i1 %79, label %80, label %82, !dbg !1092

; <label>:80:                                     ; preds = %76
  %81 = add i32 %77, %64, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %81, metadata !982, metadata !DIExpression()), !dbg !1072
  br label %139, !dbg !1096

; <label>:82:                                     ; preds = %76
  %83 = icmp eq i32 %68, 3, !dbg !1097
  %84 = tail call i32 @de_get_len(i8* %65) #10, !dbg !1100
  br i1 %83, label %85, label %136, !dbg !1102

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i8* %65, metadata !255, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i32 0, metadata !967, metadata !DIExpression()), !dbg !1018
  %86 = trunc i8 %66 to i3, !dbg !1106
  switch i3 %86, label %87 [
    i3 1, label %90
    i3 2, label %96
  ], !dbg !1106

; <label>:87:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i32 %123, metadata !967, metadata !DIExpression()), !dbg !1018
  %88 = and i32 %84, 65535, !dbg !1107
  %89 = add nsw i32 %88, %64, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %125, metadata !982, metadata !DIExpression()), !dbg !1072
  br label %139, !dbg !1109

; <label>:90:                                     ; preds = %85
  %91 = add nsw i32 %64, %56, !dbg !1110
  %92 = add nsw i32 %91, 2, !dbg !1110
  %93 = getelementptr inbounds i8, i8* %0, i32 %92, !dbg !1110
  %94 = load i8, i8* %93, align 1, !dbg !1110, !tbaa !258
  %95 = zext i8 %94 to i32, !dbg !1110
  br label %114, !dbg !1113

; <label>:96:                                     ; preds = %85
  %97 = add nsw i32 %64, %56, !dbg !1114
  %98 = add nsw i32 %97, 4, !dbg !1114
  %99 = getelementptr inbounds i8, i8* %0, i32 %98, !dbg !1114
  %100 = load i8, i8* %99, align 1, !dbg !1114, !tbaa !258
  %101 = zext i8 %100 to i32, !dbg !1114
  %102 = add nsw i32 %97, 3, !dbg !1114
  %103 = getelementptr inbounds i8, i8* %0, i32 %102, !dbg !1114
  %104 = load i8, i8* %103, align 1, !dbg !1114, !tbaa !258
  %105 = zext i8 %104 to i32, !dbg !1114
  %106 = shl nuw nsw i32 %105, 8, !dbg !1114
  %107 = or i32 %106, %101, !dbg !1114
  %108 = add nsw i32 %97, 2, !dbg !1114
  %109 = getelementptr inbounds i8, i8* %0, i32 %108, !dbg !1114
  %110 = load i8, i8* %109, align 1, !dbg !1114, !tbaa !258
  %111 = zext i8 %110 to i32, !dbg !1114
  %112 = shl nuw nsw i32 %111, 16, !dbg !1114
  %113 = or i32 %107, %112, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %123, metadata !967, metadata !DIExpression()), !dbg !1018
  br label %114, !dbg !1117

; <label>:114:                                    ; preds = %96, %90
  %115 = phi i32 [ %97, %96 ], [ %91, %90 ]
  %116 = phi i32 [ 24, %96 ], [ 8, %90 ]
  %117 = phi i32 [ %113, %96 ], [ %95, %90 ]
  %118 = add nsw i32 %115, 1
  %119 = getelementptr inbounds i8, i8* %0, i32 %118
  %120 = load i8, i8* %119, align 1, !tbaa !258
  %121 = zext i8 %120 to i32
  %122 = shl nuw i32 %121, %116
  %123 = or i32 %122, %117
  call void @llvm.dbg.value(metadata i32 %123, metadata !967, metadata !DIExpression()), !dbg !1018
  %124 = and i32 %84, 65535, !dbg !1107
  %125 = add nsw i32 %124, %64, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %125, metadata !982, metadata !DIExpression()), !dbg !1072
  switch i32 %123, label %139 [
    i32 4388, label %126
    i32 4608, label %131
  ], !dbg !1109

; <label>:126:                                    ; preds = %114
  %127 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1118, !tbaa !1013
  %128 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %127, i32 0, i32 5, !dbg !1121
  %129 = load i16, i16* %128, align 4, !dbg !1122, !tbaa !1016
  %130 = or i16 %129, 8, !dbg !1122
  store i16 %130, i16* %128, align 4, !dbg !1122, !tbaa !1016
  br label %139, !dbg !1123

; <label>:131:                                    ; preds = %114
  %132 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1124, !tbaa !1013
  %133 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %132, i32 0, i32 5, !dbg !1127
  %134 = load i16, i16* %133, align 4, !dbg !1128, !tbaa !1016
  %135 = or i16 %134, 4, !dbg !1128
  store i16 %135, i16* %133, align 4, !dbg !1128, !tbaa !1016
  br label %139, !dbg !1129

; <label>:136:                                    ; preds = %82
  %137 = and i32 %84, 65535, !dbg !1130
  %138 = add nsw i32 %137, %64, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %138, metadata !982, metadata !DIExpression()), !dbg !1072
  br label %139

; <label>:139:                                    ; preds = %136, %131, %126, %114, %87, %80
  %140 = phi i32 [ %63, %80 ], [ 4608, %131 ], [ 4388, %126 ], [ %63, %136 ], [ %123, %114 ], [ 0, %87 ]
  %141 = phi i32 [ %81, %80 ], [ %125, %131 ], [ %125, %126 ], [ %138, %136 ], [ %125, %114 ], [ %89, %87 ]
  call void @llvm.dbg.value(metadata i32 %141, metadata !982, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %140, metadata !967, metadata !DIExpression()), !dbg !1018
  %142 = tail call i32 @de_get_len(i8* %59) #10, !dbg !1133
  %143 = icmp slt i32 %141, %142, !dbg !1135
  br i1 %143, label %62, label %144, !dbg !1136, !llvm.loop !1069

; <label>:144:                                    ; preds = %139
  br label %145, !dbg !1018

; <label>:145:                                    ; preds = %144, %58
  %146 = phi i32 [ %16, %58 ], [ %140, %144 ]
  call void @llvm.dbg.value(metadata i32 %146, metadata !967, metadata !DIExpression()), !dbg !1018
  switch i32 %146, label %187 [
    i32 4608, label %147
    i32 4388, label %150
  ], !dbg !1138

; <label>:147:                                    ; preds = %145
  switch i16 %55, label %187 [
    i16 513, label %148
    i16 514, label %148
    i16 515, label %148
    i16 517, label %148
  ], !dbg !1139

; <label>:148:                                    ; preds = %147, %147, %147, %147
  %149 = tail call i32 @de_get_len(i8* %59) #10, !dbg !1141
  tail call void @sdp_decode_response_info_output(i16 zeroext 4608, i16 zeroext %55, i8* %59, i32 %149) #10, !dbg !1143
  br label %187, !dbg !1145

; <label>:150:                                    ; preds = %145
  %151 = icmp eq i16 %55, 518, !dbg !1146
  br i1 %151, label %152, label %187, !dbg !1147

; <label>:152:                                    ; preds = %150
  %153 = load i8, i8* %59, align 1, !dbg !1148, !tbaa !258
  %154 = icmp eq i8 %153, 54, !dbg !1150
  %155 = select i1 %154, i32 3, i32 2, !dbg !1151
  %156 = add nsw i32 %155, %56, !dbg !1153
  %157 = getelementptr inbounds i8, i8* %0, i32 %156, !dbg !1155
  %158 = load i8, i8* %157, align 1, !dbg !1155, !tbaa !258
  %159 = icmp eq i8 %158, 54, !dbg !1156
  %160 = add nuw nsw i32 %155, 5, !dbg !1157
  %161 = or i32 %155, 4, !dbg !1159
  %162 = select i1 %159, i32 %160, i32 %161, !dbg !1161
  %163 = add nsw i32 %162, %56, !dbg !1162
  %164 = getelementptr inbounds i8, i8* %0, i32 %163, !dbg !1164
  %165 = load i8, i8* %164, align 1, !dbg !1164, !tbaa !258
  %166 = and i8 %165, 7, !dbg !1165
  %167 = icmp eq i8 %166, 6, !dbg !1166
  %168 = add nsw i32 %163, 1
  %169 = getelementptr inbounds i8, i8* %0, i32 %168, !dbg !1167
  %170 = load i8, i8* %169, align 1, !dbg !1167
  br i1 %167, label %171, label %179, !dbg !1169

; <label>:171:                                    ; preds = %152
  %172 = add nsw i32 %163, 2, !dbg !1167
  %173 = getelementptr inbounds i8, i8* %0, i32 %172, !dbg !1167
  %174 = load i8, i8* %173, align 1, !dbg !1167, !tbaa !258
  %175 = zext i8 %174 to i32, !dbg !1167
  %176 = zext i8 %170 to i32, !dbg !1167
  %177 = shl nuw nsw i32 %176, 8, !dbg !1167
  %178 = or i32 %177, %175, !dbg !1167
  br label %181, !dbg !1170

; <label>:179:                                    ; preds = %152
  %180 = zext i8 %170 to i32, !dbg !1171
  br label %181

; <label>:181:                                    ; preds = %179, %171
  %182 = phi i32 [ 2, %179 ], [ 3, %171 ]
  %183 = phi i32 [ %180, %179 ], [ %178, %171 ]
  %184 = add nuw nsw i32 %182, %162
  %185 = getelementptr inbounds i8, i8* %59, i32 %184, !dbg !1173
  %186 = and i32 %183, 65535, !dbg !1174
  tail call void @sdp_decode_response_info_output(i16 zeroext 4388, i16 zeroext 518, i8* %185, i32 %186) #10, !dbg !1175
  br label %187, !dbg !1176

; <label>:187:                                    ; preds = %181, %150, %148, %147, %145
  call void @llvm.dbg.value(metadata i32 0, metadata !966, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 0, metadata !968, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !969, metadata !DIExpression()), !dbg !1002
  %188 = tail call i32 @de_get_len(i8* %59) #10, !dbg !1177
  %189 = add nsw i32 %188, %56, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %189, metadata !964, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 %189, metadata !964, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 0, metadata !966, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %146, metadata !967, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i8 0, metadata !968, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !969, metadata !DIExpression()), !dbg !1002
  %190 = icmp slt i32 %189, %9, !dbg !1019
  br i1 %190, label %14, label %192, !dbg !1021

; <label>:191:                                    ; preds = %39
  br label %193, !dbg !1001

; <label>:192:                                    ; preds = %187, %45, %41
  br label %193, !dbg !1001

; <label>:193:                                    ; preds = %192, %191, %8
  call void @llvm.dbg.value(metadata i8 0, metadata !968, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !969, metadata !DIExpression()), !dbg !1002
  %194 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1179, !tbaa !1013
  %195 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %194, i32 0, i32 5, !dbg !1181
  %196 = load i16, i16* %195, align 4, !dbg !1181, !tbaa !1016
  %197 = and i16 %196, 16, !dbg !1182
  %198 = icmp eq i16 %197, 0, !dbg !1182
  br i1 %198, label %201, label %199, !dbg !1183

; <label>:199:                                    ; preds = %193
  %200 = and i16 %196, -2, !dbg !1184
  store i16 %200, i16* %195, align 4, !dbg !1184, !tbaa !1016
  br label %201, !dbg !1186

; <label>:201:                                    ; preds = %199, %193
  store i8 0, i8* %3, align 1, !dbg !1187, !tbaa !258
  %202 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1188, !tbaa !1013
  %203 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %202, i32 0, i32 5, !dbg !1190
  %204 = load i16, i16* %203, align 4, !dbg !1190, !tbaa !1016
  %205 = and i16 %204, 32, !dbg !1191
  %206 = icmp eq i16 %205, 0, !dbg !1191
  br i1 %206, label %209, label %207, !dbg !1192

; <label>:207:                                    ; preds = %201
  %208 = and i16 %204, -3, !dbg !1193
  store i16 %208, i16* %203, align 4, !dbg !1193, !tbaa !1016
  br label %209, !dbg !1195

; <label>:209:                                    ; preds = %207, %201, %4
  %210 = phi i16 [ -1, %4 ], [ %1, %201 ], [ %1, %207 ]
  ret i16 %210, !dbg !1196
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind optsize
define hidden i32 @sdp_filter_attributes_in_attributeIDList(i8*, i8*, i16 zeroext, i16 zeroext, i16* nocapture, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1197 {
  %7 = alloca %struct.sdp_context_filter_attributes, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1202, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %1, metadata !1203, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i16 %2, metadata !1204, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i16 %3, metadata !1205, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i16* %4, metadata !1206, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %5, metadata !1207, metadata !DIExpression()), !dbg !1214
  %8 = bitcast %struct.sdp_context_filter_attributes* %7 to i8*, !dbg !1215
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #11, !dbg !1215
  %9 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %7, i32 0, i32 0, !dbg !1216
  store i8* %5, i8** %9, align 4, !dbg !1217, !tbaa !1218
  %10 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %7, i32 0, i32 2, !dbg !1220
  store i16 %3, i16* %10, align 2, !dbg !1221, !tbaa !1222
  %11 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %7, i32 0, i32 3, !dbg !1223
  store i16 0, i16* %11, align 4, !dbg !1224, !tbaa !1225
  %12 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %7, i32 0, i32 1, !dbg !1226
  store i16 %2, i16* %12, align 4, !dbg !1227, !tbaa !1228
  %13 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %7, i32 0, i32 4, !dbg !1229
  store i8* %1, i8** %13, align 4, !dbg !1230, !tbaa !1231
  %14 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %7, i32 0, i32 5, !dbg !1232
  store i32 1, i32* %14, align 4, !dbg !1233, !tbaa !1234
  call fastcc void @sdp_attribute_list_traverse_sequence(i8* %0, i32 (i16, i8*, i32, i32, i8*)* nonnull @sdp_traversal_filter_attributes, i8* nonnull %8) #10, !dbg !1235
  %15 = load i16, i16* %11, align 4, !dbg !1236, !tbaa !1225
  store i16 %15, i16* %4, align 2, !dbg !1237, !tbaa !1238
  %16 = load i32, i32* %14, align 4, !dbg !1239, !tbaa !1234
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #11, !dbg !1240
  ret i32 %16, !dbg !1241
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_filter_attributes(i16 zeroext, i8* nocapture readonly, i32, i32, i8* nocapture) #0 section ".bt_stack_code" !dbg !1242 {
  %6 = alloca %struct.sdp_context_attributeID_search, align 4
  %7 = alloca [3 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !1244, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %1, metadata !1245, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i32 %2, metadata !1246, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i32 %3, metadata !1247, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8* %4, metadata !1248, metadata !DIExpression()), !dbg !1266
  %8 = bitcast i8* %4 to %struct.sdp_context_filter_attributes*, !dbg !1267
  call void @llvm.dbg.value(metadata %struct.sdp_context_filter_attributes* %8, metadata !1249, metadata !DIExpression()), !dbg !1268
  %9 = getelementptr inbounds i8, i8* %4, i32 12, !dbg !1269
  %10 = bitcast i8* %9 to i8**, !dbg !1269
  %11 = load i8*, i8** %10, align 4, !dbg !1269, !tbaa !1231
  call void @llvm.dbg.value(metadata i8* %11, metadata !592, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i16 %0, metadata !593, metadata !DIExpression()), !dbg !1273
  %12 = bitcast %struct.sdp_context_attributeID_search* %6 to i8*, !dbg !1274
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #11, !dbg !1274
  %13 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %6, i32 0, i32 0, !dbg !1275
  store i32 0, i32* %13, align 4, !dbg !1276, !tbaa !600
  %14 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %6, i32 0, i32 1, !dbg !1277
  store i16 %0, i16* %14, align 4, !dbg !1278, !tbaa !606
  call fastcc void @de_traverse_sequence(i8* %11, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_attributeID_search, i8* nonnull %12) #9, !dbg !1279
  %15 = load i32, i32* %13, align 4, !dbg !1280, !tbaa !600
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #11, !dbg !1281
  %16 = icmp eq i32 %15, 0, !dbg !1282
  br i1 %16, label %48, label %17, !dbg !1283

; <label>:17:                                     ; preds = %5
  %18 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !1284
  %19 = bitcast i8* %18 to i16*, !dbg !1284
  %20 = load i16, i16* %19, align 4, !dbg !1284, !tbaa !1228
  %21 = icmp ugt i16 %20, 2, !dbg !1285
  br i1 %21, label %22, label %24, !dbg !1286

; <label>:22:                                     ; preds = %17
  %23 = add i16 %20, -3, !dbg !1287
  store i16 %23, i16* %19, align 4, !dbg !1287, !tbaa !1228
  br label %33, !dbg !1289

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !1290
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %25) #11, !dbg !1290
  call void @llvm.dbg.declare(metadata [3 x i8]* %7, metadata !1250, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %25, metadata !469, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 1, metadata !474, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i32 1, metadata !475, metadata !DIExpression()), !dbg !1295
  store i8 9, i8* %25, align 1, !dbg !1296, !tbaa !258
  call void @net_store_16(i8* nonnull %25, i16 zeroext 1, i16 zeroext %0) #9, !dbg !1297
  %26 = call fastcc i32 @spd_append_range(%struct.sdp_context_filter_attributes* nonnull %8, i16 zeroext 3, i8* nonnull %25) #10, !dbg !1298
  call void @llvm.dbg.value(metadata i32 %26, metadata !1256, metadata !DIExpression()), !dbg !1299
  %27 = icmp eq i32 %26, 0, !dbg !1300
  br i1 %27, label %30, label %28, !dbg !1302

; <label>:28:                                     ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %25) #11, !dbg !1303
  %29 = load i16, i16* %19, align 4, !tbaa !1228
  br label %33

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !1304
  %32 = bitcast i8* %31 to i32*, !dbg !1304
  store i32 0, i32* %32, align 4, !dbg !1306, !tbaa !1234
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %25) #11, !dbg !1303
  br label %48

; <label>:33:                                     ; preds = %28, %22
  %34 = phi i16 [ %29, %28 ], [ %23, %22 ], !dbg !1307
  %35 = call i32 @de_get_len(i8* %1) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %35, metadata !1258, metadata !DIExpression()), !dbg !1310
  %36 = zext i16 %34 to i32, !dbg !1311
  %37 = icmp slt i32 %36, %35, !dbg !1312
  br i1 %37, label %41, label %38, !dbg !1313

; <label>:38:                                     ; preds = %33
  %39 = sub nsw i32 %36, %35, !dbg !1314
  %40 = trunc i32 %39 to i16, !dbg !1314
  store i16 %40, i16* %19, align 4, !dbg !1314, !tbaa !1228
  br label %48, !dbg !1316

; <label>:41:                                     ; preds = %33
  %42 = trunc i32 %35 to i16, !dbg !1317
  %43 = call fastcc i32 @spd_append_range(%struct.sdp_context_filter_attributes* nonnull %8, i16 zeroext %42, i8* %1) #10, !dbg !1318
  call void @llvm.dbg.value(metadata i32 %43, metadata !1260, metadata !DIExpression()), !dbg !1319
  %44 = icmp eq i32 %43, 0, !dbg !1320
  br i1 %44, label %45, label %48, !dbg !1322

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds i8, i8* %4, i32 16, !dbg !1323
  %47 = bitcast i8* %46 to i32*, !dbg !1323
  store i32 0, i32* %47, align 4, !dbg !1325, !tbaa !1234
  br label %48, !dbg !1326

; <label>:48:                                     ; preds = %45, %41, %38, %30, %5
  %49 = phi i32 [ 0, %38 ], [ 1, %45 ], [ 0, %41 ], [ 1, %30 ], [ 0, %5 ]
  ret i32 %49
}

; Function Attrs: nounwind optsize
define hidden i32 @spd_get_filtered_size(i8*, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1327 {
  %3 = alloca %struct.sdp_context_get_filtered_size, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1329, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8* %1, metadata !1330, metadata !DIExpression()), !dbg !1333
  %4 = bitcast %struct.sdp_context_get_filtered_size* %3 to i8*, !dbg !1334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1334
  %5 = getelementptr inbounds %struct.sdp_context_get_filtered_size, %struct.sdp_context_get_filtered_size* %3, i32 0, i32 1, !dbg !1335
  store i16 0, i16* %5, align 4, !dbg !1336, !tbaa !1337
  %6 = getelementptr inbounds %struct.sdp_context_get_filtered_size, %struct.sdp_context_get_filtered_size* %3, i32 0, i32 0, !dbg !1339
  store i8* %1, i8** %6, align 4, !dbg !1340, !tbaa !1341
  call fastcc void @sdp_attribute_list_traverse_sequence(i8* %0, i32 (i16, i8*, i32, i32, i8*)* nonnull @sdp_traversal_get_filtered_size, i8* nonnull %4) #10, !dbg !1342
  %7 = load i16, i16* %5, align 4, !dbg !1343, !tbaa !1337
  %8 = zext i16 %7 to i32, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1345
  ret i32 %8, !dbg !1346
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_get_filtered_size(i16 zeroext, i8* nocapture readonly, i32, i32, i8* nocapture) #0 section ".bt_stack_code" !dbg !1347 {
  %6 = alloca %struct.sdp_context_attributeID_search, align 4
  call void @llvm.dbg.value(metadata i16 %0, metadata !1349, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %1, metadata !1350, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %2, metadata !1351, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %3, metadata !1352, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* %4, metadata !1353, metadata !DIExpression()), !dbg !1359
  %7 = bitcast i8* %4 to i8**, !dbg !1360
  %8 = load i8*, i8** %7, align 4, !dbg !1360, !tbaa !1341
  call void @llvm.dbg.value(metadata i8* %8, metadata !592, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i16 %0, metadata !593, metadata !DIExpression()), !dbg !1364
  %9 = bitcast %struct.sdp_context_attributeID_search* %6 to i8*, !dbg !1365
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1365
  %10 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %6, i32 0, i32 0, !dbg !1366
  store i32 0, i32* %10, align 4, !dbg !1367, !tbaa !600
  %11 = getelementptr inbounds %struct.sdp_context_attributeID_search, %struct.sdp_context_attributeID_search* %6, i32 0, i32 1, !dbg !1368
  store i16 %0, i16* %11, align 4, !dbg !1369, !tbaa !606
  call fastcc void @de_traverse_sequence(i8* %8, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_attributeID_search, i8* nonnull %9) #9, !dbg !1370
  %12 = load i32, i32* %10, align 4, !dbg !1371, !tbaa !600
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1372
  %13 = icmp eq i32 %12, 0, !dbg !1373
  br i1 %13, label %23, label %14, !dbg !1374

; <label>:14:                                     ; preds = %5
  %15 = call i32 @de_get_len(i8* %1) #10, !dbg !1375
  %16 = add nsw i32 %15, 3, !dbg !1377
  %17 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !1378
  %18 = bitcast i8* %17 to i16*, !dbg !1378
  %19 = load i16, i16* %18, align 4, !dbg !1379, !tbaa !1337
  %20 = zext i16 %19 to i32, !dbg !1379
  %21 = add nsw i32 %16, %20, !dbg !1379
  %22 = trunc i32 %21 to i16, !dbg !1379
  store i16 %22, i16* %18, align 4, !dbg !1379, !tbaa !1337
  br label %23, !dbg !1380

; <label>:23:                                     ; preds = %14, %5
  ret i32 0, !dbg !1381
}

; Function Attrs: nounwind optsize
define hidden i8* @sdp_get_attribute_value_for_attribute_id(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1382 {
  %3 = alloca %struct.sdp_context_attribute_by_id, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i16 %1, metadata !1387, metadata !DIExpression()), !dbg !1390
  %4 = bitcast %struct.sdp_context_attribute_by_id* %3 to i8*, !dbg !1391
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1391
  %5 = getelementptr inbounds %struct.sdp_context_attribute_by_id, %struct.sdp_context_attribute_by_id* %3, i32 0, i32 1, !dbg !1392
  store i8* null, i8** %5, align 4, !dbg !1393, !tbaa !1394
  %6 = getelementptr inbounds %struct.sdp_context_attribute_by_id, %struct.sdp_context_attribute_by_id* %3, i32 0, i32 0, !dbg !1396
  store i16 %1, i16* %6, align 4, !dbg !1397, !tbaa !1398
  call fastcc void @sdp_attribute_list_traverse_sequence(i8* %0, i32 (i16, i8*, i32, i32, i8*)* nonnull @sdp_traversal_attribute_by_id, i8* nonnull %4) #10, !dbg !1399
  %7 = load i8*, i8** %5, align 4, !dbg !1400, !tbaa !1394
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1401
  ret i8* %7, !dbg !1402
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_attribute_by_id(i16 zeroext, i8*, i32, i32, i8* nocapture) #0 section ".bt_stack_code" !dbg !1403 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1405, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %1, metadata !1406, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %2, metadata !1407, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i32 %3, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %4, metadata !1409, metadata !DIExpression()), !dbg !1415
  %6 = bitcast i8* %4 to i16*, !dbg !1416
  %7 = load i16, i16* %6, align 4, !dbg !1416, !tbaa !1398
  %8 = icmp eq i16 %7, %0, !dbg !1418
  br i1 %8, label %9, label %12, !dbg !1419

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !1420
  %11 = bitcast i8* %10 to i8**, !dbg !1420
  store i8* %1, i8** %11, align 4, !dbg !1422, !tbaa !1394
  br label %12, !dbg !1423

; <label>:12:                                     ; preds = %9, %5
  %13 = phi i32 [ 1, %9 ], [ 0, %5 ]
  ret i32 %13, !dbg !1424
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @sdp_set_attribute_value_for_attribute_id(i8*, i16 zeroext, i32) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1425 {
  %4 = alloca %struct.sdp_context_set_attribute_for_id, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1429, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i16 %1, metadata !1430, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %2, metadata !1431, metadata !DIExpression()), !dbg !1435
  %5 = bitcast %struct.sdp_context_set_attribute_for_id* %4 to i8*, !dbg !1436
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #11, !dbg !1436
  %6 = getelementptr inbounds %struct.sdp_context_set_attribute_for_id, %struct.sdp_context_set_attribute_for_id* %4, i32 0, i32 0, !dbg !1437
  store i16 %1, i16* %6, align 4, !dbg !1438, !tbaa !1439
  %7 = getelementptr inbounds %struct.sdp_context_set_attribute_for_id, %struct.sdp_context_set_attribute_for_id* %4, i32 0, i32 1, !dbg !1441
  store i32 %2, i32* %7, align 4, !dbg !1442, !tbaa !1443
  %8 = getelementptr inbounds %struct.sdp_context_set_attribute_for_id, %struct.sdp_context_set_attribute_for_id* %4, i32 0, i32 2, !dbg !1444
  store i8 0, i8* %8, align 4, !dbg !1445, !tbaa !1446
  call fastcc void @sdp_attribute_list_traverse_sequence(i8* %0, i32 (i16, i8*, i32, i32, i8*)* nonnull @sdp_traversal_set_attribute_for_id, i8* nonnull %5) #10, !dbg !1447
  %9 = load i8, i8* %8, align 4, !dbg !1448, !tbaa !1446
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #11, !dbg !1449
  ret i8 %9, !dbg !1450
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_set_attribute_for_id(i16 zeroext, i8*, i32, i32, i8* nocapture) #0 section ".bt_stack_code" !dbg !1451 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1453, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %1, metadata !1454, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 %2, metadata !1455, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %3, metadata !1456, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %4, metadata !1457, metadata !DIExpression()), !dbg !1463
  %6 = bitcast i8* %4 to i16*, !dbg !1464
  %7 = load i16, i16* %6, align 4, !dbg !1464, !tbaa !1439
  %8 = icmp eq i16 %7, %0, !dbg !1466
  br i1 %8, label %9, label %28, !dbg !1467

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds i8, i8* %4, i32 8, !dbg !1468
  store i8 1, i8* %10, align 4, !dbg !1470, !tbaa !1446
  switch i32 %3, label %28 [
    i32 0, label %11
    i32 1, label %19
    i32 2, label %24
  ], !dbg !1471

; <label>:11:                                     ; preds = %9
  %12 = icmp eq i32 %2, 0, !dbg !1472
  br i1 %12, label %28, label %13, !dbg !1475

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !1476
  %15 = bitcast i8* %14 to i32*, !dbg !1476
  %16 = load i32, i32* %15, align 4, !dbg !1476, !tbaa !1443
  %17 = trunc i32 %16 to i8, !dbg !1478
  %18 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !1479
  store i8 %17, i8* %18, align 1, !dbg !1480, !tbaa !258
  br label %28, !dbg !1481

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !1482
  %21 = bitcast i8* %20 to i32*, !dbg !1482
  %22 = load i32, i32* %21, align 4, !dbg !1482, !tbaa !1443
  %23 = trunc i32 %22 to i16, !dbg !1483
  tail call void @net_store_16(i8* %1, i16 zeroext 1, i16 zeroext %23) #9, !dbg !1484
  br label %28, !dbg !1485

; <label>:24:                                     ; preds = %9
  %25 = getelementptr inbounds i8, i8* %4, i32 4, !dbg !1486
  %26 = bitcast i8* %25 to i32*, !dbg !1486
  %27 = load i32, i32* %26, align 4, !dbg !1486, !tbaa !1443
  tail call void @net_store_32(i8* %1, i16 zeroext 1, i32 %27) #9, !dbg !1487
  br label %28, !dbg !1488

; <label>:28:                                     ; preds = %24, %19, %13, %11, %9, %5
  %29 = phi i32 [ 1, %11 ], [ 1, %9 ], [ 1, %13 ], [ 1, %24 ], [ 1, %19 ], [ 0, %5 ]
  ret i32 %29, !dbg !1489
}

; Function Attrs: nounwind optsize
define hidden i32 @sdp_record_contains_UUID128(i8*, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1490 {
  %3 = alloca %struct.sdp_context_contains_uuid128, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8* %1, metadata !1493, metadata !DIExpression()), !dbg !1496
  %4 = bitcast %struct.sdp_context_contains_uuid128* %3 to i8*, !dbg !1497
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1497
  %5 = getelementptr inbounds %struct.sdp_context_contains_uuid128, %struct.sdp_context_contains_uuid128* %3, i32 0, i32 0, !dbg !1498
  store i8* %1, i8** %5, align 4, !dbg !1499, !tbaa !1500
  %6 = getelementptr inbounds %struct.sdp_context_contains_uuid128, %struct.sdp_context_contains_uuid128* %3, i32 0, i32 1, !dbg !1502
  store i32 0, i32* %6, align 4, !dbg !1503, !tbaa !1504
  call fastcc void @de_traverse_sequence(i8* %0, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_contains_UUID128, i8* nonnull %4) #10, !dbg !1505
  %7 = load i32, i32* %6, align 4, !dbg !1506, !tbaa !1504
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1507
  ret i32 %7, !dbg !1508
}

; Function Attrs: nounwind optsize
define internal i32 @sdp_traversal_contains_UUID128(i8*, i32, i32, i8* nocapture) #0 section ".bt_stack_code" !dbg !1509 {
  %5 = alloca %struct.sdp_context_contains_uuid128, align 4
  %6 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1511, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %1, metadata !1512, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %2, metadata !1513, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8* %3, metadata !1514, metadata !DIExpression()), !dbg !1523
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !1524
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #11, !dbg !1524
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !1516, metadata !DIExpression()), !dbg !1525
  switch i32 %1, label %8 [
    i32 3, label %12
    i32 6, label %24
  ], !dbg !1526

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %3, i32 4
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !1504
  br label %35, !dbg !1526

; <label>:12:                                     ; preds = %4
  %13 = call i32 @de_get_normalized_uuid(i8* nonnull %7, i8* %0) #10, !dbg !1527
  %14 = and i32 %13, 255, !dbg !1528
  %15 = icmp eq i32 %14, 0, !dbg !1528
  br i1 %15, label %21, label %16, !dbg !1529

; <label>:16:                                     ; preds = %12
  %17 = bitcast i8* %3 to i8**, !dbg !1530
  %18 = load i8*, i8** %17, align 4, !dbg !1530, !tbaa !1500
  %19 = call i32 @memcmp(i8* %18, i8* nonnull %7, i32 16) #10, !dbg !1532
  %20 = icmp eq i32 %19, 0, !dbg !1533
  br label %21

; <label>:21:                                     ; preds = %16, %12
  %22 = phi i1 [ false, %12 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32, !dbg !1534
  br label %31

; <label>:24:                                     ; preds = %4
  %25 = bitcast i8* %3 to i32*, !dbg !1536
  %26 = load i32, i32* %25, align 4, !dbg !1536, !tbaa !1500
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()), !dbg !1539
  %27 = bitcast %struct.sdp_context_contains_uuid128* %5 to i8*, !dbg !1541
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #11, !dbg !1541
  %28 = bitcast %struct.sdp_context_contains_uuid128* %5 to i32*, !dbg !1542
  store i32 %26, i32* %28, align 4, !dbg !1542, !tbaa !1500
  %29 = getelementptr inbounds %struct.sdp_context_contains_uuid128, %struct.sdp_context_contains_uuid128* %5, i32 0, i32 1, !dbg !1543
  store i32 0, i32* %29, align 4, !dbg !1544, !tbaa !1504
  call fastcc void @de_traverse_sequence(i8* %0, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_contains_UUID128, i8* nonnull %27) #9, !dbg !1545
  %30 = load i32, i32* %29, align 4, !dbg !1546, !tbaa !1504
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #11, !dbg !1547
  br label %31, !dbg !1548

; <label>:31:                                     ; preds = %24, %21
  %32 = phi i32 [ %23, %21 ], [ %30, %24 ]
  %33 = getelementptr inbounds i8, i8* %3, i32 4
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4, !tbaa !1504
  br label %35, !dbg !1549

; <label>:35:                                     ; preds = %31, %8
  %36 = phi i32 [ %11, %8 ], [ %32, %31 ], !dbg !1549
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #11, !dbg !1550
  ret i32 %36, !dbg !1551
}

; Function Attrs: nounwind optsize
define hidden i32 @sdp_traversal_match_pattern(i8* nocapture readonly, i32, i32, i8* nocapture) #0 section ".bt_stack_code" !dbg !1552 {
  %5 = alloca %struct.sdp_context_contains_uuid128, align 4
  %6 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1554, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i32 %1, metadata !1555, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i32 %2, metadata !1556, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %3, metadata !1557, metadata !DIExpression()), !dbg !1564
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !1565
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #11, !dbg !1565
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !1559, metadata !DIExpression()), !dbg !1566
  %8 = call i32 @de_get_normalized_uuid(i8* nonnull %7, i8* %0) #10, !dbg !1567
  %9 = trunc i32 %8 to i8, !dbg !1567
  call void @llvm.dbg.value(metadata i8 %9, metadata !1560, metadata !DIExpression()), !dbg !1568
  %10 = icmp eq i8 %9, 0, !dbg !1569
  br i1 %10, label %19, label %11, !dbg !1571

; <label>:11:                                     ; preds = %4
  %12 = bitcast i8* %3 to i8**, !dbg !1572
  %13 = load i8*, i8** %12, align 4, !dbg !1572, !tbaa !1574
  call void @llvm.dbg.value(metadata i8* %13, metadata !1492, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %7, metadata !1493, metadata !DIExpression()), !dbg !1578
  %14 = bitcast %struct.sdp_context_contains_uuid128* %5 to i8*, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #11, !dbg !1579
  %15 = getelementptr inbounds %struct.sdp_context_contains_uuid128, %struct.sdp_context_contains_uuid128* %5, i32 0, i32 0, !dbg !1580
  store i8* %7, i8** %15, align 4, !dbg !1581, !tbaa !1500
  %16 = getelementptr inbounds %struct.sdp_context_contains_uuid128, %struct.sdp_context_contains_uuid128* %5, i32 0, i32 1, !dbg !1582
  store i32 0, i32* %16, align 4, !dbg !1583, !tbaa !1504
  call fastcc void @de_traverse_sequence(i8* %13, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_contains_UUID128, i8* nonnull %14) #9, !dbg !1584
  %17 = load i32, i32* %16, align 4, !dbg !1585, !tbaa !1504
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #11, !dbg !1586
  %18 = icmp eq i32 %17, 0, !dbg !1587
  br i1 %18, label %19, label %22, !dbg !1588

; <label>:19:                                     ; preds = %11, %4
  %20 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1590
  %21 = bitcast i8* %20 to i32*, !dbg !1590
  store i32 0, i32* %21, align 4, !dbg !1592, !tbaa !1593
  br label %22, !dbg !1594

; <label>:22:                                     ; preds = %19, %11
  %23 = phi i32 [ 1, %19 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #11, !dbg !1595
  ret i32 %23, !dbg !1595
}

; Function Attrs: nounwind optsize
define hidden i32 @sdp_record_matches_service_search_pattern(i8*, i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1596 {
  %3 = alloca %struct.sdp_context_match_pattern, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8* %1, metadata !1599, metadata !DIExpression()), !dbg !1602
  %4 = bitcast %struct.sdp_context_match_pattern* %3 to i8*, !dbg !1603
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1603
  %5 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1604, !tbaa !258
  %6 = icmp eq i8 %5, 0, !dbg !1604
  br i1 %6, label %47, label %7, !dbg !1606

; <label>:7:                                      ; preds = %2
  %8 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1607, !tbaa !1013
  %9 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %8, i32 0, i32 9, !dbg !1610
  %10 = load i32, i32* %9, align 1, !dbg !1610
  %11 = and i32 %10, 1048576, !dbg !1607
  %12 = icmp eq i32 %11, 0, !dbg !1607
  br i1 %12, label %43, label %13, !dbg !1611

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %8, i32 0, i32 5, !dbg !1612
  %15 = load i16, i16* %14, align 4, !dbg !1612, !tbaa !1016
  %16 = zext i16 %15 to i32, !dbg !1615
  %17 = and i32 %16, 2, !dbg !1616
  %18 = icmp ne i32 %17, 0, !dbg !1616
  %19 = icmp eq i8* %0, getelementptr inbounds ([82 x i8], [82 x i8]* @sdp_a2dp_source_service_data, i32 0, i32 0), !dbg !1617
  %20 = and i1 %19, %18, !dbg !1620
  br i1 %20, label %70, label %21, !dbg !1620

; <label>:21:                                     ; preds = %13
  %22 = and i32 %16, 1, !dbg !1621
  %23 = icmp ne i32 %22, 0, !dbg !1621
  %24 = icmp eq i8* %0, getelementptr inbounds ([84 x i8], [84 x i8]* @sdp_hfp_ag_service_data, i32 0, i32 0), !dbg !1623
  %25 = and i1 %24, %23, !dbg !1626
  br i1 %25, label %70, label %26, !dbg !1626

; <label>:26:                                     ; preds = %21
  %27 = and i32 %16, 32, !dbg !1627
  %28 = icmp eq i32 %27, 0, !dbg !1627
  br i1 %28, label %29, label %34, !dbg !1629

; <label>:29:                                     ; preds = %26
  %30 = load i8, i8* @emitter_hfp_hf_support, align 1, !dbg !1630, !tbaa !258
  %31 = icmp ne i8 %30, 0, !dbg !1630
  %32 = icmp eq i8* %0, getelementptr inbounds ([79 x i8], [79 x i8]* @sdp_a2dp_service_data, i32 0, i32 0), !dbg !1632
  %33 = and i1 %32, %31, !dbg !1635
  br i1 %33, label %70, label %36, !dbg !1635

; <label>:34:                                     ; preds = %26
  %35 = icmp eq i8* %0, getelementptr inbounds ([79 x i8], [79 x i8]* @sdp_a2dp_service_data, i32 0, i32 0), !dbg !1632
  br i1 %35, label %70, label %36, !dbg !1637

; <label>:36:                                     ; preds = %34, %29
  %37 = and i16 %15, 16, !dbg !1638
  %38 = icmp ne i16 %37, 0, !dbg !1638
  %39 = icmp eq i8* %0, getelementptr inbounds ([77 x i8], [77 x i8]* @sdp_hfp_service_data, i32 0, i32 0), !dbg !1640
  %40 = and i1 %39, %38, !dbg !1643
  %41 = icmp eq i8* %0, getelementptr inbounds ([271 x i8], [271 x i8]* @sdp_hid_service_data, i32 0, i32 0), !dbg !1644
  %42 = or i1 %41, %40, !dbg !1643
  br i1 %42, label %70, label %47, !dbg !1643

; <label>:43:                                     ; preds = %7
  %44 = icmp eq i8* %0, getelementptr inbounds ([84 x i8], [84 x i8]* @sdp_hfp_ag_service_data, i32 0, i32 0), !dbg !1646
  %45 = icmp eq i8* %0, getelementptr inbounds ([82 x i8], [82 x i8]* @sdp_a2dp_source_service_data, i32 0, i32 0), !dbg !1649
  %46 = or i1 %44, %45, !dbg !1651
  br i1 %46, label %70, label %47, !dbg !1651

; <label>:47:                                     ; preds = %43, %36, %2
  %48 = load i8, i8* @hid_profile_support, align 1, !dbg !1652, !tbaa !258
  %49 = icmp eq i8 %48, 0, !dbg !1652
  br i1 %49, label %66, label %50, !dbg !1654

; <label>:50:                                     ; preds = %47
  %51 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1655, !tbaa !1013
  %52 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %51, i32 0, i32 9, !dbg !1658
  %53 = load i32, i32* %52, align 1, !dbg !1658
  %54 = and i32 %53, 64, !dbg !1655
  %55 = icmp eq i32 %54, 0, !dbg !1655
  br i1 %55, label %58, label %56, !dbg !1659

; <label>:56:                                     ; preds = %50
  %57 = icmp eq i8* %0, getelementptr inbounds ([271 x i8], [271 x i8]* @sdp_hid_service_data, i32 0, i32 0), !dbg !1660
  br i1 %57, label %66, label %70, !dbg !1663

; <label>:58:                                     ; preds = %50
  %59 = load i8, i8* @hid_conn_depend_on_dev_company, align 1, !dbg !1664, !tbaa !258
  %60 = icmp eq i8 %59, 1, !dbg !1667
  br i1 %60, label %61, label %66, !dbg !1668

; <label>:61:                                     ; preds = %58
  %62 = tail call zeroext i8 bitcast (i8 (...)* @check_current_sdp_company_type to i8 ()*)() #9, !dbg !1669
  %63 = icmp ne i8 %62, 2, !dbg !1672
  %64 = icmp eq i8* %0, getelementptr inbounds ([271 x i8], [271 x i8]* @sdp_hid_service_data, i32 0, i32 0), !dbg !1673
  %65 = and i1 %64, %63, !dbg !1676
  br i1 %65, label %70, label %66, !dbg !1676

; <label>:66:                                     ; preds = %61, %58, %56, %47
  %67 = getelementptr inbounds %struct.sdp_context_match_pattern, %struct.sdp_context_match_pattern* %3, i32 0, i32 0, !dbg !1677
  store i8* %0, i8** %67, align 4, !dbg !1678, !tbaa !1574
  %68 = getelementptr inbounds %struct.sdp_context_match_pattern, %struct.sdp_context_match_pattern* %3, i32 0, i32 1, !dbg !1679
  store i32 1, i32* %68, align 4, !dbg !1680, !tbaa !1593
  call fastcc void @de_traverse_sequence(i8* %1, i32 (i8*, i32, i32, i8*)* nonnull @sdp_traversal_match_pattern, i8* nonnull %4) #10, !dbg !1681
  %69 = load i32, i32* %68, align 4, !dbg !1682, !tbaa !1593
  br label %70, !dbg !1683

; <label>:70:                                     ; preds = %66, %61, %56, %43, %36, %34, %29, %21, %13
  %71 = phi i32 [ %69, %66 ], [ 0, %13 ], [ 0, %21 ], [ 0, %29 ], [ 0, %34 ], [ 0, %36 ], [ 0, %43 ], [ 0, %56 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11, !dbg !1684
  ret i32 %71, !dbg !1684
}

; Function Attrs: optsize
declare zeroext i8 @check_current_sdp_company_type(...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @de_dump_data_element(i8*) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1685 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1687, metadata !DIExpression()), !dbg !1691
  %3 = bitcast i32* %2 to i8*, !dbg !1692
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #11, !dbg !1692
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1693
  store i32 0, i32* %2, align 4, !dbg !1693, !tbaa !1694
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !1695
  %4 = load i8, i8* %0, align 1, !dbg !1697, !tbaa !258
  %5 = zext i8 %4 to i32, !dbg !1697
  %6 = lshr i32 %5, 3, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %6, metadata !1689, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !1700
  %7 = and i8 %4, 7, !dbg !1702
  %8 = zext i8 %7 to i32, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %8, metadata !1690, metadata !DIExpression()), !dbg !1703
  %9 = call i32 @de_traversal_dump_data(i8* %0, i32 %6, i32 %8, i8* nonnull %3) #10, !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #11, !dbg !1705
  ret void, !dbg !1705
}

; Function Attrs: nounwind optsize
define internal i32 @de_traversal_dump_data(i8*, i32, i32, i8* nocapture readonly) #0 section ".bt_stack_code" !dbg !1706 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1708, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32 %1, metadata !1709, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %2, metadata !1710, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8* %3, metadata !1711, metadata !DIExpression()), !dbg !1726
  %6 = bitcast i32* %5 to i8*, !dbg !1727
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !1727
  %7 = bitcast i8* %3 to i32*, !dbg !1728
  %8 = load i32, i32* %7, align 4, !dbg !1729, !tbaa !1694
  call void @llvm.dbg.value(metadata i32 %8, metadata !1712, metadata !DIExpression()), !dbg !1730
  store i32 %8, i32* %5, align 4, !dbg !1730, !tbaa !1694
  %9 = icmp eq i32 %1, 6, !dbg !1731
  br i1 %9, label %10, label %12, !dbg !1732

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !1712, metadata !DIExpression()), !dbg !1730
  %11 = add nsw i32 %8, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %11, metadata !1712, metadata !DIExpression()), !dbg !1730
  store i32 %11, i32* %5, align 4, !dbg !1733, !tbaa !1694
  call fastcc void @de_traverse_sequence(i8* %0, i32 (i8*, i32, i32, i8*)* nonnull @de_traversal_dump_data, i8* nonnull %6) #10, !dbg !1735
  br label %12, !dbg !1736

; <label>:12:                                     ; preds = %10, %4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !1737
  ret i32 0, !dbg !1738
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @check_attributeIDList_type_is_right(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !1739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i16 %1, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i16 2, metadata !1745, metadata !DIExpression()), !dbg !1748
  %3 = load i8, i8* %0, align 1, !dbg !1749, !tbaa !258
  %4 = icmp eq i8 %3, 54, !dbg !1751
  %5 = select i1 %4, i16 3, i16 2, !dbg !1752
  call void @llvm.dbg.value(metadata i16 %5, metadata !1745, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i16 %5, metadata !1745, metadata !DIExpression()), !dbg !1748
  %6 = icmp ult i16 %5, %1, !dbg !1753
  br i1 %6, label %7, label %28, !dbg !1755

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1756

; <label>:8:                                      ; preds = %15, %7
  %9 = phi i16 [ %24, %15 ], [ %5, %7 ]
  %10 = zext i16 %9 to i32, !dbg !1756
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !1757
  %12 = load i8, i8* %11, align 1, !dbg !1757, !tbaa !258
  %13 = add i8 %12, -9, !dbg !1760
  %14 = icmp ult i8 %13, 2, !dbg !1760
  br i1 %14, label %15, label %26, !dbg !1760

; <label>:15:                                     ; preds = %8
  %16 = icmp eq i8 %12, 9, !dbg !1761
  %17 = add i16 %9, 3, !dbg !1763
  call void @llvm.dbg.value(metadata i16 %17, metadata !1745, metadata !DIExpression()), !dbg !1748
  %18 = select i1 %16, i16 %17, i16 %9, !dbg !1765
  call void @llvm.dbg.value(metadata i16 %18, metadata !1745, metadata !DIExpression()), !dbg !1748
  %19 = zext i16 %18 to i32, !dbg !1766
  %20 = getelementptr inbounds i8, i8* %0, i32 %19, !dbg !1766
  %21 = load i8, i8* %20, align 1, !dbg !1766, !tbaa !258
  %22 = icmp eq i8 %21, 10, !dbg !1768
  %23 = add i16 %18, 5, !dbg !1769
  call void @llvm.dbg.value(metadata i16 %23, metadata !1745, metadata !DIExpression()), !dbg !1748
  %24 = select i1 %22, i16 %23, i16 %18, !dbg !1771
  call void @llvm.dbg.value(metadata i16 %24, metadata !1745, metadata !DIExpression()), !dbg !1748
  %25 = icmp ult i16 %24, %1, !dbg !1753
  br i1 %25, label %8, label %26, !dbg !1755

; <label>:26:                                     ; preds = %15, %8
  %27 = phi i8 [ 0, %8 ], [ 1, %15 ]
  br label %28, !dbg !1772

; <label>:28:                                     ; preds = %26, %2
  %29 = phi i8 [ 1, %2 ], [ %27, %26 ]
  ret i8 %29, !dbg !1772
}

; Function Attrs: nounwind optsize readonly
define hidden zeroext i8 @check_SearchPattern_type_is_right(i8* nocapture readonly, i16 zeroext) local_unnamed_addr #4 section ".bt_stack_code" !dbg !1773 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1775, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i16 %1, metadata !1776, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i16 2, metadata !1777, metadata !DIExpression()), !dbg !1782
  %3 = load i8, i8* %0, align 1, !dbg !1783, !tbaa !258
  %4 = icmp eq i8 %3, 54, !dbg !1785
  call void @llvm.dbg.value(metadata i16 3, metadata !1777, metadata !DIExpression()), !dbg !1782
  %5 = select i1 %4, i32 3, i32 2, !dbg !1786
  %6 = zext i16 %1 to i32, !dbg !1787
  %7 = icmp ult i32 %5, %6, !dbg !1789
  br i1 %7, label %8, label %28, !dbg !1790

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !1791

; <label>:9:                                      ; preds = %20, %8
  %10 = phi i32 [ %24, %20 ], [ %5, %8 ]
  %11 = getelementptr inbounds i8, i8* %0, i32 %10, !dbg !1791
  call void @llvm.dbg.value(metadata i8* %11, metadata !267, metadata !DIExpression()), !dbg !1793
  %12 = load i8, i8* %11, align 1, !dbg !1795, !tbaa !258
  %13 = and i8 %12, -8, !dbg !1796
  %14 = icmp eq i8 %13, 24, !dbg !1796
  br i1 %14, label %15, label %26, !dbg !1798

; <label>:15:                                     ; preds = %9
  %16 = trunc i8 %12 to i3, !dbg !1799
  switch i3 %16, label %26 [
    i3 1, label %17
    i3 2, label %20
    i3 3, label %18
    i3 -4, label %19
  ], !dbg !1799

; <label>:17:                                     ; preds = %15
  br label %20, !dbg !1800

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1802

; <label>:19:                                     ; preds = %15
  br label %20, !dbg !1803

; <label>:20:                                     ; preds = %19, %18, %17, %15
  %21 = phi i32 [ 16, %19 ], [ 8, %18 ], [ 2, %17 ], [ 4, %15 ]
  %22 = add nuw nsw i32 %10, 1
  %23 = add nuw nsw i32 %22, %21, !dbg !1804
  %24 = and i32 %23, 65535, !dbg !1805
  %25 = icmp ult i32 %24, %6, !dbg !1789
  br i1 %25, label %9, label %26, !dbg !1790, !llvm.loop !1806

; <label>:26:                                     ; preds = %20, %15, %9
  %27 = phi i8 [ 1, %20 ], [ 0, %15 ], [ 0, %9 ]
  br label %28, !dbg !1809

; <label>:28:                                     ; preds = %26, %2
  %29 = phi i8 [ 1, %2 ], [ %27, %26 ]
  ret i8 %29, !dbg !1809
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @sdp_create_diy_device_ID_service(i8*, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1810 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1814, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i16 %1, metadata !1815, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* %0, metadata !1817, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 6, metadata !379, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 6, metadata !380, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !1831
  store i8 54, i8* %0, align 1, !dbg !1832, !tbaa !258
  tail call void @net_store_16(i8* nonnull %0, i16 zeroext 1, i16 zeroext 0) #9, !dbg !1833
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 0) #10, !dbg !1834
  tail call void @de_add_number(i8* %0, i32 1, i32 2, i32 65546) #10, !dbg !1835
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 1) #10, !dbg !1836
  %3 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !1837
  call void @llvm.dbg.value(metadata i8* %3, metadata !1816, metadata !DIExpression()), !dbg !1838
  tail call void @de_add_number(i8* %3, i32 3, i32 1, i32 4608) #10, !dbg !1839
  tail call void @de_pop_sequence(i8* %0, i8* %3) #10, !dbg !1841
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 4) #10, !dbg !1842
  %4 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !1843
  call void @llvm.dbg.value(metadata i8* %4, metadata !1816, metadata !DIExpression()), !dbg !1838
  %5 = tail call i8* @de_push_sequence(i8* %4) #10, !dbg !1844
  call void @llvm.dbg.value(metadata i8* %5, metadata !1818, metadata !DIExpression()), !dbg !1845
  tail call void @de_add_number(i8* %5, i32 3, i32 1, i32 256) #10, !dbg !1846
  tail call void @de_add_number(i8* %5, i32 1, i32 1, i32 1) #10, !dbg !1848
  tail call void @de_pop_sequence(i8* %4, i8* %5) #10, !dbg !1849
  tail call void @de_pop_sequence(i8* %0, i8* %4) #10, !dbg !1850
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 9) #10, !dbg !1851
  %6 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %6, metadata !1816, metadata !DIExpression()), !dbg !1838
  %7 = tail call i8* @de_push_sequence(i8* %6) #10, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1854
  tail call void @de_add_number(i8* %7, i32 3, i32 1, i32 4608) #10, !dbg !1855
  tail call void @de_add_number(i8* %7, i32 1, i32 1, i32 259) #10, !dbg !1856
  tail call void @de_pop_sequence(i8* %6, i8* %7) #10, !dbg !1857
  tail call void @de_pop_sequence(i8* %0, i8* %6) #10, !dbg !1858
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 512) #10, !dbg !1859
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 259) #10, !dbg !1860
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 513) #10, !dbg !1861
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 1494) #10, !dbg !1862
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 514) #10, !dbg !1863
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 10) #10, !dbg !1864
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 515) #10, !dbg !1865
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 576) #10, !dbg !1866
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 516) #10, !dbg !1867
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 1) #10, !dbg !1868
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 517) #10, !dbg !1869
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 1) #10, !dbg !1870
  %8 = tail call fastcc zeroext i16 @sdp_check_service_overflow(i8* %0, i16 zeroext %1) #10, !dbg !1871
  ret i16 %8, !dbg !1872
}

; Function Attrs: nounwind optsize
define internal fastcc zeroext i16 @sdp_check_service_overflow(i8*, i16 zeroext) unnamed_addr #0 section ".bt_stack_code" !dbg !1873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1875, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i16 %1, metadata !1876, metadata !DIExpression()), !dbg !1879
  %3 = load i8, i8* %0, align 1, !dbg !1880, !tbaa !258
  %4 = icmp eq i8 %3, 54, !dbg !1882
  br i1 %4, label %5, label %9, !dbg !1883

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @big_endian_read_16(i8* nonnull %0, i32 1) #9, !dbg !1884
  %7 = add i32 %6, 3, !dbg !1886
  %8 = trunc i32 %7 to i16, !dbg !1884
  call void @llvm.dbg.value(metadata i16 %8, metadata !1877, metadata !DIExpression()), !dbg !1887
  br label %13, !dbg !1888

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !1889
  %11 = load i8, i8* %10, align 1, !dbg !1889, !tbaa !258
  %12 = zext i8 %11 to i16, !dbg !1889
  call void @llvm.dbg.value(metadata i16 %12, metadata !1877, metadata !DIExpression()), !dbg !1887
  br label %13

; <label>:13:                                     ; preds = %9, %5
  %14 = phi i16 [ %8, %5 ], [ %12, %9 ]
  call void @llvm.dbg.value(metadata i16 %14, metadata !1877, metadata !DIExpression()), !dbg !1887
  %15 = zext i16 %14 to i32, !dbg !1891
  %16 = zext i16 %1 to i32, !dbg !1893
  %17 = icmp ugt i16 %14, %1, !dbg !1894
  br i1 %17, label %18, label %30, !dbg !1895

; <label>:18:                                     ; preds = %13
  %19 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1896, !tbaa !258
  %20 = icmp slt i8 %19, 0, !dbg !1896
  br i1 %20, label %21, label %23, !dbg !1899

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i32 %16, i32 %15) #10, !dbg !1900
  br label %23, !dbg !1900

; <label>:23:                                     ; preds = %21, %18
  %24 = load i32, i32* @config_asser, align 4, !dbg !1902, !tbaa !1694
  %25 = icmp eq i32 %24, 0, !dbg !1902
  br i1 %25, label %29, label %26, !dbg !1906

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.24, i32 0, i32 0), i32 1132) #10, !dbg !1908
  %28 = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @str, i32 0, i32 0)), !dbg !1913
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #9, !dbg !1915
  br label %30, !dbg !1917

; <label>:29:                                     ; preds = %23
  tail call fastcc void @cpu_reset() #10, !dbg !1919
  br label %30

; <label>:30:                                     ; preds = %29, %26, %13
  ret i16 %14, !dbg !1924
}

; Function Attrs: nounwind optsize
define hidden zeroext i16 @sdp_create_diy_hid_service(i8*, i16 zeroext, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 section ".bt_stack_code" !dbg !1925 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1929, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i16 %1, metadata !1930, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8* %2, metadata !1931, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i16 %3, metadata !1932, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %0, metadata !1934, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 6, metadata !379, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 6, metadata !380, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 0, metadata !381, metadata !DIExpression()), !dbg !1957
  store i8 54, i8* %0, align 1, !dbg !1958, !tbaa !258
  tail call void @net_store_16(i8* nonnull %0, i16 zeroext 1, i16 zeroext 0) #9, !dbg !1959
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 0) #10, !dbg !1960
  tail call void @de_add_number(i8* %0, i32 1, i32 2, i32 65542) #10, !dbg !1961
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 1) #10, !dbg !1962
  %5 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !1963
  call void @llvm.dbg.value(metadata i8* %5, metadata !1933, metadata !DIExpression()), !dbg !1964
  tail call void @de_add_number(i8* %5, i32 3, i32 1, i32 4388) #10, !dbg !1965
  tail call void @de_pop_sequence(i8* %0, i8* %5) #10, !dbg !1967
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 4) #10, !dbg !1968
  %6 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !1969
  call void @llvm.dbg.value(metadata i8* %6, metadata !1933, metadata !DIExpression()), !dbg !1964
  %7 = tail call i8* @de_push_sequence(i8* %6) #10, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %7, metadata !1935, metadata !DIExpression()), !dbg !1971
  tail call void @de_add_number(i8* %7, i32 3, i32 1, i32 256) #10, !dbg !1972
  tail call void @de_add_number(i8* %7, i32 1, i32 1, i32 17) #10, !dbg !1974
  tail call void @de_pop_sequence(i8* %6, i8* %7) #10, !dbg !1975
  %8 = tail call i8* @de_push_sequence(i8* %6) #10, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %8, metadata !1935, metadata !DIExpression()), !dbg !1971
  tail call void @de_add_number(i8* %8, i32 3, i32 1, i32 17) #10, !dbg !1977
  tail call void @de_pop_sequence(i8* %6, i8* %8) #10, !dbg !1979
  tail call void @de_pop_sequence(i8* %0, i8* %6) #10, !dbg !1980
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 9) #10, !dbg !1981
  %9 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !1982
  call void @llvm.dbg.value(metadata i8* %9, metadata !1933, metadata !DIExpression()), !dbg !1964
  %10 = tail call i8* @de_push_sequence(i8* %9) #10, !dbg !1983
  call void @llvm.dbg.value(metadata i8* %10, metadata !1937, metadata !DIExpression()), !dbg !1984
  tail call void @de_add_number(i8* %10, i32 3, i32 1, i32 4388) #10, !dbg !1985
  tail call void @de_add_number(i8* %10, i32 1, i32 1, i32 256) #10, !dbg !1986
  tail call void @de_pop_sequence(i8* %9, i8* %10) #10, !dbg !1987
  tail call void @de_pop_sequence(i8* %0, i8* %9) #10, !dbg !1988
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 13) #10, !dbg !1989
  %11 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %11, metadata !1933, metadata !DIExpression()), !dbg !1964
  %12 = tail call i8* @de_push_sequence(i8* %11) #10, !dbg !1991
  call void @llvm.dbg.value(metadata i8* %12, metadata !1939, metadata !DIExpression()), !dbg !1992
  %13 = tail call i8* @de_push_sequence(i8* %12) #10, !dbg !1993
  call void @llvm.dbg.value(metadata i8* %13, metadata !1941, metadata !DIExpression()), !dbg !1995
  tail call void @de_add_number(i8* %13, i32 3, i32 1, i32 256) #10, !dbg !1996
  tail call void @de_add_number(i8* %13, i32 1, i32 1, i32 19) #10, !dbg !1997
  tail call void @de_pop_sequence(i8* %12, i8* %13) #10, !dbg !1998
  %14 = tail call i8* @de_push_sequence(i8* %12) #10, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %14, metadata !1941, metadata !DIExpression()), !dbg !1995
  tail call void @de_add_number(i8* %14, i32 3, i32 1, i32 17) #10, !dbg !2000
  tail call void @de_pop_sequence(i8* %12, i8* %14) #10, !dbg !2001
  tail call void @de_pop_sequence(i8* %11, i8* %12) #10, !dbg !2002
  tail call void @de_pop_sequence(i8* %0, i8* %11) #10, !dbg !2003
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 256) #10, !dbg !2004
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #10, !dbg !2005
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 257) #10, !dbg !2007
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #10, !dbg !2008
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 258) #10, !dbg !2009
  tail call void @de_add_data(i8* %0, i32 4, i16 zeroext 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #10, !dbg !2010
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 513) #10, !dbg !2011
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 273) #10, !dbg !2012
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 514) #10, !dbg !2013
  tail call void @de_add_number(i8* %0, i32 1, i32 0, i32 128) #10, !dbg !2014
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 515) #10, !dbg !2015
  tail call void @de_add_number(i8* %0, i32 1, i32 0, i32 33) #10, !dbg !2016
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 516) #10, !dbg !2017
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 1) #10, !dbg !2018
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 517) #10, !dbg !2019
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 1) #10, !dbg !2020
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 518) #10, !dbg !2021
  %15 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i8* %15, metadata !1933, metadata !DIExpression()), !dbg !1964
  %16 = tail call i8* @de_push_sequence(i8* %15) #10, !dbg !2023
  call void @llvm.dbg.value(metadata i8* %16, metadata !1942, metadata !DIExpression()), !dbg !2024
  tail call void @de_add_number(i8* %16, i32 1, i32 0, i32 34) #10, !dbg !2025
  tail call void @de_add_data(i8* %16, i32 4, i16 zeroext %3, i8* %2) #10, !dbg !2027
  tail call void @de_pop_sequence(i8* %15, i8* %16) #10, !dbg !2028
  tail call void @de_pop_sequence(i8* %0, i8* %15) #10, !dbg !2029
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 519) #10, !dbg !2030
  %17 = tail call i8* @de_push_sequence(i8* %0) #10, !dbg !2031
  call void @llvm.dbg.value(metadata i8* %17, metadata !1933, metadata !DIExpression()), !dbg !1964
  %18 = tail call i8* @de_push_sequence(i8* %17) #10, !dbg !2032
  call void @llvm.dbg.value(metadata i8* %18, metadata !1944, metadata !DIExpression()), !dbg !2033
  tail call void @de_add_number(i8* %18, i32 1, i32 1, i32 1033) #10, !dbg !2034
  tail call void @de_add_number(i8* %18, i32 1, i32 1, i32 256) #10, !dbg !2036
  tail call void @de_pop_sequence(i8* %17, i8* %18) #10, !dbg !2037
  tail call void @de_pop_sequence(i8* %0, i8* %17) #10, !dbg !2038
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 520) #10, !dbg !2039
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 0) #10, !dbg !2040
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 521) #10, !dbg !2041
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 1) #10, !dbg !2042
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 522) #10, !dbg !2043
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 1) #10, !dbg !2044
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 523) #10, !dbg !2045
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 256) #10, !dbg !2046
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 524) #10, !dbg !2047
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 8000) #10, !dbg !2048
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 525) #10, !dbg !2049
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 1) #10, !dbg !2050
  tail call void @de_add_number(i8* %0, i32 1, i32 1, i32 526) #10, !dbg !2051
  tail call void @de_add_number(i8* %0, i32 5, i32 0, i32 1) #10, !dbg !2052
  %19 = tail call fastcc zeroext i16 @sdp_check_service_overflow(i8* %0, i16 zeroext %1) #10, !dbg !2053
  ret i16 %19, !dbg !2054
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @remote_dev_company_ioctrl(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc i32 @spd_append_range(%struct.sdp_context_filter_attributes* nocapture, i16 zeroext, i8* nocapture readonly) unnamed_addr #0 section ".bt_stack_code" !dbg !2055 {
  call void @llvm.dbg.value(metadata %struct.sdp_context_filter_attributes* %0, metadata !2059, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i16 %1, metadata !2060, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %2, metadata !2061, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32 1, metadata !2062, metadata !DIExpression()), !dbg !2067
  %4 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %0, i32 0, i32 1, !dbg !2068
  %5 = load i16, i16* %4, align 4, !dbg !2068, !tbaa !1228
  %6 = sub i16 %1, %5, !dbg !2069
  call void @llvm.dbg.value(metadata i16 %6, metadata !2063, metadata !DIExpression()), !dbg !2070
  %7 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %0, i32 0, i32 2, !dbg !2071
  %8 = load i16, i16* %7, align 2, !dbg !2071, !tbaa !1222
  %9 = icmp ult i16 %8, %6, !dbg !2073
  call void @llvm.dbg.value(metadata i16 %8, metadata !2063, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i32 0, metadata !2062, metadata !DIExpression()), !dbg !2067
  %10 = xor i1 %9, true, !dbg !2074
  %11 = zext i1 %10 to i32, !dbg !2074
  %12 = select i1 %9, i16 %8, i16 %6, !dbg !2074
  call void @llvm.dbg.value(metadata i16 %12, metadata !2063, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i32 %11, metadata !2062, metadata !DIExpression()), !dbg !2067
  %13 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %0, i32 0, i32 0, !dbg !2075
  %14 = load i8*, i8** %13, align 4, !dbg !2075, !tbaa !1218
  %15 = zext i16 %5 to i32, !dbg !2076
  %16 = getelementptr inbounds i8, i8* %2, i32 %15, !dbg !2076
  %17 = zext i16 %12 to i32, !dbg !2077
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %16, i32 %17, i32 1, i1 false), !dbg !2078
  %18 = getelementptr inbounds %struct.sdp_context_filter_attributes, %struct.sdp_context_filter_attributes* %0, i32 0, i32 3, !dbg !2079
  %19 = load i16, i16* %18, align 4, !dbg !2080, !tbaa !1225
  %20 = add i16 %19, %12, !dbg !2080
  store i16 %20, i16* %18, align 4, !dbg !2080, !tbaa !1225
  %21 = load i8*, i8** %13, align 4, !dbg !2081, !tbaa !1218
  %22 = getelementptr inbounds i8, i8* %21, i32 %17, !dbg !2081
  store i8* %22, i8** %13, align 4, !dbg !2081, !tbaa !1218
  %23 = load i16, i16* %7, align 2, !dbg !2082, !tbaa !1222
  %24 = sub i16 %23, %12, !dbg !2082
  store i16 %24, i16* %7, align 2, !dbg !2082, !tbaa !1222
  store i16 0, i16* %4, align 4, !dbg !2083, !tbaa !1228
  ret i32 %11, !dbg !2084
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @big_endian_read_16(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #8 !dbg !2085 {
  tail call void @p33_soft_reset() #9, !dbg !2090
  ret void, !dbg !2091
}

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #3

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
attributes #4 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!237, !238}
!llvm.ident = !{!239}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !236, line: 190, type: !50, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !98)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Protocol/BR_EDR/sdp_util.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !16, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 57, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp_util.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15}
!8 = !DIEnumerator(name: "DE_SIZE_8", value: 0)
!9 = !DIEnumerator(name: "DE_SIZE_16", value: 1)
!10 = !DIEnumerator(name: "DE_SIZE_32", value: 2)
!11 = !DIEnumerator(name: "DE_SIZE_64", value: 3)
!12 = !DIEnumerator(name: "DE_SIZE_128", value: 4)
!13 = !DIEnumerator(name: "DE_SIZE_VAR_8", value: 5)
!14 = !DIEnumerator(name: "DE_SIZE_VAR_16", value: 6)
!15 = !DIEnumerator(name: "DE_SIZE_VAR_32", value: 7)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 45, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !DIEnumerator(name: "DE_NIL", value: 0)
!19 = !DIEnumerator(name: "DE_UINT", value: 1)
!20 = !DIEnumerator(name: "DE_INT", value: 2)
!21 = !DIEnumerator(name: "DE_UUID", value: 3)
!22 = !DIEnumerator(name: "DE_STRING", value: 4)
!23 = !DIEnumerator(name: "DE_BOOL", value: 5)
!24 = !DIEnumerator(name: "DE_DES", value: 6)
!25 = !DIEnumerator(name: "DE_DEA", value: 7)
!26 = !DIEnumerator(name: "DE_URL", value: 8)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 631, size: 32, elements: !29)
!28 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "REMOTE_DEV_UNKNOWN", value: 0)
!31 = !DIEnumerator(name: "REMOTE_DEV_ANDROID", value: 1)
!32 = !DIEnumerator(name: "REMOTE_DEV_IOS", value: 2)
!33 = !DIEnumerator(name: "REMOTE_DEV_XIAOMI", value: 3)
!34 = !{!35, !36, !37, !40, !42, !51, !46, !52, !58, !66, !75, !80, !85, !92, !97}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "de_size_t", file: !6, line: 66, baseType: !5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "de_type_t", file: !6, line: 55, baseType: !16)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 48, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_match_pattern", file: !3, line: 872, size: 64, elements: !44)
!44 = !{!45, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "record", scope: !43, file: !3, line: 873, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 44, baseType: !48)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !43, file: !3, line: 874, baseType: !50, size: 32, offset: 32)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_attributeID_search", file: !3, line: 336, size: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !53, file: !3, line: 337, baseType: !50, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "attributeID", scope: !53, file: !3, line: 338, baseType: !57, size: 16, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 46, baseType: !39)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_append_attributes", file: !3, line: 376, size: 128, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !59, file: !3, line: 377, baseType: !46, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "startOffset", scope: !59, file: !3, line: 378, baseType: !57, size: 16, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "maxBytes", scope: !59, file: !3, line: 379, baseType: !57, size: 16, offset: 48)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "usedBytes", scope: !59, file: !3, line: 380, baseType: !57, size: 16, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "attributeIDList", scope: !59, file: !3, line: 381, baseType: !46, size: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_filter_attributes", file: !3, line: 659, size: 160, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !67, file: !3, line: 660, baseType: !46, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "startOffset", scope: !67, file: !3, line: 661, baseType: !57, size: 16, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "maxBytes", scope: !67, file: !3, line: 662, baseType: !57, size: 16, offset: 48)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "usedBytes", scope: !67, file: !3, line: 663, baseType: !57, size: 16, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "attributeIDList", scope: !67, file: !3, line: 664, baseType: !46, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !67, file: !3, line: 665, baseType: !50, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_get_filtered_size", file: !3, line: 750, size: 64, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "attributeIDList", scope: !76, file: !3, line: 751, baseType: !46, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !76, file: !3, line: 752, baseType: !57, size: 16, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_attribute_by_id", file: !3, line: 775, size: 64, elements: !82)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "attributeID", scope: !81, file: !3, line: 776, baseType: !57, size: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "attributeValue", scope: !81, file: !3, line: 777, baseType: !46, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_set_attribute_for_id", file: !3, line: 799, size: 96, elements: !87)
!87 = !{!88, !89, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "attributeID", scope: !86, file: !3, line: 800, baseType: !57, size: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "attributeValue", scope: !86, file: !3, line: 801, baseType: !90, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 48, baseType: !41)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "attributeFound", scope: !86, file: !3, line: 802, baseType: !47, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdp_context_contains_uuid128", file: !3, line: 842, size: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !93, file: !3, line: 843, baseType: !46, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !93, file: !3, line: 844, baseType: !50, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!98 = !{!0, !99, !108, !114, !151, !156, !161, !166, !171, !176, !181, !186, !191, !193, !198, !200, !202, !204, !206, !211, !216, !221, !226, !231}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "sdp_type_names", scope: !2, file: !3, line: 68, type: !101, isLocal: false, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 288, elements: !106)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = !{!107}
!107 = !DISubrange(count: 9)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "sdp_bluetooth_base_uuid", scope: !2, file: !3, line: 71, type: !110, isLocal: false, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !112)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!112 = !{!113}
!113 = !DISubrange(count: 16)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "hid_sdp_info", scope: !2, file: !3, line: 1088, type: !116, isLocal: false, isDefinition: true)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "hid_sdp_info_t", file: !28, line: 612, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__hid_sdp_info", file: !28, line: 584, size: 480, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !143, !144, !145, !149, !150}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "vid_private", scope: !118, file: !28, line: 585, baseType: !57, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "pid_private", scope: !118, file: !28, line: 586, baseType: !57, size: 16, offset: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ver_private", scope: !118, file: !28, line: 587, baseType: !57, size: 16, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sub_class", scope: !118, file: !28, line: 589, baseType: !47, size: 8, offset: 48)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "country_code", scope: !118, file: !28, line: 590, baseType: !47, size: 8, offset: 56)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_cable", scope: !118, file: !28, line: 591, baseType: !126, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 44, baseType: !48)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_initiate", scope: !118, file: !28, line: 592, baseType: !126, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_disable", scope: !118, file: !28, line: 593, baseType: !126, size: 8, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "battery_power", scope: !118, file: !28, line: 594, baseType: !126, size: 8, offset: 88)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "remote_wake", scope: !118, file: !28, line: 595, baseType: !126, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "normally_connectable", scope: !118, file: !28, line: 596, baseType: !126, size: 8, offset: 104)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "boot_device", scope: !118, file: !28, line: 597, baseType: !126, size: 8, offset: 112)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !118, file: !28, line: 598, baseType: !57, size: 16, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "parser_version", scope: !118, file: !28, line: 599, baseType: !57, size: 16, offset: 144)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "profile_version", scope: !118, file: !28, line: 600, baseType: !57, size: 16, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "supervision_timeout", scope: !118, file: !28, line: 601, baseType: !57, size: 16, offset: 176)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !118, file: !28, line: 602, baseType: !57, size: 16, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bt_string_offset", scope: !118, file: !28, line: 603, baseType: !57, size: 16, offset: 208)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_len", scope: !118, file: !28, line: 604, baseType: !57, size: 16, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !118, file: !28, line: 605, baseType: !46, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "service_name", scope: !118, file: !28, line: 606, baseType: !142, size: 32, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "service_description", scope: !118, file: !28, line: 607, baseType: !142, size: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "provide_name", scope: !118, file: !28, line: 608, baseType: !142, size: 32, offset: 352)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_request_respone_callback", scope: !118, file: !28, line: 609, baseType: !146, size: 32, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !47}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buf", scope: !118, file: !28, line: 610, baseType: !46, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !118, file: !28, line: 611, baseType: !47, size: 8, offset: 448)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "sdp_pnp_service_data", scope: !2, file: !3, line: 2660, type: !153, isLocal: false, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 456, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 57)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "sdp_pnp_service_data_for_hid", scope: !2, file: !3, line: 2667, type: !158, isLocal: false, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 760, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 95)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "sdp_pnp_service_data2", scope: !2, file: !3, line: 2676, type: !163, isLocal: false, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 576, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 72)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "sdp_a2dp_service_data", scope: !2, file: !3, line: 2683, type: !168, isLocal: false, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 632, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 79)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "sdp_avctp_ct_service_data", scope: !2, file: !3, line: 2690, type: !173, isLocal: false, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 560, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 70)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "sdp_avctp_ta_service_data", scope: !2, file: !3, line: 2697, type: !178, isLocal: false, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 536, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 67)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "sdp_hfp_service_data", scope: !2, file: !3, line: 2704, type: !183, isLocal: false, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 616, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 77)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "sdp_spp_service_data", scope: !2, file: !3, line: 2711, type: !188, isLocal: false, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 544, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 68)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "sdp_spp_update_service_data", scope: !2, file: !3, line: 2718, type: !173, isLocal: false, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "sdp_dueros_ota_service_data", scope: !2, file: !3, line: 2725, type: !195, isLocal: false, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 768, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 96)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "sdp_dueros_spp_service_data", scope: !2, file: !3, line: 2733, type: !195, isLocal: false, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "sdp_tme_service_data", scope: !2, file: !3, line: 2741, type: !195, isLocal: false, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "sdp_weixin_spp_service_data", scope: !2, file: !3, line: 2749, type: !195, isLocal: false, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "sdp_gma_spp_service_data", scope: !2, file: !3, line: 2758, type: !195, isLocal: false, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "sdp_ama_spp_service_data", scope: !2, file: !3, line: 2767, type: !208, isLocal: false, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 896, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 112)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "sdp_hid_service_data", scope: !2, file: !3, line: 2777, type: !213, isLocal: false, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2168, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 271)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "sdp_pbap_service_data", scope: !2, file: !3, line: 2797, type: !218, isLocal: false, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 432, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 54)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "sdp_a2dp_source_service_data", scope: !2, file: !3, line: 2804, type: !223, isLocal: false, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 656, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 82)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "sdp_hfp_ag_service_data", scope: !2, file: !3, line: 2813, type: !228, isLocal: false, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 672, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 84)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "sdp_iap_service_data", scope: !2, file: !3, line: 2821, type: !233, isLocal: false, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 552, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 69)
!236 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!237 = !{i32 2, !"Dwarf Version", i32 4}
!238 = !{i32 2, !"Debug Info Version", i32 3}
!239 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!240 = distinct !DISubprogram(name: "sdp_normalize_uuid", scope: !3, file: !3, line: 79, type: !241, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !46, !90}
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "uuid", arg: 1, scope: !240, file: !3, line: 79, type: !46)
!245 = !DILocalVariable(name: "shortUUID", arg: 2, scope: !240, file: !3, line: 79, type: !90)
!246 = !DILocation(line: 79, column: 29, scope: !240)
!247 = !DILocation(line: 79, column: 39, scope: !240)
!248 = !DILocation(line: 81, column: 5, scope: !240)
!249 = !DILocation(line: 82, column: 5, scope: !240)
!250 = !DILocation(line: 83, column: 1, scope: !240)
!251 = distinct !DISubprogram(name: "de_get_size_type", scope: !3, file: !3, line: 86, type: !252, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!35, !46}
!254 = !{!255}
!255 = !DILocalVariable(name: "header", arg: 1, scope: !251, file: !3, line: 86, type: !46)
!256 = !DILocation(line: 86, column: 32, scope: !251)
!257 = !DILocation(line: 88, column: 24, scope: !251)
!258 = !{!259, !259, i64 0}
!259 = !{!"omnipotent char", !260, i64 0}
!260 = !{!"Simple C/C++ TBAA"}
!261 = !DILocation(line: 88, column: 34, scope: !251)
!262 = !DILocation(line: 88, column: 5, scope: !251)
!263 = distinct !DISubprogram(name: "de_get_element_type", scope: !3, file: !3, line: 91, type: !264, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!36, !46}
!266 = !{!267}
!267 = !DILocalVariable(name: "header", arg: 1, scope: !263, file: !3, line: 91, type: !46)
!268 = !DILocation(line: 91, column: 35, scope: !263)
!269 = !DILocation(line: 93, column: 24, scope: !263)
!270 = !DILocation(line: 93, column: 34, scope: !263)
!271 = !DILocation(line: 93, column: 5, scope: !263)
!272 = distinct !DISubprogram(name: "de_get_header_size", scope: !3, file: !3, line: 96, type: !273, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!50, !46}
!275 = !{!276, !277}
!276 = !DILocalVariable(name: "header", arg: 1, scope: !272, file: !3, line: 96, type: !46)
!277 = !DILocalVariable(name: "de_size", scope: !272, file: !3, line: 98, type: !35)
!278 = !DILocation(line: 96, column: 28, scope: !272)
!279 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !280)
!280 = distinct !DILocation(line: 98, column: 25, scope: !272)
!281 = !DILocation(line: 88, column: 24, scope: !251, inlinedAt: !280)
!282 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !280)
!283 = !DILocation(line: 98, column: 15, scope: !272)
!284 = !DILocation(line: 99, column: 17, scope: !285)
!285 = distinct !DILexicalBlock(scope: !272, file: !3, line: 99, column: 9)
!286 = !DILocation(line: 99, column: 9, scope: !272)
!287 = !DILocation(line: 102, column: 31, scope: !272)
!288 = !DILocation(line: 102, column: 19, scope: !272)
!289 = !DILocation(line: 102, column: 14, scope: !272)
!290 = !DILocation(line: 102, column: 5, scope: !272)
!291 = !DILocation(line: 103, column: 1, scope: !272)
!292 = distinct !DISubprogram(name: "de_get_data_size", scope: !3, file: !3, line: 105, type: !273, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !293)
!293 = !{!294, !295, !296, !297}
!294 = !DILocalVariable(name: "header", arg: 1, scope: !292, file: !3, line: 105, type: !46)
!295 = !DILocalVariable(name: "result", scope: !292, file: !3, line: 107, type: !90)
!296 = !DILocalVariable(name: "de_type", scope: !292, file: !3, line: 108, type: !36)
!297 = !DILocalVariable(name: "de_size", scope: !292, file: !3, line: 109, type: !35)
!298 = !DILocation(line: 105, column: 26, scope: !292)
!299 = !DILocation(line: 107, column: 9, scope: !292)
!300 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !301)
!301 = distinct !DILocation(line: 108, column: 25, scope: !292)
!302 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !301)
!303 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !304)
!304 = distinct !DILocation(line: 109, column: 25, scope: !292)
!305 = !DILocation(line: 109, column: 15, scope: !292)
!306 = !DILocation(line: 110, column: 5, scope: !292)
!307 = !DILocation(line: 112, column: 18, scope: !308)
!308 = distinct !DILexicalBlock(scope: !292, file: !3, line: 110, column: 22)
!309 = !DILocation(line: 113, column: 9, scope: !308)
!310 = !DILocation(line: 115, column: 18, scope: !308)
!311 = !DILocation(line: 116, column: 9, scope: !308)
!312 = !DILocation(line: 118, column: 18, scope: !308)
!313 = !DILocation(line: 119, column: 9, scope: !308)
!314 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !304)
!315 = !DILocation(line: 126, column: 21, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !3, line: 126, column: 13)
!317 = !DILocation(line: 129, column: 18, scope: !308)
!318 = !DILocation(line: 126, column: 13, scope: !308)
!319 = !DILocation(line: 132, column: 1, scope: !292)
!320 = distinct !DISubprogram(name: "de_get_len", scope: !3, file: !3, line: 134, type: !273, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !321)
!321 = !{!322}
!322 = !DILocalVariable(name: "header", arg: 1, scope: !320, file: !3, line: 134, type: !46)
!323 = !DILocation(line: 134, column: 20, scope: !320)
!324 = !DILocation(line: 96, column: 28, scope: !272, inlinedAt: !325)
!325 = distinct !DILocation(line: 136, column: 12, scope: !320)
!326 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !327)
!327 = distinct !DILocation(line: 98, column: 25, scope: !272, inlinedAt: !325)
!328 = !DILocation(line: 88, column: 24, scope: !251, inlinedAt: !327)
!329 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !327)
!330 = !DILocation(line: 99, column: 17, scope: !285, inlinedAt: !325)
!331 = !DILocation(line: 99, column: 9, scope: !272, inlinedAt: !325)
!332 = !DILocation(line: 102, column: 31, scope: !272, inlinedAt: !325)
!333 = !DILocation(line: 102, column: 19, scope: !272, inlinedAt: !325)
!334 = !DILocation(line: 102, column: 14, scope: !272, inlinedAt: !325)
!335 = !DILocation(line: 102, column: 5, scope: !272, inlinedAt: !325)
!336 = !DILocation(line: 136, column: 41, scope: !337)
!337 = !DILexicalBlockFile(scope: !320, file: !3, discriminator: 1)
!338 = !DILocation(line: 136, column: 39, scope: !320)
!339 = !DILocation(line: 136, column: 5, scope: !320)
!340 = distinct !DISubprogram(name: "de_get_normalized_uuid", scope: !3, file: !3, line: 140, type: !341, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{!50, !46, !46}
!343 = !{!344, !345, !346, !347, !348}
!344 = !DILocalVariable(name: "uuid128", arg: 1, scope: !340, file: !3, line: 140, type: !46)
!345 = !DILocalVariable(name: "element", arg: 2, scope: !340, file: !3, line: 140, type: !46)
!346 = !DILocalVariable(name: "shortUUID", scope: !340, file: !3, line: 142, type: !90)
!347 = !DILocalVariable(name: "uuidType", scope: !340, file: !3, line: 143, type: !36)
!348 = !DILocalVariable(name: "uuidSize", scope: !340, file: !3, line: 144, type: !35)
!349 = !DILocation(line: 140, column: 32, scope: !340)
!350 = !DILocation(line: 140, column: 45, scope: !340)
!351 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !352)
!352 = distinct !DILocation(line: 143, column: 26, scope: !340)
!353 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !352)
!354 = !DILocation(line: 145, column: 18, scope: !355)
!355 = distinct !DILexicalBlock(scope: !340, file: !3, line: 145, column: 9)
!356 = !DILocation(line: 145, column: 9, scope: !340)
!357 = !DILocation(line: 149, column: 5, scope: !340)
!358 = !DILocation(line: 151, column: 21, scope: !359)
!359 = distinct !DILexicalBlock(scope: !340, file: !3, line: 149, column: 23)
!360 = !DILocation(line: 152, column: 9, scope: !359)
!361 = !DILocation(line: 154, column: 21, scope: !359)
!362 = !DILocation(line: 142, column: 9, scope: !340)
!363 = !DILocation(line: 155, column: 9, scope: !359)
!364 = !DILocation(line: 157, column: 33, scope: !359)
!365 = !DILocation(line: 157, column: 9, scope: !359)
!366 = !DILocation(line: 158, column: 9, scope: !359)
!367 = !DILocation(line: 79, column: 29, scope: !240, inlinedAt: !368)
!368 = distinct !DILocation(line: 162, column: 5, scope: !340)
!369 = !DILocation(line: 79, column: 39, scope: !240, inlinedAt: !368)
!370 = !DILocation(line: 81, column: 5, scope: !240, inlinedAt: !368)
!371 = !DILocation(line: 82, column: 5, scope: !240, inlinedAt: !368)
!372 = !DILocation(line: 163, column: 5, scope: !340)
!373 = !DILocation(line: 164, column: 1, scope: !340)
!374 = distinct !DISubprogram(name: "de_store_descriptor_with_len", scope: !3, file: !3, line: 172, type: !375, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !46, !36, !35, !90}
!377 = !{!378, !379, !380, !381}
!378 = !DILocalVariable(name: "header", arg: 1, scope: !374, file: !3, line: 172, type: !46)
!379 = !DILocalVariable(name: "type", arg: 2, scope: !374, file: !3, line: 172, type: !36)
!380 = !DILocalVariable(name: "size", arg: 3, scope: !374, file: !3, line: 172, type: !35)
!381 = !DILocalVariable(name: "len", arg: 4, scope: !374, file: !3, line: 172, type: !90)
!382 = !DILocation(line: 172, column: 39, scope: !374)
!383 = !DILocation(line: 172, column: 57, scope: !374)
!384 = !DILocation(line: 172, column: 73, scope: !374)
!385 = !DILocation(line: 172, column: 83, scope: !374)
!386 = !DILocation(line: 174, column: 23, scope: !374)
!387 = !DILocation(line: 174, column: 29, scope: !374)
!388 = !DILocation(line: 174, column: 17, scope: !374)
!389 = !DILocation(line: 174, column: 15, scope: !374)
!390 = !DILocation(line: 175, column: 5, scope: !374)
!391 = !DILocation(line: 177, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !374, file: !3, line: 175, column: 19)
!393 = !DILocation(line: 177, column: 9, scope: !392)
!394 = !DILocation(line: 177, column: 19, scope: !392)
!395 = !DILocation(line: 178, column: 9, scope: !392)
!396 = !DILocation(line: 180, column: 33, scope: !392)
!397 = !DILocation(line: 180, column: 9, scope: !392)
!398 = !DILocation(line: 181, column: 9, scope: !392)
!399 = !DILocation(line: 183, column: 9, scope: !392)
!400 = !DILocation(line: 184, column: 9, scope: !392)
!401 = !DILocation(line: 188, column: 1, scope: !374)
!402 = distinct !DISubprogram(name: "de_create_sequence", scope: !3, file: !3, line: 193, type: !403, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !46}
!405 = !{!406}
!406 = !DILocalVariable(name: "header", arg: 1, scope: !402, file: !3, line: 193, type: !46)
!407 = !DILocation(line: 193, column: 29, scope: !402)
!408 = !DILocation(line: 172, column: 39, scope: !374, inlinedAt: !409)
!409 = distinct !DILocation(line: 195, column: 5, scope: !402)
!410 = !DILocation(line: 172, column: 57, scope: !374, inlinedAt: !409)
!411 = !DILocation(line: 172, column: 73, scope: !374, inlinedAt: !409)
!412 = !DILocation(line: 172, column: 83, scope: !374, inlinedAt: !409)
!413 = !DILocation(line: 174, column: 15, scope: !374, inlinedAt: !409)
!414 = !DILocation(line: 180, column: 9, scope: !392, inlinedAt: !409)
!415 = !DILocation(line: 196, column: 1, scope: !402)
!416 = distinct !DISubprogram(name: "de_push_sequence", scope: !3, file: !3, line: 199, type: !417, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!46, !46}
!419 = !{!420, !421}
!420 = !DILocalVariable(name: "header", arg: 1, scope: !416, file: !3, line: 199, type: !46)
!421 = !DILocalVariable(name: "element_len", scope: !416, file: !3, line: 201, type: !50)
!422 = !DILocation(line: 199, column: 26, scope: !416)
!423 = !DILocation(line: 201, column: 23, scope: !416)
!424 = !DILocation(line: 201, column: 9, scope: !416)
!425 = !DILocation(line: 202, column: 41, scope: !416)
!426 = !DILocation(line: 172, column: 39, scope: !374, inlinedAt: !427)
!427 = distinct !DILocation(line: 202, column: 5, scope: !416)
!428 = !DILocation(line: 172, column: 57, scope: !374, inlinedAt: !427)
!429 = !DILocation(line: 172, column: 73, scope: !374, inlinedAt: !427)
!430 = !DILocation(line: 172, column: 83, scope: !374, inlinedAt: !427)
!431 = !DILocation(line: 174, column: 15, scope: !374, inlinedAt: !427)
!432 = !DILocation(line: 180, column: 9, scope: !392, inlinedAt: !427)
!433 = !DILocation(line: 203, column: 5, scope: !416)
!434 = distinct !DISubprogram(name: "de_pop_sequence", scope: !3, file: !3, line: 207, type: !435, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !46, !46}
!437 = !{!438, !439, !440, !441}
!438 = !DILocalVariable(name: "parent", arg: 1, scope: !434, file: !3, line: 207, type: !46)
!439 = !DILocalVariable(name: "child", arg: 2, scope: !434, file: !3, line: 207, type: !46)
!440 = !DILocalVariable(name: "child_len", scope: !434, file: !3, line: 209, type: !50)
!441 = !DILocalVariable(name: "data_size_parent", scope: !434, file: !3, line: 210, type: !50)
!442 = !DILocation(line: 207, column: 26, scope: !434)
!443 = !DILocation(line: 207, column: 38, scope: !434)
!444 = !DILocation(line: 209, column: 21, scope: !434)
!445 = !DILocation(line: 209, column: 9, scope: !434)
!446 = !DILocation(line: 210, column: 28, scope: !434)
!447 = !DILocation(line: 210, column: 9, scope: !434)
!448 = !DILocation(line: 211, column: 46, scope: !434)
!449 = !DILocation(line: 211, column: 29, scope: !434)
!450 = !DILocation(line: 211, column: 5, scope: !434)
!451 = !DILocation(line: 212, column: 1, scope: !434)
!452 = distinct !DISubprogram(name: "de_add_number", scope: !3, file: !3, line: 215, type: !375, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !453)
!453 = !{!454, !455, !456, !457, !458, !459}
!454 = !DILocalVariable(name: "seq", arg: 1, scope: !452, file: !3, line: 215, type: !46)
!455 = !DILocalVariable(name: "type", arg: 2, scope: !452, file: !3, line: 215, type: !36)
!456 = !DILocalVariable(name: "size", arg: 3, scope: !452, file: !3, line: 215, type: !35)
!457 = !DILocalVariable(name: "value", arg: 4, scope: !452, file: !3, line: 215, type: !90)
!458 = !DILocalVariable(name: "data_size", scope: !452, file: !3, line: 217, type: !50)
!459 = !DILocalVariable(name: "element_size", scope: !452, file: !3, line: 218, type: !50)
!460 = !DILocation(line: 215, column: 24, scope: !452)
!461 = !DILocation(line: 215, column: 39, scope: !452)
!462 = !DILocation(line: 215, column: 55, scope: !452)
!463 = !DILocation(line: 215, column: 65, scope: !452)
!464 = !DILocation(line: 217, column: 23, scope: !452)
!465 = !DILocation(line: 217, column: 9, scope: !452)
!466 = !DILocation(line: 218, column: 9, scope: !452)
!467 = !DILocation(line: 219, column: 29, scope: !452)
!468 = !DILocation(line: 219, column: 33, scope: !452)
!469 = !DILocalVariable(name: "header", arg: 1, scope: !470, file: !3, line: 167, type: !46)
!470 = distinct !DISubprogram(name: "de_store_descriptor", scope: !3, file: !3, line: 167, type: !471, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !46, !36, !35}
!473 = !{!469, !474, !475}
!474 = !DILocalVariable(name: "type", arg: 2, scope: !470, file: !3, line: 167, type: !36)
!475 = !DILocalVariable(name: "size", arg: 3, scope: !470, file: !3, line: 167, type: !35)
!476 = !DILocation(line: 167, column: 39, scope: !470, inlinedAt: !477)
!477 = distinct !DILocation(line: 219, column: 5, scope: !452)
!478 = !DILocation(line: 167, column: 57, scope: !470, inlinedAt: !477)
!479 = !DILocation(line: 167, column: 73, scope: !470, inlinedAt: !477)
!480 = !DILocation(line: 169, column: 23, scope: !470, inlinedAt: !477)
!481 = !DILocation(line: 169, column: 29, scope: !470, inlinedAt: !477)
!482 = !DILocation(line: 169, column: 17, scope: !470, inlinedAt: !477)
!483 = !DILocation(line: 169, column: 15, scope: !470, inlinedAt: !477)
!484 = !DILocation(line: 220, column: 5, scope: !452)
!485 = !DILocation(line: 222, column: 18, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 222, column: 13)
!487 = distinct !DILexicalBlock(scope: !452, file: !3, line: 220, column: 19)
!488 = !DILocation(line: 222, column: 13, scope: !487)
!489 = !DILocation(line: 223, column: 34, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 222, column: 29)
!491 = !DILocation(line: 223, column: 19, scope: !490)
!492 = !DILocation(line: 223, column: 13, scope: !490)
!493 = !DILocation(line: 223, column: 32, scope: !490)
!494 = !DILocation(line: 225, column: 9, scope: !490)
!495 = !DILocation(line: 228, column: 29, scope: !487)
!496 = !DILocation(line: 228, column: 27, scope: !487)
!497 = !DILocation(line: 228, column: 42, scope: !487)
!498 = !DILocation(line: 228, column: 9, scope: !487)
!499 = !DILocation(line: 230, column: 9, scope: !487)
!500 = !DILocation(line: 232, column: 29, scope: !487)
!501 = !DILocation(line: 232, column: 27, scope: !487)
!502 = !DILocation(line: 232, column: 9, scope: !487)
!503 = !DILocation(line: 234, column: 9, scope: !487)
!504 = !DILocation(line: 238, column: 36, scope: !452)
!505 = !DILocation(line: 238, column: 26, scope: !452)
!506 = !DILocation(line: 238, column: 5, scope: !452)
!507 = !DILocation(line: 239, column: 1, scope: !452)
!508 = distinct !DISubprogram(name: "de_add_data", scope: !3, file: !3, line: 242, type: !509, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !46, !36, !57, !46}
!511 = !{!512, !513, !514, !515, !516}
!512 = !DILocalVariable(name: "seq", arg: 1, scope: !508, file: !3, line: 242, type: !46)
!513 = !DILocalVariable(name: "type", arg: 2, scope: !508, file: !3, line: 242, type: !36)
!514 = !DILocalVariable(name: "size", arg: 3, scope: !508, file: !3, line: 242, type: !57)
!515 = !DILocalVariable(name: "data", arg: 4, scope: !508, file: !3, line: 242, type: !46)
!516 = !DILocalVariable(name: "data_size", scope: !508, file: !3, line: 244, type: !50)
!517 = !DILocation(line: 242, column: 22, scope: !508)
!518 = !DILocation(line: 242, column: 37, scope: !508)
!519 = !DILocation(line: 242, column: 47, scope: !508)
!520 = !DILocation(line: 242, column: 57, scope: !508)
!521 = !DILocation(line: 244, column: 23, scope: !508)
!522 = !DILocation(line: 244, column: 9, scope: !508)
!523 = !DILocation(line: 245, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !508, file: !3, line: 245, column: 9)
!525 = !DILocation(line: 245, column: 14, scope: !524)
!526 = !DILocation(line: 174, column: 17, scope: !374, inlinedAt: !527)
!527 = distinct !DILocation(line: 247, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !3, line: 245, column: 22)
!529 = !DILocation(line: 245, column: 9, scope: !508)
!530 = !DILocation(line: 172, column: 39, scope: !374, inlinedAt: !527)
!531 = !DILocation(line: 172, column: 57, scope: !374, inlinedAt: !527)
!532 = !DILocation(line: 172, column: 73, scope: !374, inlinedAt: !527)
!533 = !DILocation(line: 172, column: 83, scope: !374, inlinedAt: !527)
!534 = !DILocation(line: 174, column: 15, scope: !374, inlinedAt: !527)
!535 = !DILocation(line: 180, column: 9, scope: !392, inlinedAt: !527)
!536 = !DILocation(line: 249, column: 5, scope: !528)
!537 = !DILocation(line: 172, column: 39, scope: !374, inlinedAt: !538)
!538 = distinct !DILocation(line: 251, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !524, file: !3, line: 249, column: 12)
!540 = !DILocation(line: 172, column: 57, scope: !374, inlinedAt: !538)
!541 = !DILocation(line: 172, column: 73, scope: !374, inlinedAt: !538)
!542 = !DILocation(line: 172, column: 83, scope: !374, inlinedAt: !538)
!543 = !DILocation(line: 174, column: 17, scope: !374, inlinedAt: !538)
!544 = !DILocation(line: 174, column: 15, scope: !374, inlinedAt: !538)
!545 = !DILocation(line: 177, column: 21, scope: !392, inlinedAt: !538)
!546 = !DILocation(line: 177, column: 9, scope: !392, inlinedAt: !538)
!547 = !DILocation(line: 177, column: 19, scope: !392, inlinedAt: !538)
!548 = !DILocation(line: 254, column: 20, scope: !508)
!549 = !DILocation(line: 254, column: 5, scope: !508)
!550 = !DILocation(line: 255, column: 15, scope: !508)
!551 = !DILocation(line: 256, column: 26, scope: !508)
!552 = !DILocation(line: 256, column: 5, scope: !508)
!553 = !DILocation(line: 257, column: 1, scope: !508)
!554 = distinct !DISubprogram(name: "de_add_uuid128", scope: !3, file: !3, line: 259, type: !435, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !555)
!555 = !{!556, !557, !558}
!556 = !DILocalVariable(name: "seq", arg: 1, scope: !554, file: !3, line: 259, type: !46)
!557 = !DILocalVariable(name: "uuid", arg: 2, scope: !554, file: !3, line: 259, type: !46)
!558 = !DILocalVariable(name: "data_size", scope: !554, file: !3, line: 261, type: !50)
!559 = !DILocation(line: 259, column: 25, scope: !554)
!560 = !DILocation(line: 259, column: 34, scope: !554)
!561 = !DILocation(line: 261, column: 23, scope: !554)
!562 = !DILocation(line: 261, column: 9, scope: !554)
!563 = !DILocation(line: 262, column: 29, scope: !554)
!564 = !DILocation(line: 262, column: 33, scope: !554)
!565 = !DILocation(line: 167, column: 39, scope: !470, inlinedAt: !566)
!566 = distinct !DILocation(line: 262, column: 5, scope: !554)
!567 = !DILocation(line: 167, column: 57, scope: !470, inlinedAt: !566)
!568 = !DILocation(line: 167, column: 73, scope: !470, inlinedAt: !566)
!569 = !DILocation(line: 169, column: 15, scope: !470, inlinedAt: !566)
!570 = !DILocation(line: 263, column: 16, scope: !554)
!571 = !DILocation(line: 263, column: 20, scope: !554)
!572 = !DILocation(line: 263, column: 5, scope: !554)
!573 = !DILocation(line: 264, column: 40, scope: !554)
!574 = !DILocation(line: 264, column: 26, scope: !554)
!575 = !DILocation(line: 264, column: 5, scope: !554)
!576 = !DILocation(line: 265, column: 1, scope: !554)
!577 = distinct !DISubprogram(name: "sdp_add_attribute", scope: !3, file: !3, line: 267, type: !578, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !46, !57, !47}
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(name: "seq", arg: 1, scope: !577, file: !3, line: 267, type: !46)
!582 = !DILocalVariable(name: "attributeID", arg: 2, scope: !577, file: !3, line: 267, type: !57)
!583 = !DILocalVariable(name: "attributeValue", arg: 3, scope: !577, file: !3, line: 267, type: !47)
!584 = !DILocation(line: 267, column: 28, scope: !577)
!585 = !DILocation(line: 267, column: 37, scope: !577)
!586 = !DILocation(line: 267, column: 53, scope: !577)
!587 = !DILocation(line: 269, column: 1, scope: !577)
!588 = distinct !DISubprogram(name: "sdp_attribute_list_constains_id", scope: !3, file: !3, line: 365, type: !589, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{!50, !46, !57}
!591 = !{!592, !593, !594}
!592 = !DILocalVariable(name: "attributeIDList", arg: 1, scope: !588, file: !3, line: 365, type: !46)
!593 = !DILocalVariable(name: "attributeID", arg: 2, scope: !588, file: !3, line: 365, type: !57)
!594 = !DILocalVariable(name: "attributeID_search", scope: !588, file: !3, line: 367, type: !53)
!595 = !DILocation(line: 365, column: 41, scope: !588)
!596 = !DILocation(line: 365, column: 62, scope: !588)
!597 = !DILocation(line: 367, column: 5, scope: !588)
!598 = !DILocation(line: 368, column: 24, scope: !588)
!599 = !DILocation(line: 368, column: 31, scope: !588)
!600 = !{!601, !602, i64 0}
!601 = !{!"sdp_context_attributeID_search", !602, i64 0, !603, i64 4}
!602 = !{!"int", !259, i64 0}
!603 = !{!"short", !259, i64 0}
!604 = !DILocation(line: 369, column: 24, scope: !588)
!605 = !DILocation(line: 369, column: 36, scope: !588)
!606 = !{!601, !603, i64 4}
!607 = !DILocation(line: 370, column: 5, scope: !588)
!608 = !DILocation(line: 371, column: 31, scope: !588)
!609 = !DILocation(line: 372, column: 1, scope: !588)
!610 = !DILocation(line: 371, column: 5, scope: !588)
!611 = distinct !DISubprogram(name: "de_traverse_sequence", scope: !3, file: !3, line: 273, type: !612, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !618)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !46, !614, !51}
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "de_traversal_callback_t", file: !3, line: 272, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 32)
!616 = !DISubroutineType(types: !617)
!617 = !{!50, !46, !36, !35, !51}
!618 = !{!619, !620, !621, !622, !623, !624, !625, !627, !628}
!619 = !DILocalVariable(name: "element", arg: 1, scope: !611, file: !3, line: 273, type: !46)
!620 = !DILocalVariable(name: "handler", arg: 2, scope: !611, file: !3, line: 273, type: !614)
!621 = !DILocalVariable(name: "context", arg: 3, scope: !611, file: !3, line: 273, type: !51)
!622 = !DILocalVariable(name: "pos", scope: !611, file: !3, line: 275, type: !50)
!623 = !DILocalVariable(name: "end_pos", scope: !611, file: !3, line: 276, type: !50)
!624 = !DILocalVariable(name: "type", scope: !611, file: !3, line: 278, type: !36)
!625 = !DILocalVariable(name: "elemType", scope: !626, file: !3, line: 285, type: !36)
!626 = distinct !DILexicalBlock(scope: !611, file: !3, line: 284, column: 27)
!627 = !DILocalVariable(name: "elemSize", scope: !626, file: !3, line: 286, type: !35)
!628 = !DILocalVariable(name: "done", scope: !626, file: !3, line: 287, type: !47)
!629 = !DILocation(line: 273, column: 40, scope: !611)
!630 = !DILocation(line: 273, column: 73, scope: !611)
!631 = !DILocation(line: 273, column: 88, scope: !611)
!632 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !633)
!633 = distinct !DILocation(line: 278, column: 22, scope: !611)
!634 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !633)
!635 = !DILocation(line: 279, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !611, file: !3, line: 279, column: 9)
!637 = !DILocation(line: 279, column: 9, scope: !611)
!638 = !DILocation(line: 96, column: 28, scope: !272, inlinedAt: !639)
!639 = distinct !DILocation(line: 282, column: 11, scope: !611)
!640 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !641)
!641 = distinct !DILocation(line: 98, column: 25, scope: !272, inlinedAt: !639)
!642 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !641)
!643 = !DILocation(line: 99, column: 17, scope: !285, inlinedAt: !639)
!644 = !DILocation(line: 99, column: 9, scope: !272, inlinedAt: !639)
!645 = !DILocation(line: 102, column: 31, scope: !272, inlinedAt: !639)
!646 = !DILocation(line: 102, column: 19, scope: !272, inlinedAt: !639)
!647 = !DILocation(line: 102, column: 14, scope: !272, inlinedAt: !639)
!648 = !DILocation(line: 102, column: 5, scope: !272, inlinedAt: !639)
!649 = !DILocation(line: 275, column: 9, scope: !611)
!650 = !DILocation(line: 283, column: 15, scope: !611)
!651 = !DILocation(line: 276, column: 9, scope: !611)
!652 = !DILocation(line: 284, column: 16, scope: !653)
!653 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 1)
!654 = !DILocation(line: 284, column: 5, scope: !653)
!655 = !DILocation(line: 285, column: 58, scope: !626)
!656 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !657)
!657 = distinct !DILocation(line: 285, column: 30, scope: !626)
!658 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !657)
!659 = !DILocation(line: 93, column: 34, scope: !263, inlinedAt: !657)
!660 = !DILocation(line: 285, column: 19, scope: !626)
!661 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !662)
!662 = distinct !DILocation(line: 286, column: 30, scope: !626)
!663 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !662)
!664 = !DILocation(line: 286, column: 19, scope: !626)
!665 = !DILocation(line: 287, column: 19, scope: !626)
!666 = !DILocation(line: 287, column: 12, scope: !626)
!667 = !DILocation(line: 288, column: 13, scope: !668)
!668 = distinct !DILexicalBlock(scope: !626, file: !3, line: 288, column: 13)
!669 = !DILocation(line: 288, column: 13, scope: !626)
!670 = !DILocation(line: 291, column: 16, scope: !626)
!671 = !DILocation(line: 291, column: 13, scope: !626)
!672 = !DILocation(line: 293, column: 1, scope: !673)
!673 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 2)
!674 = distinct !DISubprogram(name: "sdp_traversal_attributeID_search", scope: !3, file: !3, line: 340, type: !616, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !675)
!675 = !{!676, !677, !678, !679, !680}
!676 = !DILocalVariable(name: "element", arg: 1, scope: !674, file: !3, line: 340, type: !46)
!677 = !DILocalVariable(name: "type", arg: 2, scope: !674, file: !3, line: 340, type: !36)
!678 = !DILocalVariable(name: "size", arg: 3, scope: !674, file: !3, line: 340, type: !35)
!679 = !DILocalVariable(name: "my_context", arg: 4, scope: !674, file: !3, line: 340, type: !51)
!680 = !DILocalVariable(name: "context", scope: !674, file: !3, line: 342, type: !52)
!681 = !DILocation(line: 340, column: 51, scope: !674)
!682 = !DILocation(line: 340, column: 70, scope: !674)
!683 = !DILocation(line: 340, column: 86, scope: !674)
!684 = !DILocation(line: 340, column: 98, scope: !674)
!685 = !DILocation(line: 343, column: 14, scope: !686)
!686 = distinct !DILexicalBlock(scope: !674, file: !3, line: 343, column: 9)
!687 = !DILocation(line: 343, column: 9, scope: !674)
!688 = !DILocation(line: 346, column: 5, scope: !674)
!689 = !DILocation(line: 348, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 348, column: 13)
!691 = distinct !DILexicalBlock(scope: !674, file: !3, line: 346, column: 19)
!692 = !DILocation(line: 348, column: 49, scope: !690)
!693 = !DILocation(line: 348, column: 40, scope: !690)
!694 = !DILocation(line: 348, column: 37, scope: !690)
!695 = !DILocation(line: 348, column: 13, scope: !691)
!696 = !DILocation(line: 349, column: 22, scope: !697)
!697 = distinct !DILexicalBlock(scope: !690, file: !3, line: 348, column: 62)
!698 = !DILocation(line: 349, column: 29, scope: !697)
!699 = !DILocation(line: 350, column: 13, scope: !697)
!700 = !DILocation(line: 354, column: 13, scope: !701)
!701 = distinct !DILexicalBlock(scope: !691, file: !3, line: 354, column: 13)
!702 = !DILocation(line: 354, column: 49, scope: !701)
!703 = !DILocation(line: 354, column: 40, scope: !701)
!704 = !DILocation(line: 354, column: 37, scope: !701)
!705 = !DILocation(line: 355, column: 13, scope: !701)
!706 = !DILocation(line: 355, column: 41, scope: !707)
!707 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!708 = !DILocation(line: 355, column: 38, scope: !707)
!709 = !DILocation(line: 354, column: 13, scope: !710)
!710 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 1)
!711 = !DILocation(line: 356, column: 22, scope: !712)
!712 = distinct !DILexicalBlock(scope: !701, file: !3, line: 355, column: 66)
!713 = !DILocation(line: 356, column: 29, scope: !712)
!714 = !DILocation(line: 357, column: 13, scope: !712)
!715 = !DILocation(line: 364, column: 1, scope: !674)
!716 = distinct !DISubprogram(name: "sdp_append_attributes_in_attributeIDList", scope: !3, file: !3, line: 406, type: !717, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{!57, !46, !46, !57, !57, !46}
!719 = !{!720, !721, !722, !723, !724, !725}
!720 = !DILocalVariable(name: "record", arg: 1, scope: !716, file: !3, line: 406, type: !46)
!721 = !DILocalVariable(name: "attributeIDList", arg: 2, scope: !716, file: !3, line: 406, type: !46)
!722 = !DILocalVariable(name: "startOffset", arg: 3, scope: !716, file: !3, line: 406, type: !57)
!723 = !DILocalVariable(name: "maxBytes", arg: 4, scope: !716, file: !3, line: 406, type: !57)
!724 = !DILocalVariable(name: "buffer", arg: 5, scope: !716, file: !3, line: 406, type: !46)
!725 = !DILocalVariable(name: "context", scope: !716, file: !3, line: 408, type: !59)
!726 = !DILocation(line: 406, column: 50, scope: !716)
!727 = !DILocation(line: 406, column: 62, scope: !716)
!728 = !DILocation(line: 406, column: 83, scope: !716)
!729 = !DILocation(line: 406, column: 100, scope: !716)
!730 = !DILocation(line: 406, column: 114, scope: !716)
!731 = !DILocation(line: 408, column: 5, scope: !716)
!732 = !DILocation(line: 409, column: 13, scope: !716)
!733 = !DILocation(line: 409, column: 20, scope: !716)
!734 = !{!735, !736, i64 0}
!735 = !{!"sdp_context_append_attributes", !736, i64 0, !603, i64 4, !603, i64 6, !603, i64 8, !736, i64 12}
!736 = !{!"any pointer", !259, i64 0}
!737 = !DILocation(line: 410, column: 13, scope: !716)
!738 = !DILocation(line: 410, column: 22, scope: !716)
!739 = !{!735, !603, i64 6}
!740 = !DILocation(line: 411, column: 13, scope: !716)
!741 = !DILocation(line: 411, column: 23, scope: !716)
!742 = !{!735, !603, i64 8}
!743 = !DILocation(line: 412, column: 13, scope: !716)
!744 = !DILocation(line: 412, column: 25, scope: !716)
!745 = !{!735, !603, i64 4}
!746 = !DILocation(line: 413, column: 13, scope: !716)
!747 = !DILocation(line: 413, column: 29, scope: !716)
!748 = !{!735, !736, i64 12}
!749 = !DILocation(line: 414, column: 5, scope: !716)
!750 = !DILocation(line: 415, column: 20, scope: !716)
!751 = !DILocation(line: 416, column: 1, scope: !716)
!752 = !DILocation(line: 415, column: 5, scope: !716)
!753 = distinct !DISubprogram(name: "sdp_attribute_list_traverse_sequence", scope: !3, file: !3, line: 297, type: !754, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !760)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !46, !756, !51}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdp_attribute_list_traversal_callback_t", file: !3, line: 296, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 32)
!758 = !DISubroutineType(types: !759)
!759 = !{!50, !57, !46, !36, !35, !51}
!760 = !{!761, !762, !763, !764, !765, !766, !767, !769, !770, !771, !772, !773}
!761 = !DILocalVariable(name: "element", arg: 1, scope: !753, file: !3, line: 297, type: !46)
!762 = !DILocalVariable(name: "handler", arg: 2, scope: !753, file: !3, line: 297, type: !756)
!763 = !DILocalVariable(name: "context", arg: 3, scope: !753, file: !3, line: 297, type: !51)
!764 = !DILocalVariable(name: "pos", scope: !753, file: !3, line: 299, type: !50)
!765 = !DILocalVariable(name: "end_pos", scope: !753, file: !3, line: 300, type: !50)
!766 = !DILocalVariable(name: "type", scope: !753, file: !3, line: 301, type: !36)
!767 = !DILocalVariable(name: "attribute_id", scope: !768, file: !3, line: 308, type: !57)
!768 = distinct !DILexicalBlock(scope: !753, file: !3, line: 307, column: 27)
!769 = !DILocalVariable(name: "done", scope: !768, file: !3, line: 309, type: !47)
!770 = !DILocalVariable(name: "valueType", scope: !768, file: !3, line: 310, type: !36)
!771 = !DILocalVariable(name: "valueSize", scope: !768, file: !3, line: 311, type: !35)
!772 = !DILocalVariable(name: "idType", scope: !768, file: !3, line: 312, type: !36)
!773 = !DILocalVariable(name: "idSize", scope: !768, file: !3, line: 313, type: !35)
!774 = !DILocation(line: 297, column: 56, scope: !753)
!775 = !DILocation(line: 297, column: 105, scope: !753)
!776 = !DILocation(line: 297, column: 120, scope: !753)
!777 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !778)
!778 = distinct !DILocation(line: 301, column: 22, scope: !753)
!779 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !778)
!780 = !DILocation(line: 302, column: 14, scope: !781)
!781 = distinct !DILexicalBlock(scope: !753, file: !3, line: 302, column: 9)
!782 = !DILocation(line: 302, column: 9, scope: !753)
!783 = !DILocation(line: 96, column: 28, scope: !272, inlinedAt: !784)
!784 = distinct !DILocation(line: 305, column: 11, scope: !753)
!785 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !786)
!786 = distinct !DILocation(line: 98, column: 25, scope: !272, inlinedAt: !784)
!787 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !786)
!788 = !DILocation(line: 99, column: 17, scope: !285, inlinedAt: !784)
!789 = !DILocation(line: 99, column: 9, scope: !272, inlinedAt: !784)
!790 = !DILocation(line: 102, column: 31, scope: !272, inlinedAt: !784)
!791 = !DILocation(line: 102, column: 19, scope: !272, inlinedAt: !784)
!792 = !DILocation(line: 102, column: 14, scope: !272, inlinedAt: !784)
!793 = !DILocation(line: 102, column: 5, scope: !272, inlinedAt: !784)
!794 = !DILocation(line: 299, column: 9, scope: !753)
!795 = !DILocation(line: 306, column: 15, scope: !753)
!796 = !DILocation(line: 300, column: 9, scope: !753)
!797 = !DILocation(line: 307, column: 16, scope: !798)
!798 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 1)
!799 = !DILocation(line: 307, column: 5, scope: !798)
!800 = !DILocation(line: 312, column: 56, scope: !768)
!801 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !802)
!802 = distinct !DILocation(line: 312, column: 28, scope: !768)
!803 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !802)
!804 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !805)
!805 = distinct !DILocation(line: 313, column: 28, scope: !768)
!806 = !DILocation(line: 315, column: 31, scope: !807)
!807 = distinct !DILexicalBlock(scope: !768, file: !3, line: 315, column: 13)
!808 = !DILocation(line: 308, column: 13, scope: !768)
!809 = !DILocation(line: 319, column: 13, scope: !768)
!810 = !DILocation(line: 320, column: 17, scope: !811)
!811 = distinct !DILexicalBlock(scope: !768, file: !3, line: 320, column: 13)
!812 = !DILocation(line: 320, column: 13, scope: !768)
!813 = !DILocation(line: 318, column: 24, scope: !768)
!814 = !DILocation(line: 323, column: 49, scope: !768)
!815 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !816)
!816 = distinct !DILocation(line: 323, column: 21, scope: !768)
!817 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !816)
!818 = !DILocation(line: 93, column: 34, scope: !263, inlinedAt: !816)
!819 = !DILocation(line: 310, column: 19, scope: !768)
!820 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !821)
!821 = distinct !DILocation(line: 324, column: 21, scope: !768)
!822 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !821)
!823 = !DILocation(line: 311, column: 19, scope: !768)
!824 = !DILocation(line: 325, column: 16, scope: !768)
!825 = !DILocation(line: 309, column: 12, scope: !768)
!826 = !DILocation(line: 326, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !768, file: !3, line: 326, column: 13)
!828 = !DILocation(line: 326, column: 13, scope: !768)
!829 = !DILocation(line: 329, column: 16, scope: !768)
!830 = !DILocation(line: 329, column: 13, scope: !768)
!831 = !DILocation(line: 331, column: 1, scope: !832)
!832 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 2)
!833 = distinct !DISubprogram(name: "sdp_traversal_append_attributes", scope: !3, file: !3, line: 384, type: !758, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !844}
!835 = !DILocalVariable(name: "attributeID", arg: 1, scope: !833, file: !3, line: 384, type: !57)
!836 = !DILocalVariable(name: "attributeValue", arg: 2, scope: !833, file: !3, line: 384, type: !46)
!837 = !DILocalVariable(name: "type", arg: 3, scope: !833, file: !3, line: 384, type: !36)
!838 = !DILocalVariable(name: "size", arg: 4, scope: !833, file: !3, line: 384, type: !35)
!839 = !DILocalVariable(name: "my_context", arg: 5, scope: !833, file: !3, line: 384, type: !51)
!840 = !DILocalVariable(name: "context", scope: !833, file: !3, line: 386, type: !58)
!841 = !DILocalVariable(name: "data_size", scope: !842, file: !3, line: 389, type: !57)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 387, column: 81)
!843 = distinct !DILexicalBlock(scope: !833, file: !3, line: 387, column: 9)
!844 = !DILocalVariable(name: "attribute_len", scope: !842, file: !3, line: 390, type: !50)
!845 = !DILocation(line: 384, column: 50, scope: !833)
!846 = !DILocation(line: 384, column: 67, scope: !833)
!847 = !DILocation(line: 384, column: 93, scope: !833)
!848 = !DILocation(line: 384, column: 109, scope: !833)
!849 = !DILocation(line: 384, column: 121, scope: !833)
!850 = !DILocation(line: 387, column: 50, scope: !843)
!851 = !DILocation(line: 365, column: 41, scope: !588, inlinedAt: !852)
!852 = distinct !DILocation(line: 387, column: 9, scope: !843)
!853 = !DILocation(line: 365, column: 62, scope: !588, inlinedAt: !852)
!854 = !DILocation(line: 367, column: 5, scope: !588, inlinedAt: !852)
!855 = !DILocation(line: 368, column: 24, scope: !588, inlinedAt: !852)
!856 = !DILocation(line: 368, column: 31, scope: !588, inlinedAt: !852)
!857 = !DILocation(line: 369, column: 24, scope: !588, inlinedAt: !852)
!858 = !DILocation(line: 369, column: 36, scope: !588, inlinedAt: !852)
!859 = !DILocation(line: 370, column: 5, scope: !588, inlinedAt: !852)
!860 = !DILocation(line: 371, column: 31, scope: !588, inlinedAt: !852)
!861 = !DILocation(line: 372, column: 1, scope: !588, inlinedAt: !852)
!862 = !DILocation(line: 387, column: 9, scope: !843)
!863 = !DILocation(line: 387, column: 9, scope: !833)
!864 = !DILocation(line: 389, column: 25, scope: !842)
!865 = !DILocation(line: 390, column: 29, scope: !842)
!866 = !DILocation(line: 390, column: 13, scope: !842)
!867 = !DILocation(line: 391, column: 15, scope: !868)
!868 = distinct !DILexicalBlock(scope: !842, file: !3, line: 391, column: 13)
!869 = !DILocation(line: 391, column: 32, scope: !868)
!870 = !DILocation(line: 391, column: 27, scope: !868)
!871 = !DILocation(line: 391, column: 61, scope: !868)
!872 = !DILocation(line: 391, column: 52, scope: !868)
!873 = !DILocation(line: 391, column: 49, scope: !868)
!874 = !DILocation(line: 391, column: 13, scope: !842)
!875 = !DILocation(line: 393, column: 65, scope: !876)
!876 = distinct !DILexicalBlock(scope: !868, file: !3, line: 391, column: 71)
!877 = !DILocation(line: 393, column: 13, scope: !876)
!878 = !DILocation(line: 395, column: 29, scope: !876)
!879 = !DILocation(line: 395, column: 36, scope: !876)
!880 = !DILocation(line: 395, column: 42, scope: !876)
!881 = !DILocation(line: 395, column: 40, scope: !876)
!882 = !DILocation(line: 395, column: 13, scope: !876)
!883 = !DILocation(line: 396, column: 35, scope: !876)
!884 = !DILocation(line: 396, column: 56, scope: !876)
!885 = !DILocation(line: 396, column: 46, scope: !876)
!886 = !DILocation(line: 396, column: 13, scope: !876)
!887 = !DILocation(line: 403, column: 1, scope: !833)
!888 = distinct !DISubprogram(name: "sdp_callback_remote_type", scope: !3, file: !3, line: 418, type: !147, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !889)
!889 = !{!890}
!890 = !DILocalVariable(name: "remote_type", arg: 1, scope: !888, file: !3, line: 418, type: !47)
!891 = !DILocation(line: 418, column: 56, scope: !888)
!892 = !DILocation(line: 421, column: 1, scope: !888)
!893 = distinct !DISubprogram(name: "sdp_decode_attributes_response", scope: !3, file: !3, line: 441, type: !894, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{!57, !46, !46}
!896 = !{!897, !898}
!897 = !DILocalVariable(name: "remote_record", arg: 1, scope: !893, file: !3, line: 441, type: !46)
!898 = !DILocalVariable(name: "addr", arg: 2, scope: !893, file: !3, line: 441, type: !46)
!899 = !DILocation(line: 441, column: 40, scope: !893)
!900 = !DILocation(line: 441, column: 59, scope: !893)
!901 = !DILocation(line: 443, column: 5, scope: !893)
!902 = !DILocation(line: 444, column: 5, scope: !893)
!903 = distinct !DISubprogram(name: "sdp_traversal_append_remote_attributes", scope: !3, file: !3, line: 424, type: !758, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !904)
!904 = !{!905, !906, !907, !908, !909, !910}
!905 = !DILocalVariable(name: "attributeID", arg: 1, scope: !903, file: !3, line: 424, type: !57)
!906 = !DILocalVariable(name: "attributeValue", arg: 2, scope: !903, file: !3, line: 424, type: !46)
!907 = !DILocalVariable(name: "type", arg: 3, scope: !903, file: !3, line: 424, type: !36)
!908 = !DILocalVariable(name: "size", arg: 4, scope: !903, file: !3, line: 424, type: !35)
!909 = !DILocalVariable(name: "my_context", arg: 5, scope: !903, file: !3, line: 424, type: !51)
!910 = !DILocalVariable(name: "attribute_len", scope: !903, file: !3, line: 427, type: !50)
!911 = !DILocation(line: 424, column: 57, scope: !903)
!912 = !DILocation(line: 424, column: 74, scope: !903)
!913 = !DILocation(line: 424, column: 100, scope: !903)
!914 = !DILocation(line: 424, column: 116, scope: !903)
!915 = !DILocation(line: 424, column: 128, scope: !903)
!916 = !DILocation(line: 428, column: 21, scope: !917)
!917 = distinct !DILexicalBlock(scope: !903, file: !3, line: 428, column: 9)
!918 = !DILocation(line: 428, column: 9, scope: !903)
!919 = !DILocation(line: 429, column: 34, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 429, column: 13)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 428, column: 42)
!922 = !DILocation(line: 429, column: 31, scope: !920)
!923 = !DILocation(line: 429, column: 13, scope: !921)
!924 = !DILocation(line: 430, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 430, column: 13)
!926 = distinct !DILexicalBlock(scope: !920, file: !3, line: 429, column: 66)
!927 = !DILocation(line: 430, column: 13, scope: !926)
!928 = !DILocation(line: 430, column: 13, scope: !929)
!929 = !DILexicalBlockFile(scope: !925, file: !3, discriminator: 1)
!930 = !DILocation(line: 431, column: 13, scope: !926)
!931 = !DILocation(line: 432, column: 13, scope: !926)
!932 = !DILocation(line: 433, column: 9, scope: !926)
!933 = !DILocation(line: 434, column: 13, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 434, column: 13)
!935 = distinct !DILexicalBlock(scope: !920, file: !3, line: 433, column: 16)
!936 = !DILocation(line: 434, column: 13, scope: !935)
!937 = !DILocation(line: 434, column: 13, scope: !938)
!938 = !DILexicalBlockFile(scope: !934, file: !3, discriminator: 1)
!939 = !DILocation(line: 435, column: 13, scope: !935)
!940 = !DILocation(line: 436, column: 13, scope: !935)
!941 = !DILocation(line: 439, column: 5, scope: !903)
!942 = distinct !DISubprogram(name: "sdp_decode_response_info_output", scope: !3, file: !3, line: 447, type: !943, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !946)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !57, !57, !945, !50}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!946 = !{!947, !948, !949, !950}
!947 = !DILocalVariable(name: "service_uuid", arg: 1, scope: !942, file: !3, line: 447, type: !57)
!948 = !DILocalVariable(name: "attribute_id", arg: 2, scope: !942, file: !3, line: 447, type: !57)
!949 = !DILocalVariable(name: "packet", arg: 3, scope: !942, file: !3, line: 447, type: !945)
!950 = !DILocalVariable(name: "size", arg: 4, scope: !942, file: !3, line: 447, type: !50)
!951 = !DILocation(line: 447, column: 64, scope: !942)
!952 = !DILocation(line: 447, column: 82, scope: !942)
!953 = !DILocation(line: 447, column: 106, scope: !942)
!954 = !DILocation(line: 447, column: 118, scope: !942)
!955 = !DILocation(line: 451, column: 1, scope: !942)
!956 = distinct !DISubprogram(name: "sdp_decode_p_attributes_response", scope: !3, file: !3, line: 454, type: !957, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{!57, !46, !57, !57, !46}
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !974, !975, !977, !978, !979, !980, !981, !982, !985, !989, !990}
!960 = !DILocalVariable(name: "element", arg: 1, scope: !956, file: !3, line: 454, type: !46)
!961 = !DILocalVariable(name: "len", arg: 2, scope: !956, file: !3, line: 454, type: !57)
!962 = !DILocalVariable(name: "class_uuid", arg: 3, scope: !956, file: !3, line: 454, type: !57)
!963 = !DILocalVariable(name: "rfcomm_id", arg: 4, scope: !956, file: !3, line: 454, type: !46)
!964 = !DILocalVariable(name: "pos", scope: !956, file: !3, line: 456, type: !50)
!965 = !DILocalVariable(name: "end_pos", scope: !956, file: !3, line: 457, type: !50)
!966 = !DILocalVariable(name: "target_flag", scope: !956, file: !3, line: 458, type: !50)
!967 = !DILocalVariable(name: "shortUUID", scope: !956, file: !3, line: 459, type: !90)
!968 = !DILocalVariable(name: "hfp_ag_rfcomm", scope: !956, file: !3, line: 460, type: !47)
!969 = !DILocalVariable(name: "hfp_hf_rfcomm", scope: !956, file: !3, line: 461, type: !47)
!970 = !DILocalVariable(name: "attribute_id", scope: !956, file: !3, line: 462, type: !57)
!971 = !DILocalVariable(name: "type", scope: !956, file: !3, line: 463, type: !36)
!972 = !DILocalVariable(name: "attribute_id", scope: !973, file: !3, line: 477, type: !57)
!973 = distinct !DILexicalBlock(scope: !956, file: !3, line: 476, column: 27)
!974 = !DILocalVariable(name: "attribute_len", scope: !973, file: !3, line: 478, type: !57)
!975 = !DILocalVariable(name: "decode_UUID", scope: !973, file: !3, line: 479, type: !976)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !112)
!977 = !DILocalVariable(name: "done", scope: !973, file: !3, line: 480, type: !47)
!978 = !DILocalVariable(name: "valueType", scope: !973, file: !3, line: 481, type: !36)
!979 = !DILocalVariable(name: "valueSize", scope: !973, file: !3, line: 482, type: !35)
!980 = !DILocalVariable(name: "idType", scope: !973, file: !3, line: 483, type: !36)
!981 = !DILocalVariable(name: "idSize", scope: !973, file: !3, line: 484, type: !35)
!982 = !DILocalVariable(name: "attribute_index", scope: !983, file: !3, line: 502, type: !50)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 501, column: 53)
!984 = distinct !DILexicalBlock(scope: !973, file: !3, line: 501, column: 13)
!985 = !DILocalVariable(name: "offset", scope: !986, file: !3, line: 586, type: !57)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 585, column: 57)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 585, column: 17)
!988 = distinct !DILexicalBlock(scope: !973, file: !3, line: 571, column: 28)
!989 = !DILocalVariable(name: "packet_size", scope: !986, file: !3, line: 586, type: !57)
!990 = !DILocalVariable(name: "index", scope: !991, file: !3, line: 616, type: !47)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 615, column: 34)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 615, column: 21)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 612, column: 61)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 612, column: 17)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 611, column: 18)
!996 = !DILocation(line: 454, column: 42, scope: !956)
!997 = !DILocation(line: 454, column: 55, scope: !956)
!998 = !DILocation(line: 454, column: 64, scope: !956)
!999 = !DILocation(line: 454, column: 80, scope: !956)
!1000 = !DILocation(line: 458, column: 9, scope: !956)
!1001 = !DILocation(line: 460, column: 8, scope: !956)
!1002 = !DILocation(line: 461, column: 8, scope: !956)
!1003 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 463, column: 22, scope: !956)
!1005 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !1004)
!1006 = !DILocation(line: 464, column: 14, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !956, file: !3, line: 464, column: 9)
!1008 = !DILocation(line: 464, column: 9, scope: !956)
!1009 = !DILocation(line: 456, column: 9, scope: !956)
!1010 = !DILocation(line: 473, column: 15, scope: !956)
!1011 = !DILocation(line: 457, column: 9, scope: !956)
!1012 = !DILocation(line: 474, column: 5, scope: !956)
!1013 = !{!736, !736, i64 0}
!1014 = !DILocation(line: 474, column: 25, scope: !956)
!1015 = !DILocation(line: 474, column: 52, scope: !956)
!1016 = !{!1017, !603, i64 12}
!1017 = !{!"_stack_config", !602, i64 0, !603, i64 4, !603, i64 6, !603, i64 8, !603, i64 10, !603, i64 12, !259, i64 14, !259, i64 15, !259, i64 16, !259, i64 17, !259, i64 17, !259, i64 17, !259, i64 17, !259, i64 18, !259, i64 18, !259, i64 18, !259, i64 18, !259, i64 18, !259, i64 18, !259, i64 18, !259, i64 18, !259, i64 19, !259, i64 19, !259, i64 19, !259, i64 19, !259, i64 19, !259, i64 19, !259, i64 19, !259, i64 19, !259, i64 20, !259, i64 20, !259, i64 20, !259, i64 21, !259, i64 22, !259, i64 23, !259, i64 24, !259, i64 25, !259, i64 31, !259, i64 31}
!1018 = !DILocation(line: 459, column: 9, scope: !956)
!1019 = !DILocation(line: 476, column: 16, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !956, file: !3, discriminator: 1)
!1021 = !DILocation(line: 476, column: 5, scope: !1020)
!1022 = !DILocation(line: 483, column: 56, scope: !973)
!1023 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 483, column: 28, scope: !973)
!1025 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !1024)
!1026 = !DILocation(line: 93, column: 34, scope: !263, inlinedAt: !1024)
!1027 = !DILocation(line: 483, column: 19, scope: !973)
!1028 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 484, column: 28, scope: !973)
!1030 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !1029)
!1031 = !DILocation(line: 484, column: 19, scope: !973)
!1032 = !DILocation(line: 485, column: 20, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !973, file: !3, line: 485, column: 13)
!1034 = !DILocation(line: 485, column: 13, scope: !973)
!1035 = !DILocation(line: 96, column: 28, scope: !272, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 486, column: 22, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 485, column: 31)
!1038 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 98, column: 25, scope: !272, inlinedAt: !1036)
!1040 = !DILocation(line: 99, column: 17, scope: !285, inlinedAt: !1036)
!1041 = !DILocation(line: 99, column: 9, scope: !272, inlinedAt: !1036)
!1042 = !DILocation(line: 102, column: 31, scope: !272, inlinedAt: !1036)
!1043 = !DILocation(line: 102, column: 19, scope: !272, inlinedAt: !1036)
!1044 = !DILocation(line: 102, column: 14, scope: !272, inlinedAt: !1036)
!1045 = !DILocation(line: 102, column: 5, scope: !272, inlinedAt: !1036)
!1046 = !DILocation(line: 487, column: 17, scope: !1037)
!1047 = !DILocation(line: 488, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 488, column: 13)
!1049 = !DILocation(line: 488, column: 13, scope: !1037)
!1050 = !DILocation(line: 488, column: 13, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 1)
!1052 = distinct !{!1052, !1053, !1054}
!1053 = !DILocation(line: 476, column: 5, scope: !956)
!1054 = !DILocation(line: 642, column: 5, scope: !956)
!1055 = !DILocation(line: 492, column: 20, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !973, file: !3, line: 492, column: 13)
!1057 = !DILocation(line: 492, column: 41, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 1)
!1059 = !DILocation(line: 492, column: 31, scope: !1056)
!1060 = !DILocation(line: 495, column: 24, scope: !973)
!1061 = !DILocation(line: 477, column: 13, scope: !973)
!1062 = !DILocation(line: 496, column: 13, scope: !973)
!1063 = !DILocation(line: 497, column: 17, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !973, file: !3, line: 497, column: 13)
!1065 = !DILocation(line: 497, column: 13, scope: !973)
!1066 = !DILocation(line: 500, column: 44, scope: !973)
!1067 = !DILocation(line: 501, column: 26, scope: !984)
!1068 = !DILocation(line: 501, column: 13, scope: !973)
!1069 = distinct !{!1069, !1070, !1071}
!1070 = !DILocation(line: 503, column: 13, scope: !983)
!1071 = !DILocation(line: 567, column: 66, scope: !983)
!1072 = !DILocation(line: 502, column: 17, scope: !983)
!1073 = !DILocation(line: 505, column: 63, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !983, file: !3, line: 503, column: 16)
!1075 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 505, column: 29, scope: !1074)
!1077 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !1076)
!1078 = !DILocation(line: 93, column: 34, scope: !263, inlinedAt: !1076)
!1079 = !DILocation(line: 481, column: 19, scope: !973)
!1080 = !DILocation(line: 96, column: 28, scope: !272, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 506, column: 29, scope: !1074)
!1082 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 98, column: 25, scope: !272, inlinedAt: !1081)
!1084 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !1083)
!1085 = !DILocation(line: 99, column: 17, scope: !285, inlinedAt: !1081)
!1086 = !DILocation(line: 99, column: 9, scope: !272, inlinedAt: !1081)
!1087 = !DILocation(line: 102, column: 31, scope: !272, inlinedAt: !1081)
!1088 = !DILocation(line: 102, column: 19, scope: !272, inlinedAt: !1081)
!1089 = !DILocation(line: 102, column: 14, scope: !272, inlinedAt: !1081)
!1090 = !DILocation(line: 102, column: 5, scope: !272, inlinedAt: !1081)
!1091 = !DILocation(line: 482, column: 19, scope: !973)
!1092 = !DILocation(line: 508, column: 41, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 508, column: 21)
!1094 = !DILocation(line: 509, column: 37, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 508, column: 65)
!1096 = !DILocation(line: 512, column: 17, scope: !1095)
!1097 = !DILocation(line: 512, column: 38, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1099, file: !3, discriminator: 1)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 512, column: 28)
!1100 = !DILocation(line: 515, column: 37, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 512, column: 50)
!1102 = !DILocation(line: 512, column: 28, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1093, file: !3, discriminator: 1)
!1104 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 514, column: 30, scope: !1101)
!1106 = !DILocation(line: 518, column: 25, scope: !1101)
!1107 = !DILocation(line: 530, column: 40, scope: !1101)
!1108 = !DILocation(line: 530, column: 37, scope: !1101)
!1109 = !DILocation(line: 535, column: 25, scope: !1101)
!1110 = !DILocation(line: 519, column: 37, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 518, column: 47)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 518, column: 25)
!1113 = !DILocation(line: 521, column: 21, scope: !1111)
!1114 = !DILocation(line: 522, column: 37, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 521, column: 54)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 521, column: 32)
!1117 = !DILocation(line: 524, column: 21, scope: !1115)
!1118 = !DILocation(line: 536, column: 25, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 535, column: 51)
!1120 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 535, column: 25)
!1121 = !DILocation(line: 536, column: 45, scope: !1119)
!1122 = !DILocation(line: 536, column: 72, scope: !1119)
!1123 = !DILocation(line: 538, column: 25, scope: !1101)
!1124 = !DILocation(line: 539, column: 25, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 538, column: 51)
!1126 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 538, column: 25)
!1127 = !DILocation(line: 539, column: 45, scope: !1125)
!1128 = !DILocation(line: 539, column: 72, scope: !1125)
!1129 = !DILocation(line: 540, column: 21, scope: !1125)
!1130 = !DILocation(line: 565, column: 40, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 562, column: 24)
!1132 = !DILocation(line: 565, column: 37, scope: !1131)
!1133 = !DILocation(line: 567, column: 41, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 1)
!1135 = !DILocation(line: 567, column: 38, scope: !1134)
!1136 = !DILocation(line: 567, column: 13, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1074, file: !3, discriminator: 1)
!1138 = !DILocation(line: 571, column: 9, scope: !973)
!1139 = !DILocation(line: 573, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !988, file: !3, line: 572, column: 27)
!1141 = !DILocation(line: 578, column: 89, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 573, column: 35)
!1143 = !DILocation(line: 578, column: 17, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1142, file: !3, discriminator: 1)
!1145 = !DILocation(line: 579, column: 17, scope: !1142)
!1146 = !DILocation(line: 585, column: 40, scope: !987)
!1147 = !DILocation(line: 585, column: 17, scope: !988)
!1148 = !DILocation(line: 587, column: 21, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !986, file: !3, line: 587, column: 21)
!1150 = !DILocation(line: 587, column: 34, scope: !1149)
!1151 = !DILocation(line: 589, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 587, column: 43)
!1153 = !DILocation(line: 593, column: 33, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !986, file: !3, line: 593, column: 21)
!1155 = !DILocation(line: 593, column: 21, scope: !1154)
!1156 = !DILocation(line: 593, column: 43, scope: !1154)
!1157 = !DILocation(line: 594, column: 28, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 593, column: 52)
!1159 = !DILocation(line: 596, column: 28, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 595, column: 24)
!1161 = !DILocation(line: 593, column: 21, scope: !986)
!1162 = !DILocation(line: 599, column: 34, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !986, file: !3, line: 599, column: 21)
!1164 = !DILocation(line: 599, column: 22, scope: !1163)
!1165 = !DILocation(line: 599, column: 44, scope: !1163)
!1166 = !DILocation(line: 599, column: 52, scope: !1163)
!1167 = !DILocation(line: 600, column: 35, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 599, column: 60)
!1169 = !DILocation(line: 599, column: 21, scope: !986)
!1170 = !DILocation(line: 602, column: 17, scope: !1168)
!1171 = !DILocation(line: 603, column: 35, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 602, column: 24)
!1173 = !DILocation(line: 607, column: 88, scope: !986)
!1174 = !DILocation(line: 607, column: 98, scope: !986)
!1175 = !DILocation(line: 607, column: 17, scope: !986)
!1176 = !DILocation(line: 608, column: 13, scope: !986)
!1177 = !DILocation(line: 641, column: 16, scope: !973)
!1178 = !DILocation(line: 641, column: 13, scope: !973)
!1179 = !DILocation(line: 644, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !956, file: !3, line: 644, column: 9)
!1181 = !DILocation(line: 644, column: 29, scope: !1180)
!1182 = !DILocation(line: 644, column: 56, scope: !1180)
!1183 = !DILocation(line: 644, column: 9, scope: !956)
!1184 = !DILocation(line: 645, column: 56, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 644, column: 77)
!1186 = !DILocation(line: 647, column: 5, scope: !1185)
!1187 = !DILocation(line: 646, column: 20, scope: !1185)
!1188 = !DILocation(line: 652, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !956, file: !3, line: 652, column: 9)
!1190 = !DILocation(line: 652, column: 29, scope: !1189)
!1191 = !DILocation(line: 652, column: 56, scope: !1189)
!1192 = !DILocation(line: 652, column: 9, scope: !956)
!1193 = !DILocation(line: 653, column: 56, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 652, column: 81)
!1195 = !DILocation(line: 654, column: 5, scope: !1194)
!1196 = !DILocation(line: 656, column: 1, scope: !956)
!1197 = distinct !DISubprogram(name: "sdp_filter_attributes_in_attributeIDList", scope: !3, file: !3, line: 732, type: !1198, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1201)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!50, !46, !46, !57, !57, !1200, !46}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1202 = !DILocalVariable(name: "record", arg: 1, scope: !1197, file: !3, line: 732, type: !46)
!1203 = !DILocalVariable(name: "attributeIDList", arg: 2, scope: !1197, file: !3, line: 732, type: !46)
!1204 = !DILocalVariable(name: "startOffset", arg: 3, scope: !1197, file: !3, line: 732, type: !57)
!1205 = !DILocalVariable(name: "maxBytes", arg: 4, scope: !1197, file: !3, line: 732, type: !57)
!1206 = !DILocalVariable(name: "usedBytes", arg: 5, scope: !1197, file: !3, line: 732, type: !1200)
!1207 = !DILocalVariable(name: "buffer", arg: 6, scope: !1197, file: !3, line: 732, type: !46)
!1208 = !DILocalVariable(name: "context", scope: !1197, file: !3, line: 735, type: !67)
!1209 = !DILocation(line: 732, column: 50, scope: !1197)
!1210 = !DILocation(line: 732, column: 62, scope: !1197)
!1211 = !DILocation(line: 732, column: 83, scope: !1197)
!1212 = !DILocation(line: 732, column: 100, scope: !1197)
!1213 = !DILocation(line: 732, column: 115, scope: !1197)
!1214 = !DILocation(line: 732, column: 130, scope: !1197)
!1215 = !DILocation(line: 735, column: 5, scope: !1197)
!1216 = !DILocation(line: 736, column: 13, scope: !1197)
!1217 = !DILocation(line: 736, column: 20, scope: !1197)
!1218 = !{!1219, !736, i64 0}
!1219 = !{!"sdp_context_filter_attributes", !736, i64 0, !603, i64 4, !603, i64 6, !603, i64 8, !736, i64 12, !602, i64 16}
!1220 = !DILocation(line: 737, column: 13, scope: !1197)
!1221 = !DILocation(line: 737, column: 22, scope: !1197)
!1222 = !{!1219, !603, i64 6}
!1223 = !DILocation(line: 738, column: 13, scope: !1197)
!1224 = !DILocation(line: 738, column: 23, scope: !1197)
!1225 = !{!1219, !603, i64 8}
!1226 = !DILocation(line: 739, column: 13, scope: !1197)
!1227 = !DILocation(line: 739, column: 25, scope: !1197)
!1228 = !{!1219, !603, i64 4}
!1229 = !DILocation(line: 740, column: 13, scope: !1197)
!1230 = !DILocation(line: 740, column: 29, scope: !1197)
!1231 = !{!1219, !736, i64 12}
!1232 = !DILocation(line: 741, column: 13, scope: !1197)
!1233 = !DILocation(line: 741, column: 22, scope: !1197)
!1234 = !{!1219, !602, i64 16}
!1235 = !DILocation(line: 743, column: 5, scope: !1197)
!1236 = !DILocation(line: 745, column: 26, scope: !1197)
!1237 = !DILocation(line: 745, column: 16, scope: !1197)
!1238 = !{!603, !603, i64 0}
!1239 = !DILocation(line: 746, column: 20, scope: !1197)
!1240 = !DILocation(line: 747, column: 1, scope: !1197)
!1241 = !DILocation(line: 746, column: 5, scope: !1197)
!1242 = distinct !DISubprogram(name: "sdp_traversal_filter_attributes", scope: !3, file: !3, line: 685, type: !758, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1256, !1258, !1260}
!1244 = !DILocalVariable(name: "attributeID", arg: 1, scope: !1242, file: !3, line: 685, type: !57)
!1245 = !DILocalVariable(name: "attributeValue", arg: 2, scope: !1242, file: !3, line: 685, type: !46)
!1246 = !DILocalVariable(name: "type", arg: 3, scope: !1242, file: !3, line: 685, type: !36)
!1247 = !DILocalVariable(name: "size", arg: 4, scope: !1242, file: !3, line: 685, type: !35)
!1248 = !DILocalVariable(name: "my_context", arg: 5, scope: !1242, file: !3, line: 685, type: !51)
!1249 = !DILocalVariable(name: "context", scope: !1242, file: !3, line: 687, type: !66)
!1250 = !DILocalVariable(name: "idBuffer", scope: !1251, file: !3, line: 699, type: !1253)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 698, column: 12)
!1252 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 696, column: 9)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 3)
!1256 = !DILocalVariable(name: "ok", scope: !1257, file: !3, line: 704, type: !50)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 703, column: 9)
!1258 = !DILocalVariable(name: "attribute_len", scope: !1259, file: !3, line: 714, type: !50)
!1259 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 713, column: 5)
!1260 = !DILocalVariable(name: "ok", scope: !1261, file: !3, line: 722, type: !50)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 720, column: 9)
!1262 = !DILocation(line: 685, column: 50, scope: !1242)
!1263 = !DILocation(line: 685, column: 67, scope: !1242)
!1264 = !DILocation(line: 685, column: 93, scope: !1242)
!1265 = !DILocation(line: 685, column: 109, scope: !1242)
!1266 = !DILocation(line: 685, column: 121, scope: !1242)
!1267 = !DILocation(line: 687, column: 53, scope: !1242)
!1268 = !DILocation(line: 687, column: 43, scope: !1242)
!1269 = !DILocation(line: 689, column: 51, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 689, column: 9)
!1271 = !DILocation(line: 365, column: 41, scope: !588, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 689, column: 10, scope: !1270)
!1273 = !DILocation(line: 365, column: 62, scope: !588, inlinedAt: !1272)
!1274 = !DILocation(line: 367, column: 5, scope: !588, inlinedAt: !1272)
!1275 = !DILocation(line: 368, column: 24, scope: !588, inlinedAt: !1272)
!1276 = !DILocation(line: 368, column: 31, scope: !588, inlinedAt: !1272)
!1277 = !DILocation(line: 369, column: 24, scope: !588, inlinedAt: !1272)
!1278 = !DILocation(line: 369, column: 36, scope: !588, inlinedAt: !1272)
!1279 = !DILocation(line: 370, column: 5, scope: !588, inlinedAt: !1272)
!1280 = !DILocation(line: 371, column: 31, scope: !588, inlinedAt: !1272)
!1281 = !DILocation(line: 372, column: 1, scope: !588, inlinedAt: !1272)
!1282 = !DILocation(line: 689, column: 10, scope: !1270)
!1283 = !DILocation(line: 689, column: 9, scope: !1242)
!1284 = !DILocation(line: 696, column: 18, scope: !1252)
!1285 = !DILocation(line: 696, column: 30, scope: !1252)
!1286 = !DILocation(line: 696, column: 9, scope: !1242)
!1287 = !DILocation(line: 697, column: 30, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 696, column: 36)
!1289 = !DILocation(line: 698, column: 5, scope: !1288)
!1290 = !DILocation(line: 699, column: 9, scope: !1251)
!1291 = !DILocation(line: 699, column: 12, scope: !1251)
!1292 = !DILocation(line: 167, column: 39, scope: !470, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 700, column: 9, scope: !1251)
!1294 = !DILocation(line: 167, column: 57, scope: !470, inlinedAt: !1293)
!1295 = !DILocation(line: 167, column: 73, scope: !470, inlinedAt: !1293)
!1296 = !DILocation(line: 169, column: 15, scope: !470, inlinedAt: !1293)
!1297 = !DILocation(line: 701, column: 9, scope: !1251)
!1298 = !DILocation(line: 704, column: 22, scope: !1257)
!1299 = !DILocation(line: 704, column: 17, scope: !1257)
!1300 = !DILocation(line: 705, column: 18, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 705, column: 17)
!1302 = !DILocation(line: 705, column: 17, scope: !1257)
!1303 = !DILocation(line: 710, column: 5, scope: !1252)
!1304 = !DILocation(line: 706, column: 26, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 705, column: 22)
!1306 = !DILocation(line: 706, column: 35, scope: !1305)
!1307 = !DILocation(line: 715, column: 22, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 715, column: 13)
!1309 = !DILocation(line: 714, column: 29, scope: !1259)
!1310 = !DILocation(line: 714, column: 13, scope: !1259)
!1311 = !DILocation(line: 715, column: 13, scope: !1308)
!1312 = !DILocation(line: 715, column: 34, scope: !1308)
!1313 = !DILocation(line: 715, column: 13, scope: !1259)
!1314 = !DILocation(line: 716, column: 34, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 715, column: 52)
!1316 = !DILocation(line: 717, column: 13, scope: !1315)
!1317 = !DILocation(line: 722, column: 48, scope: !1261)
!1318 = !DILocation(line: 722, column: 22, scope: !1261)
!1319 = !DILocation(line: 722, column: 17, scope: !1261)
!1320 = !DILocation(line: 723, column: 18, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 723, column: 17)
!1322 = !DILocation(line: 723, column: 17, scope: !1261)
!1323 = !DILocation(line: 724, column: 26, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 723, column: 22)
!1325 = !DILocation(line: 724, column: 35, scope: !1324)
!1326 = !DILocation(line: 725, column: 17, scope: !1324)
!1327 = distinct !DISubprogram(name: "spd_get_filtered_size", scope: !3, file: !3, line: 764, type: !341, isLocal: false, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DILocalVariable(name: "record", arg: 1, scope: !1327, file: !3, line: 764, type: !46)
!1330 = !DILocalVariable(name: "attributeIDList", arg: 2, scope: !1327, file: !3, line: 764, type: !46)
!1331 = !DILocalVariable(name: "context", scope: !1327, file: !3, line: 766, type: !76)
!1332 = !DILocation(line: 764, column: 31, scope: !1327)
!1333 = !DILocation(line: 764, column: 43, scope: !1327)
!1334 = !DILocation(line: 766, column: 5, scope: !1327)
!1335 = !DILocation(line: 767, column: 13, scope: !1327)
!1336 = !DILocation(line: 767, column: 18, scope: !1327)
!1337 = !{!1338, !603, i64 4}
!1338 = !{!"sdp_context_get_filtered_size", !736, i64 0, !603, i64 4}
!1339 = !DILocation(line: 768, column: 13, scope: !1327)
!1340 = !DILocation(line: 768, column: 29, scope: !1327)
!1341 = !{!1338, !736, i64 0}
!1342 = !DILocation(line: 769, column: 5, scope: !1327)
!1343 = !DILocation(line: 770, column: 20, scope: !1327)
!1344 = !DILocation(line: 770, column: 12, scope: !1327)
!1345 = !DILocation(line: 771, column: 1, scope: !1327)
!1346 = !DILocation(line: 770, column: 5, scope: !1327)
!1347 = distinct !DISubprogram(name: "sdp_traversal_get_filtered_size", scope: !3, file: !3, line: 755, type: !758, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354}
!1349 = !DILocalVariable(name: "attributeID", arg: 1, scope: !1347, file: !3, line: 755, type: !57)
!1350 = !DILocalVariable(name: "attributeValue", arg: 2, scope: !1347, file: !3, line: 755, type: !46)
!1351 = !DILocalVariable(name: "type", arg: 3, scope: !1347, file: !3, line: 755, type: !36)
!1352 = !DILocalVariable(name: "size", arg: 4, scope: !1347, file: !3, line: 755, type: !35)
!1353 = !DILocalVariable(name: "my_context", arg: 5, scope: !1347, file: !3, line: 755, type: !51)
!1354 = !DILocalVariable(name: "context", scope: !1347, file: !3, line: 757, type: !75)
!1355 = !DILocation(line: 755, column: 50, scope: !1347)
!1356 = !DILocation(line: 755, column: 67, scope: !1347)
!1357 = !DILocation(line: 755, column: 93, scope: !1347)
!1358 = !DILocation(line: 755, column: 109, scope: !1347)
!1359 = !DILocation(line: 755, column: 121, scope: !1347)
!1360 = !DILocation(line: 758, column: 50, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 758, column: 9)
!1362 = !DILocation(line: 365, column: 41, scope: !588, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 758, column: 9, scope: !1361)
!1364 = !DILocation(line: 365, column: 62, scope: !588, inlinedAt: !1363)
!1365 = !DILocation(line: 367, column: 5, scope: !588, inlinedAt: !1363)
!1366 = !DILocation(line: 368, column: 24, scope: !588, inlinedAt: !1363)
!1367 = !DILocation(line: 368, column: 31, scope: !588, inlinedAt: !1363)
!1368 = !DILocation(line: 369, column: 24, scope: !588, inlinedAt: !1363)
!1369 = !DILocation(line: 369, column: 36, scope: !588, inlinedAt: !1363)
!1370 = !DILocation(line: 370, column: 5, scope: !588, inlinedAt: !1363)
!1371 = !DILocation(line: 371, column: 31, scope: !588, inlinedAt: !1363)
!1372 = !DILocation(line: 372, column: 1, scope: !588, inlinedAt: !1363)
!1373 = !DILocation(line: 758, column: 9, scope: !1361)
!1374 = !DILocation(line: 758, column: 9, scope: !1347)
!1375 = !DILocation(line: 759, column: 30, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 758, column: 81)
!1377 = !DILocation(line: 759, column: 28, scope: !1376)
!1378 = !DILocation(line: 759, column: 18, scope: !1376)
!1379 = !DILocation(line: 759, column: 23, scope: !1376)
!1380 = !DILocation(line: 760, column: 5, scope: !1376)
!1381 = !DILocation(line: 761, column: 5, scope: !1347)
!1382 = distinct !DISubprogram(name: "sdp_get_attribute_value_for_attribute_id", scope: !3, file: !3, line: 789, type: !1383, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!46, !46, !57}
!1385 = !{!1386, !1387, !1388}
!1386 = !DILocalVariable(name: "record", arg: 1, scope: !1382, file: !3, line: 789, type: !46)
!1387 = !DILocalVariable(name: "attributeID", arg: 2, scope: !1382, file: !3, line: 789, type: !57)
!1388 = !DILocalVariable(name: "context", scope: !1382, file: !3, line: 791, type: !81)
!1389 = !DILocation(line: 789, column: 50, scope: !1382)
!1390 = !DILocation(line: 789, column: 62, scope: !1382)
!1391 = !DILocation(line: 791, column: 5, scope: !1382)
!1392 = !DILocation(line: 792, column: 13, scope: !1382)
!1393 = !DILocation(line: 792, column: 28, scope: !1382)
!1394 = !{!1395, !736, i64 4}
!1395 = !{!"sdp_context_attribute_by_id", !603, i64 0, !736, i64 4}
!1396 = !DILocation(line: 793, column: 13, scope: !1382)
!1397 = !DILocation(line: 793, column: 25, scope: !1382)
!1398 = !{!1395, !603, i64 0}
!1399 = !DILocation(line: 794, column: 5, scope: !1382)
!1400 = !DILocation(line: 795, column: 20, scope: !1382)
!1401 = !DILocation(line: 796, column: 1, scope: !1382)
!1402 = !DILocation(line: 795, column: 5, scope: !1382)
!1403 = distinct !DISubprogram(name: "sdp_traversal_attribute_by_id", scope: !3, file: !3, line: 779, type: !758, isLocal: true, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410}
!1405 = !DILocalVariable(name: "attributeID", arg: 1, scope: !1403, file: !3, line: 779, type: !57)
!1406 = !DILocalVariable(name: "attributeValue", arg: 2, scope: !1403, file: !3, line: 779, type: !46)
!1407 = !DILocalVariable(name: "attributeType", arg: 3, scope: !1403, file: !3, line: 779, type: !36)
!1408 = !DILocalVariable(name: "size", arg: 4, scope: !1403, file: !3, line: 779, type: !35)
!1409 = !DILocalVariable(name: "my_context", arg: 5, scope: !1403, file: !3, line: 779, type: !51)
!1410 = !DILocalVariable(name: "context", scope: !1403, file: !3, line: 781, type: !80)
!1411 = !DILocation(line: 779, column: 48, scope: !1403)
!1412 = !DILocation(line: 779, column: 65, scope: !1403)
!1413 = !DILocation(line: 779, column: 91, scope: !1403)
!1414 = !DILocation(line: 779, column: 116, scope: !1403)
!1415 = !DILocation(line: 779, column: 128, scope: !1403)
!1416 = !DILocation(line: 782, column: 33, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 782, column: 9)
!1418 = !DILocation(line: 782, column: 21, scope: !1417)
!1419 = !DILocation(line: 782, column: 9, scope: !1403)
!1420 = !DILocation(line: 783, column: 18, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 782, column: 46)
!1422 = !DILocation(line: 783, column: 33, scope: !1421)
!1423 = !DILocation(line: 784, column: 9, scope: !1421)
!1424 = !DILocation(line: 787, column: 1, scope: !1403)
!1425 = distinct !DISubprogram(name: "sdp_set_attribute_value_for_attribute_id", scope: !3, file: !3, line: 829, type: !1426, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!47, !46, !57, !90}
!1428 = !{!1429, !1430, !1431, !1432}
!1429 = !DILocalVariable(name: "record", arg: 1, scope: !1425, file: !3, line: 829, type: !46)
!1430 = !DILocalVariable(name: "attributeID", arg: 2, scope: !1425, file: !3, line: 829, type: !57)
!1431 = !DILocalVariable(name: "value", arg: 3, scope: !1425, file: !3, line: 829, type: !90)
!1432 = !DILocalVariable(name: "context", scope: !1425, file: !3, line: 831, type: !86)
!1433 = !DILocation(line: 829, column: 49, scope: !1425)
!1434 = !DILocation(line: 829, column: 61, scope: !1425)
!1435 = !DILocation(line: 829, column: 78, scope: !1425)
!1436 = !DILocation(line: 831, column: 5, scope: !1425)
!1437 = !DILocation(line: 832, column: 13, scope: !1425)
!1438 = !DILocation(line: 832, column: 25, scope: !1425)
!1439 = !{!1440, !603, i64 0}
!1440 = !{!"sdp_context_set_attribute_for_id", !603, i64 0, !602, i64 4, !259, i64 8}
!1441 = !DILocation(line: 833, column: 13, scope: !1425)
!1442 = !DILocation(line: 833, column: 28, scope: !1425)
!1443 = !{!1440, !602, i64 4}
!1444 = !DILocation(line: 834, column: 13, scope: !1425)
!1445 = !DILocation(line: 834, column: 28, scope: !1425)
!1446 = !{!1440, !259, i64 8}
!1447 = !DILocation(line: 835, column: 5, scope: !1425)
!1448 = !DILocation(line: 836, column: 20, scope: !1425)
!1449 = !DILocation(line: 837, column: 1, scope: !1425)
!1450 = !DILocation(line: 836, column: 5, scope: !1425)
!1451 = distinct !DISubprogram(name: "sdp_traversal_set_attribute_for_id", scope: !3, file: !3, line: 804, type: !758, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458}
!1453 = !DILocalVariable(name: "attributeID", arg: 1, scope: !1451, file: !3, line: 804, type: !57)
!1454 = !DILocalVariable(name: "attributeValue", arg: 2, scope: !1451, file: !3, line: 804, type: !46)
!1455 = !DILocalVariable(name: "attributeType", arg: 3, scope: !1451, file: !3, line: 804, type: !36)
!1456 = !DILocalVariable(name: "size", arg: 4, scope: !1451, file: !3, line: 804, type: !35)
!1457 = !DILocalVariable(name: "my_context", arg: 5, scope: !1451, file: !3, line: 804, type: !51)
!1458 = !DILocalVariable(name: "context", scope: !1451, file: !3, line: 806, type: !85)
!1459 = !DILocation(line: 804, column: 53, scope: !1451)
!1460 = !DILocation(line: 804, column: 70, scope: !1451)
!1461 = !DILocation(line: 804, column: 96, scope: !1451)
!1462 = !DILocation(line: 804, column: 121, scope: !1451)
!1463 = !DILocation(line: 804, column: 133, scope: !1451)
!1464 = !DILocation(line: 807, column: 33, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 807, column: 9)
!1466 = !DILocation(line: 807, column: 21, scope: !1465)
!1467 = !DILocation(line: 807, column: 9, scope: !1451)
!1468 = !DILocation(line: 808, column: 18, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 807, column: 46)
!1470 = !DILocation(line: 808, column: 33, scope: !1469)
!1471 = !DILocation(line: 809, column: 9, scope: !1469)
!1472 = !DILocation(line: 811, column: 31, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 811, column: 17)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 809, column: 23)
!1475 = !DILocation(line: 811, column: 17, scope: !1474)
!1476 = !DILocation(line: 812, column: 46, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 811, column: 42)
!1478 = !DILocation(line: 812, column: 37, scope: !1477)
!1479 = !DILocation(line: 812, column: 17, scope: !1477)
!1480 = !DILocation(line: 812, column: 35, scope: !1477)
!1481 = !DILocation(line: 813, column: 13, scope: !1477)
!1482 = !DILocation(line: 816, column: 54, scope: !1474)
!1483 = !DILocation(line: 816, column: 45, scope: !1474)
!1484 = !DILocation(line: 816, column: 13, scope: !1474)
!1485 = !DILocation(line: 817, column: 13, scope: !1474)
!1486 = !DILocation(line: 819, column: 54, scope: !1474)
!1487 = !DILocation(line: 819, column: 13, scope: !1474)
!1488 = !DILocation(line: 820, column: 13, scope: !1474)
!1489 = !DILocation(line: 828, column: 1, scope: !1451)
!1490 = distinct !DISubprogram(name: "sdp_record_contains_UUID128", scope: !3, file: !3, line: 860, type: !341, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DILocalVariable(name: "record", arg: 1, scope: !1490, file: !3, line: 860, type: !46)
!1493 = !DILocalVariable(name: "uuid128", arg: 2, scope: !1490, file: !3, line: 860, type: !46)
!1494 = !DILocalVariable(name: "context", scope: !1490, file: !3, line: 862, type: !93)
!1495 = !DILocation(line: 860, column: 37, scope: !1490)
!1496 = !DILocation(line: 860, column: 49, scope: !1490)
!1497 = !DILocation(line: 862, column: 5, scope: !1490)
!1498 = !DILocation(line: 863, column: 13, scope: !1490)
!1499 = !DILocation(line: 863, column: 21, scope: !1490)
!1500 = !{!1501, !736, i64 0}
!1501 = !{!"sdp_context_contains_uuid128", !736, i64 0, !602, i64 4}
!1502 = !DILocation(line: 864, column: 13, scope: !1490)
!1503 = !DILocation(line: 864, column: 20, scope: !1490)
!1504 = !{!1501, !602, i64 4}
!1505 = !DILocation(line: 865, column: 5, scope: !1490)
!1506 = !DILocation(line: 866, column: 20, scope: !1490)
!1507 = !DILocation(line: 867, column: 1, scope: !1490)
!1508 = !DILocation(line: 866, column: 5, scope: !1490)
!1509 = distinct !DISubprogram(name: "sdp_traversal_contains_UUID128", scope: !3, file: !3, line: 847, type: !616, isLocal: true, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517}
!1511 = !DILocalVariable(name: "element", arg: 1, scope: !1509, file: !3, line: 847, type: !46)
!1512 = !DILocalVariable(name: "type", arg: 2, scope: !1509, file: !3, line: 847, type: !36)
!1513 = !DILocalVariable(name: "size", arg: 3, scope: !1509, file: !3, line: 847, type: !35)
!1514 = !DILocalVariable(name: "my_context", arg: 4, scope: !1509, file: !3, line: 847, type: !51)
!1515 = !DILocalVariable(name: "context", scope: !1509, file: !3, line: 849, type: !92)
!1516 = !DILocalVariable(name: "normalizedUUID", scope: !1509, file: !3, line: 850, type: !976)
!1517 = !DILocalVariable(name: "uuidOK", scope: !1518, file: !3, line: 852, type: !47)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 851, column: 26)
!1519 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 851, column: 9)
!1520 = !DILocation(line: 847, column: 49, scope: !1509)
!1521 = !DILocation(line: 847, column: 68, scope: !1509)
!1522 = !DILocation(line: 847, column: 84, scope: !1509)
!1523 = !DILocation(line: 847, column: 96, scope: !1509)
!1524 = !DILocation(line: 850, column: 5, scope: !1509)
!1525 = !DILocation(line: 850, column: 8, scope: !1509)
!1526 = !DILocation(line: 851, column: 9, scope: !1509)
!1527 = !DILocation(line: 852, column: 21, scope: !1518)
!1528 = !DILocation(line: 853, column: 27, scope: !1518)
!1529 = !DILocation(line: 853, column: 34, scope: !1518)
!1530 = !DILocation(line: 853, column: 53, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1518, file: !3, discriminator: 1)
!1532 = !DILocation(line: 853, column: 37, scope: !1531)
!1533 = !DILocation(line: 853, column: 82, scope: !1531)
!1534 = !DILocation(line: 853, column: 34, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1518, file: !3, discriminator: 2)
!1536 = !DILocation(line: 856, column: 73, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 855, column: 25)
!1538 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 855, column: 9)
!1539 = !DILocation(line: 860, column: 37, scope: !1490, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 856, column: 27, scope: !1537)
!1541 = !DILocation(line: 862, column: 5, scope: !1490, inlinedAt: !1540)
!1542 = !DILocation(line: 863, column: 21, scope: !1490, inlinedAt: !1540)
!1543 = !DILocation(line: 864, column: 13, scope: !1490, inlinedAt: !1540)
!1544 = !DILocation(line: 864, column: 20, scope: !1490, inlinedAt: !1540)
!1545 = !DILocation(line: 865, column: 5, scope: !1490, inlinedAt: !1540)
!1546 = !DILocation(line: 866, column: 20, scope: !1490, inlinedAt: !1540)
!1547 = !DILocation(line: 867, column: 1, scope: !1490, inlinedAt: !1540)
!1548 = !DILocation(line: 857, column: 5, scope: !1537)
!1549 = !DILocation(line: 858, column: 21, scope: !1509)
!1550 = !DILocation(line: 859, column: 1, scope: !1509)
!1551 = !DILocation(line: 858, column: 5, scope: !1509)
!1552 = distinct !DISubprogram(name: "sdp_traversal_match_pattern", scope: !3, file: !3, line: 876, type: !616, isLocal: false, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560}
!1554 = !DILocalVariable(name: "element", arg: 1, scope: !1552, file: !3, line: 876, type: !46)
!1555 = !DILocalVariable(name: "attributeType", arg: 2, scope: !1552, file: !3, line: 876, type: !36)
!1556 = !DILocalVariable(name: "size", arg: 3, scope: !1552, file: !3, line: 876, type: !35)
!1557 = !DILocalVariable(name: "my_context", arg: 4, scope: !1552, file: !3, line: 876, type: !51)
!1558 = !DILocalVariable(name: "context", scope: !1552, file: !3, line: 878, type: !42)
!1559 = !DILocalVariable(name: "normalizedUUID", scope: !1552, file: !3, line: 879, type: !976)
!1560 = !DILocalVariable(name: "uuidOK", scope: !1552, file: !3, line: 880, type: !47)
!1561 = !DILocation(line: 876, column: 37, scope: !1552)
!1562 = !DILocation(line: 876, column: 56, scope: !1552)
!1563 = !DILocation(line: 876, column: 81, scope: !1552)
!1564 = !DILocation(line: 876, column: 93, scope: !1552)
!1565 = !DILocation(line: 879, column: 5, scope: !1552)
!1566 = !DILocation(line: 879, column: 8, scope: !1552)
!1567 = !DILocation(line: 880, column: 17, scope: !1552)
!1568 = !DILocation(line: 880, column: 8, scope: !1552)
!1569 = !DILocation(line: 881, column: 10, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 881, column: 9)
!1571 = !DILocation(line: 881, column: 17, scope: !1570)
!1572 = !DILocation(line: 881, column: 58, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1570, file: !3, discriminator: 1)
!1574 = !{!1575, !736, i64 0}
!1575 = !{!"sdp_context_match_pattern", !736, i64 0, !602, i64 4}
!1576 = !DILocation(line: 860, column: 37, scope: !1490, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 881, column: 21, scope: !1573)
!1578 = !DILocation(line: 860, column: 49, scope: !1490, inlinedAt: !1577)
!1579 = !DILocation(line: 862, column: 5, scope: !1490, inlinedAt: !1577)
!1580 = !DILocation(line: 863, column: 13, scope: !1490, inlinedAt: !1577)
!1581 = !DILocation(line: 863, column: 21, scope: !1490, inlinedAt: !1577)
!1582 = !DILocation(line: 864, column: 13, scope: !1490, inlinedAt: !1577)
!1583 = !DILocation(line: 864, column: 20, scope: !1490, inlinedAt: !1577)
!1584 = !DILocation(line: 865, column: 5, scope: !1490, inlinedAt: !1577)
!1585 = !DILocation(line: 866, column: 20, scope: !1490, inlinedAt: !1577)
!1586 = !DILocation(line: 867, column: 1, scope: !1490, inlinedAt: !1577)
!1587 = !DILocation(line: 881, column: 21, scope: !1573)
!1588 = !DILocation(line: 881, column: 9, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1552, file: !3, discriminator: 1)
!1590 = !DILocation(line: 882, column: 18, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 881, column: 83)
!1592 = !DILocation(line: 882, column: 25, scope: !1591)
!1593 = !{!1575, !602, i64 4}
!1594 = !DILocation(line: 883, column: 9, scope: !1591)
!1595 = !DILocation(line: 886, column: 1, scope: !1552)
!1596 = distinct !DISubprogram(name: "sdp_record_matches_service_search_pattern", scope: !3, file: !3, line: 894, type: !341, isLocal: false, isDefinition: true, scopeLine: 895, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1597)
!1597 = !{!1598, !1599, !1600}
!1598 = !DILocalVariable(name: "record", arg: 1, scope: !1596, file: !3, line: 894, type: !46)
!1599 = !DILocalVariable(name: "serviceSearchPattern", arg: 2, scope: !1596, file: !3, line: 894, type: !46)
!1600 = !DILocalVariable(name: "context", scope: !1596, file: !3, line: 896, type: !43)
!1601 = !DILocation(line: 894, column: 51, scope: !1596)
!1602 = !DILocation(line: 894, column: 63, scope: !1596)
!1603 = !DILocation(line: 896, column: 5, scope: !1596)
!1604 = !DILocation(line: 897, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 897, column: 9)
!1606 = !DILocation(line: 897, column: 9, scope: !1596)
!1607 = !DILocation(line: 898, column: 13, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 898, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 897, column: 31)
!1610 = !DILocation(line: 898, column: 33, scope: !1608)
!1611 = !DILocation(line: 898, column: 13, scope: !1609)
!1612 = !DILocation(line: 900, column: 37, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 900, column: 17)
!1614 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 898, column: 49)
!1615 = !DILocation(line: 900, column: 17, scope: !1613)
!1616 = !DILocation(line: 900, column: 64, scope: !1613)
!1617 = !DILocation(line: 902, column: 28, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 902, column: 21)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 900, column: 91)
!1620 = !DILocation(line: 900, column: 17, scope: !1614)
!1621 = !DILocation(line: 906, column: 64, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 906, column: 17)
!1623 = !DILocation(line: 907, column: 28, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 907, column: 21)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 906, column: 85)
!1626 = !DILocation(line: 906, column: 17, scope: !1614)
!1627 = !DILocation(line: 911, column: 65, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 911, column: 17)
!1629 = !DILocation(line: 911, column: 90, scope: !1628)
!1630 = !DILocation(line: 911, column: 93, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1628, file: !3, discriminator: 1)
!1632 = !DILocation(line: 913, column: 28, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 913, column: 21)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 911, column: 117)
!1635 = !DILocation(line: 911, column: 17, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1614, file: !3, discriminator: 1)
!1637 = !DILocation(line: 913, column: 21, scope: !1634)
!1638 = !DILocation(line: 917, column: 64, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 917, column: 17)
!1640 = !DILocation(line: 918, column: 28, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 918, column: 21)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 917, column: 85)
!1643 = !DILocation(line: 917, column: 17, scope: !1614)
!1644 = !DILocation(line: 922, column: 24, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 922, column: 17)
!1646 = !DILocation(line: 927, column: 25, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 927, column: 17)
!1648 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 925, column: 16)
!1649 = !DILocation(line: 928, column: 28, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1647, file: !3, discriminator: 1)
!1651 = !DILocation(line: 928, column: 17, scope: !1647)
!1652 = !DILocation(line: 934, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 934, column: 9)
!1654 = !DILocation(line: 934, column: 9, scope: !1596)
!1655 = !DILocation(line: 936, column: 13, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 936, column: 13)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 934, column: 30)
!1658 = !DILocation(line: 936, column: 33, scope: !1656)
!1659 = !DILocation(line: 936, column: 13, scope: !1657)
!1660 = !DILocation(line: 937, column: 24, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 937, column: 17)
!1662 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 936, column: 55)
!1663 = !DILocation(line: 937, column: 17, scope: !1662)
!1664 = !DILocation(line: 942, column: 22, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 942, column: 17)
!1666 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 940, column: 16)
!1667 = !DILocation(line: 942, column: 19, scope: !1665)
!1668 = !DILocation(line: 942, column: 17, scope: !1666)
!1669 = !DILocation(line: 943, column: 21, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 943, column: 21)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 942, column: 54)
!1672 = !DILocation(line: 943, column: 54, scope: !1670)
!1673 = !DILocation(line: 944, column: 32, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 944, column: 25)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 943, column: 73)
!1676 = !DILocation(line: 943, column: 21, scope: !1671)
!1677 = !DILocation(line: 953, column: 13, scope: !1596)
!1678 = !DILocation(line: 953, column: 20, scope: !1596)
!1679 = !DILocation(line: 954, column: 13, scope: !1596)
!1680 = !DILocation(line: 954, column: 20, scope: !1596)
!1681 = !DILocation(line: 955, column: 5, scope: !1596)
!1682 = !DILocation(line: 956, column: 20, scope: !1596)
!1683 = !DILocation(line: 956, column: 5, scope: !1596)
!1684 = !DILocation(line: 957, column: 1, scope: !1596)
!1685 = distinct !DISubprogram(name: "de_dump_data_element", scope: !3, file: !3, line: 1017, type: !403, isLocal: false, isDefinition: true, scopeLine: 1018, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1686)
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DILocalVariable(name: "record", arg: 1, scope: !1685, file: !3, line: 1017, type: !46)
!1688 = !DILocalVariable(name: "indent", scope: !1685, file: !3, line: 1019, type: !50)
!1689 = !DILocalVariable(name: "type", scope: !1685, file: !3, line: 1021, type: !36)
!1690 = !DILocalVariable(name: "size", scope: !1685, file: !3, line: 1022, type: !35)
!1691 = !DILocation(line: 1017, column: 31, scope: !1685)
!1692 = !DILocation(line: 1019, column: 5, scope: !1685)
!1693 = !DILocation(line: 1019, column: 9, scope: !1685)
!1694 = !{!602, !602, i64 0}
!1695 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 1021, column: 22, scope: !1685)
!1697 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !1696)
!1698 = !DILocation(line: 93, column: 34, scope: !263, inlinedAt: !1696)
!1699 = !DILocation(line: 1021, column: 15, scope: !1685)
!1700 = !DILocation(line: 86, column: 32, scope: !251, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 1022, column: 22, scope: !1685)
!1702 = !DILocation(line: 88, column: 34, scope: !251, inlinedAt: !1701)
!1703 = !DILocation(line: 1022, column: 15, scope: !1685)
!1704 = !DILocation(line: 1023, column: 5, scope: !1685)
!1705 = !DILocation(line: 1024, column: 1, scope: !1685)
!1706 = distinct !DISubprogram(name: "de_traversal_dump_data", scope: !3, file: !3, line: 961, type: !616, isLocal: true, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1721}
!1708 = !DILocalVariable(name: "element", arg: 1, scope: !1706, file: !3, line: 961, type: !46)
!1709 = !DILocalVariable(name: "de_type", arg: 2, scope: !1706, file: !3, line: 961, type: !36)
!1710 = !DILocalVariable(name: "de_size", arg: 3, scope: !1706, file: !3, line: 961, type: !35)
!1711 = !DILocalVariable(name: "my_context", arg: 4, scope: !1706, file: !3, line: 961, type: !51)
!1712 = !DILocalVariable(name: "indent", scope: !1706, file: !3, line: 963, type: !50)
!1713 = !DILocalVariable(name: "i", scope: !1706, file: !3, line: 964, type: !50)
!1714 = !DILocalVariable(name: "pos", scope: !1706, file: !3, line: 965, type: !50)
!1715 = !DILocalVariable(name: "end_pos", scope: !1706, file: !3, line: 966, type: !50)
!1716 = !DILocalVariable(name: "len", scope: !1717, file: !3, line: 982, type: !50)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 981, column: 38)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 981, column: 16)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 977, column: 16)
!1720 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 973, column: 9)
!1721 = !DILocalVariable(name: "value", scope: !1722, file: !3, line: 996, type: !90)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 995, column: 12)
!1723 = !DILocation(line: 961, column: 41, scope: !1706)
!1724 = !DILocation(line: 961, column: 60, scope: !1706)
!1725 = !DILocation(line: 961, column: 79, scope: !1706)
!1726 = !DILocation(line: 961, column: 94, scope: !1706)
!1727 = !DILocation(line: 963, column: 5, scope: !1706)
!1728 = !DILocation(line: 963, column: 19, scope: !1706)
!1729 = !DILocation(line: 963, column: 18, scope: !1706)
!1730 = !DILocation(line: 963, column: 9, scope: !1706)
!1731 = !DILocation(line: 973, column: 17, scope: !1720)
!1732 = !DILocation(line: 973, column: 9, scope: !1706)
!1733 = !DILocation(line: 975, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 973, column: 28)
!1735 = !DILocation(line: 976, column: 9, scope: !1734)
!1736 = !DILocation(line: 977, column: 5, scope: !1734)
!1737 = !DILocation(line: 1015, column: 1, scope: !1706)
!1738 = !DILocation(line: 1014, column: 5, scope: !1706)
!1739 = distinct !DISubprogram(name: "check_attributeIDList_type_is_right", scope: !3, file: !3, line: 1028, type: !1740, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!126, !46, !57}
!1742 = !{!1743, !1744, !1745}
!1743 = !DILocalVariable(name: "list", arg: 1, scope: !1739, file: !3, line: 1028, type: !46)
!1744 = !DILocalVariable(name: "len", arg: 2, scope: !1739, file: !3, line: 1028, type: !57)
!1745 = !DILocalVariable(name: "loopi", scope: !1739, file: !3, line: 1030, type: !57)
!1746 = !DILocation(line: 1028, column: 46, scope: !1739)
!1747 = !DILocation(line: 1028, column: 56, scope: !1739)
!1748 = !DILocation(line: 1030, column: 9, scope: !1739)
!1749 = !DILocation(line: 1031, column: 9, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1031, column: 9)
!1751 = !DILocation(line: 1031, column: 17, scope: !1750)
!1752 = !DILocation(line: 1031, column: 9, scope: !1739)
!1753 = !DILocation(line: 1034, column: 18, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1739, file: !3, discriminator: 1)
!1755 = !DILocation(line: 1034, column: 5, scope: !1754)
!1756 = !DILocation(line: 1034, column: 12, scope: !1754)
!1757 = !DILocation(line: 1035, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 1035, column: 13)
!1759 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1034, column: 25)
!1760 = !DILocation(line: 1035, column: 33, scope: !1758)
!1761 = !DILocation(line: 1039, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 1039, column: 13)
!1763 = !DILocation(line: 1040, column: 27, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 1039, column: 34)
!1765 = !DILocation(line: 1039, column: 13, scope: !1759)
!1766 = !DILocation(line: 1042, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 1042, column: 13)
!1768 = !DILocation(line: 1042, column: 25, scope: !1767)
!1769 = !DILocation(line: 1043, column: 27, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1042, column: 34)
!1771 = !DILocation(line: 1042, column: 13, scope: !1759)
!1772 = !DILocation(line: 1047, column: 1, scope: !1739)
!1773 = distinct !DISubprogram(name: "check_SearchPattern_type_is_right", scope: !3, file: !3, line: 1049, type: !1740, isLocal: false, isDefinition: true, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779}
!1775 = !DILocalVariable(name: "list", arg: 1, scope: !1773, file: !3, line: 1049, type: !46)
!1776 = !DILocalVariable(name: "len", arg: 2, scope: !1773, file: !3, line: 1049, type: !57)
!1777 = !DILocalVariable(name: "loopi", scope: !1773, file: !3, line: 1051, type: !57)
!1778 = !DILocalVariable(name: "type", scope: !1773, file: !3, line: 1052, type: !36)
!1779 = !DILocalVariable(name: "de_size", scope: !1773, file: !3, line: 1053, type: !35)
!1780 = !DILocation(line: 1049, column: 44, scope: !1773)
!1781 = !DILocation(line: 1049, column: 54, scope: !1773)
!1782 = !DILocation(line: 1051, column: 9, scope: !1773)
!1783 = !DILocation(line: 1054, column: 9, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1054, column: 9)
!1785 = !DILocation(line: 1054, column: 17, scope: !1784)
!1786 = !DILocation(line: 1054, column: 9, scope: !1773)
!1787 = !DILocation(line: 1058, column: 20, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1773, file: !3, discriminator: 1)
!1789 = !DILocation(line: 1058, column: 18, scope: !1788)
!1790 = !DILocation(line: 1058, column: 5, scope: !1788)
!1791 = !DILocation(line: 1060, column: 37, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1058, column: 25)
!1793 = !DILocation(line: 91, column: 35, scope: !263, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 1060, column: 16, scope: !1792)
!1795 = !DILocation(line: 93, column: 24, scope: !263, inlinedAt: !1794)
!1796 = !DILocation(line: 1061, column: 18, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 1061, column: 13)
!1798 = !DILocation(line: 1061, column: 13, scope: !1792)
!1799 = !DILocation(line: 1066, column: 9, scope: !1792)
!1800 = !DILocation(line: 1069, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 1066, column: 26)
!1802 = !DILocation(line: 1075, column: 13, scope: !1801)
!1803 = !DILocation(line: 1078, column: 13, scope: !1801)
!1804 = !DILocation(line: 1083, column: 14, scope: !1792)
!1805 = !DILocation(line: 1058, column: 12, scope: !1788)
!1806 = distinct !{!1806, !1807, !1808}
!1807 = !DILocation(line: 1058, column: 5, scope: !1773)
!1808 = !DILocation(line: 1084, column: 5, scope: !1773)
!1809 = !DILocation(line: 1086, column: 1, scope: !1773)
!1810 = distinct !DISubprogram(name: "sdp_create_diy_device_ID_service", scope: !3, file: !3, line: 1139, type: !1811, isLocal: false, isDefinition: true, scopeLine: 1140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!57, !46, !57}
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1820}
!1814 = !DILocalVariable(name: "buffer", arg: 1, scope: !1810, file: !3, line: 1139, type: !46)
!1815 = !DILocalVariable(name: "buffer_size", arg: 2, scope: !1810, file: !3, line: 1139, type: !57)
!1816 = !DILocalVariable(name: "attribute", scope: !1810, file: !3, line: 1141, type: !46)
!1817 = !DILocalVariable(name: "service", scope: !1810, file: !3, line: 1142, type: !46)
!1818 = !DILocalVariable(name: "l2cpProtocol", scope: !1819, file: !3, line: 1162, type: !46)
!1819 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1161, column: 5)
!1820 = !DILocalVariable(name: "attribute_sub", scope: !1821, file: !3, line: 1177, type: !46)
!1821 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1175, column: 5)
!1822 = !DILocation(line: 1139, column: 42, scope: !1810)
!1823 = !DILocation(line: 1139, column: 54, scope: !1810)
!1824 = !DILocation(line: 1142, column: 9, scope: !1810)
!1825 = !DILocation(line: 193, column: 29, scope: !402, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 1143, column: 5, scope: !1810)
!1827 = !DILocation(line: 172, column: 39, scope: !374, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 195, column: 5, scope: !402, inlinedAt: !1826)
!1829 = !DILocation(line: 172, column: 57, scope: !374, inlinedAt: !1828)
!1830 = !DILocation(line: 172, column: 73, scope: !374, inlinedAt: !1828)
!1831 = !DILocation(line: 172, column: 83, scope: !374, inlinedAt: !1828)
!1832 = !DILocation(line: 174, column: 15, scope: !374, inlinedAt: !1828)
!1833 = !DILocation(line: 180, column: 9, scope: !392, inlinedAt: !1828)
!1834 = !DILocation(line: 1146, column: 5, scope: !1810)
!1835 = !DILocation(line: 1147, column: 5, scope: !1810)
!1836 = !DILocation(line: 1151, column: 5, scope: !1810)
!1837 = !DILocation(line: 1152, column: 17, scope: !1810)
!1838 = !DILocation(line: 1141, column: 9, scope: !1810)
!1839 = !DILocation(line: 1154, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1153, column: 5)
!1841 = !DILocation(line: 1156, column: 5, scope: !1810)
!1842 = !DILocation(line: 1159, column: 5, scope: !1810)
!1843 = !DILocation(line: 1160, column: 17, scope: !1810)
!1844 = !DILocation(line: 1163, column: 24, scope: !1819)
!1845 = !DILocation(line: 1162, column: 13, scope: !1819)
!1846 = !DILocation(line: 1165, column: 13, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1164, column: 9)
!1848 = !DILocation(line: 1166, column: 13, scope: !1847)
!1849 = !DILocation(line: 1168, column: 9, scope: !1819)
!1850 = !DILocation(line: 1170, column: 5, scope: !1810)
!1851 = !DILocation(line: 1173, column: 5, scope: !1810)
!1852 = !DILocation(line: 1174, column: 17, scope: !1810)
!1853 = !DILocation(line: 1178, column: 25, scope: !1821)
!1854 = !DILocation(line: 1177, column: 13, scope: !1821)
!1855 = !DILocation(line: 1179, column: 9, scope: !1821)
!1856 = !DILocation(line: 1180, column: 9, scope: !1821)
!1857 = !DILocation(line: 1181, column: 9, scope: !1821)
!1858 = !DILocation(line: 1184, column: 5, scope: !1810)
!1859 = !DILocation(line: 1186, column: 5, scope: !1810)
!1860 = !DILocation(line: 1187, column: 5, scope: !1810)
!1861 = !DILocation(line: 1191, column: 5, scope: !1810)
!1862 = !DILocation(line: 1192, column: 5, scope: !1810)
!1863 = !DILocation(line: 1195, column: 5, scope: !1810)
!1864 = !DILocation(line: 1196, column: 5, scope: !1810)
!1865 = !DILocation(line: 1199, column: 5, scope: !1810)
!1866 = !DILocation(line: 1200, column: 5, scope: !1810)
!1867 = !DILocation(line: 1207, column: 5, scope: !1810)
!1868 = !DILocation(line: 1208, column: 5, scope: !1810)
!1869 = !DILocation(line: 1212, column: 5, scope: !1810)
!1870 = !DILocation(line: 1213, column: 5, scope: !1810)
!1871 = !DILocation(line: 1224, column: 12, scope: !1810)
!1872 = !DILocation(line: 1224, column: 5, scope: !1810)
!1873 = distinct !DISubprogram(name: "sdp_check_service_overflow", scope: !3, file: !3, line: 1119, type: !1811, isLocal: true, isDefinition: true, scopeLine: 1120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1874)
!1874 = !{!1875, !1876, !1877}
!1875 = !DILocalVariable(name: "service", arg: 1, scope: !1873, file: !3, line: 1119, type: !46)
!1876 = !DILocalVariable(name: "service_size", arg: 2, scope: !1873, file: !3, line: 1119, type: !57)
!1877 = !DILocalVariable(name: "real_size", scope: !1873, file: !3, line: 1121, type: !57)
!1878 = !DILocation(line: 1119, column: 43, scope: !1873)
!1879 = !DILocation(line: 1119, column: 56, scope: !1873)
!1880 = !DILocation(line: 1124, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1124, column: 9)
!1882 = !DILocation(line: 1124, column: 20, scope: !1881)
!1883 = !DILocation(line: 1124, column: 9, scope: !1873)
!1884 = !DILocation(line: 1125, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1124, column: 29)
!1886 = !DILocation(line: 1125, column: 52, scope: !1885)
!1887 = !DILocation(line: 1121, column: 9, scope: !1873)
!1888 = !DILocation(line: 1126, column: 5, scope: !1885)
!1889 = !DILocation(line: 1127, column: 21, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1126, column: 12)
!1891 = !DILocation(line: 1130, column: 9, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1130, column: 9)
!1893 = !DILocation(line: 1130, column: 21, scope: !1892)
!1894 = !DILocation(line: 1130, column: 19, scope: !1892)
!1895 = !DILocation(line: 1130, column: 9, scope: !1873)
!1896 = !DILocation(line: 1131, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 1131, column: 9)
!1898 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 1130, column: 35)
!1899 = !DILocation(line: 1131, column: 9, scope: !1898)
!1900 = !DILocation(line: 1131, column: 9, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1897, file: !3, discriminator: 1)
!1902 = !DILocation(line: 1132, column: 9, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1904, file: !3, discriminator: 1)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1132, column: 9)
!1905 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 1132, column: 9)
!1906 = !DILocation(line: 1132, column: 9, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1905, file: !3, discriminator: 1)
!1908 = !DILocation(line: 1132, column: 9, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !3, discriminator: 2)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1132, column: 9)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1132, column: 9)
!1912 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1132, column: 9)
!1913 = !DILocation(line: 1132, column: 9, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1910, file: !3, discriminator: 6)
!1915 = !DILocation(line: 1132, column: 9, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1910, file: !3, discriminator: 7)
!1917 = !DILocation(line: 1132, column: 9, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1912, file: !3, discriminator: 2)
!1919 = !DILocation(line: 1132, column: 9, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1921, file: !3, discriminator: 3)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 1132, column: 9)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 1132, column: 9)
!1923 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1132, column: 9)
!1924 = !DILocation(line: 1136, column: 5, scope: !1873)
!1925 = distinct !DISubprogram(name: "sdp_create_diy_hid_service", scope: !3, file: !3, line: 1228, type: !1926, isLocal: false, isDefinition: true, scopeLine: 1229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!57, !46, !57, !945, !57}
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935, !1937, !1939, !1941, !1942, !1944}
!1929 = !DILocalVariable(name: "buffer", arg: 1, scope: !1925, file: !3, line: 1228, type: !46)
!1930 = !DILocalVariable(name: "buffer_size", arg: 2, scope: !1925, file: !3, line: 1228, type: !57)
!1931 = !DILocalVariable(name: "hid_descriptor", arg: 3, scope: !1925, file: !3, line: 1228, type: !945)
!1932 = !DILocalVariable(name: "hid_descriptor_size", arg: 4, scope: !1925, file: !3, line: 1228, type: !57)
!1933 = !DILocalVariable(name: "attribute", scope: !1925, file: !3, line: 1230, type: !46)
!1934 = !DILocalVariable(name: "service", scope: !1925, file: !3, line: 1231, type: !46)
!1935 = !DILocalVariable(name: "l2cpProtocol", scope: !1936, file: !3, line: 1253, type: !46)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1252, column: 5)
!1937 = !DILocalVariable(name: "attribute_sub", scope: !1938, file: !3, line: 1275, type: !46)
!1938 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1273, column: 5)
!1939 = !DILocalVariable(name: "l2cpProtocol", scope: !1940, file: !3, line: 1288, type: !46)
!1940 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1287, column: 5)
!1941 = !DILocalVariable(name: "a", scope: !1940, file: !3, line: 1289, type: !46)
!1942 = !DILocalVariable(name: "l2cpProtocol", scope: !1943, file: !3, line: 1346, type: !46)
!1943 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1345, column: 5)
!1944 = !DILocalVariable(name: "l2cpProtocol", scope: !1945, file: !3, line: 1361, type: !46)
!1945 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1360, column: 5)
!1946 = !DILocation(line: 1228, column: 36, scope: !1925)
!1947 = !DILocation(line: 1228, column: 48, scope: !1925)
!1948 = !DILocation(line: 1228, column: 71, scope: !1925)
!1949 = !DILocation(line: 1228, column: 91, scope: !1925)
!1950 = !DILocation(line: 1231, column: 9, scope: !1925)
!1951 = !DILocation(line: 193, column: 29, scope: !402, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 1232, column: 5, scope: !1925)
!1953 = !DILocation(line: 172, column: 39, scope: !374, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 195, column: 5, scope: !402, inlinedAt: !1952)
!1955 = !DILocation(line: 172, column: 57, scope: !374, inlinedAt: !1954)
!1956 = !DILocation(line: 172, column: 73, scope: !374, inlinedAt: !1954)
!1957 = !DILocation(line: 172, column: 83, scope: !374, inlinedAt: !1954)
!1958 = !DILocation(line: 174, column: 15, scope: !374, inlinedAt: !1954)
!1959 = !DILocation(line: 180, column: 9, scope: !392, inlinedAt: !1954)
!1960 = !DILocation(line: 1236, column: 5, scope: !1925)
!1961 = !DILocation(line: 1237, column: 5, scope: !1925)
!1962 = !DILocation(line: 1241, column: 5, scope: !1925)
!1963 = !DILocation(line: 1242, column: 17, scope: !1925)
!1964 = !DILocation(line: 1230, column: 9, scope: !1925)
!1965 = !DILocation(line: 1244, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1243, column: 5)
!1967 = !DILocation(line: 1246, column: 5, scope: !1925)
!1968 = !DILocation(line: 1250, column: 5, scope: !1925)
!1969 = !DILocation(line: 1251, column: 17, scope: !1925)
!1970 = !DILocation(line: 1254, column: 24, scope: !1936)
!1971 = !DILocation(line: 1253, column: 13, scope: !1936)
!1972 = !DILocation(line: 1256, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 1255, column: 9)
!1974 = !DILocation(line: 1257, column: 13, scope: !1973)
!1975 = !DILocation(line: 1259, column: 9, scope: !1936)
!1976 = !DILocation(line: 1261, column: 24, scope: !1936)
!1977 = !DILocation(line: 1263, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 1262, column: 9)
!1979 = !DILocation(line: 1265, column: 9, scope: !1936)
!1980 = !DILocation(line: 1267, column: 5, scope: !1925)
!1981 = !DILocation(line: 1271, column: 5, scope: !1925)
!1982 = !DILocation(line: 1272, column: 17, scope: !1925)
!1983 = !DILocation(line: 1276, column: 25, scope: !1938)
!1984 = !DILocation(line: 1275, column: 13, scope: !1938)
!1985 = !DILocation(line: 1277, column: 9, scope: !1938)
!1986 = !DILocation(line: 1278, column: 9, scope: !1938)
!1987 = !DILocation(line: 1279, column: 9, scope: !1938)
!1988 = !DILocation(line: 1282, column: 5, scope: !1925)
!1989 = !DILocation(line: 1285, column: 5, scope: !1925)
!1990 = !DILocation(line: 1286, column: 17, scope: !1925)
!1991 = !DILocation(line: 1290, column: 24, scope: !1940)
!1992 = !DILocation(line: 1288, column: 13, scope: !1940)
!1993 = !DILocation(line: 1293, column: 17, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 1291, column: 9)
!1995 = !DILocation(line: 1289, column: 13, scope: !1940)
!1996 = !DILocation(line: 1294, column: 13, scope: !1994)
!1997 = !DILocation(line: 1295, column: 13, scope: !1994)
!1998 = !DILocation(line: 1296, column: 13, scope: !1994)
!1999 = !DILocation(line: 1298, column: 17, scope: !1994)
!2000 = !DILocation(line: 1299, column: 13, scope: !1994)
!2001 = !DILocation(line: 1300, column: 13, scope: !1994)
!2002 = !DILocation(line: 1302, column: 9, scope: !1940)
!2003 = !DILocation(line: 1304, column: 5, scope: !1925)
!2004 = !DILocation(line: 1308, column: 5, scope: !1925)
!2005 = !DILocation(line: 1310, column: 5, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !1925, file: !3, discriminator: 1)
!2007 = !DILocation(line: 1314, column: 5, scope: !1925)
!2008 = !DILocation(line: 1315, column: 5, scope: !2006)
!2009 = !DILocation(line: 1318, column: 5, scope: !1925)
!2010 = !DILocation(line: 1319, column: 5, scope: !2006)
!2011 = !DILocation(line: 1322, column: 5, scope: !1925)
!2012 = !DILocation(line: 1323, column: 5, scope: !1925)
!2013 = !DILocation(line: 1326, column: 5, scope: !1925)
!2014 = !DILocation(line: 1327, column: 5, scope: !1925)
!2015 = !DILocation(line: 1330, column: 5, scope: !1925)
!2016 = !DILocation(line: 1331, column: 5, scope: !1925)
!2017 = !DILocation(line: 1334, column: 5, scope: !1925)
!2018 = !DILocation(line: 1335, column: 5, scope: !1925)
!2019 = !DILocation(line: 1338, column: 5, scope: !1925)
!2020 = !DILocation(line: 1339, column: 5, scope: !1925)
!2021 = !DILocation(line: 1343, column: 5, scope: !1925)
!2022 = !DILocation(line: 1344, column: 17, scope: !1925)
!2023 = !DILocation(line: 1347, column: 24, scope: !1943)
!2024 = !DILocation(line: 1346, column: 13, scope: !1943)
!2025 = !DILocation(line: 1349, column: 13, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 1348, column: 9)
!2027 = !DILocation(line: 1350, column: 13, scope: !2026)
!2028 = !DILocation(line: 1352, column: 9, scope: !1943)
!2029 = !DILocation(line: 1354, column: 5, scope: !1925)
!2030 = !DILocation(line: 1358, column: 5, scope: !1925)
!2031 = !DILocation(line: 1359, column: 17, scope: !1925)
!2032 = !DILocation(line: 1362, column: 24, scope: !1945)
!2033 = !DILocation(line: 1361, column: 13, scope: !1945)
!2034 = !DILocation(line: 1364, column: 13, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 1363, column: 9)
!2036 = !DILocation(line: 1365, column: 13, scope: !2035)
!2037 = !DILocation(line: 1367, column: 9, scope: !1945)
!2038 = !DILocation(line: 1369, column: 5, scope: !1925)
!2039 = !DILocation(line: 1372, column: 5, scope: !1925)
!2040 = !DILocation(line: 1373, column: 5, scope: !1925)
!2041 = !DILocation(line: 1376, column: 5, scope: !1925)
!2042 = !DILocation(line: 1377, column: 5, scope: !1925)
!2043 = !DILocation(line: 1380, column: 5, scope: !1925)
!2044 = !DILocation(line: 1381, column: 5, scope: !1925)
!2045 = !DILocation(line: 1384, column: 5, scope: !1925)
!2046 = !DILocation(line: 1385, column: 5, scope: !1925)
!2047 = !DILocation(line: 1388, column: 5, scope: !1925)
!2048 = !DILocation(line: 1389, column: 5, scope: !1925)
!2049 = !DILocation(line: 1392, column: 5, scope: !1925)
!2050 = !DILocation(line: 1393, column: 5, scope: !1925)
!2051 = !DILocation(line: 1395, column: 5, scope: !1925)
!2052 = !DILocation(line: 1396, column: 5, scope: !1925)
!2053 = !DILocation(line: 1410, column: 12, scope: !1925)
!2054 = !DILocation(line: 1410, column: 5, scope: !1925)
!2055 = distinct !DISubprogram(name: "spd_append_range", scope: !3, file: !3, line: 669, type: !2056, isLocal: true, isDefinition: true, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!50, !66, !57, !46}
!2058 = !{!2059, !2060, !2061, !2062, !2063}
!2059 = !DILocalVariable(name: "context", arg: 1, scope: !2055, file: !3, line: 669, type: !66)
!2060 = !DILocalVariable(name: "len", arg: 2, scope: !2055, file: !3, line: 669, type: !57)
!2061 = !DILocalVariable(name: "data", arg: 3, scope: !2055, file: !3, line: 669, type: !46)
!2062 = !DILocalVariable(name: "ok", scope: !2055, file: !3, line: 671, type: !50)
!2063 = !DILocalVariable(name: "remainder_len", scope: !2055, file: !3, line: 672, type: !57)
!2064 = !DILocation(line: 669, column: 69, scope: !2055)
!2065 = !DILocation(line: 669, column: 82, scope: !2055)
!2066 = !DILocation(line: 669, column: 91, scope: !2055)
!2067 = !DILocation(line: 671, column: 9, scope: !2055)
!2068 = !DILocation(line: 672, column: 40, scope: !2055)
!2069 = !DILocation(line: 672, column: 29, scope: !2055)
!2070 = !DILocation(line: 672, column: 9, scope: !2055)
!2071 = !DILocation(line: 673, column: 18, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 673, column: 9)
!2073 = !DILocation(line: 673, column: 27, scope: !2072)
!2074 = !DILocation(line: 673, column: 9, scope: !2055)
!2075 = !DILocation(line: 677, column: 21, scope: !2055)
!2076 = !DILocation(line: 677, column: 30, scope: !2055)
!2077 = !DILocation(line: 677, column: 58, scope: !2055)
!2078 = !DILocation(line: 677, column: 5, scope: !2055)
!2079 = !DILocation(line: 678, column: 14, scope: !2055)
!2080 = !DILocation(line: 678, column: 24, scope: !2055)
!2081 = !DILocation(line: 679, column: 24, scope: !2055)
!2082 = !DILocation(line: 680, column: 24, scope: !2055)
!2083 = !DILocation(line: 681, column: 26, scope: !2055)
!2084 = !DILocation(line: 682, column: 5, scope: !2055)
!2085 = distinct !DISubprogram(name: "cpu_reset", scope: !2086, file: !2086, line: 145, type: !2087, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2089)
!2086 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null}
!2089 = !{}
!2090 = !DILocation(line: 148, column: 5, scope: !2085)
!2091 = !DILocation(line: 149, column: 1, scope: !2085)
