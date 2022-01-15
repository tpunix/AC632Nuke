; ModuleID = 'bnep.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/bnep.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.bnep_channel_t = type { %struct.btstack_linked_item, i32, i32, i16, i8*, [6 x i8], [6 x i8], i16, i16, i16, i16, i8, i16, [8 x %struct.bnep_net_filter_t], i16, %struct.bnep_net_filter_t*, i16, [8 x %struct.bnep_multi_filter_t], i16, %struct.bnep_multi_filter_t*, i16, %struct.btstack_timer_source, i32, i32, void (i8, i16, i8*, i16)*, i8, %struct.btstack_linked_item*, i32 }
%struct.bnep_net_filter_t = type { i16, i16 }
%struct.bnep_multi_filter_t = type { [6 x i8], [6 x i8] }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.bnep_channel_event = type { i32 }
%struct.resend_t = type { %struct.btstack_linked_item, i16, [0 x i8] }
%struct.bnep_service_t = type { %struct.btstack_linked_item, i16, i16, void (i8, i16, i8*, i16)* }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@profile_debug_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [65 x i8] c"<pro-error> :bnep_can_send_packet_now cid 0x%02x doesn't exist!\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"<pro-error> :bnep_request_can_send_now_event cid 0x%02x doesn't exist!\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"<pro-error> :bnep_send cid 0x%02x doesn't exist!\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"<pro-error> :bnep_send: Max frame size (%d) exceeded: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"<pro-error> :bnep_send: error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"<pro-error> :bnep_set_net_type_filter cid 0x%02x doesn't exist!\0A\00", align 1
@bnep_channels = internal global %struct.btstack_linked_item* null, align 4, !dbg !150
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"<BT-log> :BNEP_CONNECT addr %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"<BT-log> :BNEP_CONNECT err %x\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"<BT-log> :BNEP_REGISTER_SERVICE mtu %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"<BT-log> :BNEP_REGISTER_SERVICE: Invalid service UUID: %04x\0A\00", align 1
@bnep_services = internal global %struct.btstack_linked_item* null, align 4, !dbg !153
@.str.13 = private unnamed_addr constant [112 x i8] c"<pro-error> :INCOMING_CONNECTION (l2cap_cid 0x%02x) for BLUETOOTH_PSM_BNEP => decline - channel already exists\0A\00", align 1
@.str.14 = private unnamed_addr constant [104 x i8] c"<pro-error> :INCOMING_CONNECTION (l2cap_cid 0x%02x) for BLUETOOTH_PSM_BNEP => decline - no memory left\0A\00", align 1
@.str.15 = private unnamed_addr constant [95 x i8] c"<BT-log> :L2CAP_EVENT_INCOMING_CONNECTION (l2cap_cid 0x%02x) for BLUETOOTH_PSM_BNEP => accept\0A\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"<BT-log> :L2CAP_EVENT_CHANNEL_OPENED for BLUETOOTH_PSM_BNEP, status %u\0A\00", align 1
@user_interface = external local_unnamed_addr global %struct.user_interface_handler*, align 4
@.str.19 = private unnamed_addr constant [60 x i8] c"<pro-error> :L2CAP_EVENT_CHANNEL_OPENED: Invalid state: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"<BT-log> :L2CAP_EVENT_CHANNEL_CLOSED cid 0x%0x, channel %p\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"<BT-log> :L2CAP_EVENT_CHANNEL_CLOSED state %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"<BT-log> :BNEP_EVENT_CHANNEL_OPENED status 0x%02x bd_addr: %s, handler %p\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"<BT-log> :bnep_max_frame_size_for_l2cap_mtu:  %u -> %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"<BT-log> :BNEP_CONTROL: Type: %d, size: %d, is_extension: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [84 x i8] c"<pro-error> :BNEP_CONTROL: Received COMMAND_NOT_UNDERSTOOD: l2cap_cid: %d, cmd: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [97 x i8] c"<pro-error> :BNEP_CONTROL: Received SETUP_CONNECTION_REQUEST in extension header: l2cap_cid: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [98 x i8] c"<pro-error> :BNEP_CONTROL: Received SETUP_CONNECTION_RESPONSE in extension header: l2cap_cid: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"<pro-error> :BNEP_CONTROL: Invalid bnep control type: l2cap_cid: %d, cmd: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"<pro-error> :BNEP_CONNECTION_REQUEST: ignored in state %d, l2cap_cid: %d!\0A\00", align 1
@.str.33 = private unnamed_addr constant [76 x i8] c"<pro-error> :BNEP_CONNECTION_REQUEST: Invalid UUID size %d, l2cap_cid: %d!\0A\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"<pro-error> :BNEP_CONNECTION_REQUEST: Invalid destination service UUID: %04x\0A\00", align 1
@.str.35 = private unnamed_addr constant [73 x i8] c"<pro-error> :BNEP_CONNECTION_REQUEST: Invalid source service UUID: %04x\0A\00", align 1
@.str.36 = private unnamed_addr constant [68 x i8] c"<pro-error> :BNEP_CONNECTION_RESPONSE: Ignored in channel state %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"<BT-log> :BNEP_CONNECTION_RESPONSE: Channel established to %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [73 x i8] c"<pro-error> :BNEP_CONNECTION_RESPONSE: Connection to %s failed. Err: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"<pro-error> :BNEP_FILTER_NET_TYPE_SET: Ignored in channel state %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"<pro-error> :BNEP_FILTER_NET_TYPE_SET: Invalid filter: start: %d, end: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [68 x i8] c"<BT-log> :BNEP_FILTER_NET_TYPE_SET: Add filter: start: %d, end: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [73 x i8] c"<pro-error> :BNEP_FILTER_NET_TYPE_RESPONSE: Ignored in channel state %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [77 x i8] c"<BT-log> :BNEP_FILTER_NET_TYPE_RESPONSE: Net filter set successfully for %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [87 x i8] c"<pro-error> :BNEP_FILTER_NET_TYPE_RESPONSE: Net filter setting for %s failed. Err: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [63 x i8] c"<pro-error> :BNEP_MULTI_ADDR_SET: Ignored in channel state %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"<pro-error> :BNEP_MULTI_ADDR_SET: Invalid filter: start: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [59 x i8] c"<pro-error> :BNEP_MULTI_ADDR_SET: Invalid filter: end: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [54 x i8] c"<BT-log> :BNEP_MULTI_ADDR_SET: Add filter: start: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"<BT-log> :BNEP_MULTI_ADDR_SET: Add filter: end: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [68 x i8] c"<pro-error> :BNEP_MULTI_ADDR_RESPONSE: Ignored in channel state %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [86 x i8] c"<BT-log> :BNEP_MULTI_ADDR_RESPONSE: Multicast address filter set successfully for %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [96 x i8] c"<pro-error> :BNEP_MULTI_ADDR_RESPONSE: Multicast address filter setting for %s failed. Err: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [67 x i8] c"<BT-log> :bnep_state_machine: state %u, state var: %02x, event %u\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"%s send len %d\0A\00", align 1
@__func__.bnep_send_filter_net_type_set = private unnamed_addr constant [30 x i8] c"bnep_send_filter_net_type_set\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"<BT-log> :BNEP_EVENT_CHANNEL_CLOSED bd_addr: %s, handler %p\0A\00", align 1
@str = private unnamed_addr constant [69 x i8] c"<pro-error> :L2CAP_EVENT_CHANNEL_OPENED but no BNEP channel prepared\00"
@str.58 = private unnamed_addr constant [58 x i8] c"<BT-log> :L2CAP_EVENT_CHANNEL_OPENED: outgoing connection\00"
@str.59 = private unnamed_addr constant [77 x i8] c"<pro-error> :BNEP pkt handler: Unknown extension type ignored, data dropped!\00"
@str.60 = private unnamed_addr constant [81 x i8] c"<pro-error> :BNEP pkt handler: Ignore invalid control packet in extension header\00"
@str.61 = private unnamed_addr constant [72 x i8] c"<pro-error> :BNEP pkt handler: Invalid extension length! Packet ignored\00"
@str.62 = private unnamed_addr constant [45 x i8] c"<BT-log> :BNEP_CONNECT create channel = NULL\00"
@str.63 = private unnamed_addr constant [40 x i8] c"<pro-error> :malloc for bnep send fail\0A\00"
@str.64 = private unnamed_addr constant [26 x i8] c"<BT-log> :BNEP_DISCONNECT\00"
@str.65 = private unnamed_addr constant [52 x i8] c"<BT-log> :BNEP_FILTER_NET_TYPE_SET: Too many filter\00"
@str.66 = private unnamed_addr constant [47 x i8] c"<BT-log> :BNEP_MULTI_ADDR_SET: Too many filter\00"

; Function Attrs: nounwind optsize
define hidden i32 @bnep_can_send_packet_now(i16 zeroext) local_unnamed_addr #0 !dbg !159 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !163, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i16 %0, metadata !166, metadata !DIExpression()), !dbg !176
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %2, metadata !171, metadata !DIExpression()), !dbg !182
  %3 = icmp eq %struct.btstack_linked_item* %2, null, !dbg !183
  br i1 %3, label %16, label %4, !dbg !183

; <label>:4:                                      ; preds = %1
  br label %9, !dbg !185

; <label>:5:                                      ; preds = %9
  %6 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 0, i32 0, !dbg !187
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !171, metadata !DIExpression()), !dbg !182
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !183
  br i1 %8, label %15, label %9, !dbg !183, !llvm.loop !189

; <label>:9:                                      ; preds = %5, %4
  %10 = phi %struct.btstack_linked_item* [ %7, %5 ], [ %2, %4 ]
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 8, !dbg !185
  %12 = bitcast %struct.btstack_linked_item* %11 to i16*, !dbg !185
  %13 = load i16, i16* %12, align 4, !dbg !185, !tbaa !192
  %14 = icmp eq i16 %13, %0, !dbg !198
  br i1 %14, label %23, label %5

; <label>:15:                                     ; preds = %5
  br label %16, !dbg !199

; <label>:16:                                     ; preds = %15, %1
  %17 = load i8, i8* @profile_debug_enable, align 1, !dbg !199, !tbaa !203
  %18 = and i8 %17, 4, !dbg !199
  %19 = icmp eq i8 %18, 0, !dbg !199
  br i1 %19, label %25, label %20, !dbg !204

; <label>:20:                                     ; preds = %16
  %21 = zext i16 %0 to i32, !dbg !205
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i32 %21) #9, !dbg !205
  br label %25, !dbg !205

; <label>:23:                                     ; preds = %9
  %24 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %0) #10, !dbg !207
  br label %25, !dbg !208

; <label>:25:                                     ; preds = %23, %20, %16
  %26 = phi i32 [ %24, %23 ], [ 0, %16 ], [ 0, %20 ]
  ret i32 %26, !dbg !209
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @l2cap_can_send_packet_now(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @bnep_request_can_send_now_event(i16 zeroext) local_unnamed_addr #0 !dbg !210 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !214, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i16 %0, metadata !166, metadata !DIExpression()), !dbg !217
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %2, metadata !171, metadata !DIExpression()), !dbg !219
  %3 = icmp eq %struct.btstack_linked_item* %2, null, !dbg !220
  br i1 %3, label %16, label %4, !dbg !220

; <label>:4:                                      ; preds = %1
  br label %9, !dbg !221

; <label>:5:                                      ; preds = %9
  %6 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 0, i32 0, !dbg !222
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !171, metadata !DIExpression()), !dbg !219
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !220
  br i1 %8, label %15, label %9, !dbg !220, !llvm.loop !189

; <label>:9:                                      ; preds = %5, %4
  %10 = phi %struct.btstack_linked_item* [ %7, %5 ], [ %2, %4 ]
  %11 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 8, !dbg !221
  %12 = bitcast %struct.btstack_linked_item* %11 to i16*, !dbg !221
  %13 = load i16, i16* %12, align 4, !dbg !221, !tbaa !192
  %14 = icmp eq i16 %13, %0, !dbg !223
  br i1 %14, label %23, label %5

; <label>:15:                                     ; preds = %5
  br label %16, !dbg !224

; <label>:16:                                     ; preds = %15, %1
  %17 = load i8, i8* @profile_debug_enable, align 1, !dbg !224, !tbaa !203
  %18 = and i8 %17, 4, !dbg !224
  %19 = icmp eq i8 %18, 0, !dbg !224
  br i1 %19, label %26, label %20, !dbg !228

; <label>:20:                                     ; preds = %16
  %21 = zext i16 %0 to i32, !dbg !229
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i32 0, i32 0), i32 %21) #9, !dbg !229
  br label %26, !dbg !229

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 56, !dbg !231
  %25 = bitcast %struct.btstack_linked_item* %24 to i8*, !dbg !231
  store i8 1, i8* %25, align 4, !dbg !232, !tbaa !233
  br label %26, !dbg !234

; <label>:26:                                     ; preds = %23, %20, %16
  ret void, !dbg !235
}

; Function Attrs: nounwind optsize
define hidden i32 @bnep_send(i16 zeroext, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !237 {
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !241, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i8* %1, metadata !242, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i16 %2, metadata !243, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata i8* null, metadata !245, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i16 0, metadata !246, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i16 0, metadata !247, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 0, metadata !249, metadata !DIExpression()), !dbg !262
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0, !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #8, !dbg !263
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %4, metadata !252, metadata !DIExpression()), !dbg !264
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #8, !dbg !265
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !253, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i16 %0, metadata !166, metadata !DIExpression()), !dbg !267
  %8 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %8, metadata !171, metadata !DIExpression()), !dbg !269
  %9 = icmp eq %struct.btstack_linked_item* %8, null, !dbg !270
  br i1 %9, label %22, label %10, !dbg !270

; <label>:10:                                     ; preds = %3
  br label %15, !dbg !271

; <label>:11:                                     ; preds = %15
  %12 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 0, i32 0, !dbg !272
  %13 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %12, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %13, metadata !171, metadata !DIExpression()), !dbg !269
  %14 = icmp eq %struct.btstack_linked_item* %13, null, !dbg !270
  br i1 %14, label %21, label %15, !dbg !270, !llvm.loop !189

; <label>:15:                                     ; preds = %11, %10
  %16 = phi %struct.btstack_linked_item* [ %13, %11 ], [ %8, %10 ]
  %17 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 8, !dbg !271
  %18 = bitcast %struct.btstack_linked_item* %17 to i16*, !dbg !271
  %19 = load i16, i16* %18, align 4, !dbg !271, !tbaa !192
  %20 = icmp eq i16 %19, %0, !dbg !273
  br i1 %20, label %29, label %11

; <label>:21:                                     ; preds = %11
  br label %22, !dbg !274

; <label>:22:                                     ; preds = %21, %3
  %23 = load i8, i8* @profile_debug_enable, align 1, !dbg !274, !tbaa !203
  %24 = and i8 %23, 4, !dbg !274
  %25 = icmp eq i8 %24, 0, !dbg !274
  br i1 %25, label %158, label %26, !dbg !278

; <label>:26:                                     ; preds = %22
  %27 = zext i16 %0 to i32, !dbg !279
  %28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i32 %27) #9, !dbg !279
  br label %158, !dbg !279

; <label>:29:                                     ; preds = %15
  %30 = bitcast %struct.btstack_linked_item* %16 to %struct.bnep_channel_t*, !dbg !281
  %31 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 1, !dbg !282
  %32 = bitcast %struct.btstack_linked_item* %31 to i32*, !dbg !282
  %33 = load i32, i32* %32, align 4, !dbg !282, !tbaa !284
  %34 = icmp eq i32 %33, 4, !dbg !285
  br i1 %34, label %35, label %158, !dbg !286

; <label>:35:                                     ; preds = %29
  %36 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %0) #10, !dbg !287
  %37 = icmp eq i32 %36, 0, !dbg !287
  br i1 %37, label %158, label %38, !dbg !289

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i16 0, metadata !246, metadata !DIExpression()), !dbg !260
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %6, i8* %1, i32 6, i32 1, i1 false), !dbg !290
  call void @llvm.dbg.value(metadata i16 6, metadata !246, metadata !DIExpression()), !dbg !260
  %39 = getelementptr inbounds i8, i8* %1, i32 6, !dbg !291
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %7, i8* %39, i32 6, i32 1, i1 false), !dbg !291
  call void @llvm.dbg.value(metadata i16 12, metadata !246, metadata !DIExpression()), !dbg !260
  %40 = tail call i32 @big_endian_read_16(i8* %1, i32 12) #10, !dbg !292
  call void @llvm.dbg.value(metadata i16 14, metadata !246, metadata !DIExpression()), !dbg !260
  %41 = add i16 %2, -14, !dbg !293
  call void @llvm.dbg.value(metadata i16 %41, metadata !248, metadata !DIExpression()), !dbg !294
  %42 = and i32 %40, 65535, !dbg !295
  %43 = icmp eq i32 %42, 33024, !dbg !297
  br i1 %43, label %44, label %48, !dbg !298

; <label>:44:                                     ; preds = %38
  %45 = icmp ult i16 %41, 4, !dbg !299
  br i1 %45, label %158, label %46, !dbg !302

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 16) #10, !dbg !303
  br label %48, !dbg !304

; <label>:48:                                     ; preds = %46, %38
  %49 = phi i32 [ %47, %46 ], [ %40, %38 ]
  %50 = trunc i32 %49 to i16
  call void @llvm.dbg.value(metadata i16 %50, metadata !254, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i16 %50, metadata !306, metadata !DIExpression()), !dbg !313
  %51 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 19, !dbg !316
  %52 = bitcast %struct.btstack_linked_item* %51 to i16*, !dbg !316
  %53 = load i16, i16* %52, align 4, !dbg !316, !tbaa !318
  %54 = icmp eq i16 %53, 0, !dbg !319
  br i1 %54, label %70, label %55, !dbg !320

; <label>:55:                                     ; preds = %48
  %56 = zext i16 %53 to i32
  br label %57, !dbg !321

; <label>:57:                                     ; preds = %66, %55
  %58 = phi i32 [ %67, %66 ], [ 0, %55 ]
  %59 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %30, i32 0, i32 13, i32 %58, i32 0, !dbg !321
  %60 = load i16, i16* %59, align 4, !dbg !321, !tbaa !326
  %61 = icmp ugt i16 %60, %50, !dbg !328
  br i1 %61, label %66, label %62, !dbg !329

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %30, i32 0, i32 13, i32 %58, i32 1, !dbg !330
  %64 = load i16, i16* %63, align 2, !dbg !330, !tbaa !331
  %65 = icmp ult i16 %64, %50, !dbg !332
  br i1 %65, label %66, label %69, !dbg !333

; <label>:66:                                     ; preds = %62, %57
  %67 = add nuw nsw i32 %58, 1, !dbg !335
  call void @llvm.dbg.value(metadata i32 %67, metadata !312, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %67, metadata !312, metadata !DIExpression()), !dbg !337
  %68 = icmp slt i32 %67, %56, !dbg !338
  br i1 %68, label %57, label %93, !dbg !340, !llvm.loop !342

; <label>:69:                                     ; preds = %62
  br label %70, !dbg !345

; <label>:70:                                     ; preds = %69, %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !351, metadata !DIExpression()), !dbg !345
  %71 = load i8, i8* %6, align 1, !dbg !354, !tbaa !203
  %72 = and i8 %71, 1, !dbg !356
  %73 = icmp eq i8 %72, 0, !dbg !357
  br i1 %73, label %100, label %74, !dbg !358

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %30, i32 0, i32 18, !dbg !359
  %76 = load i16, i16* %75, align 2, !dbg !359, !tbaa !361
  %77 = icmp eq i16 %76, 0, !dbg !362
  br i1 %77, label %100, label %78, !dbg !363

; <label>:78:                                     ; preds = %74
  %79 = zext i16 %76 to i32
  br label %80, !dbg !364

; <label>:80:                                     ; preds = %89, %78
  %81 = phi i32 [ %90, %89 ], [ 0, %78 ]
  %82 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %30, i32 0, i32 17, i32 %81, i32 0, i32 0, !dbg !364
  %83 = call i32 @memcmp(i8* nonnull %6, i8* %82, i32 6) #10, !dbg !369
  %84 = icmp sgt i32 %83, -1, !dbg !370
  br i1 %84, label %85, label %89, !dbg !371

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %30, i32 0, i32 17, i32 %81, i32 1, i32 0, !dbg !372
  %87 = call i32 @memcmp(i8* nonnull %6, i8* %86, i32 6) #10, !dbg !373
  %88 = icmp slt i32 %87, 1, !dbg !374
  br i1 %88, label %99, label %89, !dbg !375

; <label>:89:                                     ; preds = %85, %80
  %90 = add nuw nsw i32 %81, 1, !dbg !377
  call void @llvm.dbg.value(metadata i32 %90, metadata !352, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %90, metadata !352, metadata !DIExpression()), !dbg !379
  %91 = icmp slt i32 %90, %79, !dbg !380
  br i1 %91, label %80, label %92, !dbg !382, !llvm.loop !384

; <label>:92:                                     ; preds = %89
  br label %94, !dbg !387

; <label>:93:                                     ; preds = %66
  br label %94, !dbg !387

; <label>:94:                                     ; preds = %93, %92
  %95 = and i32 %49, 65535, !dbg !387
  %96 = icmp eq i32 %95, 33024, !dbg !390
  %97 = icmp ugt i16 %41, 3, !dbg !391
  %98 = and i1 %97, %96, !dbg !392
  br i1 %98, label %100, label %158, !dbg !392

; <label>:99:                                     ; preds = %85
  br label %100, !dbg !294

; <label>:100:                                    ; preds = %99, %94, %74, %70
  %101 = phi i16 [ 4, %94 ], [ %41, %70 ], [ %41, %74 ], [ %41, %99 ]
  call void @llvm.dbg.value(metadata i16 %101, metadata !248, metadata !DIExpression()), !dbg !294
  %102 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 5, !dbg !393
  %103 = bitcast %struct.btstack_linked_item* %102 to i8*, !dbg !393
  %104 = call i32 @memcmp(i8* nonnull %7, i8* %103, i32 6) #9, !dbg !394
  %105 = icmp ne i32 %104, 0, !dbg !395
  %106 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %30, i32 0, i32 6, i32 0, !dbg !396
  %107 = call i32 @memcmp(i8* nonnull %6, i8* %106, i32 6) #9, !dbg !397
  %108 = icmp ne i32 %107, 0, !dbg !398
  %109 = zext i16 %101 to i32, !dbg !399
  %110 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %16, i32 3, !dbg !401
  %111 = bitcast %struct.btstack_linked_item* %110 to i16*, !dbg !401
  %112 = load i16, i16* %111, align 4, !dbg !401, !tbaa !402
  %113 = zext i16 %112 to i32, !dbg !403
  %114 = icmp ugt i16 %101, %112, !dbg !404
  br i1 %114, label %115, label %121, !dbg !405

; <label>:115:                                    ; preds = %100
  %116 = load i8, i8* @profile_debug_enable, align 1, !dbg !406, !tbaa !203
  %117 = and i8 %116, 4, !dbg !406
  %118 = icmp eq i8 %117, 0, !dbg !406
  br i1 %118, label %158, label %119, !dbg !409

; <label>:119:                                    ; preds = %115
  %120 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0), i32 %113, i32 %109) #9, !dbg !410
  br label %158, !dbg !410

; <label>:121:                                    ; preds = %100
  call void @llvm.dbg.value(metadata i8* null, metadata !255, metadata !DIExpression()), !dbg !412
  %122 = add i16 %101, 28, !dbg !413
  %123 = tail call i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext %122) #10, !dbg !414
  call void @llvm.dbg.value(metadata i8* %123, metadata !255, metadata !DIExpression()), !dbg !412
  %124 = getelementptr inbounds i8, i8* %123, i32 8, !dbg !415
  call void @llvm.dbg.value(metadata i8* %124, metadata !245, metadata !DIExpression()), !dbg !259
  %125 = and i1 %105, %108, !dbg !416
  br i1 %125, label %132, label %126, !dbg !416

; <label>:126:                                    ; preds = %121
  %127 = xor i1 %105, true, !dbg !418
  %128 = or i1 %108, %127, !dbg !421
  br i1 %128, label %129, label %132, !dbg !421

; <label>:129:                                    ; preds = %126
  %130 = and i1 %108, %127, !dbg !422
  %131 = select i1 %130, i8 4, i8 2, !dbg !425
  br label %132

; <label>:132:                                    ; preds = %129, %126, %121
  %133 = phi i8 [ %131, %129 ], [ 0, %121 ], [ 3, %126 ]
  call void @llvm.dbg.value(metadata i16 1, metadata !247, metadata !DIExpression()), !dbg !261
  store i8 %133, i8* %124, align 1, !tbaa !203
  br i1 %108, label %134, label %136, !dbg !427

; <label>:134:                                    ; preds = %132
  %135 = getelementptr inbounds i8, i8* %123, i32 9, !dbg !428
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %135, i8* nonnull %6, i32 6, i32 1, i1 false), !dbg !428
  call void @llvm.dbg.value(metadata i16 7, metadata !247, metadata !DIExpression()), !dbg !261
  br label %136, !dbg !431

; <label>:136:                                    ; preds = %134, %132
  %137 = phi i16 [ 7, %134 ], [ 1, %132 ]
  call void @llvm.dbg.value(metadata i16 %137, metadata !247, metadata !DIExpression()), !dbg !261
  br i1 %105, label %138, label %142, !dbg !432

; <label>:138:                                    ; preds = %136
  %139 = zext i16 %137 to i32, !dbg !433
  %140 = getelementptr inbounds i8, i8* %124, i32 %139, !dbg !433
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %140, i8* nonnull %7, i32 6, i32 1, i1 false), !dbg !433
  %141 = add nuw nsw i16 %137, 6, !dbg !436
  call void @llvm.dbg.value(metadata i16 %141, metadata !247, metadata !DIExpression()), !dbg !261
  br label %142, !dbg !437

; <label>:142:                                    ; preds = %138, %136
  %143 = phi i16 [ %141, %138 ], [ %137, %136 ]
  call void @llvm.dbg.value(metadata i16 %143, metadata !247, metadata !DIExpression()), !dbg !261
  tail call void @big_endian_store_16(i8* nonnull %124, i16 zeroext %143, i16 zeroext %50) #10, !dbg !438
  %144 = add nsw i16 %143, 2, !dbg !439
  call void @llvm.dbg.value(metadata i16 %144, metadata !247, metadata !DIExpression()), !dbg !261
  %145 = zext i16 %144 to i32, !dbg !440
  %146 = getelementptr inbounds i8, i8* %124, i32 %145, !dbg !441
  %147 = getelementptr inbounds i8, i8* %1, i32 14, !dbg !442
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %146, i8* %147, i32 %109, i32 1, i1 false), !dbg !443
  %148 = add i16 %144, %101, !dbg !444
  call void @llvm.dbg.value(metadata i16 %148, metadata !247, metadata !DIExpression()), !dbg !261
  %149 = load i16, i16* %18, align 4, !dbg !445, !tbaa !192
  %150 = tail call i32 @l2cap_send_prepared(i8* nonnull %123, i16 zeroext %149, i16 zeroext %148, i8 zeroext 0) #10, !dbg !446
  call void @llvm.dbg.value(metadata i32 %150, metadata !249, metadata !DIExpression()), !dbg !262
  %151 = icmp eq i32 %150, 0, !dbg !447
  br i1 %151, label %158, label %152, !dbg !449

; <label>:152:                                    ; preds = %142
  %153 = load i8, i8* @profile_debug_enable, align 1, !dbg !450, !tbaa !203
  %154 = and i8 %153, 4, !dbg !450
  %155 = icmp eq i8 %154, 0, !dbg !450
  br i1 %155, label %158, label %156, !dbg !453

; <label>:156:                                    ; preds = %152
  %157 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i32 %150) #9, !dbg !454
  br label %158, !dbg !454

; <label>:158:                                    ; preds = %156, %152, %142, %119, %115, %94, %44, %35, %29, %26, %22
  %159 = phi i32 [ 1, %22 ], [ 1, %26 ], [ 161, %29 ], [ 87, %35 ], [ 0, %44 ], [ 0, %94 ], [ 162, %115 ], [ 162, %119 ], [ %150, %152 ], [ 0, %142 ], [ %150, %156 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #8, !dbg !456
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #8, !dbg !456
  ret i32 %159, !dbg !457
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: optsize
declare i32 @big_endian_read_16(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #5

; Function Attrs: optsize
declare i8* @hci_get_outgoing_acl_packet_buffer(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @big_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @l2cap_send_prepared(i8*, i16 zeroext, i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @bnep_set_net_type_filter(i16 zeroext, %struct.bnep_net_filter_t*, i16 zeroext) local_unnamed_addr #0 !dbg !459 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !463, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata %struct.bnep_net_filter_t* %1, metadata !464, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i16 %2, metadata !465, metadata !DIExpression()), !dbg !469
  %4 = icmp eq %struct.bnep_net_filter_t* %1, null, !dbg !470
  br i1 %4, label %43, label %5, !dbg !472

; <label>:5:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i16 %0, metadata !166, metadata !DIExpression()), !dbg !473
  %6 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !171, metadata !DIExpression()), !dbg !475
  %7 = icmp eq %struct.btstack_linked_item* %6, null, !dbg !476
  br i1 %7, label %20, label %8, !dbg !476

; <label>:8:                                      ; preds = %5
  br label %13, !dbg !477

; <label>:9:                                      ; preds = %13
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 0, i32 0, !dbg !478
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %11, metadata !171, metadata !DIExpression()), !dbg !475
  %12 = icmp eq %struct.btstack_linked_item* %11, null, !dbg !476
  br i1 %12, label %19, label %13, !dbg !476, !llvm.loop !189

; <label>:13:                                     ; preds = %9, %8
  %14 = phi %struct.btstack_linked_item* [ %11, %9 ], [ %6, %8 ]
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 8, !dbg !477
  %16 = bitcast %struct.btstack_linked_item* %15 to i16*, !dbg !477
  %17 = load i16, i16* %16, align 4, !dbg !477, !tbaa !192
  %18 = icmp eq i16 %17, %0, !dbg !479
  br i1 %18, label %27, label %9

; <label>:19:                                     ; preds = %9
  br label %20, !dbg !480

; <label>:20:                                     ; preds = %19, %5
  %21 = load i8, i8* @profile_debug_enable, align 1, !dbg !480, !tbaa !203
  %22 = and i8 %21, 4, !dbg !480
  %23 = icmp eq i8 %22, 0, !dbg !480
  br i1 %23, label %43, label %24, !dbg !484

; <label>:24:                                     ; preds = %20
  %25 = zext i16 %0 to i32, !dbg !485
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i32 %25) #9, !dbg !485
  br label %43, !dbg !485

; <label>:27:                                     ; preds = %13
  %28 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !487
  %29 = bitcast %struct.btstack_linked_item* %28 to i32*, !dbg !487
  %30 = load i32, i32* %29, align 4, !dbg !487, !tbaa !284
  %31 = icmp eq i32 %30, 4, !dbg !489
  br i1 %31, label %32, label %43, !dbg !490

; <label>:32:                                     ; preds = %27
  %33 = icmp ugt i16 %2, 421, !dbg !491
  br i1 %33, label %43, label %34, !dbg !493

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 20, !dbg !494
  %36 = bitcast %struct.btstack_linked_item* %35 to %struct.bnep_net_filter_t**, !dbg !494
  store %struct.bnep_net_filter_t* %1, %struct.bnep_net_filter_t** %36, align 4, !dbg !495, !tbaa !496
  %37 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 21, !dbg !497
  %38 = bitcast %struct.btstack_linked_item* %37 to i16*, !dbg !497
  store i16 %2, i16* %38, align 4, !dbg !498, !tbaa !499
  call void @llvm.dbg.value(metadata i32 8, metadata !500, metadata !DIExpression()), !dbg !506
  %39 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 2, !dbg !508
  %40 = bitcast %struct.btstack_linked_item* %39 to i32*, !dbg !508
  %41 = load i32, i32* %40, align 4, !dbg !508, !tbaa !509
  %42 = or i32 %41, 8, !dbg !510
  store i32 %42, i32* %40, align 4, !dbg !511, !tbaa !509
  br label %43, !dbg !512

; <label>:43:                                     ; preds = %34, %32, %27, %24, %20, %3
  %44 = phi i32 [ 0, %34 ], [ -1, %3 ], [ 1, %20 ], [ 1, %24 ], [ 161, %27 ], [ 162, %32 ]
  ret i32 %44, !dbg !513
}

; Function Attrs: nounwind optsize
define hidden i32 @bnep_set_multicast_filter(i16 zeroext, %struct.bnep_multi_filter_t*, i16 zeroext) local_unnamed_addr #0 !dbg !514 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !518, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata %struct.bnep_multi_filter_t* %1, metadata !519, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i16 %2, metadata !520, metadata !DIExpression()), !dbg !524
  %4 = icmp eq %struct.bnep_multi_filter_t* %1, null, !dbg !525
  br i1 %4, label %43, label %5, !dbg !527

; <label>:5:                                      ; preds = %3
  call void @llvm.dbg.value(metadata i16 %0, metadata !166, metadata !DIExpression()), !dbg !528
  %6 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %6, metadata !171, metadata !DIExpression()), !dbg !530
  %7 = icmp eq %struct.btstack_linked_item* %6, null, !dbg !531
  br i1 %7, label %20, label %8, !dbg !531

; <label>:8:                                      ; preds = %5
  br label %13, !dbg !532

; <label>:9:                                      ; preds = %13
  %10 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 0, i32 0, !dbg !533
  %11 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %10, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %11, metadata !171, metadata !DIExpression()), !dbg !530
  %12 = icmp eq %struct.btstack_linked_item* %11, null, !dbg !531
  br i1 %12, label %19, label %13, !dbg !531, !llvm.loop !189

; <label>:13:                                     ; preds = %9, %8
  %14 = phi %struct.btstack_linked_item* [ %11, %9 ], [ %6, %8 ]
  %15 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 8, !dbg !532
  %16 = bitcast %struct.btstack_linked_item* %15 to i16*, !dbg !532
  %17 = load i16, i16* %16, align 4, !dbg !532, !tbaa !192
  %18 = icmp eq i16 %17, %0, !dbg !534
  br i1 %18, label %27, label %9

; <label>:19:                                     ; preds = %9
  br label %20, !dbg !535

; <label>:20:                                     ; preds = %19, %5
  %21 = load i8, i8* @profile_debug_enable, align 1, !dbg !535, !tbaa !203
  %22 = and i8 %21, 4, !dbg !535
  %23 = icmp eq i8 %22, 0, !dbg !535
  br i1 %23, label %43, label %24, !dbg !539

; <label>:24:                                     ; preds = %20
  %25 = zext i16 %0 to i32, !dbg !540
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i32 %25) #9, !dbg !540
  br label %43, !dbg !540

; <label>:27:                                     ; preds = %13
  %28 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !542
  %29 = bitcast %struct.btstack_linked_item* %28 to i32*, !dbg !542
  %30 = load i32, i32* %29, align 4, !dbg !542, !tbaa !284
  %31 = icmp eq i32 %30, 4, !dbg !544
  br i1 %31, label %32, label %43, !dbg !545

; <label>:32:                                     ; preds = %27
  %33 = icmp ugt i16 %2, 140, !dbg !546
  br i1 %33, label %43, label %34, !dbg !548

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 46, !dbg !549
  %36 = bitcast %struct.btstack_linked_item* %35 to %struct.bnep_multi_filter_t**, !dbg !549
  store %struct.bnep_multi_filter_t* %1, %struct.bnep_multi_filter_t** %36, align 4, !dbg !550, !tbaa !551
  %37 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 47, !dbg !552
  %38 = bitcast %struct.btstack_linked_item* %37 to i16*, !dbg !552
  store i16 %2, i16* %38, align 4, !dbg !553, !tbaa !554
  call void @llvm.dbg.value(metadata i32 32, metadata !500, metadata !DIExpression()), !dbg !555
  %39 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 2, !dbg !557
  %40 = bitcast %struct.btstack_linked_item* %39 to i32*, !dbg !557
  %41 = load i32, i32* %40, align 4, !dbg !557, !tbaa !509
  %42 = or i32 %41, 32, !dbg !558
  store i32 %42, i32* %40, align 4, !dbg !559, !tbaa !509
  br label %43, !dbg !560

; <label>:43:                                     ; preds = %34, %32, %27, %24, %20, %3
  %44 = phi i32 [ 0, %34 ], [ -1, %3 ], [ 1, %20 ], [ 1, %24 ], [ 161, %27 ], [ 162, %32 ]
  ret i32 %44, !dbg !561
}

; Function Attrs: nounwind optsize
define hidden void @bnep_packet_handler(i8 zeroext, i16 zeroext, i8*, i16 zeroext) #0 !dbg !562 {
  %5 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !568, metadata !DIExpression()), !dbg !586
  %6 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %6, metadata !579, metadata !DIExpression()), !dbg !589
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %6, metadata !590, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i8 %0, metadata !564, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i16 %1, metadata !565, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i8* %2, metadata !566, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i16 %3, metadata !567, metadata !DIExpression()), !dbg !607
  switch i8 %0, label %282 [
    i8 4, label %7
    i8 6, label %155
  ], !dbg !608

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i16 0, metadata !596, metadata !DIExpression()), !dbg !609
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i32 0, i32 0, !dbg !610
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %8) #8, !dbg !610
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* null, metadata !600, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i8* %2, metadata !612, metadata !DIExpression()), !dbg !620
  %9 = load i8, i8* %2, align 1, !dbg !622, !tbaa !203
  switch i8 %9, label %154 [
    i8 114, label %10
    i8 112, label %48
    i8 116, label %106
    i8 120, label %106
    i8 113, label %108
  ], !dbg !623

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !624
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %8, i8* %11, i32 6, i32 1, i1 false) #8, !dbg !624
  %12 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 8) #10, !dbg !626
  call void @llvm.dbg.value(metadata i16 %12, metadata !599, metadata !DIExpression()), !dbg !627
  %13 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 10) #10, !dbg !628
  call void @llvm.dbg.value(metadata i16 %13, metadata !597, metadata !DIExpression()), !dbg !629
  %14 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 12) #10, !dbg !630
  call void @llvm.dbg.value(metadata i16 %14, metadata !598, metadata !DIExpression()), !dbg !631
  %15 = icmp eq i16 %13, 15, !dbg !632
  br i1 %15, label %16, label %154, !dbg !634

; <label>:16:                                     ; preds = %10
  %17 = call fastcc %struct.bnep_channel_t* @bnep_channel_for_addr(i8* nonnull %8) #10, !dbg !635
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %17, metadata !600, metadata !DIExpression()), !dbg !611
  %18 = icmp eq %struct.bnep_channel_t* %17, null, !dbg !636
  br i1 %18, label %27, label %19, !dbg !638

; <label>:19:                                     ; preds = %16
  %20 = load i8, i8* @profile_debug_enable, align 1, !dbg !639, !tbaa !203
  %21 = and i8 %20, 4, !dbg !639
  %22 = icmp eq i8 %21, 0, !dbg !639
  br i1 %22, label %26, label %23, !dbg !642

; <label>:23:                                     ; preds = %19
  %24 = zext i16 %14 to i32, !dbg !643
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i32 0, i32 0), i32 %24) #10, !dbg !643
  br label %26, !dbg !643

; <label>:26:                                     ; preds = %23, %19
  call void @l2cap_decline_connection_internal(i16 zeroext %14, i8 zeroext 7) #10, !dbg !645
  br label %154, !dbg !646

; <label>:27:                                     ; preds = %16
  %28 = call fastcc %struct.bnep_channel_t* @bnep_channel_create_for_addr(i8* nonnull %8) #10, !dbg !647
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %28, metadata !600, metadata !DIExpression()), !dbg !611
  %29 = icmp eq %struct.bnep_channel_t* %28, null, !dbg !648
  br i1 %29, label %30, label %38, !dbg !650

; <label>:30:                                     ; preds = %27
  %31 = load i8, i8* @profile_debug_enable, align 1, !dbg !651, !tbaa !203
  %32 = and i8 %31, 4, !dbg !651
  %33 = icmp eq i8 %32, 0, !dbg !651
  br i1 %33, label %37, label %34, !dbg !654

; <label>:34:                                     ; preds = %30
  %35 = zext i16 %14 to i32, !dbg !655
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.14, i32 0, i32 0), i32 %35) #10, !dbg !655
  br label %37, !dbg !655

; <label>:37:                                     ; preds = %34, %30
  call void @l2cap_decline_connection_internal(i16 zeroext %14, i8 zeroext 4) #10, !dbg !657
  br label %154, !dbg !658

; <label>:38:                                     ; preds = %27
  %39 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %28, i32 0, i32 8, !dbg !659
  store i16 %12, i16* %39, align 2, !dbg !660, !tbaa !661
  %40 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %28, i32 0, i32 7, !dbg !662
  store i16 %14, i16* %40, align 4, !dbg !663, !tbaa !192
  %41 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %28, i32 0, i32 1, !dbg !664
  store i32 2, i32* %41, align 4, !dbg !665, !tbaa !284
  %42 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !666, !tbaa !203
  %43 = icmp slt i8 %42, 0, !dbg !666
  br i1 %43, label %44, label %47, !dbg !668

; <label>:44:                                     ; preds = %38
  %45 = zext i16 %14 to i32, !dbg !669
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.15, i32 0, i32 0), i32 %45) #10, !dbg !669
  br label %47, !dbg !669

; <label>:47:                                     ; preds = %44, %38
  call void @l2cap_accept_connection_internal(i16 zeroext %14) #10, !dbg !671
  br label %154, !dbg !672

; <label>:48:                                     ; preds = %7
  %49 = getelementptr inbounds i8, i8* %2, i32 2, !dbg !673
  %50 = load i8, i8* %49, align 1, !dbg !673, !tbaa !203
  call void @llvm.dbg.value(metadata i8 %50, metadata !601, metadata !DIExpression()), !dbg !674
  %51 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !675, !tbaa !203
  %52 = icmp slt i8 %51, 0, !dbg !675
  br i1 %52, label %53, label %56, !dbg !677

; <label>:53:                                     ; preds = %48
  %54 = zext i8 %50 to i32, !dbg !678
  %55 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.16, i32 0, i32 0), i32 %54) #10, !dbg !678
  br label %56, !dbg !678

; <label>:56:                                     ; preds = %53, %48
  %57 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 9) #10, !dbg !680
  call void @llvm.dbg.value(metadata i16 %57, metadata !599, metadata !DIExpression()), !dbg !627
  %58 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 13) #10, !dbg !681
  call void @llvm.dbg.value(metadata i16 %58, metadata !598, metadata !DIExpression()), !dbg !631
  %59 = getelementptr inbounds i8, i8* %2, i32 3, !dbg !682
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %8, i8* %59, i32 6, i32 1, i1 false) #8, !dbg !682
  %60 = call fastcc %struct.bnep_channel_t* @bnep_channel_for_addr(i8* nonnull %8) #10, !dbg !683
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %60, metadata !600, metadata !DIExpression()), !dbg !611
  %61 = icmp eq %struct.bnep_channel_t* %60, null, !dbg !684
  br i1 %61, label %62, label %68, !dbg !686

; <label>:62:                                     ; preds = %56
  %63 = load i8, i8* @profile_debug_enable, align 1, !dbg !687, !tbaa !203
  %64 = and i8 %63, 4, !dbg !687
  %65 = icmp eq i8 %64, 0, !dbg !687
  br i1 %65, label %154, label %66, !dbg !690

; <label>:66:                                     ; preds = %62
  %67 = call i32 @puts(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @str, i32 0, i32 0)) #8, !dbg !691
  br label %154, !dbg !691

; <label>:68:                                     ; preds = %56
  %69 = icmp eq i8 %50, 0, !dbg !693
  br i1 %69, label %73, label %70, !dbg !695

; <label>:70:                                     ; preds = %68
  call fastcc void @bnep_emit_open_channel_complete(%struct.bnep_channel_t* nonnull %60, i8 zeroext %50) #10, !dbg !696
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %60, metadata !698, metadata !DIExpression()), !dbg !703
  %71 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %60, i32 0, i32 0, !dbg !705
  %72 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** nonnull @bnep_channels, %struct.btstack_linked_item* %71) #10, !dbg !706
  call void @btstack_memory_bnep_channel_free(%struct.bnep_channel_t* nonnull %60) #10, !dbg !707
  br label %154, !dbg !708

; <label>:73:                                     ; preds = %68
  %74 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !709, !tbaa !178
  %75 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %74, i32 0, i32 5, !dbg !711
  %76 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %75, align 4, !dbg !711, !tbaa !712
  %77 = icmp eq void (i8*, i32, i32, i8)* %76, null, !dbg !709
  br i1 %77, label %79, label %78, !dbg !714

; <label>:78:                                     ; preds = %73
  call void %76(i8* nonnull %8, i32 1, i32 2048, i8 zeroext 1) #10, !dbg !715
  br label %79, !dbg !717

; <label>:79:                                     ; preds = %78, %73
  %80 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %60, i32 0, i32 1, !dbg !718
  %81 = load i32, i32* %80, align 4, !dbg !718, !tbaa !284
  switch i32 %81, label %100 [
    i32 1, label %82
    i32 2, label %96
  ], !dbg !719

; <label>:82:                                     ; preds = %79
  %83 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !720, !tbaa !203
  %84 = icmp slt i8 %83, 0, !dbg !720
  br i1 %84, label %85, label %87, !dbg !723

; <label>:85:                                     ; preds = %82
  %86 = call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.58, i32 0, i32 0)) #8, !dbg !724
  br label %87, !dbg !724

; <label>:87:                                     ; preds = %85, %82
  %88 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %60, i32 0, i32 7, !dbg !726
  store i16 %58, i16* %88, align 4, !dbg !727, !tbaa !192
  %89 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %60, i32 0, i32 8, !dbg !728
  store i16 %57, i16* %89, align 2, !dbg !729, !tbaa !661
  store i32 3, i32* %80, align 4, !dbg !730, !tbaa !284
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %60, metadata !505, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 2, metadata !500, metadata !DIExpression()), !dbg !733
  %90 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %60, i32 0, i32 2, !dbg !734
  %91 = load i32, i32* %90, align 4, !dbg !734, !tbaa !509
  %92 = or i32 %91, 2, !dbg !735
  store i32 %92, i32* %90, align 4, !dbg !736, !tbaa !509
  %93 = call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 17) #10, !dbg !737
  %94 = call fastcc zeroext i16 @bnep_max_frame_size_for_l2cap_mtu(i16 zeroext %93) #10, !dbg !738
  %95 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %60, i32 0, i32 3, !dbg !740
  store i16 %94, i16* %95, align 4, !dbg !741, !tbaa !402
  br label %154, !dbg !742

; <label>:96:                                     ; preds = %79
  %97 = call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 17) #10, !dbg !743
  %98 = call fastcc zeroext i16 @bnep_max_frame_size_for_l2cap_mtu(i16 zeroext %97) #10, !dbg !744
  %99 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %60, i32 0, i32 3, !dbg !745
  store i16 %98, i16* %99, align 4, !dbg !746, !tbaa !402
  br label %154, !dbg !747

; <label>:100:                                    ; preds = %79
  %101 = load i8, i8* @profile_debug_enable, align 1, !dbg !748, !tbaa !203
  %102 = and i8 %101, 4, !dbg !748
  %103 = icmp eq i8 %102, 0, !dbg !748
  br i1 %103, label %154, label %104, !dbg !750

; <label>:104:                                    ; preds = %100
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i32 0, i32 0), i32 %81) #10, !dbg !751
  br label %154, !dbg !751

; <label>:106:                                    ; preds = %7, %7
  call void @llvm.dbg.value(metadata i8* %2, metadata !753, metadata !DIExpression()), !dbg !758
  %107 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 2) #10, !dbg !760
  tail call void @bnep_handle_can_send_now(i16 zeroext %107) #10, !dbg !761
  br label %154, !dbg !763

; <label>:108:                                    ; preds = %7
  %109 = tail call zeroext i16 @little_endian_read_16(i8* nonnull %2, i32 2) #10, !dbg !764
  call void @llvm.dbg.value(metadata i16 %109, metadata !598, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i16 %109, metadata !166, metadata !DIExpression()), !dbg !765
  %110 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %110, metadata !171, metadata !DIExpression()), !dbg !767
  %111 = icmp eq %struct.btstack_linked_item* %110, null, !dbg !768
  br i1 %111, label %126, label %112, !dbg !768

; <label>:112:                                    ; preds = %108
  br label %117, !dbg !769

; <label>:113:                                    ; preds = %117
  %114 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 0, i32 0, !dbg !770
  %115 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %114, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %115, metadata !171, metadata !DIExpression()), !dbg !767
  %116 = icmp eq %struct.btstack_linked_item* %115, null, !dbg !768
  br i1 %116, label %124, label %117, !dbg !768, !llvm.loop !189

; <label>:117:                                    ; preds = %113, %112
  %118 = phi %struct.btstack_linked_item* [ %115, %113 ], [ %110, %112 ]
  %119 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %118, i32 8, !dbg !769
  %120 = bitcast %struct.btstack_linked_item* %119 to i16*, !dbg !769
  %121 = load i16, i16* %120, align 4, !dbg !769, !tbaa !192
  %122 = icmp eq i16 %121, %109, !dbg !771
  %123 = bitcast %struct.btstack_linked_item* %118 to %struct.bnep_channel_t*, !dbg !772
  br i1 %122, label %124, label %113

; <label>:124:                                    ; preds = %117, %113
  %125 = phi %struct.bnep_channel_t* [ %123, %117 ], [ null, %113 ]
  br label %126, !dbg !611

; <label>:126:                                    ; preds = %124, %108
  %127 = phi %struct.bnep_channel_t* [ null, %108 ], [ %125, %124 ]
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %127, metadata !600, metadata !DIExpression()), !dbg !611
  %128 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !773, !tbaa !203
  %129 = icmp slt i8 %128, 0, !dbg !773
  br i1 %129, label %130, label %133, !dbg !775

; <label>:130:                                    ; preds = %126
  %131 = zext i16 %109 to i32, !dbg !776
  %132 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0), i32 %131, %struct.bnep_channel_t* %127) #10, !dbg !776
  br label %133, !dbg !776

; <label>:133:                                    ; preds = %130, %126
  %134 = icmp eq %struct.bnep_channel_t* %127, null, !dbg !778
  br i1 %134, label %154, label %135, !dbg !780

; <label>:135:                                    ; preds = %133
  %136 = load %struct.user_interface_handler*, %struct.user_interface_handler** @user_interface, align 4, !dbg !781, !tbaa !178
  %137 = getelementptr inbounds %struct.user_interface_handler, %struct.user_interface_handler* %136, i32 0, i32 5, !dbg !783
  %138 = load void (i8*, i32, i32, i8)*, void (i8*, i32, i32, i8)** %137, align 4, !dbg !783, !tbaa !712
  %139 = icmp eq void (i8*, i32, i32, i8)* %138, null, !dbg !781
  br i1 %139, label %142, label %140, !dbg !784

; <label>:140:                                    ; preds = %135
  %141 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %127, i32 0, i32 6, i32 0, !dbg !785
  tail call void %138(i8* %141, i32 0, i32 2048, i8 zeroext 1) #10, !dbg !787
  br label %142, !dbg !788

; <label>:142:                                    ; preds = %140, %135
  %143 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !789, !tbaa !203
  %144 = icmp slt i8 %143, 0, !dbg !789
  %145 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %127, i32 0, i32 1
  br i1 %144, label %146, label %149, !dbg !791

; <label>:146:                                    ; preds = %142
  %147 = load i32, i32* %145, align 4, !dbg !792, !tbaa !284
  %148 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0), i32 %147) #10, !dbg !792
  br label %149, !dbg !792

; <label>:149:                                    ; preds = %146, %142
  %150 = load i32, i32* %145, align 4, !dbg !794, !tbaa !284
  %151 = add i32 %150, -2, !dbg !795
  %152 = icmp ult i32 %151, 3, !dbg !795
  br i1 %152, label %153, label %154, !dbg !795

; <label>:153:                                    ; preds = %149
  tail call fastcc void @bnep_channel_finalize(%struct.bnep_channel_t* nonnull %127) #10, !dbg !796
  br label %154, !dbg !798

; <label>:154:                                    ; preds = %153, %149, %133, %106, %104, %100, %96, %87, %70, %66, %62, %47, %37, %26, %10, %7
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %8) #8, !dbg !799
  br label %282, !dbg !800

; <label>:155:                                    ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !574, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i16 0, metadata !578, metadata !DIExpression()), !dbg !802
  %156 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i32 0, i32 0, !dbg !803
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %156) #8, !dbg !803
  %157 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i32 0, i32 0, !dbg !804
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %157), !dbg !804
  call void @llvm.dbg.value(metadata i16 -1, metadata !580, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* null, metadata !581, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i16 %1, metadata !166, metadata !DIExpression()), !dbg !807
  %158 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %158, metadata !171, metadata !DIExpression()), !dbg !809
  %159 = icmp eq %struct.btstack_linked_item* %158, null, !dbg !810
  br i1 %159, label %281, label %160, !dbg !810

; <label>:160:                                    ; preds = %155
  br label %165, !dbg !811

; <label>:161:                                    ; preds = %165
  %162 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %166, i32 0, i32 0, !dbg !812
  %163 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %162, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %163, metadata !171, metadata !DIExpression()), !dbg !809
  %164 = icmp eq %struct.btstack_linked_item* %163, null, !dbg !810
  br i1 %164, label %280, label %165, !dbg !810, !llvm.loop !189

; <label>:165:                                    ; preds = %161, %160
  %166 = phi %struct.btstack_linked_item* [ %163, %161 ], [ %158, %160 ]
  %167 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %166, i32 8, !dbg !811
  %168 = bitcast %struct.btstack_linked_item* %167 to i16*, !dbg !811
  %169 = load i16, i16* %168, align 4, !dbg !811, !tbaa !192
  %170 = icmp eq i16 %169, %1, !dbg !813
  br i1 %170, label %171, label %161

; <label>:171:                                    ; preds = %165
  %172 = bitcast %struct.btstack_linked_item* %166 to %struct.bnep_channel_t*, !dbg !814
  %173 = zext i16 %3 to i32, !dbg !815
  %174 = icmp ult i16 %3, 2, !dbg !817
  br i1 %174, label %281, label %175, !dbg !818

; <label>:175:                                    ; preds = %171
  %176 = load i8, i8* %2, align 1, !dbg !819, !tbaa !203
  %177 = and i8 %176, 127, !dbg !819
  call void @llvm.dbg.value(metadata i8 %177, metadata !575, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i16 1, metadata !578, metadata !DIExpression()), !dbg !802
  %178 = trunc i8 %176 to i7, !dbg !821
  switch i7 %178, label %207 [
    i7 0, label %179
    i7 2, label %184
    i7 3, label %190
    i7 4, label %196
    i7 1, label %201
  ], !dbg !821

; <label>:179:                                    ; preds = %175
  %180 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !822
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %157, i8* %180, i32 6, i32 1, i1 false) #8, !dbg !822
  call void @llvm.dbg.value(metadata i16 7, metadata !578, metadata !DIExpression()), !dbg !802
  %181 = getelementptr inbounds i8, i8* %2, i32 7, !dbg !824
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %156, i8* %181, i32 6, i32 1, i1 false) #8, !dbg !824
  call void @llvm.dbg.value(metadata i16 13, metadata !578, metadata !DIExpression()), !dbg !802
  %182 = tail call i32 @big_endian_read_16(i8* nonnull %2, i32 13) #10, !dbg !825
  %183 = trunc i32 %182 to i16, !dbg !825
  call void @llvm.dbg.value(metadata i16 %183, metadata !580, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i16 15, metadata !578, metadata !DIExpression()), !dbg !802
  br label %207, !dbg !826

; <label>:184:                                    ; preds = %175
  %185 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %166, i32 5, !dbg !827
  %186 = bitcast %struct.btstack_linked_item* %185 to i8*, !dbg !827
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %157, i8* %186, i32 6, i32 1, i1 false) #8, !dbg !827
  %187 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %172, i32 0, i32 6, i32 0, !dbg !828
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %156, i8* %187, i32 6, i32 1, i1 false) #8, !dbg !828
  %188 = tail call i32 @big_endian_read_16(i8* nonnull %2, i32 1) #10, !dbg !829
  %189 = trunc i32 %188 to i16, !dbg !829
  call void @llvm.dbg.value(metadata i16 %189, metadata !580, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i16 3, metadata !578, metadata !DIExpression()), !dbg !802
  br label %207, !dbg !830

; <label>:190:                                    ; preds = %175
  %191 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %166, i32 5, !dbg !831
  %192 = bitcast %struct.btstack_linked_item* %191 to i8*, !dbg !831
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %157, i8* %192, i32 6, i32 1, i1 false) #8, !dbg !831
  %193 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %156, i8* %193, i32 6, i32 1, i1 false) #8, !dbg !832
  call void @llvm.dbg.value(metadata i16 7, metadata !578, metadata !DIExpression()), !dbg !802
  %194 = tail call i32 @big_endian_read_16(i8* nonnull %2, i32 7) #10, !dbg !833
  %195 = trunc i32 %194 to i16, !dbg !833
  call void @llvm.dbg.value(metadata i16 %195, metadata !580, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i16 9, metadata !578, metadata !DIExpression()), !dbg !802
  br label %207, !dbg !834

; <label>:196:                                    ; preds = %175
  %197 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !835
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %157, i8* %197, i32 6, i32 1, i1 false) #8, !dbg !835
  call void @llvm.dbg.value(metadata i16 7, metadata !578, metadata !DIExpression()), !dbg !802
  %198 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %172, i32 0, i32 6, i32 0, !dbg !836
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %156, i8* %198, i32 6, i32 1, i1 false) #8, !dbg !836
  %199 = tail call i32 @big_endian_read_16(i8* nonnull %2, i32 7) #10, !dbg !837
  %200 = trunc i32 %199 to i16, !dbg !837
  call void @llvm.dbg.value(metadata i16 %200, metadata !580, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i16 9, metadata !578, metadata !DIExpression()), !dbg !802
  br label %207, !dbg !838

; <label>:201:                                    ; preds = %175
  %202 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !839
  %203 = add i16 %3, -1, !dbg !840
  %204 = tail call fastcc i32 @bnep_handle_control_packet(%struct.bnep_channel_t* nonnull %172, i8* %202, i16 zeroext %203, i32 0) #10, !dbg !841
  call void @llvm.dbg.value(metadata i32 %204, metadata !574, metadata !DIExpression()), !dbg !801
  %205 = add nsw i32 %204, 1, !dbg !842
  %206 = trunc i32 %205 to i16, !dbg !842
  call void @llvm.dbg.value(metadata i16 %206, metadata !578, metadata !DIExpression()), !dbg !802
  br label %207, !dbg !843

; <label>:207:                                    ; preds = %201, %196, %190, %184, %179, %175
  %208 = phi i16 [ 1, %175 ], [ %206, %201 ], [ 9, %196 ], [ 9, %190 ], [ 3, %184 ], [ 15, %179 ]
  %209 = phi i16 [ -1, %175 ], [ -1, %201 ], [ %200, %196 ], [ %195, %190 ], [ %189, %184 ], [ %183, %179 ]
  call void @llvm.dbg.value(metadata i16 %209, metadata !580, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i16 %208, metadata !578, metadata !DIExpression()), !dbg !802
  %210 = icmp slt i8 %176, 0, !dbg !844
  br i1 %210, label %211, label %257, !dbg !845, !llvm.loop !846

; <label>:211:                                    ; preds = %207
  br label %212, !dbg !802

; <label>:212:                                    ; preds = %252, %211
  %213 = phi i16 [ %254, %252 ], [ %208, %211 ]
  call void @llvm.dbg.value(metadata i16 %213, metadata !578, metadata !DIExpression()), !dbg !802
  %214 = zext i16 %213 to i32, !dbg !849
  %215 = getelementptr inbounds i8, i8* %2, i32 %214, !dbg !849
  %216 = load i8, i8* %215, align 1, !dbg !849, !tbaa !203
  %217 = add i16 %213, 1, !dbg !850
  call void @llvm.dbg.value(metadata i16 %217, metadata !578, metadata !DIExpression()), !dbg !802
  %218 = zext i16 %217 to i32, !dbg !851
  %219 = getelementptr inbounds i8, i8* %2, i32 %218, !dbg !851
  %220 = load i8, i8* %219, align 1, !dbg !851, !tbaa !203
  call void @llvm.dbg.value(metadata i8 %220, metadata !582, metadata !DIExpression()), !dbg !852
  %221 = add i16 %213, 2, !dbg !853
  call void @llvm.dbg.value(metadata i16 %221, metadata !578, metadata !DIExpression()), !dbg !802
  %222 = zext i16 %221 to i32, !dbg !854
  %223 = sub nsw i32 %173, %222, !dbg !856
  %224 = zext i8 %220 to i32, !dbg !857
  %225 = icmp slt i32 %223, %224, !dbg !858
  br i1 %225, label %226, label %232, !dbg !859

; <label>:226:                                    ; preds = %212
  %227 = load i8, i8* @profile_debug_enable, align 1, !dbg !860, !tbaa !203
  %228 = and i8 %227, 4, !dbg !860
  %229 = icmp eq i8 %228, 0, !dbg !860
  br i1 %229, label %281, label %230, !dbg !863

; <label>:230:                                    ; preds = %226
  %231 = tail call i32 @puts(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @str.61, i32 0, i32 0)) #8, !dbg !864
  br label %281, !dbg !864

; <label>:232:                                    ; preds = %212
  %233 = and i8 %216, 127, !dbg !849
  %234 = icmp eq i8 %233, 0, !dbg !866
  br i1 %234, label %235, label %246, !dbg !866

; <label>:235:                                    ; preds = %232
  %236 = getelementptr inbounds i8, i8* %2, i32 %222, !dbg !867
  %237 = zext i8 %220 to i16, !dbg !870
  %238 = tail call fastcc i32 @bnep_handle_control_packet(%struct.bnep_channel_t* nonnull %172, i8* %236, i16 zeroext %237, i32 1) #10, !dbg !871
  %239 = icmp eq i32 %224, %238, !dbg !872
  br i1 %239, label %252, label %240, !dbg !873

; <label>:240:                                    ; preds = %235
  %241 = load i8, i8* @profile_debug_enable, align 1, !dbg !874, !tbaa !203
  %242 = and i8 %241, 4, !dbg !874
  %243 = icmp eq i8 %242, 0, !dbg !874
  br i1 %243, label %252, label %244, !dbg !877

; <label>:244:                                    ; preds = %240
  %245 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @str.60, i32 0, i32 0)) #8, !dbg !878
  br label %252, !dbg !878

; <label>:246:                                    ; preds = %232
  %247 = load i8, i8* @profile_debug_enable, align 1, !dbg !880, !tbaa !203
  %248 = and i8 %247, 4, !dbg !880
  %249 = icmp eq i8 %248, 0, !dbg !880
  br i1 %249, label %252, label %250, !dbg !882

; <label>:250:                                    ; preds = %246
  %251 = tail call i32 @puts(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @str.59, i32 0, i32 0)) #8, !dbg !883
  br label %252, !dbg !883

; <label>:252:                                    ; preds = %250, %246, %244, %240, %235
  %253 = add nuw nsw i32 %224, %222
  %254 = trunc i32 %253 to i16
  call void @llvm.dbg.value(metadata i16 %254, metadata !578, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i16 %254, metadata !578, metadata !DIExpression()), !dbg !802
  %255 = icmp slt i8 %216, 0, !dbg !885
  br i1 %255, label %212, label %256, !dbg !885, !llvm.loop !846

; <label>:256:                                    ; preds = %252
  br label %257, !dbg !802

; <label>:257:                                    ; preds = %256, %207
  %258 = phi i16 [ %208, %207 ], [ %254, %256 ]
  call void @llvm.dbg.value(metadata i16 %258, metadata !578, metadata !DIExpression()), !dbg !802
  %259 = icmp eq i8 %177, 1, !dbg !887
  %260 = icmp eq i16 %209, -1, !dbg !889
  %261 = or i1 %259, %260, !dbg !891
  br i1 %261, label %281, label %262, !dbg !891

; <label>:262:                                    ; preds = %257
  %263 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %166, i32 1, !dbg !892
  %264 = bitcast %struct.btstack_linked_item* %263 to i32*, !dbg !892
  %265 = load i32, i32* %264, align 4, !dbg !892, !tbaa !284
  %266 = icmp eq i32 %265, 4, !dbg !895
  br i1 %266, label %267, label %281, !dbg !896

; <label>:267:                                    ; preds = %262
  %268 = zext i16 %258 to i32, !dbg !897
  %269 = getelementptr inbounds i8, i8* %2, i32 %268, !dbg !899
  call void @llvm.dbg.value(metadata i8* %157, metadata !900, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata i8* %156, metadata !906, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i16 %209, metadata !907, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8* %269, metadata !908, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i16 0, metadata !910, metadata !DIExpression()), !dbg !917
  %270 = getelementptr inbounds i8, i8* %269, i32 -14, !dbg !918
  call void @llvm.dbg.value(metadata i8* %270, metadata !911, metadata !DIExpression()), !dbg !919
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %270, i8* nonnull %157, i32 6, i32 1, i1 false) #8, !dbg !920
  call void @llvm.dbg.value(metadata i16 6, metadata !910, metadata !DIExpression()), !dbg !917
  %271 = getelementptr inbounds i8, i8* %269, i32 -8, !dbg !921
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %271, i8* nonnull %156, i32 6, i32 1, i1 false) #8, !dbg !921
  call void @llvm.dbg.value(metadata i16 12, metadata !910, metadata !DIExpression()), !dbg !917
  tail call void @big_endian_store_16(i8* %270, i16 zeroext 12, i16 zeroext %209) #10, !dbg !922
  %272 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %166, i32 55, !dbg !923
  %273 = bitcast %struct.btstack_linked_item* %272 to void (i8, i16, i8*, i16)**, !dbg !923
  %274 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %273, align 4, !dbg !923, !tbaa !925
  %275 = icmp eq void (i8, i16, i8*, i16)* %274, null, !dbg !926
  br i1 %275, label %281, label %276, !dbg !927

; <label>:276:                                    ; preds = %267
  %277 = load i16, i16* %168, align 4, !dbg !928, !tbaa !192
  %278 = add i16 %3, 14, !dbg !930
  %279 = sub i16 %278, %258, !dbg !931
  tail call void %274(i8 zeroext 11, i16 zeroext %277, i8* %270, i16 zeroext %279) #10, !dbg !932
  br label %281, !dbg !933

; <label>:280:                                    ; preds = %161
  br label %281, !dbg !934

; <label>:281:                                    ; preds = %280, %276, %267, %262, %257, %230, %226, %171, %155
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %157), !dbg !934
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %156) #8, !dbg !934
  br label %282, !dbg !935

; <label>:282:                                    ; preds = %281, %154, %4
  ret void, !dbg !936
}

; Function Attrs: nounwind optsize
define hidden void @bnep_handle_can_send_now(i16 zeroext) local_unnamed_addr #0 !dbg !937 {
  %2 = alloca [10 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !952, metadata !DIExpression()), !dbg !964
  %3 = alloca [4 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %3, metadata !988, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i16 %0, metadata !939, metadata !DIExpression()), !dbg !997
  %4 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !dbg !998, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !940, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %4, metadata !940, metadata !DIExpression()), !dbg !999
  %5 = icmp eq %struct.btstack_linked_item* %4, null, !dbg !1000
  br i1 %5, label %209, label %6, !dbg !1000

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i16 %0, 0
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 1
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 0
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 1
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i32 0, i32 2
  br label %13, !dbg !1000

; <label>:13:                                     ; preds = %23, %6
  %14 = phi %struct.btstack_linked_item* [ %4, %6 ], [ %17, %23 ]
  %15 = bitcast %struct.btstack_linked_item* %14 to %struct.bnep_channel_t*
  %16 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 0, i32 0, !dbg !1002
  %17 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %16, align 4, !dbg !1002, !tbaa !1003
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %17, metadata !941, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %15, metadata !942, metadata !DIExpression()), !dbg !1005
  br i1 %7, label %25, label %18, !dbg !1006

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 8, !dbg !1007
  %20 = bitcast %struct.btstack_linked_item* %19 to i16*, !dbg !1007
  %21 = load i16, i16* %20, align 4, !dbg !1007, !tbaa !192
  %22 = icmp eq i16 %21, %0, !dbg !1011
  br i1 %22, label %33, label %23, !dbg !1012

; <label>:23:                                     ; preds = %205, %200, %197, %188, %179, %178, %159, %154, %148, %144, %125, %120, %114, %109, %107, %74, %25, %18
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %17, metadata !940, metadata !DIExpression()), !dbg !999
  %24 = icmp eq %struct.btstack_linked_item* %17, null, !dbg !1000
  br i1 %24, label %208, label %13, !dbg !1000

; <label>:25:                                     ; preds = %13
  %26 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 56, !dbg !1013
  %27 = bitcast %struct.btstack_linked_item* %26 to i8*, !dbg !1013
  %28 = load i8, i8* %27, align 4, !dbg !1013, !tbaa !233
  %29 = icmp eq i8 %28, 0, !dbg !1016
  br i1 %29, label %23, label %30, !dbg !1017

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 8, !dbg !1018
  %32 = bitcast %struct.btstack_linked_item* %31 to i16*, !dbg !1018
  br label %33, !dbg !1017

; <label>:33:                                     ; preds = %30, %18
  %34 = phi i16* [ %32, %30 ], [ %20, %18 ], !dbg !1018
  %35 = call i32 @putchar(i32 88) #9, !dbg !1020
  %36 = load i16, i16* %34, align 4, !dbg !1018, !tbaa !192
  %37 = call i32 @l2cap_can_send_packet_now(i16 zeroext %36) #10, !dbg !1021
  %38 = icmp eq i32 %37, 0, !dbg !1021
  br i1 %38, label %208, label %39, !dbg !1022

; <label>:39:                                     ; preds = %33
  call void @llvm.dbg.value(metadata %struct.bnep_channel_event* undef, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !1023
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !1024, metadata !DIExpression()) #8, !dbg !1031
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !1035, metadata !DIExpression()) #8, !dbg !1042
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !1046, metadata !DIExpression()) #8, !dbg !1056
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* undef, metadata !975, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata %struct.bnep_channel_event* undef, metadata !976, metadata !DIExpression()), !dbg !1061
  %40 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1062, !tbaa !203
  %41 = icmp slt i8 %40, 0, !dbg !1062
  br i1 %41, label %45, label %42, !dbg !1064

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 2, !dbg !1065
  %44 = bitcast %struct.btstack_linked_item* %43 to i32*, !dbg !1065
  br label %53, !dbg !1064

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !1066
  %47 = bitcast %struct.btstack_linked_item* %46 to i32*, !dbg !1066
  %48 = load i32, i32* %47, align 4, !dbg !1066, !tbaa !284
  %49 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 2, !dbg !1066
  %50 = bitcast %struct.btstack_linked_item* %49 to i32*, !dbg !1066
  %51 = load i32, i32* %50, align 4, !dbg !1066, !tbaa !509
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.55, i32 0, i32 0), i32 %48, i32 %51, i32 0) #10, !dbg !1066
  br label %53, !dbg !1066

; <label>:53:                                     ; preds = %45, %42
  %54 = phi i32* [ %44, %42 ], [ %50, %45 ], !dbg !1065
  %55 = load i32, i32* %54, align 4, !dbg !1065, !tbaa !509
  %56 = and i32 %55, 1, !dbg !1068
  %57 = icmp eq i32 %56, 0, !dbg !1068
  br i1 %57, label %75, label %58, !dbg !1069

; <label>:58:                                     ; preds = %53
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* undef, metadata !1070, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i32 1, metadata !1073, metadata !DIExpression()), !dbg !1076
  %59 = and i32 %55, -2, !dbg !1077
  store i32 %59, i32* %54, align 4, !dbg !1078, !tbaa !509
  %60 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 10, !dbg !1079
  %61 = bitcast %struct.btstack_linked_item* %60 to i8*, !dbg !1079
  %62 = load i8, i8* %61, align 4, !dbg !1079, !tbaa !1080
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1081
  call void @llvm.dbg.value(metadata i16 0, metadata !959, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 0, metadata !960, metadata !DIExpression()), !dbg !1083
  %63 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !1084
  %64 = bitcast %struct.btstack_linked_item* %63 to i32*, !dbg !1084
  %65 = load i32, i32* %64, align 4, !dbg !1084, !tbaa !284
  %66 = icmp eq i32 %65, 1, !dbg !1086
  br i1 %66, label %74, label %67, !dbg !1087

; <label>:67:                                     ; preds = %58
  %68 = load i16, i16* %34, align 4, !dbg !1088, !tbaa !192
  %69 = call i32 @l2cap_can_send_packet_now(i16 zeroext %68) #10, !dbg !1090
  %70 = icmp eq i32 %69, 0, !dbg !1090
  br i1 %70, label %74, label %71, !dbg !1091

; <label>:71:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i16 1, metadata !959, metadata !DIExpression()), !dbg !1082
  store i8 1, i8* %10, align 1, !dbg !1092, !tbaa !203
  call void @llvm.dbg.value(metadata i16 2, metadata !959, metadata !DIExpression()), !dbg !1082
  store i8 0, i8* %11, align 1, !dbg !1093, !tbaa !203
  call void @llvm.dbg.value(metadata i16 3, metadata !959, metadata !DIExpression()), !dbg !1082
  store i8 %62, i8* %12, align 1, !dbg !1094, !tbaa !203
  %72 = load i16, i16* %34, align 4, !dbg !1095, !tbaa !192
  %73 = call i32 @l2cap_send_internal(i16 zeroext %72, i8* nonnull %10, i16 zeroext 3, i8 zeroext 0) #10, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %73, metadata !960, metadata !DIExpression()), !dbg !1083
  br label %74, !dbg !1097

; <label>:74:                                     ; preds = %71, %67, %58
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1098
  br label %23, !dbg !1099

; <label>:75:                                     ; preds = %53
  %76 = and i32 %55, 2, !dbg !1100
  %77 = icmp eq i32 %76, 0, !dbg !1100
  br i1 %77, label %95, label %78, !dbg !1101

; <label>:78:                                     ; preds = %75
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %15, metadata !1070, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i32 2, metadata !1073, metadata !DIExpression()), !dbg !1104
  %79 = and i32 %55, -3, !dbg !1105
  store i32 %79, i32* %54, align 4, !dbg !1106, !tbaa !509
  %80 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !1107
  %81 = bitcast %struct.btstack_linked_item* %80 to i32*, !dbg !1107
  store i32 3, i32* %81, align 4, !dbg !1108, !tbaa !284
  %82 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 9, !dbg !1109
  %83 = bitcast %struct.btstack_linked_item* %82 to i16*, !dbg !1109
  %84 = load i16, i16* %83, align 4, !dbg !1109, !tbaa !1110
  %85 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %15, i32 0, i32 10, !dbg !1111
  %86 = load i16, i16* %85, align 2, !dbg !1111, !tbaa !1112
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1113
  call void @llvm.dbg.value(metadata i16 0, metadata !1054, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i32 0, metadata !1055, metadata !DIExpression()), !dbg !1115
  %87 = load i16, i16* %34, align 4, !dbg !1116, !tbaa !192
  %88 = call i32 @l2cap_can_send_packet_now(i16 zeroext %87) #10, !dbg !1118
  %89 = icmp eq i32 %88, 0, !dbg !1118
  br i1 %89, label %93, label %90, !dbg !1119

; <label>:90:                                     ; preds = %78
  call void @llvm.dbg.value(metadata i16 1, metadata !1054, metadata !DIExpression()), !dbg !1114
  store i8 1, i8* %10, align 1, !dbg !1120, !tbaa !203
  call void @llvm.dbg.value(metadata i16 2, metadata !1054, metadata !DIExpression()), !dbg !1114
  store i8 1, i8* %11, align 1, !dbg !1121, !tbaa !203
  call void @llvm.dbg.value(metadata i16 3, metadata !1054, metadata !DIExpression()), !dbg !1114
  store i8 2, i8* %12, align 1, !dbg !1122, !tbaa !203
  call void @big_endian_store_16(i8* nonnull %10, i16 zeroext 3, i16 zeroext %86) #10, !dbg !1123
  call void @llvm.dbg.value(metadata i16 5, metadata !1054, metadata !DIExpression()), !dbg !1114
  call void @big_endian_store_16(i8* nonnull %10, i16 zeroext 5, i16 zeroext %84) #10, !dbg !1124
  call void @llvm.dbg.value(metadata i16 7, metadata !1054, metadata !DIExpression()), !dbg !1114
  %91 = load i16, i16* %34, align 4, !dbg !1125, !tbaa !192
  %92 = call i32 @l2cap_send_internal(i16 zeroext %91, i8* nonnull %10, i16 zeroext 7, i8 zeroext 0) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %92, metadata !1055, metadata !DIExpression()), !dbg !1115
  br label %93, !dbg !1127

; <label>:93:                                     ; preds = %90, %78
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1128
  %94 = load i32, i32* %54, align 4, !tbaa !509
  br label %95, !dbg !1129

; <label>:95:                                     ; preds = %93, %75
  %96 = phi i32 [ %55, %75 ], [ %94, %93 ], !dbg !1130
  %97 = and i32 %96, 4, !dbg !1132
  %98 = icmp eq i32 %97, 0, !dbg !1132
  br i1 %98, label %111, label %99, !dbg !1133

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i32 0, metadata !977, metadata !DIExpression()), !dbg !1134
  %100 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !1135
  %101 = bitcast %struct.btstack_linked_item* %100 to i32*, !dbg !1135
  %102 = load i32, i32* %101, align 4, !dbg !1135, !tbaa !284
  %103 = add i32 %102, -1, !dbg !1137
  %104 = icmp ult i32 %103, 2, !dbg !1137
  %105 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %15, i32 0, i32 12, !dbg !1138
  %106 = load i16, i16* %105, align 2, !dbg !1138
  br i1 %104, label %107, label %109, !dbg !1137

; <label>:107:                                    ; preds = %99
  store i32 4, i32* %101, align 4, !dbg !1139, !tbaa !284
  call void @llvm.dbg.value(metadata i32 1, metadata !977, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %15, metadata !1070, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 4, metadata !1073, metadata !DIExpression()), !dbg !1142
  %108 = and i32 %96, -5, !dbg !1143
  store i32 %108, i32* %54, align 4, !dbg !1144, !tbaa !509
  call fastcc void @bnep_send_connection_response(%struct.bnep_channel_t* nonnull %15, i16 zeroext %106) #10, !dbg !1145
  call fastcc void @bnep_emit_open_channel_complete(%struct.bnep_channel_t* nonnull %15, i8 zeroext 0) #10, !dbg !1146
  br label %23, !dbg !1149

; <label>:109:                                    ; preds = %99
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %15, metadata !1070, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i32 4, metadata !1073, metadata !DIExpression()), !dbg !1152
  %110 = and i32 %96, -5, !dbg !1153
  store i32 %110, i32* %54, align 4, !dbg !1154, !tbaa !509
  call fastcc void @bnep_send_connection_response(%struct.bnep_channel_t* nonnull %15, i16 zeroext %106) #10, !dbg !1145
  br label %23, !dbg !1155

; <label>:111:                                    ; preds = %95
  %112 = and i32 %96, 8, !dbg !1156
  %113 = icmp eq i32 %112, 0, !dbg !1156
  br i1 %113, label %126, label %114, !dbg !1158

; <label>:114:                                    ; preds = %111
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* undef, metadata !1070, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 8, metadata !1073, metadata !DIExpression()), !dbg !1162
  %115 = and i32 %96, -9, !dbg !1163
  store i32 %115, i32* %54, align 4, !dbg !1164, !tbaa !509
  %116 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 21, !dbg !1165
  %117 = bitcast %struct.btstack_linked_item* %116 to i16*, !dbg !1165
  %118 = load i16, i16* %117, align 4, !dbg !1165, !tbaa !499
  %119 = icmp eq i16 %118, 0, !dbg !1167
  br i1 %119, label %23, label %120, !dbg !1168

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 20, !dbg !1169
  %122 = bitcast %struct.btstack_linked_item* %121 to %struct.bnep_net_filter_t**, !dbg !1169
  %123 = load %struct.bnep_net_filter_t*, %struct.bnep_net_filter_t** %122, align 4, !dbg !1169, !tbaa !496
  %124 = icmp eq %struct.bnep_net_filter_t* %123, null, !dbg !1171
  br i1 %124, label %23, label %125, !dbg !1172

; <label>:125:                                    ; preds = %120
  call fastcc void @bnep_send_filter_net_type_set(%struct.bnep_channel_t* nonnull %15, %struct.bnep_net_filter_t* nonnull %123, i16 zeroext %118) #10, !dbg !1174
  store i16 0, i16* %117, align 4, !dbg !1176, !tbaa !499
  store %struct.bnep_net_filter_t* null, %struct.bnep_net_filter_t** %122, align 4, !dbg !1177, !tbaa !496
  br label %23, !dbg !1178

; <label>:126:                                    ; preds = %111
  %127 = and i32 %96, 16, !dbg !1179
  %128 = icmp eq i32 %127, 0, !dbg !1179
  br i1 %128, label %145, label %129, !dbg !1180

; <label>:129:                                    ; preds = %126
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %15, metadata !1070, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i32 16, metadata !1073, metadata !DIExpression()), !dbg !1183
  %130 = and i32 %96, -17, !dbg !1184
  store i32 %130, i32* %54, align 4, !dbg !1185, !tbaa !509
  %131 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %15, i32 0, i32 12, !dbg !1186
  %132 = load i16, i16* %131, align 2, !dbg !1186, !tbaa !1187
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1188
  call void @llvm.dbg.value(metadata i16 0, metadata !1040, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 0, metadata !1041, metadata !DIExpression()), !dbg !1190
  %133 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !1191
  %134 = bitcast %struct.btstack_linked_item* %133 to i32*, !dbg !1191
  %135 = load i32, i32* %134, align 4, !dbg !1191, !tbaa !284
  %136 = icmp eq i32 %135, 1, !dbg !1193
  br i1 %136, label %144, label %137, !dbg !1194

; <label>:137:                                    ; preds = %129
  %138 = load i16, i16* %34, align 4, !dbg !1195, !tbaa !192
  %139 = call i32 @l2cap_can_send_packet_now(i16 zeroext %138) #10, !dbg !1197
  %140 = icmp eq i32 %139, 0, !dbg !1197
  br i1 %140, label %144, label %141, !dbg !1198

; <label>:141:                                    ; preds = %137
  call void @llvm.dbg.value(metadata i16 1, metadata !1040, metadata !DIExpression()), !dbg !1189
  store i8 1, i8* %10, align 1, !dbg !1199, !tbaa !203
  call void @llvm.dbg.value(metadata i16 2, metadata !1040, metadata !DIExpression()), !dbg !1189
  store i8 4, i8* %11, align 1, !dbg !1200, !tbaa !203
  call void @big_endian_store_16(i8* nonnull %10, i16 zeroext 2, i16 zeroext %132) #10, !dbg !1201
  call void @llvm.dbg.value(metadata i16 4, metadata !1040, metadata !DIExpression()), !dbg !1189
  %142 = load i16, i16* %34, align 4, !dbg !1202, !tbaa !192
  %143 = call i32 @l2cap_send_internal(i16 zeroext %142, i8* nonnull %10, i16 zeroext 4, i8 zeroext 0) #10, !dbg !1203
  call void @llvm.dbg.value(metadata i32 %143, metadata !1041, metadata !DIExpression()), !dbg !1190
  br label %144, !dbg !1204

; <label>:144:                                    ; preds = %141, %137, %129
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1205
  br label %23, !dbg !1206

; <label>:145:                                    ; preds = %126
  %146 = and i32 %96, 32, !dbg !1207
  %147 = icmp eq i32 %146, 0, !dbg !1207
  br i1 %147, label %160, label %148, !dbg !1209

; <label>:148:                                    ; preds = %145
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* undef, metadata !1070, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 32, metadata !1073, metadata !DIExpression()), !dbg !1213
  %149 = and i32 %96, -33, !dbg !1214
  store i32 %149, i32* %54, align 4, !dbg !1215, !tbaa !509
  %150 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 47, !dbg !1216
  %151 = bitcast %struct.btstack_linked_item* %150 to i16*, !dbg !1216
  %152 = load i16, i16* %151, align 4, !dbg !1216, !tbaa !554
  %153 = icmp eq i16 %152, 0, !dbg !1218
  br i1 %153, label %23, label %154, !dbg !1219

; <label>:154:                                    ; preds = %148
  %155 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 46, !dbg !1220
  %156 = bitcast %struct.btstack_linked_item* %155 to %struct.bnep_multi_filter_t**, !dbg !1220
  %157 = load %struct.bnep_multi_filter_t*, %struct.bnep_multi_filter_t** %156, align 4, !dbg !1220, !tbaa !551
  %158 = icmp eq %struct.bnep_multi_filter_t* %157, null, !dbg !1222
  br i1 %158, label %23, label %159, !dbg !1223

; <label>:159:                                    ; preds = %154
  call fastcc void @bnep_send_filter_multi_addr_set(%struct.bnep_channel_t* nonnull %15, %struct.bnep_multi_filter_t* nonnull %157, i16 zeroext %152) #10, !dbg !1225
  store i16 0, i16* %151, align 4, !dbg !1227, !tbaa !554
  store %struct.bnep_multi_filter_t* null, %struct.bnep_multi_filter_t** %156, align 4, !dbg !1228, !tbaa !551
  br label %23, !dbg !1229

; <label>:160:                                    ; preds = %145
  %161 = and i32 %96, 64, !dbg !1230
  %162 = icmp eq i32 %161, 0, !dbg !1230
  br i1 %162, label %179, label %163, !dbg !1231

; <label>:163:                                    ; preds = %160
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %15, metadata !1070, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 64, metadata !1073, metadata !DIExpression()), !dbg !1234
  %164 = and i32 %96, -65, !dbg !1235
  store i32 %164, i32* %54, align 4, !dbg !1236, !tbaa !509
  %165 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %15, i32 0, i32 12, !dbg !1237
  %166 = load i16, i16* %165, align 2, !dbg !1237, !tbaa !1187
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1238
  call void @llvm.dbg.value(metadata i16 0, metadata !1029, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()), !dbg !1240
  %167 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 1, !dbg !1241
  %168 = bitcast %struct.btstack_linked_item* %167 to i32*, !dbg !1241
  %169 = load i32, i32* %168, align 4, !dbg !1241, !tbaa !284
  %170 = icmp eq i32 %169, 1, !dbg !1243
  br i1 %170, label %178, label %171, !dbg !1244

; <label>:171:                                    ; preds = %163
  %172 = load i16, i16* %34, align 4, !dbg !1245, !tbaa !192
  %173 = call i32 @l2cap_can_send_packet_now(i16 zeroext %172) #10, !dbg !1247
  %174 = icmp eq i32 %173, 0, !dbg !1247
  br i1 %174, label %178, label %175, !dbg !1248

; <label>:175:                                    ; preds = %171
  call void @llvm.dbg.value(metadata i16 1, metadata !1029, metadata !DIExpression()), !dbg !1239
  store i8 1, i8* %10, align 1, !dbg !1249, !tbaa !203
  call void @llvm.dbg.value(metadata i16 2, metadata !1029, metadata !DIExpression()), !dbg !1239
  store i8 6, i8* %11, align 1, !dbg !1250, !tbaa !203
  call void @big_endian_store_16(i8* nonnull %10, i16 zeroext 2, i16 zeroext %166) #10, !dbg !1251
  call void @llvm.dbg.value(metadata i16 4, metadata !1029, metadata !DIExpression()), !dbg !1239
  %176 = load i16, i16* %34, align 4, !dbg !1252, !tbaa !192
  %177 = call i32 @l2cap_send_internal(i16 zeroext %176, i8* nonnull %10, i16 zeroext 4, i8 zeroext 0) #10, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %177, metadata !1030, metadata !DIExpression()), !dbg !1240
  br label %178, !dbg !1254

; <label>:178:                                    ; preds = %175, %171, %163
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %10) #8, !dbg !1255
  br label %23, !dbg !1256

; <label>:179:                                    ; preds = %160
  %180 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 56, !dbg !1257
  %181 = bitcast %struct.btstack_linked_item* %180 to i8*, !dbg !1257
  %182 = load i8, i8* %181, align 4, !dbg !1257, !tbaa !233
  %183 = icmp eq i8 %182, 0, !dbg !1258
  br i1 %183, label %23, label %184, !dbg !1259

; <label>:184:                                    ; preds = %179
  %185 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 57, i32 0, !dbg !1260
  %186 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %185, align 4, !dbg !1260, !tbaa !1261
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %186, metadata !980, metadata !DIExpression()), !dbg !1262
  %187 = icmp eq %struct.btstack_linked_item* %186, null, !dbg !1263
  br i1 %187, label %200, label %188, !dbg !1264

; <label>:188:                                    ; preds = %184
  %189 = bitcast %struct.btstack_linked_item* %186 to %struct.resend_t*, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.resend_t* %189, metadata !983, metadata !DIExpression()), !dbg !1266
  %190 = load i16, i16* %34, align 4, !dbg !1267, !tbaa !192
  %191 = getelementptr inbounds %struct.resend_t, %struct.resend_t* %189, i32 0, i32 2, i32 0, !dbg !1268
  %192 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %186, i32 1, !dbg !1269
  %193 = bitcast %struct.btstack_linked_item* %192 to i16*, !dbg !1269
  %194 = load i16, i16* %193, align 4, !dbg !1269, !tbaa !1270
  %195 = call i32 @bnep_send(i16 zeroext %190, i8* %191, i16 zeroext %194) #10, !dbg !1272
  call void @llvm.dbg.value(metadata i32 %195, metadata !986, metadata !DIExpression()), !dbg !1273
  %196 = icmp eq i32 %195, 0, !dbg !1274
  br i1 %196, label %197, label %23, !dbg !1276

; <label>:197:                                    ; preds = %188
  %198 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** nonnull %185, %struct.btstack_linked_item* nonnull %186) #10, !dbg !1277
  %199 = bitcast %struct.btstack_linked_item* %186 to i8*, !dbg !1279
  call void @free(i8* %199) #10, !dbg !1280
  br label %23, !dbg !1281

; <label>:200:                                    ; preds = %184
  store i8 0, i8* %181, align 4, !dbg !1282, !tbaa !233
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* undef, metadata !991, metadata !DIExpression()), !dbg !1283
  %201 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %14, i32 55, !dbg !1284
  %202 = bitcast %struct.btstack_linked_item* %201 to void (i8, i16, i8*, i16)**, !dbg !1284
  %203 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %202, align 4, !dbg !1284, !tbaa !925
  %204 = icmp eq void (i8, i16, i8*, i16)* %203, null, !dbg !1286
  br i1 %204, label %23, label %205, !dbg !1287

; <label>:205:                                    ; preds = %200
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8, !dbg !1288
  store i8 -60, i8* %8, align 1, !dbg !1289, !tbaa !203
  store i8 2, i8* %9, align 1, !dbg !1290, !tbaa !203
  %206 = load i16, i16* %34, align 4, !dbg !1291, !tbaa !192
  call void @little_endian_store_16(i8* nonnull %8, i16 zeroext 2, i16 zeroext %206) #10, !dbg !1292
  %207 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %202, align 4, !dbg !1293, !tbaa !925
  call void %207(i8 zeroext 4, i16 zeroext 0, i8* nonnull %8, i16 zeroext 4) #10, !dbg !1294
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8, !dbg !1295
  br label %23, !dbg !1295

; <label>:208:                                    ; preds = %33, %23
  br label %209, !dbg !1296

; <label>:209:                                    ; preds = %208, %1
  ret void, !dbg !1296
}

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #4

; Function Attrs: norecurse nounwind optsize readnone
define hidden void @bnep_init() local_unnamed_addr #6 !dbg !1298 {
  ret void, !dbg !1302
}

; Function Attrs: nounwind optsize readnone
define hidden void @bnep_set_required_security_level(i8 zeroext) local_unnamed_addr #7 !dbg !1303 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1307, metadata !DIExpression()), !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: nounwind optsize
define hidden i32 @bnep_connect(void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1310 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !1314, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %1, metadata !1315, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i16 %2, metadata !1316, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i16 %3, metadata !1317, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i16 %4, metadata !1318, metadata !DIExpression()), !dbg !1325
  %6 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1326, !tbaa !203
  %7 = icmp slt i8 %6, 0, !dbg !1326
  br i1 %7, label %8, label %11, !dbg !1328

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @bd_addr_to_str(i8* %1) #10, !dbg !1329
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i8* %9) #9, !dbg !1331
  br label %11, !dbg !1329

; <label>:11:                                     ; preds = %8, %5
  %12 = tail call fastcc %struct.bnep_channel_t* @bnep_channel_create_for_addr(i8* %1) #9, !dbg !1333
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %12, metadata !1319, metadata !DIExpression()), !dbg !1334
  %13 = icmp eq %struct.bnep_channel_t* %12, null, !dbg !1335
  br i1 %13, label %14, label %19, !dbg !1337

; <label>:14:                                     ; preds = %11
  %15 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1338, !tbaa !203
  %16 = icmp slt i8 %15, 0, !dbg !1338
  br i1 %16, label %17, label %31, !dbg !1341

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @str.62, i32 0, i32 0)), !dbg !1342
  br label %31, !dbg !1342

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %12, i32 0, i32 9, !dbg !1344
  store i16 %3, i16* %20, align 4, !dbg !1345, !tbaa !1110
  %21 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %12, i32 0, i32 10, !dbg !1346
  store i16 %4, i16* %21, align 2, !dbg !1347, !tbaa !1112
  %22 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %12, i32 0, i32 24, !dbg !1348
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %22, align 4, !dbg !1349, !tbaa !925
  %23 = tail call zeroext i16 @l2cap_max_mtu() #10, !dbg !1350
  %24 = tail call zeroext i8 @l2cap_create_channel_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @bnep_packet_handler, i8* %1, i16 zeroext %2, i16 zeroext %23) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i8 %24, metadata !1320, metadata !DIExpression()), !dbg !1353
  %25 = icmp eq i8 %24, 0, !dbg !1354
  br i1 %25, label %26, label %31, !dbg !1356

; <label>:26:                                     ; preds = %19
  %27 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1357, !tbaa !203
  %28 = icmp slt i8 %27, 0, !dbg !1357
  br i1 %28, label %29, label %31, !dbg !1360

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i32 0) #9, !dbg !1361
  br label %31, !dbg !1361

; <label>:31:                                     ; preds = %29, %26, %19, %17, %14
  %32 = phi i32 [ -1, %17 ], [ -1, %14 ], [ -1, %29 ], [ -1, %26 ], [ 0, %19 ]
  ret i32 %32, !dbg !1363
}

; Function Attrs: optsize
declare i8* @bd_addr_to_str(i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc %struct.bnep_channel_t* @bnep_channel_create_for_addr(i8* nocapture readonly) unnamed_addr #0 !dbg !1364 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1368, metadata !DIExpression()), !dbg !1370
  %2 = tail call %struct.bnep_channel_t* @btstack_memory_bnep_channel_get() #10, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %2, metadata !1369, metadata !DIExpression()), !dbg !1372
  %3 = icmp eq %struct.bnep_channel_t* %2, null, !dbg !1373
  br i1 %3, label %16, label %4, !dbg !1375

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 1, !dbg !1376
  store i32 1, i32* %5, align 4, !dbg !1377, !tbaa !284
  %6 = tail call zeroext i16 @l2cap_max_mtu() #10, !dbg !1378
  %7 = tail call fastcc zeroext i16 @bnep_max_frame_size_for_l2cap_mtu(i16 zeroext %6) #9, !dbg !1379
  %8 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 3, !dbg !1381
  store i16 %7, i16* %8, align 4, !dbg !1382, !tbaa !402
  %9 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 6, i32 0, !dbg !1383
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %0, i32 6, i32 1, i1 false), !dbg !1383
  %10 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 5, i32 0, !dbg !1384
  %11 = tail call i8* bitcast (i8* (...)* @bt_get_mac_addr to i8* ()*)() #10, !dbg !1384
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 6, i32 1, i1 false), !dbg !1384
  %12 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 14, !dbg !1385
  store i16 0, i16* %12, align 4, !dbg !1386, !tbaa !318
  %13 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 18, !dbg !1387
  store i16 0, i16* %13, align 2, !dbg !1388, !tbaa !361
  %14 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 23, !dbg !1389
  store i32 0, i32* %14, align 4, !dbg !1390, !tbaa !1391
  %15 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %2, i32 0, i32 0, !dbg !1392
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** nonnull @bnep_channels, %struct.btstack_linked_item* %15) #10, !dbg !1393
  br label %16, !dbg !1394

; <label>:16:                                     ; preds = %4, %1
  %17 = phi %struct.bnep_channel_t* [ %2, %4 ], [ null, %1 ]
  ret %struct.bnep_channel_t* %17, !dbg !1395
}

; Function Attrs: optsize
declare zeroext i8 @l2cap_create_channel_internal(i8*, void (i8, i16, i8*, i16)*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @l2cap_max_mtu() local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @bnep_send_for_addr(i8*, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1396 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1400, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8* %1, metadata !1401, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i16 %2, metadata !1402, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata %struct.resend_t* null, metadata !1404, metadata !DIExpression()), !dbg !1409
  %4 = zext i16 %2 to i32, !dbg !1410
  %5 = icmp eq i16 %2, 0, !dbg !1412
  br i1 %5, label %26, label %6, !dbg !1413

; <label>:6:                                      ; preds = %3
  %7 = add nuw nsw i32 %4, 8, !dbg !1414
  %8 = tail call i8* @malloc(i32 %7) #9, !dbg !1415
  %9 = icmp eq i8* %8, null, !dbg !1416
  br i1 %9, label %10, label %16, !dbg !1418

; <label>:10:                                     ; preds = %6
  %11 = load i8, i8* @profile_debug_enable, align 1, !dbg !1419, !tbaa !203
  %12 = and i8 %11, 4, !dbg !1419
  %13 = icmp eq i8 %12, 0, !dbg !1419
  br i1 %13, label %26, label %14, !dbg !1422

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.63, i32 0, i32 0)), !dbg !1423
  br label %26, !dbg !1423

; <label>:16:                                     ; preds = %6
  tail call void @put_buf(i8* %1, i32 %4) #10, !dbg !1425
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %8, i8 0, i32 %7, i32 4, i1 false), !dbg !1426
  %17 = getelementptr inbounds i8, i8* %8, i32 4, !dbg !1427
  %18 = bitcast i8* %17 to i16*, !dbg !1427
  store i16 %2, i16* %18, align 4, !dbg !1428, !tbaa !1270
  %19 = getelementptr inbounds i8, i8* %8, i32 6, !dbg !1429
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 %4, i32 1, i1 false), !dbg !1430
  %20 = tail call fastcc %struct.bnep_channel_t* @bnep_channel_for_addr(i8* %0) #9, !dbg !1431
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %20, metadata !1403, metadata !DIExpression()), !dbg !1432
  %21 = icmp eq %struct.bnep_channel_t* %20, null, !dbg !1433
  br i1 %21, label %26, label %22, !dbg !1435

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %20, i32 0, i32 26, !dbg !1436
  %24 = bitcast i8* %8 to %struct.btstack_linked_item*, !dbg !1436
  tail call void @btstack_linked_list_add_tail(%struct.btstack_linked_item** %23, %struct.btstack_linked_item* %24) #10, !dbg !1436
  %25 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %20, i32 0, i32 25, !dbg !1438
  store i8 1, i8* %25, align 4, !dbg !1439, !tbaa !233
  br label %26, !dbg !1440

; <label>:26:                                     ; preds = %22, %16, %14, %10, %3
  %27 = phi i32 [ -1, %3 ], [ -2, %10 ], [ -2, %14 ], [ 0, %22 ], [ -3, %16 ]
  ret i32 %27, !dbg !1441
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc %struct.bnep_channel_t* @bnep_channel_for_addr(i8*) unnamed_addr #0 !dbg !1443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1445, metadata !DIExpression()), !dbg !1451
  %2 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_channels, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %2, metadata !1446, metadata !DIExpression()), !dbg !1452
  %3 = icmp eq %struct.btstack_linked_item* %2, null, !dbg !1453
  br i1 %3, label %17, label %4, !dbg !1453

; <label>:4:                                      ; preds = %1
  br label %9, !dbg !1455

; <label>:5:                                      ; preds = %9
  %6 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %10, i32 0, i32 0, !dbg !1456
  %7 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %6, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %7, metadata !1446, metadata !DIExpression()), !dbg !1452
  %8 = icmp eq %struct.btstack_linked_item* %7, null, !dbg !1453
  br i1 %8, label %15, label %9, !dbg !1453, !llvm.loop !1458

; <label>:9:                                      ; preds = %5, %4
  %10 = phi %struct.btstack_linked_item* [ %7, %5 ], [ %2, %4 ]
  %11 = bitcast %struct.btstack_linked_item* %10 to %struct.bnep_channel_t*, !dbg !1455
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %11, metadata !1447, metadata !DIExpression()), !dbg !1461
  tail call void @put_buf(i8* %0, i32 6) #10, !dbg !1462
  %12 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %11, i32 0, i32 6, i32 0, !dbg !1463
  tail call void @put_buf(i8* %12, i32 6) #10, !dbg !1464
  %13 = tail call i32 @memcmp(i8* %0, i8* %12, i32 6) #9, !dbg !1465
  %14 = icmp eq i32 %13, 0, !dbg !1467
  br i1 %14, label %15, label %5

; <label>:15:                                     ; preds = %9, %5
  %16 = phi %struct.bnep_channel_t* [ %11, %9 ], [ null, %5 ]
  br label %17, !dbg !1468

; <label>:17:                                     ; preds = %15, %1
  %18 = phi %struct.bnep_channel_t* [ null, %1 ], [ %16, %15 ]
  ret %struct.bnep_channel_t* %18, !dbg !1468
}

; Function Attrs: optsize
declare void @btstack_linked_list_add_tail(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @bnep_disconnect(i8*) local_unnamed_addr #0 !dbg !1469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1473, metadata !DIExpression()), !dbg !1475
  %2 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1476, !tbaa !203
  %3 = icmp slt i8 %2, 0, !dbg !1476
  br i1 %3, label %4, label %6, !dbg !1478

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.64, i32 0, i32 0)), !dbg !1479
  br label %6, !dbg !1479

; <label>:6:                                      ; preds = %4, %1
  %7 = tail call fastcc %struct.bnep_channel_t* @bnep_channel_for_addr(i8* %0) #9, !dbg !1481
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %7, metadata !1474, metadata !DIExpression()), !dbg !1482
  tail call fastcc void @bnep_channel_finalize(%struct.bnep_channel_t* %7) #9, !dbg !1483
  ret void, !dbg !1484
}

; Function Attrs: nounwind optsize
define internal fastcc void @bnep_channel_finalize(%struct.bnep_channel_t*) unnamed_addr #0 !dbg !1485 {
  %2 = alloca [14 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [14 x i8]* %2, metadata !1494, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1487, metadata !DIExpression()), !dbg !1505
  %3 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !1506
  %4 = load i32, i32* %3, align 4, !dbg !1506, !tbaa !284
  %5 = icmp eq i32 %4, 4, !dbg !1507
  br i1 %5, label %6, label %33, !dbg !1508

; <label>:6:                                      ; preds = %1
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1497, metadata !DIExpression()), !dbg !1509
  %7 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1510, !tbaa !203
  %8 = icmp slt i8 %7, 0, !dbg !1510
  br i1 %8, label %11, label %9, !dbg !1512

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 24, !dbg !1513
  br label %17, !dbg !1512

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !1515
  %13 = tail call i8* @bd_addr_to_str(i8* %12) #10, !dbg !1515
  %14 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 24, !dbg !1515
  %15 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %14, align 4, !dbg !1515, !tbaa !925
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.57, i32 0, i32 0), i8* %13, void (i8, i16, i8*, i16)* %15) #10, !dbg !1517
  br label %17, !dbg !1515

; <label>:17:                                     ; preds = %11, %9
  %18 = phi void (i8, i16, i8*, i16)** [ %10, %9 ], [ %14, %11 ], !dbg !1513
  %19 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %18, align 4, !dbg !1513, !tbaa !925
  %20 = icmp eq void (i8, i16, i8*, i16)* %19, null, !dbg !1519
  br i1 %20, label %33, label %21, !dbg !1520

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i32 0, i32 0, !dbg !1521
  call void @llvm.lifetime.start.p0i8(i64 14, i8* nonnull %22) #8, !dbg !1521
  store i8 -62, i8* %22, align 1, !dbg !1522, !tbaa !203
  %23 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i32 0, i32 1, !dbg !1523
  store i8 12, i8* %23, align 1, !dbg !1524, !tbaa !203
  %24 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1525
  %25 = load i16, i16* %24, align 4, !dbg !1525, !tbaa !192
  call void @little_endian_store_16(i8* nonnull %22, i16 zeroext 2, i16 zeroext %25) #10, !dbg !1526
  %26 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 9, !dbg !1527
  %27 = load i16, i16* %26, align 4, !dbg !1527, !tbaa !1110
  call void @little_endian_store_16(i8* nonnull %22, i16 zeroext 4, i16 zeroext %27) #10, !dbg !1528
  %28 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 10, !dbg !1529
  %29 = load i16, i16* %28, align 2, !dbg !1529, !tbaa !1112
  call void @little_endian_store_16(i8* nonnull %22, i16 zeroext 6, i16 zeroext %29) #10, !dbg !1530
  %30 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !1531
  %31 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i32 0, i32 8, !dbg !1532
  call void @reverse_bd_addr(i8* %30, i8* %31) #10, !dbg !1533
  %32 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %18, align 4, !dbg !1534, !tbaa !925
  call void %32(i8 zeroext 4, i16 zeroext 0, i8* nonnull %22, i16 zeroext 14) #10, !dbg !1535
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %22) #8, !dbg !1536
  br label %33, !dbg !1536

; <label>:33:                                     ; preds = %21, %17, %1
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* null, metadata !1489, metadata !DIExpression()), !dbg !1537
  %34 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 26, !dbg !1538
  %35 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %34, align 4, !dbg !1538, !tbaa !1261
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %35, metadata !1489, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %35, metadata !1489, metadata !DIExpression()), !dbg !1537
  %36 = icmp eq %struct.btstack_linked_item* %35, null, !dbg !1539
  br i1 %36, label %46, label %37, !dbg !1539

; <label>:37:                                     ; preds = %33
  br label %38, !dbg !1537

; <label>:38:                                     ; preds = %38, %37
  %39 = phi %struct.btstack_linked_item* [ %42, %38 ], [ %35, %37 ]
  %40 = bitcast %struct.btstack_linked_item* %39 to i8*, !dbg !1537
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %39, metadata !1490, metadata !DIExpression()), !dbg !1541
  %41 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %39, i32 0, i32 0, !dbg !1542
  %42 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %41, align 4, !dbg !1542, !tbaa !1003
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %42, metadata !1489, metadata !DIExpression()), !dbg !1537
  %43 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** %34, %struct.btstack_linked_item* nonnull %39) #10, !dbg !1543
  call void @free(i8* %40) #9, !dbg !1544
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %42, metadata !1489, metadata !DIExpression()), !dbg !1537
  %44 = icmp eq %struct.btstack_linked_item* %42, null, !dbg !1539
  br i1 %44, label %45, label %38, !dbg !1539, !llvm.loop !1545

; <label>:45:                                     ; preds = %38
  br label %46, !dbg !1548

; <label>:46:                                     ; preds = %45, %33
  %47 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1548
  %48 = load i16, i16* %47, align 4, !dbg !1548, !tbaa !192
  call void @llvm.dbg.value(metadata i16 %48, metadata !1488, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !698, metadata !DIExpression()), !dbg !1550
  %49 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 0, !dbg !1552
  %50 = call i32 @btstack_linked_list_remove(%struct.btstack_linked_item** nonnull @bnep_channels, %struct.btstack_linked_item* %49) #10, !dbg !1553
  call void @btstack_memory_bnep_channel_free(%struct.bnep_channel_t* %0) #10, !dbg !1554
  call void @l2cap_disconnect_internal(i16 zeroext %48, i8 zeroext 19) #10, !dbg !1555
  ret void, !dbg !1556
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @bnep_register_service(void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1557 {
  call void @llvm.dbg.value(metadata void (i8, i16, i8*, i16)* %0, metadata !1561, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i16 %1, metadata !1562, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i16 %2, metadata !1563, metadata !DIExpression()), !dbg !1567
  %4 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1568, !tbaa !203
  %5 = icmp slt i8 %4, 0, !dbg !1568
  br i1 %5, label %6, label %9, !dbg !1570

; <label>:6:                                      ; preds = %3
  %7 = zext i16 %2 to i32, !dbg !1571
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i32 %7) #9, !dbg !1571
  br label %9, !dbg !1571

; <label>:9:                                      ; preds = %6, %3
  call void @llvm.dbg.value(metadata i16 %1, metadata !1573, metadata !DIExpression()), !dbg !1583
  %10 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_services, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %10, metadata !1578, metadata !DIExpression()), !dbg !1585
  %11 = icmp eq %struct.btstack_linked_item* %10, null, !dbg !1586
  br i1 %11, label %24, label %12, !dbg !1586

; <label>:12:                                     ; preds = %9
  br label %17, !dbg !1588

; <label>:13:                                     ; preds = %17
  %14 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %18, i32 0, i32 0, !dbg !1590
  %15 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %14, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %15, metadata !1578, metadata !DIExpression()), !dbg !1585
  %16 = icmp eq %struct.btstack_linked_item* %15, null, !dbg !1586
  br i1 %16, label %23, label %17, !dbg !1586, !llvm.loop !1592

; <label>:17:                                     ; preds = %13, %12
  %18 = phi %struct.btstack_linked_item* [ %15, %13 ], [ %10, %12 ]
  %19 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %18, i32 1, !dbg !1588
  %20 = bitcast %struct.btstack_linked_item* %19 to i16*, !dbg !1588
  %21 = load i16, i16* %20, align 4, !dbg !1588, !tbaa !1595
  %22 = icmp eq i16 %21, %1, !dbg !1597
  br i1 %22, label %41, label %13

; <label>:23:                                     ; preds = %13
  br label %24, !dbg !1598

; <label>:24:                                     ; preds = %23, %9
  %25 = zext i16 %1 to i32, !dbg !1598
  %26 = add i16 %1, -4373, !dbg !1600
  %27 = icmp ult i16 %26, 3, !dbg !1600
  br i1 %27, label %33, label %28, !dbg !1600

; <label>:28:                                     ; preds = %24
  %29 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1601, !tbaa !203
  %30 = icmp slt i8 %29, 0, !dbg !1601
  br i1 %30, label %31, label %42, !dbg !1604

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i32 0, i32 0), i32 %25) #9, !dbg !1605
  br label %42, !dbg !1605

; <label>:33:                                     ; preds = %24
  %34 = tail call %struct.bnep_service_t* @btstack_memory_bnep_service_get() #10, !dbg !1607
  call void @llvm.dbg.value(metadata %struct.bnep_service_t* %34, metadata !1564, metadata !DIExpression()), !dbg !1608
  %35 = icmp eq %struct.bnep_service_t* %34, null, !dbg !1609
  br i1 %35, label %42, label %36, !dbg !1611

; <label>:36:                                     ; preds = %33
  tail call void @l2cap_register_service_internal(i8* null, void (i8, i16, i8*, i16)* nonnull @bnep_packet_handler, i16 zeroext 15, i16 zeroext -1) #10, !dbg !1612
  %37 = getelementptr inbounds %struct.bnep_service_t, %struct.bnep_service_t* %34, i32 0, i32 2, !dbg !1613
  store i16 %2, i16* %37, align 2, !dbg !1614, !tbaa !1615
  %38 = getelementptr inbounds %struct.bnep_service_t, %struct.bnep_service_t* %34, i32 0, i32 1, !dbg !1616
  store i16 %1, i16* %38, align 4, !dbg !1617, !tbaa !1595
  %39 = getelementptr inbounds %struct.bnep_service_t, %struct.bnep_service_t* %34, i32 0, i32 3, !dbg !1618
  store void (i8, i16, i8*, i16)* %0, void (i8, i16, i8*, i16)** %39, align 4, !dbg !1619, !tbaa !1620
  %40 = getelementptr inbounds %struct.bnep_service_t, %struct.bnep_service_t* %34, i32 0, i32 0, !dbg !1621
  tail call void @btstack_linked_list_add(%struct.btstack_linked_item** nonnull @bnep_services, %struct.btstack_linked_item* %40) #10, !dbg !1622
  br label %42, !dbg !1623

; <label>:41:                                     ; preds = %17
  br label %42, !dbg !1624

; <label>:42:                                     ; preds = %41, %36, %33, %31, %28
  %43 = phi i8 [ 0, %36 ], [ -96, %31 ], [ -96, %28 ], [ 86, %33 ], [ -96, %41 ]
  ret i8 %43, !dbg !1624
}

; Function Attrs: optsize
declare %struct.bnep_service_t* @btstack_memory_bnep_service_get() local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_register_service_internal(i8*, void (i8, i16, i8*, i16)*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @btstack_linked_list_add(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @little_endian_read_16(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_decline_connection_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_accept_connection_internal(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc void @bnep_emit_open_channel_complete(%struct.bnep_channel_t*, i8 zeroext) unnamed_addr #0 !dbg !1625 {
  %3 = alloca [19 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1629, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %1, metadata !1630, metadata !DIExpression()), !dbg !1636
  %4 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1637, !tbaa !203
  %5 = icmp slt i8 %4, 0, !dbg !1637
  br i1 %5, label %8, label %6, !dbg !1639

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 24, !dbg !1640
  br label %15, !dbg !1639

; <label>:8:                                      ; preds = %2
  %9 = zext i8 %1 to i32, !dbg !1642
  %10 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !1642
  %11 = tail call i8* @bd_addr_to_str(i8* %10) #10, !dbg !1642
  %12 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 24, !dbg !1642
  %13 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %12, align 4, !dbg !1642, !tbaa !925
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i32 0, i32 0), i32 %9, i8* %11, void (i8, i16, i8*, i16)* %13) #9, !dbg !1644
  br label %15, !dbg !1642

; <label>:15:                                     ; preds = %8, %6
  %16 = phi void (i8, i16, i8*, i16)** [ %7, %6 ], [ %12, %8 ], !dbg !1640
  %17 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %16, align 4, !dbg !1640, !tbaa !925
  %18 = icmp eq void (i8, i16, i8*, i16)* %17, null, !dbg !1646
  br i1 %18, label %36, label %19, !dbg !1647

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i32 0, i32 0, !dbg !1648
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %20) #8, !dbg !1648
  tail call void @llvm.dbg.declare(metadata [19 x i8]* %3, metadata !1631, metadata !DIExpression()), !dbg !1649
  store i8 -63, i8* %20, align 1, !dbg !1650, !tbaa !203
  %21 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i32 0, i32 1, !dbg !1651
  store i8 17, i8* %21, align 1, !dbg !1652, !tbaa !203
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i32 0, i32 2, !dbg !1653
  store i8 %1, i8* %22, align 1, !dbg !1654, !tbaa !203
  %23 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1655
  %24 = load i16, i16* %23, align 4, !dbg !1655, !tbaa !192
  call void @little_endian_store_16(i8* nonnull %20, i16 zeroext 3, i16 zeroext %24) #10, !dbg !1656
  %25 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 9, !dbg !1657
  %26 = load i16, i16* %25, align 4, !dbg !1657, !tbaa !1110
  call void @little_endian_store_16(i8* nonnull %20, i16 zeroext 5, i16 zeroext %26) #10, !dbg !1658
  %27 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 10, !dbg !1659
  %28 = load i16, i16* %27, align 2, !dbg !1659, !tbaa !1112
  call void @little_endian_store_16(i8* nonnull %20, i16 zeroext 7, i16 zeroext %28) #10, !dbg !1660
  %29 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 3, !dbg !1661
  %30 = load i16, i16* %29, align 4, !dbg !1661, !tbaa !402
  call void @little_endian_store_16(i8* nonnull %20, i16 zeroext 9, i16 zeroext %30) #10, !dbg !1662
  %31 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i32 0, i32 11, !dbg !1663
  %32 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !1663
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 6, i32 1, i1 false), !dbg !1663
  %33 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 8, !dbg !1664
  %34 = load i16, i16* %33, align 2, !dbg !1664, !tbaa !661
  call void @little_endian_store_16(i8* nonnull %20, i16 zeroext 17, i16 zeroext %34) #10, !dbg !1665
  %35 = load void (i8, i16, i8*, i16)*, void (i8, i16, i8*, i16)** %16, align 4, !dbg !1666, !tbaa !925
  call void %35(i8 zeroext 4, i16 zeroext 0, i8* nonnull %20, i16 zeroext 19) #10, !dbg !1667
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %20) #8, !dbg !1668
  br label %36, !dbg !1668

; <label>:36:                                     ; preds = %19, %15
  ret void, !dbg !1669
}

; Function Attrs: nounwind optsize
define internal fastcc zeroext i16 @bnep_max_frame_size_for_l2cap_mtu(i16 zeroext) unnamed_addr #0 !dbg !1671 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1675, metadata !DIExpression()), !dbg !1677
  %2 = add i16 %0, -15, !dbg !1678
  call void @llvm.dbg.value(metadata i16 %2, metadata !1676, metadata !DIExpression()), !dbg !1679
  %3 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1680, !tbaa !203
  %4 = icmp slt i8 %3, 0, !dbg !1680
  br i1 %4, label %5, label %9, !dbg !1682

; <label>:5:                                      ; preds = %1
  %6 = zext i16 %0 to i32, !dbg !1683
  %7 = zext i16 %2 to i32, !dbg !1684
  %8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i32 0, i32 0), i32 %6, i32 %7) #9, !dbg !1684
  br label %9, !dbg !1684

; <label>:9:                                      ; preds = %5, %1
  ret i16 %2, !dbg !1686
}

; Function Attrs: optsize
declare void @little_endian_store_16(i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @btstack_linked_list_remove(%struct.btstack_linked_item**, %struct.btstack_linked_item*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @btstack_memory_bnep_channel_free(%struct.bnep_channel_t*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal fastcc i32 @bnep_handle_control_packet(%struct.bnep_channel_t*, i8*, i16 zeroext, i32) unnamed_addr #0 !dbg !1687 {
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1691, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i16 %2, metadata !1693, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %3, metadata !1694, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i16 0, metadata !1695, metadata !DIExpression()), !dbg !1701
  %5 = load i8, i8* %1, align 1, !dbg !1702, !tbaa !203
  call void @llvm.dbg.value(metadata i8 %5, metadata !1696, metadata !DIExpression()), !dbg !1703
  %6 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 11, !dbg !1704
  store i8 %5, i8* %6, align 4, !dbg !1705, !tbaa !1080
  %7 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1706, !tbaa !203
  %8 = icmp slt i8 %7, 0, !dbg !1706
  %9 = zext i8 %5 to i32
  br i1 %8, label %10, label %13, !dbg !1708

; <label>:10:                                     ; preds = %4
  %11 = zext i16 %2 to i32, !dbg !1709
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.27, i32 0, i32 0), i32 %9, i32 %11, i32 %3) #9, !dbg !1709
  br label %13, !dbg !1709

; <label>:13:                                     ; preds = %10, %4
  switch i8 %5, label %435 [
    i8 0, label %14
    i8 1, label %27
    i8 2, label %139
    i8 3, label %183
    i8 4, label %264
    i8 5, label %299
    i8 6, label %400
  ], !dbg !1711

; <label>:14:                                     ; preds = %13
  %15 = load i8, i8* @profile_debug_enable, align 1, !dbg !1712, !tbaa !203
  %16 = and i8 %15, 4, !dbg !1712
  %17 = icmp eq i8 %16, 0, !dbg !1712
  br i1 %17, label %26, label %18, !dbg !1715

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1716
  %20 = load i16, i16* %19, align 4, !dbg !1716, !tbaa !192
  %21 = zext i16 %20 to i32, !dbg !1716
  %22 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1716
  %23 = load i8, i8* %22, align 1, !dbg !1716, !tbaa !203
  %24 = zext i8 %23 to i32, !dbg !1716
  %25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.28, i32 0, i32 0), i32 %21, i32 %24) #9, !dbg !1716
  br label %26, !dbg !1716

; <label>:26:                                     ; preds = %18, %14
  tail call fastcc void @bnep_channel_finalize(%struct.bnep_channel_t* nonnull %0) #9, !dbg !1718
  call void @llvm.dbg.value(metadata i16 2, metadata !1695, metadata !DIExpression()), !dbg !1701
  br label %452, !dbg !1719

; <label>:27:                                     ; preds = %13
  %28 = icmp eq i32 %3, 0, !dbg !1720
  br i1 %28, label %38, label %29, !dbg !1722

; <label>:29:                                     ; preds = %27
  %30 = load i8, i8* @profile_debug_enable, align 1, !dbg !1723, !tbaa !203
  %31 = and i8 %30, 4, !dbg !1723
  %32 = icmp eq i8 %31, 0, !dbg !1723
  br i1 %32, label %452, label %33, !dbg !1726

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1727
  %35 = load i16, i16* %34, align 4, !dbg !1727, !tbaa !192
  %36 = zext i16 %35 to i32, !dbg !1727
  %37 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.29, i32 0, i32 0), i32 %36) #9, !dbg !1727
  br label %452, !dbg !1727

; <label>:38:                                     ; preds = %27
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1729, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %1, metadata !1734, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i16 %2, metadata !1735, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i16 0, metadata !1737, metadata !DIExpression()), !dbg !1745
  %39 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !1746
  %40 = load i8, i8* %39, align 1, !dbg !1746, !tbaa !203
  call void @llvm.dbg.value(metadata i16 0, metadata !1738, metadata !DIExpression()), !dbg !1747
  %41 = zext i16 %2 to i32, !dbg !1748
  %42 = zext i8 %40 to i32, !dbg !1750
  %43 = shl nuw nsw i32 %42, 1, !dbg !1751
  %44 = add nuw nsw i32 %43, 2, !dbg !1752
  %45 = icmp ult i32 %41, %44, !dbg !1753
  br i1 %45, label %448, label %46, !dbg !1754

; <label>:46:                                     ; preds = %38
  %47 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !1755
  %48 = load i32, i32* %47, align 4, !dbg !1755, !tbaa !284
  switch i32 %48, label %49 [
    i32 2, label %58
    i32 4, label %58
  ], !dbg !1757

; <label>:49:                                     ; preds = %46
  %50 = load i8, i8* @profile_debug_enable, align 1, !dbg !1758, !tbaa !203
  %51 = and i8 %50, 4, !dbg !1758
  %52 = icmp eq i8 %51, 0, !dbg !1758
  br i1 %52, label %448, label %53, !dbg !1761

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1762
  %55 = load i16, i16* %54, align 4, !dbg !1762, !tbaa !192
  %56 = zext i16 %55 to i32, !dbg !1762
  %57 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i32 0, i32 0), i32 %48, i32 %56) #10, !dbg !1762
  br label %448, !dbg !1762

; <label>:58:                                     ; preds = %46, %46
  switch i8 %40, label %60 [
    i8 2, label %69
    i8 4, label %59
    i8 16, label %59
  ], !dbg !1764

; <label>:59:                                     ; preds = %58, %58
  call void @llvm.dbg.value(metadata i16 2, metadata !1737, metadata !DIExpression()), !dbg !1745
  br label %69, !dbg !1765

; <label>:60:                                     ; preds = %58
  %61 = load i8, i8* @profile_debug_enable, align 1, !dbg !1767, !tbaa !203
  %62 = and i8 %61, 4, !dbg !1767
  %63 = icmp eq i8 %62, 0, !dbg !1767
  br i1 %63, label %133, label %64, !dbg !1769

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1770
  %66 = load i16, i16* %65, align 4, !dbg !1770, !tbaa !192
  %67 = zext i16 %66 to i32, !dbg !1770
  %68 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.33, i32 0, i32 0), i32 %48, i32 %67) #10, !dbg !1770
  br label %133, !dbg !1770

; <label>:69:                                     ; preds = %59, %58
  %70 = phi i32 [ 2, %58 ], [ 4, %59 ]
  %71 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 %70) #10, !dbg !1772
  %72 = trunc i32 %71 to i16, !dbg !1772
  %73 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 10, !dbg !1775
  store i16 %72, i16* %73, align 2, !dbg !1776, !tbaa !1112
  %74 = add nuw nsw i32 %70, %42, !dbg !1777
  %75 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 %74) #10, !dbg !1778
  %76 = trunc i32 %75 to i16, !dbg !1778
  %77 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 9, !dbg !1779
  store i16 %76, i16* %77, align 4, !dbg !1780, !tbaa !1110
  %78 = load i16, i16* %73, align 2, !dbg !1781, !tbaa !1112
  %79 = zext i16 %78 to i32, !dbg !1783
  %80 = add i16 %78, -4373, !dbg !1784
  %81 = icmp ult i16 %80, 3, !dbg !1784
  br i1 %81, label %91, label %82, !dbg !1784

; <label>:82:                                     ; preds = %69
  %83 = load i8, i8* @profile_debug_enable, align 1, !dbg !1785, !tbaa !203
  %84 = and i8 %83, 4, !dbg !1785
  %85 = icmp eq i8 %84, 0, !dbg !1785
  br i1 %85, label %89, label %86, !dbg !1788

; <label>:86:                                     ; preds = %82
  %87 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.34, i32 0, i32 0), i32 %79) #10, !dbg !1789
  %88 = load i16, i16* %77, align 4, !tbaa !1110
  br label %89, !dbg !1789

; <label>:89:                                     ; preds = %86, %82
  %90 = phi i16 [ %76, %82 ], [ %88, %86 ]
  store i16 0, i16* %73, align 2, !dbg !1791, !tbaa !1112
  br label %91, !dbg !1792

; <label>:91:                                     ; preds = %89, %69
  %92 = phi i16 [ %78, %69 ], [ 0, %89 ]
  %93 = phi i16 [ %76, %69 ], [ %90, %89 ], !dbg !1793
  %94 = zext i16 %93 to i32, !dbg !1795
  %95 = add i16 %93, -4373, !dbg !1796
  %96 = icmp ult i16 %95, 3, !dbg !1796
  br i1 %96, label %106, label %97, !dbg !1796

; <label>:97:                                     ; preds = %91
  %98 = load i8, i8* @profile_debug_enable, align 1, !dbg !1797, !tbaa !203
  %99 = and i8 %98, 4, !dbg !1797
  %100 = icmp eq i8 %99, 0, !dbg !1797
  br i1 %100, label %104, label %101, !dbg !1800

; <label>:101:                                    ; preds = %97
  %102 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.35, i32 0, i32 0), i32 %94) #10, !dbg !1801
  %103 = load i16, i16* %73, align 2, !tbaa !1112
  br label %104, !dbg !1801

; <label>:104:                                    ; preds = %101, %97
  %105 = phi i16 [ %92, %97 ], [ %103, %101 ]
  store i16 0, i16* %77, align 4, !dbg !1803, !tbaa !1110
  br label %106, !dbg !1804

; <label>:106:                                    ; preds = %104, %91
  %107 = phi i16 [ %93, %91 ], [ 0, %104 ], !dbg !1805
  %108 = phi i16 [ %92, %91 ], [ %105, %104 ], !dbg !1809
  call void @llvm.dbg.value(metadata i16 %108, metadata !1573, metadata !DIExpression()), !dbg !1811
  %109 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** @bnep_services, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %109, metadata !1578, metadata !DIExpression()), !dbg !1813
  %110 = icmp eq %struct.btstack_linked_item* %109, null, !dbg !1814
  br i1 %110, label %133, label %111, !dbg !1814

; <label>:111:                                    ; preds = %106
  br label %116, !dbg !1815

; <label>:112:                                    ; preds = %116
  %113 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %117, i32 0, i32 0, !dbg !1816
  %114 = load %struct.btstack_linked_item*, %struct.btstack_linked_item** %113, align 4, !tbaa !178
  call void @llvm.dbg.value(metadata %struct.btstack_linked_item* %114, metadata !1578, metadata !DIExpression()), !dbg !1813
  %115 = icmp eq %struct.btstack_linked_item* %114, null, !dbg !1814
  br i1 %115, label %132, label %116, !dbg !1814, !llvm.loop !1592

; <label>:116:                                    ; preds = %112, %111
  %117 = phi %struct.btstack_linked_item* [ %114, %112 ], [ %109, %111 ]
  %118 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %117, i32 1, !dbg !1815
  %119 = bitcast %struct.btstack_linked_item* %118 to i16*, !dbg !1815
  %120 = load i16, i16* %119, align 4, !dbg !1815, !tbaa !1595
  %121 = icmp eq i16 %120, %108, !dbg !1817
  br i1 %121, label %122, label %112

; <label>:122:                                    ; preds = %116
  %123 = getelementptr inbounds %struct.btstack_linked_item, %struct.btstack_linked_item* %117, i32 2, !dbg !1818
  %124 = bitcast %struct.btstack_linked_item* %123 to i32*, !dbg !1818
  %125 = load i32, i32* %124, align 4, !dbg !1818, !tbaa !1620
  %126 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 24, !dbg !1819
  %127 = bitcast void (i8, i16, i8*, i16)** %126 to i32*, !dbg !1820
  store i32 %125, i32* %127, align 4, !dbg !1820, !tbaa !925
  %128 = icmp eq i16 %107, 4373, !dbg !1821
  br i1 %128, label %133, label %129, !dbg !1822

; <label>:129:                                    ; preds = %122
  %130 = icmp eq i16 %108, 4373, !dbg !1823
  call void @llvm.dbg.value(metadata i16 2, metadata !1738, metadata !DIExpression()), !dbg !1747
  %131 = select i1 %130, i16 0, i16 2, !dbg !1824
  br label %133, !dbg !1824

; <label>:132:                                    ; preds = %112
  br label %133, !dbg !1747

; <label>:133:                                    ; preds = %132, %129, %122, %106, %64, %60
  %134 = phi i16 [ 0, %122 ], [ %131, %129 ], [ 3, %60 ], [ 3, %64 ], [ 1, %106 ], [ 1, %132 ]
  call void @llvm.dbg.value(metadata i16 %134, metadata !1738, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !505, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 4, metadata !500, metadata !DIExpression()), !dbg !1828
  %135 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !1829
  %136 = load i32, i32* %135, align 4, !dbg !1829, !tbaa !509
  %137 = or i32 %136, 4, !dbg !1830
  store i32 %137, i32* %135, align 4, !dbg !1831, !tbaa !509
  %138 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 12, !dbg !1832
  store i16 %134, i16* %138, align 2, !dbg !1833, !tbaa !1187
  br label %444, !dbg !1834

; <label>:139:                                    ; preds = %13
  %140 = icmp eq i32 %3, 0, !dbg !1835
  br i1 %140, label %150, label %141, !dbg !1837

; <label>:141:                                    ; preds = %139
  %142 = load i8, i8* @profile_debug_enable, align 1, !dbg !1838, !tbaa !203
  %143 = and i8 %142, 4, !dbg !1838
  %144 = icmp eq i8 %143, 0, !dbg !1838
  br i1 %144, label %452, label %145, !dbg !1841

; <label>:145:                                    ; preds = %141
  %146 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !1842
  %147 = load i16, i16* %146, align 4, !dbg !1842, !tbaa !192
  %148 = zext i16 %147 to i32, !dbg !1842
  %149 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.30, i32 0, i32 0), i32 %148) #9, !dbg !1842
  br label %452, !dbg !1842

; <label>:150:                                    ; preds = %139
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1844, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8* %1, metadata !1847, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i16 %2, metadata !1848, metadata !DIExpression()), !dbg !1854
  %151 = icmp ult i16 %2, 3, !dbg !1855
  br i1 %151, label %448, label %152, !dbg !1857

; <label>:152:                                    ; preds = %150
  %153 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !1858
  %154 = load i32, i32* %153, align 4, !dbg !1858, !tbaa !284
  %155 = icmp eq i32 %154, 3, !dbg !1860
  br i1 %155, label %162, label %156, !dbg !1861

; <label>:156:                                    ; preds = %152
  %157 = load i8, i8* @profile_debug_enable, align 1, !dbg !1862, !tbaa !203
  %158 = and i8 %157, 4, !dbg !1862
  %159 = icmp eq i8 %158, 0, !dbg !1862
  br i1 %159, label %452, label %160, !dbg !1865

; <label>:160:                                    ; preds = %156
  %161 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.36, i32 0, i32 0), i32 %154) #10, !dbg !1866
  br label %452, !dbg !1866

; <label>:162:                                    ; preds = %152
  %163 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 1) #10, !dbg !1868
  %164 = and i32 %163, 65535, !dbg !1869
  %165 = icmp eq i32 %164, 0, !dbg !1871
  br i1 %165, label %166, label %174, !dbg !1872

; <label>:166:                                    ; preds = %162
  %167 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1873, !tbaa !203
  %168 = icmp slt i8 %167, 0, !dbg !1873
  br i1 %168, label %169, label %173, !dbg !1876

; <label>:169:                                    ; preds = %166
  %170 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !1877
  %171 = tail call i8* @bd_addr_to_str(i8* %170) #10, !dbg !1877
  %172 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i32 0, i32 0), i8* %171) #10, !dbg !1879
  br label %173, !dbg !1877

; <label>:173:                                    ; preds = %169, %166
  store i32 4, i32* %153, align 4, !dbg !1881, !tbaa !284
  tail call fastcc void @bnep_emit_open_channel_complete(%struct.bnep_channel_t* nonnull %0, i8 zeroext 0) #10, !dbg !1882
  br label %452, !dbg !1883

; <label>:174:                                    ; preds = %162
  %175 = load i8, i8* @profile_debug_enable, align 1, !dbg !1884, !tbaa !203
  %176 = and i8 %175, 4, !dbg !1884
  %177 = icmp eq i8 %176, 0, !dbg !1884
  br i1 %177, label %182, label %178, !dbg !1887

; <label>:178:                                    ; preds = %174
  %179 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !1888
  %180 = tail call i8* @bd_addr_to_str(i8* %179) #10, !dbg !1888
  %181 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.38, i32 0, i32 0), i8* %180, i32 %164) #10, !dbg !1890
  br label %182, !dbg !1888

; <label>:182:                                    ; preds = %178, %174
  tail call fastcc void @bnep_channel_finalize(%struct.bnep_channel_t* nonnull %0) #10, !dbg !1892
  br label %452

; <label>:183:                                    ; preds = %13
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1893, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %1, metadata !1896, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i16 %2, metadata !1897, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i16 0, metadata !1899, metadata !DIExpression()), !dbg !1907
  %184 = icmp ult i16 %2, 3, !dbg !1908
  br i1 %184, label %448, label %185, !dbg !1910

; <label>:185:                                    ; preds = %183
  %186 = zext i16 %2 to i32, !dbg !1911
  %187 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 1) #10, !dbg !1912
  %188 = and i32 %187, 65535, !dbg !1913
  %189 = add nuw nsw i32 %188, 3, !dbg !1915
  %190 = icmp ult i32 %186, %189, !dbg !1916
  br i1 %190, label %448, label %191, !dbg !1917

; <label>:191:                                    ; preds = %185
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1918, metadata !DIExpression()), !dbg !1923
  %192 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !1926
  %193 = load i32, i32* %192, align 4, !dbg !1926, !tbaa !284
  switch i32 %193, label %199 [
    i32 4, label %205
    i32 2, label %194
  ], !dbg !1928

; <label>:194:                                    ; preds = %191
  %195 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !1929
  %196 = load i32, i32* %195, align 4, !dbg !1929, !tbaa !509
  %197 = and i32 %196, 4, !dbg !1931
  %198 = icmp eq i32 %197, 0, !dbg !1931
  br i1 %198, label %199, label %205, !dbg !1932

; <label>:199:                                    ; preds = %194, %191
  %200 = load i8, i8* @profile_debug_enable, align 1, !dbg !1934, !tbaa !203
  %201 = and i8 %200, 4, !dbg !1934
  %202 = icmp eq i8 %201, 0, !dbg !1934
  br i1 %202, label %444, label %203, !dbg !1937

; <label>:203:                                    ; preds = %199
  %204 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0), i32 %193) #10, !dbg !1938
  br label %444, !dbg !1938

; <label>:205:                                    ; preds = %194, %191
  %206 = lshr i32 %188, 2, !dbg !1940
  %207 = icmp ugt i32 %188, 35, !dbg !1941
  br i1 %207, label %208, label %213, !dbg !1942

; <label>:208:                                    ; preds = %205
  %209 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1943, !tbaa !203
  %210 = icmp slt i8 %209, 0, !dbg !1943
  br i1 %210, label %211, label %258, !dbg !1946

; <label>:211:                                    ; preds = %208
  %212 = tail call i32 @puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @str.65, i32 0, i32 0)) #8, !dbg !1947
  br label %258, !dbg !1947

; <label>:213:                                    ; preds = %205
  %214 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 14, !dbg !1949
  store i16 0, i16* %214, align 4, !dbg !1950, !tbaa !318
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i16 0, metadata !1899, metadata !DIExpression()), !dbg !1907
  %215 = icmp eq i32 %206, 0, !dbg !1952
  br i1 %215, label %258, label %216, !dbg !1956

; <label>:216:                                    ; preds = %213
  br label %217, !dbg !1958

; <label>:217:                                    ; preds = %253, %216
  %218 = phi i32 [ %255, %253 ], [ 0, %216 ]
  %219 = phi i16 [ %254, %253 ], [ 0, %216 ]
  %220 = shl nsw i32 %218, 2, !dbg !1958
  %221 = or i32 %220, 3, !dbg !1960
  %222 = tail call i32 @big_endian_read_16(i8* %1, i32 %221) #10, !dbg !1961
  %223 = trunc i32 %222 to i16, !dbg !1961
  %224 = load i16, i16* %214, align 4, !dbg !1962, !tbaa !318
  %225 = zext i16 %224 to i32, !dbg !1963
  %226 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 13, i32 %225, i32 0, !dbg !1964
  store i16 %223, i16* %226, align 4, !dbg !1965, !tbaa !326
  %227 = add nuw nsw i32 %221, 2, !dbg !1966
  %228 = tail call i32 @big_endian_read_16(i8* %1, i32 %227) #10, !dbg !1967
  %229 = trunc i32 %228 to i16, !dbg !1967
  %230 = load i16, i16* %214, align 4, !dbg !1968, !tbaa !318
  %231 = zext i16 %230 to i32, !dbg !1969
  %232 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 13, i32 %231, i32 1, !dbg !1970
  store i16 %229, i16* %232, align 2, !dbg !1971, !tbaa !331
  %233 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 13, i32 %231, i32 0, !dbg !1972
  %234 = load i16, i16* %233, align 4, !dbg !1972, !tbaa !326
  %235 = zext i16 %234 to i32, !dbg !1974
  %236 = and i32 %228, 65535, !dbg !1975
  %237 = icmp ugt i16 %234, %229, !dbg !1976
  br i1 %237, label %238, label %244, !dbg !1977

; <label>:238:                                    ; preds = %217
  %239 = load i8, i8* @profile_debug_enable, align 1, !dbg !1978, !tbaa !203
  %240 = and i8 %239, 4, !dbg !1978
  %241 = icmp eq i8 %240, 0, !dbg !1978
  br i1 %241, label %253, label %242, !dbg !1981

; <label>:242:                                    ; preds = %238
  %243 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.41, i32 0, i32 0), i32 %235, i32 %236) #10, !dbg !1982
  br label %253, !dbg !1982

; <label>:244:                                    ; preds = %217
  %245 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1984, !tbaa !203
  %246 = icmp slt i8 %245, 0, !dbg !1984
  br i1 %246, label %247, label %250, !dbg !1987

; <label>:247:                                    ; preds = %244
  %248 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.42, i32 0, i32 0), i32 %235, i32 %236) #10, !dbg !1988
  %249 = load i16, i16* %214, align 4, !tbaa !318
  br label %250, !dbg !1988

; <label>:250:                                    ; preds = %247, %244
  %251 = phi i16 [ %249, %247 ], [ %230, %244 ], !dbg !1990
  %252 = add i16 %251, 1, !dbg !1990
  store i16 %252, i16* %214, align 4, !dbg !1990, !tbaa !318
  br label %253

; <label>:253:                                    ; preds = %250, %242, %238
  %254 = phi i16 [ %219, %250 ], [ 2, %238 ], [ 2, %242 ]
  call void @llvm.dbg.value(metadata i16 %254, metadata !1899, metadata !DIExpression()), !dbg !1907
  %255 = add nuw nsw i32 %218, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %255, metadata !1900, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i32 %255, metadata !1900, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i16 %254, metadata !1899, metadata !DIExpression()), !dbg !1907
  %256 = icmp eq i32 %255, %206, !dbg !1952
  br i1 %256, label %257, label %217, !dbg !1956, !llvm.loop !1993

; <label>:257:                                    ; preds = %253
  br label %258, !dbg !1907

; <label>:258:                                    ; preds = %257, %213, %211, %208
  %259 = phi i16 [ 3, %211 ], [ 3, %208 ], [ 0, %213 ], [ %254, %257 ]
  call void @llvm.dbg.value(metadata i16 %259, metadata !1899, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !505, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 16, metadata !500, metadata !DIExpression()), !dbg !1998
  %260 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !1999
  %261 = load i32, i32* %260, align 4, !dbg !1999, !tbaa !509
  %262 = or i32 %261, 16, !dbg !2000
  store i32 %262, i32* %260, align 4, !dbg !2001, !tbaa !509
  %263 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 12, !dbg !2002
  store i16 %259, i16* %263, align 2, !dbg !2003, !tbaa !1187
  br label %444, !dbg !2004

; <label>:264:                                    ; preds = %13
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !2005, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %1, metadata !2008, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i16 %2, metadata !2009, metadata !DIExpression()), !dbg !2014
  %265 = icmp ult i16 %2, 3, !dbg !2015
  br i1 %265, label %448, label %266, !dbg !2017

; <label>:266:                                    ; preds = %264
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1918, metadata !DIExpression()), !dbg !2018
  %267 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !2021
  %268 = load i32, i32* %267, align 4, !dbg !2021, !tbaa !284
  switch i32 %268, label %274 [
    i32 4, label %280
    i32 2, label %269
  ], !dbg !2022

; <label>:269:                                    ; preds = %266
  %270 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !2023
  %271 = load i32, i32* %270, align 4, !dbg !2023, !tbaa !509
  %272 = and i32 %271, 4, !dbg !2024
  %273 = icmp eq i32 %272, 0, !dbg !2024
  br i1 %273, label %274, label %280, !dbg !2025

; <label>:274:                                    ; preds = %269, %266
  %275 = load i8, i8* @profile_debug_enable, align 1, !dbg !2026, !tbaa !203
  %276 = and i8 %275, 4, !dbg !2026
  %277 = icmp eq i8 %276, 0, !dbg !2026
  br i1 %277, label %452, label %278, !dbg !2029

; <label>:278:                                    ; preds = %274
  %279 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.43, i32 0, i32 0), i32 %268) #10, !dbg !2030
  br label %452, !dbg !2030

; <label>:280:                                    ; preds = %269, %266
  %281 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 1) #10, !dbg !2032
  %282 = and i32 %281, 65535, !dbg !2033
  %283 = icmp eq i32 %282, 0, !dbg !2035
  br i1 %283, label %284, label %291, !dbg !2036

; <label>:284:                                    ; preds = %280
  %285 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2037, !tbaa !203
  %286 = icmp slt i8 %285, 0, !dbg !2037
  br i1 %286, label %287, label %452, !dbg !2040

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !2041
  %289 = tail call i8* @bd_addr_to_str(i8* %288) #10, !dbg !2041
  %290 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.44, i32 0, i32 0), i8* %289) #10, !dbg !2043
  br label %452, !dbg !2041

; <label>:291:                                    ; preds = %280
  %292 = load i8, i8* @profile_debug_enable, align 1, !dbg !2045, !tbaa !203
  %293 = and i8 %292, 4, !dbg !2045
  %294 = icmp eq i8 %293, 0, !dbg !2045
  br i1 %294, label %452, label %295, !dbg !2048

; <label>:295:                                    ; preds = %291
  %296 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !2049
  %297 = tail call i8* @bd_addr_to_str(i8* %296) #10, !dbg !2049
  %298 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.45, i32 0, i32 0), i8* %297, i32 %282) #10, !dbg !2051
  br label %452, !dbg !2049

; <label>:299:                                    ; preds = %13
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !2053, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %1, metadata !2056, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i16 %2, metadata !2057, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i16 0, metadata !2059, metadata !DIExpression()), !dbg !2067
  %300 = icmp ult i16 %2, 3, !dbg !2068
  br i1 %300, label %448, label %301, !dbg !2070

; <label>:301:                                    ; preds = %299
  %302 = zext i16 %2 to i32, !dbg !2071
  %303 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 1) #10, !dbg !2072
  %304 = and i32 %303, 65535, !dbg !2073
  %305 = add nuw nsw i32 %304, 3, !dbg !2075
  %306 = icmp ult i32 %302, %305, !dbg !2076
  br i1 %306, label %448, label %307, !dbg !2077

; <label>:307:                                    ; preds = %301
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1918, metadata !DIExpression()), !dbg !2078
  %308 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !2081
  %309 = load i32, i32* %308, align 4, !dbg !2081, !tbaa !284
  switch i32 %309, label %315 [
    i32 4, label %321
    i32 2, label %310
  ], !dbg !2082

; <label>:310:                                    ; preds = %307
  %311 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !2083
  %312 = load i32, i32* %311, align 4, !dbg !2083, !tbaa !509
  %313 = and i32 %312, 4, !dbg !2084
  %314 = icmp eq i32 %313, 0, !dbg !2084
  br i1 %314, label %315, label %321, !dbg !2085

; <label>:315:                                    ; preds = %310, %307
  %316 = load i8, i8* @profile_debug_enable, align 1, !dbg !2086, !tbaa !203
  %317 = and i8 %316, 4, !dbg !2086
  %318 = icmp eq i8 %317, 0, !dbg !2086
  br i1 %318, label %444, label %319, !dbg !2089

; <label>:319:                                    ; preds = %315
  %320 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.46, i32 0, i32 0), i32 %309) #10, !dbg !2090
  br label %444, !dbg !2090

; <label>:321:                                    ; preds = %310, %307
  %322 = udiv i32 %304, 12, !dbg !2092
  %323 = icmp ugt i32 %304, 107, !dbg !2093
  br i1 %323, label %324, label %329, !dbg !2094

; <label>:324:                                    ; preds = %321
  %325 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2095, !tbaa !203
  %326 = icmp slt i8 %325, 0, !dbg !2095
  br i1 %326, label %327, label %394, !dbg !2098

; <label>:327:                                    ; preds = %324
  %328 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.66, i32 0, i32 0)) #8, !dbg !2099
  br label %394, !dbg !2099

; <label>:329:                                    ; preds = %321
  %330 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 18, !dbg !2101
  store i16 0, i16* %330, align 2, !dbg !2102, !tbaa !361
  call void @llvm.dbg.value(metadata i32 0, metadata !2060, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 0, metadata !2060, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i16 0, metadata !2059, metadata !DIExpression()), !dbg !2067
  %331 = icmp ugt i32 %304, 11, !dbg !2104
  br i1 %331, label %332, label %394, !dbg !2108

; <label>:332:                                    ; preds = %329
  %333 = getelementptr inbounds i8, i8* %1, i32 3
  br label %334, !dbg !2108

; <label>:334:                                    ; preds = %391, %332
  %335 = phi i16 [ 0, %332 ], [ %392, %391 ], !dbg !2110
  %336 = phi i32 [ 0, %332 ], [ %389, %391 ]
  %337 = phi i16 [ 0, %332 ], [ %388, %391 ]
  %338 = zext i16 %335 to i32, !dbg !2110
  %339 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 17, i32 %338, i32 0, i32 0, !dbg !2110
  %340 = mul nuw nsw i32 %336, 12, !dbg !2110
  %341 = getelementptr inbounds i8, i8* %333, i32 %340, !dbg !2110
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %339, i8* %341, i32 6, i32 1, i1 false) #8, !dbg !2110
  %342 = load i16, i16* %330, align 2, !dbg !2112, !tbaa !361
  %343 = zext i16 %342 to i32, !dbg !2112
  %344 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 17, i32 %343, i32 1, i32 0, !dbg !2112
  %345 = getelementptr inbounds i8, i8* %341, i32 6, !dbg !2112
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %344, i8* %345, i32 6, i32 1, i1 false) #8, !dbg !2112
  %346 = load i16, i16* %330, align 2, !dbg !2113, !tbaa !361
  %347 = zext i16 %346 to i32, !dbg !2115
  %348 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 17, i32 %347, i32 0, i32 0, !dbg !2115
  %349 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 17, i32 %347, i32 1, i32 0, !dbg !2116
  %350 = tail call i32 @memcmp(i8* %348, i8* %349, i32 6) #10, !dbg !2117
  %351 = icmp sgt i32 %350, 0, !dbg !2118
  br i1 %351, label %352, label %370, !dbg !2119

; <label>:352:                                    ; preds = %334
  %353 = load i8, i8* @profile_debug_enable, align 1, !dbg !2120, !tbaa !203
  %354 = and i8 %353, 4, !dbg !2120
  %355 = icmp eq i8 %354, 0, !dbg !2120
  br i1 %355, label %360, label %356, !dbg !2123

; <label>:356:                                    ; preds = %352
  %357 = tail call i8* @bd_addr_to_str(i8* %348) #10, !dbg !2124
  %358 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.48, i32 0, i32 0), i8* %357) #10, !dbg !2126
  %359 = load i8, i8* @profile_debug_enable, align 1, !tbaa !203
  br label %360, !dbg !2124

; <label>:360:                                    ; preds = %356, %352
  %361 = phi i8 [ %353, %352 ], [ %359, %356 ], !dbg !2128
  %362 = and i8 %361, 4, !dbg !2128
  %363 = icmp eq i8 %362, 0, !dbg !2128
  br i1 %363, label %387, label %364, !dbg !2130

; <label>:364:                                    ; preds = %360
  %365 = load i16, i16* %330, align 2, !dbg !2131, !tbaa !361
  %366 = zext i16 %365 to i32, !dbg !2131
  %367 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 17, i32 %366, i32 1, i32 0, !dbg !2131
  %368 = tail call i8* @bd_addr_to_str(i8* %367) #10, !dbg !2131
  %369 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.49, i32 0, i32 0), i8* %368) #10, !dbg !2133
  br label %387, !dbg !2131

; <label>:370:                                    ; preds = %334
  %371 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2135, !tbaa !203
  %372 = icmp slt i8 %371, 0, !dbg !2135
  br i1 %372, label %373, label %384, !dbg !2138

; <label>:373:                                    ; preds = %370
  %374 = tail call i8* @bd_addr_to_str(i8* %348) #10, !dbg !2139
  %375 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i32 0, i32 0), i8* %374) #10, !dbg !2141
  %376 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2143, !tbaa !203
  %377 = icmp slt i8 %376, 0, !dbg !2143
  br i1 %377, label %378, label %384, !dbg !2145

; <label>:378:                                    ; preds = %373
  %379 = load i16, i16* %330, align 2, !dbg !2146, !tbaa !361
  %380 = zext i16 %379 to i32, !dbg !2146
  %381 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 17, i32 %380, i32 1, i32 0, !dbg !2146
  %382 = tail call i8* @bd_addr_to_str(i8* %381) #10, !dbg !2146
  %383 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.51, i32 0, i32 0), i8* %382) #10, !dbg !2148
  br label %384, !dbg !2146

; <label>:384:                                    ; preds = %378, %373, %370
  %385 = load i16, i16* %330, align 2, !dbg !2150, !tbaa !361
  %386 = add i16 %385, 1, !dbg !2150
  store i16 %386, i16* %330, align 2, !dbg !2150, !tbaa !361
  br label %387

; <label>:387:                                    ; preds = %384, %364, %360
  %388 = phi i16 [ %337, %384 ], [ 2, %360 ], [ 2, %364 ]
  call void @llvm.dbg.value(metadata i16 %388, metadata !2059, metadata !DIExpression()), !dbg !2067
  %389 = add nuw nsw i32 %336, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %389, metadata !2060, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 %389, metadata !2060, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i16 %388, metadata !2059, metadata !DIExpression()), !dbg !2067
  %390 = icmp ult i32 %389, %322, !dbg !2104
  br i1 %390, label %391, label %393, !dbg !2108, !llvm.loop !2153

; <label>:391:                                    ; preds = %387
  %392 = load i16, i16* %330, align 2, !tbaa !361
  br label %334, !dbg !2108

; <label>:393:                                    ; preds = %387
  br label %394, !dbg !2067

; <label>:394:                                    ; preds = %393, %329, %327, %324
  %395 = phi i16 [ 3, %327 ], [ 3, %324 ], [ 0, %329 ], [ %388, %393 ]
  call void @llvm.dbg.value(metadata i16 %395, metadata !2059, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !505, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 64, metadata !500, metadata !DIExpression()), !dbg !2158
  %396 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !2159
  %397 = load i32, i32* %396, align 4, !dbg !2159, !tbaa !509
  %398 = or i32 %397, 64, !dbg !2160
  store i32 %398, i32* %396, align 4, !dbg !2161, !tbaa !509
  %399 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 12, !dbg !2162
  store i16 %395, i16* %399, align 2, !dbg !2163, !tbaa !1187
  br label %444, !dbg !2164

; <label>:400:                                    ; preds = %13
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !2165, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8* %1, metadata !2168, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i16 %2, metadata !2169, metadata !DIExpression()), !dbg !2174
  %401 = icmp ult i16 %2, 3, !dbg !2175
  br i1 %401, label %448, label %402, !dbg !2177

; <label>:402:                                    ; preds = %400
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !1918, metadata !DIExpression()), !dbg !2178
  %403 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !2181
  %404 = load i32, i32* %403, align 4, !dbg !2181, !tbaa !284
  switch i32 %404, label %410 [
    i32 4, label %416
    i32 2, label %405
  ], !dbg !2182

; <label>:405:                                    ; preds = %402
  %406 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !2183
  %407 = load i32, i32* %406, align 4, !dbg !2183, !tbaa !509
  %408 = and i32 %407, 4, !dbg !2184
  %409 = icmp eq i32 %408, 0, !dbg !2184
  br i1 %409, label %410, label %416, !dbg !2185

; <label>:410:                                    ; preds = %405, %402
  %411 = load i8, i8* @profile_debug_enable, align 1, !dbg !2186, !tbaa !203
  %412 = and i8 %411, 4, !dbg !2186
  %413 = icmp eq i8 %412, 0, !dbg !2186
  br i1 %413, label %452, label %414, !dbg !2189

; <label>:414:                                    ; preds = %410
  %415 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.52, i32 0, i32 0), i32 %404) #10, !dbg !2190
  br label %452, !dbg !2190

; <label>:416:                                    ; preds = %405, %402
  %417 = tail call i32 @big_endian_read_16(i8* nonnull %1, i32 1) #10, !dbg !2192
  %418 = and i32 %417, 65535, !dbg !2193
  %419 = icmp eq i32 %418, 0, !dbg !2195
  br i1 %419, label %420, label %427, !dbg !2196

; <label>:420:                                    ; preds = %416
  %421 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2197, !tbaa !203
  %422 = icmp slt i8 %421, 0, !dbg !2197
  br i1 %422, label %423, label %452, !dbg !2200

; <label>:423:                                    ; preds = %420
  %424 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !2201
  %425 = tail call i8* @bd_addr_to_str(i8* %424) #10, !dbg !2201
  %426 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.53, i32 0, i32 0), i8* %425) #10, !dbg !2203
  br label %452, !dbg !2201

; <label>:427:                                    ; preds = %416
  %428 = load i8, i8* @profile_debug_enable, align 1, !dbg !2205, !tbaa !203
  %429 = and i8 %428, 4, !dbg !2205
  %430 = icmp eq i8 %429, 0, !dbg !2205
  br i1 %430, label %452, label %431, !dbg !2208

; <label>:431:                                    ; preds = %427
  %432 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 6, i32 0, !dbg !2209
  %433 = tail call i8* @bd_addr_to_str(i8* %432) #10, !dbg !2209
  %434 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.54, i32 0, i32 0), i8* %433, i32 %418) #10, !dbg !2211
  br label %452, !dbg !2209

; <label>:435:                                    ; preds = %13
  %436 = load i8, i8* @profile_debug_enable, align 1, !dbg !2213, !tbaa !203
  %437 = and i8 %436, 4, !dbg !2213
  %438 = icmp eq i8 %437, 0, !dbg !2213
  br i1 %438, label %448, label %439, !dbg !2215

; <label>:439:                                    ; preds = %435
  %440 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !2216
  %441 = load i16, i16* %440, align 4, !dbg !2216, !tbaa !192
  %442 = zext i16 %441 to i32, !dbg !2216
  %443 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i32 0, i32 0), i32 %442, i32 %9) #9, !dbg !2216
  br label %448, !dbg !2216

; <label>:444:                                    ; preds = %394, %319, %315, %258, %203, %199, %133
  %445 = phi i32 [ %44, %133 ], [ %189, %258 ], [ %189, %199 ], [ %189, %203 ], [ %305, %394 ], [ %305, %315 ], [ %305, %319 ]
  %446 = and i32 %445, 65535, !dbg !2218
  %447 = icmp eq i32 %446, 0, !dbg !2220
  br i1 %447, label %448, label %452, !dbg !2221

; <label>:448:                                    ; preds = %444, %439, %435, %400, %301, %299, %264, %185, %183, %150, %53, %49, %38
  call void @llvm.dbg.value(metadata %struct.bnep_channel_t* %0, metadata !505, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 1, metadata !500, metadata !DIExpression()), !dbg !2225
  %449 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 2, !dbg !2226
  %450 = load i32, i32* %449, align 4, !dbg !2226, !tbaa !509
  %451 = or i32 %450, 1, !dbg !2227
  store i32 %451, i32* %449, align 4, !dbg !2228, !tbaa !509
  br label %452, !dbg !2229

; <label>:452:                                    ; preds = %448, %444, %431, %427, %423, %420, %414, %410, %295, %291, %287, %284, %278, %274, %182, %173, %160, %156, %145, %141, %33, %29, %26
  %453 = phi i32 [ 0, %29 ], [ 0, %33 ], [ 0, %141 ], [ 0, %145 ], [ 0, %448 ], [ %446, %444 ], [ 3, %423 ], [ 3, %420 ], [ 3, %431 ], [ 3, %427 ], [ 3, %414 ], [ 3, %410 ], [ 3, %287 ], [ 3, %284 ], [ 3, %295 ], [ 3, %291 ], [ 3, %278 ], [ 3, %274 ], [ 3, %173 ], [ 3, %182 ], [ 3, %160 ], [ 3, %156 ], [ 2, %26 ]
  ret i32 %453, !dbg !2230
}

; Function Attrs: nounwind optsize
define internal fastcc void @bnep_send_connection_response(%struct.bnep_channel_t* nocapture readonly, i16 zeroext) unnamed_addr #0 !dbg !2231 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #8, !dbg !2238
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i16 0, metadata !2236, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2241
  %5 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !2242
  %6 = load i32, i32* %5, align 4, !dbg !2242, !tbaa !284
  %7 = icmp eq i32 %6, 1, !dbg !2244
  br i1 %7, label %17, label %8, !dbg !2245

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !2246
  %10 = load i16, i16* %9, align 4, !dbg !2246, !tbaa !192
  %11 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %10) #10, !dbg !2248
  %12 = icmp eq i32 %11, 0, !dbg !2248
  br i1 %12, label %17, label %13, !dbg !2249

; <label>:13:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i16 1, metadata !2236, metadata !DIExpression()), !dbg !2240
  store i8 1, i8* %4, align 1, !dbg !2250, !tbaa !203
  call void @llvm.dbg.value(metadata i16 2, metadata !2236, metadata !DIExpression()), !dbg !2240
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 1, !dbg !2251
  store i8 2, i8* %14, align 1, !dbg !2252, !tbaa !203
  call void @big_endian_store_16(i8* nonnull %4, i16 zeroext 2, i16 zeroext %1) #10, !dbg !2253
  call void @llvm.dbg.value(metadata i16 4, metadata !2236, metadata !DIExpression()), !dbg !2240
  %15 = load i16, i16* %9, align 4, !dbg !2254, !tbaa !192
  %16 = call i32 @l2cap_send_internal(i16 zeroext %15, i8* nonnull %4, i16 zeroext 4, i8 zeroext 0) #10, !dbg !2255
  call void @llvm.dbg.value(metadata i32 %16, metadata !2237, metadata !DIExpression()), !dbg !2241
  br label %17, !dbg !2256

; <label>:17:                                     ; preds = %13, %8, %2
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %4) #8, !dbg !2257
  ret void
}

; Function Attrs: nounwind optsize
define internal fastcc void @bnep_send_filter_net_type_set(%struct.bnep_channel_t* nocapture readonly, %struct.bnep_net_filter_t* nocapture readonly, i16 zeroext) unnamed_addr #0 !dbg !2258 {
  %4 = zext i16 %2 to i32, !dbg !2272
  %5 = shl nuw nsw i32 %4, 2, !dbg !2273
  %6 = add nuw nsw i32 %5, 8, !dbg !2274
  %7 = alloca i8, i32 %6, align 1, !dbg !2275
  tail call void @llvm.dbg.declare(metadata i8* %7, metadata !2265, metadata !DIExpression(DW_OP_deref)), !dbg !2276
  call void @llvm.dbg.value(metadata i16 0, metadata !2269, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 0, metadata !2270, metadata !DIExpression()), !dbg !2278
  %8 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !2279
  %9 = load i32, i32* %8, align 4, !dbg !2279, !tbaa !284
  %10 = icmp eq i32 %9, 1, !dbg !2281
  br i1 %10, label %40, label %11, !dbg !2282

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !2283
  %13 = load i16, i16* %12, align 4, !dbg !2283, !tbaa !192
  %14 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %13) #10, !dbg !2285
  %15 = icmp eq i32 %14, 0, !dbg !2285
  br i1 %15, label %40, label %16, !dbg !2286

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i16 1, metadata !2269, metadata !DIExpression()), !dbg !2277
  store i8 1, i8* %7, align 1, !dbg !2287, !tbaa !203
  call void @llvm.dbg.value(metadata i16 2, metadata !2269, metadata !DIExpression()), !dbg !2277
  %17 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2288
  store i8 3, i8* %17, align 1, !dbg !2289, !tbaa !203
  %18 = trunc i32 %5 to i16, !dbg !2290
  call void @big_endian_store_16(i8* nonnull %7, i16 zeroext 2, i16 zeroext %18) #10, !dbg !2291
  call void @llvm.dbg.value(metadata i16 4, metadata !2269, metadata !DIExpression()), !dbg !2277
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.bnep_send_filter_net_type_set, i32 0, i32 0), i32 %4) #9, !dbg !2292
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i16 4, metadata !2269, metadata !DIExpression()), !dbg !2277
  %20 = icmp eq i16 %2, 0, !dbg !2294
  br i1 %20, label %36, label %21, !dbg !2298

; <label>:21:                                     ; preds = %16
  %22 = shl i16 %2, 2, !dbg !2300
  br label %23, !dbg !2300

; <label>:23:                                     ; preds = %23, %21
  %24 = phi i32 [ %32, %23 ], [ 0, %21 ]
  %25 = phi i16 [ %31, %23 ], [ 4, %21 ]
  %26 = getelementptr inbounds %struct.bnep_net_filter_t, %struct.bnep_net_filter_t* %1, i32 %24, i32 0, !dbg !2300
  %27 = load i16, i16* %26, align 2, !dbg !2300, !tbaa !326
  call void @big_endian_store_16(i8* nonnull %7, i16 zeroext %25, i16 zeroext %27) #10, !dbg !2302
  %28 = or i16 %25, 2, !dbg !2303
  call void @llvm.dbg.value(metadata i16 %28, metadata !2269, metadata !DIExpression()), !dbg !2277
  %29 = getelementptr inbounds %struct.bnep_net_filter_t, %struct.bnep_net_filter_t* %1, i32 %24, i32 1, !dbg !2304
  %30 = load i16, i16* %29, align 2, !dbg !2304, !tbaa !331
  call void @big_endian_store_16(i8* nonnull %7, i16 zeroext %28, i16 zeroext %30) #10, !dbg !2305
  %31 = add i16 %25, 4, !dbg !2306
  call void @llvm.dbg.value(metadata i16 %31, metadata !2269, metadata !DIExpression()), !dbg !2277
  %32 = add nuw nsw i32 %24, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %32, metadata !2271, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 %32, metadata !2271, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i16 %31, metadata !2269, metadata !DIExpression()), !dbg !2277
  %33 = icmp eq i32 %32, %4, !dbg !2294
  br i1 %33, label %34, label %23, !dbg !2298, !llvm.loop !2309

; <label>:34:                                     ; preds = %23
  %35 = add i16 %22, 4, !dbg !2300
  br label %36, !dbg !2312

; <label>:36:                                     ; preds = %34, %16
  %37 = phi i16 [ 4, %16 ], [ %35, %34 ]
  %38 = load i16, i16* %12, align 4, !dbg !2312, !tbaa !192
  %39 = call i32 @l2cap_send_internal(i16 zeroext %38, i8* nonnull %7, i16 zeroext %37, i8 zeroext 0) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %39, metadata !2270, metadata !DIExpression()), !dbg !2278
  br label %40, !dbg !2314

; <label>:40:                                     ; preds = %36, %11, %3
  ret void
}

; Function Attrs: nounwind optsize
define internal fastcc void @bnep_send_filter_multi_addr_set(%struct.bnep_channel_t* nocapture readonly, %struct.bnep_multi_filter_t* nocapture readonly, i16 zeroext) unnamed_addr #0 !dbg !2315 {
  %4 = zext i16 %2 to i32, !dbg !2326
  %5 = mul nuw nsw i32 %4, 12, !dbg !2327
  %6 = add nuw nsw i32 %5, 8, !dbg !2328
  %7 = alloca i8, i32 %6, align 1, !dbg !2329
  tail call void @llvm.dbg.declare(metadata i8* %7, metadata !2322, metadata !DIExpression(DW_OP_deref)), !dbg !2330
  call void @llvm.dbg.value(metadata i16 0, metadata !2323, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !2324, metadata !DIExpression()), !dbg !2332
  %8 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 1, !dbg !2333
  %9 = load i32, i32* %8, align 4, !dbg !2333, !tbaa !284
  %10 = icmp eq i32 %9, 1, !dbg !2335
  br i1 %10, label %41, label %11, !dbg !2336

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.bnep_channel_t, %struct.bnep_channel_t* %0, i32 0, i32 7, !dbg !2337
  %13 = load i16, i16* %12, align 4, !dbg !2337, !tbaa !192
  %14 = tail call i32 @l2cap_can_send_packet_now(i16 zeroext %13) #10, !dbg !2339
  %15 = icmp eq i32 %14, 0, !dbg !2339
  br i1 %15, label %41, label %16, !dbg !2340

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.value(metadata i16 1, metadata !2323, metadata !DIExpression()), !dbg !2331
  store i8 1, i8* %7, align 1, !dbg !2341, !tbaa !203
  call void @llvm.dbg.value(metadata i16 2, metadata !2323, metadata !DIExpression()), !dbg !2331
  %17 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2342
  store i8 5, i8* %17, align 1, !dbg !2343, !tbaa !203
  %18 = trunc i32 %5 to i16, !dbg !2344
  call void @big_endian_store_16(i8* nonnull %7, i16 zeroext 2, i16 zeroext %18) #10, !dbg !2345
  call void @llvm.dbg.value(metadata i16 4, metadata !2323, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !2325, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 0, metadata !2325, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i16 4, metadata !2323, metadata !DIExpression()), !dbg !2331
  %19 = icmp eq i16 %2, 0, !dbg !2347
  br i1 %19, label %37, label %20, !dbg !2351

; <label>:20:                                     ; preds = %16
  %21 = mul i16 %2, 12, !dbg !2353
  br label %22, !dbg !2353

; <label>:22:                                     ; preds = %22, %20
  %23 = phi i32 [ %33, %22 ], [ 0, %20 ]
  %24 = phi i16 [ %32, %22 ], [ 4, %20 ]
  %25 = zext i16 %24 to i32, !dbg !2353
  %26 = getelementptr inbounds i8, i8* %7, i32 %25, !dbg !2353
  %27 = getelementptr inbounds %struct.bnep_multi_filter_t, %struct.bnep_multi_filter_t* %1, i32 %23, i32 0, i32 0, !dbg !2353
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 6, i32 1, i1 false), !dbg !2353
  %28 = add i16 %24, 6, !dbg !2355
  call void @llvm.dbg.value(metadata i16 %28, metadata !2323, metadata !DIExpression()), !dbg !2331
  %29 = zext i16 %28 to i32, !dbg !2356
  %30 = getelementptr inbounds i8, i8* %7, i32 %29, !dbg !2356
  %31 = getelementptr inbounds %struct.bnep_multi_filter_t, %struct.bnep_multi_filter_t* %1, i32 %23, i32 1, i32 0, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 6, i32 1, i1 false), !dbg !2356
  %32 = add i16 %24, 12, !dbg !2357
  call void @llvm.dbg.value(metadata i16 %32, metadata !2323, metadata !DIExpression()), !dbg !2331
  %33 = add nuw nsw i32 %23, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %33, metadata !2325, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 %33, metadata !2325, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i16 %32, metadata !2323, metadata !DIExpression()), !dbg !2331
  %34 = icmp eq i32 %33, %4, !dbg !2347
  br i1 %34, label %35, label %22, !dbg !2351, !llvm.loop !2360

; <label>:35:                                     ; preds = %22
  %36 = add i16 %21, 4, !dbg !2353
  br label %37, !dbg !2363

; <label>:37:                                     ; preds = %35, %16
  %38 = phi i16 [ 4, %16 ], [ %36, %35 ]
  %39 = load i16, i16* %12, align 4, !dbg !2363, !tbaa !192
  %40 = call i32 @l2cap_send_internal(i16 zeroext %39, i8* nonnull %7, i16 zeroext %38, i8 zeroext 0) #10, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %40, metadata !2324, metadata !DIExpression()), !dbg !2332
  br label %41, !dbg !2365

; <label>:41:                                     ; preds = %37, %11, %3
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @l2cap_send_internal(i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare %struct.bnep_channel_t* @btstack_memory_bnep_channel_get() local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @bt_get_mac_addr(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_disconnect_internal(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @reverse_bd_addr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!156, !157}
!llvm.ident = !{!158}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !155, line: 190, type: !109, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !147)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/btstack/Profile/BR_EDR/bnep.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !12, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, size: 32, elements: !7)
!6 = !DIFile(filename: "../btstack/Profile/include/bredr/bnep.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_CLOSED", value: 1)
!9 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_WAIT_FOR_CONNECTION_REQUEST", value: 2)
!10 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_WAIT_FOR_CONNECTION_RESPONSE", value: 3)
!11 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_CONNECTED", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 49, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_NONE", value: 0)
!15 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_NOT_UNDERSTOOD", value: 1)
!16 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_CONNECTION_REQUEST", value: 2)
!17 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_CONNECTION_RESPONSE", value: 4)
!18 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_NET_TYPE_SET", value: 8)
!19 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_NET_TYPE_RESPONSE", value: 16)
!20 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_MULTI_ADDR_SET", value: 32)
!21 = !DIEnumerator(name: "BNEP_CHANNEL_STATE_VAR_SND_FILTER_MULTI_ADDR_RESPONSE", value: 64)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 60, size: 32, elements: !23)
!23 = !{!24}
!24 = !DIEnumerator(name: "BNEP_CH_EVT_READY_TO_SEND", value: 0)
!25 = !{!26, !27, !34, !123, !125, !42, !117, !133, !146}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !29, line: 55, baseType: !30)
!29 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !29, line: 53, size: 32, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !29, line: 54, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_channel_t", file: !6, line: 127, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1888, elements: !37)
!37 = !{!38, !39, !41, !43, !47, !48, !56, !57, !58, !60, !61, !62, !63, !64, !73, !74, !76, !77, !84, !85, !87, !88, !108, !110, !111, !118, !119, !121}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !36, file: !6, line: 85, baseType: !28, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !36, file: !6, line: 87, baseType: !40, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "BNEP_CHANNEL_STATE", file: !6, line: 47, baseType: !5)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !36, file: !6, line: 89, baseType: !42, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "BNEP_CHANNEL_STATE_VAR", file: !6, line: 58, baseType: !12)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !36, file: !6, line: 91, baseType: !44, size: 16, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !36, file: !6, line: 92, baseType: !26, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !36, file: !6, line: 93, baseType: !49, size: 48, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !50, line: 7, baseType: !51)
!50 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 48, elements: !54)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 44, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55}
!55 = !DISubrange(count: 6)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !36, file: !6, line: 94, baseType: !49, size: 48, offset: 208)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_cid", scope: !36, file: !6, line: 95, baseType: !44, size: 16, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !36, file: !6, line: 96, baseType: !59, size: 16, offset: 272)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !50, line: 9, baseType: !44)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_source", scope: !36, file: !6, line: 98, baseType: !44, size: 16, offset: 288)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_dest", scope: !36, file: !6, line: 99, baseType: !44, size: 16, offset: 304)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "last_control_type", scope: !36, file: !6, line: 101, baseType: !52, size: 8, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "response_code", scope: !36, file: !6, line: 102, baseType: !44, size: 16, offset: 336)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter", scope: !36, file: !6, line: 104, baseType: !65, size: 256, offset: 352)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !71)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_net_filter_t", file: !6, line: 72, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 69, size: 32, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !67, file: !6, line: 70, baseType: !44, size: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !67, file: !6, line: 71, baseType: !44, size: 16, offset: 16)
!71 = !{!72}
!72 = !DISubrange(count: 8)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter_count", scope: !36, file: !6, line: 105, baseType: !44, size: 16, offset: 608)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter_out", scope: !36, file: !6, line: 107, baseType: !75, size: 32, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "net_filter_out_count", scope: !36, file: !6, line: 108, baseType: !44, size: 16, offset: 672)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter", scope: !36, file: !6, line: 110, baseType: !78, size: 768, offset: 688)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 768, elements: !71)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_multi_filter_t", file: !6, line: 78, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 75, size: 96, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "addr_start", scope: !80, file: !6, line: 76, baseType: !51, size: 48)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "addr_end", scope: !80, file: !6, line: 77, baseType: !51, size: 48, offset: 48)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter_count", scope: !36, file: !6, line: 111, baseType: !44, size: 16, offset: 1456)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter_out", scope: !36, file: !6, line: 113, baseType: !86, size: 32, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_filter_out_count", scope: !36, file: !6, line: 114, baseType: !44, size: 16, offset: 1504)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !36, file: !6, line: 117, baseType: !89, size: 160, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !90, line: 19, baseType: !91)
!90 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !90, line: 7, size: 160, elements: !92)
!92 = !{!93, !94, !97, !98, !99, !100, !101, !102, !107}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !91, file: !90, line: 8, baseType: !28, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !91, file: !90, line: 10, baseType: !95, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 48, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !91, file: !90, line: 11, baseType: !95, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !91, file: !90, line: 12, baseType: !95, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !91, file: !90, line: 13, baseType: !95, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !91, file: !90, line: 14, baseType: !95, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !91, file: !90, line: 15, baseType: !95, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !91, file: !90, line: 17, baseType: !103, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !91, file: !90, line: 18, baseType: !26, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "timer_active", scope: !36, file: !6, line: 118, baseType: !109, size: 32, offset: 1696)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "retry_count", scope: !36, file: !6, line: 119, baseType: !109, size: 32, offset: 1728)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !36, file: !6, line: 121, baseType: !112, size: 32, offset: 1760)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !113, line: 58, baseType: !114)
!113 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 32)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !52, !44, !117, !44}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_for_can_send_now", scope: !36, file: !6, line: 123, baseType: !52, size: 8, offset: 1792)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "send_item", scope: !36, file: !6, line: 125, baseType: !120, size: 32, offset: 1824)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !29, line: 101, baseType: !27)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_bit_flag", scope: !36, file: !6, line: 126, baseType: !122, size: 32, offset: 1856)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !45, line: 48, baseType: !96)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !29, line: 100, baseType: !28)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_service_t", file: !6, line: 137, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 130, size: 96, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !127, file: !6, line: 131, baseType: !28, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "service_uuid", scope: !127, file: !6, line: 132, baseType: !44, size: 16, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !127, file: !6, line: 133, baseType: !44, size: 16, offset: 48)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !127, file: !6, line: 136, baseType: !112, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "resend_t", file: !135, line: 74, baseType: !136)
!135 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 70, size: 64, elements: !137)
!137 = !{!138, !139, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !136, file: !135, line: 71, baseType: !124, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !136, file: !135, line: 72, baseType: !140, size: 16, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !45, line: 46, baseType: !46)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !136, file: !135, line: 73, baseType: !142, offset: 48)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !45, line: 44, baseType: !53)
!144 = !{!145}
!145 = !DISubrange(count: 0)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!147 = !{!0, !148, !150, !153}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "bnep_security_level", scope: !2, file: !3, line: 80, type: !52, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "bnep_channels", scope: !2, file: !3, line: 78, type: !152, isLocal: true, isDefinition: true)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_list_t", file: !29, line: 58, baseType: !27)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "bnep_services", scope: !2, file: !3, line: 77, type: !152, isLocal: true, isDefinition: true)
!155 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!156 = !{i32 2, !"Dwarf Version", i32 4}
!157 = !{i32 2, !"Debug Info Version", i32 3}
!158 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!159 = distinct !DISubprogram(name: "bnep_can_send_packet_now", scope: !3, file: !3, line: 390, type: !160, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{!109, !44}
!162 = !{!163, !164}
!163 = !DILocalVariable(name: "bnep_cid", arg: 1, scope: !159, file: !3, line: 390, type: !44)
!164 = !DILocalVariable(name: "channel", scope: !159, file: !3, line: 392, type: !34)
!165 = !DILocation(line: 390, column: 39, scope: !159)
!166 = !DILocalVariable(name: "l2cap_cid", arg: 1, scope: !167, file: !3, line: 768, type: !44)
!167 = distinct !DISubprogram(name: "bnep_channel_for_l2cap_cid", scope: !3, file: !3, line: 768, type: !168, isLocal: true, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{!34, !44}
!170 = !{!166, !171, !172}
!171 = !DILocalVariable(name: "it", scope: !167, file: !3, line: 770, type: !27)
!172 = !DILocalVariable(name: "channel", scope: !173, file: !3, line: 772, type: !34)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 771, column: 76)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 771, column: 5)
!175 = distinct !DILexicalBlock(scope: !167, file: !3, line: 771, column: 5)
!176 = !DILocation(line: 768, column: 60, scope: !167, inlinedAt: !177)
!177 = distinct !DILocation(line: 392, column: 31, scope: !159)
!178 = !{!179, !179, i64 0}
!179 = !{!"any pointer", !180, i64 0}
!180 = !{!"omnipotent char", !181, i64 0}
!181 = !{!"Simple C/C++ TBAA"}
!182 = !DILocation(line: 770, column: 28, scope: !167, inlinedAt: !177)
!183 = !DILocation(line: 771, column: 5, scope: !184, inlinedAt: !177)
!184 = !DILexicalBlockFile(scope: !175, file: !3, discriminator: 1)
!185 = !DILocation(line: 773, column: 22, scope: !186, inlinedAt: !177)
!186 = distinct !DILexicalBlock(scope: !173, file: !3, line: 773, column: 13)
!187 = !DILocation(line: 771, column: 70, scope: !188, inlinedAt: !177)
!188 = !DILexicalBlockFile(scope: !174, file: !3, discriminator: 2)
!189 = distinct !{!189, !190, !191}
!190 = !DILocation(line: 771, column: 5, scope: !175)
!191 = !DILocation(line: 776, column: 5, scope: !175)
!192 = !{!193, !195, i64 32}
!193 = !{!"", !194, i64 0, !180, i64 4, !180, i64 8, !195, i64 12, !179, i64 16, !180, i64 20, !180, i64 26, !195, i64 32, !195, i64 34, !195, i64 36, !195, i64 38, !180, i64 40, !195, i64 42, !180, i64 44, !195, i64 76, !179, i64 80, !195, i64 84, !180, i64 86, !195, i64 182, !179, i64 184, !195, i64 188, !196, i64 192, !197, i64 212, !197, i64 216, !179, i64 220, !180, i64 224, !179, i64 228, !197, i64 232}
!194 = !{!"btstack_linked_item", !179, i64 0}
!195 = !{!"short", !180, i64 0}
!196 = !{!"btstack_timer_source", !194, i64 0, !197, i64 4, !197, i64 8, !197, i64 10, !197, i64 10, !197, i64 10, !197, i64 10, !179, i64 12, !179, i64 16}
!197 = !{!"int", !180, i64 0}
!198 = !DILocation(line: 773, column: 32, scope: !186, inlinedAt: !177)
!199 = !DILocation(line: 395, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 395, column: 9)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 394, column: 19)
!202 = distinct !DILexicalBlock(scope: !159, file: !3, line: 394, column: 9)
!203 = !{!180, !180, i64 0}
!204 = !DILocation(line: 395, column: 9, scope: !201)
!205 = !DILocation(line: 395, column: 9, scope: !206)
!206 = !DILexicalBlockFile(scope: !200, file: !3, discriminator: 1)
!207 = !DILocation(line: 399, column: 12, scope: !159)
!208 = !DILocation(line: 399, column: 5, scope: !159)
!209 = !DILocation(line: 400, column: 1, scope: !159)
!210 = distinct !DISubprogram(name: "bnep_request_can_send_now_event", scope: !3, file: !3, line: 402, type: !211, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !44}
!213 = !{!214, !215}
!214 = !DILocalVariable(name: "bnep_cid", arg: 1, scope: !210, file: !3, line: 402, type: !44)
!215 = !DILocalVariable(name: "channel", scope: !210, file: !3, line: 404, type: !34)
!216 = !DILocation(line: 402, column: 47, scope: !210)
!217 = !DILocation(line: 768, column: 60, scope: !167, inlinedAt: !218)
!218 = distinct !DILocation(line: 404, column: 31, scope: !210)
!219 = !DILocation(line: 770, column: 28, scope: !167, inlinedAt: !218)
!220 = !DILocation(line: 771, column: 5, scope: !184, inlinedAt: !218)
!221 = !DILocation(line: 773, column: 22, scope: !186, inlinedAt: !218)
!222 = !DILocation(line: 771, column: 70, scope: !188, inlinedAt: !218)
!223 = !DILocation(line: 773, column: 32, scope: !186, inlinedAt: !218)
!224 = !DILocation(line: 407, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 407, column: 9)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 406, column: 19)
!227 = distinct !DILexicalBlock(scope: !210, file: !3, line: 406, column: 9)
!228 = !DILocation(line: 407, column: 9, scope: !226)
!229 = !DILocation(line: 407, column: 9, scope: !230)
!230 = !DILexicalBlockFile(scope: !225, file: !3, discriminator: 1)
!231 = !DILocation(line: 411, column: 14, scope: !210)
!232 = !DILocation(line: 411, column: 39, scope: !210)
!233 = !{!193, !180, i64 224}
!234 = !DILocation(line: 413, column: 1, scope: !210)
!235 = !DILocation(line: 413, column: 1, scope: !236)
!236 = !DILexicalBlockFile(scope: !210, file: !3, discriminator: 2)
!237 = distinct !DISubprogram(name: "bnep_send", scope: !3, file: !3, line: 462, type: !238, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!109, !44, !117, !44}
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!241 = !DILocalVariable(name: "bnep_cid", arg: 1, scope: !237, file: !3, line: 462, type: !44)
!242 = !DILocalVariable(name: "packet", arg: 2, scope: !237, file: !3, line: 462, type: !117)
!243 = !DILocalVariable(name: "len", arg: 3, scope: !237, file: !3, line: 462, type: !44)
!244 = !DILocalVariable(name: "channel", scope: !237, file: !3, line: 464, type: !34)
!245 = !DILocalVariable(name: "bnep_out_buffer", scope: !237, file: !3, line: 465, type: !117)
!246 = !DILocalVariable(name: "pos", scope: !237, file: !3, line: 466, type: !44)
!247 = !DILocalVariable(name: "pos_out", scope: !237, file: !3, line: 467, type: !44)
!248 = !DILocalVariable(name: "payload_len", scope: !237, file: !3, line: 468, type: !44)
!249 = !DILocalVariable(name: "err", scope: !237, file: !3, line: 469, type: !109)
!250 = !DILocalVariable(name: "has_source", scope: !237, file: !3, line: 470, type: !109)
!251 = !DILocalVariable(name: "has_dest", scope: !237, file: !3, line: 471, type: !109)
!252 = !DILocalVariable(name: "addr_dest", scope: !237, file: !3, line: 473, type: !49)
!253 = !DILocalVariable(name: "addr_source", scope: !237, file: !3, line: 474, type: !49)
!254 = !DILocalVariable(name: "network_protocol_type", scope: !237, file: !3, line: 475, type: !44)
!255 = !DILocalVariable(name: "acl_buffer", scope: !237, file: !3, line: 544, type: !146)
!256 = !DILocation(line: 462, column: 24, scope: !237)
!257 = !DILocation(line: 462, column: 43, scope: !237)
!258 = !DILocation(line: 462, column: 60, scope: !237)
!259 = !DILocation(line: 465, column: 21, scope: !237)
!260 = !DILocation(line: 466, column: 21, scope: !237)
!261 = !DILocation(line: 467, column: 21, scope: !237)
!262 = !DILocation(line: 469, column: 21, scope: !237)
!263 = !DILocation(line: 473, column: 5, scope: !237)
!264 = !DILocation(line: 473, column: 21, scope: !237)
!265 = !DILocation(line: 474, column: 5, scope: !237)
!266 = !DILocation(line: 474, column: 21, scope: !237)
!267 = !DILocation(line: 768, column: 60, scope: !167, inlinedAt: !268)
!268 = distinct !DILocation(line: 477, column: 15, scope: !237)
!269 = !DILocation(line: 770, column: 28, scope: !167, inlinedAt: !268)
!270 = !DILocation(line: 771, column: 5, scope: !184, inlinedAt: !268)
!271 = !DILocation(line: 773, column: 22, scope: !186, inlinedAt: !268)
!272 = !DILocation(line: 771, column: 70, scope: !188, inlinedAt: !268)
!273 = !DILocation(line: 773, column: 32, scope: !186, inlinedAt: !268)
!274 = !DILocation(line: 479, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 479, column: 9)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 478, column: 26)
!277 = distinct !DILexicalBlock(scope: !237, file: !3, line: 478, column: 9)
!278 = !DILocation(line: 479, column: 9, scope: !276)
!279 = !DILocation(line: 479, column: 9, scope: !280)
!280 = !DILexicalBlockFile(scope: !275, file: !3, discriminator: 1)
!281 = !DILocation(line: 772, column: 36, scope: !173, inlinedAt: !268)
!282 = !DILocation(line: 483, column: 18, scope: !283)
!283 = distinct !DILexicalBlock(scope: !237, file: !3, line: 483, column: 9)
!284 = !{!193, !180, i64 4}
!285 = !DILocation(line: 483, column: 24, scope: !283)
!286 = !DILocation(line: 483, column: 9, scope: !237)
!287 = !DILocation(line: 488, column: 10, scope: !288)
!288 = distinct !DILexicalBlock(scope: !237, file: !3, line: 488, column: 9)
!289 = !DILocation(line: 488, column: 9, scope: !237)
!290 = !DILocation(line: 494, column: 5, scope: !237)
!291 = !DILocation(line: 496, column: 5, scope: !237)
!292 = !DILocation(line: 498, column: 29, scope: !237)
!293 = !DILocation(line: 501, column: 23, scope: !237)
!294 = !DILocation(line: 468, column: 21, scope: !237)
!295 = !DILocation(line: 503, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !237, file: !3, line: 503, column: 9)
!297 = !DILocation(line: 503, column: 31, scope: !296)
!298 = !DILocation(line: 503, column: 9, scope: !237)
!299 = !DILocation(line: 504, column: 25, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 504, column: 13)
!301 = distinct !DILexicalBlock(scope: !296, file: !3, line: 503, column: 50)
!302 = !DILocation(line: 504, column: 13, scope: !301)
!303 = !DILocation(line: 509, column: 33, scope: !301)
!304 = !DILocation(line: 510, column: 5, scope: !301)
!305 = !DILocation(line: 475, column: 21, scope: !237)
!306 = !DILocalVariable(name: "network_protocol_type", arg: 2, scope: !307, file: !3, line: 416, type: !44)
!307 = distinct !DISubprogram(name: "bnep_filter_protocol", scope: !3, file: !3, line: 416, type: !308, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{!109, !34, !44}
!310 = !{!311, !306, !312}
!311 = !DILocalVariable(name: "channel", arg: 1, scope: !307, file: !3, line: 416, type: !34)
!312 = !DILocalVariable(name: "i", scope: !307, file: !3, line: 418, type: !109)
!313 = !DILocation(line: 416, column: 67, scope: !307, inlinedAt: !314)
!314 = distinct !DILocation(line: 513, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !237, file: !3, line: 513, column: 9)
!316 = !DILocation(line: 420, column: 18, scope: !317, inlinedAt: !314)
!317 = distinct !DILexicalBlock(scope: !307, file: !3, line: 420, column: 9)
!318 = !{!193, !195, i64 76}
!319 = !DILocation(line: 420, column: 35, scope: !317, inlinedAt: !314)
!320 = !DILocation(line: 420, column: 9, scope: !307, inlinedAt: !314)
!321 = !DILocation(line: 426, column: 62, scope: !322, inlinedAt: !314)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 426, column: 13)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 425, column: 54)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 425, column: 5)
!325 = distinct !DILexicalBlock(scope: !307, file: !3, line: 425, column: 5)
!326 = !{!327, !195, i64 0}
!327 = !{!"", !195, i64 0, !195, i64 2}
!328 = !DILocation(line: 426, column: 36, scope: !322, inlinedAt: !314)
!329 = !DILocation(line: 426, column: 75, scope: !322, inlinedAt: !314)
!330 = !DILocation(line: 427, column: 62, scope: !322, inlinedAt: !314)
!331 = !{!327, !195, i64 2}
!332 = !DILocation(line: 427, column: 36, scope: !322, inlinedAt: !314)
!333 = !DILocation(line: 426, column: 13, scope: !334, inlinedAt: !314)
!334 = !DILexicalBlockFile(scope: !323, file: !3, discriminator: 1)
!335 = !DILocation(line: 425, column: 50, scope: !336, inlinedAt: !314)
!336 = !DILexicalBlockFile(scope: !324, file: !3, discriminator: 2)
!337 = !DILocation(line: 418, column: 9, scope: !307, inlinedAt: !314)
!338 = !DILocation(line: 425, column: 19, scope: !339, inlinedAt: !314)
!339 = !DILexicalBlockFile(scope: !324, file: !3, discriminator: 1)
!340 = !DILocation(line: 425, column: 5, scope: !341, inlinedAt: !314)
!341 = !DILexicalBlockFile(scope: !325, file: !3, discriminator: 1)
!342 = distinct !{!342, !343, !344}
!343 = !DILocation(line: 425, column: 5, scope: !325)
!344 = !DILocation(line: 430, column: 5, scope: !325)
!345 = !DILocation(line: 435, column: 69, scope: !346, inlinedAt: !353)
!346 = distinct !DISubprogram(name: "bnep_filter_multicast", scope: !3, file: !3, line: 435, type: !347, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!109, !34, !117}
!349 = !{!350, !351, !352}
!350 = !DILocalVariable(name: "channel", arg: 1, scope: !346, file: !3, line: 435, type: !34)
!351 = !DILocalVariable(name: "addr_dest", arg: 2, scope: !346, file: !3, line: 435, type: !117)
!352 = !DILocalVariable(name: "i", scope: !346, file: !3, line: 437, type: !109)
!353 = distinct !DILocation(line: 514, column: 10, scope: !315)
!354 = !DILocation(line: 440, column: 10, scope: !355, inlinedAt: !353)
!355 = distinct !DILexicalBlock(scope: !346, file: !3, line: 440, column: 9)
!356 = !DILocation(line: 440, column: 23, scope: !355, inlinedAt: !353)
!357 = !DILocation(line: 440, column: 31, scope: !355, inlinedAt: !353)
!358 = !DILocation(line: 440, column: 9, scope: !346, inlinedAt: !353)
!359 = !DILocation(line: 445, column: 18, scope: !360, inlinedAt: !353)
!360 = distinct !DILexicalBlock(scope: !346, file: !3, line: 445, column: 9)
!361 = !{!193, !195, i64 182}
!362 = !DILocation(line: 445, column: 41, scope: !360, inlinedAt: !353)
!363 = !DILocation(line: 445, column: 9, scope: !346, inlinedAt: !353)
!364 = !DILocation(line: 451, column: 32, scope: !365, inlinedAt: !353)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 451, column: 13)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 450, column: 60)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 450, column: 5)
!368 = distinct !DILexicalBlock(scope: !346, file: !3, line: 450, column: 5)
!369 = !DILocation(line: 451, column: 14, scope: !365, inlinedAt: !353)
!370 = !DILocation(line: 451, column: 92, scope: !365, inlinedAt: !353)
!371 = !DILocation(line: 451, column: 98, scope: !365, inlinedAt: !353)
!372 = !DILocation(line: 452, column: 32, scope: !365, inlinedAt: !353)
!373 = !DILocation(line: 452, column: 14, scope: !365, inlinedAt: !353)
!374 = !DILocation(line: 452, column: 90, scope: !365, inlinedAt: !353)
!375 = !DILocation(line: 451, column: 13, scope: !376, inlinedAt: !353)
!376 = !DILexicalBlockFile(scope: !366, file: !3, discriminator: 1)
!377 = !DILocation(line: 450, column: 56, scope: !378, inlinedAt: !353)
!378 = !DILexicalBlockFile(scope: !367, file: !3, discriminator: 2)
!379 = !DILocation(line: 437, column: 9, scope: !346, inlinedAt: !353)
!380 = !DILocation(line: 450, column: 19, scope: !381, inlinedAt: !353)
!381 = !DILexicalBlockFile(scope: !367, file: !3, discriminator: 1)
!382 = !DILocation(line: 450, column: 5, scope: !383, inlinedAt: !353)
!383 = !DILexicalBlockFile(scope: !368, file: !3, discriminator: 1)
!384 = distinct !{!384, !385, !386}
!385 = !DILocation(line: 450, column: 5, scope: !368)
!386 = !DILocation(line: 455, column: 5, scope: !368)
!387 = !DILocation(line: 516, column: 14, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 516, column: 13)
!389 = distinct !DILexicalBlock(scope: !315, file: !3, line: 514, column: 53)
!390 = !DILocation(line: 516, column: 36, scope: !388)
!391 = !DILocation(line: 517, column: 26, scope: !388)
!392 = !DILocation(line: 516, column: 55, scope: !388)
!393 = !DILocation(line: 534, column: 39, scope: !237)
!394 = !DILocation(line: 534, column: 19, scope: !237)
!395 = !DILocation(line: 534, column: 76, scope: !237)
!396 = !DILocation(line: 535, column: 35, scope: !237)
!397 = !DILocation(line: 535, column: 17, scope: !237)
!398 = !DILocation(line: 535, column: 73, scope: !237)
!399 = !DILocation(line: 538, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !237, file: !3, line: 538, column: 9)
!401 = !DILocation(line: 538, column: 32, scope: !400)
!402 = !{!193, !195, i64 12}
!403 = !DILocation(line: 538, column: 23, scope: !400)
!404 = !DILocation(line: 538, column: 21, scope: !400)
!405 = !DILocation(line: 538, column: 9, scope: !237)
!406 = !DILocation(line: 539, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 539, column: 9)
!408 = distinct !DILexicalBlock(scope: !400, file: !3, line: 538, column: 48)
!409 = !DILocation(line: 539, column: 9, scope: !408)
!410 = !DILocation(line: 539, column: 9, scope: !411)
!411 = !DILexicalBlockFile(scope: !407, file: !3, discriminator: 1)
!412 = !DILocation(line: 544, column: 9, scope: !237)
!413 = !DILocation(line: 546, column: 70, scope: !237)
!414 = !DILocation(line: 546, column: 18, scope: !237)
!415 = !DILocation(line: 547, column: 34, scope: !237)
!416 = !DILocation(line: 550, column: 20, scope: !417)
!417 = distinct !DILexicalBlock(scope: !237, file: !3, line: 550, column: 9)
!418 = !DILocation(line: 552, column: 16, scope: !419)
!419 = !DILexicalBlockFile(scope: !420, file: !3, discriminator: 1)
!420 = distinct !DILexicalBlock(scope: !417, file: !3, line: 552, column: 16)
!421 = !DILocation(line: 552, column: 27, scope: !419)
!422 = !DILocation(line: 554, column: 28, scope: !423)
!423 = !DILexicalBlockFile(scope: !424, file: !3, discriminator: 1)
!424 = distinct !DILexicalBlock(scope: !420, file: !3, line: 554, column: 16)
!425 = !DILocation(line: 556, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !424, file: !3, line: 554, column: 41)
!427 = !DILocation(line: 561, column: 9, scope: !237)
!428 = !DILocation(line: 562, column: 9, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 561, column: 19)
!430 = distinct !DILexicalBlock(scope: !237, file: !3, line: 561, column: 9)
!431 = !DILocation(line: 564, column: 5, scope: !429)
!432 = !DILocation(line: 567, column: 9, scope: !237)
!433 = !DILocation(line: 568, column: 9, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 567, column: 21)
!435 = distinct !DILexicalBlock(scope: !237, file: !3, line: 567, column: 9)
!436 = !DILocation(line: 569, column: 17, scope: !434)
!437 = !DILocation(line: 570, column: 5, scope: !434)
!438 = !DILocation(line: 573, column: 5, scope: !237)
!439 = !DILocation(line: 574, column: 13, scope: !237)
!440 = !DILocation(line: 578, column: 36, scope: !237)
!441 = !DILocation(line: 578, column: 34, scope: !237)
!442 = !DILocation(line: 578, column: 52, scope: !237)
!443 = !DILocation(line: 578, column: 11, scope: !237)
!444 = !DILocation(line: 579, column: 13, scope: !237)
!445 = !DILocation(line: 581, column: 52, scope: !237)
!446 = !DILocation(line: 581, column: 11, scope: !237)
!447 = !DILocation(line: 583, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !237, file: !3, line: 583, column: 9)
!449 = !DILocation(line: 583, column: 9, scope: !237)
!450 = !DILocation(line: 584, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 584, column: 9)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 583, column: 14)
!453 = !DILocation(line: 584, column: 9, scope: !452)
!454 = !DILocation(line: 584, column: 9, scope: !455)
!455 = !DILexicalBlockFile(scope: !451, file: !3, discriminator: 1)
!456 = !DILocation(line: 587, column: 1, scope: !237)
!457 = !DILocation(line: 587, column: 1, scope: !458)
!458 = !DILexicalBlockFile(scope: !237, file: !3, discriminator: 1)
!459 = distinct !DISubprogram(name: "bnep_set_net_type_filter", scope: !3, file: !3, line: 591, type: !460, isLocal: false, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!109, !44, !75, !44}
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(name: "bnep_cid", arg: 1, scope: !459, file: !3, line: 591, type: !44)
!464 = !DILocalVariable(name: "filter", arg: 2, scope: !459, file: !3, line: 591, type: !75)
!465 = !DILocalVariable(name: "len", arg: 3, scope: !459, file: !3, line: 591, type: !44)
!466 = !DILocalVariable(name: "channel", scope: !459, file: !3, line: 593, type: !34)
!467 = !DILocation(line: 591, column: 39, scope: !459)
!468 = !DILocation(line: 591, column: 68, scope: !459)
!469 = !DILocation(line: 591, column: 85, scope: !459)
!470 = !DILocation(line: 595, column: 16, scope: !471)
!471 = distinct !DILexicalBlock(scope: !459, file: !3, line: 595, column: 9)
!472 = !DILocation(line: 595, column: 9, scope: !459)
!473 = !DILocation(line: 768, column: 60, scope: !167, inlinedAt: !474)
!474 = distinct !DILocation(line: 599, column: 15, scope: !459)
!475 = !DILocation(line: 770, column: 28, scope: !167, inlinedAt: !474)
!476 = !DILocation(line: 771, column: 5, scope: !184, inlinedAt: !474)
!477 = !DILocation(line: 773, column: 22, scope: !186, inlinedAt: !474)
!478 = !DILocation(line: 771, column: 70, scope: !188, inlinedAt: !474)
!479 = !DILocation(line: 773, column: 32, scope: !186, inlinedAt: !474)
!480 = !DILocation(line: 601, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 601, column: 9)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 600, column: 26)
!483 = distinct !DILexicalBlock(scope: !459, file: !3, line: 600, column: 9)
!484 = !DILocation(line: 601, column: 9, scope: !482)
!485 = !DILocation(line: 601, column: 9, scope: !486)
!486 = !DILexicalBlockFile(scope: !481, file: !3, discriminator: 1)
!487 = !DILocation(line: 605, column: 18, scope: !488)
!488 = distinct !DILexicalBlock(scope: !459, file: !3, line: 605, column: 9)
!489 = !DILocation(line: 605, column: 24, scope: !488)
!490 = !DILocation(line: 605, column: 9, scope: !459)
!491 = !DILocation(line: 609, column: 13, scope: !492)
!492 = distinct !DILexicalBlock(scope: !459, file: !3, line: 609, column: 9)
!493 = !DILocation(line: 609, column: 9, scope: !459)
!494 = !DILocation(line: 613, column: 14, scope: !459)
!495 = !DILocation(line: 613, column: 29, scope: !459)
!496 = !{!193, !179, i64 80}
!497 = !DILocation(line: 614, column: 14, scope: !459)
!498 = !DILocation(line: 614, column: 35, scope: !459)
!499 = !{!193, !195, i64 84}
!500 = !DILocalVariable(name: "event", arg: 2, scope: !501, file: !3, line: 709, type: !42)
!501 = distinct !DISubprogram(name: "bnep_channel_state_add", scope: !3, file: !3, line: 709, type: !502, isLocal: true, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !34, !42}
!504 = !{!505, !500}
!505 = !DILocalVariable(name: "channel", arg: 1, scope: !501, file: !3, line: 709, type: !34)
!506 = !DILocation(line: 709, column: 91, scope: !501, inlinedAt: !507)
!507 = distinct !DILocation(line: 617, column: 5, scope: !459)
!508 = !DILocation(line: 711, column: 60, scope: !501, inlinedAt: !507)
!509 = !{!193, !180, i64 8}
!510 = !DILocation(line: 711, column: 70, scope: !501, inlinedAt: !507)
!511 = !DILocation(line: 711, column: 24, scope: !501, inlinedAt: !507)
!512 = !DILocation(line: 620, column: 5, scope: !459)
!513 = !DILocation(line: 621, column: 1, scope: !459)
!514 = distinct !DISubprogram(name: "bnep_set_multicast_filter", scope: !3, file: !3, line: 624, type: !515, isLocal: false, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!109, !44, !86, !44}
!517 = !{!518, !519, !520, !521}
!518 = !DILocalVariable(name: "bnep_cid", arg: 1, scope: !514, file: !3, line: 624, type: !44)
!519 = !DILocalVariable(name: "filter", arg: 2, scope: !514, file: !3, line: 624, type: !86)
!520 = !DILocalVariable(name: "len", arg: 3, scope: !514, file: !3, line: 624, type: !44)
!521 = !DILocalVariable(name: "channel", scope: !514, file: !3, line: 626, type: !34)
!522 = !DILocation(line: 624, column: 40, scope: !514)
!523 = !DILocation(line: 624, column: 72, scope: !514)
!524 = !DILocation(line: 624, column: 89, scope: !514)
!525 = !DILocation(line: 628, column: 16, scope: !526)
!526 = distinct !DILexicalBlock(scope: !514, file: !3, line: 628, column: 9)
!527 = !DILocation(line: 628, column: 9, scope: !514)
!528 = !DILocation(line: 768, column: 60, scope: !167, inlinedAt: !529)
!529 = distinct !DILocation(line: 632, column: 15, scope: !514)
!530 = !DILocation(line: 770, column: 28, scope: !167, inlinedAt: !529)
!531 = !DILocation(line: 771, column: 5, scope: !184, inlinedAt: !529)
!532 = !DILocation(line: 773, column: 22, scope: !186, inlinedAt: !529)
!533 = !DILocation(line: 771, column: 70, scope: !188, inlinedAt: !529)
!534 = !DILocation(line: 773, column: 32, scope: !186, inlinedAt: !529)
!535 = !DILocation(line: 634, column: 9, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 634, column: 9)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 633, column: 26)
!538 = distinct !DILexicalBlock(scope: !514, file: !3, line: 633, column: 9)
!539 = !DILocation(line: 634, column: 9, scope: !537)
!540 = !DILocation(line: 634, column: 9, scope: !541)
!541 = !DILexicalBlockFile(scope: !536, file: !3, discriminator: 1)
!542 = !DILocation(line: 638, column: 18, scope: !543)
!543 = distinct !DILexicalBlock(scope: !514, file: !3, line: 638, column: 9)
!544 = !DILocation(line: 638, column: 24, scope: !543)
!545 = !DILocation(line: 638, column: 9, scope: !514)
!546 = !DILocation(line: 642, column: 13, scope: !547)
!547 = distinct !DILexicalBlock(scope: !514, file: !3, line: 642, column: 9)
!548 = !DILocation(line: 642, column: 9, scope: !514)
!549 = !DILocation(line: 646, column: 14, scope: !514)
!550 = !DILocation(line: 646, column: 35, scope: !514)
!551 = !{!193, !179, i64 184}
!552 = !DILocation(line: 647, column: 14, scope: !514)
!553 = !DILocation(line: 647, column: 41, scope: !514)
!554 = !{!193, !195, i64 188}
!555 = !DILocation(line: 709, column: 91, scope: !501, inlinedAt: !556)
!556 = distinct !DILocation(line: 650, column: 5, scope: !514)
!557 = !DILocation(line: 711, column: 60, scope: !501, inlinedAt: !556)
!558 = !DILocation(line: 711, column: 70, scope: !501, inlinedAt: !556)
!559 = !DILocation(line: 711, column: 24, scope: !501, inlinedAt: !556)
!560 = !DILocation(line: 653, column: 5, scope: !514)
!561 = !DILocation(line: 654, column: 1, scope: !514)
!562 = distinct !DISubprogram(name: "bnep_packet_handler", scope: !3, file: !3, line: 1482, type: !115, isLocal: false, isDefinition: true, scopeLine: 1483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !563)
!563 = !{!564, !565, !566, !567}
!564 = !DILocalVariable(name: "packet_type", arg: 1, scope: !562, file: !3, line: 1482, type: !52)
!565 = !DILocalVariable(name: "l2cap_cid", arg: 2, scope: !562, file: !3, line: 1482, type: !44)
!566 = !DILocalVariable(name: "packet", arg: 3, scope: !562, file: !3, line: 1482, type: !117)
!567 = !DILocalVariable(name: "size", arg: 4, scope: !562, file: !3, line: 1482, type: !44)
!568 = !DILocalVariable(name: "addr_dest", scope: !569, file: !3, line: 1372, type: !49)
!569 = distinct !DISubprogram(name: "bnep_l2cap_packet_handler", scope: !3, file: !3, line: 1364, type: !238, isLocal: true, isDefinition: true, scopeLine: 1365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !568, !580, !581, !582}
!571 = !DILocalVariable(name: "l2cap_cid", arg: 1, scope: !569, file: !3, line: 1364, type: !44)
!572 = !DILocalVariable(name: "packet", arg: 2, scope: !569, file: !3, line: 1364, type: !117)
!573 = !DILocalVariable(name: "size", arg: 3, scope: !569, file: !3, line: 1364, type: !44)
!574 = !DILocalVariable(name: "rc", scope: !569, file: !3, line: 1366, type: !109)
!575 = !DILocalVariable(name: "bnep_type", scope: !569, file: !3, line: 1367, type: !52)
!576 = !DILocalVariable(name: "bnep_header_has_ext", scope: !569, file: !3, line: 1368, type: !52)
!577 = !DILocalVariable(name: "extension_type", scope: !569, file: !3, line: 1369, type: !52)
!578 = !DILocalVariable(name: "pos", scope: !569, file: !3, line: 1370, type: !44)
!579 = !DILocalVariable(name: "addr_source", scope: !569, file: !3, line: 1371, type: !49)
!580 = !DILocalVariable(name: "network_protocol_type", scope: !569, file: !3, line: 1373, type: !44)
!581 = !DILocalVariable(name: "channel", scope: !569, file: !3, line: 1374, type: !34)
!582 = !DILocalVariable(name: "ext_len", scope: !583, file: !3, line: 1430, type: !52)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 1429, column: 12)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 1428, column: 30)
!585 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1428, column: 9)
!586 = !DILocation(line: 1372, column: 21, scope: !569, inlinedAt: !587)
!587 = distinct !DILocation(line: 1489, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1484, column: 26)
!589 = !DILocation(line: 1371, column: 21, scope: !569, inlinedAt: !587)
!590 = !DILocalVariable(name: "event_addr", scope: !591, file: !3, line: 1220, type: !49)
!591 = distinct !DISubprogram(name: "bnep_hci_event_handler", scope: !3, file: !3, line: 1216, type: !592, isLocal: true, isDefinition: true, scopeLine: 1217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!109, !117, !44}
!594 = !{!595, !596, !590, !597, !598, !599, !600, !601}
!595 = !DILocalVariable(name: "packet", arg: 1, scope: !591, file: !3, line: 1216, type: !117)
!596 = !DILocalVariable(name: "size", arg: 2, scope: !591, file: !3, line: 1216, type: !44)
!597 = !DILocalVariable(name: "psm", scope: !591, file: !3, line: 1221, type: !44)
!598 = !DILocalVariable(name: "l2cap_cid", scope: !591, file: !3, line: 1222, type: !44)
!599 = !DILocalVariable(name: "con_handle", scope: !591, file: !3, line: 1223, type: !59)
!600 = !DILocalVariable(name: "channel", scope: !591, file: !3, line: 1224, type: !34)
!601 = !DILocalVariable(name: "status", scope: !591, file: !3, line: 1225, type: !52)
!602 = !DILocation(line: 1220, column: 15, scope: !591, inlinedAt: !603)
!603 = distinct !DILocation(line: 1486, column: 9, scope: !588)
!604 = !DILocation(line: 1482, column: 34, scope: !562)
!605 = !DILocation(line: 1482, column: 56, scope: !562)
!606 = !DILocation(line: 1482, column: 76, scope: !562)
!607 = !DILocation(line: 1482, column: 93, scope: !562)
!608 = !DILocation(line: 1484, column: 5, scope: !562)
!609 = !DILocation(line: 1216, column: 61, scope: !591, inlinedAt: !603)
!610 = !DILocation(line: 1220, column: 5, scope: !591, inlinedAt: !603)
!611 = !DILocation(line: 1224, column: 22, scope: !591, inlinedAt: !603)
!612 = !DILocalVariable(name: "event", arg: 1, scope: !613, file: !614, line: 38, type: !617)
!613 = distinct !DISubprogram(name: "hci_event_packet_get_type", scope: !614, file: !614, line: 38, type: !615, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !619)
!614 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/btstack_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!615 = !DISubroutineType(types: !616)
!616 = !{!52, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!619 = !{!612}
!620 = !DILocation(line: 38, column: 68, scope: !613, inlinedAt: !621)
!621 = distinct !DILocation(line: 1227, column: 13, scope: !591, inlinedAt: !603)
!622 = !DILocation(line: 40, column: 16, scope: !613, inlinedAt: !621)
!623 = !DILocation(line: 1227, column: 5, scope: !591, inlinedAt: !603)
!624 = !DILocation(line: 1233, column: 9, scope: !625, inlinedAt: !603)
!625 = distinct !DILexicalBlock(scope: !591, file: !3, line: 1227, column: 48)
!626 = !DILocation(line: 1234, column: 22, scope: !625, inlinedAt: !603)
!627 = !DILocation(line: 1223, column: 22, scope: !591, inlinedAt: !603)
!628 = !DILocation(line: 1235, column: 22, scope: !625, inlinedAt: !603)
!629 = !DILocation(line: 1221, column: 15, scope: !591, inlinedAt: !603)
!630 = !DILocation(line: 1236, column: 22, scope: !625, inlinedAt: !603)
!631 = !DILocation(line: 1222, column: 15, scope: !591, inlinedAt: !603)
!632 = !DILocation(line: 1238, column: 17, scope: !633, inlinedAt: !603)
!633 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1238, column: 13)
!634 = !DILocation(line: 1238, column: 13, scope: !625, inlinedAt: !603)
!635 = !DILocation(line: 1242, column: 19, scope: !625, inlinedAt: !603)
!636 = !DILocation(line: 1244, column: 13, scope: !637, inlinedAt: !603)
!637 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1244, column: 13)
!638 = !DILocation(line: 1244, column: 13, scope: !625, inlinedAt: !603)
!639 = !DILocation(line: 1245, column: 13, scope: !640, inlinedAt: !603)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 1245, column: 13)
!641 = distinct !DILexicalBlock(scope: !637, file: !3, line: 1244, column: 22)
!642 = !DILocation(line: 1245, column: 13, scope: !641, inlinedAt: !603)
!643 = !DILocation(line: 1245, column: 13, scope: !644, inlinedAt: !603)
!644 = !DILexicalBlockFile(scope: !640, file: !3, discriminator: 1)
!645 = !DILocation(line: 1246, column: 13, scope: !641, inlinedAt: !603)
!646 = !DILocation(line: 1247, column: 13, scope: !641, inlinedAt: !603)
!647 = !DILocation(line: 1251, column: 19, scope: !625, inlinedAt: !603)
!648 = !DILocation(line: 1253, column: 14, scope: !649, inlinedAt: !603)
!649 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1253, column: 13)
!650 = !DILocation(line: 1253, column: 13, scope: !625, inlinedAt: !603)
!651 = !DILocation(line: 1254, column: 13, scope: !652, inlinedAt: !603)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 1254, column: 13)
!653 = distinct !DILexicalBlock(scope: !649, file: !3, line: 1253, column: 23)
!654 = !DILocation(line: 1254, column: 13, scope: !653, inlinedAt: !603)
!655 = !DILocation(line: 1254, column: 13, scope: !656, inlinedAt: !603)
!656 = !DILexicalBlockFile(scope: !652, file: !3, discriminator: 1)
!657 = !DILocation(line: 1255, column: 13, scope: !653, inlinedAt: !603)
!658 = !DILocation(line: 1256, column: 13, scope: !653, inlinedAt: !603)
!659 = !DILocation(line: 1260, column: 18, scope: !625, inlinedAt: !603)
!660 = !DILocation(line: 1260, column: 29, scope: !625, inlinedAt: !603)
!661 = !{!193, !195, i64 34}
!662 = !DILocation(line: 1261, column: 18, scope: !625, inlinedAt: !603)
!663 = !DILocation(line: 1261, column: 28, scope: !625, inlinedAt: !603)
!664 = !DILocation(line: 1264, column: 18, scope: !625, inlinedAt: !603)
!665 = !DILocation(line: 1264, column: 24, scope: !625, inlinedAt: !603)
!666 = !DILocation(line: 1269, column: 9, scope: !667, inlinedAt: !603)
!667 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1269, column: 9)
!668 = !DILocation(line: 1269, column: 9, scope: !625, inlinedAt: !603)
!669 = !DILocation(line: 1269, column: 9, scope: !670, inlinedAt: !603)
!670 = !DILexicalBlockFile(scope: !667, file: !3, discriminator: 1)
!671 = !DILocation(line: 1270, column: 9, scope: !625, inlinedAt: !603)
!672 = !DILocation(line: 1271, column: 9, scope: !625, inlinedAt: !603)
!673 = !DILocation(line: 1275, column: 18, scope: !625, inlinedAt: !603)
!674 = !DILocation(line: 1225, column: 15, scope: !591, inlinedAt: !603)
!675 = !DILocation(line: 1276, column: 9, scope: !676, inlinedAt: !603)
!676 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1276, column: 9)
!677 = !DILocation(line: 1276, column: 9, scope: !625, inlinedAt: !603)
!678 = !DILocation(line: 1276, column: 9, scope: !679, inlinedAt: !603)
!679 = !DILexicalBlockFile(scope: !676, file: !3, discriminator: 1)
!680 = !DILocation(line: 1279, column: 22, scope: !625, inlinedAt: !603)
!681 = !DILocation(line: 1280, column: 22, scope: !625, inlinedAt: !603)
!682 = !DILocation(line: 1282, column: 9, scope: !625, inlinedAt: !603)
!683 = !DILocation(line: 1283, column: 19, scope: !625, inlinedAt: !603)
!684 = !DILocation(line: 1284, column: 14, scope: !685, inlinedAt: !603)
!685 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1284, column: 13)
!686 = !DILocation(line: 1284, column: 13, scope: !625, inlinedAt: !603)
!687 = !DILocation(line: 1285, column: 13, scope: !688, inlinedAt: !603)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 1285, column: 13)
!689 = distinct !DILexicalBlock(scope: !685, file: !3, line: 1284, column: 23)
!690 = !DILocation(line: 1285, column: 13, scope: !689, inlinedAt: !603)
!691 = !DILocation(line: 1285, column: 13, scope: !692, inlinedAt: !603)
!692 = !DILexicalBlockFile(scope: !688, file: !3, discriminator: 1)
!693 = !DILocation(line: 1290, column: 13, scope: !694, inlinedAt: !603)
!694 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1290, column: 13)
!695 = !DILocation(line: 1290, column: 13, scope: !625, inlinedAt: !603)
!696 = !DILocation(line: 1292, column: 13, scope: !697, inlinedAt: !603)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 1290, column: 21)
!698 = !DILocalVariable(name: "channel", arg: 1, scope: !699, file: !3, line: 792, type: !34)
!699 = distinct !DISubprogram(name: "bnep_channel_free", scope: !3, file: !3, line: 792, type: !700, isLocal: true, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !34}
!702 = !{!698}
!703 = !DILocation(line: 792, column: 47, scope: !699, inlinedAt: !704)
!704 = distinct !DILocation(line: 1295, column: 13, scope: !697, inlinedAt: !603)
!705 = !DILocation(line: 794, column: 48, scope: !699, inlinedAt: !704)
!706 = !DILocation(line: 794, column: 5, scope: !699, inlinedAt: !704)
!707 = !DILocation(line: 795, column: 5, scope: !699, inlinedAt: !704)
!708 = !DILocation(line: 1296, column: 13, scope: !697, inlinedAt: !603)
!709 = !DILocation(line: 1299, column: 13, scope: !710, inlinedAt: !603)
!710 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1299, column: 13)
!711 = !DILocation(line: 1299, column: 29, scope: !710, inlinedAt: !603)
!712 = !{!713, !179, i64 20}
!713 = !{!"user_interface_handler", !179, i64 0, !179, i64 4, !179, i64 8, !179, i64 12, !179, i64 16, !179, i64 20, !179, i64 24, !179, i64 28, !179, i64 32, !179, i64 36, !179, i64 40, !179, i64 44, !179, i64 48, !179, i64 52, !179, i64 56}
!714 = !DILocation(line: 1299, column: 13, scope: !625, inlinedAt: !603)
!715 = !DILocation(line: 1300, column: 13, scope: !716, inlinedAt: !603)
!716 = distinct !DILexicalBlock(scope: !710, file: !3, line: 1299, column: 54)
!717 = !DILocation(line: 1301, column: 9, scope: !716, inlinedAt: !603)
!718 = !DILocation(line: 1302, column: 26, scope: !625, inlinedAt: !603)
!719 = !DILocation(line: 1302, column: 9, scope: !625, inlinedAt: !603)
!720 = !DILocation(line: 1304, column: 13, scope: !721, inlinedAt: !603)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 1304, column: 13)
!722 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1302, column: 33)
!723 = !DILocation(line: 1304, column: 13, scope: !722, inlinedAt: !603)
!724 = !DILocation(line: 1304, column: 13, scope: !725, inlinedAt: !603)
!725 = !DILexicalBlockFile(scope: !721, file: !3, discriminator: 1)
!726 = !DILocation(line: 1309, column: 22, scope: !722, inlinedAt: !603)
!727 = !DILocation(line: 1309, column: 33, scope: !722, inlinedAt: !603)
!728 = !DILocation(line: 1310, column: 22, scope: !722, inlinedAt: !603)
!729 = !DILocation(line: 1310, column: 33, scope: !722, inlinedAt: !603)
!730 = !DILocation(line: 1313, column: 28, scope: !722, inlinedAt: !603)
!731 = !DILocation(line: 709, column: 59, scope: !501, inlinedAt: !732)
!732 = distinct !DILocation(line: 1314, column: 13, scope: !722, inlinedAt: !603)
!733 = !DILocation(line: 709, column: 91, scope: !501, inlinedAt: !732)
!734 = !DILocation(line: 711, column: 60, scope: !501, inlinedAt: !732)
!735 = !DILocation(line: 711, column: 70, scope: !501, inlinedAt: !732)
!736 = !DILocation(line: 711, column: 24, scope: !501, inlinedAt: !732)
!737 = !DILocation(line: 1315, column: 73, scope: !722, inlinedAt: !603)
!738 = !DILocation(line: 1315, column: 39, scope: !739, inlinedAt: !603)
!739 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 1)
!740 = !DILocation(line: 1315, column: 22, scope: !722, inlinedAt: !603)
!741 = !DILocation(line: 1315, column: 37, scope: !722, inlinedAt: !603)
!742 = !DILocation(line: 1317, column: 13, scope: !722, inlinedAt: !603)
!743 = !DILocation(line: 1320, column: 73, scope: !722, inlinedAt: !603)
!744 = !DILocation(line: 1320, column: 39, scope: !739, inlinedAt: !603)
!745 = !DILocation(line: 1320, column: 22, scope: !722, inlinedAt: !603)
!746 = !DILocation(line: 1320, column: 37, scope: !722, inlinedAt: !603)
!747 = !DILocation(line: 1321, column: 13, scope: !722, inlinedAt: !603)
!748 = !DILocation(line: 1323, column: 13, scope: !749, inlinedAt: !603)
!749 = distinct !DILexicalBlock(scope: !722, file: !3, line: 1323, column: 13)
!750 = !DILocation(line: 1323, column: 13, scope: !722, inlinedAt: !603)
!751 = !DILocation(line: 1323, column: 13, scope: !752, inlinedAt: !603)
!752 = !DILexicalBlockFile(scope: !749, file: !3, discriminator: 1)
!753 = !DILocalVariable(name: "event", arg: 1, scope: !754, file: !614, line: 1348, type: !617)
!754 = distinct !DISubprogram(name: "l2cap_event_can_send_now_get_local_cid", scope: !614, file: !614, line: 1348, type: !755, isLocal: true, isDefinition: true, scopeLine: 1349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!44, !617}
!757 = !{!753}
!758 = !DILocation(line: 1348, column: 82, scope: !754, inlinedAt: !759)
!759 = distinct !DILocation(line: 1331, column: 34, scope: !625, inlinedAt: !603)
!760 = !DILocation(line: 1350, column: 16, scope: !754, inlinedAt: !759)
!761 = !DILocation(line: 1331, column: 9, scope: !762, inlinedAt: !603)
!762 = !DILexicalBlockFile(scope: !625, file: !3, discriminator: 1)
!763 = !DILocation(line: 1332, column: 9, scope: !625, inlinedAt: !603)
!764 = !DILocation(line: 1336, column: 23, scope: !625, inlinedAt: !603)
!765 = !DILocation(line: 768, column: 60, scope: !167, inlinedAt: !766)
!766 = distinct !DILocation(line: 1337, column: 19, scope: !625, inlinedAt: !603)
!767 = !DILocation(line: 770, column: 28, scope: !167, inlinedAt: !766)
!768 = !DILocation(line: 771, column: 5, scope: !184, inlinedAt: !766)
!769 = !DILocation(line: 773, column: 22, scope: !186, inlinedAt: !766)
!770 = !DILocation(line: 771, column: 70, scope: !188, inlinedAt: !766)
!771 = !DILocation(line: 773, column: 32, scope: !186, inlinedAt: !766)
!772 = !DILocation(line: 772, column: 36, scope: !173, inlinedAt: !766)
!773 = !DILocation(line: 1338, column: 9, scope: !774, inlinedAt: !603)
!774 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1338, column: 9)
!775 = !DILocation(line: 1338, column: 9, scope: !625, inlinedAt: !603)
!776 = !DILocation(line: 1338, column: 9, scope: !777, inlinedAt: !603)
!777 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 1)
!778 = !DILocation(line: 1340, column: 14, scope: !779, inlinedAt: !603)
!779 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1340, column: 13)
!780 = !DILocation(line: 1340, column: 13, scope: !625, inlinedAt: !603)
!781 = !DILocation(line: 1344, column: 13, scope: !782, inlinedAt: !603)
!782 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1344, column: 13)
!783 = !DILocation(line: 1344, column: 29, scope: !782, inlinedAt: !603)
!784 = !DILocation(line: 1344, column: 13, scope: !625, inlinedAt: !603)
!785 = !DILocation(line: 1345, column: 53, scope: !786, inlinedAt: !603)
!786 = distinct !DILexicalBlock(scope: !782, file: !3, line: 1344, column: 54)
!787 = !DILocation(line: 1345, column: 13, scope: !786, inlinedAt: !603)
!788 = !DILocation(line: 1346, column: 9, scope: !786, inlinedAt: !603)
!789 = !DILocation(line: 1347, column: 9, scope: !790, inlinedAt: !603)
!790 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1347, column: 9)
!791 = !DILocation(line: 1347, column: 9, scope: !625, inlinedAt: !603)
!792 = !DILocation(line: 1347, column: 9, scope: !793, inlinedAt: !603)
!793 = !DILexicalBlockFile(scope: !790, file: !3, discriminator: 1)
!794 = !DILocation(line: 1348, column: 26, scope: !625, inlinedAt: !603)
!795 = !DILocation(line: 1348, column: 9, scope: !625, inlinedAt: !603)
!796 = !DILocation(line: 1352, column: 13, scope: !797, inlinedAt: !603)
!797 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1348, column: 33)
!798 = !DILocation(line: 1353, column: 13, scope: !797, inlinedAt: !603)
!799 = !DILocation(line: 1362, column: 1, scope: !591, inlinedAt: !603)
!800 = !DILocation(line: 1487, column: 9, scope: !588)
!801 = !DILocation(line: 1366, column: 21, scope: !569, inlinedAt: !587)
!802 = !DILocation(line: 1370, column: 21, scope: !569, inlinedAt: !587)
!803 = !DILocation(line: 1371, column: 5, scope: !569, inlinedAt: !587)
!804 = !DILocation(line: 1372, column: 5, scope: !569, inlinedAt: !587)
!805 = !DILocation(line: 1373, column: 21, scope: !569, inlinedAt: !587)
!806 = !DILocation(line: 1374, column: 21, scope: !569, inlinedAt: !587)
!807 = !DILocation(line: 768, column: 60, scope: !167, inlinedAt: !808)
!808 = distinct !DILocation(line: 1377, column: 15, scope: !569, inlinedAt: !587)
!809 = !DILocation(line: 770, column: 28, scope: !167, inlinedAt: !808)
!810 = !DILocation(line: 771, column: 5, scope: !184, inlinedAt: !808)
!811 = !DILocation(line: 773, column: 22, scope: !186, inlinedAt: !808)
!812 = !DILocation(line: 771, column: 70, scope: !188, inlinedAt: !808)
!813 = !DILocation(line: 773, column: 32, scope: !186, inlinedAt: !808)
!814 = !DILocation(line: 772, column: 36, scope: !173, inlinedAt: !808)
!815 = !DILocation(line: 1383, column: 9, scope: !816, inlinedAt: !587)
!816 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1383, column: 9)
!817 = !DILocation(line: 1383, column: 14, scope: !816, inlinedAt: !587)
!818 = !DILocation(line: 1383, column: 9, scope: !569, inlinedAt: !587)
!819 = !DILocation(line: 1387, column: 17, scope: !569, inlinedAt: !587)
!820 = !DILocation(line: 1367, column: 21, scope: !569, inlinedAt: !587)
!821 = !DILocation(line: 1391, column: 5, scope: !569, inlinedAt: !587)
!822 = !DILocation(line: 1393, column: 9, scope: !823, inlinedAt: !587)
!823 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1391, column: 24)
!824 = !DILocation(line: 1395, column: 9, scope: !823, inlinedAt: !587)
!825 = !DILocation(line: 1397, column: 33, scope: !823, inlinedAt: !587)
!826 = !DILocation(line: 1399, column: 9, scope: !823, inlinedAt: !587)
!827 = !DILocation(line: 1401, column: 9, scope: !823, inlinedAt: !587)
!828 = !DILocation(line: 1402, column: 9, scope: !823, inlinedAt: !587)
!829 = !DILocation(line: 1403, column: 33, scope: !823, inlinedAt: !587)
!830 = !DILocation(line: 1405, column: 9, scope: !823, inlinedAt: !587)
!831 = !DILocation(line: 1407, column: 9, scope: !823, inlinedAt: !587)
!832 = !DILocation(line: 1408, column: 9, scope: !823, inlinedAt: !587)
!833 = !DILocation(line: 1410, column: 33, scope: !823, inlinedAt: !587)
!834 = !DILocation(line: 1412, column: 9, scope: !823, inlinedAt: !587)
!835 = !DILocation(line: 1414, column: 9, scope: !823, inlinedAt: !587)
!836 = !DILocation(line: 1416, column: 9, scope: !823, inlinedAt: !587)
!837 = !DILocation(line: 1417, column: 33, scope: !823, inlinedAt: !587)
!838 = !DILocation(line: 1419, column: 9, scope: !823, inlinedAt: !587)
!839 = !DILocation(line: 1421, column: 57, scope: !823, inlinedAt: !587)
!840 = !DILocation(line: 1421, column: 69, scope: !823, inlinedAt: !587)
!841 = !DILocation(line: 1421, column: 14, scope: !823, inlinedAt: !587)
!842 = !DILocation(line: 1422, column: 13, scope: !823, inlinedAt: !587)
!843 = !DILocation(line: 1423, column: 9, scope: !823, inlinedAt: !587)
!844 = !DILocation(line: 1428, column: 9, scope: !585, inlinedAt: !587)
!845 = !DILocation(line: 1428, column: 9, scope: !569, inlinedAt: !587)
!846 = distinct !{!846, !847, !848}
!847 = !DILocation(line: 1429, column: 9, scope: !584)
!848 = !DILocation(line: 1467, column: 37, scope: !584)
!849 = !DILocation(line: 1433, column: 37, scope: !583, inlinedAt: !587)
!850 = !DILocation(line: 1435, column: 17, scope: !583, inlinedAt: !587)
!851 = !DILocation(line: 1438, column: 23, scope: !583, inlinedAt: !587)
!852 = !DILocation(line: 1430, column: 21, scope: !583, inlinedAt: !587)
!853 = !DILocation(line: 1439, column: 17, scope: !583, inlinedAt: !587)
!854 = !DILocation(line: 1441, column: 25, scope: !855, inlinedAt: !587)
!855 = distinct !DILexicalBlock(scope: !583, file: !3, line: 1441, column: 17)
!856 = !DILocation(line: 1441, column: 23, scope: !855, inlinedAt: !587)
!857 = !DILocation(line: 1441, column: 32, scope: !855, inlinedAt: !587)
!858 = !DILocation(line: 1441, column: 30, scope: !855, inlinedAt: !587)
!859 = !DILocation(line: 1441, column: 17, scope: !583, inlinedAt: !587)
!860 = !DILocation(line: 1442, column: 17, scope: !861, inlinedAt: !587)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1442, column: 17)
!862 = distinct !DILexicalBlock(scope: !855, file: !3, line: 1441, column: 41)
!863 = !DILocation(line: 1442, column: 17, scope: !862, inlinedAt: !587)
!864 = !DILocation(line: 1442, column: 17, scope: !865, inlinedAt: !587)
!865 = !DILexicalBlockFile(scope: !861, file: !3, discriminator: 1)
!866 = !DILocation(line: 1447, column: 13, scope: !583, inlinedAt: !587)
!867 = !DILocation(line: 1449, column: 75, scope: !868, inlinedAt: !587)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 1449, column: 21)
!869 = distinct !DILexicalBlock(scope: !583, file: !3, line: 1447, column: 37)
!870 = !DILocation(line: 1449, column: 82, scope: !868, inlinedAt: !587)
!871 = !DILocation(line: 1449, column: 32, scope: !868, inlinedAt: !587)
!872 = !DILocation(line: 1449, column: 29, scope: !868, inlinedAt: !587)
!873 = !DILocation(line: 1449, column: 21, scope: !869, inlinedAt: !587)
!874 = !DILocation(line: 1450, column: 21, scope: !875, inlinedAt: !587)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 1450, column: 21)
!876 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1449, column: 95)
!877 = !DILocation(line: 1450, column: 21, scope: !876, inlinedAt: !587)
!878 = !DILocation(line: 1450, column: 21, scope: !879, inlinedAt: !587)
!879 = !DILexicalBlockFile(scope: !875, file: !3, discriminator: 1)
!880 = !DILocation(line: 1462, column: 17, scope: !881, inlinedAt: !587)
!881 = distinct !DILexicalBlock(scope: !869, file: !3, line: 1462, column: 17)
!882 = !DILocation(line: 1462, column: 17, scope: !869, inlinedAt: !587)
!883 = !DILocation(line: 1462, column: 17, scope: !884, inlinedAt: !587)
!884 = !DILexicalBlockFile(scope: !881, file: !3, discriminator: 1)
!885 = !DILocation(line: 1467, column: 9, scope: !886, inlinedAt: !587)
!886 = !DILexicalBlockFile(scope: !583, file: !3, discriminator: 2)
!887 = !DILocation(line: 1470, column: 20, scope: !888, inlinedAt: !587)
!888 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1470, column: 9)
!889 = !DILocation(line: 1470, column: 72, scope: !890, inlinedAt: !587)
!890 = !DILexicalBlockFile(scope: !888, file: !3, discriminator: 1)
!891 = !DILocation(line: 1470, column: 46, scope: !888, inlinedAt: !587)
!892 = !DILocation(line: 1471, column: 22, scope: !893, inlinedAt: !587)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 1471, column: 13)
!894 = distinct !DILexicalBlock(scope: !888, file: !3, line: 1470, column: 84)
!895 = !DILocation(line: 1471, column: 28, scope: !893, inlinedAt: !587)
!896 = !DILocation(line: 1471, column: 13, scope: !894, inlinedAt: !587)
!897 = !DILocation(line: 1472, column: 111, scope: !898, inlinedAt: !587)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 1471, column: 61)
!899 = !DILocation(line: 1472, column: 109, scope: !898, inlinedAt: !587)
!900 = !DILocalVariable(name: "addr_dest", arg: 2, scope: !901, file: !3, line: 1115, type: !117)
!901 = distinct !DISubprogram(name: "bnep_handle_ethernet_packet", scope: !3, file: !3, line: 1115, type: !902, isLocal: true, isDefinition: true, scopeLine: 1116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!109, !34, !117, !117, !44, !117, !44}
!904 = !{!905, !900, !906, !907, !908, !909, !910, !911}
!905 = !DILocalVariable(name: "channel", arg: 1, scope: !901, file: !3, line: 1115, type: !34)
!906 = !DILocalVariable(name: "addr_source", arg: 3, scope: !901, file: !3, line: 1115, type: !117)
!907 = !DILocalVariable(name: "network_protocol_type", arg: 4, scope: !901, file: !3, line: 1115, type: !44)
!908 = !DILocalVariable(name: "payload", arg: 5, scope: !901, file: !3, line: 1115, type: !117)
!909 = !DILocalVariable(name: "size", arg: 6, scope: !901, file: !3, line: 1115, type: !44)
!910 = !DILocalVariable(name: "pos", scope: !901, file: !3, line: 1117, type: !44)
!911 = !DILocalVariable(name: "ethernet_packet", scope: !901, file: !3, line: 1123, type: !117)
!912 = !DILocation(line: 1115, column: 75, scope: !901, inlinedAt: !913)
!913 = distinct !DILocation(line: 1472, column: 18, scope: !898, inlinedAt: !587)
!914 = !DILocation(line: 1115, column: 96, scope: !901, inlinedAt: !913)
!915 = !DILocation(line: 1115, column: 118, scope: !901, inlinedAt: !913)
!916 = !DILocation(line: 1115, column: 150, scope: !901, inlinedAt: !913)
!917 = !DILocation(line: 1117, column: 14, scope: !901, inlinedAt: !913)
!918 = !DILocation(line: 1123, column: 66, scope: !901, inlinedAt: !913)
!919 = !DILocation(line: 1123, column: 14, scope: !901, inlinedAt: !913)
!920 = !DILocation(line: 1125, column: 5, scope: !901, inlinedAt: !913)
!921 = !DILocation(line: 1127, column: 5, scope: !901, inlinedAt: !913)
!922 = !DILocation(line: 1129, column: 5, scope: !901, inlinedAt: !913)
!923 = !DILocation(line: 1136, column: 18, scope: !924, inlinedAt: !913)
!924 = distinct !DILexicalBlock(scope: !901, file: !3, line: 1136, column: 9)
!925 = !{!193, !179, i64 220}
!926 = !DILocation(line: 1136, column: 9, scope: !924, inlinedAt: !913)
!927 = !DILocation(line: 1136, column: 9, scope: !901, inlinedAt: !913)
!928 = !DILocation(line: 1137, column: 63, scope: !929, inlinedAt: !913)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1136, column: 34)
!930 = !DILocation(line: 1472, column: 121, scope: !898, inlinedAt: !587)
!931 = !DILocation(line: 1138, column: 60, scope: !929, inlinedAt: !913)
!932 = !DILocation(line: 1137, column: 9, scope: !929, inlinedAt: !913)
!933 = !DILocation(line: 1139, column: 5, scope: !929, inlinedAt: !913)
!934 = !DILocation(line: 1480, column: 1, scope: !569, inlinedAt: !587)
!935 = !DILocation(line: 1490, column: 9, scope: !588)
!936 = !DILocation(line: 1494, column: 1, scope: !562)
!937 = distinct !DISubprogram(name: "bnep_handle_can_send_now", scope: !3, file: !3, line: 1579, type: !211, isLocal: false, isDefinition: true, scopeLine: 1580, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !938)
!938 = !{!939, !940, !941, !942, !946}
!939 = !DILocalVariable(name: "l2cap_cid", arg: 1, scope: !937, file: !3, line: 1579, type: !44)
!940 = !DILocalVariable(name: "it", scope: !937, file: !3, line: 1581, type: !27)
!941 = !DILocalVariable(name: "next", scope: !937, file: !3, line: 1582, type: !27)
!942 = !DILocalVariable(name: "channel", scope: !943, file: !3, line: 1586, type: !34)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1584, column: 72)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 1584, column: 5)
!945 = distinct !DILexicalBlock(scope: !937, file: !3, line: 1584, column: 5)
!946 = !DILocalVariable(name: "channel_event", scope: !943, file: !3, line: 1601, type: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "bnep_channel_event_t", file: !6, line: 66, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bnep_channel_event", file: !6, line: 64, size: 32, elements: !949)
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !948, file: !6, line: 65, baseType: !951, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "BNEP_CHANNEL_EVENT", file: !6, line: 62, baseType: !22)
!952 = !DILocalVariable(name: "bnep_out_buffer", scope: !953, file: !3, line: 159, type: !961)
!953 = distinct !DISubprogram(name: "bnep_send_command_not_understood", scope: !3, file: !3, line: 157, type: !954, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{!109, !34, !52}
!956 = !{!957, !958, !952, !959, !960}
!957 = !DILocalVariable(name: "channel", arg: 1, scope: !953, file: !3, line: 157, type: !34)
!958 = !DILocalVariable(name: "control_type", arg: 2, scope: !953, file: !3, line: 157, type: !52)
!959 = !DILocalVariable(name: "pos", scope: !953, file: !3, line: 160, type: !44)
!960 = !DILocalVariable(name: "err", scope: !953, file: !3, line: 161, type: !109)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 80, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 10)
!964 = !DILocation(line: 159, column: 13, scope: !953, inlinedAt: !965)
!965 = distinct !DILocation(line: 1504, column: 13, scope: !966, inlinedAt: !987)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 1502, column: 77)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1502, column: 13)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 1500, column: 51)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 1500, column: 9)
!970 = distinct !DISubprogram(name: "bnep_channel_state_machine", scope: !3, file: !3, line: 1496, type: !971, isLocal: true, isDefinition: true, scopeLine: 1497, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !974)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !34, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 32)
!974 = !{!975, !976, !977, !980, !983, !986}
!975 = !DILocalVariable(name: "channel", arg: 1, scope: !970, file: !3, line: 1496, type: !34)
!976 = !DILocalVariable(name: "event", arg: 2, scope: !970, file: !3, line: 1496, type: !973)
!977 = !DILocalVariable(name: "emit_connected", scope: !978, file: !3, line: 1513, type: !109)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1512, column: 82)
!979 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1512, column: 13)
!980 = !DILocalVariable(name: "it", scope: !981, file: !3, line: 1561, type: !123)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 1560, column: 48)
!982 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1560, column: 13)
!983 = !DILocalVariable(name: "send", scope: !984, file: !3, line: 1564, type: !133)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 1563, column: 21)
!985 = distinct !DILexicalBlock(scope: !981, file: !3, line: 1563, column: 17)
!986 = !DILocalVariable(name: "err", scope: !984, file: !3, line: 1565, type: !109)
!987 = distinct !DILocation(line: 1602, column: 9, scope: !943)
!988 = !DILocalVariable(name: "event", scope: !989, file: !3, line: 149, type: !992)
!989 = distinct !DISubprogram(name: "bnep_emit_ready_to_send", scope: !3, file: !3, line: 143, type: !700, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !990)
!990 = !{!991, !988}
!991 = !DILocalVariable(name: "channel", arg: 1, scope: !989, file: !3, line: 143, type: !34)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 4)
!995 = !DILocation(line: 149, column: 13, scope: !989, inlinedAt: !996)
!996 = distinct !DILocation(line: 1574, column: 13, scope: !981, inlinedAt: !987)
!997 = !DILocation(line: 1579, column: 40, scope: !937)
!998 = !DILocation(line: 1584, column: 41, scope: !945)
!999 = !DILocation(line: 1581, column: 28, scope: !937)
!1000 = !DILocation(line: 1584, column: 5, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !945, file: !3, discriminator: 1)
!1002 = !DILocation(line: 1585, column: 20, scope: !943)
!1003 = !{!194, !179, i64 0}
!1004 = !DILocation(line: 1582, column: 28, scope: !937)
!1005 = !DILocation(line: 1586, column: 25, scope: !943)
!1006 = !DILocation(line: 1587, column: 13, scope: !943)
!1007 = !DILocation(line: 1588, column: 26, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1588, column: 17)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 1587, column: 29)
!1010 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1587, column: 13)
!1011 = !DILocation(line: 1588, column: 36, scope: !1008)
!1012 = !DILocation(line: 1588, column: 17, scope: !1009)
!1013 = !DILocation(line: 1592, column: 26, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1592, column: 17)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 1591, column: 16)
!1016 = !DILocation(line: 1592, column: 51, scope: !1014)
!1017 = !DILocation(line: 1592, column: 17, scope: !1015)
!1018 = !DILocation(line: 1597, column: 49, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1597, column: 13)
!1020 = !DILocation(line: 1596, column: 9, scope: !943)
!1021 = !DILocation(line: 1597, column: 14, scope: !1019)
!1022 = !DILocation(line: 1597, column: 13, scope: !943)
!1023 = !DILocation(line: 1601, column: 30, scope: !943)
!1024 = !DILocalVariable(name: "bnep_out_buffer", scope: !1025, file: !3, line: 362, type: !961)
!1025 = distinct !DISubprogram(name: "bnep_send_filter_multi_addr_response", scope: !3, file: !3, line: 360, type: !308, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1026)
!1026 = !{!1027, !1028, !1024, !1029, !1030}
!1027 = !DILocalVariable(name: "channel", arg: 1, scope: !1025, file: !3, line: 360, type: !34)
!1028 = !DILocalVariable(name: "response_code", arg: 2, scope: !1025, file: !3, line: 360, type: !44)
!1029 = !DILocalVariable(name: "pos", scope: !1025, file: !3, line: 363, type: !44)
!1030 = !DILocalVariable(name: "err", scope: !1025, file: !3, line: 364, type: !109)
!1031 = !DILocation(line: 362, column: 14, scope: !1025, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 1555, column: 13, scope: !1033, inlinedAt: !987)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1553, column: 89)
!1034 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1553, column: 13)
!1035 = !DILocalVariable(name: "bnep_out_buffer", scope: !1036, file: !3, line: 294, type: !961)
!1036 = distinct !DISubprogram(name: "bnep_send_filter_net_type_response", scope: !3, file: !3, line: 292, type: !308, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1037)
!1037 = !{!1038, !1039, !1035, !1040, !1041}
!1038 = !DILocalVariable(name: "channel", arg: 1, scope: !1036, file: !3, line: 292, type: !34)
!1039 = !DILocalVariable(name: "response_code", arg: 2, scope: !1036, file: !3, line: 292, type: !44)
!1040 = !DILocalVariable(name: "pos", scope: !1036, file: !3, line: 295, type: !44)
!1041 = !DILocalVariable(name: "err", scope: !1036, file: !3, line: 296, type: !109)
!1042 = !DILocation(line: 294, column: 14, scope: !1036, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 1541, column: 13, scope: !1044, inlinedAt: !987)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 1539, column: 87)
!1045 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1539, column: 13)
!1046 = !DILocalVariable(name: "bnep_out_buffer", scope: !1047, file: !3, line: 191, type: !961)
!1047 = distinct !DISubprogram(name: "bnep_send_connection_request", scope: !3, file: !3, line: 189, type: !1048, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!109, !34, !44, !44}
!1050 = !{!1051, !1052, !1053, !1046, !1054, !1055}
!1051 = !DILocalVariable(name: "channel", arg: 1, scope: !1047, file: !3, line: 189, type: !34)
!1052 = !DILocalVariable(name: "uuid_source", arg: 2, scope: !1047, file: !3, line: 189, type: !44)
!1053 = !DILocalVariable(name: "uuid_dest", arg: 3, scope: !1047, file: !3, line: 189, type: !44)
!1054 = !DILocalVariable(name: "pos", scope: !1047, file: !3, line: 192, type: !44)
!1055 = !DILocalVariable(name: "err", scope: !1047, file: !3, line: 193, type: !109)
!1056 = !DILocation(line: 191, column: 14, scope: !1047, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 1510, column: 13, scope: !1058, inlinedAt: !987)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 1507, column: 81)
!1059 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1507, column: 13)
!1060 = !DILocation(line: 1496, column: 56, scope: !970, inlinedAt: !987)
!1061 = !DILocation(line: 1496, column: 87, scope: !970, inlinedAt: !987)
!1062 = !DILocation(line: 1498, column: 5, scope: !1063, inlinedAt: !987)
!1063 = distinct !DILexicalBlock(scope: !970, file: !3, line: 1498, column: 5)
!1064 = !DILocation(line: 1498, column: 5, scope: !970, inlinedAt: !987)
!1065 = !DILocation(line: 1502, column: 22, scope: !967, inlinedAt: !987)
!1066 = !DILocation(line: 1498, column: 5, scope: !1067, inlinedAt: !987)
!1067 = !DILexicalBlockFile(scope: !1063, file: !3, discriminator: 1)
!1068 = !DILocation(line: 1502, column: 32, scope: !967, inlinedAt: !987)
!1069 = !DILocation(line: 1502, column: 13, scope: !968, inlinedAt: !987)
!1070 = !DILocalVariable(name: "channel", arg: 1, scope: !1071, file: !3, line: 713, type: !34)
!1071 = distinct !DISubprogram(name: "bnep_channel_state_remove", scope: !3, file: !3, line: 713, type: !502, isLocal: true, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1072)
!1072 = !{!1070, !1073}
!1073 = !DILocalVariable(name: "event", arg: 2, scope: !1071, file: !3, line: 713, type: !42)
!1074 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 1503, column: 13, scope: !966, inlinedAt: !987)
!1076 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1075)
!1077 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1075)
!1078 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1075)
!1079 = !DILocation(line: 1504, column: 64, scope: !966, inlinedAt: !987)
!1080 = !{!193, !180, i64 40}
!1081 = !DILocation(line: 159, column: 5, scope: !953, inlinedAt: !965)
!1082 = !DILocation(line: 160, column: 14, scope: !953, inlinedAt: !965)
!1083 = !DILocation(line: 161, column: 14, scope: !953, inlinedAt: !965)
!1084 = !DILocation(line: 163, column: 18, scope: !1085, inlinedAt: !965)
!1085 = distinct !DILexicalBlock(scope: !953, file: !3, line: 163, column: 9)
!1086 = !DILocation(line: 163, column: 24, scope: !1085, inlinedAt: !965)
!1087 = !DILocation(line: 163, column: 9, scope: !953, inlinedAt: !965)
!1088 = !DILocation(line: 167, column: 45, scope: !1089, inlinedAt: !965)
!1089 = distinct !DILexicalBlock(scope: !953, file: !3, line: 167, column: 9)
!1090 = !DILocation(line: 167, column: 10, scope: !1089, inlinedAt: !965)
!1091 = !DILocation(line: 167, column: 9, scope: !953, inlinedAt: !965)
!1092 = !DILocation(line: 173, column: 28, scope: !953, inlinedAt: !965)
!1093 = !DILocation(line: 174, column: 28, scope: !953, inlinedAt: !965)
!1094 = !DILocation(line: 177, column: 28, scope: !953, inlinedAt: !965)
!1095 = !DILocation(line: 179, column: 40, scope: !953, inlinedAt: !965)
!1096 = !DILocation(line: 179, column: 11, scope: !953, inlinedAt: !965)
!1097 = !DILocation(line: 184, column: 5, scope: !953, inlinedAt: !965)
!1098 = !DILocation(line: 185, column: 1, scope: !953, inlinedAt: !965)
!1099 = !DILocation(line: 1505, column: 13, scope: !966, inlinedAt: !987)
!1100 = !DILocation(line: 1507, column: 32, scope: !1059, inlinedAt: !987)
!1101 = !DILocation(line: 1507, column: 13, scope: !968, inlinedAt: !987)
!1102 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 1508, column: 13, scope: !1058, inlinedAt: !987)
!1104 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1103)
!1105 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1103)
!1106 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1103)
!1107 = !DILocation(line: 1509, column: 22, scope: !1058, inlinedAt: !987)
!1108 = !DILocation(line: 1509, column: 28, scope: !1058, inlinedAt: !987)
!1109 = !DILocation(line: 1510, column: 60, scope: !1058, inlinedAt: !987)
!1110 = !{!193, !195, i64 36}
!1111 = !DILocation(line: 1510, column: 82, scope: !1058, inlinedAt: !987)
!1112 = !{!193, !195, i64 38}
!1113 = !DILocation(line: 191, column: 5, scope: !1047, inlinedAt: !1057)
!1114 = !DILocation(line: 192, column: 14, scope: !1047, inlinedAt: !1057)
!1115 = !DILocation(line: 193, column: 14, scope: !1047, inlinedAt: !1057)
!1116 = !DILocation(line: 199, column: 45, scope: !1117, inlinedAt: !1057)
!1117 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 199, column: 9)
!1118 = !DILocation(line: 199, column: 10, scope: !1117, inlinedAt: !1057)
!1119 = !DILocation(line: 199, column: 9, scope: !1047, inlinedAt: !1057)
!1120 = !DILocation(line: 203, column: 28, scope: !1047, inlinedAt: !1057)
!1121 = !DILocation(line: 204, column: 28, scope: !1047, inlinedAt: !1057)
!1122 = !DILocation(line: 207, column: 28, scope: !1047, inlinedAt: !1057)
!1123 = !DILocation(line: 210, column: 5, scope: !1047, inlinedAt: !1057)
!1124 = !DILocation(line: 213, column: 5, scope: !1047, inlinedAt: !1057)
!1125 = !DILocation(line: 216, column: 40, scope: !1047, inlinedAt: !1057)
!1126 = !DILocation(line: 216, column: 11, scope: !1047, inlinedAt: !1057)
!1127 = !DILocation(line: 221, column: 5, scope: !1047, inlinedAt: !1057)
!1128 = !DILocation(line: 222, column: 1, scope: !1047, inlinedAt: !1057)
!1129 = !DILocation(line: 1511, column: 9, scope: !1058, inlinedAt: !987)
!1130 = !DILocation(line: 715, column: 60, scope: !1071, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 1523, column: 13, scope: !978, inlinedAt: !987)
!1132 = !DILocation(line: 1512, column: 32, scope: !979, inlinedAt: !987)
!1133 = !DILocation(line: 1512, column: 13, scope: !968, inlinedAt: !987)
!1134 = !DILocation(line: 1513, column: 17, scope: !978, inlinedAt: !987)
!1135 = !DILocation(line: 1514, column: 27, scope: !1136, inlinedAt: !987)
!1136 = distinct !DILexicalBlock(scope: !978, file: !3, line: 1514, column: 17)
!1137 = !DILocation(line: 1514, column: 63, scope: !1136, inlinedAt: !987)
!1138 = !DILocation(line: 1524, column: 61, scope: !978, inlinedAt: !987)
!1139 = !DILocation(line: 1517, column: 32, scope: !1140, inlinedAt: !987)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1515, column: 85)
!1141 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1131)
!1142 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1131)
!1143 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1131)
!1144 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1131)
!1145 = !DILocation(line: 1524, column: 13, scope: !978, inlinedAt: !987)
!1146 = !DILocation(line: 1526, column: 17, scope: !1147, inlinedAt: !987)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 1525, column: 33)
!1148 = distinct !DILexicalBlock(scope: !978, file: !3, line: 1525, column: 17)
!1149 = !DILocation(line: 1527, column: 13, scope: !1147, inlinedAt: !987)
!1150 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 1523, column: 13, scope: !978, inlinedAt: !987)
!1152 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1151)
!1153 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1151)
!1154 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1151)
!1155 = !DILocation(line: 1525, column: 17, scope: !978, inlinedAt: !987)
!1156 = !DILocation(line: 1530, column: 32, scope: !1157, inlinedAt: !987)
!1157 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1530, column: 13)
!1158 = !DILocation(line: 1530, column: 13, scope: !968, inlinedAt: !987)
!1159 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 1531, column: 13, scope: !1161, inlinedAt: !987)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 1530, column: 82)
!1162 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1160)
!1163 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1160)
!1164 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1160)
!1165 = !DILocation(line: 1532, column: 27, scope: !1166, inlinedAt: !987)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 1532, column: 17)
!1167 = !DILocation(line: 1532, column: 48, scope: !1166, inlinedAt: !987)
!1168 = !DILocation(line: 1532, column: 53, scope: !1166, inlinedAt: !987)
!1169 = !DILocation(line: 1532, column: 66, scope: !1170, inlinedAt: !987)
!1170 = !DILexicalBlockFile(scope: !1166, file: !3, discriminator: 1)
!1171 = !DILocation(line: 1532, column: 81, scope: !1170, inlinedAt: !987)
!1172 = !DILocation(line: 1532, column: 17, scope: !1173, inlinedAt: !987)
!1173 = !DILexicalBlockFile(scope: !1161, file: !3, discriminator: 1)
!1174 = !DILocation(line: 1533, column: 17, scope: !1175, inlinedAt: !987)
!1175 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 1532, column: 91)
!1176 = !DILocation(line: 1534, column: 47, scope: !1175, inlinedAt: !987)
!1177 = !DILocation(line: 1535, column: 41, scope: !1175, inlinedAt: !987)
!1178 = !DILocation(line: 1536, column: 13, scope: !1175, inlinedAt: !987)
!1179 = !DILocation(line: 1539, column: 32, scope: !1045, inlinedAt: !987)
!1180 = !DILocation(line: 1539, column: 13, scope: !968, inlinedAt: !987)
!1181 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 1540, column: 13, scope: !1044, inlinedAt: !987)
!1183 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1182)
!1184 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1182)
!1185 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1182)
!1186 = !DILocation(line: 1541, column: 66, scope: !1044, inlinedAt: !987)
!1187 = !{!193, !195, i64 42}
!1188 = !DILocation(line: 294, column: 5, scope: !1036, inlinedAt: !1043)
!1189 = !DILocation(line: 295, column: 14, scope: !1036, inlinedAt: !1043)
!1190 = !DILocation(line: 296, column: 14, scope: !1036, inlinedAt: !1043)
!1191 = !DILocation(line: 298, column: 18, scope: !1192, inlinedAt: !1043)
!1192 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 298, column: 9)
!1193 = !DILocation(line: 298, column: 24, scope: !1192, inlinedAt: !1043)
!1194 = !DILocation(line: 298, column: 9, scope: !1036, inlinedAt: !1043)
!1195 = !DILocation(line: 301, column: 45, scope: !1196, inlinedAt: !1043)
!1196 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 301, column: 9)
!1197 = !DILocation(line: 301, column: 10, scope: !1196, inlinedAt: !1043)
!1198 = !DILocation(line: 301, column: 9, scope: !1036, inlinedAt: !1043)
!1199 = !DILocation(line: 306, column: 28, scope: !1036, inlinedAt: !1043)
!1200 = !DILocation(line: 307, column: 28, scope: !1036, inlinedAt: !1043)
!1201 = !DILocation(line: 310, column: 5, scope: !1036, inlinedAt: !1043)
!1202 = !DILocation(line: 313, column: 40, scope: !1036, inlinedAt: !1043)
!1203 = !DILocation(line: 313, column: 11, scope: !1036, inlinedAt: !1043)
!1204 = !DILocation(line: 318, column: 5, scope: !1036, inlinedAt: !1043)
!1205 = !DILocation(line: 319, column: 1, scope: !1036, inlinedAt: !1043)
!1206 = !DILocation(line: 1542, column: 13, scope: !1044, inlinedAt: !987)
!1207 = !DILocation(line: 1544, column: 32, scope: !1208, inlinedAt: !987)
!1208 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1544, column: 13)
!1209 = !DILocation(line: 1544, column: 13, scope: !968, inlinedAt: !987)
!1210 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 1545, column: 13, scope: !1212, inlinedAt: !987)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 1544, column: 84)
!1213 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1211)
!1214 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1211)
!1215 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1211)
!1216 = !DILocation(line: 1546, column: 27, scope: !1217, inlinedAt: !987)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 1546, column: 17)
!1218 = !DILocation(line: 1546, column: 54, scope: !1217, inlinedAt: !987)
!1219 = !DILocation(line: 1546, column: 59, scope: !1217, inlinedAt: !987)
!1220 = !DILocation(line: 1546, column: 72, scope: !1221, inlinedAt: !987)
!1221 = !DILexicalBlockFile(scope: !1217, file: !3, discriminator: 1)
!1222 = !DILocation(line: 1546, column: 93, scope: !1221, inlinedAt: !987)
!1223 = !DILocation(line: 1546, column: 17, scope: !1224, inlinedAt: !987)
!1224 = !DILexicalBlockFile(scope: !1212, file: !3, discriminator: 1)
!1225 = !DILocation(line: 1547, column: 17, scope: !1226, inlinedAt: !987)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1546, column: 103)
!1227 = !DILocation(line: 1548, column: 53, scope: !1226, inlinedAt: !987)
!1228 = !DILocation(line: 1549, column: 47, scope: !1226, inlinedAt: !987)
!1229 = !DILocation(line: 1550, column: 13, scope: !1226, inlinedAt: !987)
!1230 = !DILocation(line: 1553, column: 32, scope: !1034, inlinedAt: !987)
!1231 = !DILocation(line: 1553, column: 13, scope: !968, inlinedAt: !987)
!1232 = !DILocation(line: 713, column: 62, scope: !1071, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 1554, column: 13, scope: !1033, inlinedAt: !987)
!1234 = !DILocation(line: 713, column: 94, scope: !1071, inlinedAt: !1233)
!1235 = !DILocation(line: 715, column: 70, scope: !1071, inlinedAt: !1233)
!1236 = !DILocation(line: 715, column: 24, scope: !1071, inlinedAt: !1233)
!1237 = !DILocation(line: 1555, column: 68, scope: !1033, inlinedAt: !987)
!1238 = !DILocation(line: 362, column: 5, scope: !1025, inlinedAt: !1032)
!1239 = !DILocation(line: 363, column: 14, scope: !1025, inlinedAt: !1032)
!1240 = !DILocation(line: 364, column: 14, scope: !1025, inlinedAt: !1032)
!1241 = !DILocation(line: 366, column: 18, scope: !1242, inlinedAt: !1032)
!1242 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 366, column: 9)
!1243 = !DILocation(line: 366, column: 24, scope: !1242, inlinedAt: !1032)
!1244 = !DILocation(line: 366, column: 9, scope: !1025, inlinedAt: !1032)
!1245 = !DILocation(line: 370, column: 45, scope: !1246, inlinedAt: !1032)
!1246 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 370, column: 9)
!1247 = !DILocation(line: 370, column: 10, scope: !1246, inlinedAt: !1032)
!1248 = !DILocation(line: 370, column: 9, scope: !1025, inlinedAt: !1032)
!1249 = !DILocation(line: 375, column: 28, scope: !1025, inlinedAt: !1032)
!1250 = !DILocation(line: 376, column: 28, scope: !1025, inlinedAt: !1032)
!1251 = !DILocation(line: 379, column: 5, scope: !1025, inlinedAt: !1032)
!1252 = !DILocation(line: 382, column: 40, scope: !1025, inlinedAt: !1032)
!1253 = !DILocation(line: 382, column: 11, scope: !1025, inlinedAt: !1032)
!1254 = !DILocation(line: 387, column: 5, scope: !1025, inlinedAt: !1032)
!1255 = !DILocation(line: 388, column: 1, scope: !1025, inlinedAt: !1032)
!1256 = !DILocation(line: 1556, column: 13, scope: !1033, inlinedAt: !987)
!1257 = !DILocation(line: 1560, column: 22, scope: !982, inlinedAt: !987)
!1258 = !DILocation(line: 1560, column: 13, scope: !982, inlinedAt: !987)
!1259 = !DILocation(line: 1560, column: 13, scope: !968, inlinedAt: !987)
!1260 = !DILocation(line: 1562, column: 44, scope: !981, inlinedAt: !987)
!1261 = !{!193, !179, i64 228}
!1262 = !DILocation(line: 1561, column: 28, scope: !981, inlinedAt: !987)
!1263 = !DILocation(line: 1563, column: 17, scope: !985, inlinedAt: !987)
!1264 = !DILocation(line: 1563, column: 17, scope: !981, inlinedAt: !987)
!1265 = !DILocation(line: 1564, column: 34, scope: !984, inlinedAt: !987)
!1266 = !DILocation(line: 1564, column: 27, scope: !984, inlinedAt: !987)
!1267 = !DILocation(line: 1565, column: 46, scope: !984, inlinedAt: !987)
!1268 = !DILocation(line: 1565, column: 57, scope: !984, inlinedAt: !987)
!1269 = !DILocation(line: 1565, column: 75, scope: !984, inlinedAt: !987)
!1270 = !{!1271, !195, i64 4}
!1271 = !{!"", !194, i64 0, !195, i64 4, !180, i64 6}
!1272 = !DILocation(line: 1565, column: 27, scope: !984, inlinedAt: !987)
!1273 = !DILocation(line: 1565, column: 21, scope: !984, inlinedAt: !987)
!1274 = !DILocation(line: 1566, column: 25, scope: !1275, inlinedAt: !987)
!1275 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1566, column: 21)
!1276 = !DILocation(line: 1566, column: 21, scope: !984, inlinedAt: !987)
!1277 = !DILocation(line: 1568, column: 21, scope: !1278, inlinedAt: !987)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1566, column: 31)
!1279 = !DILocation(line: 1569, column: 26, scope: !1278, inlinedAt: !987)
!1280 = !DILocation(line: 1569, column: 21, scope: !1278, inlinedAt: !987)
!1281 = !DILocation(line: 1570, column: 17, scope: !1278, inlinedAt: !987)
!1282 = !DILocation(line: 1573, column: 47, scope: !981, inlinedAt: !987)
!1283 = !DILocation(line: 143, column: 53, scope: !989, inlinedAt: !996)
!1284 = !DILocation(line: 145, column: 19, scope: !1285, inlinedAt: !996)
!1285 = distinct !DILexicalBlock(scope: !989, file: !3, line: 145, column: 9)
!1286 = !DILocation(line: 145, column: 10, scope: !1285, inlinedAt: !996)
!1287 = !DILocation(line: 145, column: 9, scope: !989, inlinedAt: !996)
!1288 = !DILocation(line: 149, column: 5, scope: !989, inlinedAt: !996)
!1289 = !DILocation(line: 150, column: 14, scope: !989, inlinedAt: !996)
!1290 = !DILocation(line: 151, column: 14, scope: !989, inlinedAt: !996)
!1291 = !DILocation(line: 152, column: 47, scope: !989, inlinedAt: !996)
!1292 = !DILocation(line: 152, column: 5, scope: !989, inlinedAt: !996)
!1293 = !DILocation(line: 153, column: 16, scope: !989, inlinedAt: !996)
!1294 = !DILocation(line: 153, column: 5, scope: !989, inlinedAt: !996)
!1295 = !DILocation(line: 154, column: 1, scope: !989, inlinedAt: !996)
!1296 = !DILocation(line: 1605, column: 1, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 2)
!1298 = distinct !DISubprogram(name: "bnep_init", scope: !3, file: !3, line: 1609, type: !1299, isLocal: false, isDefinition: true, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null}
!1301 = !{}
!1302 = !DILocation(line: 1612, column: 1, scope: !1298)
!1303 = distinct !DISubprogram(name: "bnep_set_required_security_level", scope: !3, file: !3, line: 1614, type: !1304, isLocal: false, isDefinition: true, scopeLine: 1615, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !52}
!1306 = !{!1307}
!1307 = !DILocalVariable(name: "security_level", arg: 1, scope: !1303, file: !3, line: 1614, type: !52)
!1308 = !DILocation(line: 1614, column: 47, scope: !1303)
!1309 = !DILocation(line: 1617, column: 1, scope: !1303)
!1310 = distinct !DISubprogram(name: "bnep_connect", scope: !3, file: !3, line: 1619, type: !1311, isLocal: false, isDefinition: true, scopeLine: 1620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!109, !112, !117, !44, !44, !44}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1314 = !DILocalVariable(name: "packet_handler", arg: 1, scope: !1310, file: !3, line: 1619, type: !112)
!1315 = !DILocalVariable(name: "addr", arg: 2, scope: !1310, file: !3, line: 1619, type: !117)
!1316 = !DILocalVariable(name: "l2cap_psm", arg: 3, scope: !1310, file: !3, line: 1619, type: !44)
!1317 = !DILocalVariable(name: "uuid_src", arg: 4, scope: !1310, file: !3, line: 1619, type: !44)
!1318 = !DILocalVariable(name: "uuid_dest", arg: 5, scope: !1310, file: !3, line: 1619, type: !44)
!1319 = !DILocalVariable(name: "channel", scope: !1310, file: !3, line: 1621, type: !34)
!1320 = !DILocalVariable(name: "status", scope: !1310, file: !3, line: 1634, type: !52)
!1321 = !DILocation(line: 1619, column: 43, scope: !1310)
!1322 = !DILocation(line: 1619, column: 69, scope: !1310)
!1323 = !DILocation(line: 1619, column: 84, scope: !1310)
!1324 = !DILocation(line: 1619, column: 104, scope: !1310)
!1325 = !DILocation(line: 1619, column: 123, scope: !1310)
!1326 = !DILocation(line: 1622, column: 5, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1622, column: 5)
!1328 = !DILocation(line: 1622, column: 5, scope: !1310)
!1329 = !DILocation(line: 1622, column: 5, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 1)
!1331 = !DILocation(line: 1622, column: 5, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 2)
!1333 = !DILocation(line: 1624, column: 15, scope: !1310)
!1334 = !DILocation(line: 1621, column: 21, scope: !1310)
!1335 = !DILocation(line: 1625, column: 17, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1625, column: 9)
!1337 = !DILocation(line: 1625, column: 9, scope: !1310)
!1338 = !DILocation(line: 1626, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1626, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1625, column: 26)
!1341 = !DILocation(line: 1626, column: 9, scope: !1340)
!1342 = !DILocation(line: 1626, column: 9, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1339, file: !3, discriminator: 1)
!1344 = !DILocation(line: 1630, column: 14, scope: !1310)
!1345 = !DILocation(line: 1630, column: 29, scope: !1310)
!1346 = !DILocation(line: 1631, column: 14, scope: !1310)
!1347 = !DILocation(line: 1631, column: 29, scope: !1310)
!1348 = !DILocation(line: 1632, column: 14, scope: !1310)
!1349 = !DILocation(line: 1632, column: 29, scope: !1310)
!1350 = !DILocation(line: 1634, column: 96, scope: !1310)
!1351 = !DILocation(line: 1634, column: 22, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1310, file: !3, discriminator: 1)
!1353 = !DILocation(line: 1634, column: 13, scope: !1310)
!1354 = !DILocation(line: 1635, column: 10, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1635, column: 9)
!1356 = !DILocation(line: 1635, column: 9, scope: !1310)
!1357 = !DILocation(line: 1636, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 1636, column: 9)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 1635, column: 18)
!1360 = !DILocation(line: 1636, column: 9, scope: !1359)
!1361 = !DILocation(line: 1636, column: 9, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1358, file: !3, discriminator: 1)
!1363 = !DILocation(line: 1640, column: 1, scope: !1310)
!1364 = distinct !DISubprogram(name: "bnep_channel_create_for_addr", scope: !3, file: !3, line: 730, type: !1365, isLocal: true, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!34, !117}
!1367 = !{!1368, !1369}
!1368 = !DILocalVariable(name: "addr", arg: 1, scope: !1364, file: !3, line: 730, type: !117)
!1369 = !DILocalVariable(name: "channel", scope: !1364, file: !3, line: 733, type: !34)
!1370 = !DILocation(line: 730, column: 63, scope: !1364)
!1371 = !DILocation(line: 733, column: 31, scope: !1364)
!1372 = !DILocation(line: 733, column: 21, scope: !1364)
!1373 = !DILocation(line: 734, column: 10, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 734, column: 9)
!1375 = !DILocation(line: 734, column: 9, scope: !1364)
!1376 = !DILocation(line: 738, column: 14, scope: !1364)
!1377 = !DILocation(line: 738, column: 20, scope: !1364)
!1378 = !DILocation(line: 739, column: 65, scope: !1364)
!1379 = !DILocation(line: 739, column: 31, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1364, file: !3, discriminator: 1)
!1381 = !DILocation(line: 739, column: 14, scope: !1364)
!1382 = !DILocation(line: 739, column: 29, scope: !1364)
!1383 = !DILocation(line: 740, column: 5, scope: !1364)
!1384 = !DILocation(line: 742, column: 5, scope: !1364)
!1385 = !DILocation(line: 744, column: 14, scope: !1364)
!1386 = !DILocation(line: 744, column: 31, scope: !1364)
!1387 = !DILocation(line: 745, column: 14, scope: !1364)
!1388 = !DILocation(line: 745, column: 37, scope: !1364)
!1389 = !DILocation(line: 746, column: 14, scope: !1364)
!1390 = !DILocation(line: 746, column: 26, scope: !1364)
!1391 = !{!193, !197, i64 216}
!1392 = !DILocation(line: 749, column: 45, scope: !1364)
!1393 = !DILocation(line: 749, column: 5, scope: !1364)
!1394 = !DILocation(line: 751, column: 5, scope: !1364)
!1395 = !DILocation(line: 752, column: 1, scope: !1364)
!1396 = distinct !DISubprogram(name: "bnep_send_for_addr", scope: !3, file: !3, line: 1642, type: !1397, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!109, !117, !146, !140}
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405}
!1400 = !DILocalVariable(name: "addr", arg: 1, scope: !1396, file: !3, line: 1642, type: !117)
!1401 = !DILocalVariable(name: "data", arg: 2, scope: !1396, file: !3, line: 1642, type: !146)
!1402 = !DILocalVariable(name: "len", arg: 3, scope: !1396, file: !3, line: 1642, type: !140)
!1403 = !DILocalVariable(name: "channel", scope: !1396, file: !3, line: 1644, type: !34)
!1404 = !DILocalVariable(name: "send", scope: !1396, file: !3, line: 1645, type: !133)
!1405 = !DILocalVariable(name: "it", scope: !1396, file: !3, line: 1659, type: !27)
!1406 = !DILocation(line: 1642, column: 34, scope: !1396)
!1407 = !DILocation(line: 1642, column: 44, scope: !1396)
!1408 = !DILocation(line: 1642, column: 54, scope: !1396)
!1409 = !DILocation(line: 1645, column: 15, scope: !1396)
!1410 = !DILocation(line: 1646, column: 9, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1646, column: 9)
!1412 = !DILocation(line: 1646, column: 13, scope: !1411)
!1413 = !DILocation(line: 1646, column: 9, scope: !1396)
!1414 = !DILocation(line: 1649, column: 23, scope: !1396)
!1415 = !DILocation(line: 1649, column: 12, scope: !1396)
!1416 = !DILocation(line: 1651, column: 14, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1651, column: 9)
!1418 = !DILocation(line: 1651, column: 9, scope: !1396)
!1419 = !DILocation(line: 1652, column: 9, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 1652, column: 9)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1651, column: 23)
!1422 = !DILocation(line: 1652, column: 9, scope: !1421)
!1423 = !DILocation(line: 1652, column: 9, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1420, file: !3, discriminator: 1)
!1425 = !DILocation(line: 1655, column: 5, scope: !1396)
!1426 = !DILocation(line: 1656, column: 5, scope: !1396)
!1427 = !DILocation(line: 1657, column: 11, scope: !1396)
!1428 = !DILocation(line: 1657, column: 15, scope: !1396)
!1429 = !DILocation(line: 1658, column: 18, scope: !1396)
!1430 = !DILocation(line: 1658, column: 5, scope: !1396)
!1431 = !DILocation(line: 1660, column: 15, scope: !1396)
!1432 = !DILocation(line: 1644, column: 21, scope: !1396)
!1433 = !DILocation(line: 1661, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1661, column: 9)
!1435 = !DILocation(line: 1661, column: 9, scope: !1396)
!1436 = !DILocation(line: 1662, column: 9, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1661, column: 18)
!1438 = !DILocation(line: 1663, column: 18, scope: !1437)
!1439 = !DILocation(line: 1663, column: 43, scope: !1437)
!1440 = !DILocation(line: 1664, column: 9, scope: !1437)
!1441 = !DILocation(line: 1667, column: 1, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1396, file: !3, discriminator: 1)
!1443 = distinct !DISubprogram(name: "bnep_channel_for_addr", scope: !3, file: !3, line: 754, type: !1365, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1444)
!1444 = !{!1445, !1446, !1447}
!1445 = !DILocalVariable(name: "addr", arg: 1, scope: !1443, file: !3, line: 754, type: !117)
!1446 = !DILocalVariable(name: "it", scope: !1443, file: !3, line: 756, type: !27)
!1447 = !DILocalVariable(name: "channel", scope: !1448, file: !3, line: 758, type: !34)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 757, column: 76)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 757, column: 5)
!1450 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 757, column: 5)
!1451 = !DILocation(line: 754, column: 56, scope: !1443)
!1452 = !DILocation(line: 756, column: 28, scope: !1443)
!1453 = !DILocation(line: 757, column: 5, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1450, file: !3, discriminator: 1)
!1455 = !DILocation(line: 758, column: 36, scope: !1448)
!1456 = !DILocation(line: 757, column: 70, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1449, file: !3, discriminator: 2)
!1458 = distinct !{!1458, !1459, !1460}
!1459 = !DILocation(line: 757, column: 5, scope: !1450)
!1460 = !DILocation(line: 764, column: 5, scope: !1450)
!1461 = !DILocation(line: 758, column: 25, scope: !1448)
!1462 = !DILocation(line: 759, column: 9, scope: !1448)
!1463 = !DILocation(line: 760, column: 20, scope: !1448)
!1464 = !DILocation(line: 760, column: 9, scope: !1448)
!1465 = !DILocation(line: 761, column: 13, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 761, column: 13)
!1467 = !DILocation(line: 761, column: 53, scope: !1466)
!1468 = !DILocation(line: 766, column: 1, scope: !1443)
!1469 = distinct !DISubprogram(name: "bnep_disconnect", scope: !3, file: !3, line: 1668, type: !1470, isLocal: false, isDefinition: true, scopeLine: 1669, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1472)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !117}
!1472 = !{!1473, !1474}
!1473 = !DILocalVariable(name: "addr", arg: 1, scope: !1469, file: !3, line: 1668, type: !117)
!1474 = !DILocalVariable(name: "channel", scope: !1469, file: !3, line: 1670, type: !34)
!1475 = !DILocation(line: 1668, column: 32, scope: !1469)
!1476 = !DILocation(line: 1671, column: 5, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1671, column: 5)
!1478 = !DILocation(line: 1671, column: 5, scope: !1469)
!1479 = !DILocation(line: 1671, column: 5, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1477, file: !3, discriminator: 1)
!1481 = !DILocation(line: 1673, column: 15, scope: !1469)
!1482 = !DILocation(line: 1670, column: 21, scope: !1469)
!1483 = !DILocation(line: 1675, column: 5, scope: !1469)
!1484 = !DILocation(line: 1676, column: 1, scope: !1469)
!1485 = distinct !DISubprogram(name: "bnep_channel_finalize", scope: !3, file: !3, line: 798, type: !700, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1486)
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DILocalVariable(name: "channel", arg: 1, scope: !1485, file: !3, line: 798, type: !34)
!1488 = !DILocalVariable(name: "l2cap_cid", scope: !1485, file: !3, line: 800, type: !44)
!1489 = !DILocalVariable(name: "it", scope: !1485, file: !3, line: 807, type: !123)
!1490 = !DILocalVariable(name: "temp_it", scope: !1491, file: !3, line: 809, type: !123)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 808, column: 58)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 808, column: 5)
!1493 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 808, column: 5)
!1494 = !DILocalVariable(name: "event", scope: !1495, file: !3, line: 133, type: !1498)
!1495 = distinct !DISubprogram(name: "bnep_emit_channel_closed", scope: !3, file: !3, line: 126, type: !700, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1496)
!1496 = !{!1497, !1494}
!1497 = !DILocalVariable(name: "channel", arg: 1, scope: !1495, file: !3, line: 126, type: !34)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 112, elements: !1499)
!1499 = !{!1500}
!1500 = !DISubrange(count: 14)
!1501 = !DILocation(line: 133, column: 13, scope: !1495, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 804, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 803, column: 57)
!1504 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 803, column: 9)
!1505 = !DILocation(line: 798, column: 51, scope: !1485)
!1506 = !DILocation(line: 803, column: 18, scope: !1504)
!1507 = !DILocation(line: 803, column: 24, scope: !1504)
!1508 = !DILocation(line: 803, column: 9, scope: !1485)
!1509 = !DILocation(line: 126, column: 54, scope: !1495, inlinedAt: !1502)
!1510 = !DILocation(line: 128, column: 5, scope: !1511, inlinedAt: !1502)
!1511 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 128, column: 5)
!1512 = !DILocation(line: 128, column: 5, scope: !1495, inlinedAt: !1502)
!1513 = !DILocation(line: 129, column: 19, scope: !1514, inlinedAt: !1502)
!1514 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 129, column: 9)
!1515 = !DILocation(line: 128, column: 5, scope: !1516, inlinedAt: !1502)
!1516 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 1)
!1517 = !DILocation(line: 128, column: 5, scope: !1518, inlinedAt: !1502)
!1518 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 2)
!1519 = !DILocation(line: 129, column: 10, scope: !1514, inlinedAt: !1502)
!1520 = !DILocation(line: 129, column: 9, scope: !1495, inlinedAt: !1502)
!1521 = !DILocation(line: 133, column: 5, scope: !1495, inlinedAt: !1502)
!1522 = !DILocation(line: 134, column: 14, scope: !1495, inlinedAt: !1502)
!1523 = !DILocation(line: 135, column: 5, scope: !1495, inlinedAt: !1502)
!1524 = !DILocation(line: 135, column: 14, scope: !1495, inlinedAt: !1502)
!1525 = !DILocation(line: 136, column: 47, scope: !1495, inlinedAt: !1502)
!1526 = !DILocation(line: 136, column: 5, scope: !1495, inlinedAt: !1502)
!1527 = !DILocation(line: 137, column: 47, scope: !1495, inlinedAt: !1502)
!1528 = !DILocation(line: 137, column: 5, scope: !1495, inlinedAt: !1502)
!1529 = !DILocation(line: 138, column: 47, scope: !1495, inlinedAt: !1502)
!1530 = !DILocation(line: 138, column: 5, scope: !1495, inlinedAt: !1502)
!1531 = !DILocation(line: 139, column: 21, scope: !1495, inlinedAt: !1502)
!1532 = !DILocation(line: 139, column: 44, scope: !1495, inlinedAt: !1502)
!1533 = !DILocation(line: 139, column: 5, scope: !1495, inlinedAt: !1502)
!1534 = !DILocation(line: 140, column: 16, scope: !1495, inlinedAt: !1502)
!1535 = !DILocation(line: 140, column: 5, scope: !1495, inlinedAt: !1502)
!1536 = !DILocation(line: 141, column: 1, scope: !1495, inlinedAt: !1502)
!1537 = !DILocation(line: 807, column: 20, scope: !1485)
!1538 = !DILocation(line: 808, column: 41, scope: !1493)
!1539 = !DILocation(line: 808, column: 5, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1493, file: !3, discriminator: 1)
!1541 = !DILocation(line: 809, column: 24, scope: !1491)
!1542 = !DILocation(line: 810, column: 18, scope: !1491)
!1543 = !DILocation(line: 812, column: 9, scope: !1491)
!1544 = !DILocation(line: 813, column: 9, scope: !1491)
!1545 = distinct !{!1545, !1546, !1547}
!1546 = !DILocation(line: 808, column: 5, scope: !1493)
!1547 = !DILocation(line: 814, column: 5, scope: !1493)
!1548 = !DILocation(line: 815, column: 26, scope: !1485)
!1549 = !DILocation(line: 800, column: 14, scope: !1485)
!1550 = !DILocation(line: 792, column: 47, scope: !699, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 821, column: 5, scope: !1485)
!1552 = !DILocation(line: 794, column: 48, scope: !699, inlinedAt: !1551)
!1553 = !DILocation(line: 794, column: 5, scope: !699, inlinedAt: !1551)
!1554 = !DILocation(line: 795, column: 5, scope: !699, inlinedAt: !1551)
!1555 = !DILocation(line: 822, column: 5, scope: !1485)
!1556 = !DILocation(line: 823, column: 1, scope: !1485)
!1557 = distinct !DISubprogram(name: "bnep_register_service", scope: !3, file: !3, line: 1679, type: !1558, isLocal: false, isDefinition: true, scopeLine: 1680, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!52, !112, !44, !44}
!1560 = !{!1561, !1562, !1563, !1564}
!1561 = !DILocalVariable(name: "packet_handler", arg: 1, scope: !1557, file: !3, line: 1679, type: !112)
!1562 = !DILocalVariable(name: "service_uuid", arg: 2, scope: !1557, file: !3, line: 1679, type: !44)
!1563 = !DILocalVariable(name: "max_frame_size", arg: 3, scope: !1557, file: !3, line: 1679, type: !44)
!1564 = !DILocalVariable(name: "service", scope: !1557, file: !3, line: 1684, type: !125)
!1565 = !DILocation(line: 1679, column: 56, scope: !1557)
!1566 = !DILocation(line: 1679, column: 81, scope: !1557)
!1567 = !DILocation(line: 1679, column: 104, scope: !1557)
!1568 = !DILocation(line: 1681, column: 5, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1681, column: 5)
!1570 = !DILocation(line: 1681, column: 5, scope: !1557)
!1571 = !DILocation(line: 1681, column: 5, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1569, file: !3, discriminator: 1)
!1573 = !DILocalVariable(name: "uuid", arg: 1, scope: !1574, file: !3, line: 780, type: !44)
!1574 = distinct !DISubprogram(name: "bnep_service_for_uuid", scope: !3, file: !3, line: 780, type: !1575, isLocal: true, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1577)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!125, !44}
!1577 = !{!1573, !1578, !1579}
!1578 = !DILocalVariable(name: "it", scope: !1574, file: !3, line: 782, type: !27)
!1579 = !DILocalVariable(name: "service", scope: !1580, file: !3, line: 784, type: !125)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 783, column: 76)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 783, column: 5)
!1582 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 783, column: 5)
!1583 = !DILocation(line: 780, column: 55, scope: !1574, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 1684, column: 31, scope: !1557)
!1585 = !DILocation(line: 782, column: 28, scope: !1574, inlinedAt: !1584)
!1586 = !DILocation(line: 783, column: 5, scope: !1587, inlinedAt: !1584)
!1587 = !DILexicalBlockFile(scope: !1582, file: !3, discriminator: 1)
!1588 = !DILocation(line: 785, column: 22, scope: !1589, inlinedAt: !1584)
!1589 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 785, column: 13)
!1590 = !DILocation(line: 783, column: 70, scope: !1591, inlinedAt: !1584)
!1591 = !DILexicalBlockFile(scope: !1581, file: !3, discriminator: 2)
!1592 = distinct !{!1592, !1593, !1594}
!1593 = !DILocation(line: 783, column: 5, scope: !1582)
!1594 = !DILocation(line: 788, column: 5, scope: !1582)
!1595 = !{!1596, !195, i64 4}
!1596 = !{!"", !194, i64 0, !195, i64 4, !195, i64 6, !179, i64 8}
!1597 = !DILocation(line: 785, column: 35, scope: !1589, inlinedAt: !1584)
!1598 = !DILocation(line: 1690, column: 10, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1690, column: 9)
!1600 = !DILocation(line: 1690, column: 56, scope: !1599)
!1601 = !DILocation(line: 1693, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1693, column: 9)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1692, column: 55)
!1604 = !DILocation(line: 1693, column: 9, scope: !1603)
!1605 = !DILocation(line: 1693, column: 9, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1602, file: !3, discriminator: 1)
!1607 = !DILocation(line: 1698, column: 34, scope: !1557)
!1608 = !DILocation(line: 1684, column: 21, scope: !1557)
!1609 = !DILocation(line: 1699, column: 10, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1699, column: 9)
!1611 = !DILocation(line: 1699, column: 9, scope: !1557)
!1612 = !DILocation(line: 1704, column: 5, scope: !1557)
!1613 = !DILocation(line: 1708, column: 14, scope: !1557)
!1614 = !DILocation(line: 1708, column: 29, scope: !1557)
!1615 = !{!1596, !195, i64 6}
!1616 = !DILocation(line: 1709, column: 14, scope: !1557)
!1617 = !DILocation(line: 1709, column: 30, scope: !1557)
!1618 = !DILocation(line: 1710, column: 14, scope: !1557)
!1619 = !DILocation(line: 1710, column: 29, scope: !1557)
!1620 = !{!1596, !179, i64 8}
!1621 = !DILocation(line: 1714, column: 45, scope: !1557)
!1622 = !DILocation(line: 1714, column: 5, scope: !1557)
!1623 = !DILocation(line: 1716, column: 5, scope: !1557)
!1624 = !DILocation(line: 1717, column: 1, scope: !1557)
!1625 = distinct !DISubprogram(name: "bnep_emit_open_channel_complete", scope: !3, file: !3, line: 86, type: !1626, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !34, !52}
!1628 = !{!1629, !1630, !1631}
!1629 = !DILocalVariable(name: "channel", arg: 1, scope: !1625, file: !3, line: 86, type: !34)
!1630 = !DILocalVariable(name: "status", arg: 2, scope: !1625, file: !3, line: 86, type: !52)
!1631 = !DILocalVariable(name: "event", scope: !1625, file: !3, line: 93, type: !1632)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 152, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 19)
!1635 = !DILocation(line: 86, column: 61, scope: !1625)
!1636 = !DILocation(line: 86, column: 78, scope: !1625)
!1637 = !DILocation(line: 88, column: 5, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 88, column: 5)
!1639 = !DILocation(line: 88, column: 5, scope: !1625)
!1640 = !DILocation(line: 89, column: 19, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 89, column: 9)
!1642 = !DILocation(line: 88, column: 5, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1638, file: !3, discriminator: 1)
!1644 = !DILocation(line: 88, column: 5, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1638, file: !3, discriminator: 2)
!1646 = !DILocation(line: 89, column: 10, scope: !1641)
!1647 = !DILocation(line: 89, column: 9, scope: !1625)
!1648 = !DILocation(line: 93, column: 5, scope: !1625)
!1649 = !DILocation(line: 93, column: 13, scope: !1625)
!1650 = !DILocation(line: 94, column: 14, scope: !1625)
!1651 = !DILocation(line: 95, column: 5, scope: !1625)
!1652 = !DILocation(line: 95, column: 14, scope: !1625)
!1653 = !DILocation(line: 96, column: 5, scope: !1625)
!1654 = !DILocation(line: 96, column: 14, scope: !1625)
!1655 = !DILocation(line: 97, column: 47, scope: !1625)
!1656 = !DILocation(line: 97, column: 5, scope: !1625)
!1657 = !DILocation(line: 98, column: 47, scope: !1625)
!1658 = !DILocation(line: 98, column: 5, scope: !1625)
!1659 = !DILocation(line: 99, column: 47, scope: !1625)
!1660 = !DILocation(line: 99, column: 5, scope: !1625)
!1661 = !DILocation(line: 100, column: 47, scope: !1625)
!1662 = !DILocation(line: 100, column: 5, scope: !1625)
!1663 = !DILocation(line: 101, column: 5, scope: !1625)
!1664 = !DILocation(line: 103, column: 48, scope: !1625)
!1665 = !DILocation(line: 103, column: 5, scope: !1625)
!1666 = !DILocation(line: 104, column: 16, scope: !1625)
!1667 = !DILocation(line: 104, column: 5, scope: !1625)
!1668 = !DILocation(line: 105, column: 1, scope: !1625)
!1669 = !DILocation(line: 105, column: 1, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1625, file: !3, discriminator: 1)
!1671 = distinct !DISubprogram(name: "bnep_max_frame_size_for_l2cap_mtu", scope: !3, file: !3, line: 718, type: !1672, isLocal: true, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!44, !44}
!1674 = !{!1675, !1676}
!1675 = !DILocalVariable(name: "l2cap_mtu", arg: 1, scope: !1671, file: !3, line: 718, type: !44)
!1676 = !DILocalVariable(name: "max_frame_size", scope: !1671, file: !3, line: 724, type: !44)
!1677 = !DILocation(line: 718, column: 60, scope: !1671)
!1678 = !DILocation(line: 724, column: 41, scope: !1671)
!1679 = !DILocation(line: 724, column: 14, scope: !1671)
!1680 = !DILocation(line: 726, column: 5, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 726, column: 5)
!1682 = !DILocation(line: 726, column: 5, scope: !1671)
!1683 = !DILocation(line: 724, column: 31, scope: !1671)
!1684 = !DILocation(line: 726, column: 5, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1681, file: !3, discriminator: 1)
!1686 = !DILocation(line: 727, column: 5, scope: !1671)
!1687 = distinct !DISubprogram(name: "bnep_handle_control_packet", scope: !3, file: !3, line: 1144, type: !1688, isLocal: true, isDefinition: true, scopeLine: 1145, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!109, !34, !117, !44, !109}
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696}
!1691 = !DILocalVariable(name: "channel", arg: 1, scope: !1687, file: !3, line: 1144, type: !34)
!1692 = !DILocalVariable(name: "packet", arg: 2, scope: !1687, file: !3, line: 1144, type: !117)
!1693 = !DILocalVariable(name: "size", arg: 3, scope: !1687, file: !3, line: 1144, type: !44)
!1694 = !DILocalVariable(name: "is_extension", arg: 4, scope: !1687, file: !3, line: 1144, type: !109)
!1695 = !DILocalVariable(name: "len", scope: !1687, file: !3, line: 1146, type: !44)
!1696 = !DILocalVariable(name: "bnep_control_type", scope: !1687, file: !3, line: 1147, type: !52)
!1697 = !DILocation(line: 1144, column: 55, scope: !1687)
!1698 = !DILocation(line: 1144, column: 73, scope: !1687)
!1699 = !DILocation(line: 1144, column: 90, scope: !1687)
!1700 = !DILocation(line: 1144, column: 100, scope: !1687)
!1701 = !DILocation(line: 1146, column: 14, scope: !1687)
!1702 = !DILocation(line: 1149, column: 25, scope: !1687)
!1703 = !DILocation(line: 1147, column: 14, scope: !1687)
!1704 = !DILocation(line: 1152, column: 14, scope: !1687)
!1705 = !DILocation(line: 1152, column: 32, scope: !1687)
!1706 = !DILocation(line: 1153, column: 5, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1153, column: 5)
!1708 = !DILocation(line: 1153, column: 5, scope: !1687)
!1709 = !DILocation(line: 1153, column: 5, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1707, file: !3, discriminator: 1)
!1711 = !DILocation(line: 1154, column: 5, scope: !1687)
!1712 = !DILocation(line: 1157, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1157, column: 9)
!1714 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1154, column: 32)
!1715 = !DILocation(line: 1157, column: 9, scope: !1714)
!1716 = !DILocation(line: 1157, column: 9, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1713, file: !3, discriminator: 1)
!1718 = !DILocation(line: 1158, column: 9, scope: !1714)
!1719 = !DILocation(line: 1160, column: 9, scope: !1714)
!1720 = !DILocation(line: 1162, column: 13, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1162, column: 13)
!1722 = !DILocation(line: 1162, column: 13, scope: !1714)
!1723 = !DILocation(line: 1166, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1166, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 1162, column: 27)
!1726 = !DILocation(line: 1166, column: 13, scope: !1725)
!1727 = !DILocation(line: 1166, column: 13, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1724, file: !3, discriminator: 1)
!1729 = !DILocalVariable(name: "channel", arg: 1, scope: !1730, file: !3, line: 825, type: !34)
!1730 = distinct !DISubprogram(name: "bnep_handle_connection_request", scope: !3, file: !3, line: 825, type: !1731, isLocal: true, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!109, !34, !117, !44}
!1733 = !{!1729, !1734, !1735, !1736, !1737, !1738, !1739}
!1734 = !DILocalVariable(name: "packet", arg: 2, scope: !1730, file: !3, line: 825, type: !117)
!1735 = !DILocalVariable(name: "size", arg: 3, scope: !1730, file: !3, line: 825, type: !44)
!1736 = !DILocalVariable(name: "uuid_size", scope: !1730, file: !3, line: 827, type: !44)
!1737 = !DILocalVariable(name: "uuid_offset", scope: !1730, file: !3, line: 828, type: !44)
!1738 = !DILocalVariable(name: "response_code", scope: !1730, file: !3, line: 830, type: !44)
!1739 = !DILocalVariable(name: "service", scope: !1730, file: !3, line: 831, type: !125)
!1740 = !DILocation(line: 825, column: 59, scope: !1730, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 1169, column: 19, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 1168, column: 16)
!1743 = !DILocation(line: 825, column: 77, scope: !1730, inlinedAt: !1741)
!1744 = !DILocation(line: 825, column: 94, scope: !1730, inlinedAt: !1741)
!1745 = !DILocation(line: 828, column: 14, scope: !1730, inlinedAt: !1741)
!1746 = !DILocation(line: 829, column: 17, scope: !1730, inlinedAt: !1741)
!1747 = !DILocation(line: 830, column: 14, scope: !1730, inlinedAt: !1741)
!1748 = !DILocation(line: 834, column: 9, scope: !1749, inlinedAt: !1741)
!1749 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 834, column: 9)
!1750 = !DILocation(line: 834, column: 30, scope: !1749, inlinedAt: !1741)
!1751 = !DILocation(line: 834, column: 28, scope: !1749, inlinedAt: !1741)
!1752 = !DILocation(line: 834, column: 23, scope: !1749, inlinedAt: !1741)
!1753 = !DILocation(line: 834, column: 14, scope: !1749, inlinedAt: !1741)
!1754 = !DILocation(line: 834, column: 9, scope: !1730, inlinedAt: !1741)
!1755 = !DILocation(line: 838, column: 19, scope: !1756, inlinedAt: !1741)
!1756 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 838, column: 9)
!1757 = !DILocation(line: 838, column: 76, scope: !1756, inlinedAt: !1741)
!1758 = !DILocation(line: 841, column: 9, scope: !1759, inlinedAt: !1741)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 841, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 839, column: 59)
!1761 = !DILocation(line: 841, column: 9, scope: !1760, inlinedAt: !1741)
!1762 = !DILocation(line: 841, column: 9, scope: !1763, inlinedAt: !1741)
!1763 = !DILexicalBlockFile(scope: !1759, file: !3, discriminator: 1)
!1764 = !DILocation(line: 846, column: 5, scope: !1730, inlinedAt: !1741)
!1765 = !DILocation(line: 853, column: 9, scope: !1766, inlinedAt: !1741)
!1766 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 846, column: 24)
!1767 = !DILocation(line: 855, column: 9, scope: !1768, inlinedAt: !1741)
!1768 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 855, column: 9)
!1769 = !DILocation(line: 855, column: 9, scope: !1766, inlinedAt: !1741)
!1770 = !DILocation(line: 855, column: 9, scope: !1771, inlinedAt: !1741)
!1771 = !DILexicalBlockFile(scope: !1768, file: !3, discriminator: 1)
!1772 = !DILocation(line: 862, column: 30, scope: !1773, inlinedAt: !1741)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 861, column: 51)
!1774 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 861, column: 9)
!1775 = !DILocation(line: 862, column: 18, scope: !1773, inlinedAt: !1741)
!1776 = !DILocation(line: 862, column: 28, scope: !1773, inlinedAt: !1741)
!1777 = !DILocation(line: 863, column: 75, scope: !1773, inlinedAt: !1741)
!1778 = !DILocation(line: 863, column: 32, scope: !1773, inlinedAt: !1741)
!1779 = !DILocation(line: 863, column: 18, scope: !1773, inlinedAt: !1741)
!1780 = !DILocation(line: 863, column: 30, scope: !1773, inlinedAt: !1741)
!1781 = !DILocation(line: 865, column: 23, scope: !1782, inlinedAt: !1741)
!1782 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 865, column: 13)
!1783 = !DILocation(line: 865, column: 14, scope: !1782, inlinedAt: !1741)
!1784 = !DILocation(line: 865, column: 66, scope: !1782, inlinedAt: !1741)
!1785 = !DILocation(line: 868, column: 13, scope: !1786, inlinedAt: !1741)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 868, column: 13)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 867, column: 65)
!1788 = !DILocation(line: 868, column: 13, scope: !1787, inlinedAt: !1741)
!1789 = !DILocation(line: 868, column: 13, scope: !1790, inlinedAt: !1741)
!1790 = !DILexicalBlockFile(scope: !1786, file: !3, discriminator: 1)
!1791 = !DILocation(line: 869, column: 32, scope: !1787, inlinedAt: !1741)
!1792 = !DILocation(line: 870, column: 9, scope: !1787, inlinedAt: !1741)
!1793 = !DILocation(line: 871, column: 23, scope: !1794, inlinedAt: !1741)
!1794 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 871, column: 13)
!1795 = !DILocation(line: 871, column: 14, scope: !1794, inlinedAt: !1741)
!1796 = !DILocation(line: 871, column: 68, scope: !1794, inlinedAt: !1741)
!1797 = !DILocation(line: 874, column: 13, scope: !1798, inlinedAt: !1741)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 874, column: 13)
!1799 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 873, column: 67)
!1800 = !DILocation(line: 874, column: 13, scope: !1799, inlinedAt: !1741)
!1801 = !DILocation(line: 874, column: 13, scope: !1802, inlinedAt: !1741)
!1802 = !DILexicalBlockFile(scope: !1798, file: !3, discriminator: 1)
!1803 = !DILocation(line: 875, column: 34, scope: !1799, inlinedAt: !1741)
!1804 = !DILocation(line: 876, column: 9, scope: !1799, inlinedAt: !1741)
!1805 = !DILocation(line: 886, column: 27, scope: !1806, inlinedAt: !1741)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 886, column: 17)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 882, column: 16)
!1808 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 880, column: 13)
!1809 = !DILocation(line: 886, column: 85, scope: !1810, inlinedAt: !1741)
!1810 = !DILexicalBlockFile(scope: !1806, file: !3, discriminator: 1)
!1811 = !DILocation(line: 780, column: 55, scope: !1574, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 879, column: 19, scope: !1773, inlinedAt: !1741)
!1813 = !DILocation(line: 782, column: 28, scope: !1574, inlinedAt: !1812)
!1814 = !DILocation(line: 783, column: 5, scope: !1587, inlinedAt: !1812)
!1815 = !DILocation(line: 785, column: 22, scope: !1589, inlinedAt: !1812)
!1816 = !DILocation(line: 783, column: 70, scope: !1591, inlinedAt: !1812)
!1817 = !DILocation(line: 785, column: 35, scope: !1589, inlinedAt: !1812)
!1818 = !DILocation(line: 884, column: 48, scope: !1807, inlinedAt: !1741)
!1819 = !DILocation(line: 884, column: 22, scope: !1807, inlinedAt: !1741)
!1820 = !DILocation(line: 884, column: 37, scope: !1807, inlinedAt: !1741)
!1821 = !DILocation(line: 886, column: 39, scope: !1806, inlinedAt: !1741)
!1822 = !DILocation(line: 886, column: 72, scope: !1806, inlinedAt: !1741)
!1823 = !DILocation(line: 886, column: 95, scope: !1810, inlinedAt: !1741)
!1824 = !DILocation(line: 886, column: 17, scope: !1825, inlinedAt: !1741)
!1825 = !DILexicalBlockFile(scope: !1807, file: !3, discriminator: 1)
!1826 = !DILocation(line: 709, column: 59, scope: !501, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 893, column: 5, scope: !1730, inlinedAt: !1741)
!1828 = !DILocation(line: 709, column: 91, scope: !501, inlinedAt: !1827)
!1829 = !DILocation(line: 711, column: 60, scope: !501, inlinedAt: !1827)
!1830 = !DILocation(line: 711, column: 70, scope: !501, inlinedAt: !1827)
!1831 = !DILocation(line: 711, column: 24, scope: !501, inlinedAt: !1827)
!1832 = !DILocation(line: 894, column: 14, scope: !1730, inlinedAt: !1741)
!1833 = !DILocation(line: 894, column: 28, scope: !1730, inlinedAt: !1741)
!1834 = !DILocation(line: 898, column: 5, scope: !1730, inlinedAt: !1741)
!1835 = !DILocation(line: 1173, column: 13, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1173, column: 13)
!1837 = !DILocation(line: 1173, column: 13, scope: !1714)
!1838 = !DILocation(line: 1177, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 1177, column: 13)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 1173, column: 27)
!1841 = !DILocation(line: 1177, column: 13, scope: !1840)
!1842 = !DILocation(line: 1177, column: 13, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1839, file: !3, discriminator: 1)
!1844 = !DILocalVariable(name: "channel", arg: 1, scope: !1845, file: !3, line: 901, type: !34)
!1845 = distinct !DISubprogram(name: "bnep_handle_connection_response", scope: !3, file: !3, line: 901, type: !1731, isLocal: true, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1846)
!1846 = !{!1844, !1847, !1848, !1849}
!1847 = !DILocalVariable(name: "packet", arg: 2, scope: !1845, file: !3, line: 901, type: !117)
!1848 = !DILocalVariable(name: "size", arg: 3, scope: !1845, file: !3, line: 901, type: !44)
!1849 = !DILocalVariable(name: "response_code", scope: !1845, file: !3, line: 903, type: !44)
!1850 = !DILocation(line: 901, column: 60, scope: !1845, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 1180, column: 19, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 1179, column: 16)
!1853 = !DILocation(line: 901, column: 78, scope: !1845, inlinedAt: !1851)
!1854 = !DILocation(line: 901, column: 95, scope: !1845, inlinedAt: !1851)
!1855 = !DILocation(line: 906, column: 14, scope: !1856, inlinedAt: !1851)
!1856 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 906, column: 9)
!1857 = !DILocation(line: 906, column: 9, scope: !1845, inlinedAt: !1851)
!1858 = !DILocation(line: 910, column: 18, scope: !1859, inlinedAt: !1851)
!1859 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 910, column: 9)
!1860 = !DILocation(line: 910, column: 24, scope: !1859, inlinedAt: !1851)
!1861 = !DILocation(line: 910, column: 9, scope: !1845, inlinedAt: !1851)
!1862 = !DILocation(line: 912, column: 9, scope: !1863, inlinedAt: !1851)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 912, column: 9)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 910, column: 76)
!1865 = !DILocation(line: 912, column: 9, scope: !1864, inlinedAt: !1851)
!1866 = !DILocation(line: 912, column: 9, scope: !1867, inlinedAt: !1851)
!1867 = !DILexicalBlockFile(scope: !1863, file: !3, discriminator: 1)
!1868 = !DILocation(line: 916, column: 21, scope: !1845, inlinedAt: !1851)
!1869 = !DILocation(line: 918, column: 9, scope: !1870, inlinedAt: !1851)
!1870 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 918, column: 9)
!1871 = !DILocation(line: 918, column: 23, scope: !1870, inlinedAt: !1851)
!1872 = !DILocation(line: 918, column: 9, scope: !1845, inlinedAt: !1851)
!1873 = !DILocation(line: 919, column: 9, scope: !1874, inlinedAt: !1851)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 919, column: 9)
!1875 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 918, column: 51)
!1876 = !DILocation(line: 919, column: 9, scope: !1875, inlinedAt: !1851)
!1877 = !DILocation(line: 919, column: 9, scope: !1878, inlinedAt: !1851)
!1878 = !DILexicalBlockFile(scope: !1874, file: !3, discriminator: 1)
!1879 = !DILocation(line: 919, column: 9, scope: !1880, inlinedAt: !1851)
!1880 = !DILexicalBlockFile(scope: !1874, file: !3, discriminator: 2)
!1881 = !DILocation(line: 920, column: 24, scope: !1875, inlinedAt: !1851)
!1882 = !DILocation(line: 923, column: 9, scope: !1875, inlinedAt: !1851)
!1883 = !DILocation(line: 924, column: 5, scope: !1875, inlinedAt: !1851)
!1884 = !DILocation(line: 925, column: 9, scope: !1885, inlinedAt: !1851)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 925, column: 9)
!1886 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 924, column: 12)
!1887 = !DILocation(line: 925, column: 9, scope: !1886, inlinedAt: !1851)
!1888 = !DILocation(line: 925, column: 9, scope: !1889, inlinedAt: !1851)
!1889 = !DILexicalBlockFile(scope: !1885, file: !3, discriminator: 1)
!1890 = !DILocation(line: 925, column: 9, scope: !1891, inlinedAt: !1851)
!1891 = !DILexicalBlockFile(scope: !1885, file: !3, discriminator: 2)
!1892 = !DILocation(line: 926, column: 9, scope: !1886, inlinedAt: !1851)
!1893 = !DILocalVariable(name: "channel", arg: 1, scope: !1894, file: !3, line: 945, type: !34)
!1894 = distinct !DISubprogram(name: "bnep_handle_filter_net_type_set", scope: !3, file: !3, line: 945, type: !1731, isLocal: true, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1895)
!1895 = !{!1893, !1896, !1897, !1898, !1899, !1900}
!1896 = !DILocalVariable(name: "packet", arg: 2, scope: !1894, file: !3, line: 945, type: !117)
!1897 = !DILocalVariable(name: "size", arg: 3, scope: !1894, file: !3, line: 945, type: !44)
!1898 = !DILocalVariable(name: "list_length", scope: !1894, file: !3, line: 947, type: !44)
!1899 = !DILocalVariable(name: "response_code", scope: !1894, file: !3, line: 948, type: !44)
!1900 = !DILocalVariable(name: "i", scope: !1901, file: !3, line: 971, type: !109)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 970, column: 12)
!1902 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 967, column: 9)
!1903 = !DILocation(line: 945, column: 60, scope: !1894, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 1184, column: 15, scope: !1714)
!1905 = !DILocation(line: 945, column: 78, scope: !1894, inlinedAt: !1904)
!1906 = !DILocation(line: 945, column: 95, scope: !1894, inlinedAt: !1904)
!1907 = !DILocation(line: 948, column: 14, scope: !1894, inlinedAt: !1904)
!1908 = !DILocation(line: 951, column: 14, scope: !1909, inlinedAt: !1904)
!1909 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 951, column: 9)
!1910 = !DILocation(line: 951, column: 9, scope: !1894, inlinedAt: !1904)
!1911 = !DILocation(line: 951, column: 9, scope: !1909, inlinedAt: !1904)
!1912 = !DILocation(line: 955, column: 19, scope: !1894, inlinedAt: !1904)
!1913 = !DILocation(line: 957, column: 21, scope: !1914, inlinedAt: !1904)
!1914 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 957, column: 9)
!1915 = !DILocation(line: 957, column: 19, scope: !1914, inlinedAt: !1904)
!1916 = !DILocation(line: 957, column: 14, scope: !1914, inlinedAt: !1904)
!1917 = !DILocation(line: 957, column: 9, scope: !1894, inlinedAt: !1904)
!1918 = !DILocalVariable(name: "channel", arg: 1, scope: !1919, file: !3, line: 931, type: !34)
!1919 = distinct !DISubprogram(name: "bnep_can_handle_extensions", scope: !3, file: !3, line: 931, type: !1920, isLocal: true, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!109, !34}
!1922 = !{!1918}
!1923 = !DILocation(line: 931, column: 55, scope: !1919, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 961, column: 10, scope: !1925, inlinedAt: !1904)
!1925 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 961, column: 9)
!1926 = !DILocation(line: 934, column: 18, scope: !1927, inlinedAt: !1924)
!1927 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 934, column: 9)
!1928 = !DILocation(line: 934, column: 9, scope: !1919, inlinedAt: !1924)
!1929 = !DILocation(line: 939, column: 19, scope: !1930, inlinedAt: !1924)
!1930 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 938, column: 9)
!1931 = !DILocation(line: 939, column: 29, scope: !1930, inlinedAt: !1924)
!1932 = !DILocation(line: 938, column: 9, scope: !1933, inlinedAt: !1924)
!1933 = !DILexicalBlockFile(scope: !1919, file: !3, discriminator: 1)
!1934 = !DILocation(line: 962, column: 9, scope: !1935, inlinedAt: !1904)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 962, column: 9)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 961, column: 47)
!1937 = !DILocation(line: 962, column: 9, scope: !1936, inlinedAt: !1904)
!1938 = !DILocation(line: 962, column: 9, scope: !1939, inlinedAt: !1904)
!1939 = !DILexicalBlockFile(scope: !1935, file: !3, discriminator: 1)
!1940 = !DILocation(line: 967, column: 22, scope: !1902, inlinedAt: !1904)
!1941 = !DILocation(line: 967, column: 33, scope: !1902, inlinedAt: !1904)
!1942 = !DILocation(line: 967, column: 9, scope: !1894, inlinedAt: !1904)
!1943 = !DILocation(line: 968, column: 9, scope: !1944, inlinedAt: !1904)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 968, column: 9)
!1945 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 967, column: 55)
!1946 = !DILocation(line: 968, column: 9, scope: !1945, inlinedAt: !1904)
!1947 = !DILocation(line: 968, column: 9, scope: !1948, inlinedAt: !1904)
!1948 = !DILexicalBlockFile(scope: !1944, file: !3, discriminator: 1)
!1949 = !DILocation(line: 972, column: 18, scope: !1901, inlinedAt: !1904)
!1950 = !DILocation(line: 972, column: 35, scope: !1901, inlinedAt: !1904)
!1951 = !DILocation(line: 971, column: 13, scope: !1901, inlinedAt: !1904)
!1952 = !DILocation(line: 975, column: 23, scope: !1953, inlinedAt: !1904)
!1953 = !DILexicalBlockFile(scope: !1954, file: !3, discriminator: 1)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 975, column: 9)
!1955 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 975, column: 9)
!1956 = !DILocation(line: 975, column: 9, scope: !1957, inlinedAt: !1904)
!1957 = !DILexicalBlockFile(scope: !1955, file: !3, discriminator: 1)
!1958 = !DILocation(line: 976, column: 112, scope: !1959, inlinedAt: !1904)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 975, column: 56)
!1960 = !DILocation(line: 976, column: 107, scope: !1959, inlinedAt: !1904)
!1961 = !DILocation(line: 976, column: 74, scope: !1959, inlinedAt: !1904)
!1962 = !DILocation(line: 976, column: 42, scope: !1959, inlinedAt: !1904)
!1963 = !DILocation(line: 976, column: 13, scope: !1959, inlinedAt: !1904)
!1964 = !DILocation(line: 976, column: 60, scope: !1959, inlinedAt: !1904)
!1965 = !DILocation(line: 976, column: 72, scope: !1959, inlinedAt: !1904)
!1966 = !DILocation(line: 977, column: 115, scope: !1959, inlinedAt: !1904)
!1967 = !DILocation(line: 977, column: 72, scope: !1959, inlinedAt: !1904)
!1968 = !DILocation(line: 977, column: 42, scope: !1959, inlinedAt: !1904)
!1969 = !DILocation(line: 977, column: 13, scope: !1959, inlinedAt: !1904)
!1970 = !DILocation(line: 977, column: 60, scope: !1959, inlinedAt: !1904)
!1971 = !DILocation(line: 977, column: 70, scope: !1959, inlinedAt: !1904)
!1972 = !DILocation(line: 978, column: 64, scope: !1973, inlinedAt: !1904)
!1973 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 978, column: 17)
!1974 = !DILocation(line: 978, column: 17, scope: !1973, inlinedAt: !1904)
!1975 = !DILocation(line: 978, column: 78, scope: !1973, inlinedAt: !1904)
!1976 = !DILocation(line: 978, column: 76, scope: !1973, inlinedAt: !1904)
!1977 = !DILocation(line: 978, column: 17, scope: !1959, inlinedAt: !1904)
!1978 = !DILocation(line: 980, column: 17, scope: !1979, inlinedAt: !1904)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 980, column: 17)
!1980 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 978, column: 136)
!1981 = !DILocation(line: 980, column: 17, scope: !1980, inlinedAt: !1904)
!1982 = !DILocation(line: 980, column: 17, scope: !1983, inlinedAt: !1904)
!1983 = !DILexicalBlockFile(scope: !1979, file: !3, discriminator: 1)
!1984 = !DILocation(line: 986, column: 17, scope: !1985, inlinedAt: !1904)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 986, column: 17)
!1986 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 984, column: 20)
!1987 = !DILocation(line: 986, column: 17, scope: !1986, inlinedAt: !1904)
!1988 = !DILocation(line: 986, column: 17, scope: !1989, inlinedAt: !1904)
!1989 = !DILexicalBlockFile(scope: !1985, file: !3, discriminator: 1)
!1990 = !DILocation(line: 989, column: 43, scope: !1986, inlinedAt: !1904)
!1991 = !DILocation(line: 975, column: 52, scope: !1992, inlinedAt: !1904)
!1992 = !DILexicalBlockFile(scope: !1954, file: !3, discriminator: 2)
!1993 = distinct !{!1993, !1994, !1995}
!1994 = !DILocation(line: 975, column: 9, scope: !1955)
!1995 = !DILocation(line: 991, column: 9, scope: !1955)
!1996 = !DILocation(line: 709, column: 59, scope: !501, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 995, column: 5, scope: !1894, inlinedAt: !1904)
!1998 = !DILocation(line: 709, column: 91, scope: !501, inlinedAt: !1997)
!1999 = !DILocation(line: 711, column: 60, scope: !501, inlinedAt: !1997)
!2000 = !DILocation(line: 711, column: 70, scope: !501, inlinedAt: !1997)
!2001 = !DILocation(line: 711, column: 24, scope: !501, inlinedAt: !1997)
!2002 = !DILocation(line: 996, column: 14, scope: !1894, inlinedAt: !1904)
!2003 = !DILocation(line: 996, column: 28, scope: !1894, inlinedAt: !1904)
!2004 = !DILocation(line: 999, column: 5, scope: !1894, inlinedAt: !1904)
!2005 = !DILocalVariable(name: "channel", arg: 1, scope: !2006, file: !3, line: 1002, type: !34)
!2006 = distinct !DISubprogram(name: "bnep_handle_filter_net_type_response", scope: !3, file: !3, line: 1002, type: !1731, isLocal: true, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2007)
!2007 = !{!2005, !2008, !2009, !2010}
!2008 = !DILocalVariable(name: "packet", arg: 2, scope: !2006, file: !3, line: 1002, type: !117)
!2009 = !DILocalVariable(name: "size", arg: 3, scope: !2006, file: !3, line: 1002, type: !44)
!2010 = !DILocalVariable(name: "response_code", scope: !2006, file: !3, line: 1004, type: !44)
!2011 = !DILocation(line: 1002, column: 65, scope: !2006, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 1187, column: 15, scope: !1714)
!2013 = !DILocation(line: 1002, column: 83, scope: !2006, inlinedAt: !2012)
!2014 = !DILocation(line: 1002, column: 100, scope: !2006, inlinedAt: !2012)
!2015 = !DILocation(line: 1009, column: 14, scope: !2016, inlinedAt: !2012)
!2016 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1009, column: 9)
!2017 = !DILocation(line: 1009, column: 9, scope: !2006, inlinedAt: !2012)
!2018 = !DILocation(line: 931, column: 55, scope: !1919, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 1013, column: 10, scope: !2020, inlinedAt: !2012)
!2020 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1013, column: 9)
!2021 = !DILocation(line: 934, column: 18, scope: !1927, inlinedAt: !2019)
!2022 = !DILocation(line: 934, column: 9, scope: !1919, inlinedAt: !2019)
!2023 = !DILocation(line: 939, column: 19, scope: !1930, inlinedAt: !2019)
!2024 = !DILocation(line: 939, column: 29, scope: !1930, inlinedAt: !2019)
!2025 = !DILocation(line: 938, column: 9, scope: !1933, inlinedAt: !2019)
!2026 = !DILocation(line: 1014, column: 9, scope: !2027, inlinedAt: !2012)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 1014, column: 9)
!2028 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1013, column: 47)
!2029 = !DILocation(line: 1014, column: 9, scope: !2028, inlinedAt: !2012)
!2030 = !DILocation(line: 1014, column: 9, scope: !2031, inlinedAt: !2012)
!2031 = !DILexicalBlockFile(scope: !2027, file: !3, discriminator: 1)
!2032 = !DILocation(line: 1018, column: 21, scope: !2006, inlinedAt: !2012)
!2033 = !DILocation(line: 1020, column: 9, scope: !2034, inlinedAt: !2012)
!2034 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1020, column: 9)
!2035 = !DILocation(line: 1020, column: 23, scope: !2034, inlinedAt: !2012)
!2036 = !DILocation(line: 1020, column: 9, scope: !2006, inlinedAt: !2012)
!2037 = !DILocation(line: 1021, column: 9, scope: !2038, inlinedAt: !2012)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1021, column: 9)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1020, column: 52)
!2040 = !DILocation(line: 1021, column: 9, scope: !2039, inlinedAt: !2012)
!2041 = !DILocation(line: 1021, column: 9, scope: !2042, inlinedAt: !2012)
!2042 = !DILexicalBlockFile(scope: !2038, file: !3, discriminator: 1)
!2043 = !DILocation(line: 1021, column: 9, scope: !2044, inlinedAt: !2012)
!2044 = !DILexicalBlockFile(scope: !2038, file: !3, discriminator: 2)
!2045 = !DILocation(line: 1023, column: 9, scope: !2046, inlinedAt: !2012)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 1023, column: 9)
!2047 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1022, column: 12)
!2048 = !DILocation(line: 1023, column: 9, scope: !2047, inlinedAt: !2012)
!2049 = !DILocation(line: 1023, column: 9, scope: !2050, inlinedAt: !2012)
!2050 = !DILexicalBlockFile(scope: !2046, file: !3, discriminator: 1)
!2051 = !DILocation(line: 1023, column: 9, scope: !2052, inlinedAt: !2012)
!2052 = !DILexicalBlockFile(scope: !2046, file: !3, discriminator: 2)
!2053 = !DILocalVariable(name: "channel", arg: 1, scope: !2054, file: !3, line: 1029, type: !34)
!2054 = distinct !DISubprogram(name: "bnep_handle_multi_addr_set", scope: !3, file: !3, line: 1029, type: !1731, isLocal: true, isDefinition: true, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2055)
!2055 = !{!2053, !2056, !2057, !2058, !2059, !2060}
!2056 = !DILocalVariable(name: "packet", arg: 2, scope: !2054, file: !3, line: 1029, type: !117)
!2057 = !DILocalVariable(name: "size", arg: 3, scope: !2054, file: !3, line: 1029, type: !44)
!2058 = !DILocalVariable(name: "list_length", scope: !2054, file: !3, line: 1031, type: !44)
!2059 = !DILocalVariable(name: "response_code", scope: !2054, file: !3, line: 1032, type: !44)
!2060 = !DILocalVariable(name: "i", scope: !2061, file: !3, line: 1055, type: !96)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 1054, column: 12)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1051, column: 9)
!2063 = !DILocation(line: 1029, column: 55, scope: !2054, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 1190, column: 15, scope: !1714)
!2065 = !DILocation(line: 1029, column: 73, scope: !2054, inlinedAt: !2064)
!2066 = !DILocation(line: 1029, column: 90, scope: !2054, inlinedAt: !2064)
!2067 = !DILocation(line: 1032, column: 14, scope: !2054, inlinedAt: !2064)
!2068 = !DILocation(line: 1035, column: 14, scope: !2069, inlinedAt: !2064)
!2069 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1035, column: 9)
!2070 = !DILocation(line: 1035, column: 9, scope: !2054, inlinedAt: !2064)
!2071 = !DILocation(line: 1035, column: 9, scope: !2069, inlinedAt: !2064)
!2072 = !DILocation(line: 1039, column: 19, scope: !2054, inlinedAt: !2064)
!2073 = !DILocation(line: 1041, column: 21, scope: !2074, inlinedAt: !2064)
!2074 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1041, column: 9)
!2075 = !DILocation(line: 1041, column: 19, scope: !2074, inlinedAt: !2064)
!2076 = !DILocation(line: 1041, column: 14, scope: !2074, inlinedAt: !2064)
!2077 = !DILocation(line: 1041, column: 9, scope: !2054, inlinedAt: !2064)
!2078 = !DILocation(line: 931, column: 55, scope: !1919, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 1045, column: 10, scope: !2080, inlinedAt: !2064)
!2080 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1045, column: 9)
!2081 = !DILocation(line: 934, column: 18, scope: !1927, inlinedAt: !2079)
!2082 = !DILocation(line: 934, column: 9, scope: !1919, inlinedAt: !2079)
!2083 = !DILocation(line: 939, column: 19, scope: !1930, inlinedAt: !2079)
!2084 = !DILocation(line: 939, column: 29, scope: !1930, inlinedAt: !2079)
!2085 = !DILocation(line: 938, column: 9, scope: !1933, inlinedAt: !2079)
!2086 = !DILocation(line: 1046, column: 9, scope: !2087, inlinedAt: !2064)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1046, column: 9)
!2088 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1045, column: 47)
!2089 = !DILocation(line: 1046, column: 9, scope: !2088, inlinedAt: !2064)
!2090 = !DILocation(line: 1046, column: 9, scope: !2091, inlinedAt: !2064)
!2091 = !DILexicalBlockFile(scope: !2087, file: !3, discriminator: 1)
!2092 = !DILocation(line: 1051, column: 22, scope: !2062, inlinedAt: !2064)
!2093 = !DILocation(line: 1051, column: 46, scope: !2062, inlinedAt: !2064)
!2094 = !DILocation(line: 1051, column: 9, scope: !2054, inlinedAt: !2064)
!2095 = !DILocation(line: 1052, column: 9, scope: !2096, inlinedAt: !2064)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1052, column: 9)
!2097 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 1051, column: 75)
!2098 = !DILocation(line: 1052, column: 9, scope: !2097, inlinedAt: !2064)
!2099 = !DILocation(line: 1052, column: 9, scope: !2100, inlinedAt: !2064)
!2100 = !DILexicalBlockFile(scope: !2096, file: !3, discriminator: 1)
!2101 = !DILocation(line: 1056, column: 18, scope: !2061, inlinedAt: !2064)
!2102 = !DILocation(line: 1056, column: 41, scope: !2061, inlinedAt: !2064)
!2103 = !DILocation(line: 1055, column: 22, scope: !2061, inlinedAt: !2064)
!2104 = !DILocation(line: 1058, column: 23, scope: !2105, inlinedAt: !2064)
!2105 = !DILexicalBlockFile(scope: !2106, file: !3, discriminator: 1)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1058, column: 9)
!2107 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 1058, column: 9)
!2108 = !DILocation(line: 1058, column: 9, scope: !2109, inlinedAt: !2064)
!2109 = !DILexicalBlockFile(scope: !2107, file: !3, discriminator: 1)
!2110 = !DILocation(line: 1059, column: 13, scope: !2111, inlinedAt: !2064)
!2111 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1058, column: 69)
!2112 = !DILocation(line: 1060, column: 13, scope: !2111, inlinedAt: !2064)
!2113 = !DILocation(line: 1062, column: 59, scope: !2114, inlinedAt: !2064)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 1062, column: 17)
!2115 = !DILocation(line: 1062, column: 24, scope: !2114, inlinedAt: !2064)
!2116 = !DILocation(line: 1063, column: 24, scope: !2114, inlinedAt: !2064)
!2117 = !DILocation(line: 1062, column: 17, scope: !2114, inlinedAt: !2064)
!2118 = !DILocation(line: 1063, column: 109, scope: !2114, inlinedAt: !2064)
!2119 = !DILocation(line: 1062, column: 17, scope: !2111, inlinedAt: !2064)
!2120 = !DILocation(line: 1065, column: 17, scope: !2121, inlinedAt: !2064)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 1065, column: 17)
!2122 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1063, column: 114)
!2123 = !DILocation(line: 1065, column: 17, scope: !2122, inlinedAt: !2064)
!2124 = !DILocation(line: 1065, column: 17, scope: !2125, inlinedAt: !2064)
!2125 = !DILexicalBlockFile(scope: !2121, file: !3, discriminator: 1)
!2126 = !DILocation(line: 1065, column: 17, scope: !2127, inlinedAt: !2064)
!2127 = !DILexicalBlockFile(scope: !2121, file: !3, discriminator: 2)
!2128 = !DILocation(line: 1067, column: 17, scope: !2129, inlinedAt: !2064)
!2129 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 1067, column: 17)
!2130 = !DILocation(line: 1067, column: 17, scope: !2122, inlinedAt: !2064)
!2131 = !DILocation(line: 1067, column: 17, scope: !2132, inlinedAt: !2064)
!2132 = !DILexicalBlockFile(scope: !2129, file: !3, discriminator: 1)
!2133 = !DILocation(line: 1067, column: 17, scope: !2134, inlinedAt: !2064)
!2134 = !DILexicalBlockFile(scope: !2129, file: !3, discriminator: 2)
!2135 = !DILocation(line: 1072, column: 17, scope: !2136, inlinedAt: !2064)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1072, column: 17)
!2137 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1070, column: 20)
!2138 = !DILocation(line: 1072, column: 17, scope: !2137, inlinedAt: !2064)
!2139 = !DILocation(line: 1072, column: 17, scope: !2140, inlinedAt: !2064)
!2140 = !DILexicalBlockFile(scope: !2136, file: !3, discriminator: 1)
!2141 = !DILocation(line: 1072, column: 17, scope: !2142, inlinedAt: !2064)
!2142 = !DILexicalBlockFile(scope: !2136, file: !3, discriminator: 2)
!2143 = !DILocation(line: 1074, column: 17, scope: !2144, inlinedAt: !2064)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1074, column: 17)
!2145 = !DILocation(line: 1074, column: 17, scope: !2137, inlinedAt: !2064)
!2146 = !DILocation(line: 1074, column: 17, scope: !2147, inlinedAt: !2064)
!2147 = !DILexicalBlockFile(scope: !2144, file: !3, discriminator: 1)
!2148 = !DILocation(line: 1074, column: 17, scope: !2149, inlinedAt: !2064)
!2149 = !DILexicalBlockFile(scope: !2144, file: !3, discriminator: 2)
!2150 = !DILocation(line: 1076, column: 49, scope: !2137, inlinedAt: !2064)
!2151 = !DILocation(line: 1058, column: 65, scope: !2152, inlinedAt: !2064)
!2152 = !DILexicalBlockFile(scope: !2106, file: !3, discriminator: 2)
!2153 = distinct !{!2153, !2154, !2155}
!2154 = !DILocation(line: 1058, column: 9, scope: !2107)
!2155 = !DILocation(line: 1078, column: 9, scope: !2107)
!2156 = !DILocation(line: 709, column: 59, scope: !501, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 1081, column: 5, scope: !2054, inlinedAt: !2064)
!2158 = !DILocation(line: 709, column: 91, scope: !501, inlinedAt: !2157)
!2159 = !DILocation(line: 711, column: 60, scope: !501, inlinedAt: !2157)
!2160 = !DILocation(line: 711, column: 70, scope: !501, inlinedAt: !2157)
!2161 = !DILocation(line: 711, column: 24, scope: !501, inlinedAt: !2157)
!2162 = !DILocation(line: 1082, column: 14, scope: !2054, inlinedAt: !2064)
!2163 = !DILocation(line: 1082, column: 28, scope: !2054, inlinedAt: !2064)
!2164 = !DILocation(line: 1085, column: 5, scope: !2054, inlinedAt: !2064)
!2165 = !DILocalVariable(name: "channel", arg: 1, scope: !2166, file: !3, line: 1088, type: !34)
!2166 = distinct !DISubprogram(name: "bnep_handle_multi_addr_response", scope: !3, file: !3, line: 1088, type: !1731, isLocal: true, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2167)
!2167 = !{!2165, !2168, !2169, !2170}
!2168 = !DILocalVariable(name: "packet", arg: 2, scope: !2166, file: !3, line: 1088, type: !117)
!2169 = !DILocalVariable(name: "size", arg: 3, scope: !2166, file: !3, line: 1088, type: !44)
!2170 = !DILocalVariable(name: "response_code", scope: !2166, file: !3, line: 1090, type: !44)
!2171 = !DILocation(line: 1088, column: 60, scope: !2166, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 1193, column: 15, scope: !1714)
!2173 = !DILocation(line: 1088, column: 78, scope: !2166, inlinedAt: !2172)
!2174 = !DILocation(line: 1088, column: 95, scope: !2166, inlinedAt: !2172)
!2175 = !DILocation(line: 1095, column: 14, scope: !2176, inlinedAt: !2172)
!2176 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1095, column: 9)
!2177 = !DILocation(line: 1095, column: 9, scope: !2166, inlinedAt: !2172)
!2178 = !DILocation(line: 931, column: 55, scope: !1919, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 1099, column: 10, scope: !2180, inlinedAt: !2172)
!2180 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1099, column: 9)
!2181 = !DILocation(line: 934, column: 18, scope: !1927, inlinedAt: !2179)
!2182 = !DILocation(line: 934, column: 9, scope: !1919, inlinedAt: !2179)
!2183 = !DILocation(line: 939, column: 19, scope: !1930, inlinedAt: !2179)
!2184 = !DILocation(line: 939, column: 29, scope: !1930, inlinedAt: !2179)
!2185 = !DILocation(line: 938, column: 9, scope: !1933, inlinedAt: !2179)
!2186 = !DILocation(line: 1100, column: 9, scope: !2187, inlinedAt: !2172)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 1100, column: 9)
!2188 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 1099, column: 47)
!2189 = !DILocation(line: 1100, column: 9, scope: !2188, inlinedAt: !2172)
!2190 = !DILocation(line: 1100, column: 9, scope: !2191, inlinedAt: !2172)
!2191 = !DILexicalBlockFile(scope: !2187, file: !3, discriminator: 1)
!2192 = !DILocation(line: 1104, column: 21, scope: !2166, inlinedAt: !2172)
!2193 = !DILocation(line: 1106, column: 9, scope: !2194, inlinedAt: !2172)
!2194 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1106, column: 9)
!2195 = !DILocation(line: 1106, column: 23, scope: !2194, inlinedAt: !2172)
!2196 = !DILocation(line: 1106, column: 9, scope: !2166, inlinedAt: !2172)
!2197 = !DILocation(line: 1107, column: 9, scope: !2198, inlinedAt: !2172)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1107, column: 9)
!2199 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 1106, column: 52)
!2200 = !DILocation(line: 1107, column: 9, scope: !2199, inlinedAt: !2172)
!2201 = !DILocation(line: 1107, column: 9, scope: !2202, inlinedAt: !2172)
!2202 = !DILexicalBlockFile(scope: !2198, file: !3, discriminator: 1)
!2203 = !DILocation(line: 1107, column: 9, scope: !2204, inlinedAt: !2172)
!2204 = !DILexicalBlockFile(scope: !2198, file: !3, discriminator: 2)
!2205 = !DILocation(line: 1109, column: 9, scope: !2206, inlinedAt: !2172)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 1109, column: 9)
!2207 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 1108, column: 12)
!2208 = !DILocation(line: 1109, column: 9, scope: !2207, inlinedAt: !2172)
!2209 = !DILocation(line: 1109, column: 9, scope: !2210, inlinedAt: !2172)
!2210 = !DILexicalBlockFile(scope: !2206, file: !3, discriminator: 1)
!2211 = !DILocation(line: 1109, column: 9, scope: !2212, inlinedAt: !2172)
!2212 = !DILexicalBlockFile(scope: !2206, file: !3, discriminator: 2)
!2213 = !DILocation(line: 1196, column: 9, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1196, column: 9)
!2215 = !DILocation(line: 1196, column: 9, scope: !1714)
!2216 = !DILocation(line: 1196, column: 9, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2214, file: !3, discriminator: 1)
!2218 = !DILocation(line: 1201, column: 9, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1201, column: 9)
!2220 = !DILocation(line: 1201, column: 13, scope: !2219)
!2221 = !DILocation(line: 1201, column: 9, scope: !1687)
!2222 = !DILocation(line: 709, column: 59, scope: !501, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 1206, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 1201, column: 19)
!2225 = !DILocation(line: 709, column: 91, scope: !501, inlinedAt: !2223)
!2226 = !DILocation(line: 711, column: 60, scope: !501, inlinedAt: !2223)
!2227 = !DILocation(line: 711, column: 70, scope: !501, inlinedAt: !2223)
!2228 = !DILocation(line: 711, column: 24, scope: !501, inlinedAt: !2223)
!2229 = !DILocation(line: 1208, column: 5, scope: !2224)
!2230 = !DILocation(line: 1211, column: 1, scope: !1687)
!2231 = distinct !DISubprogram(name: "bnep_send_connection_response", scope: !3, file: !3, line: 225, type: !308, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237}
!2233 = !DILocalVariable(name: "channel", arg: 1, scope: !2231, file: !3, line: 225, type: !34)
!2234 = !DILocalVariable(name: "response_code", arg: 2, scope: !2231, file: !3, line: 225, type: !44)
!2235 = !DILocalVariable(name: "bnep_out_buffer", scope: !2231, file: !3, line: 227, type: !961)
!2236 = !DILocalVariable(name: "pos", scope: !2231, file: !3, line: 228, type: !44)
!2237 = !DILocalVariable(name: "err", scope: !2231, file: !3, line: 229, type: !109)
!2238 = !DILocation(line: 227, column: 5, scope: !2231)
!2239 = !DILocation(line: 227, column: 13, scope: !2231)
!2240 = !DILocation(line: 228, column: 14, scope: !2231)
!2241 = !DILocation(line: 229, column: 14, scope: !2231)
!2242 = !DILocation(line: 231, column: 18, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 231, column: 9)
!2244 = !DILocation(line: 231, column: 24, scope: !2243)
!2245 = !DILocation(line: 231, column: 9, scope: !2231)
!2246 = !DILocation(line: 234, column: 45, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 234, column: 9)
!2248 = !DILocation(line: 234, column: 10, scope: !2247)
!2249 = !DILocation(line: 234, column: 9, scope: !2231)
!2250 = !DILocation(line: 239, column: 28, scope: !2231)
!2251 = !DILocation(line: 240, column: 5, scope: !2231)
!2252 = !DILocation(line: 240, column: 28, scope: !2231)
!2253 = !DILocation(line: 243, column: 5, scope: !2231)
!2254 = !DILocation(line: 246, column: 40, scope: !2231)
!2255 = !DILocation(line: 246, column: 11, scope: !2231)
!2256 = !DILocation(line: 251, column: 5, scope: !2231)
!2257 = !DILocation(line: 252, column: 1, scope: !2231)
!2258 = distinct !DISubprogram(name: "bnep_send_filter_net_type_set", scope: !3, file: !3, line: 255, type: !2259, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!109, !34, !75, !44}
!2261 = !{!2262, !2263, !2264, !2265, !2269, !2270, !2271}
!2262 = !DILocalVariable(name: "channel", arg: 1, scope: !2258, file: !3, line: 255, type: !34)
!2263 = !DILocalVariable(name: "filter", arg: 2, scope: !2258, file: !3, line: 255, type: !75)
!2264 = !DILocalVariable(name: "len", arg: 3, scope: !2258, file: !3, line: 255, type: !44)
!2265 = !DILocalVariable(name: "bnep_out_buffer", scope: !2258, file: !3, line: 257, type: !2266)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: -1)
!2269 = !DILocalVariable(name: "pos", scope: !2258, file: !3, line: 258, type: !44)
!2270 = !DILocalVariable(name: "err", scope: !2258, file: !3, line: 259, type: !109)
!2271 = !DILocalVariable(name: "i", scope: !2258, file: !3, line: 260, type: !109)
!2272 = !DILocation(line: 257, column: 30, scope: !2258)
!2273 = !DILocation(line: 257, column: 38, scope: !2258)
!2274 = !DILocation(line: 257, column: 42, scope: !2258)
!2275 = !DILocation(line: 257, column: 5, scope: !2258)
!2276 = !DILocation(line: 257, column: 14, scope: !2258)
!2277 = !DILocation(line: 258, column: 14, scope: !2258)
!2278 = !DILocation(line: 259, column: 14, scope: !2258)
!2279 = !DILocation(line: 262, column: 18, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 262, column: 9)
!2281 = !DILocation(line: 262, column: 24, scope: !2280)
!2282 = !DILocation(line: 262, column: 9, scope: !2258)
!2283 = !DILocation(line: 265, column: 45, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 265, column: 9)
!2285 = !DILocation(line: 265, column: 10, scope: !2284)
!2286 = !DILocation(line: 265, column: 9, scope: !2258)
!2287 = !DILocation(line: 270, column: 28, scope: !2258)
!2288 = !DILocation(line: 271, column: 5, scope: !2258)
!2289 = !DILocation(line: 271, column: 28, scope: !2258)
!2290 = !DILocation(line: 273, column: 47, scope: !2258)
!2291 = !DILocation(line: 273, column: 5, scope: !2258)
!2292 = !DILocation(line: 275, column: 5, scope: !2258)
!2293 = !DILocation(line: 260, column: 14, scope: !2258)
!2294 = !DILocation(line: 276, column: 19, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2296, file: !3, discriminator: 1)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 276, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 276, column: 5)
!2298 = !DILocation(line: 276, column: 5, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2297, file: !3, discriminator: 1)
!2300 = !DILocation(line: 277, column: 61, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 276, column: 32)
!2302 = !DILocation(line: 277, column: 9, scope: !2301)
!2303 = !DILocation(line: 278, column: 13, scope: !2301)
!2304 = !DILocation(line: 279, column: 61, scope: !2301)
!2305 = !DILocation(line: 279, column: 9, scope: !2301)
!2306 = !DILocation(line: 280, column: 13, scope: !2301)
!2307 = !DILocation(line: 276, column: 28, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2296, file: !3, discriminator: 2)
!2309 = distinct !{!2309, !2310, !2311}
!2310 = !DILocation(line: 276, column: 5, scope: !2297)
!2311 = !DILocation(line: 281, column: 5, scope: !2297)
!2312 = !DILocation(line: 283, column: 40, scope: !2258)
!2313 = !DILocation(line: 283, column: 11, scope: !2258)
!2314 = !DILocation(line: 288, column: 5, scope: !2258)
!2315 = distinct !DISubprogram(name: "bnep_send_filter_multi_addr_set", scope: !3, file: !3, line: 323, type: !2316, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!109, !34, !86, !44}
!2318 = !{!2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2319 = !DILocalVariable(name: "channel", arg: 1, scope: !2315, file: !3, line: 323, type: !34)
!2320 = !DILocalVariable(name: "filter", arg: 2, scope: !2315, file: !3, line: 323, type: !86)
!2321 = !DILocalVariable(name: "len", arg: 3, scope: !2315, file: !3, line: 323, type: !44)
!2322 = !DILocalVariable(name: "bnep_out_buffer", scope: !2315, file: !3, line: 325, type: !2266)
!2323 = !DILocalVariable(name: "pos", scope: !2315, file: !3, line: 326, type: !44)
!2324 = !DILocalVariable(name: "err", scope: !2315, file: !3, line: 327, type: !109)
!2325 = !DILocalVariable(name: "i", scope: !2315, file: !3, line: 328, type: !109)
!2326 = !DILocation(line: 325, column: 30, scope: !2315)
!2327 = !DILocation(line: 325, column: 38, scope: !2315)
!2328 = !DILocation(line: 325, column: 55, scope: !2315)
!2329 = !DILocation(line: 325, column: 5, scope: !2315)
!2330 = !DILocation(line: 325, column: 14, scope: !2315)
!2331 = !DILocation(line: 326, column: 14, scope: !2315)
!2332 = !DILocation(line: 327, column: 14, scope: !2315)
!2333 = !DILocation(line: 330, column: 18, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 330, column: 9)
!2335 = !DILocation(line: 330, column: 24, scope: !2334)
!2336 = !DILocation(line: 330, column: 9, scope: !2315)
!2337 = !DILocation(line: 333, column: 45, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 333, column: 9)
!2339 = !DILocation(line: 333, column: 10, scope: !2338)
!2340 = !DILocation(line: 333, column: 9, scope: !2315)
!2341 = !DILocation(line: 338, column: 28, scope: !2315)
!2342 = !DILocation(line: 339, column: 5, scope: !2315)
!2343 = !DILocation(line: 339, column: 28, scope: !2315)
!2344 = !DILocation(line: 341, column: 47, scope: !2315)
!2345 = !DILocation(line: 341, column: 5, scope: !2315)
!2346 = !DILocation(line: 328, column: 14, scope: !2315)
!2347 = !DILocation(line: 344, column: 19, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2349, file: !3, discriminator: 1)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 344, column: 5)
!2350 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 344, column: 5)
!2351 = !DILocation(line: 344, column: 5, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2350, file: !3, discriminator: 1)
!2353 = !DILocation(line: 345, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 344, column: 32)
!2355 = !DILocation(line: 346, column: 13, scope: !2354)
!2356 = !DILocation(line: 347, column: 9, scope: !2354)
!2357 = !DILocation(line: 348, column: 13, scope: !2354)
!2358 = !DILocation(line: 344, column: 28, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2349, file: !3, discriminator: 2)
!2360 = distinct !{!2360, !2361, !2362}
!2361 = !DILocation(line: 344, column: 5, scope: !2350)
!2362 = !DILocation(line: 349, column: 5, scope: !2350)
!2363 = !DILocation(line: 351, column: 40, scope: !2315)
!2364 = !DILocation(line: 351, column: 11, scope: !2315)
!2365 = !DILocation(line: 356, column: 5, scope: !2315)
