#!/bin/bash
cd stringsearch
ecc -S -emit-llvm -target arm32v7-linux -mfpu=neon *.c
llvm-link bmhasrch.ll  bmhisrch.ll  bmhsrch.ll  pbmsrch_large.ll  -o all_large.bc
llvm-link bmhasrch.ll  bmhisrch.ll  bmhsrch.ll  pbmsrch_small.ll -o all_small.bc
opt -load libTolerancePass.so -tolerance < all_large.bc > /dev/null -o all_large_t.bc
opt -load libTolerancePass.so -tolerance < all_small.bc > /dev/null -o all_small_t.bc
llvm-dis all_large_t.bc
llvm-dis all_small_t.bc
ecc -S -target arm32v7-linux -mfpu=neon all_large.bc all_small.bc all_large_t.bc all_small_t.bc
ecc -target arm32v7-linux -mfpu=neon all_large.bc -o all_large
ecc -target arm32v7-linux -mfpu=neon all_small.bc -o all_small
ecc -target arm32v7-linux -mfpu=neon all_large_t.bc -o all_large_t
ecc -target arm32v7-linux -mfpu=neon all_small_t.bc -o all_small_t
cd ..
