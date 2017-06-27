#!/bin/sh
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all large.pcm > outputtxt
perf stat --repeat 5 -e cycles ./all_t large.pcm > output_t.txt