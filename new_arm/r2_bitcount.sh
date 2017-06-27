#!/bin/sh
cd bitcount
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all 1125000 > output_large.txt
perf stat --repeat 5 -e cycles ./all_t 1125000 > output_large_t.txt
cd ..