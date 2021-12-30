
CROSS = mips64el-linux-

CC = clang.exe
LD = q32s-lto-wrapper.exe
AR = q32s-lto-ar.exe
RM = rm -rf
LZ4 = tools/uboot_lz4.exe
BANKLINK = tools/BankLink.exe
ISD_DL = tools/isd_download.exe

OBJCOPY = llvm-objcopy
OBJDUMP = llvm-objdump

# where do you want the text to execute? Define this to move
LOAD_ADDR  = 0x6000
MASK_ADDR  = 0x00100000
RUN_ADDR   = 0x2000
STACK_SIZE = 0x4000


# define options for compilation
CFLAGS =\
	-flto -target q32s -integrated-as -fno-builtin -mllvm -inline-threshold=5 -fallow-pointer-null -fno-common \
	-Wall -Oz \
	-Iinclude



# define options for linkage. Prevent the inclusion of standard start
# code and libraries.
LDFLAGS = --gc-sections -Tram.ld -flto \
	--plugin-opt=-inline-threshold=5 \
	--plugin-opt=-enable-ipra=true \
	--plugin-opt=-global-merge-on-const \
	--plugin-opt=-inline-normal-into-special-section=true \

LDFLAGS += --defsym ENTRY_ADDR=$(RUN_ADDR) --defsym STACK_SIZE=$(STACK_SIZE)


# define options for the objdump
DUMPFLAGS = -disassemble-all -address-mask=0x1ffffff  -print-imm-hex -s -print-dbg

# use variables to refer to init code in case it changes
OBJS  = startup.o main.o printk.o string.o

#
# define build targets
#
all: uboot.elf

clean:
	rm -f *.o *.elf *.bin *.dump *.lz4 *.boot

# build s-record with init code and c files linked together
uboot.elf: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)
	$(OBJDUMP) $(DUMPFLAGS) $@ > uboot.dump
	$(OBJCOPY) -O binary -j .text $@ uboot.bin
	$(LZ4) uboot.bin uboot.lz4 $(RUN_ADDR) $(LOAD_ADDR) tools/rom.image $(MASK_ADDR)
	$(BANKLINK) $(RUN_ADDR) uboot.lz4 uboot.boot

dl:
	cd tools; ./isd_download.exe isd_config.ini -tonorflash -dev bd19 -format all -boot 0x2000 -div8 -wait 300 -uboot ../uboot.boot -app app.bin -uboot_compress

# handle compilation of C files
%.o:%.S
	$(CC) -D__ASSEMBLY__ $(CFLAGS) -c $<
%.o:%.c
	$(CC) $(CFLAGS) -c $<


