; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [32 x i8] c"Usage: fft <waves> <length> -i\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"-i performs an inverse fft\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"<length> is the number of samples\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RealOut:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ImagOut:\0A\00", align 1

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
  %20 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %21 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %22 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  %23 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
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
  %31 = call arm_aapcscc i32 @strncmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 2)
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
  %170 = call arm_aapcscc i32 bitcast (i32 (...)* @fft_float to i32 (i32, i32, float*, float*, float*, float*)*)(i32 %164, i32 %165, float* %166, float* %167, float* %168, float* %169)
  %171 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
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

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc i32 @strncmp(i8*, i8*, i32) #1

declare arm_aapcscc i32 @atoi(i8*) #1

declare arm_aapcscc void @srand(i32) #1

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc i32 @rand() #1

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #3

; Function Attrs: nounwind
declare arm_aapcscc double @sin(double) #3

declare arm_aapcscc i32 @fft_float(...) #1

declare arm_aapcscc void @free(i8*) #1

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
