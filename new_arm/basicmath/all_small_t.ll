; ModuleID = 'all_small_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

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
define arm_aapcscc i32 @main() #0 {
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
  %18 = alloca [3 x double], align 8
  %allocaVec38 = alloca <2 x double>, align 16
  %19 = alloca double, align 8
  %allocaVec39 = alloca <4 x i32>, align 16
  %20 = alloca i32, align 4
  %allocaVec40 = alloca <4 x i32>, align 16
  %21 = alloca i32, align 4
  %allocaVec41 = alloca <4 x i32>, align 16
  %22 = alloca i32, align 4
  %23 = alloca %struct.int_sqrt, align 4
  %allocaVec42 = alloca <4 x i32>, align 16
  %24 = alloca i32, align 4
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
  store <4 x i32> <i32 1072497001, i32 1072497001, i32 1072497001, i32 1072497001>, <4 x i32>* %allocaVec41
  store i32 1072497001, i32* %22, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec42
  store i32 0, i32* %24, align 4
  %25 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %26 = load double, double* %2, align 8
  %27 = load double, double* %3, align 8
  %28 = load double, double* %4, align 8
  %29 = load double, double* %5, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %26, double %27, double %28, double %29, i32* %20, double* %30)
  %31 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %32

; <label>:32:                                     ; preds = %41, %0
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %20, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %21, align 4
  %38 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %37
  %39 = load double, double* %38, align 8
  %40 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %39)
  br label %41

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %21, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %42, i32 0
  %insertElmt43 = insertelement <4 x i32> %insertElmt, i32 %42, i32 1
  %insertElmt44 = insertelement <4 x i32> %insertElmt43, i32 %42, i32 2
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %42, i32 3
  store <4 x i32> %insertElmt45, <4 x i32>* %allocaVec40, align 16
  %43 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop = add <4 x i32> %43, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec40
  %44 = add nsw i32 %42, 1
  store i32 %44, i32* %21, align 4
  br label %32

; <label>:45:                                     ; preds = %32
  %46 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %47 = load double, double* %6, align 8
  %48 = load double, double* %7, align 8
  %49 = load double, double* %8, align 8
  %50 = load double, double* %9, align 8
  %51 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %47, double %48, double %49, double %50, i32* %20, double* %51)
  %52 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %53

; <label>:53:                                     ; preds = %62, %45
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %21, align 4
  %59 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %58
  %60 = load double, double* %59, align 8
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %60)
  br label %62

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %21, align 4
  %64 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop46 = add <4 x i32> %64, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop46, <4 x i32>* %allocaVec40
  %65 = add nsw i32 %63, 1
  store i32 %65, i32* %21, align 4
  br label %53

; <label>:66:                                     ; preds = %53
  %67 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %68 = load double, double* %10, align 8
  %69 = load double, double* %11, align 8
  %70 = load double, double* %12, align 8
  %71 = load double, double* %13, align 8
  %72 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %68, double %69, double %70, double %71, i32* %20, double* %72)
  %73 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %74

; <label>:74:                                     ; preds = %83, %66
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %21, align 4
  %80 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %79
  %81 = load double, double* %80, align 8
  %82 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %81)
  br label %83

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %21, align 4
  %85 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop47 = add <4 x i32> %85, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop47, <4 x i32>* %allocaVec40
  %86 = add nsw i32 %84, 1
  store i32 %86, i32* %21, align 4
  br label %74

; <label>:87:                                     ; preds = %74
  %88 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %89 = load double, double* %14, align 8
  %90 = load double, double* %15, align 8
  %91 = load double, double* %16, align 8
  %92 = load double, double* %17, align 8
  %93 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %89, double %90, double %91, double %92, i32* %20, double* %93)
  %94 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %95

; <label>:95:                                     ; preds = %104, %87
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

; <label>:99:                                     ; preds = %95
  %100 = load i32, i32* %21, align 4
  %101 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %100
  %102 = load double, double* %101, align 8
  %103 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %102)
  br label %104

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* %21, align 4
  %106 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop48 = add <4 x i32> %106, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop48, <4 x i32>* %allocaVec40
  %107 = add nsw i32 %105, 1
  store i32 %107, i32* %21, align 4
  br label %95

; <label>:108:                                    ; preds = %95
  %109 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %allocaVec22
  store double 1.000000e+00, double* %2, align 8
  br label %110

; <label>:110:                                    ; preds = %189, %108
  %111 = load double, double* %2, align 8
  %112 = fcmp olt double %111, 1.000000e+01
  br i1 %112, label %113, label %190

; <label>:113:                                    ; preds = %110
  store <2 x double> <double 1.000000e+01, double 1.000000e+01>, <2 x double>* %allocaVec23
  store double 1.000000e+01, double* %3, align 8
  br label %114

; <label>:114:                                    ; preds = %178, %113
  %115 = load double, double* %3, align 8
  %116 = fcmp ogt double %115, 0.000000e+00
  br i1 %116, label %117, label %179

; <label>:117:                                    ; preds = %114
  store <2 x double> <double 5.000000e+00, double 5.000000e+00>, <2 x double>* %allocaVec24
  store double 5.000000e+00, double* %4, align 8
  br label %118

; <label>:118:                                    ; preds = %167, %117
  %119 = load double, double* %4, align 8
  %120 = fcmp olt double %119, 1.500000e+01
  br i1 %120, label %121, label %168

; <label>:121:                                    ; preds = %118
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double>* %allocaVec25
  store double -1.000000e+00, double* %5, align 8
  br label %122

; <label>:122:                                    ; preds = %156, %121
  %123 = load double, double* %5, align 8
  %124 = fcmp ogt double %123, -1.100000e+01
  br i1 %124, label %125, label %157

; <label>:125:                                    ; preds = %122
  %126 = load double, double* %2, align 8
  %127 = load double, double* %3, align 8
  %128 = load double, double* %4, align 8
  %129 = load double, double* %5, align 8
  %130 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %126, double %127, double %128, double %129, i32* %20, double* %130)
  %131 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %132

; <label>:132:                                    ; preds = %141, %125
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %145

; <label>:136:                                    ; preds = %132
  %137 = load i32, i32* %21, align 4
  %138 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 %137
  %139 = load double, double* %138, align 8
  %140 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %139)
  br label %141

; <label>:141:                                    ; preds = %136
  %142 = load i32, i32* %21, align 4
  %143 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop49 = add <4 x i32> %143, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop49, <4 x i32>* %allocaVec40
  %144 = add nsw i32 %142, 1
  store i32 %144, i32* %21, align 4
  br label %132

; <label>:145:                                    ; preds = %132
  %146 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %147

; <label>:147:                                    ; preds = %145
  %148 = load double, double* %5, align 8
  %insertElmt50 = insertelement <2 x double> undef, double %148, i32 0
  %insertElmt51 = insertelement <2 x double> %insertElmt50, double %148, i32 1
  store <2 x double> %insertElmt51, <2 x double>* %allocaVec25, align 16
  %149 = load <2 x double>, <2 x double>* %allocaVec25, align 16
  %Vop52 = fadd <2 x double> %149, <double -1.000000e+00, double -1.000000e+00>
  store <2 x double> %Vop52, <2 x double>* %allocaVec25
  %150 = load <2 x double>, <2 x double>* %allocaVec25, align 4
  %extractE = extractelement <2 x double> %150, i64 0
  %extractE53 = extractelement <2 x double> %150, i64 1
  %sum = fadd double %extractE, %extractE53
  %sum54 = fadd double %sum, %extractE53
  %151 = fadd double %148, -1.000000e+00
  %Fmul = fmul double %151, 3.000000e+00
  store double %151, double* %Recovery
  %Fcmp = fcmp une double %sum54, %Fmul
  br i1 %Fcmp, label %152, label %156

; <label>:152:                                    ; preds = %147
  %remThree = fdiv double %sum54, %extractE
  %FcmpThree = fcmp une double %remThree, 3.000000e+00
  br i1 %FcmpThree, label %153, label %154

; <label>:153:                                    ; preds = %152
  store double %151, double* %Recovery, align 8
  br label %155

; <label>:154:                                    ; preds = %152
  store double %extractE, double* %Recovery, align 8
  br label %155

; <label>:155:                                    ; preds = %154, %153
  br label %156

; <label>:156:                                    ; preds = %147, %155
  %ReplaceInst = load double, double* %Recovery, align 8
  store double %ReplaceInst, double* %5, align 8
  br label %122

; <label>:157:                                    ; preds = %122
  br label %158

; <label>:158:                                    ; preds = %157
  %159 = load double, double* %4, align 8
  %insertElmt55 = insertelement <2 x double> undef, double %159, i32 0
  %insertElmt56 = insertelement <2 x double> %insertElmt55, double %159, i32 1
  store <2 x double> %insertElmt56, <2 x double>* %allocaVec24, align 16
  %160 = load <2 x double>, <2 x double>* %allocaVec24, align 16
  %Vop57 = fadd <2 x double> %160, <double 5.000000e-01, double 5.000000e-01>
  store <2 x double> %Vop57, <2 x double>* %allocaVec24
  %161 = load <2 x double>, <2 x double>* %allocaVec24, align 4
  %extractE59 = extractelement <2 x double> %161, i64 0
  %extractE60 = extractelement <2 x double> %161, i64 1
  %sum61 = fadd double %extractE59, %extractE60
  %sum62 = fadd double %sum61, %extractE60
  %162 = fadd double %159, 5.000000e-01
  %Fmul58 = fmul double %162, 3.000000e+00
  store double %162, double* %Recovery1
  %Fcmp63 = fcmp une double %sum62, %Fmul58
  br i1 %Fcmp63, label %163, label %167

; <label>:163:                                    ; preds = %158
  %remThree120 = fdiv double %sum62, %extractE59
  %FcmpThree121 = fcmp une double %remThree120, 3.000000e+00
  br i1 %FcmpThree121, label %164, label %165

; <label>:164:                                    ; preds = %163
  store double %162, double* %Recovery1, align 8
  br label %166

; <label>:165:                                    ; preds = %163
  store double %extractE59, double* %Recovery1, align 8
  br label %166

; <label>:166:                                    ; preds = %165, %164
  br label %167

; <label>:167:                                    ; preds = %158, %166
  %ReplaceInst130 = load double, double* %Recovery1, align 8
  store double %ReplaceInst130, double* %4, align 8
  br label %118

; <label>:168:                                    ; preds = %118
  br label %169

; <label>:169:                                    ; preds = %168
  %170 = load double, double* %3, align 8
  %insertElmt64 = insertelement <2 x double> undef, double %170, i32 0
  %insertElmt65 = insertelement <2 x double> %insertElmt64, double %170, i32 1
  store <2 x double> %insertElmt65, <2 x double>* %allocaVec23, align 16
  %171 = load <2 x double>, <2 x double>* %allocaVec23, align 16
  %Vop66 = fadd <2 x double> %171, <double -1.000000e+00, double -1.000000e+00>
  store <2 x double> %Vop66, <2 x double>* %allocaVec23
  %172 = load <2 x double>, <2 x double>* %allocaVec23, align 4
  %extractE68 = extractelement <2 x double> %172, i64 0
  %extractE69 = extractelement <2 x double> %172, i64 1
  %sum70 = fadd double %extractE68, %extractE69
  %sum71 = fadd double %sum70, %extractE69
  %173 = fadd double %170, -1.000000e+00
  %Fmul67 = fmul double %173, 3.000000e+00
  store double %173, double* %Recovery2
  %Fcmp72 = fcmp une double %sum71, %Fmul67
  br i1 %Fcmp72, label %174, label %178

; <label>:174:                                    ; preds = %169
  %remThree122 = fdiv double %sum71, %extractE68
  %FcmpThree123 = fcmp une double %remThree122, 3.000000e+00
  br i1 %FcmpThree123, label %175, label %176

; <label>:175:                                    ; preds = %174
  store double %173, double* %Recovery2, align 8
  br label %177

; <label>:176:                                    ; preds = %174
  store double %extractE68, double* %Recovery2, align 8
  br label %177

; <label>:177:                                    ; preds = %176, %175
  br label %178

; <label>:178:                                    ; preds = %169, %177
  %ReplaceInst131 = load double, double* %Recovery2, align 8
  store double %ReplaceInst131, double* %3, align 8
  br label %114

; <label>:179:                                    ; preds = %114
  br label %180

; <label>:180:                                    ; preds = %179
  %181 = load double, double* %2, align 8
  %insertElmt73 = insertelement <2 x double> undef, double %181, i32 0
  %insertElmt74 = insertelement <2 x double> %insertElmt73, double %181, i32 1
  store <2 x double> %insertElmt74, <2 x double>* %allocaVec22, align 16
  %182 = load <2 x double>, <2 x double>* %allocaVec22, align 16
  %Vop75 = fadd <2 x double> %182, <double 1.000000e+00, double 1.000000e+00>
  store <2 x double> %Vop75, <2 x double>* %allocaVec22
  %183 = load <2 x double>, <2 x double>* %allocaVec22, align 4
  %extractE77 = extractelement <2 x double> %183, i64 0
  %extractE78 = extractelement <2 x double> %183, i64 1
  %sum79 = fadd double %extractE77, %extractE78
  %sum80 = fadd double %sum79, %extractE78
  %184 = fadd double %181, 1.000000e+00
  %Fmul76 = fmul double %184, 3.000000e+00
  store double %184, double* %Recovery3
  %Fcmp81 = fcmp une double %sum80, %Fmul76
  br i1 %Fcmp81, label %185, label %189

; <label>:185:                                    ; preds = %180
  %remThree124 = fdiv double %sum80, %extractE77
  %FcmpThree125 = fcmp une double %remThree124, 3.000000e+00
  br i1 %FcmpThree125, label %186, label %187

; <label>:186:                                    ; preds = %185
  store double %184, double* %Recovery3, align 8
  br label %188

; <label>:187:                                    ; preds = %185
  store double %extractE77, double* %Recovery3, align 8
  br label %188

; <label>:188:                                    ; preds = %187, %186
  br label %189

; <label>:189:                                    ; preds = %180, %188
  %ReplaceInst132 = load double, double* %Recovery3, align 8
  store double %ReplaceInst132, double* %2, align 8
  br label %110

; <label>:190:                                    ; preds = %110
  %191 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec40
  store i32 0, i32* %21, align 4
  br label %192

; <label>:192:                                    ; preds = %210, %190
  %193 = load i32, i32* %21, align 4
  %194 = icmp slt i32 %193, 1001
  br i1 %194, label %195, label %211

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %21, align 4
  call arm_aapcscc void @usqrt(i32 %196, %struct.int_sqrt* %23)
  %197 = load i32, i32* %21, align 4
  %198 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %197, i32 %199)
  br label %201

; <label>:201:                                    ; preds = %195
  %202 = load i32, i32* %21, align 4
  %203 = load <4 x i32>, <4 x i32>* %allocaVec40, align 16
  %Vop82 = add <4 x i32> %203, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop82, <4 x i32>* %allocaVec40
  %204 = load <4 x i32>, <4 x i32>* %allocaVec40, align 4
  %extractE84 = extractelement <4 x i32> %204, i64 0
  %extractE85 = extractelement <4 x i32> %204, i64 1
  %extractE86 = extractelement <4 x i32> %204, i64 2
  %sum87 = add i32 %extractE84, %extractE85
  %sum88 = add i32 %sum87, %extractE86
  %205 = add nsw i32 %202, 1
  %Fmul83 = mul i32 %205, 3
  store i32 %205, i32* %Recovery4
  %Fcmp89 = icmp ne i32 %sum88, %Fmul83
  br i1 %Fcmp89, label %206, label %210

; <label>:206:                                    ; preds = %201
  %remThree126 = sdiv i32 %sum88, %extractE84
  %FcmpThree127 = icmp ne i32 %remThree126, 3
  br i1 %FcmpThree127, label %207, label %208

; <label>:207:                                    ; preds = %206
  store i32 %205, i32* %Recovery4, align 4
  br label %209

; <label>:208:                                    ; preds = %206
  store i32 %extractE84, i32* %Recovery4, align 4
  br label %209

; <label>:209:                                    ; preds = %208, %207
  br label %210

; <label>:210:                                    ; preds = %201, %209
  %ReplaceInst133 = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst133, i32* %21, align 4
  br label %192

; <label>:211:                                    ; preds = %192
  %212 = load i32, i32* %22, align 4
  call arm_aapcscc void @usqrt(i32 %212, %struct.int_sqrt* %23)
  %213 = load i32, i32* %22, align 4
  %214 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %23, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %213, i32 %215)
  %217 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec38
  store double 0.000000e+00, double* %19, align 8
  br label %218

; <label>:218:                                    ; preds = %232, %211
  %219 = load double, double* %19, align 8
  %220 = fcmp ole double %219, 3.600000e+02
  br i1 %220, label %221, label %236

; <label>:221:                                    ; preds = %218
  %222 = load double, double* %19, align 8
  %223 = load double, double* %19, align 8
  %insertElmt90 = insertelement <2 x double> undef, double %223, i32 0
  %insertElmt91 = insertelement <2 x double> %insertElmt90, double %223, i32 1
  store <2 x double> %insertElmt91, <2 x double>* %allocaVec38, align 16
  %224 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %224, double* %CallInst
  %225 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %225, i32 0
  %insertCall92 = insertelement <2 x double> %insertCall, double %225, i32 1
  store <2 x double> %insertCall92, <2 x double>* %CallInstVec, align 4
  %226 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop93 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %226
  %227 = fmul double 4.000000e+00, %224
  %228 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop94 = fmul <2 x double> %228, %Vop93
  %229 = fmul double %223, %227
  %Vop95 = fdiv <2 x double> %Vop94, <double 1.800000e+02, double 1.800000e+02>
  %230 = fdiv double %229, 1.800000e+02
  %231 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %222, double %230)
  br label %232

; <label>:232:                                    ; preds = %221
  %233 = load double, double* %19, align 8
  %insertElmt96 = insertelement <2 x double> undef, double %233, i32 0
  %insertElmt97 = insertelement <2 x double> %insertElmt96, double %233, i32 1
  store <2 x double> %insertElmt97, <2 x double>* %allocaVec38, align 16
  %234 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop98 = fadd <2 x double> %234, <double 1.000000e+00, double 1.000000e+00>
  store <2 x double> %Vop98, <2 x double>* %allocaVec38
  %235 = fadd double %233, 1.000000e+00
  store double %235, double* %19, align 8
  br label %218

; <label>:236:                                    ; preds = %218
  %237 = call arm_aapcscc i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec38
  store double 0.000000e+00, double* %19, align 8
  br label %238

; <label>:238:                                    ; preds = %272, %236
  %239 = load double, double* %19, align 8
  %240 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %240, double* %CallInst6
  %241 = load double, double* %CallInst6, align 4
  %insertCall99 = insertelement <2 x double> undef, double %241, i32 0
  %insertCall100 = insertelement <2 x double> %insertCall99, double %241, i32 1
  store <2 x double> %insertCall100, <2 x double>* %CallInstVec7, align 4
  %242 = load <2 x double>, <2 x double>* %CallInstVec7, align 4
  %Vop101 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %242
  %243 = fmul double 4.000000e+00, %240
  %Vop102 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %Vop101
  %244 = fmul double 2.000000e+00, %243
  %Vop103 = fadd <2 x double> %Vop102, <double 1.000000e-06, double 1.000000e-06>
  %245 = fadd double %244, 1.000000e-06
  %246 = fcmp ole double %239, %245
  br i1 %246, label %247, label %273

; <label>:247:                                    ; preds = %238
  %248 = load double, double* %19, align 8
  %249 = load double, double* %19, align 8
  %250 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop104 = fmul <2 x double> %250, <double 1.800000e+02, double 1.800000e+02>
  %251 = fmul double %249, 1.800000e+02
  %252 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %252, double* %CallInst8
  %253 = load double, double* %CallInst8, align 4
  %insertCall105 = insertelement <2 x double> undef, double %253, i32 0
  %insertCall106 = insertelement <2 x double> %insertCall105, double %253, i32 1
  store <2 x double> %insertCall106, <2 x double>* %CallInstVec9, align 4
  %254 = load <2 x double>, <2 x double>* %CallInstVec9, align 4
  %Vop107 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %254
  %255 = fmul double 4.000000e+00, %252
  %Vop108 = fdiv <2 x double> %Vop104, %Vop107
  %256 = fdiv double %251, %255
  %257 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %248, double %256)
  br label %258

; <label>:258:                                    ; preds = %247
  %259 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %259, double* %CallInst10
  %260 = load double, double* %CallInst10, align 4
  %insertCall109 = insertelement <2 x double> undef, double %260, i32 0
  %insertCall110 = insertelement <2 x double> %insertCall109, double %260, i32 1
  store <2 x double> %insertCall110, <2 x double>* %CallInstVec11, align 4
  %261 = load <2 x double>, <2 x double>* %CallInstVec11, align 4
  %Vop111 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %261
  %262 = fmul double 4.000000e+00, %259
  %Vop112 = fdiv <2 x double> %Vop111, <double 1.800000e+02, double 1.800000e+02>
  %263 = fdiv double %262, 1.800000e+02
  %264 = load double, double* %19, align 8
  %265 = load <2 x double>, <2 x double>* %allocaVec38, align 16
  %Vop113 = fadd <2 x double> %265, %Vop112
  store <2 x double> %Vop113, <2 x double>* %allocaVec38
  %266 = load <2 x double>, <2 x double>* %allocaVec38, align 4
  %extractE115 = extractelement <2 x double> %266, i64 0
  %extractE116 = extractelement <2 x double> %266, i64 1
  %sum117 = fadd double %extractE115, %extractE116
  %sum118 = fadd double %sum117, %extractE116
  %267 = fadd double %264, %263
  %Fmul114 = fmul double %267, 3.000000e+00
  store double %267, double* %Recovery5
  %Fcmp119 = fcmp une double %sum118, %Fmul114
  br i1 %Fcmp119, label %268, label %272

; <label>:268:                                    ; preds = %258
  %remThree128 = fdiv double %sum118, %extractE115
  %FcmpThree129 = fcmp une double %remThree128, 3.000000e+00
  br i1 %FcmpThree129, label %269, label %270

; <label>:269:                                    ; preds = %268
  store double %267, double* %Recovery5, align 8
  br label %271

; <label>:270:                                    ; preds = %268
  store double %extractE115, double* %Recovery5, align 8
  br label %271

; <label>:271:                                    ; preds = %270, %269
  br label %272

; <label>:272:                                    ; preds = %258, %271
  %ReplaceInst134 = load double, double* %Recovery5, align 8
  store double %ReplaceInst134, double* %19, align 8
  br label %238

; <label>:273:                                    ; preds = %238
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare arm_aapcscc double @atan(double) #2

declare arm_aapcscc i32 @puts(...) #1

; Function Attrs: nounwind
define arm_aapcscc double @rad2deg(double) #0 {
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
  %6 = call arm_aapcscc double @atan(double 1.000000e+00) #5
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
define arm_aapcscc double @deg2rad(double) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec1 = alloca <2 x double>, align 16
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = call arm_aapcscc double @atan(double 1.000000e+00) #5
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
define arm_aapcscc void @SolveCubic(double, double, double, double, i32*, double*) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 8
  %allocaVec24 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 8
  %allocaVec25 = alloca <2 x double>, align 16
  %Recovery2 = alloca double, align 8
  %allocaVec26 = alloca <2 x double>, align 16
  %Recovery3 = alloca double, align 8
  %allocaVec27 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec28 = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec29 = alloca <2 x double>, align 16
  %CallInst4 = alloca double, align 4
  %CallInstVec5 = alloca <2 x double>, align 16
  %allocaVec30 = alloca <2 x double>, align 16
  %CallInst6 = alloca double, align 4
  %CallInstVec7 = alloca <2 x double>, align 16
  %allocaVec31 = alloca <2 x double>, align 16
  %CallInst8 = alloca double, align 4
  %CallInstVec9 = alloca <2 x double>, align 16
  %allocaVec32 = alloca <2 x double>, align 16
  %CallInst10 = alloca double, align 4
  %CallInstVec11 = alloca <2 x double>, align 16
  %allocaVec33 = alloca <2 x double>, align 16
  %CallInst12 = alloca double, align 4
  %CallInstVec13 = alloca <2 x double>, align 16
  %allocaVec34 = alloca <2 x double>, align 16
  %CallInst14 = alloca double, align 4
  %CallInstVec15 = alloca <2 x double>, align 16
  %allocaVec35 = alloca <2 x double>, align 16
  %CallInst16 = alloca double, align 4
  %CallInstVec17 = alloca <2 x double>, align 16
  %allocaVec36 = alloca <2 x double>, align 16
  %CallInst18 = alloca double, align 4
  %CallInstVec19 = alloca <2 x double>, align 16
  %allocaVec37 = alloca <2 x double>, align 16
  %CallInst20 = alloca double, align 4
  %CallInstVec21 = alloca <2 x double>, align 16
  %allocaVec38 = alloca <2 x double>, align 16
  %CallInst22 = alloca double, align 4
  %CallInstVec23 = alloca <2 x double>, align 16
  %allocaVec39 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %allocaVec40 = alloca <2 x double>, align 16
  %8 = alloca double, align 8
  %allocaVec41 = alloca <2 x double>, align 16
  %9 = alloca double, align 8
  %allocaVec42 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %11 = alloca i32*, align 4
  %12 = alloca double*, align 4
  %allocaVec43 = alloca <2 x double>, align 16
  %13 = alloca double, align 8
  %allocaVec44 = alloca <2 x double>, align 16
  %14 = alloca double, align 8
  %allocaVec45 = alloca <2 x double>, align 16
  %15 = alloca double, align 8
  %allocaVec46 = alloca <2 x double>, align 16
  %16 = alloca double, align 8
  %allocaVec47 = alloca <2 x double>, align 16
  %17 = alloca double, align 8
  %allocaVec48 = alloca <2 x double>, align 16
  %18 = alloca double, align 8
  %allocaVec49 = alloca <2 x double>, align 16
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 4
  store double* %5, double** %12, align 4
  %20 = load double, double* %8, align 8
  %insertElmt = insertelement <2 x double> undef, double %20, i32 0
  %insertElmt50 = insertelement <2 x double> %insertElmt, double %20, i32 1
  store <2 x double> %insertElmt50, <2 x double>* %allocaVec40, align 16
  %21 = load double, double* %7, align 8
  %insertElmt51 = insertelement <2 x double> undef, double %21, i32 0
  %insertElmt52 = insertelement <2 x double> %insertElmt51, double %21, i32 1
  store <2 x double> %insertElmt52, <2 x double>* %allocaVec39, align 16
  %22 = load <2 x double>, <2 x double>* %allocaVec40, align 16
  %23 = load <2 x double>, <2 x double>* %allocaVec39, align 16
  %Vop = fdiv <2 x double> %22, %23
  store <2 x double> %Vop, <2 x double>* %allocaVec43
  %24 = fdiv double %20, %21
  store double %24, double* %13, align 8
  %25 = load double, double* %9, align 8
  %insertElmt53 = insertelement <2 x double> undef, double %25, i32 0
  %insertElmt54 = insertelement <2 x double> %insertElmt53, double %25, i32 1
  store <2 x double> %insertElmt54, <2 x double>* %allocaVec41, align 16
  %26 = load double, double* %7, align 8
  %insertElmt55 = insertelement <2 x double> undef, double %26, i32 0
  %insertElmt56 = insertelement <2 x double> %insertElmt55, double %26, i32 1
  store <2 x double> %insertElmt56, <2 x double>* %allocaVec39, align 16
  %27 = load <2 x double>, <2 x double>* %allocaVec41, align 16
  %28 = load <2 x double>, <2 x double>* %allocaVec39, align 16
  %Vop57 = fdiv <2 x double> %27, %28
  store <2 x double> %Vop57, <2 x double>* %allocaVec44
  %29 = fdiv double %25, %26
  store double %29, double* %14, align 8
  %30 = load double, double* %10, align 8
  %insertElmt58 = insertelement <2 x double> undef, double %30, i32 0
  %insertElmt59 = insertelement <2 x double> %insertElmt58, double %30, i32 1
  store <2 x double> %insertElmt59, <2 x double>* %allocaVec42, align 16
  %31 = load double, double* %7, align 8
  %insertElmt60 = insertelement <2 x double> undef, double %31, i32 0
  %insertElmt61 = insertelement <2 x double> %insertElmt60, double %31, i32 1
  store <2 x double> %insertElmt61, <2 x double>* %allocaVec39, align 16
  %32 = load <2 x double>, <2 x double>* %allocaVec42, align 16
  %33 = load <2 x double>, <2 x double>* %allocaVec39, align 16
  %Vop62 = fdiv <2 x double> %32, %33
  store <2 x double> %Vop62, <2 x double>* %allocaVec45
  %34 = fdiv double %30, %31
  store double %34, double* %15, align 8
  %35 = load double, double* %13, align 8
  %36 = load double, double* %13, align 8
  %37 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %38 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop63 = fmul <2 x double> %37, %38
  %39 = fmul double %35, %36
  %40 = load double, double* %14, align 8
  %41 = load <2 x double>, <2 x double>* %allocaVec44, align 16
  %Vop64 = fmul <2 x double> <double 3.000000e+00, double 3.000000e+00>, %41
  %42 = fmul double 3.000000e+00, %40
  %Vop65 = fsub <2 x double> %Vop63, %Vop64
  %43 = fsub double %39, %42
  %Vop66 = fdiv <2 x double> %Vop65, <double 9.000000e+00, double 9.000000e+00>
  store <2 x double> %Vop66, <2 x double>* %allocaVec46
  %44 = fdiv double %43, 9.000000e+00
  store double %44, double* %16, align 8
  %45 = load double, double* %13, align 8
  %46 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop67 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %46
  %47 = fmul double 2.000000e+00, %45
  %48 = load double, double* %13, align 8
  %49 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop68 = fmul <2 x double> %Vop67, %49
  %50 = fmul double %47, %48
  %51 = load double, double* %13, align 8
  %52 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop69 = fmul <2 x double> %Vop68, %52
  %53 = fmul double %50, %51
  %54 = load double, double* %13, align 8
  %55 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop70 = fmul <2 x double> <double 9.000000e+00, double 9.000000e+00>, %55
  %56 = fmul double 9.000000e+00, %54
  %57 = load double, double* %14, align 8
  %58 = load <2 x double>, <2 x double>* %allocaVec44, align 16
  %Vop71 = fmul <2 x double> %Vop70, %58
  %59 = fmul double %56, %57
  %Vop72 = fsub <2 x double> %Vop69, %Vop71
  %60 = fsub double %53, %59
  %61 = load double, double* %15, align 8
  %62 = load <2 x double>, <2 x double>* %allocaVec45, align 16
  %Vop73 = fmul <2 x double> <double 2.700000e+01, double 2.700000e+01>, %62
  %63 = fmul double 2.700000e+01, %61
  %Vop74 = fadd <2 x double> %Vop72, %Vop73
  %64 = fadd double %60, %63
  %Vop75 = fdiv <2 x double> %Vop74, <double 5.400000e+01, double 5.400000e+01>
  store <2 x double> %Vop75, <2 x double>* %allocaVec47
  %65 = fdiv double %64, 5.400000e+01
  store double %65, double* %17, align 8
  %66 = load double, double* %17, align 8
  %67 = load double, double* %17, align 8
  %68 = load <2 x double>, <2 x double>* %allocaVec47, align 16
  %69 = load <2 x double>, <2 x double>* %allocaVec47, align 16
  %Vop76 = fmul <2 x double> %68, %69
  %70 = fmul double %66, %67
  %71 = load double, double* %16, align 8
  %72 = load double, double* %16, align 8
  %73 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %74 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %Vop77 = fmul <2 x double> %73, %74
  %75 = fmul double %71, %72
  %76 = load double, double* %16, align 8
  %77 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %Vop78 = fmul <2 x double> %Vop77, %77
  %78 = fmul double %75, %76
  %Vop79 = fsub <2 x double> %Vop76, %Vop78
  store <2 x double> %Vop79, <2 x double>* %allocaVec48
  %79 = load <2 x double>, <2 x double>* %allocaVec48, align 4
  %extractE = extractelement <2 x double> %79, i64 0
  %extractE80 = extractelement <2 x double> %79, i64 1
  %sum = fadd double %extractE, %extractE80
  %sum81 = fadd double %sum, %extractE80
  %80 = fsub double %70, %78
  %Fmul = fmul double %80, 3.000000e+00
  store double %80, double* %Recovery
  %Fcmp = fcmp une double %sum81, %Fmul
  br i1 %Fcmp, label %81, label %85

; <label>:81:                                     ; preds = %6
  %remThree = fdiv double %sum81, %extractE
  %FcmpThree = fcmp une double %remThree, 3.000000e+00
  br i1 %FcmpThree, label %82, label %83

; <label>:82:                                     ; preds = %81
  store double %80, double* %Recovery, align 8
  br label %84

; <label>:83:                                     ; preds = %81
  store double %extractE, double* %Recovery, align 8
  br label %84

; <label>:84:                                     ; preds = %83, %82
  br label %85

; <label>:85:                                     ; preds = %6, %84
  %ReplaceInst = load double, double* %Recovery, align 8
  store double %ReplaceInst, double* %18, align 8
  %86 = load double, double* %18, align 8
  %87 = fcmp ole double %86, 0.000000e+00
  br i1 %87, label %88, label %171

; <label>:88:                                     ; preds = %85
  %89 = load i32*, i32** %11, align 4
  store i32 3, i32* %89, align 4
  %90 = load double, double* %17, align 8
  %91 = load double, double* %16, align 8
  %92 = load double, double* %16, align 8
  %93 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %94 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %Vop82 = fmul <2 x double> %93, %94
  %95 = fmul double %91, %92
  %96 = load double, double* %16, align 8
  %97 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %Vop83 = fmul <2 x double> %Vop82, %97
  %98 = fmul double %95, %96
  %99 = call arm_aapcscc double @sqrt(double %98) #5
  %100 = load <2 x double>, <2 x double>* %allocaVec47, align 16
  store double %99, double* %CallInst
  %101 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %101, i32 0
  %insertCall84 = insertelement <2 x double> %insertCall, double %101, i32 1
  store <2 x double> %insertCall84, <2 x double>* %CallInstVec, align 4
  %102 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop85 = fdiv <2 x double> %100, %102
  %103 = fdiv double %90, %99
  %104 = call arm_aapcscc double @acos(double %103) #5
  store double %104, double* %19, align 8
  %105 = load double, double* %16, align 8
  %106 = call arm_aapcscc double @sqrt(double %105) #5
  store double %106, double* %CallInst4
  %107 = load double, double* %CallInst4, align 4
  %insertCall86 = insertelement <2 x double> undef, double %107, i32 0
  %insertCall87 = insertelement <2 x double> %insertCall86, double %107, i32 1
  store <2 x double> %insertCall87, <2 x double>* %CallInstVec5, align 4
  %108 = load <2 x double>, <2 x double>* %CallInstVec5, align 4
  %Vop88 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %108
  %109 = fmul double -2.000000e+00, %106
  %110 = load double, double* %19, align 8
  %insertElmt89 = insertelement <2 x double> undef, double %110, i32 0
  %insertElmt90 = insertelement <2 x double> %insertElmt89, double %110, i32 1
  store <2 x double> %insertElmt90, <2 x double>* %allocaVec49, align 16
  %111 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  %Vop91 = fdiv <2 x double> %111, <double 3.000000e+00, double 3.000000e+00>
  %112 = fdiv double %110, 3.000000e+00
  %113 = call arm_aapcscc double @cos(double %112) #5
  store double %113, double* %CallInst6
  %114 = load double, double* %CallInst6, align 4
  %insertCall92 = insertelement <2 x double> undef, double %114, i32 0
  %insertCall93 = insertelement <2 x double> %insertCall92, double %114, i32 1
  store <2 x double> %insertCall93, <2 x double>* %CallInstVec7, align 4
  %115 = load <2 x double>, <2 x double>* %CallInstVec7, align 4
  %Vop94 = fmul <2 x double> %Vop88, %115
  %116 = fmul double %109, %113
  %117 = load double, double* %13, align 8
  %118 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop95 = fdiv <2 x double> %118, <double 3.000000e+00, double 3.000000e+00>
  %119 = fdiv double %117, 3.000000e+00
  %Vop96 = fsub <2 x double> %Vop94, %Vop95
  %120 = fsub double %116, %119
  %121 = load double*, double** %12, align 4
  %122 = getelementptr inbounds double, double* %121, i32 0
  store double %120, double* %122, align 8
  %123 = load double, double* %16, align 8
  %124 = call arm_aapcscc double @sqrt(double %123) #5
  store double %124, double* %CallInst8
  %125 = load double, double* %CallInst8, align 4
  %insertCall97 = insertelement <2 x double> undef, double %125, i32 0
  %insertCall98 = insertelement <2 x double> %insertCall97, double %125, i32 1
  store <2 x double> %insertCall98, <2 x double>* %CallInstVec9, align 4
  %126 = load <2 x double>, <2 x double>* %CallInstVec9, align 4
  %Vop99 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %126
  %127 = fmul double -2.000000e+00, %124
  %128 = load double, double* %19, align 8
  %insertElmt100 = insertelement <2 x double> undef, double %128, i32 0
  %insertElmt101 = insertelement <2 x double> %insertElmt100, double %128, i32 1
  store <2 x double> %insertElmt101, <2 x double>* %allocaVec49, align 16
  %129 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %129, double* %CallInst10
  %130 = load double, double* %CallInst10, align 4
  %insertCall102 = insertelement <2 x double> undef, double %130, i32 0
  %insertCall103 = insertelement <2 x double> %insertCall102, double %130, i32 1
  store <2 x double> %insertCall103, <2 x double>* %CallInstVec11, align 4
  %131 = load <2 x double>, <2 x double>* %CallInstVec11, align 4
  %Vop104 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %131
  %132 = fmul double 4.000000e+00, %129
  %Vop105 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %Vop104
  %133 = fmul double 2.000000e+00, %132
  %134 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  %Vop106 = fadd <2 x double> %134, %Vop105
  %135 = fadd double %128, %133
  %Vop107 = fdiv <2 x double> %Vop106, <double 3.000000e+00, double 3.000000e+00>
  %136 = fdiv double %135, 3.000000e+00
  %137 = call arm_aapcscc double @cos(double %136) #5
  store double %137, double* %CallInst12
  %138 = load double, double* %CallInst12, align 4
  %insertCall108 = insertelement <2 x double> undef, double %138, i32 0
  %insertCall109 = insertelement <2 x double> %insertCall108, double %138, i32 1
  store <2 x double> %insertCall109, <2 x double>* %CallInstVec13, align 4
  %139 = load <2 x double>, <2 x double>* %CallInstVec13, align 4
  %Vop110 = fmul <2 x double> %Vop99, %139
  %140 = fmul double %127, %137
  %141 = load double, double* %13, align 8
  %142 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop111 = fdiv <2 x double> %142, <double 3.000000e+00, double 3.000000e+00>
  %143 = fdiv double %141, 3.000000e+00
  %Vop112 = fsub <2 x double> %Vop110, %Vop111
  %144 = fsub double %140, %143
  %145 = load double*, double** %12, align 4
  %146 = getelementptr inbounds double, double* %145, i32 1
  store double %144, double* %146, align 8
  %147 = load double, double* %16, align 8
  %148 = call arm_aapcscc double @sqrt(double %147) #5
  store double %148, double* %CallInst14
  %149 = load double, double* %CallInst14, align 4
  %insertCall113 = insertelement <2 x double> undef, double %149, i32 0
  %insertCall114 = insertelement <2 x double> %insertCall113, double %149, i32 1
  store <2 x double> %insertCall114, <2 x double>* %CallInstVec15, align 4
  %150 = load <2 x double>, <2 x double>* %CallInstVec15, align 4
  %Vop115 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %150
  %151 = fmul double -2.000000e+00, %148
  %152 = load double, double* %19, align 8
  %insertElmt116 = insertelement <2 x double> undef, double %152, i32 0
  %insertElmt117 = insertelement <2 x double> %insertElmt116, double %152, i32 1
  store <2 x double> %insertElmt117, <2 x double>* %allocaVec49, align 16
  %153 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %153, double* %CallInst16
  %154 = load double, double* %CallInst16, align 4
  %insertCall118 = insertelement <2 x double> undef, double %154, i32 0
  %insertCall119 = insertelement <2 x double> %insertCall118, double %154, i32 1
  store <2 x double> %insertCall119, <2 x double>* %CallInstVec17, align 4
  %155 = load <2 x double>, <2 x double>* %CallInstVec17, align 4
  %Vop120 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %155
  %156 = fmul double 4.000000e+00, %153
  %Vop121 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %Vop120
  %157 = fmul double 4.000000e+00, %156
  %158 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  %Vop122 = fadd <2 x double> %158, %Vop121
  %159 = fadd double %152, %157
  %Vop123 = fdiv <2 x double> %Vop122, <double 3.000000e+00, double 3.000000e+00>
  %160 = fdiv double %159, 3.000000e+00
  %161 = call arm_aapcscc double @cos(double %160) #5
  store double %161, double* %CallInst18
  %162 = load double, double* %CallInst18, align 4
  %insertCall124 = insertelement <2 x double> undef, double %162, i32 0
  %insertCall125 = insertelement <2 x double> %insertCall124, double %162, i32 1
  store <2 x double> %insertCall125, <2 x double>* %CallInstVec19, align 4
  %163 = load <2 x double>, <2 x double>* %CallInstVec19, align 4
  %Vop126 = fmul <2 x double> %Vop115, %163
  %164 = fmul double %151, %161
  %165 = load double, double* %13, align 8
  %166 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop127 = fdiv <2 x double> %166, <double 3.000000e+00, double 3.000000e+00>
  %167 = fdiv double %165, 3.000000e+00
  %Vop128 = fsub <2 x double> %Vop126, %Vop127
  %168 = fsub double %164, %167
  %169 = load double*, double** %12, align 4
  %170 = getelementptr inbounds double, double* %169, i32 2
  store double %168, double* %170, align 8
  br label %208

; <label>:171:                                    ; preds = %85
  %172 = load i32*, i32** %11, align 4
  store i32 1, i32* %172, align 4
  %173 = load double, double* %18, align 8
  %174 = call arm_aapcscc double @sqrt(double %173) #5
  %175 = load double, double* %17, align 8
  %176 = call arm_aapcscc double @fabs(double %175) #6
  store double %174, double* %CallInst20
  %177 = load double, double* %CallInst20, align 4
  %insertCall129 = insertelement <2 x double> undef, double %177, i32 0
  %insertCall130 = insertelement <2 x double> %insertCall129, double %177, i32 1
  store <2 x double> %insertCall130, <2 x double>* %CallInstVec21, align 4
  %178 = load <2 x double>, <2 x double>* %CallInstVec21, align 4
  store double %176, double* %CallInst22
  %179 = load double, double* %CallInst22, align 4
  %insertCall131 = insertelement <2 x double> undef, double %179, i32 0
  %insertCall132 = insertelement <2 x double> %insertCall131, double %179, i32 1
  store <2 x double> %insertCall132, <2 x double>* %CallInstVec23, align 4
  %180 = load <2 x double>, <2 x double>* %CallInstVec23, align 4
  %Vop133 = fadd <2 x double> %178, %180
  %181 = fadd double %174, %176
  %182 = call arm_aapcscc double @pow(double %181, double 0x3FD5555555555555) #5
  %183 = load double*, double** %12, align 4
  %184 = getelementptr inbounds double, double* %183, i32 0
  store double %182, double* %184, align 8
  %185 = load double, double* %16, align 8
  %186 = load double*, double** %12, align 4
  %187 = getelementptr inbounds double, double* %186, i32 0
  %188 = load double, double* %187, align 8
  %189 = fdiv double %185, %188
  %190 = load double*, double** %12, align 4
  %191 = getelementptr inbounds double, double* %190, i32 0
  %192 = load double, double* %191, align 8
  %193 = fadd double %192, %189
  store double %193, double* %191, align 8
  %194 = load double, double* %17, align 8
  %195 = fcmp olt double %194, 0.000000e+00
  %196 = select i1 %195, i32 1, i32 -1
  %197 = sitofp i32 %196 to double
  %198 = load double*, double** %12, align 4
  %199 = getelementptr inbounds double, double* %198, i32 0
  %200 = load double, double* %199, align 8
  %201 = fmul double %200, %197
  store double %201, double* %199, align 8
  %202 = load double, double* %13, align 8
  %203 = fdiv double %202, 3.000000e+00
  %204 = load double*, double** %12, align 4
  %205 = getelementptr inbounds double, double* %204, i32 0
  %206 = load double, double* %205, align 8
  %207 = fsub double %206, %203
  store double %207, double* %205, align 8
  br label %208

; <label>:208:                                    ; preds = %171, %88
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #2

; Function Attrs: nounwind
declare arm_aapcscc double @acos(double) #2

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #2

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #3

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #2

; Function Attrs: nounwind
define arm_aapcscc void @usqrt(i32, %struct.int_sqrt*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.int_sqrt*, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %allocaVec9 = alloca <4 x i32>, align 16
  %6 = alloca i32, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %7 = alloca i32, align 4
  %allocaVec11 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %5, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec9
  store i32 0, i32* %6, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec10
  store i32 0, i32* %7, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec11
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %71, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %72

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %6, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %13, i32 0
  %insertElmt12 = insertelement <4 x i32> %insertElmt, i32 %13, i32 1
  %insertElmt13 = insertelement <4 x i32> %insertElmt12, i32 %13, i32 2
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %13, i32 3
  store <4 x i32> %insertElmt14, <4 x i32>* %allocaVec9, align 16
  %14 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop = shl <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %15 = shl i32 %13, 2
  %16 = load i32, i32* %3, align 4
  %insertElmt15 = insertelement <4 x i32> undef, i32 %16, i32 0
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %16, i32 1
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %16, i32 2
  %insertElmt18 = insertelement <4 x i32> %insertElmt17, i32 %16, i32 3
  store <4 x i32> %insertElmt18, <4 x i32>* %allocaVec7, align 16
  %17 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop19 = and <4 x i32> %17, <i32 -1073741824, i32 -1073741824, i32 -1073741824, i32 -1073741824>
  %18 = and i32 %16, -1073741824
  %Vop20 = lshr <4 x i32> %Vop19, <i32 30, i32 30, i32 30, i32 30>
  %19 = lshr i32 %18, 30
  %Vop21 = add <4 x i32> %Vop, %Vop20
  store <4 x i32> %Vop21, <4 x i32>* %allocaVec9
  %20 = add i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %insertElmt22 = insertelement <4 x i32> undef, i32 %21, i32 0
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %21, i32 1
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %21, i32 2
  %insertElmt25 = insertelement <4 x i32> %insertElmt24, i32 %21, i32 3
  store <4 x i32> %insertElmt25, <4 x i32>* %allocaVec7, align 16
  %22 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop26 = shl <4 x i32> %22, <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %Vop26, <4 x i32>* %allocaVec7
  %23 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE = extractelement <4 x i32> %23, i64 0
  %extractE27 = extractelement <4 x i32> %23, i64 1
  %extractE28 = extractelement <4 x i32> %23, i64 2
  %sum = add i32 %extractE, %extractE27
  %sum29 = add i32 %sum, %extractE28
  %24 = shl i32 %21, 2
  %Fmul = mul i32 %24, 3
  store i32 %24, i32* %Recovery
  %Fcmp = icmp ne i32 %sum29, %Fmul
  br i1 %Fcmp, label %25, label %29

; <label>:25:                                     ; preds = %12
  %remThree = sdiv i32 %sum29, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %26, label %27

; <label>:26:                                     ; preds = %25
  store i32 %24, i32* %Recovery, align 4
  br label %28

; <label>:27:                                     ; preds = %25
  store i32 %extractE, i32* %Recovery, align 4
  br label %28

; <label>:28:                                     ; preds = %27, %26
  br label %29

; <label>:29:                                     ; preds = %12, %28
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %insertElmt30 = insertelement <4 x i32> undef, i32 %30, i32 0
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %30, i32 1
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %30, i32 2
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %30, i32 3
  store <4 x i32> %insertElmt33, <4 x i32>* %allocaVec8, align 16
  %31 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop34 = shl <4 x i32> %31, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop34, <4 x i32>* %allocaVec8
  %32 = shl i32 %30, 1
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop35 = shl <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>
  %35 = shl i32 %33, 1
  %Vop36 = add <4 x i32> %Vop35, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop36, <4 x i32>* %allocaVec10
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %61

; <label>:40:                                     ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %44 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop37 = sub <4 x i32> %43, %44
  store <4 x i32> %Vop37, <4 x i32>* %allocaVec9
  %45 = load <4 x i32>, <4 x i32>* %allocaVec9, align 4
  %extractE39 = extractelement <4 x i32> %45, i64 0
  %extractE40 = extractelement <4 x i32> %45, i64 1
  %extractE41 = extractelement <4 x i32> %45, i64 2
  %sum42 = add i32 %extractE39, %extractE40
  %sum43 = add i32 %sum42, %extractE41
  %46 = sub i32 %42, %41
  %Fmul38 = mul i32 %46, 3
  store i32 %46, i32* %Recovery1
  %Fcmp44 = icmp ne i32 %sum43, %Fmul38
  br i1 %Fcmp44, label %47, label %51

; <label>:47:                                     ; preds = %40
  %remThree65 = sdiv i32 %sum43, %extractE39
  %FcmpThree66 = icmp ne i32 %remThree65, 3
  br i1 %FcmpThree66, label %48, label %49

; <label>:48:                                     ; preds = %47
  store i32 %46, i32* %Recovery1, align 4
  br label %50

; <label>:49:                                     ; preds = %47
  store i32 %extractE39, i32* %Recovery1, align 4
  br label %50

; <label>:50:                                     ; preds = %49, %48
  br label %51

; <label>:51:                                     ; preds = %40, %50
  %ReplaceInst71 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst71, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop45 = add <4 x i32> %53, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop45, <4 x i32>* %allocaVec8
  %54 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE47 = extractelement <4 x i32> %54, i64 0
  %extractE48 = extractelement <4 x i32> %54, i64 1
  %extractE49 = extractelement <4 x i32> %54, i64 2
  %sum50 = add i32 %extractE47, %extractE48
  %sum51 = add i32 %sum50, %extractE49
  %55 = add i32 %52, 1
  %Fmul46 = mul i32 %55, 3
  store i32 %55, i32* %Recovery2
  %Fcmp52 = icmp ne i32 %sum51, %Fmul46
  br i1 %Fcmp52, label %56, label %60

; <label>:56:                                     ; preds = %51
  %remThree67 = sdiv i32 %sum51, %extractE47
  %FcmpThree68 = icmp ne i32 %remThree67, 3
  br i1 %FcmpThree68, label %57, label %58

; <label>:57:                                     ; preds = %56
  store i32 %55, i32* %Recovery2, align 4
  br label %59

; <label>:58:                                     ; preds = %56
  store i32 %extractE47, i32* %Recovery2, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %51, %59
  %ReplaceInst72 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst72, i32* %5, align 4
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
  %73 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 4
  %74 = bitcast %struct.int_sqrt* %73 to i8*
  %75 = bitcast i32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %74, i8* %75, i32 4, i32 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
