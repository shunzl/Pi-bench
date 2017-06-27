; ModuleID = 'all_t.bc'
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
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec6 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 4
  %allocaVec7 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec8 = alloca <2 x double>, align 16
  %CastInst2 = alloca double, align 4
  %CastInstVec3 = alloca <2 x double>, align 16
  %allocaVec9 = alloca <2 x double>, align 16
  %CastInst4 = alloca double, align 4
  %CastInstVec5 = alloca <2 x double>, align 16
  %allocaVec10 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %2 = alloca %struct.Domain_s, align 4
  %3 = alloca %struct.Domain_s*, align 4
  %4 = alloca %struct.RadiationData_t, align 4
  %5 = alloca %struct.RadiationData_t*, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec12 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec13 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
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
  br i1 %33, label %34, label %43

; <label>:34:                                     ; preds = %31
  %35 = load %struct.Domain_s*, %struct.Domain_s** %3, align 4
  %36 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 4
  %37 = load double*, double** %11, align 4
  %38 = load double*, double** %12, align 4
  call arm_aapcscc void @rmatmult3(%struct.Domain_s* %35, %struct.RadiationData_t* %36, double* %37, double* %38)
  br label %39

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %13, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %40, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt, i32 %40, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %40, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %40, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec14, align 16
  %41 = load <4 x i32>, <4 x i32>* %allocaVec14, align 16
  %Vop = add <4 x i32> %41, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec14
  %42 = add nsw i32 %40, 1
  store i32 %42, i32* %13, align 4
  br label %31

; <label>:43:                                     ; preds = %31
  %44 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %7, i8* null)
  %45 = call arm_aapcscc i32 @clock()
  store i32 %45, i32* %9, align 4
  %46 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %13, align 4
  br label %47

; <label>:47:                                     ; preds = %58, %43
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @i_ub, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load double*, double** %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds double, double* %53, i32 %54
  %56 = load double, double* %55, align 8
  %57 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %52, double %56)
  br label %58

; <label>:58:                                     ; preds = %51
  %59 = load i32, i32* @i_ub, align 4
  %60 = sdiv i32 %59, 5
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %47

; <label>:63:                                     ; preds = %47
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %65, %67
  %69 = sitofp i32 %68 to double
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %71, %73
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %75, 1.000000e+06
  %77 = fadd double %69, %76
  store double %77, double* %10, align 8
  %78 = load double, double* %10, align 8
  %79 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %83, 1.000000e+06
  %85 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), double %84)
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

declare arm_aapcscc i8* @malloc(i32) #1

declare arm_aapcscc i32 @gettimeofday(%struct.timeval*, i8*) #1

declare arm_aapcscc i32 @clock() #1

; Function Attrs: nounwind
define arm_aapcscc void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %5 = alloca %struct.Domain_s*, align 4
  %6 = alloca %struct.RadiationData_t*, align 4
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %9 = alloca i8*, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec9 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec12 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec13 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec15 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  %allocaVec16 = alloca <4 x i32>, align 16
  %19 = alloca i32, align 4
  %allocaVec17 = alloca <4 x i32>, align 16
  %20 = alloca i32, align 4
  %allocaVec18 = alloca <4 x i32>, align 16
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
  %insertElmt = insertelement <4 x i32> undef, i32 %182, i32 0
  %insertElmt19 = insertelement <4 x i32> %insertElmt, i32 %182, i32 1
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %182, i32 2
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %182, i32 3
  store <4 x i32> %insertElmt21, <4 x i32>* %allocaVec18, align 16
  %183 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop = sub <4 x i32> zeroinitializer, %183
  %184 = sub i32 0, %182
  %185 = getelementptr inbounds double, double* %181, i32 %184
  %186 = load i32, i32* %20, align 4
  %insertElmt22 = insertelement <4 x i32> undef, i32 %186, i32 0
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %186, i32 1
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %186, i32 2
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %186, i32 3
  store <4 x i32> %insertElmt25, <4 x i32>* %allocaVec17, align 16
  %187 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop26 = sub <4 x i32> zeroinitializer, %187
  %188 = sub i32 0, %186
  %189 = getelementptr inbounds double, double* %185, i32 %188
  %190 = getelementptr inbounds double, double* %189, i32 -1
  store double* %190, double** %49, align 4
  %191 = load double*, double** %7, align 4
  %192 = load i32, i32* %21, align 4
  %insertElmt27 = insertelement <4 x i32> undef, i32 %192, i32 0
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %192, i32 1
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %192, i32 2
  %insertElmt30 = insertelement <4 x i32> %insertElmt29, i32 %192, i32 3
  store <4 x i32> %insertElmt30, <4 x i32>* %allocaVec18, align 16
  %193 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop31 = sub <4 x i32> zeroinitializer, %193
  %194 = sub i32 0, %192
  %195 = getelementptr inbounds double, double* %191, i32 %194
  %196 = load i32, i32* %20, align 4
  %insertElmt32 = insertelement <4 x i32> undef, i32 %196, i32 0
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %196, i32 1
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %196, i32 2
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %196, i32 3
  store <4 x i32> %insertElmt35, <4 x i32>* %allocaVec17, align 16
  %197 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop36 = sub <4 x i32> zeroinitializer, %197
  %198 = sub i32 0, %196
  %199 = getelementptr inbounds double, double* %195, i32 %198
  store double* %199, double** %50, align 4
  %200 = load double*, double** %7, align 4
  %201 = load i32, i32* %21, align 4
  %insertElmt37 = insertelement <4 x i32> undef, i32 %201, i32 0
  %insertElmt38 = insertelement <4 x i32> %insertElmt37, i32 %201, i32 1
  %insertElmt39 = insertelement <4 x i32> %insertElmt38, i32 %201, i32 2
  %insertElmt40 = insertelement <4 x i32> %insertElmt39, i32 %201, i32 3
  store <4 x i32> %insertElmt40, <4 x i32>* %allocaVec18, align 16
  %202 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop41 = sub <4 x i32> zeroinitializer, %202
  %203 = sub i32 0, %201
  %204 = getelementptr inbounds double, double* %200, i32 %203
  %205 = load i32, i32* %20, align 4
  %insertElmt42 = insertelement <4 x i32> undef, i32 %205, i32 0
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %205, i32 1
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %205, i32 2
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %205, i32 3
  store <4 x i32> %insertElmt45, <4 x i32>* %allocaVec17, align 16
  %206 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop46 = sub <4 x i32> zeroinitializer, %206
  %207 = sub i32 0, %205
  %208 = getelementptr inbounds double, double* %204, i32 %207
  %209 = getelementptr inbounds double, double* %208, i32 1
  store double* %209, double** %51, align 4
  %210 = load double*, double** %7, align 4
  %211 = load i32, i32* %21, align 4
  %insertElmt47 = insertelement <4 x i32> undef, i32 %211, i32 0
  %insertElmt48 = insertelement <4 x i32> %insertElmt47, i32 %211, i32 1
  %insertElmt49 = insertelement <4 x i32> %insertElmt48, i32 %211, i32 2
  %insertElmt50 = insertelement <4 x i32> %insertElmt49, i32 %211, i32 3
  store <4 x i32> %insertElmt50, <4 x i32>* %allocaVec18, align 16
  %212 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop51 = sub <4 x i32> zeroinitializer, %212
  %213 = sub i32 0, %211
  %214 = getelementptr inbounds double, double* %210, i32 %213
  %215 = getelementptr inbounds double, double* %214, i32 -1
  store double* %215, double** %52, align 4
  %216 = load double*, double** %7, align 4
  %217 = load i32, i32* %21, align 4
  %insertElmt52 = insertelement <4 x i32> undef, i32 %217, i32 0
  %insertElmt53 = insertelement <4 x i32> %insertElmt52, i32 %217, i32 1
  %insertElmt54 = insertelement <4 x i32> %insertElmt53, i32 %217, i32 2
  %insertElmt55 = insertelement <4 x i32> %insertElmt54, i32 %217, i32 3
  store <4 x i32> %insertElmt55, <4 x i32>* %allocaVec18, align 16
  %218 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop56 = sub <4 x i32> zeroinitializer, %218
  %219 = sub i32 0, %217
  %220 = getelementptr inbounds double, double* %216, i32 %219
  store double* %220, double** %53, align 4
  %221 = load double*, double** %7, align 4
  %222 = load i32, i32* %21, align 4
  %insertElmt57 = insertelement <4 x i32> undef, i32 %222, i32 0
  %insertElmt58 = insertelement <4 x i32> %insertElmt57, i32 %222, i32 1
  %insertElmt59 = insertelement <4 x i32> %insertElmt58, i32 %222, i32 2
  %insertElmt60 = insertelement <4 x i32> %insertElmt59, i32 %222, i32 3
  store <4 x i32> %insertElmt60, <4 x i32>* %allocaVec18, align 16
  %223 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop61 = sub <4 x i32> zeroinitializer, %223
  %224 = sub i32 0, %222
  %225 = getelementptr inbounds double, double* %221, i32 %224
  %226 = getelementptr inbounds double, double* %225, i32 1
  store double* %226, double** %54, align 4
  %227 = load double*, double** %7, align 4
  %228 = load i32, i32* %21, align 4
  %insertElmt62 = insertelement <4 x i32> undef, i32 %228, i32 0
  %insertElmt63 = insertelement <4 x i32> %insertElmt62, i32 %228, i32 1
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %228, i32 2
  %insertElmt65 = insertelement <4 x i32> %insertElmt64, i32 %228, i32 3
  store <4 x i32> %insertElmt65, <4 x i32>* %allocaVec18, align 16
  %229 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop66 = sub <4 x i32> zeroinitializer, %229
  %230 = sub i32 0, %228
  %231 = getelementptr inbounds double, double* %227, i32 %230
  %232 = load i32, i32* %20, align 4
  %233 = getelementptr inbounds double, double* %231, i32 %232
  %234 = getelementptr inbounds double, double* %233, i32 -1
  store double* %234, double** %55, align 4
  %235 = load double*, double** %7, align 4
  %236 = load i32, i32* %21, align 4
  %insertElmt67 = insertelement <4 x i32> undef, i32 %236, i32 0
  %insertElmt68 = insertelement <4 x i32> %insertElmt67, i32 %236, i32 1
  %insertElmt69 = insertelement <4 x i32> %insertElmt68, i32 %236, i32 2
  %insertElmt70 = insertelement <4 x i32> %insertElmt69, i32 %236, i32 3
  store <4 x i32> %insertElmt70, <4 x i32>* %allocaVec18, align 16
  %237 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop71 = sub <4 x i32> zeroinitializer, %237
  %238 = sub i32 0, %236
  %239 = getelementptr inbounds double, double* %235, i32 %238
  %240 = load i32, i32* %20, align 4
  %241 = getelementptr inbounds double, double* %239, i32 %240
  store double* %241, double** %56, align 4
  %242 = load double*, double** %7, align 4
  %243 = load i32, i32* %21, align 4
  %insertElmt72 = insertelement <4 x i32> undef, i32 %243, i32 0
  %insertElmt73 = insertelement <4 x i32> %insertElmt72, i32 %243, i32 1
  %insertElmt74 = insertelement <4 x i32> %insertElmt73, i32 %243, i32 2
  %insertElmt75 = insertelement <4 x i32> %insertElmt74, i32 %243, i32 3
  store <4 x i32> %insertElmt75, <4 x i32>* %allocaVec18, align 16
  %244 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop76 = sub <4 x i32> zeroinitializer, %244
  %245 = sub i32 0, %243
  %246 = getelementptr inbounds double, double* %242, i32 %245
  %247 = load i32, i32* %20, align 4
  %248 = getelementptr inbounds double, double* %246, i32 %247
  %249 = getelementptr inbounds double, double* %248, i32 1
  store double* %249, double** %57, align 4
  %250 = load double*, double** %7, align 4
  %251 = load i32, i32* %20, align 4
  %insertElmt77 = insertelement <4 x i32> undef, i32 %251, i32 0
  %insertElmt78 = insertelement <4 x i32> %insertElmt77, i32 %251, i32 1
  %insertElmt79 = insertelement <4 x i32> %insertElmt78, i32 %251, i32 2
  %insertElmt80 = insertelement <4 x i32> %insertElmt79, i32 %251, i32 3
  store <4 x i32> %insertElmt80, <4 x i32>* %allocaVec17, align 16
  %252 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop81 = sub <4 x i32> zeroinitializer, %252
  %253 = sub i32 0, %251
  %254 = getelementptr inbounds double, double* %250, i32 %253
  %255 = getelementptr inbounds double, double* %254, i32 -1
  store double* %255, double** %58, align 4
  %256 = load double*, double** %7, align 4
  %257 = load i32, i32* %20, align 4
  %insertElmt82 = insertelement <4 x i32> undef, i32 %257, i32 0
  %insertElmt83 = insertelement <4 x i32> %insertElmt82, i32 %257, i32 1
  %insertElmt84 = insertelement <4 x i32> %insertElmt83, i32 %257, i32 2
  %insertElmt85 = insertelement <4 x i32> %insertElmt84, i32 %257, i32 3
  store <4 x i32> %insertElmt85, <4 x i32>* %allocaVec17, align 16
  %258 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop86 = sub <4 x i32> zeroinitializer, %258
  %259 = sub i32 0, %257
  %260 = getelementptr inbounds double, double* %256, i32 %259
  store double* %260, double** %59, align 4
  %261 = load double*, double** %7, align 4
  %262 = load i32, i32* %20, align 4
  %insertElmt87 = insertelement <4 x i32> undef, i32 %262, i32 0
  %insertElmt88 = insertelement <4 x i32> %insertElmt87, i32 %262, i32 1
  %insertElmt89 = insertelement <4 x i32> %insertElmt88, i32 %262, i32 2
  %insertElmt90 = insertelement <4 x i32> %insertElmt89, i32 %262, i32 3
  store <4 x i32> %insertElmt90, <4 x i32>* %allocaVec17, align 16
  %263 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop91 = sub <4 x i32> zeroinitializer, %263
  %264 = sub i32 0, %262
  %265 = getelementptr inbounds double, double* %261, i32 %264
  %266 = getelementptr inbounds double, double* %265, i32 1
  store double* %266, double** %60, align 4
  %267 = load double*, double** %7, align 4
  %268 = getelementptr inbounds double, double* %267, i32 -1
  store double* %268, double** %61, align 4
  %269 = load double*, double** %7, align 4
  store double* %269, double** %62, align 4
  %270 = load double*, double** %7, align 4
  %271 = getelementptr inbounds double, double* %270, i32 1
  store double* %271, double** %63, align 4
  %272 = load double*, double** %7, align 4
  %273 = load i32, i32* %20, align 4
  %274 = getelementptr inbounds double, double* %272, i32 %273
  %275 = getelementptr inbounds double, double* %274, i32 -1
  store double* %275, double** %64, align 4
  %276 = load double*, double** %7, align 4
  %277 = load i32, i32* %20, align 4
  %278 = getelementptr inbounds double, double* %276, i32 %277
  store double* %278, double** %65, align 4
  %279 = load double*, double** %7, align 4
  %280 = load i32, i32* %20, align 4
  %281 = getelementptr inbounds double, double* %279, i32 %280
  %282 = getelementptr inbounds double, double* %281, i32 1
  store double* %282, double** %66, align 4
  %283 = load double*, double** %7, align 4
  %284 = load i32, i32* %21, align 4
  %285 = getelementptr inbounds double, double* %283, i32 %284
  %286 = load i32, i32* %20, align 4
  %insertElmt92 = insertelement <4 x i32> undef, i32 %286, i32 0
  %insertElmt93 = insertelement <4 x i32> %insertElmt92, i32 %286, i32 1
  %insertElmt94 = insertelement <4 x i32> %insertElmt93, i32 %286, i32 2
  %insertElmt95 = insertelement <4 x i32> %insertElmt94, i32 %286, i32 3
  store <4 x i32> %insertElmt95, <4 x i32>* %allocaVec17, align 16
  %287 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop96 = sub <4 x i32> zeroinitializer, %287
  %288 = sub i32 0, %286
  %289 = getelementptr inbounds double, double* %285, i32 %288
  %290 = getelementptr inbounds double, double* %289, i32 -1
  store double* %290, double** %67, align 4
  %291 = load double*, double** %7, align 4
  %292 = load i32, i32* %21, align 4
  %293 = getelementptr inbounds double, double* %291, i32 %292
  %294 = load i32, i32* %20, align 4
  %insertElmt97 = insertelement <4 x i32> undef, i32 %294, i32 0
  %insertElmt98 = insertelement <4 x i32> %insertElmt97, i32 %294, i32 1
  %insertElmt99 = insertelement <4 x i32> %insertElmt98, i32 %294, i32 2
  %insertElmt100 = insertelement <4 x i32> %insertElmt99, i32 %294, i32 3
  store <4 x i32> %insertElmt100, <4 x i32>* %allocaVec17, align 16
  %295 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop101 = sub <4 x i32> zeroinitializer, %295
  %296 = sub i32 0, %294
  %297 = getelementptr inbounds double, double* %293, i32 %296
  store double* %297, double** %68, align 4
  %298 = load double*, double** %7, align 4
  %299 = load i32, i32* %21, align 4
  %300 = getelementptr inbounds double, double* %298, i32 %299
  %301 = load i32, i32* %20, align 4
  %insertElmt102 = insertelement <4 x i32> undef, i32 %301, i32 0
  %insertElmt103 = insertelement <4 x i32> %insertElmt102, i32 %301, i32 1
  %insertElmt104 = insertelement <4 x i32> %insertElmt103, i32 %301, i32 2
  %insertElmt105 = insertelement <4 x i32> %insertElmt104, i32 %301, i32 3
  store <4 x i32> %insertElmt105, <4 x i32>* %allocaVec17, align 16
  %302 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop106 = sub <4 x i32> zeroinitializer, %302
  %303 = sub i32 0, %301
  %304 = getelementptr inbounds double, double* %300, i32 %303
  %305 = getelementptr inbounds double, double* %304, i32 1
  store double* %305, double** %69, align 4
  %306 = load double*, double** %7, align 4
  %307 = load i32, i32* %21, align 4
  %308 = getelementptr inbounds double, double* %306, i32 %307
  %309 = getelementptr inbounds double, double* %308, i32 -1
  store double* %309, double** %70, align 4
  %310 = load double*, double** %7, align 4
  %311 = load i32, i32* %21, align 4
  %312 = getelementptr inbounds double, double* %310, i32 %311
  store double* %312, double** %71, align 4
  %313 = load double*, double** %7, align 4
  %314 = load i32, i32* %21, align 4
  %315 = getelementptr inbounds double, double* %313, i32 %314
  %316 = getelementptr inbounds double, double* %315, i32 1
  store double* %316, double** %72, align 4
  %317 = load double*, double** %7, align 4
  %318 = load i32, i32* %21, align 4
  %319 = getelementptr inbounds double, double* %317, i32 %318
  %320 = load i32, i32* %20, align 4
  %321 = getelementptr inbounds double, double* %319, i32 %320
  %322 = getelementptr inbounds double, double* %321, i32 -1
  store double* %322, double** %73, align 4
  %323 = load double*, double** %7, align 4
  %324 = load i32, i32* %21, align 4
  %325 = getelementptr inbounds double, double* %323, i32 %324
  %326 = load i32, i32* %20, align 4
  %327 = getelementptr inbounds double, double* %325, i32 %326
  store double* %327, double** %74, align 4
  %328 = load double*, double** %7, align 4
  %329 = load i32, i32* %21, align 4
  %330 = getelementptr inbounds double, double* %328, i32 %329
  %331 = load i32, i32* %20, align 4
  %332 = getelementptr inbounds double, double* %330, i32 %331
  %333 = getelementptr inbounds double, double* %332, i32 1
  store double* %333, double** %75, align 4
  %334 = load i32, i32* %18, align 4
  store i32 %334, i32* %13, align 4
  br label %335

; <label>:335:                                    ; preds = %678, %4
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* %19, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %680

; <label>:339:                                    ; preds = %335
  %340 = load i32, i32* %16, align 4
  store i32 %340, i32* %12, align 4
  br label %341

; <label>:341:                                    ; preds = %666, %339
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* %17, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %668

; <label>:345:                                    ; preds = %341
  %346 = load i32, i32* %14, align 4
  store i32 %346, i32* %11, align 4
  br label %347

; <label>:347:                                    ; preds = %654, %345
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* %15, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %656

; <label>:351:                                    ; preds = %347
  %352 = load i32, i32* %11, align 4
  %insertElmt107 = insertelement <4 x i32> undef, i32 %352, i32 0
  %insertElmt108 = insertelement <4 x i32> %insertElmt107, i32 %352, i32 1
  %insertElmt109 = insertelement <4 x i32> %insertElmt108, i32 %352, i32 2
  %insertElmt110 = insertelement <4 x i32> %insertElmt109, i32 %352, i32 3
  store <4 x i32> %insertElmt110, <4 x i32>* %allocaVec8, align 16
  %353 = load i32, i32* %12, align 4
  %insertElmt111 = insertelement <4 x i32> undef, i32 %353, i32 0
  %insertElmt112 = insertelement <4 x i32> %insertElmt111, i32 %353, i32 1
  %insertElmt113 = insertelement <4 x i32> %insertElmt112, i32 %353, i32 2
  %insertElmt114 = insertelement <4 x i32> %insertElmt113, i32 %353, i32 3
  store <4 x i32> %insertElmt114, <4 x i32>* %allocaVec9, align 16
  %354 = load i32, i32* %20, align 4
  %insertElmt115 = insertelement <4 x i32> undef, i32 %354, i32 0
  %insertElmt116 = insertelement <4 x i32> %insertElmt115, i32 %354, i32 1
  %insertElmt117 = insertelement <4 x i32> %insertElmt116, i32 %354, i32 2
  %insertElmt118 = insertelement <4 x i32> %insertElmt117, i32 %354, i32 3
  store <4 x i32> %insertElmt118, <4 x i32>* %allocaVec17, align 16
  %355 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %356 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop119 = mul <4 x i32> %355, %356
  %357 = mul nsw i32 %353, %354
  %358 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop120 = add <4 x i32> %358, %Vop119
  %359 = add nsw i32 %352, %357
  %360 = load i32, i32* %13, align 4
  %insertElmt121 = insertelement <4 x i32> undef, i32 %360, i32 0
  %insertElmt122 = insertelement <4 x i32> %insertElmt121, i32 %360, i32 1
  %insertElmt123 = insertelement <4 x i32> %insertElmt122, i32 %360, i32 2
  %insertElmt124 = insertelement <4 x i32> %insertElmt123, i32 %360, i32 3
  store <4 x i32> %insertElmt124, <4 x i32>* %allocaVec10, align 16
  %361 = load i32, i32* %21, align 4
  %insertElmt125 = insertelement <4 x i32> undef, i32 %361, i32 0
  %insertElmt126 = insertelement <4 x i32> %insertElmt125, i32 %361, i32 1
  %insertElmt127 = insertelement <4 x i32> %insertElmt126, i32 %361, i32 2
  %insertElmt128 = insertelement <4 x i32> %insertElmt127, i32 %361, i32 3
  store <4 x i32> %insertElmt128, <4 x i32>* %allocaVec18, align 16
  %362 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %363 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop129 = mul <4 x i32> %362, %363
  %364 = mul nsw i32 %360, %361
  %Vop130 = add <4 x i32> %Vop120, %Vop129
  store <4 x i32> %Vop130, <4 x i32>* %allocaVec7
  %365 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE = extractelement <4 x i32> %365, i64 0
  %extractE131 = extractelement <4 x i32> %365, i64 1
  %extractE132 = extractelement <4 x i32> %365, i64 2
  %sum = add i32 %extractE, %extractE131
  %sum133 = add i32 %sum, %extractE132
  %366 = add nsw i32 %359, %364
  %Fmul = mul i32 %366, 3
  store i32 %366, i32* %Recovery
  %Fcmp = icmp ne i32 %sum133, %Fmul
  br i1 %Fcmp, label %367, label %371

; <label>:367:                                    ; preds = %351
  %remThree = sdiv i32 %sum133, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %368, label %369

; <label>:368:                                    ; preds = %367
  store i32 %366, i32* %Recovery, align 4
  br label %370

; <label>:369:                                    ; preds = %367
  store i32 %extractE, i32* %Recovery, align 4
  br label %370

; <label>:370:                                    ; preds = %369, %368
  br label %371

; <label>:371:                                    ; preds = %351, %370
  %372 = load i32, i32* %Recovery, align 4
  store i32 %372, i32* %10, align 4
  %373 = load double*, double** %22, align 4
  %374 = load i32, i32* %10, align 4
  %375 = getelementptr inbounds double, double* %373, i32 %374
  %376 = load double, double* %375, align 8
  %377 = load double*, double** %49, align 4
  %378 = load i32, i32* %10, align 4
  %379 = getelementptr inbounds double, double* %377, i32 %378
  %380 = load double, double* %379, align 8
  %381 = fmul double %376, %380
  %382 = load double*, double** %23, align 4
  %383 = load i32, i32* %10, align 4
  %384 = getelementptr inbounds double, double* %382, i32 %383
  %385 = load double, double* %384, align 8
  %386 = load double*, double** %50, align 4
  %387 = load i32, i32* %10, align 4
  %388 = getelementptr inbounds double, double* %386, i32 %387
  %389 = load double, double* %388, align 8
  %390 = fmul double %385, %389
  %391 = fadd double %381, %390
  %392 = load double*, double** %24, align 4
  %393 = load i32, i32* %10, align 4
  %394 = getelementptr inbounds double, double* %392, i32 %393
  %395 = load double, double* %394, align 8
  %396 = load double*, double** %51, align 4
  %397 = load i32, i32* %10, align 4
  %398 = getelementptr inbounds double, double* %396, i32 %397
  %399 = load double, double* %398, align 8
  %400 = fmul double %395, %399
  %401 = fadd double %391, %400
  %402 = load double*, double** %25, align 4
  %403 = load i32, i32* %10, align 4
  %404 = getelementptr inbounds double, double* %402, i32 %403
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %52, align 4
  %407 = load i32, i32* %10, align 4
  %408 = getelementptr inbounds double, double* %406, i32 %407
  %409 = load double, double* %408, align 8
  %410 = fmul double %405, %409
  %411 = fadd double %401, %410
  %412 = load double*, double** %26, align 4
  %413 = load i32, i32* %10, align 4
  %414 = getelementptr inbounds double, double* %412, i32 %413
  %415 = load double, double* %414, align 8
  %416 = load double*, double** %53, align 4
  %417 = load i32, i32* %10, align 4
  %418 = getelementptr inbounds double, double* %416, i32 %417
  %419 = load double, double* %418, align 8
  %420 = fmul double %415, %419
  %421 = fadd double %411, %420
  %422 = load double*, double** %27, align 4
  %423 = load i32, i32* %10, align 4
  %424 = getelementptr inbounds double, double* %422, i32 %423
  %425 = load double, double* %424, align 8
  %426 = load double*, double** %54, align 4
  %427 = load i32, i32* %10, align 4
  %428 = getelementptr inbounds double, double* %426, i32 %427
  %429 = load double, double* %428, align 8
  %430 = fmul double %425, %429
  %431 = fadd double %421, %430
  %432 = load double*, double** %28, align 4
  %433 = load i32, i32* %10, align 4
  %434 = getelementptr inbounds double, double* %432, i32 %433
  %435 = load double, double* %434, align 8
  %436 = load double*, double** %55, align 4
  %437 = load i32, i32* %10, align 4
  %438 = getelementptr inbounds double, double* %436, i32 %437
  %439 = load double, double* %438, align 8
  %440 = fmul double %435, %439
  %441 = fadd double %431, %440
  %442 = load double*, double** %29, align 4
  %443 = load i32, i32* %10, align 4
  %444 = getelementptr inbounds double, double* %442, i32 %443
  %445 = load double, double* %444, align 8
  %446 = load double*, double** %56, align 4
  %447 = load i32, i32* %10, align 4
  %448 = getelementptr inbounds double, double* %446, i32 %447
  %449 = load double, double* %448, align 8
  %450 = fmul double %445, %449
  %451 = fadd double %441, %450
  %452 = load double*, double** %30, align 4
  %453 = load i32, i32* %10, align 4
  %454 = getelementptr inbounds double, double* %452, i32 %453
  %455 = load double, double* %454, align 8
  %456 = load double*, double** %57, align 4
  %457 = load i32, i32* %10, align 4
  %458 = getelementptr inbounds double, double* %456, i32 %457
  %459 = load double, double* %458, align 8
  %460 = fmul double %455, %459
  %461 = fadd double %451, %460
  %462 = load double*, double** %31, align 4
  %463 = load i32, i32* %10, align 4
  %464 = getelementptr inbounds double, double* %462, i32 %463
  %465 = load double, double* %464, align 8
  %466 = load double*, double** %58, align 4
  %467 = load i32, i32* %10, align 4
  %468 = getelementptr inbounds double, double* %466, i32 %467
  %469 = load double, double* %468, align 8
  %470 = fmul double %465, %469
  %471 = fadd double %461, %470
  %472 = load double*, double** %32, align 4
  %473 = load i32, i32* %10, align 4
  %474 = getelementptr inbounds double, double* %472, i32 %473
  %475 = load double, double* %474, align 8
  %476 = load double*, double** %59, align 4
  %477 = load i32, i32* %10, align 4
  %478 = getelementptr inbounds double, double* %476, i32 %477
  %479 = load double, double* %478, align 8
  %480 = fmul double %475, %479
  %481 = fadd double %471, %480
  %482 = load double*, double** %33, align 4
  %483 = load i32, i32* %10, align 4
  %484 = getelementptr inbounds double, double* %482, i32 %483
  %485 = load double, double* %484, align 8
  %486 = load double*, double** %60, align 4
  %487 = load i32, i32* %10, align 4
  %488 = getelementptr inbounds double, double* %486, i32 %487
  %489 = load double, double* %488, align 8
  %490 = fmul double %485, %489
  %491 = fadd double %481, %490
  %492 = load double*, double** %34, align 4
  %493 = load i32, i32* %10, align 4
  %494 = getelementptr inbounds double, double* %492, i32 %493
  %495 = load double, double* %494, align 8
  %496 = load double*, double** %61, align 4
  %497 = load i32, i32* %10, align 4
  %498 = getelementptr inbounds double, double* %496, i32 %497
  %499 = load double, double* %498, align 8
  %500 = fmul double %495, %499
  %501 = fadd double %491, %500
  %502 = load double*, double** %35, align 4
  %503 = load i32, i32* %10, align 4
  %504 = getelementptr inbounds double, double* %502, i32 %503
  %505 = load double, double* %504, align 8
  %506 = load double*, double** %62, align 4
  %507 = load i32, i32* %10, align 4
  %508 = getelementptr inbounds double, double* %506, i32 %507
  %509 = load double, double* %508, align 8
  %510 = fmul double %505, %509
  %511 = fadd double %501, %510
  %512 = load double*, double** %36, align 4
  %513 = load i32, i32* %10, align 4
  %514 = getelementptr inbounds double, double* %512, i32 %513
  %515 = load double, double* %514, align 8
  %516 = load double*, double** %63, align 4
  %517 = load i32, i32* %10, align 4
  %518 = getelementptr inbounds double, double* %516, i32 %517
  %519 = load double, double* %518, align 8
  %520 = fmul double %515, %519
  %521 = fadd double %511, %520
  %522 = load double*, double** %37, align 4
  %523 = load i32, i32* %10, align 4
  %524 = getelementptr inbounds double, double* %522, i32 %523
  %525 = load double, double* %524, align 8
  %526 = load double*, double** %64, align 4
  %527 = load i32, i32* %10, align 4
  %528 = getelementptr inbounds double, double* %526, i32 %527
  %529 = load double, double* %528, align 8
  %530 = fmul double %525, %529
  %531 = fadd double %521, %530
  %532 = load double*, double** %38, align 4
  %533 = load i32, i32* %10, align 4
  %534 = getelementptr inbounds double, double* %532, i32 %533
  %535 = load double, double* %534, align 8
  %536 = load double*, double** %65, align 4
  %537 = load i32, i32* %10, align 4
  %538 = getelementptr inbounds double, double* %536, i32 %537
  %539 = load double, double* %538, align 8
  %540 = fmul double %535, %539
  %541 = fadd double %531, %540
  %542 = load double*, double** %39, align 4
  %543 = load i32, i32* %10, align 4
  %544 = getelementptr inbounds double, double* %542, i32 %543
  %545 = load double, double* %544, align 8
  %546 = load double*, double** %66, align 4
  %547 = load i32, i32* %10, align 4
  %548 = getelementptr inbounds double, double* %546, i32 %547
  %549 = load double, double* %548, align 8
  %550 = fmul double %545, %549
  %551 = fadd double %541, %550
  %552 = load double*, double** %40, align 4
  %553 = load i32, i32* %10, align 4
  %554 = getelementptr inbounds double, double* %552, i32 %553
  %555 = load double, double* %554, align 8
  %556 = load double*, double** %67, align 4
  %557 = load i32, i32* %10, align 4
  %558 = getelementptr inbounds double, double* %556, i32 %557
  %559 = load double, double* %558, align 8
  %560 = fmul double %555, %559
  %561 = fadd double %551, %560
  %562 = load double*, double** %41, align 4
  %563 = load i32, i32* %10, align 4
  %564 = getelementptr inbounds double, double* %562, i32 %563
  %565 = load double, double* %564, align 8
  %566 = load double*, double** %68, align 4
  %567 = load i32, i32* %10, align 4
  %568 = getelementptr inbounds double, double* %566, i32 %567
  %569 = load double, double* %568, align 8
  %570 = fmul double %565, %569
  %571 = fadd double %561, %570
  %572 = load double*, double** %42, align 4
  %573 = load i32, i32* %10, align 4
  %574 = getelementptr inbounds double, double* %572, i32 %573
  %575 = load double, double* %574, align 8
  %576 = load double*, double** %69, align 4
  %577 = load i32, i32* %10, align 4
  %578 = getelementptr inbounds double, double* %576, i32 %577
  %579 = load double, double* %578, align 8
  %580 = fmul double %575, %579
  %581 = fadd double %571, %580
  %582 = load double*, double** %43, align 4
  %583 = load i32, i32* %10, align 4
  %584 = getelementptr inbounds double, double* %582, i32 %583
  %585 = load double, double* %584, align 8
  %586 = load double*, double** %70, align 4
  %587 = load i32, i32* %10, align 4
  %588 = getelementptr inbounds double, double* %586, i32 %587
  %589 = load double, double* %588, align 8
  %590 = fmul double %585, %589
  %591 = fadd double %581, %590
  %592 = load double*, double** %44, align 4
  %593 = load i32, i32* %10, align 4
  %594 = getelementptr inbounds double, double* %592, i32 %593
  %595 = load double, double* %594, align 8
  %596 = load double*, double** %71, align 4
  %597 = load i32, i32* %10, align 4
  %598 = getelementptr inbounds double, double* %596, i32 %597
  %599 = load double, double* %598, align 8
  %600 = fmul double %595, %599
  %601 = fadd double %591, %600
  %602 = load double*, double** %45, align 4
  %603 = load i32, i32* %10, align 4
  %604 = getelementptr inbounds double, double* %602, i32 %603
  %605 = load double, double* %604, align 8
  %606 = load double*, double** %72, align 4
  %607 = load i32, i32* %10, align 4
  %608 = getelementptr inbounds double, double* %606, i32 %607
  %609 = load double, double* %608, align 8
  %610 = fmul double %605, %609
  %611 = fadd double %601, %610
  %612 = load double*, double** %46, align 4
  %613 = load i32, i32* %10, align 4
  %614 = getelementptr inbounds double, double* %612, i32 %613
  %615 = load double, double* %614, align 8
  %616 = load double*, double** %73, align 4
  %617 = load i32, i32* %10, align 4
  %618 = getelementptr inbounds double, double* %616, i32 %617
  %619 = load double, double* %618, align 8
  %620 = fmul double %615, %619
  %621 = fadd double %611, %620
  %622 = load double*, double** %47, align 4
  %623 = load i32, i32* %10, align 4
  %624 = getelementptr inbounds double, double* %622, i32 %623
  %625 = load double, double* %624, align 8
  %626 = load double*, double** %74, align 4
  %627 = load i32, i32* %10, align 4
  %628 = getelementptr inbounds double, double* %626, i32 %627
  %629 = load double, double* %628, align 8
  %630 = fmul double %625, %629
  %631 = fadd double %621, %630
  %632 = load double*, double** %48, align 4
  %633 = load i32, i32* %10, align 4
  %634 = getelementptr inbounds double, double* %632, i32 %633
  %635 = load double, double* %634, align 8
  %636 = load double*, double** %75, align 4
  %637 = load i32, i32* %10, align 4
  %638 = getelementptr inbounds double, double* %636, i32 %637
  %639 = load double, double* %638, align 8
  %640 = fmul double %635, %639
  %641 = fadd double %631, %640
  %642 = load double*, double** %8, align 4
  %643 = load i32, i32* %10, align 4
  %644 = getelementptr inbounds double, double* %642, i32 %643
  store double %641, double* %644, align 8
  br label %645

; <label>:645:                                    ; preds = %371
  %646 = load i32, i32* %11, align 4
  %insertElmt134 = insertelement <4 x i32> undef, i32 %646, i32 0
  %insertElmt135 = insertelement <4 x i32> %insertElmt134, i32 %646, i32 1
  %insertElmt136 = insertelement <4 x i32> %insertElmt135, i32 %646, i32 2
  %insertElmt137 = insertelement <4 x i32> %insertElmt136, i32 %646, i32 3
  store <4 x i32> %insertElmt137, <4 x i32>* %allocaVec8, align 16
  %647 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop138 = add <4 x i32> %647, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop138, <4 x i32>* %allocaVec8
  %648 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE140 = extractelement <4 x i32> %648, i64 0
  %extractE141 = extractelement <4 x i32> %648, i64 1
  %extractE142 = extractelement <4 x i32> %648, i64 2
  %sum143 = add i32 %extractE140, %extractE141
  %sum144 = add i32 %sum143, %extractE142
  %649 = add nsw i32 %646, 1
  %Fmul139 = mul i32 %649, 3
  store i32 %649, i32* %Recovery1
  %Fcmp145 = icmp ne i32 %sum144, %Fmul139
  br i1 %Fcmp145, label %650, label %654

; <label>:650:                                    ; preds = %645
  %remThree170 = sdiv i32 %sum144, %extractE140
  %FcmpThree171 = icmp ne i32 %remThree170, 3
  br i1 %FcmpThree171, label %651, label %652

; <label>:651:                                    ; preds = %650
  store i32 %649, i32* %Recovery1, align 4
  br label %653

; <label>:652:                                    ; preds = %650
  store i32 %extractE140, i32* %Recovery1, align 4
  br label %653

; <label>:653:                                    ; preds = %652, %651
  br label %654

; <label>:654:                                    ; preds = %645, %653
  %655 = load i32, i32* %Recovery1, align 4
  store i32 %655, i32* %11, align 4
  br label %347

; <label>:656:                                    ; preds = %347
  br label %657

; <label>:657:                                    ; preds = %656
  %658 = load i32, i32* %12, align 4
  %insertElmt146 = insertelement <4 x i32> undef, i32 %658, i32 0
  %insertElmt147 = insertelement <4 x i32> %insertElmt146, i32 %658, i32 1
  %insertElmt148 = insertelement <4 x i32> %insertElmt147, i32 %658, i32 2
  %insertElmt149 = insertelement <4 x i32> %insertElmt148, i32 %658, i32 3
  store <4 x i32> %insertElmt149, <4 x i32>* %allocaVec9, align 16
  %659 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop150 = add <4 x i32> %659, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop150, <4 x i32>* %allocaVec9
  %660 = load <4 x i32>, <4 x i32>* %allocaVec9, align 4
  %extractE152 = extractelement <4 x i32> %660, i64 0
  %extractE153 = extractelement <4 x i32> %660, i64 1
  %extractE154 = extractelement <4 x i32> %660, i64 2
  %sum155 = add i32 %extractE152, %extractE153
  %sum156 = add i32 %sum155, %extractE154
  %661 = add nsw i32 %658, 1
  %Fmul151 = mul i32 %661, 3
  store i32 %661, i32* %Recovery2
  %Fcmp157 = icmp ne i32 %sum156, %Fmul151
  br i1 %Fcmp157, label %662, label %666

; <label>:662:                                    ; preds = %657
  %remThree172 = sdiv i32 %sum156, %extractE152
  %FcmpThree173 = icmp ne i32 %remThree172, 3
  br i1 %FcmpThree173, label %663, label %664

; <label>:663:                                    ; preds = %662
  store i32 %661, i32* %Recovery2, align 4
  br label %665

; <label>:664:                                    ; preds = %662
  store i32 %extractE152, i32* %Recovery2, align 4
  br label %665

; <label>:665:                                    ; preds = %664, %663
  br label %666

; <label>:666:                                    ; preds = %657, %665
  %667 = load i32, i32* %Recovery2, align 4
  store i32 %667, i32* %12, align 4
  br label %341

; <label>:668:                                    ; preds = %341
  br label %669

; <label>:669:                                    ; preds = %668
  %670 = load i32, i32* %13, align 4
  %insertElmt158 = insertelement <4 x i32> undef, i32 %670, i32 0
  %insertElmt159 = insertelement <4 x i32> %insertElmt158, i32 %670, i32 1
  %insertElmt160 = insertelement <4 x i32> %insertElmt159, i32 %670, i32 2
  %insertElmt161 = insertelement <4 x i32> %insertElmt160, i32 %670, i32 3
  store <4 x i32> %insertElmt161, <4 x i32>* %allocaVec10, align 16
  %671 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop162 = add <4 x i32> %671, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop162, <4 x i32>* %allocaVec10
  %672 = load <4 x i32>, <4 x i32>* %allocaVec10, align 4
  %extractE164 = extractelement <4 x i32> %672, i64 0
  %extractE165 = extractelement <4 x i32> %672, i64 1
  %extractE166 = extractelement <4 x i32> %672, i64 2
  %sum167 = add i32 %extractE164, %extractE165
  %sum168 = add i32 %sum167, %extractE166
  %673 = add nsw i32 %670, 1
  %Fmul163 = mul i32 %673, 3
  store i32 %673, i32* %Recovery3
  %Fcmp169 = icmp ne i32 %sum168, %Fmul163
  br i1 %Fcmp169, label %674, label %678

; <label>:674:                                    ; preds = %669
  %remThree174 = sdiv i32 %sum168, %extractE164
  %FcmpThree175 = icmp ne i32 %remThree174, 3
  br i1 %FcmpThree175, label %675, label %676

; <label>:675:                                    ; preds = %674
  store i32 %673, i32* %Recovery3, align 4
  br label %677

; <label>:676:                                    ; preds = %674
  store i32 %extractE164, i32* %Recovery3, align 4
  br label %677

; <label>:677:                                    ; preds = %676, %675
  br label %678

; <label>:678:                                    ; preds = %669, %677
  %679 = load i32, i32* %Recovery3, align 4
  store i32 %679, i32* %13, align 4
  br label %335

; <label>:680:                                    ; preds = %335
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
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %2 = alloca %struct.RadiationData_t*, align 4
  %allocaVec1 = alloca <4 x i32>, align 16
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
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %5 = alloca %struct.Domain_s*, align 4
  %6 = alloca %struct.RadiationData_t*, align 4
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %allocaVec2 = alloca <4 x i32>, align 16
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

; <label>:142:                                    ; preds = %309, %4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @i_ub, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %313

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
  %insertElmt = insertelement <4 x i32> undef, i32 %153, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %153, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %153, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %153, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %154 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %154, <i32 1, i32 1, i32 1, i32 1>
  %155 = add nsw i32 %153, 1
  %156 = sitofp i32 %155 to double
  %157 = load double*, double** %11, align 4
  %158 = getelementptr inbounds double, double* %157, i32 1
  store double* %158, double** %11, align 4
  store double %156, double* %157, align 8
  %159 = load i32, i32* %9, align 4
  %insertElmt6 = insertelement <4 x i32> undef, i32 %159, i32 0
  %insertElmt7 = insertelement <4 x i32> %insertElmt6, i32 %159, i32 1
  %insertElmt8 = insertelement <4 x i32> %insertElmt7, i32 %159, i32 2
  %insertElmt9 = insertelement <4 x i32> %insertElmt8, i32 %159, i32 3
  store <4 x i32> %insertElmt9, <4 x i32>* %allocaVec2, align 16
  %160 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop10 = add <4 x i32> %160, <i32 2, i32 2, i32 2, i32 2>
  %161 = add nsw i32 %159, 2
  %162 = sitofp i32 %161 to double
  %163 = load double*, double** %12, align 4
  %164 = getelementptr inbounds double, double* %163, i32 1
  store double* %164, double** %12, align 4
  store double %162, double* %163, align 8
  %165 = load i32, i32* %9, align 4
  %insertElmt11 = insertelement <4 x i32> undef, i32 %165, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %165, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %165, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %165, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec2, align 16
  %166 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop15 = add <4 x i32> %166, <i32 3, i32 3, i32 3, i32 3>
  %167 = add nsw i32 %165, 3
  %168 = sitofp i32 %167 to double
  %169 = load double*, double** %13, align 4
  %170 = getelementptr inbounds double, double* %169, i32 1
  store double* %170, double** %13, align 4
  store double %168, double* %169, align 8
  %171 = load i32, i32* %9, align 4
  %insertElmt16 = insertelement <4 x i32> undef, i32 %171, i32 0
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %171, i32 1
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %171, i32 2
  %insertElmt19 = insertelement <4 x i32> %insertElmt18, i32 %171, i32 3
  store <4 x i32> %insertElmt19, <4 x i32>* %allocaVec2, align 16
  %172 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop20 = add <4 x i32> %172, <i32 4, i32 4, i32 4, i32 4>
  %173 = add nsw i32 %171, 4
  %174 = sitofp i32 %173 to double
  %175 = load double*, double** %14, align 4
  %176 = getelementptr inbounds double, double* %175, i32 1
  store double* %176, double** %14, align 4
  store double %174, double* %175, align 8
  %177 = load i32, i32* %9, align 4
  %insertElmt21 = insertelement <4 x i32> undef, i32 %177, i32 0
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %177, i32 1
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %177, i32 2
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %177, i32 3
  store <4 x i32> %insertElmt24, <4 x i32>* %allocaVec2, align 16
  %178 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop25 = add <4 x i32> %178, <i32 5, i32 5, i32 5, i32 5>
  %179 = add nsw i32 %177, 5
  %180 = sitofp i32 %179 to double
  %181 = load double*, double** %15, align 4
  %182 = getelementptr inbounds double, double* %181, i32 1
  store double* %182, double** %15, align 4
  store double %180, double* %181, align 8
  %183 = load i32, i32* %9, align 4
  %insertElmt26 = insertelement <4 x i32> undef, i32 %183, i32 0
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %183, i32 1
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %183, i32 2
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %183, i32 3
  store <4 x i32> %insertElmt29, <4 x i32>* %allocaVec2, align 16
  %184 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop30 = add <4 x i32> %184, <i32 6, i32 6, i32 6, i32 6>
  %185 = add nsw i32 %183, 6
  %186 = sitofp i32 %185 to double
  %187 = load double*, double** %16, align 4
  %188 = getelementptr inbounds double, double* %187, i32 1
  store double* %188, double** %16, align 4
  store double %186, double* %187, align 8
  %189 = load i32, i32* %9, align 4
  %insertElmt31 = insertelement <4 x i32> undef, i32 %189, i32 0
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %189, i32 1
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %189, i32 2
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %189, i32 3
  store <4 x i32> %insertElmt34, <4 x i32>* %allocaVec2, align 16
  %190 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop35 = add <4 x i32> %190, <i32 7, i32 7, i32 7, i32 7>
  %191 = add nsw i32 %189, 7
  %192 = sitofp i32 %191 to double
  %193 = load double*, double** %17, align 4
  %194 = getelementptr inbounds double, double* %193, i32 1
  store double* %194, double** %17, align 4
  store double %192, double* %193, align 8
  %195 = load i32, i32* %9, align 4
  %insertElmt36 = insertelement <4 x i32> undef, i32 %195, i32 0
  %insertElmt37 = insertelement <4 x i32> %insertElmt36, i32 %195, i32 1
  %insertElmt38 = insertelement <4 x i32> %insertElmt37, i32 %195, i32 2
  %insertElmt39 = insertelement <4 x i32> %insertElmt38, i32 %195, i32 3
  store <4 x i32> %insertElmt39, <4 x i32>* %allocaVec2, align 16
  %196 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop40 = add <4 x i32> %196, <i32 8, i32 8, i32 8, i32 8>
  %197 = add nsw i32 %195, 8
  %198 = sitofp i32 %197 to double
  %199 = load double*, double** %18, align 4
  %200 = getelementptr inbounds double, double* %199, i32 1
  store double* %200, double** %18, align 4
  store double %198, double* %199, align 8
  %201 = load i32, i32* %9, align 4
  %insertElmt41 = insertelement <4 x i32> undef, i32 %201, i32 0
  %insertElmt42 = insertelement <4 x i32> %insertElmt41, i32 %201, i32 1
  %insertElmt43 = insertelement <4 x i32> %insertElmt42, i32 %201, i32 2
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %201, i32 3
  store <4 x i32> %insertElmt44, <4 x i32>* %allocaVec2, align 16
  %202 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop45 = add <4 x i32> %202, <i32 9, i32 9, i32 9, i32 9>
  %203 = add nsw i32 %201, 9
  %204 = sitofp i32 %203 to double
  %205 = load double*, double** %19, align 4
  %206 = getelementptr inbounds double, double* %205, i32 1
  store double* %206, double** %19, align 4
  store double %204, double* %205, align 8
  %207 = load i32, i32* %9, align 4
  %insertElmt46 = insertelement <4 x i32> undef, i32 %207, i32 0
  %insertElmt47 = insertelement <4 x i32> %insertElmt46, i32 %207, i32 1
  %insertElmt48 = insertelement <4 x i32> %insertElmt47, i32 %207, i32 2
  %insertElmt49 = insertelement <4 x i32> %insertElmt48, i32 %207, i32 3
  store <4 x i32> %insertElmt49, <4 x i32>* %allocaVec2, align 16
  %208 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop50 = add <4 x i32> %208, <i32 10, i32 10, i32 10, i32 10>
  %209 = add nsw i32 %207, 10
  %210 = sitofp i32 %209 to double
  %211 = load double*, double** %20, align 4
  %212 = getelementptr inbounds double, double* %211, i32 1
  store double* %212, double** %20, align 4
  store double %210, double* %211, align 8
  %213 = load i32, i32* %9, align 4
  %insertElmt51 = insertelement <4 x i32> undef, i32 %213, i32 0
  %insertElmt52 = insertelement <4 x i32> %insertElmt51, i32 %213, i32 1
  %insertElmt53 = insertelement <4 x i32> %insertElmt52, i32 %213, i32 2
  %insertElmt54 = insertelement <4 x i32> %insertElmt53, i32 %213, i32 3
  store <4 x i32> %insertElmt54, <4 x i32>* %allocaVec2, align 16
  %214 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop55 = add <4 x i32> %214, <i32 11, i32 11, i32 11, i32 11>
  %215 = add nsw i32 %213, 11
  %216 = sitofp i32 %215 to double
  %217 = load double*, double** %21, align 4
  %218 = getelementptr inbounds double, double* %217, i32 1
  store double* %218, double** %21, align 4
  store double %216, double* %217, align 8
  %219 = load i32, i32* %9, align 4
  %insertElmt56 = insertelement <4 x i32> undef, i32 %219, i32 0
  %insertElmt57 = insertelement <4 x i32> %insertElmt56, i32 %219, i32 1
  %insertElmt58 = insertelement <4 x i32> %insertElmt57, i32 %219, i32 2
  %insertElmt59 = insertelement <4 x i32> %insertElmt58, i32 %219, i32 3
  store <4 x i32> %insertElmt59, <4 x i32>* %allocaVec2, align 16
  %220 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop60 = add <4 x i32> %220, <i32 12, i32 12, i32 12, i32 12>
  %221 = add nsw i32 %219, 12
  %222 = sitofp i32 %221 to double
  %223 = load double*, double** %22, align 4
  %224 = getelementptr inbounds double, double* %223, i32 1
  store double* %224, double** %22, align 4
  store double %222, double* %223, align 8
  %225 = load i32, i32* %9, align 4
  %insertElmt61 = insertelement <4 x i32> undef, i32 %225, i32 0
  %insertElmt62 = insertelement <4 x i32> %insertElmt61, i32 %225, i32 1
  %insertElmt63 = insertelement <4 x i32> %insertElmt62, i32 %225, i32 2
  %insertElmt64 = insertelement <4 x i32> %insertElmt63, i32 %225, i32 3
  store <4 x i32> %insertElmt64, <4 x i32>* %allocaVec2, align 16
  %226 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop65 = add <4 x i32> %226, <i32 13, i32 13, i32 13, i32 13>
  %227 = add nsw i32 %225, 13
  %228 = sitofp i32 %227 to double
  %229 = load double*, double** %23, align 4
  %230 = getelementptr inbounds double, double* %229, i32 1
  store double* %230, double** %23, align 4
  store double %228, double* %229, align 8
  %231 = load i32, i32* %9, align 4
  %insertElmt66 = insertelement <4 x i32> undef, i32 %231, i32 0
  %insertElmt67 = insertelement <4 x i32> %insertElmt66, i32 %231, i32 1
  %insertElmt68 = insertelement <4 x i32> %insertElmt67, i32 %231, i32 2
  %insertElmt69 = insertelement <4 x i32> %insertElmt68, i32 %231, i32 3
  store <4 x i32> %insertElmt69, <4 x i32>* %allocaVec2, align 16
  %232 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop70 = add <4 x i32> %232, <i32 14, i32 14, i32 14, i32 14>
  %233 = add nsw i32 %231, 14
  %234 = sitofp i32 %233 to double
  %235 = load double*, double** %24, align 4
  %236 = getelementptr inbounds double, double* %235, i32 1
  store double* %236, double** %24, align 4
  store double %234, double* %235, align 8
  %237 = load i32, i32* %9, align 4
  %insertElmt71 = insertelement <4 x i32> undef, i32 %237, i32 0
  %insertElmt72 = insertelement <4 x i32> %insertElmt71, i32 %237, i32 1
  %insertElmt73 = insertelement <4 x i32> %insertElmt72, i32 %237, i32 2
  %insertElmt74 = insertelement <4 x i32> %insertElmt73, i32 %237, i32 3
  store <4 x i32> %insertElmt74, <4 x i32>* %allocaVec2, align 16
  %238 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop75 = add <4 x i32> %238, <i32 15, i32 15, i32 15, i32 15>
  %239 = add nsw i32 %237, 15
  %240 = sitofp i32 %239 to double
  %241 = load double*, double** %25, align 4
  %242 = getelementptr inbounds double, double* %241, i32 1
  store double* %242, double** %25, align 4
  store double %240, double* %241, align 8
  %243 = load i32, i32* %9, align 4
  %insertElmt76 = insertelement <4 x i32> undef, i32 %243, i32 0
  %insertElmt77 = insertelement <4 x i32> %insertElmt76, i32 %243, i32 1
  %insertElmt78 = insertelement <4 x i32> %insertElmt77, i32 %243, i32 2
  %insertElmt79 = insertelement <4 x i32> %insertElmt78, i32 %243, i32 3
  store <4 x i32> %insertElmt79, <4 x i32>* %allocaVec2, align 16
  %244 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop80 = add <4 x i32> %244, <i32 16, i32 16, i32 16, i32 16>
  %245 = add nsw i32 %243, 16
  %246 = sitofp i32 %245 to double
  %247 = load double*, double** %26, align 4
  %248 = getelementptr inbounds double, double* %247, i32 1
  store double* %248, double** %26, align 4
  store double %246, double* %247, align 8
  %249 = load i32, i32* %9, align 4
  %insertElmt81 = insertelement <4 x i32> undef, i32 %249, i32 0
  %insertElmt82 = insertelement <4 x i32> %insertElmt81, i32 %249, i32 1
  %insertElmt83 = insertelement <4 x i32> %insertElmt82, i32 %249, i32 2
  %insertElmt84 = insertelement <4 x i32> %insertElmt83, i32 %249, i32 3
  store <4 x i32> %insertElmt84, <4 x i32>* %allocaVec2, align 16
  %250 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop85 = add <4 x i32> %250, <i32 17, i32 17, i32 17, i32 17>
  %251 = add nsw i32 %249, 17
  %252 = sitofp i32 %251 to double
  %253 = load double*, double** %27, align 4
  %254 = getelementptr inbounds double, double* %253, i32 1
  store double* %254, double** %27, align 4
  store double %252, double* %253, align 8
  %255 = load i32, i32* %9, align 4
  %insertElmt86 = insertelement <4 x i32> undef, i32 %255, i32 0
  %insertElmt87 = insertelement <4 x i32> %insertElmt86, i32 %255, i32 1
  %insertElmt88 = insertelement <4 x i32> %insertElmt87, i32 %255, i32 2
  %insertElmt89 = insertelement <4 x i32> %insertElmt88, i32 %255, i32 3
  store <4 x i32> %insertElmt89, <4 x i32>* %allocaVec2, align 16
  %256 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop90 = add <4 x i32> %256, <i32 18, i32 18, i32 18, i32 18>
  %257 = add nsw i32 %255, 18
  %258 = sitofp i32 %257 to double
  %259 = load double*, double** %28, align 4
  %260 = getelementptr inbounds double, double* %259, i32 1
  store double* %260, double** %28, align 4
  store double %258, double* %259, align 8
  %261 = load i32, i32* %9, align 4
  %insertElmt91 = insertelement <4 x i32> undef, i32 %261, i32 0
  %insertElmt92 = insertelement <4 x i32> %insertElmt91, i32 %261, i32 1
  %insertElmt93 = insertelement <4 x i32> %insertElmt92, i32 %261, i32 2
  %insertElmt94 = insertelement <4 x i32> %insertElmt93, i32 %261, i32 3
  store <4 x i32> %insertElmt94, <4 x i32>* %allocaVec2, align 16
  %262 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop95 = add <4 x i32> %262, <i32 19, i32 19, i32 19, i32 19>
  %263 = add nsw i32 %261, 19
  %264 = sitofp i32 %263 to double
  %265 = load double*, double** %29, align 4
  %266 = getelementptr inbounds double, double* %265, i32 1
  store double* %266, double** %29, align 4
  store double %264, double* %265, align 8
  %267 = load i32, i32* %9, align 4
  %insertElmt96 = insertelement <4 x i32> undef, i32 %267, i32 0
  %insertElmt97 = insertelement <4 x i32> %insertElmt96, i32 %267, i32 1
  %insertElmt98 = insertelement <4 x i32> %insertElmt97, i32 %267, i32 2
  %insertElmt99 = insertelement <4 x i32> %insertElmt98, i32 %267, i32 3
  store <4 x i32> %insertElmt99, <4 x i32>* %allocaVec2, align 16
  %268 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop100 = add <4 x i32> %268, <i32 20, i32 20, i32 20, i32 20>
  %269 = add nsw i32 %267, 20
  %270 = sitofp i32 %269 to double
  %271 = load double*, double** %30, align 4
  %272 = getelementptr inbounds double, double* %271, i32 1
  store double* %272, double** %30, align 4
  store double %270, double* %271, align 8
  %273 = load i32, i32* %9, align 4
  %insertElmt101 = insertelement <4 x i32> undef, i32 %273, i32 0
  %insertElmt102 = insertelement <4 x i32> %insertElmt101, i32 %273, i32 1
  %insertElmt103 = insertelement <4 x i32> %insertElmt102, i32 %273, i32 2
  %insertElmt104 = insertelement <4 x i32> %insertElmt103, i32 %273, i32 3
  store <4 x i32> %insertElmt104, <4 x i32>* %allocaVec2, align 16
  %274 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop105 = add <4 x i32> %274, <i32 21, i32 21, i32 21, i32 21>
  %275 = add nsw i32 %273, 21
  %276 = sitofp i32 %275 to double
  %277 = load double*, double** %31, align 4
  %278 = getelementptr inbounds double, double* %277, i32 1
  store double* %278, double** %31, align 4
  store double %276, double* %277, align 8
  %279 = load i32, i32* %9, align 4
  %insertElmt106 = insertelement <4 x i32> undef, i32 %279, i32 0
  %insertElmt107 = insertelement <4 x i32> %insertElmt106, i32 %279, i32 1
  %insertElmt108 = insertelement <4 x i32> %insertElmt107, i32 %279, i32 2
  %insertElmt109 = insertelement <4 x i32> %insertElmt108, i32 %279, i32 3
  store <4 x i32> %insertElmt109, <4 x i32>* %allocaVec2, align 16
  %280 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop110 = add <4 x i32> %280, <i32 22, i32 22, i32 22, i32 22>
  %281 = add nsw i32 %279, 22
  %282 = sitofp i32 %281 to double
  %283 = load double*, double** %32, align 4
  %284 = getelementptr inbounds double, double* %283, i32 1
  store double* %284, double** %32, align 4
  store double %282, double* %283, align 8
  %285 = load i32, i32* %9, align 4
  %insertElmt111 = insertelement <4 x i32> undef, i32 %285, i32 0
  %insertElmt112 = insertelement <4 x i32> %insertElmt111, i32 %285, i32 1
  %insertElmt113 = insertelement <4 x i32> %insertElmt112, i32 %285, i32 2
  %insertElmt114 = insertelement <4 x i32> %insertElmt113, i32 %285, i32 3
  store <4 x i32> %insertElmt114, <4 x i32>* %allocaVec2, align 16
  %286 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop115 = add <4 x i32> %286, <i32 23, i32 23, i32 23, i32 23>
  %287 = add nsw i32 %285, 23
  %288 = sitofp i32 %287 to double
  %289 = load double*, double** %33, align 4
  %290 = getelementptr inbounds double, double* %289, i32 1
  store double* %290, double** %33, align 4
  store double %288, double* %289, align 8
  %291 = load i32, i32* %9, align 4
  %insertElmt116 = insertelement <4 x i32> undef, i32 %291, i32 0
  %insertElmt117 = insertelement <4 x i32> %insertElmt116, i32 %291, i32 1
  %insertElmt118 = insertelement <4 x i32> %insertElmt117, i32 %291, i32 2
  %insertElmt119 = insertelement <4 x i32> %insertElmt118, i32 %291, i32 3
  store <4 x i32> %insertElmt119, <4 x i32>* %allocaVec2, align 16
  %292 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop120 = add <4 x i32> %292, <i32 24, i32 24, i32 24, i32 24>
  %293 = add nsw i32 %291, 24
  %294 = sitofp i32 %293 to double
  %295 = load double*, double** %34, align 4
  %296 = getelementptr inbounds double, double* %295, i32 1
  store double* %296, double** %34, align 4
  store double %294, double* %295, align 8
  %297 = load i32, i32* %9, align 4
  %insertElmt121 = insertelement <4 x i32> undef, i32 %297, i32 0
  %insertElmt122 = insertelement <4 x i32> %insertElmt121, i32 %297, i32 1
  %insertElmt123 = insertelement <4 x i32> %insertElmt122, i32 %297, i32 2
  %insertElmt124 = insertelement <4 x i32> %insertElmt123, i32 %297, i32 3
  store <4 x i32> %insertElmt124, <4 x i32>* %allocaVec2, align 16
  %298 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop125 = add <4 x i32> %298, <i32 25, i32 25, i32 25, i32 25>
  %299 = add nsw i32 %297, 25
  %300 = sitofp i32 %299 to double
  %301 = load double*, double** %35, align 4
  %302 = getelementptr inbounds double, double* %301, i32 1
  store double* %302, double** %35, align 4
  store double %300, double* %301, align 8
  %303 = load i32, i32* %9, align 4
  %insertElmt126 = insertelement <4 x i32> undef, i32 %303, i32 0
  %insertElmt127 = insertelement <4 x i32> %insertElmt126, i32 %303, i32 1
  %insertElmt128 = insertelement <4 x i32> %insertElmt127, i32 %303, i32 2
  %insertElmt129 = insertelement <4 x i32> %insertElmt128, i32 %303, i32 3
  store <4 x i32> %insertElmt129, <4 x i32>* %allocaVec2, align 16
  %304 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop130 = add <4 x i32> %304, <i32 26, i32 26, i32 26, i32 26>
  %305 = add nsw i32 %303, 26
  %306 = sitofp i32 %305 to double
  %307 = load double*, double** %36, align 4
  %308 = getelementptr inbounds double, double* %307, i32 1
  store double* %308, double** %36, align 4
  store double %306, double* %307, align 8
  br label %309

; <label>:309:                                    ; preds = %146
  %310 = load i32, i32* %9, align 4
  %insertElmt131 = insertelement <4 x i32> undef, i32 %310, i32 0
  %insertElmt132 = insertelement <4 x i32> %insertElmt131, i32 %310, i32 1
  %insertElmt133 = insertelement <4 x i32> %insertElmt132, i32 %310, i32 2
  %insertElmt134 = insertelement <4 x i32> %insertElmt133, i32 %310, i32 3
  store <4 x i32> %insertElmt134, <4 x i32>* %allocaVec2, align 16
  %311 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop135 = add <4 x i32> %311, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop135, <4 x i32>* %allocaVec2
  %312 = add nsw i32 %310, 1
  store i32 %312, i32* %9, align 4
  br label %142

; <label>:313:                                    ; preds = %142
  store i32 0, i32* %9, align 4
  br label %314

; <label>:314:                                    ; preds = %335, %313
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @x_size, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %337

; <label>:318:                                    ; preds = %314
  %319 = load i32, i32* %9, align 4
  %320 = sitofp i32 %319 to double
  store double %320, double* %CastInst
  %321 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %321, i32 0
  %insertCast136 = insertelement <2 x double> %insertCast, double %321, i32 1
  store <2 x double> %insertCast136, <2 x double>* %CastInstVec, align 4
  %322 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop137 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %322
  %323 = fmul double 2.000000e+00, %320
  %324 = load double*, double** %7, align 4
  %325 = getelementptr inbounds double, double* %324, i32 1
  store double* %325, double** %7, align 4
  store double %323, double* %324, align 8
  br label %326

; <label>:326:                                    ; preds = %318
  %327 = load i32, i32* %9, align 4
  %328 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop138 = add <4 x i32> %328, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop138, <4 x i32>* %allocaVec2
  %329 = load <4 x i32>, <4 x i32>* %allocaVec2, align 4
  %extractE = extractelement <4 x i32> %329, i64 0
  %extractE139 = extractelement <4 x i32> %329, i64 1
  %extractE140 = extractelement <4 x i32> %329, i64 2
  %sum = add i32 %extractE, %extractE139
  %sum141 = add i32 %sum, %extractE140
  %330 = add nsw i32 %327, 1
  %Fmul = mul i32 %330, 3
  store i32 %330, i32* %Recovery
  %Fcmp = icmp ne i32 %sum141, %Fmul
  br i1 %Fcmp, label %331, label %335

; <label>:331:                                    ; preds = %326
  %remThree = sdiv i32 %sum141, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %332, label %333

; <label>:332:                                    ; preds = %331
  store i32 %330, i32* %Recovery, align 4
  br label %334

; <label>:333:                                    ; preds = %331
  store i32 %extractE, i32* %Recovery, align 4
  br label %334

; <label>:334:                                    ; preds = %333, %332
  br label %335

; <label>:335:                                    ; preds = %326, %334
  %336 = load i32, i32* %Recovery, align 4
  store i32 %336, i32* %9, align 4
  br label %314

; <label>:337:                                    ; preds = %314
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
