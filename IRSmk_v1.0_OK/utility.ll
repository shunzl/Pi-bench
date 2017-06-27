; ModuleID = 'utility.c'
source_filename = "utility.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

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
define void @readInput() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %2, %struct._IO_FILE** %1, align 8
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

; <label>:7:                                      ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32* @kmin, i32* @kmax, i32* @jmin, i32* @jmax, i32* @imin, i32* @imax, i32* @kp, i32* @jp)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
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
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
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
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  %62 = load i32, i32* @i_lb, align 4
  %63 = load i32, i32* @i_ub, align 4
  %64 = load i32, i32* @x_size, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %67 = call i32 @fclose(%struct._IO_FILE* %66)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

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

declare i8* @malloc(i64) #1

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

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
