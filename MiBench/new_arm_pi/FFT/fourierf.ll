; ModuleID = 'fourierf.c'
source_filename = "fourierf.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

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
  %39 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0), i32 %38)
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
  call arm_aapcscc void @CheckPointer(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
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

declare arm_aapcscc i32 @IsPowerOfTwo(i32) #1

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

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

declare arm_aapcscc i32 @NumberOfBitsNeeded(i32) #1

declare arm_aapcscc i32 @ReverseBits(i32, i32) #1

; Function Attrs: nounwind
declare arm_aapcscc double @sin(double) #3

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
