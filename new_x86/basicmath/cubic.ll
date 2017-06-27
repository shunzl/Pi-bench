; ModuleID = 'cubic.c'
source_filename = "cubic.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

; Function Attrs: nounwind
define void @SolveCubic(double, double, double, double, i32*, double*) #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = fdiv double %20, %21
  %23 = fpext double %22 to x86_fp80
  store x86_fp80 %23, x86_fp80* %13, align 16
  %24 = load double, double* %9, align 8
  %25 = load double, double* %7, align 8
  %26 = fdiv double %24, %25
  %27 = fpext double %26 to x86_fp80
  store x86_fp80 %27, x86_fp80* %14, align 16
  %28 = load double, double* %10, align 8
  %29 = load double, double* %7, align 8
  %30 = fdiv double %28, %29
  %31 = fpext double %30 to x86_fp80
  store x86_fp80 %31, x86_fp80* %15, align 16
  %32 = load x86_fp80, x86_fp80* %13, align 16
  %33 = load x86_fp80, x86_fp80* %13, align 16
  %34 = fmul x86_fp80 %32, %33
  %35 = load x86_fp80, x86_fp80* %14, align 16
  %36 = fmul x86_fp80 0xK4000C000000000000000, %35
  %37 = fsub x86_fp80 %34, %36
  %38 = fdiv x86_fp80 %37, 0xK40029000000000000000
  store x86_fp80 %38, x86_fp80* %16, align 16
  %39 = load x86_fp80, x86_fp80* %13, align 16
  %40 = fmul x86_fp80 0xK40008000000000000000, %39
  %41 = load x86_fp80, x86_fp80* %13, align 16
  %42 = fmul x86_fp80 %40, %41
  %43 = load x86_fp80, x86_fp80* %13, align 16
  %44 = fmul x86_fp80 %42, %43
  %45 = load x86_fp80, x86_fp80* %13, align 16
  %46 = fmul x86_fp80 0xK40029000000000000000, %45
  %47 = load x86_fp80, x86_fp80* %14, align 16
  %48 = fmul x86_fp80 %46, %47
  %49 = fsub x86_fp80 %44, %48
  %50 = load x86_fp80, x86_fp80* %15, align 16
  %51 = fmul x86_fp80 0xK4003D800000000000000, %50
  %52 = fadd x86_fp80 %49, %51
  %53 = fdiv x86_fp80 %52, 0xK4004D800000000000000
  store x86_fp80 %53, x86_fp80* %17, align 16
  %54 = load x86_fp80, x86_fp80* %17, align 16
  %55 = load x86_fp80, x86_fp80* %17, align 16
  %56 = fmul x86_fp80 %54, %55
  %57 = load x86_fp80, x86_fp80* %16, align 16
  %58 = load x86_fp80, x86_fp80* %16, align 16
  %59 = fmul x86_fp80 %57, %58
  %60 = load x86_fp80, x86_fp80* %16, align 16
  %61 = fmul x86_fp80 %59, %60
  %62 = fsub x86_fp80 %56, %61
  %63 = fptrunc x86_fp80 %62 to double
  store double %63, double* %18, align 8
  %64 = load double, double* %18, align 8
  %65 = fcmp ole double %64, 0.000000e+00
  br i1 %65, label %66, label %133

; <label>:66:                                     ; preds = %6
  %67 = load i32*, i32** %11, align 8
  store i32 3, i32* %67, align 4
  %68 = load x86_fp80, x86_fp80* %17, align 16
  %69 = load x86_fp80, x86_fp80* %16, align 16
  %70 = load x86_fp80, x86_fp80* %16, align 16
  %71 = fmul x86_fp80 %69, %70
  %72 = load x86_fp80, x86_fp80* %16, align 16
  %73 = fmul x86_fp80 %71, %72
  %74 = fptrunc x86_fp80 %73 to double
  %75 = call double @sqrt(double %74) #3
  %76 = fpext double %75 to x86_fp80
  %77 = fdiv x86_fp80 %68, %76
  %78 = fptrunc x86_fp80 %77 to double
  %79 = call double @acos(double %78) #3
  store double %79, double* %19, align 8
  %80 = load x86_fp80, x86_fp80* %16, align 16
  %81 = fptrunc x86_fp80 %80 to double
  %82 = call double @sqrt(double %81) #3
  %83 = fmul double -2.000000e+00, %82
  %84 = load double, double* %19, align 8
  %85 = fdiv double %84, 3.000000e+00
  %86 = call double @cos(double %85) #3
  %87 = fmul double %83, %86
  %88 = fpext double %87 to x86_fp80
  %89 = load x86_fp80, x86_fp80* %13, align 16
  %90 = fdiv x86_fp80 %89, 0xK4000C000000000000000
  %91 = fsub x86_fp80 %88, %90
  %92 = fptrunc x86_fp80 %91 to double
  %93 = load double*, double** %12, align 8
  %94 = getelementptr inbounds double, double* %93, i64 0
  store double %92, double* %94, align 8
  %95 = load x86_fp80, x86_fp80* %16, align 16
  %96 = fptrunc x86_fp80 %95 to double
  %97 = call double @sqrt(double %96) #3
  %98 = fmul double -2.000000e+00, %97
  %99 = load double, double* %19, align 8
  %100 = call double @atan(double 1.000000e+00) #3
  %101 = fmul double 4.000000e+00, %100
  %102 = fmul double 2.000000e+00, %101
  %103 = fadd double %99, %102
  %104 = fdiv double %103, 3.000000e+00
  %105 = call double @cos(double %104) #3
  %106 = fmul double %98, %105
  %107 = fpext double %106 to x86_fp80
  %108 = load x86_fp80, x86_fp80* %13, align 16
  %109 = fdiv x86_fp80 %108, 0xK4000C000000000000000
  %110 = fsub x86_fp80 %107, %109
  %111 = fptrunc x86_fp80 %110 to double
  %112 = load double*, double** %12, align 8
  %113 = getelementptr inbounds double, double* %112, i64 1
  store double %111, double* %113, align 8
  %114 = load x86_fp80, x86_fp80* %16, align 16
  %115 = fptrunc x86_fp80 %114 to double
  %116 = call double @sqrt(double %115) #3
  %117 = fmul double -2.000000e+00, %116
  %118 = load double, double* %19, align 8
  %119 = call double @atan(double 1.000000e+00) #3
  %120 = fmul double 4.000000e+00, %119
  %121 = fmul double 4.000000e+00, %120
  %122 = fadd double %118, %121
  %123 = fdiv double %122, 3.000000e+00
  %124 = call double @cos(double %123) #3
  %125 = fmul double %117, %124
  %126 = fpext double %125 to x86_fp80
  %127 = load x86_fp80, x86_fp80* %13, align 16
  %128 = fdiv x86_fp80 %127, 0xK4000C000000000000000
  %129 = fsub x86_fp80 %126, %128
  %130 = fptrunc x86_fp80 %129 to double
  %131 = load double*, double** %12, align 8
  %132 = getelementptr inbounds double, double* %131, i64 2
  store double %130, double* %132, align 8
  br label %172

; <label>:133:                                    ; preds = %6
  %134 = load i32*, i32** %11, align 8
  store i32 1, i32* %134, align 4
  %135 = load double, double* %18, align 8
  %136 = call double @sqrt(double %135) #3
  %137 = load x86_fp80, x86_fp80* %17, align 16
  %138 = fptrunc x86_fp80 %137 to double
  %139 = call double @fabs(double %138) #4
  %140 = fadd double %136, %139
  %141 = call double @pow(double %140, double 0x3FD5555555555555) #3
  %142 = load double*, double** %12, align 8
  %143 = getelementptr inbounds double, double* %142, i64 0
  store double %141, double* %143, align 8
  %144 = load x86_fp80, x86_fp80* %16, align 16
  %145 = load double*, double** %12, align 8
  %146 = getelementptr inbounds double, double* %145, i64 0
  %147 = load double, double* %146, align 8
  %148 = fpext double %147 to x86_fp80
  %149 = fdiv x86_fp80 %144, %148
  %150 = load double*, double** %12, align 8
  %151 = getelementptr inbounds double, double* %150, i64 0
  %152 = load double, double* %151, align 8
  %153 = fpext double %152 to x86_fp80
  %154 = fadd x86_fp80 %153, %149
  %155 = fptrunc x86_fp80 %154 to double
  store double %155, double* %151, align 8
  %156 = load x86_fp80, x86_fp80* %17, align 16
  %157 = fcmp olt x86_fp80 %156, 0xK00000000000000000000
  %158 = select i1 %157, i32 1, i32 -1
  %159 = sitofp i32 %158 to double
  %160 = load double*, double** %12, align 8
  %161 = getelementptr inbounds double, double* %160, i64 0
  %162 = load double, double* %161, align 8
  %163 = fmul double %162, %159
  store double %163, double* %161, align 8
  %164 = load x86_fp80, x86_fp80* %13, align 16
  %165 = fdiv x86_fp80 %164, 0xK4000C000000000000000
  %166 = load double*, double** %12, align 8
  %167 = getelementptr inbounds double, double* %166, i64 0
  %168 = load double, double* %167, align 8
  %169 = fpext double %168 to x86_fp80
  %170 = fsub x86_fp80 %169, %165
  %171 = fptrunc x86_fp80 %170 to double
  store double %171, double* %167, align 8
  br label %172

; <label>:172:                                    ; preds = %133, %66
  ret void
}

; Function Attrs: nounwind
declare double @acos(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @atan(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
