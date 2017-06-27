#!/bin/sh
cd stringsearch
chmod a+x all_small all_small_t all_large all_large_t
perf stat --repeat 1 -e cycles ./all_small > output_small.txt
perf stat --repeat 1 -e cycles ./all_small_t > output_small_t.txt
perf stat --repeat 1 -e cycles ./all_large > output_large.txt
perf stat --repeat 1 -e cycles ./all_large_t > output_large_t.txt
cd ..