#!/bin/bash
cd patricia
ecc -S -emit-llvm *.c
llvm-link *.ll -o all.bc
opt -load libTolerancePass.so -tolerance < all.bc > /dev/null -o all_t.bc
llvm-dis all.bc 
llvm-dis all_t.bc
ecc -S all.bc all_t.bc
ecc all.bc -o all
ecc all_t.bc -o all_t
cd ..
