; ModuleID = 'Crystal_pow.c'
source_filename = "Crystal_pow.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc double @Crystal_pow(i32, double*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 4
  %5 = alloca [12 x double], align 8
  %6 = alloca [12 x double], align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 4
  store double 6.000000e+04, double* %7, align 8
  store double 5.000000e+04, double* %8, align 8
  store double 1.000000e-06, double* %9, align 8
  store double 2.000000e+00, double* %10, align 8
  store double 1.000000e-02, double* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %27, %2
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 %18
  store double 1.000000e+00, double* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double 2.000000e-01, %21
  %23 = fmul double 9.000000e-01, %22
  %24 = fdiv double %23, 1.200000e+01
  %25 = load i32, i32* %12, align 4
  %26 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 %25
  store double %24, double* %26, align 8
  br label %27

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %13

; <label>:30:                                     ; preds = %13
  store i32 0, i32* %12, align 4
  br label %31

; <label>:31:                                     ; preds = %56, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

; <label>:35:                                     ; preds = %31
  %36 = load double, double* %7, align 8
  %37 = load double, double* %8, align 8
  %38 = fdiv double %36, %37
  %39 = load double*, double** %4, align 4
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds double, double* %39, i32 %40
  %42 = load double, double* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 %43
  %45 = load double, double* %44, align 8
  %46 = fmul double %42, %45
  %47 = load double, double* %9, align 8
  %48 = fadd double %46, %47
  %49 = load double, double* %10, align 8
  %50 = fdiv double %48, %49
  %51 = load double, double* %11, align 8
  %52 = call arm_aapcscc double @pow(double %50, double %51) #2
  %53 = fmul double %38, %52
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 %54
  store double %53, double* %55, align 8
  br label %56

; <label>:56:                                     ; preds = %35
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %31

; <label>:59:                                     ; preds = %31
  %60 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 3
  %61 = load double, double* %60, align 8
  ret double %61
}

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
