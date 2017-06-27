; ModuleID = 'all_t.bc'
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
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec10 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 8
  %allocaVec11 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec12 = alloca <4 x i64>, align 16
  %CastInst2 = alloca i64, align 4
  %CastInstVec3 = alloca <4 x i64>, align 16
  %allocaVec13 = alloca <2 x double>, align 16
  %CastInst4 = alloca double, align 4
  %CastInstVec5 = alloca <2 x double>, align 16
  %allocaVec14 = alloca <2 x double>, align 16
  %CastInst6 = alloca double, align 4
  %CastInstVec7 = alloca <2 x double>, align 16
  %allocaVec15 = alloca <2 x double>, align 16
  %CastInst8 = alloca double, align 4
  %CastInstVec9 = alloca <2 x double>, align 16
  %allocaVec16 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %2 = alloca %struct.Domain_s, align 4
  %3 = alloca %struct.Domain_s*, align 8
  %4 = alloca %struct.RadiationData_t, align 8
  %5 = alloca %struct.RadiationData_t*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %allocaVec17 = alloca <4 x i64>, align 16
  %8 = alloca i64, align 8
  %allocaVec18 = alloca <4 x i64>, align 16
  %9 = alloca i64, align 8
  %allocaVec19 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %allocaVec20 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec21 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec16
  store i32 0, i32* %1, align 4
  store %struct.Domain_s* %2, %struct.Domain_s** %3, align 8
  store %struct.RadiationData_t* %4, %struct.RadiationData_t** %5, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec17
  store i64 0, i64* %8, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec18
  store i64 0, i64* %9, align 8
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec19
  store double 0.000000e+00, double* %10, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec20
  store i32 0, i32* %13, align 4
  store <4 x i32> <i32 5000, i32 5000, i32 5000, i32 5000>, <4 x i32>* %allocaVec21
  store i32 5000, i32* %14, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  call void (...) bitcast (void ()* @readInput to void (...)*)()
  %16 = load i32, i32* @i_ub, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %CastInst
  %18 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %18, i32 0
  %insertCast22 = insertelement <4 x i64> %insertCast, i64 %18, i32 1
  %insertCast23 = insertelement <4 x i64> %insertCast22, i64 %18, i32 2
  %insertCast24 = insertelement <4 x i64> %insertCast23, i64 %18, i32 3
  store <4 x i64> %insertCast24, <4 x i64>* %CastInstVec, align 4
  %19 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop = mul <4 x i64> %19, <i64 8, i64 8, i64 8, i64 8>
  %20 = mul i64 %17, 8
  %21 = call i8* @malloc(i64 %20)
  %22 = bitcast i8* %21 to double*
  store double* %22, double** %12, align 8
  %23 = load i32, i32* @x_size, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %CastInst2
  %25 = load i64, i64* %CastInst2, align 4
  %insertCast25 = insertelement <4 x i64> undef, i64 %25, i32 0
  %insertCast26 = insertelement <4 x i64> %insertCast25, i64 %25, i32 1
  %insertCast27 = insertelement <4 x i64> %insertCast26, i64 %25, i32 2
  %insertCast28 = insertelement <4 x i64> %insertCast27, i64 %25, i32 3
  store <4 x i64> %insertCast28, <4 x i64>* %CastInstVec3, align 4
  %26 = load <4 x i64>, <4 x i64>* %CastInstVec3, align 4
  %Vop29 = mul <4 x i64> %26, <i64 8, i64 8, i64 8, i64 8>
  %27 = mul i64 %24, 8
  %28 = call i8* @malloc(i64 %27)
  %29 = bitcast i8* %28 to double*
  store double* %29, double** %11, align 8
  %30 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 8
  call void @allocMem(%struct.RadiationData_t* %30)
  %31 = load %struct.Domain_s*, %struct.Domain_s** %3, align 8
  %32 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 8
  %33 = load double*, double** %11, align 8
  %34 = load double*, double** %12, align 8
  call void @init(%struct.Domain_s* %31, %struct.RadiationData_t* %32, double* %33, double* %34)
  %35 = call i32 @gettimeofday(%struct.timeval* %6, i8* null)
  %36 = call i64 @clock()
  store i64 %36, i64* %8, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec20
  store i32 0, i32* %13, align 4
  br label %37

; <label>:37:                                     ; preds = %45, %0
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 5000
  br i1 %39, label %40, label %49

; <label>:40:                                     ; preds = %37
  %41 = load %struct.Domain_s*, %struct.Domain_s** %3, align 8
  %42 = load %struct.RadiationData_t*, %struct.RadiationData_t** %5, align 8
  %43 = load double*, double** %11, align 8
  %44 = load double*, double** %12, align 8
  call void @rmatmult3(%struct.Domain_s* %41, %struct.RadiationData_t* %42, double* %43, double* %44)
  br label %45

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %13, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %46, i32 0
  %insertElmt30 = insertelement <4 x i32> %insertElmt, i32 %46, i32 1
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %46, i32 2
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %46, i32 3
  store <4 x i32> %insertElmt32, <4 x i32>* %allocaVec20, align 16
  %47 = load <4 x i32>, <4 x i32>* %allocaVec20, align 16
  %Vop33 = add <4 x i32> %47, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop33, <4 x i32>* %allocaVec20
  %48 = add nsw i32 %46, 1
  store i32 %48, i32* %13, align 4
  br label %37

; <label>:49:                                     ; preds = %37
  %50 = call i32 @gettimeofday(%struct.timeval* %7, i8* null)
  %51 = call i64 @clock()
  store i64 %51, i64* %9, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec20
  store i32 0, i32* %13, align 4
  br label %53

; <label>:53:                                     ; preds = %65, %49
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @i_ub, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = load double*, double** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %58, double %63)
  br label %65

; <label>:65:                                     ; preds = %57
  %66 = load i32, i32* @i_ub, align 4
  %67 = sdiv i32 %66, 5
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %53

; <label>:70:                                     ; preds = %53
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %72, %74
  %76 = sitofp i64 %75 to double
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = sitofp i64 %81 to double
  %83 = fdiv double %82, 1.000000e+06
  %84 = fadd double %76, %83
  store double %84, double* %10, align 8
  %85 = load double, double* %10, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %85)
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %87, %88
  %90 = sitofp i64 %89 to double
  %91 = fdiv double %90, 1.000000e+06
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), double %91)
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare i32 @printf(i8*, ...) #1

declare i8* @malloc(i64) #1

declare i32 @gettimeofday(%struct.timeval*, i8*) #1

declare i64 @clock() #1

; Function Attrs: nounwind
define void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec38 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec39 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec40 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec41 = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %allocaVec42 = alloca <4 x i64>, align 16
  %CastInst4 = alloca i64, align 4
  %CastInstVec5 = alloca <4 x i64>, align 16
  %allocaVec43 = alloca <4 x i64>, align 16
  %CastInst6 = alloca i64, align 4
  %CastInstVec7 = alloca <4 x i64>, align 16
  %allocaVec44 = alloca <4 x i64>, align 16
  %CastInst8 = alloca i64, align 4
  %CastInstVec9 = alloca <4 x i64>, align 16
  %allocaVec45 = alloca <4 x i64>, align 16
  %CastInst10 = alloca i64, align 4
  %CastInstVec11 = alloca <4 x i64>, align 16
  %allocaVec46 = alloca <4 x i64>, align 16
  %CastInst12 = alloca i64, align 4
  %CastInstVec13 = alloca <4 x i64>, align 16
  %allocaVec47 = alloca <4 x i64>, align 16
  %CastInst14 = alloca i64, align 4
  %CastInstVec15 = alloca <4 x i64>, align 16
  %allocaVec48 = alloca <4 x i64>, align 16
  %CastInst16 = alloca i64, align 4
  %CastInstVec17 = alloca <4 x i64>, align 16
  %allocaVec49 = alloca <4 x i64>, align 16
  %CastInst18 = alloca i64, align 4
  %CastInstVec19 = alloca <4 x i64>, align 16
  %allocaVec50 = alloca <4 x i64>, align 16
  %CastInst20 = alloca i64, align 4
  %CastInstVec21 = alloca <4 x i64>, align 16
  %allocaVec51 = alloca <4 x i64>, align 16
  %CastInst22 = alloca i64, align 4
  %CastInstVec23 = alloca <4 x i64>, align 16
  %allocaVec52 = alloca <4 x i64>, align 16
  %CastInst24 = alloca i64, align 4
  %CastInstVec25 = alloca <4 x i64>, align 16
  %allocaVec53 = alloca <4 x i64>, align 16
  %CastInst26 = alloca i64, align 4
  %CastInstVec27 = alloca <4 x i64>, align 16
  %allocaVec54 = alloca <4 x i64>, align 16
  %CastInst28 = alloca i64, align 4
  %CastInstVec29 = alloca <4 x i64>, align 16
  %allocaVec55 = alloca <4 x i64>, align 16
  %CastInst30 = alloca i64, align 4
  %CastInstVec31 = alloca <4 x i64>, align 16
  %allocaVec56 = alloca <4 x i64>, align 16
  %CastInst32 = alloca i64, align 4
  %CastInstVec33 = alloca <4 x i64>, align 16
  %allocaVec57 = alloca <4 x i64>, align 16
  %CastInst34 = alloca i64, align 4
  %CastInstVec35 = alloca <4 x i64>, align 16
  %allocaVec58 = alloca <4 x i64>, align 16
  %CastInst36 = alloca i64, align 4
  %CastInstVec37 = alloca <4 x i64>, align 16
  %5 = alloca %struct.Domain_s*, align 8
  %6 = alloca %struct.RadiationData_t*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
  %allocaVec59 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %allocaVec60 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec61 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  %allocaVec62 = alloca <4 x i32>, align 16
  %13 = alloca i32, align 4
  %allocaVec63 = alloca <4 x i32>, align 16
  %14 = alloca i32, align 4
  %allocaVec64 = alloca <4 x i32>, align 16
  %15 = alloca i32, align 4
  %allocaVec65 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec66 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec67 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  %allocaVec68 = alloca <4 x i32>, align 16
  %19 = alloca i32, align 4
  %allocaVec69 = alloca <4 x i32>, align 16
  %20 = alloca i32, align 4
  %allocaVec70 = alloca <4 x i32>, align 16
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
  store i64 %183, i64* %CastInst
  %184 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %184, i32 0
  %insertCast71 = insertelement <4 x i64> %insertCast, i64 %184, i32 1
  %insertCast72 = insertelement <4 x i64> %insertCast71, i64 %184, i32 2
  %insertCast73 = insertelement <4 x i64> %insertCast72, i64 %184, i32 3
  store <4 x i64> %insertCast73, <4 x i64>* %CastInstVec, align 4
  %185 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop = sub <4 x i64> zeroinitializer, %185
  %186 = sub i64 0, %183
  %187 = getelementptr inbounds double, double* %181, i64 %186
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %CastInst4
  %190 = load i64, i64* %CastInst4, align 4
  %insertCast74 = insertelement <4 x i64> undef, i64 %190, i32 0
  %insertCast75 = insertelement <4 x i64> %insertCast74, i64 %190, i32 1
  %insertCast76 = insertelement <4 x i64> %insertCast75, i64 %190, i32 2
  %insertCast77 = insertelement <4 x i64> %insertCast76, i64 %190, i32 3
  store <4 x i64> %insertCast77, <4 x i64>* %CastInstVec5, align 4
  %191 = load <4 x i64>, <4 x i64>* %CastInstVec5, align 4
  %Vop78 = sub <4 x i64> zeroinitializer, %191
  %192 = sub i64 0, %189
  %193 = getelementptr inbounds double, double* %187, i64 %192
  %194 = getelementptr inbounds double, double* %193, i64 -1
  store double* %194, double** %49, align 8
  %195 = load double*, double** %7, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %CastInst6
  %198 = load i64, i64* %CastInst6, align 4
  %insertCast79 = insertelement <4 x i64> undef, i64 %198, i32 0
  %insertCast80 = insertelement <4 x i64> %insertCast79, i64 %198, i32 1
  %insertCast81 = insertelement <4 x i64> %insertCast80, i64 %198, i32 2
  %insertCast82 = insertelement <4 x i64> %insertCast81, i64 %198, i32 3
  store <4 x i64> %insertCast82, <4 x i64>* %CastInstVec7, align 4
  %199 = load <4 x i64>, <4 x i64>* %CastInstVec7, align 4
  %Vop83 = sub <4 x i64> zeroinitializer, %199
  %200 = sub i64 0, %197
  %201 = getelementptr inbounds double, double* %195, i64 %200
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %CastInst8
  %204 = load i64, i64* %CastInst8, align 4
  %insertCast84 = insertelement <4 x i64> undef, i64 %204, i32 0
  %insertCast85 = insertelement <4 x i64> %insertCast84, i64 %204, i32 1
  %insertCast86 = insertelement <4 x i64> %insertCast85, i64 %204, i32 2
  %insertCast87 = insertelement <4 x i64> %insertCast86, i64 %204, i32 3
  store <4 x i64> %insertCast87, <4 x i64>* %CastInstVec9, align 4
  %205 = load <4 x i64>, <4 x i64>* %CastInstVec9, align 4
  %Vop88 = sub <4 x i64> zeroinitializer, %205
  %206 = sub i64 0, %203
  %207 = getelementptr inbounds double, double* %201, i64 %206
  store double* %207, double** %50, align 8
  %208 = load double*, double** %7, align 8
  %209 = load i32, i32* %21, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %CastInst10
  %211 = load i64, i64* %CastInst10, align 4
  %insertCast89 = insertelement <4 x i64> undef, i64 %211, i32 0
  %insertCast90 = insertelement <4 x i64> %insertCast89, i64 %211, i32 1
  %insertCast91 = insertelement <4 x i64> %insertCast90, i64 %211, i32 2
  %insertCast92 = insertelement <4 x i64> %insertCast91, i64 %211, i32 3
  store <4 x i64> %insertCast92, <4 x i64>* %CastInstVec11, align 4
  %212 = load <4 x i64>, <4 x i64>* %CastInstVec11, align 4
  %Vop93 = sub <4 x i64> zeroinitializer, %212
  %213 = sub i64 0, %210
  %214 = getelementptr inbounds double, double* %208, i64 %213
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %CastInst12
  %217 = load i64, i64* %CastInst12, align 4
  %insertCast94 = insertelement <4 x i64> undef, i64 %217, i32 0
  %insertCast95 = insertelement <4 x i64> %insertCast94, i64 %217, i32 1
  %insertCast96 = insertelement <4 x i64> %insertCast95, i64 %217, i32 2
  %insertCast97 = insertelement <4 x i64> %insertCast96, i64 %217, i32 3
  store <4 x i64> %insertCast97, <4 x i64>* %CastInstVec13, align 4
  %218 = load <4 x i64>, <4 x i64>* %CastInstVec13, align 4
  %Vop98 = sub <4 x i64> zeroinitializer, %218
  %219 = sub i64 0, %216
  %220 = getelementptr inbounds double, double* %214, i64 %219
  %221 = getelementptr inbounds double, double* %220, i64 1
  store double* %221, double** %51, align 8
  %222 = load double*, double** %7, align 8
  %223 = load i32, i32* %21, align 4
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %CastInst14
  %225 = load i64, i64* %CastInst14, align 4
  %insertCast99 = insertelement <4 x i64> undef, i64 %225, i32 0
  %insertCast100 = insertelement <4 x i64> %insertCast99, i64 %225, i32 1
  %insertCast101 = insertelement <4 x i64> %insertCast100, i64 %225, i32 2
  %insertCast102 = insertelement <4 x i64> %insertCast101, i64 %225, i32 3
  store <4 x i64> %insertCast102, <4 x i64>* %CastInstVec15, align 4
  %226 = load <4 x i64>, <4 x i64>* %CastInstVec15, align 4
  %Vop103 = sub <4 x i64> zeroinitializer, %226
  %227 = sub i64 0, %224
  %228 = getelementptr inbounds double, double* %222, i64 %227
  %229 = getelementptr inbounds double, double* %228, i64 -1
  store double* %229, double** %52, align 8
  %230 = load double*, double** %7, align 8
  %231 = load i32, i32* %21, align 4
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %CastInst16
  %233 = load i64, i64* %CastInst16, align 4
  %insertCast104 = insertelement <4 x i64> undef, i64 %233, i32 0
  %insertCast105 = insertelement <4 x i64> %insertCast104, i64 %233, i32 1
  %insertCast106 = insertelement <4 x i64> %insertCast105, i64 %233, i32 2
  %insertCast107 = insertelement <4 x i64> %insertCast106, i64 %233, i32 3
  store <4 x i64> %insertCast107, <4 x i64>* %CastInstVec17, align 4
  %234 = load <4 x i64>, <4 x i64>* %CastInstVec17, align 4
  %Vop108 = sub <4 x i64> zeroinitializer, %234
  %235 = sub i64 0, %232
  %236 = getelementptr inbounds double, double* %230, i64 %235
  store double* %236, double** %53, align 8
  %237 = load double*, double** %7, align 8
  %238 = load i32, i32* %21, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %CastInst18
  %240 = load i64, i64* %CastInst18, align 4
  %insertCast109 = insertelement <4 x i64> undef, i64 %240, i32 0
  %insertCast110 = insertelement <4 x i64> %insertCast109, i64 %240, i32 1
  %insertCast111 = insertelement <4 x i64> %insertCast110, i64 %240, i32 2
  %insertCast112 = insertelement <4 x i64> %insertCast111, i64 %240, i32 3
  store <4 x i64> %insertCast112, <4 x i64>* %CastInstVec19, align 4
  %241 = load <4 x i64>, <4 x i64>* %CastInstVec19, align 4
  %Vop113 = sub <4 x i64> zeroinitializer, %241
  %242 = sub i64 0, %239
  %243 = getelementptr inbounds double, double* %237, i64 %242
  %244 = getelementptr inbounds double, double* %243, i64 1
  store double* %244, double** %54, align 8
  %245 = load double*, double** %7, align 8
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %CastInst20
  %248 = load i64, i64* %CastInst20, align 4
  %insertCast114 = insertelement <4 x i64> undef, i64 %248, i32 0
  %insertCast115 = insertelement <4 x i64> %insertCast114, i64 %248, i32 1
  %insertCast116 = insertelement <4 x i64> %insertCast115, i64 %248, i32 2
  %insertCast117 = insertelement <4 x i64> %insertCast116, i64 %248, i32 3
  store <4 x i64> %insertCast117, <4 x i64>* %CastInstVec21, align 4
  %249 = load <4 x i64>, <4 x i64>* %CastInstVec21, align 4
  %Vop118 = sub <4 x i64> zeroinitializer, %249
  %250 = sub i64 0, %247
  %251 = getelementptr inbounds double, double* %245, i64 %250
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %251, i64 %253
  %255 = getelementptr inbounds double, double* %254, i64 -1
  store double* %255, double** %55, align 8
  %256 = load double*, double** %7, align 8
  %257 = load i32, i32* %21, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %CastInst22
  %259 = load i64, i64* %CastInst22, align 4
  %insertCast119 = insertelement <4 x i64> undef, i64 %259, i32 0
  %insertCast120 = insertelement <4 x i64> %insertCast119, i64 %259, i32 1
  %insertCast121 = insertelement <4 x i64> %insertCast120, i64 %259, i32 2
  %insertCast122 = insertelement <4 x i64> %insertCast121, i64 %259, i32 3
  store <4 x i64> %insertCast122, <4 x i64>* %CastInstVec23, align 4
  %260 = load <4 x i64>, <4 x i64>* %CastInstVec23, align 4
  %Vop123 = sub <4 x i64> zeroinitializer, %260
  %261 = sub i64 0, %258
  %262 = getelementptr inbounds double, double* %256, i64 %261
  %263 = load i32, i32* %20, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, double* %262, i64 %264
  store double* %265, double** %56, align 8
  %266 = load double*, double** %7, align 8
  %267 = load i32, i32* %21, align 4
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %CastInst24
  %269 = load i64, i64* %CastInst24, align 4
  %insertCast124 = insertelement <4 x i64> undef, i64 %269, i32 0
  %insertCast125 = insertelement <4 x i64> %insertCast124, i64 %269, i32 1
  %insertCast126 = insertelement <4 x i64> %insertCast125, i64 %269, i32 2
  %insertCast127 = insertelement <4 x i64> %insertCast126, i64 %269, i32 3
  store <4 x i64> %insertCast127, <4 x i64>* %CastInstVec25, align 4
  %270 = load <4 x i64>, <4 x i64>* %CastInstVec25, align 4
  %Vop128 = sub <4 x i64> zeroinitializer, %270
  %271 = sub i64 0, %268
  %272 = getelementptr inbounds double, double* %266, i64 %271
  %273 = load i32, i32* %20, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds double, double* %272, i64 %274
  %276 = getelementptr inbounds double, double* %275, i64 1
  store double* %276, double** %57, align 8
  %277 = load double*, double** %7, align 8
  %278 = load i32, i32* %20, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %CastInst26
  %280 = load i64, i64* %CastInst26, align 4
  %insertCast129 = insertelement <4 x i64> undef, i64 %280, i32 0
  %insertCast130 = insertelement <4 x i64> %insertCast129, i64 %280, i32 1
  %insertCast131 = insertelement <4 x i64> %insertCast130, i64 %280, i32 2
  %insertCast132 = insertelement <4 x i64> %insertCast131, i64 %280, i32 3
  store <4 x i64> %insertCast132, <4 x i64>* %CastInstVec27, align 4
  %281 = load <4 x i64>, <4 x i64>* %CastInstVec27, align 4
  %Vop133 = sub <4 x i64> zeroinitializer, %281
  %282 = sub i64 0, %279
  %283 = getelementptr inbounds double, double* %277, i64 %282
  %284 = getelementptr inbounds double, double* %283, i64 -1
  store double* %284, double** %58, align 8
  %285 = load double*, double** %7, align 8
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %CastInst28
  %288 = load i64, i64* %CastInst28, align 4
  %insertCast134 = insertelement <4 x i64> undef, i64 %288, i32 0
  %insertCast135 = insertelement <4 x i64> %insertCast134, i64 %288, i32 1
  %insertCast136 = insertelement <4 x i64> %insertCast135, i64 %288, i32 2
  %insertCast137 = insertelement <4 x i64> %insertCast136, i64 %288, i32 3
  store <4 x i64> %insertCast137, <4 x i64>* %CastInstVec29, align 4
  %289 = load <4 x i64>, <4 x i64>* %CastInstVec29, align 4
  %Vop138 = sub <4 x i64> zeroinitializer, %289
  %290 = sub i64 0, %287
  %291 = getelementptr inbounds double, double* %285, i64 %290
  store double* %291, double** %59, align 8
  %292 = load double*, double** %7, align 8
  %293 = load i32, i32* %20, align 4
  %294 = sext i32 %293 to i64
  store i64 %294, i64* %CastInst30
  %295 = load i64, i64* %CastInst30, align 4
  %insertCast139 = insertelement <4 x i64> undef, i64 %295, i32 0
  %insertCast140 = insertelement <4 x i64> %insertCast139, i64 %295, i32 1
  %insertCast141 = insertelement <4 x i64> %insertCast140, i64 %295, i32 2
  %insertCast142 = insertelement <4 x i64> %insertCast141, i64 %295, i32 3
  store <4 x i64> %insertCast142, <4 x i64>* %CastInstVec31, align 4
  %296 = load <4 x i64>, <4 x i64>* %CastInstVec31, align 4
  %Vop143 = sub <4 x i64> zeroinitializer, %296
  %297 = sub i64 0, %294
  %298 = getelementptr inbounds double, double* %292, i64 %297
  %299 = getelementptr inbounds double, double* %298, i64 1
  store double* %299, double** %60, align 8
  %300 = load double*, double** %7, align 8
  %301 = getelementptr inbounds double, double* %300, i64 -1
  store double* %301, double** %61, align 8
  %302 = load double*, double** %7, align 8
  store double* %302, double** %62, align 8
  %303 = load double*, double** %7, align 8
  %304 = getelementptr inbounds double, double* %303, i64 1
  store double* %304, double** %63, align 8
  %305 = load double*, double** %7, align 8
  %306 = load i32, i32* %20, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds double, double* %305, i64 %307
  %309 = getelementptr inbounds double, double* %308, i64 -1
  store double* %309, double** %64, align 8
  %310 = load double*, double** %7, align 8
  %311 = load i32, i32* %20, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double, double* %310, i64 %312
  store double* %313, double** %65, align 8
  %314 = load double*, double** %7, align 8
  %315 = load i32, i32* %20, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds double, double* %314, i64 %316
  %318 = getelementptr inbounds double, double* %317, i64 1
  store double* %318, double** %66, align 8
  %319 = load double*, double** %7, align 8
  %320 = load i32, i32* %21, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds double, double* %319, i64 %321
  %323 = load i32, i32* %20, align 4
  %324 = sext i32 %323 to i64
  store i64 %324, i64* %CastInst32
  %325 = load i64, i64* %CastInst32, align 4
  %insertCast144 = insertelement <4 x i64> undef, i64 %325, i32 0
  %insertCast145 = insertelement <4 x i64> %insertCast144, i64 %325, i32 1
  %insertCast146 = insertelement <4 x i64> %insertCast145, i64 %325, i32 2
  %insertCast147 = insertelement <4 x i64> %insertCast146, i64 %325, i32 3
  store <4 x i64> %insertCast147, <4 x i64>* %CastInstVec33, align 4
  %326 = load <4 x i64>, <4 x i64>* %CastInstVec33, align 4
  %Vop148 = sub <4 x i64> zeroinitializer, %326
  %327 = sub i64 0, %324
  %328 = getelementptr inbounds double, double* %322, i64 %327
  %329 = getelementptr inbounds double, double* %328, i64 -1
  store double* %329, double** %67, align 8
  %330 = load double*, double** %7, align 8
  %331 = load i32, i32* %21, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds double, double* %330, i64 %332
  %334 = load i32, i32* %20, align 4
  %335 = sext i32 %334 to i64
  store i64 %335, i64* %CastInst34
  %336 = load i64, i64* %CastInst34, align 4
  %insertCast149 = insertelement <4 x i64> undef, i64 %336, i32 0
  %insertCast150 = insertelement <4 x i64> %insertCast149, i64 %336, i32 1
  %insertCast151 = insertelement <4 x i64> %insertCast150, i64 %336, i32 2
  %insertCast152 = insertelement <4 x i64> %insertCast151, i64 %336, i32 3
  store <4 x i64> %insertCast152, <4 x i64>* %CastInstVec35, align 4
  %337 = load <4 x i64>, <4 x i64>* %CastInstVec35, align 4
  %Vop153 = sub <4 x i64> zeroinitializer, %337
  %338 = sub i64 0, %335
  %339 = getelementptr inbounds double, double* %333, i64 %338
  store double* %339, double** %68, align 8
  %340 = load double*, double** %7, align 8
  %341 = load i32, i32* %21, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, double* %340, i64 %342
  %344 = load i32, i32* %20, align 4
  %345 = sext i32 %344 to i64
  store i64 %345, i64* %CastInst36
  %346 = load i64, i64* %CastInst36, align 4
  %insertCast154 = insertelement <4 x i64> undef, i64 %346, i32 0
  %insertCast155 = insertelement <4 x i64> %insertCast154, i64 %346, i32 1
  %insertCast156 = insertelement <4 x i64> %insertCast155, i64 %346, i32 2
  %insertCast157 = insertelement <4 x i64> %insertCast156, i64 %346, i32 3
  store <4 x i64> %insertCast157, <4 x i64>* %CastInstVec37, align 4
  %347 = load <4 x i64>, <4 x i64>* %CastInstVec37, align 4
  %Vop158 = sub <4 x i64> zeroinitializer, %347
  %348 = sub i64 0, %345
  %349 = getelementptr inbounds double, double* %343, i64 %348
  %350 = getelementptr inbounds double, double* %349, i64 1
  store double* %350, double** %69, align 8
  %351 = load double*, double** %7, align 8
  %352 = load i32, i32* %21, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds double, double* %351, i64 %353
  %355 = getelementptr inbounds double, double* %354, i64 -1
  store double* %355, double** %70, align 8
  %356 = load double*, double** %7, align 8
  %357 = load i32, i32* %21, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds double, double* %356, i64 %358
  store double* %359, double** %71, align 8
  %360 = load double*, double** %7, align 8
  %361 = load i32, i32* %21, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds double, double* %360, i64 %362
  %364 = getelementptr inbounds double, double* %363, i64 1
  store double* %364, double** %72, align 8
  %365 = load double*, double** %7, align 8
  %366 = load i32, i32* %21, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds double, double* %365, i64 %367
  %369 = load i32, i32* %20, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds double, double* %368, i64 %370
  %372 = getelementptr inbounds double, double* %371, i64 -1
  store double* %372, double** %73, align 8
  %373 = load double*, double** %7, align 8
  %374 = load i32, i32* %21, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds double, double* %373, i64 %375
  %377 = load i32, i32* %20, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds double, double* %376, i64 %378
  store double* %379, double** %74, align 8
  %380 = load double*, double** %7, align 8
  %381 = load i32, i32* %21, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds double, double* %380, i64 %382
  %384 = load i32, i32* %20, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds double, double* %383, i64 %385
  %387 = getelementptr inbounds double, double* %386, i64 1
  store double* %387, double** %75, align 8
  %388 = load i32, i32* %18, align 4
  store i32 %388, i32* %13, align 4
  br label %389

; <label>:389:                                    ; preds = %784, %4
  %390 = load i32, i32* %13, align 4
  %391 = load i32, i32* %19, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %785

; <label>:393:                                    ; preds = %389
  %394 = load i32, i32* %16, align 4
  store i32 %394, i32* %12, align 4
  br label %395

; <label>:395:                                    ; preds = %773, %393
  %396 = load i32, i32* %12, align 4
  %397 = load i32, i32* %17, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %774

; <label>:399:                                    ; preds = %395
  %400 = load i32, i32* %14, align 4
  store i32 %400, i32* %11, align 4
  br label %401

; <label>:401:                                    ; preds = %762, %399
  %402 = load i32, i32* %11, align 4
  %403 = load i32, i32* %15, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %763

; <label>:405:                                    ; preds = %401
  %406 = load i32, i32* %11, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %406, i32 0
  %insertElmt159 = insertelement <4 x i32> %insertElmt, i32 %406, i32 1
  %insertElmt160 = insertelement <4 x i32> %insertElmt159, i32 %406, i32 2
  %insertElmt161 = insertelement <4 x i32> %insertElmt160, i32 %406, i32 3
  store <4 x i32> %insertElmt161, <4 x i32>* %allocaVec60, align 16
  %407 = load i32, i32* %12, align 4
  %insertElmt162 = insertelement <4 x i32> undef, i32 %407, i32 0
  %insertElmt163 = insertelement <4 x i32> %insertElmt162, i32 %407, i32 1
  %insertElmt164 = insertelement <4 x i32> %insertElmt163, i32 %407, i32 2
  %insertElmt165 = insertelement <4 x i32> %insertElmt164, i32 %407, i32 3
  store <4 x i32> %insertElmt165, <4 x i32>* %allocaVec61, align 16
  %408 = load i32, i32* %20, align 4
  %insertElmt166 = insertelement <4 x i32> undef, i32 %408, i32 0
  %insertElmt167 = insertelement <4 x i32> %insertElmt166, i32 %408, i32 1
  %insertElmt168 = insertelement <4 x i32> %insertElmt167, i32 %408, i32 2
  %insertElmt169 = insertelement <4 x i32> %insertElmt168, i32 %408, i32 3
  store <4 x i32> %insertElmt169, <4 x i32>* %allocaVec69, align 16
  %409 = load <4 x i32>, <4 x i32>* %allocaVec61, align 16
  %410 = load <4 x i32>, <4 x i32>* %allocaVec69, align 16
  %Vop170 = mul <4 x i32> %409, %410
  %411 = mul nsw i32 %407, %408
  %412 = load <4 x i32>, <4 x i32>* %allocaVec60, align 16
  %Vop171 = add <4 x i32> %412, %Vop170
  %413 = add nsw i32 %406, %411
  %414 = load i32, i32* %13, align 4
  %insertElmt172 = insertelement <4 x i32> undef, i32 %414, i32 0
  %insertElmt173 = insertelement <4 x i32> %insertElmt172, i32 %414, i32 1
  %insertElmt174 = insertelement <4 x i32> %insertElmt173, i32 %414, i32 2
  %insertElmt175 = insertelement <4 x i32> %insertElmt174, i32 %414, i32 3
  store <4 x i32> %insertElmt175, <4 x i32>* %allocaVec62, align 16
  %415 = load i32, i32* %21, align 4
  %insertElmt176 = insertelement <4 x i32> undef, i32 %415, i32 0
  %insertElmt177 = insertelement <4 x i32> %insertElmt176, i32 %415, i32 1
  %insertElmt178 = insertelement <4 x i32> %insertElmt177, i32 %415, i32 2
  %insertElmt179 = insertelement <4 x i32> %insertElmt178, i32 %415, i32 3
  store <4 x i32> %insertElmt179, <4 x i32>* %allocaVec70, align 16
  %416 = load <4 x i32>, <4 x i32>* %allocaVec62, align 16
  %417 = load <4 x i32>, <4 x i32>* %allocaVec70, align 16
  %Vop180 = mul <4 x i32> %416, %417
  %418 = mul nsw i32 %414, %415
  %Vop181 = add <4 x i32> %Vop171, %Vop180
  store <4 x i32> %Vop181, <4 x i32>* %allocaVec59
  %419 = load <4 x i32>, <4 x i32>* %allocaVec59, align 4
  %extractE = extractelement <4 x i32> %419, i64 0
  %extractE182 = extractelement <4 x i32> %419, i64 1
  %extractE183 = extractelement <4 x i32> %419, i64 2
  %sum = add i32 %extractE, %extractE182
  %sum184 = add i32 %sum, %extractE183
  %420 = add nsw i32 %413, %418
  %Fmul = mul i32 %420, 3
  store i32 %420, i32* %Recovery
  %Fcmp = icmp ne i32 %sum184, %Fmul
  br i1 %Fcmp, label %421, label %425

; <label>:421:                                    ; preds = %405
  %remThree = sdiv i32 %sum184, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %422, label %423

; <label>:422:                                    ; preds = %421
  store i32 %420, i32* %Recovery, align 4
  br label %424

; <label>:423:                                    ; preds = %421
  store i32 %extractE, i32* %Recovery, align 4
  br label %424

; <label>:424:                                    ; preds = %423, %422
  br label %425

; <label>:425:                                    ; preds = %405, %424
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %10, align 4
  %426 = load double*, double** %22, align 8
  %427 = load i32, i32* %10, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds double, double* %426, i64 %428
  %430 = load double, double* %429, align 8
  %431 = load double*, double** %49, align 8
  %432 = load i32, i32* %10, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %431, i64 %433
  %435 = load double, double* %434, align 8
  %436 = fmul double %430, %435
  %437 = load double*, double** %23, align 8
  %438 = load i32, i32* %10, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds double, double* %437, i64 %439
  %441 = load double, double* %440, align 8
  %442 = load double*, double** %50, align 8
  %443 = load i32, i32* %10, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds double, double* %442, i64 %444
  %446 = load double, double* %445, align 8
  %447 = fmul double %441, %446
  %448 = fadd double %436, %447
  %449 = load double*, double** %24, align 8
  %450 = load i32, i32* %10, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds double, double* %449, i64 %451
  %453 = load double, double* %452, align 8
  %454 = load double*, double** %51, align 8
  %455 = load i32, i32* %10, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds double, double* %454, i64 %456
  %458 = load double, double* %457, align 8
  %459 = fmul double %453, %458
  %460 = fadd double %448, %459
  %461 = load double*, double** %25, align 8
  %462 = load i32, i32* %10, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds double, double* %461, i64 %463
  %465 = load double, double* %464, align 8
  %466 = load double*, double** %52, align 8
  %467 = load i32, i32* %10, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds double, double* %466, i64 %468
  %470 = load double, double* %469, align 8
  %471 = fmul double %465, %470
  %472 = fadd double %460, %471
  %473 = load double*, double** %26, align 8
  %474 = load i32, i32* %10, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds double, double* %473, i64 %475
  %477 = load double, double* %476, align 8
  %478 = load double*, double** %53, align 8
  %479 = load i32, i32* %10, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds double, double* %478, i64 %480
  %482 = load double, double* %481, align 8
  %483 = fmul double %477, %482
  %484 = fadd double %472, %483
  %485 = load double*, double** %27, align 8
  %486 = load i32, i32* %10, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds double, double* %485, i64 %487
  %489 = load double, double* %488, align 8
  %490 = load double*, double** %54, align 8
  %491 = load i32, i32* %10, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds double, double* %490, i64 %492
  %494 = load double, double* %493, align 8
  %495 = fmul double %489, %494
  %496 = fadd double %484, %495
  %497 = load double*, double** %28, align 8
  %498 = load i32, i32* %10, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds double, double* %497, i64 %499
  %501 = load double, double* %500, align 8
  %502 = load double*, double** %55, align 8
  %503 = load i32, i32* %10, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds double, double* %502, i64 %504
  %506 = load double, double* %505, align 8
  %507 = fmul double %501, %506
  %508 = fadd double %496, %507
  %509 = load double*, double** %29, align 8
  %510 = load i32, i32* %10, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds double, double* %509, i64 %511
  %513 = load double, double* %512, align 8
  %514 = load double*, double** %56, align 8
  %515 = load i32, i32* %10, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds double, double* %514, i64 %516
  %518 = load double, double* %517, align 8
  %519 = fmul double %513, %518
  %520 = fadd double %508, %519
  %521 = load double*, double** %30, align 8
  %522 = load i32, i32* %10, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds double, double* %521, i64 %523
  %525 = load double, double* %524, align 8
  %526 = load double*, double** %57, align 8
  %527 = load i32, i32* %10, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds double, double* %526, i64 %528
  %530 = load double, double* %529, align 8
  %531 = fmul double %525, %530
  %532 = fadd double %520, %531
  %533 = load double*, double** %31, align 8
  %534 = load i32, i32* %10, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds double, double* %533, i64 %535
  %537 = load double, double* %536, align 8
  %538 = load double*, double** %58, align 8
  %539 = load i32, i32* %10, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds double, double* %538, i64 %540
  %542 = load double, double* %541, align 8
  %543 = fmul double %537, %542
  %544 = fadd double %532, %543
  %545 = load double*, double** %32, align 8
  %546 = load i32, i32* %10, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds double, double* %545, i64 %547
  %549 = load double, double* %548, align 8
  %550 = load double*, double** %59, align 8
  %551 = load i32, i32* %10, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds double, double* %550, i64 %552
  %554 = load double, double* %553, align 8
  %555 = fmul double %549, %554
  %556 = fadd double %544, %555
  %557 = load double*, double** %33, align 8
  %558 = load i32, i32* %10, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds double, double* %557, i64 %559
  %561 = load double, double* %560, align 8
  %562 = load double*, double** %60, align 8
  %563 = load i32, i32* %10, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds double, double* %562, i64 %564
  %566 = load double, double* %565, align 8
  %567 = fmul double %561, %566
  %568 = fadd double %556, %567
  %569 = load double*, double** %34, align 8
  %570 = load i32, i32* %10, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds double, double* %569, i64 %571
  %573 = load double, double* %572, align 8
  %574 = load double*, double** %61, align 8
  %575 = load i32, i32* %10, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds double, double* %574, i64 %576
  %578 = load double, double* %577, align 8
  %579 = fmul double %573, %578
  %580 = fadd double %568, %579
  %581 = load double*, double** %35, align 8
  %582 = load i32, i32* %10, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds double, double* %581, i64 %583
  %585 = load double, double* %584, align 8
  %586 = load double*, double** %62, align 8
  %587 = load i32, i32* %10, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds double, double* %586, i64 %588
  %590 = load double, double* %589, align 8
  %591 = fmul double %585, %590
  %592 = fadd double %580, %591
  %593 = load double*, double** %36, align 8
  %594 = load i32, i32* %10, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds double, double* %593, i64 %595
  %597 = load double, double* %596, align 8
  %598 = load double*, double** %63, align 8
  %599 = load i32, i32* %10, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds double, double* %598, i64 %600
  %602 = load double, double* %601, align 8
  %603 = fmul double %597, %602
  %604 = fadd double %592, %603
  %605 = load double*, double** %37, align 8
  %606 = load i32, i32* %10, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds double, double* %605, i64 %607
  %609 = load double, double* %608, align 8
  %610 = load double*, double** %64, align 8
  %611 = load i32, i32* %10, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds double, double* %610, i64 %612
  %614 = load double, double* %613, align 8
  %615 = fmul double %609, %614
  %616 = fadd double %604, %615
  %617 = load double*, double** %38, align 8
  %618 = load i32, i32* %10, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds double, double* %617, i64 %619
  %621 = load double, double* %620, align 8
  %622 = load double*, double** %65, align 8
  %623 = load i32, i32* %10, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds double, double* %622, i64 %624
  %626 = load double, double* %625, align 8
  %627 = fmul double %621, %626
  %628 = fadd double %616, %627
  %629 = load double*, double** %39, align 8
  %630 = load i32, i32* %10, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds double, double* %629, i64 %631
  %633 = load double, double* %632, align 8
  %634 = load double*, double** %66, align 8
  %635 = load i32, i32* %10, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds double, double* %634, i64 %636
  %638 = load double, double* %637, align 8
  %639 = fmul double %633, %638
  %640 = fadd double %628, %639
  %641 = load double*, double** %40, align 8
  %642 = load i32, i32* %10, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds double, double* %641, i64 %643
  %645 = load double, double* %644, align 8
  %646 = load double*, double** %67, align 8
  %647 = load i32, i32* %10, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds double, double* %646, i64 %648
  %650 = load double, double* %649, align 8
  %651 = fmul double %645, %650
  %652 = fadd double %640, %651
  %653 = load double*, double** %41, align 8
  %654 = load i32, i32* %10, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds double, double* %653, i64 %655
  %657 = load double, double* %656, align 8
  %658 = load double*, double** %68, align 8
  %659 = load i32, i32* %10, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds double, double* %658, i64 %660
  %662 = load double, double* %661, align 8
  %663 = fmul double %657, %662
  %664 = fadd double %652, %663
  %665 = load double*, double** %42, align 8
  %666 = load i32, i32* %10, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds double, double* %665, i64 %667
  %669 = load double, double* %668, align 8
  %670 = load double*, double** %69, align 8
  %671 = load i32, i32* %10, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds double, double* %670, i64 %672
  %674 = load double, double* %673, align 8
  %675 = fmul double %669, %674
  %676 = fadd double %664, %675
  %677 = load double*, double** %43, align 8
  %678 = load i32, i32* %10, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds double, double* %677, i64 %679
  %681 = load double, double* %680, align 8
  %682 = load double*, double** %70, align 8
  %683 = load i32, i32* %10, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds double, double* %682, i64 %684
  %686 = load double, double* %685, align 8
  %687 = fmul double %681, %686
  %688 = fadd double %676, %687
  %689 = load double*, double** %44, align 8
  %690 = load i32, i32* %10, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds double, double* %689, i64 %691
  %693 = load double, double* %692, align 8
  %694 = load double*, double** %71, align 8
  %695 = load i32, i32* %10, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds double, double* %694, i64 %696
  %698 = load double, double* %697, align 8
  %699 = fmul double %693, %698
  %700 = fadd double %688, %699
  %701 = load double*, double** %45, align 8
  %702 = load i32, i32* %10, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds double, double* %701, i64 %703
  %705 = load double, double* %704, align 8
  %706 = load double*, double** %72, align 8
  %707 = load i32, i32* %10, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds double, double* %706, i64 %708
  %710 = load double, double* %709, align 8
  %711 = fmul double %705, %710
  %712 = fadd double %700, %711
  %713 = load double*, double** %46, align 8
  %714 = load i32, i32* %10, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds double, double* %713, i64 %715
  %717 = load double, double* %716, align 8
  %718 = load double*, double** %73, align 8
  %719 = load i32, i32* %10, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds double, double* %718, i64 %720
  %722 = load double, double* %721, align 8
  %723 = fmul double %717, %722
  %724 = fadd double %712, %723
  %725 = load double*, double** %47, align 8
  %726 = load i32, i32* %10, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds double, double* %725, i64 %727
  %729 = load double, double* %728, align 8
  %730 = load double*, double** %74, align 8
  %731 = load i32, i32* %10, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds double, double* %730, i64 %732
  %734 = load double, double* %733, align 8
  %735 = fmul double %729, %734
  %736 = fadd double %724, %735
  %737 = load double*, double** %48, align 8
  %738 = load i32, i32* %10, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds double, double* %737, i64 %739
  %741 = load double, double* %740, align 8
  %742 = load double*, double** %75, align 8
  %743 = load i32, i32* %10, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds double, double* %742, i64 %744
  %746 = load double, double* %745, align 8
  %747 = fmul double %741, %746
  %748 = fadd double %736, %747
  %749 = load double*, double** %8, align 8
  %750 = load i32, i32* %10, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds double, double* %749, i64 %751
  store double %748, double* %752, align 8
  br label %753

; <label>:753:                                    ; preds = %425
  %754 = load i32, i32* %11, align 4
  %insertElmt185 = insertelement <4 x i32> undef, i32 %754, i32 0
  %insertElmt186 = insertelement <4 x i32> %insertElmt185, i32 %754, i32 1
  %insertElmt187 = insertelement <4 x i32> %insertElmt186, i32 %754, i32 2
  %insertElmt188 = insertelement <4 x i32> %insertElmt187, i32 %754, i32 3
  store <4 x i32> %insertElmt188, <4 x i32>* %allocaVec60, align 16
  %755 = load <4 x i32>, <4 x i32>* %allocaVec60, align 16
  %Vop189 = add <4 x i32> %755, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop189, <4 x i32>* %allocaVec60
  %756 = load <4 x i32>, <4 x i32>* %allocaVec60, align 4
  %extractE191 = extractelement <4 x i32> %756, i64 0
  %extractE192 = extractelement <4 x i32> %756, i64 1
  %extractE193 = extractelement <4 x i32> %756, i64 2
  %sum194 = add i32 %extractE191, %extractE192
  %sum195 = add i32 %sum194, %extractE193
  %757 = add nsw i32 %754, 1
  %Fmul190 = mul i32 %757, 3
  store i32 %757, i32* %Recovery1
  %Fcmp196 = icmp ne i32 %sum195, %Fmul190
  br i1 %Fcmp196, label %758, label %762

; <label>:758:                                    ; preds = %753
  %remThree221 = sdiv i32 %sum195, %extractE191
  %FcmpThree222 = icmp ne i32 %remThree221, 3
  br i1 %FcmpThree222, label %759, label %760

; <label>:759:                                    ; preds = %758
  store i32 %757, i32* %Recovery1, align 4
  br label %761

; <label>:760:                                    ; preds = %758
  store i32 %extractE191, i32* %Recovery1, align 4
  br label %761

; <label>:761:                                    ; preds = %760, %759
  br label %762

; <label>:762:                                    ; preds = %753, %761
  %ReplaceInst227 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst227, i32* %11, align 4
  br label %401

; <label>:763:                                    ; preds = %401
  br label %764

; <label>:764:                                    ; preds = %763
  %765 = load i32, i32* %12, align 4
  %insertElmt197 = insertelement <4 x i32> undef, i32 %765, i32 0
  %insertElmt198 = insertelement <4 x i32> %insertElmt197, i32 %765, i32 1
  %insertElmt199 = insertelement <4 x i32> %insertElmt198, i32 %765, i32 2
  %insertElmt200 = insertelement <4 x i32> %insertElmt199, i32 %765, i32 3
  store <4 x i32> %insertElmt200, <4 x i32>* %allocaVec61, align 16
  %766 = load <4 x i32>, <4 x i32>* %allocaVec61, align 16
  %Vop201 = add <4 x i32> %766, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop201, <4 x i32>* %allocaVec61
  %767 = load <4 x i32>, <4 x i32>* %allocaVec61, align 4
  %extractE203 = extractelement <4 x i32> %767, i64 0
  %extractE204 = extractelement <4 x i32> %767, i64 1
  %extractE205 = extractelement <4 x i32> %767, i64 2
  %sum206 = add i32 %extractE203, %extractE204
  %sum207 = add i32 %sum206, %extractE205
  %768 = add nsw i32 %765, 1
  %Fmul202 = mul i32 %768, 3
  store i32 %768, i32* %Recovery2
  %Fcmp208 = icmp ne i32 %sum207, %Fmul202
  br i1 %Fcmp208, label %769, label %773

; <label>:769:                                    ; preds = %764
  %remThree223 = sdiv i32 %sum207, %extractE203
  %FcmpThree224 = icmp ne i32 %remThree223, 3
  br i1 %FcmpThree224, label %770, label %771

; <label>:770:                                    ; preds = %769
  store i32 %768, i32* %Recovery2, align 4
  br label %772

; <label>:771:                                    ; preds = %769
  store i32 %extractE203, i32* %Recovery2, align 4
  br label %772

; <label>:772:                                    ; preds = %771, %770
  br label %773

; <label>:773:                                    ; preds = %764, %772
  %ReplaceInst228 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst228, i32* %12, align 4
  br label %395

; <label>:774:                                    ; preds = %395
  br label %775

; <label>:775:                                    ; preds = %774
  %776 = load i32, i32* %13, align 4
  %insertElmt209 = insertelement <4 x i32> undef, i32 %776, i32 0
  %insertElmt210 = insertelement <4 x i32> %insertElmt209, i32 %776, i32 1
  %insertElmt211 = insertelement <4 x i32> %insertElmt210, i32 %776, i32 2
  %insertElmt212 = insertelement <4 x i32> %insertElmt211, i32 %776, i32 3
  store <4 x i32> %insertElmt212, <4 x i32>* %allocaVec62, align 16
  %777 = load <4 x i32>, <4 x i32>* %allocaVec62, align 16
  %Vop213 = add <4 x i32> %777, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop213, <4 x i32>* %allocaVec62
  %778 = load <4 x i32>, <4 x i32>* %allocaVec62, align 4
  %extractE215 = extractelement <4 x i32> %778, i64 0
  %extractE216 = extractelement <4 x i32> %778, i64 1
  %extractE217 = extractelement <4 x i32> %778, i64 2
  %sum218 = add i32 %extractE215, %extractE216
  %sum219 = add i32 %sum218, %extractE217
  %779 = add nsw i32 %776, 1
  %Fmul214 = mul i32 %779, 3
  store i32 %779, i32* %Recovery3
  %Fcmp220 = icmp ne i32 %sum219, %Fmul214
  br i1 %Fcmp220, label %780, label %784

; <label>:780:                                    ; preds = %775
  %remThree225 = sdiv i32 %sum219, %extractE215
  %FcmpThree226 = icmp ne i32 %remThree225, 3
  br i1 %FcmpThree226, label %781, label %782

; <label>:781:                                    ; preds = %780
  store i32 %779, i32* %Recovery3, align 4
  br label %783

; <label>:782:                                    ; preds = %780
  store i32 %extractE215, i32* %Recovery3, align 4
  br label %783

; <label>:783:                                    ; preds = %782, %781
  br label %784

; <label>:784:                                    ; preds = %775, %783
  %ReplaceInst229 = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst229, i32* %13, align 4
  br label %389

; <label>:785:                                    ; preds = %389
  ret void
}

; Function Attrs: nounwind
define void @readInput() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
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
  %allocaVec = alloca <4 x i64>, align 16
  %CastInst = alloca i64, align 4
  %CastInstVec = alloca <4 x i64>, align 16
  %2 = alloca %struct.RadiationData_t*, align 8
  %allocaVec1 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  store %struct.RadiationData_t* %0, %struct.RadiationData_t** %2, align 8
  %4 = load i32, i32* @i_ub, align 4
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %CastInst
  %6 = load i64, i64* %CastInst, align 4
  %insertCast = insertelement <4 x i64> undef, i64 %6, i32 0
  %insertCast2 = insertelement <4 x i64> %insertCast, i64 %6, i32 1
  %insertCast3 = insertelement <4 x i64> %insertCast2, i64 %6, i32 2
  %insertCast4 = insertelement <4 x i64> %insertCast3, i64 %6, i32 3
  store <4 x i64> %insertCast4, <4 x i64>* %CastInstVec, align 4
  %7 = load <4 x i64>, <4 x i64>* %CastInstVec, align 4
  %Vop = mul <4 x i64> %7, <i64 8, i64 8, i64 8, i64 8>
  %8 = mul i64 %5, 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = call i8* @malloc(i64 %11)
  %13 = bitcast i8* %12 to double*
  %14 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %15 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %14, i32 0, i32 0
  store double* %13, double** %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = call i8* @malloc(i64 %17)
  %19 = bitcast i8* %18 to double*
  %20 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %21 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %20, i32 0, i32 1
  store double* %19, double** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = call i8* @malloc(i64 %23)
  %25 = bitcast i8* %24 to double*
  %26 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %27 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %26, i32 0, i32 2
  store double* %25, double** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = call i8* @malloc(i64 %29)
  %31 = bitcast i8* %30 to double*
  %32 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %33 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %32, i32 0, i32 3
  store double* %31, double** %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = call i8* @malloc(i64 %35)
  %37 = bitcast i8* %36 to double*
  %38 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %39 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %38, i32 0, i32 4
  store double* %37, double** %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = call i8* @malloc(i64 %41)
  %43 = bitcast i8* %42 to double*
  %44 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %45 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %44, i32 0, i32 5
  store double* %43, double** %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = call i8* @malloc(i64 %47)
  %49 = bitcast i8* %48 to double*
  %50 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %51 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %50, i32 0, i32 6
  store double* %49, double** %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = call i8* @malloc(i64 %53)
  %55 = bitcast i8* %54 to double*
  %56 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %57 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %56, i32 0, i32 7
  store double* %55, double** %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = call i8* @malloc(i64 %59)
  %61 = bitcast i8* %60 to double*
  %62 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %63 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %62, i32 0, i32 8
  store double* %61, double** %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = call i8* @malloc(i64 %65)
  %67 = bitcast i8* %66 to double*
  %68 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %69 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %68, i32 0, i32 9
  store double* %67, double** %69, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = call i8* @malloc(i64 %71)
  %73 = bitcast i8* %72 to double*
  %74 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %75 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %74, i32 0, i32 10
  store double* %73, double** %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = call i8* @malloc(i64 %77)
  %79 = bitcast i8* %78 to double*
  %80 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %81 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %80, i32 0, i32 11
  store double* %79, double** %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = call i8* @malloc(i64 %83)
  %85 = bitcast i8* %84 to double*
  %86 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %87 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %86, i32 0, i32 12
  store double* %85, double** %87, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = call i8* @malloc(i64 %89)
  %91 = bitcast i8* %90 to double*
  %92 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %93 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %92, i32 0, i32 13
  store double* %91, double** %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = call i8* @malloc(i64 %95)
  %97 = bitcast i8* %96 to double*
  %98 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %99 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %98, i32 0, i32 14
  store double* %97, double** %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = call i8* @malloc(i64 %101)
  %103 = bitcast i8* %102 to double*
  %104 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %105 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %104, i32 0, i32 15
  store double* %103, double** %105, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = call i8* @malloc(i64 %107)
  %109 = bitcast i8* %108 to double*
  %110 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %111 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %110, i32 0, i32 16
  store double* %109, double** %111, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = call i8* @malloc(i64 %113)
  %115 = bitcast i8* %114 to double*
  %116 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %117 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %116, i32 0, i32 17
  store double* %115, double** %117, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = call i8* @malloc(i64 %119)
  %121 = bitcast i8* %120 to double*
  %122 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %123 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %122, i32 0, i32 18
  store double* %121, double** %123, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = call i8* @malloc(i64 %125)
  %127 = bitcast i8* %126 to double*
  %128 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %129 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %128, i32 0, i32 19
  store double* %127, double** %129, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = call i8* @malloc(i64 %131)
  %133 = bitcast i8* %132 to double*
  %134 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %135 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %134, i32 0, i32 20
  store double* %133, double** %135, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = call i8* @malloc(i64 %137)
  %139 = bitcast i8* %138 to double*
  %140 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %141 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %140, i32 0, i32 21
  store double* %139, double** %141, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = call i8* @malloc(i64 %143)
  %145 = bitcast i8* %144 to double*
  %146 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %147 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %146, i32 0, i32 22
  store double* %145, double** %147, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = call i8* @malloc(i64 %149)
  %151 = bitcast i8* %150 to double*
  %152 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %153 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %152, i32 0, i32 23
  store double* %151, double** %153, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = call i8* @malloc(i64 %155)
  %157 = bitcast i8* %156 to double*
  %158 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %159 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %158, i32 0, i32 24
  store double* %157, double** %159, align 8
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = call i8* @malloc(i64 %161)
  %163 = bitcast i8* %162 to double*
  %164 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %165 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %164, i32 0, i32 25
  store double* %163, double** %165, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = call i8* @malloc(i64 %167)
  %169 = bitcast i8* %168 to double*
  %170 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %171 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %170, i32 0, i32 26
  store double* %169, double** %171, align 8
  %172 = load %struct.RadiationData_t*, %struct.RadiationData_t** %2, align 8
  %173 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %172, i32 0, i32 26
  %174 = load double*, double** %173, align 8
  %175 = icmp eq double* %174, null
  br i1 %175, label %176, label %178

; <label>:176:                                    ; preds = %1
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  br label %178

; <label>:178:                                    ; preds = %176, %1
  ret void
}

; Function Attrs: nounwind
define void @init(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %5 = alloca %struct.Domain_s*, align 8
  %6 = alloca %struct.RadiationData_t*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %allocaVec2 = alloca <4 x i32>, align 16
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
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec2
  store i32 0, i32* %9, align 4
  br label %142

; <label>:142:                                    ; preds = %309, %4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @i_ub, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %313

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
  %insertElmt = insertelement <4 x i32> undef, i32 %153, i32 0
  %insertElmt3 = insertelement <4 x i32> %insertElmt, i32 %153, i32 1
  %insertElmt4 = insertelement <4 x i32> %insertElmt3, i32 %153, i32 2
  %insertElmt5 = insertelement <4 x i32> %insertElmt4, i32 %153, i32 3
  store <4 x i32> %insertElmt5, <4 x i32>* %allocaVec2, align 16
  %154 = load <4 x i32>, <4 x i32>* %allocaVec2, align 16
  %Vop = add <4 x i32> %154, <i32 1, i32 1, i32 1, i32 1>
  %155 = add nsw i32 %153, 1
  %156 = sitofp i32 %155 to double
  %157 = load double*, double** %11, align 8
  %158 = getelementptr inbounds double, double* %157, i32 1
  store double* %158, double** %11, align 8
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
  %163 = load double*, double** %12, align 8
  %164 = getelementptr inbounds double, double* %163, i32 1
  store double* %164, double** %12, align 8
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
  %169 = load double*, double** %13, align 8
  %170 = getelementptr inbounds double, double* %169, i32 1
  store double* %170, double** %13, align 8
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
  %175 = load double*, double** %14, align 8
  %176 = getelementptr inbounds double, double* %175, i32 1
  store double* %176, double** %14, align 8
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
  %181 = load double*, double** %15, align 8
  %182 = getelementptr inbounds double, double* %181, i32 1
  store double* %182, double** %15, align 8
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
  %187 = load double*, double** %16, align 8
  %188 = getelementptr inbounds double, double* %187, i32 1
  store double* %188, double** %16, align 8
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
  %193 = load double*, double** %17, align 8
  %194 = getelementptr inbounds double, double* %193, i32 1
  store double* %194, double** %17, align 8
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
  %199 = load double*, double** %18, align 8
  %200 = getelementptr inbounds double, double* %199, i32 1
  store double* %200, double** %18, align 8
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
  %205 = load double*, double** %19, align 8
  %206 = getelementptr inbounds double, double* %205, i32 1
  store double* %206, double** %19, align 8
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
  %211 = load double*, double** %20, align 8
  %212 = getelementptr inbounds double, double* %211, i32 1
  store double* %212, double** %20, align 8
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
  %217 = load double*, double** %21, align 8
  %218 = getelementptr inbounds double, double* %217, i32 1
  store double* %218, double** %21, align 8
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
  %223 = load double*, double** %22, align 8
  %224 = getelementptr inbounds double, double* %223, i32 1
  store double* %224, double** %22, align 8
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
  %229 = load double*, double** %23, align 8
  %230 = getelementptr inbounds double, double* %229, i32 1
  store double* %230, double** %23, align 8
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
  %235 = load double*, double** %24, align 8
  %236 = getelementptr inbounds double, double* %235, i32 1
  store double* %236, double** %24, align 8
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
  %241 = load double*, double** %25, align 8
  %242 = getelementptr inbounds double, double* %241, i32 1
  store double* %242, double** %25, align 8
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
  %247 = load double*, double** %26, align 8
  %248 = getelementptr inbounds double, double* %247, i32 1
  store double* %248, double** %26, align 8
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
  %253 = load double*, double** %27, align 8
  %254 = getelementptr inbounds double, double* %253, i32 1
  store double* %254, double** %27, align 8
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
  %259 = load double*, double** %28, align 8
  %260 = getelementptr inbounds double, double* %259, i32 1
  store double* %260, double** %28, align 8
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
  %265 = load double*, double** %29, align 8
  %266 = getelementptr inbounds double, double* %265, i32 1
  store double* %266, double** %29, align 8
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
  %271 = load double*, double** %30, align 8
  %272 = getelementptr inbounds double, double* %271, i32 1
  store double* %272, double** %30, align 8
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
  %277 = load double*, double** %31, align 8
  %278 = getelementptr inbounds double, double* %277, i32 1
  store double* %278, double** %31, align 8
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
  %283 = load double*, double** %32, align 8
  %284 = getelementptr inbounds double, double* %283, i32 1
  store double* %284, double** %32, align 8
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
  %289 = load double*, double** %33, align 8
  %290 = getelementptr inbounds double, double* %289, i32 1
  store double* %290, double** %33, align 8
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
  %295 = load double*, double** %34, align 8
  %296 = getelementptr inbounds double, double* %295, i32 1
  store double* %296, double** %34, align 8
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
  %301 = load double*, double** %35, align 8
  %302 = getelementptr inbounds double, double* %301, i32 1
  store double* %302, double** %35, align 8
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
  %307 = load double*, double** %36, align 8
  %308 = getelementptr inbounds double, double* %307, i32 1
  store double* %308, double** %36, align 8
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
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec2
  store i32 0, i32* %9, align 4
  br label %314

; <label>:314:                                    ; preds = %335, %313
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @x_size, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %336

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
  %324 = load double*, double** %7, align 8
  %325 = getelementptr inbounds double, double* %324, i32 1
  store double* %325, double** %7, align 8
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
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %9, align 4
  br label %314

; <label>:336:                                    ; preds = %314
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0, !0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
