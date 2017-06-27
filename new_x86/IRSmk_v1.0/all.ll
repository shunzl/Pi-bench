; ModuleID = 'all.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type opaque

@i_ub = common global i32 0, align 4
@x_size = common global i32 0, align 4
@kmin = common global i32 0, align 4
@kmax = common global i32 0, align 4
@jmin = common global i32 0, align 4
@jmax = common global i32 0, align 4
@imin = common global i32 0, align 4
@imax = common global i32 0, align 4
@kp = common global i32 0, align 4
@jp = common global i32 0, align 4
@i_lb = common global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"\0ASequoia Benchmark Version 1.0\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"***** results \0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"i = %10d      b[i] = %e \0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0AWall time = %f seconds. \0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\0ACPU  time = %f seconds. \0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"rmatmult3\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"irsmk_input\00", align 1
@.str.1.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.10 = private unnamed_addr constant [14 x i8] c"***** ERROR \0A\00", align 1
@.str.3.11 = private unnamed_addr constant [43 x i8] c"      Cannot open input file irsmk_input \0A\00", align 1
@.str.4.12 = private unnamed_addr constant [24 x i8] c"%d %d %d %d %d %d %d %d\00", align 1
@.str.5.13 = private unnamed_addr constant [15 x i8] c"***** input  \0A\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"kmin = %8d     kmax = %8d \0Ajmin = %8d     jmax = %8d \0Aimin = %8d     imax = %8d \0Akp   = %8d     jp   = %8d \0A \0A \0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"      lb of xdbl < 0 \0A\00", align 1
@.str.8.14 = private unnamed_addr constant [22 x i8] c"***** array bounds  \0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"i_lb = %10d    i_ub = %10d    x_size = %10d \0A \0A \0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"*****ERROR: allocMem out of memory \0A\00", align 1

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
  call void (...) bitcast (void ()* @readInput to void (...)*)()
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

declare i8* @malloc(i64) #1

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare i64 @clock() #1

; Function Attrs: nounwind
define void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %5 = alloca %struct.Domain_s*, align 8
  %6 = alloca %struct.RadiationData_t*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double*, align 8
  %36 = alloca double*, align 8
  %37 = alloca double*, align 8
  %38 = alloca double*, align 8
  %39 = alloca double*, align 8
  %40 = alloca double*, align 8
  %41 = alloca double*, align 8
  %42 = alloca double*, align 8
  %43 = alloca double*, align 8
  %44 = alloca double*, align 8
  %45 = alloca double*, align 8
  %46 = alloca double*, align 8
  %47 = alloca double*, align 8
  %48 = alloca double*, align 8
  %49 = alloca double*, align 8
  %50 = alloca double*, align 8
  %51 = alloca double*, align 8
  %52 = alloca double*, align 8
  %53 = alloca double*, align 8
  %54 = alloca double*, align 8
  %55 = alloca double*, align 8
  %56 = alloca double*, align 8
  %57 = alloca double*, align 8
  %58 = alloca double*, align 8
  %59 = alloca double*, align 8
  %60 = alloca double*, align 8
  %61 = alloca double*, align 8
  %62 = alloca double*, align 8
  %63 = alloca double*, align 8
  %64 = alloca double*, align 8
  %65 = alloca double*, align 8
  %66 = alloca double*, align 8
  %67 = alloca double*, align 8
  %68 = alloca double*, align 8
  %69 = alloca double*, align 8
  %70 = alloca double*, align 8
  %71 = alloca double*, align 8
  %72 = alloca double*, align 8
  %73 = alloca double*, align 8
  %74 = alloca double*, align 8
  %75 = alloca double*, align 8
  store %struct.Domain_s* %0, %struct.Domain_s** %5, align 8
  store %struct.RadiationData_t* %1, %struct.RadiationData_t** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %9, align 8
  %76 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %77 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %80 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %83 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %86 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %89 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %18, align 4
  %91 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %92 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %19, align 4
  %94 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %95 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %94, i32 0, i32 17
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %98 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %97, i32 0, i32 18
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %21, align 4
  %100 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %101 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %100, i32 0, i32 0
  %102 = load double*, double** %101, align 8
  store double* %102, double** %22, align 8
  %103 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %104 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %103, i32 0, i32 1
  %105 = load double*, double** %104, align 8
  store double* %105, double** %23, align 8
  %106 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %107 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %106, i32 0, i32 2
  %108 = load double*, double** %107, align 8
  store double* %108, double** %24, align 8
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 3
  %111 = load double*, double** %110, align 8
  store double* %111, double** %25, align 8
  %112 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %113 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %112, i32 0, i32 4
  %114 = load double*, double** %113, align 8
  store double* %114, double** %26, align 8
  %115 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %116 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %115, i32 0, i32 5
  %117 = load double*, double** %116, align 8
  store double* %117, double** %27, align 8
  %118 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %119 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %118, i32 0, i32 6
  %120 = load double*, double** %119, align 8
  store double* %120, double** %28, align 8
  %121 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %122 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %121, i32 0, i32 7
  %123 = load double*, double** %122, align 8
  store double* %123, double** %29, align 8
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 8
  %126 = load double*, double** %125, align 8
  store double* %126, double** %30, align 8
  %127 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %128 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %127, i32 0, i32 9
  %129 = load double*, double** %128, align 8
  store double* %129, double** %31, align 8
  %130 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %131 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %130, i32 0, i32 10
  %132 = load double*, double** %131, align 8
  store double* %132, double** %32, align 8
  %133 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %134 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %133, i32 0, i32 11
  %135 = load double*, double** %134, align 8
  store double* %135, double** %33, align 8
  %136 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %137 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %136, i32 0, i32 12
  %138 = load double*, double** %137, align 8
  store double* %138, double** %34, align 8
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 13
  %141 = load double*, double** %140, align 8
  store double* %141, double** %35, align 8
  %142 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %143 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %142, i32 0, i32 14
  %144 = load double*, double** %143, align 8
  store double* %144, double** %36, align 8
  %145 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %146 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %145, i32 0, i32 15
  %147 = load double*, double** %146, align 8
  store double* %147, double** %37, align 8
  %148 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %149 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %148, i32 0, i32 16
  %150 = load double*, double** %149, align 8
  store double* %150, double** %38, align 8
  %151 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %152 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %151, i32 0, i32 17
  %153 = load double*, double** %152, align 8
  store double* %153, double** %39, align 8
  %154 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %155 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %154, i32 0, i32 18
  %156 = load double*, double** %155, align 8
  store double* %156, double** %40, align 8
  %157 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %158 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %157, i32 0, i32 19
  %159 = load double*, double** %158, align 8
  store double* %159, double** %41, align 8
  %160 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %161 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %160, i32 0, i32 20
  %162 = load double*, double** %161, align 8
  store double* %162, double** %42, align 8
  %163 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %164 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %163, i32 0, i32 21
  %165 = load double*, double** %164, align 8
  store double* %165, double** %43, align 8
  %166 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %167 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %166, i32 0, i32 22
  %168 = load double*, double** %167, align 8
  store double* %168, double** %44, align 8
  %169 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %170 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %169, i32 0, i32 23
  %171 = load double*, double** %170, align 8
  store double* %171, double** %45, align 8
  %172 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %173 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %172, i32 0, i32 24
  %174 = load double*, double** %173, align 8
  store double* %174, double** %46, align 8
  %175 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %176 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %175, i32 0, i32 25
  %177 = load double*, double** %176, align 8
  store double* %177, double** %47, align 8
  %178 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %179 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %178, i32 0, i32 26
  %180 = load double*, double** %179, align 8
  store double* %180, double** %48, align 8
  %181 = load double*, double** %7, align 8
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = sub i64 0, %183
  %185 = getelementptr inbounds double, double* %181, i64 %184
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = sub i64 0, %187
  %189 = getelementptr inbounds double, double* %185, i64 %188
  %190 = getelementptr inbounds double, double* %189, i64 -1
  store double* %190, double** %49, align 8
  %191 = load double*, double** %7, align 8
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 0, %193
  %195 = getelementptr inbounds double, double* %191, i64 %194
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = sub i64 0, %197
  %199 = getelementptr inbounds double, double* %195, i64 %198
  store double* %199, double** %50, align 8
  %200 = load double*, double** %7, align 8
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds double, double* %200, i64 %203
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 0, %206
  %208 = getelementptr inbounds double, double* %204, i64 %207
  %209 = getelementptr inbounds double, double* %208, i64 1
  store double* %209, double** %51, align 8
  %210 = load double*, double** %7, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = sub i64 0, %212
  %214 = getelementptr inbounds double, double* %210, i64 %213
  %215 = getelementptr inbounds double, double* %214, i64 -1
  store double* %215, double** %52, align 8
  %216 = load double*, double** %7, align 8
  %217 = load i32, i32* %21, align 4
  %218 = sext i32 %217 to i64
  %219 = sub i64 0, %218
  %220 = getelementptr inbounds double, double* %216, i64 %219
  store double* %220, double** %53, align 8
  %221 = load double*, double** %7, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = sub i64 0, %223
  %225 = getelementptr inbounds double, double* %221, i64 %224
  %226 = getelementptr inbounds double, double* %225, i64 1
  store double* %226, double** %54, align 8
  %227 = load double*, double** %7, align 8
  %228 = load i32, i32* %21, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds double, double* %227, i64 %230
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %231, i64 %233
  %235 = getelementptr inbounds double, double* %234, i64 -1
  store double* %235, double** %55, align 8
  %236 = load double*, double** %7, align 8
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = sub i64 0, %238
  %240 = getelementptr inbounds double, double* %236, i64 %239
  %241 = load i32, i32* %20, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double, double* %240, i64 %242
  store double* %243, double** %56, align 8
  %244 = load double*, double** %7, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = sub i64 0, %246
  %248 = getelementptr inbounds double, double* %244, i64 %247
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double, double* %248, i64 %250
  %252 = getelementptr inbounds double, double* %251, i64 1
  store double* %252, double** %57, align 8
  %253 = load double*, double** %7, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = sub i64 0, %255
  %257 = getelementptr inbounds double, double* %253, i64 %256
  %258 = getelementptr inbounds double, double* %257, i64 -1
  store double* %258, double** %58, align 8
  %259 = load double*, double** %7, align 8
  %260 = load i32, i32* %20, align 4
  %261 = sext i32 %260 to i64
  %262 = sub i64 0, %261
  %263 = getelementptr inbounds double, double* %259, i64 %262
  store double* %263, double** %59, align 8
  %264 = load double*, double** %7, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = sub i64 0, %266
  %268 = getelementptr inbounds double, double* %264, i64 %267
  %269 = getelementptr inbounds double, double* %268, i64 1
  store double* %269, double** %60, align 8
  %270 = load double*, double** %7, align 8
  %271 = getelementptr inbounds double, double* %270, i64 -1
  store double* %271, double** %61, align 8
  %272 = load double*, double** %7, align 8
  store double* %272, double** %62, align 8
  %273 = load double*, double** %7, align 8
  %274 = getelementptr inbounds double, double* %273, i64 1
  store double* %274, double** %63, align 8
  %275 = load double*, double** %7, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = getelementptr inbounds double, double* %278, i64 -1
  store double* %279, double** %64, align 8
  %280 = load double*, double** %7, align 8
  %281 = load i32, i32* %20, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %280, i64 %282
  store double* %283, double** %65, align 8
  %284 = load double*, double** %7, align 8
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds double, double* %284, i64 %286
  %288 = getelementptr inbounds double, double* %287, i64 1
  store double* %288, double** %66, align 8
  %289 = load double*, double** %7, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %289, i64 %291
  %293 = load i32, i32* %20, align 4
  %294 = sext i32 %293 to i64
  %295 = sub i64 0, %294
  %296 = getelementptr inbounds double, double* %292, i64 %295
  %297 = getelementptr inbounds double, double* %296, i64 -1
  store double* %297, double** %67, align 8
  %298 = load double*, double** %7, align 8
  %299 = load i32, i32* %21, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %298, i64 %300
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = sub i64 0, %303
  %305 = getelementptr inbounds double, double* %301, i64 %304
  store double* %305, double** %68, align 8
  %306 = load double*, double** %7, align 8
  %307 = load i32, i32* %21, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, double* %306, i64 %308
  %310 = load i32, i32* %20, align 4
  %311 = sext i32 %310 to i64
  %312 = sub i64 0, %311
  %313 = getelementptr inbounds double, double* %309, i64 %312
  %314 = getelementptr inbounds double, double* %313, i64 1
  store double* %314, double** %69, align 8
  %315 = load double*, double** %7, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, double* %315, i64 %317
  %319 = getelementptr inbounds double, double* %318, i64 -1
  store double* %319, double** %70, align 8
  %320 = load double*, double** %7, align 8
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds double, double* %320, i64 %322
  store double* %323, double** %71, align 8
  %324 = load double*, double** %7, align 8
  %325 = load i32, i32* %21, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds double, double* %324, i64 %326
  %328 = getelementptr inbounds double, double* %327, i64 1
  store double* %328, double** %72, align 8
  %329 = load double*, double** %7, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds double, double* %329, i64 %331
  %333 = load i32, i32* %20, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %332, i64 %334
  %336 = getelementptr inbounds double, double* %335, i64 -1
  store double* %336, double** %73, align 8
  %337 = load double*, double** %7, align 8
  %338 = load i32, i32* %21, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double, double* %337, i64 %339
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, double* %340, i64 %342
  store double* %343, double** %74, align 8
  %344 = load double*, double** %7, align 8
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds double, double* %344, i64 %346
  %348 = load i32, i32* %20, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %347, i64 %349
  %351 = getelementptr inbounds double, double* %350, i64 1
  store double* %351, double** %75, align 8
  %352 = load i32, i32* %18, align 4
  store i32 %352, i32* %13, align 4
  br label %353

; <label>:353:                                    ; preds = %714, %4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %19, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %717

; <label>:357:                                    ; preds = %353
  %358 = load i32, i32* %16, align 4
  store i32 %358, i32* %12, align 4
  br label %359

; <label>:359:                                    ; preds = %710, %357
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* %17, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %713

; <label>:363:                                    ; preds = %359
  %364 = load i32, i32* %14, align 4
  store i32 %364, i32* %11, align 4
  br label %365

; <label>:365:                                    ; preds = %706, %363
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %15, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %709

; <label>:369:                                    ; preds = %365
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %20, align 4
  %373 = mul nsw i32 %371, %372
  %374 = add nsw i32 %370, %373
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* %21, align 4
  %377 = mul nsw i32 %375, %376
  %378 = add nsw i32 %374, %377
  store i32 %378, i32* %10, align 4
  %379 = load double*, double** %22, align 8
  %380 = load i32, i32* %10, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds double, double* %379, i64 %381
  %383 = load double, double* %382, align 8
  %384 = load double*, double** %49, align 8
  %385 = load i32, i32* %10, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %384, i64 %386
  %388 = load double, double* %387, align 8
  %389 = fmul double %383, %388
  %390 = load double*, double** %23, align 8
  %391 = load i32, i32* %10, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, double* %390, i64 %392
  %394 = load double, double* %393, align 8
  %395 = load double*, double** %50, align 8
  %396 = load i32, i32* %10, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds double, double* %395, i64 %397
  %399 = load double, double* %398, align 8
  %400 = fmul double %394, %399
  %401 = fadd double %389, %400
  %402 = load double*, double** %24, align 8
  %403 = load i32, i32* %10, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds double, double* %402, i64 %404
  %406 = load double, double* %405, align 8
  %407 = load double*, double** %51, align 8
  %408 = load i32, i32* %10, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds double, double* %407, i64 %409
  %411 = load double, double* %410, align 8
  %412 = fmul double %406, %411
  %413 = fadd double %401, %412
  %414 = load double*, double** %25, align 8
  %415 = load i32, i32* %10, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds double, double* %414, i64 %416
  %418 = load double, double* %417, align 8
  %419 = load double*, double** %52, align 8
  %420 = load i32, i32* %10, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds double, double* %419, i64 %421
  %423 = load double, double* %422, align 8
  %424 = fmul double %418, %423
  %425 = fadd double %413, %424
  %426 = load double*, double** %26, align 8
  %427 = load i32, i32* %10, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds double, double* %426, i64 %428
  %430 = load double, double* %429, align 8
  %431 = load double*, double** %53, align 8
  %432 = load i32, i32* %10, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %431, i64 %433
  %435 = load double, double* %434, align 8
  %436 = fmul double %430, %435
  %437 = fadd double %425, %436
  %438 = load double*, double** %27, align 8
  %439 = load i32, i32* %10, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %438, i64 %440
  %442 = load double, double* %441, align 8
  %443 = load double*, double** %54, align 8
  %444 = load i32, i32* %10, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %443, i64 %445
  %447 = load double, double* %446, align 8
  %448 = fmul double %442, %447
  %449 = fadd double %437, %448
  %450 = load double*, double** %28, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds double, double* %450, i64 %452
  %454 = load double, double* %453, align 8
  %455 = load double*, double** %55, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds double, double* %455, i64 %457
  %459 = load double, double* %458, align 8
  %460 = fmul double %454, %459
  %461 = fadd double %449, %460
  %462 = load double*, double** %29, align 8
  %463 = load i32, i32* %10, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds double, double* %462, i64 %464
  %466 = load double, double* %465, align 8
  %467 = load double*, double** %56, align 8
  %468 = load i32, i32* %10, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds double, double* %467, i64 %469
  %471 = load double, double* %470, align 8
  %472 = fmul double %466, %471
  %473 = fadd double %461, %472
  %474 = load double*, double** %30, align 8
  %475 = load i32, i32* %10, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds double, double* %474, i64 %476
  %478 = load double, double* %477, align 8
  %479 = load double*, double** %57, align 8
  %480 = load i32, i32* %10, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds double, double* %479, i64 %481
  %483 = load double, double* %482, align 8
  %484 = fmul double %478, %483
  %485 = fadd double %473, %484
  %486 = load double*, double** %31, align 8
  %487 = load i32, i32* %10, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds double, double* %486, i64 %488
  %490 = load double, double* %489, align 8
  %491 = load double*, double** %58, align 8
  %492 = load i32, i32* %10, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds double, double* %491, i64 %493
  %495 = load double, double* %494, align 8
  %496 = fmul double %490, %495
  %497 = fadd double %485, %496
  %498 = load double*, double** %32, align 8
  %499 = load i32, i32* %10, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds double, double* %498, i64 %500
  %502 = load double, double* %501, align 8
  %503 = load double*, double** %59, align 8
  %504 = load i32, i32* %10, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds double, double* %503, i64 %505
  %507 = load double, double* %506, align 8
  %508 = fmul double %502, %507
  %509 = fadd double %497, %508
  %510 = load double*, double** %33, align 8
  %511 = load i32, i32* %10, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds double, double* %510, i64 %512
  %514 = load double, double* %513, align 8
  %515 = load double*, double** %60, align 8
  %516 = load i32, i32* %10, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds double, double* %515, i64 %517
  %519 = load double, double* %518, align 8
  %520 = fmul double %514, %519
  %521 = fadd double %509, %520
  %522 = load double*, double** %34, align 8
  %523 = load i32, i32* %10, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds double, double* %522, i64 %524
  %526 = load double, double* %525, align 8
  %527 = load double*, double** %61, align 8
  %528 = load i32, i32* %10, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds double, double* %527, i64 %529
  %531 = load double, double* %530, align 8
  %532 = fmul double %526, %531
  %533 = fadd double %521, %532
  %534 = load double*, double** %35, align 8
  %535 = load i32, i32* %10, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds double, double* %534, i64 %536
  %538 = load double, double* %537, align 8
  %539 = load double*, double** %62, align 8
  %540 = load i32, i32* %10, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds double, double* %539, i64 %541
  %543 = load double, double* %542, align 8
  %544 = fmul double %538, %543
  %545 = fadd double %533, %544
  %546 = load double*, double** %36, align 8
  %547 = load i32, i32* %10, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds double, double* %546, i64 %548
  %550 = load double, double* %549, align 8
  %551 = load double*, double** %63, align 8
  %552 = load i32, i32* %10, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds double, double* %551, i64 %553
  %555 = load double, double* %554, align 8
  %556 = fmul double %550, %555
  %557 = fadd double %545, %556
  %558 = load double*, double** %37, align 8
  %559 = load i32, i32* %10, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds double, double* %558, i64 %560
  %562 = load double, double* %561, align 8
  %563 = load double*, double** %64, align 8
  %564 = load i32, i32* %10, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds double, double* %563, i64 %565
  %567 = load double, double* %566, align 8
  %568 = fmul double %562, %567
  %569 = fadd double %557, %568
  %570 = load double*, double** %38, align 8
  %571 = load i32, i32* %10, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %570, i64 %572
  %574 = load double, double* %573, align 8
  %575 = load double*, double** %65, align 8
  %576 = load i32, i32* %10, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds double, double* %575, i64 %577
  %579 = load double, double* %578, align 8
  %580 = fmul double %574, %579
  %581 = fadd double %569, %580
  %582 = load double*, double** %39, align 8
  %583 = load i32, i32* %10, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %582, i64 %584
  %586 = load double, double* %585, align 8
  %587 = load double*, double** %66, align 8
  %588 = load i32, i32* %10, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds double, double* %587, i64 %589
  %591 = load double, double* %590, align 8
  %592 = fmul double %586, %591
  %593 = fadd double %581, %592
  %594 = load double*, double** %40, align 8
  %595 = load i32, i32* %10, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds double, double* %594, i64 %596
  %598 = load double, double* %597, align 8
  %599 = load double*, double** %67, align 8
  %600 = load i32, i32* %10, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds double, double* %599, i64 %601
  %603 = load double, double* %602, align 8
  %604 = fmul double %598, %603
  %605 = fadd double %593, %604
  %606 = load double*, double** %41, align 8
  %607 = load i32, i32* %10, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds double, double* %606, i64 %608
  %610 = load double, double* %609, align 8
  %611 = load double*, double** %68, align 8
  %612 = load i32, i32* %10, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds double, double* %611, i64 %613
  %615 = load double, double* %614, align 8
  %616 = fmul double %610, %615
  %617 = fadd double %605, %616
  %618 = load double*, double** %42, align 8
  %619 = load i32, i32* %10, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds double, double* %618, i64 %620
  %622 = load double, double* %621, align 8
  %623 = load double*, double** %69, align 8
  %624 = load i32, i32* %10, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds double, double* %623, i64 %625
  %627 = load double, double* %626, align 8
  %628 = fmul double %622, %627
  %629 = fadd double %617, %628
  %630 = load double*, double** %43, align 8
  %631 = load i32, i32* %10, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds double, double* %630, i64 %632
  %634 = load double, double* %633, align 8
  %635 = load double*, double** %70, align 8
  %636 = load i32, i32* %10, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds double, double* %635, i64 %637
  %639 = load double, double* %638, align 8
  %640 = fmul double %634, %639
  %641 = fadd double %629, %640
  %642 = load double*, double** %44, align 8
  %643 = load i32, i32* %10, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds double, double* %642, i64 %644
  %646 = load double, double* %645, align 8
  %647 = load double*, double** %71, align 8
  %648 = load i32, i32* %10, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds double, double* %647, i64 %649
  %651 = load double, double* %650, align 8
  %652 = fmul double %646, %651
  %653 = fadd double %641, %652
  %654 = load double*, double** %45, align 8
  %655 = load i32, i32* %10, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds double, double* %654, i64 %656
  %658 = load double, double* %657, align 8
  %659 = load double*, double** %72, align 8
  %660 = load i32, i32* %10, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds double, double* %659, i64 %661
  %663 = load double, double* %662, align 8
  %664 = fmul double %658, %663
  %665 = fadd double %653, %664
  %666 = load double*, double** %46, align 8
  %667 = load i32, i32* %10, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds double, double* %666, i64 %668
  %670 = load double, double* %669, align 8
  %671 = load double*, double** %73, align 8
  %672 = load i32, i32* %10, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds double, double* %671, i64 %673
  %675 = load double, double* %674, align 8
  %676 = fmul double %670, %675
  %677 = fadd double %665, %676
  %678 = load double*, double** %47, align 8
  %679 = load i32, i32* %10, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds double, double* %678, i64 %680
  %682 = load double, double* %681, align 8
  %683 = load double*, double** %74, align 8
  %684 = load i32, i32* %10, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds double, double* %683, i64 %685
  %687 = load double, double* %686, align 8
  %688 = fmul double %682, %687
  %689 = fadd double %677, %688
  %690 = load double*, double** %48, align 8
  %691 = load i32, i32* %10, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds double, double* %690, i64 %692
  %694 = load double, double* %693, align 8
  %695 = load double*, double** %75, align 8
  %696 = load i32, i32* %10, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds double, double* %695, i64 %697
  %699 = load double, double* %698, align 8
  %700 = fmul double %694, %699
  %701 = fadd double %689, %700
  %702 = load double*, double** %8, align 8
  %703 = load i32, i32* %10, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds double, double* %702, i64 %704
  store double %701, double* %705, align 8
  br label %706

; <label>:706:                                    ; preds = %369
  %707 = load i32, i32* %11, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %11, align 4
  br label %365

; <label>:709:                                    ; preds = %365
  br label %710

; <label>:710:                                    ; preds = %709
  %711 = load i32, i32* %12, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %12, align 4
  br label %359

; <label>:713:                                    ; preds = %359
  br label %714

; <label>:714:                                    ; preds = %713
  %715 = load i32, i32* %13, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %13, align 4
  br label %353

; <label>:717:                                    ; preds = %353
  ret void
}

; Function Attrs: nounwind
define void @readInput() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.9, i32 0, i32 0))
  store %struct._IO_FILE* %2, %struct._IO_FILE** %1, align 8
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.10, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3.11, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

; <label>:7:                                      ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4.12, i32 0, i32 0), i32* @kmin, i32* @kmax, i32* @jmin, i32* @jmax, i32* @imin, i32* @imax, i32* @kp, i32* @jp)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.13, i32 0, i32 0))
  %11 = load i32, i32* @kmin, align 4
  %12 = load i32, i32* @kmax, align 4
  %13 = load i32, i32* @jmin, align 4
  %14 = load i32, i32* @jmax, align 4
  %15 = load i32, i32* @imin, align 4
  %16 = load i32, i32* @imax, align 4
  %17 = load i32, i32* @kp, align 4
  %18 = load i32, i32* @jp, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i32 0, i32 0), i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @imin, align 4
  %21 = load i32, i32* @jmin, align 4
  %22 = load i32, i32* @jp, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %20, %23
  %25 = load i32, i32* @kmin, align 4
  %26 = load i32, i32* @kp, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* @i_lb, align 4
  %29 = load i32, i32* @imax, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @jmax, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @jp, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %30, %34
  %36 = load i32, i32* @kmax, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @kp, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %35, %39
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @i_ub, align 4
  %42 = load i32, i32* @i_lb, align 4
  %43 = load i32, i32* @kp, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* @jp, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %7
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.10, i32 0, i32 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

; <label>:52:                                     ; preds = %7
  %53 = load i32, i32* @i_ub, align 4
  %54 = load i32, i32* @kp, align 4
  %55 = load i32, i32* @jp, align 4
  %56 = add nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 2, %57
  %59 = add nsw i32 %53, %58
  %60 = add nsw i32 %59, 10
  store i32 %60, i32* @x_size, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8.14, i32 0, i32 0))
  %62 = load i32, i32* @i_lb, align 4
  %63 = load i32, i32* @i_ub, align 4
  %64 = load i32, i32* @x_size, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %67 = call i32 @fclose(%struct._IO_FILE* %66)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define void @allocMem(%struct.RadiationData_t*) #0 {
  %2 = alloca %struct.RadiationData_t*, align 8
  %3 = alloca i32, align 4
  store %struct.RadiationData_t* %0, %struct.RadiationData_t** %2, align 8
  %4 = load i32, i32* @i_ub, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = call i8* @malloc(i64 %9)
  %11 = bitcast i8* %10 to double*
  %12 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %13 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %12, i32 0, i32 0
  store double* %11, double** %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = call i8* @malloc(i64 %15)
  %17 = bitcast i8* %16 to double*
  %18 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %19 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %18, i32 0, i32 1
  store double* %17, double** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = call i8* @malloc(i64 %21)
  %23 = bitcast i8* %22 to double*
  %24 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %25 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %24, i32 0, i32 2
  store double* %23, double** %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = call i8* @malloc(i64 %27)
  %29 = bitcast i8* %28 to double*
  %30 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %31 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %30, i32 0, i32 3
  store double* %29, double** %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = call i8* @malloc(i64 %33)
  %35 = bitcast i8* %34 to double*
  %36 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %37 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %36, i32 0, i32 4
  store double* %35, double** %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = call i8* @malloc(i64 %39)
  %41 = bitcast i8* %40 to double*
  %42 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %43 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %42, i32 0, i32 5
  store double* %41, double** %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = call i8* @malloc(i64 %45)
  %47 = bitcast i8* %46 to double*
  %48 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %49 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %48, i32 0, i32 6
  store double* %47, double** %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = call i8* @malloc(i64 %51)
  %53 = bitcast i8* %52 to double*
  %54 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %55 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %54, i32 0, i32 7
  store double* %53, double** %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = call i8* @malloc(i64 %57)
  %59 = bitcast i8* %58 to double*
  %60 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %61 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %60, i32 0, i32 8
  store double* %59, double** %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = call i8* @malloc(i64 %63)
  %65 = bitcast i8* %64 to double*
  %66 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %67 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %66, i32 0, i32 9
  store double* %65, double** %67, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = call i8* @malloc(i64 %69)
  %71 = bitcast i8* %70 to double*
  %72 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %73 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %72, i32 0, i32 10
  store double* %71, double** %73, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = call i8* @malloc(i64 %75)
  %77 = bitcast i8* %76 to double*
  %78 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %79 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %78, i32 0, i32 11
  store double* %77, double** %79, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = call i8* @malloc(i64 %81)
  %83 = bitcast i8* %82 to double*
  %84 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %85 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %84, i32 0, i32 12
  store double* %83, double** %85, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = call i8* @malloc(i64 %87)
  %89 = bitcast i8* %88 to double*
  %90 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %91 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %90, i32 0, i32 13
  store double* %89, double** %91, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = call i8* @malloc(i64 %93)
  %95 = bitcast i8* %94 to double*
  %96 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %97 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %96, i32 0, i32 14
  store double* %95, double** %97, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = call i8* @malloc(i64 %99)
  %101 = bitcast i8* %100 to double*
  %102 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %103 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %102, i32 0, i32 15
  store double* %101, double** %103, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = call i8* @malloc(i64 %105)
  %107 = bitcast i8* %106 to double*
  %108 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %109 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %108, i32 0, i32 16
  store double* %107, double** %109, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = call i8* @malloc(i64 %111)
  %113 = bitcast i8* %112 to double*
  %114 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %115 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %114, i32 0, i32 17
  store double* %113, double** %115, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = call i8* @malloc(i64 %117)
  %119 = bitcast i8* %118 to double*
  %120 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %121 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %120, i32 0, i32 18
  store double* %119, double** %121, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = call i8* @malloc(i64 %123)
  %125 = bitcast i8* %124 to double*
  %126 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %127 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %126, i32 0, i32 19
  store double* %125, double** %127, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = call i8* @malloc(i64 %129)
  %131 = bitcast i8* %130 to double*
  %132 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %133 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %132, i32 0, i32 20
  store double* %131, double** %133, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = call i8* @malloc(i64 %135)
  %137 = bitcast i8* %136 to double*
  %138 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %139 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %138, i32 0, i32 21
  store double* %137, double** %139, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = call i8* @malloc(i64 %141)
  %143 = bitcast i8* %142 to double*
  %144 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %145 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %144, i32 0, i32 22
  store double* %143, double** %145, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = call i8* @malloc(i64 %147)
  %149 = bitcast i8* %148 to double*
  %150 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %151 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %150, i32 0, i32 23
  store double* %149, double** %151, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = call i8* @malloc(i64 %153)
  %155 = bitcast i8* %154 to double*
  %156 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %157 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %156, i32 0, i32 24
  store double* %155, double** %157, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = call i8* @malloc(i64 %159)
  %161 = bitcast i8* %160 to double*
  %162 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %163 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %162, i32 0, i32 25
  store double* %161, double** %163, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = call i8* @malloc(i64 %165)
  %167 = bitcast i8* %166 to double*
  %168 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %169 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %168, i32 0, i32 26
  store double* %167, double** %169, align 8
  %170 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %171 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %170, i32 0, i32 26
  %172 = load double*, double** %171, align 8
  %173 = icmp eq double* %172, null
  br i1 %173, label %174, label %176

; <label>:174:                                    ; preds = %1
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  br label %176

; <label>:176:                                    ; preds = %174, %1
  ret void
}

; Function Attrs: nounwind
define void @init(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %5 = alloca %struct.Domain_s*, align 8
  %6 = alloca %struct.RadiationData_t*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double*, align 8
  %36 = alloca double*, align 8
  store %struct.Domain_s* %0, %struct.Domain_s** %5, align 8
  store %struct.RadiationData_t* %1, %struct.RadiationData_t** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %37 = load i32, i32* @imin, align 4
  %38 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %39 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @imax, align 4
  %41 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %42 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @jmin, align 4
  %44 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %45 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @jmax, align 4
  %47 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %48 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @kmin, align 4
  %50 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %51 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @kmax, align 4
  %53 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %54 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @jp, align 4
  %56 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %57 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %56, i32 0, i32 17
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @kp, align 4
  %59 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %60 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %59, i32 0, i32 18
  store i32 %58, i32* %60, align 4
  %61 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %62 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %61, i32 0, i32 0
  %63 = load double*, double** %62, align 8
  store double* %63, double** %10, align 8
  %64 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %65 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %64, i32 0, i32 1
  %66 = load double*, double** %65, align 8
  store double* %66, double** %11, align 8
  %67 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %68 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %67, i32 0, i32 2
  %69 = load double*, double** %68, align 8
  store double* %69, double** %12, align 8
  %70 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %71 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %70, i32 0, i32 3
  %72 = load double*, double** %71, align 8
  store double* %72, double** %13, align 8
  %73 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %74 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %73, i32 0, i32 4
  %75 = load double*, double** %74, align 8
  store double* %75, double** %14, align 8
  %76 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %77 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %76, i32 0, i32 5
  %78 = load double*, double** %77, align 8
  store double* %78, double** %15, align 8
  %79 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %80 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %79, i32 0, i32 6
  %81 = load double*, double** %80, align 8
  store double* %81, double** %16, align 8
  %82 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %83 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %82, i32 0, i32 7
  %84 = load double*, double** %83, align 8
  store double* %84, double** %17, align 8
  %85 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %86 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %85, i32 0, i32 8
  %87 = load double*, double** %86, align 8
  store double* %87, double** %18, align 8
  %88 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %89 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %88, i32 0, i32 9
  %90 = load double*, double** %89, align 8
  store double* %90, double** %19, align 8
  %91 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %92 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %91, i32 0, i32 10
  %93 = load double*, double** %92, align 8
  store double* %93, double** %20, align 8
  %94 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %95 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %94, i32 0, i32 11
  %96 = load double*, double** %95, align 8
  store double* %96, double** %21, align 8
  %97 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %98 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %97, i32 0, i32 12
  %99 = load double*, double** %98, align 8
  store double* %99, double** %22, align 8
  %100 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %101 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %100, i32 0, i32 13
  %102 = load double*, double** %101, align 8
  store double* %102, double** %23, align 8
  %103 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %104 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %103, i32 0, i32 14
  %105 = load double*, double** %104, align 8
  store double* %105, double** %24, align 8
  %106 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %107 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %106, i32 0, i32 15
  %108 = load double*, double** %107, align 8
  store double* %108, double** %25, align 8
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 16
  %111 = load double*, double** %110, align 8
  store double* %111, double** %26, align 8
  %112 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %113 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %112, i32 0, i32 17
  %114 = load double*, double** %113, align 8
  store double* %114, double** %27, align 8
  %115 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %116 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %115, i32 0, i32 18
  %117 = load double*, double** %116, align 8
  store double* %117, double** %28, align 8
  %118 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %119 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %118, i32 0, i32 19
  %120 = load double*, double** %119, align 8
  store double* %120, double** %29, align 8
  %121 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %122 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %121, i32 0, i32 20
  %123 = load double*, double** %122, align 8
  store double* %123, double** %30, align 8
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 21
  %126 = load double*, double** %125, align 8
  store double* %126, double** %31, align 8
  %127 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %128 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %127, i32 0, i32 22
  %129 = load double*, double** %128, align 8
  store double* %129, double** %32, align 8
  %130 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %131 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %130, i32 0, i32 23
  %132 = load double*, double** %131, align 8
  store double* %132, double** %33, align 8
  %133 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %134 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %133, i32 0, i32 24
  %135 = load double*, double** %134, align 8
  store double* %135, double** %34, align 8
  %136 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %137 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %136, i32 0, i32 25
  %138 = load double*, double** %137, align 8
  store double* %138, double** %35, align 8
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 26
  %141 = load double*, double** %140, align 8
  store double* %141, double** %36, align 8
  store i32 0, i32* %9, align 4
  br label %142

; <label>:142:                                    ; preds = %283, %4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @i_ub, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %286

; <label>:146:                                    ; preds = %142
  %147 = load double*, double** %8, align 8
  %148 = getelementptr inbounds double, double* %147, i32 1
  store double* %148, double** %8, align 8
  store double 0.000000e+00, double* %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sitofp i32 %149 to double
  %151 = load double*, double** %10, align 8
  %152 = getelementptr inbounds double, double* %151, i32 1
  store double* %152, double** %10, align 8
  store double %150, double* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  %155 = sitofp i32 %154 to double
  %156 = load double*, double** %11, align 8
  %157 = getelementptr inbounds double, double* %156, i32 1
  store double* %157, double** %11, align 8
  store double %155, double* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 2
  %160 = sitofp i32 %159 to double
  %161 = load double*, double** %12, align 8
  %162 = getelementptr inbounds double, double* %161, i32 1
  store double* %162, double** %12, align 8
  store double %160, double* %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 3
  %165 = sitofp i32 %164 to double
  %166 = load double*, double** %13, align 8
  %167 = getelementptr inbounds double, double* %166, i32 1
  store double* %167, double** %13, align 8
  store double %165, double* %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 4
  %170 = sitofp i32 %169 to double
  %171 = load double*, double** %14, align 8
  %172 = getelementptr inbounds double, double* %171, i32 1
  store double* %172, double** %14, align 8
  store double %170, double* %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 5
  %175 = sitofp i32 %174 to double
  %176 = load double*, double** %15, align 8
  %177 = getelementptr inbounds double, double* %176, i32 1
  store double* %177, double** %15, align 8
  store double %175, double* %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 6
  %180 = sitofp i32 %179 to double
  %181 = load double*, double** %16, align 8
  %182 = getelementptr inbounds double, double* %181, i32 1
  store double* %182, double** %16, align 8
  store double %180, double* %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 7
  %185 = sitofp i32 %184 to double
  %186 = load double*, double** %17, align 8
  %187 = getelementptr inbounds double, double* %186, i32 1
  store double* %187, double** %17, align 8
  store double %185, double* %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 8
  %190 = sitofp i32 %189 to double
  %191 = load double*, double** %18, align 8
  %192 = getelementptr inbounds double, double* %191, i32 1
  store double* %192, double** %18, align 8
  store double %190, double* %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 9
  %195 = sitofp i32 %194 to double
  %196 = load double*, double** %19, align 8
  %197 = getelementptr inbounds double, double* %196, i32 1
  store double* %197, double** %19, align 8
  store double %195, double* %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 10
  %200 = sitofp i32 %199 to double
  %201 = load double*, double** %20, align 8
  %202 = getelementptr inbounds double, double* %201, i32 1
  store double* %202, double** %20, align 8
  store double %200, double* %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 11
  %205 = sitofp i32 %204 to double
  %206 = load double*, double** %21, align 8
  %207 = getelementptr inbounds double, double* %206, i32 1
  store double* %207, double** %21, align 8
  store double %205, double* %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 12
  %210 = sitofp i32 %209 to double
  %211 = load double*, double** %22, align 8
  %212 = getelementptr inbounds double, double* %211, i32 1
  store double* %212, double** %22, align 8
  store double %210, double* %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 13
  %215 = sitofp i32 %214 to double
  %216 = load double*, double** %23, align 8
  %217 = getelementptr inbounds double, double* %216, i32 1
  store double* %217, double** %23, align 8
  store double %215, double* %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 14
  %220 = sitofp i32 %219 to double
  %221 = load double*, double** %24, align 8
  %222 = getelementptr inbounds double, double* %221, i32 1
  store double* %222, double** %24, align 8
  store double %220, double* %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 15
  %225 = sitofp i32 %224 to double
  %226 = load double*, double** %25, align 8
  %227 = getelementptr inbounds double, double* %226, i32 1
  store double* %227, double** %25, align 8
  store double %225, double* %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 16
  %230 = sitofp i32 %229 to double
  %231 = load double*, double** %26, align 8
  %232 = getelementptr inbounds double, double* %231, i32 1
  store double* %232, double** %26, align 8
  store double %230, double* %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 17
  %235 = sitofp i32 %234 to double
  %236 = load double*, double** %27, align 8
  %237 = getelementptr inbounds double, double* %236, i32 1
  store double* %237, double** %27, align 8
  store double %235, double* %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 18
  %240 = sitofp i32 %239 to double
  %241 = load double*, double** %28, align 8
  %242 = getelementptr inbounds double, double* %241, i32 1
  store double* %242, double** %28, align 8
  store double %240, double* %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 19
  %245 = sitofp i32 %244 to double
  %246 = load double*, double** %29, align 8
  %247 = getelementptr inbounds double, double* %246, i32 1
  store double* %247, double** %29, align 8
  store double %245, double* %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 20
  %250 = sitofp i32 %249 to double
  %251 = load double*, double** %30, align 8
  %252 = getelementptr inbounds double, double* %251, i32 1
  store double* %252, double** %30, align 8
  store double %250, double* %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 21
  %255 = sitofp i32 %254 to double
  %256 = load double*, double** %31, align 8
  %257 = getelementptr inbounds double, double* %256, i32 1
  store double* %257, double** %31, align 8
  store double %255, double* %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 22
  %260 = sitofp i32 %259 to double
  %261 = load double*, double** %32, align 8
  %262 = getelementptr inbounds double, double* %261, i32 1
  store double* %262, double** %32, align 8
  store double %260, double* %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %263, 23
  %265 = sitofp i32 %264 to double
  %266 = load double*, double** %33, align 8
  %267 = getelementptr inbounds double, double* %266, i32 1
  store double* %267, double** %33, align 8
  store double %265, double* %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 24
  %270 = sitofp i32 %269 to double
  %271 = load double*, double** %34, align 8
  %272 = getelementptr inbounds double, double* %271, i32 1
  store double* %272, double** %34, align 8
  store double %270, double* %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 25
  %275 = sitofp i32 %274 to double
  %276 = load double*, double** %35, align 8
  %277 = getelementptr inbounds double, double* %276, i32 1
  store double* %277, double** %35, align 8
  store double %275, double* %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 26
  %280 = sitofp i32 %279 to double
  %281 = load double*, double** %36, align 8
  %282 = getelementptr inbounds double, double* %281, i32 1
  store double* %282, double** %36, align 8
  store double %280, double* %281, align 8
  br label %283

; <label>:283:                                    ; preds = %146
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %142

; <label>:286:                                    ; preds = %142
  store i32 0, i32* %9, align 4
  br label %287

; <label>:287:                                    ; preds = %297, %286
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* @x_size, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %300

; <label>:291:                                    ; preds = %287
  %292 = load i32, i32* %9, align 4
  %293 = sitofp i32 %292 to double
  %294 = fmul double 2.000000e+00, %293
  %295 = load double*, double** %7, align 8
  %296 = getelementptr inbounds double, double* %295, i32 1
  store double* %296, double** %7, align 8
  store double %294, double* %295, align 8
  br label %297

; <label>:297:                                    ; preds = %291
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %287

; <label>:300:                                    ; preds = %287
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0, !0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
