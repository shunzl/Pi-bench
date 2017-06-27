; ModuleID = 'all_large_t.bc'
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
@.str.6 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 4
  %allocaVec13 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 4
  %allocaVec14 = alloca <2 x double>, align 16
  %Recovery2 = alloca double, align 4
  %allocaVec15 = alloca <2 x double>, align 16
  %Recovery3 = alloca double, align 4
  %allocaVec16 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec17 = alloca <4 x i32>, align 16
  %Recovery5 = alloca i32, align 4
  %allocaVec18 = alloca <2 x double>, align 16
  %Recovery6 = alloca double, align 4
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
  %6 = alloca [3 x double], align 8
  %allocaVec28 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %allocaVec29 = alloca <4 x i32>, align 16
  %8 = alloca i32, align 4
  %allocaVec30 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec31 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.int_sqrt, align 4
  %allocaVec32 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.050000e+01, double* %3, align 8
  store double 3.200000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  store i32 1072497001, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %14 = load double, double* %2, align 8
  %15 = load double, double* %3, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %14, double %15, double %16, double %17, i32* %8, double* %18)
  %19 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %20

; <label>:20:                                     ; preds = %29, %0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %25
  %27 = load double, double* %26, align 8
  %28 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %27)
  br label %29

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %30, i32 0
  %insertElmt33 = insertelement <4 x i32> %insertElmt, i32 %30, i32 1
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %30, i32 2
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %30, i32 3
  store <4 x i32> %insertElmt35, <4 x i32>* %allocaVec30, align 16
  %31 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop = add <4 x i32> %31, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec30
  %32 = add nsw i32 %30, 1
  store i32 %32, i32* %9, align 4
  br label %20

; <label>:33:                                     ; preds = %20
  %34 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -4.500000e+00, double* %3, align 8
  store double 1.700000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  %35 = load double, double* %2, align 8
  %36 = load double, double* %3, align 8
  %37 = load double, double* %4, align 8
  %38 = load double, double* %5, align 8
  %39 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %35, double %36, double %37, double %38, i32* %8, double* %39)
  %40 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %41

; <label>:41:                                     ; preds = %50, %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %46
  %48 = load double, double* %47, align 8
  %49 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %48)
  br label %50

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop36 = add <4 x i32> %52, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop36, <4 x i32>* %allocaVec30
  %53 = add nsw i32 %51, 1
  store i32 %53, i32* %9, align 4
  br label %41

; <label>:54:                                     ; preds = %41
  %55 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -3.500000e+00, double* %3, align 8
  store double 2.200000e+01, double* %4, align 8
  store double -3.100000e+01, double* %5, align 8
  %56 = load double, double* %2, align 8
  %57 = load double, double* %3, align 8
  %58 = load double, double* %4, align 8
  %59 = load double, double* %5, align 8
  %60 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %56, double %57, double %58, double %59, i32* %8, double* %60)
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %62

; <label>:62:                                     ; preds = %71, %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %67
  %69 = load double, double* %68, align 8
  %70 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %69)
  br label %71

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop37 = add <4 x i32> %73, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop37, <4 x i32>* %allocaVec30
  %74 = add nsw i32 %72, 1
  store i32 %74, i32* %9, align 4
  br label %62

; <label>:75:                                     ; preds = %62
  %76 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  store double -1.370000e+01, double* %3, align 8
  store double 1.000000e+00, double* %4, align 8
  store double -3.500000e+01, double* %5, align 8
  %77 = load double, double* %2, align 8
  %78 = load double, double* %3, align 8
  %79 = load double, double* %4, align 8
  %80 = load double, double* %5, align 8
  %81 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %77, double %78, double %79, double %80, i32* %8, double* %81)
  %82 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %83

; <label>:83:                                     ; preds = %92, %75
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %88
  %90 = load double, double* %89, align 8
  %91 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %90)
  br label %92

; <label>:92:                                     ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop38 = add <4 x i32> %94, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec30
  %95 = add nsw i32 %93, 1
  store i32 %95, i32* %9, align 4
  br label %83

; <label>:96:                                     ; preds = %83
  %97 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 3.000000e+00, double* %2, align 8
  store double 1.234000e+01, double* %3, align 8
  store double 5.000000e+00, double* %4, align 8
  store double 1.200000e+01, double* %5, align 8
  %98 = load double, double* %2, align 8
  %99 = load double, double* %3, align 8
  %100 = load double, double* %4, align 8
  %101 = load double, double* %5, align 8
  %102 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %98, double %99, double %100, double %101, i32* %8, double* %102)
  %103 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %104

; <label>:104:                                    ; preds = %113, %96
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %117

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %109
  %111 = load double, double* %110, align 8
  %112 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %111)
  br label %113

; <label>:113:                                    ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop39 = add <4 x i32> %115, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop39, <4 x i32>* %allocaVec30
  %116 = add nsw i32 %114, 1
  store i32 %116, i32* %9, align 4
  br label %104

; <label>:117:                                    ; preds = %104
  %118 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -8.000000e+00, double* %2, align 8
  store double -6.789000e+01, double* %3, align 8
  store double 6.000000e+00, double* %4, align 8
  store double -2.360000e+01, double* %5, align 8
  %119 = load double, double* %2, align 8
  %120 = load double, double* %3, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* %5, align 8
  %123 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %119, double %120, double %121, double %122, i32* %8, double* %123)
  %124 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %125

; <label>:125:                                    ; preds = %134, %117
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

; <label>:129:                                    ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %130
  %132 = load double, double* %131, align 8
  %133 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %132)
  br label %134

; <label>:134:                                    ; preds = %129
  %135 = load i32, i32* %9, align 4
  %136 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop40 = add <4 x i32> %136, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop40, <4 x i32>* %allocaVec30
  %137 = add nsw i32 %135, 1
  store i32 %137, i32* %9, align 4
  br label %125

; <label>:138:                                    ; preds = %125
  %139 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 4.500000e+01, double* %2, align 8
  store double 8.670000e+00, double* %3, align 8
  store double 7.500000e+00, double* %4, align 8
  store double 3.400000e+01, double* %5, align 8
  %140 = load double, double* %2, align 8
  %141 = load double, double* %3, align 8
  %142 = load double, double* %4, align 8
  %143 = load double, double* %5, align 8
  %144 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %140, double %141, double %142, double %143, i32* %8, double* %144)
  %145 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %146

; <label>:146:                                    ; preds = %155, %138
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %159

; <label>:150:                                    ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %151
  %153 = load double, double* %152, align 8
  %154 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %153)
  br label %155

; <label>:155:                                    ; preds = %150
  %156 = load i32, i32* %9, align 4
  %157 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop41 = add <4 x i32> %157, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop41, <4 x i32>* %allocaVec30
  %158 = add nsw i32 %156, 1
  store i32 %158, i32* %9, align 4
  br label %146

; <label>:159:                                    ; preds = %146
  %160 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double -1.200000e+01, double* %2, align 8
  store double -1.700000e+00, double* %3, align 8
  store double 5.300000e+00, double* %4, align 8
  store double 1.600000e+01, double* %5, align 8
  %161 = load double, double* %2, align 8
  %162 = load double, double* %3, align 8
  %163 = load double, double* %4, align 8
  %164 = load double, double* %5, align 8
  %165 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %161, double %162, double %163, double %164, i32* %8, double* %165)
  %166 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %167

; <label>:167:                                    ; preds = %176, %159
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %180

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %172
  %174 = load double, double* %173, align 8
  %175 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %174)
  br label %176

; <label>:176:                                    ; preds = %171
  %177 = load i32, i32* %9, align 4
  %178 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop42 = add <4 x i32> %178, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop42, <4 x i32>* %allocaVec30
  %179 = add nsw i32 %177, 1
  store i32 %179, i32* %9, align 4
  br label %167

; <label>:180:                                    ; preds = %167
  %181 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store double 1.000000e+00, double* %2, align 8
  br label %182

; <label>:182:                                    ; preds = %264, %180
  %183 = load double, double* %2, align 8
  %184 = fcmp olt double %183, 1.000000e+01
  br i1 %184, label %185, label %266

; <label>:185:                                    ; preds = %182
  store double 1.000000e+01, double* %3, align 8
  br label %186

; <label>:186:                                    ; preds = %252, %185
  %187 = load double, double* %3, align 8
  %188 = fcmp ogt double %187, 0.000000e+00
  br i1 %188, label %189, label %254

; <label>:189:                                    ; preds = %186
  store double 5.000000e+00, double* %4, align 8
  br label %190

; <label>:190:                                    ; preds = %240, %189
  %191 = load double, double* %4, align 8
  %192 = fcmp olt double %191, 1.500000e+01
  br i1 %192, label %193, label %242

; <label>:193:                                    ; preds = %190
  store double -1.000000e+00, double* %5, align 8
  br label %194

; <label>:194:                                    ; preds = %228, %193
  %195 = load double, double* %5, align 8
  %196 = fcmp ogt double %195, -5.000000e+00
  br i1 %196, label %197, label %230

; <label>:197:                                    ; preds = %194
  %198 = load double, double* %2, align 8
  %199 = load double, double* %3, align 8
  %200 = load double, double* %4, align 8
  %201 = load double, double* %5, align 8
  %202 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call arm_aapcscc void @SolveCubic(double %198, double %199, double %200, double %201, i32* %8, double* %202)
  %203 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %204

; <label>:204:                                    ; preds = %213, %197
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %217

; <label>:208:                                    ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 %209
  %211 = load double, double* %210, align 8
  %212 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %211)
  br label %213

; <label>:213:                                    ; preds = %208
  %214 = load i32, i32* %9, align 4
  %215 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop43 = add <4 x i32> %215, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop43, <4 x i32>* %allocaVec30
  %216 = add nsw i32 %214, 1
  store i32 %216, i32* %9, align 4
  br label %204

; <label>:217:                                    ; preds = %204
  %218 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %219

; <label>:219:                                    ; preds = %217
  %220 = load double, double* %5, align 8
  %insertElmt44 = insertelement <2 x double> undef, double %220, i32 0
  %insertElmt45 = insertelement <2 x double> %insertElmt44, double %220, i32 1
  store <2 x double> %insertElmt45, <2 x double>* %allocaVec27, align 16
  %221 = load <2 x double>, <2 x double>* %allocaVec27, align 16
  %Vop46 = fsub <2 x double> %221, <double 4.510000e-01, double 4.510000e-01>
  store <2 x double> %Vop46, <2 x double>* %allocaVec27
  %222 = load <2 x double>, <2 x double>* %allocaVec27, align 4
  %extractE = extractelement <2 x double> %222, i64 0
  %extractE47 = extractelement <2 x double> %222, i64 1
  %sum = fadd double %extractE, %extractE47
  %sum48 = fadd double %sum, %extractE47
  %223 = fsub double %220, 4.510000e-01
  %Fmul = fmul double %223, 3.000000e+00
  store double %223, double* %Recovery
  %Fcmp = fcmp une double %sum48, %Fmul
  br i1 %Fcmp, label %224, label %228

; <label>:224:                                    ; preds = %219
  %remThree = fdiv double %sum48, %extractE
  %FcmpThree = fcmp une double %remThree, 3.000000e+00
  br i1 %FcmpThree, label %225, label %226

; <label>:225:                                    ; preds = %224
  store double %223, double* %Recovery, align 4
  br label %227

; <label>:226:                                    ; preds = %224
  store double %extractE, double* %Recovery, align 4
  br label %227

; <label>:227:                                    ; preds = %226, %225
  br label %228

; <label>:228:                                    ; preds = %219, %227
  %229 = load double, double* %Recovery, align 4
  store double %229, double* %5, align 8
  br label %194

; <label>:230:                                    ; preds = %194
  br label %231

; <label>:231:                                    ; preds = %230
  %232 = load double, double* %4, align 8
  %insertElmt49 = insertelement <2 x double> undef, double %232, i32 0
  %insertElmt50 = insertelement <2 x double> %insertElmt49, double %232, i32 1
  store <2 x double> %insertElmt50, <2 x double>* %allocaVec26, align 16
  %233 = load <2 x double>, <2 x double>* %allocaVec26, align 16
  %Vop51 = fadd <2 x double> %233, <double 6.100000e-01, double 6.100000e-01>
  store <2 x double> %Vop51, <2 x double>* %allocaVec26
  %234 = load <2 x double>, <2 x double>* %allocaVec26, align 4
  %extractE53 = extractelement <2 x double> %234, i64 0
  %extractE54 = extractelement <2 x double> %234, i64 1
  %sum55 = fadd double %extractE53, %extractE54
  %sum56 = fadd double %sum55, %extractE54
  %235 = fadd double %232, 6.100000e-01
  %Fmul52 = fmul double %235, 3.000000e+00
  store double %235, double* %Recovery1
  %Fcmp57 = fcmp une double %sum56, %Fmul52
  br i1 %Fcmp57, label %236, label %240

; <label>:236:                                    ; preds = %231
  %remThree126 = fdiv double %sum56, %extractE53
  %FcmpThree127 = fcmp une double %remThree126, 3.000000e+00
  br i1 %FcmpThree127, label %237, label %238

; <label>:237:                                    ; preds = %236
  store double %235, double* %Recovery1, align 4
  br label %239

; <label>:238:                                    ; preds = %236
  store double %extractE53, double* %Recovery1, align 4
  br label %239

; <label>:239:                                    ; preds = %238, %237
  br label %240

; <label>:240:                                    ; preds = %231, %239
  %241 = load double, double* %Recovery1, align 4
  store double %241, double* %4, align 8
  br label %190

; <label>:242:                                    ; preds = %190
  br label %243

; <label>:243:                                    ; preds = %242
  %244 = load double, double* %3, align 8
  %insertElmt58 = insertelement <2 x double> undef, double %244, i32 0
  %insertElmt59 = insertelement <2 x double> %insertElmt58, double %244, i32 1
  store <2 x double> %insertElmt59, <2 x double>* %allocaVec25, align 16
  %245 = load <2 x double>, <2 x double>* %allocaVec25, align 16
  %Vop60 = fsub <2 x double> %245, <double 2.500000e-01, double 2.500000e-01>
  store <2 x double> %Vop60, <2 x double>* %allocaVec25
  %246 = load <2 x double>, <2 x double>* %allocaVec25, align 4
  %extractE62 = extractelement <2 x double> %246, i64 0
  %extractE63 = extractelement <2 x double> %246, i64 1
  %sum64 = fadd double %extractE62, %extractE63
  %sum65 = fadd double %sum64, %extractE63
  %247 = fsub double %244, 2.500000e-01
  %Fmul61 = fmul double %247, 3.000000e+00
  store double %247, double* %Recovery2
  %Fcmp66 = fcmp une double %sum65, %Fmul61
  br i1 %Fcmp66, label %248, label %252

; <label>:248:                                    ; preds = %243
  %remThree128 = fdiv double %sum65, %extractE62
  %FcmpThree129 = fcmp une double %remThree128, 3.000000e+00
  br i1 %FcmpThree129, label %249, label %250

; <label>:249:                                    ; preds = %248
  store double %247, double* %Recovery2, align 4
  br label %251

; <label>:250:                                    ; preds = %248
  store double %extractE62, double* %Recovery2, align 4
  br label %251

; <label>:251:                                    ; preds = %250, %249
  br label %252

; <label>:252:                                    ; preds = %243, %251
  %253 = load double, double* %Recovery2, align 4
  store double %253, double* %3, align 8
  br label %186

; <label>:254:                                    ; preds = %186
  br label %255

; <label>:255:                                    ; preds = %254
  %256 = load double, double* %2, align 8
  %insertElmt67 = insertelement <2 x double> undef, double %256, i32 0
  %insertElmt68 = insertelement <2 x double> %insertElmt67, double %256, i32 1
  store <2 x double> %insertElmt68, <2 x double>* %allocaVec24, align 16
  %257 = load <2 x double>, <2 x double>* %allocaVec24, align 16
  %Vop69 = fadd <2 x double> %257, <double 1.000000e+00, double 1.000000e+00>
  store <2 x double> %Vop69, <2 x double>* %allocaVec24
  %258 = load <2 x double>, <2 x double>* %allocaVec24, align 4
  %extractE71 = extractelement <2 x double> %258, i64 0
  %extractE72 = extractelement <2 x double> %258, i64 1
  %sum73 = fadd double %extractE71, %extractE72
  %sum74 = fadd double %sum73, %extractE72
  %259 = fadd double %256, 1.000000e+00
  %Fmul70 = fmul double %259, 3.000000e+00
  store double %259, double* %Recovery3
  %Fcmp75 = fcmp une double %sum74, %Fmul70
  br i1 %Fcmp75, label %260, label %264

; <label>:260:                                    ; preds = %255
  %remThree130 = fdiv double %sum74, %extractE71
  %FcmpThree131 = fcmp une double %remThree130, 3.000000e+00
  br i1 %FcmpThree131, label %261, label %262

; <label>:261:                                    ; preds = %260
  store double %259, double* %Recovery3, align 4
  br label %263

; <label>:262:                                    ; preds = %260
  store double %extractE71, double* %Recovery3, align 4
  br label %263

; <label>:263:                                    ; preds = %262, %261
  br label %264

; <label>:264:                                    ; preds = %255, %263
  %265 = load double, double* %Recovery3, align 4
  store double %265, double* %2, align 8
  br label %182

; <label>:266:                                    ; preds = %182
  %267 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %268

; <label>:268:                                    ; preds = %286, %266
  %269 = load i32, i32* %9, align 4
  %270 = icmp slt i32 %269, 100000
  br i1 %270, label %271, label %288

; <label>:271:                                    ; preds = %268
  %272 = load i32, i32* %9, align 4
  call arm_aapcscc void @usqrt(i32 %272, %struct.int_sqrt* %11)
  %273 = load i32, i32* %9, align 4
  %274 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %273, i32 %275)
  br label %277

; <label>:277:                                    ; preds = %271
  %278 = load i32, i32* %9, align 4
  %279 = load <4 x i32>, <4 x i32>* %allocaVec30, align 16
  %Vop76 = add <4 x i32> %279, <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %Vop76, <4 x i32>* %allocaVec30
  %280 = load <4 x i32>, <4 x i32>* %allocaVec30, align 4
  %extractE78 = extractelement <4 x i32> %280, i64 0
  %extractE79 = extractelement <4 x i32> %280, i64 1
  %extractE80 = extractelement <4 x i32> %280, i64 2
  %sum81 = add i32 %extractE78, %extractE79
  %sum82 = add i32 %sum81, %extractE80
  %281 = add nsw i32 %278, 2
  %Fmul77 = mul i32 %281, 3
  store i32 %281, i32* %Recovery4
  %Fcmp83 = icmp ne i32 %sum82, %Fmul77
  br i1 %Fcmp83, label %282, label %286

; <label>:282:                                    ; preds = %277
  %remThree132 = sdiv i32 %sum82, %extractE78
  %FcmpThree133 = icmp ne i32 %remThree132, 3
  br i1 %FcmpThree133, label %283, label %284

; <label>:283:                                    ; preds = %282
  store i32 %281, i32* %Recovery4, align 4
  br label %285

; <label>:284:                                    ; preds = %282
  store i32 %extractE78, i32* %Recovery4, align 4
  br label %285

; <label>:285:                                    ; preds = %284, %283
  br label %286

; <label>:286:                                    ; preds = %277, %285
  %287 = load i32, i32* %Recovery4, align 4
  store i32 %287, i32* %9, align 4
  br label %268

; <label>:288:                                    ; preds = %268
  %289 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 1072497001, i32* %10, align 4
  br label %290

; <label>:290:                                    ; preds = %308, %288
  %291 = load i32, i32* %10, align 4
  %292 = icmp ult i32 %291, 1072513385
  br i1 %292, label %293, label %310

; <label>:293:                                    ; preds = %290
  %294 = load i32, i32* %10, align 4
  call arm_aapcscc void @usqrt(i32 %294, %struct.int_sqrt* %11)
  %295 = load i32, i32* %10, align 4
  %296 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 %295, i32 %297)
  br label %299

; <label>:299:                                    ; preds = %293
  %300 = load i32, i32* %10, align 4
  %insertElmt84 = insertelement <4 x i32> undef, i32 %300, i32 0
  %insertElmt85 = insertelement <4 x i32> %insertElmt84, i32 %300, i32 1
  %insertElmt86 = insertelement <4 x i32> %insertElmt85, i32 %300, i32 2
  %insertElmt87 = insertelement <4 x i32> %insertElmt86, i32 %300, i32 3
  store <4 x i32> %insertElmt87, <4 x i32>* %allocaVec31, align 16
  %301 = load <4 x i32>, <4 x i32>* %allocaVec31, align 16
  %Vop88 = add <4 x i32> %301, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop88, <4 x i32>* %allocaVec31
  %302 = load <4 x i32>, <4 x i32>* %allocaVec31, align 4
  %extractE90 = extractelement <4 x i32> %302, i64 0
  %extractE91 = extractelement <4 x i32> %302, i64 1
  %extractE92 = extractelement <4 x i32> %302, i64 2
  %sum93 = add i32 %extractE90, %extractE91
  %sum94 = add i32 %sum93, %extractE92
  %303 = add i32 %300, 1
  %Fmul89 = mul i32 %303, 3
  store i32 %303, i32* %Recovery5
  %Fcmp95 = icmp ne i32 %sum94, %Fmul89
  br i1 %Fcmp95, label %304, label %308

; <label>:304:                                    ; preds = %299
  %remThree134 = sdiv i32 %sum94, %extractE90
  %FcmpThree135 = icmp ne i32 %remThree134, 3
  br i1 %FcmpThree135, label %305, label %306

; <label>:305:                                    ; preds = %304
  store i32 %303, i32* %Recovery5, align 4
  br label %307

; <label>:306:                                    ; preds = %304
  store i32 %extractE90, i32* %Recovery5, align 4
  br label %307

; <label>:307:                                    ; preds = %306, %305
  br label %308

; <label>:308:                                    ; preds = %299, %307
  %309 = load i32, i32* %Recovery5, align 4
  store i32 %309, i32* %10, align 4
  br label %290

; <label>:310:                                    ; preds = %290
  %311 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %7, align 8
  br label %312

; <label>:312:                                    ; preds = %326, %310
  %313 = load double, double* %7, align 8
  %314 = fcmp ole double %313, 3.600000e+02
  br i1 %314, label %315, label %330

; <label>:315:                                    ; preds = %312
  %316 = load double, double* %7, align 8
  %317 = load double, double* %7, align 8
  %insertElmt96 = insertelement <2 x double> undef, double %317, i32 0
  %insertElmt97 = insertelement <2 x double> %insertElmt96, double %317, i32 1
  store <2 x double> %insertElmt97, <2 x double>* %allocaVec28, align 16
  %318 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %318, double* %CallInst
  %319 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %319, i32 0
  %insertCall98 = insertelement <2 x double> %insertCall, double %319, i32 1
  store <2 x double> %insertCall98, <2 x double>* %CallInstVec, align 4
  %320 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop99 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %320
  %321 = fmul double 4.000000e+00, %318
  %322 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop100 = fmul <2 x double> %322, %Vop99
  %323 = fmul double %317, %321
  %Vop101 = fdiv <2 x double> %Vop100, <double 1.800000e+02, double 1.800000e+02>
  %324 = fdiv double %323, 1.800000e+02
  %325 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), double %316, double %324)
  br label %326

; <label>:326:                                    ; preds = %315
  %327 = load double, double* %7, align 8
  %insertElmt102 = insertelement <2 x double> undef, double %327, i32 0
  %insertElmt103 = insertelement <2 x double> %insertElmt102, double %327, i32 1
  store <2 x double> %insertElmt103, <2 x double>* %allocaVec28, align 16
  %328 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop104 = fadd <2 x double> %328, <double 1.000000e-03, double 1.000000e-03>
  store <2 x double> %Vop104, <2 x double>* %allocaVec28
  %329 = fadd double %327, 1.000000e-03
  store double %329, double* %7, align 8
  br label %312

; <label>:330:                                    ; preds = %312
  %331 = call arm_aapcscc i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store double 0.000000e+00, double* %7, align 8
  br label %332

; <label>:332:                                    ; preds = %366, %330
  %333 = load double, double* %7, align 8
  %334 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %334, double* %CallInst7
  %335 = load double, double* %CallInst7, align 4
  %insertCall105 = insertelement <2 x double> undef, double %335, i32 0
  %insertCall106 = insertelement <2 x double> %insertCall105, double %335, i32 1
  store <2 x double> %insertCall106, <2 x double>* %CallInstVec8, align 4
  %336 = load <2 x double>, <2 x double>* %CallInstVec8, align 4
  %Vop107 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %336
  %337 = fmul double 4.000000e+00, %334
  %Vop108 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %Vop107
  %338 = fmul double 2.000000e+00, %337
  %Vop109 = fadd <2 x double> %Vop108, <double 1.000000e-06, double 1.000000e-06>
  %339 = fadd double %338, 1.000000e-06
  %340 = fcmp ole double %333, %339
  br i1 %340, label %341, label %368

; <label>:341:                                    ; preds = %332
  %342 = load double, double* %7, align 8
  %343 = load double, double* %7, align 8
  %344 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop110 = fmul <2 x double> %344, <double 1.800000e+02, double 1.800000e+02>
  %345 = fmul double %343, 1.800000e+02
  %346 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %346, double* %CallInst9
  %347 = load double, double* %CallInst9, align 4
  %insertCall111 = insertelement <2 x double> undef, double %347, i32 0
  %insertCall112 = insertelement <2 x double> %insertCall111, double %347, i32 1
  store <2 x double> %insertCall112, <2 x double>* %CallInstVec10, align 4
  %348 = load <2 x double>, <2 x double>* %CallInstVec10, align 4
  %Vop113 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %348
  %349 = fmul double 4.000000e+00, %346
  %Vop114 = fdiv <2 x double> %Vop110, %Vop113
  %350 = fdiv double %345, %349
  %351 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), double %342, double %350)
  br label %352

; <label>:352:                                    ; preds = %341
  %353 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %353, double* %CallInst11
  %354 = load double, double* %CallInst11, align 4
  %insertCall115 = insertelement <2 x double> undef, double %354, i32 0
  %insertCall116 = insertelement <2 x double> %insertCall115, double %354, i32 1
  store <2 x double> %insertCall116, <2 x double>* %CallInstVec12, align 4
  %355 = load <2 x double>, <2 x double>* %CallInstVec12, align 4
  %Vop117 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %355
  %356 = fmul double 4.000000e+00, %353
  %Vop118 = fdiv <2 x double> %Vop117, <double 5.760000e+03, double 5.760000e+03>
  %357 = fdiv double %356, 5.760000e+03
  %358 = load double, double* %7, align 8
  %359 = load <2 x double>, <2 x double>* %allocaVec28, align 16
  %Vop119 = fadd <2 x double> %359, %Vop118
  store <2 x double> %Vop119, <2 x double>* %allocaVec28
  %360 = load <2 x double>, <2 x double>* %allocaVec28, align 4
  %extractE121 = extractelement <2 x double> %360, i64 0
  %extractE122 = extractelement <2 x double> %360, i64 1
  %sum123 = fadd double %extractE121, %extractE122
  %sum124 = fadd double %sum123, %extractE122
  %361 = fadd double %358, %357
  %Fmul120 = fmul double %361, 3.000000e+00
  store double %361, double* %Recovery6
  %Fcmp125 = fcmp une double %sum124, %Fmul120
  br i1 %Fcmp125, label %362, label %366

; <label>:362:                                    ; preds = %352
  %remThree136 = fdiv double %sum124, %extractE121
  %FcmpThree137 = fcmp une double %remThree136, 3.000000e+00
  br i1 %FcmpThree137, label %363, label %364

; <label>:363:                                    ; preds = %362
  store double %361, double* %Recovery6, align 4
  br label %365

; <label>:364:                                    ; preds = %362
  store double %extractE121, double* %Recovery6, align 4
  br label %365

; <label>:365:                                    ; preds = %364, %363
  br label %366

; <label>:366:                                    ; preds = %352, %365
  %367 = load double, double* %Recovery6, align 4
  store double %367, double* %7, align 8
  br label %332

; <label>:368:                                    ; preds = %332
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
  %Recovery = alloca double, align 4
  %allocaVec24 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 4
  %allocaVec25 = alloca <2 x double>, align 16
  %Recovery2 = alloca double, align 4
  %allocaVec26 = alloca <2 x double>, align 16
  %Recovery3 = alloca double, align 4
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
  store double %80, double* %Recovery, align 4
  br label %84

; <label>:83:                                     ; preds = %81
  store double %extractE, double* %Recovery, align 4
  br label %84

; <label>:84:                                     ; preds = %83, %82
  br label %85

; <label>:85:                                     ; preds = %6, %84
  %86 = load double, double* %Recovery, align 4
  store double %86, double* %18, align 8
  %87 = load double, double* %18, align 8
  %88 = fcmp ole double %87, 0.000000e+00
  br i1 %88, label %89, label %172

; <label>:89:                                     ; preds = %85
  %90 = load i32*, i32** %11, align 4
  store i32 3, i32* %90, align 4
  %91 = load double, double* %17, align 8
  %92 = load double, double* %16, align 8
  %93 = load double, double* %16, align 8
  %94 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %95 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %Vop82 = fmul <2 x double> %94, %95
  %96 = fmul double %92, %93
  %97 = load double, double* %16, align 8
  %98 = load <2 x double>, <2 x double>* %allocaVec46, align 16
  %Vop83 = fmul <2 x double> %Vop82, %98
  %99 = fmul double %96, %97
  %100 = call arm_aapcscc double @sqrt(double %99) #5
  %101 = load <2 x double>, <2 x double>* %allocaVec47, align 16
  store double %100, double* %CallInst
  %102 = load double, double* %CallInst, align 4
  %insertCall = insertelement <2 x double> undef, double %102, i32 0
  %insertCall84 = insertelement <2 x double> %insertCall, double %102, i32 1
  store <2 x double> %insertCall84, <2 x double>* %CallInstVec, align 4
  %103 = load <2 x double>, <2 x double>* %CallInstVec, align 4
  %Vop85 = fdiv <2 x double> %101, %103
  %104 = fdiv double %91, %100
  %105 = call arm_aapcscc double @acos(double %104) #5
  store double %105, double* %19, align 8
  %106 = load double, double* %16, align 8
  %107 = call arm_aapcscc double @sqrt(double %106) #5
  store double %107, double* %CallInst4
  %108 = load double, double* %CallInst4, align 4
  %insertCall86 = insertelement <2 x double> undef, double %108, i32 0
  %insertCall87 = insertelement <2 x double> %insertCall86, double %108, i32 1
  store <2 x double> %insertCall87, <2 x double>* %CallInstVec5, align 4
  %109 = load <2 x double>, <2 x double>* %CallInstVec5, align 4
  %Vop88 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %109
  %110 = fmul double -2.000000e+00, %107
  %111 = load double, double* %19, align 8
  %insertElmt89 = insertelement <2 x double> undef, double %111, i32 0
  %insertElmt90 = insertelement <2 x double> %insertElmt89, double %111, i32 1
  store <2 x double> %insertElmt90, <2 x double>* %allocaVec49, align 16
  %112 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  %Vop91 = fdiv <2 x double> %112, <double 3.000000e+00, double 3.000000e+00>
  %113 = fdiv double %111, 3.000000e+00
  %114 = call arm_aapcscc double @cos(double %113) #5
  store double %114, double* %CallInst6
  %115 = load double, double* %CallInst6, align 4
  %insertCall92 = insertelement <2 x double> undef, double %115, i32 0
  %insertCall93 = insertelement <2 x double> %insertCall92, double %115, i32 1
  store <2 x double> %insertCall93, <2 x double>* %CallInstVec7, align 4
  %116 = load <2 x double>, <2 x double>* %CallInstVec7, align 4
  %Vop94 = fmul <2 x double> %Vop88, %116
  %117 = fmul double %110, %114
  %118 = load double, double* %13, align 8
  %119 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop95 = fdiv <2 x double> %119, <double 3.000000e+00, double 3.000000e+00>
  %120 = fdiv double %118, 3.000000e+00
  %Vop96 = fsub <2 x double> %Vop94, %Vop95
  %121 = fsub double %117, %120
  %122 = load double*, double** %12, align 4
  %123 = getelementptr inbounds double, double* %122, i32 0
  store double %121, double* %123, align 8
  %124 = load double, double* %16, align 8
  %125 = call arm_aapcscc double @sqrt(double %124) #5
  store double %125, double* %CallInst8
  %126 = load double, double* %CallInst8, align 4
  %insertCall97 = insertelement <2 x double> undef, double %126, i32 0
  %insertCall98 = insertelement <2 x double> %insertCall97, double %126, i32 1
  store <2 x double> %insertCall98, <2 x double>* %CallInstVec9, align 4
  %127 = load <2 x double>, <2 x double>* %CallInstVec9, align 4
  %Vop99 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %127
  %128 = fmul double -2.000000e+00, %125
  %129 = load double, double* %19, align 8
  %insertElmt100 = insertelement <2 x double> undef, double %129, i32 0
  %insertElmt101 = insertelement <2 x double> %insertElmt100, double %129, i32 1
  store <2 x double> %insertElmt101, <2 x double>* %allocaVec49, align 16
  %130 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %130, double* %CallInst10
  %131 = load double, double* %CallInst10, align 4
  %insertCall102 = insertelement <2 x double> undef, double %131, i32 0
  %insertCall103 = insertelement <2 x double> %insertCall102, double %131, i32 1
  store <2 x double> %insertCall103, <2 x double>* %CallInstVec11, align 4
  %132 = load <2 x double>, <2 x double>* %CallInstVec11, align 4
  %Vop104 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %132
  %133 = fmul double 4.000000e+00, %130
  %Vop105 = fmul <2 x double> <double 2.000000e+00, double 2.000000e+00>, %Vop104
  %134 = fmul double 2.000000e+00, %133
  %135 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  %Vop106 = fadd <2 x double> %135, %Vop105
  %136 = fadd double %129, %134
  %Vop107 = fdiv <2 x double> %Vop106, <double 3.000000e+00, double 3.000000e+00>
  %137 = fdiv double %136, 3.000000e+00
  %138 = call arm_aapcscc double @cos(double %137) #5
  store double %138, double* %CallInst12
  %139 = load double, double* %CallInst12, align 4
  %insertCall108 = insertelement <2 x double> undef, double %139, i32 0
  %insertCall109 = insertelement <2 x double> %insertCall108, double %139, i32 1
  store <2 x double> %insertCall109, <2 x double>* %CallInstVec13, align 4
  %140 = load <2 x double>, <2 x double>* %CallInstVec13, align 4
  %Vop110 = fmul <2 x double> %Vop99, %140
  %141 = fmul double %128, %138
  %142 = load double, double* %13, align 8
  %143 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop111 = fdiv <2 x double> %143, <double 3.000000e+00, double 3.000000e+00>
  %144 = fdiv double %142, 3.000000e+00
  %Vop112 = fsub <2 x double> %Vop110, %Vop111
  %145 = fsub double %141, %144
  %146 = load double*, double** %12, align 4
  %147 = getelementptr inbounds double, double* %146, i32 1
  store double %145, double* %147, align 8
  %148 = load double, double* %16, align 8
  %149 = call arm_aapcscc double @sqrt(double %148) #5
  store double %149, double* %CallInst14
  %150 = load double, double* %CallInst14, align 4
  %insertCall113 = insertelement <2 x double> undef, double %150, i32 0
  %insertCall114 = insertelement <2 x double> %insertCall113, double %150, i32 1
  store <2 x double> %insertCall114, <2 x double>* %CallInstVec15, align 4
  %151 = load <2 x double>, <2 x double>* %CallInstVec15, align 4
  %Vop115 = fmul <2 x double> <double -2.000000e+00, double -2.000000e+00>, %151
  %152 = fmul double -2.000000e+00, %149
  %153 = load double, double* %19, align 8
  %insertElmt116 = insertelement <2 x double> undef, double %153, i32 0
  %insertElmt117 = insertelement <2 x double> %insertElmt116, double %153, i32 1
  store <2 x double> %insertElmt117, <2 x double>* %allocaVec49, align 16
  %154 = call arm_aapcscc double @atan(double 1.000000e+00) #5
  store double %154, double* %CallInst16
  %155 = load double, double* %CallInst16, align 4
  %insertCall118 = insertelement <2 x double> undef, double %155, i32 0
  %insertCall119 = insertelement <2 x double> %insertCall118, double %155, i32 1
  store <2 x double> %insertCall119, <2 x double>* %CallInstVec17, align 4
  %156 = load <2 x double>, <2 x double>* %CallInstVec17, align 4
  %Vop120 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %156
  %157 = fmul double 4.000000e+00, %154
  %Vop121 = fmul <2 x double> <double 4.000000e+00, double 4.000000e+00>, %Vop120
  %158 = fmul double 4.000000e+00, %157
  %159 = load <2 x double>, <2 x double>* %allocaVec49, align 16
  %Vop122 = fadd <2 x double> %159, %Vop121
  %160 = fadd double %153, %158
  %Vop123 = fdiv <2 x double> %Vop122, <double 3.000000e+00, double 3.000000e+00>
  %161 = fdiv double %160, 3.000000e+00
  %162 = call arm_aapcscc double @cos(double %161) #5
  store double %162, double* %CallInst18
  %163 = load double, double* %CallInst18, align 4
  %insertCall124 = insertelement <2 x double> undef, double %163, i32 0
  %insertCall125 = insertelement <2 x double> %insertCall124, double %163, i32 1
  store <2 x double> %insertCall125, <2 x double>* %CallInstVec19, align 4
  %164 = load <2 x double>, <2 x double>* %CallInstVec19, align 4
  %Vop126 = fmul <2 x double> %Vop115, %164
  %165 = fmul double %152, %162
  %166 = load double, double* %13, align 8
  %167 = load <2 x double>, <2 x double>* %allocaVec43, align 16
  %Vop127 = fdiv <2 x double> %167, <double 3.000000e+00, double 3.000000e+00>
  %168 = fdiv double %166, 3.000000e+00
  %Vop128 = fsub <2 x double> %Vop126, %Vop127
  %169 = fsub double %165, %168
  %170 = load double*, double** %12, align 4
  %171 = getelementptr inbounds double, double* %170, i32 2
  store double %169, double* %171, align 8
  br label %209

; <label>:172:                                    ; preds = %85
  %173 = load i32*, i32** %11, align 4
  store i32 1, i32* %173, align 4
  %174 = load double, double* %18, align 8
  %175 = call arm_aapcscc double @sqrt(double %174) #5
  %176 = load double, double* %17, align 8
  %177 = call arm_aapcscc double @fabs(double %176) #6
  store double %175, double* %CallInst20
  %178 = load double, double* %CallInst20, align 4
  %insertCall129 = insertelement <2 x double> undef, double %178, i32 0
  %insertCall130 = insertelement <2 x double> %insertCall129, double %178, i32 1
  store <2 x double> %insertCall130, <2 x double>* %CallInstVec21, align 4
  %179 = load <2 x double>, <2 x double>* %CallInstVec21, align 4
  store double %177, double* %CallInst22
  %180 = load double, double* %CallInst22, align 4
  %insertCall131 = insertelement <2 x double> undef, double %180, i32 0
  %insertCall132 = insertelement <2 x double> %insertCall131, double %180, i32 1
  store <2 x double> %insertCall132, <2 x double>* %CallInstVec23, align 4
  %181 = load <2 x double>, <2 x double>* %CallInstVec23, align 4
  %Vop133 = fadd <2 x double> %179, %181
  %182 = fadd double %175, %177
  %183 = call arm_aapcscc double @pow(double %182, double 0x3FD5555555555555) #5
  %184 = load double*, double** %12, align 4
  %185 = getelementptr inbounds double, double* %184, i32 0
  store double %183, double* %185, align 8
  %186 = load double, double* %16, align 8
  %187 = load double*, double** %12, align 4
  %188 = getelementptr inbounds double, double* %187, i32 0
  %189 = load double, double* %188, align 8
  %190 = fdiv double %186, %189
  %191 = load double*, double** %12, align 4
  %192 = getelementptr inbounds double, double* %191, i32 0
  %193 = load double, double* %192, align 8
  %194 = fadd double %193, %190
  store double %194, double* %192, align 8
  %195 = load double, double* %17, align 8
  %196 = fcmp olt double %195, 0.000000e+00
  %197 = select i1 %196, i32 1, i32 -1
  %198 = sitofp i32 %197 to double
  %199 = load double*, double** %12, align 4
  %200 = getelementptr inbounds double, double* %199, i32 0
  %201 = load double, double* %200, align 8
  %202 = fmul double %201, %198
  store double %202, double* %200, align 8
  %203 = load double, double* %13, align 8
  %204 = fdiv double %203, 3.000000e+00
  %205 = load double*, double** %12, align 4
  %206 = getelementptr inbounds double, double* %205, i32 0
  %207 = load double, double* %206, align 8
  %208 = fsub double %207, %204
  store double %208, double* %206, align 8
  br label %209

; <label>:209:                                    ; preds = %172, %89
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
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %74, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %76

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
  %30 = load i32, i32* %Recovery, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %insertElmt30 = insertelement <4 x i32> undef, i32 %31, i32 0
  %insertElmt31 = insertelement <4 x i32> %insertElmt30, i32 %31, i32 1
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %31, i32 2
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %31, i32 3
  store <4 x i32> %insertElmt33, <4 x i32>* %allocaVec8, align 16
  %32 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop34 = shl <4 x i32> %32, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop34, <4 x i32>* %allocaVec8
  %33 = shl i32 %31, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop35 = shl <4 x i32> %35, <i32 1, i32 1, i32 1, i32 1>
  %36 = shl i32 %34, 1
  %Vop36 = add <4 x i32> %Vop35, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop36, <4 x i32>* %allocaVec10
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %64

; <label>:41:                                     ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %45 = load <4 x i32>, <4 x i32>* %allocaVec10, align 16
  %Vop37 = sub <4 x i32> %44, %45
  store <4 x i32> %Vop37, <4 x i32>* %allocaVec9
  %46 = load <4 x i32>, <4 x i32>* %allocaVec9, align 4
  %extractE39 = extractelement <4 x i32> %46, i64 0
  %extractE40 = extractelement <4 x i32> %46, i64 1
  %extractE41 = extractelement <4 x i32> %46, i64 2
  %sum42 = add i32 %extractE39, %extractE40
  %sum43 = add i32 %sum42, %extractE41
  %47 = sub i32 %43, %42
  %Fmul38 = mul i32 %47, 3
  store i32 %47, i32* %Recovery1
  %Fcmp44 = icmp ne i32 %sum43, %Fmul38
  br i1 %Fcmp44, label %48, label %52

; <label>:48:                                     ; preds = %41
  %remThree65 = sdiv i32 %sum43, %extractE39
  %FcmpThree66 = icmp ne i32 %remThree65, 3
  br i1 %FcmpThree66, label %49, label %50

; <label>:49:                                     ; preds = %48
  store i32 %47, i32* %Recovery1, align 4
  br label %51

; <label>:50:                                     ; preds = %48
  store i32 %extractE39, i32* %Recovery1, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %49
  br label %52

; <label>:52:                                     ; preds = %41, %51
  %53 = load i32, i32* %Recovery1, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop45 = add <4 x i32> %55, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop45, <4 x i32>* %allocaVec8
  %56 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE47 = extractelement <4 x i32> %56, i64 0
  %extractE48 = extractelement <4 x i32> %56, i64 1
  %extractE49 = extractelement <4 x i32> %56, i64 2
  %sum50 = add i32 %extractE47, %extractE48
  %sum51 = add i32 %sum50, %extractE49
  %57 = add i32 %54, 1
  %Fmul46 = mul i32 %57, 3
  store i32 %57, i32* %Recovery2
  %Fcmp52 = icmp ne i32 %sum51, %Fmul46
  br i1 %Fcmp52, label %58, label %62

; <label>:58:                                     ; preds = %52
  %remThree67 = sdiv i32 %sum51, %extractE47
  %FcmpThree68 = icmp ne i32 %remThree67, 3
  br i1 %FcmpThree68, label %59, label %60

; <label>:59:                                     ; preds = %58
  store i32 %57, i32* %Recovery2, align 4
  br label %61

; <label>:60:                                     ; preds = %58
  store i32 %extractE47, i32* %Recovery2, align 4
  br label %61

; <label>:61:                                     ; preds = %60, %59
  br label %62

; <label>:62:                                     ; preds = %52, %61
  %63 = load i32, i32* %Recovery2, align 4
  store i32 %63, i32* %5, align 4
  br label %64

; <label>:64:                                     ; preds = %62, %29
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %8, align 4
  %insertElmt53 = insertelement <4 x i32> undef, i32 %66, i32 0
  %insertElmt54 = insertelement <4 x i32> %insertElmt53, i32 %66, i32 1
  %insertElmt55 = insertelement <4 x i32> %insertElmt54, i32 %66, i32 2
  %insertElmt56 = insertelement <4 x i32> %insertElmt55, i32 %66, i32 3
  store <4 x i32> %insertElmt56, <4 x i32>* %allocaVec11, align 16
  %67 = load <4 x i32>, <4 x i32>* %allocaVec11, align 16
  %Vop57 = add <4 x i32> %67, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop57, <4 x i32>* %allocaVec11
  %68 = load <4 x i32>, <4 x i32>* %allocaVec11, align 4
  %extractE59 = extractelement <4 x i32> %68, i64 0
  %extractE60 = extractelement <4 x i32> %68, i64 1
  %extractE61 = extractelement <4 x i32> %68, i64 2
  %sum62 = add i32 %extractE59, %extractE60
  %sum63 = add i32 %sum62, %extractE61
  %69 = add nsw i32 %66, 1
  %Fmul58 = mul i32 %69, 3
  store i32 %69, i32* %Recovery3
  %Fcmp64 = icmp ne i32 %sum63, %Fmul58
  br i1 %Fcmp64, label %70, label %74

; <label>:70:                                     ; preds = %65
  %remThree69 = sdiv i32 %sum63, %extractE59
  %FcmpThree70 = icmp ne i32 %remThree69, 3
  br i1 %FcmpThree70, label %71, label %72

; <label>:71:                                     ; preds = %70
  store i32 %69, i32* %Recovery3, align 4
  br label %73

; <label>:72:                                     ; preds = %70
  store i32 %extractE59, i32* %Recovery3, align 4
  br label %73

; <label>:73:                                     ; preds = %72, %71
  br label %74

; <label>:74:                                     ; preds = %65, %73
  %75 = load i32, i32* %Recovery3, align 4
  store i32 %75, i32* %8, align 4
  br label %9

; <label>:76:                                     ; preds = %9
  %77 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 4
  %78 = bitcast %struct.int_sqrt* %77 to i8*
  %79 = bitcast i32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %79, i32 4, i32 4, i1 false)
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
