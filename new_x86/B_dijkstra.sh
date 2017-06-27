#!/bin/bash
#FILE1 = qsort_small.c
#FILE2 = qsort_large.c
cd dijkstra
#rm *.ll *.bc *.s
ecc -S -emit-llvm *.c 
#llvm-link qsort_small.ll  -o all_large.bc
#llvm-link qsort_large.ll -o all_small.bc
opt -load libTolerancePass.so -tolerance < dijkstra_large.ll> /dev/null -o all_large_t.bc
opt -load libTolerancePass.so -tolerance < dijkstra_small.ll > /dev/null -o all_small_t.bc
llvm-dis all_large_t.bc
llvm-dis all_small_t.bc
ecc -S all_large_t.bc all_small_t.bc
ecc dijkstra_large.c -o all_large 
ecc dijkstra_small.c -o all_small
ecc all_large_t.bc -o all_large_t
ecc all_small_t.bc -o all_small_t
cd ..
