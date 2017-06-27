; ModuleID = 'all_large.bc'
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
@.str.6 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
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
  %6 = alloca [3 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.int_sqrt, align 4
  %12 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.050000e+01, double* %3, align 8
  store double 3.200000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  store i64 1072497001, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %14 = load double, double* %2, align 8
  %15 = load double, double* %3, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %14, double %15, double %16, double %17, i32* %8, double* %18)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %20

; <label>:20:                                     ; preds = %30, %0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %28)
  br label %30

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %20

; <label>:33:                                     ; preds = %20
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -4.500000e+00, double* %3, align 8
  store double 1.700000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  %35 = load double, double* %2, align 8
  %36 = load double, double* %3, align 8
  %37 = load double, double* %4, align 8
  %38 = load double, double* %5, align 8
  %39 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %35, double %36, double %37, double %38, i32* %8, double* %39)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %41

; <label>:41:                                     ; preds = %51, %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %49)
  br label %51

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %41

; <label>:54:                                     ; preds = %41
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -3.500000e+00, double* %3, align 8
  store double 2.200000e+01, double* %4, align 8
  store double -3.100000e+01, double* %5, align 8
  %56 = load double, double* %2, align 8
  %57 = load double, double* %3, align 8
  %58 = load double, double* %4, align 8
  %59 = load double, double* %5, align 8
  %60 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %56, double %57, double %58, double %59, i32* %8, double* %60)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %62

; <label>:62:                                     ; preds = %72, %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %68
  %70 = load double, double* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %70)
  br label %72

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %62

; <label>:75:                                     ; preds = %62
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -1.370000e+01, double* %3, align 8
  store double 1.000000e+00, double* %4, align 8
  store double -3.500000e+01, double* %5, align 8
  %77 = load double, double* %2, align 8
  %78 = load double, double* %3, align 8
  %79 = load double, double* %4, align 8
  %80 = load double, double* %5, align 8
  %81 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %77, double %78, double %79, double %80, i32* %8, double* %81)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %83

; <label>:83:                                     ; preds = %93, %75
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %89
  %91 = load double, double* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %91)
  br label %93

; <label>:93:                                     ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %83

; <label>:96:                                     ; preds = %83
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 3.000000e+00, double* %2, align 8
  store double 1.234000e+01, double* %3, align 8
  store double 5.000000e+00, double* %4, align 8
  store double 1.200000e+01, double* %5, align 8
  %98 = load double, double* %2, align 8
  %99 = load double, double* %3, align 8
  %100 = load double, double* %4, align 8
  %101 = load double, double* %5, align 8
  %102 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %98, double %99, double %100, double %101, i32* %8, double* %102)
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %104

; <label>:104:                                    ; preds = %114, %96
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %117

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %110
  %112 = load double, double* %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %112)
  br label %114

; <label>:114:                                    ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %104

; <label>:117:                                    ; preds = %104
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -8.000000e+00, double* %2, align 8
  store double -6.789000e+01, double* %3, align 8
  store double 6.000000e+00, double* %4, align 8
  store double -2.360000e+01, double* %5, align 8
  %119 = load double, double* %2, align 8
  %120 = load double, double* %3, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* %5, align 8
  %123 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %119, double %120, double %121, double %122, i32* %8, double* %123)
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %125

; <label>:125:                                    ; preds = %135, %117
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

; <label>:129:                                    ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %131
  %133 = load double, double* %132, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %133)
  br label %135

; <label>:135:                                    ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %125

; <label>:138:                                    ; preds = %125
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 4.500000e+01, double* %2, align 8
  store double 8.670000e+00, double* %3, align 8
  store double 7.500000e+00, double* %4, align 8
  store double 3.400000e+01, double* %5, align 8
  %140 = load double, double* %2, align 8
  %141 = load double, double* %3, align 8
  %142 = load double, double* %4, align 8
  %143 = load double, double* %5, align 8
  %144 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %140, double %141, double %142, double %143, i32* %8, double* %144)
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %146

; <label>:146:                                    ; preds = %156, %138
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %159

; <label>:150:                                    ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %152
  %154 = load double, double* %153, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %154)
  br label %156

; <label>:156:                                    ; preds = %150
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %146

; <label>:159:                                    ; preds = %146
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -1.200000e+01, double* %2, align 8
  store double -1.700000e+00, double* %3, align 8
  store double 5.300000e+00, double* %4, align 8
  store double 1.600000e+01, double* %5, align 8
  %161 = load double, double* %2, align 8
  %162 = load double, double* %3, align 8
  %163 = load double, double* %4, align 8
  %164 = load double, double* %5, align 8
  %165 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %161, double %162, double %163, double %164, i32* %8, double* %165)
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %167

; <label>:167:                                    ; preds = %177, %159
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %180

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %173
  %175 = load double, double* %174, align 8
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %175)
  br label %177

; <label>:177:                                    ; preds = %171
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %167

; <label>:180:                                    ; preds = %167
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  br label %182

; <label>:182:                                    ; preds = %231, %180
  %183 = load double, double* %2, align 8
  %184 = fcmp olt double %183, 1.000000e+01
  br i1 %184, label %185, label %234

; <label>:185:                                    ; preds = %182
  store double 1.000000e+01, double* %3, align 8
  br label %186

; <label>:186:                                    ; preds = %227, %185
  %187 = load double, double* %3, align 8
  %188 = fcmp ogt double %187, 0.000000e+00
  br i1 %188, label %189, label %230

; <label>:189:                                    ; preds = %186
  store double 5.000000e+00, double* %4, align 8
  br label %190

; <label>:190:                                    ; preds = %223, %189
  %191 = load double, double* %4, align 8
  %192 = fcmp olt double %191, 1.500000e+01
  br i1 %192, label %193, label %226

; <label>:193:                                    ; preds = %190
  store double -1.000000e+00, double* %5, align 8
  br label %194

; <label>:194:                                    ; preds = %219, %193
  %195 = load double, double* %5, align 8
  %196 = fcmp ogt double %195, -5.000000e+00
  br i1 %196, label %197, label %222

; <label>:197:                                    ; preds = %194
  %198 = load double, double* %2, align 8
  %199 = load double, double* %3, align 8
  %200 = load double, double* %4, align 8
  %201 = load double, double* %5, align 8
  %202 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %198, double %199, double %200, double %201, i32* %8, double* %202)
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %204

; <label>:204:                                    ; preds = %214, %197
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %217

; <label>:208:                                    ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %210
  %212 = load double, double* %211, align 8
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %212)
  br label %214

; <label>:214:                                    ; preds = %208
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %204

; <label>:217:                                    ; preds = %204
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %219

; <label>:219:                                    ; preds = %217
  %220 = load double, double* %5, align 8
  %221 = fsub double %220, 4.510000e-01
  store double %221, double* %5, align 8
  br label %194

; <label>:222:                                    ; preds = %194
  br label %223

; <label>:223:                                    ; preds = %222
  %224 = load double, double* %4, align 8
  %225 = fadd double %224, 6.100000e-01
  store double %225, double* %4, align 8
  br label %190

; <label>:226:                                    ; preds = %190
  br label %227

; <label>:227:                                    ; preds = %226
  %228 = load double, double* %3, align 8
  %229 = fsub double %228, 2.500000e-01
  store double %229, double* %3, align 8
  br label %186

; <label>:230:                                    ; preds = %186
  br label %231

; <label>:231:                                    ; preds = %230
  %232 = load double, double* %2, align 8
  %233 = fadd double %232, 1.000000e+00
  store double %233, double* %2, align 8
  br label %182

; <label>:234:                                    ; preds = %182
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %236

; <label>:236:                                    ; preds = %246, %234
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %237, 100000
  br i1 %238, label %239, label %249

; <label>:239:                                    ; preds = %236
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  call void @usqrt(i64 %241, %struct.int_sqrt* %11)
  %242 = load i32, i32* %9, align 4
  %243 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %242, i32 %244)
  br label %246

; <label>:246:                                    ; preds = %239
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 2
  store i32 %248, i32* %9, align 4
  br label %236

; <label>:249:                                    ; preds = %236
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i64 1072497001, i64* %10, align 8
  br label %251

; <label>:251:                                    ; preds = %260, %249
  %252 = load i64, i64* %10, align 8
  %253 = icmp ult i64 %252, 1072513385
  br i1 %253, label %254, label %263

; <label>:254:                                    ; preds = %251
  %255 = load i64, i64* %10, align 8
  call void @usqrt(i64 %255, %struct.int_sqrt* %11)
  %256 = load i64, i64* %10, align 8
  %257 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i64 %256, i32 %258)
  br label %260

; <label>:260:                                    ; preds = %254
  %261 = load i64, i64* %10, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %10, align 8
  br label %251

; <label>:263:                                    ; preds = %251
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %7, align 8
  br label %265

; <label>:265:                                    ; preds = %276, %263
  %266 = load double, double* %7, align 8
  %267 = fcmp ole double %266, 3.600000e+02
  br i1 %267, label %268, label %279

; <label>:268:                                    ; preds = %265
  %269 = load double, double* %7, align 8
  %270 = load double, double* %7, align 8
  %271 = call double @atan(double 1.000000e+00) #5
  %272 = fmul double 4.000000e+00, %271
  %273 = fmul double %270, %272
  %274 = fdiv double %273, 1.800000e+02
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %269, double %274)
  br label %276

; <label>:276:                                    ; preds = %268
  %277 = load double, double* %7, align 8
  %278 = fadd double %277, 1.000000e-03
  store double %278, double* %7, align 8
  br label %265

; <label>:279:                                    ; preds = %265
  %280 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store double 0.000000e+00, double* %7, align 8
  br label %281

; <label>:281:                                    ; preds = %296, %279
  %282 = load double, double* %7, align 8
  %283 = call double @atan(double 1.000000e+00) #5
  %284 = fmul double 4.000000e+00, %283
  %285 = fmul double 2.000000e+00, %284
  %286 = fadd double %285, 1.000000e-06
  %287 = fcmp ole double %282, %286
  br i1 %287, label %288, label %302

; <label>:288:                                    ; preds = %281
  %289 = load double, double* %7, align 8
  %290 = load double, double* %7, align 8
  %291 = fmul double %290, 1.800000e+02
  %292 = call double @atan(double 1.000000e+00) #5
  %293 = fmul double 4.000000e+00, %292
  %294 = fdiv double %291, %293
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %289, double %294)
  br label %296

; <label>:296:                                    ; preds = %288
  %297 = call double @atan(double 1.000000e+00) #5
  %298 = fmul double 4.000000e+00, %297
  %299 = fdiv double %298, 5.760000e+03
  %300 = load double, double* %7, align 8
  %301 = fadd double %300, %299
  store double %301, double* %7, align 8
  br label %281

; <label>:302:                                    ; preds = %281
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
