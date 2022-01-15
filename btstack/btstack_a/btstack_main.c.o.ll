; ModuleID = 'btstack_main.c.o'
source_filename = "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/common/btstack_main.c"
target datalayout = "e-m:e-p:32:32-i1:32-i64:32:32-f64:32:32-n8:16:32-a:0:32"
target triple = "q32s"

%struct.profile_cmd_handle = type { i32 (i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i8*)*, i32 (i8*)* }
%struct.l2cap_stack_t = type { void (i8*, i8, i16, i8*, i16)*, %struct.btstack_linked_item*, %struct.btstack_linked_item*, %struct.l2cap_core_data_t }
%struct.btstack_linked_item = type { %struct.btstack_linked_item* }
%struct.l2cap_core_data_t = type { [3 x %struct.l2cap_signaling_response], i32, i32, [1 x %struct.authentication_flag], i8, i16 }
%struct.l2cap_signaling_response = type { i16, i8, i8, i16, i16 }
%struct.authentication_flag = type { [6 x i8], i8, i8 }
%struct.btstack_comm_handle_t = type { %struct.stack_bredr_pool_t*, %struct.stack_le_pool_t*, %struct.l2cap_stack_t*, %struct.bredr_profile_t*, i8* }
%struct.stack_bredr_pool_t = type { i8*, i8*, i8*, i8*, i8*, [4 x %struct.l2cap_service_t], [5 x %struct.l2cap_channel_t], [1 x %struct.rfcomm_multiplexer_t], [1 x %struct.rfcomm_service_t], [1 x %struct.rfcomm_channel_t] }
%struct.l2cap_service_t = type { %struct.btstack_linked_item, i16, i16, i8*, void (i8, i16, i8*, i16)* }
%struct.l2cap_channel_t = type { %struct.btstack_linked_item, i16, i8, i8*, void (i8, i16, i8*, i16)*, %struct.channel_core_data_t }
%struct.channel_core_data_t = type { i16, i8, i8, i8, i8, [6 x i8], i16, i16, i16, i16, i16, i8, i32, %struct.retran_flow_ctl_op_t }
%struct.retran_flow_ctl_op_t = type { i8, i8, i8, i8, i8, i16, i16, i16 }
%struct.rfcomm_multiplexer_t = type { %struct.btstack_linked_item, i16, %struct.multiplexer_core_data_t }
%struct.multiplexer_core_data_t = type { [6 x i8], i16, i8, i8, i8, i8, i16 }
%struct.rfcomm_service_t = type { %struct.btstack_linked_item, i8, i8, i8, i16, i8*, void (i8, i16, i8*, i16)* }
%struct.rfcomm_channel_t = type { %struct.btstack_linked_item, %struct.rfcomm_multiplexer_t*, %struct.rfc_channel_core_data_t, i16, %struct.rfcomm_service_t*, void (i8, i16, i8*, i16)*, i8* }
%struct.rfc_channel_core_data_t = type { i8, [6 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.rfcomm_rpn_data }
%struct.rfcomm_rpn_data = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.stack_le_pool_t = type { i8*, i8*, [1 x %struct.__le_hci_connection*], [1 x %struct.gatt_client*] }
%struct.__le_hci_connection = type { %struct.btstack_linked_item, [6 x i8], i16, i32, i8, i32, i8, i16, i16, i16, i16, %struct.sm_connection, %struct.att_server_t, [529 x i8], i16, i16, i8, [6 x i8], [6 x i8], i32 }
%struct.sm_connection = type { i16, i8, i8, i8, i8, [6 x i8], i32, i32, i8, i8, i8, [7 x i8], i32, i16, [8 x i8], i8, i32, i32 }
%struct.att_server_t = type { i32, i8, [6 x i8], i32, i32, i32, %struct.btstack_timer_source, %struct.att_connection, i16, [517 x i8], i8, void (i16, i8)* }
%struct.btstack_timer_source = type { %struct.btstack_linked_item, i32, i32, void (%struct.btstack_timer_source*)*, i8* }
%struct.att_connection = type { i16, i16, i16, i8, i8, i8 }
%struct.gatt_client = type { %struct.btstack_linked_item, i32, void (i8, i16, i8*, i16)*, i16, i8, [6 x i8], i16, i32, i16, [16 x i8], i16, i16, i16, i16, i8, i16, i16, i16, i16, i8*, i16, i16*, i16, [2 x i8], i8, i8, i32, [8 x i8], %struct.btstack_timer_source, i32, [7 x i8], i8 }
%struct.bredr_profile_t = type { %struct.sdp_stack_t, %struct.rfcomm_stack_t, %struct.hfp_stack_t, %struct.hid_handl, %struct.spp_profile_t }
%struct.sdp_stack_t = type { %struct.sdp_core_data_t }
%struct.sdp_core_data_t = type { i16, i16, i16, i8, i8, i8 }
%struct.rfcomm_stack_t = type { void (i8*, i8, i16, i8*, i16)*, %struct.btstack_linked_item*, %struct.btstack_linked_item*, %struct.btstack_linked_item*, i16 }
%struct.hfp_stack_t = type { i8, %struct.__HFP_PARSE_STA, [248 x i8], [24 x i8], [1 x %struct.hfp_con] }
%struct.__HFP_PARSE_STA = type <{ i8, i16 }>
%struct.hfp_con = type { %struct.hfp_con_core_data_t, %struct.btstack_linked_item* }
%struct.hfp_con_core_data_t = type { [6 x i8], i16, i32, i16, i8, i8, [3 x i8], i8, [3 x i8], [8 x %struct.__INDICATOR], [8 x %struct.__INDICATOR] }
%struct.__INDICATOR = type <{ i8*, i8, i8, i8 }>
%struct.hid_handl = type { %struct.hid_core_data_t, %struct.run_loop }
%struct.hid_core_data_t = type { [1 x %struct.hid_conn], %struct.hid_keyboard_cmd, %struct._HID_AC_CMD }
%struct.hid_conn = type { [10 x i8], [6 x i8], i8, i8, i8, i16, i16, i16 }
%struct.hid_keyboard_cmd = type { i8, i8, i16, i16 }
%struct._HID_AC_CMD = type <{ i8, i32 }>
%struct.run_loop = type { %struct.btstack_linked_item, void (%struct.run_loop*)*, i8* }
%struct.spp_profile_t = type { [1 x %struct.spp_conn_t] }
%struct.spp_conn_t = type { i16, i16, i16, i32, i8, [6 x i8] }
%struct.btstack_ctrl = type { %struct.ble_mode_ctrl }
%struct.ble_mode_ctrl = type { %struct.run_loop, %struct._cbuffer, [32 x i32], void ()*, i8, i8 }
%struct._cbuffer = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.__spinlock }
%struct.__spinlock = type { i32 }
%struct._stack_config = type <{ i32, i16, i16, i16, i16, i16, i8, i8, i8, i32, i8, i8, i8, i8, [6 x i8], i8 }>
%struct.user_interface_handler = type { void (i8*, i32, i32)*, void (i8, i8*, i8*)*, void (i8*, i32)*, i32 ()*, void (i8, i16, i8*, i16)*, void (i8*, i32, i32, i8)*, i32 ()*, void (i32)*, void (i8, i32, i8*, i16)*, i32 (i8*, i8, i8)*, void ()*, void (i8)*, i8 (i8*, i8, i8*, i32, i8)*, void (i8, i16, i8*, i16)*, i32 ()* }
%struct.database_file = type { i32 (...)*, void (...)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, void (i32, i32)*, i32 ()*, i32 (...)* }
%struct.hci_ll_param_t = type { i8 }
%struct.create_conn_param_t = type <{ i16, i16, i16, i8, [6 x i8] }>
%struct.conn_update_param_t = type { i16, i16, i16, i16 }
%struct.spp_ioctrl_str = type { [6 x i8], i8, i32, i32, i8* }
%struct.hfp_ioctrl_str = type { [6 x i8], i32, i8, %union.anon }
%union.anon = type { i32, [28 x i8] }

@app_info_debug_enable = weak hidden local_unnamed_addr global i32 0, align 4, !dbg !0
@hfp_ag_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !697
@hfp_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !699
@acp_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !701
@a2dp_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !703
@spp_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !705
@spp_up_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !707
@hid_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !709
@pbap_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !711
@pan_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !713
@iap_profile_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !715
@emitter_hfp_hf_support = weak hidden local_unnamed_addr global i8 0, section ".bt_stack_data", align 1, !dbg !717
@profile_cmd_hdl_str = hidden local_unnamed_addr global %struct.profile_cmd_handle zeroinitializer, section ".bt_stack_data", align 4, !dbg !719
@profile_l2cap_hdl = hidden global %struct.l2cap_stack_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !785
@btstack_stack = hidden local_unnamed_addr global %struct.btstack_comm_handle_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !1135
@config_stack_modules = external local_unnamed_addr constant i32, align 4
@profile_bredr_pool_hdl = hidden global %struct.stack_bredr_pool_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !822
@profile_bredr_profile = hidden global %struct.bredr_profile_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !964
@config_asser = external local_unnamed_addr constant i32, align 4
@config_le_hci_connection_num = external local_unnamed_addr constant i32, align 4
@config_btctler_le_hw_nums = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"file:%s, line:%d\00", align 1
@.str.1 = private unnamed_addr constant [110 x i8] c"/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/common/btstack_main.c\00", align 1
@profile_le_pool_hdl = hidden global %struct.stack_le_pool_t zeroinitializer, section ".bt_stack_bss", align 4, !dbg !966
@ble_disconnect_reason = internal unnamed_addr global i8 19, section ".bt_stack_data", align 1, !dbg !1151
@ble_debug_enable = external local_unnamed_addr global i8, align 1
@btstack_global_info = internal global %struct.btstack_ctrl zeroinitializer, section ".bt_stack_bss", align 4, !dbg !745
@l2cap_debug_enable = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"[ble-info] :---wirte ble len = %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"[ble-info] :---wirte cmd_err = %d\0A\0A\00", align 1
@config_btctler_le_tws = external local_unnamed_addr constant i32, align 4
@CONFIG_BTCTLER_TWS_ENABLE = external local_unnamed_addr constant i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"ASSERT-FAILD: 0 \00", align 1
@config_btctler_modules = external local_unnamed_addr constant i32, align 4
@stack_configs_app = external local_unnamed_addr global %struct._stack_config, align 4
@user_stack_configs = external local_unnamed_addr global %struct._stack_config*, align 4
@crc_ta = internal unnamed_addr constant [16 x i16] [i16 0, i16 4129, i16 8258, i16 12387, i16 16516, i16 20645, i16 24774, i16 28903, i16 -32504, i16 -28375, i16 -24246, i16 -20117, i16 -15988, i16 -11859, i16 -7730, i16 -3601], section ".bt_stack_const", align 2, !dbg !1147
@.str.21 = private unnamed_addr constant [23 x i8] c"LINK_TYPE_acl_connect\0A\00", align 1
@user_interface_app = external local_unnamed_addr global %struct.user_interface_handler, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"LINK_TYPE_SCO_connect\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"<BT-log> :connect reason 2222%x\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"begine scan 2222\0A\00", align 1
@btstack_emitter_support = external local_unnamed_addr constant i8, align 1
@.str.25 = private unnamed_addr constant [40 x i8] c" spp HCI_EVENT_DISCONNECTION_COMPLETE \0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"LINK_TYPE_SCO_disconnect\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"<BT-log> :ESCO_CONNECTION_COMPLETE %d %d\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"class init complete\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"<BT-log> :HCI_CONNECTIONS_DELETE-%x\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"open scan\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"<BT-log> :<<<<<<<<<<<<<<<<<<<<Vendor_remote_test: %d %d>>>>>>>>>>>>>>>>>>>>\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"testbox connect\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"<BT-log> :HCI_EVENT_VENDOR_META:%x\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"HCI_EVENT_VENDOR_FAST_TEST\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"<BT-log> :HCI_EVENT_VENDOR_DUT:%d\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"<BT-log> :BLE_CMD_SEND_TEST_KEY_NUM:%x %x\0A\0A\00", align 1
@str = private unnamed_addr constant [132 x i8] c"ASSERT-FAILD: config_le_hci_connection_num <= config_btctler_le_hw_nums config_le_hci_connection_num < config_btctler_le_hw_nums!!!\00"
@str.42 = private unnamed_addr constant [28 x i8] c"[ble-info] :stack_exit end\0A\00"
@str.43 = private unnamed_addr constant [26 x i8] c"[ble-info] :already exit\0A\00"
@str.44 = private unnamed_addr constant [40 x i8] c"[ble-info] :******ble stack exit******\0A\00"
@str.45 = private unnamed_addr constant [33 x i8] c"<BT-log> :ble_stack not run1!!!\0A\00"
@str.46 = private unnamed_addr constant [39 x i8] c"[ble-info] :******ble here***********\0A\00"
@str.47 = private unnamed_addr constant [29 x i8] c"<BT-log> :no bt app setting\0A\00"
@str.48 = private unnamed_addr constant [22 x i8] c"<BT-log> :jl setting\0A\00"
@str.49 = private unnamed_addr constant [36 x i8] c"[ble-info] :ctrl no enable BLE !!!\0A\00"
@str.50 = private unnamed_addr constant [32 x i8] c"[ble-info] :ble stack init_end\0A\00"
@str.51 = private unnamed_addr constant [38 x i8] c"flash capacity not support tws+ble!!!\00"
@str.52 = private unnamed_addr constant [44 x i8] c"[ble-info] :******bt stack init***********\0A\00"
@str.53 = private unnamed_addr constant [46 x i8] c"<BT-log> : HCI_EVENT_VENDOR_FRE_OFFSET_TRIM \0A\00"
@str.54 = private unnamed_addr constant [45 x i8] c"<BT-log> : HCI_EVENT_VENDOR_ENCRY_COMPLETE \0A\00"
@str.55 = private unnamed_addr constant [45 x i8] c"<BT-log> : HCI_EVENT_VENDOR_SETUP_COMPLETE \0A\00"
@str.56 = private unnamed_addr constant [29 x i8] c"[ble-info] :*le_stack_exit*\0A\00"
@str.57 = private unnamed_addr constant [31 x i8] c"[ble-info] :do ll_hci_destory\0A\00"
@str.60 = private unnamed_addr constant [39 x i8] c"[ble-info] :========address_generate:\0A\00"
@str.61 = private unnamed_addr constant [30 x i8] c"[ble-info] :irk not ready!!!\0A\00"
@str.62 = private unnamed_addr constant [16 x i8] c"[ble_api-dump]:\00"
@str.63 = private unnamed_addr constant [42 x i8] c"[ble-info] :---ble 's random address-----\00"

; Function Attrs: norecurse nounwind optsize readnone
define hidden zeroext i16 @get_bredr_pool_len() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1157 {
  ret i16 456, !dbg !1161
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden zeroext i16 @get_le_pool_len() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1162 {
  ret i16 16, !dbg !1163
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden zeroext i16 @get_l2cap_stack_len() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1164 {
  ret i16 56, !dbg !1165
}

; Function Attrs: norecurse nounwind optsize readnone
define hidden zeroext i16 @get_profile_pool_len() local_unnamed_addr #0 section ".bt_stack_code" !dbg !1166 {
  ret i16 520, !dbg !1167
}

; Function Attrs: nounwind optsize
define hidden void @btstack_mem_init() local_unnamed_addr #1 section ".bt_stack_code" !dbg !1168 {
  store %struct.l2cap_stack_t* @profile_l2cap_hdl, %struct.l2cap_stack_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 2), align 4, !dbg !1169, !tbaa !1170
  %1 = load i32, i32* @config_stack_modules, align 4, !dbg !1175, !tbaa !1177
  %2 = and i32 %1, 1, !dbg !1175
  %3 = icmp eq i32 %2, 0, !dbg !1175
  br i1 %3, label %5, label %4, !dbg !1179

; <label>:4:                                      ; preds = %0
  store %struct.stack_bredr_pool_t* @profile_bredr_pool_hdl, %struct.stack_bredr_pool_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 0), align 4, !dbg !1180, !tbaa !1182
  store %struct.bredr_profile_t* @profile_bredr_profile, %struct.bredr_profile_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 3), align 4, !dbg !1183, !tbaa !1184
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.stack_bredr_pool_t* @profile_bredr_pool_hdl to i8*), i8 0, i32 456, i32 4, i1 false), !dbg !1185
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.bredr_profile_t* @profile_bredr_profile to i8*), i8 0, i32 520, i32 4, i1 false), !dbg !1186
  tail call void @btstack_bredr_memory_init(%struct.stack_bredr_pool_t* nonnull @profile_bredr_pool_hdl) #10, !dbg !1187
  br label %5, !dbg !1188

; <label>:5:                                      ; preds = %4, %0
  %6 = and i32 %1, 4, !dbg !1189
  %7 = icmp eq i32 %6, 0, !dbg !1189
  br i1 %7, label %21, label %8, !dbg !1191

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @config_asser, align 4, !dbg !1192, !tbaa !1177
  %10 = icmp eq i32 %9, 0, !dbg !1192
  %11 = load i32, i32* @config_le_hci_connection_num, align 4, !tbaa !1177
  %12 = load i32, i32* @config_btctler_le_hw_nums, align 4, !tbaa !1177
  %13 = icmp sle i32 %11, %12
  br i1 %10, label %18, label %14, !dbg !1197

; <label>:14:                                     ; preds = %8
  br i1 %13, label %20, label %15, !dbg !1199

; <label>:15:                                     ; preds = %14
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i32 0, i32 0), i32 171) #11, !dbg !1202
  %17 = tail call i32 @puts(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @str, i32 0, i32 0)), !dbg !1206
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #10, !dbg !1208
  br label %20, !dbg !1202

; <label>:18:                                     ; preds = %8
  br i1 %13, label %20, label %19, !dbg !1210

; <label>:19:                                     ; preds = %18
  tail call fastcc void @cpu_reset() #11, !dbg !1213
  br label %20, !dbg !1213

; <label>:20:                                     ; preds = %19, %18, %15, %14
  store %struct.stack_le_pool_t* @profile_le_pool_hdl, %struct.stack_le_pool_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 1), align 4, !dbg !1217, !tbaa !1218
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.stack_le_pool_t* @profile_le_pool_hdl to i8*), i8 0, i32 16, i32 4, i1 false), !dbg !1219
  tail call void @btstack_le_memory_init(%struct.stack_le_pool_t* nonnull @profile_le_pool_hdl) #10, !dbg !1220
  br label %21, !dbg !1221

; <label>:21:                                     ; preds = %20, %5
  %22 = load i8*, i8** bitcast (%struct.l2cap_stack_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 2) to i8**), align 4, !dbg !1222, !tbaa !1170
  tail call void @llvm.memset.p0i8.i32(i8* %22, i8 0, i32 56, i32 4, i1 false), !dbg !1223
  ret void, !dbg !1224
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: optsize
declare void @btstack_bredr_memory_init(%struct.stack_bredr_pool_t*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cpu_assert_debug(...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind optsize
define internal fastcc void @cpu_reset() unnamed_addr #5 !dbg !1225 {
  tail call void @p33_soft_reset() #10, !dbg !1227
  ret void, !dbg !1228
}

; Function Attrs: optsize
declare void @btstack_le_memory_init(%struct.stack_le_pool_t*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @btstack_v21_main() local_unnamed_addr #1 section ".bt_stack_code" !dbg !1229 {
  %1 = load i8*, i8** bitcast (%struct.bredr_profile_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 3) to i8**), align 4, !dbg !1230, !tbaa !1184
  tail call void @user_cmd_ctrl_init(i8* %1) #10, !dbg !1231
  %2 = load i8*, i8** bitcast (%struct.bredr_profile_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 3) to i8**), align 4, !dbg !1232, !tbaa !1184
  call void @llvm.dbg.value(metadata i8* %2, metadata !1233, metadata !DIExpression()), !dbg !1267
  %3 = tail call %struct.database_file* bitcast (%struct.database_file* (...)* @open_remote_db_file_opt to %struct.database_file* ()*)() #10, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.database_file* %3, metadata !1238, metadata !DIExpression()), !dbg !1270
  tail call void @remote_device_db_init_opt(%struct.database_file* %3) #10, !dbg !1271
  %4 = tail call i8* @bt_vm_interface() #10, !dbg !1272
  tail call void @set_bt_vm_interface(i32 62, i8* %4) #10, !dbg !1273
  %5 = getelementptr inbounds i8, i8* %2, i32 12, !dbg !1275
  %6 = bitcast i8* %5 to %struct.rfcomm_stack_t*, !dbg !1275
  tail call void @rfcomm_init(%struct.rfcomm_stack_t* %6) #10, !dbg !1276
  store i32 (i8*, i32, i32)* @sdp_send_cmd_iotl, i32 (i8*, i32, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 8), align 4, !dbg !1277, !tbaa !1278
  %7 = bitcast i8* %2 to %struct.sdp_stack_t*, !dbg !1280
  tail call void @sdp_init(%struct.sdp_stack_t* %7) #10, !dbg !1281
  tail call void @sdp_master_init(i8* %2) #10, !dbg !1282
  %8 = load i8, i8* @spp_profile_support, align 1, !dbg !1283, !tbaa !1285
  %9 = icmp eq i8 %8, 0, !dbg !1283
  br i1 %9, label %15, label %10, !dbg !1286

; <label>:10:                                     ; preds = %0
  %11 = load i16, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !1287, !tbaa !1289
  %12 = or i16 %11, 1, !dbg !1287
  store i16 %12, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !1287, !tbaa !1289
  store i32 (i8*)* bitcast (i32 (%struct.spp_ioctrl_str*)* @spp_send_cmd_ioctrl to i32 (i8*)*), i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 2), align 4, !dbg !1292, !tbaa !1293
  %13 = getelementptr inbounds i8, i8* %2, i32 500, !dbg !1294
  %14 = bitcast i8* %13 to %struct.spp_profile_t*, !dbg !1294
  tail call void @spp_handl_init(%struct.spp_profile_t* %14) #10, !dbg !1295
  br label %15, !dbg !1296

; <label>:15:                                     ; preds = %10, %0
  %16 = load i8, i8* @hfp_profile_support, align 1, !dbg !1297, !tbaa !1285
  %17 = icmp eq i8 %16, 0, !dbg !1297
  br i1 %17, label %29, label %18, !dbg !1299

; <label>:18:                                     ; preds = %15
  %19 = load i16, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !1300, !tbaa !1289
  %20 = or i16 %19, 2, !dbg !1300
  store i16 %20, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !1300, !tbaa !1289
  store i32 (i8*)* bitcast (i32 (%struct.hfp_ioctrl_str*)* @hfp_send_cmd_io_ctrl to i32 (i8*)*), i32 (i8*)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 0), align 4, !dbg !1302, !tbaa !1303
  %21 = getelementptr inbounds i8, i8* %2, i32 32, !dbg !1304
  %22 = bitcast i8* %21 to %struct.hfp_stack_t*, !dbg !1304
  %23 = load %struct._stack_config*, %struct._stack_config** @user_stack_configs, align 4, !dbg !1305, !tbaa !1306
  %24 = getelementptr inbounds %struct._stack_config, %struct._stack_config* %23, i32 0, i32 9, !dbg !1307
  %25 = load i32, i32* %24, align 1, !dbg !1307
  %26 = lshr i32 %25, 13, !dbg !1307
  %27 = trunc i32 %26 to i8, !dbg !1307
  %28 = and i8 %27, 1, !dbg !1307
  tail call void @hfp_profile_init(%struct.hfp_stack_t* %22, i8 zeroext %28) #10, !dbg !1308
  br label %29, !dbg !1309

; <label>:29:                                     ; preds = %18, %15
  %30 = load i8, i8* @hid_profile_support, align 1, !dbg !1310, !tbaa !1285
  %31 = icmp eq i8 %30, 0, !dbg !1310
  br i1 %31, label %37, label %32, !dbg !1312

; <label>:32:                                     ; preds = %29
  %33 = load i16, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !1313, !tbaa !1289
  %34 = or i16 %33, 16, !dbg !1313
  store i16 %34, i16* getelementptr inbounds (%struct._stack_config, %struct._stack_config* @stack_configs_app, i32 0, i32 4), align 2, !dbg !1313, !tbaa !1289
  store i32 (i8*, i32)* @hid_send_cmd_ioctrl, i32 (i8*, i32)** getelementptr inbounds (%struct.profile_cmd_handle, %struct.profile_cmd_handle* @profile_cmd_hdl_str, i32 0, i32 1), align 4, !dbg !1315, !tbaa !1316
  %35 = getelementptr inbounds i8, i8* %2, i32 448, !dbg !1317
  %36 = bitcast i8* %35 to %struct.hid_handl*, !dbg !1317
  tail call void @hid_init(%struct.hid_handl* %36, i8* %2) #10, !dbg !1318
  br label %37, !dbg !1319

; <label>:37:                                     ; preds = %32, %29
  tail call void @tws_le_acc_generation_init() #10, !dbg !1320
  tail call void @get_remote_device_info_from_vm() #10, !dbg !1321
  ret void, !dbg !1322
}

; Function Attrs: optsize
declare void @user_cmd_ctrl_init(i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @lib_make_ble_address(i8* nocapture, i8* nocapture readonly) local_unnamed_addr #1 section ".bt_stack_code" !dbg !1323 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1327, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %1, metadata !1328, metadata !DIExpression()), !dbg !1331
  %4 = bitcast i32* %3 to i8*, !dbg !1332
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1332
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()), !dbg !1333
  %5 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !1334
  %6 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !1335
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 3, i32 1, i1 false), !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()), !dbg !1333
  %7 = tail call fastcc zeroext i16 @cal_crc16_private(i8* %1, i16 zeroext 6, i16 zeroext 0) #11, !dbg !1337
  %8 = zext i16 %7 to i32, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %8, metadata !1329, metadata !DIExpression()), !dbg !1333
  store i32 %8, i32* %3, align 4, !dbg !1338, !tbaa !1177
  %9 = bitcast i8* %0 to i16*, !dbg !1339
  store i16 %7, i16* %9, align 1, !dbg !1339
  %10 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !1340
  %11 = load i8, i8* %10, align 1, !dbg !1340, !tbaa !1285
  call void @llvm.dbg.value(metadata i32 %8, metadata !1329, metadata !DIExpression()), !dbg !1333
  %12 = call fastcc zeroext i16 @cal_crc16_private(i8* nonnull %4, i16 zeroext 2, i16 zeroext %7) #11, !dbg !1341
  %13 = trunc i16 %12 to i8, !dbg !1341
  %14 = add i8 %13, %11, !dbg !1342
  %15 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !1343
  store i8 %14, i8* %15, align 1, !dbg !1344, !tbaa !1285
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1345
  ret void, !dbg !1345
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind optsize readonly
define internal fastcc zeroext i16 @cal_crc16_private(i8* nocapture readonly, i16 zeroext, i16 zeroext) unnamed_addr #7 section ".bt_stack_code" !dbg !1346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1350, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i16 %1, metadata !1351, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i16 %2, metadata !1352, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i16 %2, metadata !1354, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i16 %2, metadata !1354, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* %0, metadata !1350, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i16 %1, metadata !1351, metadata !DIExpression()), !dbg !1356
  %4 = icmp eq i16 %1, 0, !dbg !1359
  br i1 %4, label %33, label %5, !dbg !1361

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !1362

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i16 [ %28, %6 ], [ %2, %5 ]
  %8 = phi i8* [ %29, %6 ], [ %0, %5 ]
  %9 = phi i16 [ %30, %6 ], [ %1, %5 ]
  %10 = lshr i16 %7, 12, !dbg !1362
  %11 = zext i16 %10 to i32, !dbg !1362
  %12 = shl i16 %7, 4, !dbg !1364
  call void @llvm.dbg.value(metadata i16 %12, metadata !1354, metadata !DIExpression()), !dbg !1358
  %13 = load i8, i8* %8, align 1, !dbg !1365, !tbaa !1285
  %14 = lshr i8 %13, 4, !dbg !1366
  %15 = zext i8 %14 to i32, !dbg !1366
  %16 = xor i32 %15, %11, !dbg !1367
  %17 = getelementptr inbounds [16 x i16], [16 x i16]* @crc_ta, i32 0, i32 %16, !dbg !1368
  %18 = load i16, i16* %17, align 2, !dbg !1368, !tbaa !1369
  %19 = xor i16 %18, %12, !dbg !1370
  call void @llvm.dbg.value(metadata i16 %19, metadata !1354, metadata !DIExpression()), !dbg !1358
  %20 = lshr i16 %19, 12, !dbg !1371
  %21 = zext i16 %20 to i32, !dbg !1371
  %22 = shl i16 %19, 4, !dbg !1372
  call void @llvm.dbg.value(metadata i16 %22, metadata !1354, metadata !DIExpression()), !dbg !1358
  %23 = and i8 %13, 15, !dbg !1373
  %24 = zext i8 %23 to i32, !dbg !1373
  %25 = xor i32 %21, %24, !dbg !1374
  %26 = getelementptr inbounds [16 x i16], [16 x i16]* @crc_ta, i32 0, i32 %25, !dbg !1375
  %27 = load i16, i16* %26, align 2, !dbg !1375, !tbaa !1369
  %28 = xor i16 %22, %27, !dbg !1376
  call void @llvm.dbg.value(metadata i16 %28, metadata !1354, metadata !DIExpression()), !dbg !1358
  %29 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %29, metadata !1350, metadata !DIExpression()), !dbg !1355
  %30 = add i16 %9, -1, !dbg !1378
  call void @llvm.dbg.value(metadata i16 %30, metadata !1351, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i16 %28, metadata !1354, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* %29, metadata !1350, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i16 %30, metadata !1351, metadata !DIExpression()), !dbg !1356
  %31 = icmp eq i16 %30, 0, !dbg !1359
  br i1 %31, label %32, label %6, !dbg !1361, !llvm.loop !1379

; <label>:32:                                     ; preds = %6
  br label %33, !dbg !1382

; <label>:33:                                     ; preds = %32, %3
  %34 = phi i16 [ %2, %3 ], [ %28, %32 ]
  ret i16 %34, !dbg !1382
}

; Function Attrs: nounwind optsize
define hidden void @ble_vendor_change_disconn_reason(i8 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !1383 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1387, metadata !DIExpression()), !dbg !1388
  store i8 %0, i8* @ble_disconnect_reason, align 1, !dbg !1389, !tbaa !1285
  ret void, !dbg !1390
}

; Function Attrs: nounwind optsize
define hidden void @ble_stack_exit(i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !1391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1395, metadata !DIExpression()), !dbg !1396
  %2 = load i32, i32* @config_stack_modules, align 4, !dbg !1397, !tbaa !1177
  %3 = and i32 %2, 6, !dbg !1399
  %4 = icmp eq i32 %3, 0, !dbg !1399
  br i1 %4, label %37, label %5, !dbg !1399

; <label>:5:                                      ; preds = %1
  %6 = load i8, i8* @ble_debug_enable, align 1, !dbg !1400, !tbaa !1285
  %7 = and i8 %6, 1, !dbg !1400
  %8 = icmp eq i8 %7, 0, !dbg !1400
  br i1 %8, label %11, label %9, !dbg !1403

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @str.44, i32 0, i32 0)), !dbg !1404
  br label %11, !dbg !1404

; <label>:11:                                     ; preds = %9, %5
  %12 = load volatile i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !1406, !tbaa !1408
  %13 = icmp eq i8 %12, 0, !dbg !1415
  br i1 %13, label %14, label %20, !dbg !1416

; <label>:14:                                     ; preds = %11
  %15 = load i8, i8* @ble_debug_enable, align 1, !dbg !1417, !tbaa !1285
  %16 = and i8 %15, 1, !dbg !1417
  %17 = icmp eq i8 %16, 0, !dbg !1417
  br i1 %17, label %37, label %18, !dbg !1420

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.43, i32 0, i32 0)), !dbg !1421
  br label %37, !dbg !1421

; <label>:20:                                     ; preds = %11
  %21 = trunc i32 %0 to i8, !dbg !1423
  %22 = and i8 %21, 15, !dbg !1423
  %23 = or i8 %22, -96, !dbg !1423
  store volatile i8 %23, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !1424, !tbaa !1408
  tail call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !1425
  %24 = load volatile i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !1426, !tbaa !1408
  %25 = icmp eq i8 %24, 0, !dbg !1428
  br i1 %25, label %31, label %26, !dbg !1428

; <label>:26:                                     ; preds = %20
  br label %27, !dbg !1429

; <label>:27:                                     ; preds = %27, %26
  tail call void @os_time_dly(i32 1) #10, !dbg !1429
  %28 = load volatile i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !1426, !tbaa !1408
  %29 = icmp eq i8 %28, 0, !dbg !1428
  br i1 %29, label %30, label %27, !dbg !1428, !llvm.loop !1431

; <label>:30:                                     ; preds = %27
  br label %31, !dbg !1434

; <label>:31:                                     ; preds = %30, %20
  tail call void @stack_run_loop_remove(%struct.run_loop* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 0)) #10, !dbg !1434
  %32 = load i8, i8* @ble_debug_enable, align 1, !dbg !1435, !tbaa !1285
  %33 = and i8 %32, 1, !dbg !1435
  %34 = icmp eq i8 %33, 0, !dbg !1435
  br i1 %34, label %37, label %35, !dbg !1437

; <label>:35:                                     ; preds = %31
  %36 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.42, i32 0, i32 0)), !dbg !1438
  br label %37, !dbg !1438

; <label>:37:                                     ; preds = %35, %31, %18, %14, %1
  ret void, !dbg !1440
}

; Function Attrs: optsize
declare void @stack_run_loop_resume(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @os_time_dly(i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @stack_run_loop_remove(%struct.run_loop*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @set_ll_hci_param_config(i32, i32) local_unnamed_addr #1 section ".bt_stack_code" !dbg !1441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1443, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i32 %1, metadata !1444, metadata !DIExpression()), !dbg !1456
  %3 = tail call %struct.hci_ll_param_t* @ll_hci_param_config_get() #10, !dbg !1457
  call void @llvm.dbg.value(metadata %struct.hci_ll_param_t* %3, metadata !1445, metadata !DIExpression()), !dbg !1458
  switch i32 %0, label %35 [
    i32 0, label %4
    i32 1, label %10
    i32 2, label %17
    i32 3, label %24
  ], !dbg !1459

; <label>:4:                                      ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !1460
  %6 = getelementptr inbounds %struct.hci_ll_param_t, %struct.hci_ll_param_t* %3, i32 0, i32 0, !dbg !1462
  %7 = load i8, i8* %6, align 1, !dbg !1463
  %8 = and i8 %5, 3, !dbg !1463
  %9 = and i8 %7, -4, !dbg !1463
  br label %30, !dbg !1464

; <label>:10:                                     ; preds = %2
  %11 = trunc i32 %1 to i8, !dbg !1465
  %12 = getelementptr inbounds %struct.hci_ll_param_t, %struct.hci_ll_param_t* %3, i32 0, i32 0, !dbg !1466
  %13 = load i8, i8* %12, align 1, !dbg !1467
  %14 = shl i8 %11, 2, !dbg !1467
  %15 = and i8 %14, 12, !dbg !1467
  %16 = and i8 %13, -13, !dbg !1467
  br label %30, !dbg !1468

; <label>:17:                                     ; preds = %2
  %18 = trunc i32 %1 to i8, !dbg !1469
  %19 = getelementptr inbounds %struct.hci_ll_param_t, %struct.hci_ll_param_t* %3, i32 0, i32 0, !dbg !1470
  %20 = load i8, i8* %19, align 1, !dbg !1471
  %21 = shl i8 %18, 4, !dbg !1471
  %22 = and i8 %21, 48, !dbg !1471
  %23 = and i8 %20, -49, !dbg !1471
  br label %30, !dbg !1472

; <label>:24:                                     ; preds = %2
  %25 = trunc i32 %1 to i8, !dbg !1473
  %26 = getelementptr inbounds %struct.hci_ll_param_t, %struct.hci_ll_param_t* %3, i32 0, i32 0, !dbg !1474
  %27 = load i8, i8* %26, align 1, !dbg !1475
  %28 = shl i8 %25, 6, !dbg !1475
  %29 = and i8 %27, 63, !dbg !1475
  br label %30, !dbg !1476

; <label>:30:                                     ; preds = %24, %17, %10, %4
  %31 = phi i8 [ %28, %24 ], [ %22, %17 ], [ %15, %10 ], [ %8, %4 ]
  %32 = phi i8 [ %29, %24 ], [ %23, %17 ], [ %16, %10 ], [ %9, %4 ]
  %33 = phi i8* [ %26, %24 ], [ %19, %17 ], [ %12, %10 ], [ %6, %4 ]
  %34 = or i8 %32, %31
  store i8 %34, i8* %33, align 1
  br label %35, !dbg !1477

; <label>:35:                                     ; preds = %30, %2
  ret void, !dbg !1477
}

; Function Attrs: optsize
declare %struct.hci_ll_param_t* @ll_hci_param_config_get() local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden i32 @ble_user_cmd_prepare(i32, i32, ...) local_unnamed_addr #1 section ".bt_stack_code" !dbg !1478 {
  %3 = alloca [6 x i32], align 4
  %4 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1484, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %1, metadata !1485, metadata !DIExpression()), !dbg !1498
  %5 = bitcast [6 x i32]* %3 to i8*, !dbg !1499
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !1499
  tail call void @llvm.dbg.declare(metadata [6 x i32]* %3, metadata !1486, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 0, metadata !1488, metadata !DIExpression()), !dbg !1501
  %6 = bitcast i8** %4 to i8*, !dbg !1502
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !1502
  %7 = load volatile i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !1503, !tbaa !1408
  %8 = icmp eq i8 %7, 0, !dbg !1505
  br i1 %8, label %9, label %14, !dbg !1506

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1507, !tbaa !1285
  %11 = icmp slt i8 %10, 0, !dbg !1507
  br i1 %11, label %12, label %172, !dbg !1510

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.45, i32 0, i32 0)), !dbg !1511
  br label %172, !dbg !1511

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, 5, !dbg !1513
  br i1 %15, label %172, label %16, !dbg !1515

; <label>:16:                                     ; preds = %14
  %17 = shl i32 %1, 16, !dbg !1516
  %18 = or i32 %17, %0, !dbg !1517
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 0, !dbg !1518
  store i32 %18, i32* %19, align 4, !dbg !1519, !tbaa !1177
  tail call void bitcast (void (...)* @local_irq_disable to void ()*)() #10, !dbg !1520
  %20 = add nsw i32 %1, 1, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %20, metadata !1485, metadata !DIExpression()), !dbg !1498
  %21 = load i32, i32* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1, i32 7), align 4, !dbg !1522, !tbaa !1524
  %22 = tail call i32 @cbuf_get_data_size(%struct._cbuffer* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1)) #10, !dbg !1522
  %23 = sub i32 %21, %22, !dbg !1522
  %24 = lshr i32 %23, 2, !dbg !1525
  %25 = icmp ugt i32 %20, %24, !dbg !1526
  br i1 %25, label %26, label %27, !dbg !1527

; <label>:26:                                     ; preds = %16
  tail call void bitcast (void (...)* @local_irq_enable to void ()*)() #10, !dbg !1528
  br label %172, !dbg !1530

; <label>:27:                                     ; preds = %16
  call void @llvm.va_start(i8* nonnull %6), !dbg !1531
  call void @llvm.dbg.value(metadata i32 1, metadata !1494, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 1, metadata !1494, metadata !DIExpression()), !dbg !1532
  %28 = icmp sgt i32 %20, 1, !dbg !1533
  br i1 %28, label %29, label %31, !dbg !1536

; <label>:29:                                     ; preds = %27
  br label %32, !dbg !1538

; <label>:30:                                     ; preds = %32
  br label %31, !dbg !1540

; <label>:31:                                     ; preds = %30, %27
  call void @llvm.va_end(i8* nonnull %6), !dbg !1540
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !1541
  switch i32 %0, label %148 [
    i32 26, label %38
    i32 10, label %59
    i32 9, label %78
    i32 28, label %88
    i32 7, label %100
    i32 24, label %117
    i32 25, label %131
    i32 3, label %144
    i32 4, label %144
    i32 14, label %156
  ], !dbg !1542

; <label>:32:                                     ; preds = %32, %29
  %33 = phi i32 [ %36, %32 ], [ 1, %29 ]
  %34 = va_arg i8** %4, i32, !dbg !1538
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 %33, !dbg !1543
  store i32 %34, i32* %35, align 4, !dbg !1544, !tbaa !1177
  %36 = add nuw nsw i32 %33, 1, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %36, metadata !1494, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 %36, metadata !1494, metadata !DIExpression()), !dbg !1532
  %37 = icmp eq i32 %36, %20, !dbg !1533
  br i1 %37, label %30, label %32, !dbg !1536, !llvm.loop !1547

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* @config_stack_modules, align 4, !dbg !1550, !tbaa !1177
  %40 = and i32 %39, 4, !dbg !1550
  %41 = icmp eq i32 %40, 0, !dbg !1550
  br i1 %41, label %156, label %42, !dbg !1553

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1554
  %44 = load i32, i32* %43, align 4, !dbg !1554, !tbaa !1177
  %45 = trunc i32 %44 to i16, !dbg !1554
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 2, !dbg !1556
  %47 = load i32, i32* %46, align 4, !dbg !1556, !tbaa !1177
  %48 = trunc i32 %47 to i16, !dbg !1556
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 3, !dbg !1557
  %50 = bitcast i32* %49 to i8**, !dbg !1557
  %51 = load i8*, i8** %50, align 4, !dbg !1557, !tbaa !1177
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 4, !dbg !1558
  %53 = load i32, i32* %52, align 4, !dbg !1558, !tbaa !1177
  %54 = trunc i32 %53 to i16, !dbg !1558
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 5, !dbg !1559
  %56 = load i32, i32* %55, align 4, !dbg !1559, !tbaa !1177
  %57 = trunc i32 %56 to i8, !dbg !1559
  %58 = call i32 @user_data_att_send(i16 zeroext %45, i16 zeroext %48, i8* %51, i16 zeroext %54, i8 zeroext %57) #10, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %58, metadata !1488, metadata !DIExpression()), !dbg !1501
  br label %156, !dbg !1561

; <label>:59:                                     ; preds = %31
  %60 = load i32, i32* @config_stack_modules, align 4, !dbg !1562, !tbaa !1177
  %61 = and i32 %60, 4, !dbg !1562
  %62 = icmp eq i32 %61, 0, !dbg !1562
  br i1 %62, label %156, label %63, !dbg !1564

; <label>:63:                                     ; preds = %59
  %64 = call zeroext i16 @att_get_default_conn_handle() #10, !dbg !1565
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1567
  %66 = load i32, i32* %65, align 4, !dbg !1567, !tbaa !1177
  %67 = trunc i32 %66 to i16, !dbg !1567
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 2, !dbg !1568
  %69 = bitcast i32* %68 to i8**, !dbg !1568
  %70 = load i8*, i8** %69, align 4, !dbg !1568, !tbaa !1177
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 3, !dbg !1569
  %72 = load i32, i32* %71, align 4, !dbg !1569, !tbaa !1177
  %73 = trunc i32 %72 to i16, !dbg !1569
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 4, !dbg !1570
  %75 = load i32, i32* %74, align 4, !dbg !1570, !tbaa !1177
  %76 = trunc i32 %75 to i8, !dbg !1570
  %77 = call i32 @user_data_att_send(i16 zeroext %64, i16 zeroext %67, i8* %70, i16 zeroext %73, i8 zeroext %76) #10, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %77, metadata !1488, metadata !DIExpression()), !dbg !1501
  br label %156, !dbg !1573

; <label>:78:                                     ; preds = %31
  %79 = load i32, i32* @config_stack_modules, align 4, !dbg !1574, !tbaa !1177
  %80 = and i32 %79, 4, !dbg !1574
  %81 = icmp eq i32 %80, 0, !dbg !1574
  br i1 %81, label %156, label %82, !dbg !1576

; <label>:82:                                     ; preds = %78
  %83 = call zeroext i16 @att_get_default_conn_handle() #10, !dbg !1577
  %84 = call i32 @user_data_cbuf_is_write_able(i16 zeroext %83, i32 0) #10, !dbg !1579
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1581
  %86 = bitcast i32* %85 to i32**, !dbg !1581
  %87 = load i32*, i32** %86, align 4, !dbg !1581, !tbaa !1177
  store i32 %84, i32* %87, align 4, !dbg !1582, !tbaa !1177
  br label %156, !dbg !1583

; <label>:88:                                     ; preds = %31
  %89 = load i32, i32* @config_stack_modules, align 4, !dbg !1584, !tbaa !1177
  %90 = and i32 %89, 4, !dbg !1584
  %91 = icmp eq i32 %90, 0, !dbg !1584
  br i1 %91, label %156, label %92, !dbg !1586

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1587
  %94 = load i32, i32* %93, align 4, !dbg !1587, !tbaa !1177
  %95 = trunc i32 %94 to i16, !dbg !1587
  %96 = call i32 @user_data_cbuf_is_write_able(i16 zeroext %95, i32 0) #10, !dbg !1589
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 2, !dbg !1590
  %98 = bitcast i32* %97 to i32**, !dbg !1590
  %99 = load i32*, i32** %98, align 4, !dbg !1590, !tbaa !1177
  store i32 %96, i32* %99, align 4, !dbg !1591, !tbaa !1177
  br label %156, !dbg !1592

; <label>:100:                                    ; preds = %31
  %101 = load i32, i32* @config_stack_modules, align 4, !dbg !1593, !tbaa !1177
  %102 = and i32 %101, 4, !dbg !1593
  %103 = icmp eq i32 %102, 0, !dbg !1593
  br i1 %103, label %156, label %104, !dbg !1595

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1596
  %106 = load i32, i32* %105, align 4, !dbg !1596, !tbaa !1177
  %107 = trunc i32 %106 to i16, !dbg !1596
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 2, !dbg !1598
  %109 = bitcast i32* %108 to i8**, !dbg !1598
  %110 = load i8*, i8** %109, align 4, !dbg !1598, !tbaa !1177
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 3, !dbg !1599
  %112 = load i32, i32* %111, align 4, !dbg !1599, !tbaa !1177
  %113 = trunc i32 %112 to i16, !dbg !1599
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 4, !dbg !1600
  %115 = load i32, i32* %114, align 4, !dbg !1600, !tbaa !1177
  %116 = trunc i32 %115 to i16, !dbg !1600
  call void @att_send_init(i16 zeroext %107, i8* %110, i16 zeroext %113, i16 zeroext %116) #10, !dbg !1601
  br label %156, !dbg !1602

; <label>:117:                                    ; preds = %31
  %118 = load i32, i32* @config_stack_modules, align 4, !dbg !1603, !tbaa !1177
  %119 = and i32 %118, 4, !dbg !1603
  %120 = icmp eq i32 %119, 0, !dbg !1603
  br i1 %120, label %156, label %121, !dbg !1605

; <label>:121:                                    ; preds = %117
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1606
  %123 = bitcast i32* %122 to i8**, !dbg !1606
  %124 = load i8*, i8** %123, align 4, !dbg !1606, !tbaa !1177
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 2, !dbg !1608
  %126 = load i32, i32* %125, align 4, !dbg !1608, !tbaa !1177
  %127 = trunc i32 %126 to i16, !dbg !1608
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 3, !dbg !1609
  %129 = load i32, i32* %128, align 4, !dbg !1609, !tbaa !1177
  %130 = trunc i32 %129 to i16, !dbg !1609
  call void @att_send_init(i16 zeroext -16, i8* %124, i16 zeroext %127, i16 zeroext %130) #10, !dbg !1610
  br label %156, !dbg !1611

; <label>:131:                                    ; preds = %31
  %132 = load i32, i32* @config_stack_modules, align 4, !dbg !1612, !tbaa !1177
  %133 = and i32 %132, 4, !dbg !1612
  %134 = icmp eq i32 %133, 0, !dbg !1612
  br i1 %134, label %156, label %135, !dbg !1614

; <label>:135:                                    ; preds = %131
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1615
  %137 = load i32, i32* %136, align 4, !dbg !1615, !tbaa !1177
  %138 = trunc i32 %137 to i16, !dbg !1615
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 2, !dbg !1617
  %140 = load i32, i32* %139, align 4, !dbg !1617, !tbaa !1177
  %141 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 3, !dbg !1618
  %142 = load i32, i32* %141, align 4, !dbg !1618, !tbaa !1177
  %143 = call i32 @att_set_conn_handle(i16 zeroext %138, i32 %140, i32 %142) #10, !dbg !1619
  br label %156, !dbg !1620

; <label>:144:                                    ; preds = %31, %31
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1621
  %146 = load i32, i32* %145, align 4, !dbg !1621, !tbaa !1177
  %147 = icmp sgt i32 %146, 31, !dbg !1623
  call void @llvm.dbg.value(metadata i32 -95, metadata !1488, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 0, metadata !1496, metadata !DIExpression()), !dbg !1541
  br i1 %147, label %156, label %148, !dbg !1624

; <label>:148:                                    ; preds = %144, %31
  %149 = shl i32 %20, 2, !dbg !1625
  %150 = call i32 @cbuf_write(%struct._cbuffer* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1), i8* nonnull %5, i32 %149) #10, !dbg !1628
  call void bitcast (void (...)* @local_irq_enable to void ()*)() #10, !dbg !1629
  %151 = load i8, i8* @ble_debug_enable, align 1, !dbg !1630, !tbaa !1285
  %152 = and i8 %151, 1, !dbg !1630
  %153 = icmp eq i8 %152, 0, !dbg !1630
  br i1 %153, label %158, label %154, !dbg !1634

; <label>:154:                                    ; preds = %148
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i32 %149) #11, !dbg !1635
  br label %158, !dbg !1635

; <label>:156:                                    ; preds = %144, %135, %131, %121, %117, %104, %100, %92, %88, %82, %78, %63, %59, %42, %38, %31
  %157 = phi i32 [ -95, %144 ], [ 0, %135 ], [ 0, %131 ], [ 0, %121 ], [ 0, %117 ], [ 0, %104 ], [ 0, %100 ], [ 0, %92 ], [ 0, %88 ], [ 0, %82 ], [ 0, %78 ], [ 0, %59 ], [ %77, %63 ], [ 0, %38 ], [ %58, %42 ], [ 0, %31 ]
  call void bitcast (void (...)* @local_irq_enable to void ()*)() #10, !dbg !1629
  br label %158

; <label>:158:                                    ; preds = %156, %154, %148
  %159 = phi i32 [ %157, %156 ], [ 0, %148 ], [ 0, %154 ]
  call void bitcast (void (...)* @stack_run_loop_resume to void ()*)() #10, !dbg !1637
  %160 = icmp eq i32 %0, 14, !dbg !1638
  br i1 %160, label %161, label %164, !dbg !1640

; <label>:161:                                    ; preds = %158
  %162 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i32 0, i32 1, !dbg !1641
  %163 = load i32, i32* %162, align 4, !dbg !1641, !tbaa !1177
  call void @ble_stack_exit(i32 %163) #11, !dbg !1643
  br label %164, !dbg !1644

; <label>:164:                                    ; preds = %161, %158
  %165 = icmp eq i32 %159, 0, !dbg !1645
  br i1 %165, label %172, label %166, !dbg !1647

; <label>:166:                                    ; preds = %164
  %167 = load i8, i8* @ble_debug_enable, align 1, !dbg !1648, !tbaa !1285
  %168 = and i8 %167, 1, !dbg !1648
  %169 = icmp eq i8 %168, 0, !dbg !1648
  br i1 %169, label %172, label %170, !dbg !1651

; <label>:170:                                    ; preds = %166
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i32 %159) #11, !dbg !1652
  br label %172, !dbg !1652

; <label>:172:                                    ; preds = %170, %166, %164, %26, %14, %12, %9
  %173 = phi i32 [ -100, %26 ], [ -94, %12 ], [ -94, %9 ], [ -99, %14 ], [ %159, %166 ], [ 0, %164 ], [ %159, %170 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !1654
  ret i32 %173, !dbg !1655
}

; Function Attrs: optsize
declare void @local_irq_disable(...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cbuf_get_data_size(%struct._cbuffer*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @local_irq_enable(...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: optsize
declare i32 @user_data_att_send(i16 zeroext, i16 zeroext, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i16 @att_get_default_conn_handle() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @user_data_cbuf_is_write_able(i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @att_send_init(i16 zeroext, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @att_set_conn_handle(i16 zeroext, i32, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cbuf_write(%struct._cbuffer*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define weak hidden void @ble_profile_init() local_unnamed_addr #1 section ".bt_stack_code" !dbg !1657 {
  %1 = load i8, i8* @ble_debug_enable, align 1, !dbg !1658, !tbaa !1285
  %2 = and i8 %1, 1, !dbg !1658
  %3 = icmp eq i8 %2, 0, !dbg !1658
  br i1 %3, label %6, label %4, !dbg !1660

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.46, i32 0, i32 0)), !dbg !1661
  br label %6, !dbg !1661

; <label>:6:                                      ; preds = %4, %0
  ret void, !dbg !1663
}

; Function Attrs: nounwind optsize
define weak hidden zeroext i8 @btstck_app_init_setting() local_unnamed_addr #1 section ".bt_stack_code" !dbg !1664 {
  %1 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1667, !tbaa !1285
  %2 = icmp slt i8 %1, 0, !dbg !1667
  br i1 %2, label %3, label %5, !dbg !1669

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str.47, i32 0, i32 0)), !dbg !1670
  br label %5, !dbg !1670

; <label>:5:                                      ; preds = %3, %0
  ret i8 0, !dbg !1672
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @jl_app_init_setting() local_unnamed_addr #1 section ".bt_stack_code" !dbg !1673 {
  %1 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1674, !tbaa !1285
  %2 = icmp slt i8 %1, 0, !dbg !1674
  br i1 %2, label %3, label %5, !dbg !1676

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @str.48, i32 0, i32 0)), !dbg !1677
  br label %5, !dbg !1677

; <label>:5:                                      ; preds = %3, %0
  ret i8 0, !dbg !1679
}

; Function Attrs: nounwind optsize
define hidden void @btstack_bredr_le_init() local_unnamed_addr #1 section ".bt_stack_code" !dbg !1680 {
  %1 = load i8, i8* @ble_debug_enable, align 1, !dbg !1681, !tbaa !1285
  %2 = and i8 %1, 1, !dbg !1681
  %3 = icmp eq i8 %2, 0, !dbg !1681
  br i1 %3, label %6, label %4, !dbg !1683

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.52, i32 0, i32 0)), !dbg !1684
  br label %6, !dbg !1684

; <label>:6:                                      ; preds = %4, %0
  %7 = load i32, i32* @config_btctler_le_tws, align 4, !dbg !1686, !tbaa !1177
  %8 = load i32, i32* @CONFIG_BTCTLER_TWS_ENABLE, align 4, !dbg !1688
  %9 = or i32 %8, %7, !dbg !1690
  %10 = icmp eq i32 %9, 0, !dbg !1690
  %11 = load i32, i32* @config_stack_modules, align 4, !tbaa !1177
  %12 = and i32 %11, 4, !dbg !1691
  %13 = icmp eq i32 %12, 0, !dbg !1691
  %14 = or i1 %10, %13, !dbg !1690
  br i1 %14, label %30, label %15, !dbg !1690

; <label>:15:                                     ; preds = %6
  %16 = tail call i32 @sdfile_get_disk_capacity() #10, !dbg !1692
  %17 = icmp ult i32 %16, 1048576, !dbg !1693
  br i1 %17, label %18, label %30, !dbg !1694

; <label>:18:                                     ; preds = %15
  %19 = tail call zeroext i8 @jl_app_init_setting() #11, !dbg !1696
  %20 = tail call zeroext i8 @btstck_app_init_setting() #11, !dbg !1698
  %21 = icmp eq i8 %20, 0, !dbg !1700
  br i1 %21, label %22, label %30, !dbg !1701

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str.51, i32 0, i32 0)), !dbg !1702
  %24 = load i32, i32* @config_asser, align 4, !dbg !1704, !tbaa !1177
  %25 = icmp eq i32 %24, 0, !dbg !1704
  br i1 %25, label %29, label %26, !dbg !1708

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i32 0, i32 0), i32 1014) #11, !dbg !1710
  %28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #11, !dbg !1715
  tail call void bitcast (void (...)* @cpu_assert_debug to void ()*)() #10, !dbg !1717
  br label %58, !dbg !1719

; <label>:29:                                     ; preds = %22
  tail call fastcc void @cpu_reset() #11, !dbg !1721
  br label %58

; <label>:30:                                     ; preds = %18, %15, %6
  %31 = load %struct.l2cap_stack_t*, %struct.l2cap_stack_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 2), align 4, !dbg !1726, !tbaa !1170
  tail call void @l2cap_init(%struct.l2cap_stack_t* %31, void (i8*, i8, i16, i8*, i16)* nonnull @packet_handler) #10, !dbg !1727
  %32 = and i32 %11, 1, !dbg !1728
  %33 = icmp eq i32 %32, 0, !dbg !1728
  br i1 %33, label %35, label %34, !dbg !1730

; <label>:34:                                     ; preds = %30
  tail call void @profile_function_status_handle_register(void (i8*, i32, i32)* nonnull @update_profile_function_status) #10, !dbg !1731
  tail call void @profile_channels_status_handle_register(void (i8*, i32, i32, i8)* nonnull @updata_profile_channels_status) #10, !dbg !1735
  tail call void @btstack_v21_main() #11, !dbg !1736
  br label %35, !dbg !1737

; <label>:35:                                     ; preds = %34, %30
  %36 = and i32 %11, 6, !dbg !1738
  %37 = icmp eq i32 %36, 0, !dbg !1738
  br i1 %37, label %58, label %38, !dbg !1738

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @config_btctler_modules, align 4, !dbg !1740, !tbaa !1177
  %40 = and i32 %39, 2, !dbg !1740
  %41 = icmp eq i32 %40, 0, !dbg !1740
  br i1 %41, label %42, label %48, !dbg !1743

; <label>:42:                                     ; preds = %38
  %43 = load i8, i8* @ble_debug_enable, align 1, !dbg !1744, !tbaa !1285
  %44 = and i8 %43, 1, !dbg !1744
  %45 = icmp eq i8 %44, 0, !dbg !1744
  br i1 %45, label %58, label %46, !dbg !1747

; <label>:46:                                     ; preds = %42
  %47 = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @str.49, i32 0, i32 0)), !dbg !1748
  br label %58, !dbg !1748

; <label>:48:                                     ; preds = %38
  tail call void @llvm.memset.p0i8.i32(i8* bitcast (%struct.btstack_ctrl* @btstack_global_info to i8*), i8 0, i32 184, i32 4, i1 false), !dbg !1750
  tail call void @cbuf_init(%struct._cbuffer* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1), i8* bitcast (i32* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 2, i32 0) to i8*), i32 128) #10, !dbg !1751
  tail call void @stack_run_loop_register(%struct.run_loop* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 0), void (%struct.run_loop*)* nonnull @__ble_thread_loop_handler, i8* null) #10, !dbg !1752
  store volatile i8 1, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !1753, !tbaa !1408
  %49 = and i32 %11, 4, !dbg !1754
  %50 = icmp eq i32 %49, 0, !dbg !1754
  br i1 %50, label %52, label %51, !dbg !1756

; <label>:51:                                     ; preds = %48
  tail call void @att_global_info_init() #10, !dbg !1757
  tail call void @ble_profile_init() #11, !dbg !1759
  br label %52, !dbg !1760

; <label>:52:                                     ; preds = %51, %48
  %53 = load i8, i8* @ble_debug_enable, align 1, !dbg !1761, !tbaa !1285
  %54 = and i8 %53, 1, !dbg !1761
  %55 = icmp eq i8 %54, 0, !dbg !1761
  br i1 %55, label %58, label %56, !dbg !1763

; <label>:56:                                     ; preds = %52
  %57 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.50, i32 0, i32 0)), !dbg !1764
  br label %58, !dbg !1764

; <label>:58:                                     ; preds = %56, %52, %46, %42, %35, %29, %26
  ret void, !dbg !1766
}

; Function Attrs: optsize
declare i32 @sdfile_get_disk_capacity() local_unnamed_addr #3

; Function Attrs: optsize
declare void @l2cap_init(%struct.l2cap_stack_t*, void (i8*, i8, i16, i8*, i16)*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @packet_handler(i8* nocapture readnone, i8 zeroext, i16 zeroext, i8*, i16 zeroext) #1 section ".bt_stack_code" !dbg !1767 {
  %6 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1769, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %1, metadata !1770, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i16 %2, metadata !1771, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %3, metadata !1772, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i16 %4, metadata !1773, metadata !DIExpression()), !dbg !1781
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i32 0, i32 0, !dbg !1782
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #8, !dbg !1782
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %6, metadata !1775, metadata !DIExpression()), !dbg !1783
  %8 = icmp eq i8 %1, 4, !dbg !1784
  br i1 %8, label %9, label %284, !dbg !1784

; <label>:9:                                      ; preds = %5
  %10 = load i8, i8* %3, align 1, !dbg !1785, !tbaa !1285
  switch i8 %10, label %284 [
    i8 3, label %11
    i8 5, label %77
    i8 44, label %119
    i8 96, label %149
    i8 109, label %159
    i8 -2, label %191
    i8 -11, label %227
    i8 -4, label %241
    i8 -6, label %251
    i8 -7, label %265
    i8 -9, label %272
    i8 -10, label %278
  ], !dbg !1787

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %3, i32 5, !dbg !1788
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %7, i8* %12, i32 6, i32 1, i1 false), !dbg !1788
  %13 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !1790
  %14 = load i8, i8* %13, align 1, !dbg !1790, !tbaa !1285
  %15 = icmp eq i8 %14, 0, !dbg !1792
  %16 = getelementptr inbounds i8, i8* %3, i32 11
  %17 = load i8, i8* %16, align 1, !tbaa !1285
  %18 = icmp eq i8 %17, 1
  br i1 %15, label %19, label %51, !dbg !1793

; <label>:19:                                     ; preds = %11
  br i1 %18, label %20, label %43, !dbg !1794

; <label>:20:                                     ; preds = %19
  %21 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1796, !tbaa !1285
  %22 = and i8 %21, 32, !dbg !1796
  %23 = icmp eq i8 %22, 0, !dbg !1796
  br i1 %23, label %26, label %24, !dbg !1800

; <label>:24:                                     ; preds = %20
  %25 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #11, !dbg !1801
  br label %26, !dbg !1801

; <label>:26:                                     ; preds = %24, %20
  %27 = getelementptr inbounds i8, i8* %3, i32 3, !dbg !1803
  %28 = load i8, i8* %27, align 1, !dbg !1803, !tbaa !1285
  %29 = zext i8 %28 to i16, !dbg !1803
  %30 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1803
  %31 = load i8, i8* %30, align 1, !dbg !1803, !tbaa !1285
  %32 = zext i8 %31 to i16, !dbg !1803
  %33 = shl nuw i16 %32, 8, !dbg !1803
  %34 = or i16 %33, %29, !dbg !1803
  %35 = call zeroext i8 @b_create_bt_new_conn(i8* nonnull %7, i16 zeroext %34) #10, !dbg !1805
  call void @update_connectiong_mac_addr(i8* nonnull %7) #10, !dbg !1806
  %36 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 2), align 4, !dbg !1807, !tbaa !1809
  %37 = icmp eq void (i8*, i32)* %36, null, !dbg !1811
  br i1 %37, label %39, label %38, !dbg !1812

; <label>:38:                                     ; preds = %26
  call void %36(i8* nonnull %7, i32 0) #10, !dbg !1813
  br label %284, !dbg !1815

; <label>:39:                                     ; preds = %26
  %40 = load i8, i8* %3, align 1, !dbg !1816, !tbaa !1285
  %41 = load i8, i8* %13, align 1, !dbg !1818, !tbaa !1285
  %42 = zext i8 %41 to i32, !dbg !1818
  call void @bt_event_update_to_user(i8* nonnull %7, i32 1212369152, i8 zeroext %40, i32 %42) #10, !dbg !1819
  br label %284

; <label>:43:                                     ; preds = %19
  switch i8 %17, label %284 [
    i8 0, label %44
    i8 2, label %44
  ], !dbg !1820

; <label>:44:                                     ; preds = %43, %43
  %45 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1823, !tbaa !1285
  %46 = and i8 %45, 32, !dbg !1823
  %47 = icmp eq i8 %46, 0, !dbg !1823
  br i1 %47, label %50, label %48, !dbg !1826

; <label>:48:                                     ; preds = %44
  %49 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #11, !dbg !1827
  br label %50, !dbg !1827

; <label>:50:                                     ; preds = %48, %44
  call void @aec_sco_connection_start(i8 zeroext 2, i16 zeroext 30, i8* nonnull %7) #10, !dbg !1829
  br label %284, !dbg !1830

; <label>:51:                                     ; preds = %11
  br i1 %18, label %52, label %284, !dbg !1831

; <label>:52:                                     ; preds = %51
  %53 = call zeroext i8 @free_conn_for_addr(i8* nonnull %7, i8 zeroext 0) #10, !dbg !1833
  %54 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 2), align 4, !dbg !1836, !tbaa !1809
  %55 = icmp eq void (i8*, i32)* %54, null, !dbg !1838
  %56 = load i8, i8* @l2cap_debug_enable, align 1, !tbaa !1285
  br i1 %55, label %68, label %57, !dbg !1839

; <label>:57:                                     ; preds = %52
  %58 = icmp slt i8 %56, 0, !dbg !1840
  br i1 %58, label %59, label %64, !dbg !1843

; <label>:59:                                     ; preds = %57
  %60 = load i8, i8* %13, align 1, !dbg !1844, !tbaa !1285
  %61 = zext i8 %60 to i32, !dbg !1844
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i32 %61) #11, !dbg !1844
  %63 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 2), align 4, !tbaa !1809
  br label %64, !dbg !1844

; <label>:64:                                     ; preds = %59, %57
  %65 = phi void (i8*, i32)* [ %63, %59 ], [ %54, %57 ], !dbg !1846
  %66 = load i8, i8* %13, align 1, !dbg !1847, !tbaa !1285
  %67 = zext i8 %66 to i32, !dbg !1847
  call void %65(i8* nonnull %7, i32 %67) #10, !dbg !1848
  br label %284, !dbg !1849

; <label>:68:                                     ; preds = %52
  %69 = and i8 %56, 32, !dbg !1850
  %70 = icmp eq i8 %69, 0, !dbg !1850
  br i1 %70, label %73, label %71, !dbg !1853

; <label>:71:                                     ; preds = %68
  %72 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #11, !dbg !1854
  br label %73, !dbg !1854

; <label>:73:                                     ; preds = %71, %68
  %74 = load i8, i8* %3, align 1, !dbg !1856, !tbaa !1285
  %75 = load i8, i8* %13, align 1, !dbg !1857, !tbaa !1285
  %76 = zext i8 %75 to i32, !dbg !1857
  call void @bt_event_update_to_user(i8* nonnull %7, i32 1212369152, i8 zeroext %74, i32 %76) #10, !dbg !1858
  br label %284

; <label>:77:                                     ; preds = %9
  %78 = getelementptr inbounds i8, i8* %3, i32 7, !dbg !1859
  call void @bt_flip_addr(i8* nonnull %7, i8* %78) #10, !dbg !1860
  %79 = load i8, i8* @btstack_emitter_support, align 1, !dbg !1861, !tbaa !1285
  %80 = icmp eq i8 %79, 0, !dbg !1861
  br i1 %80, label %91, label %81, !dbg !1863

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8, i8* %3, i32 5, !dbg !1864
  %83 = load i8, i8* %82, align 1, !dbg !1864, !tbaa !1285
  %84 = icmp eq i8 %83, 5, !dbg !1867
  br i1 %84, label %85, label %91, !dbg !1868

; <label>:85:                                     ; preds = %81
  %86 = call i8* @bt_get_emitter_pin_code(i8 zeroext 2) #10, !dbg !1869
  %87 = icmp eq i8* %86, null, !dbg !1869
  br i1 %87, label %91, label %88, !dbg !1872

; <label>:88:                                     ; preds = %85
  %89 = call zeroext i8 @free_conn_for_addr(i8* nonnull %7, i8 zeroext 1) #10, !dbg !1873
  %90 = call i32 @user_send_cmd_prepare(i32 2, i16 zeroext 0, i8* null) #10, !dbg !1875
  br label %284, !dbg !1876

; <label>:91:                                     ; preds = %85, %81, %77
  call void @update_connectiong_mac_addr(i8* nonnull %7) #10, !dbg !1877
  %92 = icmp ugt i16 %4, 6, !dbg !1878
  br i1 %92, label %93, label %284, !dbg !1880

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds i8, i8* %3, i32 6, !dbg !1881
  %95 = load i8, i8* %94, align 1, !dbg !1881, !tbaa !1285
  switch i8 %95, label %284 [
    i8 1, label %96
    i8 0, label %112
    i8 2, label %112
  ], !dbg !1884

; <label>:96:                                     ; preds = %93
  %97 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1885, !tbaa !1285
  %98 = and i8 %97, 32, !dbg !1885
  %99 = icmp eq i8 %98, 0, !dbg !1885
  br i1 %99, label %102, label %100, !dbg !1888

; <label>:100:                                    ; preds = %96
  %101 = call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0)) #11, !dbg !1889
  br label %102, !dbg !1889

; <label>:102:                                    ; preds = %100, %96
  %103 = call zeroext i8 @free_conn_for_addr(i8* nonnull %7, i8 zeroext 1) #10, !dbg !1891
  %104 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 2), align 4, !dbg !1892, !tbaa !1809
  %105 = icmp eq void (i8*, i32)* %104, null, !dbg !1894
  br i1 %105, label %107, label %106, !dbg !1895

; <label>:106:                                    ; preds = %102
  call void %104(i8* nonnull %7, i32 22) #10, !dbg !1896
  br label %284, !dbg !1898

; <label>:107:                                    ; preds = %102
  %108 = load i8, i8* %3, align 1, !dbg !1899, !tbaa !1285
  %109 = getelementptr inbounds i8, i8* %3, i32 5, !dbg !1901
  %110 = load i8, i8* %109, align 1, !dbg !1901, !tbaa !1285
  %111 = zext i8 %110 to i32, !dbg !1901
  call void @bt_event_update_to_user(i8* nonnull %7, i32 1212369152, i8 zeroext %108, i32 %111) #10, !dbg !1902
  br label %284

; <label>:112:                                    ; preds = %93, %93
  %113 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1903, !tbaa !1285
  %114 = and i8 %113, 32, !dbg !1903
  %115 = icmp eq i8 %114, 0, !dbg !1903
  br i1 %115, label %118, label %116, !dbg !1907

; <label>:116:                                    ; preds = %112
  %117 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0)) #11, !dbg !1908
  br label %118, !dbg !1908

; <label>:118:                                    ; preds = %116, %112
  call void bitcast (void (...)* @aec_sco_connection_stop to void ()*)() #10, !dbg !1910
  br label %284, !dbg !1911

; <label>:119:                                    ; preds = %9
  %120 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1912, !tbaa !1285
  %121 = icmp slt i8 %120, 0, !dbg !1912
  %122 = getelementptr inbounds i8, i8* %3, i32 18
  br i1 %121, label %126, label %123, !dbg !1914

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !1915
  %125 = getelementptr inbounds i8, i8* %3, i32 17, !dbg !1915
  br label %138, !dbg !1914

; <label>:126:                                    ; preds = %119
  %127 = load i8, i8* %122, align 1, !dbg !1916, !tbaa !1285
  %128 = zext i8 %127 to i32, !dbg !1916
  %129 = getelementptr inbounds i8, i8* %3, i32 16, !dbg !1916
  %130 = load i8, i8* %129, align 1, !dbg !1916, !tbaa !1285
  %131 = zext i8 %130 to i32, !dbg !1916
  %132 = getelementptr inbounds i8, i8* %3, i32 17, !dbg !1916
  %133 = load i8, i8* %132, align 1, !dbg !1916, !tbaa !1285
  %134 = zext i8 %133 to i32, !dbg !1916
  %135 = shl nuw nsw i32 %134, 8, !dbg !1916
  %136 = or i32 %135, %131, !dbg !1916
  %137 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i32 %128, i32 %136) #11, !dbg !1916
  br label %138, !dbg !1916

; <label>:138:                                    ; preds = %126, %123
  %139 = phi i8* [ %125, %123 ], [ %132, %126 ], !dbg !1915
  %140 = phi i8* [ %124, %123 ], [ %129, %126 ], !dbg !1915
  %141 = getelementptr inbounds i8, i8* %3, i32 5, !dbg !1918
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %7, i8* %141, i32 6, i32 1, i1 false), !dbg !1918
  %142 = load i8, i8* %122, align 1, !dbg !1919, !tbaa !1285
  %143 = load i8, i8* %140, align 1, !dbg !1915, !tbaa !1285
  %144 = zext i8 %143 to i16, !dbg !1915
  %145 = load i8, i8* %139, align 1, !dbg !1915, !tbaa !1285
  %146 = zext i8 %145 to i16, !dbg !1915
  %147 = shl nuw i16 %146, 8, !dbg !1915
  %148 = or i16 %147, %144, !dbg !1915
  call void @aec_sco_connection_start(i8 zeroext %142, i16 zeroext %148, i8* nonnull %7) #10, !dbg !1920
  br label %284, !dbg !1921

; <label>:149:                                    ; preds = %9
  %150 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !1922
  %151 = load i8, i8* %150, align 1, !dbg !1922, !tbaa !1285
  %152 = icmp eq i8 %151, 2, !dbg !1924
  br i1 %152, label %153, label %284, !dbg !1925

; <label>:153:                                    ; preds = %149
  %154 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1926, !tbaa !1285
  %155 = and i8 %154, 32, !dbg !1926
  %156 = icmp eq i8 %155, 0, !dbg !1926
  br i1 %156, label %284, label %157, !dbg !1929

; <label>:157:                                    ; preds = %153
  %158 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0)) #11, !dbg !1930
  br label %284, !dbg !1930

; <label>:159:                                    ; preds = %9
  %160 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1932, !tbaa !1285
  %161 = icmp slt i8 %160, 0, !dbg !1932
  br i1 %161, label %162, label %167, !dbg !1934

; <label>:162:                                    ; preds = %159
  %163 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !1935
  %164 = load i8, i8* %163, align 1, !dbg !1935, !tbaa !1285
  %165 = zext i8 %164 to i32, !dbg !1935
  %166 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), i32 %165) #11, !dbg !1935
  br label %167, !dbg !1935

; <label>:167:                                    ; preds = %162, %159
  %168 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !1937
  call void @bt_flip_addr(i8* nonnull %7, i8* %168) #10, !dbg !1938
  %169 = getelementptr inbounds i8, i8* %3, i32 3, !dbg !1939
  %170 = load i8, i8* %169, align 1, !dbg !1939, !tbaa !1285
  %171 = icmp eq i8 %170, 1, !dbg !1941
  %172 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 2), align 4, !dbg !1942
  %173 = icmp ne void (i8*, i32)* %172, null, !dbg !1944
  %174 = and i1 %171, %173, !dbg !1945
  br i1 %174, label %175, label %179, !dbg !1945

; <label>:175:                                    ; preds = %167
  %176 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !1946
  %177 = load i8, i8* %176, align 1, !dbg !1946, !tbaa !1285
  %178 = zext i8 %177 to i32, !dbg !1946
  call void %172(i8* nonnull %7, i32 %178) #10, !dbg !1948
  br label %284, !dbg !1949

; <label>:179:                                    ; preds = %167
  br i1 %171, label %180, label %284, !dbg !1950

; <label>:180:                                    ; preds = %179
  %181 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1952, !tbaa !1285
  %182 = and i8 %181, 32, !dbg !1952
  %183 = icmp eq i8 %182, 0, !dbg !1952
  br i1 %183, label %186, label %184, !dbg !1956

; <label>:184:                                    ; preds = %180
  %185 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #11, !dbg !1957
  br label %186, !dbg !1957

; <label>:186:                                    ; preds = %184, %180
  %187 = load i8, i8* %3, align 1, !dbg !1959, !tbaa !1285
  %188 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !1960
  %189 = load i8, i8* %188, align 1, !dbg !1960, !tbaa !1285
  %190 = zext i8 %189 to i32, !dbg !1960
  call void @bt_event_update_to_user(i8* nonnull %7, i32 1212369152, i8 zeroext %187, i32 %190) #10, !dbg !1961
  br label %284, !dbg !1962

; <label>:191:                                    ; preds = %9
  %192 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1963, !tbaa !1285
  %193 = icmp slt i8 %192, 0, !dbg !1963
  %194 = getelementptr inbounds i8, i8* %3, i32 2
  br i1 %193, label %195, label %202, !dbg !1965

; <label>:195:                                    ; preds = %191
  %196 = load i8, i8* %194, align 1, !dbg !1966, !tbaa !1285
  %197 = zext i8 %196 to i32, !dbg !1966
  %198 = getelementptr inbounds i8, i8* %3, i32 3, !dbg !1966
  %199 = load i8, i8* %198, align 1, !dbg !1966, !tbaa !1285
  %200 = zext i8 %199 to i32, !dbg !1966
  %201 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i32 0, i32 0), i32 %197, i32 %200) #11, !dbg !1966
  br label %202, !dbg !1966

; <label>:202:                                    ; preds = %195, %191
  %203 = load i8, i8* %194, align 1, !dbg !1968, !tbaa !1285
  %204 = icmp eq i8 %203, 0, !dbg !1968
  br i1 %204, label %222, label %205, !dbg !1970

; <label>:205:                                    ; preds = %202
  tail call void @set_remote_test_flag(i8 zeroext %203) #10, !dbg !1971
  %206 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !1973, !tbaa !1285
  %207 = and i8 %206, 32, !dbg !1973
  %208 = icmp eq i8 %207, 0, !dbg !1973
  br i1 %208, label %211, label %209, !dbg !1975

; <label>:209:                                    ; preds = %205
  %210 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0)) #11, !dbg !1976
  br label %211, !dbg !1976

; <label>:211:                                    ; preds = %209, %205
  %212 = load i8, i8* %3, align 1, !dbg !1978, !tbaa !1285
  %213 = load i8, i8* %194, align 1, !dbg !1979, !tbaa !1285
  %214 = zext i8 %213 to i32, !dbg !1979
  call void @bt_event_update_to_user(i8* nonnull %7, i32 1212369152, i8 zeroext %212, i32 %214) #10, !dbg !1980
  %215 = load i8, i8* %194, align 1, !dbg !1981, !tbaa !1285
  %216 = icmp ne i8 %215, 3, !dbg !1983
  %217 = load i32, i32* @CONFIG_BTCTLER_TWS_ENABLE, align 4, !dbg !1984
  %218 = icmp ne i32 %217, 0, !dbg !1984
  %219 = and i1 %216, %218, !dbg !1987
  br i1 %219, label %220, label %284, !dbg !1987

; <label>:220:                                    ; preds = %211
  %221 = call i32 @tws_api_detach(i32 13) #10, !dbg !1988
  br label %284, !dbg !1990

; <label>:222:                                    ; preds = %202
  %223 = tail call zeroext i8 bitcast (i8 (...)* @get_remote_test_flag to i8 ()*)() #10, !dbg !1991
  %224 = icmp eq i8 %223, 0, !dbg !1991
  br i1 %224, label %284, label %225, !dbg !1994

; <label>:225:                                    ; preds = %222
  %226 = load i8, i8* %3, align 1, !dbg !1996, !tbaa !1285
  call void @bt_event_update_to_user(i8* nonnull %7, i32 1212369152, i8 zeroext %226, i32 0) #10, !dbg !1998
  br label %284, !dbg !1999

; <label>:227:                                    ; preds = %9
  %228 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2000, !tbaa !1285
  %229 = icmp slt i8 %228, 0, !dbg !2000
  %230 = getelementptr inbounds i8, i8* %3, i32 2
  br i1 %229, label %231, label %236, !dbg !2002

; <label>:231:                                    ; preds = %227
  %232 = load i8, i8* %230, align 1, !dbg !2003, !tbaa !1285
  %233 = zext i8 %232 to i32, !dbg !2003
  %234 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i32 %233) #11, !dbg !2003
  %235 = load i8, i8* %3, align 1, !tbaa !1285
  br label %236, !dbg !2003

; <label>:236:                                    ; preds = %231, %227
  %237 = phi i8 [ %235, %231 ], [ -11, %227 ], !dbg !2005
  %238 = getelementptr inbounds i8, i8* %3, i32 3, !dbg !2006
  %239 = load i8, i8* %230, align 1, !dbg !2007, !tbaa !1285
  %240 = zext i8 %239 to i32, !dbg !2007
  tail call void @bt_event_update_to_user(i8* %238, i32 1212369152, i8 zeroext %237, i32 %240) #10, !dbg !2008
  br label %284, !dbg !2009

; <label>:241:                                    ; preds = %9
  %242 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2010, !tbaa !1285
  %243 = and i8 %242, 32, !dbg !2010
  %244 = icmp eq i8 %243, 0, !dbg !2010
  br i1 %244, label %247, label %245, !dbg !2012

; <label>:245:                                    ; preds = %241
  %246 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0)) #11, !dbg !2013
  br label %247, !dbg !2013

; <label>:247:                                    ; preds = %245, %241
  %248 = load void ()*, void ()** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 10), align 4, !dbg !2015, !tbaa !2017
  %249 = icmp eq void ()* %248, null, !dbg !2018
  br i1 %249, label %284, label %250, !dbg !2019

; <label>:250:                                    ; preds = %247
  tail call void %248() #10, !dbg !2020
  br label %284, !dbg !2022

; <label>:251:                                    ; preds = %9
  %252 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2023, !tbaa !1285
  %253 = icmp slt i8 %252, 0, !dbg !2023
  br i1 %253, label %254, label %259, !dbg !2025

; <label>:254:                                    ; preds = %251
  %255 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !2026
  %256 = load i8, i8* %255, align 1, !dbg !2026, !tbaa !1285
  %257 = zext i8 %256 to i32, !dbg !2026
  %258 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), i32 %257) #11, !dbg !2026
  br label %259, !dbg !2026

; <label>:259:                                    ; preds = %254, %251
  %260 = load void (i8)*, void (i8)** getelementptr inbounds (%struct.user_interface_handler, %struct.user_interface_handler* @user_interface_app, i32 0, i32 11), align 4, !dbg !2028, !tbaa !2030
  %261 = icmp eq void (i8)* %260, null, !dbg !2031
  br i1 %261, label %284, label %262, !dbg !2032

; <label>:262:                                    ; preds = %259
  %263 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !2033
  %264 = load i8, i8* %263, align 1, !dbg !2033, !tbaa !1285
  tail call void %260(i8 zeroext %264) #10, !dbg !2035
  br label %284, !dbg !2036

; <label>:265:                                    ; preds = %9
  %266 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2037, !tbaa !1285
  %267 = icmp slt i8 %266, 0, !dbg !2037
  br i1 %267, label %268, label %270, !dbg !2039

; <label>:268:                                    ; preds = %265
  %269 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @str.55, i32 0, i32 0)), !dbg !2040
  br label %270, !dbg !2040

; <label>:270:                                    ; preds = %268, %265
  %271 = getelementptr inbounds i8, i8* %3, i32 2, !dbg !2042
  tail call void @update_bt_current_status(i8* %271, i8 zeroext 5, i8 zeroext 0) #10, !dbg !2043
  br label %284, !dbg !2044

; <label>:272:                                    ; preds = %9
  %273 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2045, !tbaa !1285
  %274 = icmp slt i8 %273, 0, !dbg !2045
  br i1 %274, label %275, label %277, !dbg !2047

; <label>:275:                                    ; preds = %272
  %276 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @str.54, i32 0, i32 0)), !dbg !2048
  br label %277, !dbg !2048

; <label>:277:                                    ; preds = %275, %272
  tail call void @update_bt_current_status(i8* null, i8 zeroext 8, i8 zeroext 0) #10, !dbg !2050
  br label %284, !dbg !2051

; <label>:278:                                    ; preds = %9
  %279 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2052, !tbaa !1285
  %280 = icmp slt i8 %279, 0, !dbg !2052
  br i1 %280, label %281, label %283, !dbg !2054

; <label>:281:                                    ; preds = %278
  %282 = tail call i32 @puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @str.53, i32 0, i32 0)), !dbg !2055
  br label %283, !dbg !2055

; <label>:283:                                    ; preds = %281, %278
  tail call void @update_bt_current_status(i8* null, i8 zeroext 51, i8 zeroext 0) #10, !dbg !2057
  br label %284, !dbg !2058

; <label>:284:                                    ; preds = %283, %277, %270, %262, %259, %250, %247, %236, %225, %222, %220, %211, %186, %179, %175, %157, %153, %149, %138, %118, %107, %106, %93, %91, %88, %73, %64, %51, %50, %43, %39, %38, %9, %5
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #8, !dbg !2059
  ret void, !dbg !2059
}

; Function Attrs: optsize
declare void @cbuf_init(%struct._cbuffer*, i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @stack_run_loop_register(%struct.run_loop*, void (%struct.run_loop*)*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define internal void @__ble_thread_loop_handler(%struct.run_loop* nocapture readnone) #1 section ".bt_stack_code" !dbg !2060 {
  %2 = alloca [6 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %2, metadata !2063, metadata !DIExpression()), !dbg !2071
  %3 = alloca [2 x i16], align 2
  tail call void @llvm.dbg.declare(metadata [2 x i16]* %3, metadata !2077, metadata !DIExpression()), !dbg !2106
  %4 = alloca [5 x i32], align 4
  tail call void @llvm.dbg.declare(metadata [5 x i32]* %4, metadata !2079, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata %struct.run_loop* %0, metadata !2062, metadata !DIExpression()), !dbg !2108
  %5 = bitcast [2 x i16]* %3 to i8*, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8, !dbg !2109
  %6 = bitcast [5 x i32]* %4 to i8*, !dbg !2110
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #8, !dbg !2110
  %7 = tail call i32 @cbuf_get_data_size(%struct._cbuffer* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1)) #10, !dbg !2111
  %8 = icmp eq i32 %7, 0, !dbg !2113
  br i1 %8, label %9, label %11, !dbg !2113

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* @config_stack_modules, align 4, !tbaa !1177
  br label %237, !dbg !2113

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [2 x i16], [2 x i16]* %3, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i16], [2 x i16]* %3, i32 0, i32 1
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 1
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 2
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 0
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 3
  %19 = bitcast i32* %18 to i8**
  %20 = bitcast i32* %15 to i8**
  %21 = load i32, i32* @config_stack_modules, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  %24 = bitcast [5 x i32]* %4 to %struct.create_conn_param_t**
  %25 = bitcast i32* %15 to %struct.conn_update_param_t**
  %26 = bitcast [5 x i32]* %4 to i8**
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 4
  br label %28, !dbg !2113

; <label>:28:                                     ; preds = %38, %11
  %29 = call i32 @cbuf_read(%struct._cbuffer* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1), i8* nonnull %5, i32 4) #10, !dbg !2114
  %30 = load i16, i16* %13, align 2, !dbg !2115, !tbaa !1369
  %31 = icmp eq i16 %30, 0, !dbg !2115
  br i1 %31, label %36, label %32, !dbg !2117

; <label>:32:                                     ; preds = %28
  %33 = zext i16 %30 to i32, !dbg !2118
  %34 = shl nuw nsw i32 %33, 2, !dbg !2120
  %35 = call i32 @cbuf_read(%struct._cbuffer* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1), i8* nonnull %6, i32 %34) #10, !dbg !2121
  br label %36, !dbg !2122

; <label>:36:                                     ; preds = %32, %28
  %37 = load i16, i16* %12, align 2, !dbg !2123, !tbaa !1369
  switch i16 %37, label %38 [
    i16 1, label %41
    i16 2, label %45
    i16 17, label %52
    i16 3, label %62
    i16 4, label %66
    i16 21, label %70
    i16 12, label %73
    i16 22, label %78
    i16 13, label %85
    i16 6, label %93
    i16 8, label %95
    i16 27, label %100
    i16 5, label %106
    i16 15, label %114
    i16 16, label %120
    i16 18, label %123
    i16 19, label %137
    i16 128, label %144
    i16 23, label %149
    i16 29, label %153
    i16 130, label %155
    i16 11, label %169
    i16 20, label %183
    i16 64, label %191
    i16 65, label %194
    i16 67, label %197
    i16 68, label %200
    i16 69, label %212
    i16 70, label %216
    i16 71, label %220
    i16 72, label %224
    i16 73, label %227
    i16 74, label %230
    i16 75, label %233
  ], !dbg !2124

; <label>:38:                                     ; preds = %233, %230, %227, %224, %221, %220, %217, %216, %213, %212, %201, %200, %197, %194, %191, %184, %183, %170, %169, %156, %155, %154, %153, %150, %149, %145, %144, %138, %137, %131, %123, %121, %120, %115, %114, %110, %107, %106, %101, %100, %96, %95, %93, %86, %85, %79, %78, %74, %73, %70, %66, %62, %52, %45, %41, %36
  %39 = call i32 @cbuf_get_data_size(%struct._cbuffer* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 1)) #10, !dbg !2111
  %40 = icmp eq i32 %39, 0, !dbg !2113
  br i1 %40, label %236, label %28, !dbg !2113, !llvm.loop !2125

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %14, align 4, !dbg !2128, !tbaa !1177
  %43 = trunc i32 %42 to i8, !dbg !2128
  %44 = call i32 @ll_hci_adv_enable(i8 zeroext %43) #10, !dbg !2129
  br label %38, !dbg !2130

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %14, align 4, !dbg !2131, !tbaa !1177
  %47 = trunc i32 %46 to i16, !dbg !2131
  %48 = load i32, i32* %15, align 4, !dbg !2132, !tbaa !1177
  %49 = trunc i32 %48 to i8, !dbg !2132
  %50 = load i32, i32* %16, align 4, !dbg !2133, !tbaa !1177
  %51 = trunc i32 %50 to i8, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %17) #8, !dbg !2134
  call void @llvm.memset.p0i8.i32(i8* nonnull %17, i8 0, i32 6, i32 1, i1 false) #8, !dbg !2135
  call void @ll_hci_adv_set_params(i16 zeroext %47, i16 zeroext %47, i8 zeroext %49, i8 zeroext 0, i8* nonnull %17, i8 zeroext %51, i8 zeroext 0) #10, !dbg !2136
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %17) #8, !dbg !2137
  br label %38, !dbg !2138

; <label>:52:                                     ; preds = %36
  %53 = load i32, i32* %14, align 4, !dbg !2139, !tbaa !1177
  %54 = trunc i32 %53 to i16, !dbg !2139
  %55 = load i32, i32* %15, align 4, !dbg !2140, !tbaa !1177
  %56 = trunc i32 %55 to i8, !dbg !2140
  %57 = load i32, i32* %16, align 4, !dbg !2141, !tbaa !1177
  %58 = trunc i32 %57 to i8, !dbg !2141
  %59 = load i8*, i8** %19, align 4, !dbg !2142, !tbaa !1177
  %60 = load i8, i8* %59, align 1, !dbg !2143, !tbaa !1285
  %61 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !2153
  call void @ll_hci_adv_set_params(i16 zeroext %54, i16 zeroext %54, i8 zeroext %56, i8 zeroext %60, i8* %61, i8 zeroext %58, i8 zeroext 0) #10, !dbg !2154
  br label %38, !dbg !2155

; <label>:62:                                     ; preds = %36
  %63 = load i32, i32* %14, align 4, !dbg !2156, !tbaa !1177
  %64 = trunc i32 %63 to i8, !dbg !2156
  %65 = load i8*, i8** %20, align 4, !dbg !2157, !tbaa !1177
  call void @ll_hci_adv_set_data(i8 zeroext %64, i8* %65) #10, !dbg !2158
  br label %38, !dbg !2159

; <label>:66:                                     ; preds = %36
  %67 = load i32, i32* %14, align 4, !dbg !2160, !tbaa !1177
  %68 = trunc i32 %67 to i8, !dbg !2160
  %69 = load i8*, i8** %20, align 4, !dbg !2161, !tbaa !1177
  call void @ll_hci_adv_scan_response_set_data(i8 zeroext %68, i8* %69) #10, !dbg !2162
  br label %38, !dbg !2163

; <label>:70:                                     ; preds = %36
  %71 = load i32, i32* %14, align 4, !dbg !2164, !tbaa !1177
  %72 = load i32, i32* %15, align 4, !dbg !2165, !tbaa !1177
  call void @set_ll_hci_param_config(i32 %71, i32 %72) #10, !dbg !2166
  br label %38, !dbg !2167

; <label>:73:                                     ; preds = %36
  br i1 %23, label %38, label %74, !dbg !2168

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %14, align 4, !dbg !2169, !tbaa !1177
  %76 = trunc i32 %75 to i8, !dbg !2169
  %77 = call i32 @ll_hci_scan_enable(i8 zeroext %76, i8 zeroext 1) #10, !dbg !2172
  br label %38, !dbg !2173

; <label>:78:                                     ; preds = %36
  br i1 %23, label %38, label %79, !dbg !2174

; <label>:79:                                     ; preds = %78
  %80 = load i32, i32* %14, align 4, !dbg !2175, !tbaa !1177
  %81 = trunc i32 %80 to i8, !dbg !2175
  %82 = load i32, i32* %15, align 4, !dbg !2178, !tbaa !1177
  %83 = trunc i32 %82 to i8, !dbg !2178
  %84 = call i32 @ll_hci_scan_enable(i8 zeroext %81, i8 zeroext %83) #10, !dbg !2179
  br label %38, !dbg !2180

; <label>:85:                                     ; preds = %36
  br i1 %23, label %38, label %86, !dbg !2181

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %14, align 4, !dbg !2182, !tbaa !1177
  %88 = trunc i32 %87 to i8, !dbg !2182
  %89 = load i32, i32* %15, align 4, !dbg !2185, !tbaa !1177
  %90 = trunc i32 %89 to i16, !dbg !2185
  %91 = load i32, i32* %16, align 4, !dbg !2186, !tbaa !1177
  %92 = trunc i32 %91 to i16, !dbg !2186
  call void @ll_hci_scan_set_params(i8 zeroext %88, i16 zeroext %90, i16 zeroext %92) #10, !dbg !2187
  br label %38, !dbg !2188

; <label>:93:                                     ; preds = %36
  %94 = load i32, i32* %14, align 4, !dbg !2189, !tbaa !1177
  store i32 %94, i32* bitcast (void ()** getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 3) to i32*), align 4, !dbg !2190, !tbaa !2191
  br label %38, !dbg !2192

; <label>:95:                                     ; preds = %36
  br i1 %23, label %38, label %96, !dbg !2193

; <label>:96:                                     ; preds = %95
  %97 = call zeroext i16 @att_get_default_conn_handle() #10, !dbg !2194
  %98 = load i32, i32* %14, align 4, !dbg !2197, !tbaa !1177
  %99 = trunc i32 %98 to i16, !dbg !2197
  call void @att_send_set_mtu_size(i16 zeroext %97, i16 zeroext %99) #10, !dbg !2198
  br label %38, !dbg !2200

; <label>:100:                                    ; preds = %36
  br i1 %23, label %38, label %101, !dbg !2201

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %14, align 4, !dbg !2202, !tbaa !1177
  %103 = trunc i32 %102 to i16, !dbg !2202
  %104 = load i32, i32* %15, align 4, !dbg !2205, !tbaa !1177
  %105 = trunc i32 %104 to i16, !dbg !2205
  call void @att_send_set_mtu_size(i16 zeroext %103, i16 zeroext %105) #10, !dbg !2206
  br label %38, !dbg !2207

; <label>:106:                                    ; preds = %36
  br i1 %23, label %38, label %107, !dbg !2208

; <label>:107:                                    ; preds = %106
  %108 = load i32, i32* %14, align 4, !dbg !2209, !tbaa !1177
  %109 = icmp eq i32 %108, 0, !dbg !2209
  br i1 %109, label %38, label %110, !dbg !2213

; <label>:110:                                    ; preds = %107
  %111 = trunc i32 %108 to i16, !dbg !2214
  %112 = load i8, i8* @ble_disconnect_reason, align 1, !dbg !2216, !tbaa !1285
  %113 = call i32 @ll_hci_disconnect(i16 zeroext %111, i8 zeroext %112) #10, !dbg !2217
  br label %38, !dbg !2218

; <label>:114:                                    ; preds = %36
  br i1 %23, label %38, label %115, !dbg !2219

; <label>:115:                                    ; preds = %114
  %116 = load %struct.create_conn_param_t*, %struct.create_conn_param_t** %24, align 4, !dbg !2220, !tbaa !1177
  call void @llvm.dbg.value(metadata %struct.create_conn_param_t* %116, metadata !2081, metadata !DIExpression()), !dbg !2221
  %117 = bitcast %struct.create_conn_param_t* %116 to i8*, !dbg !2222
  %118 = getelementptr inbounds %struct.create_conn_param_t, %struct.create_conn_param_t* %116, i32 0, i32 3, !dbg !2223
  %119 = call i32 @ll_hci_create_conn(i8* %117, i8* %118) #10, !dbg !2224
  br label %38, !dbg !2225

; <label>:120:                                    ; preds = %36
  br i1 %23, label %38, label %121, !dbg !2226

; <label>:121:                                    ; preds = %120
  %122 = call i32 @ll_hci_create_conn_cancel() #10, !dbg !2227
  br label %38, !dbg !2230

; <label>:123:                                    ; preds = %36
  br i1 %23, label %38, label %124, !dbg !2231

; <label>:124:                                    ; preds = %123
  %125 = load i8, i8* @l2cap_debug_enable, align 1, !dbg !2232, !tbaa !1285
  %126 = icmp slt i8 %125, 0, !dbg !2232
  br i1 %126, label %127, label %131, !dbg !2236

; <label>:127:                                    ; preds = %124
  %128 = load i32, i32* %14, align 4, !dbg !2237, !tbaa !1177
  %129 = load i32, i32* %15, align 4, !dbg !2237, !tbaa !1177
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 %128, i32 %129) #10, !dbg !2237
  br label %131, !dbg !2237

; <label>:131:                                    ; preds = %127, %124
  %132 = load i32, i32* %14, align 4, !dbg !2239, !tbaa !1177
  %133 = trunc i32 %132 to i16, !dbg !2239
  %134 = load i32, i32* %15, align 4, !dbg !2240, !tbaa !1177
  %135 = trunc i32 %134 to i8, !dbg !2240
  %136 = call i32 @ll_hci_vendor_send_key_num(i16 zeroext %133, i8 zeroext %135) #10, !dbg !2241
  br label %38, !dbg !2242

; <label>:137:                                    ; preds = %36
  br i1 %23, label %38, label %138, !dbg !2243

; <label>:138:                                    ; preds = %137
  %139 = load i32, i32* %14, align 4, !dbg !2244, !tbaa !1177
  %140 = trunc i32 %139 to i16, !dbg !2244
  %141 = load i32, i32* %15, align 4, !dbg !2247, !tbaa !1177
  %142 = trunc i32 %141 to i16, !dbg !2247
  %143 = call i32 @ll_vendor_latency_hold_cnt(i16 zeroext %140, i16 zeroext %142) #10, !dbg !2248
  br label %38, !dbg !2249

; <label>:144:                                    ; preds = %36
  br i1 %23, label %38, label %145, !dbg !2250

; <label>:145:                                    ; preds = %144
  %146 = load i32, i32* %14, align 4, !dbg !2251, !tbaa !1177
  %147 = load i32, i32* %15, align 4, !dbg !2254, !tbaa !1177
  %148 = call i32 @user_client_search_profile_start(i32 %146, i32 %147) #10, !dbg !2255
  br label %38, !dbg !2256

; <label>:149:                                    ; preds = %36
  br i1 %23, label %38, label %150, !dbg !2257

; <label>:150:                                    ; preds = %149
  %151 = load i32, i32* %14, align 4, !dbg !2258, !tbaa !1177
  %152 = trunc i32 %151 to i16, !dbg !2258
  call void @att_server_send_request(i16 zeroext %152) #10, !dbg !2261
  br label %38, !dbg !2262

; <label>:153:                                    ; preds = %36
  br i1 %23, label %38, label %154, !dbg !2263

; <label>:154:                                    ; preds = %153
  call void @sm_cmd_request_resume(i32* nonnull %14) #10, !dbg !2264
  br label %38, !dbg !2267

; <label>:155:                                    ; preds = %36
  br i1 %23, label %38, label %156, !dbg !2268

; <label>:156:                                    ; preds = %155
  %157 = load %struct.conn_update_param_t*, %struct.conn_update_param_t** %25, align 4, !dbg !2269, !tbaa !1177
  call void @llvm.dbg.value(metadata %struct.conn_update_param_t* %157, metadata !2092, metadata !DIExpression()), !dbg !2270
  %158 = load i32, i32* %14, align 4, !dbg !2271, !tbaa !1177
  %159 = trunc i32 %158 to i16, !dbg !2272
  %160 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %157, i32 0, i32 0, !dbg !2273
  %161 = load i16, i16* %160, align 2, !dbg !2273, !tbaa !2274
  %162 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %157, i32 0, i32 1, !dbg !2276
  %163 = load i16, i16* %162, align 2, !dbg !2276, !tbaa !2277
  %164 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %157, i32 0, i32 2, !dbg !2278
  %165 = load i16, i16* %164, align 2, !dbg !2278, !tbaa !2279
  %166 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %157, i32 0, i32 3, !dbg !2280
  %167 = load i16, i16* %166, align 2, !dbg !2280, !tbaa !2281
  %168 = call i32 @ll_hci_connection_update(i16 zeroext %159, i16 zeroext %161, i16 zeroext %163, i16 zeroext %165, i16 zeroext %167, i16 zeroext 1, i16 zeroext 1) #10, !dbg !2282
  br label %38, !dbg !2283

; <label>:169:                                    ; preds = %36
  br i1 %23, label %38, label %170, !dbg !2284

; <label>:170:                                    ; preds = %169
  %171 = load %struct.conn_update_param_t*, %struct.conn_update_param_t** %25, align 4, !dbg !2285, !tbaa !1177
  call void @llvm.dbg.value(metadata %struct.conn_update_param_t* %171, metadata !2102, metadata !DIExpression()), !dbg !2286
  %172 = load i32, i32* %14, align 4, !dbg !2287, !tbaa !1177
  %173 = trunc i32 %172 to i16, !dbg !2288
  %174 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %171, i32 0, i32 0, !dbg !2289
  %175 = load i16, i16* %174, align 2, !dbg !2289, !tbaa !2274
  %176 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %171, i32 0, i32 1, !dbg !2290
  %177 = load i16, i16* %176, align 2, !dbg !2290, !tbaa !2277
  %178 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %171, i32 0, i32 2, !dbg !2291
  %179 = load i16, i16* %178, align 2, !dbg !2291, !tbaa !2279
  %180 = getelementptr inbounds %struct.conn_update_param_t, %struct.conn_update_param_t* %171, i32 0, i32 3, !dbg !2292
  %181 = load i16, i16* %180, align 2, !dbg !2292, !tbaa !2281
  %182 = call i32 @gap_request_connection_parameter_update(i16 zeroext %173, i16 zeroext %175, i16 zeroext %177, i16 zeroext %179, i16 zeroext %181) #10, !dbg !2293
  br label %38, !dbg !2294

; <label>:183:                                    ; preds = %36
  br i1 %23, label %38, label %184, !dbg !2295

; <label>:184:                                    ; preds = %183
  %185 = load i32, i32* %14, align 4, !dbg !2296, !tbaa !1177
  %186 = trunc i32 %185 to i16, !dbg !2296
  %187 = load i32, i32* %15, align 4, !dbg !2299, !tbaa !1177
  %188 = trunc i32 %187 to i16, !dbg !2299
  %189 = load i32, i32* %16, align 4, !dbg !2300, !tbaa !1177
  %190 = trunc i32 %189 to i16, !dbg !2300
  call void @ll_hci_set_data_length(i16 zeroext %186, i16 zeroext %188, i16 zeroext %190) #10, !dbg !2301
  br label %38, !dbg !2302

; <label>:191:                                    ; preds = %36
  %192 = load i8*, i8** %26, align 4, !dbg !2303, !tbaa !1177
  %193 = load i32, i32* %15, align 4, !dbg !2304, !tbaa !1177
  call void @ll_hci_set_ext_adv_params(i8* %192, i32 %193) #10, !dbg !2305
  br label %38, !dbg !2306

; <label>:194:                                    ; preds = %36
  %195 = load i8*, i8** %26, align 4, !dbg !2307, !tbaa !1177
  %196 = load i32, i32* %15, align 4, !dbg !2308, !tbaa !1177
  call void @ll_hci_set_ext_adv_data(i8* %195, i32 %196) #10, !dbg !2309
  br label %38, !dbg !2310

; <label>:197:                                    ; preds = %36
  %198 = load i8*, i8** %26, align 4, !dbg !2311, !tbaa !1177
  %199 = load i32, i32* %15, align 4, !dbg !2312, !tbaa !1177
  call void @ll_hci_set_ext_adv_enable(i8* %198, i32 %199) #10, !dbg !2313
  br label %38, !dbg !2314

; <label>:200:                                    ; preds = %36
  br i1 %23, label %38, label %201, !dbg !2315

; <label>:201:                                    ; preds = %200
  %202 = load i32, i32* %14, align 4, !dbg !2316, !tbaa !1177
  %203 = trunc i32 %202 to i16, !dbg !2316
  %204 = load i32, i32* %15, align 4, !dbg !2319, !tbaa !1177
  %205 = trunc i32 %204 to i8, !dbg !2319
  %206 = load i32, i32* %16, align 4, !dbg !2320, !tbaa !1177
  %207 = trunc i32 %206 to i8, !dbg !2320
  %208 = load i32, i32* %18, align 4, !dbg !2321, !tbaa !1177
  %209 = trunc i32 %208 to i8, !dbg !2321
  %210 = load i32, i32* %27, align 4, !dbg !2322, !tbaa !1177
  %211 = trunc i32 %210 to i16, !dbg !2322
  call void @ll_hci_set_phy(i16 zeroext %203, i8 zeroext %205, i8 zeroext %207, i8 zeroext %209, i16 zeroext %211) #10, !dbg !2323
  br label %38, !dbg !2324

; <label>:212:                                    ; preds = %36
  br i1 %23, label %38, label %213, !dbg !2325

; <label>:213:                                    ; preds = %212
  %214 = load i8*, i8** %26, align 4, !dbg !2326, !tbaa !1177
  %215 = load i32, i32* %15, align 4, !dbg !2329, !tbaa !1177
  call void @ll_hci_set_ext_scan_params(i8* %214, i32 %215) #10, !dbg !2330
  br label %38, !dbg !2331

; <label>:216:                                    ; preds = %36
  br i1 %23, label %38, label %217, !dbg !2332

; <label>:217:                                    ; preds = %216
  %218 = load i8*, i8** %26, align 4, !dbg !2333, !tbaa !1177
  %219 = load i32, i32* %15, align 4, !dbg !2336, !tbaa !1177
  call void @ll_hci_set_ext_scan_enable(i8* %218, i32 %219) #10, !dbg !2337
  br label %38, !dbg !2338

; <label>:220:                                    ; preds = %36
  br i1 %23, label %38, label %221, !dbg !2339

; <label>:221:                                    ; preds = %220
  %222 = load i8*, i8** %26, align 4, !dbg !2340, !tbaa !1177
  %223 = load i32, i32* %15, align 4, !dbg !2343, !tbaa !1177
  call void @ll_hci_ext_create_conn(i8* %222, i32 %223) #10, !dbg !2344
  br label %38, !dbg !2345

; <label>:224:                                    ; preds = %36
  %225 = load i8*, i8** %26, align 4, !dbg !2346, !tbaa !1177
  %226 = load i32, i32* %15, align 4, !dbg !2347, !tbaa !1177
  call void @ll_hci_set_periodic_adv_params(i8* %225, i32 %226) #10, !dbg !2348
  br label %38, !dbg !2349

; <label>:227:                                    ; preds = %36
  %228 = load i8*, i8** %26, align 4, !dbg !2350, !tbaa !1177
  %229 = load i32, i32* %15, align 4, !dbg !2351, !tbaa !1177
  call void @ll_hci_set_periodic_adv_data(i8* %228, i32 %229) #10, !dbg !2352
  br label %38, !dbg !2353

; <label>:230:                                    ; preds = %36
  %231 = load i8*, i8** %26, align 4, !dbg !2354, !tbaa !1177
  %232 = load i32, i32* %15, align 4, !dbg !2355, !tbaa !1177
  call void @ll_hci_set_periodic_adv_enable(i8* %231, i32 %232) #10, !dbg !2356
  br label %38, !dbg !2357

; <label>:233:                                    ; preds = %36
  %234 = load i8*, i8** %26, align 4, !dbg !2358, !tbaa !1177
  %235 = load i32, i32* %15, align 4, !dbg !2359, !tbaa !1177
  call void @ll_hci_periodic_adv_creat_sync(i8* %234, i32 %235) #10, !dbg !2360
  br label %38, !dbg !2361

; <label>:236:                                    ; preds = %38
  br label %237, !dbg !2362

; <label>:237:                                    ; preds = %236, %9
  %238 = phi i32 [ %10, %9 ], [ %21, %236 ], !dbg !2363
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #8, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8, !dbg !2362
  %239 = and i32 %238, 4, !dbg !2367
  %240 = icmp eq i32 %239, 0, !dbg !2367
  br i1 %240, label %242, label %241, !dbg !2369

; <label>:241:                                    ; preds = %237
  call void @att_send_schedule() #10, !dbg !2370
  br label %242, !dbg !2372

; <label>:242:                                    ; preds = %241, %237
  %243 = load void ()*, void ()** getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 3), align 4, !dbg !2373, !tbaa !2191
  %244 = icmp eq void ()* %243, null, !dbg !2375
  br i1 %244, label %246, label %245, !dbg !2376

; <label>:245:                                    ; preds = %242
  call void %243() #10, !dbg !2377
  br label %246, !dbg !2379

; <label>:246:                                    ; preds = %245, %242
  %247 = load volatile i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !2380, !tbaa !1408
  %248 = and i8 %247, -16, !dbg !2381
  %249 = icmp eq i8 %248, -96, !dbg !2382
  br i1 %249, label %250, label %275, !dbg !2383

; <label>:250:                                    ; preds = %246
  br i1 %240, label %258, label %251, !dbg !2384

; <label>:251:                                    ; preds = %250
  %252 = call i32 @le_hci_connection_links_empty() #10, !dbg !2385
  %253 = icmp eq i32 %252, 0, !dbg !2385
  br i1 %253, label %256, label %254, !dbg !2388

; <label>:254:                                    ; preds = %251
  %255 = load %struct.stack_le_pool_t*, %struct.stack_le_pool_t** getelementptr inbounds (%struct.btstack_comm_handle_t, %struct.btstack_comm_handle_t* @btstack_stack, i32 0, i32 1), align 4, !dbg !2389, !tbaa !1218
  call void @btstack_le_memory_exit(%struct.stack_le_pool_t* %255) #10, !dbg !2391
  br label %258, !dbg !2392

; <label>:256:                                    ; preds = %251
  %257 = call i32 @putchar(i32 87) #11, !dbg !2393
  br label %275, !dbg !2395

; <label>:258:                                    ; preds = %254, %250
  %259 = load volatile i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !2396, !tbaa !1408
  %260 = and i8 %259, 15, !dbg !2398
  %261 = icmp eq i8 %260, 0, !dbg !2398
  br i1 %261, label %269, label %262, !dbg !2399

; <label>:262:                                    ; preds = %258
  %263 = load i8, i8* @ble_debug_enable, align 1, !dbg !2400, !tbaa !1285
  %264 = and i8 %263, 1, !dbg !2400
  %265 = icmp eq i8 %264, 0, !dbg !2400
  br i1 %265, label %268, label %266, !dbg !2403

; <label>:266:                                    ; preds = %262
  %267 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.57, i32 0, i32 0)), !dbg !2404
  br label %268, !dbg !2404

; <label>:268:                                    ; preds = %266, %262
  call void @ll_hci_destory() #10, !dbg !2406
  br label %269, !dbg !2407

; <label>:269:                                    ; preds = %268, %258
  store volatile i8 0, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 4), align 4, !dbg !2408, !tbaa !1408
  %270 = load i8, i8* @ble_debug_enable, align 1, !dbg !2409, !tbaa !1285
  %271 = and i8 %270, 1, !dbg !2409
  %272 = icmp eq i8 %271, 0, !dbg !2409
  br i1 %272, label %275, label %273, !dbg !2411

; <label>:273:                                    ; preds = %269
  %274 = call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str.56, i32 0, i32 0)), !dbg !2412
  br label %275, !dbg !2412

; <label>:275:                                    ; preds = %273, %269, %256, %246
  ret void, !dbg !2414
}

; Function Attrs: optsize
declare void @att_global_info_init() local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden void @ble_stack_gatt_role(i8 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !2415 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2417, metadata !DIExpression()), !dbg !2418
  %2 = load i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 5), align 1, !dbg !2419
  %3 = and i8 %0, 7, !dbg !2419
  %4 = and i8 %2, -8, !dbg !2419
  %5 = or i8 %4, %3, !dbg !2419
  store i8 %5, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 5), align 1, !dbg !2419
  ret void, !dbg !2420
}

; Function Attrs: norecurse nounwind optsize readonly
define hidden zeroext i8 @get_ble_gatt_role() local_unnamed_addr #9 section ".bt_stack_code" !dbg !2421 {
  %1 = load i8, i8* getelementptr inbounds (%struct.btstack_ctrl, %struct.btstack_ctrl* @btstack_global_info, i32 0, i32 0, i32 5), align 1, !dbg !2422
  %2 = and i8 %1, 7, !dbg !2422
  ret i8 %2, !dbg !2423
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_vendor_random_address_generate(i8*, i8 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !2424 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2429, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 %1, metadata !2430, metadata !DIExpression()), !dbg !2435
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0, !dbg !2436
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2436
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !2431, metadata !DIExpression()), !dbg !2437
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2438
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !2433, metadata !DIExpression()), !dbg !2439
  %7 = icmp eq i8 %1, 3, !dbg !2440
  br i1 %7, label %8, label %18, !dbg !2442

; <label>:8:                                      ; preds = %2
  %9 = call zeroext i8 @sm_get_local_irk(i8* nonnull %6) #10, !dbg !2443
  %10 = icmp eq i8 %9, 0, !dbg !2443
  br i1 %10, label %11, label %17, !dbg !2446

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* @ble_debug_enable, align 1, !dbg !2447, !tbaa !1285
  %13 = and i8 %12, 1, !dbg !2447
  %14 = icmp eq i8 %13, 0, !dbg !2447
  br i1 %14, label %38, label %15, !dbg !2450

; <label>:15:                                     ; preds = %11
  %16 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.61, i32 0, i32 0)), !dbg !2451
  br label %38, !dbg !2451

; <label>:17:                                     ; preds = %8
  call void @reverse_128(i8* nonnull %6, i8* nonnull %5) #10, !dbg !2453
  br label %18, !dbg !2454

; <label>:18:                                     ; preds = %17, %2
  call void @ll_vendor_device_address_generate(i8* %0, i8* nonnull %5, i8 zeroext %1) #10, !dbg !2455
  %19 = load i8, i8* @ble_debug_enable, align 1, !dbg !2456, !tbaa !1285
  %20 = and i8 %19, 1, !dbg !2456
  %21 = icmp eq i8 %20, 0, !dbg !2456
  br i1 %21, label %25, label %22, !dbg !2458

; <label>:22:                                     ; preds = %18
  %23 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.60, i32 0, i32 0)), !dbg !2459
  %24 = load i8, i8* @ble_debug_enable, align 1, !tbaa !1285
  br label %25, !dbg !2459

; <label>:25:                                     ; preds = %22, %18
  %26 = phi i8 [ %19, %18 ], [ %24, %22 ], !dbg !2461
  %27 = and i8 %26, 32, !dbg !2461
  %28 = icmp eq i8 %27, 0, !dbg !2461
  br i1 %28, label %32, label %29, !dbg !2463

; <label>:29:                                     ; preds = %25
  %30 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.62, i32 0, i32 0)), !dbg !2464
  call void @put_buf(i8* %0, i32 6) #10, !dbg !2467
  %31 = load i8, i8* @ble_debug_enable, align 1, !tbaa !1285
  br label %32, !dbg !2464

; <label>:32:                                     ; preds = %29, %25
  %33 = phi i8 [ %26, %25 ], [ %31, %29 ], !dbg !2469
  %34 = and i8 %33, 32, !dbg !2469
  %35 = icmp eq i8 %34, 0, !dbg !2469
  br i1 %35, label %38, label %36, !dbg !2471

; <label>:36:                                     ; preds = %32
  %37 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.62, i32 0, i32 0)), !dbg !2472
  call void @put_buf(i8* nonnull %6, i32 16) #10, !dbg !2475
  br label %38, !dbg !2472

; <label>:38:                                     ; preds = %36, %32, %15, %11
  %39 = phi i8 [ 0, %11 ], [ 0, %15 ], [ 1, %32 ], [ 1, %36 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2477
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2477
  ret i8 %39, !dbg !2477
}

; Function Attrs: optsize
declare zeroext i8 @sm_get_local_irk(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @reverse_128(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_vendor_device_address_generate(i8*, i8*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @put_buf(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize
define hidden zeroext i8 @ble_set_make_random_address(i8 zeroext) local_unnamed_addr #1 section ".bt_stack_code" !dbg !2478 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !2482, metadata !DIExpression()), !dbg !2484
  %3 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 0, !dbg !2485
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %3) #8, !dbg !2485
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %2, metadata !2483, metadata !DIExpression()), !dbg !2486
  %4 = zext i8 %0 to i32, !dbg !2487
  %5 = add i8 %0, -1, !dbg !2489
  %6 = icmp ugt i8 %5, 2, !dbg !2489
  br i1 %6, label %28, label %7, !dbg !2489

; <label>:7:                                      ; preds = %1
  %8 = call zeroext i8 @ble_vendor_random_address_generate(i8* nonnull %3, i8 zeroext %0) #11, !dbg !2490
  %9 = icmp eq i8 %8, 0, !dbg !2490
  %10 = icmp eq i8 %0, 3, !dbg !2492
  %11 = and i1 %10, %9, !dbg !2495
  br i1 %11, label %12, label %13, !dbg !2495

; <label>:12:                                     ; preds = %7
  call void @sm_set_make_resolvable_address(i8 zeroext 1) #10, !dbg !2496
  br label %28, !dbg !2498

; <label>:13:                                     ; preds = %7
  %14 = call i32 (i32, i32, ...) @ble_user_cmd_prepare(i32 21, i32 2, i32 0, i32 %4) #11, !dbg !2499
  %15 = call i32 @le_controller_set_random_mac(i8* nonnull %3) #10, !dbg !2500
  %16 = load i8, i8* @ble_debug_enable, align 1, !dbg !2501, !tbaa !1285
  %17 = and i8 %16, 1, !dbg !2501
  %18 = icmp eq i8 %17, 0, !dbg !2501
  br i1 %18, label %22, label %19, !dbg !2503

; <label>:19:                                     ; preds = %13
  %20 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.63, i32 0, i32 0)), !dbg !2504
  %21 = load i8, i8* @ble_debug_enable, align 1, !tbaa !1285
  br label %22, !dbg !2504

; <label>:22:                                     ; preds = %19, %13
  %23 = phi i8 [ %16, %13 ], [ %21, %19 ], !dbg !2506
  %24 = and i8 %23, 32, !dbg !2506
  %25 = icmp eq i8 %24, 0, !dbg !2506
  br i1 %25, label %28, label %26, !dbg !2508

; <label>:26:                                     ; preds = %22
  %27 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.62, i32 0, i32 0)), !dbg !2509
  call void @put_buf(i8* nonnull %3, i32 6) #10, !dbg !2512
  br label %28, !dbg !2509

; <label>:28:                                     ; preds = %26, %22, %12, %1
  %29 = phi i8 [ 1, %12 ], [ 0, %1 ], [ 1, %22 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %3) #8, !dbg !2514
  ret i8 %29, !dbg !2514
}

; Function Attrs: optsize
declare void @sm_set_make_resolvable_address(i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @le_controller_set_random_mac(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @p33_soft_reset() local_unnamed_addr #3

; Function Attrs: optsize
declare %struct.database_file* @open_remote_db_file_opt(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remote_device_db_init_opt(%struct.database_file*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_bt_vm_interface(i32, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @bt_vm_interface() local_unnamed_addr #3

; Function Attrs: optsize
declare void @rfcomm_init(%struct.rfcomm_stack_t*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sdp_send_cmd_iotl(i8*, i32, i32) #3

; Function Attrs: optsize
declare void @sdp_init(%struct.sdp_stack_t*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sdp_master_init(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @spp_send_cmd_ioctrl(%struct.spp_ioctrl_str*) #3

; Function Attrs: optsize
declare void @spp_handl_init(%struct.spp_profile_t*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @hfp_send_cmd_io_ctrl(%struct.hfp_ioctrl_str*) #3

; Function Attrs: optsize
declare void @hfp_profile_init(%struct.hfp_stack_t*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @hid_send_cmd_ioctrl(i8*, i32) #3

; Function Attrs: optsize
declare void @hid_init(%struct.hid_handl*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @tws_le_acc_generation_init() local_unnamed_addr #3

; Function Attrs: optsize
declare void @get_remote_device_info_from_vm() local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @b_create_bt_new_conn(i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_connectiong_mac_addr(i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bt_event_update_to_user(i8*, i32, i8 zeroext, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @aec_sco_connection_start(i8 zeroext, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @free_conn_for_addr(i8*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bt_flip_addr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i8* @bt_get_emitter_pin_code(i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @user_send_cmd_prepare(i32, i16 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @aec_sco_connection_stop(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_remote_test_flag(i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tws_api_detach(i32) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @get_remote_test_flag(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_bt_current_status(i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @profile_function_status_handle_register(void (i8*, i32, i32)*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_profile_function_status(i8*, i32, i32) #3

; Function Attrs: optsize
declare void @profile_channels_status_handle_register(void (i8*, i32, i32, i8)*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @updata_profile_channels_status(i8*, i32, i32, i8 zeroext) #3

; Function Attrs: optsize
declare void @att_send_schedule() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @le_hci_connection_links_empty() local_unnamed_addr #3

; Function Attrs: optsize
declare void @btstack_le_memory_exit(%struct.stack_le_pool_t*) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ll_hci_destory() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cbuf_read(%struct._cbuffer*, i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_hci_adv_enable(i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_adv_set_data(i8 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_adv_scan_response_set_data(i8 zeroext, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_hci_scan_enable(i8 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_scan_set_params(i8 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @att_send_set_mtu_size(i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_hci_disconnect(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_hci_create_conn(i8*, i8*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_hci_create_conn_cancel() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_hci_vendor_send_key_num(i16 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_vendor_latency_hold_cnt(i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @user_client_search_profile_start(i32, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @att_server_send_request(i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sm_cmd_request_resume(i32*) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ll_hci_connection_update(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @gap_request_connection_parameter_update(i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_data_length(i16 zeroext, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_ext_adv_params(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_ext_adv_data(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_ext_adv_enable(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_phy(i16 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_ext_scan_params(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_ext_scan_enable(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_ext_create_conn(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_periodic_adv_params(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_periodic_adv_data(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_set_periodic_adv_enable(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_periodic_adv_creat_sync(i8*, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ll_hci_adv_set_params(i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i8*, i8 zeroext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { norecurse nounwind optsize readnone "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind optsize "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { norecurse nounwind optsize readonly "allow-nullptr-deref" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+no-constpool" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1154, !1155}
!llvm.ident = !{!1156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "app_info_debug_enable", scope: !2, file: !1153, line: 190, type: !507, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !498, globals: !696)
!3 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/User/common/btstack_main.c", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!4 = !{!5, !17, !63, !69, !77, !85, !185, !192, !198, !205, !263, !269, !273, !420, !428, !435, !445}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 89, size: 32, elements: !7)
!6 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/le/ble_api.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16}
!8 = !DIEnumerator(name: "BLE_CMD_RET_SUCESS", value: 0)
!9 = !DIEnumerator(name: "BLE_CMD_RET_BUSY", value: -100)
!10 = !DIEnumerator(name: "BLE_CMD_PARAM_OVERFLOW", value: -99)
!11 = !DIEnumerator(name: "BLE_CMD_OPT_FAIL", value: -98)
!12 = !DIEnumerator(name: "BLE_BUFFER_FULL", value: -97)
!13 = !DIEnumerator(name: "BLE_BUFFER_ERROR", value: -96)
!14 = !DIEnumerator(name: "BLE_CMD_PARAM_ERROR", value: -95)
!15 = !DIEnumerator(name: "BLE_CMD_STACK_NOT_RUN", value: -94)
!16 = !DIEnumerator(name: "BLE_CMD_CCC_FAIL", value: -93)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, size: 32, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!19 = !DIEnumerator(name: "BLE_CMD_ADV_ENABLE", value: 1)
!20 = !DIEnumerator(name: "BLE_CMD_ADV_PARAM", value: 2)
!21 = !DIEnumerator(name: "BLE_CMD_ADV_DATA", value: 3)
!22 = !DIEnumerator(name: "BLE_CMD_RSP_DATA", value: 4)
!23 = !DIEnumerator(name: "BLE_CMD_DISCONNECT", value: 5)
!24 = !DIEnumerator(name: "BLE_CMD_REGIEST_THREAD", value: 6)
!25 = !DIEnumerator(name: "BLE_CMD_ATT_SEND_INIT", value: 7)
!26 = !DIEnumerator(name: "BLE_CMD_ATT_MTU_SIZE", value: 8)
!27 = !DIEnumerator(name: "BLE_CMD_ATT_VAILD_LEN", value: 9)
!28 = !DIEnumerator(name: "BLE_CMD_ATT_SEND_DATA", value: 10)
!29 = !DIEnumerator(name: "BLE_CMD_REQ_CONN_PARAM_UPDATE", value: 11)
!30 = !DIEnumerator(name: "BLE_CMD_SCAN_ENABLE", value: 12)
!31 = !DIEnumerator(name: "BLE_CMD_SCAN_PARAM", value: 13)
!32 = !DIEnumerator(name: "BLE_CMD_STACK_EXIT", value: 14)
!33 = !DIEnumerator(name: "BLE_CMD_CREATE_CONN", value: 15)
!34 = !DIEnumerator(name: "BLE_CMD_CREATE_CONN_CANCEL", value: 16)
!35 = !DIEnumerator(name: "BLE_CMD_ADV_PARAM_EXT", value: 17)
!36 = !DIEnumerator(name: "BLE_CMD_SEND_TEST_KEY_NUM", value: 18)
!37 = !DIEnumerator(name: "BLE_CMD_LATENCY_HOLD_CNT", value: 19)
!38 = !DIEnumerator(name: "BLE_CMD_SET_DATA_LENGTH", value: 20)
!39 = !DIEnumerator(name: "BLE_CMD_SET_HCI_CFG", value: 21)
!40 = !DIEnumerator(name: "BLE_CMD_SCAN_ENABLE2", value: 22)
!41 = !DIEnumerator(name: "BLE_CMD_ATT_SERVER_REQ_RESUME", value: 23)
!42 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SEND_INIT", value: 24)
!43 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SET_CONN_HANDLE", value: 25)
!44 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_SEND_DATA", value: 26)
!45 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_MTU_SIZE", value: 27)
!46 = !DIEnumerator(name: "BLE_CMD_MULTI_ATT_VAILD_LEN", value: 28)
!47 = !DIEnumerator(name: "BLE_CMD_SM_REQ_RESUME", value: 29)
!48 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_PARAM", value: 64)
!49 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_DATA", value: 65)
!50 = !DIEnumerator(name: "BLE_CMD_EXT_RSP_DATA", value: 66)
!51 = !DIEnumerator(name: "BLE_CMD_EXT_ADV_ENABLE", value: 67)
!52 = !DIEnumerator(name: "BLE_CMD_SET_PHY", value: 68)
!53 = !DIEnumerator(name: "BLE_CMD_EXT_SCAN_PARAM", value: 69)
!54 = !DIEnumerator(name: "BLE_CMD_EXT_SCAN_ENABLE", value: 70)
!55 = !DIEnumerator(name: "BLE_CMD_EXT_CREATE_CONN", value: 71)
!56 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_PARAM", value: 72)
!57 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_DATA", value: 73)
!58 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_ENABLE", value: 74)
!59 = !DIEnumerator(name: "BLE_CMD_PERIODIC_ADV_CREAT_SYNC", value: 75)
!60 = !DIEnumerator(name: "BLE_CMD_SEARCH_PROFILE", value: 128)
!61 = !DIEnumerator(name: "BLE_CMD_WRITE_CCC", value: 129)
!62 = !DIEnumerator(name: "BLE_CMD_ONNN_PARAM_UPDATA", value: 130)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 148, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "HCI_CFG_OWN_ADDRESS_TYPE", value: 0)
!66 = !DIEnumerator(name: "HCI_CFG_ADV_FILTER_POLICY", value: 1)
!67 = !DIEnumerator(name: "HCI_CFG_SCAN_FILTER_POLICY", value: 2)
!68 = !DIEnumerator(name: "HCI_CFG_INITIATOR_FILTER_POLICY", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 1469, size: 32, elements: !71)
!70 = !DIFile(filename: "../btcommon/hci_cmds.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_PUBLIC", value: 0)
!73 = !DIEnumerator(name: "BD_ADDR_TYPE_LE_RANDOM", value: 1)
!74 = !DIEnumerator(name: "BD_ADDR_TYPE_SCO", value: 254)
!75 = !DIEnumerator(name: "BD_ADDR_TYPE_CLASSIC", value: 255)
!76 = !DIEnumerator(name: "BD_ADDR_TYPE_UNKNOWN", value: 254)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 246, size: 32, elements: !79)
!78 = !DIFile(filename: "../btstack/Host/include/common/hci.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_NONE", value: 0)
!81 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_REQUEST", value: 1)
!82 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_SEND_RESPONSE", value: 2)
!83 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_CHANGE_HCI_CON_PARAMETERS", value: 3)
!84 = !DIEnumerator(name: "CON_PARAMETER_UPDATE_DENY", value: 4)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 295, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!87 = !DIEnumerator(name: "SM_GENERAL_IDLE", value: 0)
!88 = !DIEnumerator(name: "SM_GENERAL_SEND_PAIRING_FAILED", value: 1)
!89 = !DIEnumerator(name: "SM_GENERAL_TIMEOUT", value: 2)
!90 = !DIEnumerator(name: "SM_PH1_W4_USER_RESPONSE", value: 3)
!91 = !DIEnumerator(name: "SM_PH2_GET_RANDOM_TK", value: 4)
!92 = !DIEnumerator(name: "SM_PH2_W4_RANDOM_TK", value: 5)
!93 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_A", value: 6)
!94 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_A", value: 7)
!95 = !DIEnumerator(name: "SM_PH2_C1_GET_RANDOM_B", value: 8)
!96 = !DIEnumerator(name: "SM_PH2_C1_W4_RANDOM_B", value: 9)
!97 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_A", value: 10)
!98 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_A", value: 11)
!99 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_B", value: 12)
!100 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_B", value: 13)
!101 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_C", value: 14)
!102 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_C", value: 15)
!103 = !DIEnumerator(name: "SM_PH2_C1_GET_ENC_D", value: 16)
!104 = !DIEnumerator(name: "SM_PH2_C1_W4_ENC_D", value: 17)
!105 = !DIEnumerator(name: "SM_PH2_C1_SEND_PAIRING_CONFIRM", value: 18)
!106 = !DIEnumerator(name: "SM_PH2_SEND_PAIRING_RANDOM", value: 19)
!107 = !DIEnumerator(name: "SM_PH2_CALC_STK", value: 20)
!108 = !DIEnumerator(name: "SM_PH2_W4_STK", value: 21)
!109 = !DIEnumerator(name: "SM_PH2_W4_CONNECTION_ENCRYPTED", value: 22)
!110 = !DIEnumerator(name: "SM_PH3_GET_RANDOM", value: 23)
!111 = !DIEnumerator(name: "SM_PH3_W4_RANDOM", value: 24)
!112 = !DIEnumerator(name: "SM_PH3_GET_DIV", value: 25)
!113 = !DIEnumerator(name: "SM_PH3_W4_DIV", value: 26)
!114 = !DIEnumerator(name: "SM_PH3_Y_GET_ENC", value: 27)
!115 = !DIEnumerator(name: "SM_PH3_Y_W4_ENC", value: 28)
!116 = !DIEnumerator(name: "SM_PH3_LTK_GET_ENC", value: 29)
!117 = !DIEnumerator(name: "SM_PH3_LTK_W4_ENC", value: 30)
!118 = !DIEnumerator(name: "SM_PH3_CSRK_GET_ENC", value: 31)
!119 = !DIEnumerator(name: "SM_PH3_CSRK_W4_ENC", value: 32)
!120 = !DIEnumerator(name: "SM_PH3_DISTRIBUTE_KEYS", value: 33)
!121 = !DIEnumerator(name: "SM_PH3_RECEIVE_KEYS", value: 34)
!122 = !DIEnumerator(name: "SM_RESPONDER_IDLE", value: 35)
!123 = !DIEnumerator(name: "SM_RESPONDER_SEND_SECURITY_REQUEST", value: 36)
!124 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_REQUEST", value: 37)
!125 = !DIEnumerator(name: "SM_RESPONDER_PH0_RECEIVED_LTK_W4_IRK", value: 38)
!126 = !DIEnumerator(name: "SM_RESPONDER_PH0_SEND_LTK_REQUESTED_NEGATIVE_REPLY", value: 39)
!127 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_REQUEST", value: 40)
!128 = !DIEnumerator(name: "SM_RESPONDER_PH1_PAIRING_REQUEST_RECEIVED", value: 41)
!129 = !DIEnumerator(name: "SM_RESPONDER_PH1_SEND_PAIRING_RESPONSE", value: 42)
!130 = !DIEnumerator(name: "SM_RESPONDER_PH1_W4_PAIRING_CONFIRM", value: 43)
!131 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_PAIRING_RANDOM", value: 44)
!132 = !DIEnumerator(name: "SM_RESPONDER_PH2_W4_LTK_REQUEST", value: 45)
!133 = !DIEnumerator(name: "SM_RESPONDER_PH2_SEND_LTK_REPLY", value: 46)
!134 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_GET_ENC", value: 47)
!135 = !DIEnumerator(name: "SM_RESPONDER_PH4_Y_W4_ENC", value: 48)
!136 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_GET_ENC", value: 49)
!137 = !DIEnumerator(name: "SM_RESPONDER_PH4_LTK_W4_ENC", value: 50)
!138 = !DIEnumerator(name: "SM_RESPONDER_PH4_SEND_LTK_REPLY", value: 51)
!139 = !DIEnumerator(name: "SM_INITIATOR_CONNECTED", value: 52)
!140 = !DIEnumerator(name: "SM_INITIATOR_PH0_HAS_LTK", value: 53)
!141 = !DIEnumerator(name: "SM_INITIATOR_PH0_SEND_START_ENCRYPTION", value: 54)
!142 = !DIEnumerator(name: "SM_INITIATOR_PH0_W4_CONNECTION_ENCRYPTED", value: 55)
!143 = !DIEnumerator(name: "SM_INITIATOR_PH1_W2_SEND_PAIRING_REQUEST", value: 56)
!144 = !DIEnumerator(name: "SM_INITIATOR_PH1_SEND_PAIRING_REQUEST", value: 57)
!145 = !DIEnumerator(name: "SM_INITIATOR_PH1_W4_PAIRING_RESPONSE", value: 58)
!146 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_CONFIRM", value: 59)
!147 = !DIEnumerator(name: "SM_INITIATOR_PH2_W4_PAIRING_RANDOM", value: 60)
!148 = !DIEnumerator(name: "SM_INITIATOR_PH3_SEND_START_ENCRYPTION", value: 61)
!149 = !DIEnumerator(name: "SM_SC_RECEIVED_LTK_REQUEST", value: 62)
!150 = !DIEnumerator(name: "SM_SC_SEND_PUBLIC_KEY_COMMAND", value: 63)
!151 = !DIEnumerator(name: "SM_SC_W4_PUBLIC_KEY_COMMAND", value: 64)
!152 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_A", value: 65)
!153 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_A", value: 66)
!154 = !DIEnumerator(name: "SM_SC_W2_GET_RANDOM_B", value: 67)
!155 = !DIEnumerator(name: "SM_SC_W4_GET_RANDOM_B", value: 68)
!156 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CONFIRMATION", value: 69)
!157 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CONFIRMATION", value: 70)
!158 = !DIEnumerator(name: "SM_SC_SEND_CONFIRMATION", value: 71)
!159 = !DIEnumerator(name: "SM_SC_W2_CMAC_FOR_CHECK_CONFIRMATION", value: 72)
!160 = !DIEnumerator(name: "SM_SC_W4_CMAC_FOR_CHECK_CONFIRMATION", value: 73)
!161 = !DIEnumerator(name: "SM_SC_W4_CONFIRMATION", value: 74)
!162 = !DIEnumerator(name: "SM_SC_SEND_PAIRING_RANDOM", value: 75)
!163 = !DIEnumerator(name: "SM_SC_W4_PAIRING_RANDOM", value: 76)
!164 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_G2", value: 77)
!165 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_G2", value: 78)
!166 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_DHKEY", value: 79)
!167 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_SALT", value: 80)
!168 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_SALT", value: 81)
!169 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_MACKEY", value: 82)
!170 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_MACKEY", value: 83)
!171 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F5_LTK", value: 84)
!172 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F5_LTK", value: 85)
!173 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_FOR_DHKEY_CHECK", value: 86)
!174 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_FOR_DHKEY_CHECK", value: 87)
!175 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 88)
!176 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_F6_TO_VERIFY_DHKEY_CHECK", value: 89)
!177 = !DIEnumerator(name: "SM_SC_W4_USER_RESPONSE", value: 90)
!178 = !DIEnumerator(name: "SM_SC_SEND_DHKEY_CHECK_COMMAND", value: 91)
!179 = !DIEnumerator(name: "SM_SC_W4_DHKEY_CHECK_COMMAND", value: 92)
!180 = !DIEnumerator(name: "SM_SC_W4_LTK_REQUEST_SC", value: 93)
!181 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_ILK", value: 94)
!182 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_ILK", value: 95)
!183 = !DIEnumerator(name: "SM_SC_W2_CALCULATE_H6_BR_EDR_LINK_KEY", value: 96)
!184 = !DIEnumerator(name: "SM_SC_W4_CALCULATE_H6_BR_EDR_LINK_KEY", value: 97)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 436, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIEnumerator(name: "IRK_LOOKUP_IDLE", value: 0)
!188 = !DIEnumerator(name: "IRK_LOOKUP_W4_READY", value: 1)
!189 = !DIEnumerator(name: "IRK_LOOKUP_STARTED", value: 2)
!190 = !DIEnumerator(name: "IRK_LOOKUP_SUCCEEDED", value: 3)
!191 = !DIEnumerator(name: "IRK_LOOKUP_FAILED", value: 4)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 445, size: 32, elements: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DIEnumerator(name: "AUTHORIZATION_UNKNOWN", value: 0)
!195 = !DIEnumerator(name: "AUTHORIZATION_PENDING", value: 1)
!196 = !DIEnumerator(name: "AUTHORIZATION_DECLINED", value: 2)
!197 = !DIEnumerator(name: "AUTHORIZATION_GRANTED", value: 3)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !199, line: 157, size: 32, elements: !200)
!199 = !DIFile(filename: "../btstack/Protocol/include/ble/att_server.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!200 = !{!201, !202, !203, !204}
!201 = !DIEnumerator(name: "ATT_SERVER_IDLE", value: 0)
!202 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED", value: 1)
!203 = !DIEnumerator(name: "ATT_SERVER_W4_SIGNED_WRITE_VALIDATION", value: 2)
!204 = !DIEnumerator(name: "ATT_SERVER_REQUEST_RECEIVED_AND_VALIDATED", value: 3)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 49, size: 32, elements: !207)
!206 = !DIFile(filename: "../btstack/Protocol/include/ble/gatt_client.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!208 = !DIEnumerator(name: "P_READY", value: 0)
!209 = !DIEnumerator(name: "P_W2_SEND_SERVICE_QUERY", value: 1)
!210 = !DIEnumerator(name: "P_W4_SERVICE_QUERY_RESULT", value: 2)
!211 = !DIEnumerator(name: "P_W2_SEND_SERVICE_WITH_UUID_QUERY", value: 3)
!212 = !DIEnumerator(name: "P_W4_SERVICE_WITH_UUID_RESULT", value: 4)
!213 = !DIEnumerator(name: "P_W2_SEND_ALL_CHARACTERISTICS_OF_SERVICE_QUERY", value: 5)
!214 = !DIEnumerator(name: "P_W4_ALL_CHARACTERISTICS_OF_SERVICE_QUERY_RESULT", value: 6)
!215 = !DIEnumerator(name: "P_W2_SEND_CHARACTERISTIC_WITH_UUID_QUERY", value: 7)
!216 = !DIEnumerator(name: "P_W4_CHARACTERISTIC_WITH_UUID_QUERY_RESULT", value: 8)
!217 = !DIEnumerator(name: "P_W2_SEND_ALL_CHARACTERISTIC_DESCRIPTORS_QUERY", value: 9)
!218 = !DIEnumerator(name: "P_W4_ALL_CHARACTERISTIC_DESCRIPTORS_QUERY_RESULT", value: 10)
!219 = !DIEnumerator(name: "P_W2_SEND_INCLUDED_SERVICE_QUERY", value: 11)
!220 = !DIEnumerator(name: "P_W4_INCLUDED_SERVICE_QUERY_RESULT", value: 12)
!221 = !DIEnumerator(name: "P_W2_SEND_INCLUDED_SERVICE_WITH_UUID_QUERY", value: 13)
!222 = !DIEnumerator(name: "P_W4_INCLUDED_SERVICE_UUID_WITH_QUERY_RESULT", value: 14)
!223 = !DIEnumerator(name: "P_W2_SEND_READ_CHARACTERISTIC_VALUE_QUERY", value: 15)
!224 = !DIEnumerator(name: "P_W4_READ_CHARACTERISTIC_VALUE_RESULT", value: 16)
!225 = !DIEnumerator(name: "P_W2_SEND_READ_BLOB_QUERY", value: 17)
!226 = !DIEnumerator(name: "P_W4_READ_BLOB_RESULT", value: 18)
!227 = !DIEnumerator(name: "P_W2_SEND_READ_BY_TYPE_REQUEST", value: 19)
!228 = !DIEnumerator(name: "P_W4_READ_BY_TYPE_RESPONSE", value: 20)
!229 = !DIEnumerator(name: "P_W2_SEND_READ_MULTIPLE_REQUEST", value: 21)
!230 = !DIEnumerator(name: "P_W4_READ_MULTIPLE_RESPONSE", value: 22)
!231 = !DIEnumerator(name: "P_W2_SEND_WRITE_CHARACTERISTIC_VALUE", value: 23)
!232 = !DIEnumerator(name: "P_W4_WRITE_CHARACTERISTIC_VALUE_RESULT", value: 24)
!233 = !DIEnumerator(name: "P_W2_PREPARE_WRITE", value: 25)
!234 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_RESULT", value: 26)
!235 = !DIEnumerator(name: "P_W2_PREPARE_RELIABLE_WRITE", value: 27)
!236 = !DIEnumerator(name: "P_W4_PREPARE_RELIABLE_WRITE_RESULT", value: 28)
!237 = !DIEnumerator(name: "P_W2_EXECUTE_PREPARED_WRITE", value: 29)
!238 = !DIEnumerator(name: "P_W4_EXECUTE_PREPARED_WRITE_RESULT", value: 30)
!239 = !DIEnumerator(name: "P_W2_CANCEL_PREPARED_WRITE", value: 31)
!240 = !DIEnumerator(name: "P_W4_CANCEL_PREPARED_WRITE_RESULT", value: 32)
!241 = !DIEnumerator(name: "P_W2_CANCEL_PREPARED_WRITE_DATA_MISMATCH", value: 33)
!242 = !DIEnumerator(name: "P_W4_CANCEL_PREPARED_WRITE_DATA_MISMATCH_RESULT", value: 34)
!243 = !DIEnumerator(name: "P_W2_SEND_READ_CLIENT_CHARACTERISTIC_CONFIGURATION_QUERY", value: 35)
!244 = !DIEnumerator(name: "P_W4_READ_CLIENT_CHARACTERISTIC_CONFIGURATION_QUERY_RESULT", value: 36)
!245 = !DIEnumerator(name: "P_W2_WRITE_CLIENT_CHARACTERISTIC_CONFIGURATION", value: 37)
!246 = !DIEnumerator(name: "P_W4_CLIENT_CHARACTERISTIC_CONFIGURATION_RESULT", value: 38)
!247 = !DIEnumerator(name: "P_W2_SEND_READ_CHARACTERISTIC_DESCRIPTOR_QUERY", value: 39)
!248 = !DIEnumerator(name: "P_W4_READ_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 40)
!249 = !DIEnumerator(name: "P_W2_SEND_READ_BLOB_CHARACTERISTIC_DESCRIPTOR_QUERY", value: 41)
!250 = !DIEnumerator(name: "P_W4_READ_BLOB_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 42)
!251 = !DIEnumerator(name: "P_W2_SEND_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 43)
!252 = !DIEnumerator(name: "P_W4_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 44)
!253 = !DIEnumerator(name: "P_W2_PREPARE_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 45)
!254 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 46)
!255 = !DIEnumerator(name: "P_W2_EXECUTE_PREPARED_WRITE_CHARACTERISTIC_DESCRIPTOR", value: 47)
!256 = !DIEnumerator(name: "P_W4_EXECUTE_PREPARED_WRITE_CHARACTERISTIC_DESCRIPTOR_RESULT", value: 48)
!257 = !DIEnumerator(name: "P_W2_PREPARE_WRITE_SINGLE", value: 49)
!258 = !DIEnumerator(name: "P_W4_PREPARE_WRITE_SINGLE_RESULT", value: 50)
!259 = !DIEnumerator(name: "P_W4_CMAC_READY", value: 51)
!260 = !DIEnumerator(name: "P_W4_CMAC_RESULT", value: 52)
!261 = !DIEnumerator(name: "P_W2_SEND_SIGNED_WRITE", value: 53)
!262 = !DIEnumerator(name: "P_W4_SEND_SINGED_WRITE_DONE", value: 54)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 127, size: 32, elements: !264)
!264 = !{!265, !266, !267, !268}
!265 = !DIEnumerator(name: "SEND_MTU_EXCHANGE", value: 0)
!266 = !DIEnumerator(name: "SENT_MTU_EXCHANGE", value: 1)
!267 = !DIEnumerator(name: "MTU_EXCHANGED", value: 2)
!268 = !DIEnumerator(name: "SEND_MTU_EXCHANGED_RSP", value: 3)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 134, size: 32, elements: !270)
!270 = !{!271, !272}
!271 = !DIEnumerator(name: "SEND_RSP_NULL", value: 0)
!272 = !DIEnumerator(name: "SEND_RSP_ERROR", value: 1)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 12, size: 32, elements: !275)
!274 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/avctp_user.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!276 = !DIEnumerator(name: "USER_CTRL_START_CONNECTION", value: 0)
!277 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR", value: 1)
!278 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_VIA_ADDR_MANUALLY", value: 2)
!279 = !DIEnumerator(name: "USER_CTRL_START_CONNEC_SPP_VIA_ADDR", value: 3)
!280 = !DIEnumerator(name: "USER_CTRL_DISCONNECTION_HCI", value: 4)
!281 = !DIEnumerator(name: "USER_CTRL_CONNECTION_CANCEL", value: 5)
!282 = !DIEnumerator(name: "USER_CTRL_READ_REMOTE_NAME", value: 6)
!283 = !DIEnumerator(name: "USER_CTRL_PAUSE_MUSIC", value: 7)
!284 = !DIEnumerator(name: "USER_CTRL_SCO_LINK", value: 8)
!285 = !DIEnumerator(name: "USER_CTRL_CONN_SCO", value: 9)
!286 = !DIEnumerator(name: "USER_CTRL_DISCONN_SCO", value: 10)
!287 = !DIEnumerator(name: "USER_CTRL_DISCONN_SDP_MASTER", value: 11)
!288 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_DISABLE", value: 12)
!289 = !DIEnumerator(name: "USER_CTRL_WRITE_SCAN_ENABLE", value: 13)
!290 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_DISABLE", value: 14)
!291 = !DIEnumerator(name: "USER_CTRL_WRITE_CONN_ENABLE", value: 15)
!292 = !DIEnumerator(name: "USER_CTRL_SEARCH_DEVICE", value: 16)
!293 = !DIEnumerator(name: "USER_CTRL_INQUIRY_CANCEL", value: 17)
!294 = !DIEnumerator(name: "USER_CTRL_PAGE_CANCEL", value: 18)
!295 = !DIEnumerator(name: "USER_CTRL_SNIFF_IN", value: 19)
!296 = !DIEnumerator(name: "USER_CTRL_SNIFF_EXIT", value: 20)
!297 = !DIEnumerator(name: "USER_CTRL_ALL_SNIFF_EXIT", value: 21)
!298 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_BEGIN", value: 22)
!299 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_UP", value: 23)
!300 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_VOLUME_DOWN", value: 24)
!301 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_SET_VOLUME", value: 25)
!302 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_GET_VOLUME", value: 26)
!303 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_ANSWER", value: 27)
!304 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_HANGUP", value: 28)
!305 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_LAST_NO", value: 29)
!306 = !DIEnumerator(name: "USER_CTRL_HFP_CALL_CURRENT", value: 30)
!307 = !DIEnumerator(name: "USER_CTRL_HFP_DTMF_TONES", value: 31)
!308 = !DIEnumerator(name: "USER_CTRL_DIAL_NUMBER", value: 32)
!309 = !DIEnumerator(name: "USER_CTRL_SEND_BATTERY", value: 33)
!310 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_STATUS", value: 34)
!311 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_OPEN", value: 35)
!312 = !DIEnumerator(name: "USER_CTRL_HFP_GET_SIRI_CLOSE", value: 36)
!313 = !DIEnumerator(name: "USER_CTRL_HFP_GET_PHONE_DATE_TIME", value: 37)
!314 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_SEND_BIA", value: 38)
!315 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_GET_MANUFACTURER", value: 39)
!316 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_UPDATE_BATTARY", value: 40)
!317 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1", value: 41)
!318 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2", value: 42)
!319 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER1X", value: 43)
!320 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER2X", value: 44)
!321 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_ANSWER3", value: 45)
!322 = !DIEnumerator(name: "USER_CTRL_HFP_THREE_WAY_REJECT", value: 46)
!323 = !DIEnumerator(name: "USER_CTRL_HFP_DISCONNECT", value: 47)
!324 = !DIEnumerator(name: "USER_CTRL_HFP_CMD_END", value: 48)
!325 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_BEGIN", value: 49)
!326 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PLAY", value: 50)
!327 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PAUSE", value: 51)
!328 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_STOP", value: 52)
!329 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_NEXT", value: 53)
!330 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_PREV", value: 54)
!331 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_FORWARD", value: 55)
!332 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REWIND", value: 56)
!333 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_REPEAT_MODE", value: 57)
!334 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SHUFFLE_MODE", value: 58)
!335 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_PLAY_TIME", value: 59)
!336 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_SEND_VOL", value: 60)
!337 = !DIEnumerator(name: "USER_CTRL_AVCTP_DISCONNECT", value: 61)
!338 = !DIEnumerator(name: "USER_CTRL_AVCTP_CONN", value: 62)
!339 = !DIEnumerator(name: "USER_CTRL_AVCTP_CMD_END", value: 63)
!340 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_BEGIN", value: 64)
!341 = !DIEnumerator(name: "USER_CTRL_AUTO_CONN_A2DP", value: 65)
!342 = !DIEnumerator(name: "USER_CTRL_CONN_A2DP", value: 66)
!343 = !DIEnumerator(name: "USER_CTRL_DISCONN_A2DP", value: 67)
!344 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_START", value: 68)
!345 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_CLOSE", value: 69)
!346 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_SUSPEND", value: 70)
!347 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_GET_CONFIGURATION", value: 71)
!348 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_ABORT", value: 72)
!349 = !DIEnumerator(name: "USER_CTRL_A2DP_CMD_END", value: 73)
!350 = !DIEnumerator(name: "USER_CTRL_POWER_OFF", value: 74)
!351 = !DIEnumerator(name: "USER_CTRL_POWER_ON", value: 75)
!352 = !DIEnumerator(name: "USER_CTRL_HID_CMD_BEGIN", value: 76)
!353 = !DIEnumerator(name: "USER_CTRL_HID_CONN", value: 77)
!354 = !DIEnumerator(name: "USER_CTRL_HID_ANDROID", value: 78)
!355 = !DIEnumerator(name: "USER_CTRL_HID_IOS", value: 79)
!356 = !DIEnumerator(name: "USER_CTRL_HID_BOTH", value: 80)
!357 = !DIEnumerator(name: "USER_CTRL_HID_DISCONNECT", value: 81)
!358 = !DIEnumerator(name: "USER_CTRL_HID_HOME", value: 82)
!359 = !DIEnumerator(name: "USER_CTRL_HID_RETURN", value: 83)
!360 = !DIEnumerator(name: "USER_CTRL_HID_LEFTARROW", value: 84)
!361 = !DIEnumerator(name: "USER_CTRL_HID_RIGHTARROW", value: 85)
!362 = !DIEnumerator(name: "USER_CTRL_HID_VOL_UP", value: 86)
!363 = !DIEnumerator(name: "USER_CTRL_HID_VOL_DOWN", value: 87)
!364 = !DIEnumerator(name: "USER_CTRL_HID_SEND_DATA", value: 88)
!365 = !DIEnumerator(name: "USER_CTRL_HID_CMD_END", value: 89)
!366 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_BEGIN", value: 90)
!367 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN", value: 91)
!368 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN", value: 92)
!369 = !DIEnumerator(name: "USER_CTRL_MONITOR", value: 93)
!370 = !DIEnumerator(name: "USER_CTRL_TWS_CONNEC_VIA_ADDR", value: 94)
!371 = !DIEnumerator(name: "USER_CTRL_TWS_COTROL_CDM", value: 95)
!372 = !DIEnumerator(name: "USER_CTRL_TWS_CLEAR_INFO", value: 96)
!373 = !DIEnumerator(name: "USER_CTRL_TWS_DISCONNECTION_HCI", value: 97)
!374 = !DIEnumerator(name: "USER_CTRL_TWS_START_CONNECTION", value: 98)
!375 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM", value: 99)
!376 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_SBC_CDM", value: 100)
!377 = !DIEnumerator(name: "USER_CTRL_TWS_RESTART_SBC_CDM", value: 101)
!378 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_CANCEL", value: 102)
!379 = !DIEnumerator(name: "USER_CTRL_SYNC_TRAIN_SCAN_CANCEL", value: 103)
!380 = !DIEnumerator(name: "USER_CTRL_TWS_SYNC_CDM_FUN", value: 104)
!381 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_START", value: 105)
!382 = !DIEnumerator(name: "USER_CTRL_TWS_LINEIN_CLOSE", value: 106)
!383 = !DIEnumerator(name: "USER_CTRL_TWS_CMD_END", value: 107)
!384 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_BEGIN", value: 108)
!385 = !DIEnumerator(name: "USER_CTRL_SPP_SEND_DATA", value: 109)
!386 = !DIEnumerator(name: "USER_CTRL_SPP_TRY_SEND_DATA", value: 110)
!387 = !DIEnumerator(name: "USER_CTRL_SPP_UPDATA_DATA", value: 111)
!388 = !DIEnumerator(name: "USER_CTRL_SPP_DISCONNECT", value: 112)
!389 = !DIEnumerator(name: "USER_CTRL_SPP_CMD_END", value: 113)
!390 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_BEGIN", value: 114)
!391 = !DIEnumerator(name: "USER_CTRL_PBG_SEND_DATA", value: 115)
!392 = !DIEnumerator(name: "USER_CTRL_PBG_TRY_SEND_DATA", value: 116)
!393 = !DIEnumerator(name: "USER_CTRL_PBG_CMD_END", value: 117)
!394 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_BEGIN", value: 118)
!395 = !DIEnumerator(name: "USER_CTRL_ADT_CONNECT", value: 119)
!396 = !DIEnumerator(name: "USER_CTRL_ADT_KEY_MIC_OPEN", value: 120)
!397 = !DIEnumerator(name: "USER_CTRL_ADT_SEND_DATA", value: 121)
!398 = !DIEnumerator(name: "USER_CTRL_ADT_TRY_SEND_DATA", value: 122)
!399 = !DIEnumerator(name: "USER_CTRL_ADT_CMD_END", value: 123)
!400 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_BEGIN", value: 124)
!401 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_PART", value: 125)
!402 = !DIEnumerator(name: "USER_CTRL_PBAP_READ_ALL", value: 126)
!403 = !DIEnumerator(name: "USER_CTRL_PBAP_STOP_READING", value: 127)
!404 = !DIEnumerator(name: "USER_CTRL_PBAP_CMD_END", value: 128)
!405 = !DIEnumerator(name: "USER_CTRL_DEL_ALL_REMOTE_INFO", value: 129)
!406 = !DIEnumerator(name: "USER_CTRL_TEST_KEY", value: 130)
!407 = !DIEnumerator(name: "USER_CTRL_SEND_USER_INFO", value: 131)
!408 = !DIEnumerator(name: "USER_CTRL_KEYPRESS", value: 132)
!409 = !DIEnumerator(name: "USER_CTRL_PAIR", value: 133)
!410 = !DIEnumerator(name: "USER_CTRL_AFH_CHANNEL", value: 134)
!411 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_CREATE", value: 135)
!412 = !DIEnumerator(name: "USER_CTRL_HALF_SEC_LOOP_DEL", value: 136)
!413 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_INC", value: 137)
!414 = !DIEnumerator(name: "USER_CTRL_CMD_SYNC_VOL_DEC", value: 138)
!415 = !DIEnumerator(name: "USER_CTRL_CMD_CHANGE_PROFILE_MODE", value: 139)
!416 = !DIEnumerator(name: "USER_CTRL_CMD_RESERVE_INDEX4", value: 140)
!417 = !DIEnumerator(name: "USER_CTRL_CMD_RESUME_STACK", value: 141)
!418 = !DIEnumerator(name: "USER_CTRL_AVCTP_OPID_GET_MUSIC_INFO", value: 142)
!419 = !DIEnumerator(name: "USER_CTRL_LAST", value: 143)
!420 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 1489, size: 32, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427}
!422 = !DIEnumerator(name: "HCI_STATE_OFF", value: 0)
!423 = !DIEnumerator(name: "HCI_STATE_INITIALIZING", value: 1)
!424 = !DIEnumerator(name: "HCI_STATE_WORKING", value: 2)
!425 = !DIEnumerator(name: "HCI_STATE_HALTING", value: 3)
!426 = !DIEnumerator(name: "HCI_STATE_SLEEPING", value: 4)
!427 = !DIEnumerator(name: "HCI_STATE_FALLING_ASLEEP", value: 5)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VENDOR_REMOTE_TEST_VALUE", file: !429, line: 569, size: 32, elements: !430)
!429 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btstack/bluetooth.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!430 = !{!431, !432, !433, !434}
!431 = !DIEnumerator(name: "VENDOR_TEST_DISCONNECTED", value: 0)
!432 = !DIEnumerator(name: "VENDOR_TEST_LEGACY_CONNECTED_BY_BT_CLASSIC", value: 1)
!433 = !DIEnumerator(name: "VENDOR_TEST_LEGACY_CONNECTED_BY_BLE", value: 2)
!434 = !DIEnumerator(name: "VENDOR_TEST_CONNECTED_WITH_TWS", value: 3)
!435 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tws_detach_reason", file: !436, line: 28, size: 32, elements: !437)
!436 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btctrler/classic/tws_event.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!437 = !{!438, !439, !440, !441, !442, !443, !444}
!438 = !DIEnumerator(name: "TWS_DETACH_BY_SUPER_TIMEOUT", value: 8)
!439 = !DIEnumerator(name: "TWS_DETACH_BY_LOCAL", value: 9)
!440 = !DIEnumerator(name: "TWS_DETACH_BY_REMOTE", value: 10)
!441 = !DIEnumerator(name: "TWS_DETACH_BY_POWEROFF", value: 11)
!442 = !DIEnumerator(name: "TWS_DETACH_BY_REMOVE_PAIRS", value: 12)
!443 = !DIEnumerator(name: "TWS_DETACH_BY_TESTBOX_CON", value: 13)
!444 = !DIEnumerator(name: "TWS_DETACH_BY_REMOVE_NO_RECONN", value: 14)
!445 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 299, size: 32, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!447 = !DIEnumerator(name: "BT_STATUS_POWER_ON", value: 1)
!448 = !DIEnumerator(name: "BT_STATUS_POWER_OFF", value: 2)
!449 = !DIEnumerator(name: "BT_STATUS_INIT_OK", value: 3)
!450 = !DIEnumerator(name: "BT_STATUS_EXIT_OK", value: 4)
!451 = !DIEnumerator(name: "BT_STATUS_START_CONNECTED", value: 5)
!452 = !DIEnumerator(name: "BT_STATUS_FIRST_CONNECTED", value: 6)
!453 = !DIEnumerator(name: "BT_STATUS_SECOND_CONNECTED", value: 7)
!454 = !DIEnumerator(name: "BT_STATUS_ENCRY_COMPLETE", value: 8)
!455 = !DIEnumerator(name: "BT_STATUS_FIRST_DISCONNECT", value: 9)
!456 = !DIEnumerator(name: "BT_STATUS_SECOND_DISCONNECT", value: 10)
!457 = !DIEnumerator(name: "BT_STATUS_PHONE_INCOME", value: 11)
!458 = !DIEnumerator(name: "BT_STATUS_PHONE_NUMBER", value: 12)
!459 = !DIEnumerator(name: "BT_STATUS_PHONE_MANUFACTURER", value: 13)
!460 = !DIEnumerator(name: "BT_STATUS_PHONE_OUT", value: 14)
!461 = !DIEnumerator(name: "BT_STATUS_PHONE_ACTIVE", value: 15)
!462 = !DIEnumerator(name: "BT_STATUS_PHONE_HANGUP", value: 16)
!463 = !DIEnumerator(name: "BT_STATUS_BEGIN_AUTO_CON", value: 17)
!464 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_COME", value: 18)
!465 = !DIEnumerator(name: "BT_STATUS_MUSIC_SOUND_GO", value: 19)
!466 = !DIEnumerator(name: "BT_STATUS_RESUME", value: 20)
!467 = !DIEnumerator(name: "BT_STATUS_RESUME_BTSTACK", value: 21)
!468 = !DIEnumerator(name: "BT_STATUS_SUSPEND", value: 22)
!469 = !DIEnumerator(name: "BT_STATUS_LAST_CALL_TYPE_CHANGE", value: 23)
!470 = !DIEnumerator(name: "BT_STATUS_CALL_VOL_CHANGE", value: 24)
!471 = !DIEnumerator(name: "BT_STATUS_SCO_STATUS_CHANGE", value: 25)
!472 = !DIEnumerator(name: "BT_STATUS_CONNECT_WITHOUT_LINKKEY", value: 26)
!473 = !DIEnumerator(name: "BT_STATUS_PHONE_BATTERY_CHANGE", value: 27)
!474 = !DIEnumerator(name: "BT_STATUS_RECONNECT_LINKKEY_LOST", value: 28)
!475 = !DIEnumerator(name: "BT_STATUS_RECONN_OR_CONN", value: 29)
!476 = !DIEnumerator(name: "BT_STATUS_BT_TEST_BOX_CMD", value: 30)
!477 = !DIEnumerator(name: "BT_STATUS_BT_TWS_CONNECT_CMD", value: 31)
!478 = !DIEnumerator(name: "BT_STATUS_SNIFF_STATE_UPDATE", value: 32)
!479 = !DIEnumerator(name: "BT_STATUS_TONE_BY_FILE_NAME", value: 33)
!480 = !DIEnumerator(name: "BT_STATUS_PHONE_DATE_AND_TIME", value: 34)
!481 = !DIEnumerator(name: "BT_STATUS_INBAND_RINGTONE", value: 35)
!482 = !DIEnumerator(name: "BT_STATUS_VOICE_RECOGNITION", value: 36)
!483 = !DIEnumerator(name: "BT_STATUS_AVRCP_INCOME_OPID", value: 37)
!484 = !DIEnumerator(name: "BT_STATUS_HFP_SERVICE_LEVEL_CONNECTION_OK", value: 38)
!485 = !DIEnumerator(name: "BT_STATUS_CONN_A2DP_CH", value: 39)
!486 = !DIEnumerator(name: "BT_STATUS_CONN_HFP_CH", value: 40)
!487 = !DIEnumerator(name: "BT_STATUS_INQUIRY_TIMEOUT", value: 41)
!488 = !DIEnumerator(name: "BT_STATUS_INITING", value: 42)
!489 = !DIEnumerator(name: "BT_STATUS_WAITINT_CONN", value: 43)
!490 = !DIEnumerator(name: "BT_STATUS_AUTO_CONNECTINT", value: 44)
!491 = !DIEnumerator(name: "BT_STATUS_CONNECTING", value: 45)
!492 = !DIEnumerator(name: "BT_STATUS_TAKEING_PHONE", value: 46)
!493 = !DIEnumerator(name: "BT_STATUS_PLAYING_MUSIC", value: 47)
!494 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_START", value: 48)
!495 = !DIEnumerator(name: "BT_STATUS_A2DP_MEDIA_STOP", value: 49)
!496 = !DIEnumerator(name: "BT_STATUS_BROADCAST_STATE", value: 50)
!497 = !DIEnumerator(name: "BT_STATUS_TRIM_OVER", value: 51)
!498 = !{!499, !503, !504, !507, !508, !691, !694, !695, !522}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !501, line: 44, baseType: !502)
!501 = !DIFile(filename: "../btcommon/typedef.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!502 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !501, line: 48, baseType: !506)
!506 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!507 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 32)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bredr_profile_t", file: !510, line: 35, size: 4160, elements: !511)
!510 = !DIFile(filename: "../User/include/btstack_main.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!511 = !{!512, !529, !550, !622, !675}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_hdl", scope: !509, file: !510, line: 36, baseType: !513, size: 80)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdp_stack_t", file: !514, line: 130, baseType: !515)
!514 = !DIFile(filename: "../btstack/Protocol/include/bredr/sdp.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 117, size: 80, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_core_data", scope: !515, file: !514, line: 128, baseType: !518, size: 80)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdp_core_data_t", file: !514, line: 115, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 102, size: 80, elements: !520)
!520 = !{!521, !524, !525, !526, !527, !528}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_channel", scope: !519, file: !514, line: 106, baseType: !522, size: 16)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !501, line: 46, baseType: !523)
!523 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_master_channel", scope: !519, file: !514, line: 110, baseType: !522, size: 16, offset: 16)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "read_sdp_service_type", scope: !519, file: !514, line: 111, baseType: !522, size: 16, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_master_waitint_accept", scope: !519, file: !514, line: 112, baseType: !500, size: 8, offset: 48)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_cid", scope: !519, file: !514, line: 113, baseType: !500, size: 8, offset: 56)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_translaction_id", scope: !519, file: !514, line: 114, baseType: !500, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_hdl", scope: !509, file: !510, line: 38, baseType: !530, size: 160, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_stack_t", file: !531, line: 299, baseType: !532)
!531 = !DIFile(filename: "../btstack/Protocol/include/bredr/rfcomm.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 286, size: 160, elements: !533)
!533 = !{!534, !538, !547, !548, !549}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "app_packet_handler", scope: !532, file: !531, line: 288, baseType: !535, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 32)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !503, !500, !522, !499, !522}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_multiplexers", scope: !532, file: !531, line: 291, baseType: !539, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_list_t", file: !540, line: 101, baseType: !541)
!540 = !DIFile(filename: "../btcommon/btstack_linked_list.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_linked_item_t", file: !540, line: 55, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_linked_item", file: !540, line: 53, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !540, line: 54, baseType: !546, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channels", scope: !532, file: !531, line: 293, baseType: !539, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_services", scope: !532, file: !531, line: 295, baseType: !539, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_client_cid_generator", scope: !532, file: !531, line: 298, baseType: !522, size: 16, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_hdl", scope: !509, file: !510, line: 41, baseType: !551, size: 3328, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_stack_t", file: !552, line: 303, baseType: !553)
!552 = !DIFile(filename: "../btstack/Profile/include/bredr/hfp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !552, line: 294, size: 3328, elements: !554)
!554 = !{!555, !556, !557, !558, !565, !570, !574}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_init_number", scope: !553, file: !552, line: 295, baseType: !500, size: 5, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_background", scope: !553, file: !552, line: 296, baseType: !500, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reserve1", scope: !553, file: !552, line: 297, baseType: !500, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_parse_sta", scope: !553, file: !552, line: 298, baseType: !559, size: 24, offset: 8)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "HFP_PARSE_STA", file: !552, line: 248, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__HFP_PARSE_STA", file: !552, line: 240, size: 24, elements: !561)
!561 = !{!562, !563, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "parse_atcmd_type", scope: !560, file: !552, line: 242, baseType: !500, size: 7, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "atcmd_cr_type", scope: !560, file: !552, line: 244, baseType: !500, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "received_data_len", scope: !560, file: !552, line: 246, baseType: !522, size: 16, offset: 8)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "parse_atcmd_buf", scope: !553, file: !552, line: 299, baseType: !566, size: 1984, offset: 32)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 1984, elements: !568)
!567 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!568 = !{!569}
!569 = !DISubrange(count: 248)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "phone_number", scope: !553, file: !552, line: 301, baseType: !571, size: 192, offset: 2016)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 192, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 24)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !553, file: !552, line: 302, baseType: !575, size: 1120, offset: 2208)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 1120, elements: !620)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_con_t", file: !552, line: 292, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hfp_con", file: !552, line: 283, size: 1120, elements: !578)
!578 = !{!579, !619}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_core_data", scope: !577, file: !552, line: 284, baseType: !580, size: 1088)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "hfp_con_core_data_t", file: !552, line: 281, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !552, line: 257, size: 1088, elements: !582)
!582 = !{!583, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !607, !618}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !581, file: !552, line: 259, baseType: !584, size: 48)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_t", file: !585, line: 66, baseType: !586)
!585 = !DIFile(filename: "../btcommon/utils.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 48, elements: !588)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !501, line: 44, baseType: !502)
!588 = !{!589}
!589 = !DISubrange(count: 6)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channel_id", scope: !581, file: !552, line: 260, baseType: !522, size: 16, offset: 48)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "support_featurn_ag", scope: !581, file: !552, line: 262, baseType: !505, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !581, file: !552, line: 264, baseType: !522, size: 16, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_init_battery_value", scope: !581, file: !552, line: 265, baseType: !500, size: 8, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "send_key_flag", scope: !581, file: !552, line: 266, baseType: !500, size: 8, offset: 120)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_speak_gain", scope: !581, file: !552, line: 268, baseType: !500, size: 4, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_mic_gain", scope: !581, file: !552, line: 269, baseType: !500, size: 4, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "phone_call_status", scope: !581, file: !552, line: 270, baseType: !500, size: 4, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "second_call_status", scope: !581, file: !552, line: 271, baseType: !500, size: 4, offset: 140, flags: DIFlagBitField, extraData: i64 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_init_step", scope: !581, file: !552, line: 273, baseType: !500, size: 5, offset: 144, flags: DIFlagBitField, extraData: i64 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !581, file: !552, line: 274, baseType: !500, size: 1, offset: 149, flags: DIFlagBitField, extraData: i64 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_cmd_send_failed", scope: !581, file: !552, line: 275, baseType: !500, size: 1, offset: 150, flags: DIFlagBitField, extraData: i64 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ios_siri_status", scope: !581, file: !552, line: 276, baseType: !500, size: 3, offset: 152, flags: DIFlagBitField, extraData: i64 152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hf_indications", scope: !581, file: !552, line: 278, baseType: !604, size: 24, offset: 160)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 24, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 3)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "indicators", scope: !581, file: !552, line: 279, baseType: !608, size: 448, offset: 184)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 448, elements: !616)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDICATOR", file: !552, line: 255, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__INDICATOR", file: !552, line: 250, size: 56, elements: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !610, file: !552, line: 251, baseType: !499, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "desc_index", scope: !610, file: !552, line: 252, baseType: !500, size: 8, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "strlen", scope: !610, file: !552, line: 253, baseType: !500, size: 8, offset: 40)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !610, file: !552, line: 254, baseType: !500, size: 8, offset: 48)
!616 = !{!617}
!617 = !DISubrange(count: 8)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "prev_inds", scope: !581, file: !552, line: 280, baseType: !608, size: 448, offset: 632)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fail_item", scope: !577, file: !552, line: 287, baseType: !539, size: 32, offset: 1088)
!620 = !{!621}
!621 = !DISubrange(count: 1)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "hid_hdl", scope: !509, file: !510, line: 50, baseType: !623, size: 416, offset: 3584)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "hid_stack_t", file: !624, line: 144, baseType: !625)
!624 = !DIFile(filename: "../btstack/Profile/include/bredr/hid_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_handl", file: !624, line: 141, size: 416, elements: !626)
!626 = !{!627, !664}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "hid_core_data", scope: !625, file: !624, line: 142, baseType: !628, size: 304)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "hid_core_data_t", file: !624, line: 139, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 135, size: 304, elements: !630)
!630 = !{!631, !651, !658}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !629, file: !624, line: 136, baseType: !632, size: 208)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 208, elements: !620)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_conn", file: !624, line: 120, size: 208, elements: !634)
!634 = !{!635, !639, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !633, file: !624, line: 121, baseType: !636, size: 80)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 80, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 10)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !633, file: !624, line: 122, baseType: !640, size: 48, offset: 80)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 48, elements: !588)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "send_step", scope: !633, file: !624, line: 123, baseType: !500, size: 8, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "send_continue", scope: !633, file: !624, line: 124, baseType: !500, size: 8, offset: 136)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !633, file: !624, line: 125, baseType: !500, size: 1, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "connect_inter_channel", scope: !633, file: !624, line: 126, baseType: !500, size: 1, offset: 145, flags: DIFlagBitField, extraData: i64 144)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hid_background", scope: !633, file: !624, line: 127, baseType: !500, size: 1, offset: 146, flags: DIFlagBitField, extraData: i64 144)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "income_con_flag", scope: !633, file: !624, line: 128, baseType: !500, size: 2, offset: 147, flags: DIFlagBitField, extraData: i64 144)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf_len", scope: !633, file: !624, line: 129, baseType: !500, size: 3, offset: 149, flags: DIFlagBitField, extraData: i64 144)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_channel", scope: !633, file: !624, line: 130, baseType: !522, size: 16, offset: 160)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "inter_channel", scope: !633, file: !624, line: 131, baseType: !522, size: 16, offset: 176)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pending_channel", scope: !633, file: !624, line: 132, baseType: !522, size: 16, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "hid_kb_cmd", scope: !629, file: !624, line: 137, baseType: !652, size: 48, offset: 208)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_keyboard_cmd", file: !624, line: 85, size: 48, elements: !653)
!653 = !{!654, !655, !656, !657}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "HIDP_Hdr", scope: !652, file: !624, line: 87, baseType: !500, size: 8)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "report_id", scope: !652, file: !624, line: 89, baseType: !500, size: 8, offset: 8)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "key_cmd1", scope: !652, file: !624, line: 92, baseType: !522, size: 16, offset: 16)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "key_cmd2", scope: !652, file: !624, line: 93, baseType: !522, size: 16, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "hid_AC_cmd", scope: !629, file: !624, line: 138, baseType: !659, size: 40, offset: 256)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HID_AC_CMD", file: !624, line: 101, size: 40, elements: !660)
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "HIDP_Hdr", scope: !659, file: !624, line: 103, baseType: !500, size: 8)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "report_id", scope: !659, file: !624, line: 105, baseType: !505, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !659, file: !624, line: 106, baseType: !505, size: 24, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !625, file: !624, line: 143, baseType: !665, size: 96, offset: 320)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "run_loop", file: !666, line: 9, size: 96, elements: !667)
!666 = !DIFile(filename: "../btcommon/run_loop.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!667 = !{!668, !669, !674}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !665, file: !666, line: 10, baseType: !542, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !665, file: !666, line: 11, baseType: !670, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 32)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !665, file: !666, line: 12, baseType: !503, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "spp_handl", scope: !509, file: !510, line: 53, baseType: !676, size: 160, offset: 4000)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "spp_profile_t", file: !677, line: 24, baseType: !678)
!677 = !DIFile(filename: "../btstack/Profile/include/bredr/spp_profile.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 22, size: 160, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !678, file: !677, line: 23, baseType: !681, size: 160)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 160, elements: !620)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "spp_conn_t", file: !677, line: 20, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 9, size: 160, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !683, file: !677, line: 14, baseType: !522, size: 16)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_cid", scope: !683, file: !677, line: 15, baseType: !522, size: 16, offset: 16)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_send_cmd_handle", scope: !683, file: !677, line: 16, baseType: !522, size: 16, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_dlci", scope: !683, file: !677, line: 17, baseType: !505, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "inused", scope: !683, file: !677, line: 18, baseType: !500, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !683, file: !677, line: 19, baseType: !584, size: 48, offset: 104)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 32)
!692 = !DISubroutineType(types: !693)
!693 = !{!507, !503}
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !501, line: 46, baseType: !523)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 32)
!696 = !{!0, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !745, !785, !822, !964, !966, !1135, !1147, !1151}
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(name: "hfp_ag_profile_support", scope: !2, file: !3, line: 62, type: !500, isLocal: false, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "hfp_profile_support", scope: !2, file: !3, line: 63, type: !500, isLocal: false, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "acp_profile_support", scope: !2, file: !3, line: 64, type: !500, isLocal: false, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "a2dp_profile_support", scope: !2, file: !3, line: 65, type: !500, isLocal: false, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "spp_profile_support", scope: !2, file: !3, line: 66, type: !500, isLocal: false, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "spp_up_profile_support", scope: !2, file: !3, line: 67, type: !500, isLocal: false, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "hid_profile_support", scope: !2, file: !3, line: 68, type: !500, isLocal: false, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "pbap_profile_support", scope: !2, file: !3, line: 69, type: !500, isLocal: false, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "pan_profile_support", scope: !2, file: !3, line: 70, type: !500, isLocal: false, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "iap_profile_support", scope: !2, file: !3, line: 71, type: !500, isLocal: false, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "emitter_hfp_hf_support", scope: !2, file: !3, line: 72, type: !500, isLocal: false, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(name: "profile_cmd_hdl_str", scope: !2, file: !3, line: 77, type: !721, isLocal: false, isDefinition: true)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmd_handle_str", file: !722, line: 27, baseType: !723)
!722 = !DIFile(filename: "../btstack/Profile/include/bredr/profile_common.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "profile_cmd_handle", file: !722, line: 15, size: 352, elements: !724)
!724 = !{!725, !726, !730, !731, !732, !736, !737, !738, !739, !740, !744}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_send_cmd", scope: !723, file: !722, line: 16, baseType: !691, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "hid_send_cmd", scope: !723, file: !722, line: 17, baseType: !727, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 32)
!728 = !DISubroutineType(types: !729)
!729 = !{!507, !499, !505}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "spp_send_cmd", scope: !723, file: !722, line: 18, baseType: !691, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "spp_up_send_cmd", scope: !723, file: !722, line: 19, baseType: !691, size: 32, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "avctp_send_cmd", scope: !723, file: !722, line: 20, baseType: !733, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 32)
!734 = !DISubroutineType(types: !735)
!735 = !{!507, !499, !505, !505}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "a2dp_send_cmd", scope: !723, file: !722, line: 21, baseType: !727, size: 32, offset: 160)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "hfp_ag_send_cmd", scope: !723, file: !722, line: 22, baseType: !691, size: 32, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "opp_send_cmd", scope: !723, file: !722, line: 23, baseType: !733, size: 32, offset: 224)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_send_cmd", scope: !723, file: !722, line: 24, baseType: !733, size: 32, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pan_send_cmd", scope: !723, file: !722, line: 25, baseType: !741, size: 32, offset: 288)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 32)
!742 = !DISubroutineType(types: !743)
!743 = !{!507, !499, !505, !505, !499}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "iap_send_cmd", scope: !723, file: !722, line: 26, baseType: !691, size: 32, offset: 320)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "btstack_global_info", scope: !2, file: !3, line: 107, type: !747, isLocal: true, isDefinition: true)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_ctrl", file: !3, line: 103, size: 1472, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ble_ctl_info", scope: !747, file: !3, line: 104, baseType: !750, size: 1472)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ble_mode_ctrl", file: !3, line: 93, size: 1472, elements: !751)
!751 = !{!752, !753, !773, !777, !781, !783, !784}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !750, file: !3, line: 94, baseType: !665, size: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_cbuf", scope: !750, file: !3, line: 95, baseType: !754, size: 288, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbuffer_t", file: !755, line: 26, baseType: !756)
!755 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/generic/circular_buf.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cbuffer", file: !755, line: 16, size: 288, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !756, file: !755, line: 17, baseType: !499, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !756, file: !755, line: 18, baseType: !499, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !756, file: !755, line: 19, baseType: !499, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !756, file: !755, line: 20, baseType: !499, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_ptr", scope: !756, file: !755, line: 21, baseType: !499, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_len", scope: !756, file: !755, line: 22, baseType: !505, size: 32, offset: 160)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !756, file: !755, line: 23, baseType: !505, size: 32, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !756, file: !755, line: 24, baseType: !505, size: 32, offset: 224)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !756, file: !755, line: 25, baseType: !767, size: 32, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !768, line: 13, baseType: !769)
!768 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/system/spinlock.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__spinlock", file: !768, line: 9, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock", scope: !769, file: !768, line: 10, baseType: !772, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !505)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_buffer", scope: !750, file: !3, line: 96, baseType: !774, size: 1024, offset: 384)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 1024, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "regist_thread_call", scope: !750, file: !3, line: 97, baseType: !778, size: 32, offset: 1408)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 32)
!779 = !DISubroutineType(types: !780)
!780 = !{null}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "run_flag", scope: !750, file: !3, line: 98, baseType: !782, size: 8, offset: 1440)
!782 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !500)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_role", scope: !750, file: !3, line: 99, baseType: !500, size: 3, offset: 1448, flags: DIFlagBitField, extraData: i64 1448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !750, file: !3, line: 100, baseType: !500, size: 5, offset: 1451, flags: DIFlagBitField, extraData: i64 1448)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "profile_l2cap_hdl", scope: !2, file: !3, line: 114, type: !787, isLocal: false, isDefinition: true)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_stack_t", file: !788, line: 284, baseType: !789)
!788 = !DIFile(filename: "../btstack/Host/include/common/l2cap.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 273, size: 448, elements: !790)
!790 = !{!791, !792, !793, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !789, file: !788, line: 274, baseType: !535, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_services", scope: !789, file: !788, line: 279, baseType: !539, size: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_channels", scope: !789, file: !788, line: 280, baseType: !539, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "statck_core_data", scope: !789, file: !788, line: 282, baseType: !795, size: 352, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_core_data_t", file: !788, line: 271, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 262, size: 352, elements: !797)
!797 = !{!798, !809, !810, !811, !820, !821}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "signaling_responses", scope: !796, file: !788, line: 264, baseType: !799, size: 192)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 192, elements: !605)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_signaling_response_t", file: !788, line: 251, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "l2cap_signaling_response", file: !788, line: 245, size: 64, elements: !802)
!802 = !{!803, !805, !806, !807, !808}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !801, file: !788, line: 246, baseType: !804, size: 16)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_con_handle_t", file: !585, line: 60, baseType: !694)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sig_id", scope: !801, file: !788, line: 247, baseType: !500, size: 8, offset: 16)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !801, file: !788, line: 248, baseType: !500, size: 8, offset: 24)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !801, file: !788, line: 249, baseType: !522, size: 16, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !801, file: !788, line: 250, baseType: !522, size: 16, offset: 48)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "signaling_responses_pending", scope: !796, file: !788, line: 266, baseType: !507, size: 32, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "extended_feature", scope: !796, file: !788, line: 267, baseType: !505, size: 32, offset: 224)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "authentication_flag", scope: !796, file: !788, line: 268, baseType: !812, size: 64, offset: 256)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 64, elements: !620)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_authentication_flag_t", file: !788, line: 258, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "authentication_flag", file: !788, line: 253, size: 64, elements: !815)
!815 = !{!816, !817, !818, !819}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !814, file: !788, line: 254, baseType: !584, size: 48)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "in_used", scope: !814, file: !788, line: 255, baseType: !500, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 48)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "remote_dev_company", scope: !814, file: !788, line: 256, baseType: !500, size: 4, offset: 52, flags: DIFlagBitField, extraData: i64 48)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "authentication_status", scope: !814, file: !788, line: 257, baseType: !500, size: 8, offset: 56)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_sig_seq_nr", scope: !796, file: !788, line: 269, baseType: !500, size: 8, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_source_cid", scope: !796, file: !788, line: 270, baseType: !522, size: 16, offset: 336)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "profile_bredr_pool_hdl", scope: !2, file: !3, line: 116, type: !824, isLocal: false, isDefinition: true)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_bredr_pool_t", file: !825, line: 59, baseType: !826)
!825 = !DIFile(filename: "../btcommon/btstack_memory.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !825, line: 29, size: 3648, elements: !827)
!827 = !{!828, !830, !831, !832, !833, !834, !851, !892, !911, !923}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_service_pool", scope: !826, file: !825, line: 33, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "memory_pool_t", file: !825, line: 28, baseType: !503)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_channel_pool", scope: !826, file: !825, line: 34, baseType: !829, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_multiplexer_pool", scope: !826, file: !825, line: 36, baseType: !829, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_pool", scope: !826, file: !825, line: 37, baseType: !829, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channel_pool", scope: !826, file: !825, line: 38, baseType: !829, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_service_storage", scope: !826, file: !825, line: 48, baseType: !835, size: 512, offset: 160)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 512, elements: !849)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_service_t", file: !788, line: 241, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 225, size: 128, elements: !838)
!838 = !{!839, !841, !842, !843, !844}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !837, file: !788, line: 227, baseType: !840, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "linked_item_t", file: !540, line: 100, baseType: !542)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "psm", scope: !837, file: !788, line: 230, baseType: !522, size: 16, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !837, file: !788, line: 233, baseType: !522, size: 16, offset: 48)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !837, file: !788, line: 236, baseType: !503, size: 32, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !837, file: !788, line: 239, baseType: !845, size: 32, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_packet_handler_t", file: !70, line: 58, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 32)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !587, !694, !695, !694}
!849 = !{!850}
!850 = !DISubrange(count: 4)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_channel_storage", scope: !826, file: !825, line: 49, baseType: !852, size: 2240, offset: 672)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 2240, elements: !890)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "l2cap_channel_t", file: !788, line: 222, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 204, size: 448, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !854, file: !788, line: 206, baseType: !840, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !854, file: !788, line: 208, baseType: !804, size: 16, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_for_can_send_now", scope: !854, file: !788, line: 211, baseType: !500, size: 8, offset: 48)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !854, file: !788, line: 215, baseType: !503, size: 32, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !854, file: !788, line: 218, baseType: !845, size: 32, offset: 96)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "channel_core_data", scope: !854, file: !788, line: 220, baseType: !862, size: 320, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "channel_core_data_t", file: !788, line: 200, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 178, size: 320, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !863, file: !788, line: 180, baseType: !522, size: 16)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !863, file: !788, line: 181, baseType: !500, size: 8, offset: 16)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "remote_sig_id", scope: !863, file: !788, line: 183, baseType: !500, size: 8, offset: 24)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "local_sig_id", scope: !863, file: !788, line: 184, baseType: !500, size: 8, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !863, file: !788, line: 186, baseType: !500, size: 8, offset: 40)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !863, file: !788, line: 188, baseType: !584, size: 48, offset: 48)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "psm", scope: !863, file: !788, line: 189, baseType: !522, size: 16, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "local_cid", scope: !863, file: !788, line: 191, baseType: !522, size: 16, offset: 112)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "remote_cid", scope: !863, file: !788, line: 192, baseType: !522, size: 16, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "local_mtu", scope: !863, file: !788, line: 194, baseType: !522, size: 16, offset: 144)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "remote_mtu", scope: !863, file: !788, line: 195, baseType: !522, size: 16, offset: 160)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !863, file: !788, line: 197, baseType: !500, size: 8, offset: 176)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "remote_extended_feature", scope: !863, file: !788, line: 198, baseType: !505, size: 32, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "retran_op", scope: !863, file: !788, line: 199, baseType: !879, size: 96, offset: 224)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "retran_flow_ctl_op_t", file: !788, line: 174, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 165, size: 96, elements: !881)
!881 = !{!882, !883, !884, !885, !886, !887, !888, !889}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "retransmission_flow_ctl", scope: !880, file: !788, line: 166, baseType: !500, size: 8)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !880, file: !788, line: 167, baseType: !500, size: 8, offset: 8)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !880, file: !788, line: 168, baseType: !500, size: 8, offset: 16)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tx_window", scope: !880, file: !788, line: 169, baseType: !500, size: 8, offset: 24)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "max_transmit", scope: !880, file: !788, line: 170, baseType: !500, size: 8, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "retransmission_timeout", scope: !880, file: !788, line: 171, baseType: !522, size: 16, offset: 48)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_timeout", scope: !880, file: !788, line: 172, baseType: !522, size: 16, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "max_pdu", scope: !880, file: !788, line: 173, baseType: !522, size: 16, offset: 80)
!890 = !{!891}
!891 = !DISubrange(count: 5)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_multiplexer_storage", scope: !826, file: !825, line: 51, baseType: !893, size: 160, offset: 2912)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 160, elements: !620)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_multiplexer_t", file: !531, line: 221, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 211, size: 160, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !895, file: !531, line: 213, baseType: !840, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !895, file: !531, line: 218, baseType: !522, size: 16, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "multiplexer_core_data", scope: !895, file: !531, line: 219, baseType: !900, size: 112, offset: 48)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiplexer_core_data_t", file: !531, line: 207, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 191, size: 112, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !901, file: !531, line: 192, baseType: !584, size: 48)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_cid", scope: !901, file: !531, line: 193, baseType: !522, size: 16, offset: 48)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !901, file: !531, line: 196, baseType: !500, size: 4, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_credits", scope: !901, file: !531, line: 197, baseType: !500, size: 4, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !901, file: !531, line: 200, baseType: !500, size: 8, offset: 72)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "at_least_one_connection", scope: !901, file: !531, line: 202, baseType: !500, size: 8, offset: 80)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "send_dm_for_dlci", scope: !901, file: !531, line: 205, baseType: !500, size: 8, offset: 88)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !901, file: !531, line: 206, baseType: !804, size: 16, offset: 96)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_service_storage", scope: !826, file: !825, line: 52, baseType: !912, size: 160, offset: 3072)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 160, elements: !620)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_service_t", file: !531, line: 189, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 167, size: 160, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !914, file: !531, line: 169, baseType: !840, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "server_channel", scope: !914, file: !531, line: 172, baseType: !500, size: 8, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_flow_control", scope: !914, file: !531, line: 175, baseType: !500, size: 8, offset: 40)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_initial_credits", scope: !914, file: !531, line: 178, baseType: !500, size: 8, offset: 48)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !914, file: !531, line: 181, baseType: !522, size: 16, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !914, file: !531, line: 184, baseType: !503, size: 32, offset: 96)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !914, file: !531, line: 187, baseType: !845, size: 32, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_channel_storage", scope: !826, file: !825, line: 53, baseType: !924, size: 416, offset: 3232)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 416, elements: !620)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_channel_t", file: !531, line: 282, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 262, size: 416, elements: !927)
!927 = !{!928, !929, !931, !959, !960, !962, !963}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !926, file: !531, line: 264, baseType: !840, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "multiplexer", scope: !926, file: !531, line: 266, baseType: !930, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rfc_channel_core_data", scope: !926, file: !531, line: 268, baseType: !932, size: 240, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfc_channel_core_data_t", file: !531, line: 259, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 223, size: 240, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rfc_channel_type", scope: !933, file: !531, line: 224, baseType: !500, size: 8)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !933, file: !531, line: 225, baseType: !584, size: 48, offset: 8)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "rfcomm_cid", scope: !933, file: !531, line: 226, baseType: !522, size: 16, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !933, file: !531, line: 227, baseType: !500, size: 8, offset: 80)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dlci", scope: !933, file: !531, line: 228, baseType: !500, size: 8, offset: 88)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "packets_granted", scope: !933, file: !531, line: 231, baseType: !500, size: 8, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "credits_outgoing", scope: !933, file: !531, line: 234, baseType: !500, size: 8, offset: 104)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "new_credits_incoming", scope: !933, file: !531, line: 237, baseType: !500, size: 8, offset: 112)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "credits_incoming", scope: !933, file: !531, line: 240, baseType: !500, size: 8, offset: 120)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_flow_control", scope: !933, file: !531, line: 243, baseType: !500, size: 8, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !933, file: !531, line: 247, baseType: !500, size: 8, offset: 136)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pn_priority", scope: !933, file: !531, line: 250, baseType: !500, size: 8, offset: 144)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !933, file: !531, line: 254, baseType: !522, size: 16, offset: 160)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rpn_data", scope: !933, file: !531, line: 257, baseType: !949, size: 56, offset: 176)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "rfcomm_rpn_data_t", file: !531, line: 159, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rfcomm_rpn_data", file: !531, line: 151, size: 56, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "baud_rate", scope: !950, file: !531, line: 152, baseType: !500, size: 8)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !531, line: 153, baseType: !500, size: 8, offset: 8)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !950, file: !531, line: 154, baseType: !500, size: 8, offset: 16)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "xon", scope: !950, file: !531, line: 155, baseType: !500, size: 8, offset: 24)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !950, file: !531, line: 156, baseType: !500, size: 8, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_mask_0", scope: !950, file: !531, line: 157, baseType: !500, size: 8, offset: 40)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_mask_1", scope: !950, file: !531, line: 158, baseType: !500, size: 8, offset: 48)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "max_frame_size", scope: !926, file: !531, line: 271, baseType: !522, size: 16, offset: 304)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !926, file: !531, line: 274, baseType: !961, size: 32, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "packet_handler", scope: !926, file: !531, line: 277, baseType: !845, size: 32, offset: 352)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !926, file: !531, line: 280, baseType: !503, size: 32, offset: 384)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(name: "profile_bredr_profile", scope: !2, file: !3, line: 117, type: !509, isLocal: false, isDefinition: true)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(name: "profile_le_pool_hdl", scope: !2, file: !3, line: 119, type: !968, isLocal: false, isDefinition: true)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_le_pool_t", file: !825, line: 93, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !825, line: 61, size: 128, elements: !970)
!970 = !{!971, !972, !973, !1087}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "le_hci_connection_pool", scope: !969, file: !825, line: 64, baseType: !829, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_client_pool", scope: !969, file: !825, line: 67, baseType: !829, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "le_hci_connection_storage", scope: !969, file: !825, line: 79, baseType: !974, size: 32, offset: 64)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 32, elements: !620)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_hci_connection_t", file: !78, line: 605, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__le_hci_connection", file: !78, line: 571, size: 9792, elements: !978)
!978 = !{!979, !980, !981, !982, !984, !985, !987, !988, !989, !990, !991, !992, !1022, !1077, !1081, !1082, !1083, !1084, !1085, !1086}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !977, file: !78, line: 572, baseType: !840, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !977, file: !78, line: 574, baseType: !584, size: 48, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !977, file: !78, line: 576, baseType: !804, size: 16, offset: 80)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !977, file: !78, line: 578, baseType: !983, size: 32, offset: 96)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "bd_addr_type_t", file: !70, line: 1475, baseType: !69)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !977, file: !78, line: 581, baseType: !587, size: 8, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_parameter_update_state", scope: !977, file: !78, line: 584, baseType: !986, size: 32, offset: 160)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "le_con_parameter_update_state_t", file: !78, line: 252, baseType: !77)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "le_con_param_update_identifier", scope: !977, file: !78, line: 585, baseType: !587, size: 8, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_min", scope: !977, file: !78, line: 586, baseType: !694, size: 16, offset: 208)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_interval_max", scope: !977, file: !78, line: 587, baseType: !694, size: 16, offset: 224)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "le_conn_latency", scope: !977, file: !78, line: 588, baseType: !694, size: 16, offset: 240)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "le_supervision_timeout", scope: !977, file: !78, line: 589, baseType: !694, size: 16, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection", scope: !977, file: !78, line: 592, baseType: !993, size: 448, offset: 288)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_connection_t", file: !78, line: 475, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sm_connection", file: !78, line: 456, size: 448, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001, !1002, !1004, !1006, !1007, !1008, !1009, !1014, !1016, !1017, !1019, !1020, !1021}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sm_handle", scope: !994, file: !78, line: 457, baseType: !804, size: 16)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sm_role", scope: !994, file: !78, line: 458, baseType: !587, size: 8, offset: 16)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sm_security_request_received", scope: !994, file: !78, line: 459, baseType: !587, size: 8, offset: 24)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sm_bonding_requested", scope: !994, file: !78, line: 460, baseType: !587, size: 8, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_addr_type", scope: !994, file: !78, line: 461, baseType: !587, size: 8, offset: 40)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sm_peer_address", scope: !994, file: !78, line: 462, baseType: !584, size: 48, offset: 48)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sm_engine_state", scope: !994, file: !78, line: 463, baseType: !1003, size: 32, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_manager_state_t", file: !78, line: 433, baseType: !85)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sm_irk_lookup_state", scope: !994, file: !78, line: 464, baseType: !1005, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "irk_lookup_state_t", file: !78, line: 442, baseType: !185)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_encrypted", scope: !994, file: !78, line: 465, baseType: !587, size: 8, offset: 160)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authenticated", scope: !994, file: !78, line: 466, baseType: !587, size: 8, offset: 168)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sm_actual_encryption_key_size", scope: !994, file: !78, line: 467, baseType: !587, size: 8, offset: 176)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sm_m_preq", scope: !994, file: !78, line: 468, baseType: !1010, size: 56, offset: 184)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "sm_pairing_packet_t", file: !78, line: 452, baseType: !1011)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 56, elements: !1012)
!1012 = !{!1013}
!1013 = !DISubrange(count: 7)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sm_connection_authorization_state", scope: !994, file: !78, line: 469, baseType: !1015, size: 32, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "authorization_state_t", file: !78, line: 450, baseType: !192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_ediv", scope: !994, file: !78, line: 470, baseType: !694, size: 16, offset: 288)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sm_local_rand", scope: !994, file: !78, line: 471, baseType: !1018, size: 64, offset: 304)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 64, elements: !616)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sm_disconn_reason", scope: !994, file: !78, line: 472, baseType: !587, size: 8, offset: 368)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sm_le_db_index", scope: !994, file: !78, line: 473, baseType: !507, size: 32, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "sm_timeout_id", scope: !994, file: !78, line: 474, baseType: !507, size: 32, offset: 416)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "att_server", scope: !977, file: !78, line: 595, baseType: !1023, size: 4640, offset: 736)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_t", file: !199, line: 187, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 164, size: 4640, elements: !1025)
!1025 = !{!1026, !1028, !1029, !1030, !1031, !1032, !1033, !1052, !1063, !1064, !1068, !1069, !1070, !1071, !1072, !1073}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1024, file: !199, line: 165, baseType: !1027, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_server_state_t", file: !199, line: 162, baseType: !198)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr_type", scope: !1024, file: !199, line: 167, baseType: !587, size: 8, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address", scope: !1024, file: !199, line: 168, baseType: !584, size: 48, offset: 40)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ir_le_device_db_index", scope: !1024, file: !199, line: 170, baseType: !507, size: 32, offset: 96)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ir_lookup_active", scope: !1024, file: !199, line: 171, baseType: !507, size: 32, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_handle", scope: !1024, file: !199, line: 173, baseType: !507, size: 32, offset: 160)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "value_indication_timer", scope: !1024, file: !199, line: 174, baseType: !1034, size: 160, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "btstack_timer_source_t", file: !1035, line: 19, baseType: !1036)
!1035 = !DIFile(filename: "../btcommon/btstack_sys_timer.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_timer_source", file: !1035, line: 7, size: 160, elements: !1037)
!1037 = !{!1038, !1039, !1041, !1042, !1043, !1044, !1045, !1046, !1051}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !1036, file: !1035, line: 8, baseType: !542, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1036, file: !1035, line: 10, baseType: !1040, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !501, line: 48, baseType: !506)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_interval", scope: !1036, file: !1035, line: 11, baseType: !1040, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "timer_type", scope: !1036, file: !1035, line: 12, baseType: !1040, size: 4, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "timer_tick_overflow", scope: !1036, file: !1035, line: 13, baseType: !1040, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "loop_flag", scope: !1036, file: !1035, line: 14, baseType: !1040, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "loop_times", scope: !1036, file: !1035, line: 15, baseType: !1040, size: 10, offset: 86, flags: DIFlagBitField, extraData: i64 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !1036, file: !1035, line: 17, baseType: !1047, size: 32, offset: 96)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 32)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1036, file: !1035, line: 18, baseType: !503, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1024, file: !199, line: 176, baseType: !1053, size: 80, offset: 352)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "att_connection_t", file: !1054, line: 41, baseType: !1055)
!1054 = !DIFile(filename: "../btstack/Protocol/include/ble/att_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "att_connection", file: !1054, line: 34, size: 80, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !1055, file: !1054, line: 35, baseType: !804, size: 16)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1055, file: !1054, line: 36, baseType: !694, size: 16, offset: 16)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "max_mtu", scope: !1055, file: !1054, line: 37, baseType: !694, size: 16, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_key_size", scope: !1055, file: !1054, line: 38, baseType: !587, size: 8, offset: 48)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1055, file: !1054, line: 39, baseType: !587, size: 8, offset: 56)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !1055, file: !1054, line: 40, baseType: !587, size: 8, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "request_size", scope: !1024, file: !199, line: 178, baseType: !694, size: 16, offset: 432)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffer", scope: !1024, file: !199, line: 179, baseType: !1065, size: 4136, offset: 448)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 4136, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 517)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flow_hold_flag", scope: !1024, file: !199, line: 181, baseType: !587, size: 1, offset: 4584, flags: DIFlagBitField, extraData: i64 4584)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_request_flag", scope: !1024, file: !199, line: 182, baseType: !587, size: 1, offset: 4585, flags: DIFlagBitField, extraData: i64 4584)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "check_remote_tag", scope: !1024, file: !199, line: 183, baseType: !587, size: 3, offset: 4586, flags: DIFlagBitField, extraData: i64 4584)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "request_busy", scope: !1024, file: !199, line: 184, baseType: !587, size: 1, offset: 4589, flags: DIFlagBitField, extraData: i64 4584)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "reserverd", scope: !1024, file: !199, line: 185, baseType: !587, size: 2, offset: 4590, flags: DIFlagBitField, extraData: i64 4584)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "result_callback", scope: !1024, file: !199, line: 186, baseType: !1074, size: 32, offset: 4608)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 32)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !522, !500}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_buffer", scope: !977, file: !78, line: 597, baseType: !1078, size: 4232, offset: 5376)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 4232, elements: !1079)
!1079 = !{!1080}
!1080 = !DISubrange(count: 529)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_pos", scope: !977, file: !78, line: 598, baseType: !694, size: 16, offset: 9616)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "acl_recombination_length", scope: !977, file: !78, line: 599, baseType: !694, size: 16, offset: 9632)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num_acl_packets_sent", scope: !977, file: !78, line: 600, baseType: !587, size: 8, offset: 9648)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "own_id_address", scope: !977, file: !78, line: 602, baseType: !584, size: 48, offset: 9656)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "own_address", scope: !977, file: !78, line: 603, baseType: !584, size: 48, offset: 9704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "own_address_type", scope: !977, file: !78, line: 604, baseType: !983, size: 32, offset: 9760)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_client_storage", scope: !969, file: !825, line: 83, baseType: !1088, size: 32, offset: 96)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 32, elements: !620)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_t", file: !206, line: 191, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_client", file: !206, line: 140, size: 1024, elements: !1092)
!1092 = !{!1093, !1094, !1096, !1097, !1098, !1099, !1100, !1101, !1103, !1104, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1121, !1122, !1126, !1127, !1128, !1129, !1130, !1131, !1133, !1134}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !1091, file: !206, line: 141, baseType: !840, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_client_state", scope: !1091, file: !206, line: 143, baseType: !1095, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_state_t", file: !206, line: 124, baseType: !205)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1091, file: !206, line: 146, baseType: !845, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "con_handle", scope: !1091, file: !206, line: 148, baseType: !804, size: 16, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "address_type", scope: !1091, file: !206, line: 150, baseType: !587, size: 8, offset: 112)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1091, file: !206, line: 151, baseType: !584, size: 48, offset: 120)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1091, file: !206, line: 152, baseType: !694, size: 16, offset: 176)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mtu_state", scope: !1091, file: !206, line: 153, baseType: !1102, size: 32, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_mtu_t", file: !206, line: 132, baseType: !263)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "uuid16", scope: !1091, file: !206, line: 155, baseType: !694, size: 16, offset: 224)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "uuid128", scope: !1091, file: !206, line: 156, baseType: !1105, size: 128, offset: 240)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 128, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 16)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start_group_handle", scope: !1091, file: !206, line: 158, baseType: !694, size: 16, offset: 368)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "end_group_handle", scope: !1091, file: !206, line: 159, baseType: !694, size: 16, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "query_start_handle", scope: !1091, file: !206, line: 161, baseType: !694, size: 16, offset: 400)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "query_end_handle", scope: !1091, file: !206, line: 162, baseType: !694, size: 16, offset: 416)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_properties", scope: !1091, file: !206, line: 164, baseType: !587, size: 8, offset: 432)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "characteristic_start_handle", scope: !1091, file: !206, line: 165, baseType: !694, size: 16, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_handle", scope: !1091, file: !206, line: 167, baseType: !694, size: 16, offset: 464)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_offset", scope: !1091, file: !206, line: 168, baseType: !694, size: 16, offset: 480)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_length", scope: !1091, file: !206, line: 169, baseType: !694, size: 16, offset: 496)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_value", scope: !1091, file: !206, line: 170, baseType: !695, size: 32, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "read_multiple_handle_count", scope: !1091, file: !206, line: 173, baseType: !694, size: 16, offset: 544)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "read_multiple_handles", scope: !1091, file: !206, line: 174, baseType: !1120, size: 32, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "client_characteristic_configuration_handle", scope: !1091, file: !206, line: 176, baseType: !694, size: 16, offset: 608)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "client_characteristic_configuration_value", scope: !1091, file: !206, line: 177, baseType: !1123, size: 16, offset: 624)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 16, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 2)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "filter_with_uuid", scope: !1091, file: !206, line: 179, baseType: !587, size: 8, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "send_confirmation", scope: !1091, file: !206, line: 180, baseType: !587, size: 8, offset: 648)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "le_device_index", scope: !1091, file: !206, line: 182, baseType: !507, size: 32, offset: 672)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cmac", scope: !1091, file: !206, line: 183, baseType: !1018, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "gc_timeout", scope: !1091, file: !206, line: 185, baseType: !1034, size: 160, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_state", scope: !1091, file: !206, line: 188, baseType: !1132, size: 32, offset: 928)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gatt_client_rsp_t", file: !206, line: 137, baseType: !269)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "send_packet_buffer", scope: !1091, file: !206, line: 189, baseType: !1011, size: 56, offset: 960)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "send_packet_len", scope: !1091, file: !206, line: 190, baseType: !587, size: 8, offset: 1016)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(name: "btstack_stack", scope: !2, file: !3, line: 121, type: !1137, isLocal: false, isDefinition: true)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btstack_comm_handle_t", file: !510, line: 70, size: 160, elements: !1138)
!1138 = !{!1139, !1141, !1143, !1145, !1146}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "bredr_pool_hdl", scope: !1137, file: !510, line: 71, baseType: !1140, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "le_pool_hdl", scope: !1137, file: !510, line: 72, baseType: !1142, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "l2cap_hdl", scope: !1137, file: !510, line: 73, baseType: !1144, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "bredr_profile", scope: !1137, file: !510, line: 74, baseType: !508, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "user_var", scope: !1137, file: !510, line: 75, baseType: !503, size: 32, offset: 128)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(name: "crc_ta", scope: !2, file: !3, line: 493, type: !1149, isLocal: true, isDefinition: true)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 256, elements: !1106)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!1151 = !DIGlobalVariableExpression(var: !1152, expr: !DIExpression())
!1152 = distinct !DIGlobalVariable(name: "ble_disconnect_reason", scope: !2, file: !3, line: 546, type: !500, isLocal: true, isDefinition: true)
!1153 = !DIFile(filename: "../btcommon/profile_stack_debug.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1154 = !{i32 2, !"Dwarf Version", i32 4}
!1155 = !{i32 2, !"Debug Info Version", i32 3}
!1156 = !{!"clang version 4.0.1 (git@192.168.8.109:huangzhenyu/clang.git d97b416c061747718623e97046d5e7dcb4c75555) (git@192.168.8.109:huangzhenyu/llvm.git 64c6917899f78226b6d3cf2b78db54d02abf7c85)"}
!1157 = distinct !DISubprogram(name: "get_bredr_pool_len", scope: !3, file: !3, line: 128, type: !1158, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!522}
!1160 = !{}
!1161 = !DILocation(line: 130, column: 5, scope: !1157)
!1162 = distinct !DISubprogram(name: "get_le_pool_len", scope: !3, file: !3, line: 133, type: !1158, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1163 = !DILocation(line: 135, column: 5, scope: !1162)
!1164 = distinct !DISubprogram(name: "get_l2cap_stack_len", scope: !3, file: !3, line: 138, type: !1158, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1165 = !DILocation(line: 140, column: 5, scope: !1164)
!1166 = distinct !DISubprogram(name: "get_profile_pool_len", scope: !3, file: !3, line: 143, type: !1158, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1167 = !DILocation(line: 145, column: 5, scope: !1166)
!1168 = distinct !DISubprogram(name: "btstack_mem_init", scope: !3, file: !3, line: 148, type: !779, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1169 = !DILocation(line: 156, column: 34, scope: !1168)
!1170 = !{!1171, !1172, i64 8}
!1171 = !{!"btstack_comm_handle_t", !1172, i64 0, !1172, i64 4, !1172, i64 8, !1172, i64 12, !1172, i64 16}
!1172 = !{!"any pointer", !1173, i64 0}
!1173 = !{!"omnipotent char", !1174, i64 0}
!1174 = !{!"Simple C/C++ TBAA"}
!1175 = !DILocation(line: 159, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 159, column: 9)
!1177 = !{!1178, !1178, i64 0}
!1178 = !{!"int", !1173, i64 0}
!1179 = !DILocation(line: 159, column: 9, scope: !1168)
!1180 = !DILocation(line: 160, column: 38, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 159, column: 55)
!1182 = !{!1171, !1172, i64 0}
!1183 = !DILocation(line: 161, column: 38, scope: !1181)
!1184 = !{!1171, !1172, i64 12}
!1185 = !DILocation(line: 164, column: 9, scope: !1181)
!1186 = !DILocation(line: 165, column: 9, scope: !1181)
!1187 = !DILocation(line: 166, column: 9, scope: !1181)
!1188 = !DILocation(line: 167, column: 5, scope: !1181)
!1189 = !DILocation(line: 169, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 169, column: 9)
!1191 = !DILocation(line: 169, column: 9, scope: !1168)
!1192 = !DILocation(line: 171, column: 9, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1194, file: !3, discriminator: 1)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 171, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 171, column: 9)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 169, column: 50)
!1197 = !DILocation(line: 171, column: 9, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1195, file: !3, discriminator: 1)
!1199 = !DILocation(line: 171, column: 9, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1201, file: !3, discriminator: 2)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 171, column: 9)
!1202 = !DILocation(line: 171, column: 9, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !3, discriminator: 3)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 171, column: 9)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 171, column: 9)
!1206 = !DILocation(line: 171, column: 9, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1204, file: !3, discriminator: 8)
!1208 = !DILocation(line: 171, column: 9, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1204, file: !3, discriminator: 9)
!1210 = !DILocation(line: 171, column: 9, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1212, file: !3, discriminator: 5)
!1212 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 171, column: 9)
!1213 = !DILocation(line: 171, column: 9, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1215, file: !3, discriminator: 6)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 171, column: 9)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 171, column: 9)
!1217 = !DILocation(line: 173, column: 38, scope: !1196)
!1218 = !{!1171, !1172, i64 4}
!1219 = !DILocation(line: 176, column: 9, scope: !1196)
!1220 = !DILocation(line: 177, column: 9, scope: !1196)
!1221 = !DILocation(line: 179, column: 5, scope: !1196)
!1222 = !DILocation(line: 182, column: 26, scope: !1168)
!1223 = !DILocation(line: 182, column: 5, scope: !1168)
!1224 = !DILocation(line: 183, column: 1, scope: !1168)
!1225 = distinct !DISubprogram(name: "cpu_reset", scope: !1226, file: !1226, line: 145, type: !779, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1226 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/driver/cpu/bd19/asm/cpu.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1227 = !DILocation(line: 148, column: 5, scope: !1225)
!1228 = !DILocation(line: 149, column: 1, scope: !1225)
!1229 = distinct !DISubprogram(name: "btstack_v21_main", scope: !3, file: !3, line: 484, type: !779, isLocal: false, isDefinition: true, scopeLine: 485, isOptimized: true, unit: !2, variables: !1160)
!1230 = !DILocation(line: 487, column: 38, scope: !1229)
!1231 = !DILocation(line: 487, column: 5, scope: !1229)
!1232 = !DILocation(line: 488, column: 33, scope: !1229)
!1233 = !DILocalVariable(name: "var", arg: 1, scope: !1234, file: !3, line: 351, type: !503)
!1234 = distinct !DISubprogram(name: "bt_bredr_init", scope: !3, file: !3, line: 351, type: !1235, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !503}
!1237 = !{!1233, !1238, !1266}
!1238 = !DILocalVariable(name: "db_file", scope: !1234, file: !3, line: 353, type: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "database_file", file: !1242, line: 47, size: 224, elements: !1243)
!1242 = !DIFile(filename: "../User/include/bredr/remote_device_db.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1243 = !{!1244, !1248, !1252, !1256, !1257, !1261, !1265}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1241, file: !1242, line: 48, baseType: !1245, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 32)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!507, null}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1241, file: !1242, line: 49, baseType: !1249, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 32)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, null}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1241, file: !1242, line: 50, baseType: !1253, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 32)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!507, !503, !507, !505}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1241, file: !1242, line: 51, baseType: !1253, size: 32, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !1241, file: !1242, line: 52, baseType: !1258, size: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 32)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !507, !507}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "getlen", scope: !1241, file: !1242, line: 53, baseType: !1262, size: 32, offset: 160)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 32)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!507}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "get_fpos", scope: !1241, file: !1242, line: 54, baseType: !1245, size: 32, offset: 192)
!1266 = !DILocalVariable(name: "profile", scope: !1234, file: !3, line: 355, type: !508)
!1267 = !DILocation(line: 351, column: 33, scope: !1234, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 488, column: 5, scope: !1229)
!1269 = !DILocation(line: 360, column: 15, scope: !1234, inlinedAt: !1268)
!1270 = !DILocation(line: 353, column: 33, scope: !1234, inlinedAt: !1268)
!1271 = !DILocation(line: 361, column: 5, scope: !1234, inlinedAt: !1268)
!1272 = !DILocation(line: 364, column: 43, scope: !1234, inlinedAt: !1268)
!1273 = !DILocation(line: 364, column: 5, scope: !1274, inlinedAt: !1268)
!1274 = !DILexicalBlockFile(scope: !1234, file: !3, discriminator: 1)
!1275 = !DILocation(line: 375, column: 27, scope: !1234, inlinedAt: !1268)
!1276 = !DILocation(line: 375, column: 5, scope: !1234, inlinedAt: !1268)
!1277 = !DILocation(line: 380, column: 38, scope: !1234, inlinedAt: !1268)
!1278 = !{!1279, !1172, i64 32}
!1279 = !{!"profile_cmd_handle", !1172, i64 0, !1172, i64 4, !1172, i64 8, !1172, i64 12, !1172, i64 16, !1172, i64 20, !1172, i64 24, !1172, i64 28, !1172, i64 32, !1172, i64 36, !1172, i64 40}
!1280 = !DILocation(line: 381, column: 24, scope: !1234, inlinedAt: !1268)
!1281 = !DILocation(line: 381, column: 5, scope: !1234, inlinedAt: !1268)
!1282 = !DILocation(line: 382, column: 5, scope: !1234, inlinedAt: !1268)
!1283 = !DILocation(line: 393, column: 9, scope: !1284, inlinedAt: !1268)
!1284 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 393, column: 9)
!1285 = !{!1173, !1173, i64 0}
!1286 = !DILocation(line: 393, column: 9, scope: !1234, inlinedAt: !1268)
!1287 = !DILocation(line: 394, column: 43, scope: !1288, inlinedAt: !1268)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 393, column: 30)
!1289 = !{!1290, !1291, i64 10}
!1290 = !{!"_stack_config", !1178, i64 0, !1291, i64 4, !1291, i64 6, !1291, i64 8, !1291, i64 10, !1291, i64 12, !1173, i64 14, !1173, i64 15, !1173, i64 16, !1173, i64 17, !1173, i64 17, !1173, i64 17, !1173, i64 17, !1173, i64 18, !1173, i64 18, !1173, i64 18, !1173, i64 18, !1173, i64 18, !1173, i64 18, !1173, i64 18, !1173, i64 18, !1173, i64 19, !1173, i64 19, !1173, i64 19, !1173, i64 19, !1173, i64 19, !1173, i64 19, !1173, i64 19, !1173, i64 19, !1173, i64 20, !1173, i64 20, !1173, i64 20, !1173, i64 21, !1173, i64 22, !1173, i64 23, !1173, i64 24, !1173, i64 25, !1173, i64 31, !1173, i64 31}
!1291 = !{!"short", !1173, i64 0}
!1292 = !DILocation(line: 395, column: 42, scope: !1288, inlinedAt: !1268)
!1293 = !{!1279, !1172, i64 8}
!1294 = !DILocation(line: 396, column: 34, scope: !1288, inlinedAt: !1268)
!1295 = !DILocation(line: 396, column: 9, scope: !1288, inlinedAt: !1268)
!1296 = !DILocation(line: 397, column: 5, scope: !1288, inlinedAt: !1268)
!1297 = !DILocation(line: 413, column: 9, scope: !1298, inlinedAt: !1268)
!1298 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 413, column: 9)
!1299 = !DILocation(line: 413, column: 9, scope: !1234, inlinedAt: !1268)
!1300 = !DILocation(line: 414, column: 43, scope: !1301, inlinedAt: !1268)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 413, column: 30)
!1302 = !DILocation(line: 415, column: 42, scope: !1301, inlinedAt: !1268)
!1303 = !{!1279, !1172, i64 0}
!1304 = !DILocation(line: 416, column: 36, scope: !1301, inlinedAt: !1268)
!1305 = !DILocation(line: 416, column: 45, scope: !1301, inlinedAt: !1268)
!1306 = !{!1172, !1172, i64 0}
!1307 = !DILocation(line: 416, column: 65, scope: !1301, inlinedAt: !1268)
!1308 = !DILocation(line: 416, column: 9, scope: !1301, inlinedAt: !1268)
!1309 = !DILocation(line: 417, column: 5, scope: !1301, inlinedAt: !1268)
!1310 = !DILocation(line: 445, column: 9, scope: !1311, inlinedAt: !1268)
!1311 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 445, column: 9)
!1312 = !DILocation(line: 445, column: 9, scope: !1234, inlinedAt: !1268)
!1313 = !DILocation(line: 446, column: 43, scope: !1314, inlinedAt: !1268)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 445, column: 30)
!1315 = !DILocation(line: 447, column: 42, scope: !1314, inlinedAt: !1268)
!1316 = !{!1279, !1172, i64 4}
!1317 = !DILocation(line: 448, column: 28, scope: !1314, inlinedAt: !1268)
!1318 = !DILocation(line: 448, column: 9, scope: !1314, inlinedAt: !1268)
!1319 = !DILocation(line: 449, column: 5, scope: !1314, inlinedAt: !1268)
!1320 = !DILocation(line: 466, column: 5, scope: !1234, inlinedAt: !1268)
!1321 = !DILocation(line: 469, column: 5, scope: !1234, inlinedAt: !1268)
!1322 = !DILocation(line: 489, column: 1, scope: !1229)
!1323 = distinct !DISubprogram(name: "lib_make_ble_address", scope: !3, file: !3, line: 515, type: !1324, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !499, !499}
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "ble_address", arg: 1, scope: !1323, file: !3, line: 515, type: !499)
!1328 = !DILocalVariable(name: "edr_address", arg: 2, scope: !1323, file: !3, line: 515, type: !499)
!1329 = !DILocalVariable(name: "tmp_crc", scope: !1323, file: !3, line: 517, type: !505)
!1330 = !DILocation(line: 515, column: 31, scope: !1323)
!1331 = !DILocation(line: 515, column: 48, scope: !1323)
!1332 = !DILocation(line: 517, column: 5, scope: !1323)
!1333 = !DILocation(line: 517, column: 9, scope: !1323)
!1334 = !DILocation(line: 518, column: 13, scope: !1323)
!1335 = !DILocation(line: 518, column: 30, scope: !1323)
!1336 = !DILocation(line: 518, column: 5, scope: !1323)
!1337 = !DILocation(line: 519, column: 15, scope: !1323)
!1338 = !DILocation(line: 519, column: 13, scope: !1323)
!1339 = !DILocation(line: 520, column: 5, scope: !1323)
!1340 = !DILocation(line: 521, column: 15, scope: !1323)
!1341 = !DILocation(line: 521, column: 32, scope: !1323)
!1342 = !DILocation(line: 521, column: 30, scope: !1323)
!1343 = !DILocation(line: 522, column: 5, scope: !1323)
!1344 = !DILocation(line: 522, column: 20, scope: !1323)
!1345 = !DILocation(line: 523, column: 1, scope: !1323)
!1346 = distinct !DISubprogram(name: "cal_crc16_private", scope: !3, file: !3, line: 497, type: !1347, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!522, !499, !522, !522}
!1349 = !{!1350, !1351, !1352, !1353, !1354}
!1350 = !DILocalVariable(name: "ptr", arg: 1, scope: !1346, file: !3, line: 497, type: !499)
!1351 = !DILocalVariable(name: "len", arg: 2, scope: !1346, file: !3, line: 497, type: !522)
!1352 = !DILocalVariable(name: "init_crc", arg: 3, scope: !1346, file: !3, line: 497, type: !522)
!1353 = !DILocalVariable(name: "da", scope: !1346, file: !3, line: 499, type: !500)
!1354 = !DILocalVariable(name: "my_crc16_value", scope: !1346, file: !3, line: 500, type: !522)
!1355 = !DILocation(line: 497, column: 34, scope: !1346)
!1356 = !DILocation(line: 497, column: 43, scope: !1346)
!1357 = !DILocation(line: 497, column: 52, scope: !1346)
!1358 = !DILocation(line: 500, column: 9, scope: !1346)
!1359 = !DILocation(line: 502, column: 16, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1346, file: !3, discriminator: 1)
!1361 = !DILocation(line: 502, column: 5, scope: !1360)
!1362 = !DILocation(line: 503, column: 14, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 502, column: 22)
!1364 = !DILocation(line: 504, column: 24, scope: !1363)
!1365 = !DILocation(line: 505, column: 40, scope: !1363)
!1366 = !DILocation(line: 505, column: 45, scope: !1363)
!1367 = !DILocation(line: 505, column: 37, scope: !1363)
!1368 = !DILocation(line: 505, column: 27, scope: !1363)
!1369 = !{!1291, !1291, i64 0}
!1370 = !DILocation(line: 505, column: 24, scope: !1363)
!1371 = !DILocation(line: 506, column: 14, scope: !1363)
!1372 = !DILocation(line: 507, column: 24, scope: !1363)
!1373 = !DILocation(line: 508, column: 45, scope: !1363)
!1374 = !DILocation(line: 508, column: 37, scope: !1363)
!1375 = !DILocation(line: 508, column: 27, scope: !1363)
!1376 = !DILocation(line: 508, column: 24, scope: !1363)
!1377 = !DILocation(line: 509, column: 12, scope: !1363)
!1378 = !DILocation(line: 510, column: 12, scope: !1363)
!1379 = distinct !{!1379, !1380, !1381}
!1380 = !DILocation(line: 502, column: 5, scope: !1346)
!1381 = !DILocation(line: 511, column: 5, scope: !1346)
!1382 = !DILocation(line: 512, column: 5, scope: !1346)
!1383 = distinct !DISubprogram(name: "ble_vendor_change_disconn_reason", scope: !3, file: !3, line: 548, type: !1384, isLocal: false, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !500}
!1386 = !{!1387}
!1387 = !DILocalVariable(name: "reason", arg: 1, scope: !1383, file: !3, line: 548, type: !500)
!1388 = !DILocation(line: 548, column: 42, scope: !1383)
!1389 = !DILocation(line: 550, column: 27, scope: !1383)
!1390 = !DILocation(line: 551, column: 1, scope: !1383)
!1391 = distinct !DISubprogram(name: "ble_stack_exit", scope: !3, file: !3, line: 797, type: !1392, isLocal: false, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !505}
!1394 = !{!1395}
!1395 = !DILocalVariable(name: "param", arg: 1, scope: !1391, file: !3, line: 797, type: !505)
!1396 = !DILocation(line: 797, column: 25, scope: !1391)
!1397 = !DILocation(line: 799, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 799, column: 9)
!1399 = !DILocation(line: 799, column: 49, scope: !1398)
!1400 = !DILocation(line: 800, column: 9, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 800, column: 9)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 799, column: 97)
!1403 = !DILocation(line: 800, column: 9, scope: !1402)
!1404 = !DILocation(line: 800, column: 9, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1401, file: !3, discriminator: 1)
!1406 = !DILocation(line: 801, column: 43, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 801, column: 13)
!1408 = !{!1409, !1173, i64 180}
!1409 = !{!"btstack_ctrl", !1410, i64 0}
!1410 = !{!"ble_mode_ctrl", !1411, i64 0, !1413, i64 12, !1173, i64 48, !1172, i64 176, !1173, i64 180, !1173, i64 181, !1173, i64 181}
!1411 = !{!"run_loop", !1412, i64 0, !1172, i64 4, !1172, i64 8}
!1412 = !{!"btstack_linked_item", !1172, i64 0}
!1413 = !{!"_cbuffer", !1172, i64 0, !1172, i64 4, !1172, i64 8, !1172, i64 12, !1172, i64 16, !1178, i64 20, !1178, i64 24, !1178, i64 28, !1414, i64 32}
!1414 = !{!"__spinlock", !1178, i64 0}
!1415 = !DILocation(line: 801, column: 19, scope: !1407)
!1416 = !DILocation(line: 801, column: 13, scope: !1402)
!1417 = !DILocation(line: 802, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 802, column: 13)
!1419 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 801, column: 53)
!1420 = !DILocation(line: 802, column: 13, scope: !1419)
!1421 = !DILocation(line: 802, column: 13, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 1)
!1423 = !DILocation(line: 805, column: 41, scope: !1402)
!1424 = !DILocation(line: 805, column: 39, scope: !1402)
!1425 = !DILocation(line: 806, column: 9, scope: !1402)
!1426 = !DILocation(line: 807, column: 37, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1402, file: !3, discriminator: 1)
!1428 = !DILocation(line: 807, column: 9, scope: !1427)
!1429 = !DILocation(line: 808, column: 13, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 807, column: 47)
!1431 = distinct !{!1431, !1432, !1433}
!1432 = !DILocation(line: 807, column: 9, scope: !1402)
!1433 = !DILocation(line: 810, column: 9, scope: !1402)
!1434 = !DILocation(line: 811, column: 9, scope: !1402)
!1435 = !DILocation(line: 812, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 812, column: 9)
!1437 = !DILocation(line: 812, column: 9, scope: !1402)
!1438 = !DILocation(line: 812, column: 9, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1436, file: !3, discriminator: 1)
!1440 = !DILocation(line: 814, column: 1, scope: !1391)
!1441 = distinct !DISubprogram(name: "set_ll_hci_param_config", scope: !3, file: !3, line: 816, type: !1259, isLocal: false, isDefinition: true, scopeLine: 817, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1442)
!1442 = !{!1443, !1444, !1445}
!1443 = !DILocalVariable(name: "type", arg: 1, scope: !1441, file: !3, line: 816, type: !507)
!1444 = !DILocalVariable(name: "value", arg: 2, scope: !1441, file: !3, line: 816, type: !507)
!1445 = !DILocalVariable(name: "cfg_hci_ll_par", scope: !1441, file: !3, line: 818, type: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "hci_ll_param_t", file: !1448, line: 34, baseType: !1449)
!1448 = !DIFile(filename: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/include_lib/btctrler/ble/hci_ll.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 29, size: 8, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "Own_Address_Type", scope: !1449, file: !1448, line: 30, baseType: !500, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "Adv_Filter_Policy", scope: !1449, file: !1448, line: 31, baseType: !500, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "Scan_Filter_Policy", scope: !1449, file: !1448, line: 32, baseType: !500, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "initiator_filter_policy", scope: !1449, file: !1448, line: 33, baseType: !500, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1455 = !DILocation(line: 816, column: 34, scope: !1441)
!1456 = !DILocation(line: 816, column: 44, scope: !1441)
!1457 = !DILocation(line: 818, column: 38, scope: !1441)
!1458 = !DILocation(line: 818, column: 21, scope: !1441)
!1459 = !DILocation(line: 822, column: 5, scope: !1441)
!1460 = !DILocation(line: 824, column: 44, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 822, column: 19)
!1462 = !DILocation(line: 824, column: 25, scope: !1461)
!1463 = !DILocation(line: 824, column: 42, scope: !1461)
!1464 = !DILocation(line: 825, column: 9, scope: !1461)
!1465 = !DILocation(line: 828, column: 45, scope: !1461)
!1466 = !DILocation(line: 828, column: 25, scope: !1461)
!1467 = !DILocation(line: 828, column: 43, scope: !1461)
!1468 = !DILocation(line: 829, column: 9, scope: !1461)
!1469 = !DILocation(line: 832, column: 46, scope: !1461)
!1470 = !DILocation(line: 832, column: 25, scope: !1461)
!1471 = !DILocation(line: 832, column: 44, scope: !1461)
!1472 = !DILocation(line: 833, column: 9, scope: !1461)
!1473 = !DILocation(line: 836, column: 51, scope: !1461)
!1474 = !DILocation(line: 836, column: 25, scope: !1461)
!1475 = !DILocation(line: 836, column: 49, scope: !1461)
!1476 = !DILocation(line: 837, column: 9, scope: !1461)
!1477 = !DILocation(line: 842, column: 1, scope: !1441)
!1478 = distinct !DISubprogram(name: "ble_user_cmd_prepare", scope: !3, file: !3, line: 845, type: !1479, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1483)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1481, !1482, !507, null}
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "ble_cmd_ret_e", file: !6, line: 99, baseType: !5)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "ble_cmd_type_e", file: !6, line: 87, baseType: !17)
!1483 = !{!1484, !1485, !1486, !1488, !1489, !1494, !1496}
!1484 = !DILocalVariable(name: "cmd", arg: 1, scope: !1478, file: !3, line: 845, type: !1482)
!1485 = !DILocalVariable(name: "argc", arg: 2, scope: !1478, file: !3, line: 845, type: !507)
!1486 = !DILocalVariable(name: "argv", scope: !1478, file: !3, line: 847, type: !1487)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 192, elements: !588)
!1488 = !DILocalVariable(name: "err", scope: !1478, file: !3, line: 848, type: !507)
!1489 = !DILocalVariable(name: "argptr", scope: !1478, file: !3, line: 849, type: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1491, line: 30, baseType: !1492)
!1491 = !DIFile(filename: "/opt/q32s/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/jks/jenkins/workspace/data_trans_sdk_export_gitlab/data_trans_sdk/lib/bt_protocol/make")
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 849, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 32)
!1494 = !DILocalVariable(name: "i", scope: !1495, file: !3, line: 870, type: !507)
!1495 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 870, column: 5)
!1496 = !DILocalVariable(name: "cmd_write_cbuf", scope: !1478, file: !3, line: 876, type: !507)
!1497 = !DILocation(line: 845, column: 51, scope: !1478)
!1498 = !DILocation(line: 845, column: 60, scope: !1478)
!1499 = !DILocation(line: 847, column: 5, scope: !1478)
!1500 = !DILocation(line: 847, column: 9, scope: !1478)
!1501 = !DILocation(line: 848, column: 9, scope: !1478)
!1502 = !DILocation(line: 849, column: 5, scope: !1478)
!1503 = !DILocation(line: 851, column: 31, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 851, column: 9)
!1505 = !DILocation(line: 851, column: 10, scope: !1504)
!1506 = !DILocation(line: 851, column: 9, scope: !1478)
!1507 = !DILocation(line: 852, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 852, column: 9)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 851, column: 41)
!1510 = !DILocation(line: 852, column: 9, scope: !1509)
!1511 = !DILocation(line: 852, column: 9, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1508, file: !3, discriminator: 1)
!1513 = !DILocation(line: 856, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 856, column: 9)
!1515 = !DILocation(line: 856, column: 9, scope: !1478)
!1516 = !DILocation(line: 860, column: 21, scope: !1478)
!1517 = !DILocation(line: 860, column: 28, scope: !1478)
!1518 = !DILocation(line: 860, column: 5, scope: !1478)
!1519 = !DILocation(line: 860, column: 13, scope: !1478)
!1520 = !DILocation(line: 862, column: 5, scope: !1478)
!1521 = !DILocation(line: 863, column: 5, scope: !1478)
!1522 = !DILocation(line: 864, column: 18, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 864, column: 9)
!1524 = !{!1409, !1178, i64 40}
!1525 = !DILocation(line: 864, column: 36, scope: !1523)
!1526 = !DILocation(line: 864, column: 15, scope: !1523)
!1527 = !DILocation(line: 864, column: 9, scope: !1478)
!1528 = !DILocation(line: 865, column: 9, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 864, column: 43)
!1530 = !DILocation(line: 866, column: 9, scope: !1529)
!1531 = !DILocation(line: 869, column: 5, scope: !1478)
!1532 = !DILocation(line: 870, column: 14, scope: !1495)
!1533 = !DILocation(line: 870, column: 23, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !3, discriminator: 1)
!1535 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 870, column: 5)
!1536 = !DILocation(line: 870, column: 5, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1495, file: !3, discriminator: 1)
!1538 = !DILocation(line: 871, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 870, column: 36)
!1540 = !DILocation(line: 874, column: 5, scope: !1478)
!1541 = !DILocation(line: 876, column: 9, scope: !1478)
!1542 = !DILocation(line: 878, column: 5, scope: !1478)
!1543 = !DILocation(line: 871, column: 9, scope: !1539)
!1544 = !DILocation(line: 871, column: 17, scope: !1539)
!1545 = !DILocation(line: 870, column: 32, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1535, file: !3, discriminator: 3)
!1547 = distinct !{!1547, !1548, !1549}
!1548 = !DILocation(line: 870, column: 5, scope: !1495)
!1549 = !DILocation(line: 873, column: 5, scope: !1495)
!1550 = !DILocation(line: 880, column: 13, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 880, column: 13)
!1552 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 878, column: 18)
!1553 = !DILocation(line: 880, column: 13, scope: !1552)
!1554 = !DILocation(line: 881, column: 38, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 880, column: 54)
!1556 = !DILocation(line: 881, column: 47, scope: !1555)
!1557 = !DILocation(line: 881, column: 64, scope: !1555)
!1558 = !DILocation(line: 881, column: 73, scope: !1555)
!1559 = !DILocation(line: 881, column: 82, scope: !1555)
!1560 = !DILocation(line: 881, column: 19, scope: !1555)
!1561 = !DILocation(line: 882, column: 9, scope: !1555)
!1562 = !DILocation(line: 887, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 887, column: 13)
!1564 = !DILocation(line: 887, column: 13, scope: !1552)
!1565 = !DILocation(line: 888, column: 38, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 887, column: 54)
!1567 = !DILocation(line: 888, column: 69, scope: !1566)
!1568 = !DILocation(line: 888, column: 86, scope: !1566)
!1569 = !DILocation(line: 888, column: 95, scope: !1566)
!1570 = !DILocation(line: 888, column: 104, scope: !1566)
!1571 = !DILocation(line: 888, column: 19, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1566, file: !3, discriminator: 1)
!1573 = !DILocation(line: 889, column: 9, scope: !1566)
!1574 = !DILocation(line: 894, column: 13, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 894, column: 13)
!1576 = !DILocation(line: 894, column: 13, scope: !1552)
!1577 = !DILocation(line: 895, column: 62, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 894, column: 54)
!1579 = !DILocation(line: 895, column: 33, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1578, file: !3, discriminator: 1)
!1581 = !DILocation(line: 895, column: 22, scope: !1578)
!1582 = !DILocation(line: 895, column: 31, scope: !1578)
!1583 = !DILocation(line: 896, column: 9, scope: !1578)
!1584 = !DILocation(line: 901, column: 13, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 901, column: 13)
!1586 = !DILocation(line: 901, column: 13, scope: !1552)
!1587 = !DILocation(line: 902, column: 62, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 901, column: 54)
!1589 = !DILocation(line: 902, column: 33, scope: !1588)
!1590 = !DILocation(line: 902, column: 22, scope: !1588)
!1591 = !DILocation(line: 902, column: 31, scope: !1588)
!1592 = !DILocation(line: 903, column: 9, scope: !1588)
!1593 = !DILocation(line: 908, column: 13, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 908, column: 13)
!1595 = !DILocation(line: 908, column: 13, scope: !1552)
!1596 = !DILocation(line: 909, column: 27, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 908, column: 54)
!1598 = !DILocation(line: 909, column: 44, scope: !1597)
!1599 = !DILocation(line: 909, column: 53, scope: !1597)
!1600 = !DILocation(line: 909, column: 62, scope: !1597)
!1601 = !DILocation(line: 909, column: 13, scope: !1597)
!1602 = !DILocation(line: 910, column: 9, scope: !1597)
!1603 = !DILocation(line: 915, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 915, column: 13)
!1605 = !DILocation(line: 915, column: 13, scope: !1552)
!1606 = !DILocation(line: 916, column: 43, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 915, column: 54)
!1608 = !DILocation(line: 916, column: 52, scope: !1607)
!1609 = !DILocation(line: 916, column: 61, scope: !1607)
!1610 = !DILocation(line: 916, column: 13, scope: !1607)
!1611 = !DILocation(line: 917, column: 9, scope: !1607)
!1612 = !DILocation(line: 922, column: 13, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 922, column: 13)
!1614 = !DILocation(line: 922, column: 13, scope: !1552)
!1615 = !DILocation(line: 923, column: 33, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 922, column: 54)
!1617 = !DILocation(line: 923, column: 42, scope: !1616)
!1618 = !DILocation(line: 923, column: 51, scope: !1616)
!1619 = !DILocation(line: 923, column: 13, scope: !1616)
!1620 = !DILocation(line: 924, column: 9, scope: !1616)
!1621 = !DILocation(line: 930, column: 13, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 930, column: 13)
!1623 = !DILocation(line: 930, column: 21, scope: !1622)
!1624 = !DILocation(line: 944, column: 9, scope: !1478)
!1625 = !DILocation(line: 945, column: 63, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 944, column: 25)
!1627 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 944, column: 9)
!1628 = !DILocation(line: 945, column: 9, scope: !1626)
!1629 = !DILocation(line: 948, column: 5, scope: !1478)
!1630 = !DILocation(line: 950, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 950, column: 9)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 949, column: 25)
!1633 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 949, column: 9)
!1634 = !DILocation(line: 950, column: 9, scope: !1632)
!1635 = !DILocation(line: 950, column: 9, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1631, file: !3, discriminator: 1)
!1637 = !DILocation(line: 952, column: 5, scope: !1478)
!1638 = !DILocation(line: 954, column: 13, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 954, column: 9)
!1640 = !DILocation(line: 954, column: 9, scope: !1478)
!1641 = !DILocation(line: 956, column: 24, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 954, column: 36)
!1643 = !DILocation(line: 956, column: 9, scope: !1642)
!1644 = !DILocation(line: 957, column: 5, scope: !1642)
!1645 = !DILocation(line: 960, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 960, column: 9)
!1647 = !DILocation(line: 960, column: 9, scope: !1478)
!1648 = !DILocation(line: 961, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 961, column: 9)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 960, column: 14)
!1651 = !DILocation(line: 961, column: 9, scope: !1650)
!1652 = !DILocation(line: 961, column: 9, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1649, file: !3, discriminator: 1)
!1654 = !DILocation(line: 964, column: 1, scope: !1478)
!1655 = !DILocation(line: 964, column: 1, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1478, file: !3, discriminator: 1)
!1657 = distinct !DISubprogram(name: "ble_profile_init", scope: !3, file: !3, line: 967, type: !779, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1658 = !DILocation(line: 969, column: 5, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 969, column: 5)
!1660 = !DILocation(line: 969, column: 5, scope: !1657)
!1661 = !DILocation(line: 969, column: 5, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1659, file: !3, discriminator: 1)
!1663 = !DILocation(line: 970, column: 5, scope: !1657)
!1664 = distinct !DISubprogram(name: "btstck_app_init_setting", scope: !3, file: !3, line: 976, type: !1665, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!500}
!1667 = !DILocation(line: 978, column: 5, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 978, column: 5)
!1669 = !DILocation(line: 978, column: 5, scope: !1664)
!1670 = !DILocation(line: 978, column: 5, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1668, file: !3, discriminator: 1)
!1672 = !DILocation(line: 979, column: 5, scope: !1664)
!1673 = distinct !DISubprogram(name: "jl_app_init_setting", scope: !3, file: !3, line: 982, type: !1665, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1674 = !DILocation(line: 984, column: 5, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 984, column: 5)
!1676 = !DILocation(line: 984, column: 5, scope: !1673)
!1677 = !DILocation(line: 984, column: 5, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1675, file: !3, discriminator: 1)
!1679 = !DILocation(line: 985, column: 5, scope: !1673)
!1680 = distinct !DISubprogram(name: "btstack_bredr_le_init", scope: !3, file: !3, line: 989, type: !779, isLocal: false, isDefinition: true, scopeLine: 990, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!1681 = !DILocation(line: 991, column: 5, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 991, column: 5)
!1683 = !DILocation(line: 991, column: 5, scope: !1680)
!1684 = !DILocation(line: 991, column: 5, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1682, file: !3, discriminator: 1)
!1686 = !DILocation(line: 1003, column: 10, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 1003, column: 9)
!1688 = !DILocation(line: 1003, column: 35, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1687, file: !3, discriminator: 1)
!1690 = !DILocation(line: 1003, column: 32, scope: !1687)
!1691 = !DILocation(line: 1004, column: 12, scope: !1689)
!1692 = !DILocation(line: 1005, column: 13, scope: !1689)
!1693 = !DILocation(line: 1005, column: 40, scope: !1689)
!1694 = !DILocation(line: 1003, column: 9, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1680, file: !3, discriminator: 2)
!1696 = !DILocation(line: 1007, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1005, column: 60)
!1698 = !DILocation(line: 1009, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1009, column: 13)
!1700 = !DILocation(line: 1009, column: 39, scope: !1699)
!1701 = !DILocation(line: 1009, column: 13, scope: !1697)
!1702 = !DILocation(line: 1010, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 1009, column: 45)
!1704 = !DILocation(line: 1014, column: 13, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1706, file: !3, discriminator: 1)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 1014, column: 13)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 1014, column: 13)
!1708 = !DILocation(line: 1014, column: 13, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1707, file: !3, discriminator: 1)
!1710 = !DILocation(line: 1014, column: 13, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1712, file: !3, discriminator: 2)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1014, column: 13)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1014, column: 13)
!1714 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1014, column: 13)
!1715 = !DILocation(line: 1014, column: 13, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1712, file: !3, discriminator: 5)
!1717 = !DILocation(line: 1014, column: 13, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1712, file: !3, discriminator: 6)
!1719 = !DILocation(line: 1014, column: 13, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1714, file: !3, discriminator: 2)
!1721 = !DILocation(line: 1014, column: 13, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1723, file: !3, discriminator: 3)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1014, column: 13)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1014, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1014, column: 13)
!1726 = !DILocation(line: 1023, column: 30, scope: !1680)
!1727 = !DILocation(line: 1023, column: 5, scope: !1680)
!1728 = !DILocation(line: 1025, column: 9, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 1025, column: 9)
!1730 = !DILocation(line: 1025, column: 9, scope: !1680)
!1731 = !DILocation(line: 479, column: 5, scope: !1732, inlinedAt: !1733)
!1732 = distinct !DISubprogram(name: "bredr_setting_before_init", scope: !3, file: !3, line: 477, type: !779, isLocal: true, isDefinition: true, scopeLine: 478, isOptimized: true, unit: !2, variables: !1160)
!1733 = distinct !DILocation(line: 1026, column: 9, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 1025, column: 55)
!1735 = !DILocation(line: 480, column: 5, scope: !1732, inlinedAt: !1733)
!1736 = !DILocation(line: 1027, column: 9, scope: !1734)
!1737 = !DILocation(line: 1028, column: 5, scope: !1734)
!1738 = !DILocation(line: 1030, column: 49, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 1030, column: 9)
!1740 = !DILocation(line: 1031, column: 14, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1031, column: 13)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1030, column: 97)
!1743 = !DILocation(line: 1031, column: 13, scope: !1742)
!1744 = !DILocation(line: 1032, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 1032, column: 13)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 1031, column: 51)
!1747 = !DILocation(line: 1032, column: 13, scope: !1746)
!1748 = !DILocation(line: 1032, column: 13, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1745, file: !3, discriminator: 1)
!1750 = !DILocation(line: 1036, column: 9, scope: !1742)
!1751 = !DILocation(line: 1037, column: 9, scope: !1742)
!1752 = !DILocation(line: 1038, column: 9, scope: !1742)
!1753 = !DILocation(line: 1039, column: 39, scope: !1742)
!1754 = !DILocation(line: 1041, column: 13, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1041, column: 13)
!1756 = !DILocation(line: 1041, column: 13, scope: !1742)
!1757 = !DILocation(line: 1043, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1041, column: 54)
!1759 = !DILocation(line: 1044, column: 13, scope: !1758)
!1760 = !DILocation(line: 1048, column: 9, scope: !1758)
!1761 = !DILocation(line: 1049, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1049, column: 9)
!1763 = !DILocation(line: 1049, column: 9, scope: !1742)
!1764 = !DILocation(line: 1049, column: 9, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1762, file: !3, discriminator: 1)
!1766 = !DILocation(line: 1051, column: 1, scope: !1680)
!1767 = distinct !DISubprogram(name: "packet_handler", scope: !3, file: !3, line: 187, type: !536, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776}
!1769 = !DILocalVariable(name: "connection", arg: 1, scope: !1767, file: !3, line: 187, type: !503)
!1770 = !DILocalVariable(name: "packet_type", arg: 2, scope: !1767, file: !3, line: 187, type: !500)
!1771 = !DILocalVariable(name: "channel", arg: 3, scope: !1767, file: !3, line: 187, type: !522)
!1772 = !DILocalVariable(name: "packet", arg: 4, scope: !1767, file: !3, line: 188, type: !499)
!1773 = !DILocalVariable(name: "len", arg: 5, scope: !1767, file: !3, line: 188, type: !522)
!1774 = !DILocalVariable(name: "remote_addr_ptr", scope: !1767, file: !3, line: 190, type: !499)
!1775 = !DILocalVariable(name: "temp_addr_buf", scope: !1767, file: !3, line: 191, type: !640)
!1776 = !DILocalVariable(name: "handle", scope: !1767, file: !3, line: 192, type: !505)
!1777 = !DILocation(line: 187, column: 34, scope: !1767)
!1778 = !DILocation(line: 187, column: 49, scope: !1767)
!1779 = !DILocation(line: 187, column: 66, scope: !1767)
!1780 = !DILocation(line: 188, column: 32, scope: !1767)
!1781 = !DILocation(line: 188, column: 44, scope: !1767)
!1782 = !DILocation(line: 191, column: 5, scope: !1767)
!1783 = !DILocation(line: 191, column: 8, scope: !1767)
!1784 = !DILocation(line: 193, column: 5, scope: !1767)
!1785 = !DILocation(line: 195, column: 17, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 193, column: 26)
!1787 = !DILocation(line: 195, column: 9, scope: !1786)
!1788 = !DILocation(line: 198, column: 13, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 195, column: 28)
!1790 = !DILocation(line: 199, column: 17, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 199, column: 17)
!1792 = !DILocation(line: 199, column: 27, scope: !1791)
!1793 = !DILocation(line: 199, column: 17, scope: !1789)
!1794 = !DILocation(line: 200, column: 21, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 199, column: 33)
!1796 = !DILocation(line: 201, column: 21, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 201, column: 21)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 200, column: 50)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 200, column: 21)
!1800 = !DILocation(line: 201, column: 21, scope: !1798)
!1801 = !DILocation(line: 201, column: 21, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1797, file: !3, discriminator: 1)
!1803 = !DILocation(line: 202, column: 62, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 202, column: 25)
!1805 = !DILocation(line: 202, column: 26, scope: !1804)
!1806 = !DILocation(line: 205, column: 21, scope: !1798)
!1807 = !DILocation(line: 206, column: 44, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 206, column: 25)
!1809 = !{!1810, !1172, i64 8}
!1810 = !{!"user_interface_handler", !1172, i64 0, !1172, i64 4, !1172, i64 8, !1172, i64 12, !1172, i64 16, !1172, i64 20, !1172, i64 24, !1172, i64 28, !1172, i64 32, !1172, i64 36, !1172, i64 40, !1172, i64 44, !1172, i64 48, !1172, i64 52, !1172, i64 56}
!1811 = !DILocation(line: 206, column: 25, scope: !1808)
!1812 = !DILocation(line: 206, column: 25, scope: !1798)
!1813 = !DILocation(line: 207, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 206, column: 68)
!1815 = !DILocation(line: 208, column: 21, scope: !1814)
!1816 = !DILocation(line: 209, column: 94, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 208, column: 28)
!1818 = !DILocation(line: 209, column: 105, scope: !1817)
!1819 = !DILocation(line: 209, column: 25, scope: !1817)
!1820 = !DILocation(line: 212, column: 58, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1822, file: !3, discriminator: 1)
!1822 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 212, column: 28)
!1823 = !DILocation(line: 213, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 213, column: 21)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 212, column: 93)
!1826 = !DILocation(line: 213, column: 21, scope: !1825)
!1827 = !DILocation(line: 213, column: 21, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1824, file: !3, discriminator: 1)
!1829 = !DILocation(line: 214, column: 21, scope: !1825)
!1830 = !DILocation(line: 215, column: 17, scope: !1825)
!1831 = !DILocation(line: 217, column: 21, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 216, column: 20)
!1833 = !DILocation(line: 218, column: 21, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 217, column: 50)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 217, column: 21)
!1836 = !DILocation(line: 220, column: 44, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 220, column: 25)
!1838 = !DILocation(line: 220, column: 25, scope: !1837)
!1839 = !DILocation(line: 220, column: 25, scope: !1834)
!1840 = !DILocation(line: 221, column: 25, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 221, column: 25)
!1842 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 220, column: 68)
!1843 = !DILocation(line: 221, column: 25, scope: !1842)
!1844 = !DILocation(line: 221, column: 25, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1841, file: !3, discriminator: 1)
!1846 = !DILocation(line: 222, column: 44, scope: !1842)
!1847 = !DILocation(line: 222, column: 82, scope: !1842)
!1848 = !DILocation(line: 222, column: 25, scope: !1842)
!1849 = !DILocation(line: 223, column: 21, scope: !1842)
!1850 = !DILocation(line: 224, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 224, column: 25)
!1852 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 223, column: 28)
!1853 = !DILocation(line: 224, column: 25, scope: !1852)
!1854 = !DILocation(line: 224, column: 25, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1851, file: !3, discriminator: 1)
!1856 = !DILocation(line: 225, column: 94, scope: !1852)
!1857 = !DILocation(line: 225, column: 105, scope: !1852)
!1858 = !DILocation(line: 225, column: 25, scope: !1852)
!1859 = !DILocation(line: 235, column: 42, scope: !1789)
!1860 = !DILocation(line: 235, column: 13, scope: !1789)
!1861 = !DILocation(line: 236, column: 17, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 236, column: 17)
!1863 = !DILocation(line: 236, column: 17, scope: !1789)
!1864 = !DILocation(line: 237, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 237, column: 21)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 236, column: 39)
!1867 = !DILocation(line: 237, column: 31, scope: !1865)
!1868 = !DILocation(line: 237, column: 21, scope: !1866)
!1869 = !DILocation(line: 239, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 239, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 237, column: 40)
!1872 = !DILocation(line: 239, column: 25, scope: !1871)
!1873 = !DILocation(line: 240, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 239, column: 53)
!1875 = !DILocation(line: 241, column: 25, scope: !1874)
!1876 = !DILocation(line: 242, column: 25, scope: !1874)
!1877 = !DILocation(line: 246, column: 13, scope: !1789)
!1878 = !DILocation(line: 247, column: 21, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 247, column: 17)
!1880 = !DILocation(line: 247, column: 17, scope: !1789)
!1881 = !DILocation(line: 248, column: 21, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 248, column: 21)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 247, column: 26)
!1884 = !DILocation(line: 248, column: 21, scope: !1883)
!1885 = !DILocation(line: 249, column: 21, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 249, column: 21)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 248, column: 49)
!1888 = !DILocation(line: 249, column: 21, scope: !1887)
!1889 = !DILocation(line: 249, column: 21, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1886, file: !3, discriminator: 1)
!1891 = !DILocation(line: 250, column: 21, scope: !1887)
!1892 = !DILocation(line: 251, column: 44, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 251, column: 25)
!1894 = !DILocation(line: 251, column: 25, scope: !1893)
!1895 = !DILocation(line: 251, column: 25, scope: !1887)
!1896 = !DILocation(line: 252, column: 25, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 251, column: 68)
!1898 = !DILocation(line: 253, column: 21, scope: !1897)
!1899 = !DILocation(line: 254, column: 94, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 253, column: 28)
!1901 = !DILocation(line: 254, column: 105, scope: !1900)
!1902 = !DILocation(line: 254, column: 25, scope: !1900)
!1903 = !DILocation(line: 259, column: 21, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 259, column: 21)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 258, column: 91)
!1906 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 258, column: 28)
!1907 = !DILocation(line: 259, column: 21, scope: !1905)
!1908 = !DILocation(line: 259, column: 21, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1904, file: !3, discriminator: 1)
!1910 = !DILocation(line: 260, column: 21, scope: !1905)
!1911 = !DILocation(line: 267, column: 17, scope: !1905)
!1912 = !DILocation(line: 271, column: 13, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 271, column: 13)
!1914 = !DILocation(line: 271, column: 13, scope: !1789)
!1915 = !DILocation(line: 273, column: 50, scope: !1789)
!1916 = !DILocation(line: 271, column: 13, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1913, file: !3, discriminator: 1)
!1918 = !DILocation(line: 272, column: 13, scope: !1789)
!1919 = !DILocation(line: 273, column: 38, scope: !1789)
!1920 = !DILocation(line: 273, column: 13, scope: !1789)
!1921 = !DILocation(line: 274, column: 13, scope: !1789)
!1922 = !DILocation(line: 276, column: 17, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 276, column: 17)
!1924 = !DILocation(line: 276, column: 27, scope: !1923)
!1925 = !DILocation(line: 276, column: 17, scope: !1789)
!1926 = !DILocation(line: 279, column: 17, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 279, column: 17)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 276, column: 49)
!1929 = !DILocation(line: 279, column: 17, scope: !1928)
!1930 = !DILocation(line: 279, column: 17, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1927, file: !3, discriminator: 1)
!1932 = !DILocation(line: 284, column: 13, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 284, column: 13)
!1934 = !DILocation(line: 284, column: 13, scope: !1789)
!1935 = !DILocation(line: 284, column: 13, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1933, file: !3, discriminator: 1)
!1937 = !DILocation(line: 285, column: 42, scope: !1789)
!1938 = !DILocation(line: 285, column: 13, scope: !1789)
!1939 = !DILocation(line: 286, column: 18, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 286, column: 17)
!1941 = !DILocation(line: 286, column: 28, scope: !1940)
!1942 = !DILocation(line: 286, column: 68, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1940, file: !3, discriminator: 1)
!1944 = !DILocation(line: 286, column: 49, scope: !1943)
!1945 = !DILocation(line: 286, column: 46, scope: !1940)
!1946 = !DILocation(line: 287, column: 74, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 286, column: 92)
!1948 = !DILocation(line: 287, column: 17, scope: !1947)
!1949 = !DILocation(line: 288, column: 13, scope: !1947)
!1950 = !DILocation(line: 289, column: 21, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 288, column: 20)
!1952 = !DILocation(line: 290, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 290, column: 21)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 289, column: 49)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 289, column: 21)
!1956 = !DILocation(line: 290, column: 21, scope: !1954)
!1957 = !DILocation(line: 290, column: 21, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1953, file: !3, discriminator: 1)
!1959 = !DILocation(line: 291, column: 90, scope: !1954)
!1960 = !DILocation(line: 291, column: 101, scope: !1954)
!1961 = !DILocation(line: 291, column: 21, scope: !1954)
!1962 = !DILocation(line: 292, column: 17, scope: !1954)
!1963 = !DILocation(line: 297, column: 13, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 297, column: 13)
!1965 = !DILocation(line: 297, column: 13, scope: !1789)
!1966 = !DILocation(line: 297, column: 13, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1964, file: !3, discriminator: 1)
!1968 = !DILocation(line: 298, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 298, column: 17)
!1970 = !DILocation(line: 298, column: 17, scope: !1789)
!1971 = !DILocation(line: 299, column: 17, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 298, column: 28)
!1973 = !DILocation(line: 300, column: 17, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 300, column: 17)
!1975 = !DILocation(line: 300, column: 17, scope: !1972)
!1976 = !DILocation(line: 300, column: 17, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1974, file: !3, discriminator: 1)
!1978 = !DILocation(line: 301, column: 86, scope: !1972)
!1979 = !DILocation(line: 301, column: 97, scope: !1972)
!1980 = !DILocation(line: 301, column: 17, scope: !1972)
!1981 = !DILocation(line: 307, column: 21, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 307, column: 21)
!1983 = !DILocation(line: 307, column: 31, scope: !1982)
!1984 = !DILocation(line: 308, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 308, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 307, column: 66)
!1987 = !DILocation(line: 307, column: 21, scope: !1972)
!1988 = !DILocation(line: 309, column: 25, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 308, column: 52)
!1990 = !DILocation(line: 310, column: 21, scope: !1989)
!1991 = !DILocation(line: 312, column: 24, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1993, file: !3, discriminator: 1)
!1993 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 312, column: 24)
!1994 = !DILocation(line: 312, column: 24, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1969, file: !3, discriminator: 1)
!1996 = !DILocation(line: 313, column: 86, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 312, column: 48)
!1998 = !DILocation(line: 313, column: 17, scope: !1997)
!1999 = !DILocation(line: 314, column: 13, scope: !1997)
!2000 = !DILocation(line: 318, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 318, column: 13)
!2002 = !DILocation(line: 318, column: 13, scope: !1789)
!2003 = !DILocation(line: 318, column: 13, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2001, file: !3, discriminator: 1)
!2005 = !DILocation(line: 319, column: 79, scope: !1789)
!2006 = !DILocation(line: 319, column: 38, scope: !1789)
!2007 = !DILocation(line: 319, column: 90, scope: !1789)
!2008 = !DILocation(line: 319, column: 13, scope: !1789)
!2009 = !DILocation(line: 320, column: 13, scope: !1789)
!2010 = !DILocation(line: 323, column: 13, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 323, column: 13)
!2012 = !DILocation(line: 323, column: 13, scope: !1789)
!2013 = !DILocation(line: 323, column: 13, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2011, file: !3, discriminator: 1)
!2015 = !DILocation(line: 324, column: 36, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 324, column: 17)
!2017 = !{!1810, !1172, i64 40}
!2018 = !DILocation(line: 324, column: 17, scope: !2016)
!2019 = !DILocation(line: 324, column: 17, scope: !1789)
!2020 = !DILocation(line: 325, column: 17, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 324, column: 50)
!2022 = !DILocation(line: 326, column: 13, scope: !2021)
!2023 = !DILocation(line: 329, column: 13, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 329, column: 13)
!2025 = !DILocation(line: 329, column: 13, scope: !1789)
!2026 = !DILocation(line: 329, column: 13, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2024, file: !3, discriminator: 1)
!2028 = !DILocation(line: 330, column: 36, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 330, column: 17)
!2030 = !{!1810, !1172, i64 44}
!2031 = !DILocation(line: 330, column: 17, scope: !2029)
!2032 = !DILocation(line: 330, column: 17, scope: !1789)
!2033 = !DILocation(line: 331, column: 48, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 330, column: 49)
!2035 = !DILocation(line: 331, column: 17, scope: !2034)
!2036 = !DILocation(line: 332, column: 13, scope: !2034)
!2037 = !DILocation(line: 336, column: 13, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 336, column: 13)
!2039 = !DILocation(line: 336, column: 13, scope: !1789)
!2040 = !DILocation(line: 336, column: 13, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2038, file: !3, discriminator: 1)
!2042 = !DILocation(line: 337, column: 39, scope: !1789)
!2043 = !DILocation(line: 337, column: 13, scope: !1789)
!2044 = !DILocation(line: 338, column: 13, scope: !1789)
!2045 = !DILocation(line: 341, column: 13, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 341, column: 13)
!2047 = !DILocation(line: 341, column: 13, scope: !1789)
!2048 = !DILocation(line: 341, column: 13, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2046, file: !3, discriminator: 1)
!2050 = !DILocation(line: 342, column: 13, scope: !1789)
!2051 = !DILocation(line: 343, column: 13, scope: !1789)
!2052 = !DILocation(line: 345, column: 13, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 345, column: 13)
!2054 = !DILocation(line: 345, column: 13, scope: !1789)
!2055 = !DILocation(line: 345, column: 13, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2053, file: !3, discriminator: 1)
!2057 = !DILocation(line: 346, column: 13, scope: !1789)
!2058 = !DILocation(line: 347, column: 13, scope: !1789)
!2059 = !DILocation(line: 350, column: 1, scope: !1767)
!2060 = distinct !DISubprogram(name: "__ble_thread_loop_handler", scope: !3, file: !3, line: 763, type: !671, isLocal: true, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2061)
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "loop", arg: 1, scope: !2060, file: !3, line: 763, type: !673)
!2063 = !DILocalVariable(name: "null_addr", scope: !2064, file: !3, line: 531, type: !584)
!2064 = distinct !DISubprogram(name: "make_set_adv_params", scope: !3, file: !3, line: 528, type: !2065, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!507, !694, !587, !587}
!2067 = !{!2068, !2069, !2070, !2063}
!2068 = !DILocalVariable(name: "adv_interval", arg: 1, scope: !2064, file: !3, line: 528, type: !694)
!2069 = !DILocalVariable(name: "adv_type", arg: 2, scope: !2064, file: !3, line: 528, type: !587)
!2070 = !DILocalVariable(name: "adv_channel", arg: 3, scope: !2064, file: !3, line: 528, type: !587)
!2071 = !DILocation(line: 531, column: 15, scope: !2064, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 573, column: 13, scope: !2073, inlinedAt: !2105)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 567, column: 25)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 558, column: 64)
!2075 = distinct !DISubprogram(name: "ble_cmd_handler", scope: !3, file: !3, line: 553, type: !779, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2076)
!2076 = !{!2077, !2079, !2081, !2092, !2102}
!2077 = !DILocalVariable(name: "msg", scope: !2075, file: !3, line: 555, type: !2078)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 32, elements: !1124)
!2079 = !DILocalVariable(name: "argv", scope: !2075, file: !3, line: 556, type: !2080)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 160, elements: !890)
!2081 = !DILocalVariable(name: "conn_par", scope: !2082, file: !3, line: 636, type: !2084)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 635, column: 58)
!2083 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 635, column: 17)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 32)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "create_conn_param_t", file: !6, line: 119, size: 104, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "conn_interval", scope: !2085, file: !6, line: 120, baseType: !522, size: 16)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "conn_latency", scope: !2085, file: !6, line: 121, baseType: !522, size: 16, offset: 16)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "supervision_timeout", scope: !2085, file: !6, line: 122, baseType: !522, size: 16, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address_type", scope: !2085, file: !6, line: 123, baseType: !500, size: 8, offset: 48)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "peer_address", scope: !2085, file: !6, line: 124, baseType: !640, size: 48, offset: 56)
!2092 = !DILocalVariable(name: "update_param", scope: !2093, file: !3, line: 680, type: !2095)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 679, column: 58)
!2094 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 679, column: 17)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 32)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_update_param_t", file: !6, line: 104, size: 64, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "interval_min", scope: !2096, file: !6, line: 105, baseType: !522, size: 16)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "interval_max", scope: !2096, file: !6, line: 106, baseType: !522, size: 16, offset: 16)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2096, file: !6, line: 107, baseType: !522, size: 16, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2096, file: !6, line: 108, baseType: !522, size: 16, offset: 48)
!2102 = !DILocalVariable(name: "update_param", scope: !2103, file: !3, line: 688, type: !2095)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 687, column: 58)
!2104 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 687, column: 17)
!2105 = distinct !DILocation(line: 766, column: 5, scope: !2060)
!2106 = !DILocation(line: 555, column: 9, scope: !2075, inlinedAt: !2105)
!2107 = !DILocation(line: 556, column: 9, scope: !2075, inlinedAt: !2105)
!2108 = !DILocation(line: 763, column: 56, scope: !2060)
!2109 = !DILocation(line: 555, column: 5, scope: !2075, inlinedAt: !2105)
!2110 = !DILocation(line: 556, column: 5, scope: !2075, inlinedAt: !2105)
!2111 = !DILocation(line: 558, column: 12, scope: !2112, inlinedAt: !2105)
!2112 = !DILexicalBlockFile(scope: !2075, file: !3, discriminator: 1)
!2113 = !DILocation(line: 558, column: 5, scope: !2112, inlinedAt: !2105)
!2114 = !DILocation(line: 559, column: 9, scope: !2074, inlinedAt: !2105)
!2115 = !DILocation(line: 560, column: 13, scope: !2116, inlinedAt: !2105)
!2116 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 560, column: 13)
!2117 = !DILocation(line: 560, column: 13, scope: !2074, inlinedAt: !2105)
!2118 = !DILocation(line: 561, column: 61, scope: !2119, inlinedAt: !2105)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 560, column: 21)
!2120 = !DILocation(line: 561, column: 68, scope: !2119, inlinedAt: !2105)
!2121 = !DILocation(line: 561, column: 13, scope: !2119, inlinedAt: !2105)
!2122 = !DILocation(line: 562, column: 9, scope: !2119, inlinedAt: !2105)
!2123 = !DILocation(line: 567, column: 17, scope: !2074, inlinedAt: !2105)
!2124 = !DILocation(line: 567, column: 9, scope: !2074, inlinedAt: !2105)
!2125 = distinct !{!2125, !2126, !2127}
!2126 = !DILocation(line: 558, column: 5, scope: !2075)
!2127 = !DILocation(line: 758, column: 5, scope: !2075)
!2128 = !DILocation(line: 569, column: 31, scope: !2073, inlinedAt: !2105)
!2129 = !DILocation(line: 569, column: 13, scope: !2073, inlinedAt: !2105)
!2130 = !DILocation(line: 570, column: 13, scope: !2073, inlinedAt: !2105)
!2131 = !DILocation(line: 573, column: 33, scope: !2073, inlinedAt: !2105)
!2132 = !DILocation(line: 573, column: 42, scope: !2073, inlinedAt: !2105)
!2133 = !DILocation(line: 573, column: 51, scope: !2073, inlinedAt: !2105)
!2134 = !DILocation(line: 531, column: 5, scope: !2064, inlinedAt: !2072)
!2135 = !DILocation(line: 532, column: 5, scope: !2064, inlinedAt: !2072)
!2136 = !DILocation(line: 533, column: 5, scope: !2064, inlinedAt: !2072)
!2137 = !DILocation(line: 535, column: 1, scope: !2064, inlinedAt: !2072)
!2138 = !DILocation(line: 574, column: 13, scope: !2073, inlinedAt: !2105)
!2139 = !DILocation(line: 577, column: 37, scope: !2073, inlinedAt: !2105)
!2140 = !DILocation(line: 577, column: 46, scope: !2073, inlinedAt: !2105)
!2141 = !DILocation(line: 577, column: 55, scope: !2073, inlinedAt: !2105)
!2142 = !DILocation(line: 577, column: 72, scope: !2073, inlinedAt: !2105)
!2143 = !DILocation(line: 542, column: 65, scope: !2144, inlinedAt: !2152)
!2144 = distinct !DISubprogram(name: "make_set_adv_params_ext", scope: !3, file: !3, line: 537, type: !2145, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!507, !694, !587, !587, !499}
!2147 = !{!2148, !2149, !2150, !2151}
!2148 = !DILocalVariable(name: "adv_interval", arg: 1, scope: !2144, file: !3, line: 537, type: !694)
!2149 = !DILocalVariable(name: "adv_type", arg: 2, scope: !2144, file: !3, line: 537, type: !587)
!2150 = !DILocalVariable(name: "adv_channel", arg: 3, scope: !2144, file: !3, line: 537, type: !587)
!2151 = !DILocalVariable(name: "peer_addr_info", arg: 4, scope: !2144, file: !3, line: 537, type: !499)
!2152 = distinct !DILocation(line: 577, column: 13, scope: !2073, inlinedAt: !2105)
!2153 = !DILocation(line: 542, column: 85, scope: !2144, inlinedAt: !2152)
!2154 = !DILocation(line: 542, column: 5, scope: !2144, inlinedAt: !2152)
!2155 = !DILocation(line: 578, column: 13, scope: !2073, inlinedAt: !2105)
!2156 = !DILocation(line: 581, column: 33, scope: !2073, inlinedAt: !2105)
!2157 = !DILocation(line: 581, column: 53, scope: !2073, inlinedAt: !2105)
!2158 = !DILocation(line: 581, column: 13, scope: !2073, inlinedAt: !2105)
!2159 = !DILocation(line: 582, column: 13, scope: !2073, inlinedAt: !2105)
!2160 = !DILocation(line: 585, column: 47, scope: !2073, inlinedAt: !2105)
!2161 = !DILocation(line: 585, column: 67, scope: !2073, inlinedAt: !2105)
!2162 = !DILocation(line: 585, column: 13, scope: !2073, inlinedAt: !2105)
!2163 = !DILocation(line: 586, column: 13, scope: !2073, inlinedAt: !2105)
!2164 = !DILocation(line: 589, column: 37, scope: !2073, inlinedAt: !2105)
!2165 = !DILocation(line: 589, column: 46, scope: !2073, inlinedAt: !2105)
!2166 = !DILocation(line: 589, column: 13, scope: !2073, inlinedAt: !2105)
!2167 = !DILocation(line: 590, column: 13, scope: !2073, inlinedAt: !2105)
!2168 = !DILocation(line: 593, column: 17, scope: !2073, inlinedAt: !2105)
!2169 = !DILocation(line: 594, column: 36, scope: !2170, inlinedAt: !2105)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 593, column: 58)
!2171 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 593, column: 17)
!2172 = !DILocation(line: 594, column: 17, scope: !2170, inlinedAt: !2105)
!2173 = !DILocation(line: 595, column: 13, scope: !2170, inlinedAt: !2105)
!2174 = !DILocation(line: 599, column: 17, scope: !2073, inlinedAt: !2105)
!2175 = !DILocation(line: 600, column: 36, scope: !2176, inlinedAt: !2105)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 599, column: 58)
!2177 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 599, column: 17)
!2178 = !DILocation(line: 600, column: 45, scope: !2176, inlinedAt: !2105)
!2179 = !DILocation(line: 600, column: 17, scope: !2176, inlinedAt: !2105)
!2180 = !DILocation(line: 601, column: 13, scope: !2176, inlinedAt: !2105)
!2181 = !DILocation(line: 605, column: 17, scope: !2073, inlinedAt: !2105)
!2182 = !DILocation(line: 606, column: 40, scope: !2183, inlinedAt: !2105)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 605, column: 58)
!2184 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 605, column: 17)
!2185 = !DILocation(line: 606, column: 49, scope: !2183, inlinedAt: !2105)
!2186 = !DILocation(line: 606, column: 58, scope: !2183, inlinedAt: !2105)
!2187 = !DILocation(line: 606, column: 17, scope: !2183, inlinedAt: !2105)
!2188 = !DILocation(line: 607, column: 13, scope: !2183, inlinedAt: !2105)
!2189 = !DILocation(line: 611, column: 63, scope: !2073, inlinedAt: !2105)
!2190 = !DILocation(line: 611, column: 53, scope: !2073, inlinedAt: !2105)
!2191 = !{!1409, !1172, i64 176}
!2192 = !DILocation(line: 612, column: 13, scope: !2073, inlinedAt: !2105)
!2193 = !DILocation(line: 615, column: 17, scope: !2073, inlinedAt: !2105)
!2194 = !DILocation(line: 616, column: 39, scope: !2195, inlinedAt: !2105)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 615, column: 58)
!2196 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 615, column: 17)
!2197 = !DILocation(line: 616, column: 70, scope: !2195, inlinedAt: !2105)
!2198 = !DILocation(line: 616, column: 17, scope: !2199, inlinedAt: !2105)
!2199 = !DILexicalBlockFile(scope: !2195, file: !3, discriminator: 1)
!2200 = !DILocation(line: 617, column: 13, scope: !2195, inlinedAt: !2105)
!2201 = !DILocation(line: 621, column: 17, scope: !2073, inlinedAt: !2105)
!2202 = !DILocation(line: 622, column: 39, scope: !2203, inlinedAt: !2105)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 621, column: 58)
!2204 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 621, column: 17)
!2205 = !DILocation(line: 622, column: 48, scope: !2203, inlinedAt: !2105)
!2206 = !DILocation(line: 622, column: 17, scope: !2203, inlinedAt: !2105)
!2207 = !DILocation(line: 623, column: 13, scope: !2203, inlinedAt: !2105)
!2208 = !DILocation(line: 627, column: 17, scope: !2073, inlinedAt: !2105)
!2209 = !DILocation(line: 628, column: 21, scope: !2210, inlinedAt: !2105)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 628, column: 21)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 627, column: 58)
!2212 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 627, column: 17)
!2213 = !DILocation(line: 628, column: 21, scope: !2211, inlinedAt: !2105)
!2214 = !DILocation(line: 629, column: 39, scope: !2215, inlinedAt: !2105)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 628, column: 30)
!2216 = !DILocation(line: 629, column: 48, scope: !2215, inlinedAt: !2105)
!2217 = !DILocation(line: 629, column: 21, scope: !2215, inlinedAt: !2105)
!2218 = !DILocation(line: 630, column: 17, scope: !2215, inlinedAt: !2105)
!2219 = !DILocation(line: 635, column: 17, scope: !2073, inlinedAt: !2105)
!2220 = !DILocation(line: 636, column: 64, scope: !2082, inlinedAt: !2105)
!2221 = !DILocation(line: 636, column: 45, scope: !2082, inlinedAt: !2105)
!2222 = !DILocation(line: 638, column: 36, scope: !2082, inlinedAt: !2105)
!2223 = !DILocation(line: 638, column: 79, scope: !2082, inlinedAt: !2105)
!2224 = !DILocation(line: 638, column: 17, scope: !2082, inlinedAt: !2105)
!2225 = !DILocation(line: 639, column: 13, scope: !2082, inlinedAt: !2105)
!2226 = !DILocation(line: 643, column: 17, scope: !2073, inlinedAt: !2105)
!2227 = !DILocation(line: 644, column: 17, scope: !2228, inlinedAt: !2105)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 643, column: 58)
!2229 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 643, column: 17)
!2230 = !DILocation(line: 645, column: 13, scope: !2228, inlinedAt: !2105)
!2231 = !DILocation(line: 649, column: 17, scope: !2073, inlinedAt: !2105)
!2232 = !DILocation(line: 650, column: 17, scope: !2233, inlinedAt: !2105)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 650, column: 17)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 649, column: 58)
!2235 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 649, column: 17)
!2236 = !DILocation(line: 650, column: 17, scope: !2234, inlinedAt: !2105)
!2237 = !DILocation(line: 650, column: 17, scope: !2238, inlinedAt: !2105)
!2238 = !DILexicalBlockFile(scope: !2233, file: !3, discriminator: 1)
!2239 = !DILocation(line: 651, column: 44, scope: !2234, inlinedAt: !2105)
!2240 = !DILocation(line: 651, column: 53, scope: !2234, inlinedAt: !2105)
!2241 = !DILocation(line: 651, column: 17, scope: !2234, inlinedAt: !2105)
!2242 = !DILocation(line: 652, column: 13, scope: !2234, inlinedAt: !2105)
!2243 = !DILocation(line: 655, column: 17, scope: !2073, inlinedAt: !2105)
!2244 = !DILocation(line: 656, column: 44, scope: !2245, inlinedAt: !2105)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 655, column: 58)
!2246 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 655, column: 17)
!2247 = !DILocation(line: 656, column: 53, scope: !2245, inlinedAt: !2105)
!2248 = !DILocation(line: 656, column: 17, scope: !2245, inlinedAt: !2105)
!2249 = !DILocation(line: 657, column: 13, scope: !2245, inlinedAt: !2105)
!2250 = !DILocation(line: 661, column: 17, scope: !2073, inlinedAt: !2105)
!2251 = !DILocation(line: 662, column: 50, scope: !2252, inlinedAt: !2105)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 661, column: 58)
!2253 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 661, column: 17)
!2254 = !DILocation(line: 662, column: 59, scope: !2252, inlinedAt: !2105)
!2255 = !DILocation(line: 662, column: 17, scope: !2252, inlinedAt: !2105)
!2256 = !DILocation(line: 663, column: 13, scope: !2252, inlinedAt: !2105)
!2257 = !DILocation(line: 667, column: 17, scope: !2073, inlinedAt: !2105)
!2258 = !DILocation(line: 668, column: 41, scope: !2259, inlinedAt: !2105)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 667, column: 58)
!2260 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 667, column: 17)
!2261 = !DILocation(line: 668, column: 17, scope: !2259, inlinedAt: !2105)
!2262 = !DILocation(line: 669, column: 13, scope: !2259, inlinedAt: !2105)
!2263 = !DILocation(line: 673, column: 17, scope: !2073, inlinedAt: !2105)
!2264 = !DILocation(line: 674, column: 17, scope: !2265, inlinedAt: !2105)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 673, column: 58)
!2266 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 673, column: 17)
!2267 = !DILocation(line: 675, column: 13, scope: !2265, inlinedAt: !2105)
!2268 = !DILocation(line: 679, column: 17, scope: !2073, inlinedAt: !2105)
!2269 = !DILocation(line: 680, column: 68, scope: !2093, inlinedAt: !2105)
!2270 = !DILocation(line: 680, column: 45, scope: !2093, inlinedAt: !2105)
!2271 = !DILocation(line: 681, column: 47, scope: !2093, inlinedAt: !2105)
!2272 = !DILocation(line: 681, column: 42, scope: !2093, inlinedAt: !2105)
!2273 = !DILocation(line: 681, column: 70, scope: !2093, inlinedAt: !2105)
!2274 = !{!2275, !1291, i64 0}
!2275 = !{!"conn_update_param_t", !1291, i64 0, !1291, i64 2, !1291, i64 4, !1291, i64 6}
!2276 = !DILocation(line: 681, column: 98, scope: !2093, inlinedAt: !2105)
!2277 = !{!2275, !1291, i64 2}
!2278 = !DILocation(line: 682, column: 56, scope: !2093, inlinedAt: !2105)
!2279 = !{!2275, !1291, i64 4}
!2280 = !DILocation(line: 682, column: 79, scope: !2093, inlinedAt: !2105)
!2281 = !{!2275, !1291, i64 6}
!2282 = !DILocation(line: 681, column: 17, scope: !2093, inlinedAt: !2105)
!2283 = !DILocation(line: 683, column: 13, scope: !2093, inlinedAt: !2105)
!2284 = !DILocation(line: 687, column: 17, scope: !2073, inlinedAt: !2105)
!2285 = !DILocation(line: 688, column: 68, scope: !2103, inlinedAt: !2105)
!2286 = !DILocation(line: 688, column: 45, scope: !2103, inlinedAt: !2105)
!2287 = !DILocation(line: 689, column: 62, scope: !2103, inlinedAt: !2105)
!2288 = !DILocation(line: 689, column: 57, scope: !2103, inlinedAt: !2105)
!2289 = !DILocation(line: 689, column: 85, scope: !2103, inlinedAt: !2105)
!2290 = !DILocation(line: 689, column: 113, scope: !2103, inlinedAt: !2105)
!2291 = !DILocation(line: 690, column: 71, scope: !2103, inlinedAt: !2105)
!2292 = !DILocation(line: 690, column: 94, scope: !2103, inlinedAt: !2105)
!2293 = !DILocation(line: 689, column: 17, scope: !2103, inlinedAt: !2105)
!2294 = !DILocation(line: 691, column: 13, scope: !2103, inlinedAt: !2105)
!2295 = !DILocation(line: 695, column: 17, scope: !2073, inlinedAt: !2105)
!2296 = !DILocation(line: 696, column: 40, scope: !2297, inlinedAt: !2105)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 695, column: 58)
!2298 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 695, column: 17)
!2299 = !DILocation(line: 696, column: 49, scope: !2297, inlinedAt: !2105)
!2300 = !DILocation(line: 696, column: 58, scope: !2297, inlinedAt: !2105)
!2301 = !DILocation(line: 696, column: 17, scope: !2297, inlinedAt: !2105)
!2302 = !DILocation(line: 697, column: 13, scope: !2297, inlinedAt: !2105)
!2303 = !DILocation(line: 701, column: 45, scope: !2073, inlinedAt: !2105)
!2304 = !DILocation(line: 701, column: 54, scope: !2073, inlinedAt: !2105)
!2305 = !DILocation(line: 701, column: 13, scope: !2073, inlinedAt: !2105)
!2306 = !DILocation(line: 702, column: 13, scope: !2073, inlinedAt: !2105)
!2307 = !DILocation(line: 705, column: 43, scope: !2073, inlinedAt: !2105)
!2308 = !DILocation(line: 705, column: 52, scope: !2073, inlinedAt: !2105)
!2309 = !DILocation(line: 705, column: 13, scope: !2073, inlinedAt: !2105)
!2310 = !DILocation(line: 706, column: 13, scope: !2073, inlinedAt: !2105)
!2311 = !DILocation(line: 709, column: 45, scope: !2073, inlinedAt: !2105)
!2312 = !DILocation(line: 709, column: 54, scope: !2073, inlinedAt: !2105)
!2313 = !DILocation(line: 709, column: 13, scope: !2073, inlinedAt: !2105)
!2314 = !DILocation(line: 710, column: 13, scope: !2073, inlinedAt: !2105)
!2315 = !DILocation(line: 713, column: 17, scope: !2073, inlinedAt: !2105)
!2316 = !DILocation(line: 714, column: 32, scope: !2317, inlinedAt: !2105)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 713, column: 58)
!2318 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 713, column: 17)
!2319 = !DILocation(line: 714, column: 41, scope: !2317, inlinedAt: !2105)
!2320 = !DILocation(line: 714, column: 50, scope: !2317, inlinedAt: !2105)
!2321 = !DILocation(line: 714, column: 59, scope: !2317, inlinedAt: !2105)
!2322 = !DILocation(line: 714, column: 68, scope: !2317, inlinedAt: !2105)
!2323 = !DILocation(line: 714, column: 17, scope: !2317, inlinedAt: !2105)
!2324 = !DILocation(line: 715, column: 13, scope: !2317, inlinedAt: !2105)
!2325 = !DILocation(line: 719, column: 17, scope: !2073, inlinedAt: !2105)
!2326 = !DILocation(line: 720, column: 50, scope: !2327, inlinedAt: !2105)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 719, column: 58)
!2328 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 719, column: 17)
!2329 = !DILocation(line: 720, column: 59, scope: !2327, inlinedAt: !2105)
!2330 = !DILocation(line: 720, column: 17, scope: !2327, inlinedAt: !2105)
!2331 = !DILocation(line: 721, column: 13, scope: !2327, inlinedAt: !2105)
!2332 = !DILocation(line: 725, column: 17, scope: !2073, inlinedAt: !2105)
!2333 = !DILocation(line: 726, column: 50, scope: !2334, inlinedAt: !2105)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 725, column: 58)
!2335 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 725, column: 17)
!2336 = !DILocation(line: 726, column: 59, scope: !2334, inlinedAt: !2105)
!2337 = !DILocation(line: 726, column: 17, scope: !2334, inlinedAt: !2105)
!2338 = !DILocation(line: 727, column: 13, scope: !2334, inlinedAt: !2105)
!2339 = !DILocation(line: 731, column: 17, scope: !2073, inlinedAt: !2105)
!2340 = !DILocation(line: 732, column: 46, scope: !2341, inlinedAt: !2105)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 731, column: 58)
!2342 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 731, column: 17)
!2343 = !DILocation(line: 732, column: 55, scope: !2341, inlinedAt: !2105)
!2344 = !DILocation(line: 732, column: 17, scope: !2341, inlinedAt: !2105)
!2345 = !DILocation(line: 733, column: 13, scope: !2341, inlinedAt: !2105)
!2346 = !DILocation(line: 737, column: 50, scope: !2073, inlinedAt: !2105)
!2347 = !DILocation(line: 737, column: 59, scope: !2073, inlinedAt: !2105)
!2348 = !DILocation(line: 737, column: 13, scope: !2073, inlinedAt: !2105)
!2349 = !DILocation(line: 738, column: 13, scope: !2073, inlinedAt: !2105)
!2350 = !DILocation(line: 741, column: 48, scope: !2073, inlinedAt: !2105)
!2351 = !DILocation(line: 741, column: 57, scope: !2073, inlinedAt: !2105)
!2352 = !DILocation(line: 741, column: 13, scope: !2073, inlinedAt: !2105)
!2353 = !DILocation(line: 742, column: 13, scope: !2073, inlinedAt: !2105)
!2354 = !DILocation(line: 745, column: 50, scope: !2073, inlinedAt: !2105)
!2355 = !DILocation(line: 745, column: 59, scope: !2073, inlinedAt: !2105)
!2356 = !DILocation(line: 745, column: 13, scope: !2073, inlinedAt: !2105)
!2357 = !DILocation(line: 746, column: 13, scope: !2073, inlinedAt: !2105)
!2358 = !DILocation(line: 749, column: 50, scope: !2073, inlinedAt: !2105)
!2359 = !DILocation(line: 749, column: 59, scope: !2073, inlinedAt: !2105)
!2360 = !DILocation(line: 749, column: 13, scope: !2073, inlinedAt: !2105)
!2361 = !DILocation(line: 750, column: 13, scope: !2073, inlinedAt: !2105)
!2362 = !DILocation(line: 759, column: 1, scope: !2075, inlinedAt: !2105)
!2363 = !DILocation(line: 778, column: 13, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 778, column: 13)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 776, column: 71)
!2366 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 776, column: 9)
!2367 = !DILocation(line: 768, column: 9, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 768, column: 9)
!2369 = !DILocation(line: 768, column: 9, scope: !2060)
!2370 = !DILocation(line: 769, column: 9, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 768, column: 50)
!2372 = !DILocation(line: 770, column: 5, scope: !2371)
!2373 = !DILocation(line: 772, column: 30, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 772, column: 9)
!2375 = !DILocation(line: 772, column: 9, scope: !2374)
!2376 = !DILocation(line: 772, column: 9, scope: !2060)
!2377 = !DILocation(line: 773, column: 9, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 772, column: 50)
!2379 = !DILocation(line: 774, column: 5, scope: !2378)
!2380 = !DILocation(line: 776, column: 31, scope: !2366)
!2381 = !DILocation(line: 776, column: 40, scope: !2366)
!2382 = !DILocation(line: 776, column: 48, scope: !2366)
!2383 = !DILocation(line: 776, column: 9, scope: !2060)
!2384 = !DILocation(line: 778, column: 13, scope: !2365)
!2385 = !DILocation(line: 779, column: 17, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 779, column: 17)
!2387 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 778, column: 54)
!2388 = !DILocation(line: 779, column: 17, scope: !2387)
!2389 = !DILocation(line: 780, column: 54, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 779, column: 50)
!2391 = !DILocation(line: 780, column: 17, scope: !2390)
!2392 = !DILocation(line: 785, column: 9, scope: !2387)
!2393 = !DILocation(line: 782, column: 17, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 781, column: 20)
!2395 = !DILocation(line: 783, column: 17, scope: !2394)
!2396 = !DILocation(line: 787, column: 34, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 787, column: 13)
!2398 = !DILocation(line: 787, column: 43, scope: !2397)
!2399 = !DILocation(line: 787, column: 13, scope: !2365)
!2400 = !DILocation(line: 788, column: 13, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 788, column: 13)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 787, column: 51)
!2403 = !DILocation(line: 788, column: 13, scope: !2402)
!2404 = !DILocation(line: 788, column: 13, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2401, file: !3, discriminator: 1)
!2406 = !DILocation(line: 789, column: 13, scope: !2402)
!2407 = !DILocation(line: 790, column: 9, scope: !2402)
!2408 = !DILocation(line: 791, column: 39, scope: !2365)
!2409 = !DILocation(line: 792, column: 9, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 792, column: 9)
!2411 = !DILocation(line: 792, column: 9, scope: !2365)
!2412 = !DILocation(line: 792, column: 9, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2410, file: !3, discriminator: 1)
!2414 = !DILocation(line: 795, column: 1, scope: !2060)
!2415 = distinct !DISubprogram(name: "ble_stack_gatt_role", scope: !3, file: !3, line: 1056, type: !1384, isLocal: false, isDefinition: true, scopeLine: 1057, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2416)
!2416 = !{!2417}
!2417 = !DILocalVariable(name: "role", arg: 1, scope: !2415, file: !3, line: 1056, type: !500)
!2418 = !DILocation(line: 1056, column: 29, scope: !2415)
!2419 = !DILocation(line: 1058, column: 36, scope: !2415)
!2420 = !DILocation(line: 1059, column: 1, scope: !2415)
!2421 = distinct !DISubprogram(name: "get_ble_gatt_role", scope: !3, file: !3, line: 1061, type: !1665, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1160)
!2422 = !DILocation(line: 1063, column: 33, scope: !2421)
!2423 = !DILocation(line: 1063, column: 5, scope: !2421)
!2424 = distinct !DISubprogram(name: "ble_vendor_random_address_generate", scope: !3, file: !3, line: 1067, type: !2425, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2428)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!2427, !499, !500}
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !501, line: 44, baseType: !502)
!2428 = !{!2429, !2430, !2431, !2433}
!2429 = !DILocalVariable(name: "address", arg: 1, scope: !2424, file: !3, line: 1067, type: !499)
!2430 = !DILocalVariable(name: "type", arg: 2, scope: !2424, file: !3, line: 1067, type: !500)
!2431 = !DILocalVariable(name: "en_irk", scope: !2424, file: !3, line: 1069, type: !2432)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 128, elements: !1106)
!2433 = !DILocalVariable(name: "local_irk", scope: !2424, file: !3, line: 1070, type: !2432)
!2434 = !DILocation(line: 1067, column: 45, scope: !2424)
!2435 = !DILocation(line: 1067, column: 57, scope: !2424)
!2436 = !DILocation(line: 1069, column: 5, scope: !2424)
!2437 = !DILocation(line: 1069, column: 8, scope: !2424)
!2438 = !DILocation(line: 1070, column: 5, scope: !2424)
!2439 = !DILocation(line: 1070, column: 8, scope: !2424)
!2440 = !DILocation(line: 1071, column: 14, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1071, column: 9)
!2442 = !DILocation(line: 1071, column: 9, scope: !2424)
!2443 = !DILocation(line: 1072, column: 14, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1072, column: 13)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1071, column: 20)
!2446 = !DILocation(line: 1072, column: 13, scope: !2445)
!2447 = !DILocation(line: 1073, column: 13, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1073, column: 13)
!2449 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1072, column: 43)
!2450 = !DILocation(line: 1073, column: 13, scope: !2449)
!2451 = !DILocation(line: 1073, column: 13, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2448, file: !3, discriminator: 1)
!2453 = !DILocation(line: 1076, column: 9, scope: !2445)
!2454 = !DILocation(line: 1077, column: 5, scope: !2445)
!2455 = !DILocation(line: 1078, column: 5, scope: !2424)
!2456 = !DILocation(line: 1079, column: 5, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1079, column: 5)
!2458 = !DILocation(line: 1079, column: 5, scope: !2424)
!2459 = !DILocation(line: 1079, column: 5, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2457, file: !3, discriminator: 1)
!2461 = !DILocation(line: 1080, column: 5, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1080, column: 5)
!2463 = !DILocation(line: 1080, column: 5, scope: !2424)
!2464 = !DILocation(line: 1080, column: 5, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2466, file: !3, discriminator: 1)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 1080, column: 5)
!2467 = !DILocation(line: 1080, column: 5, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2466, file: !3, discriminator: 2)
!2469 = !DILocation(line: 1081, column: 5, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1081, column: 5)
!2471 = !DILocation(line: 1081, column: 5, scope: !2424)
!2472 = !DILocation(line: 1081, column: 5, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2474, file: !3, discriminator: 1)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1081, column: 5)
!2475 = !DILocation(line: 1081, column: 5, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2474, file: !3, discriminator: 2)
!2477 = !DILocation(line: 1083, column: 1, scope: !2424)
!2478 = distinct !DISubprogram(name: "ble_set_make_random_address", scope: !3, file: !3, line: 1093, type: !2479, isLocal: false, isDefinition: true, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2427, !500}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "random_type", arg: 1, scope: !2478, file: !3, line: 1093, type: !500)
!2483 = !DILocalVariable(name: "tmp_ble_addr", scope: !2478, file: !3, line: 1095, type: !640)
!2484 = !DILocation(line: 1093, column: 37, scope: !2478)
!2485 = !DILocation(line: 1095, column: 5, scope: !2478)
!2486 = !DILocation(line: 1095, column: 8, scope: !2478)
!2487 = !DILocation(line: 1097, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1097, column: 9)
!2489 = !DILocation(line: 1097, column: 25, scope: !2488)
!2490 = !DILocation(line: 1101, column: 10, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1101, column: 9)
!2492 = !DILocation(line: 1102, column: 25, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1102, column: 13)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1101, column: 73)
!2495 = !DILocation(line: 1101, column: 9, scope: !2478)
!2496 = !DILocation(line: 1103, column: 13, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1102, column: 31)
!2498 = !DILocation(line: 1104, column: 13, scope: !2497)
!2499 = !DILocation(line: 1110, column: 5, scope: !2478)
!2500 = !DILocation(line: 1111, column: 5, scope: !2478)
!2501 = !DILocation(line: 1113, column: 5, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1113, column: 5)
!2503 = !DILocation(line: 1113, column: 5, scope: !2478)
!2504 = !DILocation(line: 1113, column: 5, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2502, file: !3, discriminator: 1)
!2506 = !DILocation(line: 1114, column: 5, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1114, column: 5)
!2508 = !DILocation(line: 1114, column: 5, scope: !2478)
!2509 = !DILocation(line: 1114, column: 5, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2511, file: !3, discriminator: 1)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1114, column: 5)
!2512 = !DILocation(line: 1114, column: 5, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2511, file: !3, discriminator: 2)
!2514 = !DILocation(line: 1116, column: 1, scope: !2478)
