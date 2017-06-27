#!/bin/sh
cd FFT
chmod a+x all all_t
perf stat --repeat 1 -e cycles ./all 8 32768 > output_large.txt
perf stat --repeat 1 -e cycles ./all_t 8 32768 > output_large_t.txt
cd ..