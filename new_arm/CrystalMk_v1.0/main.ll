; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"\0ASequoia benchmark version 1.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0A***** results \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"returnVal = %f \0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"i = %5d j = %5d    dtcdgd[i][j]   = %e \0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0ATotal Wall time = %f seconds. \0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\0ATotal CPU  time = %f seconds. \0A\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [12 x double], align 8
  %7 = alloca [12 x double], align 8
  %8 = alloca [12 x double], align 8
  %9 = alloca [12 x double], align 8
  %10 = alloca [12 x double], align 8
  %11 = alloca [12 x [12 x double]], align 8
  %12 = alloca [12 x [12 x double]], align 8
  %13 = alloca [12 x [12 x double]], align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %19 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 0
  %20 = getelementptr inbounds [12 x double], [12 x double]* %7, i32 0, i32 0
  %21 = getelementptr inbounds [12 x double], [12 x double]* %8, i32 0, i32 0
  %22 = getelementptr inbounds [12 x double], [12 x double]* %9, i32 0, i32 0
  %23 = getelementptr inbounds [12 x double], [12 x double]* %10, i32 0, i32 0
  %24 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i32 0, i32 0
  %25 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %12, i32 0, i32 0
  %26 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %13, i32 0, i32 0
  call arm_aapcscc void @init(double* %19, double* %20, double* %21, double* %22, double* %23, [12 x double]* %24, [12 x double]* %25, [12 x double]* %26)
  %27 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %2, i8* null)
  %28 = call arm_aapcscc i32 @clock()
  store i32 %28, i32* %4, align 4
  %29 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 0
  %30 = getelementptr inbounds [12 x double], [12 x double]* %7, i32 0, i32 0
  %31 = getelementptr inbounds [12 x double], [12 x double]* %8, i32 0, i32 0
  %32 = getelementptr inbounds [12 x double], [12 x double]* %9, i32 0, i32 0
  %33 = getelementptr inbounds [12 x double], [12 x double]* %10, i32 0, i32 0
  %34 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i32 0, i32 0
  %35 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %12, i32 0, i32 0
  %36 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %13, i32 0, i32 0
  %37 = call arm_aapcscc double @SPEdriver(double* %29, double* %30, double* %31, double* %32, double* %33, [12 x double]* %34, [12 x double]* %35, [12 x double]* %36)
  store double %37, double* %15, align 8
  %38 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %3, i8* null)
  %39 = call arm_aapcscc i32 @clock()
  store i32 %39, i32* %5, align 4
  %40 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %41 = load double, double* %15, align 8
  %42 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), double %41)
  store i32 0, i32* %16, align 4
  br label %43

; <label>:43:                                     ; preds = %63, %0
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 12
  br i1 %45, label %46, label %66

; <label>:46:                                     ; preds = %43
  store i32 0, i32* %17, align 4
  br label %47

; <label>:47:                                     ; preds = %59, %46
  %48 = load i32, i32* %17, align 4
  %49 = icmp slt i32 %48, 12
  br i1 %49, label %50, label %62

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i32 0, i32 %53
  %55 = load i32, i32* %17, align 4
  %56 = getelementptr inbounds [12 x double], [12 x double]* %54, i32 0, i32 %55
  %57 = load double, double* %56, align 8
  %58 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %51, i32 %52, double %57)
  br label %59

; <label>:59:                                     ; preds = %50
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %17, align 4
  br label %47

; <label>:62:                                     ; preds = %47
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %16, align 4
  br label %43

; <label>:66:                                     ; preds = %43
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %68, %70
  %72 = sitofp i32 %71 to double
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %74, %76
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 1.000000e+06
  %80 = fadd double %72, %79
  store double %80, double* %14, align 8
  %81 = load double, double* %14, align 8
  %82 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %86, 1.000000e+06
  %88 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), double %87)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc void @init(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #1

declare arm_aapcscc i32 @gettimeofday(%struct.timeval*, i8*) #1

declare arm_aapcscc i32 @clock() #1

declare arm_aapcscc double @SPEdriver(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
