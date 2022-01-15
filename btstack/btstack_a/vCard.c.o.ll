; ModuleID = 'vCard.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/vCard.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.contact_t = type { i32, i32, %struct.tel_name, %struct.tel_number, %struct.call_info, i8* }
%struct.tel_name = type { i16, i8, i8, i8, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tel_number = type { i16, i8, i8, i8, i8, i32, i32, i8* }
%struct.call_info = type { i8, i8* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [34 x i8] c"<pro-error> :need malloc = 0x%x\0A\0A\00", align 1
@last_ptr_data_ptr = internal unnamed_addr global i8* null, align 4, !dbg !73
@last_ptr_data_len = internal unnamed_addr global i16 0, align 2, !dbg !75
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"BEGIN:VCARD\00", align 1
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"The vcard is invalid.\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"<BT-log> :(%s) -> %s() return\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NULL == vcard\00", align 1
@__FUNCTION__.vcard_parse = private unnamed_addr constant [12 x i8] c"vcard_parse\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"VERSION:\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"[pro-info] : NAME:%s \0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"unknow\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"[pro-info] :number:%s \0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"[pro-info] :type\EF\BC\8C%d date:%s \0A\00", align 1
@temp_vcard = internal unnamed_addr global i8* null, align 4, !dbg !84
@.str.12 = private unnamed_addr constant [10 x i8] c"END:VCARD\00", align 1
@content_name = internal unnamed_addr global [21 x i8*] zeroinitializer, align 4, !dbg !79
@.str.16 = private unnamed_addr constant [3 x i8] c"FN\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"NICKNAME\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"PHOTO\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"BDAY\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ADR\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"TEL\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"EMAIL\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ROLE\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ORG\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"REV\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"X-ANNIVERSARY\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"X-SLP-GROUP\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"X-IRMC-CALL-DATETIME\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"The src is NULL.\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"NULL == src\00", align 1
@__FUNCTION__.vcard_check_word = private unnamed_addr constant [17 x i8] c"vcard_check_word\00", align 1
@__FUNCTION__.vcard_get_val = private unnamed_addr constant [14 x i8] c"vcard_get_val\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"The dest is NULL.\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"NULL == dest\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"QUOTED-PRINTABLE\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"<pro-error> :Invalid type %d\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Invalid vcard\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__FUNCTION__.vcard_get_contact = private unnamed_addr constant [18 x i8] c"vcard_get_contact\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Invalid vcard\0A\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"NULL == temp\00", align 1
@__FUNCTION__.vcard_get_number = private unnamed_addr constant [17 x i8] c"vcard_get_number\00", align 1
@__ctype_ptr__ = external local_unnamed_addr global i8*, align 4
@__FUNCTION__.vcard_get_call_info = private unnamed_addr constant [20 x i8] c"vcard_get_call_info\00", align 1
@str = private unnamed_addr constant [33 x i8] c"[pro-info] :some date left ====\0A\00"
@str.67 = private unnamed_addr constant [24 x i8] c"[pro-info] :parse over\0A\00"
@str.68 = private unnamed_addr constant [28 x i8] c"[pro-info] :some data left\0A\00"
@str.69 = private unnamed_addr constant [24 x i8] c"[pro-info] :last vcard\0A\00"
@switch.table = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15]
@str.70 = private unnamed_addr constant [22 x i8] c"<pro-error> :NO VALUE\00"

; Function Attrs: nounwind optsize readnone
define hidden void @vcard_buffer_init(i8* nocapture, i32) local_unnamed_addr #0 !dbg !90 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !96, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %1, metadata !97, metadata !DIExpression()), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind optsize
define hidden void @vcard_free(i8* nocapture) local_unnamed_addr #1 !dbg !101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !105, metadata !DIExpression()), !dbg !106
  tail call void @free(i8* %0) #7, !dbg !107
  ret void, !dbg !108
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define hidden noalias i8* @vcard_malloc(i32) local_unnamed_addr #1 !dbg !109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !113, metadata !DIExpression()), !dbg !115
  %2 = tail call i8* @malloc(i32 %0) #7, !dbg !116
  call void @llvm.dbg.value(metadata i8* %2, metadata !114, metadata !DIExpression()), !dbg !117
  %3 = icmp eq i8* %2, null, !dbg !118
  br i1 %3, label %5, label %4, !dbg !120

; <label>:4:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %2, i8 0, i32 %0, i32 1, i1 false), !dbg !121
  br label %11, !dbg !123

; <label>:5:                                      ; preds = %1
  %6 = load i8, i8* @profile_debug_enable, align 1, !dbg !124, !tbaa !127
  %7 = and i8 %6, 4, !dbg !124
  %8 = icmp eq i8 %7, 0, !dbg !124
  br i1 %8, label %11, label %9, !dbg !130

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %0) #7, !dbg !131
  br label %11, !dbg !131

; <label>:11:                                     ; preds = %9, %5, %4
  ret i8* %2, !dbg !133
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define weak hidden i8* @strdup(i8*) local_unnamed_addr #1 !dbg !134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i8* null, metadata !139, metadata !DIExpression()), !dbg !141
  %2 = icmp eq i8* %0, null, !dbg !142
  br i1 %2, label %10, label %3, !dbg !144

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @strlen(i8* nonnull %0) #7, !dbg !145
  %5 = add i32 %4, 1, !dbg !147
  %6 = tail call i8* @vcard_malloc(i32 %5) #7, !dbg !148
  call void @llvm.dbg.value(metadata i8* %6, metadata !139, metadata !DIExpression()), !dbg !141
  %7 = icmp eq i8* %6, null, !dbg !150
  br i1 %7, label %10, label %8, !dbg !151

; <label>:8:                                      ; preds = %3
  %9 = tail call i8* @strcpy(i8* nonnull %6, i8* nonnull %0) #7, !dbg !153
  br label %10, !dbg !155

; <label>:10:                                     ; preds = %8, %3, %1
  %11 = phi i8* [ %6, %8 ], [ null, %3 ], [ null, %1 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !139, metadata !DIExpression()), !dbg !141
  ret i8* %11, !dbg !156
}

; Function Attrs: nounwind optsize readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define weak hidden void @phonebook_packet_handler(i8 zeroext, i8*, i8*, i8*) local_unnamed_addr #1 !dbg !157 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !161, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i8* %1, metadata !162, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i8* %2, metadata !163, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i8* %3, metadata !164, metadata !DIExpression()), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: nounwind optsize
define hidden void @pbap_close_status_update_to_user() local_unnamed_addr #1 !dbg !170 {
  %1 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !174, !tbaa !176
  %2 = icmp eq i8* %1, null, !dbg !174
  br i1 %2, label %12, label %3, !dbg !178

; <label>:3:                                      ; preds = %0
  %4 = load i8, i8* @profile_debug_enable, align 1, !dbg !179, !tbaa !127
  %5 = and i8 %4, 1, !dbg !179
  %6 = icmp eq i8 %5, 0, !dbg !179
  br i1 %6, label %10, label %7, !dbg !182

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str, i32 0, i32 0)), !dbg !183
  %9 = load i8*, i8** @last_ptr_data_ptr, align 4, !tbaa !176
  br label %10, !dbg !183

; <label>:10:                                     ; preds = %7, %3
  %11 = phi i8* [ %1, %3 ], [ %9, %7 ], !dbg !185
  call void @llvm.dbg.value(metadata i8* %11, metadata !105, metadata !DIExpression()), !dbg !186
  tail call void @free(i8* %11) #8, !dbg !188
  store i8* null, i8** @last_ptr_data_ptr, align 4, !dbg !189, !tbaa !176
  store i16 0, i16* @last_ptr_data_len, align 2, !dbg !190, !tbaa !191
  br label %12, !dbg !193

; <label>:12:                                     ; preds = %10, %0
  tail call void @phonebook_packet_handler(i8 zeroext -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null) #7, !dbg !194
  ret void, !dbg !197
}

; Function Attrs: nounwind optsize
define hidden i32 @vcard_parse(i8*, i32) local_unnamed_addr #1 !dbg !198 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %1, metadata !205, metadata !DIExpression()), !dbg !255
  %5 = bitcast i8** %4 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9, !dbg !256
  call void @llvm.dbg.value(metadata i8* %0, metadata !253, metadata !DIExpression()), !dbg !257
  %6 = icmp eq i8* %0, null, !dbg !258
  br i1 %6, label %315, label %7, !dbg !260

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 0), align 4, !dbg !261, !tbaa !176
  %9 = icmp eq i8* %8, null, !dbg !265
  br i1 %9, label %10, label %11, !dbg !266

; <label>:10:                                     ; preds = %7
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 1), align 4, !dbg !267, !tbaa !176
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 2), align 4, !dbg !269, !tbaa !176
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 3), align 4, !dbg !270, !tbaa !176
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 4), align 4, !dbg !271, !tbaa !176
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 5), align 4, !dbg !272, !tbaa !176
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 6), align 4, !dbg !273, !tbaa !176
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 7), align 4, !dbg !274, !tbaa !176
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 8), align 4, !dbg !275, !tbaa !176
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 9), align 4, !dbg !276, !tbaa !176
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 10), align 4, !dbg !277, !tbaa !176
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 11), align 4, !dbg !278, !tbaa !176
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 12), align 4, !dbg !279, !tbaa !176
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 13), align 4, !dbg !280, !tbaa !176
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 14), align 4, !dbg !281, !tbaa !176
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 15), align 4, !dbg !282, !tbaa !176
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 16), align 4, !dbg !283, !tbaa !176
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 17), align 4, !dbg !284, !tbaa !176
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 18), align 4, !dbg !285, !tbaa !176
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 19), align 4, !dbg !286, !tbaa !176
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @content_name, i32 0, i32 20), align 4, !dbg !287, !tbaa !176
  br label %11, !dbg !288

; <label>:11:                                     ; preds = %10, %7
  %12 = tail call fastcc i8* @vcard_check_word(i8* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !289
  call void @llvm.dbg.value(metadata i8* %12, metadata !253, metadata !DIExpression()), !dbg !257
  %13 = icmp eq i8* %12, null, !dbg !290
  br i1 %13, label %14, label %26, !dbg !294

; <label>:14:                                     ; preds = %11
  %15 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !296, !tbaa !127
  %16 = and i8 %15, 32, !dbg !296
  %17 = icmp eq i8 %16, 0, !dbg !296
  br i1 %17, label %21, label %18, !dbg !300

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !302
  %20 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !304, !tbaa !127
  br label %21, !dbg !302

; <label>:21:                                     ; preds = %18, %14
  %22 = phi i8 [ %15, %14 ], [ %20, %18 ], !dbg !304
  %23 = icmp slt i8 %22, 0, !dbg !304
  br i1 %23, label %24, label %315, !dbg !307

; <label>:24:                                     ; preds = %21
  %25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.vcard_parse, i32 0, i32 0)) #7, !dbg !309
  br label %315, !dbg !309

; <label>:26:                                     ; preds = %11
  %27 = tail call fastcc i8* @vcard_check_word(i8* nonnull %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !311
  call void @llvm.dbg.value(metadata i8* %27, metadata !250, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i8** %4, metadata !252, metadata !DIExpression(DW_OP_deref)), !dbg !313
  %28 = call fastcc i8* @vcard_get_val(i32 0, i8* %27, i8** nonnull %4) #7, !dbg !314
  call void @llvm.dbg.value(metadata i8* %28, metadata !251, metadata !DIExpression()), !dbg !315
  %29 = icmp eq i8* %28, null, !dbg !316
  %30 = load i8*, i8** %4, align 4, !dbg !318
  call void @llvm.dbg.value(metadata i8* %30, metadata !252, metadata !DIExpression()), !dbg !313
  %31 = icmp eq i8* %30, null, !dbg !320
  %32 = or i1 %29, %31, !dbg !321
  br i1 %32, label %33, label %35, !dbg !321

; <label>:33:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %28, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 %56, metadata !207, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata %struct.contact_t* undef, metadata !208, metadata !DIExpression(DW_OP_deref)), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !324, metadata !DIExpression()), !dbg !337
  %34 = bitcast i8** %3 to i8*, !dbg !339
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #9, !dbg !339
  call void @llvm.dbg.value(metadata i8* %28, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i8* %28, metadata !334, metadata !DIExpression()), !dbg !340
  br label %58, !dbg !341

; <label>:35:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8* %30, metadata !343, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 0, metadata !348, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), metadata !349, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i8 0, metadata !348, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i8* %30, metadata !343, metadata !DIExpression()), !dbg !350
  %36 = load i8, i8* %30, align 1, !dbg !355, !tbaa !127
  %37 = icmp eq i8 %36, 0, !dbg !357
  br i1 %37, label %49, label %38, !dbg !357

; <label>:38:                                     ; preds = %35
  br label %39, !dbg !358

; <label>:39:                                     ; preds = %43, %38
  %40 = phi i8 [ %45, %43 ], [ %36, %38 ]
  %41 = phi i8* [ %44, %43 ], [ %30, %38 ]
  %42 = sext i8 %40 to i32, !dbg !358
  switch i32 %42, label %47 [
    i32 10, label %54
    i32 13, label %54
    i32 32, label %43
  ], !dbg !360

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !361
  call void @llvm.dbg.value(metadata i8* %44, metadata !343, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8 0, metadata !348, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i8* %44, metadata !343, metadata !DIExpression()), !dbg !350
  %45 = load i8, i8* %44, align 1, !dbg !355, !tbaa !127
  %46 = icmp eq i8 %45, 0, !dbg !357
  br i1 %46, label %47, label %39, !dbg !357

; <label>:47:                                     ; preds = %43, %39
  %48 = phi i8* [ %44, %43 ], [ %41, %39 ]
  br label %49, !dbg !350

; <label>:49:                                     ; preds = %47, %35
  %50 = phi i8* [ %30, %35 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !343, metadata !DIExpression()), !dbg !350
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !363
  %52 = icmp eq i32 %51, 0, !dbg !365
  %53 = select i1 %52, i32 2, i32 1, !dbg !366
  br label %55, !dbg !366

; <label>:54:                                     ; preds = %39, %39
  br label %55, !dbg !322

; <label>:55:                                     ; preds = %54, %49
  %56 = phi i32 [ %53, %49 ], [ 1, %54 ]
  call void @llvm.dbg.value(metadata i32 %56, metadata !207, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i8* %30, metadata !252, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i8* %30, metadata !105, metadata !DIExpression()), !dbg !368
  call void @free(i8* %30) #8, !dbg !370
  call void @llvm.dbg.value(metadata i8* %28, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i8* %28, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 %56, metadata !207, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata %struct.contact_t* undef, metadata !208, metadata !DIExpression(DW_OP_deref)), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !324, metadata !DIExpression()), !dbg !337
  %57 = bitcast i8** %3 to i8*, !dbg !339
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57) #9, !dbg !339
  call void @llvm.dbg.value(metadata i8* %28, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i8* %28, metadata !334, metadata !DIExpression()), !dbg !340
  br label %58, !dbg !341

; <label>:58:                                     ; preds = %55, %33
  %59 = phi i8* [ %34, %33 ], [ %57, %55 ]
  %60 = phi i8* [ %12, %33 ], [ %28, %55 ]
  %61 = phi i32 [ 1, %33 ], [ %56, %55 ]
  br label %62, !dbg !341

; <label>:62:                                     ; preds = %130, %58
  %63 = phi i8* [ %131, %130 ], [ null, %58 ]
  %64 = phi i8* [ %105, %130 ], [ null, %58 ]
  %65 = phi i8* [ %106, %130 ], [ null, %58 ]
  %66 = phi i8* [ %96, %130 ], [ %60, %58 ]
  br label %104, !dbg !371

; <label>:67:                                     ; preds = %90
  br label %111, !dbg !371

; <label>:68:                                     ; preds = %111, %104
  %69 = phi i8* [ %107, %104 ], [ %112, %111 ]
  br label %70, !dbg !371

; <label>:70:                                     ; preds = %80, %68
  %71 = phi i32 [ %81, %80 ], [ 1, %68 ]
  %72 = getelementptr inbounds [21 x i8*], [21 x i8*]* @content_name, i32 0, i32 %71, !dbg !371
  %73 = load i8*, i8** %72, align 4, !dbg !371, !tbaa !176
  %74 = call fastcc i8* @vcard_check_word(i8* nonnull %69, i8* %73) #8, !dbg !385
  call void @llvm.dbg.value(metadata i8* %74, metadata !382, metadata !DIExpression()), !dbg !386
  %75 = icmp eq i8* %74, null, !dbg !387
  br i1 %75, label %80, label %76, !dbg !389

; <label>:76:                                     ; preds = %70
  %77 = load i8, i8* %74, align 1, !dbg !390, !tbaa !127
  %78 = and i8 %77, -2, !dbg !392
  %79 = icmp eq i8 %78, 58, !dbg !392
  br i1 %79, label %93, label %80, !dbg !392

; <label>:80:                                     ; preds = %76, %70
  %81 = add nuw nsw i32 %71, 1, !dbg !393
  call void @llvm.dbg.value(metadata i32 %81, metadata !381, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %74, metadata !382, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i32 %81, metadata !381, metadata !DIExpression()), !dbg !395
  %82 = icmp slt i32 %81, 21, !dbg !396
  br i1 %82, label %70, label %83, !dbg !398, !llvm.loop !400

; <label>:83:                                     ; preds = %80
  call void @llvm.dbg.value(metadata i8* undef, metadata !382, metadata !DIExpression()), !dbg !386
  %84 = icmp eq i32 %81, 21, !dbg !403
  br i1 %84, label %85, label %94, !dbg !405

; <label>:85:                                     ; preds = %83
  br label %86, !dbg !406

; <label>:86:                                     ; preds = %90, %85
  %87 = phi i8* [ %92, %90 ], [ %69, %85 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !411, metadata !DIExpression()), !dbg !406
  %88 = load i8, i8* %87, align 1, !dbg !415, !tbaa !127
  %89 = icmp eq i8 %88, 0, !dbg !417
  br i1 %89, label %266, label %90, !dbg !417

; <label>:90:                                     ; preds = %86
  %91 = icmp eq i8 %88, 10, !dbg !418
  %92 = getelementptr inbounds i8, i8* %87, i32 1
  br i1 %91, label %67, label %86, !dbg !421, !llvm.loop !422

; <label>:93:                                     ; preds = %76
  br label %94, !dbg !340

; <label>:94:                                     ; preds = %93, %83
  %95 = phi i32 [ %81, %83 ], [ %71, %93 ]
  call void @llvm.dbg.value(metadata i8* %74, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i8** %3, metadata !336, metadata !DIExpression(DW_OP_deref)), !dbg !425
  %96 = call fastcc i8* @vcard_get_val(i32 %61, i8* %74, i8** nonnull %3) #8, !dbg !426
  call void @llvm.dbg.value(metadata i8* %96, metadata !335, metadata !DIExpression()), !dbg !427
  %97 = icmp eq i8* %96, null, !dbg !428
  br i1 %97, label %98, label %108, !dbg !430

; <label>:98:                                     ; preds = %94
  br label %99, !dbg !340

; <label>:99:                                     ; preds = %253, %200, %98
  %100 = phi i8* [ %105, %253 ], [ %201, %200 ], [ %105, %98 ]
  %101 = phi i8* [ %254, %253 ], [ %106, %200 ], [ %106, %98 ]
  %102 = phi i8* [ %96, %253 ], [ %96, %200 ], [ %74, %98 ]
  call void @llvm.dbg.value(metadata i8* %102, metadata !334, metadata !DIExpression()), !dbg !340
  %103 = icmp eq i8* %102, null, !dbg !341
  br i1 %103, label %267, label %104, !dbg !341, !llvm.loop !422

; <label>:104:                                    ; preds = %99, %62
  %105 = phi i8* [ %64, %62 ], [ %100, %99 ]
  %106 = phi i8* [ %65, %62 ], [ %101, %99 ]
  %107 = phi i8* [ %66, %62 ], [ %102, %99 ]
  br label %68, !dbg !371

; <label>:108:                                    ; preds = %94
  %109 = load i8*, i8** %3, align 4, !dbg !431, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %109, metadata !336, metadata !DIExpression()), !dbg !425
  %110 = icmp eq i8* %109, null, !dbg !433
  br i1 %110, label %111, label %113, !dbg !434

; <label>:111:                                    ; preds = %264, %133, %108, %67
  %112 = phi i8* [ %96, %108 ], [ %96, %133 ], [ %96, %264 ], [ %92, %67 ]
  br label %68, !dbg !371, !llvm.loop !422

; <label>:113:                                    ; preds = %108
  switch i32 %95, label %257 [
    i32 1, label %114
    i32 2, label %133
    i32 8, label %134
    i32 19, label %203
    i32 20, label %256
  ], !dbg !435

; <label>:114:                                    ; preds = %113
  call void @llvm.dbg.value(metadata i8* %109, metadata !436, metadata !DIExpression()), !dbg !440
  %115 = call i8* @strchr(i8* nonnull %109, i32 58) #8, !dbg !452
  call void @llvm.dbg.value(metadata i8* %115, metadata !439, metadata !DIExpression()), !dbg !453
  %116 = icmp eq i8* %115, null, !dbg !454
  %117 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !456
  call void @llvm.dbg.value(metadata i8* %117, metadata !439, metadata !DIExpression()), !dbg !453
  %118 = select i1 %116, i8* %109, i8* %117, !dbg !458
  call void @llvm.dbg.value(metadata i8* %118, metadata !439, metadata !DIExpression()), !dbg !453
  %119 = load i8, i8* %118, align 1, !dbg !459, !tbaa !127
  switch i8 %119, label %126 [
    i8 0, label %120
    i8 13, label %120
    i8 10, label %120
  ], !dbg !461

; <label>:120:                                    ; preds = %114, %114, %114
  %121 = load i8, i8* @profile_debug_enable, align 1, !dbg !462, !tbaa !127
  %122 = and i8 %121, 4, !dbg !462
  %123 = icmp eq i8 %122, 0, !dbg !462
  br i1 %123, label %130, label %124, !dbg !465

; <label>:124:                                    ; preds = %120
  %125 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.70, i32 0, i32 0)) #9, !dbg !466
  br label %130, !dbg !466

; <label>:126:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i8* %118, metadata !449, metadata !DIExpression()), !dbg !468
  %127 = icmp eq i8* %118, null, !dbg !469
  br i1 %127, label %130, label %128, !dbg !469

; <label>:128:                                    ; preds = %126
  %129 = call i8* @strdup(i8* nonnull %118) #8, !dbg !470
  br label %130, !dbg !470

; <label>:130:                                    ; preds = %128, %126, %124, %120
  %131 = phi i8* [ %129, %128 ], [ null, %126 ], [ null, %120 ], [ null, %124 ], !dbg !472
  %132 = load i8*, i8** %3, align 4, !dbg !474, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %132, metadata !336, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8* %132, metadata !105, metadata !DIExpression()), !dbg !475
  call void @free(i8* %132) #8, !dbg !477
  br label %62, !dbg !478

; <label>:133:                                    ; preds = %113
  call void @llvm.dbg.value(metadata i8* %109, metadata !105, metadata !DIExpression()), !dbg !479
  call void @free(i8* nonnull %109) #8, !dbg !481
  br label %111, !dbg !482

; <label>:134:                                    ; preds = %113
  call void @llvm.dbg.value(metadata i8* %109, metadata !436, metadata !DIExpression()), !dbg !483
  %135 = call i8* @strchr(i8* nonnull %109, i32 58) #8, !dbg !498
  call void @llvm.dbg.value(metadata i8* %135, metadata !439, metadata !DIExpression()), !dbg !499
  %136 = icmp eq i8* %135, null, !dbg !500
  %137 = getelementptr inbounds i8, i8* %135, i32 1, !dbg !501
  call void @llvm.dbg.value(metadata i8* %137, metadata !439, metadata !DIExpression()), !dbg !499
  %138 = select i1 %136, i8* %109, i8* %137, !dbg !502
  call void @llvm.dbg.value(metadata i8* %138, metadata !439, metadata !DIExpression()), !dbg !499
  %139 = load i8, i8* %138, align 1, !dbg !503, !tbaa !127
  switch i8 %139, label %146 [
    i8 0, label %140
    i8 13, label %140
    i8 10, label %140
  ], !dbg !504

; <label>:140:                                    ; preds = %134, %134, %134
  %141 = load i8, i8* @profile_debug_enable, align 1, !dbg !505, !tbaa !127
  %142 = and i8 %141, 4, !dbg !505
  %143 = icmp eq i8 %142, 0, !dbg !505
  br i1 %143, label %148, label %144, !dbg !506

; <label>:144:                                    ; preds = %140
  %145 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.70, i32 0, i32 0)) #9, !dbg !507
  br label %148, !dbg !507

; <label>:146:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i8* %138, metadata !492, metadata !DIExpression()), !dbg !508
  %147 = icmp eq i8* %138, null, !dbg !509
  br i1 %147, label %148, label %160, !dbg !513

; <label>:148:                                    ; preds = %146, %144, %140
  %149 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !515, !tbaa !127
  %150 = and i8 %149, 32, !dbg !515
  %151 = icmp eq i8 %150, 0, !dbg !515
  br i1 %151, label %155, label %152, !dbg !519

; <label>:152:                                    ; preds = %148
  %153 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0)) #8, !dbg !521
  %154 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !523, !tbaa !127
  br label %155, !dbg !521

; <label>:155:                                    ; preds = %152, %148
  %156 = phi i8 [ %149, %148 ], [ %154, %152 ], !dbg !523
  %157 = icmp slt i8 %156, 0, !dbg !523
  br i1 %157, label %158, label %200, !dbg !526

; <label>:158:                                    ; preds = %155
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.vcard_get_number, i32 0, i32 0)) #8, !dbg !528
  br label %200, !dbg !528

; <label>:160:                                    ; preds = %146
  %161 = icmp eq i8* %105, null, !dbg !530
  %162 = call i8* @strdup(i8* nonnull %138) #8, !dbg !532
  br i1 %161, label %176, label %163, !dbg !535

; <label>:163:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8* %162, metadata !493, metadata !DIExpression()), !dbg !536
  %164 = call i32 @strlen(i8* %162) #8, !dbg !537
  call void @llvm.dbg.value(metadata i32 %164, metadata !495, metadata !DIExpression()), !dbg !539
  %165 = call i32 @strlen(i8* nonnull %105) #8, !dbg !540
  call void @llvm.dbg.value(metadata i32 %165, metadata !496, metadata !DIExpression()), !dbg !541
  %166 = icmp sgt i32 %165, 256, !dbg !542
  br i1 %166, label %167, label %168, !dbg !544

; <label>:167:                                    ; preds = %163
  call void @llvm.dbg.value(metadata i8* %162, metadata !105, metadata !DIExpression()), !dbg !545
  call void @free(i8* %162) #8, !dbg !548
  br label %176, !dbg !549

; <label>:168:                                    ; preds = %163
  %169 = add nsw i32 %165, %164, !dbg !550
  %170 = add nsw i32 %169, 2, !dbg !552
  %171 = call i8* @vcard_malloc(i32 %170) #8, !dbg !553
  call void @llvm.dbg.value(metadata i8* %171, metadata !494, metadata !DIExpression()), !dbg !554
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %171, i8* nonnull %105, i32 %165, i32 1, i1 false) #9, !dbg !555
  call void @llvm.dbg.value(metadata i8* %105, metadata !105, metadata !DIExpression()), !dbg !556
  call void @free(i8* nonnull %105) #8, !dbg !558
  %172 = getelementptr inbounds i8, i8* %171, i32 %165, !dbg !559
  store i8 35, i8* %172, align 1, !dbg !560, !tbaa !127
  %173 = getelementptr inbounds i8, i8* %172, i32 1, !dbg !561
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %173, i8* %162, i32 %164, i32 1, i1 false) #9, !dbg !562
  call void @llvm.dbg.value(metadata i8* %162, metadata !105, metadata !DIExpression()), !dbg !563
  call void @free(i8* %162) #8, !dbg !565
  %174 = add nsw i32 %169, 1, !dbg !566
  %175 = getelementptr inbounds i8, i8* %171, i32 %174, !dbg !567
  store i8 0, i8* %175, align 1, !dbg !568, !tbaa !127
  br label %176

; <label>:176:                                    ; preds = %168, %167, %160
  %177 = phi i8* [ %105, %167 ], [ %171, %168 ], [ %162, %160 ]
  %178 = icmp eq i8* %138, %109, !dbg !569
  br i1 %178, label %200, label %179, !dbg !571

; <label>:179:                                    ; preds = %176
  %180 = getelementptr inbounds i8, i8* %138, i32 -1, !dbg !572
  store i8 0, i8* %180, align 1, !dbg !574, !tbaa !127
  call void @llvm.dbg.value(metadata i8* %109, metadata !575, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i32 0, metadata !583, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i8 0, metadata !584, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i8* %109, metadata !581, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %109, metadata !581, metadata !DIExpression()), !dbg !592
  %181 = load i8, i8* %109, align 1, !dbg !593, !tbaa !127
  %182 = icmp eq i8 %181, 0, !dbg !595
  br i1 %182, label %200, label %183, !dbg !595

; <label>:183:                                    ; preds = %179
  br label %184, !dbg !596

; <label>:184:                                    ; preds = %184, %183
  %185 = phi i8 [ %197, %184 ], [ %181, %183 ]
  %186 = phi i8* [ %196, %184 ], [ %109, %183 ]
  %187 = sext i8 %185 to i32, !dbg !596
  call void @llvm.dbg.value(metadata i32 %187, metadata !585, metadata !DIExpression()), !dbg !596
  %188 = load i8*, i8** @__ctype_ptr__, align 4, !dbg !596, !tbaa !176
  %189 = getelementptr inbounds i8, i8* %188, i32 1, !dbg !596
  %190 = getelementptr inbounds i8, i8* %189, i32 %187, !dbg !596
  %191 = load i8, i8* %190, align 1, !dbg !596, !tbaa !127
  %192 = and i8 %191, 3, !dbg !596
  %193 = icmp eq i8 %192, 1, !dbg !596
  %194 = add i8 %185, 32, !dbg !597
  %195 = select i1 %193, i8 %194, i8 %185, !dbg !596
  store i8 %195, i8* %186, align 1, !dbg !599, !tbaa !127
  %196 = getelementptr inbounds i8, i8* %186, i32 1, !dbg !601
  call void @llvm.dbg.value(metadata i8* %196, metadata !581, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %196, metadata !581, metadata !DIExpression()), !dbg !592
  %197 = load i8, i8* %196, align 1, !dbg !593, !tbaa !127
  %198 = icmp eq i8 %197, 0, !dbg !595
  br i1 %198, label %199, label %184, !dbg !595, !llvm.loop !602

; <label>:199:                                    ; preds = %184
  br label %200, !dbg !605

; <label>:200:                                    ; preds = %199, %179, %176, %158, %155
  %201 = phi i8* [ %105, %158 ], [ %105, %155 ], [ %177, %176 ], [ %177, %179 ], [ %177, %199 ]
  %202 = load i8*, i8** %3, align 4, !dbg !605, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %202, metadata !336, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8* %202, metadata !105, metadata !DIExpression()), !dbg !606
  call void @free(i8* %202) #8, !dbg !608
  br label %99, !dbg !609

; <label>:203:                                    ; preds = %113
  call void @llvm.dbg.value(metadata i8* %109, metadata !436, metadata !DIExpression()), !dbg !610
  %204 = call i8* @strchr(i8* nonnull %109, i32 58) #8, !dbg !621
  call void @llvm.dbg.value(metadata i8* %204, metadata !439, metadata !DIExpression()), !dbg !622
  %205 = icmp eq i8* %204, null, !dbg !623
  %206 = getelementptr inbounds i8, i8* %204, i32 1, !dbg !624
  call void @llvm.dbg.value(metadata i8* %206, metadata !439, metadata !DIExpression()), !dbg !622
  %207 = select i1 %205, i8* %109, i8* %206, !dbg !625
  call void @llvm.dbg.value(metadata i8* %207, metadata !439, metadata !DIExpression()), !dbg !622
  %208 = load i8, i8* %207, align 1, !dbg !626, !tbaa !127
  switch i8 %208, label %215 [
    i8 0, label %209
    i8 13, label %209
    i8 10, label %209
  ], !dbg !627

; <label>:209:                                    ; preds = %203, %203, %203
  %210 = load i8, i8* @profile_debug_enable, align 1, !dbg !628, !tbaa !127
  %211 = and i8 %210, 4, !dbg !628
  %212 = icmp eq i8 %211, 0, !dbg !628
  br i1 %212, label %217, label %213, !dbg !629

; <label>:213:                                    ; preds = %209
  %214 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.70, i32 0, i32 0)) #9, !dbg !630
  br label %217, !dbg !630

; <label>:215:                                    ; preds = %203
  call void @llvm.dbg.value(metadata i8* %207, metadata !619, metadata !DIExpression()), !dbg !631
  %216 = icmp eq i8* %207, null, !dbg !632
  br i1 %216, label %217, label %229, !dbg !636

; <label>:217:                                    ; preds = %215, %213, %209
  %218 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !638, !tbaa !127
  %219 = and i8 %218, 32, !dbg !638
  %220 = icmp eq i8 %219, 0, !dbg !638
  br i1 %220, label %224, label %221, !dbg !642

; <label>:221:                                    ; preds = %217
  %222 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0)) #8, !dbg !644
  %223 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !646, !tbaa !127
  br label %224, !dbg !644

; <label>:224:                                    ; preds = %221, %217
  %225 = phi i8 [ %218, %217 ], [ %223, %221 ], !dbg !646
  %226 = icmp slt i8 %225, 0, !dbg !646
  br i1 %226, label %227, label %253, !dbg !649

; <label>:227:                                    ; preds = %224
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.vcard_get_call_info, i32 0, i32 0)) #8, !dbg !651
  br label %253, !dbg !651

; <label>:229:                                    ; preds = %215
  %230 = call i8* @strdup(i8* nonnull %207) #8, !dbg !653
  %231 = icmp eq i8* %207, %109, !dbg !655
  br i1 %231, label %253, label %232, !dbg !657

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %207, i32 -1, !dbg !658
  store i8 0, i8* %233, align 1, !dbg !660, !tbaa !127
  call void @llvm.dbg.value(metadata i8* %109, metadata !661, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i8 0, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8* %109, metadata !667, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i8* %109, metadata !667, metadata !DIExpression()), !dbg !678
  %234 = load i8, i8* %109, align 1, !dbg !679, !tbaa !127
  %235 = icmp eq i8 %234, 0, !dbg !681
  br i1 %235, label %253, label %236, !dbg !681

; <label>:236:                                    ; preds = %232
  br label %237, !dbg !682

; <label>:237:                                    ; preds = %237, %236
  %238 = phi i8 [ %250, %237 ], [ %234, %236 ]
  %239 = phi i8* [ %249, %237 ], [ %109, %236 ]
  %240 = sext i8 %238 to i32, !dbg !682
  call void @llvm.dbg.value(metadata i32 %240, metadata !671, metadata !DIExpression()), !dbg !682
  %241 = load i8*, i8** @__ctype_ptr__, align 4, !dbg !682, !tbaa !176
  %242 = getelementptr inbounds i8, i8* %241, i32 1, !dbg !682
  %243 = getelementptr inbounds i8, i8* %242, i32 %240, !dbg !682
  %244 = load i8, i8* %243, align 1, !dbg !682, !tbaa !127
  %245 = and i8 %244, 3, !dbg !682
  %246 = icmp eq i8 %245, 1, !dbg !682
  %247 = add i8 %238, 32, !dbg !683
  %248 = select i1 %246, i8 %247, i8 %238, !dbg !682
  store i8 %248, i8* %239, align 1, !dbg !685, !tbaa !127
  %249 = getelementptr inbounds i8, i8* %239, i32 1, !dbg !687
  call void @llvm.dbg.value(metadata i8* %249, metadata !667, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i8* %249, metadata !667, metadata !DIExpression()), !dbg !678
  %250 = load i8, i8* %249, align 1, !dbg !679, !tbaa !127
  %251 = icmp eq i8 %250, 0, !dbg !681
  br i1 %251, label %252, label %237, !dbg !681, !llvm.loop !688

; <label>:252:                                    ; preds = %237
  br label %253, !dbg !691

; <label>:253:                                    ; preds = %252, %232, %229, %227, %224
  %254 = phi i8* [ %106, %227 ], [ %106, %224 ], [ %230, %229 ], [ %230, %232 ], [ %230, %252 ]
  %255 = load i8*, i8** %3, align 4, !dbg !691, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %255, metadata !336, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8* %255, metadata !105, metadata !DIExpression()), !dbg !692
  call void @free(i8* %255) #8, !dbg !694
  br label %99, !dbg !695

; <label>:256:                                    ; preds = %113
  call void @llvm.dbg.value(metadata i8* %109, metadata !105, metadata !DIExpression()), !dbg !696
  call void @free(i8* nonnull %109) #8, !dbg !698
  br label %282, !dbg !699

; <label>:257:                                    ; preds = %113
  %258 = load i8, i8* @profile_debug_enable, align 1, !dbg !700, !tbaa !127
  %259 = and i8 %258, 4, !dbg !700
  %260 = icmp eq i8 %259, 0, !dbg !700
  br i1 %260, label %264, label %261, !dbg !702

; <label>:261:                                    ; preds = %257
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0), i32 %95) #8, !dbg !703
  %263 = load i8*, i8** %3, align 4, !tbaa !176
  br label %264, !dbg !703

; <label>:264:                                    ; preds = %261, %257
  %265 = phi i8* [ %109, %257 ], [ %263, %261 ], !dbg !705
  call void @llvm.dbg.value(metadata i8* %265, metadata !336, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8* %265, metadata !105, metadata !DIExpression()), !dbg !706
  call void @free(i8* %265) #8, !dbg !708
  br label %111, !dbg !709

; <label>:266:                                    ; preds = %86
  br label %268, !dbg !710

; <label>:267:                                    ; preds = %99
  br label %268, !dbg !710

; <label>:268:                                    ; preds = %267, %266
  %269 = phi i8* [ %105, %266 ], [ %100, %267 ]
  %270 = phi i8* [ %106, %266 ], [ %101, %267 ]
  %271 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !710, !tbaa !127
  %272 = and i8 %271, 32, !dbg !710
  %273 = icmp eq i8 %272, 0, !dbg !710
  br i1 %273, label %277, label %274, !dbg !716

; <label>:274:                                    ; preds = %268
  %275 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !718
  %276 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !720, !tbaa !127
  br label %277, !dbg !718

; <label>:277:                                    ; preds = %274, %268
  %278 = phi i8 [ %271, %268 ], [ %276, %274 ], !dbg !720
  %279 = icmp slt i8 %278, 0, !dbg !720
  br i1 %279, label %280, label %282, !dbg !723

; <label>:280:                                    ; preds = %277
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.vcard_get_contact, i32 0, i32 0)) #8, !dbg !725
  br label %282, !dbg !725

; <label>:282:                                    ; preds = %280, %277, %256
  %283 = phi i8* [ %269, %280 ], [ %269, %277 ], [ %105, %256 ]
  %284 = phi i8* [ %270, %280 ], [ %270, %277 ], [ %106, %256 ]
  %285 = phi i32 [ -2, %280 ], [ -2, %277 ], [ 0, %256 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %59) #9, !dbg !727
  call void @llvm.dbg.value(metadata i32 %285, metadata !206, metadata !DIExpression()), !dbg !728
  %286 = call zeroext i8 bitcast (i8 (...)* @check_cur_number_type to i8 ()*)() #8, !dbg !729
  %287 = icmp eq i8* %63, null, !dbg !730
  br i1 %287, label %295, label %288, !dbg !732

; <label>:288:                                    ; preds = %282
  %289 = load i8, i8* @profile_debug_enable, align 1, !dbg !733, !tbaa !127
  %290 = and i8 %289, 1, !dbg !733
  %291 = icmp eq i8 %290, 0, !dbg !733
  br i1 %291, label %294, label %292, !dbg !736

; <label>:292:                                    ; preds = %288
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* nonnull %63) #7, !dbg !737
  br label %294, !dbg !737

; <label>:294:                                    ; preds = %292, %288
  call void @phonebook_packet_handler(i8 zeroext %286, i8* nonnull %63, i8* %283, i8* %284) #7, !dbg !739
  call void @llvm.dbg.value(metadata i8* %63, metadata !105, metadata !DIExpression()), !dbg !742
  call void @free(i8* nonnull %63) #8, !dbg !744
  br label %296, !dbg !745

; <label>:295:                                    ; preds = %282
  call void @phonebook_packet_handler(i8 zeroext %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %283, i8* %284) #7, !dbg !746
  br label %296

; <label>:296:                                    ; preds = %295, %294
  %297 = icmp eq i8* %283, null, !dbg !752
  br i1 %297, label %305, label %298, !dbg !754

; <label>:298:                                    ; preds = %296
  %299 = load i8, i8* @profile_debug_enable, align 1, !dbg !755, !tbaa !127
  %300 = and i8 %299, 1, !dbg !755
  %301 = icmp eq i8 %300, 0, !dbg !755
  br i1 %301, label %304, label %302, !dbg !758

; <label>:302:                                    ; preds = %298
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* nonnull %283) #7, !dbg !759
  br label %304, !dbg !759

; <label>:304:                                    ; preds = %302, %298
  call void @llvm.dbg.value(metadata i8* %283, metadata !105, metadata !DIExpression()), !dbg !761
  call void @free(i8* nonnull %283) #8, !dbg !763
  br label %305, !dbg !764

; <label>:305:                                    ; preds = %304, %296
  %306 = icmp eq i8* %284, null, !dbg !765
  br i1 %306, label %315, label %307, !dbg !767

; <label>:307:                                    ; preds = %305
  %308 = load i8, i8* @profile_debug_enable, align 1, !dbg !768, !tbaa !127
  %309 = and i8 %308, 1, !dbg !768
  %310 = icmp eq i8 %309, 0, !dbg !768
  br i1 %310, label %314, label %311, !dbg !771

; <label>:311:                                    ; preds = %307
  %312 = zext i8 %286 to i32, !dbg !772
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i32 %312, i8* nonnull %284) #7, !dbg !772
  br label %314, !dbg !772

; <label>:314:                                    ; preds = %311, %307
  call void @llvm.dbg.value(metadata i8* %284, metadata !105, metadata !DIExpression()), !dbg !774
  call void @free(i8* nonnull %284) #8, !dbg !776
  br label %315, !dbg !777

; <label>:315:                                    ; preds = %314, %305, %24, %21, %2
  %316 = phi i32 [ -1, %2 ], [ -2, %24 ], [ -2, %21 ], [ %285, %305 ], [ %285, %314 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9, !dbg !778
  ret i32 %316, !dbg !778
}

; Function Attrs: nounwind optsize
define internal fastcc i8* @vcard_check_word(i8* readonly, i8* nocapture readonly) unnamed_addr #1 !dbg !779 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !783, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i8* %1, metadata !784, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8 0, metadata !785, metadata !DIExpression()), !dbg !788
  %3 = icmp eq i8* %0, null, !dbg !789
  br i1 %3, label %5, label %4, !dbg !793

; <label>:4:                                      ; preds = %2
  br label %17, !dbg !795

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !800, !tbaa !127
  %7 = and i8 %6, 32, !dbg !800
  %8 = icmp eq i8 %7, 0, !dbg !800
  br i1 %8, label %12, label %9, !dbg !804

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !806
  %11 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !808, !tbaa !127
  br label %12, !dbg !806

; <label>:12:                                     ; preds = %9, %5
  %13 = phi i8 [ %6, %5 ], [ %11, %9 ], !dbg !808
  %14 = icmp slt i8 %13, 0, !dbg !808
  br i1 %14, label %15, label %58, !dbg !811

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.vcard_check_word, i32 0, i32 0)) #7, !dbg !813
  br label %58, !dbg !813

; <label>:17:                                     ; preds = %21, %4
  %18 = phi i8* [ %22, %21 ], [ %0, %4 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !798, metadata !DIExpression()), !dbg !795
  %19 = load i8, i8* %18, align 1, !dbg !815, !tbaa !127
  switch i8 %19, label %20 [
    i8 13, label %21
    i8 10, label %21
    i8 0, label %34
  ], !dbg !817

; <label>:20:                                     ; preds = %17
  br label %23, !dbg !818

; <label>:21:                                     ; preds = %17, %17
  %22 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !820
  call void @llvm.dbg.value(metadata i8* %22, metadata !798, metadata !DIExpression()), !dbg !795
  br label %17, !dbg !822, !llvm.loop !824

; <label>:23:                                     ; preds = %27, %20
  %24 = phi i8 [ %29, %27 ], [ %19, %20 ]
  %25 = phi i8* [ %28, %27 ], [ %18, %20 ]
  %26 = sext i8 %24 to i32, !dbg !818
  switch i32 %26, label %31 [
    i32 32, label %27
    i32 58, label %27
    i32 59, label %27
  ], !dbg !827

; <label>:27:                                     ; preds = %23, %23, %23
  %28 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !828
  call void @llvm.dbg.value(metadata i8* %28, metadata !783, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i8 0, metadata !785, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8* %28, metadata !783, metadata !DIExpression()), !dbg !786
  %29 = load i8, i8* %28, align 1, !dbg !830, !tbaa !127
  %30 = icmp eq i8 %29, 0, !dbg !832
  br i1 %30, label %31, label %23, !dbg !832

; <label>:31:                                     ; preds = %27, %23
  %32 = phi i8 [ %24, %23 ], [ 0, %27 ]
  %33 = phi i8* [ %25, %23 ], [ %28, %27 ]
  br label %35

; <label>:34:                                     ; preds = %17
  br label %35

; <label>:35:                                     ; preds = %34, %31
  %36 = phi i8 [ %32, %31 ], [ 0, %34 ]
  %37 = phi i8* [ %33, %31 ], [ %18, %34 ]
  %38 = load i8, i8* %1, align 1, !tbaa !127
  br label %39, !dbg !787

; <label>:39:                                     ; preds = %51, %35
  %40 = phi i8 [ %50, %51 ], [ %38, %35 ], !dbg !833
  %41 = phi i8 [ %48, %51 ], [ %36, %35 ], !dbg !834
  %42 = phi i8* [ %46, %51 ], [ %37, %35 ]
  %43 = phi i8* [ %47, %51 ], [ %1, %35 ]
  call void @llvm.dbg.value(metadata i8* %43, metadata !784, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i8* %42, metadata !783, metadata !DIExpression()), !dbg !786
  %44 = icmp eq i8 %41, %40, !dbg !835
  br i1 %44, label %45, label %53, !dbg !836

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !837
  call void @llvm.dbg.value(metadata i8* %46, metadata !783, metadata !DIExpression()), !dbg !786
  %47 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !839
  call void @llvm.dbg.value(metadata i8* %47, metadata !784, metadata !DIExpression()), !dbg !787
  %48 = load i8, i8* %46, align 1, !dbg !840, !tbaa !127
  %49 = icmp eq i8 %48, 0, !dbg !842
  %50 = load i8, i8* %47, align 1, !tbaa !127
  br i1 %49, label %53, label %51, !dbg !843

; <label>:51:                                     ; preds = %45
  %52 = icmp eq i8 %50, 0, !dbg !844
  br i1 %52, label %53, label %39, !dbg !846, !llvm.loop !848

; <label>:53:                                     ; preds = %51, %45, %39
  %54 = phi i8 [ %50, %45 ], [ 0, %51 ], [ %40, %39 ], !dbg !851
  %55 = phi i8* [ %46, %45 ], [ %46, %51 ], [ %42, %39 ]
  call void @llvm.dbg.value(metadata i8* %55, metadata !783, metadata !DIExpression()), !dbg !786
  %56 = icmp eq i8 %54, 0, !dbg !853
  %57 = select i1 %56, i8* %55, i8* null, !dbg !854
  br label %58, !dbg !854

; <label>:58:                                     ; preds = %53, %15, %12
  %59 = phi i8* [ null, %15 ], [ null, %12 ], [ %57, %53 ]
  ret i8* %59, !dbg !856
}

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize
define internal fastcc i8* @vcard_get_val(i32, i8*, i8**) unnamed_addr #1 !dbg !857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !861, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i8* %1, metadata !862, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8** %2, metadata !863, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8 0, metadata !866, metadata !DIExpression()), !dbg !876
  %4 = icmp eq i8* %1, null, !dbg !877
  br i1 %4, label %5, label %17, !dbg !881

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !883, !tbaa !127
  %7 = and i8 %6, 32, !dbg !883
  %8 = icmp eq i8 %7, 0, !dbg !883
  br i1 %8, label %12, label %9, !dbg !887

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0)) #7, !dbg !889
  %11 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !891, !tbaa !127
  br label %12, !dbg !889

; <label>:12:                                     ; preds = %9, %5
  %13 = phi i8 [ %6, %5 ], [ %11, %9 ], !dbg !891
  %14 = icmp slt i8 %13, 0, !dbg !891
  br i1 %14, label %15, label %244, !dbg !894

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.vcard_get_val, i32 0, i32 0)) #7, !dbg !896
  br label %244, !dbg !896

; <label>:17:                                     ; preds = %3
  %18 = icmp eq i8** %2, null, !dbg !898
  br i1 %18, label %23, label %19, !dbg !902

; <label>:19:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i8* %1, metadata !862, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8 0, metadata !866, metadata !DIExpression()), !dbg !876
  %20 = load i8, i8* %1, align 1, !dbg !904, !tbaa !127
  %21 = icmp eq i8 %20, 0, !dbg !906
  br i1 %21, label %46, label %22, !dbg !906

; <label>:22:                                     ; preds = %19
  br label %35, !dbg !907

; <label>:23:                                     ; preds = %17
  %24 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !909, !tbaa !127
  %25 = and i8 %24, 32, !dbg !909
  %26 = icmp eq i8 %25, 0, !dbg !909
  br i1 %26, label %30, label %27, !dbg !913

; <label>:27:                                     ; preds = %23
  %28 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)) #7, !dbg !915
  %29 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !917, !tbaa !127
  br label %30, !dbg !915

; <label>:30:                                     ; preds = %27, %23
  %31 = phi i8 [ %24, %23 ], [ %29, %27 ], !dbg !917
  %32 = icmp slt i8 %31, 0, !dbg !917
  br i1 %32, label %33, label %244, !dbg !920

; <label>:33:                                     ; preds = %30
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.vcard_get_val, i32 0, i32 0)) #7, !dbg !922
  br label %244, !dbg !922

; <label>:35:                                     ; preds = %39, %22
  %36 = phi i8 [ %41, %39 ], [ %20, %22 ]
  %37 = phi i8* [ %40, %39 ], [ %1, %22 ]
  %38 = sext i8 %36 to i32, !dbg !907
  switch i32 %38, label %43 [
    i32 10, label %243
    i32 13, label %39
    i32 32, label %39
    i32 58, label %39
  ], !dbg !924

; <label>:39:                                     ; preds = %35, %35, %35
  %40 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !925
  call void @llvm.dbg.value(metadata i8* %40, metadata !862, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %40, metadata !862, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8 0, metadata !866, metadata !DIExpression()), !dbg !876
  %41 = load i8, i8* %40, align 1, !dbg !904, !tbaa !127
  %42 = icmp eq i8 %41, 0, !dbg !906
  br i1 %42, label %43, label %35, !dbg !906

; <label>:43:                                     ; preds = %39, %35
  %44 = phi i8 [ %36, %35 ], [ 0, %39 ]
  %45 = phi i8* [ %37, %35 ], [ %40, %39 ]
  br label %46, !dbg !874

; <label>:46:                                     ; preds = %43, %19
  %47 = phi i8 [ 0, %19 ], [ %44, %43 ]
  %48 = phi i8* [ %1, %19 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !862, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 0, metadata !865, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata i8* undef, metadata !867, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 0, metadata !864, metadata !DIExpression()), !dbg !929
  %49 = icmp eq i32 %0, 1, !dbg !930
  br i1 %49, label %51, label %50, !dbg !932

; <label>:50:                                     ; preds = %46
  br label %108, !dbg !928

; <label>:51:                                     ; preds = %46
  %52 = ptrtoint i8* %48 to i32
  %53 = icmp ne i8 %47, 0
  br label %54, !dbg !928

; <label>:54:                                     ; preds = %103, %51
  %55 = phi i8 [ %107, %103 ], [ %47, %51 ], !dbg !933
  %56 = phi i32 [ %104, %103 ], [ 0, %51 ]
  %57 = phi i8* [ %106, %103 ], [ %48, %51 ]
  call void @llvm.dbg.value(metadata i8* %57, metadata !867, metadata !DIExpression()), !dbg !928
  switch i8 %55, label %103 [
    i8 0, label %129
    i8 61, label %58
    i8 13, label %91
    i8 10, label %99
  ], !dbg !939

; <label>:58:                                     ; preds = %54
  %59 = ptrtoint i8* %57 to i32, !dbg !941
  %60 = sub i32 %59, %52, !dbg !941
  call void @llvm.dbg.value(metadata i8* undef, metadata !943, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i32 %60, metadata !949, metadata !DIExpression()), !dbg !954
  %61 = icmp eq i32 %56, 1, !dbg !955
  br i1 %61, label %81, label %62, !dbg !957

; <label>:62:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i8* undef, metadata !943, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i32 %60, metadata !949, metadata !DIExpression()), !dbg !954
  %63 = icmp ne i32 %60, 0, !dbg !958
  %64 = and i1 %63, %53, !dbg !960
  br i1 %64, label %65, label %103, !dbg !962

; <label>:65:                                     ; preds = %62
  br label %66, !dbg !964

; <label>:66:                                     ; preds = %73, %65
  %67 = phi i8 [ %76, %73 ], [ %47, %65 ]
  %68 = phi i8* [ %74, %73 ], [ %48, %65 ]
  %69 = phi i32 [ %75, %73 ], [ %60, %65 ]
  switch i8 %67, label %73 [
    i8 81, label %70
    i8 58, label %90
  ], !dbg !964

; <label>:70:                                     ; preds = %66
  %71 = tail call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 16) #8, !dbg !966
  call void @llvm.dbg.value(metadata i32 %71, metadata !951, metadata !DIExpression()), !dbg !969
  %72 = icmp eq i32 %71, 0, !dbg !970
  br i1 %72, label %80, label %73, !dbg !972

; <label>:73:                                     ; preds = %70, %66
  %74 = getelementptr inbounds i8, i8* %68, i32 1, !dbg !973
  call void @llvm.dbg.value(metadata i8* %74, metadata !943, metadata !DIExpression()), !dbg !952
  %75 = add nsw i32 %69, -1, !dbg !974
  call void @llvm.dbg.value(metadata i32 %75, metadata !949, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i8* %74, metadata !943, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i32 %75, metadata !949, metadata !DIExpression()), !dbg !954
  %76 = load i8, i8* %74, align 1, !dbg !975, !tbaa !127
  %77 = icmp ne i8 %76, 0, !dbg !975
  %78 = icmp ne i32 %75, 0, !dbg !958
  %79 = and i1 %78, %77, !dbg !960
  br i1 %79, label %66, label %90, !dbg !962, !llvm.loop !976

; <label>:80:                                     ; preds = %70
  br label %81, !dbg !979

; <label>:81:                                     ; preds = %80, %58
  %82 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !979
  %83 = load i8, i8* %82, align 1, !dbg !982, !tbaa !127
  %84 = icmp eq i8 %83, 13, !dbg !983
  br i1 %84, label %85, label %103, !dbg !984

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds i8, i8* %57, i32 2, !dbg !985
  %87 = load i8, i8* %86, align 1, !dbg !987, !tbaa !127
  %88 = icmp eq i8 %87, 10, !dbg !988
  call void @llvm.dbg.value(metadata i8* %86, metadata !867, metadata !DIExpression()), !dbg !928
  %89 = select i1 %88, i8* %86, i8* %57, !dbg !989
  br label %103, !dbg !989

; <label>:90:                                     ; preds = %73, %66
  switch i8 %55, label %103 [
    i8 13, label %91
    i8 10, label %99
  ], !dbg !991

; <label>:91:                                     ; preds = %90, %54
  %92 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !993
  %93 = load i8, i8* %92, align 1, !dbg !995, !tbaa !127
  %94 = icmp eq i8 %93, 10, !dbg !996
  br i1 %94, label %95, label %103, !dbg !997

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i8, i8* %57, i32 2, !dbg !998
  %97 = load i8, i8* %96, align 1, !dbg !1000, !tbaa !127
  %98 = icmp eq i8 %97, 32, !dbg !1001
  br i1 %98, label %103, label %129, !dbg !1002

; <label>:99:                                     ; preds = %90, %54
  %100 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !1004
  %101 = load i8, i8* %100, align 1, !dbg !1006, !tbaa !127
  %102 = icmp eq i8 %101, 32, !dbg !1007
  br i1 %102, label %103, label %129, !dbg !1008

; <label>:103:                                    ; preds = %99, %95, %91, %90, %85, %81, %62, %54
  %104 = phi i32 [ %56, %99 ], [ 1, %85 ], [ 1, %81 ], [ %56, %95 ], [ %56, %91 ], [ %56, %62 ], [ %56, %90 ], [ %56, %54 ]
  %105 = phi i8* [ %57, %99 ], [ %89, %85 ], [ %57, %81 ], [ %57, %95 ], [ %57, %91 ], [ %57, %62 ], [ %57, %90 ], [ %57, %54 ]
  call void @llvm.dbg.value(metadata i8* %105, metadata !867, metadata !DIExpression()), !dbg !928
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1010
  call void @llvm.dbg.value(metadata i8* %106, metadata !867, metadata !DIExpression()), !dbg !928
  %107 = load i8, i8* %106, align 1, !tbaa !127
  br label %54, !dbg !1011, !llvm.loop !1013

; <label>:108:                                    ; preds = %122, %50
  %109 = phi i8 [ %47, %50 ], [ %123, %122 ], !dbg !1016
  %110 = phi i8* [ %48, %50 ], [ %124, %122 ]
  call void @llvm.dbg.value(metadata i8* %110, metadata !867, metadata !DIExpression()), !dbg !928
  switch i8 %109, label %119 [
    i8 0, label %130
    i8 13, label %111
    i8 10, label %125
  ], !dbg !1020

; <label>:111:                                    ; preds = %108
  %112 = getelementptr inbounds i8, i8* %110, i32 1, !dbg !1022
  %113 = load i8, i8* %112, align 1, !dbg !1025, !tbaa !127
  %114 = icmp eq i8 %113, 10, !dbg !1026
  br i1 %114, label %115, label %119, !dbg !1027

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds i8, i8* %110, i32 2, !dbg !1028
  %117 = load i8, i8* %116, align 1, !dbg !1030, !tbaa !127
  %118 = icmp eq i8 %117, 32, !dbg !1031
  br i1 %118, label %119, label %130, !dbg !1032

; <label>:119:                                    ; preds = %115, %111, %108
  %120 = getelementptr inbounds i8, i8* %110, i32 1
  %121 = load i8, i8* %120, align 1, !tbaa !127
  br label %122, !dbg !1034

; <label>:122:                                    ; preds = %125, %119
  %123 = phi i8 [ %121, %119 ], [ 32, %125 ]
  %124 = phi i8* [ %120, %119 ], [ %126, %125 ]
  br label %108, !dbg !928, !llvm.loop !1035

; <label>:125:                                    ; preds = %108
  %126 = getelementptr inbounds i8, i8* %110, i32 1, !dbg !1038
  %127 = load i8, i8* %126, align 1, !dbg !1040, !tbaa !127
  %128 = icmp eq i8 %127, 32, !dbg !1041
  br i1 %128, label %122, label %130, !dbg !1042

; <label>:129:                                    ; preds = %99, %95, %54
  br label %131, !dbg !928

; <label>:130:                                    ; preds = %125, %115, %108
  br label %131, !dbg !928

; <label>:131:                                    ; preds = %130, %129
  %132 = phi i32 [ %56, %129 ], [ 0, %130 ]
  %133 = phi i8* [ %57, %129 ], [ %110, %130 ]
  call void @llvm.dbg.value(metadata i8* %133, metadata !867, metadata !DIExpression()), !dbg !928
  %134 = icmp eq i8* %48, %133, !dbg !1044
  br i1 %134, label %135, label %136, !dbg !1045

; <label>:135:                                    ; preds = %131
  store i8* null, i8** %2, align 4, !dbg !1046, !tbaa !176
  br label %244, !dbg !1048

; <label>:136:                                    ; preds = %131
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !1049
  %137 = load i8, i8* %133, align 1, !dbg !1050, !tbaa !127
  call void @llvm.dbg.value(metadata i8 %137, metadata !871, metadata !DIExpression()), !dbg !1051
  store i8 0, i8* %133, align 1, !dbg !1052, !tbaa !127
  %138 = tail call i8* @strdup(i8* %48) #7, !dbg !1053
  store i8* %138, i8** %2, align 4, !dbg !1054, !tbaa !176
  %139 = icmp eq i8* %138, null, !dbg !1055
  %140 = or i1 %49, %139, !dbg !1066
  br i1 %140, label %171, label %141, !dbg !1066

; <label>:141:                                    ; preds = %136
  br label %142, !dbg !1067

; <label>:142:                                    ; preds = %166, %141
  %143 = phi i8* [ %168, %166 ], [ %138, %141 ]
  %144 = phi i8* [ %167, %166 ], [ %138, %141 ]
  call void @llvm.dbg.value(metadata i8* %144, metadata !1062, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %143, metadata !1061, metadata !DIExpression()), !dbg !1068
  %145 = load i8, i8* %143, align 1, !dbg !1069, !tbaa !127
  switch i8 %145, label %162 [
    i8 0, label %169
    i8 13, label %146
    i8 10, label %156
  ], !dbg !1071

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds i8, i8* %143, i32 1, !dbg !1072
  %148 = load i8, i8* %147, align 1, !dbg !1076, !tbaa !127
  %149 = icmp eq i8 %148, 10, !dbg !1077
  br i1 %149, label %150, label %162, !dbg !1078

; <label>:150:                                    ; preds = %146
  %151 = getelementptr inbounds i8, i8* %143, i32 2, !dbg !1079
  %152 = load i8, i8* %151, align 1, !dbg !1081, !tbaa !127
  %153 = icmp eq i8 %152, 32, !dbg !1082
  %154 = getelementptr inbounds i8, i8* %143, i32 3, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %154, metadata !1061, metadata !DIExpression()), !dbg !1068
  %155 = select i1 %153, i8* %154, i8* %143, !dbg !1085
  br label %162, !dbg !1085

; <label>:156:                                    ; preds = %142
  %157 = getelementptr inbounds i8, i8* %143, i32 1, !dbg !1087
  %158 = load i8, i8* %157, align 1, !dbg !1090, !tbaa !127
  %159 = icmp eq i8 %158, 32, !dbg !1091
  %160 = getelementptr inbounds i8, i8* %143, i32 2, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %160, metadata !1061, metadata !DIExpression()), !dbg !1068
  %161 = select i1 %159, i8* %160, i8* %143, !dbg !1094
  br label %162, !dbg !1094

; <label>:162:                                    ; preds = %156, %150, %146, %142
  %163 = phi i8* [ %161, %156 ], [ %143, %146 ], [ %155, %150 ], [ %143, %142 ]
  call void @llvm.dbg.value(metadata i8* %163, metadata !1061, metadata !DIExpression()), !dbg !1068
  %164 = load i8, i8* %163, align 1, !dbg !1095, !tbaa !127
  %165 = icmp eq i8 %164, 0, !dbg !1097
  br i1 %165, label %169, label %166, !dbg !1098

; <label>:166:                                    ; preds = %162
  store i8 %164, i8* %144, align 1, !dbg !1099, !tbaa !127
  %167 = getelementptr inbounds i8, i8* %144, i32 1, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %167, metadata !1062, metadata !DIExpression()), !dbg !1067
  %168 = getelementptr inbounds i8, i8* %163, i32 1, !dbg !1101
  call void @llvm.dbg.value(metadata i8* %168, metadata !1061, metadata !DIExpression()), !dbg !1068
  br label %142, !dbg !1102, !llvm.loop !1104

; <label>:169:                                    ; preds = %162, %142
  store i8 0, i8* %144, align 1, !dbg !1107, !tbaa !127
  %170 = load i8*, i8** %2, align 4, !tbaa !176
  br label %171, !dbg !1108

; <label>:171:                                    ; preds = %169, %136
  %172 = phi i8* [ %170, %169 ], [ %138, %136 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8* %172, metadata !943, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 -1, metadata !949, metadata !DIExpression()), !dbg !1114
  %173 = icmp eq i32 %132, 1, !dbg !1115
  br i1 %173, label %193, label %174, !dbg !1116

; <label>:174:                                    ; preds = %171
  call void @llvm.dbg.value(metadata i8* %172, metadata !943, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 -1, metadata !949, metadata !DIExpression()), !dbg !1114
  %175 = load i8, i8* %172, align 1, !dbg !1117, !tbaa !127
  %176 = icmp eq i8 %175, 0, !dbg !1117
  br i1 %176, label %241, label %177, !dbg !1118

; <label>:177:                                    ; preds = %174
  br label %178, !dbg !1119

; <label>:178:                                    ; preds = %185, %177
  %179 = phi i8 [ %188, %185 ], [ %175, %177 ]
  %180 = phi i8* [ %186, %185 ], [ %172, %177 ]
  %181 = phi i32 [ %187, %185 ], [ -1, %177 ]
  switch i8 %179, label %185 [
    i8 81, label %182
    i8 58, label %240
  ], !dbg !1119

; <label>:182:                                    ; preds = %178
  %183 = tail call i32 @strncmp(i8* %180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 16) #8, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %183, metadata !951, metadata !DIExpression()), !dbg !1121
  %184 = icmp eq i32 %183, 0, !dbg !1122
  br i1 %184, label %192, label %185, !dbg !1123

; <label>:185:                                    ; preds = %182, %178
  %186 = getelementptr inbounds i8, i8* %180, i32 1, !dbg !1124
  call void @llvm.dbg.value(metadata i8* %186, metadata !943, metadata !DIExpression()), !dbg !1112
  %187 = add nsw i32 %181, -1, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %187, metadata !949, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %186, metadata !943, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 %187, metadata !949, metadata !DIExpression()), !dbg !1114
  %188 = load i8, i8* %186, align 1, !dbg !1117, !tbaa !127
  %189 = icmp ne i8 %188, 0, !dbg !1117
  %190 = icmp ne i32 %187, 0, !dbg !1126
  %191 = and i1 %190, %189, !dbg !1127
  br i1 %191, label %178, label %240, !dbg !1118, !llvm.loop !976

; <label>:192:                                    ; preds = %182
  br label %193, !dbg !1128

; <label>:193:                                    ; preds = %192, %171
  call void @llvm.dbg.value(metadata i8* %172, metadata !1131, metadata !DIExpression()), !dbg !1128
  %194 = tail call i8* @strchr(i8* %172, i32 58) #8, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %194, metadata !1132, metadata !DIExpression()), !dbg !1137
  %195 = icmp eq i8* %194, null, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %172, metadata !1132, metadata !DIExpression()), !dbg !1137
  %196 = select i1 %195, i8* %172, i8* %194, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %196, metadata !1132, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %196, metadata !1133, metadata !DIExpression()), !dbg !1141
  br label %197, !dbg !1142

; <label>:197:                                    ; preds = %235, %193
  %198 = phi i8* [ %196, %193 ], [ %236, %235 ]
  %199 = phi i8* [ %196, %193 ], [ %238, %235 ]
  call void @llvm.dbg.value(metadata i8* %199, metadata !1132, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %198, metadata !1133, metadata !DIExpression()), !dbg !1141
  %200 = load i8, i8* %199, align 1, !dbg !1143, !tbaa !127
  switch i8 %200, label %233 [
    i8 0, label %239
    i8 61, label %201
  ], !dbg !1145

; <label>:201:                                    ; preds = %197
  %202 = getelementptr inbounds i8, i8* %199, i32 1, !dbg !1146
  %203 = load i8, i8* %202, align 1, !dbg !1150, !tbaa !127
  call void @llvm.dbg.value(metadata i8 %203, metadata !1151, metadata !DIExpression()), !dbg !1156
  %204 = sext i8 %203 to i32, !dbg !1158
  %205 = add nsw i32 %204, -48, !dbg !1159
  %206 = icmp ult i32 %205, 55, !dbg !1159
  br i1 %206, label %207, label %226, !dbg !1159

; <label>:207:                                    ; preds = %201
  %208 = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table, i32 0, i32 %205, !dbg !1159
  %209 = load i32, i32* %208, align 4, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %209, metadata !1134, metadata !DIExpression()), !dbg !1160
  %210 = icmp sgt i32 %209, -1, !dbg !1161
  br i1 %210, label %211, label %226, !dbg !1163

; <label>:211:                                    ; preds = %207
  %212 = shl i32 %209, 4, !dbg !1164
  %213 = getelementptr inbounds i8, i8* %199, i32 2, !dbg !1166
  %214 = load i8, i8* %213, align 1, !dbg !1167, !tbaa !127
  call void @llvm.dbg.value(metadata i8 %214, metadata !1151, metadata !DIExpression()), !dbg !1168
  %215 = sext i8 %214 to i32, !dbg !1170
  %216 = add nsw i32 %215, -48, !dbg !1171
  %217 = icmp ult i32 %216, 55, !dbg !1171
  br i1 %217, label %218, label %221, !dbg !1171

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table, i32 0, i32 %216, !dbg !1171
  %220 = load i32, i32* %219, align 4, !dbg !1171
  br label %221, !dbg !1171

; <label>:221:                                    ; preds = %218, %211
  %222 = phi i32 [ %220, %218 ], [ -1, %211 ]
  %223 = add nsw i32 %222, %212, !dbg !1172
  %224 = trunc i32 %223 to i8, !dbg !1173
  store i8 %224, i8* %198, align 1, !dbg !1174, !tbaa !127
  %225 = getelementptr inbounds i8, i8* %198, i32 1, !dbg !1175
  call void @llvm.dbg.value(metadata i8* %225, metadata !1133, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %213, metadata !1132, metadata !DIExpression()), !dbg !1137
  br label %235, !dbg !1176

; <label>:226:                                    ; preds = %207, %201
  %227 = icmp eq i8 %203, 13, !dbg !1177
  br i1 %227, label %228, label %235, !dbg !1180

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %199, i32 2, !dbg !1181
  %230 = load i8, i8* %229, align 1, !dbg !1183, !tbaa !127
  %231 = icmp eq i8 %230, 10, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %229, metadata !1132, metadata !DIExpression()), !dbg !1137
  %232 = select i1 %231, i8* %229, i8* %199, !dbg !1185
  br label %235, !dbg !1185

; <label>:233:                                    ; preds = %197
  store i8 %200, i8* %198, align 1, !dbg !1187, !tbaa !127
  %234 = getelementptr inbounds i8, i8* %198, i32 1, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %234, metadata !1133, metadata !DIExpression()), !dbg !1141
  br label %235

; <label>:235:                                    ; preds = %233, %228, %226, %221
  %236 = phi i8* [ %225, %221 ], [ %198, %226 ], [ %234, %233 ], [ %198, %228 ]
  %237 = phi i8* [ %213, %221 ], [ %199, %226 ], [ %199, %233 ], [ %232, %228 ]
  call void @llvm.dbg.value(metadata i8* %237, metadata !1132, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %236, metadata !1133, metadata !DIExpression()), !dbg !1141
  %238 = getelementptr inbounds i8, i8* %237, i32 1, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %238, metadata !1132, metadata !DIExpression()), !dbg !1137
  br label %197, !dbg !1191, !llvm.loop !1193

; <label>:239:                                    ; preds = %197
  store i8 0, i8* %198, align 1, !dbg !1196, !tbaa !127
  br label %241, !dbg !1197

; <label>:240:                                    ; preds = %185, %178
  br label %241, !dbg !1198

; <label>:241:                                    ; preds = %240, %239, %174
  call void @llvm.dbg.value(metadata i8* null, metadata !872, metadata !DIExpression()), !dbg !1198
  store i8 %137, i8* %133, align 1, !dbg !1199, !tbaa !127
  %242 = getelementptr inbounds i8, i8* %133, i32 1, !dbg !1200
  br label %244

; <label>:243:                                    ; preds = %35
  br label %244, !dbg !1201

; <label>:244:                                    ; preds = %243, %241, %135, %33, %30, %15, %12
  %245 = phi i8* [ null, %135 ], [ %242, %241 ], [ null, %15 ], [ null, %12 ], [ null, %33 ], [ null, %30 ], [ null, %243 ]
  ret i8* %245, !dbg !1201
}

; Function Attrs: optsize
declare zeroext i8 @check_cur_number_type(...) local_unnamed_addr #5

; Function Attrs: nounwind optsize
define hidden i32 @contacts_svc_vcard_foreach(i8*, i32, i32 (i8*, i8*)* nocapture readnone, i8 zeroext) local_unnamed_addr #1 !dbg !1202 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1209, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %1, metadata !1210, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %2, metadata !1211, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %3, metadata !1212, metadata !DIExpression()), !dbg !1221
  %5 = icmp eq i8* %0, null, !dbg !1222
  br i1 %5, label %139, label %6, !dbg !1224

; <label>:6:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1217, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %0, metadata !1216, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 0, metadata !1214, metadata !DIExpression()), !dbg !1228
  %7 = icmp sgt i32 %1, 0, !dbg !1229
  br i1 %7, label %8, label %76, !dbg !1231

; <label>:8:                                      ; preds = %6
  br label %9

; <label>:9:                                      ; preds = %24, %8
  %10 = phi i8* [ %28, %24 ], [ %0, %8 ]
  %11 = phi i8* [ %27, %24 ], [ %0, %8 ]
  %12 = phi i8* [ %26, %24 ], [ %0, %8 ]
  %13 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %14 = getelementptr inbounds i8, i8* %12, i32 11
  br label %15, !dbg !1231

; <label>:15:                                     ; preds = %63, %9
  %16 = phi i8* [ %10, %9 ], [ %64, %63 ]
  %17 = phi i8* [ %11, %9 ], [ %12, %63 ]
  %18 = phi i32 [ %13, %9 ], [ %65, %63 ]
  %19 = load i8, i8* %12, align 1, !dbg !1232, !tbaa !127
  %20 = icmp eq i8 %19, 66, !dbg !1235
  br i1 %20, label %30, label %21, !dbg !1236

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !1237
  call void @llvm.dbg.value(metadata i8* %22, metadata !1215, metadata !DIExpression()), !dbg !1227
  %23 = add nsw i32 %18, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %23, metadata !1214, metadata !DIExpression()), !dbg !1228
  br label %24, !dbg !1240

; <label>:24:                                     ; preds = %70, %33, %21
  %25 = phi i32 [ %72, %70 ], [ %35, %33 ], [ %23, %21 ]
  %26 = phi i8* [ %71, %70 ], [ %34, %33 ], [ %22, %21 ]
  %27 = phi i8* [ %12, %70 ], [ %17, %33 ], [ %17, %21 ]
  %28 = phi i8* [ %71, %70 ], [ %16, %33 ], [ %16, %21 ]
  call void @llvm.dbg.value(metadata i8* %28, metadata !1217, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %27, metadata !1216, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %26, metadata !1215, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %25, metadata !1214, metadata !DIExpression()), !dbg !1228
  %29 = icmp slt i32 %25, %1, !dbg !1229
  br i1 %29, label %9, label %75, !dbg !1231, !llvm.loop !1241

; <label>:30:                                     ; preds = %15
  %31 = tail call i32 @strncmp(i8* nonnull %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 11) #7, !dbg !1244
  %32 = icmp eq i32 %31, 0, !dbg !1244
  br i1 %32, label %36, label %33, !dbg !1246

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %34, metadata !1215, metadata !DIExpression()), !dbg !1227
  %35 = add nsw i32 %18, 1, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %35, metadata !1214, metadata !DIExpression()), !dbg !1228
  br label %24, !dbg !1250

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !1251, !tbaa !176
  %38 = icmp eq i8* %37, null, !dbg !1251
  br i1 %38, label %56, label %39, !dbg !1253

; <label>:39:                                     ; preds = %36
  %40 = load i16, i16* @last_ptr_data_len, align 2, !dbg !1254, !tbaa !191
  %41 = zext i16 %40 to i32, !dbg !1254
  %42 = add i32 %18, 1, !dbg !1256
  %43 = add i32 %42, %41, !dbg !1257
  %44 = tail call i8* @vcard_malloc(i32 %43) #7, !dbg !1258
  store i8* %44, i8** @temp_vcard, align 4, !dbg !1259, !tbaa !176
  %45 = load i16, i16* @last_ptr_data_len, align 2, !dbg !1260, !tbaa !191
  %46 = zext i16 %45 to i32, !dbg !1260
  %47 = add i32 %42, %46, !dbg !1261
  %48 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !1262, !tbaa !176
  %49 = icmp ule i32 %47, %46, !dbg !1263
  %50 = select i1 %49, i32 0, i32 %42, !dbg !1263
  %51 = getelementptr i8, i8* %44, i32 %46, !dbg !1263
  call void @llvm.memset.p0i8.i32(i8* %51, i8 0, i32 %50, i32 1, i1 false), !dbg !1263
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %48, i32 %46, i32 1, i1 false), !dbg !1263
  %52 = getelementptr inbounds i8, i8* %44, i32 %46, !dbg !1264
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %52, i8* nonnull %0, i32 %18, i32 1, i1 false), !dbg !1265
  %53 = tail call i32 @vcard_parse(i8* %44, i32 undef) #7, !dbg !1266
  store i16 0, i16* @last_ptr_data_len, align 2, !dbg !1267, !tbaa !191
  %54 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !1268, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %54, metadata !105, metadata !DIExpression()), !dbg !1269
  tail call void @free(i8* %54) #8, !dbg !1271
  store i8* null, i8** @last_ptr_data_ptr, align 4, !dbg !1272, !tbaa !176
  %55 = load i8*, i8** @temp_vcard, align 4, !dbg !1273, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %55, metadata !105, metadata !DIExpression()), !dbg !1274
  tail call void @free(i8* %55) #8, !dbg !1276
  store i8* null, i8** @temp_vcard, align 4, !dbg !1277, !tbaa !176
  br label %56, !dbg !1278

; <label>:56:                                     ; preds = %39, %36
  %57 = icmp eq i8* %17, %12, !dbg !1279
  call void @llvm.dbg.value(metadata i8* %12, metadata !1216, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %14, metadata !1217, metadata !DIExpression()), !dbg !1225
  %58 = add i32 %18, 11, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %58, metadata !1214, metadata !DIExpression()), !dbg !1228
  %59 = select i1 %57, i32 %18, i32 %58, !dbg !1283
  %60 = select i1 %57, i8* %16, i8* %14, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %60, metadata !1217, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %12, metadata !1216, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i32 %59, metadata !1214, metadata !DIExpression()), !dbg !1228
  %61 = load i8, i8* %60, align 1, !dbg !1284, !tbaa !127
  %62 = icmp eq i8 %61, 69, !dbg !1286
  br i1 %62, label %67, label %63, !dbg !1287

; <label>:63:                                     ; preds = %67, %56
  %64 = getelementptr inbounds i8, i8* %60, i32 1
  %65 = add nsw i32 %59, 1
  call void @llvm.dbg.value(metadata i8* %64, metadata !1217, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %12, metadata !1216, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %12, metadata !1215, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %65, metadata !1214, metadata !DIExpression()), !dbg !1228
  %66 = icmp slt i32 %65, %1, !dbg !1229
  br i1 %66, label %15, label %74, !dbg !1231, !llvm.loop !1241

; <label>:67:                                     ; preds = %56
  %68 = tail call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 9) #7, !dbg !1288
  %69 = icmp eq i32 %68, 0, !dbg !1288
  br i1 %69, label %70, label %63, !dbg !1290

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds i8, i8* %60, i32 9, !dbg !1291
  call void @llvm.dbg.value(metadata i8* %71, metadata !1217, metadata !DIExpression()), !dbg !1225
  %72 = add i32 %59, 9, !dbg !1292
  call void @llvm.dbg.value(metadata i32 %72, metadata !1214, metadata !DIExpression()), !dbg !1228
  %73 = tail call i32 @vcard_parse(i8* %12, i32 undef) #7, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %71, metadata !1215, metadata !DIExpression()), !dbg !1227
  br label %24, !dbg !1294

; <label>:74:                                     ; preds = %63
  br label %76, !dbg !1296

; <label>:75:                                     ; preds = %24
  br label %76, !dbg !1296

; <label>:76:                                     ; preds = %75, %74, %6
  %77 = phi i8* [ %0, %6 ], [ %12, %74 ], [ %26, %75 ]
  %78 = phi i32 [ 0, %6 ], [ %65, %74 ], [ %25, %75 ]
  %79 = phi i8* [ %0, %6 ], [ %64, %74 ], [ %28, %75 ]
  %80 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !1296, !tbaa !176
  %81 = icmp ne i8* %80, null, !dbg !1296
  %82 = icmp eq i8 %3, 1, !dbg !1298
  %83 = and i1 %82, %81, !dbg !1300
  br i1 %83, label %84, label %108, !dbg !1300

; <label>:84:                                     ; preds = %76
  %85 = load i8, i8* @profile_debug_enable, align 1, !dbg !1301, !tbaa !127
  %86 = and i8 %85, 1, !dbg !1301
  %87 = icmp eq i8 %86, 0, !dbg !1301
  br i1 %87, label %90, label %88, !dbg !1304

; <label>:88:                                     ; preds = %84
  %89 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.69, i32 0, i32 0)), !dbg !1305
  br label %90, !dbg !1305

; <label>:90:                                     ; preds = %88, %84
  %91 = load i16, i16* @last_ptr_data_len, align 2, !dbg !1307, !tbaa !191
  %92 = zext i16 %91 to i32, !dbg !1307
  %93 = add i32 %1, 1, !dbg !1308
  %94 = add i32 %93, %92, !dbg !1309
  %95 = tail call i8* @vcard_malloc(i32 %94) #7, !dbg !1310
  store i8* %95, i8** @temp_vcard, align 4, !dbg !1311, !tbaa !176
  %96 = load i16, i16* @last_ptr_data_len, align 2, !dbg !1312, !tbaa !191
  %97 = zext i16 %96 to i32, !dbg !1312
  %98 = add i32 %78, 1, !dbg !1313
  %99 = add i32 %98, %97, !dbg !1314
  %100 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !1315, !tbaa !176
  %101 = icmp ule i32 %99, %97, !dbg !1316
  %102 = select i1 %101, i32 0, i32 %98, !dbg !1316
  %103 = getelementptr i8, i8* %95, i32 %97, !dbg !1316
  call void @llvm.memset.p0i8.i32(i8* %103, i8 0, i32 %102, i32 1, i1 false), !dbg !1316
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %95, i8* %100, i32 %97, i32 1, i1 false), !dbg !1316
  %104 = getelementptr inbounds i8, i8* %95, i32 %97, !dbg !1317
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %104, i8* nonnull %0, i32 %1, i32 1, i1 false), !dbg !1318
  %105 = tail call i32 @vcard_parse(i8* %95, i32 undef) #7, !dbg !1319
  store i16 0, i16* @last_ptr_data_len, align 2, !dbg !1320, !tbaa !191
  %106 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !1321, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %106, metadata !105, metadata !DIExpression()), !dbg !1322
  tail call void @free(i8* %106) #8, !dbg !1324
  store i8* null, i8** @last_ptr_data_ptr, align 4, !dbg !1325, !tbaa !176
  %107 = load i8*, i8** @temp_vcard, align 4, !dbg !1326, !tbaa !176
  call void @llvm.dbg.value(metadata i8* %107, metadata !105, metadata !DIExpression()), !dbg !1327
  tail call void @free(i8* %107) #8, !dbg !1329
  store i8* null, i8** @temp_vcard, align 4, !dbg !1330, !tbaa !176
  br label %108, !dbg !1331

; <label>:108:                                    ; preds = %90, %76
  %109 = icmp eq i8* %79, %0, !dbg !1332
  br i1 %109, label %110, label %114, !dbg !1334

; <label>:110:                                    ; preds = %108
  %111 = load i8*, i8** @last_ptr_data_ptr, align 4, !dbg !1335, !tbaa !176
  %112 = icmp eq i8* %111, null, !dbg !1338
  br i1 %112, label %133, label %113, !dbg !1339

; <label>:113:                                    ; preds = %110
  store i16 0, i16* @last_ptr_data_len, align 2, !dbg !1340, !tbaa !191
  call void @llvm.dbg.value(metadata i8* %111, metadata !105, metadata !DIExpression()), !dbg !1342
  tail call void @free(i8* nonnull %111) #8, !dbg !1344
  store i8* null, i8** @last_ptr_data_ptr, align 4, !dbg !1345, !tbaa !176
  br label %133, !dbg !1346

; <label>:114:                                    ; preds = %108
  %115 = icmp ne i8* %77, %79, !dbg !1347
  %116 = icmp eq i8 %3, 0, !dbg !1350
  %117 = and i1 %116, %115, !dbg !1352
  br i1 %117, label %118, label %133, !dbg !1352

; <label>:118:                                    ; preds = %114
  %119 = load i8, i8* @profile_debug_enable, align 1, !dbg !1353, !tbaa !127
  %120 = and i8 %119, 1, !dbg !1353
  %121 = icmp eq i8 %120, 0, !dbg !1353
  br i1 %121, label %124, label %122, !dbg !1356

; <label>:122:                                    ; preds = %118
  %123 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.68, i32 0, i32 0)), !dbg !1357
  br label %124, !dbg !1357

; <label>:124:                                    ; preds = %122, %118
  %125 = icmp ugt i8* %79, %77, !dbg !1359
  %126 = select i1 %125, i8* %77, i8* %79, !dbg !1361
  %127 = select i1 %125, i8* %79, i8* %77, !dbg !1361
  %128 = tail call i8* @strdup(i8* %126) #7, !dbg !1362
  store i8* %128, i8** @last_ptr_data_ptr, align 4, !dbg !1364, !tbaa !176
  %129 = ptrtoint i8* %127 to i32
  %130 = ptrtoint i8* %126 to i32
  %131 = sub i32 %129, %130
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* @last_ptr_data_len, align 2, !tbaa !191
  br label %133, !dbg !1366

; <label>:133:                                    ; preds = %124, %114, %113, %110
  %134 = load i8, i8* @profile_debug_enable, align 1, !dbg !1367, !tbaa !127
  %135 = and i8 %134, 1, !dbg !1367
  %136 = icmp eq i8 %135, 0, !dbg !1367
  br i1 %136, label %139, label %137, !dbg !1369

; <label>:137:                                    ; preds = %133
  %138 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.67, i32 0, i32 0)), !dbg !1370
  br label %139, !dbg !1370

; <label>:139:                                    ; preds = %137, %133, %4
  %140 = phi i32 [ -1, %4 ], [ 0, %133 ], [ 0, %137 ]
  ret i32 %140, !dbg !1372
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !86, line: 190, type: !71, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !72)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/vCard.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !11, !35, !54}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 75, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "VCARD_VER_NONE", value: 0)
!8 = !DIEnumerator(name: "VCARD_VER_2_1", value: 1)
!9 = !DIEnumerator(name: "VCARD_VER_3_0", value: 2)
!10 = !DIEnumerator(name: "VCARD_VER_4_0", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 82, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!13 = !DIEnumerator(name: "VCARD_VALUE_NONE", value: 0)
!14 = !DIEnumerator(name: "VCARD_VALUE_FN", value: 1)
!15 = !DIEnumerator(name: "VCARD_VALUE_N", value: 2)
!16 = !DIEnumerator(name: "VCARD_VALUE_NICKNAME", value: 3)
!17 = !DIEnumerator(name: "VCARD_VALUE_PHOTO", value: 4)
!18 = !DIEnumerator(name: "VCARD_VALUE_BDAY", value: 5)
!19 = !DIEnumerator(name: "VCARD_VALUE_ADR", value: 6)
!20 = !DIEnumerator(name: "VCARD_VALUE_LABEL", value: 7)
!21 = !DIEnumerator(name: "VCARD_VALUE_TEL", value: 8)
!22 = !DIEnumerator(name: "VCARD_VALUE_EMAIL", value: 9)
!23 = !DIEnumerator(name: "VCARD_VALUE_TITLE", value: 10)
!24 = !DIEnumerator(name: "VCARD_VALUE_ROLE", value: 11)
!25 = !DIEnumerator(name: "VCARD_VALUE_ORG", value: 12)
!26 = !DIEnumerator(name: "VCARD_VALUE_NOTE", value: 13)
!27 = !DIEnumerator(name: "VCARD_VALUE_REV", value: 14)
!28 = !DIEnumerator(name: "VCARD_VALUE_UID", value: 15)
!29 = !DIEnumerator(name: "VCARD_VALUE_URL", value: 16)
!30 = !DIEnumerator(name: "VCARD_VALUE_X_ANNIVERSARY", value: 17)
!31 = !DIEnumerator(name: "VCARD_VALUE_X_SLP_GROUP", value: 18)
!32 = !DIEnumerator(name: "VCARD_VALUE_X_IRMC_CALL_DATETIME", value: 19)
!33 = !DIEnumerator(name: "VCARD_VALUE_END", value: 20)
!34 = !DIEnumerator(name: "VCARD_VALUE_MAX", value: 21)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NUMBERTYPE", file: !36, line: 31, size: 32, elements: !37)
!36 = !DIFile(filename: "../btstack/Profile/include/bredr/vcard.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!38 = !DIEnumerator(name: "NUM_TYPE_NONE", value: 0)
!39 = !DIEnumerator(name: "NUM_TYPE_HOME", value: 1)
!40 = !DIEnumerator(name: "NUM_TYPE_WORK", value: 2)
!41 = !DIEnumerator(name: "NUM_TYPE_VOICE", value: 4)
!42 = !DIEnumerator(name: "NUM_TYPE_FAX", value: 8)
!43 = !DIEnumerator(name: "NUM_TYPE_MSG", value: 16)
!44 = !DIEnumerator(name: "NUM_TYPE_CELL", value: 32)
!45 = !DIEnumerator(name: "NUM_TYPE_PAGER", value: 64)
!46 = !DIEnumerator(name: "NUM_TYPE_BBS", value: 128)
!47 = !DIEnumerator(name: "NUM_TYPE_MODEM", value: 256)
!48 = !DIEnumerator(name: "NUM_TYPE_CAR", value: 512)
!49 = !DIEnumerator(name: "NUM_TYPE_ISDN", value: 1024)
!50 = !DIEnumerator(name: "NUM_TYPE_VIDEO", value: 2048)
!51 = !DIEnumerator(name: "NUM_TYPE_PCS", value: 4096)
!52 = !DIEnumerator(name: "NUM_TYPE_ASSISTANT", value: 1073741824)
!53 = !DIEnumerator(name: "NUM_TYPE_CUSTOM", value: -2147483648)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CALL_TYPE", file: !36, line: 26, size: 32, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "DIALED", value: 1)
!57 = !DIEnumerator(name: "INCOME", value: 2)
!58 = !DIEnumerator(name: "MISS", value: 3)
!59 = !{!60, !62, !67, !68, !70, !61, !71}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !65, line: 44, baseType: !66)
!65 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !{!0, !73, !75, !79, !84}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "last_ptr_data_ptr", scope: !2, file: !3, line: 72, type: !70, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "last_ptr_data_len", scope: !2, file: !3, line: 71, type: !77, isLocal: true, isDefinition: true)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !65, line: 46, baseType: !78)
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "content_name", scope: !2, file: !3, line: 107, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 672, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 21)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "temp_vcard", scope: !2, file: !3, line: 73, type: !70, isLocal: true, isDefinition: true)
!86 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!87 = !{i32 2, !"Dwarf Version", i32 4}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!90 = distinct !DISubprogram(name: "vcard_buffer_init", scope: !3, file: !3, line: 21, type: !91, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !95)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !67, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !65, line: 48, baseType: !94)
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !{!96, !97}
!96 = !DILocalVariable(name: "vcard", arg: 1, scope: !90, file: !3, line: 21, type: !67)
!97 = !DILocalVariable(name: "len", arg: 2, scope: !90, file: !3, line: 21, type: !93)
!98 = !DILocation(line: 21, column: 30, scope: !90)
!99 = !DILocation(line: 21, column: 41, scope: !90)
!100 = !DILocation(line: 29, column: 1, scope: !90)
!101 = distinct !DISubprogram(name: "vcard_free", scope: !3, file: !3, line: 30, type: !102, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !67}
!104 = !{!105}
!105 = !DILocalVariable(name: "p", arg: 1, scope: !101, file: !3, line: 30, type: !67)
!106 = !DILocation(line: 30, column: 23, scope: !101)
!107 = !DILocation(line: 33, column: 5, scope: !101)
!108 = !DILocation(line: 37, column: 1, scope: !101)
!109 = distinct !DISubprogram(name: "vcard_malloc", scope: !3, file: !3, line: 39, type: !110, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{!67, !93}
!112 = !{!113, !114}
!113 = !DILocalVariable(name: "size", arg: 1, scope: !109, file: !3, line: 39, type: !93)
!114 = !DILocalVariable(name: "p", scope: !109, file: !3, line: 41, type: !67)
!115 = !DILocation(line: 39, column: 24, scope: !109)
!116 = !DILocation(line: 44, column: 9, scope: !109)
!117 = !DILocation(line: 41, column: 11, scope: !109)
!118 = !DILocation(line: 48, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !109, file: !3, line: 48, column: 9)
!120 = !DILocation(line: 48, column: 9, scope: !109)
!121 = !DILocation(line: 49, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !3, line: 48, column: 12)
!123 = !DILocation(line: 50, column: 5, scope: !122)
!124 = !DILocation(line: 51, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 51, column: 9)
!126 = distinct !DILexicalBlock(scope: !119, file: !3, line: 50, column: 12)
!127 = !{!128, !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C/C++ TBAA"}
!130 = !DILocation(line: 51, column: 9, scope: !126)
!131 = !DILocation(line: 51, column: 9, scope: !132)
!132 = !DILexicalBlockFile(scope: !125, file: !3, discriminator: 1)
!133 = !DILocation(line: 54, column: 5, scope: !109)
!134 = distinct !DISubprogram(name: "strdup", scope: !3, file: !3, line: 116, type: !135, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!60, !68}
!137 = !{!138, !139}
!138 = !DILocalVariable(name: "s", arg: 1, scope: !134, file: !3, line: 116, type: !68)
!139 = !DILocalVariable(name: "t", scope: !134, file: !3, line: 118, type: !60)
!140 = !DILocation(line: 116, column: 26, scope: !134)
!141 = !DILocation(line: 118, column: 11, scope: !134)
!142 = !DILocation(line: 119, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !134, file: !3, line: 119, column: 9)
!144 = !DILocation(line: 119, column: 11, scope: !143)
!145 = !DILocation(line: 119, column: 41, scope: !146)
!146 = !DILexicalBlockFile(scope: !143, file: !3, discriminator: 1)
!147 = !DILocation(line: 119, column: 51, scope: !146)
!148 = !DILocation(line: 119, column: 27, scope: !149)
!149 = !DILexicalBlockFile(scope: !143, file: !3, discriminator: 2)
!150 = !DILocation(line: 119, column: 17, scope: !146)
!151 = !DILocation(line: 119, column: 9, scope: !152)
!152 = !DILexicalBlockFile(scope: !134, file: !3, discriminator: 1)
!153 = !DILocation(line: 120, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !143, file: !3, line: 119, column: 59)
!155 = !DILocation(line: 121, column: 5, scope: !154)
!156 = !DILocation(line: 122, column: 5, scope: !134)
!157 = distinct !DISubprogram(name: "phonebook_packet_handler", scope: !3, file: !3, line: 805, type: !158, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !64, !62, !62, !68}
!160 = !{!161, !162, !163, !164}
!161 = !DILocalVariable(name: "type", arg: 1, scope: !157, file: !3, line: 805, type: !64)
!162 = !DILocalVariable(name: "name", arg: 2, scope: !157, file: !3, line: 805, type: !62)
!163 = !DILocalVariable(name: "number", arg: 3, scope: !157, file: !3, line: 805, type: !62)
!164 = !DILocalVariable(name: "date", arg: 4, scope: !157, file: !3, line: 805, type: !68)
!165 = !DILocation(line: 805, column: 34, scope: !157)
!166 = !DILocation(line: 805, column: 50, scope: !157)
!167 = !DILocation(line: 805, column: 66, scope: !157)
!168 = !DILocation(line: 805, column: 86, scope: !157)
!169 = !DILocation(line: 807, column: 1, scope: !157)
!170 = distinct !DISubprogram(name: "pbap_close_status_update_to_user", scope: !3, file: !3, line: 825, type: !171, isLocal: false, isDefinition: true, scopeLine: 826, isOptimized: true, unit: !2, variables: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{null}
!173 = !{}
!174 = !DILocation(line: 827, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 827, column: 9)
!176 = !{!177, !177, i64 0}
!177 = !{!"any pointer", !128, i64 0}
!178 = !DILocation(line: 827, column: 9, scope: !170)
!179 = !DILocation(line: 828, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 828, column: 9)
!181 = distinct !DILexicalBlock(scope: !175, file: !3, line: 827, column: 28)
!182 = !DILocation(line: 828, column: 9, scope: !181)
!183 = !DILocation(line: 828, column: 9, scope: !184)
!184 = !DILexicalBlockFile(scope: !180, file: !3, discriminator: 1)
!185 = !DILocation(line: 829, column: 20, scope: !181)
!186 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !187)
!187 = distinct !DILocation(line: 829, column: 9, scope: !181)
!188 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !187)
!189 = !DILocation(line: 830, column: 27, scope: !181)
!190 = !DILocation(line: 831, column: 27, scope: !181)
!191 = !{!192, !192, i64 0}
!192 = !{!"short", !128, i64 0}
!193 = !DILocation(line: 832, column: 5, scope: !181)
!194 = !DILocation(line: 834, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 833, column: 23)
!196 = distinct !DILexicalBlock(scope: !170, file: !3, line: 833, column: 9)
!197 = !DILocation(line: 836, column: 1, scope: !170)
!198 = distinct !DISubprogram(name: "vcard_parse", scope: !3, file: !3, line: 838, type: !199, isLocal: false, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !203)
!199 = !DISubroutineType(types: !200)
!200 = !{!71, !201, !71}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!203 = !{!204, !205, !206, !207, !208, !250, !251, !252, !253}
!204 = !DILocalVariable(name: "vcard_stream", arg: 1, scope: !198, file: !3, line: 838, type: !201)
!205 = !DILocalVariable(name: "flags", arg: 2, scope: !198, file: !3, line: 838, type: !71)
!206 = !DILocalVariable(name: "ret", scope: !198, file: !3, line: 840, type: !71)
!207 = !DILocalVariable(name: "ver", scope: !198, file: !3, line: 840, type: !71)
!208 = !DILocalVariable(name: "result", scope: !198, file: !3, line: 841, type: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "contact_t", file: !36, line: 87, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 80, size: 640, elements: !211)
!211 = !{!212, !213, !214, !231, !243, !249}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !210, file: !36, line: 81, baseType: !71, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_restricted", scope: !210, file: !36, line: 82, baseType: !71, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !36, line: 83, baseType: !215, size: 320, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "tel_name", file: !36, line: 63, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 50, size: 320, elements: !217)
!217 = !{!218, !219, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "v_type", scope: !216, file: !36, line: 51, baseType: !71, size: 16, flags: DIFlagBitField, extraData: i64 0)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !216, file: !36, line: 52, baseType: !220, size: 8, offset: 16)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !65, line: 44, baseType: !66)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !216, file: !36, line: 53, baseType: !220, size: 8, offset: 24)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "is_changed", scope: !216, file: !36, line: 54, baseType: !220, size: 8, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !216, file: !36, line: 55, baseType: !71, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "lang_type", scope: !216, file: !36, line: 56, baseType: !71, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !216, file: !36, line: 57, baseType: !60, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !216, file: !36, line: 58, baseType: !60, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "addition", scope: !216, file: !36, line: 59, baseType: !60, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "display", scope: !216, file: !36, line: 60, baseType: !60, size: 32, offset: 224)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !216, file: !36, line: 61, baseType: !60, size: 32, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !216, file: !36, line: 62, baseType: !60, size: 32, offset: 288)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !210, file: !36, line: 84, baseType: !232, size: 160, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "tel_number", file: !36, line: 75, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 65, size: 160, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "v_type", scope: !233, file: !36, line: 66, baseType: !71, size: 16, flags: DIFlagBitField, extraData: i64 0)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !233, file: !36, line: 67, baseType: !220, size: 8, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !233, file: !36, line: 68, baseType: !220, size: 8, offset: 24)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "is_default", scope: !233, file: !36, line: 69, baseType: !220, size: 8, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "is_favorite", scope: !233, file: !36, line: 70, baseType: !220, size: 8, offset: 40)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !233, file: !36, line: 71, baseType: !71, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !36, line: 72, baseType: !71, size: 32, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !233, file: !36, line: 73, baseType: !60, size: 32, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !210, file: !36, line: 85, baseType: !244, size: 64, offset: 544)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "call_info", file: !36, line: 79, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 76, size: 64, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "call_type", scope: !245, file: !36, line: 77, baseType: !64, size: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "call_date", scope: !245, file: !36, line: 78, baseType: !60, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nicknames", scope: !210, file: !36, line: 86, baseType: !60, size: 32, offset: 608)
!250 = !DILocalVariable(name: "val_begin", scope: !198, file: !3, line: 842, type: !60)
!251 = !DILocalVariable(name: "new_start", scope: !198, file: !3, line: 842, type: !60)
!252 = !DILocalVariable(name: "val", scope: !198, file: !3, line: 842, type: !60)
!253 = !DILocalVariable(name: "vcard", scope: !198, file: !3, line: 843, type: !60)
!254 = !DILocation(line: 838, column: 29, scope: !198)
!255 = !DILocation(line: 838, column: 48, scope: !198)
!256 = !DILocation(line: 842, column: 5, scope: !198)
!257 = !DILocation(line: 843, column: 11, scope: !198)
!258 = !DILocation(line: 845, column: 14, scope: !259)
!259 = distinct !DILexicalBlock(scope: !198, file: !3, line: 845, column: 9)
!260 = !DILocation(line: 845, column: 9, scope: !198)
!261 = !DILocation(line: 764, column: 17, scope: !262, inlinedAt: !264)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 764, column: 9)
!263 = distinct !DISubprogram(name: "vcard_initial", scope: !3, file: !3, line: 762, type: !171, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !173)
!264 = distinct !DILocation(line: 848, column: 5, scope: !198)
!265 = !DILocation(line: 764, column: 14, scope: !262, inlinedAt: !264)
!266 = !DILocation(line: 764, column: 9, scope: !263, inlinedAt: !264)
!267 = !DILocation(line: 768, column: 38, scope: !268, inlinedAt: !264)
!268 = distinct !DILexicalBlock(scope: !262, file: !3, line: 764, column: 32)
!269 = !DILocation(line: 769, column: 37, scope: !268, inlinedAt: !264)
!270 = !DILocation(line: 770, column: 44, scope: !268, inlinedAt: !264)
!271 = !DILocation(line: 771, column: 41, scope: !268, inlinedAt: !264)
!272 = !DILocation(line: 772, column: 40, scope: !268, inlinedAt: !264)
!273 = !DILocation(line: 773, column: 39, scope: !268, inlinedAt: !264)
!274 = !DILocation(line: 774, column: 41, scope: !268, inlinedAt: !264)
!275 = !DILocation(line: 775, column: 39, scope: !268, inlinedAt: !264)
!276 = !DILocation(line: 776, column: 41, scope: !268, inlinedAt: !264)
!277 = !DILocation(line: 780, column: 41, scope: !268, inlinedAt: !264)
!278 = !DILocation(line: 781, column: 40, scope: !268, inlinedAt: !264)
!279 = !DILocation(line: 784, column: 39, scope: !268, inlinedAt: !264)
!280 = !DILocation(line: 786, column: 40, scope: !268, inlinedAt: !264)
!281 = !DILocation(line: 788, column: 39, scope: !268, inlinedAt: !264)
!282 = !DILocation(line: 791, column: 39, scope: !268, inlinedAt: !264)
!283 = !DILocation(line: 792, column: 39, scope: !268, inlinedAt: !264)
!284 = !DILocation(line: 796, column: 49, scope: !268, inlinedAt: !264)
!285 = !DILocation(line: 798, column: 47, scope: !268, inlinedAt: !264)
!286 = !DILocation(line: 799, column: 56, scope: !268, inlinedAt: !264)
!287 = !DILocation(line: 800, column: 39, scope: !268, inlinedAt: !264)
!288 = !DILocation(line: 801, column: 5, scope: !268, inlinedAt: !264)
!289 = !DILocation(line: 849, column: 13, scope: !198)
!290 = !DILocation(line: 850, column: 5, scope: !291)
!291 = !DILexicalBlockFile(scope: !292, file: !3, discriminator: 1)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 850, column: 5)
!293 = distinct !DILexicalBlock(scope: !198, file: !3, line: 850, column: 5)
!294 = !DILocation(line: 850, column: 5, scope: !295)
!295 = !DILexicalBlockFile(scope: !293, file: !3, discriminator: 1)
!296 = !DILocation(line: 850, column: 5, scope: !297)
!297 = !DILexicalBlockFile(scope: !298, file: !3, discriminator: 2)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 850, column: 5)
!299 = distinct !DILexicalBlock(scope: !292, file: !3, line: 850, column: 5)
!300 = !DILocation(line: 850, column: 5, scope: !301)
!301 = !DILexicalBlockFile(scope: !299, file: !3, discriminator: 2)
!302 = !DILocation(line: 850, column: 5, scope: !303)
!303 = !DILexicalBlockFile(scope: !298, file: !3, discriminator: 3)
!304 = !DILocation(line: 850, column: 5, scope: !305)
!305 = !DILexicalBlockFile(scope: !306, file: !3, discriminator: 4)
!306 = distinct !DILexicalBlock(scope: !299, file: !3, line: 850, column: 5)
!307 = !DILocation(line: 850, column: 5, scope: !308)
!308 = !DILexicalBlockFile(scope: !299, file: !3, discriminator: 4)
!309 = !DILocation(line: 850, column: 5, scope: !310)
!310 = !DILexicalBlockFile(scope: !306, file: !3, discriminator: 5)
!311 = !DILocation(line: 851, column: 17, scope: !198)
!312 = !DILocation(line: 842, column: 11, scope: !198)
!313 = !DILocation(line: 842, column: 35, scope: !198)
!314 = !DILocation(line: 852, column: 17, scope: !198)
!315 = !DILocation(line: 842, column: 23, scope: !198)
!316 = !DILocation(line: 853, column: 14, scope: !317)
!317 = distinct !DILexicalBlock(scope: !198, file: !3, line: 853, column: 9)
!318 = !DILocation(line: 853, column: 38, scope: !319)
!319 = !DILexicalBlockFile(scope: !317, file: !3, discriminator: 1)
!320 = !DILocation(line: 853, column: 35, scope: !319)
!321 = !DILocation(line: 853, column: 27, scope: !317)
!322 = !DILocation(line: 840, column: 14, scope: !198)
!323 = !DILocation(line: 841, column: 15, scope: !198)
!324 = !DILocalVariable(name: "flags", arg: 2, scope: !325, file: !3, line: 703, type: !71)
!325 = distinct !DISubprogram(name: "vcard_get_contact", scope: !3, file: !3, line: 703, type: !326, isLocal: true, isDefinition: true, scopeLine: 705, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !329)
!326 = !DISubroutineType(types: !327)
!327 = !{!71, !71, !71, !60, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!329 = !{!330, !324, !331, !332, !333, !334, !335, !336}
!330 = !DILocalVariable(name: "ver", arg: 1, scope: !325, file: !3, line: 703, type: !71)
!331 = !DILocalVariable(name: "vcard", arg: 3, scope: !325, file: !3, line: 704, type: !60)
!332 = !DILocalVariable(name: "contact", arg: 4, scope: !325, file: !3, line: 704, type: !328)
!333 = !DILocalVariable(name: "type", scope: !325, file: !3, line: 706, type: !71)
!334 = !DILocalVariable(name: "cursor", scope: !325, file: !3, line: 707, type: !60)
!335 = !DILocalVariable(name: "new_start", scope: !325, file: !3, line: 707, type: !60)
!336 = !DILocalVariable(name: "val", scope: !325, file: !3, line: 707, type: !60)
!337 = !DILocation(line: 703, column: 50, scope: !325, inlinedAt: !338)
!338 = distinct !DILocation(line: 861, column: 11, scope: !198)
!339 = !DILocation(line: 707, column: 5, scope: !325, inlinedAt: !338)
!340 = !DILocation(line: 707, column: 11, scope: !325, inlinedAt: !338)
!341 = !DILocation(line: 710, column: 5, scope: !342, inlinedAt: !338)
!342 = !DILexicalBlockFile(scope: !325, file: !3, discriminator: 1)
!343 = !DILocalVariable(name: "src", arg: 1, scope: !344, file: !3, line: 160, type: !68)
!344 = distinct !DISubprogram(name: "vcard_check_version", scope: !3, file: !3, line: 160, type: !345, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!71, !68}
!347 = !{!343, !348, !349}
!348 = !DILocalVariable(name: "start", scope: !344, file: !3, line: 162, type: !220)
!349 = !DILocalVariable(name: "ver3", scope: !344, file: !3, line: 163, type: !68)
!350 = !DILocation(line: 160, column: 51, scope: !344, inlinedAt: !351)
!351 = distinct !DILocation(line: 856, column: 15, scope: !352)
!352 = distinct !DILexicalBlock(scope: !317, file: !3, line: 855, column: 12)
!353 = !DILocation(line: 162, column: 10, scope: !344, inlinedAt: !351)
!354 = !DILocation(line: 163, column: 17, scope: !344, inlinedAt: !351)
!355 = !DILocation(line: 165, column: 12, scope: !356, inlinedAt: !351)
!356 = !DILexicalBlockFile(scope: !344, file: !3, discriminator: 1)
!357 = !DILocation(line: 165, column: 5, scope: !356, inlinedAt: !351)
!358 = !DILocation(line: 166, column: 17, scope: !359, inlinedAt: !351)
!359 = distinct !DILexicalBlock(scope: !344, file: !3, line: 165, column: 18)
!360 = !DILocation(line: 166, column: 9, scope: !359, inlinedAt: !351)
!361 = !DILocation(line: 171, column: 16, scope: !362, inlinedAt: !351)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 166, column: 23)
!363 = !DILocation(line: 182, column: 14, scope: !364, inlinedAt: !351)
!364 = distinct !DILexicalBlock(scope: !344, file: !3, line: 182, column: 9)
!365 = !DILocation(line: 182, column: 11, scope: !364, inlinedAt: !351)
!366 = !DILocation(line: 183, column: 9, scope: !367, inlinedAt: !351)
!367 = distinct !DILexicalBlock(scope: !364, file: !3, line: 182, column: 33)
!368 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !369)
!369 = distinct !DILocation(line: 857, column: 9, scope: !352)
!370 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !369)
!371 = !DILocation(line: 532, column: 46, scope: !372, inlinedAt: !383)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 531, column: 62)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 531, column: 5)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 531, column: 5)
!375 = distinct !DISubprogram(name: "vcard_check_content_type", scope: !3, file: !3, line: 526, type: !376, isLocal: true, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !379)
!376 = !DISubroutineType(types: !377)
!377 = !{!71, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!379 = !{!380, !381, !382}
!380 = !DILocalVariable(name: "vcard", arg: 1, scope: !375, file: !3, line: 526, type: !378)
!381 = !DILocalVariable(name: "i", scope: !375, file: !3, line: 528, type: !71)
!382 = !DILocalVariable(name: "new_start", scope: !375, file: !3, line: 529, type: !60)
!383 = distinct !DILocation(line: 711, column: 16, scope: !384, inlinedAt: !338)
!384 = distinct !DILexicalBlock(scope: !325, file: !3, line: 710, column: 20)
!385 = !DILocation(line: 532, column: 21, scope: !372, inlinedAt: !383)
!386 = !DILocation(line: 529, column: 11, scope: !375, inlinedAt: !383)
!387 = !DILocation(line: 533, column: 13, scope: !388, inlinedAt: !383)
!388 = distinct !DILexicalBlock(scope: !372, file: !3, line: 533, column: 13)
!389 = !DILocation(line: 533, column: 23, scope: !388, inlinedAt: !383)
!390 = !DILocation(line: 533, column: 34, scope: !391, inlinedAt: !383)
!391 = !DILexicalBlockFile(scope: !388, file: !3, discriminator: 1)
!392 = !DILocation(line: 533, column: 45, scope: !391, inlinedAt: !383)
!393 = !DILocation(line: 531, column: 58, scope: !394, inlinedAt: !383)
!394 = !DILexicalBlockFile(scope: !373, file: !3, discriminator: 2)
!395 = !DILocation(line: 528, column: 9, scope: !375, inlinedAt: !383)
!396 = !DILocation(line: 531, column: 38, scope: !397, inlinedAt: !383)
!397 = !DILexicalBlockFile(scope: !373, file: !3, discriminator: 1)
!398 = !DILocation(line: 531, column: 5, scope: !399, inlinedAt: !383)
!399 = !DILexicalBlockFile(scope: !374, file: !3, discriminator: 1)
!400 = distinct !{!400, !401, !402}
!401 = !DILocation(line: 531, column: 5, scope: !374)
!402 = !DILocation(line: 536, column: 5, scope: !374)
!403 = !DILocation(line: 538, column: 25, scope: !404, inlinedAt: !383)
!404 = distinct !DILexicalBlock(scope: !375, file: !3, line: 538, column: 9)
!405 = !DILocation(line: 538, column: 9, scope: !375, inlinedAt: !383)
!406 = !DILocation(line: 515, column: 50, scope: !407, inlinedAt: !412)
!407 = distinct !DISubprogram(name: "vcard_pass_unsupported", scope: !3, file: !3, line: 515, type: !408, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!60, !60}
!410 = !{!411}
!411 = !DILocalVariable(name: "vcard", arg: 1, scope: !407, file: !3, line: 515, type: !60)
!412 = distinct !DILocation(line: 713, column: 25, scope: !413, inlinedAt: !338)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 712, column: 39)
!414 = distinct !DILexicalBlock(scope: !384, file: !3, line: 712, column: 13)
!415 = !DILocation(line: 517, column: 12, scope: !416, inlinedAt: !412)
!416 = !DILexicalBlockFile(scope: !407, file: !3, discriminator: 1)
!417 = !DILocation(line: 517, column: 5, scope: !416, inlinedAt: !412)
!418 = !DILocation(line: 518, column: 18, scope: !419, inlinedAt: !412)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 518, column: 13)
!420 = distinct !DILexicalBlock(scope: !407, file: !3, line: 517, column: 20)
!421 = !DILocation(line: 518, column: 13, scope: !420, inlinedAt: !412)
!422 = distinct !{!422, !423, !424}
!423 = !DILocation(line: 710, column: 5, scope: !325)
!424 = !DILocation(line: 758, column: 5, scope: !325)
!425 = !DILocation(line: 707, column: 32, scope: !325, inlinedAt: !338)
!426 = !DILocation(line: 722, column: 21, scope: !384, inlinedAt: !338)
!427 = !DILocation(line: 707, column: 20, scope: !325, inlinedAt: !338)
!428 = !DILocation(line: 723, column: 18, scope: !429, inlinedAt: !338)
!429 = distinct !DILexicalBlock(scope: !384, file: !3, line: 723, column: 13)
!430 = !DILocation(line: 723, column: 13, scope: !384, inlinedAt: !338)
!431 = !DILocation(line: 727, column: 21, scope: !432, inlinedAt: !338)
!432 = distinct !DILexicalBlock(scope: !384, file: !3, line: 727, column: 13)
!433 = !DILocation(line: 727, column: 18, scope: !432, inlinedAt: !338)
!434 = !DILocation(line: 727, column: 13, scope: !384, inlinedAt: !338)
!435 = !DILocation(line: 732, column: 9, scope: !384, inlinedAt: !338)
!436 = !DILocalVariable(name: "val", arg: 1, scope: !437, file: !3, line: 234, type: !60)
!437 = distinct !DISubprogram(name: "get_content_value", scope: !3, file: !3, line: 234, type: !408, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !438)
!438 = !{!436, !439}
!439 = !DILocalVariable(name: "temp", scope: !437, file: !3, line: 236, type: !60)
!440 = !DILocation(line: 234, column: 45, scope: !437, inlinedAt: !441)
!441 = distinct !DILocation(line: 257, column: 12, scope: !442, inlinedAt: !450)
!442 = distinct !DISubprogram(name: "vcard_get_display_name", scope: !3, file: !3, line: 253, type: !443, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !446)
!443 = !DISubroutineType(types: !444)
!444 = !{!71, !445, !60}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!446 = !{!447, !448, !449}
!447 = !DILocalVariable(name: "name", arg: 1, scope: !442, file: !3, line: 253, type: !445)
!448 = !DILocalVariable(name: "val", arg: 2, scope: !442, file: !3, line: 253, type: !60)
!449 = !DILocalVariable(name: "temp", scope: !442, file: !3, line: 255, type: !60)
!450 = distinct !DILocation(line: 734, column: 13, scope: !451, inlinedAt: !338)
!451 = distinct !DILexicalBlock(scope: !384, file: !3, line: 732, column: 23)
!452 = !DILocation(line: 238, column: 12, scope: !437, inlinedAt: !441)
!453 = !DILocation(line: 236, column: 11, scope: !437, inlinedAt: !441)
!454 = !DILocation(line: 239, column: 9, scope: !455, inlinedAt: !441)
!455 = distinct !DILexicalBlock(scope: !437, file: !3, line: 239, column: 9)
!456 = !DILocation(line: 240, column: 13, scope: !457, inlinedAt: !441)
!457 = distinct !DILexicalBlock(scope: !455, file: !3, line: 239, column: 15)
!458 = !DILocation(line: 239, column: 9, scope: !437, inlinedAt: !441)
!459 = !DILocation(line: 244, column: 17, scope: !460, inlinedAt: !441)
!460 = distinct !DILexicalBlock(scope: !437, file: !3, line: 244, column: 9)
!461 = !DILocation(line: 244, column: 25, scope: !460, inlinedAt: !441)
!462 = !DILocation(line: 245, column: 9, scope: !463, inlinedAt: !441)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 245, column: 9)
!464 = distinct !DILexicalBlock(scope: !460, file: !3, line: 244, column: 64)
!465 = !DILocation(line: 245, column: 9, scope: !464, inlinedAt: !441)
!466 = !DILocation(line: 245, column: 9, scope: !467, inlinedAt: !441)
!467 = !DILexicalBlockFile(scope: !463, file: !3, discriminator: 1)
!468 = !DILocation(line: 255, column: 11, scope: !442, inlinedAt: !450)
!469 = !DILocation(line: 258, column: 21, scope: !442, inlinedAt: !450)
!470 = !DILocation(line: 258, column: 21, scope: !471, inlinedAt: !450)
!471 = !DILexicalBlockFile(scope: !442, file: !3, discriminator: 1)
!472 = !DILocation(line: 258, column: 21, scope: !473, inlinedAt: !450)
!473 = !DILexicalBlockFile(scope: !442, file: !3, discriminator: 3)
!474 = !DILocation(line: 735, column: 24, scope: !451, inlinedAt: !338)
!475 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !476)
!476 = distinct !DILocation(line: 735, column: 13, scope: !451, inlinedAt: !338)
!477 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !476)
!478 = !DILocation(line: 736, column: 13, scope: !451, inlinedAt: !338)
!479 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !480)
!480 = distinct !DILocation(line: 739, column: 13, scope: !451, inlinedAt: !338)
!481 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !480)
!482 = !DILocation(line: 740, column: 13, scope: !451, inlinedAt: !338)
!483 = !DILocation(line: 234, column: 45, scope: !437, inlinedAt: !484)
!484 = distinct !DILocation(line: 626, column: 12, scope: !485, inlinedAt: !497)
!485 = distinct !DISubprogram(name: "vcard_get_number", scope: !3, file: !3, line: 620, type: !486, isLocal: true, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !489)
!486 = !DISubroutineType(types: !487)
!487 = !{!71, !488, !60}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!489 = !{!490, !491, !492, !493, !494, !495, !496}
!490 = !DILocalVariable(name: "numbers", arg: 1, scope: !485, file: !3, line: 620, type: !488)
!491 = !DILocalVariable(name: "val", arg: 2, scope: !485, file: !3, line: 620, type: !60)
!492 = !DILocalVariable(name: "temp", scope: !485, file: !3, line: 622, type: !60)
!493 = !DILocalVariable(name: "temp_num_pt", scope: !485, file: !3, line: 623, type: !60)
!494 = !DILocalVariable(name: "temp_num_pt2", scope: !485, file: !3, line: 624, type: !60)
!495 = !DILocalVariable(name: "len1", scope: !485, file: !3, line: 625, type: !71)
!496 = !DILocalVariable(name: "len2", scope: !485, file: !3, line: 625, type: !71)
!497 = distinct !DILocation(line: 742, column: 13, scope: !451, inlinedAt: !338)
!498 = !DILocation(line: 238, column: 12, scope: !437, inlinedAt: !484)
!499 = !DILocation(line: 236, column: 11, scope: !437, inlinedAt: !484)
!500 = !DILocation(line: 239, column: 9, scope: !455, inlinedAt: !484)
!501 = !DILocation(line: 240, column: 13, scope: !457, inlinedAt: !484)
!502 = !DILocation(line: 239, column: 9, scope: !437, inlinedAt: !484)
!503 = !DILocation(line: 244, column: 17, scope: !460, inlinedAt: !484)
!504 = !DILocation(line: 244, column: 25, scope: !460, inlinedAt: !484)
!505 = !DILocation(line: 245, column: 9, scope: !463, inlinedAt: !484)
!506 = !DILocation(line: 245, column: 9, scope: !464, inlinedAt: !484)
!507 = !DILocation(line: 245, column: 9, scope: !467, inlinedAt: !484)
!508 = !DILocation(line: 622, column: 11, scope: !485, inlinedAt: !497)
!509 = !DILocation(line: 627, column: 5, scope: !510, inlinedAt: !497)
!510 = !DILexicalBlockFile(scope: !511, file: !3, discriminator: 1)
!511 = distinct !DILexicalBlock(scope: !512, file: !3, line: 627, column: 5)
!512 = distinct !DILexicalBlock(scope: !485, file: !3, line: 627, column: 5)
!513 = !DILocation(line: 627, column: 5, scope: !514, inlinedAt: !497)
!514 = !DILexicalBlockFile(scope: !512, file: !3, discriminator: 1)
!515 = !DILocation(line: 627, column: 5, scope: !516, inlinedAt: !497)
!516 = !DILexicalBlockFile(scope: !517, file: !3, discriminator: 2)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 627, column: 5)
!518 = distinct !DILexicalBlock(scope: !511, file: !3, line: 627, column: 5)
!519 = !DILocation(line: 627, column: 5, scope: !520, inlinedAt: !497)
!520 = !DILexicalBlockFile(scope: !518, file: !3, discriminator: 2)
!521 = !DILocation(line: 627, column: 5, scope: !522, inlinedAt: !497)
!522 = !DILexicalBlockFile(scope: !517, file: !3, discriminator: 3)
!523 = !DILocation(line: 627, column: 5, scope: !524, inlinedAt: !497)
!524 = !DILexicalBlockFile(scope: !525, file: !3, discriminator: 4)
!525 = distinct !DILexicalBlock(scope: !518, file: !3, line: 627, column: 5)
!526 = !DILocation(line: 627, column: 5, scope: !527, inlinedAt: !497)
!527 = !DILexicalBlockFile(scope: !518, file: !3, discriminator: 4)
!528 = !DILocation(line: 627, column: 5, scope: !529, inlinedAt: !497)
!529 = !DILexicalBlockFile(scope: !525, file: !3, discriminator: 5)
!530 = !DILocation(line: 631, column: 25, scope: !531, inlinedAt: !497)
!531 = distinct !DILexicalBlock(scope: !485, file: !3, line: 631, column: 9)
!532 = !DILocation(line: 632, column: 27, scope: !533, inlinedAt: !497)
!533 = !DILexicalBlockFile(scope: !534, file: !3, discriminator: 1)
!534 = distinct !DILexicalBlock(scope: !531, file: !3, line: 631, column: 34)
!535 = !DILocation(line: 631, column: 9, scope: !485, inlinedAt: !497)
!536 = !DILocation(line: 623, column: 11, scope: !485, inlinedAt: !497)
!537 = !DILocation(line: 635, column: 16, scope: !538, inlinedAt: !497)
!538 = distinct !DILexicalBlock(scope: !531, file: !3, line: 633, column: 12)
!539 = !DILocation(line: 625, column: 9, scope: !485, inlinedAt: !497)
!540 = !DILocation(line: 636, column: 16, scope: !538, inlinedAt: !497)
!541 = !DILocation(line: 625, column: 15, scope: !485, inlinedAt: !497)
!542 = !DILocation(line: 637, column: 18, scope: !543, inlinedAt: !497)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 637, column: 13)
!544 = !DILocation(line: 637, column: 13, scope: !538, inlinedAt: !497)
!545 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !546)
!546 = distinct !DILocation(line: 639, column: 13, scope: !547, inlinedAt: !497)
!547 = distinct !DILexicalBlock(scope: !543, file: !3, line: 637, column: 25)
!548 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !546)
!549 = !DILocation(line: 640, column: 9, scope: !547, inlinedAt: !497)
!550 = !DILocation(line: 642, column: 46, scope: !551, inlinedAt: !497)
!551 = distinct !DILexicalBlock(scope: !543, file: !3, line: 640, column: 16)
!552 = !DILocation(line: 642, column: 53, scope: !551, inlinedAt: !497)
!553 = !DILocation(line: 642, column: 28, scope: !551, inlinedAt: !497)
!554 = !DILocation(line: 624, column: 11, scope: !485, inlinedAt: !497)
!555 = !DILocation(line: 644, column: 13, scope: !551, inlinedAt: !497)
!556 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !557)
!557 = distinct !DILocation(line: 645, column: 13, scope: !551, inlinedAt: !497)
!558 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !557)
!559 = !DILocation(line: 646, column: 13, scope: !551, inlinedAt: !497)
!560 = !DILocation(line: 646, column: 32, scope: !551, inlinedAt: !497)
!561 = !DILocation(line: 647, column: 40, scope: !551, inlinedAt: !497)
!562 = !DILocation(line: 647, column: 13, scope: !551, inlinedAt: !497)
!563 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !564)
!564 = distinct !DILocation(line: 648, column: 13, scope: !551, inlinedAt: !497)
!565 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !564)
!566 = !DILocation(line: 649, column: 38, scope: !551, inlinedAt: !497)
!567 = !DILocation(line: 649, column: 13, scope: !551, inlinedAt: !497)
!568 = !DILocation(line: 649, column: 43, scope: !551, inlinedAt: !497)
!569 = !DILocation(line: 654, column: 13, scope: !570, inlinedAt: !497)
!570 = distinct !DILexicalBlock(scope: !485, file: !3, line: 654, column: 9)
!571 = !DILocation(line: 654, column: 9, scope: !485, inlinedAt: !497)
!572 = !DILocation(line: 655, column: 16, scope: !573, inlinedAt: !497)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 654, column: 22)
!574 = !DILocation(line: 655, column: 21, scope: !573, inlinedAt: !497)
!575 = !DILocalVariable(name: "val", arg: 2, scope: !576, file: !3, line: 545, type: !60)
!576 = distinct !DISubprogram(name: "vcard_get_number_type", scope: !3, file: !3, line: 545, type: !577, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!220, !488, !60}
!579 = !{!580, !575, !581, !582, !583, !584, !585}
!580 = !DILocalVariable(name: "number", arg: 1, scope: !576, file: !3, line: 545, type: !488)
!581 = !DILocalVariable(name: "temp", scope: !576, file: !3, line: 547, type: !60)
!582 = !DILocalVariable(name: "result", scope: !576, file: !3, line: 547, type: !60)
!583 = !DILocalVariable(name: "type", scope: !576, file: !3, line: 548, type: !71)
!584 = !DILocalVariable(name: "pref", scope: !576, file: !3, line: 549, type: !220)
!585 = !DILocalVariable(name: "__x", scope: !586, file: !3, line: 553, type: !71)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 553, column: 17)
!587 = distinct !DILexicalBlock(scope: !576, file: !3, line: 552, column: 19)
!588 = !DILocation(line: 545, column: 68, scope: !576, inlinedAt: !589)
!589 = distinct !DILocation(line: 656, column: 31, scope: !573, inlinedAt: !497)
!590 = !DILocation(line: 548, column: 9, scope: !576, inlinedAt: !589)
!591 = !DILocation(line: 549, column: 10, scope: !576, inlinedAt: !589)
!592 = !DILocation(line: 547, column: 11, scope: !576, inlinedAt: !589)
!593 = !DILocation(line: 552, column: 12, scope: !594, inlinedAt: !589)
!594 = !DILexicalBlockFile(scope: !576, file: !3, discriminator: 1)
!595 = !DILocation(line: 552, column: 5, scope: !594, inlinedAt: !589)
!596 = !DILocation(line: 553, column: 17, scope: !586, inlinedAt: !589)
!597 = !DILocation(line: 553, column: 17, scope: !598, inlinedAt: !589)
!598 = !DILexicalBlockFile(scope: !586, file: !3, discriminator: 1)
!599 = !DILocation(line: 553, column: 15, scope: !600, inlinedAt: !589)
!600 = !DILexicalBlockFile(scope: !587, file: !3, discriminator: 3)
!601 = !DILocation(line: 554, column: 13, scope: !587, inlinedAt: !589)
!602 = distinct !{!602, !603, !604}
!603 = !DILocation(line: 552, column: 5, scope: !576)
!604 = !DILocation(line: 555, column: 5, scope: !576)
!605 = !DILocation(line: 743, column: 24, scope: !451, inlinedAt: !338)
!606 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !607)
!607 = distinct !DILocation(line: 743, column: 13, scope: !451, inlinedAt: !338)
!608 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !607)
!609 = !DILocation(line: 744, column: 13, scope: !451, inlinedAt: !338)
!610 = !DILocation(line: 234, column: 45, scope: !437, inlinedAt: !611)
!611 = distinct !DILocation(line: 692, column: 12, scope: !612, inlinedAt: !620)
!612 = distinct !DISubprogram(name: "vcard_get_call_info", scope: !3, file: !3, line: 689, type: !613, isLocal: true, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !616)
!613 = !DISubroutineType(types: !614)
!614 = !{!71, !615, !60}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 32)
!616 = !{!617, !618, !619}
!617 = !DILocalVariable(name: "call", arg: 1, scope: !612, file: !3, line: 689, type: !615)
!618 = !DILocalVariable(name: "val", arg: 2, scope: !612, file: !3, line: 689, type: !60)
!619 = !DILocalVariable(name: "temp", scope: !612, file: !3, line: 691, type: !60)
!620 = distinct !DILocation(line: 746, column: 13, scope: !451, inlinedAt: !338)
!621 = !DILocation(line: 238, column: 12, scope: !437, inlinedAt: !611)
!622 = !DILocation(line: 236, column: 11, scope: !437, inlinedAt: !611)
!623 = !DILocation(line: 239, column: 9, scope: !455, inlinedAt: !611)
!624 = !DILocation(line: 240, column: 13, scope: !457, inlinedAt: !611)
!625 = !DILocation(line: 239, column: 9, scope: !437, inlinedAt: !611)
!626 = !DILocation(line: 244, column: 17, scope: !460, inlinedAt: !611)
!627 = !DILocation(line: 244, column: 25, scope: !460, inlinedAt: !611)
!628 = !DILocation(line: 245, column: 9, scope: !463, inlinedAt: !611)
!629 = !DILocation(line: 245, column: 9, scope: !464, inlinedAt: !611)
!630 = !DILocation(line: 245, column: 9, scope: !467, inlinedAt: !611)
!631 = !DILocation(line: 691, column: 11, scope: !612, inlinedAt: !620)
!632 = !DILocation(line: 693, column: 5, scope: !633, inlinedAt: !620)
!633 = !DILexicalBlockFile(scope: !634, file: !3, discriminator: 1)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 693, column: 5)
!635 = distinct !DILexicalBlock(scope: !612, file: !3, line: 693, column: 5)
!636 = !DILocation(line: 693, column: 5, scope: !637, inlinedAt: !620)
!637 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 1)
!638 = !DILocation(line: 693, column: 5, scope: !639, inlinedAt: !620)
!639 = !DILexicalBlockFile(scope: !640, file: !3, discriminator: 2)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 693, column: 5)
!641 = distinct !DILexicalBlock(scope: !634, file: !3, line: 693, column: 5)
!642 = !DILocation(line: 693, column: 5, scope: !643, inlinedAt: !620)
!643 = !DILexicalBlockFile(scope: !641, file: !3, discriminator: 2)
!644 = !DILocation(line: 693, column: 5, scope: !645, inlinedAt: !620)
!645 = !DILexicalBlockFile(scope: !640, file: !3, discriminator: 3)
!646 = !DILocation(line: 693, column: 5, scope: !647, inlinedAt: !620)
!647 = !DILexicalBlockFile(scope: !648, file: !3, discriminator: 4)
!648 = distinct !DILexicalBlock(scope: !641, file: !3, line: 693, column: 5)
!649 = !DILocation(line: 693, column: 5, scope: !650, inlinedAt: !620)
!650 = !DILexicalBlockFile(scope: !641, file: !3, discriminator: 4)
!651 = !DILocation(line: 693, column: 5, scope: !652, inlinedAt: !620)
!652 = !DILexicalBlockFile(scope: !648, file: !3, discriminator: 5)
!653 = !DILocation(line: 695, column: 23, scope: !654, inlinedAt: !620)
!654 = !DILexicalBlockFile(scope: !612, file: !3, discriminator: 1)
!655 = !DILocation(line: 696, column: 13, scope: !656, inlinedAt: !620)
!656 = distinct !DILexicalBlock(scope: !612, file: !3, line: 696, column: 9)
!657 = !DILocation(line: 696, column: 9, scope: !612, inlinedAt: !620)
!658 = !DILocation(line: 697, column: 16, scope: !659, inlinedAt: !620)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 696, column: 22)
!660 = !DILocation(line: 697, column: 21, scope: !659, inlinedAt: !620)
!661 = !DILocalVariable(name: "val", arg: 2, scope: !662, file: !3, line: 660, type: !60)
!662 = distinct !DISubprogram(name: "vcard_get_call_type", scope: !3, file: !3, line: 660, type: !663, isLocal: true, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !615, !60}
!665 = !{!666, !661, !667, !668, !669, !670, !671}
!666 = !DILocalVariable(name: "call", arg: 1, scope: !662, file: !3, line: 660, type: !615)
!667 = !DILocalVariable(name: "temp", scope: !662, file: !3, line: 662, type: !60)
!668 = !DILocalVariable(name: "result", scope: !662, file: !3, line: 662, type: !60)
!669 = !DILocalVariable(name: "type", scope: !662, file: !3, line: 663, type: !71)
!670 = !DILocalVariable(name: "pref", scope: !662, file: !3, line: 664, type: !220)
!671 = !DILocalVariable(name: "__x", scope: !672, file: !3, line: 668, type: !71)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 668, column: 17)
!673 = distinct !DILexicalBlock(scope: !662, file: !3, line: 667, column: 19)
!674 = !DILocation(line: 660, column: 63, scope: !662, inlinedAt: !675)
!675 = distinct !DILocation(line: 698, column: 9, scope: !659, inlinedAt: !620)
!676 = !DILocation(line: 663, column: 9, scope: !662, inlinedAt: !675)
!677 = !DILocation(line: 664, column: 10, scope: !662, inlinedAt: !675)
!678 = !DILocation(line: 662, column: 11, scope: !662, inlinedAt: !675)
!679 = !DILocation(line: 667, column: 12, scope: !680, inlinedAt: !675)
!680 = !DILexicalBlockFile(scope: !662, file: !3, discriminator: 1)
!681 = !DILocation(line: 667, column: 5, scope: !680, inlinedAt: !675)
!682 = !DILocation(line: 668, column: 17, scope: !672, inlinedAt: !675)
!683 = !DILocation(line: 668, column: 17, scope: !684, inlinedAt: !675)
!684 = !DILexicalBlockFile(scope: !672, file: !3, discriminator: 1)
!685 = !DILocation(line: 668, column: 15, scope: !686, inlinedAt: !675)
!686 = !DILexicalBlockFile(scope: !673, file: !3, discriminator: 3)
!687 = !DILocation(line: 669, column: 13, scope: !673, inlinedAt: !675)
!688 = distinct !{!688, !689, !690}
!689 = !DILocation(line: 667, column: 5, scope: !662)
!690 = !DILocation(line: 670, column: 5, scope: !662)
!691 = !DILocation(line: 747, column: 24, scope: !451, inlinedAt: !338)
!692 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !693)
!693 = distinct !DILocation(line: 747, column: 13, scope: !451, inlinedAt: !338)
!694 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !693)
!695 = !DILocation(line: 748, column: 13, scope: !451, inlinedAt: !338)
!696 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !697)
!697 = distinct !DILocation(line: 750, column: 13, scope: !451, inlinedAt: !338)
!698 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !697)
!699 = !DILocation(line: 751, column: 13, scope: !451, inlinedAt: !338)
!700 = !DILocation(line: 753, column: 13, scope: !701, inlinedAt: !338)
!701 = distinct !DILexicalBlock(scope: !451, file: !3, line: 753, column: 13)
!702 = !DILocation(line: 753, column: 13, scope: !451, inlinedAt: !338)
!703 = !DILocation(line: 753, column: 13, scope: !704, inlinedAt: !338)
!704 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!705 = !DILocation(line: 754, column: 24, scope: !451, inlinedAt: !338)
!706 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !707)
!707 = distinct !DILocation(line: 754, column: 13, scope: !451, inlinedAt: !338)
!708 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !707)
!709 = !DILocation(line: 755, column: 13, scope: !451, inlinedAt: !338)
!710 = !DILocation(line: 759, column: 5, scope: !711, inlinedAt: !338)
!711 = !DILexicalBlockFile(scope: !712, file: !3, discriminator: 1)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 759, column: 5)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 759, column: 5)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 759, column: 5)
!715 = distinct !DILexicalBlock(scope: !325, file: !3, line: 759, column: 5)
!716 = !DILocation(line: 759, column: 5, scope: !717, inlinedAt: !338)
!717 = !DILexicalBlockFile(scope: !713, file: !3, discriminator: 1)
!718 = !DILocation(line: 759, column: 5, scope: !719, inlinedAt: !338)
!719 = !DILexicalBlockFile(scope: !712, file: !3, discriminator: 2)
!720 = !DILocation(line: 759, column: 5, scope: !721, inlinedAt: !338)
!721 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 3)
!722 = distinct !DILexicalBlock(scope: !713, file: !3, line: 759, column: 5)
!723 = !DILocation(line: 759, column: 5, scope: !724, inlinedAt: !338)
!724 = !DILexicalBlockFile(scope: !713, file: !3, discriminator: 3)
!725 = !DILocation(line: 759, column: 5, scope: !726, inlinedAt: !338)
!726 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 4)
!727 = !DILocation(line: 760, column: 1, scope: !325, inlinedAt: !338)
!728 = !DILocation(line: 840, column: 9, scope: !198)
!729 = !DILocation(line: 863, column: 29, scope: !198)
!730 = !DILocation(line: 865, column: 9, scope: !731)
!731 = distinct !DILexicalBlock(scope: !198, file: !3, line: 865, column: 9)
!732 = !DILocation(line: 865, column: 9, scope: !198)
!733 = !DILocation(line: 866, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 866, column: 9)
!735 = distinct !DILexicalBlock(scope: !731, file: !3, line: 865, column: 30)
!736 = !DILocation(line: 866, column: 9, scope: !735)
!737 = !DILocation(line: 866, column: 9, scope: !738)
!738 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 1)
!739 = !DILocation(line: 868, column: 13, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 867, column: 27)
!741 = distinct !DILexicalBlock(scope: !735, file: !3, line: 867, column: 13)
!742 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !743)
!743 = distinct !DILocation(line: 870, column: 9, scope: !735)
!744 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !743)
!745 = !DILocation(line: 872, column: 5, scope: !735)
!746 = !DILocation(line: 880, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 879, column: 31)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 879, column: 17)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 878, column: 16)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 873, column: 13)
!751 = distinct !DILexicalBlock(scope: !731, file: !3, line: 872, column: 12)
!752 = !DILocation(line: 900, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !198, file: !3, line: 900, column: 9)
!754 = !DILocation(line: 900, column: 9, scope: !198)
!755 = !DILocation(line: 901, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 901, column: 9)
!757 = distinct !DILexicalBlock(scope: !753, file: !3, line: 900, column: 32)
!758 = !DILocation(line: 901, column: 9, scope: !757)
!759 = !DILocation(line: 901, column: 9, scope: !760)
!760 = !DILexicalBlockFile(scope: !756, file: !3, discriminator: 1)
!761 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !762)
!762 = distinct !DILocation(line: 902, column: 9, scope: !757)
!763 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !762)
!764 = !DILocation(line: 903, column: 5, scope: !757)
!765 = !DILocation(line: 904, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !198, file: !3, line: 904, column: 9)
!767 = !DILocation(line: 904, column: 9, scope: !198)
!768 = !DILocation(line: 905, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 905, column: 9)
!770 = distinct !DILexicalBlock(scope: !766, file: !3, line: 904, column: 32)
!771 = !DILocation(line: 905, column: 9, scope: !770)
!772 = !DILocation(line: 905, column: 9, scope: !773)
!773 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 1)
!774 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !775)
!775 = distinct !DILocation(line: 906, column: 9, scope: !770)
!776 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !775)
!777 = !DILocation(line: 907, column: 5, scope: !770)
!778 = !DILocation(line: 921, column: 1, scope: !198)
!779 = distinct !DISubprogram(name: "vcard_check_word", scope: !3, file: !3, line: 480, type: !780, isLocal: true, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!60, !60, !68}
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(name: "src", arg: 1, scope: !779, file: !3, line: 480, type: !60)
!784 = !DILocalVariable(name: "word", arg: 2, scope: !779, file: !3, line: 480, type: !68)
!785 = !DILocalVariable(name: "start", scope: !779, file: !3, line: 482, type: !220)
!786 = !DILocation(line: 480, column: 37, scope: !779)
!787 = !DILocation(line: 480, column: 54, scope: !779)
!788 = !DILocation(line: 482, column: 10, scope: !779)
!789 = !DILocation(line: 484, column: 5, scope: !790)
!790 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 1)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 484, column: 5)
!792 = distinct !DILexicalBlock(scope: !779, file: !3, line: 484, column: 5)
!793 = !DILocation(line: 484, column: 5, scope: !794)
!794 = !DILexicalBlockFile(scope: !792, file: !3, discriminator: 1)
!795 = !DILocation(line: 126, column: 51, scope: !796, inlinedAt: !799)
!796 = distinct !DISubprogram(name: "vcard_remove_empty_line", scope: !3, file: !3, line: 126, type: !408, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !797)
!797 = !{!798}
!798 = !DILocalVariable(name: "src", arg: 1, scope: !796, file: !3, line: 126, type: !60)
!799 = distinct !DILocation(line: 486, column: 11, scope: !779)
!800 = !DILocation(line: 484, column: 5, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !3, discriminator: 2)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 484, column: 5)
!803 = distinct !DILexicalBlock(scope: !791, file: !3, line: 484, column: 5)
!804 = !DILocation(line: 484, column: 5, scope: !805)
!805 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 2)
!806 = !DILocation(line: 484, column: 5, scope: !807)
!807 = !DILexicalBlockFile(scope: !802, file: !3, discriminator: 3)
!808 = !DILocation(line: 484, column: 5, scope: !809)
!809 = !DILexicalBlockFile(scope: !810, file: !3, discriminator: 4)
!810 = distinct !DILexicalBlock(scope: !803, file: !3, line: 484, column: 5)
!811 = !DILocation(line: 484, column: 5, scope: !812)
!812 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 4)
!813 = !DILocation(line: 484, column: 5, scope: !814)
!814 = !DILexicalBlockFile(scope: !810, file: !3, discriminator: 5)
!815 = !DILocation(line: 128, column: 12, scope: !816, inlinedAt: !799)
!816 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 1)
!817 = !DILocation(line: 128, column: 5, scope: !816, inlinedAt: !799)
!818 = !DILocation(line: 488, column: 17, scope: !819)
!819 = distinct !DILexicalBlock(scope: !779, file: !3, line: 487, column: 18)
!820 = !DILocation(line: 132, column: 12, scope: !821, inlinedAt: !799)
!821 = distinct !DILexicalBlock(scope: !796, file: !3, line: 128, column: 18)
!822 = !DILocation(line: 128, column: 5, scope: !823, inlinedAt: !799)
!823 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 2)
!824 = distinct !{!824, !825, !826}
!825 = !DILocation(line: 128, column: 5, scope: !796)
!826 = !DILocation(line: 133, column: 5, scope: !796)
!827 = !DILocation(line: 488, column: 9, scope: !819)
!828 = !DILocation(line: 492, column: 16, scope: !829)
!829 = distinct !DILexicalBlock(scope: !819, file: !3, line: 488, column: 23)
!830 = !DILocation(line: 487, column: 12, scope: !831)
!831 = !DILexicalBlockFile(scope: !779, file: !3, discriminator: 1)
!832 = !DILocation(line: 487, column: 5, scope: !831)
!833 = !DILocation(line: 502, column: 20, scope: !831)
!834 = !DILocation(line: 502, column: 12, scope: !831)
!835 = !DILocation(line: 502, column: 17, scope: !831)
!836 = !DILocation(line: 502, column: 5, scope: !831)
!837 = !DILocation(line: 503, column: 12, scope: !838)
!838 = distinct !DILexicalBlock(scope: !779, file: !3, line: 502, column: 27)
!839 = !DILocation(line: 504, column: 13, scope: !838)
!840 = !DILocation(line: 505, column: 21, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 505, column: 13)
!842 = !DILocation(line: 505, column: 18, scope: !841)
!843 = !DILocation(line: 505, column: 26, scope: !841)
!844 = !DILocation(line: 505, column: 34, scope: !845)
!845 = !DILexicalBlockFile(scope: !841, file: !3, discriminator: 1)
!846 = !DILocation(line: 505, column: 13, scope: !847)
!847 = !DILexicalBlockFile(scope: !838, file: !3, discriminator: 1)
!848 = distinct !{!848, !849, !850}
!849 = !DILocation(line: 502, column: 5, scope: !779)
!850 = !DILocation(line: 508, column: 5, scope: !779)
!851 = !DILocation(line: 509, column: 17, scope: !852)
!852 = distinct !DILexicalBlock(scope: !779, file: !3, line: 509, column: 9)
!853 = !DILocation(line: 509, column: 14, scope: !852)
!854 = !DILocation(line: 510, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 509, column: 24)
!856 = !DILocation(line: 514, column: 1, scope: !779)
!857 = distinct !DISubprogram(name: "vcard_get_val", scope: !3, file: !3, line: 388, type: !858, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!60, !71, !60, !378}
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !871, !872}
!861 = !DILocalVariable(name: "ver", arg: 1, scope: !857, file: !3, line: 388, type: !71)
!862 = !DILocalVariable(name: "src", arg: 2, scope: !857, file: !3, line: 388, type: !60)
!863 = !DILocalVariable(name: "dest", arg: 3, scope: !857, file: !3, line: 388, type: !378)
!864 = !DILocalVariable(name: "len", scope: !857, file: !3, line: 390, type: !71)
!865 = !DILocalVariable(name: "quoted", scope: !857, file: !3, line: 390, type: !71)
!866 = !DILocalVariable(name: "start", scope: !857, file: !3, line: 391, type: !220)
!867 = !DILocalVariable(name: "cursor", scope: !857, file: !3, line: 392, type: !60)
!868 = !DILocalVariable(name: "len", scope: !869, file: !3, line: 453, type: !71)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 452, column: 12)
!870 = distinct !DILexicalBlock(scope: !857, file: !3, line: 449, column: 9)
!871 = !DILocalVariable(name: "temp", scope: !869, file: !3, line: 454, type: !61)
!872 = !DILocalVariable(name: "new_dest", scope: !869, file: !3, line: 455, type: !60)
!873 = !DILocation(line: 388, column: 32, scope: !857)
!874 = !DILocation(line: 388, column: 43, scope: !857)
!875 = !DILocation(line: 388, column: 55, scope: !857)
!876 = !DILocation(line: 391, column: 10, scope: !857)
!877 = !DILocation(line: 394, column: 5, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !3, discriminator: 1)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 394, column: 5)
!880 = distinct !DILexicalBlock(scope: !857, file: !3, line: 394, column: 5)
!881 = !DILocation(line: 394, column: 5, scope: !882)
!882 = !DILexicalBlockFile(scope: !880, file: !3, discriminator: 1)
!883 = !DILocation(line: 394, column: 5, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 2)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 394, column: 5)
!886 = distinct !DILexicalBlock(scope: !879, file: !3, line: 394, column: 5)
!887 = !DILocation(line: 394, column: 5, scope: !888)
!888 = !DILexicalBlockFile(scope: !886, file: !3, discriminator: 2)
!889 = !DILocation(line: 394, column: 5, scope: !890)
!890 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 3)
!891 = !DILocation(line: 394, column: 5, scope: !892)
!892 = !DILexicalBlockFile(scope: !893, file: !3, discriminator: 4)
!893 = distinct !DILexicalBlock(scope: !886, file: !3, line: 394, column: 5)
!894 = !DILocation(line: 394, column: 5, scope: !895)
!895 = !DILexicalBlockFile(scope: !886, file: !3, discriminator: 4)
!896 = !DILocation(line: 394, column: 5, scope: !897)
!897 = !DILexicalBlockFile(scope: !893, file: !3, discriminator: 5)
!898 = !DILocation(line: 395, column: 5, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 1)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 395, column: 5)
!901 = distinct !DILexicalBlock(scope: !857, file: !3, line: 395, column: 5)
!902 = !DILocation(line: 395, column: 5, scope: !903)
!903 = !DILexicalBlockFile(scope: !901, file: !3, discriminator: 1)
!904 = !DILocation(line: 397, column: 12, scope: !905)
!905 = !DILexicalBlockFile(scope: !857, file: !3, discriminator: 1)
!906 = !DILocation(line: 397, column: 5, scope: !905)
!907 = !DILocation(line: 398, column: 17, scope: !908)
!908 = distinct !DILexicalBlock(scope: !857, file: !3, line: 397, column: 18)
!909 = !DILocation(line: 395, column: 5, scope: !910)
!910 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 2)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 395, column: 5)
!912 = distinct !DILexicalBlock(scope: !900, file: !3, line: 395, column: 5)
!913 = !DILocation(line: 395, column: 5, scope: !914)
!914 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 2)
!915 = !DILocation(line: 395, column: 5, scope: !916)
!916 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 3)
!917 = !DILocation(line: 395, column: 5, scope: !918)
!918 = !DILexicalBlockFile(scope: !919, file: !3, discriminator: 4)
!919 = distinct !DILexicalBlock(scope: !912, file: !3, line: 395, column: 5)
!920 = !DILocation(line: 395, column: 5, scope: !921)
!921 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 4)
!922 = !DILocation(line: 395, column: 5, scope: !923)
!923 = !DILexicalBlockFile(scope: !919, file: !3, discriminator: 5)
!924 = !DILocation(line: 398, column: 9, scope: !908)
!925 = !DILocation(line: 404, column: 16, scope: !926)
!926 = distinct !DILexicalBlock(scope: !908, file: !3, line: 398, column: 23)
!927 = !DILocation(line: 390, column: 14, scope: !857)
!928 = !DILocation(line: 392, column: 11, scope: !857)
!929 = !DILocation(line: 390, column: 9, scope: !857)
!930 = !DILocation(line: 418, column: 23, scope: !931)
!931 = distinct !DILexicalBlock(scope: !857, file: !3, line: 418, column: 9)
!932 = !DILocation(line: 418, column: 9, scope: !857)
!933 = !DILocation(line: 428, column: 29, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 428, column: 21)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 424, column: 20)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 420, column: 17)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 419, column: 25)
!938 = distinct !DILexicalBlock(scope: !931, file: !3, line: 418, column: 31)
!939 = !DILocation(line: 419, column: 9, scope: !940)
!940 = !DILexicalBlockFile(scope: !938, file: !3, discriminator: 1)
!941 = !DILocation(line: 420, column: 66, scope: !942)
!942 = !DILexicalBlockFile(scope: !936, file: !3, discriminator: 1)
!943 = !DILocalVariable(name: "src", arg: 1, scope: !944, file: !3, line: 137, type: !60)
!944 = distinct !DISubprogram(name: "vcard_check_quoted", scope: !3, file: !3, line: 137, type: !945, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !948)
!945 = !DISubroutineType(types: !946)
!946 = !{!71, !60, !71, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!948 = !{!943, !949, !950, !951}
!949 = !DILocalVariable(name: "max", arg: 2, scope: !944, file: !3, line: 137, type: !71)
!950 = !DILocalVariable(name: "quoted", arg: 3, scope: !944, file: !3, line: 137, type: !947)
!951 = !DILocalVariable(name: "ret", scope: !944, file: !3, line: 139, type: !71)
!952 = !DILocation(line: 137, column: 44, scope: !944, inlinedAt: !953)
!953 = distinct !DILocation(line: 420, column: 35, scope: !942)
!954 = !DILocation(line: 137, column: 53, scope: !944, inlinedAt: !953)
!955 = !DILocation(line: 140, column: 14, scope: !956, inlinedAt: !953)
!956 = distinct !DILexicalBlock(scope: !944, file: !3, line: 140, column: 9)
!957 = !DILocation(line: 140, column: 9, scope: !944, inlinedAt: !953)
!958 = !DILocation(line: 144, column: 17, scope: !959, inlinedAt: !953)
!959 = !DILexicalBlockFile(scope: !944, file: !3, discriminator: 2)
!960 = !DILocation(line: 144, column: 17, scope: !961, inlinedAt: !953)
!961 = !DILexicalBlockFile(scope: !944, file: !3, discriminator: 1)
!962 = !DILocation(line: 144, column: 5, scope: !963, inlinedAt: !953)
!963 = !DILexicalBlockFile(scope: !944, file: !3, discriminator: 3)
!964 = !DILocation(line: 145, column: 13, scope: !965, inlinedAt: !953)
!965 = distinct !DILexicalBlock(scope: !944, file: !3, line: 144, column: 25)
!966 = !DILocation(line: 146, column: 19, scope: !967, inlinedAt: !953)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 145, column: 26)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 145, column: 13)
!969 = !DILocation(line: 139, column: 9, scope: !944, inlinedAt: !953)
!970 = !DILocation(line: 147, column: 18, scope: !971, inlinedAt: !953)
!971 = distinct !DILexicalBlock(scope: !967, file: !3, line: 147, column: 17)
!972 = !DILocation(line: 147, column: 17, scope: !967, inlinedAt: !953)
!973 = !DILocation(line: 154, column: 12, scope: !965, inlinedAt: !953)
!974 = !DILocation(line: 155, column: 12, scope: !965, inlinedAt: !953)
!975 = !DILocation(line: 144, column: 12, scope: !961, inlinedAt: !953)
!976 = distinct !{!976, !977, !978}
!977 = !DILocation(line: 144, column: 5, scope: !944)
!978 = !DILocation(line: 156, column: 5, scope: !944)
!979 = !DILocation(line: 421, column: 38, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 421, column: 21)
!981 = distinct !DILexicalBlock(scope: !936, file: !3, line: 420, column: 83)
!982 = !DILocation(line: 421, column: 29, scope: !980)
!983 = !DILocation(line: 421, column: 26, scope: !980)
!984 = !DILocation(line: 421, column: 43, scope: !980)
!985 = !DILocation(line: 421, column: 63, scope: !986)
!986 = !DILexicalBlockFile(scope: !980, file: !3, discriminator: 1)
!987 = !DILocation(line: 421, column: 54, scope: !986)
!988 = !DILocation(line: 421, column: 51, scope: !986)
!989 = !DILocation(line: 421, column: 21, scope: !990)
!990 = !DILexicalBlockFile(scope: !981, file: !3, discriminator: 1)
!991 = !DILocation(line: 425, column: 37, scope: !992)
!992 = distinct !DILexicalBlock(scope: !935, file: !3, line: 425, column: 21)
!993 = !DILocation(line: 425, column: 57, scope: !994)
!994 = !DILexicalBlockFile(scope: !992, file: !3, discriminator: 1)
!995 = !DILocation(line: 425, column: 48, scope: !994)
!996 = !DILocation(line: 425, column: 45, scope: !994)
!997 = !DILocation(line: 425, column: 62, scope: !994)
!998 = !DILocation(line: 425, column: 81, scope: !999)
!999 = !DILexicalBlockFile(scope: !992, file: !3, discriminator: 2)
!1000 = !DILocation(line: 425, column: 72, scope: !999)
!1001 = !DILocation(line: 425, column: 69, scope: !999)
!1002 = !DILocation(line: 425, column: 21, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !935, file: !3, discriminator: 2)
!1004 = !DILocation(line: 428, column: 56, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !934, file: !3, discriminator: 1)
!1006 = !DILocation(line: 428, column: 47, scope: !1005)
!1007 = !DILocation(line: 428, column: 44, scope: !1005)
!1008 = !DILocation(line: 428, column: 21, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !935, file: !3, discriminator: 1)
!1010 = !DILocation(line: 433, column: 19, scope: !937)
!1011 = !DILocation(line: 419, column: 9, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !938, file: !3, discriminator: 2)
!1013 = distinct !{!1013, !1014, !1015}
!1014 = !DILocation(line: 419, column: 9, scope: !938)
!1015 = !DILocation(line: 434, column: 9, scope: !938)
!1016 = !DILocation(line: 441, column: 25, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 441, column: 17)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 436, column: 25)
!1019 = distinct !DILexicalBlock(scope: !931, file: !3, line: 435, column: 12)
!1020 = !DILocation(line: 436, column: 9, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1019, file: !3, discriminator: 1)
!1022 = !DILocation(line: 437, column: 53, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1024, file: !3, discriminator: 1)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 437, column: 17)
!1025 = !DILocation(line: 437, column: 44, scope: !1023)
!1026 = !DILocation(line: 437, column: 41, scope: !1023)
!1027 = !DILocation(line: 437, column: 58, scope: !1023)
!1028 = !DILocation(line: 437, column: 77, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1024, file: !3, discriminator: 2)
!1030 = !DILocation(line: 437, column: 68, scope: !1029)
!1031 = !DILocation(line: 437, column: 65, scope: !1029)
!1032 = !DILocation(line: 437, column: 17, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1018, file: !3, discriminator: 2)
!1034 = !DILocation(line: 441, column: 33, scope: !1017)
!1035 = distinct !{!1035, !1036, !1037}
!1036 = !DILocation(line: 436, column: 9, scope: !1019)
!1037 = !DILocation(line: 446, column: 9, scope: !1019)
!1038 = !DILocation(line: 441, column: 52, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1017, file: !3, discriminator: 1)
!1040 = !DILocation(line: 441, column: 43, scope: !1039)
!1041 = !DILocation(line: 441, column: 40, scope: !1039)
!1042 = !DILocation(line: 441, column: 17, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1018, file: !3, discriminator: 1)
!1044 = !DILocation(line: 449, column: 13, scope: !870)
!1045 = !DILocation(line: 449, column: 9, scope: !857)
!1046 = !DILocation(line: 450, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !870, file: !3, line: 449, column: 24)
!1048 = !DILocation(line: 451, column: 9, scope: !1047)
!1049 = !DILocation(line: 453, column: 13, scope: !869)
!1050 = !DILocation(line: 454, column: 21, scope: !869)
!1051 = !DILocation(line: 454, column: 14, scope: !869)
!1052 = !DILocation(line: 457, column: 17, scope: !869)
!1053 = !DILocation(line: 458, column: 17, scope: !869)
!1054 = !DILocation(line: 458, column: 15, scope: !869)
!1055 = !DILocation(line: 293, column: 14, scope: !1056, inlinedAt: !1063)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 293, column: 9)
!1057 = distinct !DISubprogram(name: "vcard_remove_folding", scope: !3, file: !3, line: 290, type: !1058, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!71, !60}
!1060 = !{!1061, !1062}
!1061 = !DILocalVariable(name: "folded_src", arg: 1, scope: !1057, file: !3, line: 290, type: !60)
!1062 = !DILocalVariable(name: "result", scope: !1057, file: !3, line: 292, type: !60)
!1063 = distinct !DILocation(line: 460, column: 13, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 459, column: 35)
!1065 = distinct !DILexicalBlock(scope: !869, file: !3, line: 459, column: 13)
!1066 = !DILocation(line: 459, column: 13, scope: !869)
!1067 = !DILocation(line: 292, column: 11, scope: !1057, inlinedAt: !1063)
!1068 = !DILocation(line: 290, column: 46, scope: !1057, inlinedAt: !1063)
!1069 = !DILocation(line: 297, column: 12, scope: !1070, inlinedAt: !1063)
!1070 = !DILexicalBlockFile(scope: !1057, file: !3, discriminator: 1)
!1071 = !DILocation(line: 297, column: 5, scope: !1070, inlinedAt: !1063)
!1072 = !DILocation(line: 298, column: 57, scope: !1073, inlinedAt: !1063)
!1073 = !DILexicalBlockFile(scope: !1074, file: !3, discriminator: 1)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 298, column: 13)
!1075 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 297, column: 25)
!1076 = !DILocation(line: 298, column: 44, scope: !1073, inlinedAt: !1063)
!1077 = !DILocation(line: 298, column: 41, scope: !1073, inlinedAt: !1063)
!1078 = !DILocation(line: 298, column: 62, scope: !1073, inlinedAt: !1063)
!1079 = !DILocation(line: 298, column: 85, scope: !1080, inlinedAt: !1063)
!1080 = !DILexicalBlockFile(scope: !1074, file: !3, discriminator: 2)
!1081 = !DILocation(line: 298, column: 72, scope: !1080, inlinedAt: !1063)
!1082 = !DILocation(line: 298, column: 69, scope: !1080, inlinedAt: !1063)
!1083 = !DILocation(line: 299, column: 24, scope: !1084, inlinedAt: !1063)
!1084 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 298, column: 91)
!1085 = !DILocation(line: 298, column: 13, scope: !1086, inlinedAt: !1063)
!1086 = !DILexicalBlockFile(scope: !1075, file: !3, discriminator: 2)
!1087 = !DILocation(line: 300, column: 63, scope: !1088, inlinedAt: !1063)
!1088 = !DILexicalBlockFile(scope: !1089, file: !3, discriminator: 2)
!1089 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 300, column: 20)
!1090 = !DILocation(line: 300, column: 50, scope: !1088, inlinedAt: !1063)
!1091 = !DILocation(line: 300, column: 47, scope: !1088, inlinedAt: !1063)
!1092 = !DILocation(line: 301, column: 24, scope: !1093, inlinedAt: !1063)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 300, column: 69)
!1094 = !DILocation(line: 300, column: 20, scope: !1080, inlinedAt: !1063)
!1095 = !DILocation(line: 304, column: 21, scope: !1096, inlinedAt: !1063)
!1096 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 304, column: 13)
!1097 = !DILocation(line: 304, column: 18, scope: !1096, inlinedAt: !1063)
!1098 = !DILocation(line: 304, column: 13, scope: !1075, inlinedAt: !1063)
!1099 = !DILocation(line: 308, column: 17, scope: !1075, inlinedAt: !1063)
!1100 = !DILocation(line: 309, column: 15, scope: !1075, inlinedAt: !1063)
!1101 = !DILocation(line: 310, column: 19, scope: !1075, inlinedAt: !1063)
!1102 = !DILocation(line: 297, column: 5, scope: !1103, inlinedAt: !1063)
!1103 = !DILexicalBlockFile(scope: !1057, file: !3, discriminator: 2)
!1104 = distinct !{!1104, !1105, !1106}
!1105 = !DILocation(line: 297, column: 5, scope: !1057)
!1106 = !DILocation(line: 311, column: 5, scope: !1057)
!1107 = !DILocation(line: 312, column: 13, scope: !1057, inlinedAt: !1063)
!1108 = !DILocation(line: 313, column: 5, scope: !1057, inlinedAt: !1063)
!1109 = !DILocation(line: 464, column: 43, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 463, column: 53)
!1111 = distinct !DILexicalBlock(scope: !869, file: !3, line: 463, column: 13)
!1112 = !DILocation(line: 137, column: 44, scope: !944, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 463, column: 13, scope: !1111)
!1114 = !DILocation(line: 137, column: 53, scope: !944, inlinedAt: !1113)
!1115 = !DILocation(line: 140, column: 14, scope: !956, inlinedAt: !1113)
!1116 = !DILocation(line: 140, column: 9, scope: !944, inlinedAt: !1113)
!1117 = !DILocation(line: 144, column: 12, scope: !961, inlinedAt: !1113)
!1118 = !DILocation(line: 144, column: 5, scope: !963, inlinedAt: !1113)
!1119 = !DILocation(line: 145, column: 13, scope: !965, inlinedAt: !1113)
!1120 = !DILocation(line: 146, column: 19, scope: !967, inlinedAt: !1113)
!1121 = !DILocation(line: 139, column: 9, scope: !944, inlinedAt: !1113)
!1122 = !DILocation(line: 147, column: 18, scope: !971, inlinedAt: !1113)
!1123 = !DILocation(line: 147, column: 17, scope: !967, inlinedAt: !1113)
!1124 = !DILocation(line: 154, column: 12, scope: !965, inlinedAt: !1113)
!1125 = !DILocation(line: 155, column: 12, scope: !965, inlinedAt: !1113)
!1126 = !DILocation(line: 144, column: 17, scope: !959, inlinedAt: !1113)
!1127 = !DILocation(line: 144, column: 17, scope: !961, inlinedAt: !1113)
!1128 = !DILocation(line: 201, column: 49, scope: !1129, inlinedAt: !1135)
!1129 = distinct !DISubprogram(name: "vcard_decode_quoted_val", scope: !3, file: !3, line: 201, type: !1058, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DILocalVariable(name: "val", arg: 1, scope: !1129, file: !3, line: 201, type: !60)
!1132 = !DILocalVariable(name: "src", scope: !1129, file: !3, line: 203, type: !60)
!1133 = !DILocalVariable(name: "dest", scope: !1129, file: !3, line: 203, type: !60)
!1134 = !DILocalVariable(name: "pre", scope: !1129, file: !3, line: 204, type: !71)
!1135 = distinct !DILocation(line: 464, column: 19, scope: !1110)
!1136 = !DILocation(line: 206, column: 11, scope: !1129, inlinedAt: !1135)
!1137 = !DILocation(line: 203, column: 11, scope: !1129, inlinedAt: !1135)
!1138 = !DILocation(line: 207, column: 14, scope: !1139, inlinedAt: !1135)
!1139 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 207, column: 9)
!1140 = !DILocation(line: 207, column: 9, scope: !1129, inlinedAt: !1135)
!1141 = !DILocation(line: 203, column: 17, scope: !1129, inlinedAt: !1135)
!1142 = !DILocation(line: 212, column: 5, scope: !1129, inlinedAt: !1135)
!1143 = !DILocation(line: 212, column: 12, scope: !1144, inlinedAt: !1135)
!1144 = !DILexicalBlockFile(scope: !1129, file: !3, discriminator: 1)
!1145 = !DILocation(line: 212, column: 5, scope: !1144, inlinedAt: !1135)
!1146 = !DILocation(line: 214, column: 42, scope: !1147, inlinedAt: !1135)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 213, column: 26)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 213, column: 13)
!1149 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 212, column: 18)
!1150 = !DILocation(line: 214, column: 36, scope: !1147, inlinedAt: !1135)
!1151 = !DILocalVariable(name: "hex", arg: 1, scope: !1152, file: !3, line: 188, type: !61)
!1152 = distinct !DISubprogram(name: "vcard_hex_to_dec", scope: !3, file: !3, line: 188, type: !1153, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!71, !61}
!1155 = !{!1151}
!1156 = !DILocation(line: 188, column: 41, scope: !1152, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 214, column: 19, scope: !1147, inlinedAt: !1135)
!1158 = !DILocation(line: 190, column: 13, scope: !1152, inlinedAt: !1157)
!1159 = !DILocation(line: 190, column: 5, scope: !1152, inlinedAt: !1157)
!1160 = !DILocation(line: 204, column: 9, scope: !1129, inlinedAt: !1135)
!1161 = !DILocation(line: 215, column: 19, scope: !1162, inlinedAt: !1135)
!1162 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 215, column: 17)
!1163 = !DILocation(line: 215, column: 17, scope: !1147, inlinedAt: !1135)
!1164 = !DILocation(line: 216, column: 37, scope: !1165, inlinedAt: !1135)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 215, column: 27)
!1166 = !DILocation(line: 216, column: 68, scope: !1165, inlinedAt: !1135)
!1167 = !DILocation(line: 216, column: 62, scope: !1165, inlinedAt: !1135)
!1168 = !DILocation(line: 188, column: 41, scope: !1152, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 216, column: 45, scope: !1165, inlinedAt: !1135)
!1170 = !DILocation(line: 190, column: 13, scope: !1152, inlinedAt: !1169)
!1171 = !DILocation(line: 190, column: 5, scope: !1152, inlinedAt: !1169)
!1172 = !DILocation(line: 216, column: 43, scope: !1165, inlinedAt: !1135)
!1173 = !DILocation(line: 216, column: 25, scope: !1165, inlinedAt: !1135)
!1174 = !DILocation(line: 216, column: 23, scope: !1165, inlinedAt: !1135)
!1175 = !DILocation(line: 217, column: 21, scope: !1165, inlinedAt: !1135)
!1176 = !DILocation(line: 219, column: 13, scope: !1165, inlinedAt: !1135)
!1177 = !DILocation(line: 220, column: 26, scope: !1178, inlinedAt: !1135)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 220, column: 21)
!1179 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 219, column: 20)
!1180 = !DILocation(line: 220, column: 40, scope: !1178, inlinedAt: !1135)
!1181 = !DILocation(line: 220, column: 57, scope: !1182, inlinedAt: !1135)
!1182 = !DILexicalBlockFile(scope: !1178, file: !3, discriminator: 1)
!1183 = !DILocation(line: 220, column: 51, scope: !1182, inlinedAt: !1135)
!1184 = !DILocation(line: 220, column: 48, scope: !1182, inlinedAt: !1135)
!1185 = !DILocation(line: 220, column: 21, scope: !1186, inlinedAt: !1135)
!1186 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 1)
!1187 = !DILocation(line: 225, column: 19, scope: !1188, inlinedAt: !1135)
!1188 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 224, column: 16)
!1189 = !DILocation(line: 226, column: 17, scope: !1188, inlinedAt: !1135)
!1190 = !DILocation(line: 228, column: 12, scope: !1149, inlinedAt: !1135)
!1191 = !DILocation(line: 212, column: 5, scope: !1192, inlinedAt: !1135)
!1192 = !DILexicalBlockFile(scope: !1129, file: !3, discriminator: 2)
!1193 = distinct !{!1193, !1194, !1195}
!1194 = !DILocation(line: 212, column: 5, scope: !1129)
!1195 = !DILocation(line: 229, column: 5, scope: !1129)
!1196 = !DILocation(line: 231, column: 11, scope: !1129, inlinedAt: !1135)
!1197 = !DILocation(line: 466, column: 13, scope: !869)
!1198 = !DILocation(line: 455, column: 15, scope: !869)
!1199 = !DILocation(line: 474, column: 17, scope: !869)
!1200 = !DILocation(line: 475, column: 24, scope: !869)
!1201 = !DILocation(line: 477, column: 1, scope: !857)
!1202 = distinct !DISubprogram(name: "contacts_svc_vcard_foreach", scope: !3, file: !3, line: 922, type: !1203, isLocal: false, isDefinition: true, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1208)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!71, !68, !71, !1205, !64}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 32)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!71, !68, !67}
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217}
!1209 = !DILocalVariable(name: "vcard_ptr", arg: 1, scope: !1202, file: !3, line: 922, type: !68)
!1210 = !DILocalVariable(name: "data_len", arg: 2, scope: !1202, file: !3, line: 922, type: !71)
!1211 = !DILocalVariable(name: "fn", arg: 3, scope: !1202, file: !3, line: 923, type: !1205)
!1212 = !DILocalVariable(name: "endflag", arg: 4, scope: !1202, file: !3, line: 923, type: !64)
!1213 = !DILocalVariable(name: "buf_size", scope: !1202, file: !3, line: 925, type: !71)
!1214 = !DILocalVariable(name: "index", scope: !1202, file: !3, line: 925, type: !71)
!1215 = !DILocalVariable(name: "stream", scope: !1202, file: !3, line: 926, type: !60)
!1216 = !DILocalVariable(name: "vcard_begin", scope: !1202, file: !3, line: 926, type: !60)
!1217 = !DILocalVariable(name: "vcard_end", scope: !1202, file: !3, line: 926, type: !60)
!1218 = !DILocation(line: 922, column: 44, scope: !1202)
!1219 = !DILocation(line: 922, column: 59, scope: !1202)
!1220 = !DILocation(line: 923, column: 38, scope: !1202)
!1221 = !DILocation(line: 923, column: 86, scope: !1202)
!1222 = !DILocation(line: 928, column: 19, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 928, column: 9)
!1224 = !DILocation(line: 928, column: 9, scope: !1202)
!1225 = !DILocation(line: 926, column: 34, scope: !1202)
!1226 = !DILocation(line: 926, column: 20, scope: !1202)
!1227 = !DILocation(line: 926, column: 11, scope: !1202)
!1228 = !DILocation(line: 925, column: 19, scope: !1202)
!1229 = !DILocation(line: 936, column: 18, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1202, file: !3, discriminator: 1)
!1231 = !DILocation(line: 936, column: 5, scope: !1230)
!1232 = !DILocation(line: 937, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 937, column: 13)
!1234 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 936, column: 30)
!1235 = !DILocation(line: 937, column: 21, scope: !1233)
!1236 = !DILocation(line: 937, column: 13, scope: !1234)
!1237 = !DILocation(line: 938, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 937, column: 29)
!1239 = !DILocation(line: 939, column: 18, scope: !1238)
!1240 = !DILocation(line: 940, column: 13, scope: !1238)
!1241 = distinct !{!1241, !1242, !1243}
!1242 = !DILocation(line: 936, column: 5, scope: !1202)
!1243 = !DILocation(line: 979, column: 5, scope: !1202)
!1244 = !DILocation(line: 942, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 942, column: 13)
!1246 = !DILocation(line: 942, column: 13, scope: !1234)
!1247 = !DILocation(line: 943, column: 19, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 942, column: 72)
!1249 = !DILocation(line: 944, column: 18, scope: !1248)
!1250 = !DILocation(line: 945, column: 13, scope: !1248)
!1251 = !DILocation(line: 947, column: 13, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 947, column: 13)
!1253 = !DILocation(line: 947, column: 13, scope: !1234)
!1254 = !DILocation(line: 949, column: 39, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 947, column: 32)
!1256 = !DILocation(line: 949, column: 57, scope: !1255)
!1257 = !DILocation(line: 949, column: 65, scope: !1255)
!1258 = !DILocation(line: 949, column: 26, scope: !1255)
!1259 = !DILocation(line: 949, column: 24, scope: !1255)
!1260 = !DILocation(line: 950, column: 36, scope: !1255)
!1261 = !DILocation(line: 950, column: 62, scope: !1255)
!1262 = !DILocation(line: 951, column: 32, scope: !1255)
!1263 = !DILocation(line: 951, column: 13, scope: !1255)
!1264 = !DILocation(line: 952, column: 31, scope: !1255)
!1265 = !DILocation(line: 952, column: 13, scope: !1255)
!1266 = !DILocation(line: 953, column: 13, scope: !1255)
!1267 = !DILocation(line: 954, column: 31, scope: !1255)
!1268 = !DILocation(line: 955, column: 24, scope: !1255)
!1269 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 955, column: 13, scope: !1255)
!1271 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !1270)
!1272 = !DILocation(line: 956, column: 31, scope: !1255)
!1273 = !DILocation(line: 957, column: 24, scope: !1255)
!1274 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 957, column: 13, scope: !1255)
!1276 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !1275)
!1277 = !DILocation(line: 958, column: 24, scope: !1255)
!1278 = !DILocation(line: 959, column: 9, scope: !1255)
!1279 = !DILocation(line: 960, column: 25, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 960, column: 13)
!1281 = !DILocation(line: 963, column: 19, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 960, column: 36)
!1283 = !DILocation(line: 960, column: 13, scope: !1234)
!1284 = !DILocation(line: 965, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 965, column: 13)
!1286 = !DILocation(line: 965, column: 24, scope: !1285)
!1287 = !DILocation(line: 965, column: 13, scope: !1234)
!1288 = !DILocation(line: 970, column: 13, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 970, column: 13)
!1290 = !DILocation(line: 970, column: 13, scope: !1234)
!1291 = !DILocation(line: 975, column: 19, scope: !1234)
!1292 = !DILocation(line: 976, column: 15, scope: !1234)
!1293 = !DILocation(line: 977, column: 9, scope: !1234)
!1294 = !DILocation(line: 936, column: 5, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1202, file: !3, discriminator: 2)
!1296 = !DILocation(line: 980, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 980, column: 9)
!1298 = !DILocation(line: 980, column: 38, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1297, file: !3, discriminator: 1)
!1300 = !DILocation(line: 980, column: 27, scope: !1297)
!1301 = !DILocation(line: 981, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 981, column: 9)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 980, column: 44)
!1304 = !DILocation(line: 981, column: 9, scope: !1303)
!1305 = !DILocation(line: 981, column: 9, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1302, file: !3, discriminator: 1)
!1307 = !DILocation(line: 982, column: 35, scope: !1303)
!1308 = !DILocation(line: 982, column: 53, scope: !1303)
!1309 = !DILocation(line: 982, column: 64, scope: !1303)
!1310 = !DILocation(line: 982, column: 22, scope: !1303)
!1311 = !DILocation(line: 982, column: 20, scope: !1303)
!1312 = !DILocation(line: 983, column: 32, scope: !1303)
!1313 = !DILocation(line: 983, column: 50, scope: !1303)
!1314 = !DILocation(line: 983, column: 58, scope: !1303)
!1315 = !DILocation(line: 984, column: 28, scope: !1303)
!1316 = !DILocation(line: 984, column: 9, scope: !1303)
!1317 = !DILocation(line: 985, column: 27, scope: !1303)
!1318 = !DILocation(line: 985, column: 9, scope: !1303)
!1319 = !DILocation(line: 986, column: 9, scope: !1303)
!1320 = !DILocation(line: 987, column: 27, scope: !1303)
!1321 = !DILocation(line: 988, column: 20, scope: !1303)
!1322 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 988, column: 9, scope: !1303)
!1324 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !1323)
!1325 = !DILocation(line: 989, column: 27, scope: !1303)
!1326 = !DILocation(line: 990, column: 20, scope: !1303)
!1327 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 990, column: 9, scope: !1303)
!1329 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !1328)
!1330 = !DILocation(line: 991, column: 20, scope: !1303)
!1331 = !DILocation(line: 992, column: 5, scope: !1303)
!1332 = !DILocation(line: 993, column: 19, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 993, column: 9)
!1334 = !DILocation(line: 993, column: 9, scope: !1202)
!1335 = !DILocation(line: 994, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 994, column: 13)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 993, column: 33)
!1338 = !DILocation(line: 994, column: 31, scope: !1336)
!1339 = !DILocation(line: 994, column: 13, scope: !1337)
!1340 = !DILocation(line: 995, column: 31, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 994, column: 40)
!1342 = !DILocation(line: 30, column: 23, scope: !101, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 996, column: 13, scope: !1341)
!1344 = !DILocation(line: 33, column: 5, scope: !101, inlinedAt: !1343)
!1345 = !DILocation(line: 997, column: 31, scope: !1341)
!1346 = !DILocation(line: 998, column: 9, scope: !1341)
!1347 = !DILocation(line: 1000, column: 21, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1000, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 999, column: 12)
!1350 = !DILocation(line: 1000, column: 47, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 1)
!1352 = !DILocation(line: 1000, column: 35, scope: !1348)
!1353 = !DILocation(line: 1001, column: 13, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 1001, column: 13)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1000, column: 54)
!1356 = !DILocation(line: 1001, column: 13, scope: !1355)
!1357 = !DILocation(line: 1001, column: 13, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1354, file: !3, discriminator: 1)
!1359 = !DILocation(line: 1002, column: 27, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 1002, column: 17)
!1361 = !DILocation(line: 1002, column: 17, scope: !1355)
!1362 = !DILocation(line: 1006, column: 43, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1005, column: 20)
!1364 = !DILocation(line: 1003, column: 35, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1002, column: 37)
!1366 = !DILocation(line: 1009, column: 9, scope: !1355)
!1367 = !DILocation(line: 1011, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1011, column: 5)
!1369 = !DILocation(line: 1011, column: 5, scope: !1202)
!1370 = !DILocation(line: 1011, column: 5, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1368, file: !3, discriminator: 1)
!1372 = !DILocation(line: 1013, column: 1, scope: !1202)
