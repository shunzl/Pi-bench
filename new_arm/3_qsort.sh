#!/bin/bash
#FILE1 = qsort_small.c
#FILE2 = qsort_large.c
cd qsort
rm *.ll *.bc *.s
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon *.c
#llvm-link qsort_small.ll  -o all_large.bc
#llvm-link qsort_large.ll -o all_small.bc
opt -load libTolerancePass.so -tolerance < qsort_large.ll> /dev/null -o all_large_t.bc
opt -load libTolerancePass.so -tolerance < qsort_small.ll > /dev/null -o all_small_t.bc
llvm-dis all_large_t.bc
llvm-dis all_small_t.bc
ecc -S -target arm32v7-linux -mfpu=neon all_large_t.bc all_small_t.bc qsort_small.ll qsort_large.ll
ecc -target arm32v7-linux -mfpu=neon qsort_large.c -o all_large 
ecc -target arm32v7-linux -mfpu=neon qsort_small.c -o all_small
ecc -target arm32v7-linux -mfpu=neon all_large_t.bc -o all_large_t
ecc -target arm32v7-linux -mfpu=neon all_small_t.bc -o all_small_t
cd ..
