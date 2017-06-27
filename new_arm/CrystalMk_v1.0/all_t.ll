; ModuleID = 'all_t.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"\0ASequoia benchmark version 1.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0A***** results \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"returnVal = %f \0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"i = %5d j = %5d    dtcdgd[i][j]   = %e \0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0ATotal Wall time = %f seconds. \0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\0ATotal CPU  time = %f seconds. \0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\0A***** timing for Crystal_div \0A\00", align 1
@.str.1.7 = private unnamed_addr constant [27 x i8] c"\0AWall time = %f seconds. \0A\00", align 1
@.str.2.8 = private unnamed_addr constant [28 x i8] c"\0ACPU  time = %f seconds. \0A\0A\00", align 1
@.str.3.9 = private unnamed_addr constant [32 x i8] c"\0A***** timing for Crystal_pow \0A\00", align 1
@.str.4.10 = private unnamed_addr constant [37 x i8] c"\0A***** timing for Crystal_Cholesky \0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc void @Crystal_Cholesky(i32, [12 x double]*, double*, double*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec4 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec5 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %6 = alloca [12 x double]*, align 4
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %9 = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %10 = alloca i32, align 4
  %allocaVec8 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec9 = alloca <2 x double>, align 16
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store [12 x double]* %1, [12 x double]** %6, align 4
  store double* %2, double** %7, align 4
  store double* %3, double** %8, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec6
  store i32 0, i32* %9, align 4
  br label %13

; <label>:13:                                     ; preds = %25, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %13
  %18 = load double*, double** %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds double, double* %18, i32 %19
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds double, double* %22, i32 %23
  store double %21, double* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %9, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %26, i32 0
  %insertElmt10 = insertelement <4 x i32> %insertElmt, i32 %26, i32 1
  %insertElmt11 = insertelement <4 x i32> %insertElmt10, i32 %26, i32 2
  %insertElmt12 = insertelement <4 x i32> %insertElmt11, i32 %26, i32 3
  store <4 x i32> %insertElmt12, <4 x i32>* %allocaVec6, align 16
  %27 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop = add <4 x i32> %27, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec6
  %28 = add nsw i32 %26, 1
  store i32 %28, i32* %9, align 4
  br label %13

; <label>:29:                                     ; preds = %13
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec6
  store i32 1, i32* %9, align 4
  br label %30

; <label>:30:                                     ; preds = %49, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %53

; <label>:34:                                     ; preds = %30
  %35 = load [12 x double]*, [12 x double]** %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [12 x double], [12 x double]* %35, i32 %36
  %38 = getelementptr inbounds [12 x double], [12 x double]* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load [12 x double]*, [12 x double]** %6, align 4
  %41 = getelementptr inbounds [12 x double], [12 x double]* %40, i32 0
  %42 = getelementptr inbounds [12 x double], [12 x double]* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fdiv double %39, %43
  %45 = load [12 x double]*, [12 x double]** %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [12 x double], [12 x double]* %45, i32 %46
  %48 = getelementptr inbounds [12 x double], [12 x double]* %47, i32 0, i32 0
  store double %44, double* %48, align 8
  br label %49

; <label>:49:                                     ; preds = %34
  %50 = load i32, i32* %9, align 4
  %51 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop13 = add <4 x i32> %51, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop13, <4 x i32>* %allocaVec6
  %52 = add nsw i32 %50, 1
  store i32 %52, i32* %9, align 4
  br label %30

; <label>:53:                                     ; preds = %30
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec6
  store i32 1, i32* %9, align 4
  br label %54

; <label>:54:                                     ; preds = %198, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %202

; <label>:58:                                     ; preds = %54
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec9
  store double 0.000000e+00, double* %12, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %11, align 4
  br label %59

; <label>:59:                                     ; preds = %79, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

; <label>:63:                                     ; preds = %59
  %64 = load [12 x double]*, [12 x double]** %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds [12 x double], [12 x double]* %64, i32 %65
  %67 = load i32, i32* %11, align 4
  %68 = getelementptr inbounds [12 x double], [12 x double]* %66, i32 0, i32 %67
  %69 = load double, double* %68, align 8
  %70 = load [12 x double]*, [12 x double]** %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = getelementptr inbounds [12 x double], [12 x double]* %70, i32 %71
  %73 = load i32, i32* %9, align 4
  %74 = getelementptr inbounds [12 x double], [12 x double]* %72, i32 0, i32 %73
  %75 = load double, double* %74, align 8
  %76 = fmul double %69, %75
  %77 = load double, double* %12, align 8
  %78 = fadd double %77, %76
  store double %78, double* %12, align 8
  br label %79

; <label>:79:                                     ; preds = %63
  %80 = load i32, i32* %11, align 4
  %insertElmt14 = insertelement <4 x i32> undef, i32 %80, i32 0
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %80, i32 1
  %insertElmt16 = insertelement <4 x i32> %insertElmt15, i32 %80, i32 2
  %insertElmt17 = insertelement <4 x i32> %insertElmt16, i32 %80, i32 3
  store <4 x i32> %insertElmt17, <4 x i32>* %allocaVec8, align 16
  %81 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop18 = add <4 x i32> %81, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop18, <4 x i32>* %allocaVec8
  %82 = add nsw i32 %80, 1
  store i32 %82, i32* %11, align 4
  br label %59

; <label>:83:                                     ; preds = %59
  %84 = load [12 x double]*, [12 x double]** %6, align 4
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds [12 x double], [12 x double]* %84, i32 %85
  %87 = load i32, i32* %9, align 4
  %88 = getelementptr inbounds [12 x double], [12 x double]* %86, i32 0, i32 %87
  %89 = load double, double* %88, align 8
  %90 = load double, double* %12, align 8
  %91 = fsub double %89, %90
  %92 = load [12 x double]*, [12 x double]** %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = getelementptr inbounds [12 x double], [12 x double]* %92, i32 %93
  %95 = load i32, i32* %9, align 4
  %96 = getelementptr inbounds [12 x double], [12 x double]* %94, i32 0, i32 %95
  store double %91, double* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %99

; <label>:99:                                     ; preds = %196, %83
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %197

; <label>:103:                                    ; preds = %99
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec9
  store double 0.000000e+00, double* %12, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %11, align 4
  br label %104

; <label>:104:                                    ; preds = %124, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %128

; <label>:108:                                    ; preds = %104
  %109 = load [12 x double]*, [12 x double]** %6, align 4
  %110 = load i32, i32* %9, align 4
  %111 = getelementptr inbounds [12 x double], [12 x double]* %109, i32 %110
  %112 = load i32, i32* %11, align 4
  %113 = getelementptr inbounds [12 x double], [12 x double]* %111, i32 0, i32 %112
  %114 = load double, double* %113, align 8
  %115 = load [12 x double]*, [12 x double]** %6, align 4
  %116 = load i32, i32* %11, align 4
  %117 = getelementptr inbounds [12 x double], [12 x double]* %115, i32 %116
  %118 = load i32, i32* %10, align 4
  %119 = getelementptr inbounds [12 x double], [12 x double]* %117, i32 0, i32 %118
  %120 = load double, double* %119, align 8
  %121 = fmul double %114, %120
  %122 = load double, double* %12, align 8
  %123 = fadd double %122, %121
  store double %123, double* %12, align 8
  br label %124

; <label>:124:                                    ; preds = %108
  %125 = load i32, i32* %11, align 4
  %126 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop19 = add <4 x i32> %126, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop19, <4 x i32>* %allocaVec8
  %127 = add nsw i32 %125, 1
  store i32 %127, i32* %11, align 4
  br label %104

; <label>:128:                                    ; preds = %104
  %129 = load [12 x double]*, [12 x double]** %6, align 4
  %130 = load i32, i32* %9, align 4
  %131 = getelementptr inbounds [12 x double], [12 x double]* %129, i32 %130
  %132 = load i32, i32* %10, align 4
  %133 = getelementptr inbounds [12 x double], [12 x double]* %131, i32 0, i32 %132
  %134 = load double, double* %133, align 8
  %135 = load double, double* %12, align 8
  %136 = fsub double %134, %135
  %137 = load [12 x double]*, [12 x double]** %6, align 4
  %138 = load i32, i32* %9, align 4
  %139 = getelementptr inbounds [12 x double], [12 x double]* %137, i32 %138
  %140 = load i32, i32* %10, align 4
  %141 = getelementptr inbounds [12 x double], [12 x double]* %139, i32 0, i32 %140
  store double %136, double* %141, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %142

; <label>:142:                                    ; preds = %162, %128
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %166

; <label>:146:                                    ; preds = %142
  %147 = load [12 x double]*, [12 x double]** %6, align 4
  %148 = load i32, i32* %10, align 4
  %149 = getelementptr inbounds [12 x double], [12 x double]* %147, i32 %148
  %150 = load i32, i32* %11, align 4
  %151 = getelementptr inbounds [12 x double], [12 x double]* %149, i32 0, i32 %150
  %152 = load double, double* %151, align 8
  %153 = load [12 x double]*, [12 x double]** %6, align 4
  %154 = load i32, i32* %11, align 4
  %155 = getelementptr inbounds [12 x double], [12 x double]* %153, i32 %154
  %156 = load i32, i32* %9, align 4
  %157 = getelementptr inbounds [12 x double], [12 x double]* %155, i32 0, i32 %156
  %158 = load double, double* %157, align 8
  %159 = fmul double %152, %158
  %160 = load double, double* %12, align 8
  %161 = fadd double %160, %159
  store double %161, double* %12, align 8
  br label %162

; <label>:162:                                    ; preds = %146
  %163 = load i32, i32* %11, align 4
  %164 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop20 = add <4 x i32> %164, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop20, <4 x i32>* %allocaVec8
  %165 = add nsw i32 %163, 1
  store i32 %165, i32* %11, align 4
  br label %142

; <label>:166:                                    ; preds = %142
  %167 = load [12 x double]*, [12 x double]** %6, align 4
  %168 = load i32, i32* %10, align 4
  %169 = getelementptr inbounds [12 x double], [12 x double]* %167, i32 %168
  %170 = load i32, i32* %9, align 4
  %171 = getelementptr inbounds [12 x double], [12 x double]* %169, i32 0, i32 %170
  %172 = load double, double* %171, align 8
  %173 = load double, double* %12, align 8
  %174 = fsub double %172, %173
  %175 = load [12 x double]*, [12 x double]** %6, align 4
  %176 = load i32, i32* %9, align 4
  %177 = getelementptr inbounds [12 x double], [12 x double]* %175, i32 %176
  %178 = load i32, i32* %9, align 4
  %179 = getelementptr inbounds [12 x double], [12 x double]* %177, i32 0, i32 %178
  %180 = load double, double* %179, align 8
  %181 = fdiv double %174, %180
  %182 = load [12 x double]*, [12 x double]** %6, align 4
  %183 = load i32, i32* %10, align 4
  %184 = getelementptr inbounds [12 x double], [12 x double]* %182, i32 %183
  %185 = load i32, i32* %9, align 4
  %186 = getelementptr inbounds [12 x double], [12 x double]* %184, i32 0, i32 %185
  store double %181, double* %186, align 8
  br label %187

; <label>:187:                                    ; preds = %166
  %188 = load i32, i32* %10, align 4
  %insertElmt21 = insertelement <4 x i32> undef, i32 %188, i32 0
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %188, i32 1
  %insertElmt23 = insertelement <4 x i32> %insertElmt22, i32 %188, i32 2
  %insertElmt24 = insertelement <4 x i32> %insertElmt23, i32 %188, i32 3
  store <4 x i32> %insertElmt24, <4 x i32>* %allocaVec7, align 16
  %189 = load <4 x i32>, <4 x i32>* %allocaVec7, align 16
  %Vop25 = add <4 x i32> %189, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop25, <4 x i32>* %allocaVec7
  %190 = load <4 x i32>, <4 x i32>* %allocaVec7, align 4
  %extractE = extractelement <4 x i32> %190, i64 0
  %extractE26 = extractelement <4 x i32> %190, i64 1
  %extractE27 = extractelement <4 x i32> %190, i64 2
  %sum = add i32 %extractE, %extractE26
  %sum28 = add i32 %sum, %extractE27
  %191 = add nsw i32 %188, 1
  %Fmul = mul i32 %191, 3
  store i32 %191, i32* %Recovery
  %Fcmp = icmp ne i32 %sum28, %Fmul
  br i1 %Fcmp, label %192, label %196

; <label>:192:                                    ; preds = %187
  %remThree = sdiv i32 %sum28, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %193, label %194

; <label>:193:                                    ; preds = %192
  store i32 %191, i32* %Recovery, align 4
  br label %195

; <label>:194:                                    ; preds = %192
  store i32 %extractE, i32* %Recovery, align 4
  br label %195

; <label>:195:                                    ; preds = %194, %193
  br label %196

; <label>:196:                                    ; preds = %187, %195
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %10, align 4
  br label %99

; <label>:197:                                    ; preds = %99
  br label %198

; <label>:198:                                    ; preds = %197
  %199 = load i32, i32* %9, align 4
  %200 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop29 = add <4 x i32> %200, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop29, <4 x i32>* %allocaVec6
  %201 = add nsw i32 %199, 1
  store i32 %201, i32* %9, align 4
  br label %54

; <label>:202:                                    ; preds = %54
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %allocaVec6
  store i32 1, i32* %9, align 4
  br label %203

; <label>:203:                                    ; preds = %237, %202
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %241

; <label>:207:                                    ; preds = %203
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec8
  store i32 0, i32* %11, align 4
  br label %208

; <label>:208:                                    ; preds = %232, %207
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %236

; <label>:212:                                    ; preds = %208
  %213 = load double*, double** %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = getelementptr inbounds double, double* %213, i32 %214
  %216 = load double, double* %215, align 8
  %217 = load [12 x double]*, [12 x double]** %6, align 4
  %218 = load i32, i32* %9, align 4
  %219 = getelementptr inbounds [12 x double], [12 x double]* %217, i32 %218
  %220 = load i32, i32* %11, align 4
  %221 = getelementptr inbounds [12 x double], [12 x double]* %219, i32 0, i32 %220
  %222 = load double, double* %221, align 8
  %223 = load double*, double** %8, align 4
  %224 = load i32, i32* %11, align 4
  %225 = getelementptr inbounds double, double* %223, i32 %224
  %226 = load double, double* %225, align 8
  %227 = fmul double %222, %226
  %228 = fsub double %216, %227
  %229 = load double*, double** %8, align 4
  %230 = load i32, i32* %9, align 4
  %231 = getelementptr inbounds double, double* %229, i32 %230
  store double %228, double* %231, align 8
  br label %232

; <label>:232:                                    ; preds = %212
  %233 = load i32, i32* %11, align 4
  %234 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop30 = add <4 x i32> %234, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop30, <4 x i32>* %allocaVec8
  %235 = add nsw i32 %233, 1
  store i32 %235, i32* %11, align 4
  br label %208

; <label>:236:                                    ; preds = %208
  br label %237

; <label>:237:                                    ; preds = %236
  %238 = load i32, i32* %9, align 4
  %239 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop31 = add <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop31, <4 x i32>* %allocaVec6
  %240 = add nsw i32 %238, 1
  store i32 %240, i32* %9, align 4
  br label %203

; <label>:241:                                    ; preds = %203
  %242 = load double*, double** %8, align 4
  %243 = load i32, i32* %5, align 4
  %insertElmt32 = insertelement <4 x i32> undef, i32 %243, i32 0
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %243, i32 1
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %243, i32 2
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %243, i32 3
  store <4 x i32> %insertElmt35, <4 x i32>* %allocaVec5, align 16
  %244 = load <4 x i32>, <4 x i32>* %allocaVec5, align 16
  %Vop36 = sub <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %245 = sub nsw i32 %243, 1
  %246 = getelementptr inbounds double, double* %242, i32 %245
  %247 = load double, double* %246, align 8
  %248 = load [12 x double]*, [12 x double]** %6, align 4
  %249 = load i32, i32* %5, align 4
  %250 = sub nsw i32 %249, 1
  %251 = getelementptr inbounds [12 x double], [12 x double]* %248, i32 %250
  %252 = load i32, i32* %5, align 4
  %253 = sub nsw i32 %252, 1
  %254 = getelementptr inbounds [12 x double], [12 x double]* %251, i32 0, i32 %253
  %255 = load double, double* %254, align 8
  %256 = fdiv double %247, %255
  %257 = load double*, double** %8, align 4
  %258 = load i32, i32* %5, align 4
  %259 = sub nsw i32 %258, 1
  %260 = getelementptr inbounds double, double* %257, i32 %259
  store double %256, double* %260, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sub nsw i32 %261, 2
  store i32 %262, i32* %9, align 4
  br label %263

; <label>:263:                                    ; preds = %328, %241
  %264 = load i32, i32* %9, align 4
  %265 = icmp sge i32 %264, 0
  br i1 %265, label %266, label %329

; <label>:266:                                    ; preds = %263
  %267 = load i32, i32* %9, align 4
  %268 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop37 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop37, <4 x i32>* %allocaVec8
  %269 = add nsw i32 %267, 1
  store i32 %269, i32* %11, align 4
  br label %270

; <label>:270:                                    ; preds = %303, %266
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %5, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %304

; <label>:274:                                    ; preds = %270
  %275 = load double*, double** %8, align 4
  %276 = load i32, i32* %9, align 4
  %277 = getelementptr inbounds double, double* %275, i32 %276
  %278 = load double, double* %277, align 8
  %279 = load [12 x double]*, [12 x double]** %6, align 4
  %280 = load i32, i32* %9, align 4
  %281 = getelementptr inbounds [12 x double], [12 x double]* %279, i32 %280
  %282 = load i32, i32* %11, align 4
  %283 = getelementptr inbounds [12 x double], [12 x double]* %281, i32 0, i32 %282
  %284 = load double, double* %283, align 8
  %285 = load double*, double** %8, align 4
  %286 = load i32, i32* %11, align 4
  %287 = getelementptr inbounds double, double* %285, i32 %286
  %288 = load double, double* %287, align 8
  %289 = fmul double %284, %288
  %290 = fsub double %278, %289
  %291 = load double*, double** %8, align 4
  %292 = load i32, i32* %9, align 4
  %293 = getelementptr inbounds double, double* %291, i32 %292
  store double %290, double* %293, align 8
  br label %294

; <label>:294:                                    ; preds = %274
  %295 = load i32, i32* %11, align 4
  %296 = load <4 x i32>, <4 x i32>* %allocaVec8, align 16
  %Vop38 = add <4 x i32> %296, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec8
  %297 = load <4 x i32>, <4 x i32>* %allocaVec8, align 4
  %extractE40 = extractelement <4 x i32> %297, i64 0
  %extractE41 = extractelement <4 x i32> %297, i64 1
  %extractE42 = extractelement <4 x i32> %297, i64 2
  %sum43 = add i32 %extractE40, %extractE41
  %sum44 = add i32 %sum43, %extractE42
  %298 = add nsw i32 %295, 1
  %Fmul39 = mul i32 %298, 3
  store i32 %298, i32* %Recovery1
  %Fcmp45 = icmp ne i32 %sum44, %Fmul39
  br i1 %Fcmp45, label %299, label %303

; <label>:299:                                    ; preds = %294
  %remThree54 = sdiv i32 %sum44, %extractE40
  %FcmpThree55 = icmp ne i32 %remThree54, 3
  br i1 %FcmpThree55, label %300, label %301

; <label>:300:                                    ; preds = %299
  store i32 %298, i32* %Recovery1, align 4
  br label %302

; <label>:301:                                    ; preds = %299
  store i32 %extractE40, i32* %Recovery1, align 4
  br label %302

; <label>:302:                                    ; preds = %301, %300
  br label %303

; <label>:303:                                    ; preds = %294, %302
  %ReplaceInst58 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst58, i32* %11, align 4
  br label %270

; <label>:304:                                    ; preds = %270
  %305 = load double*, double** %8, align 4
  %306 = load i32, i32* %9, align 4
  %307 = getelementptr inbounds double, double* %305, i32 %306
  %308 = load double, double* %307, align 8
  %309 = load [12 x double]*, [12 x double]** %6, align 4
  %310 = load i32, i32* %9, align 4
  %311 = getelementptr inbounds [12 x double], [12 x double]* %309, i32 %310
  %312 = load i32, i32* %9, align 4
  %313 = getelementptr inbounds [12 x double], [12 x double]* %311, i32 0, i32 %312
  %314 = load double, double* %313, align 8
  %315 = fdiv double %308, %314
  %316 = load double*, double** %8, align 4
  %317 = load i32, i32* %9, align 4
  %318 = getelementptr inbounds double, double* %316, i32 %317
  store double %315, double* %318, align 8
  br label %319

; <label>:319:                                    ; preds = %304
  %320 = load i32, i32* %9, align 4
  %321 = load <4 x i32>, <4 x i32>* %allocaVec6, align 16
  %Vop46 = sub <4 x i32> %321, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop46, <4 x i32>* %allocaVec6
  %322 = load <4 x i32>, <4 x i32>* %allocaVec6, align 4
  %extractE48 = extractelement <4 x i32> %322, i64 0
  %extractE49 = extractelement <4 x i32> %322, i64 1
  %extractE50 = extractelement <4 x i32> %322, i64 2
  %sum51 = add i32 %extractE48, %extractE49
  %sum52 = add i32 %sum51, %extractE50
  %323 = sub nsw i32 %320, 1
  %Fmul47 = mul i32 %323, 3
  store i32 %323, i32* %Recovery2
  %Fcmp53 = icmp ne i32 %sum52, %Fmul47
  br i1 %Fcmp53, label %324, label %328

; <label>:324:                                    ; preds = %319
  %remThree56 = sdiv i32 %sum52, %extractE48
  %FcmpThree57 = icmp ne i32 %remThree56, 3
  br i1 %FcmpThree57, label %325, label %326

; <label>:325:                                    ; preds = %324
  store i32 %323, i32* %Recovery2, align 4
  br label %327

; <label>:326:                                    ; preds = %324
  store i32 %extractE48, i32* %Recovery2, align 4
  br label %327

; <label>:327:                                    ; preds = %326, %325
  br label %328

; <label>:328:                                    ; preds = %319, %327
  %ReplaceInst59 = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst59, i32* %9, align 4
  br label %263

; <label>:329:                                    ; preds = %263
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @Crystal_div(i32, double, double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 8
  %allocaVec4 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 8
  %allocaVec5 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec6 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec7 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec8 = alloca <4 x i32>, align 16
  %11 = alloca i32, align 4
  %allocaVec9 = alloca <2 x double>, align 16
  %12 = alloca double, align 8
  %13 = alloca double*, align 4
  %14 = alloca double*, align 4
  %15 = alloca double*, align 4
  %16 = alloca double*, align 4
  %17 = alloca double*, align 4
  %18 = alloca [12 x double]*, align 4
  %19 = alloca [12 x double]*, align 4
  %20 = alloca [12 x double]*, align 4
  %21 = alloca [12 x double], align 8
  %22 = alloca [12 x double], align 8
  %23 = alloca [12 x double], align 8
  %24 = alloca [12 x double], align 8
  %25 = alloca [12 x double], align 8
  %allocaVec10 = alloca <2 x double>, align 16
  %26 = alloca double, align 8
  %allocaVec11 = alloca <2 x double>, align 16
  %27 = alloca double, align 8
  %allocaVec12 = alloca <2 x double>, align 16
  %28 = alloca double, align 8
  %allocaVec13 = alloca <2 x double>, align 16
  %29 = alloca double, align 8
  %allocaVec14 = alloca <2 x double>, align 16
  %30 = alloca double, align 8
  %allocaVec15 = alloca <4 x i32>, align 16
  %31 = alloca i32, align 4
  %allocaVec16 = alloca <4 x i32>, align 16
  %32 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store double %1, double* %12, align 8
  store double* %2, double** %13, align 4
  store double* %3, double** %14, align 4
  store double* %4, double** %15, align 4
  store double* %5, double** %16, align 4
  store double* %6, double** %17, align 4
  store [12 x double]* %7, [12 x double]** %18, align 4
  store [12 x double]* %8, [12 x double]** %19, align 4
  store [12 x double]* %9, [12 x double]** %20, align 4
  store <2 x double> <double 1.000000e-06, double 1.000000e-06>, <2 x double>* %allocaVec10
  store double 1.000000e-06, double* %26, align 8
  store <2 x double> <double 3.000000e+01, double 3.000000e+01>, <2 x double>* %allocaVec11
  store double 3.000000e+01, double* %27, align 8
  store <2 x double> <double 1.200000e+00, double 1.200000e+00>, <2 x double>* %allocaVec12
  store double 1.200000e+00, double* %28, align 8
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %allocaVec13
  store double 1.000000e-02, double* %29, align 8
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec14
  store double 0.000000e+00, double* %30, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %31, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec16
  store i32 0, i32* %32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %31, align 4
  br label %33

; <label>:33:                                     ; preds = %49, %10
  %34 = load i32, i32* %31, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %31, align 4
  %39 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %38
  store double 1.000000e+00, double* %39, align 8
  %40 = load i32, i32* %31, align 4
  %41 = sitofp i32 %40 to double
  store double %41, double* %CastInst
  %42 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %42, i32 0
  %insertCast17 = insertelement <2 x double> %insertCast, double %42, i32 1
  store <2 x double> %insertCast17, <2 x double>* %CastInstVec, align 4
  %43 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop = fmul <2 x double> <double 2.000000e-01, double 2.000000e-01>, %43
  %44 = fmul double 2.000000e-01, %41
  %Vop18 = fdiv <2 x double> %Vop, <double 1.200000e+01, double 1.200000e+01>
  %45 = fdiv double %44, 1.200000e+01
  %Vop19 = fadd <2 x double> <double 9.000000e-01, double 9.000000e-01>, %Vop18
  %46 = fadd double 9.000000e-01, %45
  %47 = load i32, i32* %31, align 4
  %48 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %47
  store double %46, double* %48, align 8
  br label %49

; <label>:49:                                     ; preds = %37
  %50 = load i32, i32* %31, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %50, i32 0
  %insertElmt20 = insertelement <4 x i32> %insertElmt, i32 %50, i32 1
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %50, i32 2
  %insertElmt22 = insertelement <4 x i32> %insertElmt21, i32 %50, i32 3
  store <4 x i32> %insertElmt22, <4 x i32>* %allocaVec15, align 16
  %51 = load <4 x i32>, <4 x i32>* %allocaVec15, align 16
  %Vop23 = add <4 x i32> %51, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop23, <4 x i32>* %allocaVec15
  %52 = add nsw i32 %50, 1
  store i32 %52, i32* %31, align 4
  br label %33

; <label>:53:                                     ; preds = %33
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %31, align 4
  br label %54

; <label>:54:                                     ; preds = %72, %53
  %55 = load i32, i32* %31, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %76

; <label>:58:                                     ; preds = %54
  %59 = load double*, double** %13, align 4
  %60 = load i32, i32* %31, align 4
  %61 = getelementptr inbounds double, double* %59, i32 %60
  %62 = load double, double* %61, align 8
  %63 = load i32, i32* %31, align 4
  %64 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %63
  %65 = load double, double* %64, align 8
  %66 = fmul double %62, %65
  %67 = load double, double* %26, align 8
  %68 = fadd double %66, %67
  %69 = fdiv double 1.000000e+00, %68
  %70 = load i32, i32* %31, align 4
  %71 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %70
  store double %69, double* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %58
  %73 = load i32, i32* %31, align 4
  %74 = load <4 x i32>, <4 x i32>* %allocaVec15, align 16
  %Vop24 = add <4 x i32> %74, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop24, <4 x i32>* %allocaVec15
  %75 = add nsw i32 %73, 1
  store i32 %75, i32* %31, align 4
  br label %54

; <label>:76:                                     ; preds = %54
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %31, align 4
  br label %77

; <label>:77:                                     ; preds = %139, %76
  %78 = load i32, i32* %31, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %143

; <label>:81:                                     ; preds = %77
  %82 = load double, double* %27, align 8
  %insertElmt25 = insertelement <2 x double> undef, double %82, i32 0
  %insertElmt26 = insertelement <2 x double> %insertElmt25, double %82, i32 1
  store <2 x double> %insertElmt26, <2 x double>* %allocaVec11, align 16
  %83 = load i32, i32* %31, align 4
  %84 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %82, %85
  %87 = load i32, i32* %31, align 4
  %88 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %87
  %89 = load double, double* %88, align 8
  %90 = fmul double %86, %89
  %91 = load double*, double** %15, align 4
  %92 = load i32, i32* %31, align 4
  %93 = getelementptr inbounds double, double* %91, i32 %92
  store double %90, double* %93, align 8
  store i32 0, i32* %32, align 4
  br label %94

; <label>:94:                                     ; preds = %113, %81
  %95 = load i32, i32* %32, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

; <label>:98:                                     ; preds = %94
  %99 = load double, double* %28, align 8
  %insertElmt27 = insertelement <2 x double> undef, double %99, i32 0
  %insertElmt28 = insertelement <2 x double> %insertElmt27, double %99, i32 1
  store <2 x double> %insertElmt28, <2 x double>* %allocaVec12, align 16
  %100 = load double, double* %12, align 8
  %insertElmt29 = insertelement <2 x double> undef, double %100, i32 0
  %insertElmt30 = insertelement <2 x double> %insertElmt29, double %100, i32 1
  store <2 x double> %insertElmt30, <2 x double>* %allocaVec9, align 16
  %101 = load <2 x double>, <2 x double>* %allocaVec12, align 16
  %102 = load <2 x double>, <2 x double>* %allocaVec9, align 16
  %Vop31 = fmul <2 x double> %101, %102
  %103 = fmul double %99, %100
  %104 = load i32, i32* %31, align 4
  %105 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %104
  %106 = load double, double* %105, align 8
  %107 = fmul double %103, %106
  %108 = load [12 x double]*, [12 x double]** %18, align 4
  %109 = load i32, i32* %31, align 4
  %110 = getelementptr inbounds [12 x double], [12 x double]* %108, i32 %109
  %111 = load i32, i32* %32, align 4
  %112 = getelementptr inbounds [12 x double], [12 x double]* %110, i32 0, i32 %111
  store double %107, double* %112, align 8
  br label %113

; <label>:113:                                    ; preds = %98
  %114 = load i32, i32* %32, align 4
  %insertElmt32 = insertelement <4 x i32> undef, i32 %114, i32 0
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %114, i32 1
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %114, i32 2
  %insertElmt35 = insertelement <4 x i32> %insertElmt34, i32 %114, i32 3
  store <4 x i32> %insertElmt35, <4 x i32>* %allocaVec16, align 16
  %115 = load <4 x i32>, <4 x i32>* %allocaVec16, align 16
  %Vop36 = add <4 x i32> %115, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop36, <4 x i32>* %allocaVec16
  %116 = add nsw i32 %114, 1
  store i32 %116, i32* %32, align 4
  br label %94

; <label>:117:                                    ; preds = %94
  %118 = load double*, double** %15, align 4
  %119 = load i32, i32* %31, align 4
  %120 = getelementptr inbounds double, double* %118, i32 %119
  %121 = load double, double* %120, align 8
  %122 = load double, double* %29, align 8
  %123 = fmul double %121, %122
  %124 = load i32, i32* %31, align 4
  %125 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %124
  %126 = load double, double* %125, align 8
  %127 = fmul double %123, %126
  %128 = load i32, i32* %31, align 4
  %129 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %128
  %130 = load double, double* %129, align 8
  %131 = fmul double %127, %130
  %132 = load [12 x double]*, [12 x double]** %18, align 4
  %133 = load i32, i32* %31, align 4
  %134 = getelementptr inbounds [12 x double], [12 x double]* %132, i32 %133
  %135 = load i32, i32* %31, align 4
  %136 = getelementptr inbounds [12 x double], [12 x double]* %134, i32 0, i32 %135
  %137 = load double, double* %136, align 8
  %138 = fadd double %137, %131
  store double %138, double* %136, align 8
  br label %139

; <label>:139:                                    ; preds = %117
  %140 = load i32, i32* %31, align 4
  %141 = load <4 x i32>, <4 x i32>* %allocaVec15, align 16
  %Vop37 = add <4 x i32> %141, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop37, <4 x i32>* %allocaVec15
  %142 = add nsw i32 %140, 1
  store i32 %142, i32* %31, align 4
  br label %77

; <label>:143:                                    ; preds = %77
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %31, align 4
  br label %144

; <label>:144:                                    ; preds = %158, %143
  %145 = load i32, i32* %31, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %162

; <label>:148:                                    ; preds = %144
  %149 = load [12 x double]*, [12 x double]** %18, align 4
  %150 = load i32, i32* %31, align 4
  %151 = getelementptr inbounds [12 x double], [12 x double]* %149, i32 %150
  %152 = load i32, i32* %31, align 4
  %153 = getelementptr inbounds [12 x double], [12 x double]* %151, i32 0, i32 %152
  %154 = load double, double* %153, align 8
  %155 = fdiv double 1.000000e+00, %154
  %156 = load i32, i32* %31, align 4
  %157 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %156
  store double %155, double* %157, align 8
  br label %158

; <label>:158:                                    ; preds = %148
  %159 = load i32, i32* %31, align 4
  %160 = load <4 x i32>, <4 x i32>* %allocaVec15, align 16
  %Vop38 = add <4 x i32> %160, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop38, <4 x i32>* %allocaVec15
  %161 = add nsw i32 %159, 1
  store i32 %161, i32* %31, align 4
  br label %144

; <label>:162:                                    ; preds = %144
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec15
  store i32 0, i32* %31, align 4
  br label %163

; <label>:163:                                    ; preds = %255, %162
  %164 = load i32, i32* %31, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %256

; <label>:167:                                    ; preds = %163
  %168 = load double*, double** %15, align 4
  %169 = load i32, i32* %31, align 4
  %170 = getelementptr inbounds double, double* %168, i32 %169
  %171 = load double, double* %170, align 8
  %172 = load i32, i32* %31, align 4
  %173 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %172
  store double %171, double* %173, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec16
  store i32 0, i32* %32, align 4
  br label %174

; <label>:174:                                    ; preds = %224, %167
  %175 = load i32, i32* %32, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %225

; <label>:178:                                    ; preds = %174
  %179 = load [12 x double]*, [12 x double]** %19, align 4
  %180 = load i32, i32* %31, align 4
  %181 = getelementptr inbounds [12 x double], [12 x double]* %179, i32 %180
  %182 = load i32, i32* %32, align 4
  %183 = getelementptr inbounds [12 x double], [12 x double]* %181, i32 0, i32 %182
  %184 = load double, double* %183, align 8
  %185 = load double, double* %12, align 8
  %186 = fmul double %184, %185
  store double %186, double* %30, align 8
  %187 = load double, double* %30, align 8
  %188 = load double*, double** %14, align 4
  %189 = load i32, i32* %32, align 4
  %190 = getelementptr inbounds double, double* %188, i32 %189
  %191 = load double, double* %190, align 8
  %192 = fmul double %187, %191
  %193 = load i32, i32* %31, align 4
  %194 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %193
  %195 = load double, double* %194, align 8
  %196 = fadd double %195, %192
  store double %196, double* %194, align 8
  %197 = load double, double* %30, align 8
  %198 = fsub double -0.000000e+00, %197
  %199 = load [12 x double]*, [12 x double]** %18, align 4
  %200 = load i32, i32* %31, align 4
  %201 = getelementptr inbounds [12 x double], [12 x double]* %199, i32 %200
  %202 = load i32, i32* %32, align 4
  %203 = getelementptr inbounds [12 x double], [12 x double]* %201, i32 0, i32 %202
  %204 = load double, double* %203, align 8
  %205 = fadd double %198, %204
  %206 = load i32, i32* %31, align 4
  %207 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %206
  %208 = load double, double* %207, align 8
  %209 = fmul double %205, %208
  %210 = load [12 x double]*, [12 x double]** %20, align 4
  %211 = load i32, i32* %31, align 4
  %212 = getelementptr inbounds [12 x double], [12 x double]* %210, i32 %211
  %213 = load i32, i32* %32, align 4
  %214 = getelementptr inbounds [12 x double], [12 x double]* %212, i32 0, i32 %213
  store double %209, double* %214, align 8
  br label %215

; <label>:215:                                    ; preds = %178
  %216 = load i32, i32* %32, align 4
  %217 = load <4 x i32>, <4 x i32>* %allocaVec16, align 16
  %Vop39 = add <4 x i32> %217, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop39, <4 x i32>* %allocaVec16
  %218 = load <4 x i32>, <4 x i32>* %allocaVec16, align 4
  %extractE = extractelement <4 x i32> %218, i64 0
  %extractE40 = extractelement <4 x i32> %218, i64 1
  %extractE41 = extractelement <4 x i32> %218, i64 2
  %sum = add i32 %extractE, %extractE40
  %sum42 = add i32 %sum, %extractE41
  %219 = add nsw i32 %216, 1
  %Fmul = mul i32 %219, 3
  store i32 %219, i32* %Recovery2
  %Fcmp = icmp ne i32 %sum42, %Fmul
  br i1 %Fcmp, label %220, label %224

; <label>:220:                                    ; preds = %215
  %remThree = sdiv i32 %sum42, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %221, label %222

; <label>:221:                                    ; preds = %220
  store i32 %219, i32* %Recovery2, align 4
  br label %223

; <label>:222:                                    ; preds = %220
  store i32 %extractE, i32* %Recovery2, align 4
  br label %223

; <label>:223:                                    ; preds = %222, %221
  br label %224

; <label>:224:                                    ; preds = %215, %223
  %ReplaceInst = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst, i32* %32, align 4
  br label %174

; <label>:225:                                    ; preds = %174
  %226 = load i32, i32* %31, align 4
  %227 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %226
  %228 = load double, double* %227, align 8
  %229 = load double*, double** %16, align 4
  %230 = load i32, i32* %31, align 4
  %231 = getelementptr inbounds double, double* %229, i32 %230
  %232 = load double, double* %231, align 8
  %233 = fsub double %228, %232
  %234 = load i32, i32* %31, align 4
  %235 = getelementptr inbounds [12 x double], [12 x double]* %25, i32 0, i32 %234
  store double %233, double* %235, align 8
  %236 = load i32, i32* %31, align 4
  %237 = getelementptr inbounds [12 x double], [12 x double]* %25, i32 0, i32 %236
  %238 = load double, double* %237, align 8
  %239 = load i32, i32* %31, align 4
  %240 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %239
  %241 = load double, double* %240, align 8
  %242 = fmul double %238, %241
  %243 = load double*, double** %17, align 4
  %244 = load i32, i32* %31, align 4
  %245 = getelementptr inbounds double, double* %243, i32 %244
  store double %242, double* %245, align 8
  br label %246

; <label>:246:                                    ; preds = %225
  %247 = load i32, i32* %31, align 4
  %248 = load <4 x i32>, <4 x i32>* %allocaVec15, align 16
  %Vop43 = add <4 x i32> %248, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop43, <4 x i32>* %allocaVec15
  %249 = load <4 x i32>, <4 x i32>* %allocaVec15, align 4
  %extractE45 = extractelement <4 x i32> %249, i64 0
  %extractE46 = extractelement <4 x i32> %249, i64 1
  %extractE47 = extractelement <4 x i32> %249, i64 2
  %sum48 = add i32 %extractE45, %extractE46
  %sum49 = add i32 %sum48, %extractE47
  %250 = add nsw i32 %247, 1
  %Fmul44 = mul i32 %250, 3
  store i32 %250, i32* %Recovery3
  %Fcmp50 = icmp ne i32 %sum49, %Fmul44
  br i1 %Fcmp50, label %251, label %255

; <label>:251:                                    ; preds = %246
  %remThree51 = sdiv i32 %sum49, %extractE45
  %FcmpThree52 = icmp ne i32 %remThree51, 3
  br i1 %FcmpThree52, label %252, label %253

; <label>:252:                                    ; preds = %251
  store i32 %250, i32* %Recovery3, align 4
  br label %254

; <label>:253:                                    ; preds = %251
  store i32 %extractE45, i32* %Recovery3, align 4
  br label %254

; <label>:254:                                    ; preds = %253, %252
  br label %255

; <label>:255:                                    ; preds = %246, %254
  %ReplaceInst53 = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst53, i32* %31, align 4
  br label %163

; <label>:256:                                    ; preds = %163
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc double @Crystal_pow(i32, double*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec1 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec2 = alloca <2 x double>, align 16
  %CallInst = alloca double, align 4
  %CallInstVec = alloca <2 x double>, align 16
  %allocaVec3 = alloca <4 x i32>, align 16
  %3 = alloca i32, align 4
  %4 = alloca double*, align 4
  %5 = alloca [12 x double], align 8
  %6 = alloca [12 x double], align 8
  %allocaVec4 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %allocaVec5 = alloca <2 x double>, align 16
  %8 = alloca double, align 8
  %allocaVec6 = alloca <2 x double>, align 16
  %9 = alloca double, align 8
  %allocaVec7 = alloca <2 x double>, align 16
  %10 = alloca double, align 8
  %allocaVec8 = alloca <2 x double>, align 16
  %11 = alloca double, align 8
  %allocaVec9 = alloca <4 x i32>, align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 4
  store <2 x double> <double 6.000000e+04, double 6.000000e+04>, <2 x double>* %allocaVec4
  store double 6.000000e+04, double* %7, align 8
  store <2 x double> <double 5.000000e+04, double 5.000000e+04>, <2 x double>* %allocaVec5
  store double 5.000000e+04, double* %8, align 8
  store <2 x double> <double 1.000000e-06, double 1.000000e-06>, <2 x double>* %allocaVec6
  store double 1.000000e-06, double* %9, align 8
  store <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double>* %allocaVec7
  store double 2.000000e+00, double* %10, align 8
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %allocaVec8
  store double 1.000000e-02, double* %11, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec9
  store i32 0, i32* %12, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec9
  store i32 0, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %29, %2
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 %18
  store double 1.000000e+00, double* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sitofp i32 %20 to double
  store double %21, double* %CastInst
  %22 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %22, i32 0
  %insertCast10 = insertelement <2 x double> %insertCast, double %22, i32 1
  store <2 x double> %insertCast10, <2 x double>* %CastInstVec, align 4
  %23 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop = fmul <2 x double> <double 2.000000e-01, double 2.000000e-01>, %23
  %24 = fmul double 2.000000e-01, %21
  %Vop11 = fmul <2 x double> <double 9.000000e-01, double 9.000000e-01>, %Vop
  %25 = fmul double 9.000000e-01, %24
  %Vop12 = fdiv <2 x double> %Vop11, <double 1.200000e+01, double 1.200000e+01>
  %26 = fdiv double %25, 1.200000e+01
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 %27
  store double %26, double* %28, align 8
  br label %29

; <label>:29:                                     ; preds = %17
  %30 = load i32, i32* %12, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %30, i32 0
  %insertElmt13 = insertelement <4 x i32> %insertElmt, i32 %30, i32 1
  %insertElmt14 = insertelement <4 x i32> %insertElmt13, i32 %30, i32 2
  %insertElmt15 = insertelement <4 x i32> %insertElmt14, i32 %30, i32 3
  store <4 x i32> %insertElmt15, <4 x i32>* %allocaVec9, align 16
  %31 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop16 = add <4 x i32> %31, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop16, <4 x i32>* %allocaVec9
  %32 = add nsw i32 %30, 1
  store i32 %32, i32* %12, align 4
  br label %13

; <label>:33:                                     ; preds = %13
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec9
  store i32 0, i32* %12, align 4
  br label %34

; <label>:34:                                     ; preds = %70, %33
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

; <label>:38:                                     ; preds = %34
  %39 = load double, double* %7, align 8
  %insertElmt17 = insertelement <2 x double> undef, double %39, i32 0
  %insertElmt18 = insertelement <2 x double> %insertElmt17, double %39, i32 1
  store <2 x double> %insertElmt18, <2 x double>* %allocaVec4, align 16
  %40 = load double, double* %8, align 8
  %insertElmt19 = insertelement <2 x double> undef, double %40, i32 0
  %insertElmt20 = insertelement <2 x double> %insertElmt19, double %40, i32 1
  store <2 x double> %insertElmt20, <2 x double>* %allocaVec5, align 16
  %41 = load <2 x double>, <2 x double>* %allocaVec4, align 16
  %42 = load <2 x double>, <2 x double>* %allocaVec5, align 16
  %Vop21 = fdiv <2 x double> %41, %42
  %43 = fdiv double %39, %40
  %44 = load double*, double** %4, align 4
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds double, double* %44, i32 %45
  %47 = load double, double* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 %48
  %50 = load double, double* %49, align 8
  %51 = fmul double %47, %50
  %52 = load double, double* %9, align 8
  %53 = fadd double %51, %52
  %54 = load double, double* %10, align 8
  %55 = fdiv double %53, %54
  %56 = load double, double* %11, align 8
  %57 = call arm_aapcscc double @pow(double %55, double %56) #3
  %58 = fmul double %43, %57
  %59 = load i32, i32* %12, align 4
  %60 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 %59
  store double %58, double* %60, align 8
  br label %61

; <label>:61:                                     ; preds = %38
  %62 = load i32, i32* %12, align 4
  %63 = load <4 x i32>, <4 x i32>* %allocaVec9, align 16
  %Vop22 = add <4 x i32> %63, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop22, <4 x i32>* %allocaVec9
  %64 = load <4 x i32>, <4 x i32>* %allocaVec9, align 4
  %extractE = extractelement <4 x i32> %64, i64 0
  %extractE23 = extractelement <4 x i32> %64, i64 1
  %extractE24 = extractelement <4 x i32> %64, i64 2
  %sum = add i32 %extractE, %extractE23
  %sum25 = add i32 %sum, %extractE24
  %65 = add nsw i32 %62, 1
  %Fmul = mul i32 %65, 3
  store i32 %65, i32* %Recovery
  %Fcmp = icmp ne i32 %sum25, %Fmul
  br i1 %Fcmp, label %66, label %70

; <label>:66:                                     ; preds = %61
  %remThree = sdiv i32 %sum25, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %67, label %68

; <label>:67:                                     ; preds = %66
  store i32 %65, i32* %Recovery, align 4
  br label %69

; <label>:68:                                     ; preds = %66
  store i32 %extractE, i32* %Recovery, align 4
  br label %69

; <label>:69:                                     ; preds = %68, %67
  br label %70

; <label>:70:                                     ; preds = %61, %69
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %12, align 4
  br label %34

; <label>:71:                                     ; preds = %34
  %72 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 3
  %73 = load double, double* %72, align 8
  ret double %73
}

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #1

; Function Attrs: nounwind
define arm_aapcscc void @init(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec10 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec11 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec12 = alloca <2 x double>, align 16
  %CastInst2 = alloca double, align 4
  %CastInstVec3 = alloca <2 x double>, align 16
  %allocaVec13 = alloca <2 x double>, align 16
  %CastInst4 = alloca double, align 4
  %CastInstVec5 = alloca <2 x double>, align 16
  %allocaVec14 = alloca <2 x double>, align 16
  %CastInst6 = alloca double, align 4
  %CastInstVec7 = alloca <2 x double>, align 16
  %allocaVec15 = alloca <2 x double>, align 16
  %CastInst8 = alloca double, align 4
  %CastInstVec9 = alloca <2 x double>, align 16
  %9 = alloca double*, align 4
  %10 = alloca double*, align 4
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %13 = alloca double*, align 4
  %14 = alloca [12 x double]*, align 4
  %15 = alloca [12 x double]*, align 4
  %16 = alloca [12 x double]*, align 4
  %allocaVec16 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  %allocaVec17 = alloca <4 x i32>, align 16
  %18 = alloca i32, align 4
  store double* %0, double** %9, align 4
  store double* %1, double** %10, align 4
  store double* %2, double** %11, align 4
  store double* %3, double** %12, align 4
  store double* %4, double** %13, align 4
  store [12 x double]* %5, [12 x double]** %14, align 4
  store [12 x double]* %6, [12 x double]** %15, align 4
  store [12 x double]* %7, [12 x double]** %16, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec16
  store i32 0, i32* %17, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec17
  store i32 0, i32* %18, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec17
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %112, %8
  %20 = load i32, i32* %18, align 4
  %21 = icmp slt i32 %20, 12
  br i1 %21, label %22, label %113

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %18, align 4
  %24 = sitofp i32 %23 to double
  store double %24, double* %CastInst
  %25 = load double, double* %CastInst, align 4
  %insertCast = insertelement <2 x double> undef, double %25, i32 0
  %insertCast18 = insertelement <2 x double> %insertCast, double %25, i32 1
  store <2 x double> %insertCast18, <2 x double>* %CastInstVec, align 4
  %26 = load <2 x double>, <2 x double>* %CastInstVec, align 4
  %Vop = fmul <2 x double> <double 2.000000e-01, double 2.000000e-01>, %26
  %27 = fmul double 2.000000e-01, %24
  %Vop19 = fdiv <2 x double> %Vop, <double 1.200000e+01, double 1.200000e+01>
  %28 = fdiv double %27, 1.200000e+01
  %Vop20 = fadd <2 x double> <double 1.900000e+00, double 1.900000e+00>, %Vop19
  %29 = fadd double 1.900000e+00, %28
  %30 = load double*, double** %9, align 4
  %31 = load i32, i32* %18, align 4
  %32 = getelementptr inbounds double, double* %30, i32 %31
  store double %29, double* %32, align 8
  %33 = load double*, double** %9, align 4
  %34 = load i32, i32* %18, align 4
  %35 = getelementptr inbounds double, double* %33, i32 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %36, 1.000000e-03
  %38 = load double*, double** %10, align 4
  %39 = load i32, i32* %18, align 4
  %40 = getelementptr inbounds double, double* %38, i32 %39
  store double %37, double* %40, align 8
  %41 = load i32, i32* %18, align 4
  %42 = sitofp i32 %41 to double
  %43 = fadd double %42, 2.000000e+00
  %44 = load double*, double** %11, align 4
  %45 = load i32, i32* %18, align 4
  %46 = getelementptr inbounds double, double* %44, i32 %45
  store double %43, double* %46, align 8
  %47 = load double*, double** %12, align 4
  %48 = load i32, i32* %18, align 4
  %49 = getelementptr inbounds double, double* %47, i32 %48
  store double 3.000000e+01, double* %49, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sitofp i32 %50 to double
  %52 = fadd double %51, 3.500000e+00
  %53 = load double*, double** %13, align 4
  %54 = load i32, i32* %18, align 4
  %55 = getelementptr inbounds double, double* %53, i32 %54
  store double %52, double* %55, align 8
  store i32 0, i32* %17, align 4
  br label %56

; <label>:56:                                     ; preds = %101, %22
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %57, 12
  br i1 %58, label %59, label %102

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %17, align 4
  %61 = sitofp i32 %60 to double
  store double %61, double* %CastInst6
  %62 = load double, double* %CastInst6, align 4
  %insertCast21 = insertelement <2 x double> undef, double %62, i32 0
  %insertCast22 = insertelement <2 x double> %insertCast21, double %62, i32 1
  store <2 x double> %insertCast22, <2 x double>* %CastInstVec7, align 4
  %63 = load <2 x double>, <2 x double>* %CastInstVec7, align 4
  %Vop23 = fmul <2 x double> <double 1.000000e-05, double 1.000000e-05>, %63
  %64 = fmul double 1.000000e-05, %61
  %65 = load i32, i32* %18, align 4
  %66 = sitofp i32 %65 to double
  store double %66, double* %CastInst8
  %67 = load double, double* %CastInst8, align 4
  %insertCast24 = insertelement <2 x double> undef, double %67, i32 0
  %insertCast25 = insertelement <2 x double> %insertCast24, double %67, i32 1
  store <2 x double> %insertCast25, <2 x double>* %CastInstVec9, align 4
  %68 = load <2 x double>, <2 x double>* %CastInstVec9, align 4
  %Vop26 = fmul <2 x double> %Vop23, %68
  %69 = fmul double %64, %66
  %Vop27 = fadd <2 x double> <double 1.000000e-02, double 1.000000e-02>, %Vop26
  %70 = fadd double 1.000000e-02, %69
  %71 = load [12 x double]*, [12 x double]** %14, align 4
  %72 = load i32, i32* %18, align 4
  %73 = getelementptr inbounds [12 x double], [12 x double]* %71, i32 %72
  %74 = load i32, i32* %17, align 4
  %75 = getelementptr inbounds [12 x double], [12 x double]* %73, i32 0, i32 %74
  store double %70, double* %75, align 8
  %76 = load i32, i32* %17, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %76, i32 0
  %insertElmt28 = insertelement <4 x i32> %insertElmt, i32 %76, i32 1
  %insertElmt29 = insertelement <4 x i32> %insertElmt28, i32 %76, i32 2
  %insertElmt30 = insertelement <4 x i32> %insertElmt29, i32 %76, i32 3
  store <4 x i32> %insertElmt30, <4 x i32>* %allocaVec16, align 16
  %77 = load i32, i32* %18, align 4
  %insertElmt31 = insertelement <4 x i32> undef, i32 %77, i32 0
  %insertElmt32 = insertelement <4 x i32> %insertElmt31, i32 %77, i32 1
  %insertElmt33 = insertelement <4 x i32> %insertElmt32, i32 %77, i32 2
  %insertElmt34 = insertelement <4 x i32> %insertElmt33, i32 %77, i32 3
  store <4 x i32> %insertElmt34, <4 x i32>* %allocaVec17, align 16
  %78 = load <4 x i32>, <4 x i32>* %allocaVec16, align 16
  %79 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop35 = add <4 x i32> %78, %79
  %80 = add nsw i32 %76, %77
  %81 = sitofp i32 %80 to double
  %82 = load [12 x double]*, [12 x double]** %15, align 4
  %83 = load i32, i32* %18, align 4
  %84 = getelementptr inbounds [12 x double], [12 x double]* %82, i32 %83
  %85 = load i32, i32* %17, align 4
  %86 = getelementptr inbounds [12 x double], [12 x double]* %84, i32 0, i32 %85
  store double %81, double* %86, align 8
  %87 = load [12 x double]*, [12 x double]** %16, align 4
  %88 = load i32, i32* %18, align 4
  %89 = getelementptr inbounds [12 x double], [12 x double]* %87, i32 %88
  %90 = load i32, i32* %17, align 4
  %91 = getelementptr inbounds [12 x double], [12 x double]* %89, i32 0, i32 %90
  store double 0.000000e+00, double* %91, align 8
  br label %92

; <label>:92:                                     ; preds = %59
  %93 = load i32, i32* %17, align 4
  %insertElmt36 = insertelement <4 x i32> undef, i32 %93, i32 0
  %insertElmt37 = insertelement <4 x i32> %insertElmt36, i32 %93, i32 1
  %insertElmt38 = insertelement <4 x i32> %insertElmt37, i32 %93, i32 2
  %insertElmt39 = insertelement <4 x i32> %insertElmt38, i32 %93, i32 3
  store <4 x i32> %insertElmt39, <4 x i32>* %allocaVec16, align 16
  %94 = load <4 x i32>, <4 x i32>* %allocaVec16, align 16
  %Vop40 = add <4 x i32> %94, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop40, <4 x i32>* %allocaVec16
  %95 = load <4 x i32>, <4 x i32>* %allocaVec16, align 4
  %extractE = extractelement <4 x i32> %95, i64 0
  %extractE41 = extractelement <4 x i32> %95, i64 1
  %extractE42 = extractelement <4 x i32> %95, i64 2
  %sum = add i32 %extractE, %extractE41
  %sum43 = add i32 %sum, %extractE42
  %96 = add nsw i32 %93, 1
  %Fmul = mul i32 %96, 3
  store i32 %96, i32* %Recovery
  %Fcmp = icmp ne i32 %sum43, %Fmul
  br i1 %Fcmp, label %97, label %101

; <label>:97:                                     ; preds = %92
  %remThree = sdiv i32 %sum43, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %98, label %99

; <label>:98:                                     ; preds = %97
  store i32 %96, i32* %Recovery, align 4
  br label %100

; <label>:99:                                     ; preds = %97
  store i32 %extractE, i32* %Recovery, align 4
  br label %100

; <label>:100:                                    ; preds = %99, %98
  br label %101

; <label>:101:                                    ; preds = %92, %100
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %17, align 4
  br label %56

; <label>:102:                                    ; preds = %56
  br label %103

; <label>:103:                                    ; preds = %102
  %104 = load i32, i32* %18, align 4
  %insertElmt44 = insertelement <4 x i32> undef, i32 %104, i32 0
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %104, i32 1
  %insertElmt46 = insertelement <4 x i32> %insertElmt45, i32 %104, i32 2
  %insertElmt47 = insertelement <4 x i32> %insertElmt46, i32 %104, i32 3
  store <4 x i32> %insertElmt47, <4 x i32>* %allocaVec17, align 16
  %105 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop48 = add <4 x i32> %105, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop48, <4 x i32>* %allocaVec17
  %106 = load <4 x i32>, <4 x i32>* %allocaVec17, align 4
  %extractE50 = extractelement <4 x i32> %106, i64 0
  %extractE51 = extractelement <4 x i32> %106, i64 1
  %extractE52 = extractelement <4 x i32> %106, i64 2
  %sum53 = add i32 %extractE50, %extractE51
  %sum54 = add i32 %sum53, %extractE52
  %107 = add nsw i32 %104, 1
  %Fmul49 = mul i32 %107, 3
  store i32 %107, i32* %Recovery1
  %Fcmp55 = icmp ne i32 %sum54, %Fmul49
  br i1 %Fcmp55, label %108, label %112

; <label>:108:                                    ; preds = %103
  %remThree56 = sdiv i32 %sum54, %extractE50
  %FcmpThree57 = icmp ne i32 %remThree56, 3
  br i1 %FcmpThree57, label %109, label %110

; <label>:109:                                    ; preds = %108
  store i32 %107, i32* %Recovery1, align 4
  br label %111

; <label>:110:                                    ; preds = %108
  store i32 %extractE50, i32* %Recovery1, align 4
  br label %111

; <label>:111:                                    ; preds = %110, %109
  br label %112

; <label>:112:                                    ; preds = %103, %111
  %ReplaceInst58 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst58, i32* %18, align 4
  br label %19

; <label>:113:                                    ; preds = %19
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x i32>, align 16
  %Recovery = alloca i32, align 4
  %allocaVec7 = alloca <4 x i32>, align 16
  %Recovery1 = alloca i32, align 4
  %allocaVec8 = alloca <2 x double>, align 16
  %Recovery2 = alloca double, align 8
  %allocaVec9 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec10 = alloca <2 x double>, align 16
  %CastInst3 = alloca double, align 4
  %CastInstVec4 = alloca <2 x double>, align 16
  %allocaVec11 = alloca <2 x double>, align 16
  %CastInst5 = alloca double, align 4
  %CastInstVec6 = alloca <2 x double>, align 16
  %allocaVec12 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca %struct.timeval, align 4
  %allocaVec13 = alloca <4 x i32>, align 16
  %4 = alloca i32, align 4
  %allocaVec14 = alloca <4 x i32>, align 16
  %5 = alloca i32, align 4
  %6 = alloca [12 x double], align 8
  %7 = alloca [12 x double], align 8
  %8 = alloca [12 x double], align 8
  %9 = alloca [12 x double], align 8
  %10 = alloca [12 x double], align 8
  %11 = alloca [12 x [12 x double]], align 8
  %12 = alloca [12 x [12 x double]], align 8
  %13 = alloca [12 x [12 x double]], align 8
  %allocaVec15 = alloca <2 x double>, align 16
  %14 = alloca double, align 8
  %allocaVec16 = alloca <2 x double>, align 16
  %15 = alloca double, align 8
  %allocaVec17 = alloca <4 x i32>, align 16
  %16 = alloca i32, align 4
  %allocaVec18 = alloca <4 x i32>, align 16
  %17 = alloca i32, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec12
  store i32 0, i32* %1, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec13
  store i32 0, i32* %4, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec14
  store i32 0, i32* %5, align 4
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec15
  store double 0.000000e+00, double* %14, align 8
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec16
  store double 0.000000e+00, double* %15, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec17
  store i32 0, i32* %16, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec18
  store i32 0, i32* %17, align 4
  %18 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %19 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 0
  %20 = getelementptr inbounds [12 x double], [12 x double]* %7, i32 0, i32 0
  %21 = getelementptr inbounds [12 x double], [12 x double]* %8, i32 0, i32 0
  %22 = getelementptr inbounds [12 x double], [12 x double]* %9, i32 0, i32 0
  %23 = getelementptr inbounds [12 x double], [12 x double]* %10, i32 0, i32 0
  %24 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i32 0, i32 0
  %25 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %12, i32 0, i32 0
  %26 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %13, i32 0, i32 0
  call arm_aapcscc void @init(double* %19, double* %20, double* %21, double* %22, double* %23, [12 x double]* %24, [12 x double]* %25, [12 x double]* %26)
  %27 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %2, i8* null)
  %28 = call arm_aapcscc i32 @clock()
  store i32 %28, i32* %4, align 4
  %29 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 0
  %30 = getelementptr inbounds [12 x double], [12 x double]* %7, i32 0, i32 0
  %31 = getelementptr inbounds [12 x double], [12 x double]* %8, i32 0, i32 0
  %32 = getelementptr inbounds [12 x double], [12 x double]* %9, i32 0, i32 0
  %33 = getelementptr inbounds [12 x double], [12 x double]* %10, i32 0, i32 0
  %34 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i32 0, i32 0
  %35 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %12, i32 0, i32 0
  %36 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %13, i32 0, i32 0
  %37 = call arm_aapcscc double @SPEdriver(double* %29, double* %30, double* %31, double* %32, double* %33, [12 x double]* %34, [12 x double]* %35, [12 x double]* %36)
  store double %37, double* %15, align 8
  %38 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %3, i8* null)
  %39 = call arm_aapcscc i32 @clock()
  store i32 %39, i32* %5, align 4
  %40 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %41 = load double, double* %15, align 8
  %42 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), double %41)
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec17
  store i32 0, i32* %16, align 4
  br label %43

; <label>:43:                                     ; preds = %79, %0
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 12
  br i1 %45, label %46, label %80

; <label>:46:                                     ; preds = %43
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec18
  store i32 0, i32* %17, align 4
  br label %47

; <label>:47:                                     ; preds = %68, %46
  %48 = load i32, i32* %17, align 4
  %49 = icmp slt i32 %48, 12
  br i1 %49, label %50, label %69

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i32 0, i32 %53
  %55 = load i32, i32* %17, align 4
  %56 = getelementptr inbounds [12 x double], [12 x double]* %54, i32 0, i32 %55
  %57 = load double, double* %56, align 8
  %58 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %51, i32 %52, double %57)
  br label %59

; <label>:59:                                     ; preds = %50
  %60 = load i32, i32* %17, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %60, i32 0
  %insertElmt19 = insertelement <4 x i32> %insertElmt, i32 %60, i32 1
  %insertElmt20 = insertelement <4 x i32> %insertElmt19, i32 %60, i32 2
  %insertElmt21 = insertelement <4 x i32> %insertElmt20, i32 %60, i32 3
  store <4 x i32> %insertElmt21, <4 x i32>* %allocaVec18, align 16
  %61 = load <4 x i32>, <4 x i32>* %allocaVec18, align 16
  %Vop = add <4 x i32> %61, <i32 4, i32 4, i32 4, i32 4>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec18
  %62 = load <4 x i32>, <4 x i32>* %allocaVec18, align 4
  %extractE = extractelement <4 x i32> %62, i64 0
  %extractE22 = extractelement <4 x i32> %62, i64 1
  %extractE23 = extractelement <4 x i32> %62, i64 2
  %sum = add i32 %extractE, %extractE22
  %sum24 = add i32 %sum, %extractE23
  %63 = add nsw i32 %60, 4
  %Fmul = mul i32 %63, 3
  store i32 %63, i32* %Recovery
  %Fcmp = icmp ne i32 %sum24, %Fmul
  br i1 %Fcmp, label %64, label %68

; <label>:64:                                     ; preds = %59
  %remThree = sdiv i32 %sum24, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %65, label %66

; <label>:65:                                     ; preds = %64
  store i32 %63, i32* %Recovery, align 4
  br label %67

; <label>:66:                                     ; preds = %64
  store i32 %extractE, i32* %Recovery, align 4
  br label %67

; <label>:67:                                     ; preds = %66, %65
  br label %68

; <label>:68:                                     ; preds = %59, %67
  %ReplaceInst = load i32, i32* %Recovery, align 4
  store i32 %ReplaceInst, i32* %17, align 4
  br label %47

; <label>:69:                                     ; preds = %47
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %16, align 4
  %insertElmt25 = insertelement <4 x i32> undef, i32 %71, i32 0
  %insertElmt26 = insertelement <4 x i32> %insertElmt25, i32 %71, i32 1
  %insertElmt27 = insertelement <4 x i32> %insertElmt26, i32 %71, i32 2
  %insertElmt28 = insertelement <4 x i32> %insertElmt27, i32 %71, i32 3
  store <4 x i32> %insertElmt28, <4 x i32>* %allocaVec17, align 16
  %72 = load <4 x i32>, <4 x i32>* %allocaVec17, align 16
  %Vop29 = add <4 x i32> %72, <i32 4, i32 4, i32 4, i32 4>
  store <4 x i32> %Vop29, <4 x i32>* %allocaVec17
  %73 = load <4 x i32>, <4 x i32>* %allocaVec17, align 4
  %extractE31 = extractelement <4 x i32> %73, i64 0
  %extractE32 = extractelement <4 x i32> %73, i64 1
  %extractE33 = extractelement <4 x i32> %73, i64 2
  %sum34 = add i32 %extractE31, %extractE32
  %sum35 = add i32 %sum34, %extractE33
  %74 = add nsw i32 %71, 4
  %Fmul30 = mul i32 %74, 3
  store i32 %74, i32* %Recovery1
  %Fcmp36 = icmp ne i32 %sum35, %Fmul30
  br i1 %Fcmp36, label %75, label %79

; <label>:75:                                     ; preds = %70
  %remThree37 = sdiv i32 %sum35, %extractE31
  %FcmpThree38 = icmp ne i32 %remThree37, 3
  br i1 %FcmpThree38, label %76, label %77

; <label>:76:                                     ; preds = %75
  store i32 %74, i32* %Recovery1, align 4
  br label %78

; <label>:77:                                     ; preds = %75
  store i32 %extractE31, i32* %Recovery1, align 4
  br label %78

; <label>:78:                                     ; preds = %77, %76
  br label %79

; <label>:79:                                     ; preds = %70, %78
  %ReplaceInst39 = load i32, i32* %Recovery1, align 4
  store i32 %ReplaceInst39, i32* %16, align 4
  br label %43

; <label>:80:                                     ; preds = %43
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %82, %84
  %86 = sitofp i32 %85 to double
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %88, %90
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %92, 1.000000e+06
  %94 = fadd double %86, %93
  store double %94, double* %14, align 8
  %95 = load double, double* %14, align 8
  %96 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %95)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sitofp i32 %99 to double
  %101 = fdiv double %100, 1.000000e+06
  %102 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), double %101)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #2

declare arm_aapcscc i32 @gettimeofday(%struct.timeval*, i8*) #2

declare arm_aapcscc i32 @clock() #2

; Function Attrs: nounwind
define arm_aapcscc double @SPEdriver(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %allocaVec = alloca <2 x double>, align 16
  %Recovery = alloca double, align 8
  %allocaVec22 = alloca <2 x double>, align 16
  %Recovery1 = alloca double, align 8
  %allocaVec23 = alloca <4 x i32>, align 16
  %Recovery2 = alloca i32, align 4
  %allocaVec24 = alloca <4 x i32>, align 16
  %Recovery3 = alloca i32, align 4
  %allocaVec25 = alloca <4 x i32>, align 16
  %Recovery4 = alloca i32, align 4
  %allocaVec26 = alloca <2 x double>, align 16
  %Recovery5 = alloca double, align 8
  %allocaVec27 = alloca <2 x double>, align 16
  %CastInst = alloca double, align 4
  %CastInstVec = alloca <2 x double>, align 16
  %allocaVec28 = alloca <2 x double>, align 16
  %CastInst6 = alloca double, align 4
  %CastInstVec7 = alloca <2 x double>, align 16
  %allocaVec29 = alloca <2 x double>, align 16
  %CastInst8 = alloca double, align 4
  %CastInstVec9 = alloca <2 x double>, align 16
  %allocaVec30 = alloca <2 x double>, align 16
  %CastInst10 = alloca double, align 4
  %CastInstVec11 = alloca <2 x double>, align 16
  %allocaVec31 = alloca <2 x double>, align 16
  %CastInst12 = alloca double, align 4
  %CastInstVec13 = alloca <2 x double>, align 16
  %allocaVec32 = alloca <2 x double>, align 16
  %CastInst14 = alloca double, align 4
  %CastInstVec15 = alloca <2 x double>, align 16
  %allocaVec33 = alloca <2 x double>, align 16
  %CastInst16 = alloca double, align 4
  %CastInstVec17 = alloca <2 x double>, align 16
  %allocaVec34 = alloca <2 x double>, align 16
  %CastInst18 = alloca double, align 4
  %CastInstVec19 = alloca <2 x double>, align 16
  %allocaVec35 = alloca <2 x double>, align 16
  %CastInst20 = alloca double, align 4
  %CastInstVec21 = alloca <2 x double>, align 16
  %9 = alloca double*, align 4
  %10 = alloca double*, align 4
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %13 = alloca double*, align 4
  %14 = alloca [12 x double]*, align 4
  %15 = alloca [12 x double]*, align 4
  %16 = alloca [12 x double]*, align 4
  %17 = alloca %struct.timeval, align 4
  %18 = alloca %struct.timeval, align 4
  %allocaVec36 = alloca <4 x i32>, align 16
  %19 = alloca i32, align 4
  %allocaVec37 = alloca <4 x i32>, align 16
  %20 = alloca i32, align 4
  %allocaVec38 = alloca <2 x double>, align 16
  %21 = alloca double, align 8
  %allocaVec39 = alloca <2 x double>, align 16
  %22 = alloca double, align 8
  %allocaVec40 = alloca <4 x i32>, align 16
  %23 = alloca i32, align 4
  %allocaVec41 = alloca <4 x i32>, align 16
  %24 = alloca i32, align 4
  %allocaVec42 = alloca <4 x i32>, align 16
  %25 = alloca i32, align 4
  %allocaVec43 = alloca <4 x i32>, align 16
  %26 = alloca i32, align 4
  store double* %0, double** %9, align 4
  store double* %1, double** %10, align 4
  store double* %2, double** %11, align 4
  store double* %3, double** %12, align 4
  store double* %4, double** %13, align 4
  store [12 x double]* %5, [12 x double]** %14, align 4
  store [12 x double]* %6, [12 x double]** %15, align 4
  store [12 x double]* %7, [12 x double]** %16, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec36
  store i32 0, i32* %19, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec37
  store i32 0, i32* %20, align 4
  store <2 x double> zeroinitializer, <2 x double>* %allocaVec38
  store double 0.000000e+00, double* %21, align 8
  store <4 x i32> <i32 1000000, i32 1000000, i32 1000000, i32 1000000>, <4 x i32>* %allocaVec40
  store i32 1000000, i32* %23, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec41
  store i32 0, i32* %24, align 4
  %27 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %28 = call arm_aapcscc i32 @clock()
  store i32 %28, i32* %19, align 4
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec41
  store i32 0, i32* %24, align 4
  br label %29

; <label>:29:                                     ; preds = %41, %8
  %30 = load i32, i32* %24, align 4
  %31 = icmp slt i32 %30, 1000000
  br i1 %31, label %32, label %45

; <label>:32:                                     ; preds = %29
  %33 = load double*, double** %9, align 4
  %34 = load double*, double** %10, align 4
  %35 = load double*, double** %11, align 4
  %36 = load double*, double** %12, align 4
  %37 = load double*, double** %13, align 4
  %38 = load [12 x double]*, [12 x double]** %14, align 4
  %39 = load [12 x double]*, [12 x double]** %15, align 4
  %40 = load [12 x double]*, [12 x double]** %16, align 4
  call arm_aapcscc void @Crystal_div(i32 12, double 1.000000e-02, double* %33, double* %34, double* %35, double* %36, double* %37, [12 x double]* %38, [12 x double]* %39, [12 x double]* %40)
  br label %41

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %24, align 4
  %insertElmt = insertelement <4 x i32> undef, i32 %42, i32 0
  %insertElmt44 = insertelement <4 x i32> %insertElmt, i32 %42, i32 1
  %insertElmt45 = insertelement <4 x i32> %insertElmt44, i32 %42, i32 2
  %insertElmt46 = insertelement <4 x i32> %insertElmt45, i32 %42, i32 3
  store <4 x i32> %insertElmt46, <4 x i32>* %allocaVec41, align 16
  %43 = load <4 x i32>, <4 x i32>* %allocaVec41, align 16
  %Vop = add <4 x i32> %43, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop, <4 x i32>* %allocaVec41
  %44 = add nsw i32 %42, 1
  store i32 %44, i32* %24, align 4
  br label %29

; <label>:45:                                     ; preds = %29
  %46 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %47 = call arm_aapcscc i32 @clock()
  store i32 %47, i32* %20, align 4
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %49, %51
  %53 = sitofp i32 %52 to double
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %55, %57
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %59, 1.000000e+06
  %61 = fadd double %53, %60
  store double %61, double* %21, align 8
  %62 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  %63 = load double, double* %21, align 8
  %64 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.7, i32 0, i32 0), double %63)
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %19, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 1.000000e+06
  %70 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.8, i32 0, i32 0), double %69)
  %71 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %72 = call arm_aapcscc i32 @clock()
  store i32 %72, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %73

; <label>:73:                                     ; preds = %79, %45
  %74 = load i32, i32* %24, align 4
  %75 = icmp slt i32 %74, 1000000
  br i1 %75, label %76, label %83

; <label>:76:                                     ; preds = %73
  %77 = load double*, double** %9, align 4
  %78 = call arm_aapcscc double @Crystal_pow(i32 12, double* %77)
  store double %78, double* %22, align 8
  br label %79

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %24, align 4
  %81 = load <4 x i32>, <4 x i32>* %allocaVec41, align 16
  %Vop47 = add <4 x i32> %81, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop47, <4 x i32>* %allocaVec41
  %82 = add nsw i32 %80, 1
  store i32 %82, i32* %24, align 4
  br label %73

; <label>:83:                                     ; preds = %73
  %84 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %85 = call arm_aapcscc i32 @clock()
  store i32 %85, i32* %20, align 4
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %87, %89
  %91 = sitofp i32 %90 to double
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %93, %95
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %97, 1.000000e+06
  %99 = fadd double %91, %98
  store double %99, double* %21, align 8
  %100 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.9, i32 0, i32 0))
  %101 = load double, double* %21, align 8
  %102 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.7, i32 0, i32 0), double %101)
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %19, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %106, 1.000000e+06
  %108 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.8, i32 0, i32 0), double %107)
  %109 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %110 = call arm_aapcscc i32 @clock()
  store i32 %110, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %111

; <label>:111:                                    ; preds = %135, %83
  %112 = load i32, i32* %24, align 4
  %113 = icmp slt i32 %112, 12
  br i1 %113, label %114, label %139

; <label>:114:                                    ; preds = %111
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec42
  store i32 0, i32* %25, align 4
  br label %115

; <label>:115:                                    ; preds = %130, %114
  %116 = load i32, i32* %25, align 4
  %117 = icmp slt i32 %116, 12
  br i1 %117, label %118, label %134

; <label>:118:                                    ; preds = %115
  %119 = load [12 x double]*, [12 x double]** %14, align 4
  %120 = load i32, i32* %24, align 4
  %121 = getelementptr inbounds [12 x double], [12 x double]* %119, i32 %120
  %122 = load i32, i32* %25, align 4
  %123 = getelementptr inbounds [12 x double], [12 x double]* %121, i32 0, i32 %122
  %124 = load double, double* %123, align 8
  %125 = load [12 x double]*, [12 x double]** %16, align 4
  %126 = load i32, i32* %24, align 4
  %127 = getelementptr inbounds [12 x double], [12 x double]* %125, i32 %126
  %128 = load i32, i32* %25, align 4
  %129 = getelementptr inbounds [12 x double], [12 x double]* %127, i32 0, i32 %128
  store double %124, double* %129, align 8
  br label %130

; <label>:130:                                    ; preds = %118
  %131 = load i32, i32* %25, align 4
  %insertElmt48 = insertelement <4 x i32> undef, i32 %131, i32 0
  %insertElmt49 = insertelement <4 x i32> %insertElmt48, i32 %131, i32 1
  %insertElmt50 = insertelement <4 x i32> %insertElmt49, i32 %131, i32 2
  %insertElmt51 = insertelement <4 x i32> %insertElmt50, i32 %131, i32 3
  store <4 x i32> %insertElmt51, <4 x i32>* %allocaVec42, align 16
  %132 = load <4 x i32>, <4 x i32>* %allocaVec42, align 16
  %Vop52 = add <4 x i32> %132, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop52, <4 x i32>* %allocaVec42
  %133 = add nsw i32 %131, 1
  store i32 %133, i32* %25, align 4
  br label %115

; <label>:134:                                    ; preds = %115
  br label %135

; <label>:135:                                    ; preds = %134
  %136 = load i32, i32* %24, align 4
  %137 = load <4 x i32>, <4 x i32>* %allocaVec41, align 16
  %Vop53 = add <4 x i32> %137, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop53, <4 x i32>* %allocaVec41
  %138 = add nsw i32 %136, 1
  store i32 %138, i32* %24, align 4
  br label %111

; <label>:139:                                    ; preds = %111
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec41
  store i32 0, i32* %24, align 4
  br label %140

; <label>:140:                                    ; preds = %197, %139
  %141 = load i32, i32* %24, align 4
  %142 = icmp slt i32 %141, 1000000
  br i1 %142, label %143, label %198

; <label>:143:                                    ; preds = %140
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec42
  store i32 0, i32* %25, align 4
  br label %144

; <label>:144:                                    ; preds = %183, %143
  %145 = load i32, i32* %25, align 4
  %146 = icmp slt i32 %145, 12
  br i1 %146, label %147, label %184

; <label>:147:                                    ; preds = %144
  store <4 x i32> zeroinitializer, <4 x i32>* %allocaVec43
  store i32 0, i32* %26, align 4
  br label %148

; <label>:148:                                    ; preds = %172, %147
  %149 = load i32, i32* %26, align 4
  %150 = icmp slt i32 %149, 12
  br i1 %150, label %151, label %173

; <label>:151:                                    ; preds = %148
  %152 = load [12 x double]*, [12 x double]** %16, align 4
  %153 = load i32, i32* %25, align 4
  %154 = getelementptr inbounds [12 x double], [12 x double]* %152, i32 %153
  %155 = load i32, i32* %26, align 4
  %156 = getelementptr inbounds [12 x double], [12 x double]* %154, i32 0, i32 %155
  %157 = load double, double* %156, align 8
  %158 = load [12 x double]*, [12 x double]** %14, align 4
  %159 = load i32, i32* %25, align 4
  %160 = getelementptr inbounds [12 x double], [12 x double]* %158, i32 %159
  %161 = load i32, i32* %26, align 4
  %162 = getelementptr inbounds [12 x double], [12 x double]* %160, i32 0, i32 %161
  store double %157, double* %162, align 8
  br label %163

; <label>:163:                                    ; preds = %151
  %164 = load i32, i32* %26, align 4
  %insertElmt54 = insertelement <4 x i32> undef, i32 %164, i32 0
  %insertElmt55 = insertelement <4 x i32> %insertElmt54, i32 %164, i32 1
  %insertElmt56 = insertelement <4 x i32> %insertElmt55, i32 %164, i32 2
  %insertElmt57 = insertelement <4 x i32> %insertElmt56, i32 %164, i32 3
  store <4 x i32> %insertElmt57, <4 x i32>* %allocaVec43, align 16
  %165 = load <4 x i32>, <4 x i32>* %allocaVec43, align 16
  %Vop58 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop58, <4 x i32>* %allocaVec43
  %166 = load <4 x i32>, <4 x i32>* %allocaVec43, align 4
  %extractE = extractelement <4 x i32> %166, i64 0
  %extractE59 = extractelement <4 x i32> %166, i64 1
  %extractE60 = extractelement <4 x i32> %166, i64 2
  %sum = add i32 %extractE, %extractE59
  %sum61 = add i32 %sum, %extractE60
  %167 = add nsw i32 %164, 1
  %Fmul = mul i32 %167, 3
  store i32 %167, i32* %Recovery2
  %Fcmp = icmp ne i32 %sum61, %Fmul
  br i1 %Fcmp, label %168, label %172

; <label>:168:                                    ; preds = %163
  %remThree = sdiv i32 %sum61, %extractE
  %FcmpThree = icmp ne i32 %remThree, 3
  br i1 %FcmpThree, label %169, label %170

; <label>:169:                                    ; preds = %168
  store i32 %167, i32* %Recovery2, align 4
  br label %171

; <label>:170:                                    ; preds = %168
  store i32 %extractE, i32* %Recovery2, align 4
  br label %171

; <label>:171:                                    ; preds = %170, %169
  br label %172

; <label>:172:                                    ; preds = %163, %171
  %ReplaceInst = load i32, i32* %Recovery2, align 4
  store i32 %ReplaceInst, i32* %26, align 4
  br label %148

; <label>:173:                                    ; preds = %148
  br label %174

; <label>:174:                                    ; preds = %173
  %175 = load i32, i32* %25, align 4
  %176 = load <4 x i32>, <4 x i32>* %allocaVec42, align 16
  %Vop62 = add <4 x i32> %176, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop62, <4 x i32>* %allocaVec42
  %177 = load <4 x i32>, <4 x i32>* %allocaVec42, align 4
  %extractE64 = extractelement <4 x i32> %177, i64 0
  %extractE65 = extractelement <4 x i32> %177, i64 1
  %extractE66 = extractelement <4 x i32> %177, i64 2
  %sum67 = add i32 %extractE64, %extractE65
  %sum68 = add i32 %sum67, %extractE66
  %178 = add nsw i32 %175, 1
  %Fmul63 = mul i32 %178, 3
  store i32 %178, i32* %Recovery3
  %Fcmp69 = icmp ne i32 %sum68, %Fmul63
  br i1 %Fcmp69, label %179, label %183

; <label>:179:                                    ; preds = %174
  %remThree78 = sdiv i32 %sum68, %extractE64
  %FcmpThree79 = icmp ne i32 %remThree78, 3
  br i1 %FcmpThree79, label %180, label %181

; <label>:180:                                    ; preds = %179
  store i32 %178, i32* %Recovery3, align 4
  br label %182

; <label>:181:                                    ; preds = %179
  store i32 %extractE64, i32* %Recovery3, align 4
  br label %182

; <label>:182:                                    ; preds = %181, %180
  br label %183

; <label>:183:                                    ; preds = %174, %182
  %ReplaceInst82 = load i32, i32* %Recovery3, align 4
  store i32 %ReplaceInst82, i32* %25, align 4
  br label %144

; <label>:184:                                    ; preds = %144
  %185 = load [12 x double]*, [12 x double]** %14, align 4
  %186 = load double*, double** %11, align 4
  %187 = load double*, double** %13, align 4
  call arm_aapcscc void @Crystal_Cholesky(i32 12, [12 x double]* %185, double* %186, double* %187)
  br label %188

; <label>:188:                                    ; preds = %184
  %189 = load i32, i32* %24, align 4
  %190 = load <4 x i32>, <4 x i32>* %allocaVec41, align 16
  %Vop70 = add <4 x i32> %190, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %Vop70, <4 x i32>* %allocaVec41
  %191 = load <4 x i32>, <4 x i32>* %allocaVec41, align 4
  %extractE72 = extractelement <4 x i32> %191, i64 0
  %extractE73 = extractelement <4 x i32> %191, i64 1
  %extractE74 = extractelement <4 x i32> %191, i64 2
  %sum75 = add i32 %extractE72, %extractE73
  %sum76 = add i32 %sum75, %extractE74
  %192 = add nsw i32 %189, 1
  %Fmul71 = mul i32 %192, 3
  store i32 %192, i32* %Recovery4
  %Fcmp77 = icmp ne i32 %sum76, %Fmul71
  br i1 %Fcmp77, label %193, label %197

; <label>:193:                                    ; preds = %188
  %remThree80 = sdiv i32 %sum76, %extractE72
  %FcmpThree81 = icmp ne i32 %remThree80, 3
  br i1 %FcmpThree81, label %194, label %195

; <label>:194:                                    ; preds = %193
  store i32 %192, i32* %Recovery4, align 4
  br label %196

; <label>:195:                                    ; preds = %193
  store i32 %extractE72, i32* %Recovery4, align 4
  br label %196

; <label>:196:                                    ; preds = %195, %194
  br label %197

; <label>:197:                                    ; preds = %188, %196
  %ReplaceInst83 = load i32, i32* %Recovery4, align 4
  store i32 %ReplaceInst83, i32* %24, align 4
  br label %140

; <label>:198:                                    ; preds = %140
  %199 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %200 = call arm_aapcscc i32 @clock()
  store i32 %200, i32* %20, align 4
  %201 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %202, %204
  %206 = sitofp i32 %205 to double
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %208, %210
  %212 = sitofp i32 %211 to double
  %213 = fdiv double %212, 1.000000e+06
  %214 = fadd double %206, %213
  store double %214, double* %21, align 8
  %215 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4.10, i32 0, i32 0))
  %216 = load double, double* %21, align 8
  %217 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.7, i32 0, i32 0), double %216)
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %19, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sitofp i32 %220 to double
  %222 = fdiv double %221, 1.000000e+06
  %223 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.8, i32 0, i32 0), double %222)
  %224 = load double, double* %22, align 8
  ret double %224
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 4.0.0 (trunk)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
