; ModuleID = 'all_large_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 8
  %allocaVec13 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 8
  %allocaVec14 = alloca <2 x double>, align 16
  %Recovery2 = alloca double, align 8
  %allocaVec15 = alloca <2 x double>, align 16
  %Recovery3 = alloca double, align 8
  %allocaVec16 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec17 = alloca <4 x i64>, align 16
  %Recovery5 = alloca i64, align 8
  %allocaVec18 = alloca <2 x double>, align 16
  %Recovery6 = alloca double, align 8
  %allocaVec19 = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec20 = alloca <2 x double>, align 16
  %CallInst7 = alloca double, align 4
  %CallInstVec8 = alloca <2 x double>, align 16
  %allocaVec21 = alloca <2 x double>, align 16
  %CallInst9 = alloca double, align 4
  %CallInstVec10 = alloca <2 x double>, align 16
  %allocaVec22 = alloca <2 x double>, align 16
  %CallInst11 = alloca double, align 4
  %CallInstVec12 = alloca <2 x double>, align 16
  %allocaVec23 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec24 = alloca <2 x double>, align 16
  %2 = alloca double, align 8
  %allocaVec25 = alloca <2 x double>, align 16
  %3 = alloca double, align 8
  %allocaVec26 = alloca <2 x double>, align 16
  %4 = alloca double, align 8
  %allocaVec27 = alloca <2 x double>, align 16
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %allocaVec28 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %allocaVec29 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec30 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec31 = alloca <4 x i64>, align 16
  %10 = alloca i64, align 8
  %11 = alloca %struct.int_sqrt, align 4
  %allocaVec32 = alloca <4 x i64>, align 16
  %12 = alloca i64, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec23
  store i32 0, i32* %1, align 4
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec24
  store double 1.000000e+00, double* %2, align 8
  store <2 x double> <double -1.050000e+01, double -1.050000e+01>, <2 x double>* %allocaVec25
  store double -1.050000e+01, double* %3, align 8
  store <2 x double> <double 3.200000e+01, double 3.200000e+01>, <2 x double>* %allocaVec26
  store double 3.200000e+01, double* %4, align 8
  store <2 x double> <double -3.000000e+01, double -3.000000e+01>, <2 x double>* %allocaVec27
  store double -3.000000e+01, double* %5, align 8
  store <4 x i64> <i64 1072497001, i64 1072497001, i64 1072497001, i64 1072497001>, <4 x i64>* %allocaVec31
  store i64 1072497001, i64* %10, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec32
  store i64 0, i64* %12, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %14 = load double, double* %2, align 8
  %15 = load double, double* %3, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %14, double %15, double %16, double %17, i32* %8, double* %18)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %20

; <label>:20:                                     ; preds = %30, %0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %28)
  br label %30

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %31, i32 0
  %insertElmt33 = insertelement <4 x i32> %insertElmt, i32 %31, i32 1
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %31, i32 2
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %31, i32 3
  store <4 x i32> %insertElmt35, <4 x i32>* %allocaVec30, align 16
  %32 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop = add <4 x i32> %32, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec30
  %33 = add nsw i32 %31, 1
  store i32 %33, i32* %9, align 4
  br label %20

; <label>:34:                                     ; preds = %20
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec24
  store double 1.000000e+00, double* %2, align 8
  store <2 x double> <double -4.500000e+00, double -4.500000e+00>, <2 x double>* %allocaVec25
  store double -4.500000e+00, double* %3, align 8
  store <2 x double> <double 1.700000e+01, double 1.700000e+01>, <2 x double>* %allocaVec26
  store double 1.700000e+01, double* %4, align 8
  store <2 x double> <double -3.000000e+01, double -3.000000e+01>, <2 x double>* %allocaVec27
  store double -3.000000e+01, double* %5, align 8
  %36 = load double, double* %2, align 8
  %37 = load double, double* %3, align 8
  %38 = load double, double* %4, align 8
  %39 = load double, double* %5, align 8
  %40 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %36, double %37, double %38, double %39, i32* %8, double* %40)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %42

; <label>:42:                                     ; preds = %52, %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %56

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %48
  %50 = load double, double* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %50)
  br label %52

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop36 = add <4 x i32> %54, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop36, <4 x i32>* %allocaVec30
  %55 = add nsw i32 %53, 1
  store i32 %55, i32* %9, align 4
  br label %42

; <label>:56:                                     ; preds = %42
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec24
  store double 1.000000e+00, double* %2, align 8
  store <2 x double> <double -3.500000e+00, double -3.500000e+00>, <2 x double>* %allocaVec25
  store double -3.500000e+00, double* %3, align 8
  store <2 x double> <double 2.200000e+01, double 2.200000e+01>, <2 x double>* %allocaVec26
  store double 2.200000e+01, double* %4, align 8
  store <2 x double> <double -3.100000e+01, double -3.100000e+01>, <2 x double>* %allocaVec27
  store double -3.100000e+01, double* %5, align 8
  %58 = load double, double* %2, align 8
  %59 = load double, double* %3, align 8
  %60 = load double, double* %4, align 8
  %61 = load double, double* %5, align 8
  %62 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %58, double %59, double %60, double %61, i32* %8, double* %62)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %64

; <label>:64:                                     ; preds = %74, %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %70
  %72 = load double, double* %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %72)
  br label %74

; <label>:74:                                     ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop37 = add <4 x i32> %76, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop37, <4 x i32>* %allocaVec30
  %77 = add nsw i32 %75, 1
  store i32 %77, i32* %9, align 4
  br label %64

; <label>:78:                                     ; preds = %64
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec24
  store double 1.000000e+00, double* %2, align 8
  store <2 x double> <double -1.370000e+01, double -1.370000e+01>, <2 x double>* %allocaVec25
  store double -1.370000e+01, double* %3, align 8
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec26
  store double 1.000000e+00, double* %4, align 8
  store <2 x double> <double -3.500000e+01, double -3.500000e+01>, <2 x double>* %allocaVec27
  store double -3.500000e+01, double* %5, align 8
  %80 = load double, double* %2, align 8
  %81 = load double, double* %3, align 8
  %82 = load double, double* %4, align 8
  %83 = load double, double* %5, align 8
  %84 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %80, double %81, double %82, double %83, i32* %8, double* %84)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %86

; <label>:86:                                     ; preds = %96, %78
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %100

; <label>:90:                                     ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %92
  %94 = load double, double* %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %94)
  br label %96

; <label>:96:                                     ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop38 = add <4 x i32> %98, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec30
  %99 = add nsw i32 %97, 1
  store i32 %99, i32* %9, align 4
  br label %86

; <label>:100:                                    ; preds = %86
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 3.000000e+00, double 3.000000e+00>, <2 x double>* %allocaVec24
  store double 3.000000e+00, double* %2, align 8
  store <2 x double> <double 1.234000e+01, double 1.234000e+01>, <2 x double>* %allocaVec25
  store double 1.234000e+01, double* %3, align 8
  store <2 x double> <double 5.000000e+00, double 5.000000e+00>, <2 x double>* %allocaVec26
  store double 5.000000e+00, double* %4, align 8
  store <2 x double> <double 1.200000e+01, double 1.200000e+01>, <2 x double>* %allocaVec27
  store double 1.200000e+01, double* %5, align 8
  %102 = load double, double* %2, align 8
  %103 = load double, double* %3, align 8
  %104 = load double, double* %4, align 8
  %105 = load double, double* %5, align 8
  %106 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %102, double %103, double %104, double %105, i32* %8, double* %106)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %108

; <label>:108:                                    ; preds = %118, %100
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %114
  %116 = load double, double* %115, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %116)
  br label %118

; <label>:118:                                    ; preds = %112
  %119 = load i32, i32* %9, align 4
  %120 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop39 = add <4 x i32> %120, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop39, <4 x i32>* %allocaVec30
  %121 = add nsw i32 %119, 1
  store i32 %121, i32* %9, align 4
  br label %108

; <label>:122:                                    ; preds = %108
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double -8.000000e+00, double -8.000000e+00>, <2 x double>* %allocaVec24
  store double -8.000000e+00, double* %2, align 8
  store <2 x double> <double -6.789000e+01, double -6.789000e+01>, <2 x double>* %allocaVec25
  store double -6.789000e+01, double* %3, align 8
  store <2 x double> <double 6.000000e+00, double 6.000000e+00>, <2 x double>* %allocaVec26
  store double 6.000000e+00, double* %4, align 8
  store <2 x double> <double -2.360000e+01, double -2.360000e+01>, <2 x double>* %allocaVec27
  store double -2.360000e+01, double* %5, align 8
  %124 = load double, double* %2, align 8
  %125 = load double, double* %3, align 8
  %126 = load double, double* %4, align 8
  %127 = load double, double* %5, align 8
  %128 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %124, double %125, double %126, double %127, i32* %8, double* %128)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %130

; <label>:130:                                    ; preds = %140, %122
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %144

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %136
  %138 = load double, double* %137, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %138)
  br label %140

; <label>:140:                                    ; preds = %134
  %141 = load i32, i32* %9, align 4
  %142 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop40 = add <4 x i32> %142, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop40, <4 x i32>* %allocaVec30
  %143 = add nsw i32 %141, 1
  store i32 %143, i32* %9, align 4
  br label %130

; <label>:144:                                    ; preds = %130
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 4.500000e+01, double 4.500000e+01>, <2 x double>* %allocaVec24
  store double 4.500000e+01, double* %2, align 8
  store <2 x double> <double 8.670000e+00, double 8.670000e+00>, <2 x double>* %allocaVec25
  store double 8.670000e+00, double* %3, align 8
  store <2 x double> <double 7.500000e+00, double 7.500000e+00>, <2 x double>* %allocaVec26
  store double 7.500000e+00, double* %4, align 8
  store <2 x double> <double 3.400000e+01, double 3.400000e+01>, <2 x double>* %allocaVec27
  store double 3.400000e+01, double* %5, align 8
  %146 = load double, double* %2, align 8
  %147 = load double, double* %3, align 8
  %148 = load double, double* %4, align 8
  %149 = load double, double* %5, align 8
  %150 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %146, double %147, double %148, double %149, i32* %8, double* %150)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %152

; <label>:152:                                    ; preds = %162, %144
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %166

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %158
  %160 = load double, double* %159, align 8
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %160)
  br label %162

; <label>:162:                                    ; preds = %156
  %163 = load i32, i32* %9, align 4
  %164 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop41 = add <4 x i32> %164, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop41, <4 x i32>* %allocaVec30
  %165 = add nsw i32 %163, 1
  store i32 %165, i32* %9, align 4
  br label %152

; <label>:166:                                    ; preds = %152
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double -1.200000e+01, double -1.200000e+01>, <2 x double>* %allocaVec24
  store double -1.200000e+01, double* %2, align 8
  store <2 x double> <double -1.700000e+00, double -1.700000e+00>, <2 x double>* %allocaVec25
  store double -1.700000e+00, double* %3, align 8
  store <2 x double> <double 5.300000e+00, double 5.300000e+00>, <2 x double>* %allocaVec26
  store double 5.300000e+00, double* %4, align 8
  store <2 x double> <double 1.600000e+01, double 1.600000e+01>, <2 x double>* %allocaVec27
  store double 1.600000e+01, double* %5, align 8
  %168 = load double, double* %2, align 8
  %169 = load double, double* %3, align 8
  %170 = load double, double* %4, align 8
  %171 = load double, double* %5, align 8
  %172 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %168, double %169, double %170, double %171, i32* %8, double* %172)
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %174

; <label>:174:                                    ; preds = %184, %166
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %188

; <label>:178:                                    ; preds = %174
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %180
  %182 = load double, double* %181, align 8
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %182)
  br label %184

; <label>:184:                                    ; preds = %178
  %185 = load i32, i32* %9, align 4
  %186 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop42 = add <4 x i32> %186, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop42, <4 x i32>* %allocaVec30
  %187 = add nsw i32 %185, 1
  store i32 %187, i32* %9, align 4
  br label %174

; <label>:188:                                    ; preds = %174
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec24
  store double 1.000000e+00, double* %2, align 8
  br label %190

; <label>:190:                                    ; preds = %270, %188
  %191 = load double, double* %2, align 8
  %192 = fcmp olt double %191, 1.000000e+01
  br i1 %192, label %193, label %271

; <label>:193:                                    ; preds = %190
  store <2 x double> <double 1.000000e+01, double 1.000000e+01>, <2 x double>* %allocaVec25
  store double 1.000000e+01, double* %3, align 8
  br label %194

; <label>:194:                                    ; preds = %259, %193
  %195 = load double, double* %3, align 8
  %196 = fcmp ogt double %195, 0.000000e+00
  br i1 %196, label %197, label %260

; <label>:197:                                    ; preds = %194
  store <2 x double> <double 5.000000e+00, double 5.000000e+00>, <2 x double>* %allocaVec26
  store double 5.000000e+00, double* %4, align 8
  br label %198

; <label>:198:                                    ; preds = %248, %197
  %199 = load double, double* %4, align 8
  %200 = fcmp olt double %199, 1.500000e+01
  br i1 %200, label %201, label %249

; <label>:201:                                    ; preds = %198
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double>* %allocaVec27
  store double -1.000000e+00, double* %5, align 8
  br label %202

; <label>:202:                                    ; preds = %237, %201
  %203 = load double, double* %5, align 8
  %204 = fcmp ogt double %203, -5.000000e+00
  br i1 %204, label %205, label %238

; <label>:205:                                    ; preds = %202
  %206 = load double, double* %2, align 8
  %207 = load double, double* %3, align 8
  %208 = load double, double* %4, align 8
  %209 = load double, double* %5, align 8
  %210 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %206, double %207, double %208, double %209, i32* %8, double* %210)
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %212

; <label>:212:                                    ; preds = %222, %205
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %8, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %226

; <label>:216:                                    ; preds = %212
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %218
  %220 = load double, double* %219, align 8
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %220)
  br label %222

; <label>:222:                                    ; preds = %216
  %223 = load i32, i32* %9, align 4
  %224 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop43 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop43, <4 x i32>* %allocaVec30
  %225 = add nsw i32 %223, 1
  store i32 %225, i32* %9, align 4
  br label %212

; <label>:226:                                    ; preds = %212
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %228

; <label>:228:                                    ; preds = %226
  %229 = load double, double* %5, align 8
  %insertElmt44 = insertelement <2 x double> undef, double %229, i32 0
  %insertElmt45 = insertelement <2 x double> %insertElmt44, double %229, i32 1
  store <2 x double> %insertElmt45, <2 x double>* %allocaVec27, align 16
  %230 = load <2 x double>, <2 x double>* %allocaVec27, align 16
  %Vop46 = fsub <2 x double> %230, <double 4.510000e-01, double 4.510000e-01>
  store <2 x double> %Vop46, <2 x double>* %allocaVec27
  %231 = load <2 x double>, <2 x double>* %allocaVec27, align 4
  %extractE = extractelement <2 x double> %231, i64 0
  %extractE47 = extractelement <2 x double> %231, i64 1
  %sum = fadd double %extractE, %extractE47
  %sum48 = fadd double %sum, %extractE47
  %232 = fsub double %229, 4.510000e-01
  %Fmul = fmul double %232, 3.000000e+00
  store double %232, double* %Recovery
  %Fcmp = fcmp une double %sum48, %Fmul
  br i1 %Fcmp, label %233, label %237

; <label>:233:                                    ; preds = %228
  %remThree = fdiv double %sum48, %extractE
  %FcmpThree = fcmp une double %remThree, 3.000000e+00
  br i1 %FcmpThree, label %234, label %235

; <label>:234:                                    ; preds = %233
  store double %232, double* %Recovery, align 8
  br label %236

; <label>:235:                                    ; preds = %233
  store double %extractE, double* %Recovery, align 8
  br label %236

; <label>:236:                                    ; preds = %235, %234
  br label %237

; <label>:237:                                    ; preds = %228, %236
  %ReplaceInst = load double, double* %Recovery, align 8
  store double %ReplaceInst, double* %5, align 8
  br label %202

; <label>:238:                                    ; preds = %202
  br label %239

; <label>:239:                                    ; preds = %238
  %240 = load double, double* %4, align 8
  %insertElmt49 = insertelement <2 x double> undef, double %240, i32 0
  %insertElmt50 = insertelement <2 x double> %insertElmt49, double %240, i32 1
  store <2 x double> %insertElmt50, <2 x double>* %allocaVec26, align 16
  %241 = load <2 x double>, <2 x double>* %allocaVec26, align 16
  %Vop51 = fadd <2 x double> %241, <double 6.100000e-01, double 6.100000e-01>
  store <2 x double> %Vop51, <2 x double>* %allocaVec26
  %242 = load <2 x double>, <2 x double>* %allocaVec26, align 4
  %extractE53 = extractelement <2 x double> %242, i64 0
  %extractE54 = extractelement <2 x double> %242, i64 1
  %sum55 = fadd double %extractE53, %extractE54
  %sum56 = fadd double %sum55, %extractE54
  %243 = fadd double %240, 6.100000e-01
  %Fmul52 = fmul double %243, 3.000000e+00
  store double %243, double* %Recovery1
  %Fcmp57 = fcmp une double %sum56, %Fmul52
  br i1 %Fcmp57, label %244, label %248

; <label>:244:                                    ; preds = %239
  %remThree126 = fdiv double %sum56, %extractE53
  %FcmpThree127 = fcmp une double %remThree126, 3.000000e+00
  br i1 %FcmpThree127, label %245, label %246

; <label>:245:                                    ; preds = %244
  store double %243, double* %Recovery1, align 8
  br label %247

; <label>:246:                                    ; preds = %244
  store double %extractE53, double* %Recovery1, align 8
  br label %247

; <label>:247:                                    ; preds = %246, %245
  br label %248

; <label>:248:                                    ; preds = %239, %247
  %ReplaceInst138 = load double, double* %Recovery1, align 8
  store double %ReplaceInst138, double* %4, align 8
  br label %198

; <label>:249:                                    ; preds = %198
  br label %250

; <label>:250:                                    ; preds = %249
  %251 = load double, double* %3, align 8
  %insertElmt58 = insertelement <2 x double> undef, double %251, i32 0
  %insertElmt59 = insertelement <2 x double> %insertElmt58, double %251, i32 1
  store <2 x double> %insertElmt59, <2 x double>* %allocaVec25, align 16
  %252 = load <2 x double>, <2 x double>* %allocaVec25, align 16
  %Vop60 = fsub <2 x double> %252, <double 2.500000e-01, double 2.500000e-01>
  store <2 x double> %Vop60, <2 x double>* %allocaVec25
  %253 = load <2 x double>, <2 x double>* %allocaVec25, align 4
  %extractE62 = extractelement <2 x double> %253, i64 0
  %extractE63 = extractelement <2 x double> %253, i64 1
  %sum64 = fadd double %extractE62, %extractE63
  %sum65 = fadd double %sum64, %extractE63
  %254 = fsub double %251, 2.500000e-01
  %Fmul61 = fmul double %254, 3.000000e+00
  store double %254, double* %Recovery2
  %Fcmp66 = fcmp une double %sum65, %Fmul61
  br i1 %Fcmp66, label %255, label %259

; <label>:255:                                    ; preds = %250
  %remThree128 = fdiv double %sum65, %extractE62
  %FcmpThree129 = fcmp une double %remThree128, 3.000000e+00
  br i1 %FcmpThree129, label %256, label %257

; <label>:256:                                    ; preds = %255
  store double %254, double* %Recovery2, align 8
  br label %258

; <label>:257:                                    ; preds = %255
  store double %extractE62, double* %Recovery2, align 8
  br label %258

; <label>:258:                                    ; preds = %257, %256
  br label %259

; <label>:259:                                    ; preds = %250, %258
  %ReplaceInst139 = load double, double* %Recovery2, align 8
  store double %ReplaceInst139, double* %3, align 8
  br label %194

; <label>:260:                                    ; preds = %194
  br label %261

; <label>:261:                                    ; preds = %260
  %262 = load double, double* %2, align 8
  %insertElmt67 = insertelement <2 x double> undef, double %262, i32 0
  %insertElmt68 = insertelement <2 x double> %insertElmt67, double %262, i32 1
  store <2 x double> %insertElmt68, <2 x double>* %allocaVec24, align 16
  %263 = load <2 x double>, <2 x double>* %allocaVec24, align 16
  %Vop69 = fadd <2 x double> %263, <double 1.000000e+00, double 1.000000e+00>
  store <2 x double> %Vop69, <2 x double>* %allocaVec24
  %264 = load <2 x double>, <2 x double>* %allocaVec24, align 4
  %extractE71 = extractelement <2 x double> %264, i64 0
  %extractE72 = extractelement <2 x double> %264, i64 1
  %sum73 = fadd double %extractE71, %extractE72
  %sum74 = fadd double %sum73, %extractE72
  %265 = fadd double %262, 1.000000e+00
  %Fmul70 = fmul double %265, 3.000000e+00
  store double %265, double* %Recovery3
  %Fcmp75 = fcmp une double %sum74, %Fmul70
  br i1 %Fcmp75, label %266, label %270

; <label>:266:                                    ; preds = %261
  %remThree130 = fdiv double %sum74, %extractE71
  %FcmpThree131 = fcmp une double %remThree130, 3.000000e+00
  br i1 %FcmpThree131, label %267, label %268

; <label>:267:                                    ; preds = %266
  store double %265, double* %Recovery3, align 8
  br label %269

; <label>:268:                                    ; preds = %266
  store double %extractE71, double* %Recovery3, align 8
  br label %269

; <label>:269:                                    ; preds = %268, %267
  br label %270

; <label>:270:                                    ; preds = %261, %269
  %ReplaceInst140 = load double, double* %Recovery3, align 8
  store double %ReplaceInst140, double* %2, align 8
  br label %190

; <label>:271:                                    ; preds = %190
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec30
  store i32 0, i32* %9, align 4
  br label %273

; <label>:273:                                    ; preds = %292, %271
  %274 = load i32, i32* %9, align 4
  %275 = icmp slt i32 %274, 100000
  br i1 %275, label %276, label %293

; <label>:276:                                    ; preds = %273
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  call void @usqrt(i64 %278, %struct.int_sqrt* %11)
  %279 = load i32, i32* %9, align 4
  %280 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %279, i32 %281)
  br label %283

; <label>:283:                                    ; preds = %276
  %284 = load i32, i32* %9, align 4
  %285 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop76 = add <4 x i32> %285, <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %Vop76, <4 x i32>* %allocaVec30
  %286 = load <4 x i32>, <4 x i32>* %allocaVec30, align 4
  %extractE78 = extractelement <4 x i32> %286, i64 0
  %extractE79 = extractelement <4 x i32> %286, i64 1
  %extractE80 = extractelement <4 x i32> %286, i64 2
  %sum81 = add i32 %extractE78, %extractE79
  %sum82 = add i32 %sum81, %extractE80
  %287 = add nsw i32 %284, 2
  %Fmul77 = mul i32 %287, 3
  store i32 %287, i32* %Recovery4
  %Fcmp83 = icmp ne i32 %sum82, %Fmul77
  br i1 %Fcmp83, label %288, label %292

; <label>:288:                                    ; preds = %283
  %remThree132 = sdiv i32 %sum82, %extractE78
  %FcmpThree133 = icmp ne i32 %remThree132, 3
  br i1 %FcmpThree133, label %289, label %290

; <label>:289:                                    ; preds = %288
  store i32 %287, i32* %Recovery4, align 4
  br label %291

; <label>:290:                                    ; preds = %288
  store i32 %extractE78, i32* %Recovery4, align 4
  br label %291

; <label>:291:                                    ; preds = %290, %289
  br label %292

; <label>:292:                                    ; preds = %283, %291
  %ReplaceInst141 = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst141, i32* %9, align 4
  br label %273

; <label>:293:                                    ; preds = %273
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <4 x i64> <i64 1072497001, i64 1072497001, i64 1072497001, i64 1072497001>, <4 x i64>* %allocaVec31
  store i64 1072497001, i64* %10, align 8
  br label %295

; <label>:295:                                    ; preds = %313, %293
  %296 = load i64, i64* %10, align 8
  %297 = icmp ult i64 %296, 1072513385
  br i1 %297, label %298, label %314

; <label>:298:                                    ; preds = %295
  %299 = load i64, i64* %10, align 8
  call void @usqrt(i64 %299, %struct.int_sqrt* %11)
  %300 = load i64, i64* %10, align 8
  %301 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i64 %300, i32 %302)
  br label %304

; <label>:304:                                    ; preds = %298
  %305 = load i64, i64* %10, align 8
  %insertElmt84 = insertelement <4 x i64> undef, i64 %305, i32 0
  %insertElmt85 = insertelement <4 x i64> %insertElmt84, i64 %305, i32 1
  %insertElmt86 = insertelement <4 x i64> %insertElmt85, i64 %305, i32 2
  %insertElmt87 = insertelement <4 x i64> %insertElmt86, i64 %305, i32 3
  store <4 x i64> %insertElmt87, <4 x i64>* %allocaVec31, align 16
  %306 = load <4 x i64>, <4 x i64>* %allocaVec31, align 16
  %Vop88 = add <4 x i64> %306, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop88, <4 x i64>* %allocaVec31
  %307 = load <4 x i64>, <4 x i64>* %allocaVec31, align 4
  %extractE90 = extractelement <4 x i64> %307, i64 0
  %extractE91 = extractelement <4 x i64> %307, i64 1
  %extractE92 = extractelement <4 x i64> %307, i64 2
  %sum93 = add i64 %extractE90, %extractE91
  %sum94 = add i64 %sum93, %extractE92
  %308 = add i64 %305, 1
  %Fmul89 = mul i64 %308, 3
  store i64 %308, i64* %Recovery5
  %Fcmp95 = icmp ne i64 %sum94, %Fmul89
  br i1 %Fcmp95, label %309, label %313

; <label>:309:                                    ; preds = %304
  %remThree134 = sdiv i64 %sum94, %extractE90
  %FcmpThree135 = icmp ne i64 %remThree134, 3
  br i1 %FcmpThree135, label %310, label %311

; <label>:310:                                    ; preds = %309
  store i64 %308, i64* %Recovery5, align 8
  br label %312

; <label>:311:                                    ; preds = %309
  store i64 %extractE90, i64* %Recovery5, align 8
  br label %312

; <label>:312:                                    ; preds = %311, %310
  br label %313

; <label>:313:                                    ; preds = %304, %312
  %ReplaceInst142 = load i64, i64* %Recovery5, align 8
  store i64 %ReplaceInst142, i64* %10, align 8
  br label %295

; <label>:314:                                    ; preds = %295
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec28
  store double 0.000000e+00, double* %7, align 8
  br label %316

; <label>:316:                                    ; preds = %330, %314
  %317 = load double, double* %7, align 8
  %318 = fcmp ole double %317, 3.600000e+02
  br i1 %318, label %319, label %334

; <label>:319:                                    ; preds = %316
  %320 = load double, double* %7, align 8
  %321 = load double, double* %7, align 8
  %insertElmt96 = insertelement <2 x double> undef, double %321, i32 0
  %insertElmt97 = insertelement <2 x double> %insertElmt96, double %321, i32 1
  store <2 x double> %insertElmt97, <2 x double>* %allocaVec28, align 16
  %322 = call double @atan(double 1.000000e+00) #5
  store double %322, double* %CallInst
  %323 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %323, i32 0
  %insertCall98 = insertelement <2 x double> %insertCall, double %323, i32 1
  store <2 x double> %insertCall98, <2 x double>* %CallInstVec, align 4
  %324 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop99 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %324
  %325 = fmul double 4.000000e+00, %322
  %326 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop100 = fmul <2 x double> %326, %Vop99
  %327 = fmul double %321, %325
  %Vop101 = fdiv <2 x double> %Vop100, <double 1.800000e+02, double 1.800000e+02>
  %328 = fdiv double %327, 1.800000e+02
  %329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %320, double %328)
  br label %330

; <label>:330:                                    ; preds = %319
  %331 = load double, double* %7, align 8
  %insertElmt102 = insertelement <2 x double> undef, double %331, i32 0
  %insertElmt103 = insertelement <2 x double> %insertElmt102, double %331, i32 1
  store <2 x double> %insertElmt103, <2 x double>* %allocaVec28, align 16
  %332 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop104 = fadd <2 x double> %332, <double 1.000000e-03, double 1.000000e-03>
  store <2 x double> %Vop104, <2 x double>* %allocaVec28
  %333 = fadd double %331, 1.000000e-03
  store double %333, double* %7, align 8
  br label %316

; <label>:334:                                    ; preds = %316
  %335 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec28
  store double 0.000000e+00, double* %7, align 8
  br label %336

; <label>:336:                                    ; preds = %370, %334
  %337 = load double, double* %7, align 8
  %338 = call double @atan(double 1.000000e+00) #5
  store double %338, double* %CallInst7
  %339 = load double, double* %CallInst7, align 4
  %insertCall105 = insertelement <2 x double> undef, double %339, i32 0
  %insertCall106 = insertelement <2 x double> %insertCall105, double %339, i32 1
  store <2 x double> %insertCall106, <2 x double>* %CallInstVec8, align 4
  %340 = load <2 x double>, <2 x double>* %CallInstVec8, align 4
  %Vop107 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %340
  %341 = fmul double 4.000000e+00, %338
  %Vop108 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %Vop107
  %342 = fmul double 2.000000e+00, %341
  %Vop109 = fadd <2 x double> %Vop108, <double 1.000000e-06, double 1.000000e-06>
  %343 = fadd double %342, 1.000000e-06
  %344 = fcmp ole double %337, %343
  br i1 %344, label %345, label %371

; <label>:345:                                    ; preds = %336
  %346 = load double, double* %7, align 8
  %347 = load double, double* %7, align 8
  %348 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop110 = fmul <2 x double> %348, <double 1.800000e+02, double 1.800000e+02>
  %349 = fmul double %347, 1.800000e+02
  %350 = call double @atan(double 1.000000e+00) #5
  store double %350, double* %CallInst9
  %351 = load double, double* %CallInst9, align 4
  %insertCall111 = insertelement <2 x double> undef, double %351, i32 0
  %insertCall112 = insertelement <2 x double> %insertCall111, double %351, i32 1
  store <2 x double> %insertCall112, <2 x double>* %CallInstVec10, align 4
  %352 = load <2 x double>, <2 x double>* %CallInstVec10, align 4
  %Vop113 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %352
  %353 = fmul double 4.000000e+00, %350
  %Vop114 = fdiv <2 x double> %Vop110, %Vop113
  %354 = fdiv double %349, %353
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %346, double %354)
  br label %356

; <label>:356:                                    ; preds = %345
  %357 = call double @atan(double 1.000000e+00) #5
  store double %357, double* %CallInst11
  %358 = load double, double* %CallInst11, align 4
  %insertCall115 = insertelement <2 x double> undef, double %358, i32 0
  %insertCall116 = insertelement <2 x double> %insertCall115, double %358, i32 1
  store <2 x double> %insertCall116, <2 x double>* %CallInstVec12, align 4
  %359 = load <2 x double>, <2 x double>* %CallInstVec12, align 4
  %Vop117 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %359
  %360 = fmul double 4.000000e+00, %357
  %Vop118 = fdiv <2 x double> %Vop117, <double 5.760000e+03, double 5.760000e+03>
  %361 = fdiv double %360, 5.760000e+03
  %362 = load double, double* %7, align 8
  %363 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop119 = fadd <2 x double> %363, %Vop118
  store <2 x double> %Vop119, <2 x double>* %allocaVec28
  %364 = load <2 x double>, <2 x double>* %allocaVec28, align 4
  %extractE121 = extractelement <2 x double> %364, i64 0
  %extractE122 = extractelement <2 x double> %364, i64 1
  %sum123 = fadd double %extractE121, %extractE122
  %sum124 = fadd double %sum123, %extractE122
  %365 = fadd double %362, %361
  %Fmul120 = fmul double %365, 3.000000e+00
  store double %365, double* %Recovery6
  %Fcmp125 = fcmp une double %sum124, %Fmul120
  br i1 %Fcmp125, label %366, label %370

; <label>:366:                                    ; preds = %356
  %remThree136 = fdiv double %sum124, %extractE121
  %FcmpThree137 = fcmp une double %remThree136, 3.000000e+00
  br i1 %FcmpThree137, label %367, label %368

; <label>:367:                                    ; preds = %366
  store double %365, double* %Recovery6, align 8
  br label %369

; <label>:368:                                    ; preds = %366
  store double %extractE121, double* %Recovery6, align 8
  br label %369

; <label>:369:                                    ; preds = %368, %367
  br label %370

; <label>:370:                                    ; preds = %356, %369
  %ReplaceInst143 = load double, double* %Recovery6, align 8
  store double %ReplaceInst143, double* %7, align 8
  br label %336

; <label>:371:                                    ; preds = %336
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare double @atan(double) #2

declare i32 @puts(...) #1

; Function Attrs: nounwind
define double @rad2deg(double) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec1 = alloca <2 x double>, align 16
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %insertElmt = insertelement <2 x double> undef, double %3, i32 0
  %insertElmt2 = insertelement <2 x double> %insertElmt, double %3, i32 1
  store <2 x double> %insertElmt2, <2 x double>* %allocaVec1, align 16
  %4 = load <2 x double>, <2 x double>* %allocaVec1, align 16
  %Vop = fmul <2 x double> <double 1.800000e+02, double 1.800000e+02>, %4
  %5 = fmul double 1.800000e+02, %3
  %6 = call double @atan(double 1.000000e+00) #5
  store double %6, double* %CallInst
  %7 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %7, i32 0
  %insertCall3 = insertelement <2 x double> %insertCall, double %7, i32 1
  store <2 x double> %insertCall3, <2 x double>* %CallInstVec, align 4
  %8 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop4 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %8
  %9 = fmul double 4.000000e+00, %6
  %Vop5 = fdiv <2 x double> %Vop, %Vop4
  %10 = fdiv double %5, %9
  ret double %10
}

; Function Attrs: nounwind
define double @deg2rad(double) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec1 = alloca <2 x double>, align 16
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = call double @atan(double 1.000000e+00) #5
  store double %3, double* %CallInst
  %4 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %4, i32 0
  %insertCall2 = insertelement <2 x double> %insertCall, double %4, i32 1
  store <2 x double> %insertCall2, <2 x double>* %CallInstVec, align 4
  %5 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %5
  %6 = fmul double 4.000000e+00, %3
  %7 = load double, double* %2, align 8
  %insertElmt = insertelement <2 x double> undef, double %7, i32 0
  %insertElmt3 = insertelement <2 x double> %insertElmt, double %7, i32 1
  store <2 x double> %insertElmt3, <2 x double>* %allocaVec1, align 16
  %8 = load <2 x double>, <2 x double>* %allocaVec1, align 16
  %Vop4 = fmul <2 x double> %Vop, %8
  %9 = fmul double %6, %7
  %Vop5 = fdiv <2 x double> %Vop4, <double 1.800000e+02, double 1.800000e+02>
  %10 = fdiv double %9, 1.800000e+02
  ret double %10
}

; Function Attrs: nounwind
define void @SolveCubic(double, double, double, double, i32*, double*) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 8
  %CastInst = alloca x86_fp80, align 4
  %CastInstVec = alloca <4 x x86_fp80>, align 16
  %CastInst1 = alloca x86_fp80, align 4
  %CastInstVec2 = alloca <4 x x86_fp80>, align 16
  %CastInst3 = alloca x86_fp80, align 4
  %CastInstVec4 = alloca <4 x x86_fp80>, align 16
  %CastInst5 = alloca x86_fp80, align 4
  %CastInstVec6 = alloca <4 x x86_fp80>, align 16
  %CastInst7 = alloca x86_fp80, align 4
  %CastInstVec8 = alloca <4 x x86_fp80>, align 16
  %CastInst9 = alloca x86_fp80, align 4
  %CastInstVec10 = alloca <4 x x86_fp80>, align 16
  %allocaVec33 = alloca <2 x double>, align 16
  %CastInst11 = alloca double, align 4
  %CastInstVec12 = alloca <2 x double>, align 16
  %CastInst13 = alloca x86_fp80, align 4
  %CastInstVec14 = alloca <4 x x86_fp80>, align 16
  %allocaVec34 = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec35 = alloca <2 x double>, align 16
  %CallInst15 = alloca double, align 4
  %CallInstVec16 = alloca <2 x double>, align 16
  %allocaVec36 = alloca <2 x double>, align 16
  %CallInst17 = alloca double, align 4
  %CallInstVec18 = alloca <2 x double>, align 16
  %allocaVec37 = alloca <2 x double>, align 16
  %CallInst19 = alloca double, align 4
  %CallInstVec20 = alloca <2 x double>, align 16
  %allocaVec38 = alloca <2 x double>, align 16
  %CallInst21 = alloca double, align 4
  %CallInstVec22 = alloca <2 x double>, align 16
  %allocaVec39 = alloca <2 x double>, align 16
  %CallInst23 = alloca double, align 4
  %CallInstVec24 = alloca <2 x double>, align 16
  %allocaVec40 = alloca <2 x double>, align 16
  %CallInst25 = alloca double, align 4
  %CallInstVec26 = alloca <2 x double>, align 16
  %allocaVec41 = alloca <2 x double>, align 16
  %CallInst27 = alloca double, align 4
  %CallInstVec28 = alloca <2 x double>, align 16
  %allocaVec42 = alloca <2 x double>, align 16
  %CallInst29 = alloca double, align 4
  %CallInstVec30 = alloca <2 x double>, align 16
  %allocaVec43 = alloca <2 x double>, align 16
  %CallInst31 = alloca double, align 4
  %CallInstVec32 = alloca <2 x double>, align 16
  %allocaVec44 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %allocaVec45 = alloca <2 x double>, align 16
  %8 = alloca double, align 8
  %allocaVec46 = alloca <2 x double>, align 16
  %9 = alloca double, align 8
  %allocaVec47 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %allocaVec48 = alloca <2 x double>, align 16
  %18 = alloca double, align 8
  %allocaVec49 = alloca <2 x double>, align 16
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %20 = load double, double* %8, align 8
  %insertElmt = insertelement <2 x double> undef, double %20, i32 0
  %insertElmt50 = insertelement <2 x double> %insertElmt, double %20, i32 1
  store <2 x double> %insertElmt50, <2 x double>* %allocaVec45, align 16
  %21 = load double, double* %7, align 8
  %insertElmt51 = insertelement <2 x double> undef, double %21, i32 0
  %insertElmt52 = insertelement <2 x double> %insertElmt51, double %21, i32 1
  store <2 x double> %insertElmt52, <2 x double>* %allocaVec44, align 16
  %22 = load <2 x double>, <2 x double>* %allocaVec45, align 16
  %23 = load <2 x double>, <2 x double>* %allocaVec44, align 16
  %Vop = fdiv <2 x double> %22, %23
  %24 = fdiv double %20, %21
  %25 = fpext double %24 to x86_fp80
  store x86_fp80 %25, x86_fp80* %13, align 16
  %26 = load double, double* %9, align 8
  %insertElmt53 = insertelement <2 x double> undef, double %26, i32 0
  %insertElmt54 = insertelement <2 x double> %insertElmt53, double %26, i32 1
  store <2 x double> %insertElmt54, <2 x double>* %allocaVec46, align 16
  %27 = load double, double* %7, align 8
  %insertElmt55 = insertelement <2 x double> undef, double %27, i32 0
  %insertElmt56 = insertelement <2 x double> %insertElmt55, double %27, i32 1
  store <2 x double> %insertElmt56, <2 x double>* %allocaVec44, align 16
  %28 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %29 = load <2 x double>, <2 x double>* %allocaVec44, align 16
  %Vop57 = fdiv <2 x double> %28, %29
  %30 = fdiv double %26, %27
  %31 = fpext double %30 to x86_fp80
  store x86_fp80 %31, x86_fp80* %14, align 16
  %32 = load double, double* %10, align 8
  %insertElmt58 = insertelement <2 x double> undef, double %32, i32 0
  %insertElmt59 = insertelement <2 x double> %insertElmt58, double %32, i32 1
  store <2 x double> %insertElmt59, <2 x double>* %allocaVec47, align 16
  %33 = load double, double* %7, align 8
  %insertElmt60 = insertelement <2 x double> undef, double %33, i32 0
  %insertElmt61 = insertelement <2 x double> %insertElmt60, double %33, i32 1
  store <2 x double> %insertElmt61, <2 x double>* %allocaVec44, align 16
  %34 = load <2 x double>, <2 x double>* %allocaVec47, align 16
  %35 = load <2 x double>, <2 x double>* %allocaVec44, align 16
  %Vop62 = fdiv <2 x double> %34, %35
  %36 = fdiv double %32, %33
  %37 = fpext double %36 to x86_fp80
  store x86_fp80 %37, x86_fp80* %15, align 16
  %38 = load x86_fp80, x86_fp80* %13, align 16
  %39 = load x86_fp80, x86_fp80* %13, align 16
  %40 = fmul x86_fp80 %38, %39
  %41 = load x86_fp80, x86_fp80* %14, align 16
  %42 = fmul x86_fp80 0xK4000C000000000000000, %41
  %43 = fsub x86_fp80 %40, %42
  %44 = fdiv x86_fp80 %43, 0xK40029000000000000000
  store x86_fp80 %44, x86_fp80* %16, align 16
  %45 = load x86_fp80, x86_fp80* %13, align 16
  %46 = fmul x86_fp80 0xK40008000000000000000, %45
  %47 = load x86_fp80, x86_fp80* %13, align 16
  %48 = fmul x86_fp80 %46, %47
  %49 = load x86_fp80, x86_fp80* %13, align 16
  %50 = fmul x86_fp80 %48, %49
  %51 = load x86_fp80, x86_fp80* %13, align 16
  %52 = fmul x86_fp80 0xK40029000000000000000, %51
  %53 = load x86_fp80, x86_fp80* %14, align 16
  %54 = fmul x86_fp80 %52, %53
  %55 = fsub x86_fp80 %50, %54
  %56 = load x86_fp80, x86_fp80* %15, align 16
  %57 = fmul x86_fp80 0xK4003D800000000000000, %56
  %58 = fadd x86_fp80 %55, %57
  %59 = fdiv x86_fp80 %58, 0xK4004D800000000000000
  store x86_fp80 %59, x86_fp80* %17, align 16
  %60 = load x86_fp80, x86_fp80* %17, align 16
  %61 = load x86_fp80, x86_fp80* %17, align 16
  %62 = fmul x86_fp80 %60, %61
  %63 = load x86_fp80, x86_fp80* %16, align 16
  %64 = load x86_fp80, x86_fp80* %16, align 16
  %65 = fmul x86_fp80 %63, %64
  %66 = load x86_fp80, x86_fp80* %16, align 16
  %67 = fmul x86_fp80 %65, %66
  %68 = fsub x86_fp80 %62, %67
  %69 = fptrunc x86_fp80 %68 to double
  store double %69, double* %18, align 8
  %70 = load double, double* %18, align 8
  %71 = fcmp ole double %70, 0.000000e+00
  br i1 %71, label %72, label %139

; <label>:72:                                     ; preds = %6
  %73 = load i32*, i32** %11, align 8
  store i32 3, i32* %73, align 4
  %74 = load x86_fp80, x86_fp80* %17, align 16
  %75 = load x86_fp80, x86_fp80* %16, align 16
  %76 = load x86_fp80, x86_fp80* %16, align 16
  %77 = fmul x86_fp80 %75, %76
  %78 = load x86_fp80, x86_fp80* %16, align 16
  %79 = fmul x86_fp80 %77, %78
  %80 = fptrunc x86_fp80 %79 to double
  %81 = call double @sqrt(double %80) #5
  %82 = fpext double %81 to x86_fp80
  %83 = fdiv x86_fp80 %74, %82
  %84 = fptrunc x86_fp80 %83 to double
  %85 = call double @acos(double %84) #5
  store double %85, double* %19, align 8
  %86 = load x86_fp80, x86_fp80* %16, align 16
  %87 = fptrunc x86_fp80 %86 to double
  %88 = call double @sqrt(double %87) #5
  %89 = fmul double -2.000000e+00, %88
  %90 = load double, double* %19, align 8
  %91 = fdiv double %90, 3.000000e+00
  %92 = call double @cos(double %91) #5
  %93 = fmul double %89, %92
  %94 = fpext double %93 to x86_fp80
  %95 = load x86_fp80, x86_fp80* %13, align 16
  %96 = fdiv x86_fp80 %95, 0xK4000C000000000000000
  %97 = fsub x86_fp80 %94, %96
  %98 = fptrunc x86_fp80 %97 to double
  %99 = load double*, double** %12, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  store double %98, double* %100, align 8
  %101 = load x86_fp80, x86_fp80* %16, align 16
  %102 = fptrunc x86_fp80 %101 to double
  %103 = call double @sqrt(double %102) #5
  %104 = fmul double -2.000000e+00, %103
  %105 = load double, double* %19, align 8
  %106 = call double @atan(double 1.000000e+00) #5
  %107 = fmul double 4.000000e+00, %106
  %108 = fmul double 2.000000e+00, %107
  %109 = fadd double %105, %108
  %110 = fdiv double %109, 3.000000e+00
  %111 = call double @cos(double %110) #5
  %112 = fmul double %104, %111
  %113 = fpext double %112 to x86_fp80
  %114 = load x86_fp80, x86_fp80* %13, align 16
  %115 = fdiv x86_fp80 %114, 0xK4000C000000000000000
  %116 = fsub x86_fp80 %113, %115
  %117 = fptrunc x86_fp80 %116 to double
  %118 = load double*, double** %12, align 8
  %119 = getelementptr inbounds double, double* %118, i64 1
  store double %117, double* %119, align 8
  %120 = load x86_fp80, x86_fp80* %16, align 16
  %121 = fptrunc x86_fp80 %120 to double
  %122 = call double @sqrt(double %121) #5
  %123 = fmul double -2.000000e+00, %122
  %124 = load double, double* %19, align 8
  %125 = call double @atan(double 1.000000e+00) #5
  %126 = fmul double 4.000000e+00, %125
  %127 = fmul double 4.000000e+00, %126
  %128 = fadd double %124, %127
  %129 = fdiv double %128, 3.000000e+00
  %130 = call double @cos(double %129) #5
  %131 = fmul double %123, %130
  %132 = fpext double %131 to x86_fp80
  %133 = load x86_fp80, x86_fp80* %13, align 16
  %134 = fdiv x86_fp80 %133, 0xK4000C000000000000000
  %135 = fsub x86_fp80 %132, %134
  %136 = fptrunc x86_fp80 %135 to double
  %137 = load double*, double** %12, align 8
  %138 = getelementptr inbounds double, double* %137, i64 2
  store double %136, double* %138, align 8
  br label %182

; <label>:139:                                    ; preds = %6
  %140 = load i32*, i32** %11, align 8
  store i32 1, i32* %140, align 4
  %141 = load double, double* %18, align 8
  %142 = call double @sqrt(double %141) #5
  %143 = load x86_fp80, x86_fp80* %17, align 16
  %144 = fptrunc x86_fp80 %143 to double
  %145 = call double @fabs(double %144) #6
  store double %142, double* %CallInst29
  %146 = load double, double* %CallInst29, align 4
  %insertCall = insertelement <2 x double> undef, double %146, i32 0
  %insertCall63 = insertelement <2 x double> %insertCall, double %146, i32 1
  store <2 x double> %insertCall63, <2 x double>* %CallInstVec30, align 4
  %147 = load <2 x double>, <2 x double>* %CallInstVec30, align 4
  store double %145, double* %CallInst31
  %148 = load double, double* %CallInst31, align 4
  %insertCall64 = insertelement <2 x double> undef, double %148, i32 0
  %insertCall65 = insertelement <2 x double> %insertCall64, double %148, i32 1
  store <2 x double> %insertCall65, <2 x double>* %CallInstVec32, align 4
  %149 = load <2 x double>, <2 x double>* %CallInstVec32, align 4
  %Vop66 = fadd <2 x double> %147, %149
  %150 = fadd double %142, %145
  %151 = call double @pow(double %150, double 0x3FD5555555555555) #5
  %152 = load double*, double** %12, align 8
  %153 = getelementptr inbounds double, double* %152, i64 0
  store double %151, double* %153, align 8
  %154 = load x86_fp80, x86_fp80* %16, align 16
  %155 = load double*, double** %12, align 8
  %156 = getelementptr inbounds double, double* %155, i64 0
  %157 = load double, double* %156, align 8
  %158 = fpext double %157 to x86_fp80
  %159 = fdiv x86_fp80 %154, %158
  %160 = load double*, double** %12, align 8
  %161 = getelementptr inbounds double, double* %160, i64 0
  %162 = load double, double* %161, align 8
  %163 = fpext double %162 to x86_fp80
  %164 = fadd x86_fp80 %163, %159
  %165 = fptrunc x86_fp80 %164 to double
  store double %165, double* %161, align 8
  %166 = load x86_fp80, x86_fp80* %17, align 16
  %167 = fcmp olt x86_fp80 %166, 0xK00000000000000000000
  %168 = select i1 %167, i32 1, i32 -1
  %169 = sitofp i32 %168 to double
  %170 = load double*, double** %12, align 8
  %171 = getelementptr inbounds double, double* %170, i64 0
  %172 = load double, double* %171, align 8
  %173 = fmul double %172, %169
  store double %173, double* %171, align 8
  %174 = load x86_fp80, x86_fp80* %13, align 16
  %175 = fdiv x86_fp80 %174, 0xK4000C000000000000000
  %176 = load double*, double** %12, align 8
  %177 = getelementptr inbounds double, double* %176, i64 0
  %178 = load double, double* %177, align 8
  %179 = fpext double %178 to x86_fp80
  %180 = fsub x86_fp80 %179, %175
  %181 = fptrunc x86_fp80 %180 to double
  store double %181, double* %177, align 8
  br label %182

; <label>:182:                                    ; preds = %139, %72
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
define void @usqrt(i64, %struct.int_sqrt*) #0 {
  %allocaVec = alloca <4 x i64>, align 16
  %Recovery = alloca i64, align 8
  %allocaVec4 = alloca <4 x i64>, align 16
  %Recovery1 = alloca i64, align 8
  %allocaVec5 = alloca <4 x i64>, align 16
  %Recovery2 = alloca i64, align 8
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i64>, align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct.int_sqrt*, align 8
  %allocaVec8 = alloca <4 x i64>, align 16
  %5 = alloca i64, align 8
  %allocaVec9 = alloca <4 x i64>, align 16
  %6 = alloca i64, align 8
  %allocaVec10 = alloca <4 x i64>, align 16
  %7 = alloca i64, align 8
  %allocaVec11 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec8
  store i64 0, i64* %5, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec9
  store i64 0, i64* %6, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec10
  store i64 0, i64* %7, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec11
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %71, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %72

; <label>:12:                                     ; preds = %9
  %13 = load i64, i64* %6, align 8
  %insertElmt = insertelement <4 x i64> undef, i64 %13, i32 0
  %insertElmt12 = insertelement <4 x i64> %insertElmt, i64 %13, i32 1
  %insertElmt13 = insertelement <4 x i64> %insertElmt12, i64 %13, i32 2
  %insertElmt14 = insertelement <4 x i64> %insertElmt13, i64 %13, i32 3
  store <4 x i64> %insertElmt14, <4 x i64>* %allocaVec9, align 16
  %14 = load <4 x i64>, <4 x i64>* %allocaVec9, align 16
  %Vop = shl <4 x i64> %14, <i64 2, i64 2, i64 2, i64 2>
  %15 = shl i64 %13, 2
  %16 = load i64, i64* %3, align 8
  %insertElmt15 = insertelement <4 x i64> undef, i64 %16, i32 0
  %insertElmt16 = insertelement <4 x i64> %insertElmt15, i64 %16, i32 1
  %insertElmt17 = insertelement <4 x i64> %insertElmt16, i64 %16, i32 2
  %insertElmt18 = insertelement <4 x i64> %insertElmt17, i64 %16, i32 3
  store <4 x i64> %insertElmt18, <4 x i64>* %allocaVec7, align 16
  %17 = load <4 x i64>, <4 x i64>* %allocaVec7, align 16
  %Vop19 = and <4 x i64> %17, <i64 3221225472, i64 3221225472, i64 3221225472, i64 3221225472>
  %18 = and i64 %16, 3221225472
  %Vop20 = lshr <4 x i64> %Vop19, <i64 30, i64 30, i64 30, i64 30>
  %19 = lshr i64 %18, 30
  %Vop21 = add <4 x i64> %Vop, %Vop20
  store <4 x i64> %Vop21, <4 x i64>* %allocaVec9
  %20 = add i64 %15, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %3, align 8
  %insertElmt22 = insertelement <4 x i64> undef, i64 %21, i32 0
  %insertElmt23 = insertelement <4 x i64> %insertElmt22, i64 %21, i32 1
  %insertElmt24 = insertelement <4 x i64> %insertElmt23, i64 %21, i32 2
  %insertElmt25 = insertelement <4 x i64> %insertElmt24, i64 %21, i32 3
  store <4 x i64> %insertElmt25, <4 x i64>* %allocaVec7, align 16
  %22 = load <4 x i64>, <4 x i64>* %allocaVec7, align 16
  %Vop26 = shl <4 x i64> %22, <i64 2, i64 2, i64 2, i64 2>
  store <4 x i64> %Vop26, <4 x i64>* %allocaVec7
  %23 = load <4 x i64>, <4 x i64>* %allocaVec7, align 4
  %extractE = extractelement <4 x i64> %23, i64 0
  %extractE27 = extractelement <4 x i64> %23, i64 1
  %extractE28 = extractelement <4 x i64> %23, i64 2
  %sum = add i64 %extractE, %extractE27
  %sum29 = add i64 %sum, %extractE28
  %24 = shl i64 %21, 2
  %Fmul = mul i64 %24, 3
  store i64 %24, i64* %Recovery
  %Fcmp = icmp ne i64 %sum29, %Fmul
  br i1 %Fcmp, label %25, label %29

; <label>:25:                                     ; preds = %12
  %remThree = sdiv i64 %sum29, %extractE
  %FcmpThree = icmp ne i64 %remThree, 3
  br i1 %FcmpThree, label %26, label %27

; <label>:26:                                     ; preds = %25
  store i64 %24, i64* %Recovery, align 8
  br label %28

; <label>:27:                                     ; preds = %25
  store i64 %extractE, i64* %Recovery, align 8
  br label %28

; <label>:28:                                     ; preds = %27, %26
  br label %29

; <label>:29:                                     ; preds = %12, %28
  %ReplaceInst = load i64, i64* %Recovery, align 8
  store i64 %ReplaceInst, i64* %3, align 8
  %30 = load i64, i64* %5, align 8
  %insertElmt30 = insertelement <4 x i64> undef, i64 %30, i32 0
  %insertElmt31 = insertelement <4 x i64> %insertElmt30, i64 %30, i32 1
  %insertElmt32 = insertelement <4 x i64> %insertElmt31, i64 %30, i32 2
  %insertElmt33 = insertelement <4 x i64> %insertElmt32, i64 %30, i32 3
  store <4 x i64> %insertElmt33, <4 x i64>* %allocaVec8, align 16
  %31 = load <4 x i64>, <4 x i64>* %allocaVec8, align 16
  %Vop34 = shl <4 x i64> %31, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop34, <4 x i64>* %allocaVec8
  %32 = shl i64 %30, 1
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load <4 x i64>, <4 x i64>* %allocaVec8, align 16
  %Vop35 = shl <4 x i64> %34, <i64 1, i64 1, i64 1, i64 1>
  %35 = shl i64 %33, 1
  %Vop36 = add <4 x i64> %Vop35, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop36, <4 x i64>* %allocaVec10
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %61

; <label>:40:                                     ; preds = %29
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load <4 x i64>, <4 x i64>* %allocaVec9, align 16
  %44 = load <4 x i64>, <4 x i64>* %allocaVec10, align 16
  %Vop37 = sub <4 x i64> %43, %44
  store <4 x i64> %Vop37, <4 x i64>* %allocaVec9
  %45 = load <4 x i64>, <4 x i64>* %allocaVec9, align 4
  %extractE39 = extractelement <4 x i64> %45, i64 0
  %extractE40 = extractelement <4 x i64> %45, i64 1
  %extractE41 = extractelement <4 x i64> %45, i64 2
  %sum42 = add i64 %extractE39, %extractE40
  %sum43 = add i64 %sum42, %extractE41
  %46 = sub i64 %42, %41
  %Fmul38 = mul i64 %46, 3
  store i64 %46, i64* %Recovery1
  %Fcmp44 = icmp ne i64 %sum43, %Fmul38
  br i1 %Fcmp44, label %47, label %51

; <label>:47:                                     ; preds = %40
  %remThree65 = sdiv i64 %sum43, %extractE39
  %FcmpThree66 = icmp ne i64 %remThree65, 3
  br i1 %FcmpThree66, label %48, label %49

; <label>:48:                                     ; preds = %47
  store i64 %46, i64* %Recovery1, align 8
  br label %50

; <label>:49:                                     ; preds = %47
  store i64 %extractE39, i64* %Recovery1, align 8
  br label %50

; <label>:50:                                     ; preds = %49, %48
  br label %51

; <label>:51:                                     ; preds = %40, %50
  %ReplaceInst71 = load i64, i64* %Recovery1, align 8
  store i64 %ReplaceInst71, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load <4 x i64>, <4 x i64>* %allocaVec8, align 16
  %Vop45 = add <4 x i64> %53, <i64 1, i64 1, i64 1, i64 1>
  store <4 x i64> %Vop45, <4 x i64>* %allocaVec8
  %54 = load <4 x i64>, <4 x i64>* %allocaVec8, align 4
  %extractE47 = extractelement <4 x i64> %54, i64 0
  %extractE48 = extractelement <4 x i64> %54, i64 1
  %extractE49 = extractelement <4 x i64> %54, i64 2
  %sum50 = add i64 %extractE47, %extractE48
  %sum51 = add i64 %sum50, %extractE49
  %55 = add i64 %52, 1
  %Fmul46 = mul i64 %55, 3
  store i64 %55, i64* %Recovery2
  %Fcmp52 = icmp ne i64 %sum51, %Fmul46
  br i1 %Fcmp52, label %56, label %60

; <label>:56:                                     ; preds = %51
  %remThree67 = sdiv i64 %sum51, %extractE47
  %FcmpThree68 = icmp ne i64 %remThree67, 3
  br i1 %FcmpThree68, label %57, label %58

; <label>:57:                                     ; preds = %56
  store i64 %55, i64* %Recovery2, align 8
  br label %59

; <label>:58:                                     ; preds = %56
  store i64 %extractE47, i64* %Recovery2, align 8
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %51, %59
  %ReplaceInst72 = load i64, i64* %Recovery2, align 8
  store i64 %ReplaceInst72, i64* %5, align 8
  br label %61

; <label>:61:                                     ; preds = %60, %29
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %8, align 4
  %insertElmt53 = insertelement <4 x i32> undef, i32 %63, i32 0
  %insertElmt54 = insertelement <4 x i32> %insertElmt53, i32 %63, i32 1
  %insertElmt55 = insertelement <4 x i32> %insertElmt54, i32 %63, i32 2
  %insertElmt56 = insertelement <4 x i32> %insertElmt55, i32 %63, i32 3
  store <4 x i32> %insertElmt56, <4 x i32>* %allocaVec11, align 16
  %64 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop57 = add <4 x i32> %64, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop57, <4 x i32>* %allocaVec11
  %65 = load <4 x i32>, <4 x i32>* %allocaVec11, align 4
  %extractE59 = extractelement <4 x i32> %65, i64 0
  %extractE60 = extractelement <4 x i32> %65, i64 1
  %extractE61 = extractelement <4 x i32> %65, i64 2
  %sum62 = add i32 %extractE59, %extractE60
  %sum63 = add i32 %sum62, %extractE61
  %66 = add nsw i32 %63, 1
  %Fmul58 = mul i32 %66, 3
  store i32 %66, i32* %Recovery3
  %Fcmp64 = icmp ne i32 %sum63, %Fmul58
  br i1 %Fcmp64, label %67, label %71

; <label>:67:                                     ; preds = %62
  %remThree69 = sdiv i32 %sum63, %extractE59
  %FcmpThree70 = icmp ne i32 %remThree69, 3
  br i1 %FcmpThree70, label %68, label %69

; <label>:68:                                     ; preds = %67
  store i32 %66, i32* %Recovery3, align 4
  br label %70

; <label>:69:                                     ; preds = %67
  store i32 %extractE59, i32* %Recovery3, align 4
  br label %70

; <label>:70:                                     ; preds = %69, %68
  br label %71

; <label>:71:                                     ; preds = %62, %70
  %ReplaceInst73 = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst73, i32* %8, align 4
  br label %9

; <label>:72:                                     ; preds = %9
  %73 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 8
  %74 = bitcast %struct.int_sqrt* %73 to i8*
  %75 = bitcast i64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}

!0 = !{!"clang version 4.0.0 (trunk)"}
