
mboot
=====

mboot是参考uboot而写的bootloader.  
由于缺少关于power方面的初始化, 有一个4s左右的看门狗导致系统持续复位(不是p11_wdt).  

需要从SDK里面复制三个文件到tools里面: BankLink.exe uboot_lz4.exe isd_download.exe  

