; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"\0ASequoia Benchmark Version 1.0\0A\0A\00", align 1
@i_ub = common global i32 0, align 4
@x_size = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"***** results \0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"i = %10d      b[i] = %e \0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0AWall time = %f seconds. \0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\0ACPU  time = %f seconds. \0A\0A\00", align 1
@kmin = common global i32 0, align 4
@kmax = common global i32 0, align 4
@jmin = common global i32 0, align 4
@jmax = common global i32 0, align 4
@imin = common global i32 0, align 4
@imax = common global i32 0, align 4
@kp = common global i32 0, align 4
@jp = common global i32 0, align 4
@i_lb = common global i32 0, align 4

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Domain_s, align 4
  %3 = alloca %struct.Domain_s*, align 4
  %4 = alloca %struct.RadiationData_t, align 4
  %5 = alloca %struct.RadiationData_t*, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.Domain_s* %2, %struct.Domain_s** %3, align 4
  store %struct.RadiationData_t* %4, %struct.RadiationData_t** %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %13, align 4
  store i32 5000, i32* %14, align 4
  %15 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  call arm_aapcscc void bitcast (void (...)* @readInput to void ()*)()
  %16 = load i32, i32* @i_ub, align 4
  %17 = mul i32 %16, 8
  %18 = call arm_aapcscc i8* @malloc(i32 %17)
  %19 = bitcast i8* %18 to double*
  store double* %19, double** %12, align 4
  %20 = load i32, i32* @x_size, align 4
  %21 = mul i32 %20, 8
  %22 = call arm_aapcscc i8* @malloc(i32 %21)
  %23 = bitcast i8* %22 to double*
  store double* %23, double** %11, align 4
  %24 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 4
  call arm_aapcscc void @allocMem(%struct.RadiationData_t* %24)
  %25 = load %struct.Domain_s*, %struct.Domain_s** %3, align 4
  %26 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 4
  %27 = load double*, double** %11, align 4
  %28 = load double*, double** %12, align 4
  call arm_aapcscc void @init(%struct.Domain_s* %25, %struct.RadiationData_t* %26, double* %27, double* %28)
  %29 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %6, i8* null)
  %30 = call arm_aapcscc i32 @clock()
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %31

; <label>:31:                                     ; preds = %39, %0
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 5000
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %31
  %35 = load %struct.Domain_s*, %struct.Domain_s** %3, align 4
  %36 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 4
  %37 = load double*, double** %11, align 4
  %38 = load double*, double** %12, align 4
  call arm_aapcscc void @rmatmult3(%struct.Domain_s* %35, %struct.RadiationData_t* %36, double* %37, double* %38)
  br label %39

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %31

; <label>:42:                                     ; preds = %31
  %43 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %7, i8* null)
  %44 = call arm_aapcscc i32 @clock()
  store i32 %44, i32* %9, align 4
  %45 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %13, align 4
  br label %46

; <label>:46:                                     ; preds = %57, %42
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @i_ub, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load double*, double** %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = getelementptr inbounds double, double* %52, i32 %53
  %55 = load double, double* %54, align 8
  %56 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %51, double %55)
  br label %57

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* @i_ub, align 4
  %59 = sdiv i32 %58, 5
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %46

; <label>:62:                                     ; preds = %46
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %64, %66
  %68 = sitofp i32 %67 to double
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %70, %72
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  %76 = fadd double %68, %75
  store double %76, double* %10, align 8
  %77 = load double, double* %10, align 8
  %78 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sitofp i32 %81 to double
  %83 = fdiv double %82, 1.000000e+06
  %84 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), double %83)
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc void @readInput(...) #1

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc void @allocMem(%struct.RadiationData_t*) #1

declare arm_aapcscc void @init(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #1

declare arm_aapcscc i32 @gettimeofday(%struct.timeval*, i8*) #1

declare arm_aapcscc i32 @clock() #1

declare arm_aapcscc void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
