; ModuleID = 'basicmath_small.c'
source_filename = "basicmath_small.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

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
define arm_aapcscc i32 @main() #0 {
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
  %18 = alloca [3 x double], align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.int_sqrt, align 4
  %24 = alloca i32, align 4
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
  store i32 1072497001, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %25 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %26 = load double, double* %2, align 8
  %27 = load double, double* %3, align 8
  %28 = load double, double* %4, align 8
  %29 = load double, double* %5, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %26, double %27, double %28, double %29, i32* %20, double* %30)
  %31 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %32

; <label>:32:                                     ; preds = %41, %0
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %20, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %21, align 4
  %38 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %37
  %39 = load double, double* %38, align 8
  %40 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %39)
  br label %41

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %21, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %21, align 4
  br label %32

; <label>:44:                                     ; preds = %32
  %45 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %46 = load double, double* %6, align 8
  %47 = load double, double* %7, align 8
  %48 = load double, double* %8, align 8
  %49 = load double, double* %9, align 8
  %50 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %46, double %47, double %48, double %49, i32* %20, double* %50)
  %51 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %52

; <label>:52:                                     ; preds = %61, %44
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %64

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %21, align 4
  %58 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %57
  %59 = load double, double* %58, align 8
  %60 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %59)
  br label %61

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %21, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %21, align 4
  br label %52

; <label>:64:                                     ; preds = %52
  %65 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %66 = load double, double* %10, align 8
  %67 = load double, double* %11, align 8
  %68 = load double, double* %12, align 8
  %69 = load double, double* %13, align 8
  %70 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %66, double %67, double %68, double %69, i32* %20, double* %70)
  %71 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %72

; <label>:72:                                     ; preds = %81, %64
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %84

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %21, align 4
  %78 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %77
  %79 = load double, double* %78, align 8
  %80 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %79)
  br label %81

; <label>:81:                                     ; preds = %76
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %21, align 4
  br label %72

; <label>:84:                                     ; preds = %72
  %85 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %86 = load double, double* %14, align 8
  %87 = load double, double* %15, align 8
  %88 = load double, double* %16, align 8
  %89 = load double, double* %17, align 8
  %90 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %86, double %87, double %88, double %89, i32* %20, double* %90)
  %91 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %92

; <label>:92:                                     ; preds = %101, %84
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %20, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %104

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %21, align 4
  %98 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %97
  %99 = load double, double* %98, align 8
  %100 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %99)
  br label %101

; <label>:101:                                    ; preds = %96
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %21, align 4
  br label %92

; <label>:104:                                    ; preds = %92
  %105 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  br label %106

; <label>:106:                                    ; preds = %154, %104
  %107 = load double, double* %2, align 8
  %108 = fcmp olt double %107, 1.000000e+01
  br i1 %108, label %109, label %157

; <label>:109:                                    ; preds = %106
  store double 1.000000e+01, double* %3, align 8
  br label %110

; <label>:110:                                    ; preds = %150, %109
  %111 = load double, double* %3, align 8
  %112 = fcmp ogt double %111, 0.000000e+00
  br i1 %112, label %113, label %153

; <label>:113:                                    ; preds = %110
  store double 5.000000e+00, double* %4, align 8
  br label %114

; <label>:114:                                    ; preds = %146, %113
  %115 = load double, double* %4, align 8
  %116 = fcmp olt double %115, 1.500000e+01
  br i1 %116, label %117, label %149

; <label>:117:                                    ; preds = %114
  store double -1.000000e+00, double* %5, align 8
  br label %118

; <label>:118:                                    ; preds = %142, %117
  %119 = load double, double* %5, align 8
  %120 = fcmp ogt double %119, -1.100000e+01
  br i1 %120, label %121, label %145

; <label>:121:                                    ; preds = %118
  %122 = load double, double* %2, align 8
  %123 = load double, double* %3, align 8
  %124 = load double, double* %4, align 8
  %125 = load double, double* %5, align 8
  %126 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %122, double %123, double %124, double %125, i32* %20, double* %126)
  %127 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %128

; <label>:128:                                    ; preds = %137, %121
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %20, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %140

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* %21, align 4
  %134 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %133
  %135 = load double, double* %134, align 8
  %136 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %135)
  br label %137

; <label>:137:                                    ; preds = %132
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %21, align 4
  br label %128

; <label>:140:                                    ; preds = %128
  %141 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %142

; <label>:142:                                    ; preds = %140
  %143 = load double, double* %5, align 8
  %144 = fadd double %143, -1.000000e+00
  store double %144, double* %5, align 8
  br label %118

; <label>:145:                                    ; preds = %118
  br label %146

; <label>:146:                                    ; preds = %145
  %147 = load double, double* %4, align 8
  %148 = fadd double %147, 5.000000e-01
  store double %148, double* %4, align 8
  br label %114

; <label>:149:                                    ; preds = %114
  br label %150

; <label>:150:                                    ; preds = %149
  %151 = load double, double* %3, align 8
  %152 = fadd double %151, -1.000000e+00
  store double %152, double* %3, align 8
  br label %110

; <label>:153:                                    ; preds = %110
  br label %154

; <label>:154:                                    ; preds = %153
  %155 = load double, double* %2, align 8
  %156 = fadd double %155, 1.000000e+00
  store double %156, double* %2, align 8
  br label %106

; <label>:157:                                    ; preds = %106
  %158 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %21, align 4
  br label %159

; <label>:159:                                    ; preds = %168, %157
  %160 = load i32, i32* %21, align 4
  %161 = icmp slt i32 %160, 1001
  br i1 %161, label %162, label %171

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* %21, align 4
  call arm_aapcscc void @usqrt(i32 %163, %struct.int_sqrt* %23)
  %164 = load i32, i32* %21, align 4
  %165 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %164, i32 %166)
  br label %168

; <label>:168:                                    ; preds = %162
  %169 = load i32, i32* %21, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %21, align 4
  br label %159

; <label>:171:                                    ; preds = %159
  %172 = load i32, i32* %22, align 4
  call arm_aapcscc void @usqrt(i32 %172, %struct.int_sqrt* %23)
  %173 = load i32, i32* %22, align 4
  %174 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %173, i32 %175)
  %177 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %19, align 8
  br label %178

; <label>:178:                                    ; preds = %189, %171
  %179 = load double, double* %19, align 8
  %180 = fcmp ole double %179, 3.600000e+02
  br i1 %180, label %181, label %192

; <label>:181:                                    ; preds = %178
  %182 = load double, double* %19, align 8
  %183 = load double, double* %19, align 8
  %184 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %185 = fmul double 4.000000e+00, %184
  %186 = fmul double %183, %185
  %187 = fdiv double %186, 1.800000e+02
  %188 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %182, double %187)
  br label %189

; <label>:189:                                    ; preds = %181
  %190 = load double, double* %19, align 8
  %191 = fadd double %190, 1.000000e+00
  store double %191, double* %19, align 8
  br label %178

; <label>:192:                                    ; preds = %178
  %193 = call arm_aapcscc i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store double 0.000000e+00, double* %19, align 8
  br label %194

; <label>:194:                                    ; preds = %209, %192
  %195 = load double, double* %19, align 8
  %196 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %197 = fmul double 4.000000e+00, %196
  %198 = fmul double 2.000000e+00, %197
  %199 = fadd double %198, 1.000000e-06
  %200 = fcmp ole double %195, %199
  br i1 %200, label %201, label %215

; <label>:201:                                    ; preds = %194
  %202 = load double, double* %19, align 8
  %203 = load double, double* %19, align 8
  %204 = fmul double %203, 1.800000e+02
  %205 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %206 = fmul double 4.000000e+00, %205
  %207 = fdiv double %204, %206
  %208 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %202, double %207)
  br label %209

; <label>:209:                                    ; preds = %201
  %210 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %211 = fmul double 4.000000e+00, %210
  %212 = fdiv double %211, 1.800000e+02
  %213 = load double, double* %19, align 8
  %214 = fadd double %213, %212
  store double %214, double* %19, align 8
  br label %194

; <label>:215:                                    ; preds = %194
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
