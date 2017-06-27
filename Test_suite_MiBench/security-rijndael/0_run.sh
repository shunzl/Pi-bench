#!/bin/sh
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all input_small.asc output_small.enc e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all output_small.enc output_small.dec d 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all_t input_small.asc output_small.enc e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all_t output_small.enc output_small.dec d 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321


perf stat --repeat 5 -e cycles ./all input_large.asc output_large.enc e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all rijndael output_large.enc output_large.dec d 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all_t input_large.asc output_large.enc e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all_t rijndael output_large.enc output_large.dec d 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321
