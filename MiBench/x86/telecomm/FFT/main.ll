; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

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
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
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
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 2)
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
  %186 = call i32 (i32, i32, float*, float*, float*, float*, ...) bitcast (i32 (...)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %180, i32 %181, float* %182, float* %183, float* %184, float* %185)
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
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

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @atoi(i8*) #1

declare void @srand(i32) #1

declare i8* @malloc(i64) #1

declare i32 @rand() #1

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

declare i32 @fft_float(...) #1

declare void @free(i8*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
