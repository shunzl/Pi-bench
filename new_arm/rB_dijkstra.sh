#!/bin/sh
cd dijkstra
chmod a+x all_small all_small_t all_large all_large_t
perf stat --repeat 1 -e cycles ./all_small input.dat > output_small.dat
perf stat --repeat 1 -e cycles ./all_small_t input.dat > output_small_t.dat
perf stat --repeat 1 -e cycles ./all_large input.dat > output_large.dat
perf stat --repeat 1 -e cycles ./all_large_t input.dat > output_large_t.dat
cd ..