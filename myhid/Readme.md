
myhid
=====

参考SDK, 用最少的代码实现的HID客户端. 需要放在SDK的apps目录下.  
目前Android手机可以连接, Win7可以连接. Win10可以连接. 上电重连有时会失败.

因为自己实现了hid的profile, 需要手动把SDK自带的btstack.a里面的hid.o去掉: 
  llvm-ar d btstack.a hid.o

