#!/bin/sh
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all < data/large.adpcm > output_large.pcm
perf stat --repeat 5 -e cycles ./all_t < data/large.adpcm > output_large_t.pcm
