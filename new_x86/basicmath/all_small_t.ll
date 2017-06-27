; ModuleID = 'all_small_t.bc'
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
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Asqrt(%lX) = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 8
  %allocaVec12 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 8
  %allocaVec13 = alloca <2 x double>, align 16
  %Recovery2 = alloca double, align 8
  %allocaVec14 = alloca <2 x double>, align 16
  %Recovery3 = alloca double, align 8
  %allocaVec15 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec16 = alloca <2 x double>, align 16
  %Recovery5 = alloca double, align 8
  %allocaVec17 = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec18 = alloca <2 x double>, align 16
  %CallInst6 = alloca double, align 4
  %CallInstVec7 = alloca <2 x double>, align 16
  %allocaVec19 = alloca <2 x double>, align 16
  %CallInst8 = alloca double, align 4
  %CallInstVec9 = alloca <2 x double>, align 16
  %allocaVec20 = alloca <2 x double>, align 16
  %CallInst10 = alloca double, align 4
  %CallInstVec11 = alloca <2 x double>, align 16
  %allocaVec21 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec22 = alloca <2 x double>, align 16
  %2 = alloca double, align 8
  %allocaVec23 = alloca <2 x double>, align 16
  %3 = alloca double, align 8
  %allocaVec24 = alloca <2 x double>, align 16
  %4 = alloca double, align 8
  %allocaVec25 = alloca <2 x double>, align 16
  %5 = alloca double, align 8
  %allocaVec26 = alloca <2 x double>, align 16
  %6 = alloca double, align 8
  %allocaVec27 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %allocaVec28 = alloca <2 x double>, align 16
  %8 = alloca double, align 8
  %allocaVec29 = alloca <2 x double>, align 16
  %9 = alloca double, align 8
  %allocaVec30 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %allocaVec31 = alloca <2 x double>, align 16
  %11 = alloca double, align 8
  %allocaVec32 = alloca <2 x double>, align 16
  %12 = alloca double, align 8
  %allocaVec33 = alloca <2 x double>, align 16
  %13 = alloca double, align 8
  %allocaVec34 = alloca <2 x double>, align 16
  %14 = alloca double, align 8
  %allocaVec35 = alloca <2 x double>, align 16
  %15 = alloca double, align 8
  %allocaVec36 = alloca <2 x double>, align 16
  %16 = alloca double, align 8
  %allocaVec37 = alloca <2 x double>, align 16
  %17 = alloca double, align 8
  %18 = alloca [3 x double], align 16
  %allocaVec38 = alloca <2 x double>, align 16
  %19 = alloca double, align 8
  %allocaVec39 = alloca <4 x i32>, align 16
  %20 = alloca i32, align 4
  %allocaVec40 = alloca <4 x i32>, align 16
  %21 = alloca i32, align 4
  %allocaVec41 = alloca <4 x i64>, align 16
  %22 = alloca i64, align 8
  %23 = alloca %struct.int_sqrt, align 4
  %allocaVec42 = alloca <4 x i64>, align 16
  %24 = alloca i64, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec21
  store i32 0, i32* %1, align 4
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec22
  store double 1.000000e+00, double* %2, align 8
  store <2 x double> <double -1.050000e+01, double -1.050000e+01>, <2 x double>* %allocaVec23
  store double -1.050000e+01, double* %3, align 8
  store <2 x double> <double 3.200000e+01, double 3.200000e+01>, <2 x double>* %allocaVec24
  store double 3.200000e+01, double* %4, align 8
  store <2 x double> <double -3.000000e+01, double -3.000000e+01>, <2 x double>* %allocaVec25
  store double -3.000000e+01, double* %5, align 8
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec26
  store double 1.000000e+00, double* %6, align 8
  store <2 x double> <double -4.500000e+00, double -4.500000e+00>, <2 x double>* %allocaVec27
  store double -4.500000e+00, double* %7, align 8
  store <2 x double> <double 1.700000e+01, double 1.700000e+01>, <2 x double>* %allocaVec28
  store double 1.700000e+01, double* %8, align 8
  store <2 x double> <double -3.000000e+01, double -3.000000e+01>, <2 x double>* %allocaVec29
  store double -3.000000e+01, double* %9, align 8
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec30
  store double 1.000000e+00, double* %10, align 8
  store <2 x double> <double -3.500000e+00, double -3.500000e+00>, <2 x double>* %allocaVec31
  store double -3.500000e+00, double* %11, align 8
  store <2 x double> <double 2.200000e+01, double 2.200000e+01>, <2 x double>* %allocaVec32
  store double 2.200000e+01, double* %12, align 8
  store <2 x double> <double -3.100000e+01, double -3.100000e+01>, <2 x double>* %allocaVec33
  store double -3.100000e+01, double* %13, align 8
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec34
  store double 1.000000e+00, double* %14, align 8
  store <2 x double> <double -1.370000e+01, double -1.370000e+01>, <2 x double>* %allocaVec35
  store double -1.370000e+01, double* %15, align 8
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec36
  store double 1.000000e+00, double* %16, align 8
  store <2 x double> <double -3.500000e+01, double -3.500000e+01>, <2 x double>* %allocaVec37
  store double -3.500000e+01, double* %17, align 8
  store <4 x i64> <i64 1072497001, i64 1072497001, i64 1072497001, i64 1072497001>, <4 x i64>* %allocaVec41
  store i64 1072497001, i64* %22, align 8
  store <4 x i64> zeroinitializer, <4 x i64>* %allocaVec42
  store i64 0, i64* %24, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %26 = load double, double* %2, align 8
  %27 = load double, double* %3, align 8
  %28 = load double, double* %4, align 8
  %29 = load double, double* %5, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %26, double %27, double %28, double %29, i32* %20, double* %30)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %32

; <label>:32:                                     ; preds = %42, %0
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %20, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %21, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %38
  %40 = load double, double* %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %40)
  br label %42

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %21, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %43, i32 0
  %insertElmt43 = insertelement <4 x i32> %insertElmt, i32 %43, i32 1
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %43, i32 2
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %43, i32 3
  store <4 x i32> %insertElmt45, <4 x i32>* %allocaVec40, align 16
  %44 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop = add <4 x i32> %44, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec40
  %45 = add nsw i32 %43, 1
  store i32 %45, i32* %21, align 4
  br label %32

; <label>:46:                                     ; preds = %32
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %48 = load double, double* %6, align 8
  %49 = load double, double* %7, align 8
  %50 = load double, double* %8, align 8
  %51 = load double, double* %9, align 8
  %52 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %48, double %49, double %50, double %51, i32* %20, double* %52)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %54

; <label>:54:                                     ; preds = %64, %46
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %60
  %62 = load double, double* %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %62)
  br label %64

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %21, align 4
  %66 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop46 = add <4 x i32> %66, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop46, <4 x i32>* %allocaVec40
  %67 = add nsw i32 %65, 1
  store i32 %67, i32* %21, align 4
  br label %54

; <label>:68:                                     ; preds = %54
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %70 = load double, double* %10, align 8
  %71 = load double, double* %11, align 8
  %72 = load double, double* %12, align 8
  %73 = load double, double* %13, align 8
  %74 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %70, double %71, double %72, double %73, i32* %20, double* %74)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %76

; <label>:76:                                     ; preds = %86, %68
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %21, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %82
  %84 = load double, double* %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %84)
  br label %86

; <label>:86:                                     ; preds = %80
  %87 = load i32, i32* %21, align 4
  %88 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop47 = add <4 x i32> %88, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop47, <4 x i32>* %allocaVec40
  %89 = add nsw i32 %87, 1
  store i32 %89, i32* %21, align 4
  br label %76

; <label>:90:                                     ; preds = %76
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %92 = load double, double* %14, align 8
  %93 = load double, double* %15, align 8
  %94 = load double, double* %16, align 8
  %95 = load double, double* %17, align 8
  %96 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %92, double %93, double %94, double %95, i32* %20, double* %96)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %98

; <label>:98:                                     ; preds = %108, %90
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %104
  %106 = load double, double* %105, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %106)
  br label %108

; <label>:108:                                    ; preds = %102
  %109 = load i32, i32* %21, align 4
  %110 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop48 = add <4 x i32> %110, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop48, <4 x i32>* %allocaVec40
  %111 = add nsw i32 %109, 1
  store i32 %111, i32* %21, align 4
  br label %98

; <label>:112:                                    ; preds = %98
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec22
  store double 1.000000e+00, double* %2, align 8
  br label %114

; <label>:114:                                    ; preds = %194, %112
  %115 = load double, double* %2, align 8
  %116 = fcmp olt double %115, 1.000000e+01
  br i1 %116, label %117, label %195

; <label>:117:                                    ; preds = %114
  store <2 x double> <double 1.000000e+01, double 1.000000e+01>, <2 x double>* %allocaVec23
  store double 1.000000e+01, double* %3, align 8
  br label %118

; <label>:118:                                    ; preds = %183, %117
  %119 = load double, double* %3, align 8
  %120 = fcmp ogt double %119, 0.000000e+00
  br i1 %120, label %121, label %184

; <label>:121:                                    ; preds = %118
  store <2 x double> <double 5.000000e+00, double 5.000000e+00>, <2 x double>* %allocaVec24
  store double 5.000000e+00, double* %4, align 8
  br label %122

; <label>:122:                                    ; preds = %172, %121
  %123 = load double, double* %4, align 8
  %124 = fcmp olt double %123, 1.500000e+01
  br i1 %124, label %125, label %173

; <label>:125:                                    ; preds = %122
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double>* %allocaVec25
  store double -1.000000e+00, double* %5, align 8
  br label %126

; <label>:126:                                    ; preds = %161, %125
  %127 = load double, double* %5, align 8
  %128 = fcmp ogt double %127, -1.100000e+01
  br i1 %128, label %129, label %162

; <label>:129:                                    ; preds = %126
  %130 = load double, double* %2, align 8
  %131 = load double, double* %3, align 8
  %132 = load double, double* %4, align 8
  %133 = load double, double* %5, align 8
  %134 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @SolveCubic(double %130, double %131, double %132, double %133, i32* %20, double* %134)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %136

; <label>:136:                                    ; preds = %146, %129
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %150

; <label>:140:                                    ; preds = %136
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %142
  %144 = load double, double* %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %144)
  br label %146

; <label>:146:                                    ; preds = %140
  %147 = load i32, i32* %21, align 4
  %148 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop49 = add <4 x i32> %148, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop49, <4 x i32>* %allocaVec40
  %149 = add nsw i32 %147, 1
  store i32 %149, i32* %21, align 4
  br label %136

; <label>:150:                                    ; preds = %136
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %152

; <label>:152:                                    ; preds = %150
  %153 = load double, double* %5, align 8
  %insertElmt50 = insertelement <2 x double> undef, double %153, i32 0
  %insertElmt51 = insertelement <2 x double> %insertElmt50, double %153, i32 1
  store <2 x double> %insertElmt51, <2 x double>* %allocaVec25, align 16
  %154 = load <2 x double>, <2 x double>* %allocaVec25, align 16
  %Vop52 = fadd <2 x double> %154, <double -1.000000e+00, double -1.000000e+00>
  store <2 x double> %Vop52, <2 x double>* %allocaVec25
  %155 = load <2 x double>, <2 x double>* %allocaVec25, align 4
  %extractE = extractelement <2 x double> %155, i64 0
  %extractE53 = extractelement <2 x double> %155, i64 1
  %sum = fadd double %extractE, %extractE53
  %sum54 = fadd double %sum, %extractE53
  %156 = fadd double %153, -1.000000e+00
  %Fmul = fmul double %156, 3.000000e+00
  store double %156, double* %Recovery
  %Fcmp = fcmp une double %sum54, %Fmul
  br i1 %Fcmp, label %157, label %161

; <label>:157:                                    ; preds = %152
  %remThree = fdiv double %sum54, %extractE
  %FcmpThree = fcmp une double %remThree, 3.000000e+00
  br i1 %FcmpThree, label %158, label %159

; <label>:158:                                    ; preds = %157
  store double %156, double* %Recovery, align 8
  br label %160

; <label>:159:                                    ; preds = %157
  store double %extractE, double* %Recovery, align 8
  br label %160

; <label>:160:                                    ; preds = %159, %158
  br label %161

; <label>:161:                                    ; preds = %152, %160
  %ReplaceInst = load double, double* %Recovery, align 8
  store double %ReplaceInst, double* %5, align 8
  br label %126

; <label>:162:                                    ; preds = %126
  br label %163

; <label>:163:                                    ; preds = %162
  %164 = load double, double* %4, align 8
  %insertElmt55 = insertelement <2 x double> undef, double %164, i32 0
  %insertElmt56 = insertelement <2 x double> %insertElmt55, double %164, i32 1
  store <2 x double> %insertElmt56, <2 x double>* %allocaVec24, align 16
  %165 = load <2 x double>, <2 x double>* %allocaVec24, align 16
  %Vop57 = fadd <2 x double> %165, <double 5.000000e-01, double 5.000000e-01>
  store <2 x double> %Vop57, <2 x double>* %allocaVec24
  %166 = load <2 x double>, <2 x double>* %allocaVec24, align 4
  %extractE59 = extractelement <2 x double> %166, i64 0
  %extractE60 = extractelement <2 x double> %166, i64 1
  %sum61 = fadd double %extractE59, %extractE60
  %sum62 = fadd double %sum61, %extractE60
  %167 = fadd double %164, 5.000000e-01
  %Fmul58 = fmul double %167, 3.000000e+00
  store double %167, double* %Recovery1
  %Fcmp63 = fcmp une double %sum62, %Fmul58
  br i1 %Fcmp63, label %168, label %172

; <label>:168:                                    ; preds = %163
  %remThree120 = fdiv double %sum62, %extractE59
  %FcmpThree121 = fcmp une double %remThree120, 3.000000e+00
  br i1 %FcmpThree121, label %169, label %170

; <label>:169:                                    ; preds = %168
  store double %167, double* %Recovery1, align 8
  br label %171

; <label>:170:                                    ; preds = %168
  store double %extractE59, double* %Recovery1, align 8
  br label %171

; <label>:171:                                    ; preds = %170, %169
  br label %172

; <label>:172:                                    ; preds = %163, %171
  %ReplaceInst130 = load double, double* %Recovery1, align 8
  store double %ReplaceInst130, double* %4, align 8
  br label %122

; <label>:173:                                    ; preds = %122
  br label %174

; <label>:174:                                    ; preds = %173
  %175 = load double, double* %3, align 8
  %insertElmt64 = insertelement <2 x double> undef, double %175, i32 0
  %insertElmt65 = insertelement <2 x double> %insertElmt64, double %175, i32 1
  store <2 x double> %insertElmt65, <2 x double>* %allocaVec23, align 16
  %176 = load <2 x double>, <2 x double>* %allocaVec23, align 16
  %Vop66 = fadd <2 x double> %176, <double -1.000000e+00, double -1.000000e+00>
  store <2 x double> %Vop66, <2 x double>* %allocaVec23
  %177 = load <2 x double>, <2 x double>* %allocaVec23, align 4
  %extractE68 = extractelement <2 x double> %177, i64 0
  %extractE69 = extractelement <2 x double> %177, i64 1
  %sum70 = fadd double %extractE68, %extractE69
  %sum71 = fadd double %sum70, %extractE69
  %178 = fadd double %175, -1.000000e+00
  %Fmul67 = fmul double %178, 3.000000e+00
  store double %178, double* %Recovery2
  %Fcmp72 = fcmp une double %sum71, %Fmul67
  br i1 %Fcmp72, label %179, label %183

; <label>:179:                                    ; preds = %174
  %remThree122 = fdiv double %sum71, %extractE68
  %FcmpThree123 = fcmp une double %remThree122, 3.000000e+00
  br i1 %FcmpThree123, label %180, label %181

; <label>:180:                                    ; preds = %179
  store double %178, double* %Recovery2, align 8
  br label %182

; <label>:181:                                    ; preds = %179
  store double %extractE68, double* %Recovery2, align 8
  br label %182

; <label>:182:                                    ; preds = %181, %180
  br label %183

; <label>:183:                                    ; preds = %174, %182
  %ReplaceInst131 = load double, double* %Recovery2, align 8
  store double %ReplaceInst131, double* %3, align 8
  br label %118

; <label>:184:                                    ; preds = %118
  br label %185

; <label>:185:                                    ; preds = %184
  %186 = load double, double* %2, align 8
  %insertElmt73 = insertelement <2 x double> undef, double %186, i32 0
  %insertElmt74 = insertelement <2 x double> %insertElmt73, double %186, i32 1
  store <2 x double> %insertElmt74, <2 x double>* %allocaVec22, align 16
  %187 = load <2 x double>, <2 x double>* %allocaVec22, align 16
  %Vop75 = fadd <2 x double> %187, <double 1.000000e+00, double 1.000000e+00>
  store <2 x double> %Vop75, <2 x double>* %allocaVec22
  %188 = load <2 x double>, <2 x double>* %allocaVec22, align 4
  %extractE77 = extractelement <2 x double> %188, i64 0
  %extractE78 = extractelement <2 x double> %188, i64 1
  %sum79 = fadd double %extractE77, %extractE78
  %sum80 = fadd double %sum79, %extractE78
  %189 = fadd double %186, 1.000000e+00
  %Fmul76 = fmul double %189, 3.000000e+00
  store double %189, double* %Recovery3
  %Fcmp81 = fcmp une double %sum80, %Fmul76
  br i1 %Fcmp81, label %190, label %194

; <label>:190:                                    ; preds = %185
  %remThree124 = fdiv double %sum80, %extractE77
  %FcmpThree125 = fcmp une double %remThree124, 3.000000e+00
  br i1 %FcmpThree125, label %191, label %192

; <label>:191:                                    ; preds = %190
  store double %189, double* %Recovery3, align 8
  br label %193

; <label>:192:                                    ; preds = %190
  store double %extractE77, double* %Recovery3, align 8
  br label %193

; <label>:193:                                    ; preds = %192, %191
  br label %194

; <label>:194:                                    ; preds = %185, %193
  %ReplaceInst132 = load double, double* %Recovery3, align 8
  store double %ReplaceInst132, double* %2, align 8
  br label %114

; <label>:195:                                    ; preds = %114
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %197

; <label>:197:                                    ; preds = %216, %195
  %198 = load i32, i32* %21, align 4
  %199 = icmp slt i32 %198, 1001
  br i1 %199, label %200, label %217

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  call void @usqrt(i64 %202, %struct.int_sqrt* %23)
  %203 = load i32, i32* %21, align 4
  %204 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %203, i32 %205)
  br label %207

; <label>:207:                                    ; preds = %200
  %208 = load i32, i32* %21, align 4
  %209 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop82 = add <4 x i32> %209, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop82, <4 x i32>* %allocaVec40
  %210 = load <4 x i32>, <4 x i32>* %allocaVec40, align 4
  %extractE84 = extractelement <4 x i32> %210, i64 0
  %extractE85 = extractelement <4 x i32> %210, i64 1
  %extractE86 = extractelement <4 x i32> %210, i64 2
  %sum87 = add i32 %extractE84, %extractE85
  %sum88 = add i32 %sum87, %extractE86
  %211 = add nsw i32 %208, 1
  %Fmul83 = mul i32 %211, 3
  store i32 %211, i32* %Recovery4
  %Fcmp89 = icmp ne i32 %sum88, %Fmul83
  br i1 %Fcmp89, label %212, label %216

; <label>:212:                                    ; preds = %207
  %remThree126 = sdiv i32 %sum88, %extractE84
  %FcmpThree127 = icmp ne i32 %remThree126, 3
  br i1 %FcmpThree127, label %213, label %214

; <label>:213:                                    ; preds = %212
  store i32 %211, i32* %Recovery4, align 4
  br label %215

; <label>:214:                                    ; preds = %212
  store i32 %extractE84, i32* %Recovery4, align 4
  br label %215

; <label>:215:                                    ; preds = %214, %213
  br label %216

; <label>:216:                                    ; preds = %207, %215
  %ReplaceInst133 = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst133, i32* %21, align 4
  br label %197

; <label>:217:                                    ; preds = %197
  %218 = load i64, i64* %22, align 8
  call void @usqrt(i64 %218, %struct.int_sqrt* %23)
  %219 = load i64, i64* %22, align 8
  %220 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i64 %219, i32 %221)
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec38
  store double 0.000000e+00, double* %19, align 8
  br label %224

; <label>:224:                                    ; preds = %238, %217
  %225 = load double, double* %19, align 8
  %226 = fcmp ole double %225, 3.600000e+02
  br i1 %226, label %227, label %242

; <label>:227:                                    ; preds = %224
  %228 = load double, double* %19, align 8
  %229 = load double, double* %19, align 8
  %insertElmt90 = insertelement <2 x double> undef, double %229, i32 0
  %insertElmt91 = insertelement <2 x double> %insertElmt90, double %229, i32 1
  store <2 x double> %insertElmt91, <2 x double>* %allocaVec38, align 16
  %230 = call double @atan(double 1.000000e+00) #5
  store double %230, double* %CallInst
  %231 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %231, i32 0
  %insertCall92 = insertelement <2 x double> %insertCall, double %231, i32 1
  store <2 x double> %insertCall92, <2 x double>* %CallInstVec, align 4
  %232 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop93 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %232
  %233 = fmul double 4.000000e+00, %230
  %234 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop94 = fmul <2 x double> %234, %Vop93
  %235 = fmul double %229, %233
  %Vop95 = fdiv <2 x double> %Vop94, <double 1.800000e+02, double 1.800000e+02>
  %236 = fdiv double %235, 1.800000e+02
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %228, double %236)
  br label %238

; <label>:238:                                    ; preds = %227
  %239 = load double, double* %19, align 8
  %insertElmt96 = insertelement <2 x double> undef, double %239, i32 0
  %insertElmt97 = insertelement <2 x double> %insertElmt96, double %239, i32 1
  store <2 x double> %insertElmt97, <2 x double>* %allocaVec38, align 16
  %240 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop98 = fadd <2 x double> %240, <double 1.000000e+00, double 1.000000e+00>
  store <2 x double> %Vop98, <2 x double>* %allocaVec38
  %241 = fadd double %239, 1.000000e+00
  store double %241, double* %19, align 8
  br label %224

; <label>:242:                                    ; preds = %224
  %243 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec38
  store double 0.000000e+00, double* %19, align 8
  br label %244

; <label>:244:                                    ; preds = %278, %242
  %245 = load double, double* %19, align 8
  %246 = call double @atan(double 1.000000e+00) #5
  store double %246, double* %CallInst6
  %247 = load double, double* %CallInst6, align 4
  %insertCall99 = insertelement <2 x double> undef, double %247, i32 0
  %insertCall100 = insertelement <2 x double> %insertCall99, double %247, i32 1
  store <2 x double> %insertCall100, <2 x double>* %CallInstVec7, align 4
  %248 = load <2 x double>, <2 x double>* %CallInstVec7, align 4
  %Vop101 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %248
  %249 = fmul double 4.000000e+00, %246
  %Vop102 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %Vop101
  %250 = fmul double 2.000000e+00, %249
  %Vop103 = fadd <2 x double> %Vop102, <double 1.000000e-06, double 1.000000e-06>
  %251 = fadd double %250, 1.000000e-06
  %252 = fcmp ole double %245, %251
  br i1 %252, label %253, label %279

; <label>:253:                                    ; preds = %244
  %254 = load double, double* %19, align 8
  %255 = load double, double* %19, align 8
  %256 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop104 = fmul <2 x double> %256, <double 1.800000e+02, double 1.800000e+02>
  %257 = fmul double %255, 1.800000e+02
  %258 = call double @atan(double 1.000000e+00) #5
  store double %258, double* %CallInst8
  %259 = load double, double* %CallInst8, align 4
  %insertCall105 = insertelement <2 x double> undef, double %259, i32 0
  %insertCall106 = insertelement <2 x double> %insertCall105, double %259, i32 1
  store <2 x double> %insertCall106, <2 x double>* %CallInstVec9, align 4
  %260 = load <2 x double>, <2 x double>* %CallInstVec9, align 4
  %Vop107 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %260
  %261 = fmul double 4.000000e+00, %258
  %Vop108 = fdiv <2 x double> %Vop104, %Vop107
  %262 = fdiv double %257, %261
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %254, double %262)
  br label %264

; <label>:264:                                    ; preds = %253
  %265 = call double @atan(double 1.000000e+00) #5
  store double %265, double* %CallInst10
  %266 = load double, double* %CallInst10, align 4
  %insertCall109 = insertelement <2 x double> undef, double %266, i32 0
  %insertCall110 = insertelement <2 x double> %insertCall109, double %266, i32 1
  store <2 x double> %insertCall110, <2 x double>* %CallInstVec11, align 4
  %267 = load <2 x double>, <2 x double>* %CallInstVec11, align 4
  %Vop111 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %267
  %268 = fmul double 4.000000e+00, %265
  %Vop112 = fdiv <2 x double> %Vop111, <double 1.800000e+02, double 1.800000e+02>
  %269 = fdiv double %268, 1.800000e+02
  %270 = load double, double* %19, align 8
  %271 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop113 = fadd <2 x double> %271, %Vop112
  store <2 x double> %Vop113, <2 x double>* %allocaVec38
  %272 = load <2 x double>, <2 x double>* %allocaVec38, align 4
  %extractE115 = extractelement <2 x double> %272, i64 0
  %extractE116 = extractelement <2 x double> %272, i64 1
  %sum117 = fadd double %extractE115, %extractE116
  %sum118 = fadd double %sum117, %extractE116
  %273 = fadd double %270, %269
  %Fmul114 = fmul double %273, 3.000000e+00
  store double %273, double* %Recovery5
  %Fcmp119 = fcmp une double %sum118, %Fmul114
  br i1 %Fcmp119, label %274, label %278

; <label>:274:                                    ; preds = %264
  %remThree128 = fdiv double %sum118, %extractE115
  %FcmpThree129 = fcmp une double %remThree128, 3.000000e+00
  br i1 %FcmpThree129, label %275, label %276

; <label>:275:                                    ; preds = %274
  store double %273, double* %Recovery5, align 8
  br label %277

; <label>:276:                                    ; preds = %274
  store double %extractE115, double* %Recovery5, align 8
  br label %277

; <label>:277:                                    ; preds = %276, %275
  br label %278

; <label>:278:                                    ; preds = %264, %277
  %ReplaceInst134 = load double, double* %Recovery5, align 8
  store double %ReplaceInst134, double* %19, align 8
  br label %244

; <label>:279:                                    ; preds = %244
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
