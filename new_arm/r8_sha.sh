#!/bin/sh
cd sha
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all input_small.asc > output_small.txt
perf stat --repeat 5 -e cycles ./all_t input_small.asc > output_small_t.txt
perf stat --repeat 5 -e cycles ./all input_large.asc > output_large.txt
perf stat --repeat 5 -e cycles ./all_t input_large.asc > output_large_t.txt
cd ..