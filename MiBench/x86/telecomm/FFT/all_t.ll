; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct._IO_FILE = type opaque

@stderr = external constant %struct._IO_FILE*, align 8
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
define i32 @IsPowerOfTwo(i32) #0 {
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
define i32 @NumberOfBitsNeeded(i32) #0 {
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
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i32 0, i32 0), i32 %8)
  call void @exit(i32 1) #4
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

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind
define i32 @ReverseBits(i32, i32) #0 {
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
define double @Index_to_frequency(i32, i32) #0 {
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
define void @fft_float(i32, i32, float*, float*, float*, float*) #0 {
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
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
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
  %29 = alloca [3 x double], align 16
  %30 = alloca [3 x double], align 16
  %allocaVec58 = alloca <2 x double>, align 16
  %31 = alloca double, align 8
  %allocaVec59 = alloca <2 x double>, align 16
  %32 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store double 0x401921FB54442D18, double* %20, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IsPowerOfTwo(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i32 %38)
  call void @exit(i32 1) #4
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
  %48 = load float*, float** %9, align 8
  %49 = bitcast float* %48 to i8*
  call void @CheckPointer(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.2, i32 0, i32 0))
  %50 = load float*, float** %11, align 8
  %51 = bitcast float* %50 to i8*
  call void @CheckPointer(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %52 = load float*, float** %12, align 8
  %53 = bitcast float* %52 to i8*
  call void @CheckPointer(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @NumberOfBitsNeeded(i32 %54)
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %56

; <label>:56:                                     ; preds = %90, %47
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %94

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ReverseBits(i32 %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load float*, float** %9, align 8
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %11, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  store float %68, float* %72, align 4
  %73 = load float*, float** %10, align 8
  %74 = icmp eq float* %73, null
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %60
  br label %83

; <label>:76:                                     ; preds = %60
  %77 = load float*, float** %10, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  br label %83

; <label>:83:                                     ; preds = %76, %75
  %84 = phi double [ 0.000000e+00, %75 ], [ %82, %76 ]
  %85 = fptrunc double %84 to float
  %86 = load float*, float** %12, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  store float %85, float* %89, align 4
  br label %90

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %14, align 4
  %insertElmt61 = insertelement <4 x i32> undef, i32 %91, i32 0
  %insertElmt62 = insertelement <4 x i32> %insertElmt61, i32 %91, i32 1
  %insertElmt63 = insertelement <4 x i32> %insertElmt62, i32 %91, i32 2
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %91, i32 3
  store <4 x i32> %insertElmt64, <4 x i32>* %allocaVec43, align 16
  %92 = load <4 x i32>, <4 x i32>* %allocaVec43, align 16
  %Vop65 = add <4 x i32> %92, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop65, <4 x i32>* %allocaVec43
  %93 = add i32 %91, 1
  store i32 %93, i32* %14, align 4
  br label %56

; <label>:94:                                     ; preds = %56
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %95

; <label>:95:                                     ; preds = %297, %94
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ule i32 %96, %97
  br i1 %98, label %99, label %299

; <label>:99:                                     ; preds = %95
  %100 = load double, double* %20, align 8
  %101 = load i32, i32* %18, align 4
  %102 = uitofp i32 %101 to double
  %103 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  store double %102, double* %CastInst
  %104 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %104, i32 0
  %insertCast66 = insertelement <2 x double> %insertCast, double %104, i32 1
  store <2 x double> %insertCast66, <2 x double>* %CastInstVec, align 4
  %105 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop67 = fdiv <2 x double> %103, %105
  store <2 x double> %Vop67, <2 x double>* %allocaVec52
  %106 = fdiv double %100, %102
  store double %106, double* %23, align 8
  %107 = load double, double* %23, align 8
  %108 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop68 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %108
  %109 = fmul double -2.000000e+00, %107
  %110 = call double @sin(double %109) #5
  store double %110, double* %24, align 8
  %111 = load double, double* %23, align 8
  %112 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop69 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %112
  %113 = fsub double -0.000000e+00, %111
  %114 = call double @sin(double %113) #5
  store double %114, double* %25, align 8
  %115 = load double, double* %23, align 8
  %116 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop70 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %116
  %117 = fmul double -2.000000e+00, %115
  %118 = call double @cos(double %117) #5
  store double %118, double* %26, align 8
  %119 = load double, double* %23, align 8
  %120 = load <2 x double>, <2 x double>* %allocaVec52, align 16
  %Vop71 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %120
  %121 = fsub double -0.000000e+00, %119
  %122 = call double @cos(double %121) #5
  store double %122, double* %27, align 8
  %123 = load double, double* %27, align 8
  %insertElmt72 = insertelement <2 x double> undef, double %123, i32 0
  %insertElmt73 = insertelement <2 x double> %insertElmt72, double %123, i32 1
  store <2 x double> %insertElmt73, <2 x double>* %allocaVec56, align 16
  %124 = load <2 x double>, <2 x double>* %allocaVec56, align 16
  %Vop74 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %124
  store <2 x double> %Vop74, <2 x double>* %allocaVec57
  %125 = fmul double 2.000000e+00, %123
  store double %125, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %126

; <label>:126:                                    ; preds = %280, %99
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %286

; <label>:130:                                    ; preds = %126
  %131 = load double, double* %26, align 8
  %132 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %131, double* %132, align 16
  %133 = load double, double* %27, align 8
  %134 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %133, double* %134, align 8
  %135 = load double, double* %24, align 8
  %136 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %135, double* %136, align 16
  %137 = load double, double* %25, align 8
  %138 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %137, double* %138, align 8
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %140

; <label>:140:                                    ; preds = %277, %130
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %279

; <label>:144:                                    ; preds = %140
  %145 = load double, double* %28, align 8
  %146 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %147 = load double, double* %146, align 8
  %148 = fmul double %145, %147
  %149 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  %150 = load double, double* %149, align 16
  %151 = fsub double %148, %150
  %152 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  store double %151, double* %152, align 16
  %153 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %154 = load double, double* %153, align 8
  %155 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %154, double* %155, align 16
  %156 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %157 = load double, double* %156, align 16
  %158 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %157, double* %158, align 8
  %159 = load double, double* %28, align 8
  %160 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %161 = load double, double* %160, align 8
  %162 = fmul double %159, %161
  %163 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  %164 = load double, double* %163, align 16
  %165 = fsub double %162, %164
  %166 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  store double %165, double* %166, align 16
  %167 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %168 = load double, double* %167, align 8
  %169 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %168, double* %169, align 16
  %170 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %171 = load double, double* %170, align 16
  %172 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %171, double* %172, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %19, align 4
  %175 = add i32 %173, %174
  store i32 %175, i32* %16, align 4
  %176 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %177 = load double, double* %176, align 16
  %178 = load float*, float** %11, align 8
  %179 = load i32, i32* %16, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fpext float %182 to double
  %184 = fmul double %177, %183
  %185 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %186 = load double, double* %185, align 16
  %187 = load float*, float** %12, align 8
  %188 = load i32, i32* %16, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fpext float %191 to double
  %193 = fmul double %186, %192
  %194 = fsub double %184, %193
  store double %194, double* %21, align 8
  %195 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %196 = load double, double* %195, align 16
  %197 = load float*, float** %12, align 8
  %198 = load i32, i32* %16, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %197, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fpext float %201 to double
  %203 = fmul double %196, %202
  %204 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %205 = load double, double* %204, align 16
  %206 = load float*, float** %11, align 8
  %207 = load i32, i32* %16, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fpext float %210 to double
  %212 = fmul double %205, %211
  %213 = fadd double %203, %212
  store double %213, double* %22, align 8
  %214 = load float*, float** %11, align 8
  %215 = load i32, i32* %15, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = fpext float %218 to double
  %220 = load double, double* %21, align 8
  %221 = fsub double %219, %220
  %222 = fptrunc double %221 to float
  %223 = load float*, float** %11, align 8
  %224 = load i32, i32* %16, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  store float %222, float* %226, align 4
  %227 = load float*, float** %12, align 8
  %228 = load i32, i32* %15, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fpext float %231 to double
  %233 = load double, double* %22, align 8
  %234 = fsub double %232, %233
  %235 = fptrunc double %234 to float
  %236 = load float*, float** %12, align 8
  %237 = load i32, i32* %16, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  store float %235, float* %239, align 4
  %240 = load double, double* %21, align 8
  %241 = load float*, float** %11, align 8
  %242 = load i32, i32* %15, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %241, i64 %243
  %245 = load float, float* %244, align 4
  %246 = fpext float %245 to double
  %247 = fadd double %246, %240
  %248 = fptrunc double %247 to float
  store float %248, float* %244, align 4
  %249 = load double, double* %22, align 8
  %250 = load float*, float** %12, align 8
  %251 = load i32, i32* %15, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fpext float %254 to double
  %256 = fadd double %255, %249
  %257 = fptrunc double %256 to float
  store float %257, float* %253, align 4
  br label %258

; <label>:258:                                    ; preds = %144
  %259 = load i32, i32* %15, align 4
  %insertElmt75 = insertelement <4 x i32> undef, i32 %259, i32 0
  %insertElmt76 = insertelement <4 x i32> %insertElmt75, i32 %259, i32 1
  %insertElmt77 = insertelement <4 x i32> %insertElmt76, i32 %259, i32 2
  %insertElmt78 = insertelement <4 x i32> %insertElmt77, i32 %259, i32 3
  store <4 x i32> %insertElmt78, <4 x i32>* %allocaVec44, align 16
  %260 = load <4 x i32>, <4 x i32>* %allocaVec44, align 16
  %Vop79 = add <4 x i32> %260, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop79, <4 x i32>* %allocaVec44
  %261 = load <4 x i32>, <4 x i32>* %allocaVec44, align 4
  %extractE = extractelement <4 x i32> %261, i64 0
  %extractE80 = extractelement <4 x i32> %261, i64 1
  %extractE81 = extractelement <4 x i32> %261, i64 2
  %sum = add i32 %extractE, %extractE80
  %sum82 = add i32 %sum, %extractE81
  %262 = add i32 %259, 1
  %Fmul = mul i32 %262, 3
  store i32 %262, i32* %Recovery1
  %Fcmp = icmp ne i32 %sum82, %Fmul
  br i1 %Fcmp, label %263, label %267

; <label>:263:                                    ; preds = %258
  %remThree = sdiv i32 %sum82, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %264, label %265

; <label>:264:                                    ; preds = %263
  store i32 %262, i32* %Recovery1, align 4
  br label %266

; <label>:265:                                    ; preds = %263
  store i32 %extractE, i32* %Recovery1, align 4
  br label %266

; <label>:266:                                    ; preds = %265, %264
  br label %267

; <label>:267:                                    ; preds = %258, %266
  %268 = load i32, i32* %Recovery1, align 4
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %17, align 4
  %insertElmt83 = insertelement <4 x i32> undef, i32 %269, i32 0
  %insertElmt84 = insertelement <4 x i32> %insertElmt83, i32 %269, i32 1
  %insertElmt85 = insertelement <4 x i32> %insertElmt84, i32 %269, i32 2
  %insertElmt86 = insertelement <4 x i32> %insertElmt85, i32 %269, i32 3
  store <4 x i32> %insertElmt86, <4 x i32>* %allocaVec46, align 16
  %270 = load <4 x i32>, <4 x i32>* %allocaVec46, align 16
  %Vop87 = add <4 x i32> %270, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop87, <4 x i32>* %allocaVec46
  %271 = load <4 x i32>, <4 x i32>* %allocaVec46, align 4
  %extractE89 = extractelement <4 x i32> %271, i64 0
  %extractE90 = extractelement <4 x i32> %271, i64 1
  %extractE91 = extractelement <4 x i32> %271, i64 2
  %sum92 = add i32 %extractE89, %extractE90
  %sum93 = add i32 %sum92, %extractE91
  %272 = add i32 %269, 1
  %Fmul88 = mul i32 %272, 3
  store i32 %272, i32* %Recovery2
  %Fcmp94 = icmp ne i32 %sum93, %Fmul88
  br i1 %Fcmp94, label %273, label %277

; <label>:273:                                    ; preds = %267
  %remThree130 = sdiv i32 %sum93, %extractE89
  %FcmpThree131 = icmp ne i32 %remThree130, 3
  br i1 %FcmpThree131, label %274, label %275

; <label>:274:                                    ; preds = %273
  store i32 %272, i32* %Recovery2, align 4
  br label %276

; <label>:275:                                    ; preds = %273
  store i32 %extractE89, i32* %Recovery2, align 4
  br label %276

; <label>:276:                                    ; preds = %275, %274
  br label %277

; <label>:277:                                    ; preds = %267, %276
  %278 = load i32, i32* %Recovery2, align 4
  store i32 %278, i32* %17, align 4
  br label %140

; <label>:279:                                    ; preds = %140
  br label %280

; <label>:280:                                    ; preds = %279
  %281 = load i32, i32* %18, align 4
  %insertElmt95 = insertelement <4 x i32> undef, i32 %281, i32 0
  %insertElmt96 = insertelement <4 x i32> %insertElmt95, i32 %281, i32 1
  %insertElmt97 = insertelement <4 x i32> %insertElmt96, i32 %281, i32 2
  %insertElmt98 = insertelement <4 x i32> %insertElmt97, i32 %281, i32 3
  store <4 x i32> %insertElmt98, <4 x i32>* %allocaVec47, align 16
  %282 = load i32, i32* %14, align 4
  %283 = load <4 x i32>, <4 x i32>* %allocaVec43, align 16
  %284 = load <4 x i32>, <4 x i32>* %allocaVec47, align 16
  %Vop99 = add <4 x i32> %283, %284
  store <4 x i32> %Vop99, <4 x i32>* %allocaVec43
  %285 = add i32 %282, %281
  store i32 %285, i32* %14, align 4
  br label %126

; <label>:286:                                    ; preds = %126
  %287 = load i32, i32* %18, align 4
  store i32 %287, i32* %19, align 4
  br label %288

; <label>:288:                                    ; preds = %286
  %289 = load i32, i32* %18, align 4
  %insertElmt100 = insertelement <4 x i32> undef, i32 %289, i32 0
  %insertElmt101 = insertelement <4 x i32> %insertElmt100, i32 %289, i32 1
  %insertElmt102 = insertelement <4 x i32> %insertElmt101, i32 %289, i32 2
  %insertElmt103 = insertelement <4 x i32> %insertElmt102, i32 %289, i32 3
  store <4 x i32> %insertElmt103, <4 x i32>* %allocaVec47, align 16
  %290 = load <4 x i32>, <4 x i32>* %allocaVec47, align 16
  %Vop104 = shl <4 x i32> %290, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop104, <4 x i32>* %allocaVec47
  %291 = load <4 x i32>, <4 x i32>* %allocaVec47, align 4
  %extractE106 = extractelement <4 x i32> %291, i64 0
  %extractE107 = extractelement <4 x i32> %291, i64 1
  %extractE108 = extractelement <4 x i32> %291, i64 2
  %sum109 = add i32 %extractE106, %extractE107
  %sum110 = add i32 %sum109, %extractE108
  %292 = shl i32 %289, 1
  %Fmul105 = mul i32 %292, 3
  store i32 %292, i32* %Recovery3
  %Fcmp111 = icmp ne i32 %sum110, %Fmul105
  br i1 %Fcmp111, label %293, label %297

; <label>:293:                                    ; preds = %288
  %remThree132 = sdiv i32 %sum110, %extractE106
  %FcmpThree133 = icmp ne i32 %remThree132, 3
  br i1 %FcmpThree133, label %294, label %295

; <label>:294:                                    ; preds = %293
  store i32 %292, i32* %Recovery3, align 4
  br label %296

; <label>:295:                                    ; preds = %293
  store i32 %extractE106, i32* %Recovery3, align 4
  br label %296

; <label>:296:                                    ; preds = %295, %294
  br label %297

; <label>:297:                                    ; preds = %288, %296
  %298 = load i32, i32* %Recovery3, align 4
  store i32 %298, i32* %18, align 4
  br label %95

; <label>:299:                                    ; preds = %95
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %346

; <label>:302:                                    ; preds = %299
  %303 = load i32, i32* %7, align 4
  %304 = uitofp i32 %303 to double
  store double %304, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %305

; <label>:305:                                    ; preds = %343, %302
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %7, align 4
  %308 = icmp ult i32 %306, %307
  br i1 %308, label %309, label %345

; <label>:309:                                    ; preds = %305
  %310 = load double, double* %32, align 8
  %insertElmt112 = insertelement <2 x double> undef, double %310, i32 0
  %insertElmt113 = insertelement <2 x double> %insertElmt112, double %310, i32 1
  store <2 x double> %insertElmt113, <2 x double>* %allocaVec59, align 16
  %311 = load float*, float** %11, align 8
  %312 = load i32, i32* %14, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %311, i64 %313
  %315 = load float, float* %314, align 4
  %316 = fpext float %315 to double
  store double %316, double* %CastInst21
  %317 = load double, double* %CastInst21, align 4
  %insertCast114 = insertelement <2 x double> undef, double %317, i32 0
  %insertCast115 = insertelement <2 x double> %insertCast114, double %317, i32 1
  store <2 x double> %insertCast115, <2 x double>* %CastInstVec22, align 4
  %318 = load <2 x double>, <2 x double>* %CastInstVec22, align 4
  %319 = load <2 x double>, <2 x double>* %allocaVec59, align 16
  %Vop116 = fdiv <2 x double> %318, %319
  %320 = fdiv double %316, %310
  %321 = fptrunc double %320 to float
  store float %321, float* %314, align 4
  %322 = load double, double* %32, align 8
  %insertElmt117 = insertelement <2 x double> undef, double %322, i32 0
  %insertElmt118 = insertelement <2 x double> %insertElmt117, double %322, i32 1
  store <2 x double> %insertElmt118, <2 x double>* %allocaVec59, align 16
  %323 = load float*, float** %12, align 8
  %324 = load i32, i32* %14, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds float, float* %323, i64 %325
  %327 = load float, float* %326, align 4
  %328 = fpext float %327 to double
  store double %328, double* %CastInst23
  %329 = load double, double* %CastInst23, align 4
  %insertCast119 = insertelement <2 x double> undef, double %329, i32 0
  %insertCast120 = insertelement <2 x double> %insertCast119, double %329, i32 1
  store <2 x double> %insertCast120, <2 x double>* %CastInstVec24, align 4
  %330 = load <2 x double>, <2 x double>* %CastInstVec24, align 4
  %331 = load <2 x double>, <2 x double>* %allocaVec59, align 16
  %Vop121 = fdiv <2 x double> %330, %331
  %332 = fdiv double %328, %322
  %333 = fptrunc double %332 to float
  store float %333, float* %326, align 4
  br label %334

; <label>:334:                                    ; preds = %309
  %335 = load i32, i32* %14, align 4
  %336 = load <4 x i32>, <4 x i32>* %allocaVec43, align 16
  %Vop122 = add <4 x i32> %336, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop122, <4 x i32>* %allocaVec43
  %337 = load <4 x i32>, <4 x i32>* %allocaVec43, align 4
  %extractE124 = extractelement <4 x i32> %337, i64 0
  %extractE125 = extractelement <4 x i32> %337, i64 1
  %extractE126 = extractelement <4 x i32> %337, i64 2
  %sum127 = add i32 %extractE124, %extractE125
  %sum128 = add i32 %sum127, %extractE126
  %338 = add i32 %335, 1
  %Fmul123 = mul i32 %338, 3
  store i32 %338, i32* %Recovery4
  %Fcmp129 = icmp ne i32 %sum128, %Fmul123
  br i1 %Fcmp129, label %339, label %343

; <label>:339:                                    ; preds = %334
  %remThree134 = sdiv i32 %sum128, %extractE124
  %FcmpThree135 = icmp ne i32 %remThree134, 3
  br i1 %FcmpThree135, label %340, label %341

; <label>:340:                                    ; preds = %339
  store i32 %338, i32* %Recovery4, align 4
  br label %342

; <label>:341:                                    ; preds = %339
  store i32 %extractE124, i32* %Recovery4, align 4
  br label %342

; <label>:342:                                    ; preds = %341, %340
  br label %343

; <label>:343:                                    ; preds = %334, %342
  %344 = load i32, i32* %Recovery4, align 4
  store i32 %344, i32* %14, align 4
  br label %305

; <label>:345:                                    ; preds = %305
  br label %346

; <label>:346:                                    ; preds = %345, %299
  ret void
}

; Function Attrs: nounwind
define internal void @CheckPointer(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* %9)
  call void @exit(i32 1) #4
  unreachable

; <label>:11:                                     ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec32 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec33 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec34 = alloca <4 x i64>, align 16
  %CastInst2 = alloca i64, align 4
  %CastInstVec3 = alloca <4 x i64>, align 16
  %allocaVec35 = alloca <4 x i64>, align 16
  %CastInst4 = alloca i64, align 4
  %CastInstVec5 = alloca <4 x i64>, align 16
  %allocaVec36 = alloca <4 x i64>, align 16
  %CastInst6 = alloca i64, align 4
  %CastInstVec7 = alloca <4 x i64>, align 16
  %allocaVec37 = alloca <4 x i64>, align 16
  %CastInst8 = alloca i64, align 4
  %CastInstVec9 = alloca <4 x i64>, align 16
  %allocaVec38 = alloca <4 x i64>, align 16
  %CastInst10 = alloca i64, align 4
  %CastInstVec11 = alloca <4 x i64>, align 16
  %allocaVec39 = alloca <4 x float>, align 16
  %CastInst12 = alloca float, align 4
  %CastInstVec13 = alloca <4 x float>, align 16
  %allocaVec40 = alloca <2 x double>, align 16
  %CastInst14 = alloca double, align 4
  %CastInstVec15 = alloca <2 x double>, align 16
  %allocaVec41 = alloca <2 x double>, align 16
  %CastInst16 = alloca double, align 4
  %CastInstVec17 = alloca <2 x double>, align 16
  %allocaVec42 = alloca <4 x float>, align 16
  %CastInst18 = alloca float, align 4
  %CastInstVec19 = alloca <4 x float>, align 16
  %allocaVec43 = alloca <2 x double>, align 16
  %CastInst20 = alloca double, align 4
  %CastInstVec21 = alloca <2 x double>, align 16
  %allocaVec44 = alloca <2 x double>, align 16
  %CastInst22 = alloca double, align 4
  %CastInstVec23 = alloca <2 x double>, align 16
  %allocaVec45 = alloca <4 x i32>, align 16
  %CallInst = alloca i32, align 4
  %CallInstVec = alloca <4 x i32>, align 16
  %allocaVec46 = alloca <4 x i32>, align 16
  %CallInst24 = alloca i32, align 4
  %CallInstVec25 = alloca <4 x i32>, align 16
  %allocaVec47 = alloca <4 x i32>, align 16
  %CallInst26 = alloca i32, align 4
  %CallInstVec27 = alloca <4 x i32>, align 16
  %allocaVec48 = alloca <2 x double>, align 16
  %CallInst28 = alloca double, align 4
  %CallInstVec29 = alloca <2 x double>, align 16
  %allocaVec49 = alloca <2 x double>, align 16
  %CallInst30 = alloca double, align 4
  %CallInstVec31 = alloca <2 x double>, align 16
  %allocaVec50 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %allocaVec51 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %allocaVec52 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec53 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec54 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec55 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %allocaVec56 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %2
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1.6, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.7, i32 0, i32 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3.8, i32 0, i32 0))
  call void @exit(i32 -1) #4
  unreachable

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %24
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.9, i32 0, i32 0), i64 2)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %16, align 4
  br label %35

; <label>:35:                                     ; preds = %27, %24
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @atoi(i8* %43)
  store i32 %44, i32* %7, align 4
  call void @srand(i32 1)
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %CastInst
  %47 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %47, i32 0
  %insertCast57 = insertelement <4 x i64> %insertCast, i64 %47, i32 1
  %insertCast58 = insertelement <4 x i64> %insertCast57, i64 %47, i32 2
  %insertCast59 = insertelement <4 x i64> %insertCast58, i64 %47, i32 3
  store <4 x i64> %insertCast59, <4 x i64>* %CastInstVec, align 4
  %48 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop = mul <4 x i64> <i64 4, i64 4, i64 4, i64 4>, %48
  %49 = mul i64 4, %46
  %50 = call i8* @malloc(i64 %49)
  %51 = bitcast i8* %50 to float*
  store float* %51, float** %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %CastInst2
  %54 = load i64, i64* %CastInst2, align 4
  %insertCast60 = insertelement <4 x i64> undef, i64 %54, i32 0
  %insertCast61 = insertelement <4 x i64> %insertCast60, i64 %54, i32 1
  %insertCast62 = insertelement <4 x i64> %insertCast61, i64 %54, i32 2
  %insertCast63 = insertelement <4 x i64> %insertCast62, i64 %54, i32 3
  store <4 x i64> %insertCast63, <4 x i64>* %CastInstVec3, align 4
  %55 = load <4 x i64>, <4 x i64>* %CastInstVec3, align 4
  %Vop64 = mul <4 x i64> <i64 4, i64 4, i64 4, i64 4>, %55
  %56 = mul i64 4, %53
  %57 = call i8* @malloc(i64 %56)
  %58 = bitcast i8* %57 to float*
  store float* %58, float** %11, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %CastInst4
  %61 = load i64, i64* %CastInst4, align 4
  %insertCast65 = insertelement <4 x i64> undef, i64 %61, i32 0
  %insertCast66 = insertelement <4 x i64> %insertCast65, i64 %61, i32 1
  %insertCast67 = insertelement <4 x i64> %insertCast66, i64 %61, i32 2
  %insertCast68 = insertelement <4 x i64> %insertCast67, i64 %61, i32 3
  store <4 x i64> %insertCast68, <4 x i64>* %CastInstVec5, align 4
  %62 = load <4 x i64>, <4 x i64>* %CastInstVec5, align 4
  %Vop69 = mul <4 x i64> <i64 4, i64 4, i64 4, i64 4>, %62
  %63 = mul i64 4, %60
  %64 = call i8* @malloc(i64 %63)
  %65 = bitcast i8* %64 to float*
  store float* %65, float** %12, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %CastInst6
  %68 = load i64, i64* %CastInst6, align 4
  %insertCast70 = insertelement <4 x i64> undef, i64 %68, i32 0
  %insertCast71 = insertelement <4 x i64> %insertCast70, i64 %68, i32 1
  %insertCast72 = insertelement <4 x i64> %insertCast71, i64 %68, i32 2
  %insertCast73 = insertelement <4 x i64> %insertCast72, i64 %68, i32 3
  store <4 x i64> %insertCast73, <4 x i64>* %CastInstVec7, align 4
  %69 = load <4 x i64>, <4 x i64>* %CastInstVec7, align 4
  %Vop74 = mul <4 x i64> <i64 4, i64 4, i64 4, i64 4>, %69
  %70 = mul i64 4, %67
  %71 = call i8* @malloc(i64 %70)
  %72 = bitcast i8* %71 to float*
  store float* %72, float** %13, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %CastInst8
  %75 = load i64, i64* %CastInst8, align 4
  %insertCast75 = insertelement <4 x i64> undef, i64 %75, i32 0
  %insertCast76 = insertelement <4 x i64> %insertCast75, i64 %75, i32 1
  %insertCast77 = insertelement <4 x i64> %insertCast76, i64 %75, i32 2
  %insertCast78 = insertelement <4 x i64> %insertCast77, i64 %75, i32 3
  store <4 x i64> %insertCast78, <4 x i64>* %CastInstVec9, align 4
  %76 = load <4 x i64>, <4 x i64>* %CastInstVec9, align 4
  %Vop79 = mul <4 x i64> <i64 4, i64 4, i64 4, i64 4>, %76
  %77 = mul i64 4, %74
  %78 = call i8* @malloc(i64 %77)
  %79 = bitcast i8* %78 to float*
  store float* %79, float** %14, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %CastInst10
  %82 = load i64, i64* %CastInst10, align 4
  %insertCast80 = insertelement <4 x i64> undef, i64 %82, i32 0
  %insertCast81 = insertelement <4 x i64> %insertCast80, i64 %82, i32 1
  %insertCast82 = insertelement <4 x i64> %insertCast81, i64 %82, i32 2
  %insertCast83 = insertelement <4 x i64> %insertCast82, i64 %82, i32 3
  store <4 x i64> %insertCast83, <4 x i64>* %CastInstVec11, align 4
  %83 = load <4 x i64>, <4 x i64>* %CastInstVec11, align 4
  %Vop84 = mul <4 x i64> <i64 4, i64 4, i64 4, i64 4>, %83
  %84 = mul i64 4, %81
  %85 = call i8* @malloc(i64 %84)
  %86 = bitcast i8* %85 to float*
  store float* %86, float** %15, align 8
  store i32 0, i32* %8, align 4
  br label %87

; <label>:87:                                     ; preds = %110, %36
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %114

; <label>:91:                                     ; preds = %87
  %92 = call i32 @rand()
  store i32 %92, i32* %CallInst
  %93 = load i32, i32* %CallInst, align 4
  %insertCall = insertelement <4 x i32> undef, i32 %93, i32 0
  %insertCall85 = insertelement <4 x i32> %insertCall, i32 %93, i32 1
  %insertCall86 = insertelement <4 x i32> %insertCall85, i32 %93, i32 2
  %insertCall87 = insertelement <4 x i32> %insertCall86, i32 %93, i32 3
  store <4 x i32> %insertCall87, <4 x i32>* %CallInstVec, align 4
  %94 = load <4 x i32>, <4 x i32>* %CallInstVec, align 4
  %95 = srem i32 %92, 1000
  %96 = sitofp i32 %95 to float
  %97 = load float*, float** %14, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %96, float* %100, align 4
  %101 = call i32 @rand()
  store i32 %101, i32* %CallInst24
  %102 = load i32, i32* %CallInst24, align 4
  %insertCall88 = insertelement <4 x i32> undef, i32 %102, i32 0
  %insertCall89 = insertelement <4 x i32> %insertCall88, i32 %102, i32 1
  %insertCall90 = insertelement <4 x i32> %insertCall89, i32 %102, i32 2
  %insertCall91 = insertelement <4 x i32> %insertCall90, i32 %102, i32 3
  store <4 x i32> %insertCall91, <4 x i32>* %CallInstVec25, align 4
  %103 = load <4 x i32>, <4 x i32>* %CallInstVec25, align 4
  %104 = srem i32 %101, 1000
  %105 = sitofp i32 %104 to float
  %106 = load float*, float** %15, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  store float %105, float* %109, align 4
  br label %110

; <label>:110:                                    ; preds = %91
  %111 = load i32, i32* %8, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %111, i32 0
  %insertElmt92 = insertelement <4 x i32> %insertElmt, i32 %111, i32 1
  %insertElmt93 = insertelement <4 x i32> %insertElmt92, i32 %111, i32 2
  %insertElmt94 = insertelement <4 x i32> %insertElmt93, i32 %111, i32 3
  store <4 x i32> %insertElmt94, <4 x i32>* %allocaVec54, align 16
  %112 = load <4 x i32>, <4 x i32>* %allocaVec54, align 16
  %Vop95 = add <4 x i32> %112, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop95, <4 x i32>* %allocaVec54
  %113 = add i32 %111, 1
  store i32 %113, i32* %8, align 4
  br label %87

; <label>:114:                                    ; preds = %87
  store i32 0, i32* %8, align 4
  br label %115

; <label>:115:                                    ; preds = %203, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %207

; <label>:119:                                    ; preds = %115
  %120 = load float*, float** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  store float 0.000000e+00, float* %123, align 4
  store i32 0, i32* %9, align 4
  br label %124

; <label>:124:                                    ; preds = %200, %119
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %202

; <label>:128:                                    ; preds = %124
  %129 = call i32 @rand()
  store i32 %129, i32* %CallInst26
  %130 = load i32, i32* %CallInst26, align 4
  %insertCall96 = insertelement <4 x i32> undef, i32 %130, i32 0
  %insertCall97 = insertelement <4 x i32> %insertCall96, i32 %130, i32 1
  %insertCall98 = insertelement <4 x i32> %insertCall97, i32 %130, i32 2
  %insertCall99 = insertelement <4 x i32> %insertCall98, i32 %130, i32 3
  store <4 x i32> %insertCall99, <4 x i32>* %CallInstVec27, align 4
  %131 = load <4 x i32>, <4 x i32>* %CallInstVec27, align 4
  %132 = srem i32 %129, 2
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %160

; <label>:134:                                    ; preds = %128
  %135 = load float*, float** %14, align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fpext float %139 to double
  %141 = load float*, float** %15, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = uitofp i32 %146 to float
  %148 = fmul float %145, %147
  %149 = fpext float %148 to double
  %150 = call double @cos(double %149) #5
  %151 = fmul double %140, %150
  %152 = load float*, float** %10, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  %156 = load float, float* %155, align 4
  %157 = fpext float %156 to double
  %158 = fadd double %157, %151
  %159 = fptrunc double %158 to float
  store float %159, float* %155, align 4
  br label %186

; <label>:160:                                    ; preds = %128
  %161 = load float*, float** %14, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fpext float %165 to double
  %167 = load float*, float** %15, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %167, i64 %169
  %171 = load float, float* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = uitofp i32 %172 to float
  %174 = fmul float %171, %173
  %175 = fpext float %174 to double
  %176 = call double @sin(double %175) #5
  %177 = fmul double %166, %176
  %178 = load float*, float** %10, align 8
  %179 = load i32, i32* %8, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fpext float %182 to double
  %184 = fadd double %183, %177
  %185 = fptrunc double %184 to float
  store float %185, float* %181, align 4
  br label %186

; <label>:186:                                    ; preds = %160, %134
  %187 = load float*, float** %11, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  store float 0.000000e+00, float* %190, align 4
  br label %191

; <label>:191:                                    ; preds = %186
  %192 = load i32, i32* %9, align 4
  %insertElmt100 = insertelement <4 x i32> undef, i32 %192, i32 0
  %insertElmt101 = insertelement <4 x i32> %insertElmt100, i32 %192, i32 1
  %insertElmt102 = insertelement <4 x i32> %insertElmt101, i32 %192, i32 2
  %insertElmt103 = insertelement <4 x i32> %insertElmt102, i32 %192, i32 3
  store <4 x i32> %insertElmt103, <4 x i32>* %allocaVec55, align 16
  %193 = load <4 x i32>, <4 x i32>* %allocaVec55, align 16
  %Vop104 = add <4 x i32> %193, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop104, <4 x i32>* %allocaVec55
  %194 = load <4 x i32>, <4 x i32>* %allocaVec55, align 4
  %extractE = extractelement <4 x i32> %194, i64 0
  %extractE105 = extractelement <4 x i32> %194, i64 1
  %extractE106 = extractelement <4 x i32> %194, i64 2
  %sum = add i32 %extractE, %extractE105
  %sum107 = add i32 %sum, %extractE106
  %195 = add i32 %192, 1
  %Fmul = mul i32 %195, 3
  store i32 %195, i32* %Recovery
  %Fcmp = icmp ne i32 %sum107, %Fmul
  br i1 %Fcmp, label %196, label %200

; <label>:196:                                    ; preds = %191
  %remThree = sdiv i32 %sum107, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %197, label %198

; <label>:197:                                    ; preds = %196
  store i32 %195, i32* %Recovery, align 4
  br label %199

; <label>:198:                                    ; preds = %196
  store i32 %extractE, i32* %Recovery, align 4
  br label %199

; <label>:199:                                    ; preds = %198, %197
  br label %200

; <label>:200:                                    ; preds = %191, %199
  %201 = load i32, i32* %Recovery, align 4
  store i32 %201, i32* %9, align 4
  br label %124

; <label>:202:                                    ; preds = %124
  br label %203

; <label>:203:                                    ; preds = %202
  %204 = load i32, i32* %8, align 4
  %205 = load <4 x i32>, <4 x i32>* %allocaVec54, align 16
  %Vop108 = add <4 x i32> %205, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop108, <4 x i32>* %allocaVec54
  %206 = add i32 %204, 1
  store i32 %206, i32* %8, align 4
  br label %115

; <label>:207:                                    ; preds = %115
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %16, align 4
  %210 = load float*, float** %10, align 8
  %211 = load float*, float** %11, align 8
  %212 = load float*, float** %12, align 8
  %213 = load float*, float** %13, align 8
  %214 = call i32 (i32, i32, float*, float*, float*, float*, ...) bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %208, i32 %209, float* %210, float* %211, float* %212, float* %213)
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.10, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %216

; <label>:216:                                    ; preds = %228, %207
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %232

; <label>:220:                                    ; preds = %216
  %221 = load float*, float** %12, align 8
  %222 = load i32, i32* %8, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %221, i64 %223
  %225 = load float, float* %224, align 4
  %226 = fpext float %225 to double
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %226)
  br label %228

; <label>:228:                                    ; preds = %220
  %229 = load i32, i32* %8, align 4
  %230 = load <4 x i32>, <4 x i32>* %allocaVec54, align 16
  %Vop109 = add <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop109, <4 x i32>* %allocaVec54
  %231 = add i32 %229, 1
  store i32 %231, i32* %8, align 4
  br label %216

; <label>:232:                                    ; preds = %216
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %235

; <label>:235:                                    ; preds = %256, %232
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %239, label %258

; <label>:239:                                    ; preds = %235
  %240 = load float*, float** %13, align 8
  %241 = load i32, i32* %8, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  %244 = load float, float* %243, align 4
  %245 = fpext float %244 to double
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %245)
  br label %247

; <label>:247:                                    ; preds = %239
  %248 = load i32, i32* %8, align 4
  %249 = load <4 x i32>, <4 x i32>* %allocaVec54, align 16
  %Vop110 = add <4 x i32> %249, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop110, <4 x i32>* %allocaVec54
  %250 = load <4 x i32>, <4 x i32>* %allocaVec54, align 4
  %extractE112 = extractelement <4 x i32> %250, i64 0
  %extractE113 = extractelement <4 x i32> %250, i64 1
  %extractE114 = extractelement <4 x i32> %250, i64 2
  %sum115 = add i32 %extractE112, %extractE113
  %sum116 = add i32 %sum115, %extractE114
  %251 = add i32 %248, 1
  %Fmul111 = mul i32 %251, 3
  store i32 %251, i32* %Recovery1
  %Fcmp117 = icmp ne i32 %sum116, %Fmul111
  br i1 %Fcmp117, label %252, label %256

; <label>:252:                                    ; preds = %247
  %remThree118 = sdiv i32 %sum116, %extractE112
  %FcmpThree119 = icmp ne i32 %remThree118, 3
  br i1 %FcmpThree119, label %253, label %254

; <label>:253:                                    ; preds = %252
  store i32 %251, i32* %Recovery1, align 4
  br label %255

; <label>:254:                                    ; preds = %252
  store i32 %extractE112, i32* %Recovery1, align 4
  br label %255

; <label>:255:                                    ; preds = %254, %253
  br label %256

; <label>:256:                                    ; preds = %247, %255
  %257 = load i32, i32* %Recovery1, align 4
  store i32 %257, i32* %8, align 4
  br label %235

; <label>:258:                                    ; preds = %235
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %260 = load float*, float** %10, align 8
  %261 = bitcast float* %260 to i8*
  call void @free(i8* %261)
  %262 = load float*, float** %11, align 8
  %263 = bitcast float* %262 to i8*
  call void @free(i8* %263)
  %264 = load float*, float** %12, align 8
  %265 = bitcast float* %264 to i8*
  call void @free(i8* %265)
  %266 = load float*, float** %13, align 8
  %267 = bitcast float* %266 to i8*
  call void @free(i8* %267)
  %268 = load float*, float** %14, align 8
  %269 = bitcast float* %268 to i8*
  call void @free(i8* %269)
  %270 = load float*, float** %15, align 8
  %271 = bitcast float* %270 to i8*
  call void @free(i8* %271)
  call void @exit(i32 0) #4
  unreachable
                                                  ; No predecessors!
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare i32 @printf(i8*, ...) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @atoi(i8*) #1

declare void @srand(i32) #1

declare i8* @malloc(i64) #1

declare i32 @rand() #1

declare void @free(i8*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
