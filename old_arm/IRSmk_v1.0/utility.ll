; ModuleID = 'utility.c'
source_filename = "utility.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct._IO_FILE = type opaque
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }
%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"irsmk_input\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"***** ERROR \0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"      Cannot open input file irsmk_input \0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%d %d %d %d %d %d %d %d\00", align 1
@kmin = common global i32 0, align 4
@kmax = common global i32 0, align 4
@jmin = common global i32 0, align 4
@jmax = common global i32 0, align 4
@imin = common global i32 0, align 4
@imax = common global i32 0, align 4
@kp = common global i32 0, align 4
@jp = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"***** input  \0A\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"kmin = %8d     kmax = %8d \0Ajmin = %8d     jmax = %8d \0Aimin = %8d     imax = %8d \0Akp   = %8d     jp   = %8d \0A \0A \0A\00", align 1
@i_lb = common global i32 0, align 4
@i_ub = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"      lb of xdbl < 0 \0A\00", align 1
@x_size = common global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"***** array bounds  \0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"i_lb = %10d    i_ub = %10d    x_size = %10d \0A \0A \0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"*****ERROR: allocMem out of memory \0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @readInput() #0 {
  %1 = alloca %struct._IO_FILE*, align 4
  %2 = call arm_aapcscc %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %2, %struct._IO_FILE** %1, align 4
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %0
  %5 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %6 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  call arm_aapcscc void @exit(i32 1) #3
  unreachable

; <label>:7:                                      ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 4
  %9 = call arm_aapcscc i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32* @kmin, i32* @kmax, i32* @jmin, i32* @jmax, i32* @imin, i32* @imax, i32* @kp, i32* @jp)
  %10 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
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
  %50 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
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
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  %62 = load i32, i32* @i_lb, align 4
  %63 = load i32, i32* @i_ub, align 4
  %64 = load i32, i32* @x_size, align 4
  %65 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 4
  %67 = call arm_aapcscc i32 @fclose(%struct._IO_FILE* %66)
  ret void
}

declare arm_aapcscc %struct._IO_FILE* @fopen(i8*, i8*) #1

declare arm_aapcscc i32 @printf(i8*, ...) #1

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

declare arm_aapcscc i8* @malloc(i32) #1

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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
