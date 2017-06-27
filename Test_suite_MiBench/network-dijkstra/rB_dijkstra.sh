#!/bin/sh
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all input.dat > output.dat
perf stat --repeat 5 -e cycles ./all_t input.dat > output_t.dat