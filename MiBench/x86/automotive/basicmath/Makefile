FILE1 = basicmath_small.c   rad2deg.c  cubic.c   isqrt.c
FILE2 = basicmath_large.c   rad2deg.c  cubic.c   isqrt.c
target = 
all: all_small all_large assembly ir

assembly:

ir:

all_small: ${FILE1} Makefile
	gcc -static -O3 ${FILE1} -o all_small -lm
all_large: ${FILE2} Makefile
	gcc -static -O3 ${FILE2} -o all_large -lm

clean:
	rm -rf all_* output* *.ll *.s
