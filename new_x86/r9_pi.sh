#!/bin/sh
cd pi
chmod a+x all all_t
perf stat --repeat 1 -e cycles ./all
perf stat --repeat 1 -e cycles ./all_t
cd ..