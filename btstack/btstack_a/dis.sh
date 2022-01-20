#!/bin/sh

for bc in *.o ; do
	echo [ $bc ]
#	llvm-dis-6.0 $bc

#	clang-6.0 -m32 -c $bc.ll -o temp.o
#	llvm-dwarfdump-6.0 temp.o >$bc.dump
#	rm -f temp.o

#	llvm-cbe $bc
	echo
done

