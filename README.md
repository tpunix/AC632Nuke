# AC632Nuke
珠海杰理AC632N系列芯片研究

AC632N系列芯片, 自带双模蓝牙, 双USB, 功能强大. AC6328a更是简单粗暴, SOP8的封装里面包含了蓝牙+USB功能.
杰理有官方SDK提供, 但各种资料仍然不足, datasheet也简单到了极致.

本项目尝试从0开始, 弄出一套详细的SDK出来, 让开放更为便捷.

# 官方SDK
* [fw-AC63_BT_SDK](https://github.com/Jieli-Tech/fw-AC63_BT_SDK)
* [fw-AC63_Bootloader](https://github.com/Jieli-Tech/fw-AC63_Bootloader)
* [fw-AC63_GP_MCU](https://github.com/Jieli-Tech/fw-AC63_GP_MCU)

官方SDK还有在gitee发布: [https://gitee.com/Jieli-Tech](https://gitee.com/Jieli-Tech). 某些分支比github的要新，比如GP_MCU.

BankLink.exe
============

BankLink将多个文件打包在一起, 生成一个bank.out文件, 通过isd_download.exe下载到芯片.

&emsp;用法: BankLink <load_addr0 in_file0> [load_addr1 in_file1] [...] output_file

bank文件格式:  
&emsp;文件头部是描述区, 每个文件占用16个字节.  
&emsp;00-01: bank包含文件个数. 只有第一个文件有这个区域. 其他文件这个区域都为0.  
&emsp;02-03: 该文件大小  
&emsp;04-07: 该文件加载地址  
&emsp;08-0B: 该文件在bank文件中的起始位置  
&emsp;0C-0D: 该文件的CRC16值  
&emsp;0E-0F: 描述区00-0D的CRC16值  


uboot_lz4.exe
=============

uboot_lz4将编译生成的uboot.bin用LZ4算法压缩, 生成uboot.lz4文件.

&emsp;用法: uboot_lz4 in_file out_file run_addr load_addr dict_file dict_addr

lz4文件头格式:  
&emsp;00-03: dict_size  
&emsp;04-07: dict_addr  
&emsp;08-0B: load_addr  
&emsp;0C-0F: in_file大小  

run_addr其实没有用到. run_addr包含在bank文件头部了.
dict_file可以指定一个不存在的文件. 这样就不用现成字典来压缩了.


