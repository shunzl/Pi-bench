#!/bin/sh
cd qsort
chmod a+x all_small all_small_t all_large all_large_t
perf stat --repeat 1 -e cycles ./all_small input_small.dat > output_small.txt
perf stat --repeat 1 -e cycles ./all_small_t input_small.dat > output_small_t.txt
perf stat --repeat 1 -e cycles ./all_large input_large.dat > output_large.txt
perf stat --repeat 1 -e cycles ./all_large_t input_large.dat > output_large_t.txt
cd ..