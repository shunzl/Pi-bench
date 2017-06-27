; ModuleID = 'init.c'
source_filename = "init.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc void @init(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %9 = alloca double*, align 4
  %10 = alloca double*, align 4
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %13 = alloca double*, align 4
  %14 = alloca [12 x double]*, align 4
  %15 = alloca [12 x double]*, align 4
  %16 = alloca [12 x double]*, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double* %0, double** %9, align 4
  store double* %1, double** %10, align 4
  store double* %2, double** %11, align 4
  store double* %3, double** %12, align 4
  store double* %4, double** %13, align 4
  store [12 x double]* %5, [12 x double]** %14, align 4
  store [12 x double]* %6, [12 x double]** %15, align 4
  store [12 x double]* %7, [12 x double]** %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %88, %8
  %20 = load i32, i32* %18, align 4
  %21 = icmp slt i32 %20, 12
  br i1 %21, label %22, label %91

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %18, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double 2.000000e-01, %24
  %26 = fdiv double %25, 1.200000e+01
  %27 = fadd double 1.900000e+00, %26
  %28 = load double*, double** %9, align 4
  %29 = load i32, i32* %18, align 4
  %30 = getelementptr inbounds double, double* %28, i32 %29
  store double %27, double* %30, align 8
  %31 = load double*, double** %9, align 4
  %32 = load i32, i32* %18, align 4
  %33 = getelementptr inbounds double, double* %31, i32 %32
  %34 = load double, double* %33, align 8
  %35 = fmul double %34, 1.000000e-03
  %36 = load double*, double** %10, align 4
  %37 = load i32, i32* %18, align 4
  %38 = getelementptr inbounds double, double* %36, i32 %37
  store double %35, double* %38, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, 2.000000e+00
  %42 = load double*, double** %11, align 4
  %43 = load i32, i32* %18, align 4
  %44 = getelementptr inbounds double, double* %42, i32 %43
  store double %41, double* %44, align 8
  %45 = load double*, double** %12, align 4
  %46 = load i32, i32* %18, align 4
  %47 = getelementptr inbounds double, double* %45, i32 %46
  store double 3.000000e+01, double* %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sitofp i32 %48 to double
  %50 = fadd double %49, 3.500000e+00
  %51 = load double*, double** %13, align 4
  %52 = load i32, i32* %18, align 4
  %53 = getelementptr inbounds double, double* %51, i32 %52
  store double %50, double* %53, align 8
  store i32 0, i32* %17, align 4
  br label %54

; <label>:54:                                     ; preds = %84, %22
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 12
  br i1 %56, label %57, label %87

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %17, align 4
  %59 = sitofp i32 %58 to double
  %60 = fmul double 1.000000e-05, %59
  %61 = load i32, i32* %18, align 4
  %62 = sitofp i32 %61 to double
  %63 = fmul double %60, %62
  %64 = fadd double 1.000000e-02, %63
  %65 = load [12 x double]*, [12 x double]** %14, align 4
  %66 = load i32, i32* %18, align 4
  %67 = getelementptr inbounds [12 x double], [12 x double]* %65, i32 %66
  %68 = load i32, i32* %17, align 4
  %69 = getelementptr inbounds [12 x double], [12 x double]* %67, i32 0, i32 %68
  store double %64, double* %69, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %70, %71
  %73 = sitofp i32 %72 to double
  %74 = load [12 x double]*, [12 x double]** %15, align 4
  %75 = load i32, i32* %18, align 4
  %76 = getelementptr inbounds [12 x double], [12 x double]* %74, i32 %75
  %77 = load i32, i32* %17, align 4
  %78 = getelementptr inbounds [12 x double], [12 x double]* %76, i32 0, i32 %77
  store double %73, double* %78, align 8
  %79 = load [12 x double]*, [12 x double]** %16, align 4
  %80 = load i32, i32* %18, align 4
  %81 = getelementptr inbounds [12 x double], [12 x double]* %79, i32 %80
  %82 = load i32, i32* %17, align 4
  %83 = getelementptr inbounds [12 x double], [12 x double]* %81, i32 0, i32 %82
  store double 0.000000e+00, double* %83, align 8
  br label %84

; <label>:84:                                     ; preds = %57
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %54

; <label>:87:                                     ; preds = %54
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %19

; <label>:91:                                     ; preds = %19
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
