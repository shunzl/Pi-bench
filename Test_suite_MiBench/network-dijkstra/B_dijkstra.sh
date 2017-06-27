#!/bin/bash
#FILE1 = qsort_small.c
#FILE2 = qsort_large.c

#rm *.ll *.bc *.s
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon *.c 
#llvm-link qsort_small.ll  -o all_large.bc
#llvm-link qsort_large.ll -o all_small.bc
opt -load libTolerancePass.so -tolerance < dijkstra.ll> /dev/null -o all_t.bc
ecc -S -target arm32v7-linux -mfpu=neon all_t.bc dijkstra.ll
ecc -target arm32v7-linux -mfpu=neon dijkstra.c -o all
ecc -target arm32v7-linux -mfpu=neon all_t.bc -o all_t