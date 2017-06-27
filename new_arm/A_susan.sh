#!/bin/bash
#FILE1 = basicmath_small.c   rad2deg.c  cubic.c   isqrt.c
#FILE2 = basicmath_large.c   rad2deg.c  cubic.c   isqrt.c

cd susan
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon *.c
opt -load libTolerancePass.so -tolerance < susan.ll > /dev/null -o all_t.bc
llvm-dis all_t.bc
ecc -S -target arm32v7-linux -mfpu=neon all_t.bc susan.ll
ecc -target arm32v7-linux -mfpu=neon susan.ll -o all
ecc -target arm32v7-linux -mfpu=neon all_t.bc -o all_t
#perf stat --repeat 5 -e cycles ./all_large > output_large.txt
#perf stat --repeat 5 -e cycles ./all_large_t > output_large_t.txt
#perf stat --repeat 5 -e cycles ./all_small > output_small.txt
#perf stat --repeat 5 -e cycles ./all_small_t > output_small_t.txt
cd ..