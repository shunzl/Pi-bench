; ModuleID = 'timestatus.c'
source_filename = "timestatus.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.ts_times = type { float, float, float, float }

@ts_real_time.initial_time = internal global i32 0, align 4
@ts_process_time.initial_time = internal global i32 0, align 4
@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [75 x i8] c"    Frame          |  CPU/estimated  |  time/estimated | play/CPU |   ETA\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"\0D%6ld/%6ld(%3d%%)|%2d:%02d:%02d/%2d:%02d:%02d|%2d:%02d:%02d/%2d:%02d:%02d|%10.4f|%2d:%02d:%02d \00", align 1

; Function Attrs: nounwind
define arm_aapcscc float @ts_real_time(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call arm_aapcscc i32 @time(i32* %3)
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* @ts_real_time.initial_time, align 4
  br label %9

; <label>:9:                                      ; preds = %7, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ts_real_time.initial_time, align 4
  %12 = call arm_aapcscc double @difftime(i32 %10, i32 %11)
  %13 = fptrunc double %12 to float
  ret float %13
}

declare arm_aapcscc i32 @time(i32*) #1

declare arm_aapcscc double @difftime(i32, i32) #1

; Function Attrs: nounwind
define arm_aapcscc float @ts_process_time(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call arm_aapcscc i32 @clock()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* @ts_process_time.initial_time, align 4
  br label %9

; <label>:9:                                      ; preds = %7, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ts_process_time.initial_time, align 4
  %12 = sub nsw i32 %10, %11
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, 1.000000e+06
  ret float %14
}

declare arm_aapcscc i32 @clock() #1

; Function Attrs: nounwind
define arm_aapcscc void @ts_calc_times(%struct.ts_times*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.ts_times*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ts_times* %0, %struct.ts_times** %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %59

; <label>:13:                                     ; preds = %5
  %14 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %15 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sitofp i32 %17 to float
  %19 = fmul float %16, %18
  %20 = load i32, i32* %8, align 4
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %19, %21
  %23 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %24 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %23, i32 0, i32 1
  store float %22, float* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sitofp i32 %25 to float
  %27 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %28 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = fmul float %26, %29
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %46

; <label>:32:                                     ; preds = %13
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sitofp i32 %35 to float
  %37 = load i32, i32* %7, align 4
  %38 = sitofp i32 %37 to float
  %39 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %40 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = fmul float %38, %41
  %43 = fdiv float %36, %42
  %44 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %45 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %44, i32 0, i32 2
  store float %43, float* %45, align 4
  br label %49

; <label>:46:                                     ; preds = %13
  %47 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %48 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %47, i32 0, i32 2
  store float 0.000000e+00, float* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %32
  %50 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %51 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %54 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = fsub float %52, %55
  %57 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %58 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %57, i32 0, i32 3
  store float %56, float* %58, align 4
  br label %66

; <label>:59:                                     ; preds = %5
  %60 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %61 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %60, i32 0, i32 1
  store float 0.000000e+00, float* %61, align 4
  %62 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %63 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %62, i32 0, i32 2
  store float 0.000000e+00, float* %63, align 4
  %64 = load %struct.ts_times*, %struct.ts_times** %6, align 4
  %65 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %64, i32 0, i32 3
  store float 0.000000e+00, float* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %59, %49
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @timestatus(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ts_times, align 4
  %10 = alloca %struct.ts_times, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call arm_aapcscc float @ts_real_time(i32 %12)
  %14 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  store float %13, float* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call arm_aapcscc float @ts_process_time(i32 %15)
  %17 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  store float %16, float* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %22 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i32 0, i32 0))
  br label %151

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  call arm_aapcscc void @ts_calc_times(%struct.ts_times* %9, i32 %24, i32 %25, i32 %26, i32 %27)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  call arm_aapcscc void @ts_calc_times(%struct.ts_times* %10, i32 %28, i32 %29, i32 %30, i32 %31)
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %43

; <label>:34:                                     ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double 1.000000e+02, %36
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %37, %40
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %11, align 4
  br label %44

; <label>:43:                                     ; preds = %23
  store i32 100, i32* %11, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %34
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %11, align 4
  %50 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fpext float %51 to double
  %53 = fadd double %52, 5.000000e-01
  %54 = fptosi double %53 to i32
  %55 = sdiv i32 %54, 3600
  %56 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  %57 = load float, float* %56, align 4
  %58 = fpext float %57 to double
  %59 = fadd double %58, 5.000000e-01
  %60 = fdiv double %59, 6.000000e+01
  %61 = fptosi double %60 to i32
  %62 = srem i32 %61, 60
  %63 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = fadd double %65, 5.000000e-01
  %67 = fptosi double %66 to i32
  %68 = srem i32 %67, 60
  %69 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = fadd double %71, 5.000000e-01
  %73 = fptosi double %72 to i32
  %74 = sdiv i32 %73, 3600
  %75 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 1
  %76 = load float, float* %75, align 4
  %77 = fpext float %76 to double
  %78 = fadd double %77, 5.000000e-01
  %79 = fdiv double %78, 6.000000e+01
  %80 = fptosi double %79 to i32
  %81 = srem i32 %80, 60
  %82 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 1
  %83 = load float, float* %82, align 4
  %84 = fpext float %83 to double
  %85 = fadd double %84, 5.000000e-01
  %86 = fptosi double %85 to i32
  %87 = srem i32 %86, 60
  %88 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  %89 = load float, float* %88, align 4
  %90 = fpext float %89 to double
  %91 = fadd double %90, 5.000000e-01
  %92 = fptosi double %91 to i32
  %93 = sdiv i32 %92, 3600
  %94 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  %95 = load float, float* %94, align 4
  %96 = fpext float %95 to double
  %97 = fadd double %96, 5.000000e-01
  %98 = fdiv double %97, 6.000000e+01
  %99 = fptosi double %98 to i32
  %100 = srem i32 %99, 60
  %101 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = fadd double %103, 5.000000e-01
  %105 = fptosi double %104 to i32
  %106 = srem i32 %105, 60
  %107 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 1
  %108 = load float, float* %107, align 4
  %109 = fpext float %108 to double
  %110 = fadd double %109, 5.000000e-01
  %111 = fptosi double %110 to i32
  %112 = sdiv i32 %111, 3600
  %113 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 1
  %114 = load float, float* %113, align 4
  %115 = fpext float %114 to double
  %116 = fadd double %115, 5.000000e-01
  %117 = fdiv double %116, 6.000000e+01
  %118 = fptosi double %117 to i32
  %119 = srem i32 %118, 60
  %120 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 1
  %121 = load float, float* %120, align 4
  %122 = fpext float %121 to double
  %123 = fadd double %122, 5.000000e-01
  %124 = fptosi double %123 to i32
  %125 = srem i32 %124, 60
  %126 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 2
  %127 = load float, float* %126, align 4
  %128 = fpext float %127 to double
  %129 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 3
  %130 = load float, float* %129, align 4
  %131 = fpext float %130 to double
  %132 = fadd double %131, 5.000000e-01
  %133 = fptosi double %132 to i32
  %134 = sdiv i32 %133, 3600
  %135 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 3
  %136 = load float, float* %135, align 4
  %137 = fpext float %136 to double
  %138 = fadd double %137, 5.000000e-01
  %139 = fdiv double %138, 6.000000e+01
  %140 = fptosi double %139 to i32
  %141 = srem i32 %140, 60
  %142 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 3
  %143 = load float, float* %142, align 4
  %144 = fpext float %143 to double
  %145 = fadd double %144, 5.000000e-01
  %146 = fptosi double %145 to i32
  %147 = srem i32 %146, 60
  %148 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i32 0, i32 0), i32 %46, i32 %48, i32 %49, i32 %55, i32 %62, i32 %68, i32 %74, i32 %81, i32 %87, i32 %93, i32 %100, i32 %106, i32 %112, i32 %119, i32 %125, double %128, i32 %134, i32 %141, i32 %147)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %150 = call arm_aapcscc i32 @fflush(%struct._IO_FILE* %149)
  br label %151

; <label>:151:                                    ; preds = %44, %20
  ret void
}

declare arm_aapcscc i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare arm_aapcscc i32 @fflush(%struct._IO_FILE*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
