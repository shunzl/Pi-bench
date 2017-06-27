; ModuleID = 'all.bc'
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
define arm_aapcscc i32 @NumberOfBitsNeeded(i32) #0 {
  %2 = alloca i32, align 4
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

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

; Function Attrs: nounwind
define arm_aapcscc i32 @ReverseBits(i32, i32) #0 {
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
define arm_aapcscc double @Index_to_frequency(i32, i32) #0 {
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
define arm_aapcscc void @fft_float(i32, i32, float*, float*, float*, float*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 4
  %10 = alloca float*, align 4
  %11 = alloca float*, align 4
  %12 = alloca float*, align 4
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
  %29 = alloca [3 x double], align 8
  %30 = alloca [3 x double], align 8
  %31 = alloca double, align 8
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
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %20, align 8
  %45 = fsub double -0.000000e+00, %44
  store double %45, double* %20, align 8
  br label %46

; <label>:46:                                     ; preds = %43, %40
  %47 = load float*, float** %9, align 4
  %48 = bitcast float* %47 to i8*
  call arm_aapcscc void @CheckPointer(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.2, i32 0, i32 0))
  %49 = load float*, float** %11, align 4
  %50 = bitcast float* %49 to i8*
  call arm_aapcscc void @CheckPointer(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %51 = load float*, float** %12, align 4
  %52 = bitcast float* %51 to i8*
  call arm_aapcscc void @CheckPointer(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %53 = load i32, i32* %7, align 4
  %54 = call arm_aapcscc i32 @NumberOfBitsNeeded(i32 %53)
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %55

; <label>:55:                                     ; preds = %85, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %88

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call arm_aapcscc i32 @ReverseBits(i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load float*, float** %9, align 4
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds float, float* %63, i32 %64
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %11, align 4
  %68 = load i32, i32* %15, align 4
  %69 = getelementptr inbounds float, float* %67, i32 %68
  store float %66, float* %69, align 4
  %70 = load float*, float** %10, align 4
  %71 = icmp eq float* %70, null
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %59
  br label %79

; <label>:73:                                     ; preds = %59
  %74 = load float*, float** %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = getelementptr inbounds float, float* %74, i32 %75
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  br label %79

; <label>:79:                                     ; preds = %73, %72
  %80 = phi double [ 0.000000e+00, %72 ], [ %78, %73 ]
  %81 = fptrunc double %80 to float
  %82 = load float*, float** %12, align 4
  %83 = load i32, i32* %15, align 4
  %84 = getelementptr inbounds float, float* %82, i32 %83
  store float %81, float* %84, align 4
  br label %85

; <label>:85:                                     ; preds = %79
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %55

; <label>:88:                                     ; preds = %55
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %89

; <label>:89:                                     ; preds = %246, %88
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ule i32 %90, %91
  br i1 %92, label %93, label %249

; <label>:93:                                     ; preds = %89
  %94 = load double, double* %20, align 8
  %95 = load i32, i32* %18, align 4
  %96 = uitofp i32 %95 to double
  %97 = fdiv double %94, %96
  store double %97, double* %23, align 8
  %98 = load double, double* %23, align 8
  %99 = fmul double -2.000000e+00, %98
  %100 = call arm_aapcscc double @sin(double %99) #5
  store double %100, double* %24, align 8
  %101 = load double, double* %23, align 8
  %102 = fsub double -0.000000e+00, %101
  %103 = call arm_aapcscc double @sin(double %102) #5
  store double %103, double* %25, align 8
  %104 = load double, double* %23, align 8
  %105 = fmul double -2.000000e+00, %104
  %106 = call arm_aapcscc double @cos(double %105) #5
  store double %106, double* %26, align 8
  %107 = load double, double* %23, align 8
  %108 = fsub double -0.000000e+00, %107
  %109 = call arm_aapcscc double @cos(double %108) #5
  store double %109, double* %27, align 8
  %110 = load double, double* %27, align 8
  %111 = fmul double 2.000000e+00, %110
  store double %111, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %112

; <label>:112:                                    ; preds = %240, %93
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %244

; <label>:116:                                    ; preds = %112
  %117 = load double, double* %26, align 8
  %118 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 2
  store double %117, double* %118, align 8
  %119 = load double, double* %27, align 8
  %120 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  store double %119, double* %120, align 8
  %121 = load double, double* %24, align 8
  %122 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 2
  store double %121, double* %122, align 8
  %123 = load double, double* %25, align 8
  %124 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  store double %123, double* %124, align 8
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %126

; <label>:126:                                    ; preds = %234, %116
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %19, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %239

; <label>:130:                                    ; preds = %126
  %131 = load double, double* %28, align 8
  %132 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  %133 = load double, double* %132, align 8
  %134 = fmul double %131, %133
  %135 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 2
  %136 = load double, double* %135, align 8
  %137 = fsub double %134, %136
  %138 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  store double %137, double* %138, align 8
  %139 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 2
  store double %140, double* %141, align 8
  %142 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %143 = load double, double* %142, align 8
  %144 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 1
  store double %143, double* %144, align 8
  %145 = load double, double* %28, align 8
  %146 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  %147 = load double, double* %146, align 8
  %148 = fmul double %145, %147
  %149 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 2
  %150 = load double, double* %149, align 8
  %151 = fsub double %148, %150
  %152 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  store double %151, double* %152, align 8
  %153 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  %154 = load double, double* %153, align 8
  %155 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 2
  store double %154, double* %155, align 8
  %156 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %157 = load double, double* %156, align 8
  %158 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 1
  store double %157, double* %158, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %19, align 4
  %161 = add i32 %159, %160
  store i32 %161, i32* %16, align 4
  %162 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %163 = load double, double* %162, align 8
  %164 = load float*, float** %11, align 4
  %165 = load i32, i32* %16, align 4
  %166 = getelementptr inbounds float, float* %164, i32 %165
  %167 = load float, float* %166, align 4
  %168 = fpext float %167 to double
  %169 = fmul double %163, %168
  %170 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %171 = load double, double* %170, align 8
  %172 = load float*, float** %12, align 4
  %173 = load i32, i32* %16, align 4
  %174 = getelementptr inbounds float, float* %172, i32 %173
  %175 = load float, float* %174, align 4
  %176 = fpext float %175 to double
  %177 = fmul double %171, %176
  %178 = fsub double %169, %177
  store double %178, double* %21, align 8
  %179 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %180 = load double, double* %179, align 8
  %181 = load float*, float** %12, align 4
  %182 = load i32, i32* %16, align 4
  %183 = getelementptr inbounds float, float* %181, i32 %182
  %184 = load float, float* %183, align 4
  %185 = fpext float %184 to double
  %186 = fmul double %180, %185
  %187 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %188 = load double, double* %187, align 8
  %189 = load float*, float** %11, align 4
  %190 = load i32, i32* %16, align 4
  %191 = getelementptr inbounds float, float* %189, i32 %190
  %192 = load float, float* %191, align 4
  %193 = fpext float %192 to double
  %194 = fmul double %188, %193
  %195 = fadd double %186, %194
  store double %195, double* %22, align 8
  %196 = load float*, float** %11, align 4
  %197 = load i32, i32* %15, align 4
  %198 = getelementptr inbounds float, float* %196, i32 %197
  %199 = load float, float* %198, align 4
  %200 = fpext float %199 to double
  %201 = load double, double* %21, align 8
  %202 = fsub double %200, %201
  %203 = fptrunc double %202 to float
  %204 = load float*, float** %11, align 4
  %205 = load i32, i32* %16, align 4
  %206 = getelementptr inbounds float, float* %204, i32 %205
  store float %203, float* %206, align 4
  %207 = load float*, float** %12, align 4
  %208 = load i32, i32* %15, align 4
  %209 = getelementptr inbounds float, float* %207, i32 %208
  %210 = load float, float* %209, align 4
  %211 = fpext float %210 to double
  %212 = load double, double* %22, align 8
  %213 = fsub double %211, %212
  %214 = fptrunc double %213 to float
  %215 = load float*, float** %12, align 4
  %216 = load i32, i32* %16, align 4
  %217 = getelementptr inbounds float, float* %215, i32 %216
  store float %214, float* %217, align 4
  %218 = load double, double* %21, align 8
  %219 = load float*, float** %11, align 4
  %220 = load i32, i32* %15, align 4
  %221 = getelementptr inbounds float, float* %219, i32 %220
  %222 = load float, float* %221, align 4
  %223 = fpext float %222 to double
  %224 = fadd double %223, %218
  %225 = fptrunc double %224 to float
  store float %225, float* %221, align 4
  %226 = load double, double* %22, align 8
  %227 = load float*, float** %12, align 4
  %228 = load i32, i32* %15, align 4
  %229 = getelementptr inbounds float, float* %227, i32 %228
  %230 = load float, float* %229, align 4
  %231 = fpext float %230 to double
  %232 = fadd double %231, %226
  %233 = fptrunc double %232 to float
  store float %233, float* %229, align 4
  br label %234

; <label>:234:                                    ; preds = %130
  %235 = load i32, i32* %15, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %17, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %17, align 4
  br label %126

; <label>:239:                                    ; preds = %126
  br label %240

; <label>:240:                                    ; preds = %239
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %14, align 4
  %243 = add i32 %242, %241
  store i32 %243, i32* %14, align 4
  br label %112

; <label>:244:                                    ; preds = %112
  %245 = load i32, i32* %18, align 4
  store i32 %245, i32* %19, align 4
  br label %246

; <label>:246:                                    ; preds = %244
  %247 = load i32, i32* %18, align 4
  %248 = shl i32 %247, 1
  store i32 %248, i32* %18, align 4
  br label %89

; <label>:249:                                    ; preds = %89
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %280

; <label>:252:                                    ; preds = %249
  %253 = load i32, i32* %7, align 4
  %254 = uitofp i32 %253 to double
  store double %254, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %255

; <label>:255:                                    ; preds = %276, %252
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %259, label %279

; <label>:259:                                    ; preds = %255
  %260 = load double, double* %32, align 8
  %261 = load float*, float** %11, align 4
  %262 = load i32, i32* %14, align 4
  %263 = getelementptr inbounds float, float* %261, i32 %262
  %264 = load float, float* %263, align 4
  %265 = fpext float %264 to double
  %266 = fdiv double %265, %260
  %267 = fptrunc double %266 to float
  store float %267, float* %263, align 4
  %268 = load double, double* %32, align 8
  %269 = load float*, float** %12, align 4
  %270 = load i32, i32* %14, align 4
  %271 = getelementptr inbounds float, float* %269, i32 %270
  %272 = load float, float* %271, align 4
  %273 = fpext float %272 to double
  %274 = fdiv double %273, %268
  %275 = fptrunc double %274 to float
  store float %275, float* %271, align 4
  br label %276

; <label>:276:                                    ; preds = %259
  %277 = load i32, i32* %14, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %14, align 4
  br label %255

; <label>:279:                                    ; preds = %255
  br label %280

; <label>:280:                                    ; preds = %279, %249
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 4
  %11 = alloca float*, align 4
  %12 = alloca float*, align 4
  %13 = alloca float*, align 4
  %14 = alloca float*, align 4
  %15 = alloca float*, align 4
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
  %46 = mul i32 4, %45
  %47 = call arm_aapcscc i8* @malloc(i32 %46)
  %48 = bitcast i8* %47 to float*
  store float* %48, float** %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul i32 4, %49
  %51 = call arm_aapcscc i8* @malloc(i32 %50)
  %52 = bitcast i8* %51 to float*
  store float* %52, float** %11, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul i32 4, %53
  %55 = call arm_aapcscc i8* @malloc(i32 %54)
  %56 = bitcast i8* %55 to float*
  store float* %56, float** %12, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul i32 4, %57
  %59 = call arm_aapcscc i8* @malloc(i32 %58)
  %60 = bitcast i8* %59 to float*
  store float* %60, float** %13, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul i32 4, %61
  %63 = call arm_aapcscc i8* @malloc(i32 %62)
  %64 = bitcast i8* %63 to float*
  store float* %64, float** %14, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul i32 4, %65
  %67 = call arm_aapcscc i8* @malloc(i32 %66)
  %68 = bitcast i8* %67 to float*
  store float* %68, float** %15, align 4
  store i32 0, i32* %8, align 4
  br label %69

; <label>:69:                                     ; preds = %86, %36
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %89

; <label>:73:                                     ; preds = %69
  %74 = call arm_aapcscc i32 @rand()
  %75 = srem i32 %74, 1000
  %76 = sitofp i32 %75 to float
  %77 = load float*, float** %14, align 4
  %78 = load i32, i32* %8, align 4
  %79 = getelementptr inbounds float, float* %77, i32 %78
  store float %76, float* %79, align 4
  %80 = call arm_aapcscc i32 @rand()
  %81 = srem i32 %80, 1000
  %82 = sitofp i32 %81 to float
  %83 = load float*, float** %15, align 4
  %84 = load i32, i32* %8, align 4
  %85 = getelementptr inbounds float, float* %83, i32 %84
  store float %82, float* %85, align 4
  br label %86

; <label>:86:                                     ; preds = %73
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %69

; <label>:89:                                     ; preds = %69
  store i32 0, i32* %8, align 4
  br label %90

; <label>:90:                                     ; preds = %160, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %163

; <label>:94:                                     ; preds = %90
  %95 = load float*, float** %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = getelementptr inbounds float, float* %95, i32 %96
  store float 0.000000e+00, float* %97, align 4
  store i32 0, i32* %9, align 4
  br label %98

; <label>:98:                                     ; preds = %156, %94
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %159

; <label>:102:                                    ; preds = %98
  %103 = call arm_aapcscc i32 @rand()
  %104 = srem i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

; <label>:106:                                    ; preds = %102
  %107 = load float*, float** %14, align 4
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds float, float* %107, i32 %108
  %110 = load float, float* %109, align 4
  %111 = fpext float %110 to double
  %112 = load float*, float** %15, align 4
  %113 = load i32, i32* %9, align 4
  %114 = getelementptr inbounds float, float* %112, i32 %113
  %115 = load float, float* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = uitofp i32 %116 to float
  %118 = fmul float %115, %117
  %119 = fpext float %118 to double
  %120 = call arm_aapcscc double @cos(double %119) #5
  %121 = fmul double %111, %120
  %122 = load float*, float** %10, align 4
  %123 = load i32, i32* %8, align 4
  %124 = getelementptr inbounds float, float* %122, i32 %123
  %125 = load float, float* %124, align 4
  %126 = fpext float %125 to double
  %127 = fadd double %126, %121
  %128 = fptrunc double %127 to float
  store float %128, float* %124, align 4
  br label %152

; <label>:129:                                    ; preds = %102
  %130 = load float*, float** %14, align 4
  %131 = load i32, i32* %9, align 4
  %132 = getelementptr inbounds float, float* %130, i32 %131
  %133 = load float, float* %132, align 4
  %134 = fpext float %133 to double
  %135 = load float*, float** %15, align 4
  %136 = load i32, i32* %9, align 4
  %137 = getelementptr inbounds float, float* %135, i32 %136
  %138 = load float, float* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = uitofp i32 %139 to float
  %141 = fmul float %138, %140
  %142 = fpext float %141 to double
  %143 = call arm_aapcscc double @sin(double %142) #5
  %144 = fmul double %134, %143
  %145 = load float*, float** %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = getelementptr inbounds float, float* %145, i32 %146
  %148 = load float, float* %147, align 4
  %149 = fpext float %148 to double
  %150 = fadd double %149, %144
  %151 = fptrunc double %150 to float
  store float %151, float* %147, align 4
  br label %152

; <label>:152:                                    ; preds = %129, %106
  %153 = load float*, float** %11, align 4
  %154 = load i32, i32* %8, align 4
  %155 = getelementptr inbounds float, float* %153, i32 %154
  store float 0.000000e+00, float* %155, align 4
  br label %156

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* %9, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %98

; <label>:159:                                    ; preds = %98
  br label %160

; <label>:160:                                    ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %90

; <label>:163:                                    ; preds = %90
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load float*, float** %10, align 4
  %167 = load float*, float** %11, align 4
  %168 = load float*, float** %12, align 4
  %169 = load float*, float** %13, align 4
  %170 = call arm_aapcscc i32 bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*)*)(i32 %164, i32 %165, float* %166, float* %167, float* %168, float* %169)
  %171 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.10, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %172

; <label>:172:                                    ; preds = %183, %163
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %186

; <label>:176:                                    ; preds = %172
  %177 = load float*, float** %12, align 4
  %178 = load i32, i32* %8, align 4
  %179 = getelementptr inbounds float, float* %177, i32 %178
  %180 = load float, float* %179, align 4
  %181 = fpext float %180 to double
  %182 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %181)
  br label %183

; <label>:183:                                    ; preds = %176
  %184 = load i32, i32* %8, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %172

; <label>:186:                                    ; preds = %172
  %187 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %188 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  br label %189

; <label>:189:                                    ; preds = %200, %186
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %193, label %203

; <label>:193:                                    ; preds = %189
  %194 = load float*, float** %13, align 4
  %195 = load i32, i32* %8, align 4
  %196 = getelementptr inbounds float, float* %194, i32 %195
  %197 = load float, float* %196, align 4
  %198 = fpext float %197 to double
  %199 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %198)
  br label %200

; <label>:200:                                    ; preds = %193
  %201 = load i32, i32* %8, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %189

; <label>:203:                                    ; preds = %189
  %204 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %205 = load float*, float** %10, align 4
  %206 = bitcast float* %205 to i8*
  call arm_aapcscc void @free(i8* %206)
  %207 = load float*, float** %11, align 4
  %208 = bitcast float* %207 to i8*
  call arm_aapcscc void @free(i8* %208)
  %209 = load float*, float** %12, align 4
  %210 = bitcast float* %209 to i8*
  call arm_aapcscc void @free(i8* %210)
  %211 = load float*, float** %13, align 4
  %212 = bitcast float* %211 to i8*
  call arm_aapcscc void @free(i8* %212)
  %213 = load float*, float** %14, align 4
  %214 = bitcast float* %213 to i8*
  call arm_aapcscc void @free(i8* %214)
  %215 = load float*, float** %15, align 4
  %216 = bitcast float* %215 to i8*
  call arm_aapcscc void @free(i8* %216)
  call arm_aapcscc void @exit(i32 0) #4
  unreachable
                                                  ; No predecessors!
  %218 = load i32, i32* %3, align 4
  ret i32 %218
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
