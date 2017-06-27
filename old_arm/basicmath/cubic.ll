; ModuleID = 'cubic.c'
source_filename = "cubic.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

; Function Attrs: nounwind
define arm_aapcscc void @SolveCubic(double, double, double, double, i32*, double*) #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 4
  %12 = alloca double*, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 4
  store double* %5, double** %12, align 4
  %20 = load double, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = fdiv double %20, %21
  store double %22, double* %13, align 8
  %23 = load double, double* %9, align 8
  %24 = load double, double* %7, align 8
  %25 = fdiv double %23, %24
  store double %25, double* %14, align 8
  %26 = load double, double* %10, align 8
  %27 = load double, double* %7, align 8
  %28 = fdiv double %26, %27
  store double %28, double* %15, align 8
  %29 = load double, double* %13, align 8
  %30 = load double, double* %13, align 8
  %31 = fmul double %29, %30
  %32 = load double, double* %14, align 8
  %33 = fmul double 3.000000e+00, %32
  %34 = fsub double %31, %33
  %35 = fdiv double %34, 9.000000e+00
  store double %35, double* %16, align 8
  %36 = load double, double* %13, align 8
  %37 = fmul double 2.000000e+00, %36
  %38 = load double, double* %13, align 8
  %39 = fmul double %37, %38
  %40 = load double, double* %13, align 8
  %41 = fmul double %39, %40
  %42 = load double, double* %13, align 8
  %43 = fmul double 9.000000e+00, %42
  %44 = load double, double* %14, align 8
  %45 = fmul double %43, %44
  %46 = fsub double %41, %45
  %47 = load double, double* %15, align 8
  %48 = fmul double 2.700000e+01, %47
  %49 = fadd double %46, %48
  %50 = fdiv double %49, 5.400000e+01
  store double %50, double* %17, align 8
  %51 = load double, double* %17, align 8
  %52 = load double, double* %17, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %16, align 8
  %55 = load double, double* %16, align 8
  %56 = fmul double %54, %55
  %57 = load double, double* %16, align 8
  %58 = fmul double %56, %57
  %59 = fsub double %53, %58
  store double %59, double* %18, align 8
  %60 = load double, double* %18, align 8
  %61 = fcmp ole double %60, 0.000000e+00
  br i1 %61, label %62, label %117

; <label>:62:                                     ; preds = %6
  %63 = load i32*, i32** %11, align 4
  store i32 3, i32* %63, align 4
  %64 = load double, double* %17, align 8
  %65 = load double, double* %16, align 8
  %66 = load double, double* %16, align 8
  %67 = fmul double %65, %66
  %68 = load double, double* %16, align 8
  %69 = fmul double %67, %68
  %70 = call arm_aapcscc double @sqrt(double %69) #3
  %71 = fdiv double %64, %70
  %72 = call arm_aapcscc double @acos(double %71) #3
  store double %72, double* %19, align 8
  %73 = load double, double* %16, align 8
  %74 = call arm_aapcscc double @sqrt(double %73) #3
  %75 = fmul double -2.000000e+00, %74
  %76 = load double, double* %19, align 8
  %77 = fdiv double %76, 3.000000e+00
  %78 = call arm_aapcscc double @cos(double %77) #3
  %79 = fmul double %75, %78
  %80 = load double, double* %13, align 8
  %81 = fdiv double %80, 3.000000e+00
  %82 = fsub double %79, %81
  %83 = load double*, double** %12, align 4
  %84 = getelementptr inbounds double, double* %83, i32 0
  store double %82, double* %84, align 8
  %85 = load double, double* %16, align 8
  %86 = call arm_aapcscc double @sqrt(double %85) #3
  %87 = fmul double -2.000000e+00, %86
  %88 = load double, double* %19, align 8
  %89 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %90 = fmul double 4.000000e+00, %89
  %91 = fmul double 2.000000e+00, %90
  %92 = fadd double %88, %91
  %93 = fdiv double %92, 3.000000e+00
  %94 = call arm_aapcscc double @cos(double %93) #3
  %95 = fmul double %87, %94
  %96 = load double, double* %13, align 8
  %97 = fdiv double %96, 3.000000e+00
  %98 = fsub double %95, %97
  %99 = load double*, double** %12, align 4
  %100 = getelementptr inbounds double, double* %99, i32 1
  store double %98, double* %100, align 8
  %101 = load double, double* %16, align 8
  %102 = call arm_aapcscc double @sqrt(double %101) #3
  %103 = fmul double -2.000000e+00, %102
  %104 = load double, double* %19, align 8
  %105 = call arm_aapcscc double @atan(double 1.000000e+00) #3
  %106 = fmul double 4.000000e+00, %105
  %107 = fmul double 4.000000e+00, %106
  %108 = fadd double %104, %107
  %109 = fdiv double %108, 3.000000e+00
  %110 = call arm_aapcscc double @cos(double %109) #3
  %111 = fmul double %103, %110
  %112 = load double, double* %13, align 8
  %113 = fdiv double %112, 3.000000e+00
  %114 = fsub double %111, %113
  %115 = load double*, double** %12, align 4
  %116 = getelementptr inbounds double, double* %115, i32 2
  store double %114, double* %116, align 8
  br label %150

; <label>:117:                                    ; preds = %6
  %118 = load i32*, i32** %11, align 4
  store i32 1, i32* %118, align 4
  %119 = load double, double* %18, align 8
  %120 = call arm_aapcscc double @sqrt(double %119) #3
  %121 = load double, double* %17, align 8
  %122 = call arm_aapcscc double @fabs(double %121) #4
  %123 = fadd double %120, %122
  %124 = call arm_aapcscc double @pow(double %123, double 0x3FD5555555555555) #3
  %125 = load double*, double** %12, align 4
  %126 = getelementptr inbounds double, double* %125, i32 0
  store double %124, double* %126, align 8
  %127 = load double, double* %16, align 8
  %128 = load double*, double** %12, align 4
  %129 = getelementptr inbounds double, double* %128, i32 0
  %130 = load double, double* %129, align 8
  %131 = fdiv double %127, %130
  %132 = load double*, double** %12, align 4
  %133 = getelementptr inbounds double, double* %132, i32 0
  %134 = load double, double* %133, align 8
  %135 = fadd double %134, %131
  store double %135, double* %133, align 8
  %136 = load double, double* %17, align 8
  %137 = fcmp olt double %136, 0.000000e+00
  %138 = select i1 %137, i32 1, i32 -1
  %139 = sitofp i32 %138 to double
  %140 = load double*, double** %12, align 4
  %141 = getelementptr inbounds double, double* %140, i32 0
  %142 = load double, double* %141, align 8
  %143 = fmul double %142, %139
  store double %143, double* %141, align 8
  %144 = load double, double* %13, align 8
  %145 = fdiv double %144, 3.000000e+00
  %146 = load double*, double** %12, align 4
  %147 = getelementptr inbounds double, double* %146, i32 0
  %148 = load double, double* %147, align 8
  %149 = fsub double %148, %145
  store double %149, double* %147, align 8
  br label %150

; <label>:150:                                    ; preds = %117, %62
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @acos(double) #1

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #1

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #1

; Function Attrs: nounwind
declare arm_aapcscc double @atan(double) #1

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #1

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
