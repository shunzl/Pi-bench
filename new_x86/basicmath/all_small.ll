; ModuleID = 'all_small.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Asqrt(%lX) = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [3 x double], align 16
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.int_sqrt, align 4
  %24 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.050000e+01, double* %3, align 8
  store double 3.200000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  store double 1.000000e+00, double* %6, align 8
  store double -4.500000e+00, double* %7, align 8
  store double 1.700000e+01, double* %8, align 8
  store double -3.000000e+01, double* %9, align 8
  store double 1.000000e+00, double* %10, align 8
  store double -3.500000e+00, double* %11, align 8
  store double 2.200000e+01, double* %12, align 8
  store double -3.100000e+01, double* %13, align 8
  store double 1.000000e+00, double* %14, align 8
  store double -1.370000e+01, double* %15, align 8
  store double 1.000000e+00, double* %16, align 8
  store double -3.500000e+01, double* %17, align 8
  store i64 1072497001, i64* %22, align 8
  store i64 0, i64* %24, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %26 = load double, double* %2, align 8
  %27 = load double, double* %3, align 8
  %28 = load double, double* %4, align 8
  %29 = load double, double* %5, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %26, double %27, double %28, double %29, i32* %20, double* %30)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %32

; <label>:32:                                     ; preds = %42, %0
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %20, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %21, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %38
  %40 = load double, double* %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %40)
  br label %42

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %21, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %21, align 4
  br label %32

; <label>:45:                                     ; preds = %32
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %47 = load double, double* %6, align 8
  %48 = load double, double* %7, align 8
  %49 = load double, double* %8, align 8
  %50 = load double, double* %9, align 8
  %51 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %47, double %48, double %49, double %50, i32* %20, double* %51)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %53

; <label>:53:                                     ; preds = %63, %45
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %59
  %61 = load double, double* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %61)
  br label %63

; <label>:63:                                     ; preds = %57
  %64 = load i32, i32* %21, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %21, align 4
  br label %53

; <label>:66:                                     ; preds = %53
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %68 = load double, double* %10, align 8
  %69 = load double, double* %11, align 8
  %70 = load double, double* %12, align 8
  %71 = load double, double* %13, align 8
  %72 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %68, double %69, double %70, double %71, i32* %20, double* %72)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %74

; <label>:74:                                     ; preds = %84, %66
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %80
  %82 = load double, double* %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %82)
  br label %84

; <label>:84:                                     ; preds = %78
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %21, align 4
  br label %74

; <label>:87:                                     ; preds = %74
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %89 = load double, double* %14, align 8
  %90 = load double, double* %15, align 8
  %91 = load double, double* %16, align 8
  %92 = load double, double* %17, align 8
  %93 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %89, double %90, double %91, double %92, i32* %20, double* %93)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %95

; <label>:95:                                     ; preds = %105, %87
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %101
  %103 = load double, double* %102, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %103)
  br label %105

; <label>:105:                                    ; preds = %99
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %21, align 4
  br label %95

; <label>:108:                                    ; preds = %95
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  br label %110

; <label>:110:                                    ; preds = %159, %108
  %111 = load double, double* %2, align 8
  %112 = fcmp olt double %111, 1.000000e+01
  br i1 %112, label %113, label %162

; <label>:113:                                    ; preds = %110
  store double 1.000000e+01, double* %3, align 8
  br label %114

; <label>:114:                                    ; preds = %155, %113
  %115 = load double, double* %3, align 8
  %116 = fcmp ogt double %115, 0.000000e+00
  br i1 %116, label %117, label %158

; <label>:117:                                    ; preds = %114
  store double 5.000000e+00, double* %4, align 8
  br label %118

; <label>:118:                                    ; preds = %151, %117
  %119 = load double, double* %4, align 8
  %120 = fcmp olt double %119, 1.500000e+01
  br i1 %120, label %121, label %154

; <label>:121:                                    ; preds = %118
  store double -1.000000e+00, double* %5, align 8
  br label %122

; <label>:122:                                    ; preds = %147, %121
  %123 = load double, double* %5, align 8
  %124 = fcmp ogt double %123, -1.100000e+01
  br i1 %124, label %125, label %150

; <label>:125:                                    ; preds = %122
  %126 = load double, double* %2, align 8
  %127 = load double, double* %3, align 8
  %128 = load double, double* %4, align 8
  %129 = load double, double* %5, align 8
  %130 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %126, double %127, double %128, double %129, i32* %20, double* %130)
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %132

; <label>:132:                                    ; preds = %142, %125
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %145

; <label>:136:                                    ; preds = %132
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %138
  %140 = load double, double* %139, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %140)
  br label %142

; <label>:142:                                    ; preds = %136
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %21, align 4
  br label %132

; <label>:145:                                    ; preds = %132
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %147

; <label>:147:                                    ; preds = %145
  %148 = load double, double* %5, align 8
  %149 = fadd double %148, -1.000000e+00
  store double %149, double* %5, align 8
  br label %122

; <label>:150:                                    ; preds = %122
  br label %151

; <label>:151:                                    ; preds = %150
  %152 = load double, double* %4, align 8
  %153 = fadd double %152, 5.000000e-01
  store double %153, double* %4, align 8
  br label %118

; <label>:154:                                    ; preds = %118
  br label %155

; <label>:155:                                    ; preds = %154
  %156 = load double, double* %3, align 8
  %157 = fadd double %156, -1.000000e+00
  store double %157, double* %3, align 8
  br label %114

; <label>:158:                                    ; preds = %114
  br label %159

; <label>:159:                                    ; preds = %158
  %160 = load double, double* %2, align 8
  %161 = fadd double %160, 1.000000e+00
  store double %161, double* %2, align 8
  br label %110

; <label>:162:                                    ; preds = %110
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %164

; <label>:164:                                    ; preds = %174, %162
  %165 = load i32, i32* %21, align 4
  %166 = icmp slt i32 %165, 1001
  br i1 %166, label %167, label %177

; <label>:167:                                    ; preds = %164
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  call void @usqrt(i64 %169, %struct.int_sqrt* %23)
  %170 = load i32, i32* %21, align 4
  %171 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %170, i32 %172)
  br label %174

; <label>:174:                                    ; preds = %167
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %21, align 4
  br label %164

; <label>:177:                                    ; preds = %164
  %178 = load i64, i64* %22, align 8
  call void @usqrt(i64 %178, %struct.int_sqrt* %23)
  %179 = load i64, i64* %22, align 8
  %180 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i64 %179, i32 %181)
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %19, align 8
  br label %184

; <label>:184:                                    ; preds = %195, %177
  %185 = load double, double* %19, align 8
  %186 = fcmp ole double %185, 3.600000e+02
  br i1 %186, label %187, label %198

; <label>:187:                                    ; preds = %184
  %188 = load double, double* %19, align 8
  %189 = load double, double* %19, align 8
  %190 = call double @atan(double 1.000000e+00) #5
  %191 = fmul double 4.000000e+00, %190
  %192 = fmul double %189, %191
  %193 = fdiv double %192, 1.800000e+02
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %188, double %193)
  br label %195

; <label>:195:                                    ; preds = %187
  %196 = load double, double* %19, align 8
  %197 = fadd double %196, 1.000000e+00
  store double %197, double* %19, align 8
  br label %184

; <label>:198:                                    ; preds = %184
  %199 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store double 0.000000e+00, double* %19, align 8
  br label %200

; <label>:200:                                    ; preds = %215, %198
  %201 = load double, double* %19, align 8
  %202 = call double @atan(double 1.000000e+00) #5
  %203 = fmul double 4.000000e+00, %202
  %204 = fmul double 2.000000e+00, %203
  %205 = fadd double %204, 1.000000e-06
  %206 = fcmp ole double %201, %205
  br i1 %206, label %207, label %221

; <label>:207:                                    ; preds = %200
  %208 = load double, double* %19, align 8
  %209 = load double, double* %19, align 8
  %210 = fmul double %209, 1.800000e+02
  %211 = call double @atan(double 1.000000e+00) #5
  %212 = fmul double 4.000000e+00, %211
  %213 = fdiv double %210, %212
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %208, double %213)
  br label %215

; <label>:215:                                    ; preds = %207
  %216 = call double @atan(double 1.000000e+00) #5
  %217 = fmul double 4.000000e+00, %216
  %218 = fdiv double %217, 1.800000e+02
  %219 = load double, double* %19, align 8
  %220 = fadd double %219, %218
  store double %220, double* %19, align 8
  br label %200

; <label>:221:                                    ; preds = %200
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare double @atan(double) #2

declare i32 @puts(...) #1

; Function Attrs: nounwind
define double @rad2deg(double) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fmul double 1.800000e+02, %3
  %5 = call double @atan(double 1.000000e+00) #5
  %6 = fmul double 4.000000e+00, %5
  %7 = fdiv double %4, %6
  ret double %7
}

; Function Attrs: nounwind
define double @deg2rad(double) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = call double @atan(double 1.000000e+00) #5
  %4 = fmul double 4.000000e+00, %3
  %5 = load double, double* %2, align 8
  %6 = fmul double %4, %5
  %7 = fdiv double %6, 1.800000e+02
  ret double %7
}

; Function Attrs: nounwind
define void @SolveCubic(double, double, double, double, i32*, double*) #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = fdiv double %20, %21
  %23 = fpext double %22 to x86_fp80
  store x86_fp80 %23, x86_fp80* %13, align 16
  %24 = load double, double* %9, align 8
  %25 = load double, double* %7, align 8
  %26 = fdiv double %24, %25
  %27 = fpext double %26 to x86_fp80
  store x86_fp80 %27, x86_fp80* %14, align 16
  %28 = load double, double* %10, align 8
  %29 = load double, double* %7, align 8
  %30 = fdiv double %28, %29
  %31 = fpext double %30 to x86_fp80
  store x86_fp80 %31, x86_fp80* %15, align 16
  %32 = load x86_fp80, x86_fp80* %13, align 16
  %33 = load x86_fp80, x86_fp80* %13, align 16
  %34 = fmul x86_fp80 %32, %33
  %35 = load x86_fp80, x86_fp80* %14, align 16
  %36 = fmul x86_fp80 0xK4000C000000000000000, %35
  %37 = fsub x86_fp80 %34, %36
  %38 = fdiv x86_fp80 %37, 0xK40029000000000000000
  store x86_fp80 %38, x86_fp80* %16, align 16
  %39 = load x86_fp80, x86_fp80* %13, align 16
  %40 = fmul x86_fp80 0xK40008000000000000000, %39
  %41 = load x86_fp80, x86_fp80* %13, align 16
  %42 = fmul x86_fp80 %40, %41
  %43 = load x86_fp80, x86_fp80* %13, align 16
  %44 = fmul x86_fp80 %42, %43
  %45 = load x86_fp80, x86_fp80* %13, align 16
  %46 = fmul x86_fp80 0xK40029000000000000000, %45
  %47 = load x86_fp80, x86_fp80* %14, align 16
  %48 = fmul x86_fp80 %46, %47
  %49 = fsub x86_fp80 %44, %48
  %50 = load x86_fp80, x86_fp80* %15, align 16
  %51 = fmul x86_fp80 0xK4003D800000000000000, %50
  %52 = fadd x86_fp80 %49, %51
  %53 = fdiv x86_fp80 %52, 0xK4004D800000000000000
  store x86_fp80 %53, x86_fp80* %17, align 16
  %54 = load x86_fp80, x86_fp80* %17, align 16
  %55 = load x86_fp80, x86_fp80* %17, align 16
  %56 = fmul x86_fp80 %54, %55
  %57 = load x86_fp80, x86_fp80* %16, align 16
  %58 = load x86_fp80, x86_fp80* %16, align 16
  %59 = fmul x86_fp80 %57, %58
  %60 = load x86_fp80, x86_fp80* %16, align 16
  %61 = fmul x86_fp80 %59, %60
  %62 = fsub x86_fp80 %56, %61
  %63 = fptrunc x86_fp80 %62 to double
  store double %63, double* %18, align 8
  %64 = load double, double* %18, align 8
  %65 = fcmp ole double %64, 0.000000e+00
  br i1 %65, label %66, label %133

; <label>:66:                                     ; preds = %6
  %67 = load i32*, i32** %11, align 8
  store i32 3, i32* %67, align 4
  %68 = load x86_fp80, x86_fp80* %17, align 16
  %69 = load x86_fp80, x86_fp80* %16, align 16
  %70 = load x86_fp80, x86_fp80* %16, align 16
  %71 = fmul x86_fp80 %69, %70
  %72 = load x86_fp80, x86_fp80* %16, align 16
  %73 = fmul x86_fp80 %71, %72
  %74 = fptrunc x86_fp80 %73 to double
  %75 = call double @sqrt(double %74) #5
  %76 = fpext double %75 to x86_fp80
  %77 = fdiv x86_fp80 %68, %76
  %78 = fptrunc x86_fp80 %77 to double
  %79 = call double @acos(double %78) #5
  store double %79, double* %19, align 8
  %80 = load x86_fp80, x86_fp80* %16, align 16
  %81 = fptrunc x86_fp80 %80 to double
  %82 = call double @sqrt(double %81) #5
  %83 = fmul double -2.000000e+00, %82
  %84 = load double, double* %19, align 8
  %85 = fdiv double %84, 3.000000e+00
  %86 = call double @cos(double %85) #5
  %87 = fmul double %83, %86
  %88 = fpext double %87 to x86_fp80
  %89 = load x86_fp80, x86_fp80* %13, align 16
  %90 = fdiv x86_fp80 %89, 0xK4000C000000000000000
  %91 = fsub x86_fp80 %88, %90
  %92 = fptrunc x86_fp80 %91 to double
  %93 = load double*, double** %12, align 8
  %94 = getelementptr inbounds double, double* %93, i64 0
  store double %92, double* %94, align 8
  %95 = load x86_fp80, x86_fp80* %16, align 16
  %96 = fptrunc x86_fp80 %95 to double
  %97 = call double @sqrt(double %96) #5
  %98 = fmul double -2.000000e+00, %97
  %99 = load double, double* %19, align 8
  %100 = call double @atan(double 1.000000e+00) #5
  %101 = fmul double 4.000000e+00, %100
  %102 = fmul double 2.000000e+00, %101
  %103 = fadd double %99, %102
  %104 = fdiv double %103, 3.000000e+00
  %105 = call double @cos(double %104) #5
  %106 = fmul double %98, %105
  %107 = fpext double %106 to x86_fp80
  %108 = load x86_fp80, x86_fp80* %13, align 16
  %109 = fdiv x86_fp80 %108, 0xK4000C000000000000000
  %110 = fsub x86_fp80 %107, %109
  %111 = fptrunc x86_fp80 %110 to double
  %112 = load double*, double** %12, align 8
  %113 = getelementptr inbounds double, double* %112, i64 1
  store double %111, double* %113, align 8
  %114 = load x86_fp80, x86_fp80* %16, align 16
  %115 = fptrunc x86_fp80 %114 to double
  %116 = call double @sqrt(double %115) #5
  %117 = fmul double -2.000000e+00, %116
  %118 = load double, double* %19, align 8
  %119 = call double @atan(double 1.000000e+00) #5
  %120 = fmul double 4.000000e+00, %119
  %121 = fmul double 4.000000e+00, %120
  %122 = fadd double %118, %121
  %123 = fdiv double %122, 3.000000e+00
  %124 = call double @cos(double %123) #5
  %125 = fmul double %117, %124
  %126 = fpext double %125 to x86_fp80
  %127 = load x86_fp80, x86_fp80* %13, align 16
  %128 = fdiv x86_fp80 %127, 0xK4000C000000000000000
  %129 = fsub x86_fp80 %126, %128
  %130 = fptrunc x86_fp80 %129 to double
  %131 = load double*, double** %12, align 8
  %132 = getelementptr inbounds double, double* %131, i64 2
  store double %130, double* %132, align 8
  br label %172

; <label>:133:                                    ; preds = %6
  %134 = load i32*, i32** %11, align 8
  store i32 1, i32* %134, align 4
  %135 = load double, double* %18, align 8
  %136 = call double @sqrt(double %135) #5
  %137 = load x86_fp80, x86_fp80* %17, align 16
  %138 = fptrunc x86_fp80 %137 to double
  %139 = call double @fabs(double %138) #6
  %140 = fadd double %136, %139
  %141 = call double @pow(double %140, double 0x3FD5555555555555) #5
  %142 = load double*, double** %12, align 8
  %143 = getelementptr inbounds double, double* %142, i64 0
  store double %141, double* %143, align 8
  %144 = load x86_fp80, x86_fp80* %16, align 16
  %145 = load double*, double** %12, align 8
  %146 = getelementptr inbounds double, double* %145, i64 0
  %147 = load double, double* %146, align 8
  %148 = fpext double %147 to x86_fp80
  %149 = fdiv x86_fp80 %144, %148
  %150 = load double*, double** %12, align 8
  %151 = getelementptr inbounds double, double* %150, i64 0
  %152 = load double, double* %151, align 8
  %153 = fpext double %152 to x86_fp80
  %154 = fadd x86_fp80 %153, %149
  %155 = fptrunc x86_fp80 %154 to double
  store double %155, double* %151, align 8
  %156 = load x86_fp80, x86_fp80* %17, align 16
  %157 = fcmp olt x86_fp80 %156, 0xK00000000000000000000
  %158 = select i1 %157, i32 1, i32 -1
  %159 = sitofp i32 %158 to double
  %160 = load double*, double** %12, align 8
  %161 = getelementptr inbounds double, double* %160, i64 0
  %162 = load double, double* %161, align 8
  %163 = fmul double %162, %159
  store double %163, double* %161, align 8
  %164 = load x86_fp80, x86_fp80* %13, align 16
  %165 = fdiv x86_fp80 %164, 0xK4000C000000000000000
  %166 = load double*, double** %12, align 8
  %167 = getelementptr inbounds double, double* %166, i64 0
  %168 = load double, double* %167, align 8
  %169 = fpext double %168 to x86_fp80
  %170 = fsub x86_fp80 %169, %165
  %171 = fptrunc x86_fp80 %170 to double
  store double %171, double* %167, align 8
  br label %172

; <label>:172:                                    ; preds = %133, %66
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
define void @usqrt(i64, %struct.int_sqrt*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.int_sqrt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %36, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, 2
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 3221225472
  %17 = lshr i64 %16, 30
  %18 = add i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = shl i64 %19, 2
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = shl i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = shl i64 %23, 1
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %12
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %35

; <label>:35:                                     ; preds = %29, %12
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

; <label>:39:                                     ; preds = %9
  %40 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 8
  %41 = bitcast %struct.int_sqrt* %40 to i8*
  %42 = bitcast i64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
