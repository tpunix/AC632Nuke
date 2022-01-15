#!/bin/sh

for bc in *.o ; do
	echo [ $bc ]
	llvm-dis-6.0 $bc
	llvm-cbe $bc
	echo
done

