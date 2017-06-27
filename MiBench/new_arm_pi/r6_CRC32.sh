#!/bin/sh
cd CRC32
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all ../adpcm/data/large.pcm > output_large.txt
perf stat --repeat 5 -e cycles ./all_t ../adpcm/data/large.pcm > output_large_t.txt
cd ..