; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }
%struct.timeval = type { i64, i64 }

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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Domain_s, align 4
  %3 = alloca %struct.Domain_s*, align 8
  %4 = alloca %struct.RadiationData_t, align 8
  %5 = alloca %struct.RadiationData_t*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.Domain_s* %2, %struct.Domain_s** %3, align 8
  store %struct.RadiationData_t* %4, %struct.RadiationData_t** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %13, align 4
  store i32 5000, i32* %14, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  call void (...) @readInput()
  %16 = load i32, i32* @i_ub, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = call i8* @malloc(i64 %18)
  %20 = bitcast i8* %19 to double*
  store double* %20, double** %12, align 8
  %21 = load i32, i32* @x_size, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = call i8* @malloc(i64 %23)
  %25 = bitcast i8* %24 to double*
  store double* %25, double** %11, align 8
  %26 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 8
  call void @allocMem(%struct.RadiationData_t* %26)
  %27 = load %struct.Domain_s*, %struct.Domain_s** %3, align 8
  %28 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 8
  %29 = load double*, double** %11, align 8
  %30 = load double*, double** %12, align 8
  call void @init(%struct.Domain_s* %27, %struct.RadiationData_t* %28, double* %29, double* %30)
  %31 = call i32 @gettimeofday(%struct.timeval* %6, i8* null)
  %32 = call i64 @clock()
  store i64 %32, i64* %8, align 8
  store i32 0, i32* %13, align 4
  br label %33

; <label>:33:                                     ; preds = %41, %0
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 5000
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %33
  %37 = load %struct.Domain_s*, %struct.Domain_s** %3, align 8
  %38 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 8
  %39 = load double*, double** %11, align 8
  %40 = load double*, double** %12, align 8
  call void @rmatmult3(%struct.Domain_s* %37, %struct.RadiationData_t* %38, double* %39, double* %40)
  br label %41

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %33

; <label>:44:                                     ; preds = %33
  %45 = call i32 @gettimeofday(%struct.timeval* %7, i8* null)
  %46 = call i64 @clock()
  store i64 %46, i64* %9, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %13, align 4
  br label %48

; <label>:48:                                     ; preds = %60, %44
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @i_ub, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = load double*, double** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  %58 = load double, double* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %53, double %58)
  br label %60

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* @i_ub, align 4
  %62 = sdiv i32 %61, 5
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %48

; <label>:65:                                     ; preds = %48
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %67, %69
  %71 = sitofp i64 %70 to double
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %73, %75
  %77 = sitofp i64 %76 to double
  %78 = fdiv double %77, 1.000000e+06
  %79 = fadd double %71, %78
  store double %79, double* %10, align 8
  %80 = load double, double* %10, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %80)
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub nsw i64 %82, %83
  %85 = sitofp i64 %84 to double
  %86 = fdiv double %85, 1.000000e+06
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), double %86)
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare i32 @printf(i8*, ...) #1

declare void @readInput(...) #1

declare i8* @malloc(i64) #1

declare void @allocMem(%struct.RadiationData_t*) #1

declare void @init(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #1

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare i64 @clock() #1

declare void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
