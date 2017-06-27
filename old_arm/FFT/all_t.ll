; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.2 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Usage: fft <waves> <length> -i\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [28 x i8] c"-i performs an inverse fft\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.3.8 = private unnamed_addr constant [35 x i8] c"<length> is the number of samples\0A\00", align 1
@.str.4.9 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.5.10 = private unnamed_addr constant [10 x i8] c"RealOut:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ImagOut:\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @IsPowerOfTwo(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %8, i32 0
  %insertElmt2 = insertelement <4 x i32> %insertElmt, i32 %8, i32 1
  %insertElmt3 = insertelement <4 x i32> %insertElmt2, i32 %8, i32 2
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %8, i32 3
  store <4 x i32> %insertElmt4, <4 x i32>* %allocaVec1, align 16
  %9 = load i32, i32* %3, align 4
  %insertElmt5 = insertelement <4 x i32> undef, i32 %9, i32 0
  %insertElmt6 = insertelement <4 x i32> %insertElmt5, i32 %9, i32 1
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %9, i32 2
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %9, i32 3
  store <4 x i32> %insertElmt8, <4 x i32>* %allocaVec1, align 16
  %10 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop = sub <4 x i32> %10, <i32 1, i32 1, i32 1, i32 1>
  %11 = sub i32 %9, 1
  %12 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop9 = and <4 x i32> %12, %Vop
  %13 = and i32 %8, %11
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %7
  store i32 0, i32* %2, align 4
  br label %17

; <label>:16:                                     ; preds = %7
  store i32 1, i32* %2, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %15, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: nounwind
define arm_aapcscc i32 @NumberOfBitsNeeded(i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
  %2 = alloca i32, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i32 0, i32 0), i32 %8)
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %31, %10
  %12 = load i32, i32* %2, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %12, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %12, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %12, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %12, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec1, align 16
  %13 = load i32, i32* %3, align 4
  %insertElmt6 = insertelement <4 x i32> undef, i32 %13, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %13, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %13, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %13, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec2, align 16
  %14 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %14
  %15 = shl i32 1, %13
  %16 = load <4 x i32>, <4 x i32>* %allocaVec1, align 16
  %Vop10 = and <4 x i32> %16, %Vop
  %17 = and i32 %12, %15
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20

; <label>:21:                                     ; preds = %11
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %3, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %23, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %23, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %23, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %23, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec2, align 16
  %24 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop15 = add <4 x i32> %24, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop15, <4 x i32>* %allocaVec2
  %25 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %25, i64 0
  %extractE16 = extractelement <4 x i32> %25, i64 1
  %extractE17 = extractelement <4 x i32> %25, i64 2
  %sum = add i32 %extractE, %extractE16
  %sum18 = add i32 %sum, %extractE17
  %26 = add i32 %23, 1
  %Fmul = mul i32 %26, 3
  store i32 %26, i32* %Recovery
  %Fcmp = icmp ne i32 %sum18, %Fmul
  br i1 %Fcmp, label %27, label %31

; <label>:27:                                     ; preds = %22
  %remThree = sdiv i32 %sum18, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %28, label %29

; <label>:28:                                     ; preds = %27
  store i32 %26, i32* %Recovery, align 4
  br label %30

; <label>:29:                                     ; preds = %27
  store i32 %extractE, i32* %Recovery, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %28
  br label %31

; <label>:31:                                     ; preds = %22, %30
  %32 = load i32, i32* %Recovery, align 4
  store i32 %32, i32* %3, align 4
  br label %11
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @ReverseBits(i32, i32) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %45, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %47

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %6, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %12, i32 0
  %insertElmt9 = insertelement <4 x i32> %insertElmt, i32 %12, i32 1
  %insertElmt10 = insertelement <4 x i32> %insertElmt9, i32 %12, i32 2
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %12, i32 3
  store <4 x i32> %insertElmt11, <4 x i32>* %allocaVec8, align 16
  %13 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop = shl <4 x i32> %13, <i32 1, i32 1, i32 1, i32 1>
  %14 = shl i32 %12, 1
  %15 = load i32, i32* %3, align 4
  %insertElmt12 = insertelement <4 x i32> undef, i32 %15, i32 0
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %15, i32 1
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %15, i32 2
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %15, i32 3
  store <4 x i32> %insertElmt15, <4 x i32>* %allocaVec5, align 16
  %16 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop16 = and <4 x i32> %16, <i32 1, i32 1, i32 1, i32 1>
  %17 = and i32 %15, 1
  %Vop17 = or <4 x i32> %Vop, %Vop16
  store <4 x i32> %Vop17, <4 x i32>* %allocaVec8
  %18 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE = extractelement <4 x i32> %18, i64 0
  %extractE18 = extractelement <4 x i32> %18, i64 1
  %extractE19 = extractelement <4 x i32> %18, i64 2
  %sum = add i32 %extractE, %extractE18
  %sum20 = add i32 %sum, %extractE19
  %19 = or i32 %14, %17
  %Fmul = mul i32 %19, 3
  store i32 %19, i32* %Recovery
  %Fcmp = icmp ne i32 %sum20, %Fmul
  br i1 %Fcmp, label %20, label %24

; <label>:20:                                     ; preds = %11
  %remThree = sdiv i32 %sum20, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %21, label %22

; <label>:21:                                     ; preds = %20
  store i32 %19, i32* %Recovery, align 4
  br label %23

; <label>:22:                                     ; preds = %20
  store i32 %extractE, i32* %Recovery, align 4
  br label %23

; <label>:23:                                     ; preds = %22, %21
  br label %24

; <label>:24:                                     ; preds = %11, %23
  %25 = load i32, i32* %Recovery, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %insertElmt21 = insertelement <4 x i32> undef, i32 %26, i32 0
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %26, i32 1
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %26, i32 2
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %26, i32 3
  store <4 x i32> %insertElmt24, <4 x i32>* %allocaVec5, align 16
  %27 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop25 = lshr <4 x i32> %27, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec5
  %28 = load <4 x i32>, <4 x i32>* %allocaVec5, align 4
  %extractE27 = extractelement <4 x i32> %28, i64 0
  %extractE28 = extractelement <4 x i32> %28, i64 1
  %extractE29 = extractelement <4 x i32> %28, i64 2
  %sum30 = add i32 %extractE27, %extractE28
  %sum31 = add i32 %sum30, %extractE29
  %29 = lshr i32 %26, 1
  %Fmul26 = mul i32 %29, 3
  store i32 %29, i32* %Recovery1
  %Fcmp32 = icmp ne i32 %sum31, %Fmul26
  br i1 %Fcmp32, label %30, label %34

; <label>:30:                                     ; preds = %24
  %remThree45 = sdiv i32 %sum31, %extractE27
  %FcmpThree46 = icmp ne i32 %remThree45, 3
  br i1 %FcmpThree46, label %31, label %32

; <label>:31:                                     ; preds = %30
  store i32 %29, i32* %Recovery1, align 4
  br label %33

; <label>:32:                                     ; preds = %30
  store i32 %extractE27, i32* %Recovery1, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %31
  br label %34

; <label>:34:                                     ; preds = %24, %33
  %35 = load i32, i32* %Recovery1, align 4
  store i32 %35, i32* %3, align 4
  br label %36

; <label>:36:                                     ; preds = %34
  %37 = load i32, i32* %5, align 4
  %insertElmt33 = insertelement <4 x i32> undef, i32 %37, i32 0
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %37, i32 1
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %37, i32 2
  %insertElmt36 = insertelement <4 x i32> %insertElmt35, i32 %37, i32 3
  store <4 x i32> %insertElmt36, <4 x i32>* %allocaVec7, align 16
  %38 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop37 = add <4 x i32> %38, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop37, <4 x i32>* %allocaVec7
  %39 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE39 = extractelement <4 x i32> %39, i64 0
  %extractE40 = extractelement <4 x i32> %39, i64 1
  %extractE41 = extractelement <4 x i32> %39, i64 2
  %sum42 = add i32 %extractE39, %extractE40
  %sum43 = add i32 %sum42, %extractE41
  %40 = add i32 %37, 1
  %Fmul38 = mul i32 %40, 3
  store i32 %40, i32* %Recovery2
  %Fcmp44 = icmp ne i32 %sum43, %Fmul38
  br i1 %Fcmp44, label %41, label %45

; <label>:41:                                     ; preds = %36
  %remThree47 = sdiv i32 %sum43, %extractE39
  %FcmpThree48 = icmp ne i32 %remThree47, 3
  br i1 %FcmpThree48, label %42, label %43

; <label>:42:                                     ; preds = %41
  store i32 %40, i32* %Recovery2, align 4
  br label %44

; <label>:43:                                     ; preds = %41
  store i32 %extractE39, i32* %Recovery2, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %42
  br label %45

; <label>:45:                                     ; preds = %36, %44
  %46 = load i32, i32* %Recovery2, align 4
  store i32 %46, i32* %5, align 4
  br label %7

; <label>:47:                                     ; preds = %7
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

; Function Attrs: nounwind
define arm_aapcscc double @Index_to_frequency(i32, i32) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 4
  %allocaVec8 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 4
  %allocaVec9 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec10 = alloca <2 x double>, align 16
  %CastInst2 = alloca double, align 4
  %CastInstVec3 = alloca <2 x double>, align 16
  %allocaVec11 = alloca <2 x double>, align 16
  %CastInst4 = alloca double, align 4
  %CastInstVec5 = alloca <2 x double>, align 16
  %allocaVec12 = alloca <2 x double>, align 16
  %CastInst6 = alloca double, align 4
  %CastInstVec7 = alloca <2 x double>, align 16
  %allocaVec13 = alloca <2 x double>, align 16
  %3 = alloca double, align 8
  %allocaVec14 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %56

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %12, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt, i32 %12, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %12, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %12, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec14, align 16
  %13 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %14 = udiv i32 %12, 2
  %15 = icmp ule i32 %11, %14
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = uitofp i32 %17 to double
  %19 = load i32, i32* %4, align 4
  %20 = uitofp i32 %19 to double
  store double %18, double* %CastInst
  %21 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %21, i32 0
  %insertCast19 = insertelement <2 x double> %insertCast, double %21, i32 1
  store <2 x double> %insertCast19, <2 x double>* %CastInstVec, align 4
  %22 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  store double %20, double* %CastInst2
  %23 = load double, double* %CastInst2, align 4
  %insertCast20 = insertelement <2 x double> undef, double %23, i32 0
  %insertCast21 = insertelement <2 x double> %insertCast20, double %23, i32 1
  store <2 x double> %insertCast21, <2 x double>* %CastInstVec3, align 4
  %24 = load <2 x double>, <2 x double>* %CastInstVec3, align 4
  %Vop = fdiv <2 x double> %22, %24
  store <2 x double> %Vop, <2 x double>* %allocaVec13
  %25 = load <2 x double>, <2 x double>* %allocaVec13, align 4
  %extractE = extractelement <2 x double> %25, i64 0
  %extractE22 = extractelement <2 x double> %25, i64 1
  %sum = fadd double %extractE, %extractE22
  %sum23 = fadd double %sum, %extractE22
  %26 = fdiv double %18, %20
  %Fmul = fmul double %26, 3.000000e+00
  store double %26, double* %Recovery
  %Fcmp = fcmp une double %sum23, %Fmul
  br i1 %Fcmp, label %27, label %31

; <label>:27:                                     ; preds = %16
  %remThree = fdiv double %sum23, %extractE
  %FcmpThree = fcmp une double %remThree, 3.000000e+00
  br i1 %FcmpThree, label %28, label %29

; <label>:28:                                     ; preds = %27
  store double %26, double* %Recovery, align 4
  br label %30

; <label>:29:                                     ; preds = %27
  store double %extractE, double* %Recovery, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %28
  br label %31

; <label>:31:                                     ; preds = %16, %30
  %32 = load double, double* %Recovery, align 4
  store double %32, double* %3, align 8
  br label %56

; <label>:33:                                     ; preds = %10
  br label %34

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %4, align 4
  %insertElmt24 = insertelement <4 x i32> undef, i32 %35, i32 0
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %35, i32 1
  %insertElmt26 = insertelement <4 x i32> %insertElmt25, i32 %35, i32 2
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %35, i32 3
  store <4 x i32> %insertElmt27, <4 x i32>* %allocaVec14, align 16
  %36 = load i32, i32* %5, align 4
  %insertElmt28 = insertelement <4 x i32> undef, i32 %36, i32 0
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %36, i32 1
  %insertElmt30 = insertelement <4 x i32> %insertElmt29, i32 %36, i32 2
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %36, i32 3
  store <4 x i32> %insertElmt31, <4 x i32>* %allocaVec15, align 16
  %37 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %38 = load <4 x i32>, <4 x i32>* %allocaVec15, align 16
  %Vop32 = sub <4 x i32> %37, %38
  %39 = sub i32 %35, %36
  %40 = uitofp i32 %39 to double
  store double %40, double* %CastInst4
  %41 = load double, double* %CastInst4, align 4
  %insertCast33 = insertelement <2 x double> undef, double %41, i32 0
  %insertCast34 = insertelement <2 x double> %insertCast33, double %41, i32 1
  store <2 x double> %insertCast34, <2 x double>* %CastInstVec5, align 4
  %42 = load <2 x double>, <2 x double>* %CastInstVec5, align 4
  %Vop35 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %42
  %43 = fsub double -0.000000e+00, %40
  %44 = load i32, i32* %4, align 4
  %45 = uitofp i32 %44 to double
  store double %45, double* %CastInst6
  %46 = load double, double* %CastInst6, align 4
  %insertCast36 = insertelement <2 x double> undef, double %46, i32 0
  %insertCast37 = insertelement <2 x double> %insertCast36, double %46, i32 1
  store <2 x double> %insertCast37, <2 x double>* %CastInstVec7, align 4
  %47 = load <2 x double>, <2 x double>* %CastInstVec7, align 4
  %Vop38 = fdiv <2 x double> %Vop35, %47
  store <2 x double> %Vop38, <2 x double>* %allocaVec13
  %48 = load <2 x double>, <2 x double>* %allocaVec13, align 4
  %extractE40 = extractelement <2 x double> %48, i64 0
  %extractE41 = extractelement <2 x double> %48, i64 1
  %sum42 = fadd double %extractE40, %extractE41
  %sum43 = fadd double %sum42, %extractE41
  %49 = fdiv double %43, %45
  %Fmul39 = fmul double %49, 3.000000e+00
  store double %49, double* %Recovery1
  %Fcmp44 = fcmp une double %sum43, %Fmul39
  br i1 %Fcmp44, label %50, label %54

; <label>:50:                                     ; preds = %34
  %remThree45 = fdiv double %sum43, %extractE40
  %FcmpThree46 = fcmp une double %remThree45, 3.000000e+00
  br i1 %FcmpThree46, label %51, label %52

; <label>:51:                                     ; preds = %50
  store double %49, double* %Recovery1, align 4
  br label %53

; <label>:52:                                     ; preds = %50
  store double %extractE40, double* %Recovery1, align 4
  br label %53

; <label>:53:                                     ; preds = %52, %51
  br label %54

; <label>:54:                                     ; preds = %34, %53
  %55 = load double, double* %Recovery1, align 4
  store double %55, double* %3, align 8
  br label %56

; <label>:56:                                     ; preds = %54, %31, %9
  %57 = load double, double* %3, align 8
  ret double %57
}

; Function Attrs: nounwind
define arm_aapcscc void @fft_float(i32, i32, float*, float*, float*, float*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec25 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec26 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec27 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec28 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec29 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec30 = alloca <2 x double>, align 16
  %CastInst5 = alloca double, align 4
  %CastInstVec6 = alloca <2 x double>, align 16
  %allocaVec31 = alloca <2 x double>, align 16
  %CastInst7 = alloca double, align 4
  %CastInstVec8 = alloca <2 x double>, align 16
  %allocaVec32 = alloca <2 x double>, align 16
  %CastInst9 = alloca double, align 4
  %CastInstVec10 = alloca <2 x double>, align 16
  %allocaVec33 = alloca <2 x double>, align 16
  %CastInst11 = alloca double, align 4
  %CastInstVec12 = alloca <2 x double>, align 16
  %allocaVec34 = alloca <2 x double>, align 16
  %CastInst13 = alloca double, align 4
  %CastInstVec14 = alloca <2 x double>, align 16
  %allocaVec35 = alloca <2 x double>, align 16
  %CastInst15 = alloca double, align 4
  %CastInstVec16 = alloca <2 x double>, align 16
  %allocaVec36 = alloca <2 x double>, align 16
  %CastInst17 = alloca double, align 4
  %CastInstVec18 = alloca <2 x double>, align 16
  %allocaVec37 = alloca <2 x double>, align 16
  %CastInst19 = alloca double, align 4
  %CastInstVec20 = alloca <2 x double>, align 16
  %allocaVec38 = alloca <2 x double>, align 16
  %CastInst21 = alloca double, align 4
  %CastInstVec22 = alloca <2 x double>, align 16
  %allocaVec39 = alloca <2 x double>, align 16
  %CastInst23 = alloca double, align 4
  %CastInstVec24 = alloca <2 x double>, align 16
  %allocaVec40 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec41 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %9 = alloca float*, align 4
  %10 = alloca float*, align 4
  %11 = alloca float*, align 4
  %12 = alloca float*, align 4
  %allocaVec42 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec43 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec44 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec45 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec46 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec47 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  %allocaVec48 = alloca <4 x i32>, align 16
  %19 = alloca i32, align 4
  %allocaVec49 = alloca <2 x double>, align 16
  %20 = alloca double, align 8
  %allocaVec50 = alloca <2 x double>, align 16
  %21 = alloca double, align 8
  %allocaVec51 = alloca <2 x double>, align 16
  %22 = alloca double, align 8
  %allocaVec52 = alloca <2 x double>, align 16
  %23 = alloca double, align 8
  %allocaVec53 = alloca <2 x double>, align 16
  %24 = alloca double, align 8
  %allocaVec54 = alloca <2 x double>, align 16
  %25 = alloca double, align 8
  %allocaVec55 = alloca <2 x double>, align 16
  %26 = alloca double, align 8
  %allocaVec56 = alloca <2 x double>, align 16
  %27 = alloca double, align 8
  %allocaVec57 = alloca <2 x double>, align 16
  %28 = alloca double, align 8
  %29 = alloca [3 x double], align 8
  %30 = alloca [3 x double], align 8
  %allocaVec58 = alloca <2 x double>, align 16
  %31 = alloca double, align 8
  %allocaVec59 = alloca <2 x double>, align 16
  %32 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 4
  store float* %3, float** %10, align 4
  store float* %4, float** %11, align 4
  store float* %5, float** %12, align 4
  store double 0x401921FB54442D18, double* %20, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call arm_aapcscc i32 @IsPowerOfTwo(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i32 %38)
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:40:                                     ; preds = %6
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %20, align 8
  %insertElmt = insertelement <2 x double> undef, double %44, i32 0
  %insertElmt60 = insertelement <2 x double> %insertElmt, double %44, i32 1
  store <2 x double> %insertElmt60, <2 x double>* %allocaVec49, align 16
  %45 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  %Vop = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %45
  store <2 x double> %Vop, <2 x double>* %allocaVec49
  %46 = fsub double -0.000000e+00, %44
  store double %46, double* %20, align 8
  br label %47

; <label>:47:                                     ; preds = %43, %40
  %48 = load float*, float** %9, align 4
  %49 = bitcast float* %48 to i8*
  call arm_aapcscc void @CheckPointer(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.2, i32 0, i32 0))
  %50 = load float*, float** %11, align 4
  %51 = bitcast float* %50 to i8*
  call arm_aapcscc void @CheckPointer(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %52 = load float*, float** %12, align 4
  %53 = bitcast float* %52 to i8*
  call arm_aapcscc void @CheckPointer(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %54 = load i32, i32* %7, align 4
  %55 = call arm_aapcscc i32 @NumberOfBitsNeeded(i32 %54)
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %56

; <label>:56:                                     ; preds = %86, %47
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %90

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call arm_aapcscc i32 @ReverseBits(i32 %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load float*, float** %9, align 4
  %65 = load i32, i32* %14, align 4
  %66 = getelementptr inbounds float, float* %64, i32 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %11, align 4
  %69 = load i32, i32* %15, align 4
  %70 = getelementptr inbounds float, float* %68, i32 %69
  store float %67, float* %70, align 4
  %71 = load float*, float** %10, align 4
  %72 = icmp eq float* %71, null
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %60
  br label %80

; <label>:74:                                     ; preds = %60
  %75 = load float*, float** %10, align 4
  %76 = load i32, i32* %14, align 4
  %77 = getelementptr inbounds float, float* %75, i32 %76
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  br label %80

; <label>:80:                                     ; preds = %74, %73
  %81 = phi double [ 0.000000e+00, %73 ], [ %79, %74 ]
  %82 = fptrunc double %81 to float
  %83 = load float*, float** %12, align 4
  %84 = load i32, i32* %15, align 4
  %85 = getelementptr inbounds float, float* %83, i32 %84
  store float %82, float* %85, align 4
  br label %86

; <label>:86:                                     ; preds = %80
  %87 = load i32, i32* %14, align 4
  %insertElmt61 = insertelement <4 x i32> undef, i32 %87, i32 0
  %insertElmt62 = insertelement <4 x i32> %insertElmt61, i32 %87, i32 1
  %insertElmt63 = insertelement <4 x i32> %insertElmt62, i32 %87, i32 2
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %87, i32 3
  store <4 x i32> %insertElmt64, <4 x i32>* %allocaVec43, align 16
  %88 = load <4 x i32>, <4 x i32>* %allocaVec43, align 16
  %Vop65 = add <4 x i32> %88, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop65, <4 x i32>* %allocaVec43
  %89 = add i32 %87, 1
  store i32 %89, i32* %14, align 4
  br label %56

; <label>:90:                                     ; preds = %56
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %91

; <label>:91:                                     ; preds = %283, %90
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ule i32 %92, %93
  br i1 %94, label %95, label %285

; <label>:95:                                     ; preds = %91
  %96 = load double, double* %20, align 8
  %97 = load i32, i32* %18, align 4
  %98 = uitofp i32 %97 to double
  %99 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  store double %98, double* %CastInst
  %100 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %100, i32 0
  %insertCast66 = insertelement <2 x double> %insertCast, double %100, i32 1
  store <2 x double> %insertCast66, <2 x double>* %CastInstVec, align 4
  %101 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop67 = fdiv <2 x double> %99, %101
  store <2 x double> %Vop67, <2 x double>* %allocaVec52
  %102 = fdiv double %96, %98
  store double %102, double* %23, align 8
  %103 = load double, double* %23, align 8
  %104 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop68 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %104
  %105 = fmul double -2.000000e+00, %103
  %106 = call arm_aapcscc double @sin(double %105) #5
  store double %106, double* %24, align 8
  %107 = load double, double* %23, align 8
  %108 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop69 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %108
  %109 = fsub double -0.000000e+00, %107
  %110 = call arm_aapcscc double @sin(double %109) #5
  store double %110, double* %25, align 8
  %111 = load double, double* %23, align 8
  %112 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop70 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %112
  %113 = fmul double -2.000000e+00, %111
  %114 = call arm_aapcscc double @cos(double %113) #5
  store double %114, double* %26, align 8
  %115 = load double, double* %23, align 8
  %116 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop71 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %116
  %117 = fsub double -0.000000e+00, %115
  %118 = call arm_aapcscc double @cos(double %117) #5
  store double %118, double* %27, align 8
  %119 = load double, double* %27, align 8
  %insertElmt72 = insertelement <2 x double> undef, double %119, i32 0
  %insertElmt73 = insertelement <2 x double> %insertElmt72, double %119, i32 1
  store <2 x double> %insertElmt73, <2 x double>* %allocaVec56, align 16
  %120 = load <2 x double>, <2 x double>* %allocaVec56, align 16
  %Vop74 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %120
  store <2 x double> %Vop74, <2 x double>* %allocaVec57
  %121 = fmul double 2.000000e+00, %119
  store double %121, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %122

; <label>:122:                                    ; preds = %266, %95
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %272

; <label>:126:                                    ; preds = %122
  %127 = load double, double* %26, align 8
  %128 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 2
  store double %127, double* %128, align 8
  %129 = load double, double* %27, align 8
  %130 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  store double %129, double* %130, align 8
  %131 = load double, double* %24, align 8
  %132 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 2
  store double %131, double* %132, align 8
  %133 = load double, double* %25, align 8
  %134 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  store double %133, double* %134, align 8
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %136

; <label>:136:                                    ; preds = %263, %126
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %265

; <label>:140:                                    ; preds = %136
  %141 = load double, double* %28, align 8
  %142 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  %143 = load double, double* %142, align 8
  %144 = fmul double %141, %143
  %145 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 2
  %146 = load double, double* %145, align 8
  %147 = fsub double %144, %146
  %148 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  store double %147, double* %148, align 8
  %149 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  %150 = load double, double* %149, align 8
  %151 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 2
  store double %150, double* %151, align 8
  %152 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %153 = load double, double* %152, align 8
  %154 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  store double %153, double* %154, align 8
  %155 = load double, double* %28, align 8
  %156 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = fmul double %155, %157
  %159 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 2
  %160 = load double, double* %159, align 8
  %161 = fsub double %158, %160
  %162 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  store double %161, double* %162, align 8
  %163 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  %164 = load double, double* %163, align 8
  %165 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 2
  store double %164, double* %165, align 8
  %166 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %167 = load double, double* %166, align 8
  %168 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  store double %167, double* %168, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %19, align 4
  %171 = add i32 %169, %170
  store i32 %171, i32* %16, align 4
  %172 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %173 = load double, double* %172, align 8
  %174 = load float*, float** %11, align 4
  %175 = load i32, i32* %16, align 4
  %176 = getelementptr inbounds float, float* %174, i32 %175
  %177 = load float, float* %176, align 4
  %178 = fpext float %177 to double
  %179 = fmul double %173, %178
  %180 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %181 = load double, double* %180, align 8
  %182 = load float*, float** %12, align 4
  %183 = load i32, i32* %16, align 4
  %184 = getelementptr inbounds float, float* %182, i32 %183
  %185 = load float, float* %184, align 4
  %186 = fpext float %185 to double
  %187 = fmul double %181, %186
  %188 = fsub double %179, %187
  store double %188, double* %21, align 8
  %189 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %190 = load double, double* %189, align 8
  %191 = load float*, float** %12, align 4
  %192 = load i32, i32* %16, align 4
  %193 = getelementptr inbounds float, float* %191, i32 %192
  %194 = load float, float* %193, align 4
  %195 = fpext float %194 to double
  %196 = fmul double %190, %195
  %197 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %198 = load double, double* %197, align 8
  %199 = load float*, float** %11, align 4
  %200 = load i32, i32* %16, align 4
  %201 = getelementptr inbounds float, float* %199, i32 %200
  %202 = load float, float* %201, align 4
  %203 = fpext float %202 to double
  %204 = fmul double %198, %203
  %205 = fadd double %196, %204
  store double %205, double* %22, align 8
  %206 = load float*, float** %11, align 4
  %207 = load i32, i32* %15, align 4
  %208 = getelementptr inbounds float, float* %206, i32 %207
  %209 = load float, float* %208, align 4
  %210 = fpext float %209 to double
  %211 = load double, double* %21, align 8
  %212 = fsub double %210, %211
  %213 = fptrunc double %212 to float
  %214 = load float*, float** %11, align 4
  %215 = load i32, i32* %16, align 4
  %216 = getelementptr inbounds float, float* %214, i32 %215
  store float %213, float* %216, align 4
  %217 = load float*, float** %12, align 4
  %218 = load i32, i32* %15, align 4
  %219 = getelementptr inbounds float, float* %217, i32 %218
  %220 = load float, float* %219, align 4
  %221 = fpext float %220 to double
  %222 = load double, double* %22, align 8
  %223 = fsub double %221, %222
  %224 = fptrunc double %223 to float
  %225 = load float*, float** %12, align 4
  %226 = load i32, i32* %16, align 4
  %227 = getelementptr inbounds float, float* %225, i32 %226
  store float %224, float* %227, align 4
  %228 = load double, double* %21, align 8
  %229 = load float*, float** %11, align 4
  %230 = load i32, i32* %15, align 4
  %231 = getelementptr inbounds float, float* %229, i32 %230
  %232 = load float, float* %231, align 4
  %233 = fpext float %232 to double
  %234 = fadd double %233, %228
  %235 = fptrunc double %234 to float
  store float %235, float* %231, align 4
  %236 = load double, double* %22, align 8
  %237 = load float*, float** %12, align 4
  %238 = load i32, i32* %15, align 4
  %239 = getelementptr inbounds float, float* %237, i32 %238
  %240 = load float, float* %239, align 4
  %241 = fpext float %240 to double
  %242 = fadd double %241, %236
  %243 = fptrunc double %242 to float
  store float %243, float* %239, align 4
  br label %244

; <label>:244:                                    ; preds = %140
  %245 = load i32, i32* %15, align 4
  %insertElmt75 = insertelement <4 x i32> undef, i32 %245, i32 0
  %insertElmt76 = insertelement <4 x i32> %insertElmt75, i32 %245, i32 1
  %insertElmt77 = insertelement <4 x i32> %insertElmt76, i32 %245, i32 2
  %insertElmt78 = insertelement <4 x i32> %insertElmt77, i32 %245, i32 3
  store <4 x i32> %insertElmt78, <4 x i32>* %allocaVec44, align 16
  %246 = load <4 x i32>, <4 x i32>* %allocaVec44, align 16
  %Vop79 = add <4 x i32> %246, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop79, <4 x i32>* %allocaVec44
  %247 = load <4 x i32>, <4 x i32>* %allocaVec44, align 4
  %extractE = extractelement <4 x i32> %247, i64 0
  %extractE80 = extractelement <4 x i32> %247, i64 1
  %extractE81 = extractelement <4 x i32> %247, i64 2
  %sum = add i32 %extractE, %extractE80
  %sum82 = add i32 %sum, %extractE81
  %248 = add i32 %245, 1
  %Fmul = mul i32 %248, 3
  store i32 %248, i32* %Recovery1
  %Fcmp = icmp ne i32 %sum82, %Fmul
  br i1 %Fcmp, label %249, label %253

; <label>:249:                                    ; preds = %244
  %remThree = sdiv i32 %sum82, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %250, label %251

; <label>:250:                                    ; preds = %249
  store i32 %248, i32* %Recovery1, align 4
  br label %252

; <label>:251:                                    ; preds = %249
  store i32 %extractE, i32* %Recovery1, align 4
  br label %252

; <label>:252:                                    ; preds = %251, %250
  br label %253

; <label>:253:                                    ; preds = %244, %252
  %254 = load i32, i32* %Recovery1, align 4
  store i32 %254, i32* %15, align 4
  %255 = load i32, i32* %17, align 4
  %insertElmt83 = insertelement <4 x i32> undef, i32 %255, i32 0
  %insertElmt84 = insertelement <4 x i32> %insertElmt83, i32 %255, i32 1
  %insertElmt85 = insertelement <4 x i32> %insertElmt84, i32 %255, i32 2
  %insertElmt86 = insertelement <4 x i32> %insertElmt85, i32 %255, i32 3
  store <4 x i32> %insertElmt86, <4 x i32>* %allocaVec46, align 16
  %256 = load <4 x i32>, <4 x i32>* %allocaVec46, align 16
  %Vop87 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop87, <4 x i32>* %allocaVec46
  %257 = load <4 x i32>, <4 x i32>* %allocaVec46, align 4
  %extractE89 = extractelement <4 x i32> %257, i64 0
  %extractE90 = extractelement <4 x i32> %257, i64 1
  %extractE91 = extractelement <4 x i32> %257, i64 2
  %sum92 = add i32 %extractE89, %extractE90
  %sum93 = add i32 %sum92, %extractE91
  %258 = add i32 %255, 1
  %Fmul88 = mul i32 %258, 3
  store i32 %258, i32* %Recovery2
  %Fcmp94 = icmp ne i32 %sum93, %Fmul88
  br i1 %Fcmp94, label %259, label %263

; <label>:259:                                    ; preds = %253
  %remThree130 = sdiv i32 %sum93, %extractE89
  %FcmpThree131 = icmp ne i32 %remThree130, 3
  br i1 %FcmpThree131, label %260, label %261

; <label>:260:                                    ; preds = %259
  store i32 %258, i32* %Recovery2, align 4
  br label %262

; <label>:261:                                    ; preds = %259
  store i32 %extractE89, i32* %Recovery2, align 4
  br label %262

; <label>:262:                                    ; preds = %261, %260
  br label %263

; <label>:263:                                    ; preds = %253, %262
  %264 = load i32, i32* %Recovery2, align 4
  store i32 %264, i32* %17, align 4
  br label %136

; <label>:265:                                    ; preds = %136
  br label %266

; <label>:266:                                    ; preds = %265
  %267 = load i32, i32* %18, align 4
  %insertElmt95 = insertelement <4 x i32> undef, i32 %267, i32 0
  %insertElmt96 = insertelement <4 x i32> %insertElmt95, i32 %267, i32 1
  %insertElmt97 = insertelement <4 x i32> %insertElmt96, i32 %267, i32 2
  %insertElmt98 = insertelement <4 x i32> %insertElmt97, i32 %267, i32 3
  store <4 x i32> %insertElmt98, <4 x i32>* %allocaVec47, align 16
  %268 = load i32, i32* %14, align 4
  %269 = load <4 x i32>, <4 x i32>* %allocaVec43, align 16
  %270 = load <4 x i32>, <4 x i32>* %allocaVec47, align 16
  %Vop99 = add <4 x i32> %269, %270
  store <4 x i32> %Vop99, <4 x i32>* %allocaVec43
  %271 = add i32 %268, %267
  store i32 %271, i32* %14, align 4
  br label %122

; <label>:272:                                    ; preds = %122
  %273 = load i32, i32* %18, align 4
  store i32 %273, i32* %19, align 4
  br label %274

; <label>:274:                                    ; preds = %272
  %275 = load i32, i32* %18, align 4
  %insertElmt100 = insertelement <4 x i32> undef, i32 %275, i32 0
  %insertElmt101 = insertelement <4 x i32> %insertElmt100, i32 %275, i32 1
  %insertElmt102 = insertelement <4 x i32> %insertElmt101, i32 %275, i32 2
  %insertElmt103 = insertelement <4 x i32> %insertElmt102, i32 %275, i32 3
  store <4 x i32> %insertElmt103, <4 x i32>* %allocaVec47, align 16
  %276 = load <4 x i32>, <4 x i32>* %allocaVec47, align 16
  %Vop104 = shl <4 x i32> %276, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop104, <4 x i32>* %allocaVec47
  %277 = load <4 x i32>, <4 x i32>* %allocaVec47, align 4
  %extractE106 = extractelement <4 x i32> %277, i64 0
  %extractE107 = extractelement <4 x i32> %277, i64 1
  %extractE108 = extractelement <4 x i32> %277, i64 2
  %sum109 = add i32 %extractE106, %extractE107
  %sum110 = add i32 %sum109, %extractE108
  %278 = shl i32 %275, 1
  %Fmul105 = mul i32 %278, 3
  store i32 %278, i32* %Recovery3
  %Fcmp111 = icmp ne i32 %sum110, %Fmul105
  br i1 %Fcmp111, label %279, label %283

; <label>:279:                                    ; preds = %274
  %remThree132 = sdiv i32 %sum110, %extractE106
  %FcmpThree133 = icmp ne i32 %remThree132, 3
  br i1 %FcmpThree133, label %280, label %281

; <label>:280:                                    ; preds = %279
  store i32 %278, i32* %Recovery3, align 4
  br label %282

; <label>:281:                                    ; preds = %279
  store i32 %extractE106, i32* %Recovery3, align 4
  br label %282

; <label>:282:                                    ; preds = %281, %280
  br label %283

; <label>:283:                                    ; preds = %274, %282
  %284 = load i32, i32* %Recovery3, align 4
  store i32 %284, i32* %18, align 4
  br label %91

; <label>:285:                                    ; preds = %91
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %330

; <label>:288:                                    ; preds = %285
  %289 = load i32, i32* %7, align 4
  %290 = uitofp i32 %289 to double
  store double %290, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %291

; <label>:291:                                    ; preds = %327, %288
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp ult i32 %292, %293
  br i1 %294, label %295, label %329

; <label>:295:                                    ; preds = %291
  %296 = load double, double* %32, align 8
  %insertElmt112 = insertelement <2 x double> undef, double %296, i32 0
  %insertElmt113 = insertelement <2 x double> %insertElmt112, double %296, i32 1
  store <2 x double> %insertElmt113, <2 x double>* %allocaVec59, align 16
  %297 = load float*, float** %11, align 4
  %298 = load i32, i32* %14, align 4
  %299 = getelementptr inbounds float, float* %297, i32 %298
  %300 = load float, float* %299, align 4
  %301 = fpext float %300 to double
  store double %301, double* %CastInst21
  %302 = load double, double* %CastInst21, align 4
  %insertCast114 = insertelement <2 x double> undef, double %302, i32 0
  %insertCast115 = insertelement <2 x double> %insertCast114, double %302, i32 1
  store <2 x double> %insertCast115, <2 x double>* %CastInstVec22, align 4
  %303 = load <2 x double>, <2 x double>* %CastInstVec22, align 4
  %304 = load <2 x double>, <2 x double>* %allocaVec59, align 16
  %Vop116 = fdiv <2 x double> %303, %304
  %305 = fdiv double %301, %296
  %306 = fptrunc double %305 to float
  store float %306, float* %299, align 4
  %307 = load double, double* %32, align 8
  %insertElmt117 = insertelement <2 x double> undef, double %307, i32 0
  %insertElmt118 = insertelement <2 x double> %insertElmt117, double %307, i32 1
  store <2 x double> %insertElmt118, <2 x double>* %allocaVec59, align 16
  %308 = load float*, float** %12, align 4
  %309 = load i32, i32* %14, align 4
  %310 = getelementptr inbounds float, float* %308, i32 %309
  %311 = load float, float* %310, align 4
  %312 = fpext float %311 to double
  store double %312, double* %CastInst23
  %313 = load double, double* %CastInst23, align 4
  %insertCast119 = insertelement <2 x double> undef, double %313, i32 0
  %insertCast120 = insertelement <2 x double> %insertCast119, double %313, i32 1
  store <2 x double> %insertCast120, <2 x double>* %CastInstVec24, align 4
  %314 = load <2 x double>, <2 x double>* %CastInstVec24, align 4
  %315 = load <2 x double>, <2 x double>* %allocaVec59, align 16
  %Vop121 = fdiv <2 x double> %314, %315
  %316 = fdiv double %312, %307
  %317 = fptrunc double %316 to float
  store float %317, float* %310, align 4
  br label %318

; <label>:318:                                    ; preds = %295
  %319 = load i32, i32* %14, align 4
  %320 = load <4 x i32>, <4 x i32>* %allocaVec43, align 16
  %Vop122 = add <4 x i32> %320, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop122, <4 x i32>* %allocaVec43
  %321 = load <4 x i32>, <4 x i32>* %allocaVec43, align 4
  %extractE124 = extractelement <4 x i32> %321, i64 0
  %extractE125 = extractelement <4 x i32> %321, i64 1
  %extractE126 = extractelement <4 x i32> %321, i64 2
  %sum127 = add i32 %extractE124, %extractE125
  %sum128 = add i32 %sum127, %extractE126
  %322 = add i32 %319, 1
  %Fmul123 = mul i32 %322, 3
  store i32 %322, i32* %Recovery4
  %Fcmp129 = icmp ne i32 %sum128, %Fmul123
  br i1 %Fcmp129, label %323, label %327

; <label>:323:                                    ; preds = %318
  %remThree134 = sdiv i32 %sum128, %extractE124
  %FcmpThree135 = icmp ne i32 %remThree134, 3
  br i1 %FcmpThree135, label %324, label %325

; <label>:324:                                    ; preds = %323
  store i32 %322, i32* %Recovery4, align 4
  br label %326

; <label>:325:                                    ; preds = %323
  store i32 %extractE124, i32* %Recovery4, align 4
  br label %326

; <label>:326:                                    ; preds = %325, %324
  br label %327

; <label>:327:                                    ; preds = %318, %326
  %328 = load i32, i32* %Recovery4, align 4
  store i32 %328, i32* %14, align 4
  br label %291

; <label>:329:                                    ; preds = %291
  br label %330

; <label>:330:                                    ; preds = %329, %285
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc void @CheckPointer(i8*, i8*) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %5 = load i8*, i8** %3, align 4
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load i8*, i8** %4, align 4
  %10 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* %9)
  call arm_aapcscc void @exit(i32 1) #4
  unreachable

; <label>:11:                                     ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @sin(double) #3

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #3

; Function Attrs: nounwind
define arm_aapcscc i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec20 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec21 = alloca <4 x float>, align 16
  %CastInst = alloca float, align 4
  %CastInstVec = alloca <4 x float>, align 16
  %allocaVec22 = alloca <2 x double>, align 16
  %CastInst2 = alloca double, align 4
  %CastInstVec3 = alloca <2 x double>, align 16
  %allocaVec23 = alloca <2 x double>, align 16
  %CastInst4 = alloca double, align 4
  %CastInstVec5 = alloca <2 x double>, align 16
  %allocaVec24 = alloca <4 x float>, align 16
  %CastInst6 = alloca float, align 4
  %CastInstVec7 = alloca <4 x float>, align 16
  %allocaVec25 = alloca <2 x double>, align 16
  %CastInst8 = alloca double, align 4
  %CastInstVec9 = alloca <2 x double>, align 16
  %allocaVec26 = alloca <2 x double>, align 16
  %CastInst10 = alloca double, align 4
  %CastInstVec11 = alloca <2 x double>, align 16
  %allocaVec27 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec28 = alloca <4 x i32>, align 16
  %CallInst12 = alloca i32, align 4
  %CallInstVec13 = alloca <4 x i32>, align 16
  %allocaVec29 = alloca <4 x i32>, align 16
  %CallInst14 = alloca i32, align 4
  %CallInstVec15 = alloca <4 x i32>, align 16
  %allocaVec30 = alloca <2 x double>, align 16
  %CallInst16 = alloca double, align 4
  %CallInstVec17 = alloca <2 x double>, align 16
  %allocaVec31 = alloca <2 x double>, align 16
  %CallInst18 = alloca double, align 4
  %CallInstVec19 = alloca <2 x double>, align 16
  %allocaVec32 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec33 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %allocaVec34 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec35 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec36 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec37 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca float*, align 4
  %11 = alloca float*, align 4
  %12 = alloca float*, align 4
  %13 = alloca float*, align 4
  %14 = alloca float*, align 4
  %15 = alloca float*, align 4
  %allocaVec38 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %2
  %20 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  %21 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1.6, i32 0, i32 0))
  %22 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.7, i32 0, i32 0))
  %23 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3.8, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 -1) #4
  unreachable

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %24
  %28 = load i8**, i8*** %5, align 4
  %29 = getelementptr inbounds i8*, i8** %28, i32 3
  %30 = load i8*, i8** %29, align 4
  %31 = call arm_aapcscc i32 @strncmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.9, i32 0, i32 0), i32 2)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %16, align 4
  br label %35

; <label>:35:                                     ; preds = %27, %24
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i8**, i8*** %5, align 4
  %38 = getelementptr inbounds i8*, i8** %37, i32 2
  %39 = load i8*, i8** %38, align 4
  %40 = call arm_aapcscc i32 @atoi(i8* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i8**, i8*** %5, align 4
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  %43 = load i8*, i8** %42, align 4
  %44 = call arm_aapcscc i32 @atoi(i8* %43)
  store i32 %44, i32* %7, align 4
  call arm_aapcscc void @srand(i32 1)
  %45 = load i32, i32* %6, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %45, i32 0
  %insertElmt39 = insertelement <4 x i32> %insertElmt, i32 %45, i32 1
  %insertElmt40 = insertelement <4 x i32> %insertElmt39, i32 %45, i32 2
  %insertElmt41 = insertelement <4 x i32> %insertElmt40, i32 %45, i32 3
  store <4 x i32> %insertElmt41, <4 x i32>* %allocaVec34, align 16
  %46 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop = mul <4 x i32> <i32 4, i32 4, i32 4, i32 4>, %46
  %47 = mul i32 4, %45
  %48 = call arm_aapcscc i8* @malloc(i32 %47)
  %49 = bitcast i8* %48 to float*
  store float* %49, float** %10, align 4
  %50 = load i32, i32* %6, align 4
  %insertElmt42 = insertelement <4 x i32> undef, i32 %50, i32 0
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %50, i32 1
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %50, i32 2
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %50, i32 3
  store <4 x i32> %insertElmt45, <4 x i32>* %allocaVec34, align 16
  %51 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop46 = mul <4 x i32> <i32 4, i32 4, i32 4, i32 4>, %51
  %52 = mul i32 4, %50
  %53 = call arm_aapcscc i8* @malloc(i32 %52)
  %54 = bitcast i8* %53 to float*
  store float* %54, float** %11, align 4
  %55 = load i32, i32* %6, align 4
  %insertElmt47 = insertelement <4 x i32> undef, i32 %55, i32 0
  %insertElmt48 = insertelement <4 x i32> %insertElmt47, i32 %55, i32 1
  %insertElmt49 = insertelement <4 x i32> %insertElmt48, i32 %55, i32 2
  %insertElmt50 = insertelement <4 x i32> %insertElmt49, i32 %55, i32 3
  store <4 x i32> %insertElmt50, <4 x i32>* %allocaVec34, align 16
  %56 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop51 = mul <4 x i32> <i32 4, i32 4, i32 4, i32 4>, %56
  %57 = mul i32 4, %55
  %58 = call arm_aapcscc i8* @malloc(i32 %57)
  %59 = bitcast i8* %58 to float*
  store float* %59, float** %12, align 4
  %60 = load i32, i32* %6, align 4
  %insertElmt52 = insertelement <4 x i32> undef, i32 %60, i32 0
  %insertElmt53 = insertelement <4 x i32> %insertElmt52, i32 %60, i32 1
  %insertElmt54 = insertelement <4 x i32> %insertElmt53, i32 %60, i32 2
  %insertElmt55 = insertelement <4 x i32> %insertElmt54, i32 %60, i32 3
  store <4 x i32> %insertElmt55, <4 x i32>* %allocaVec34, align 16
  %61 = load <4 x i32>, <4 x i32>* %allocaVec34, align 16
  %Vop56 = mul <4 x i32> <i32 4, i32 4, i32 4, i32 4>, %61
  %62 = mul i32 4, %60
  %63 = call arm_aapcscc i8* @malloc(i32 %62)
  %64 = bitcast i8* %63 to float*
  store float* %64, float** %13, align 4
  %65 = load i32, i32* %7, align 4
  %insertElmt57 = insertelement <4 x i32> undef, i32 %65, i32 0
  %insertElmt58 = insertelement <4 x i32> %insertElmt57, i32 %65, i32 1
  %insertElmt59 = insertelement <4 x i32> %insertElmt58, i32 %65, i32 2
  %insertElmt60 = insertelement <4 x i32> %insertElmt59, i32 %65, i32 3
  store <4 x i32> %insertElmt60, <4 x i32>* %allocaVec35, align 16
  %66 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop61 = mul <4 x i32> <i32 4, i32 4, i32 4, i32 4>, %66
  %67 = mul i32 4, %65
  %68 = call arm_aapcscc i8* @malloc(i32 %67)
  %69 = bitcast i8* %68 to float*
  store float* %69, float** %14, align 4
  %70 = load i32, i32* %7, align 4
  %insertElmt62 = insertelement <4 x i32> undef, i32 %70, i32 0
  %insertElmt63 = insertelement <4 x i32> %insertElmt62, i32 %70, i32 1
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %70, i32 2
  %insertElmt65 = insertelement <4 x i32> %insertElmt64, i32 %70, i32 3
  store <4 x i32> %insertElmt65, <4 x i32>* %allocaVec35, align 16
  %71 = load <4 x i32>, <4 x i32>* %allocaVec35, align 16
  %Vop66 = mul <4 x i32> <i32 4, i32 4, i32 4, i32 4>, %71
  %72 = mul i32 4, %70
  %73 = call arm_aapcscc i8* @malloc(i32 %72)
  %74 = bitcast i8* %73 to float*
  store float* %74, float** %15, align 4
  store i32 0, i32* %8, align 4
  br label %75

; <label>:75:                                     ; preds = %96, %36
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %100

; <label>:79:                                     ; preds = %75
  %80 = call arm_aapcscc i32 @rand()
  store i32 %80, i32* %CallInst
  %81 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %81, i32 0
  %insertCall67 = insertelement <4 x i32> %insertCall, i32 %81, i32 1
  %insertCall68 = insertelement <4 x i32> %insertCall67, i32 %81, i32 2
  %insertCall69 = insertelement <4 x i32> %insertCall68, i32 %81, i32 3
  store <4 x i32> %insertCall69, <4 x i32>* %CallInstVec, align 4
  %82 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %83 = srem i32 %80, 1000
  %84 = sitofp i32 %83 to float
  %85 = load float*, float** %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds float, float* %85, i32 %86
  store float %84, float* %87, align 4
  %88 = call arm_aapcscc i32 @rand()
  store i32 %88, i32* %CallInst12
  %89 = load i32, i32* %CallInst12, align 4
  %insertCall70 = insertelement <4 x i32> undef, i32 %89, i32 0
  %insertCall71 = insertelement <4 x i32> %insertCall70, i32 %89, i32 1
  %insertCall72 = insertelement <4 x i32> %insertCall71, i32 %89, i32 2
  %insertCall73 = insertelement <4 x i32> %insertCall72, i32 %89, i32 3
  store <4 x i32> %insertCall73, <4 x i32>* %CallInstVec13, align 4
  %90 = load <4 x i32>, <4 x i32>* %CallInstVec13, align 4
  %91 = srem i32 %88, 1000
  %92 = sitofp i32 %91 to float
  %93 = load float*, float** %15, align 4
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds float, float* %93, i32 %94
  store float %92, float* %95, align 4
  br label %96

; <label>:96:                                     ; preds = %79
  %97 = load i32, i32* %8, align 4
  %insertElmt74 = insertelement <4 x i32> undef, i32 %97, i32 0
  %insertElmt75 = insertelement <4 x i32> %insertElmt74, i32 %97, i32 1
  %insertElmt76 = insertelement <4 x i32> %insertElmt75, i32 %97, i32 2
  %insertElmt77 = insertelement <4 x i32> %insertElmt76, i32 %97, i32 3
  store <4 x i32> %insertElmt77, <4 x i32>* %allocaVec36, align 16
  %98 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop78 = add <4 x i32> %98, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop78, <4 x i32>* %allocaVec36
  %99 = add i32 %97, 1
  store i32 %99, i32* %8, align 4
  br label %75

; <label>:100:                                    ; preds = %75
  store i32 0, i32* %8, align 4
  br label %101

; <label>:101:                                    ; preds = %181, %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %185

; <label>:105:                                    ; preds = %101
  %106 = load float*, float** %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = getelementptr inbounds float, float* %106, i32 %107
  store float 0.000000e+00, float* %108, align 4
  store i32 0, i32* %9, align 4
  br label %109

; <label>:109:                                    ; preds = %178, %105
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %180

; <label>:113:                                    ; preds = %109
  %114 = call arm_aapcscc i32 @rand()
  store i32 %114, i32* %CallInst14
  %115 = load i32, i32* %CallInst14, align 4
  %insertCall79 = insertelement <4 x i32> undef, i32 %115, i32 0
  %insertCall80 = insertelement <4 x i32> %insertCall79, i32 %115, i32 1
  %insertCall81 = insertelement <4 x i32> %insertCall80, i32 %115, i32 2
  %insertCall82 = insertelement <4 x i32> %insertCall81, i32 %115, i32 3
  store <4 x i32> %insertCall82, <4 x i32>* %CallInstVec15, align 4
  %116 = load <4 x i32>, <4 x i32>* %CallInstVec15, align 4
  %117 = srem i32 %114, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %142

; <label>:119:                                    ; preds = %113
  %120 = load float*, float** %14, align 4
  %121 = load i32, i32* %9, align 4
  %122 = getelementptr inbounds float, float* %120, i32 %121
  %123 = load float, float* %122, align 4
  %124 = fpext float %123 to double
  %125 = load float*, float** %15, align 4
  %126 = load i32, i32* %9, align 4
  %127 = getelementptr inbounds float, float* %125, i32 %126
  %128 = load float, float* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = uitofp i32 %129 to float
  %131 = fmul float %128, %130
  %132 = fpext float %131 to double
  %133 = call arm_aapcscc double @cos(double %132) #5
  %134 = fmul double %124, %133
  %135 = load float*, float** %10, align 4
  %136 = load i32, i32* %8, align 4
  %137 = getelementptr inbounds float, float* %135, i32 %136
  %138 = load float, float* %137, align 4
  %139 = fpext float %138 to double
  %140 = fadd double %139, %134
  %141 = fptrunc double %140 to float
  store float %141, float* %137, align 4
  br label %165

; <label>:142:                                    ; preds = %113
  %143 = load float*, float** %14, align 4
  %144 = load i32, i32* %9, align 4
  %145 = getelementptr inbounds float, float* %143, i32 %144
  %146 = load float, float* %145, align 4
  %147 = fpext float %146 to double
  %148 = load float*, float** %15, align 4
  %149 = load i32, i32* %9, align 4
  %150 = getelementptr inbounds float, float* %148, i32 %149
  %151 = load float, float* %150, align 4
  %152 = load i32, i32* %8, align 4
  %153 = uitofp i32 %152 to float
  %154 = fmul float %151, %153
  %155 = fpext float %154 to double
  %156 = call arm_aapcscc double @sin(double %155) #5
  %157 = fmul double %147, %156
  %158 = load float*, float** %10, align 4
  %159 = load i32, i32* %8, align 4
  %160 = getelementptr inbounds float, float* %158, i32 %159
  %161 = load float, float* %160, align 4
  %162 = fpext float %161 to double
  %163 = fadd double %162, %157
  %164 = fptrunc double %163 to float
  store float %164, float* %160, align 4
  br label %165

; <label>:165:                                    ; preds = %142, %119
  %166 = load float*, float** %11, align 4
  %167 = load i32, i32* %8, align 4
  %168 = getelementptr inbounds float, float* %166, i32 %167
  store float 0.000000e+00, float* %168, align 4
  br label %169

; <label>:169:                                    ; preds = %165
  %170 = load i32, i32* %9, align 4
  %insertElmt83 = insertelement <4 x i32> undef, i32 %170, i32 0
  %insertElmt84 = insertelement <4 x i32> %insertElmt83, i32 %170, i32 1
  %insertElmt85 = insertelement <4 x i32> %insertElmt84, i32 %170, i32 2
  %insertElmt86 = insertelement <4 x i32> %insertElmt85, i32 %170, i32 3
  store <4 x i32> %insertElmt86, <4 x i32>* %allocaVec37, align 16
  %171 = load <4 x i32>, <4 x i32>* %allocaVec37, align 16
  %Vop87 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop87, <4 x i32>* %allocaVec37
  %172 = load <4 x i32>, <4 x i32>* %allocaVec37, align 4
  %extractE = extractelement <4 x i32> %172, i64 0
  %extractE88 = extractelement <4 x i32> %172, i64 1
  %extractE89 = extractelement <4 x i32> %172, i64 2
  %sum = add i32 %extractE, %extractE88
  %sum90 = add i32 %sum, %extractE89
  %173 = add i32 %170, 1
  %Fmul = mul i32 %173, 3
  store i32 %173, i32* %Recovery
  %Fcmp = icmp ne i32 %sum90, %Fmul
  br i1 %Fcmp, label %174, label %178

; <label>:174:                                    ; preds = %169
  %remThree = sdiv i32 %sum90, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %175, label %176

; <label>:175:                                    ; preds = %174
  store i32 %173, i32* %Recovery, align 4
  br label %177

; <label>:176:                                    ; preds = %174
  store i32 %extractE, i32* %Recovery, align 4
  br label %177

; <label>:177:                                    ; preds = %176, %175
  br label %178

; <label>:178:                                    ; preds = %169, %177
  %179 = load i32, i32* %Recovery, align 4
  store i32 %179, i32* %9, align 4
  br label %109

; <label>:180:                                    ; preds = %109
  br label %181

; <label>:181:                                    ; preds = %180
  %182 = load i32, i32* %8, align 4
  %183 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop91 = add <4 x i32> %183, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop91, <4 x i32>* %allocaVec36
  %184 = add i32 %182, 1
  store i32 %184, i32* %8, align 4
  br label %101

; <label>:185:                                    ; preds = %101
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load float*, float** %10, align 4
  %189 = load float*, float** %11, align 4
  %190 = load float*, float** %12, align 4
  %191 = load float*, float** %13, align 4
  %192 = call arm_aapcscc i32 bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*)*)(i32 %186, i32 %187, float* %188, float* %189, float* %190, float* %191)
  %193 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.10, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %194

; <label>:194:                                    ; preds = %205, %185
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %209

; <label>:198:                                    ; preds = %194
  %199 = load float*, float** %12, align 4
  %200 = load i32, i32* %8, align 4
  %201 = getelementptr inbounds float, float* %199, i32 %200
  %202 = load float, float* %201, align 4
  %203 = fpext float %202 to double
  %204 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %203)
  br label %205

; <label>:205:                                    ; preds = %198
  %206 = load i32, i32* %8, align 4
  %207 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop92 = add <4 x i32> %207, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop92, <4 x i32>* %allocaVec36
  %208 = add i32 %206, 1
  store i32 %208, i32* %8, align 4
  br label %194

; <label>:209:                                    ; preds = %194
  %210 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %211 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %212

; <label>:212:                                    ; preds = %232, %209
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp ult i32 %213, %214
  br i1 %215, label %216, label %234

; <label>:216:                                    ; preds = %212
  %217 = load float*, float** %13, align 4
  %218 = load i32, i32* %8, align 4
  %219 = getelementptr inbounds float, float* %217, i32 %218
  %220 = load float, float* %219, align 4
  %221 = fpext float %220 to double
  %222 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %221)
  br label %223

; <label>:223:                                    ; preds = %216
  %224 = load i32, i32* %8, align 4
  %225 = load <4 x i32>, <4 x i32>* %allocaVec36, align 16
  %Vop93 = add <4 x i32> %225, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop93, <4 x i32>* %allocaVec36
  %226 = load <4 x i32>, <4 x i32>* %allocaVec36, align 4
  %extractE95 = extractelement <4 x i32> %226, i64 0
  %extractE96 = extractelement <4 x i32> %226, i64 1
  %extractE97 = extractelement <4 x i32> %226, i64 2
  %sum98 = add i32 %extractE95, %extractE96
  %sum99 = add i32 %sum98, %extractE97
  %227 = add i32 %224, 1
  %Fmul94 = mul i32 %227, 3
  store i32 %227, i32* %Recovery1
  %Fcmp100 = icmp ne i32 %sum99, %Fmul94
  br i1 %Fcmp100, label %228, label %232

; <label>:228:                                    ; preds = %223
  %remThree101 = sdiv i32 %sum99, %extractE95
  %FcmpThree102 = icmp ne i32 %remThree101, 3
  br i1 %FcmpThree102, label %229, label %230

; <label>:229:                                    ; preds = %228
  store i32 %227, i32* %Recovery1, align 4
  br label %231

; <label>:230:                                    ; preds = %228
  store i32 %extractE95, i32* %Recovery1, align 4
  br label %231

; <label>:231:                                    ; preds = %230, %229
  br label %232

; <label>:232:                                    ; preds = %223, %231
  %233 = load i32, i32* %Recovery1, align 4
  store i32 %233, i32* %8, align 4
  br label %212

; <label>:234:                                    ; preds = %212
  %235 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %236 = load float*, float** %10, align 4
  %237 = bitcast float* %236 to i8*
  call arm_aapcscc void @free(i8* %237)
  %238 = load float*, float** %11, align 4
  %239 = bitcast float* %238 to i8*
  call arm_aapcscc void @free(i8* %239)
  %240 = load float*, float** %12, align 4
  %241 = bitcast float* %240 to i8*
  call arm_aapcscc void @free(i8* %241)
  %242 = load float*, float** %13, align 4
  %243 = bitcast float* %242 to i8*
  call arm_aapcscc void @free(i8* %243)
  %244 = load float*, float** %14, align 4
  %245 = bitcast float* %244 to i8*
  call arm_aapcscc void @free(i8* %245)
  %246 = load float*, float** %15, align 4
  %247 = bitcast float* %246 to i8*
  call arm_aapcscc void @free(i8* %247)
  call arm_aapcscc void @exit(i32 0) #4
  unreachable
                                                  ; No predecessors!
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i32 @strncmp(i8*, i8*, i32) #1

declare arm_aapcscc i32 @atoi(i8*) #1

declare arm_aapcscc void @srand(i32) #1

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc i32 @rand() #1

declare arm_aapcscc void @free(i8*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
