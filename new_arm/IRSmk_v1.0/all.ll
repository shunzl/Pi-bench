; ModuleID = 'all.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }
%struct.timeval = type { i32, i32 }
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
  call arm_aapcscc void @readInput()
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

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc i32 @gettimeofday(%struct.timeval*, i8*) #1

declare arm_aapcscc i32 @clock() #1

; Function Attrs: nounwind
define arm_aapcscc void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %5 = alloca %struct.Domain_s*, align 4
  %6 = alloca %struct.RadiationData_t*, align 4
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %9 = alloca i8*, align 4
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
  %22 = alloca double*, align 4
  %23 = alloca double*, align 4
  %24 = alloca double*, align 4
  %25 = alloca double*, align 4
  %26 = alloca double*, align 4
  %27 = alloca double*, align 4
  %28 = alloca double*, align 4
  %29 = alloca double*, align 4
  %30 = alloca double*, align 4
  %31 = alloca double*, align 4
  %32 = alloca double*, align 4
  %33 = alloca double*, align 4
  %34 = alloca double*, align 4
  %35 = alloca double*, align 4
  %36 = alloca double*, align 4
  %37 = alloca double*, align 4
  %38 = alloca double*, align 4
  %39 = alloca double*, align 4
  %40 = alloca double*, align 4
  %41 = alloca double*, align 4
  %42 = alloca double*, align 4
  %43 = alloca double*, align 4
  %44 = alloca double*, align 4
  %45 = alloca double*, align 4
  %46 = alloca double*, align 4
  %47 = alloca double*, align 4
  %48 = alloca double*, align 4
  %49 = alloca double*, align 4
  %50 = alloca double*, align 4
  %51 = alloca double*, align 4
  %52 = alloca double*, align 4
  %53 = alloca double*, align 4
  %54 = alloca double*, align 4
  %55 = alloca double*, align 4
  %56 = alloca double*, align 4
  %57 = alloca double*, align 4
  %58 = alloca double*, align 4
  %59 = alloca double*, align 4
  %60 = alloca double*, align 4
  %61 = alloca double*, align 4
  %62 = alloca double*, align 4
  %63 = alloca double*, align 4
  %64 = alloca double*, align 4
  %65 = alloca double*, align 4
  %66 = alloca double*, align 4
  %67 = alloca double*, align 4
  %68 = alloca double*, align 4
  %69 = alloca double*, align 4
  %70 = alloca double*, align 4
  %71 = alloca double*, align 4
  %72 = alloca double*, align 4
  %73 = alloca double*, align 4
  %74 = alloca double*, align 4
  %75 = alloca double*, align 4
  store %struct.Domain_s* %0, %struct.Domain_s** %5, align 4
  store %struct.RadiationData_t* %1, %struct.RadiationData_t** %6, align 4
  store double* %2, double** %7, align 4
  store double* %3, double** %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %9, align 4
  %76 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %77 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %80 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %83 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %86 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %89 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %18, align 4
  %91 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %92 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %19, align 4
  %94 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %95 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %94, i32 0, i32 17
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %98 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %97, i32 0, i32 18
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %21, align 4
  %100 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %101 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %100, i32 0, i32 0
  %102 = load double*, double** %101, align 4
  store double* %102, double** %22, align 4
  %103 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %104 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %103, i32 0, i32 1
  %105 = load double*, double** %104, align 4
  store double* %105, double** %23, align 4
  %106 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %107 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %106, i32 0, i32 2
  %108 = load double*, double** %107, align 4
  store double* %108, double** %24, align 4
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 3
  %111 = load double*, double** %110, align 4
  store double* %111, double** %25, align 4
  %112 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %113 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %112, i32 0, i32 4
  %114 = load double*, double** %113, align 4
  store double* %114, double** %26, align 4
  %115 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %116 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %115, i32 0, i32 5
  %117 = load double*, double** %116, align 4
  store double* %117, double** %27, align 4
  %118 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %119 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %118, i32 0, i32 6
  %120 = load double*, double** %119, align 4
  store double* %120, double** %28, align 4
  %121 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %122 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %121, i32 0, i32 7
  %123 = load double*, double** %122, align 4
  store double* %123, double** %29, align 4
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 8
  %126 = load double*, double** %125, align 4
  store double* %126, double** %30, align 4
  %127 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %128 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %127, i32 0, i32 9
  %129 = load double*, double** %128, align 4
  store double* %129, double** %31, align 4
  %130 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %131 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %130, i32 0, i32 10
  %132 = load double*, double** %131, align 4
  store double* %132, double** %32, align 4
  %133 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %134 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %133, i32 0, i32 11
  %135 = load double*, double** %134, align 4
  store double* %135, double** %33, align 4
  %136 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %137 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %136, i32 0, i32 12
  %138 = load double*, double** %137, align 4
  store double* %138, double** %34, align 4
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 13
  %141 = load double*, double** %140, align 4
  store double* %141, double** %35, align 4
  %142 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %143 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %142, i32 0, i32 14
  %144 = load double*, double** %143, align 4
  store double* %144, double** %36, align 4
  %145 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %146 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %145, i32 0, i32 15
  %147 = load double*, double** %146, align 4
  store double* %147, double** %37, align 4
  %148 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %149 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %148, i32 0, i32 16
  %150 = load double*, double** %149, align 4
  store double* %150, double** %38, align 4
  %151 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %152 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %151, i32 0, i32 17
  %153 = load double*, double** %152, align 4
  store double* %153, double** %39, align 4
  %154 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %155 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %154, i32 0, i32 18
  %156 = load double*, double** %155, align 4
  store double* %156, double** %40, align 4
  %157 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %158 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %157, i32 0, i32 19
  %159 = load double*, double** %158, align 4
  store double* %159, double** %41, align 4
  %160 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %161 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %160, i32 0, i32 20
  %162 = load double*, double** %161, align 4
  store double* %162, double** %42, align 4
  %163 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %164 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %163, i32 0, i32 21
  %165 = load double*, double** %164, align 4
  store double* %165, double** %43, align 4
  %166 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %167 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %166, i32 0, i32 22
  %168 = load double*, double** %167, align 4
  store double* %168, double** %44, align 4
  %169 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %170 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %169, i32 0, i32 23
  %171 = load double*, double** %170, align 4
  store double* %171, double** %45, align 4
  %172 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %173 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %172, i32 0, i32 24
  %174 = load double*, double** %173, align 4
  store double* %174, double** %46, align 4
  %175 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %176 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %175, i32 0, i32 25
  %177 = load double*, double** %176, align 4
  store double* %177, double** %47, align 4
  %178 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %179 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %178, i32 0, i32 26
  %180 = load double*, double** %179, align 4
  store double* %180, double** %48, align 4
  %181 = load double*, double** %7, align 4
  %182 = load i32, i32* %21, align 4
  %183 = sub i32 0, %182
  %184 = getelementptr inbounds double, double* %181, i32 %183
  %185 = load i32, i32* %20, align 4
  %186 = sub i32 0, %185
  %187 = getelementptr inbounds double, double* %184, i32 %186
  %188 = getelementptr inbounds double, double* %187, i32 -1
  store double* %188, double** %49, align 4
  %189 = load double*, double** %7, align 4
  %190 = load i32, i32* %21, align 4
  %191 = sub i32 0, %190
  %192 = getelementptr inbounds double, double* %189, i32 %191
  %193 = load i32, i32* %20, align 4
  %194 = sub i32 0, %193
  %195 = getelementptr inbounds double, double* %192, i32 %194
  store double* %195, double** %50, align 4
  %196 = load double*, double** %7, align 4
  %197 = load i32, i32* %21, align 4
  %198 = sub i32 0, %197
  %199 = getelementptr inbounds double, double* %196, i32 %198
  %200 = load i32, i32* %20, align 4
  %201 = sub i32 0, %200
  %202 = getelementptr inbounds double, double* %199, i32 %201
  %203 = getelementptr inbounds double, double* %202, i32 1
  store double* %203, double** %51, align 4
  %204 = load double*, double** %7, align 4
  %205 = load i32, i32* %21, align 4
  %206 = sub i32 0, %205
  %207 = getelementptr inbounds double, double* %204, i32 %206
  %208 = getelementptr inbounds double, double* %207, i32 -1
  store double* %208, double** %52, align 4
  %209 = load double*, double** %7, align 4
  %210 = load i32, i32* %21, align 4
  %211 = sub i32 0, %210
  %212 = getelementptr inbounds double, double* %209, i32 %211
  store double* %212, double** %53, align 4
  %213 = load double*, double** %7, align 4
  %214 = load i32, i32* %21, align 4
  %215 = sub i32 0, %214
  %216 = getelementptr inbounds double, double* %213, i32 %215
  %217 = getelementptr inbounds double, double* %216, i32 1
  store double* %217, double** %54, align 4
  %218 = load double*, double** %7, align 4
  %219 = load i32, i32* %21, align 4
  %220 = sub i32 0, %219
  %221 = getelementptr inbounds double, double* %218, i32 %220
  %222 = load i32, i32* %20, align 4
  %223 = getelementptr inbounds double, double* %221, i32 %222
  %224 = getelementptr inbounds double, double* %223, i32 -1
  store double* %224, double** %55, align 4
  %225 = load double*, double** %7, align 4
  %226 = load i32, i32* %21, align 4
  %227 = sub i32 0, %226
  %228 = getelementptr inbounds double, double* %225, i32 %227
  %229 = load i32, i32* %20, align 4
  %230 = getelementptr inbounds double, double* %228, i32 %229
  store double* %230, double** %56, align 4
  %231 = load double*, double** %7, align 4
  %232 = load i32, i32* %21, align 4
  %233 = sub i32 0, %232
  %234 = getelementptr inbounds double, double* %231, i32 %233
  %235 = load i32, i32* %20, align 4
  %236 = getelementptr inbounds double, double* %234, i32 %235
  %237 = getelementptr inbounds double, double* %236, i32 1
  store double* %237, double** %57, align 4
  %238 = load double*, double** %7, align 4
  %239 = load i32, i32* %20, align 4
  %240 = sub i32 0, %239
  %241 = getelementptr inbounds double, double* %238, i32 %240
  %242 = getelementptr inbounds double, double* %241, i32 -1
  store double* %242, double** %58, align 4
  %243 = load double*, double** %7, align 4
  %244 = load i32, i32* %20, align 4
  %245 = sub i32 0, %244
  %246 = getelementptr inbounds double, double* %243, i32 %245
  store double* %246, double** %59, align 4
  %247 = load double*, double** %7, align 4
  %248 = load i32, i32* %20, align 4
  %249 = sub i32 0, %248
  %250 = getelementptr inbounds double, double* %247, i32 %249
  %251 = getelementptr inbounds double, double* %250, i32 1
  store double* %251, double** %60, align 4
  %252 = load double*, double** %7, align 4
  %253 = getelementptr inbounds double, double* %252, i32 -1
  store double* %253, double** %61, align 4
  %254 = load double*, double** %7, align 4
  store double* %254, double** %62, align 4
  %255 = load double*, double** %7, align 4
  %256 = getelementptr inbounds double, double* %255, i32 1
  store double* %256, double** %63, align 4
  %257 = load double*, double** %7, align 4
  %258 = load i32, i32* %20, align 4
  %259 = getelementptr inbounds double, double* %257, i32 %258
  %260 = getelementptr inbounds double, double* %259, i32 -1
  store double* %260, double** %64, align 4
  %261 = load double*, double** %7, align 4
  %262 = load i32, i32* %20, align 4
  %263 = getelementptr inbounds double, double* %261, i32 %262
  store double* %263, double** %65, align 4
  %264 = load double*, double** %7, align 4
  %265 = load i32, i32* %20, align 4
  %266 = getelementptr inbounds double, double* %264, i32 %265
  %267 = getelementptr inbounds double, double* %266, i32 1
  store double* %267, double** %66, align 4
  %268 = load double*, double** %7, align 4
  %269 = load i32, i32* %21, align 4
  %270 = getelementptr inbounds double, double* %268, i32 %269
  %271 = load i32, i32* %20, align 4
  %272 = sub i32 0, %271
  %273 = getelementptr inbounds double, double* %270, i32 %272
  %274 = getelementptr inbounds double, double* %273, i32 -1
  store double* %274, double** %67, align 4
  %275 = load double*, double** %7, align 4
  %276 = load i32, i32* %21, align 4
  %277 = getelementptr inbounds double, double* %275, i32 %276
  %278 = load i32, i32* %20, align 4
  %279 = sub i32 0, %278
  %280 = getelementptr inbounds double, double* %277, i32 %279
  store double* %280, double** %68, align 4
  %281 = load double*, double** %7, align 4
  %282 = load i32, i32* %21, align 4
  %283 = getelementptr inbounds double, double* %281, i32 %282
  %284 = load i32, i32* %20, align 4
  %285 = sub i32 0, %284
  %286 = getelementptr inbounds double, double* %283, i32 %285
  %287 = getelementptr inbounds double, double* %286, i32 1
  store double* %287, double** %69, align 4
  %288 = load double*, double** %7, align 4
  %289 = load i32, i32* %21, align 4
  %290 = getelementptr inbounds double, double* %288, i32 %289
  %291 = getelementptr inbounds double, double* %290, i32 -1
  store double* %291, double** %70, align 4
  %292 = load double*, double** %7, align 4
  %293 = load i32, i32* %21, align 4
  %294 = getelementptr inbounds double, double* %292, i32 %293
  store double* %294, double** %71, align 4
  %295 = load double*, double** %7, align 4
  %296 = load i32, i32* %21, align 4
  %297 = getelementptr inbounds double, double* %295, i32 %296
  %298 = getelementptr inbounds double, double* %297, i32 1
  store double* %298, double** %72, align 4
  %299 = load double*, double** %7, align 4
  %300 = load i32, i32* %21, align 4
  %301 = getelementptr inbounds double, double* %299, i32 %300
  %302 = load i32, i32* %20, align 4
  %303 = getelementptr inbounds double, double* %301, i32 %302
  %304 = getelementptr inbounds double, double* %303, i32 -1
  store double* %304, double** %73, align 4
  %305 = load double*, double** %7, align 4
  %306 = load i32, i32* %21, align 4
  %307 = getelementptr inbounds double, double* %305, i32 %306
  %308 = load i32, i32* %20, align 4
  %309 = getelementptr inbounds double, double* %307, i32 %308
  store double* %309, double** %74, align 4
  %310 = load double*, double** %7, align 4
  %311 = load i32, i32* %21, align 4
  %312 = getelementptr inbounds double, double* %310, i32 %311
  %313 = load i32, i32* %20, align 4
  %314 = getelementptr inbounds double, double* %312, i32 %313
  %315 = getelementptr inbounds double, double* %314, i32 1
  store double* %315, double** %75, align 4
  %316 = load i32, i32* %18, align 4
  store i32 %316, i32* %13, align 4
  br label %317

; <label>:317:                                    ; preds = %623, %4
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %19, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %626

; <label>:321:                                    ; preds = %317
  %322 = load i32, i32* %16, align 4
  store i32 %322, i32* %12, align 4
  br label %323

; <label>:323:                                    ; preds = %619, %321
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* %17, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %622

; <label>:327:                                    ; preds = %323
  %328 = load i32, i32* %14, align 4
  store i32 %328, i32* %11, align 4
  br label %329

; <label>:329:                                    ; preds = %615, %327
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %15, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %618

; <label>:333:                                    ; preds = %329
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %12, align 4
  %336 = load i32, i32* %20, align 4
  %337 = mul nsw i32 %335, %336
  %338 = add nsw i32 %334, %337
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* %21, align 4
  %341 = mul nsw i32 %339, %340
  %342 = add nsw i32 %338, %341
  store i32 %342, i32* %10, align 4
  %343 = load double*, double** %22, align 4
  %344 = load i32, i32* %10, align 4
  %345 = getelementptr inbounds double, double* %343, i32 %344
  %346 = load double, double* %345, align 8
  %347 = load double*, double** %49, align 4
  %348 = load i32, i32* %10, align 4
  %349 = getelementptr inbounds double, double* %347, i32 %348
  %350 = load double, double* %349, align 8
  %351 = fmul double %346, %350
  %352 = load double*, double** %23, align 4
  %353 = load i32, i32* %10, align 4
  %354 = getelementptr inbounds double, double* %352, i32 %353
  %355 = load double, double* %354, align 8
  %356 = load double*, double** %50, align 4
  %357 = load i32, i32* %10, align 4
  %358 = getelementptr inbounds double, double* %356, i32 %357
  %359 = load double, double* %358, align 8
  %360 = fmul double %355, %359
  %361 = fadd double %351, %360
  %362 = load double*, double** %24, align 4
  %363 = load i32, i32* %10, align 4
  %364 = getelementptr inbounds double, double* %362, i32 %363
  %365 = load double, double* %364, align 8
  %366 = load double*, double** %51, align 4
  %367 = load i32, i32* %10, align 4
  %368 = getelementptr inbounds double, double* %366, i32 %367
  %369 = load double, double* %368, align 8
  %370 = fmul double %365, %369
  %371 = fadd double %361, %370
  %372 = load double*, double** %25, align 4
  %373 = load i32, i32* %10, align 4
  %374 = getelementptr inbounds double, double* %372, i32 %373
  %375 = load double, double* %374, align 8
  %376 = load double*, double** %52, align 4
  %377 = load i32, i32* %10, align 4
  %378 = getelementptr inbounds double, double* %376, i32 %377
  %379 = load double, double* %378, align 8
  %380 = fmul double %375, %379
  %381 = fadd double %371, %380
  %382 = load double*, double** %26, align 4
  %383 = load i32, i32* %10, align 4
  %384 = getelementptr inbounds double, double* %382, i32 %383
  %385 = load double, double* %384, align 8
  %386 = load double*, double** %53, align 4
  %387 = load i32, i32* %10, align 4
  %388 = getelementptr inbounds double, double* %386, i32 %387
  %389 = load double, double* %388, align 8
  %390 = fmul double %385, %389
  %391 = fadd double %381, %390
  %392 = load double*, double** %27, align 4
  %393 = load i32, i32* %10, align 4
  %394 = getelementptr inbounds double, double* %392, i32 %393
  %395 = load double, double* %394, align 8
  %396 = load double*, double** %54, align 4
  %397 = load i32, i32* %10, align 4
  %398 = getelementptr inbounds double, double* %396, i32 %397
  %399 = load double, double* %398, align 8
  %400 = fmul double %395, %399
  %401 = fadd double %391, %400
  %402 = load double*, double** %28, align 4
  %403 = load i32, i32* %10, align 4
  %404 = getelementptr inbounds double, double* %402, i32 %403
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %55, align 4
  %407 = load i32, i32* %10, align 4
  %408 = getelementptr inbounds double, double* %406, i32 %407
  %409 = load double, double* %408, align 8
  %410 = fmul double %405, %409
  %411 = fadd double %401, %410
  %412 = load double*, double** %29, align 4
  %413 = load i32, i32* %10, align 4
  %414 = getelementptr inbounds double, double* %412, i32 %413
  %415 = load double, double* %414, align 8
  %416 = load double*, double** %56, align 4
  %417 = load i32, i32* %10, align 4
  %418 = getelementptr inbounds double, double* %416, i32 %417
  %419 = load double, double* %418, align 8
  %420 = fmul double %415, %419
  %421 = fadd double %411, %420
  %422 = load double*, double** %30, align 4
  %423 = load i32, i32* %10, align 4
  %424 = getelementptr inbounds double, double* %422, i32 %423
  %425 = load double, double* %424, align 8
  %426 = load double*, double** %57, align 4
  %427 = load i32, i32* %10, align 4
  %428 = getelementptr inbounds double, double* %426, i32 %427
  %429 = load double, double* %428, align 8
  %430 = fmul double %425, %429
  %431 = fadd double %421, %430
  %432 = load double*, double** %31, align 4
  %433 = load i32, i32* %10, align 4
  %434 = getelementptr inbounds double, double* %432, i32 %433
  %435 = load double, double* %434, align 8
  %436 = load double*, double** %58, align 4
  %437 = load i32, i32* %10, align 4
  %438 = getelementptr inbounds double, double* %436, i32 %437
  %439 = load double, double* %438, align 8
  %440 = fmul double %435, %439
  %441 = fadd double %431, %440
  %442 = load double*, double** %32, align 4
  %443 = load i32, i32* %10, align 4
  %444 = getelementptr inbounds double, double* %442, i32 %443
  %445 = load double, double* %444, align 8
  %446 = load double*, double** %59, align 4
  %447 = load i32, i32* %10, align 4
  %448 = getelementptr inbounds double, double* %446, i32 %447
  %449 = load double, double* %448, align 8
  %450 = fmul double %445, %449
  %451 = fadd double %441, %450
  %452 = load double*, double** %33, align 4
  %453 = load i32, i32* %10, align 4
  %454 = getelementptr inbounds double, double* %452, i32 %453
  %455 = load double, double* %454, align 8
  %456 = load double*, double** %60, align 4
  %457 = load i32, i32* %10, align 4
  %458 = getelementptr inbounds double, double* %456, i32 %457
  %459 = load double, double* %458, align 8
  %460 = fmul double %455, %459
  %461 = fadd double %451, %460
  %462 = load double*, double** %34, align 4
  %463 = load i32, i32* %10, align 4
  %464 = getelementptr inbounds double, double* %462, i32 %463
  %465 = load double, double* %464, align 8
  %466 = load double*, double** %61, align 4
  %467 = load i32, i32* %10, align 4
  %468 = getelementptr inbounds double, double* %466, i32 %467
  %469 = load double, double* %468, align 8
  %470 = fmul double %465, %469
  %471 = fadd double %461, %470
  %472 = load double*, double** %35, align 4
  %473 = load i32, i32* %10, align 4
  %474 = getelementptr inbounds double, double* %472, i32 %473
  %475 = load double, double* %474, align 8
  %476 = load double*, double** %62, align 4
  %477 = load i32, i32* %10, align 4
  %478 = getelementptr inbounds double, double* %476, i32 %477
  %479 = load double, double* %478, align 8
  %480 = fmul double %475, %479
  %481 = fadd double %471, %480
  %482 = load double*, double** %36, align 4
  %483 = load i32, i32* %10, align 4
  %484 = getelementptr inbounds double, double* %482, i32 %483
  %485 = load double, double* %484, align 8
  %486 = load double*, double** %63, align 4
  %487 = load i32, i32* %10, align 4
  %488 = getelementptr inbounds double, double* %486, i32 %487
  %489 = load double, double* %488, align 8
  %490 = fmul double %485, %489
  %491 = fadd double %481, %490
  %492 = load double*, double** %37, align 4
  %493 = load i32, i32* %10, align 4
  %494 = getelementptr inbounds double, double* %492, i32 %493
  %495 = load double, double* %494, align 8
  %496 = load double*, double** %64, align 4
  %497 = load i32, i32* %10, align 4
  %498 = getelementptr inbounds double, double* %496, i32 %497
  %499 = load double, double* %498, align 8
  %500 = fmul double %495, %499
  %501 = fadd double %491, %500
  %502 = load double*, double** %38, align 4
  %503 = load i32, i32* %10, align 4
  %504 = getelementptr inbounds double, double* %502, i32 %503
  %505 = load double, double* %504, align 8
  %506 = load double*, double** %65, align 4
  %507 = load i32, i32* %10, align 4
  %508 = getelementptr inbounds double, double* %506, i32 %507
  %509 = load double, double* %508, align 8
  %510 = fmul double %505, %509
  %511 = fadd double %501, %510
  %512 = load double*, double** %39, align 4
  %513 = load i32, i32* %10, align 4
  %514 = getelementptr inbounds double, double* %512, i32 %513
  %515 = load double, double* %514, align 8
  %516 = load double*, double** %66, align 4
  %517 = load i32, i32* %10, align 4
  %518 = getelementptr inbounds double, double* %516, i32 %517
  %519 = load double, double* %518, align 8
  %520 = fmul double %515, %519
  %521 = fadd double %511, %520
  %522 = load double*, double** %40, align 4
  %523 = load i32, i32* %10, align 4
  %524 = getelementptr inbounds double, double* %522, i32 %523
  %525 = load double, double* %524, align 8
  %526 = load double*, double** %67, align 4
  %527 = load i32, i32* %10, align 4
  %528 = getelementptr inbounds double, double* %526, i32 %527
  %529 = load double, double* %528, align 8
  %530 = fmul double %525, %529
  %531 = fadd double %521, %530
  %532 = load double*, double** %41, align 4
  %533 = load i32, i32* %10, align 4
  %534 = getelementptr inbounds double, double* %532, i32 %533
  %535 = load double, double* %534, align 8
  %536 = load double*, double** %68, align 4
  %537 = load i32, i32* %10, align 4
  %538 = getelementptr inbounds double, double* %536, i32 %537
  %539 = load double, double* %538, align 8
  %540 = fmul double %535, %539
  %541 = fadd double %531, %540
  %542 = load double*, double** %42, align 4
  %543 = load i32, i32* %10, align 4
  %544 = getelementptr inbounds double, double* %542, i32 %543
  %545 = load double, double* %544, align 8
  %546 = load double*, double** %69, align 4
  %547 = load i32, i32* %10, align 4
  %548 = getelementptr inbounds double, double* %546, i32 %547
  %549 = load double, double* %548, align 8
  %550 = fmul double %545, %549
  %551 = fadd double %541, %550
  %552 = load double*, double** %43, align 4
  %553 = load i32, i32* %10, align 4
  %554 = getelementptr inbounds double, double* %552, i32 %553
  %555 = load double, double* %554, align 8
  %556 = load double*, double** %70, align 4
  %557 = load i32, i32* %10, align 4
  %558 = getelementptr inbounds double, double* %556, i32 %557
  %559 = load double, double* %558, align 8
  %560 = fmul double %555, %559
  %561 = fadd double %551, %560
  %562 = load double*, double** %44, align 4
  %563 = load i32, i32* %10, align 4
  %564 = getelementptr inbounds double, double* %562, i32 %563
  %565 = load double, double* %564, align 8
  %566 = load double*, double** %71, align 4
  %567 = load i32, i32* %10, align 4
  %568 = getelementptr inbounds double, double* %566, i32 %567
  %569 = load double, double* %568, align 8
  %570 = fmul double %565, %569
  %571 = fadd double %561, %570
  %572 = load double*, double** %45, align 4
  %573 = load i32, i32* %10, align 4
  %574 = getelementptr inbounds double, double* %572, i32 %573
  %575 = load double, double* %574, align 8
  %576 = load double*, double** %72, align 4
  %577 = load i32, i32* %10, align 4
  %578 = getelementptr inbounds double, double* %576, i32 %577
  %579 = load double, double* %578, align 8
  %580 = fmul double %575, %579
  %581 = fadd double %571, %580
  %582 = load double*, double** %46, align 4
  %583 = load i32, i32* %10, align 4
  %584 = getelementptr inbounds double, double* %582, i32 %583
  %585 = load double, double* %584, align 8
  %586 = load double*, double** %73, align 4
  %587 = load i32, i32* %10, align 4
  %588 = getelementptr inbounds double, double* %586, i32 %587
  %589 = load double, double* %588, align 8
  %590 = fmul double %585, %589
  %591 = fadd double %581, %590
  %592 = load double*, double** %47, align 4
  %593 = load i32, i32* %10, align 4
  %594 = getelementptr inbounds double, double* %592, i32 %593
  %595 = load double, double* %594, align 8
  %596 = load double*, double** %74, align 4
  %597 = load i32, i32* %10, align 4
  %598 = getelementptr inbounds double, double* %596, i32 %597
  %599 = load double, double* %598, align 8
  %600 = fmul double %595, %599
  %601 = fadd double %591, %600
  %602 = load double*, double** %48, align 4
  %603 = load i32, i32* %10, align 4
  %604 = getelementptr inbounds double, double* %602, i32 %603
  %605 = load double, double* %604, align 8
  %606 = load double*, double** %75, align 4
  %607 = load i32, i32* %10, align 4
  %608 = getelementptr inbounds double, double* %606, i32 %607
  %609 = load double, double* %608, align 8
  %610 = fmul double %605, %609
  %611 = fadd double %601, %610
  %612 = load double*, double** %8, align 4
  %613 = load i32, i32* %10, align 4
  %614 = getelementptr inbounds double, double* %612, i32 %613
  store double %611, double* %614, align 8
  br label %615

; <label>:615:                                    ; preds = %333
  %616 = load i32, i32* %11, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %11, align 4
  br label %329

; <label>:618:                                    ; preds = %329
  br label %619

; <label>:619:                                    ; preds = %618
  %620 = load i32, i32* %12, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %12, align 4
  br label %323

; <label>:622:                                    ; preds = %323
  br label %623

; <label>:623:                                    ; preds = %622
  %624 = load i32, i32* %13, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %13, align 4
  br label %317

; <label>:626:                                    ; preds = %317
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @readInput() #0 {
  %1 = alloca %struct._IO_FILE*, align 4
  %2 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.9, i32 0, i32 0))
  store %struct._IO_FILE* %2, %struct._IO_FILE** %1, align 4
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %0
  %5 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.10, i32 0, i32 0))
  %6 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3.11, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #3
  unreachable

; <label>:7:                                      ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 4
  %9 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4.12, i32 0, i32 0), i32* @kmin, i32* @kmax, i32* @jmin, i32* @jmax, i32* @imin, i32* @imax, i32* @kp, i32* @jp)
  %10 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.13, i32 0, i32 0))
  %11 = load i32, i32* @kmin, align 4
  %12 = load i32, i32* @kmax, align 4
  %13 = load i32, i32* @jmin, align 4
  %14 = load i32, i32* @jmax, align 4
  %15 = load i32, i32* @imin, align 4
  %16 = load i32, i32* @imax, align 4
  %17 = load i32, i32* @kp, align 4
  %18 = load i32, i32* @jp, align 4
  %19 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i32 0, i32 0), i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
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
  %50 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.10, i32 0, i32 0))
  %51 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #3
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
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8.14, i32 0, i32 0))
  %62 = load i32, i32* @i_lb, align 4
  %63 = load i32, i32* @i_ub, align 4
  %64 = load i32, i32* @x_size, align 4
  %65 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 4
  %67 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %66)
  ret void
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare arm_aapcscc void @exit(i32) #2

declare arm_aapcscc i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare arm_aapcscc i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
define arm_aapcscc void @allocMem(%struct.RadiationData_t*) #0 {
  %2 = alloca %struct.RadiationData_t*, align 4
  %3 = alloca i32, align 4
  store %struct.RadiationData_t* %0, %struct.RadiationData_t** %2, align 4
  %4 = load i32, i32* @i_ub, align 4
  %5 = mul i32 %4, 8
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call arm_aapcscc i8* @malloc(i32 %6)
  %8 = bitcast i8* %7 to double*
  %9 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %10 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %9, i32 0, i32 0
  store double* %8, double** %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call arm_aapcscc i8* @malloc(i32 %11)
  %13 = bitcast i8* %12 to double*
  %14 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %15 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %14, i32 0, i32 1
  store double* %13, double** %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call arm_aapcscc i8* @malloc(i32 %16)
  %18 = bitcast i8* %17 to double*
  %19 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %20 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %19, i32 0, i32 2
  store double* %18, double** %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call arm_aapcscc i8* @malloc(i32 %21)
  %23 = bitcast i8* %22 to double*
  %24 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %25 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %24, i32 0, i32 3
  store double* %23, double** %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call arm_aapcscc i8* @malloc(i32 %26)
  %28 = bitcast i8* %27 to double*
  %29 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %30 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %29, i32 0, i32 4
  store double* %28, double** %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call arm_aapcscc i8* @malloc(i32 %31)
  %33 = bitcast i8* %32 to double*
  %34 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %35 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %34, i32 0, i32 5
  store double* %33, double** %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call arm_aapcscc i8* @malloc(i32 %36)
  %38 = bitcast i8* %37 to double*
  %39 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %40 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %39, i32 0, i32 6
  store double* %38, double** %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call arm_aapcscc i8* @malloc(i32 %41)
  %43 = bitcast i8* %42 to double*
  %44 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %45 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %44, i32 0, i32 7
  store double* %43, double** %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call arm_aapcscc i8* @malloc(i32 %46)
  %48 = bitcast i8* %47 to double*
  %49 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %50 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %49, i32 0, i32 8
  store double* %48, double** %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call arm_aapcscc i8* @malloc(i32 %51)
  %53 = bitcast i8* %52 to double*
  %54 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %55 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %54, i32 0, i32 9
  store double* %53, double** %55, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call arm_aapcscc i8* @malloc(i32 %56)
  %58 = bitcast i8* %57 to double*
  %59 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %60 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %59, i32 0, i32 10
  store double* %58, double** %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call arm_aapcscc i8* @malloc(i32 %61)
  %63 = bitcast i8* %62 to double*
  %64 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %65 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %64, i32 0, i32 11
  store double* %63, double** %65, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call arm_aapcscc i8* @malloc(i32 %66)
  %68 = bitcast i8* %67 to double*
  %69 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %70 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %69, i32 0, i32 12
  store double* %68, double** %70, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call arm_aapcscc i8* @malloc(i32 %71)
  %73 = bitcast i8* %72 to double*
  %74 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %75 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %74, i32 0, i32 13
  store double* %73, double** %75, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call arm_aapcscc i8* @malloc(i32 %76)
  %78 = bitcast i8* %77 to double*
  %79 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %80 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %79, i32 0, i32 14
  store double* %78, double** %80, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call arm_aapcscc i8* @malloc(i32 %81)
  %83 = bitcast i8* %82 to double*
  %84 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %85 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %84, i32 0, i32 15
  store double* %83, double** %85, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call arm_aapcscc i8* @malloc(i32 %86)
  %88 = bitcast i8* %87 to double*
  %89 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %90 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %89, i32 0, i32 16
  store double* %88, double** %90, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call arm_aapcscc i8* @malloc(i32 %91)
  %93 = bitcast i8* %92 to double*
  %94 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %95 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %94, i32 0, i32 17
  store double* %93, double** %95, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call arm_aapcscc i8* @malloc(i32 %96)
  %98 = bitcast i8* %97 to double*
  %99 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %100 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %99, i32 0, i32 18
  store double* %98, double** %100, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call arm_aapcscc i8* @malloc(i32 %101)
  %103 = bitcast i8* %102 to double*
  %104 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %105 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %104, i32 0, i32 19
  store double* %103, double** %105, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call arm_aapcscc i8* @malloc(i32 %106)
  %108 = bitcast i8* %107 to double*
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 20
  store double* %108, double** %110, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call arm_aapcscc i8* @malloc(i32 %111)
  %113 = bitcast i8* %112 to double*
  %114 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %115 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %114, i32 0, i32 21
  store double* %113, double** %115, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call arm_aapcscc i8* @malloc(i32 %116)
  %118 = bitcast i8* %117 to double*
  %119 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %120 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %119, i32 0, i32 22
  store double* %118, double** %120, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call arm_aapcscc i8* @malloc(i32 %121)
  %123 = bitcast i8* %122 to double*
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 23
  store double* %123, double** %125, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call arm_aapcscc i8* @malloc(i32 %126)
  %128 = bitcast i8* %127 to double*
  %129 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %130 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %129, i32 0, i32 24
  store double* %128, double** %130, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call arm_aapcscc i8* @malloc(i32 %131)
  %133 = bitcast i8* %132 to double*
  %134 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %135 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %134, i32 0, i32 25
  store double* %133, double** %135, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call arm_aapcscc i8* @malloc(i32 %136)
  %138 = bitcast i8* %137 to double*
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 26
  store double* %138, double** %140, align 4
  %141 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 4
  %142 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %141, i32 0, i32 26
  %143 = load double*, double** %142, align 4
  %144 = icmp eq double* %143, null
  br i1 %144, label %145, label %147

; <label>:145:                                    ; preds = %1
  %146 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  br label %147

; <label>:147:                                    ; preds = %145, %1
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @init(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %5 = alloca %struct.Domain_s*, align 4
  %6 = alloca %struct.RadiationData_t*, align 4
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 4
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %13 = alloca double*, align 4
  %14 = alloca double*, align 4
  %15 = alloca double*, align 4
  %16 = alloca double*, align 4
  %17 = alloca double*, align 4
  %18 = alloca double*, align 4
  %19 = alloca double*, align 4
  %20 = alloca double*, align 4
  %21 = alloca double*, align 4
  %22 = alloca double*, align 4
  %23 = alloca double*, align 4
  %24 = alloca double*, align 4
  %25 = alloca double*, align 4
  %26 = alloca double*, align 4
  %27 = alloca double*, align 4
  %28 = alloca double*, align 4
  %29 = alloca double*, align 4
  %30 = alloca double*, align 4
  %31 = alloca double*, align 4
  %32 = alloca double*, align 4
  %33 = alloca double*, align 4
  %34 = alloca double*, align 4
  %35 = alloca double*, align 4
  %36 = alloca double*, align 4
  store %struct.Domain_s* %0, %struct.Domain_s** %5, align 4
  store %struct.RadiationData_t* %1, %struct.RadiationData_t** %6, align 4
  store double* %2, double** %7, align 4
  store double* %3, double** %8, align 4
  %37 = load i32, i32* @imin, align 4
  %38 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %39 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @imax, align 4
  %41 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %42 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @jmin, align 4
  %44 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %45 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @jmax, align 4
  %47 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %48 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @kmin, align 4
  %50 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %51 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @kmax, align 4
  %53 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %54 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @jp, align 4
  %56 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %57 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %56, i32 0, i32 17
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @kp, align 4
  %59 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %60 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %59, i32 0, i32 18
  store i32 %58, i32* %60, align 4
  %61 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %62 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %61, i32 0, i32 0
  %63 = load double*, double** %62, align 4
  store double* %63, double** %10, align 4
  %64 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %65 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %64, i32 0, i32 1
  %66 = load double*, double** %65, align 4
  store double* %66, double** %11, align 4
  %67 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %68 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %67, i32 0, i32 2
  %69 = load double*, double** %68, align 4
  store double* %69, double** %12, align 4
  %70 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %71 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %70, i32 0, i32 3
  %72 = load double*, double** %71, align 4
  store double* %72, double** %13, align 4
  %73 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %74 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %73, i32 0, i32 4
  %75 = load double*, double** %74, align 4
  store double* %75, double** %14, align 4
  %76 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %77 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %76, i32 0, i32 5
  %78 = load double*, double** %77, align 4
  store double* %78, double** %15, align 4
  %79 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %80 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %79, i32 0, i32 6
  %81 = load double*, double** %80, align 4
  store double* %81, double** %16, align 4
  %82 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %83 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %82, i32 0, i32 7
  %84 = load double*, double** %83, align 4
  store double* %84, double** %17, align 4
  %85 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %86 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %85, i32 0, i32 8
  %87 = load double*, double** %86, align 4
  store double* %87, double** %18, align 4
  %88 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %89 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %88, i32 0, i32 9
  %90 = load double*, double** %89, align 4
  store double* %90, double** %19, align 4
  %91 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %92 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %91, i32 0, i32 10
  %93 = load double*, double** %92, align 4
  store double* %93, double** %20, align 4
  %94 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %95 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %94, i32 0, i32 11
  %96 = load double*, double** %95, align 4
  store double* %96, double** %21, align 4
  %97 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %98 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %97, i32 0, i32 12
  %99 = load double*, double** %98, align 4
  store double* %99, double** %22, align 4
  %100 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %101 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %100, i32 0, i32 13
  %102 = load double*, double** %101, align 4
  store double* %102, double** %23, align 4
  %103 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %104 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %103, i32 0, i32 14
  %105 = load double*, double** %104, align 4
  store double* %105, double** %24, align 4
  %106 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %107 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %106, i32 0, i32 15
  %108 = load double*, double** %107, align 4
  store double* %108, double** %25, align 4
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 16
  %111 = load double*, double** %110, align 4
  store double* %111, double** %26, align 4
  %112 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %113 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %112, i32 0, i32 17
  %114 = load double*, double** %113, align 4
  store double* %114, double** %27, align 4
  %115 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %116 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %115, i32 0, i32 18
  %117 = load double*, double** %116, align 4
  store double* %117, double** %28, align 4
  %118 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %119 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %118, i32 0, i32 19
  %120 = load double*, double** %119, align 4
  store double* %120, double** %29, align 4
  %121 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %122 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %121, i32 0, i32 20
  %123 = load double*, double** %122, align 4
  store double* %123, double** %30, align 4
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 21
  %126 = load double*, double** %125, align 4
  store double* %126, double** %31, align 4
  %127 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %128 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %127, i32 0, i32 22
  %129 = load double*, double** %128, align 4
  store double* %129, double** %32, align 4
  %130 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %131 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %130, i32 0, i32 23
  %132 = load double*, double** %131, align 4
  store double* %132, double** %33, align 4
  %133 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %134 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %133, i32 0, i32 24
  %135 = load double*, double** %134, align 4
  store double* %135, double** %34, align 4
  %136 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %137 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %136, i32 0, i32 25
  %138 = load double*, double** %137, align 4
  store double* %138, double** %35, align 4
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 26
  %141 = load double*, double** %140, align 4
  store double* %141, double** %36, align 4
  store i32 0, i32* %9, align 4
  br label %142

; <label>:142:                                    ; preds = %283, %4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @i_ub, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %286

; <label>:146:                                    ; preds = %142
  %147 = load double*, double** %8, align 4
  %148 = getelementptr inbounds double, double* %147, i32 1
  store double* %148, double** %8, align 4
  store double 0.000000e+00, double* %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sitofp i32 %149 to double
  %151 = load double*, double** %10, align 4
  %152 = getelementptr inbounds double, double* %151, i32 1
  store double* %152, double** %10, align 4
  store double %150, double* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  %155 = sitofp i32 %154 to double
  %156 = load double*, double** %11, align 4
  %157 = getelementptr inbounds double, double* %156, i32 1
  store double* %157, double** %11, align 4
  store double %155, double* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 2
  %160 = sitofp i32 %159 to double
  %161 = load double*, double** %12, align 4
  %162 = getelementptr inbounds double, double* %161, i32 1
  store double* %162, double** %12, align 4
  store double %160, double* %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 3
  %165 = sitofp i32 %164 to double
  %166 = load double*, double** %13, align 4
  %167 = getelementptr inbounds double, double* %166, i32 1
  store double* %167, double** %13, align 4
  store double %165, double* %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 4
  %170 = sitofp i32 %169 to double
  %171 = load double*, double** %14, align 4
  %172 = getelementptr inbounds double, double* %171, i32 1
  store double* %172, double** %14, align 4
  store double %170, double* %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 5
  %175 = sitofp i32 %174 to double
  %176 = load double*, double** %15, align 4
  %177 = getelementptr inbounds double, double* %176, i32 1
  store double* %177, double** %15, align 4
  store double %175, double* %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 6
  %180 = sitofp i32 %179 to double
  %181 = load double*, double** %16, align 4
  %182 = getelementptr inbounds double, double* %181, i32 1
  store double* %182, double** %16, align 4
  store double %180, double* %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 7
  %185 = sitofp i32 %184 to double
  %186 = load double*, double** %17, align 4
  %187 = getelementptr inbounds double, double* %186, i32 1
  store double* %187, double** %17, align 4
  store double %185, double* %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 8
  %190 = sitofp i32 %189 to double
  %191 = load double*, double** %18, align 4
  %192 = getelementptr inbounds double, double* %191, i32 1
  store double* %192, double** %18, align 4
  store double %190, double* %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 9
  %195 = sitofp i32 %194 to double
  %196 = load double*, double** %19, align 4
  %197 = getelementptr inbounds double, double* %196, i32 1
  store double* %197, double** %19, align 4
  store double %195, double* %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 10
  %200 = sitofp i32 %199 to double
  %201 = load double*, double** %20, align 4
  %202 = getelementptr inbounds double, double* %201, i32 1
  store double* %202, double** %20, align 4
  store double %200, double* %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 11
  %205 = sitofp i32 %204 to double
  %206 = load double*, double** %21, align 4
  %207 = getelementptr inbounds double, double* %206, i32 1
  store double* %207, double** %21, align 4
  store double %205, double* %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 12
  %210 = sitofp i32 %209 to double
  %211 = load double*, double** %22, align 4
  %212 = getelementptr inbounds double, double* %211, i32 1
  store double* %212, double** %22, align 4
  store double %210, double* %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 13
  %215 = sitofp i32 %214 to double
  %216 = load double*, double** %23, align 4
  %217 = getelementptr inbounds double, double* %216, i32 1
  store double* %217, double** %23, align 4
  store double %215, double* %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 14
  %220 = sitofp i32 %219 to double
  %221 = load double*, double** %24, align 4
  %222 = getelementptr inbounds double, double* %221, i32 1
  store double* %222, double** %24, align 4
  store double %220, double* %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 15
  %225 = sitofp i32 %224 to double
  %226 = load double*, double** %25, align 4
  %227 = getelementptr inbounds double, double* %226, i32 1
  store double* %227, double** %25, align 4
  store double %225, double* %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 16
  %230 = sitofp i32 %229 to double
  %231 = load double*, double** %26, align 4
  %232 = getelementptr inbounds double, double* %231, i32 1
  store double* %232, double** %26, align 4
  store double %230, double* %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 17
  %235 = sitofp i32 %234 to double
  %236 = load double*, double** %27, align 4
  %237 = getelementptr inbounds double, double* %236, i32 1
  store double* %237, double** %27, align 4
  store double %235, double* %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 18
  %240 = sitofp i32 %239 to double
  %241 = load double*, double** %28, align 4
  %242 = getelementptr inbounds double, double* %241, i32 1
  store double* %242, double** %28, align 4
  store double %240, double* %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 19
  %245 = sitofp i32 %244 to double
  %246 = load double*, double** %29, align 4
  %247 = getelementptr inbounds double, double* %246, i32 1
  store double* %247, double** %29, align 4
  store double %245, double* %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 20
  %250 = sitofp i32 %249 to double
  %251 = load double*, double** %30, align 4
  %252 = getelementptr inbounds double, double* %251, i32 1
  store double* %252, double** %30, align 4
  store double %250, double* %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 21
  %255 = sitofp i32 %254 to double
  %256 = load double*, double** %31, align 4
  %257 = getelementptr inbounds double, double* %256, i32 1
  store double* %257, double** %31, align 4
  store double %255, double* %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 22
  %260 = sitofp i32 %259 to double
  %261 = load double*, double** %32, align 4
  %262 = getelementptr inbounds double, double* %261, i32 1
  store double* %262, double** %32, align 4
  store double %260, double* %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %263, 23
  %265 = sitofp i32 %264 to double
  %266 = load double*, double** %33, align 4
  %267 = getelementptr inbounds double, double* %266, i32 1
  store double* %267, double** %33, align 4
  store double %265, double* %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 24
  %270 = sitofp i32 %269 to double
  %271 = load double*, double** %34, align 4
  %272 = getelementptr inbounds double, double* %271, i32 1
  store double* %272, double** %34, align 4
  store double %270, double* %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 25
  %275 = sitofp i32 %274 to double
  %276 = load double*, double** %35, align 4
  %277 = getelementptr inbounds double, double* %276, i32 1
  store double* %277, double** %35, align 4
  store double %275, double* %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 26
  %280 = sitofp i32 %279 to double
  %281 = load double*, double** %36, align 4
  %282 = getelementptr inbounds double, double* %281, i32 1
  store double* %282, double** %36, align 4
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
  %295 = load double*, double** %7, align 4
  %296 = getelementptr inbounds double, double* %295, i32 1
  store double* %296, double** %7, align 4
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

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
