; ModuleID = 'basicmath_large.c'
source_filename = "basicmath_large.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

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
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.int_sqrt, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.050000e+01, double* %3, align 8
  store double 3.200000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  store i32 1072497001, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %14 = load double, double* %2, align 8
  %15 = load double, double* %3, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %14, double %15, double %16, double %17, i32* %8, double* %18)
  %19 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %20

; <label>:20:                                     ; preds = %29, %0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %25
  %27 = load double, double* %26, align 8
  %28 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %27)
  br label %29

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %20

; <label>:32:                                     ; preds = %20
  %33 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -4.500000e+00, double* %3, align 8
  store double 1.700000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  %34 = load double, double* %2, align 8
  %35 = load double, double* %3, align 8
  %36 = load double, double* %4, align 8
  %37 = load double, double* %5, align 8
  %38 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %34, double %35, double %36, double %37, i32* %8, double* %38)
  %39 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %40

; <label>:40:                                     ; preds = %49, %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %45
  %47 = load double, double* %46, align 8
  %48 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %47)
  br label %49

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %40

; <label>:52:                                     ; preds = %40
  %53 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -3.500000e+00, double* %3, align 8
  store double 2.200000e+01, double* %4, align 8
  store double -3.100000e+01, double* %5, align 8
  %54 = load double, double* %2, align 8
  %55 = load double, double* %3, align 8
  %56 = load double, double* %4, align 8
  %57 = load double, double* %5, align 8
  %58 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %54, double %55, double %56, double %57, i32* %8, double* %58)
  %59 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %60

; <label>:60:                                     ; preds = %69, %52
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %65
  %67 = load double, double* %66, align 8
  %68 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %67)
  br label %69

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %60

; <label>:72:                                     ; preds = %60
  %73 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -1.370000e+01, double* %3, align 8
  store double 1.000000e+00, double* %4, align 8
  store double -3.500000e+01, double* %5, align 8
  %74 = load double, double* %2, align 8
  %75 = load double, double* %3, align 8
  %76 = load double, double* %4, align 8
  %77 = load double, double* %5, align 8
  %78 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %74, double %75, double %76, double %77, i32* %8, double* %78)
  %79 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %80

; <label>:80:                                     ; preds = %89, %72
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %92

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %85
  %87 = load double, double* %86, align 8
  %88 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %87)
  br label %89

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %80

; <label>:92:                                     ; preds = %80
  %93 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 3.000000e+00, double* %2, align 8
  store double 1.234000e+01, double* %3, align 8
  store double 5.000000e+00, double* %4, align 8
  store double 1.200000e+01, double* %5, align 8
  %94 = load double, double* %2, align 8
  %95 = load double, double* %3, align 8
  %96 = load double, double* %4, align 8
  %97 = load double, double* %5, align 8
  %98 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %94, double %95, double %96, double %97, i32* %8, double* %98)
  %99 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %100

; <label>:100:                                    ; preds = %109, %92
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %112

; <label>:104:                                    ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %105
  %107 = load double, double* %106, align 8
  %108 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %107)
  br label %109

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %100

; <label>:112:                                    ; preds = %100
  %113 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -8.000000e+00, double* %2, align 8
  store double -6.789000e+01, double* %3, align 8
  store double 6.000000e+00, double* %4, align 8
  store double -2.360000e+01, double* %5, align 8
  %114 = load double, double* %2, align 8
  %115 = load double, double* %3, align 8
  %116 = load double, double* %4, align 8
  %117 = load double, double* %5, align 8
  %118 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %114, double %115, double %116, double %117, i32* %8, double* %118)
  %119 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %120

; <label>:120:                                    ; preds = %129, %112
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %132

; <label>:124:                                    ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %125
  %127 = load double, double* %126, align 8
  %128 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %127)
  br label %129

; <label>:129:                                    ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %120

; <label>:132:                                    ; preds = %120
  %133 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 4.500000e+01, double* %2, align 8
  store double 8.670000e+00, double* %3, align 8
  store double 7.500000e+00, double* %4, align 8
  store double 3.400000e+01, double* %5, align 8
  %134 = load double, double* %2, align 8
  %135 = load double, double* %3, align 8
  %136 = load double, double* %4, align 8
  %137 = load double, double* %5, align 8
  %138 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %134, double %135, double %136, double %137, i32* %8, double* %138)
  %139 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %140

; <label>:140:                                    ; preds = %149, %132
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %152

; <label>:144:                                    ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %145
  %147 = load double, double* %146, align 8
  %148 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %147)
  br label %149

; <label>:149:                                    ; preds = %144
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %140

; <label>:152:                                    ; preds = %140
  %153 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -1.200000e+01, double* %2, align 8
  store double -1.700000e+00, double* %3, align 8
  store double 5.300000e+00, double* %4, align 8
  store double 1.600000e+01, double* %5, align 8
  %154 = load double, double* %2, align 8
  %155 = load double, double* %3, align 8
  %156 = load double, double* %4, align 8
  %157 = load double, double* %5, align 8
  %158 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %154, double %155, double %156, double %157, i32* %8, double* %158)
  %159 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %160

; <label>:160:                                    ; preds = %169, %152
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %172

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %9, align 4
  %166 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %165
  %167 = load double, double* %166, align 8
  %168 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %167)
  br label %169

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %160

; <label>:172:                                    ; preds = %160
  %173 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  br label %174

; <label>:174:                                    ; preds = %222, %172
  %175 = load double, double* %2, align 8
  %176 = fcmp olt double %175, 1.000000e+01
  br i1 %176, label %177, label %225

; <label>:177:                                    ; preds = %174
  store double 1.000000e+01, double* %3, align 8
  br label %178

; <label>:178:                                    ; preds = %218, %177
  %179 = load double, double* %3, align 8
  %180 = fcmp ogt double %179, 0.000000e+00
  br i1 %180, label %181, label %221

; <label>:181:                                    ; preds = %178
  store double 5.000000e+00, double* %4, align 8
  br label %182

; <label>:182:                                    ; preds = %214, %181
  %183 = load double, double* %4, align 8
  %184 = fcmp olt double %183, 1.500000e+01
  br i1 %184, label %185, label %217

; <label>:185:                                    ; preds = %182
  store double -1.000000e+00, double* %5, align 8
  br label %186

; <label>:186:                                    ; preds = %210, %185
  %187 = load double, double* %5, align 8
  %188 = fcmp ogt double %187, -5.000000e+00
  br i1 %188, label %189, label %213

; <label>:189:                                    ; preds = %186
  %190 = load double, double* %2, align 8
  %191 = load double, double* %3, align 8
  %192 = load double, double* %4, align 8
  %193 = load double, double* %5, align 8
  %194 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %190, double %191, double %192, double %193, i32* %8, double* %194)
  %195 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %196

; <label>:196:                                    ; preds = %205, %189
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %208

; <label>:200:                                    ; preds = %196
  %201 = load i32, i32* %9, align 4
  %202 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %201
  %203 = load double, double* %202, align 8
  %204 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %203)
  br label %205

; <label>:205:                                    ; preds = %200
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %196

; <label>:208:                                    ; preds = %196
  %209 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %210

; <label>:210:                                    ; preds = %208
  %211 = load double, double* %5, align 8
  %212 = fsub double %211, 4.510000e-01
  store double %212, double* %5, align 8
  br label %186

; <label>:213:                                    ; preds = %186
  br label %214

; <label>:214:                                    ; preds = %213
  %215 = load double, double* %4, align 8
  %216 = fadd double %215, 6.100000e-01
  store double %216, double* %4, align 8
  br label %182

; <label>:217:                                    ; preds = %182
  br label %218

; <label>:218:                                    ; preds = %217
  %219 = load double, double* %3, align 8
  %220 = fsub double %219, 2.500000e-01
  store double %220, double* %3, align 8
  br label %178

; <label>:221:                                    ; preds = %178
  br label %222

; <label>:222:                                    ; preds = %221
  %223 = load double, double* %2, align 8
  %224 = fadd double %223, 1.000000e+00
  store double %224, double* %2, align 8
  br label %174

; <label>:225:                                    ; preds = %174
  %226 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %227

; <label>:227:                                    ; preds = %236, %225
  %228 = load i32, i32* %9, align 4
  %229 = icmp slt i32 %228, 100000
  br i1 %229, label %230, label %239

; <label>:230:                                    ; preds = %227
  %231 = load i32, i32* %9, align 4
  call arm_aapcscc void @usqrt(i32 %231, %struct.int_sqrt* %11)
  %232 = load i32, i32* %9, align 4
  %233 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %232, i32 %234)
  br label %236

; <label>:236:                                    ; preds = %230
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 2
  store i32 %238, i32* %9, align 4
  br label %227

; <label>:239:                                    ; preds = %227
  %240 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 1072497001, i32* %10, align 4
  br label %241

; <label>:241:                                    ; preds = %250, %239
  %242 = load i32, i32* %10, align 4
  %243 = icmp ult i32 %242, 1072513385
  br i1 %243, label %244, label %253

; <label>:244:                                    ; preds = %241
  %245 = load i32, i32* %10, align 4
  call arm_aapcscc void @usqrt(i32 %245, %struct.int_sqrt* %11)
  %246 = load i32, i32* %10, align 4
  %247 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 %246, i32 %248)
  br label %250

; <label>:250:                                    ; preds = %244
  %251 = load i32, i32* %10, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %241

; <label>:253:                                    ; preds = %241
  %254 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %7, align 8
  br label %255

; <label>:255:                                    ; preds = %266, %253
  %256 = load double, double* %7, align 8
  %257 = fcmp ole double %256, 3.600000e+02
  br i1 %257, label %258, label %269

; <label>:258:                                    ; preds = %255
  %259 = load double, double* %7, align 8
  %260 = load double, double* %7, align 8
  %261 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %262 = fmul double 4.000000e+00, %261
  %263 = fmul double %260, %262
  %264 = fdiv double %263, 1.800000e+02
  %265 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %259, double %264)
  br label %266

; <label>:266:                                    ; preds = %258
  %267 = load double, double* %7, align 8
  %268 = fadd double %267, 1.000000e-03
  store double %268, double* %7, align 8
  br label %255

; <label>:269:                                    ; preds = %255
  %270 = call arm_aapcscc i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store double 0.000000e+00, double* %7, align 8
  br label %271

; <label>:271:                                    ; preds = %286, %269
  %272 = load double, double* %7, align 8
  %273 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %274 = fmul double 4.000000e+00, %273
  %275 = fmul double 2.000000e+00, %274
  %276 = fadd double %275, 1.000000e-06
  %277 = fcmp ole double %272, %276
  br i1 %277, label %278, label %292

; <label>:278:                                    ; preds = %271
  %279 = load double, double* %7, align 8
  %280 = load double, double* %7, align 8
  %281 = fmul double %280, 1.800000e+02
  %282 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %283 = fmul double 4.000000e+00, %282
  %284 = fdiv double %281, %283
  %285 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %279, double %284)
  br label %286

; <label>:286:                                    ; preds = %278
  %287 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %288 = fmul double 4.000000e+00, %287
  %289 = fdiv double %288, 5.760000e+03
  %290 = load double, double* %7, align 8
  %291 = fadd double %290, %289
  store double %291, double* %7, align 8
  br label %271

; <label>:292:                                    ; preds = %271
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc void @SolveCubic(double, double, double, double, i32*, double*) #1

declare arm_aapcscc void @usqrt(i32, %struct.int_sqrt*) #1

; Function Attrs: nounwind
declare arm_aapcscc double @atan(double) #2

declare arm_aapcscc i32 @puts(...) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
