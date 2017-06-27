#!/bin/sh
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all
perf stat --repeat 5 -e cycles ./all_t