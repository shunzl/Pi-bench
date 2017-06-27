#!/bin/sh
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all large.udp > output_large.txt
perf stat --repeat 5 -e cycles ./all_t large.udp > output_large_t.txt
