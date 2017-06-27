#!/bin/bash
#FILE1 = basicmath_small.c   rad2deg.c  cubic.c   isqrt.c
#FILE2 = basicmath_large.c   rad2deg.c  cubic.c   isqrt.c
target=arm32v7-linux
cd basicmath
ecc -S -emit-llvm -target $target -mfpu=neon *.c
llvm-link basicmath_large.ll   rad2deg.ll  cubic.ll   isqrt.ll -o all_large.bc
llvm-link basicmath_small.ll   rad2deg.ll  cubic.ll   isqrt.ll -o all_small.bc
opt -load libTolerancePass.so -tolerance < all_large.bc > /dev/null -o all_large_t.bc
opt -load libTolerancePass.so -tolerance < all_small.bc > /dev/null -o all_small_t.bc
llvm-dis all_large_t.bc
llvm-dis all_small_t.bc
ecc -S -target $target -mfpu=neon all_large.bc all_small.bc all_large_t.bc all_small_t.bc
ecc -target $target -mfpu=neon all_large.bc -o all_large
ecc -target $target -mfpu=neon all_small.bc -o all_small
ecc -target $target -mfpu=neon all_large_t.bc -o all_large_t
ecc -target $target -mfpu=neon all_small_t.bc -o all_small_t
#perf stat --repeat 5 -e cycles ./all_large > output_large.txt
#perf stat --repeat 5 -e cycles ./all_large_t > output_large_t.txt
#perf stat --repeat 5 -e cycles ./all_small > output_small.txt
#perf stat --repeat 5 -e cycles ./all_small_t > output_small_t.txt
cd ..