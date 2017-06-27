#!/bin/bash
#FILE1 = qsort_small.c
#FILE2 = qsort_large.c
cd CRC32
rm *.ll *.bc
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon crc_32.c -o all.ll
opt -load libTolerancePass.so -tolerance < all.ll > /dev/null -o all_t.bc
llvm-dis all_t.bc
ecc -S -target arm32v7-linux -mfpu=neon all.ll all_t.bc
ecc -target arm32v7-linux -mfpu=neon crc_32.c -o all
ecc -target arm32v7-linux -mfpu=neon all_t.bc -o all_t
cd ..
