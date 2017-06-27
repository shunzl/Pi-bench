; ModuleID = 'count_pi.c'
source_filename = "count_pi.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
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
  %11 = call arm_aapcscc double @fabs(double %10) #3
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
  %31 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %30)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #1

declare arm_aapcscc i32 @printf(i8*, ...) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
