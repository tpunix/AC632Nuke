
# make 编译并下载
# make V=1 显示编译详细过程
# make clean 清除编译临时文件


# 工程路径前缀
ROOT_DIR  := ../..
# 编译路径设置
BUILD_DIR := objs

CPU_DIR = $(ROOT_DIR)/cpu/bd19
APP_DIR = $(ROOT_DIR)/apps/myhid


# 工具路径设置
ifeq ($(OS), Windows_NT)
# Windows 下工具链位置
TOOL_DIR := C:/JL/pi32/bin
CC    := clang.exe
CXX   := clang.exe
LD    := q32s-lto-wrapper.exe
AR    := q32s-lto-ar.exe
OBJDUMP := llvm-objdump
MKDIR := mkdir -p
RM    := rm -rf

SYS_LIB_DIR := C:/JL/pi32/q32s-lib
SYS_INC_DIR := C:/JL/pi32/q32s-include

## 后处理脚本
POST_SCRIPT     := $(CPU_DIR)/tools/download.bat
RUN_POST_SCRIPT := $(POST_SCRIPT)
else
# Linux 下工具链位置
TOOL_DIR := /opt/jieli/q32s/bin
CC    := $(TOOL_DIR)/clang
CXX   := $(TOOL_DIR)/clang++
LD    := $(TOOL_DIR)/lto-wrapper
AR    := $(TOOL_DIR)/lto-ar
MKDIR := mkdir -p
RM    := rm -rf

SYS_LIB_DIR := $(TOOL_DIR)/../lib
SYS_INC_DIR := $(TOOL_DIR)/../include

## 后处理脚本
POST_SCRIPT     := $(CPU_DIR)/tools/download.sh
RUN_POST_SCRIPT := bash $(POST_SCRIPT)
endif


DUMPFLAGS = -disassemble-all -address-mask=0x1ffffff  -print-imm-hex -s -print-dbg


# 输出文件设置
OUT_ELF   := $(CPU_DIR)/tools/sdk.elf
OBJ_FILE  := $(OUT_ELF).objs.txt


# 编译参数设置
CFLAGS := \
	-flto \
	-target q32s \
	-integrated-as \
	-fno-builtin \
	-mllvm -inline-threshold=5 \
	-Oz \
	-integrated-as \
	-g \
	-O0 \
	-flto \
	-Os \
	-Wcast-align \
	-w \
	-fallow-pointer-null \
	-Wincompatible-pointer-types \
	-Wundef \
	-fprefer-gnu-section \
	-Wframe-larger-than=256 \
	-fms-extensions \


# 宏定义
DEFINES := \
	-DSUPPORT_MS_EXTENSIONS \
	-DCONFIG_RELEASE_ENABLE \
	-DCONFIG_CPU_BD19 \
	-DCONFIG_NEW_BREDR_ENABLE \
	-DCONFIG_FREE_RTOS_ENABLE \
	-DCONFIG_EQ_SUPPORT_ASYNC \
	-DEQ_DESIGN_IN_MASK \
	-DSINE_MAKE_IN_MASK \
	-DCONFIG_MMU_ENABLE \
	-DCONFIG_AEC_M=256 \
	-DCONFIG_MEDIA_ORIGIN_ENABLE \
	-D__GCC_Q32S__ \
	-DCONFIG_NEW_ECC_ENABLE \
	-DCONFIG_CRYPTO_TOOLBOX_OSIZE_IN_MASKROM \
	-DEVENT_HANDLER_NUM_CONFIG=2 \
	-DEVENT_TOUCH_ENABLE_CONFIG=0 \
	-DEVENT_POOL_SIZE_CONFIG=256 \
	-DCONFIG_EVENT_KEY_MAP_ENABLE=0 \
	-DTIMER_POOL_NUM_CONFIG=10 \
	-DAPP_ASYNC_POOL_NUM_CONFIG=0 \
	-DVFS_ENABLE=1 \
	-DUSE_SDFILE_NEW=1 \
	-DVFS_FILE_POOL_NUM_CONFIG=0 \
	-DSDFILE_VERSION=0x020000 \
	-DVM_MAX_SIZE_CONFIG=16*1024 \
	-DVM_ITEM_MAX_NUM=128 \
	-DCONFIG_TWS_ENABLE \
	-DCONFIG_HID_CASE_ENABLE \
	-DCONFIG_TRANSFER_ENABLE \
	-DCONFIG_LITE_AEC_ENABLE=0 \
	-DCONFIG_LMP_RESET_ENABLE \
	-DCONFIG_LMP_REFRESH_ENCRYPTION_KEY_ENABLE \
	-DCONFIG_LINK_DISTURB_SCAN_ENABLE=0 \
	-DCONFIG_BTCTRLER_TASK_DEL_ENABLE \
	-DCONFIG_UPDATA_ENABLE \
	-DCONFIG_OTA_UPDATA_ENABLE \
	-DCONFIG_ITEM_FORMAT_VM \
	-DTCFG_APP_BT_EN=1 \
	-DUSB_PC_NO_APP_MODE \
	-D__LD__ \


# 头文件搜索路径
INCLUDES := \
	-I$(ROOT_DIR)/include_lib \
	-I$(ROOT_DIR)/include_lib/driver \
	-I$(ROOT_DIR)/include_lib/driver/device \
	-I$(ROOT_DIR)/include_lib/driver/cpu/bd19 \
	-I$(ROOT_DIR)/include_lib/system \
	-I$(ROOT_DIR)/include_lib/system/generic \
	-I$(ROOT_DIR)/include_lib/system/device \
	-I$(ROOT_DIR)/include_lib/system/fs \
	-I$(ROOT_DIR)/include_lib/system/ui \
	-I$(ROOT_DIR)/include_lib/btctrler \
	-I$(ROOT_DIR)/include_lib/btctrler/port/bd19 \
	-I$(ROOT_DIR)/include_lib/update \
	-I$(ROOT_DIR)/include_lib/agreement \
	-I$(ROOT_DIR)/include_lib/btstack/third_party/common \
	-I$(ROOT_DIR)/include_lib/btstack/third_party/rcsp \
	-I$(ROOT_DIR)/include_lib/media/media_origin \
	-I$(ROOT_DIR)/include_lib/media/media_origin/media \
	-I$(ROOT_DIR)/include_lib/media/media_origin/media/cpu/bd19 \
	-I$(ROOT_DIR)/include_lib/media/media_origin/media/cpu/bd19/asm \
	-I$(ROOT_DIR)/include_lib/media/media_origin/media/aec \
	-I$(ROOT_DIR)/include_lib/ai_stack/JL_rcsp \
	-I$(ROOT_DIR)/include_lib/btstack \
	-I$(CPU_DIR) \
	-I$(APP_DIR)/include \
	-I$(SYS_INC_DIR) \


# 需要编译的 .c 文件
c_SRC_FILES := \
	$(APP_DIR)/config/lib_btctrler_config.c \
	$(APP_DIR)/config/lib_btstack_config.c \
	$(APP_DIR)/config/lib_profile_config.c \
	$(APP_DIR)/config/lib_update_config.c \
	$(APP_DIR)/config/lib_system_config.c \
	$(APP_DIR)/config/lib_driver_config.c \
	$(APP_DIR)/common/misc.c \
	$(APP_DIR)/user_cfg.c \
	$(APP_DIR)/version.c \
	$(APP_DIR)/app_main.c \
	$(APP_DIR)/app_kbd.c \
	$(APP_DIR)/bt_edr.c \
	$(APP_DIR)/edr_hid.c \
	$(APP_DIR)/board_ac6329c.c \
	$(CPU_DIR)/adc_api.c \
	$(CPU_DIR)/setup.c \



# 需要编译的 .S 文件
S_SRC_FILES :=


# 需要编译的 .s 文件
s_SRC_FILES :=


# 需要编译的 .cpp 文件
cpp_SRC_FILES :=


# 链接参数
LFLAGS := \
	--plugin-opt=-inline-threshold=5 \
	--plugin-opt=save-temps \
	--plugin-opt=-inline-normal-into-special-section=true \
	--plugin-opt=-dont-used-symbol-list=malloc,free,sprintf,printf,puts,putchar \
	--plugin-opt=-warn-stack-size=256 \
	--sort-common \
	--dont-complain-call-overflow \
	--gc-sections \
	--start-group \
	$(CPU_DIR)/liba/cpu.a \
	$(CPU_DIR)/liba/system.a \
	$(CPU_DIR)/liba/btstack.a \
	$(CPU_DIR)/liba/btctrler.a \
	$(CPU_DIR)/liba/agreement.a \
	$(CPU_DIR)/liba/rcsp_stack.a \
	$(CPU_DIR)/liba/update.a \
	--end-group \
	-T$(CPU_DIR)/sdk.ld \
	-M=$(CPU_DIR)/tools/sdk.map \
	-flto \
	--plugin-opt=-inline-threshold=5 \


LIBPATHS := \
	-L$(SYS_LIB_DIR) \


LIBS := \
	$(SYS_LIB_DIR)/libm.a \
	$(SYS_LIB_DIR)/libc.a \
	$(SYS_LIB_DIR)/libm.a \
	$(SYS_LIB_DIR)/libcompiler-rt.a \



c_OBJS    := $(c_SRC_FILES:%.c=%.c.o)
S_OBJS    := $(S_SRC_FILES:%.S=%.S.o)
s_OBJS    := $(s_SRC_FILES:%.s=%.s.o)
cpp_OBJS  := $(cpp_SRC_FILES:%.cpp=%.cpp.o)

OBJS      := $(c_OBJS) $(S_OBJS) $(s_OBJS) $(cpp_OBJS)
DEP_FILES := $(OBJS:%.o=%.d)


OBJS      := $(addprefix $(BUILD_DIR)/, $(OBJS:$(ROOT_DIR)/%=%))
DEP_FILES := $(addprefix $(BUILD_DIR)/, $(DEP_FILES:$(ROOT_DIR)/%=%))


V ?= 0
ifeq ($(V), 1)
QUITE :=
else
QUITE := @
endif

.PHONY: all clean pre_build

all: pre_build $(OUT_ELF)
	@echo +POST-BUILD
	$(QUITE) $(RUN_POST_SCRIPT) sdk

pre_build:
	@echo +PRE-BUILD
	$(QUITE) $(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -E -P $(CPU_DIR)/sdk_used_list.c -o $(CPU_DIR)/sdk_used_list.used
	$(QUITE) $(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -E -P $(CPU_DIR)/sdk_ld.c -o $(CPU_DIR)/sdk.ld
	$(QUITE) $(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -E -P $(CPU_DIR)/tools/download.c -o $(POST_SCRIPT)
	$(QUITE) $(ROOT_DIR)/tools/utils/fixbat.exe $(POST_SCRIPT)
	$(QUITE) $(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -E -P $(CPU_DIR)/tools/isd_config_rule.c -o $(CPU_DIR)/tools/isd_config.ini

clean:
	$(QUITE) $(RM) $(OUT_ELF)
	$(QUITE) $(RM) $(OBJS)
	$(QUITE) $(RM) $(DEP_FILES)
	$(QUITE) $(RM) sdk.s

$(OUT_ELF): $(OBJS)
	@echo +LINK $@
	$(file >$(OBJ_FILE), $(OBJS))
	$(QUITE) $(LD) -o $(OUT_ELF) @$(OBJ_FILE) $(LFLAGS) $(LIBPATHS) $(LIBS)
	$(OBJDUMP) $(DUMPFLAGS) $(OUT_ELF) > sdk.s

$(BUILD_DIR)/%.c.o : $(ROOT_DIR)/%.c
	@echo +CC $<
	@$(MKDIR) $(@D)
	@$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -MM -MT "$@" $< -o $(@:.o=.d)
	$(QUITE) $(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -c $< -o $@

$(BUILD_DIR)/%.S.o : $(ROOT_DIR)/%.S
	@echo +AS $<
	@$(MKDIR) $(@D)
	@$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -MM -MT "$@" $< -o $(@:.o=.d)
	$(QUITE) $(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -c $< -o $@

$(BUILD_DIR)/%.s.o : $(ROOT_DIR)/%.s
	@echo +AS $<
	@$(MKDIR) $(@D)
	@$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -MM -MT "$@" $< -o $(@:.o=.d)
	$(QUITE) $(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -c $< -o $@

$(BUILD_DIR)/%.cpp.o : $(ROOT_DIR)/%.cpp
	@echo +CXX $<
	@$(MKDIR) $(@D)
	@$(CXX) $(CFLAGS) $(DEFINES) $(INCLUDES) -MM -MT "$@" $< -o $(@:.o=.d)
	$(QUITE) $(CXX) $(CFLAGS) $(DEFINES) $(INCLUDES) -c $< -o $@

-include $(DEP_FILES)

