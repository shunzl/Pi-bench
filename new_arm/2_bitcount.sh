#!/bin/bash
cd bitcount
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon *.c
llvm-link *.ll -o all.bc
opt -load libTolerancePass.so -tolerance < all.bc > /dev/null -o all_t.bc
llvm-dis all.bc 
llvm-dis all_t.bc
ecc -S -target arm32v7-linux -mfpu=neon all.bc all_t.bc
ecc -target arm32v7-linux -mfpu=neon all.bc -o all
ecc -target arm32v7-linux -mfpu=neon all_t.bc -o all_t
cd ..
