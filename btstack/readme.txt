杰里的蓝牙，使用了深度修改过的btstack(https://github.com/bluekitchen/btstack), 以库文件形式提供(btstack.a). 
解开btstack.a后， 发现里面的.o文件并不是elf文件，而是llvm的字节码文件(bc)。 
使用llvm-dis-6.0可以把.o转换成可读的.ll文件。但可读性非常差。 

这里有另外一个工具，llvm-cbe，可以把bc文件翻译为C代码。可读性还算可以，可以结合原来的btstack来分析与还原。
有点遗憾的是，llvm-cbe使用了llvm8.0以上的库，而杰里的llvm版本太低(4.0.1)，导致dwarf信息无法还原。