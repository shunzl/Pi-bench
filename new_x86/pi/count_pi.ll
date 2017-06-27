; ModuleID = 'count_pi.c'
source_filename = "count_pi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store float 1.000000e+00, float* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  store float 2.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %13, %0
  %9 = load float, float* %4, align 4
  %10 = fpext float %9 to double
  %11 = call double @fabs(double %10) #3
  %12 = fcmp oge double %11, 1.000000e-06
  br i1 %12, label %13, label %26

; <label>:13:                                     ; preds = %8
  %14 = load float, float* %4, align 4
  %15 = load float, float* %3, align 4
  %16 = fadd float %15, %14
  store float %16, float* %3, align 4
  %17 = load float, float* %5, align 4
  %18 = load float, float* %6, align 4
  %19 = fadd float %17, %18
  store float %19, float* %5, align 4
  %20 = load float, float* %7, align 4
  %21 = load float, float* %2, align 4
  %22 = fsub float %20, %21
  store float %22, float* %2, align 4
  %23 = load float, float* %2, align 4
  %24 = load float, float* %5, align 4
  %25 = fdiv float %23, %24
  store float %25, float* %4, align 4
  br label %8

; <label>:26:                                     ; preds = %8
  %27 = load float, float* %3, align 4
  %28 = fmul float 4.000000e+00, %27
  store float %28, float* %3, align 4
  %29 = load float, float* %3, align 4
  %30 = fpext float %29 to double
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %30)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
