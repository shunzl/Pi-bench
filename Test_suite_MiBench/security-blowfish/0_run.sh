#!/bin/sh
chmod a+x all all_t
perf stat --repeat 5 -e cycles ./all e input_large.asc output_large.enc 1234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all d output_large.enc output_large.asc 1234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all_t e input_large.asc output_large.enc 1234567890abcdeffedcba0987654321
perf stat --repeat 5 -e cycles ./all_t d output_large.enc output_large.asc 1234567890abcdeffedcba0987654321
