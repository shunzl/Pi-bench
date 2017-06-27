#!/bin/sh
cd susan
chmod a+x all all_t
perf stat --repeat 1 -e cycles ./all input_large.pgm output_large.smoothing.pgm -s
perf stat --repeat 1 -e cycles ./all_t input_large.pgm output_t_large.smoothing.pgm -s
perf stat --repeat 1 -e cycles ./all input_large.pgm output_large.edges.pgm -e
perf stat --repeat 1 -e cycles ./all_t input_large.pgm output_t_large.edges.pgm -e
perf stat --repeat 1 -e cycles ./all input_large.pgm output_large.corners.pgm -c
perf stat --repeat 1 -e cycles ./all_t input_large.pgm output_t_large.corners.pgm -c
cd ..