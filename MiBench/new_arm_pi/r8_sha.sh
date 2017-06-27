#!/bin/sh
cd FFT
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all input_large.asc > output_large.txt
perf stat --repeat 5 -e cycles ./all_t input_large.asc > output_large_t.txt
cd ..