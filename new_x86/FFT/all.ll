; ModuleID = 'all.bc'
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub i32 %9, 1
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %7
  store i32 0, i32* %2, align 4
  br label %15

; <label>:14:                                     ; preds = %7
  store i32 1, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %13, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: nounwind
define i32 @NumberOfBitsNeeded(i32) #0 {
  %2 = alloca i32, align 4
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

; <label>:11:                                     ; preds = %20, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18

; <label>:19:                                     ; preds = %11
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %11
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind
define i32 @ReverseBits(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = or i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = lshr i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

; <label>:22:                                     ; preds = %7
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

; Function Attrs: nounwind
define double @Index_to_frequency(i32, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %31

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 %12, 2
  %14 = icmp ule i32 %11, %13
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = uitofp i32 %16 to double
  %18 = load i32, i32* %4, align 4
  %19 = uitofp i32 %18 to double
  %20 = fdiv double %17, %19
  store double %20, double* %3, align 8
  br label %31

; <label>:21:                                     ; preds = %10
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %23, %24
  %26 = uitofp i32 %25 to double
  %27 = fsub double -0.000000e+00, %26
  %28 = load i32, i32* %4, align 4
  %29 = uitofp i32 %28 to double
  %30 = fdiv double %27, %29
  store double %30, double* %3, align 8
  br label %31

; <label>:31:                                     ; preds = %22, %15, %9
  %32 = load double, double* %3, align 8
  ret double %32
}

; Function Attrs: nounwind
define void @fft_float(i32, i32, float*, float*, float*, float*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca [3 x double], align 16
  %30 = alloca [3 x double], align 16
  %31 = alloca double, align 8
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
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %20, align 8
  %45 = fsub double -0.000000e+00, %44
  store double %45, double* %20, align 8
  br label %46

; <label>:46:                                     ; preds = %43, %40
  %47 = load float*, float** %9, align 8
  %48 = bitcast float* %47 to i8*
  call void @CheckPointer(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.2, i32 0, i32 0))
  %49 = load float*, float** %11, align 8
  %50 = bitcast float* %49 to i8*
  call void @CheckPointer(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %51 = load float*, float** %12, align 8
  %52 = bitcast float* %51 to i8*
  call void @CheckPointer(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @NumberOfBitsNeeded(i32 %53)
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %55

; <label>:55:                                     ; preds = %89, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %92

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ReverseBits(i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %11, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %67, float* %71, align 4
  %72 = load float*, float** %10, align 8
  %73 = icmp eq float* %72, null
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %59
  br label %82

; <label>:75:                                     ; preds = %59
  %76 = load float*, float** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  br label %82

; <label>:82:                                     ; preds = %75, %74
  %83 = phi double [ 0.000000e+00, %74 ], [ %81, %75 ]
  %84 = fptrunc double %83 to float
  %85 = load float*, float** %12, align 8
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float %84, float* %88, align 4
  br label %89

; <label>:89:                                     ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %55

; <label>:92:                                     ; preds = %55
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %93

; <label>:93:                                     ; preds = %260, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ule i32 %94, %95
  br i1 %96, label %97, label %263

; <label>:97:                                     ; preds = %93
  %98 = load double, double* %20, align 8
  %99 = load i32, i32* %18, align 4
  %100 = uitofp i32 %99 to double
  %101 = fdiv double %98, %100
  store double %101, double* %23, align 8
  %102 = load double, double* %23, align 8
  %103 = fmul double -2.000000e+00, %102
  %104 = call double @sin(double %103) #5
  store double %104, double* %24, align 8
  %105 = load double, double* %23, align 8
  %106 = fsub double -0.000000e+00, %105
  %107 = call double @sin(double %106) #5
  store double %107, double* %25, align 8
  %108 = load double, double* %23, align 8
  %109 = fmul double -2.000000e+00, %108
  %110 = call double @cos(double %109) #5
  store double %110, double* %26, align 8
  %111 = load double, double* %23, align 8
  %112 = fsub double -0.000000e+00, %111
  %113 = call double @cos(double %112) #5
  store double %113, double* %27, align 8
  %114 = load double, double* %27, align 8
  %115 = fmul double 2.000000e+00, %114
  store double %115, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %116

; <label>:116:                                    ; preds = %254, %97
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %258

; <label>:120:                                    ; preds = %116
  %121 = load double, double* %26, align 8
  %122 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %121, double* %122, align 16
  %123 = load double, double* %27, align 8
  %124 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %123, double* %124, align 8
  %125 = load double, double* %24, align 8
  %126 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %125, double* %126, align 16
  %127 = load double, double* %25, align 8
  %128 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %127, double* %128, align 8
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %130

; <label>:130:                                    ; preds = %248, %120
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %19, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %253

; <label>:134:                                    ; preds = %130
  %135 = load double, double* %28, align 8
  %136 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %137 = load double, double* %136, align 8
  %138 = fmul double %135, %137
  %139 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  %140 = load double, double* %139, align 16
  %141 = fsub double %138, %140
  %142 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  store double %141, double* %142, align 16
  %143 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %144 = load double, double* %143, align 8
  %145 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %144, double* %145, align 16
  %146 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %147 = load double, double* %146, align 16
  %148 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %147, double* %148, align 8
  %149 = load double, double* %28, align 8
  %150 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %151 = load double, double* %150, align 8
  %152 = fmul double %149, %151
  %153 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  %154 = load double, double* %153, align 16
  %155 = fsub double %152, %154
  %156 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  store double %155, double* %156, align 16
  %157 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %158 = load double, double* %157, align 8
  %159 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %158, double* %159, align 16
  %160 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %161 = load double, double* %160, align 16
  %162 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %161, double* %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %19, align 4
  %165 = add i32 %163, %164
  store i32 %165, i32* %16, align 4
  %166 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %167 = load double, double* %166, align 16
  %168 = load float*, float** %11, align 8
  %169 = load i32, i32* %16, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  %172 = load float, float* %171, align 4
  %173 = fpext float %172 to double
  %174 = fmul double %167, %173
  %175 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %176 = load double, double* %175, align 16
  %177 = load float*, float** %12, align 8
  %178 = load i32, i32* %16, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fpext float %181 to double
  %183 = fmul double %176, %182
  %184 = fsub double %174, %183
  store double %184, double* %21, align 8
  %185 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %186 = load double, double* %185, align 16
  %187 = load float*, float** %12, align 8
  %188 = load i32, i32* %16, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fpext float %191 to double
  %193 = fmul double %186, %192
  %194 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %195 = load double, double* %194, align 16
  %196 = load float*, float** %11, align 8
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = fpext float %200 to double
  %202 = fmul double %195, %201
  %203 = fadd double %193, %202
  store double %203, double* %22, align 8
  %204 = load float*, float** %11, align 8
  %205 = load i32, i32* %15, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = fpext float %208 to double
  %210 = load double, double* %21, align 8
  %211 = fsub double %209, %210
  %212 = fptrunc double %211 to float
  %213 = load float*, float** %11, align 8
  %214 = load i32, i32* %16, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  store float %212, float* %216, align 4
  %217 = load float*, float** %12, align 8
  %218 = load i32, i32* %15, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  %221 = load float, float* %220, align 4
  %222 = fpext float %221 to double
  %223 = load double, double* %22, align 8
  %224 = fsub double %222, %223
  %225 = fptrunc double %224 to float
  %226 = load float*, float** %12, align 8
  %227 = load i32, i32* %16, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  store float %225, float* %229, align 4
  %230 = load double, double* %21, align 8
  %231 = load float*, float** %11, align 8
  %232 = load i32, i32* %15, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  %235 = load float, float* %234, align 4
  %236 = fpext float %235 to double
  %237 = fadd double %236, %230
  %238 = fptrunc double %237 to float
  store float %238, float* %234, align 4
  %239 = load double, double* %22, align 8
  %240 = load float*, float** %12, align 8
  %241 = load i32, i32* %15, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  %244 = load float, float* %243, align 4
  %245 = fpext float %244 to double
  %246 = fadd double %245, %239
  %247 = fptrunc double %246 to float
  store float %247, float* %243, align 4
  br label %248

; <label>:248:                                    ; preds = %134
  %249 = load i32, i32* %15, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %17, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %17, align 4
  br label %130

; <label>:253:                                    ; preds = %130
  br label %254

; <label>:254:                                    ; preds = %253
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %14, align 4
  %257 = add i32 %256, %255
  store i32 %257, i32* %14, align 4
  br label %116

; <label>:258:                                    ; preds = %116
  %259 = load i32, i32* %18, align 4
  store i32 %259, i32* %19, align 4
  br label %260

; <label>:260:                                    ; preds = %258
  %261 = load i32, i32* %18, align 4
  %262 = shl i32 %261, 1
  store i32 %262, i32* %18, align 4
  br label %93

; <label>:263:                                    ; preds = %93
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %296

; <label>:266:                                    ; preds = %263
  %267 = load i32, i32* %7, align 4
  %268 = uitofp i32 %267 to double
  store double %268, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %269

; <label>:269:                                    ; preds = %292, %266
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %295

; <label>:273:                                    ; preds = %269
  %274 = load double, double* %32, align 8
  %275 = load float*, float** %11, align 8
  %276 = load i32, i32* %14, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  %280 = fpext float %279 to double
  %281 = fdiv double %280, %274
  %282 = fptrunc double %281 to float
  store float %282, float* %278, align 4
  %283 = load double, double* %32, align 8
  %284 = load float*, float** %12, align 8
  %285 = load i32, i32* %14, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %284, i64 %286
  %288 = load float, float* %287, align 4
  %289 = fpext float %288 to double
  %290 = fdiv double %289, %283
  %291 = fptrunc double %290 to float
  store float %291, float* %287, align 4
  br label %292

; <label>:292:                                    ; preds = %273
  %293 = load i32, i32* %14, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %14, align 4
  br label %269

; <label>:295:                                    ; preds = %269
  br label %296

; <label>:296:                                    ; preds = %295, %263
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
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
  %47 = mul i64 4, %46
  %48 = call i8* @malloc(i64 %47)
  %49 = bitcast i8* %48 to float*
  store float* %49, float** %10, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = call i8* @malloc(i64 %52)
  %54 = bitcast i8* %53 to float*
  store float* %54, float** %11, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = call i8* @malloc(i64 %57)
  %59 = bitcast i8* %58 to float*
  store float* %59, float** %12, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = call i8* @malloc(i64 %62)
  %64 = bitcast i8* %63 to float*
  store float* %64, float** %13, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = call i8* @malloc(i64 %67)
  %69 = bitcast i8* %68 to float*
  store float* %69, float** %14, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = call i8* @malloc(i64 %72)
  %74 = bitcast i8* %73 to float*
  store float* %74, float** %15, align 8
  store i32 0, i32* %8, align 4
  br label %75

; <label>:75:                                     ; preds = %94, %36
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %97

; <label>:79:                                     ; preds = %75
  %80 = call i32 @rand()
  %81 = srem i32 %80, 1000
  %82 = sitofp i32 %81 to float
  %83 = load float*, float** %14, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  store float %82, float* %86, align 4
  %87 = call i32 @rand()
  %88 = srem i32 %87, 1000
  %89 = sitofp i32 %88 to float
  %90 = load float*, float** %15, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float %89, float* %93, align 4
  br label %94

; <label>:94:                                     ; preds = %79
  %95 = load i32, i32* %8, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %75

; <label>:97:                                     ; preds = %75
  store i32 0, i32* %8, align 4
  br label %98

; <label>:98:                                     ; preds = %176, %97
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %179

; <label>:102:                                    ; preds = %98
  %103 = load float*, float** %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  store float 0.000000e+00, float* %106, align 4
  store i32 0, i32* %9, align 4
  br label %107

; <label>:107:                                    ; preds = %172, %102
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %175

; <label>:111:                                    ; preds = %107
  %112 = call i32 @rand()
  %113 = srem i32 %112, 2
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

; <label>:115:                                    ; preds = %111
  %116 = load float*, float** %14, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = load float*, float** %15, align 8
  %123 = load i32, i32* %9, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %122, i64 %124
  %126 = load float, float* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = uitofp i32 %127 to float
  %129 = fmul float %126, %128
  %130 = fpext float %129 to double
  %131 = call double @cos(double %130) #5
  %132 = fmul double %121, %131
  %133 = load float*, float** %10, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fpext float %137 to double
  %139 = fadd double %138, %132
  %140 = fptrunc double %139 to float
  store float %140, float* %136, align 4
  br label %167

; <label>:141:                                    ; preds = %111
  %142 = load float*, float** %14, align 8
  %143 = load i32, i32* %9, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fpext float %146 to double
  %148 = load float*, float** %15, align 8
  %149 = load i32, i32* %9, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load i32, i32* %8, align 4
  %154 = uitofp i32 %153 to float
  %155 = fmul float %152, %154
  %156 = fpext float %155 to double
  %157 = call double @sin(double %156) #5
  %158 = fmul double %147, %157
  %159 = load float*, float** %10, align 8
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %159, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fpext float %163 to double
  %165 = fadd double %164, %158
  %166 = fptrunc double %165 to float
  store float %166, float* %162, align 4
  br label %167

; <label>:167:                                    ; preds = %141, %115
  %168 = load float*, float** %11, align 8
  %169 = load i32, i32* %8, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  store float 0.000000e+00, float* %171, align 4
  br label %172

; <label>:172:                                    ; preds = %167
  %173 = load i32, i32* %9, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %107

; <label>:175:                                    ; preds = %107
  br label %176

; <label>:176:                                    ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %98

; <label>:179:                                    ; preds = %98
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load float*, float** %10, align 8
  %183 = load float*, float** %11, align 8
  %184 = load float*, float** %12, align 8
  %185 = load float*, float** %13, align 8
  %186 = call i32 (i32, i32, float*, float*, float*, float*, ...) bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %180, i32 %181, float* %182, float* %183, float* %184, float* %185)
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.10, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %188

; <label>:188:                                    ; preds = %200, %179
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ult i32 %189, %190
  br i1 %191, label %192, label %203

; <label>:192:                                    ; preds = %188
  %193 = load float*, float** %12, align 8
  %194 = load i32, i32* %8, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %193, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fpext float %197 to double
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %198)
  br label %200

; <label>:200:                                    ; preds = %192
  %201 = load i32, i32* %8, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %188

; <label>:203:                                    ; preds = %188
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %206

; <label>:206:                                    ; preds = %218, %203
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %210, label %221

; <label>:210:                                    ; preds = %206
  %211 = load float*, float** %13, align 8
  %212 = load i32, i32* %8, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  %216 = fpext float %215 to double
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %216)
  br label %218

; <label>:218:                                    ; preds = %210
  %219 = load i32, i32* %8, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %206

; <label>:221:                                    ; preds = %206
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %223 = load float*, float** %10, align 8
  %224 = bitcast float* %223 to i8*
  call void @free(i8* %224)
  %225 = load float*, float** %11, align 8
  %226 = bitcast float* %225 to i8*
  call void @free(i8* %226)
  %227 = load float*, float** %12, align 8
  %228 = bitcast float* %227 to i8*
  call void @free(i8* %228)
  %229 = load float*, float** %13, align 8
  %230 = bitcast float* %229 to i8*
  call void @free(i8* %230)
  %231 = load float*, float** %14, align 8
  %232 = bitcast float* %231 to i8*
  call void @free(i8* %232)
  %233 = load float*, float** %15, align 8
  %234 = bitcast float* %233 to i8*
  call void @free(i8* %234)
  call void @exit(i32 0) #4
  unreachable
                                                  ; No predecessors!
  %236 = load i32, i32* %3, align 4
  ret i32 %236
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
