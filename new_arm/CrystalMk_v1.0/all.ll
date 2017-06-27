; ModuleID = 'all.bc'
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
  %5 = alloca i32, align 4
  %6 = alloca [12 x double]*, align 4
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store [12 x double]* %1, [12 x double]** %6, align 4
  store double* %2, double** %7, align 4
  store double* %3, double** %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

; <label>:13:                                     ; preds = %25, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

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
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %13

; <label>:28:                                     ; preds = %13
  store i32 1, i32* %9, align 4
  br label %29

; <label>:29:                                     ; preds = %48, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

; <label>:33:                                     ; preds = %29
  %34 = load [12 x double]*, [12 x double]** %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [12 x double], [12 x double]* %34, i32 %35
  %37 = getelementptr inbounds [12 x double], [12 x double]* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = load [12 x double]*, [12 x double]** %6, align 4
  %40 = getelementptr inbounds [12 x double], [12 x double]* %39, i32 0
  %41 = getelementptr inbounds [12 x double], [12 x double]* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fdiv double %38, %42
  %44 = load [12 x double]*, [12 x double]** %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [12 x double], [12 x double]* %44, i32 %45
  %47 = getelementptr inbounds [12 x double], [12 x double]* %46, i32 0, i32 0
  store double %43, double* %47, align 8
  br label %48

; <label>:48:                                     ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %29

; <label>:51:                                     ; preds = %29
  store i32 1, i32* %9, align 4
  br label %52

; <label>:52:                                     ; preds = %186, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %189

; <label>:56:                                     ; preds = %52
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %57

; <label>:57:                                     ; preds = %77, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

; <label>:61:                                     ; preds = %57
  %62 = load [12 x double]*, [12 x double]** %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [12 x double], [12 x double]* %62, i32 %63
  %65 = load i32, i32* %11, align 4
  %66 = getelementptr inbounds [12 x double], [12 x double]* %64, i32 0, i32 %65
  %67 = load double, double* %66, align 8
  %68 = load [12 x double]*, [12 x double]** %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = getelementptr inbounds [12 x double], [12 x double]* %68, i32 %69
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds [12 x double], [12 x double]* %70, i32 0, i32 %71
  %73 = load double, double* %72, align 8
  %74 = fmul double %67, %73
  %75 = load double, double* %12, align 8
  %76 = fadd double %75, %74
  store double %76, double* %12, align 8
  br label %77

; <label>:77:                                     ; preds = %61
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %57

; <label>:80:                                     ; preds = %57
  %81 = load [12 x double]*, [12 x double]** %6, align 4
  %82 = load i32, i32* %9, align 4
  %83 = getelementptr inbounds [12 x double], [12 x double]* %81, i32 %82
  %84 = load i32, i32* %9, align 4
  %85 = getelementptr inbounds [12 x double], [12 x double]* %83, i32 0, i32 %84
  %86 = load double, double* %85, align 8
  %87 = load double, double* %12, align 8
  %88 = fsub double %86, %87
  %89 = load [12 x double]*, [12 x double]** %6, align 4
  %90 = load i32, i32* %9, align 4
  %91 = getelementptr inbounds [12 x double], [12 x double]* %89, i32 %90
  %92 = load i32, i32* %9, align 4
  %93 = getelementptr inbounds [12 x double], [12 x double]* %91, i32 0, i32 %92
  store double %88, double* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %96

; <label>:96:                                     ; preds = %182, %80
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %185

; <label>:100:                                    ; preds = %96
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %101

; <label>:101:                                    ; preds = %121, %100
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %124

; <label>:105:                                    ; preds = %101
  %106 = load [12 x double]*, [12 x double]** %6, align 4
  %107 = load i32, i32* %9, align 4
  %108 = getelementptr inbounds [12 x double], [12 x double]* %106, i32 %107
  %109 = load i32, i32* %11, align 4
  %110 = getelementptr inbounds [12 x double], [12 x double]* %108, i32 0, i32 %109
  %111 = load double, double* %110, align 8
  %112 = load [12 x double]*, [12 x double]** %6, align 4
  %113 = load i32, i32* %11, align 4
  %114 = getelementptr inbounds [12 x double], [12 x double]* %112, i32 %113
  %115 = load i32, i32* %10, align 4
  %116 = getelementptr inbounds [12 x double], [12 x double]* %114, i32 0, i32 %115
  %117 = load double, double* %116, align 8
  %118 = fmul double %111, %117
  %119 = load double, double* %12, align 8
  %120 = fadd double %119, %118
  store double %120, double* %12, align 8
  br label %121

; <label>:121:                                    ; preds = %105
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %101

; <label>:124:                                    ; preds = %101
  %125 = load [12 x double]*, [12 x double]** %6, align 4
  %126 = load i32, i32* %9, align 4
  %127 = getelementptr inbounds [12 x double], [12 x double]* %125, i32 %126
  %128 = load i32, i32* %10, align 4
  %129 = getelementptr inbounds [12 x double], [12 x double]* %127, i32 0, i32 %128
  %130 = load double, double* %129, align 8
  %131 = load double, double* %12, align 8
  %132 = fsub double %130, %131
  %133 = load [12 x double]*, [12 x double]** %6, align 4
  %134 = load i32, i32* %9, align 4
  %135 = getelementptr inbounds [12 x double], [12 x double]* %133, i32 %134
  %136 = load i32, i32* %10, align 4
  %137 = getelementptr inbounds [12 x double], [12 x double]* %135, i32 0, i32 %136
  store double %132, double* %137, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %138

; <label>:138:                                    ; preds = %158, %124
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %161

; <label>:142:                                    ; preds = %138
  %143 = load [12 x double]*, [12 x double]** %6, align 4
  %144 = load i32, i32* %10, align 4
  %145 = getelementptr inbounds [12 x double], [12 x double]* %143, i32 %144
  %146 = load i32, i32* %11, align 4
  %147 = getelementptr inbounds [12 x double], [12 x double]* %145, i32 0, i32 %146
  %148 = load double, double* %147, align 8
  %149 = load [12 x double]*, [12 x double]** %6, align 4
  %150 = load i32, i32* %11, align 4
  %151 = getelementptr inbounds [12 x double], [12 x double]* %149, i32 %150
  %152 = load i32, i32* %9, align 4
  %153 = getelementptr inbounds [12 x double], [12 x double]* %151, i32 0, i32 %152
  %154 = load double, double* %153, align 8
  %155 = fmul double %148, %154
  %156 = load double, double* %12, align 8
  %157 = fadd double %156, %155
  store double %157, double* %12, align 8
  br label %158

; <label>:158:                                    ; preds = %142
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %138

; <label>:161:                                    ; preds = %138
  %162 = load [12 x double]*, [12 x double]** %6, align 4
  %163 = load i32, i32* %10, align 4
  %164 = getelementptr inbounds [12 x double], [12 x double]* %162, i32 %163
  %165 = load i32, i32* %9, align 4
  %166 = getelementptr inbounds [12 x double], [12 x double]* %164, i32 0, i32 %165
  %167 = load double, double* %166, align 8
  %168 = load double, double* %12, align 8
  %169 = fsub double %167, %168
  %170 = load [12 x double]*, [12 x double]** %6, align 4
  %171 = load i32, i32* %9, align 4
  %172 = getelementptr inbounds [12 x double], [12 x double]* %170, i32 %171
  %173 = load i32, i32* %9, align 4
  %174 = getelementptr inbounds [12 x double], [12 x double]* %172, i32 0, i32 %173
  %175 = load double, double* %174, align 8
  %176 = fdiv double %169, %175
  %177 = load [12 x double]*, [12 x double]** %6, align 4
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds [12 x double], [12 x double]* %177, i32 %178
  %180 = load i32, i32* %9, align 4
  %181 = getelementptr inbounds [12 x double], [12 x double]* %179, i32 0, i32 %180
  store double %176, double* %181, align 8
  br label %182

; <label>:182:                                    ; preds = %161
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %96

; <label>:185:                                    ; preds = %96
  br label %186

; <label>:186:                                    ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %52

; <label>:189:                                    ; preds = %52
  store i32 1, i32* %9, align 4
  br label %190

; <label>:190:                                    ; preds = %223, %189
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %226

; <label>:194:                                    ; preds = %190
  store i32 0, i32* %11, align 4
  br label %195

; <label>:195:                                    ; preds = %219, %194
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %222

; <label>:199:                                    ; preds = %195
  %200 = load double*, double** %8, align 4
  %201 = load i32, i32* %9, align 4
  %202 = getelementptr inbounds double, double* %200, i32 %201
  %203 = load double, double* %202, align 8
  %204 = load [12 x double]*, [12 x double]** %6, align 4
  %205 = load i32, i32* %9, align 4
  %206 = getelementptr inbounds [12 x double], [12 x double]* %204, i32 %205
  %207 = load i32, i32* %11, align 4
  %208 = getelementptr inbounds [12 x double], [12 x double]* %206, i32 0, i32 %207
  %209 = load double, double* %208, align 8
  %210 = load double*, double** %8, align 4
  %211 = load i32, i32* %11, align 4
  %212 = getelementptr inbounds double, double* %210, i32 %211
  %213 = load double, double* %212, align 8
  %214 = fmul double %209, %213
  %215 = fsub double %203, %214
  %216 = load double*, double** %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = getelementptr inbounds double, double* %216, i32 %217
  store double %215, double* %218, align 8
  br label %219

; <label>:219:                                    ; preds = %199
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %195

; <label>:222:                                    ; preds = %195
  br label %223

; <label>:223:                                    ; preds = %222
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %9, align 4
  br label %190

; <label>:226:                                    ; preds = %190
  %227 = load double*, double** %8, align 4
  %228 = load i32, i32* %5, align 4
  %229 = sub nsw i32 %228, 1
  %230 = getelementptr inbounds double, double* %227, i32 %229
  %231 = load double, double* %230, align 8
  %232 = load [12 x double]*, [12 x double]** %6, align 4
  %233 = load i32, i32* %5, align 4
  %234 = sub nsw i32 %233, 1
  %235 = getelementptr inbounds [12 x double], [12 x double]* %232, i32 %234
  %236 = load i32, i32* %5, align 4
  %237 = sub nsw i32 %236, 1
  %238 = getelementptr inbounds [12 x double], [12 x double]* %235, i32 0, i32 %237
  %239 = load double, double* %238, align 8
  %240 = fdiv double %231, %239
  %241 = load double*, double** %8, align 4
  %242 = load i32, i32* %5, align 4
  %243 = sub nsw i32 %242, 1
  %244 = getelementptr inbounds double, double* %241, i32 %243
  store double %240, double* %244, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sub nsw i32 %245, 2
  store i32 %246, i32* %9, align 4
  br label %247

; <label>:247:                                    ; preds = %295, %226
  %248 = load i32, i32* %9, align 4
  %249 = icmp sge i32 %248, 0
  br i1 %249, label %250, label %298

; <label>:250:                                    ; preds = %247
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %11, align 4
  br label %253

; <label>:253:                                    ; preds = %277, %250
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %5, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %280

; <label>:257:                                    ; preds = %253
  %258 = load double*, double** %8, align 4
  %259 = load i32, i32* %9, align 4
  %260 = getelementptr inbounds double, double* %258, i32 %259
  %261 = load double, double* %260, align 8
  %262 = load [12 x double]*, [12 x double]** %6, align 4
  %263 = load i32, i32* %9, align 4
  %264 = getelementptr inbounds [12 x double], [12 x double]* %262, i32 %263
  %265 = load i32, i32* %11, align 4
  %266 = getelementptr inbounds [12 x double], [12 x double]* %264, i32 0, i32 %265
  %267 = load double, double* %266, align 8
  %268 = load double*, double** %8, align 4
  %269 = load i32, i32* %11, align 4
  %270 = getelementptr inbounds double, double* %268, i32 %269
  %271 = load double, double* %270, align 8
  %272 = fmul double %267, %271
  %273 = fsub double %261, %272
  %274 = load double*, double** %8, align 4
  %275 = load i32, i32* %9, align 4
  %276 = getelementptr inbounds double, double* %274, i32 %275
  store double %273, double* %276, align 8
  br label %277

; <label>:277:                                    ; preds = %257
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %253

; <label>:280:                                    ; preds = %253
  %281 = load double*, double** %8, align 4
  %282 = load i32, i32* %9, align 4
  %283 = getelementptr inbounds double, double* %281, i32 %282
  %284 = load double, double* %283, align 8
  %285 = load [12 x double]*, [12 x double]** %6, align 4
  %286 = load i32, i32* %9, align 4
  %287 = getelementptr inbounds [12 x double], [12 x double]* %285, i32 %286
  %288 = load i32, i32* %9, align 4
  %289 = getelementptr inbounds [12 x double], [12 x double]* %287, i32 0, i32 %288
  %290 = load double, double* %289, align 8
  %291 = fdiv double %284, %290
  %292 = load double*, double** %8, align 4
  %293 = load i32, i32* %9, align 4
  %294 = getelementptr inbounds double, double* %292, i32 %293
  store double %291, double* %294, align 8
  br label %295

; <label>:295:                                    ; preds = %280
  %296 = load i32, i32* %9, align 4
  %297 = sub nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %247

; <label>:298:                                    ; preds = %247
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @Crystal_div(i32, double, double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %11 = alloca i32, align 4
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
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
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
  store double 1.000000e-06, double* %26, align 8
  store double 3.000000e+01, double* %27, align 8
  store double 1.200000e+00, double* %28, align 8
  store double 1.000000e-02, double* %29, align 8
  store double 0.000000e+00, double* %30, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  br label %33

; <label>:33:                                     ; preds = %47, %10
  %34 = load i32, i32* %31, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %31, align 4
  %39 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %38
  store double 1.000000e+00, double* %39, align 8
  %40 = load i32, i32* %31, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double 2.000000e-01, %41
  %43 = fdiv double %42, 1.200000e+01
  %44 = fadd double 9.000000e-01, %43
  %45 = load i32, i32* %31, align 4
  %46 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %45
  store double %44, double* %46, align 8
  br label %47

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* %31, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %31, align 4
  br label %33

; <label>:50:                                     ; preds = %33
  store i32 0, i32* %31, align 4
  br label %51

; <label>:51:                                     ; preds = %69, %50
  %52 = load i32, i32* %31, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

; <label>:55:                                     ; preds = %51
  %56 = load double*, double** %13, align 4
  %57 = load i32, i32* %31, align 4
  %58 = getelementptr inbounds double, double* %56, i32 %57
  %59 = load double, double* %58, align 8
  %60 = load i32, i32* %31, align 4
  %61 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %60
  %62 = load double, double* %61, align 8
  %63 = fmul double %59, %62
  %64 = load double, double* %26, align 8
  %65 = fadd double %63, %64
  %66 = fdiv double 1.000000e+00, %65
  %67 = load i32, i32* %31, align 4
  %68 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %67
  store double %66, double* %68, align 8
  br label %69

; <label>:69:                                     ; preds = %55
  %70 = load i32, i32* %31, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %31, align 4
  br label %51

; <label>:72:                                     ; preds = %51
  store i32 0, i32* %31, align 4
  br label %73

; <label>:73:                                     ; preds = %132, %72
  %74 = load i32, i32* %31, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %135

; <label>:77:                                     ; preds = %73
  %78 = load double, double* %27, align 8
  %79 = load i32, i32* %31, align 4
  %80 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %79
  %81 = load double, double* %80, align 8
  %82 = fmul double %78, %81
  %83 = load i32, i32* %31, align 4
  %84 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %82, %85
  %87 = load double*, double** %15, align 4
  %88 = load i32, i32* %31, align 4
  %89 = getelementptr inbounds double, double* %87, i32 %88
  store double %86, double* %89, align 8
  store i32 0, i32* %32, align 4
  br label %90

; <label>:90:                                     ; preds = %107, %77
  %91 = load i32, i32* %32, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

; <label>:94:                                     ; preds = %90
  %95 = load double, double* %28, align 8
  %96 = load double, double* %12, align 8
  %97 = fmul double %95, %96
  %98 = load i32, i32* %31, align 4
  %99 = getelementptr inbounds [12 x double], [12 x double]* %23, i32 0, i32 %98
  %100 = load double, double* %99, align 8
  %101 = fmul double %97, %100
  %102 = load [12 x double]*, [12 x double]** %18, align 4
  %103 = load i32, i32* %31, align 4
  %104 = getelementptr inbounds [12 x double], [12 x double]* %102, i32 %103
  %105 = load i32, i32* %32, align 4
  %106 = getelementptr inbounds [12 x double], [12 x double]* %104, i32 0, i32 %105
  store double %101, double* %106, align 8
  br label %107

; <label>:107:                                    ; preds = %94
  %108 = load i32, i32* %32, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %32, align 4
  br label %90

; <label>:110:                                    ; preds = %90
  %111 = load double*, double** %15, align 4
  %112 = load i32, i32* %31, align 4
  %113 = getelementptr inbounds double, double* %111, i32 %112
  %114 = load double, double* %113, align 8
  %115 = load double, double* %29, align 8
  %116 = fmul double %114, %115
  %117 = load i32, i32* %31, align 4
  %118 = getelementptr inbounds [12 x double], [12 x double]* %22, i32 0, i32 %117
  %119 = load double, double* %118, align 8
  %120 = fmul double %116, %119
  %121 = load i32, i32* %31, align 4
  %122 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %121
  %123 = load double, double* %122, align 8
  %124 = fmul double %120, %123
  %125 = load [12 x double]*, [12 x double]** %18, align 4
  %126 = load i32, i32* %31, align 4
  %127 = getelementptr inbounds [12 x double], [12 x double]* %125, i32 %126
  %128 = load i32, i32* %31, align 4
  %129 = getelementptr inbounds [12 x double], [12 x double]* %127, i32 0, i32 %128
  %130 = load double, double* %129, align 8
  %131 = fadd double %130, %124
  store double %131, double* %129, align 8
  br label %132

; <label>:132:                                    ; preds = %110
  %133 = load i32, i32* %31, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %31, align 4
  br label %73

; <label>:135:                                    ; preds = %73
  store i32 0, i32* %31, align 4
  br label %136

; <label>:136:                                    ; preds = %150, %135
  %137 = load i32, i32* %31, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %153

; <label>:140:                                    ; preds = %136
  %141 = load [12 x double]*, [12 x double]** %18, align 4
  %142 = load i32, i32* %31, align 4
  %143 = getelementptr inbounds [12 x double], [12 x double]* %141, i32 %142
  %144 = load i32, i32* %31, align 4
  %145 = getelementptr inbounds [12 x double], [12 x double]* %143, i32 0, i32 %144
  %146 = load double, double* %145, align 8
  %147 = fdiv double 1.000000e+00, %146
  %148 = load i32, i32* %31, align 4
  %149 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %148
  store double %147, double* %149, align 8
  br label %150

; <label>:150:                                    ; preds = %140
  %151 = load i32, i32* %31, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %31, align 4
  br label %136

; <label>:153:                                    ; preds = %136
  store i32 0, i32* %31, align 4
  br label %154

; <label>:154:                                    ; preds = %230, %153
  %155 = load i32, i32* %31, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %233

; <label>:158:                                    ; preds = %154
  %159 = load double*, double** %15, align 4
  %160 = load i32, i32* %31, align 4
  %161 = getelementptr inbounds double, double* %159, i32 %160
  %162 = load double, double* %161, align 8
  %163 = load i32, i32* %31, align 4
  %164 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %163
  store double %162, double* %164, align 8
  store i32 0, i32* %32, align 4
  br label %165

; <label>:165:                                    ; preds = %206, %158
  %166 = load i32, i32* %32, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %209

; <label>:169:                                    ; preds = %165
  %170 = load [12 x double]*, [12 x double]** %19, align 4
  %171 = load i32, i32* %31, align 4
  %172 = getelementptr inbounds [12 x double], [12 x double]* %170, i32 %171
  %173 = load i32, i32* %32, align 4
  %174 = getelementptr inbounds [12 x double], [12 x double]* %172, i32 0, i32 %173
  %175 = load double, double* %174, align 8
  %176 = load double, double* %12, align 8
  %177 = fmul double %175, %176
  store double %177, double* %30, align 8
  %178 = load double, double* %30, align 8
  %179 = load double*, double** %14, align 4
  %180 = load i32, i32* %32, align 4
  %181 = getelementptr inbounds double, double* %179, i32 %180
  %182 = load double, double* %181, align 8
  %183 = fmul double %178, %182
  %184 = load i32, i32* %31, align 4
  %185 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %184
  %186 = load double, double* %185, align 8
  %187 = fadd double %186, %183
  store double %187, double* %185, align 8
  %188 = load double, double* %30, align 8
  %189 = fsub double -0.000000e+00, %188
  %190 = load [12 x double]*, [12 x double]** %18, align 4
  %191 = load i32, i32* %31, align 4
  %192 = getelementptr inbounds [12 x double], [12 x double]* %190, i32 %191
  %193 = load i32, i32* %32, align 4
  %194 = getelementptr inbounds [12 x double], [12 x double]* %192, i32 0, i32 %193
  %195 = load double, double* %194, align 8
  %196 = fadd double %189, %195
  %197 = load i32, i32* %31, align 4
  %198 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %197
  %199 = load double, double* %198, align 8
  %200 = fmul double %196, %199
  %201 = load [12 x double]*, [12 x double]** %20, align 4
  %202 = load i32, i32* %31, align 4
  %203 = getelementptr inbounds [12 x double], [12 x double]* %201, i32 %202
  %204 = load i32, i32* %32, align 4
  %205 = getelementptr inbounds [12 x double], [12 x double]* %203, i32 0, i32 %204
  store double %200, double* %205, align 8
  br label %206

; <label>:206:                                    ; preds = %169
  %207 = load i32, i32* %32, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %32, align 4
  br label %165

; <label>:209:                                    ; preds = %165
  %210 = load i32, i32* %31, align 4
  %211 = getelementptr inbounds [12 x double], [12 x double]* %24, i32 0, i32 %210
  %212 = load double, double* %211, align 8
  %213 = load double*, double** %16, align 4
  %214 = load i32, i32* %31, align 4
  %215 = getelementptr inbounds double, double* %213, i32 %214
  %216 = load double, double* %215, align 8
  %217 = fsub double %212, %216
  %218 = load i32, i32* %31, align 4
  %219 = getelementptr inbounds [12 x double], [12 x double]* %25, i32 0, i32 %218
  store double %217, double* %219, align 8
  %220 = load i32, i32* %31, align 4
  %221 = getelementptr inbounds [12 x double], [12 x double]* %25, i32 0, i32 %220
  %222 = load double, double* %221, align 8
  %223 = load i32, i32* %31, align 4
  %224 = getelementptr inbounds [12 x double], [12 x double]* %21, i32 0, i32 %223
  %225 = load double, double* %224, align 8
  %226 = fmul double %222, %225
  %227 = load double*, double** %17, align 4
  %228 = load i32, i32* %31, align 4
  %229 = getelementptr inbounds double, double* %227, i32 %228
  store double %226, double* %229, align 8
  br label %230

; <label>:230:                                    ; preds = %209
  %231 = load i32, i32* %31, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %31, align 4
  br label %154

; <label>:233:                                    ; preds = %154
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc double @Crystal_pow(i32, double*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 4
  %5 = alloca [12 x double], align 8
  %6 = alloca [12 x double], align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 4
  store double 6.000000e+04, double* %7, align 8
  store double 5.000000e+04, double* %8, align 8
  store double 1.000000e-06, double* %9, align 8
  store double 2.000000e+00, double* %10, align 8
  store double 1.000000e-02, double* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %27, %2
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 %18
  store double 1.000000e+00, double* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double 2.000000e-01, %21
  %23 = fmul double 9.000000e-01, %22
  %24 = fdiv double %23, 1.200000e+01
  %25 = load i32, i32* %12, align 4
  %26 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 %25
  store double %24, double* %26, align 8
  br label %27

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %13

; <label>:30:                                     ; preds = %13
  store i32 0, i32* %12, align 4
  br label %31

; <label>:31:                                     ; preds = %56, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

; <label>:35:                                     ; preds = %31
  %36 = load double, double* %7, align 8
  %37 = load double, double* %8, align 8
  %38 = fdiv double %36, %37
  %39 = load double*, double** %4, align 4
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds double, double* %39, i32 %40
  %42 = load double, double* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds [12 x double], [12 x double]* %6, i32 0, i32 %43
  %45 = load double, double* %44, align 8
  %46 = fmul double %42, %45
  %47 = load double, double* %9, align 8
  %48 = fadd double %46, %47
  %49 = load double, double* %10, align 8
  %50 = fdiv double %48, %49
  %51 = load double, double* %11, align 8
  %52 = call arm_aapcscc double @pow(double %50, double %51) #3
  %53 = fmul double %38, %52
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 %54
  store double %53, double* %55, align 8
  br label %56

; <label>:56:                                     ; preds = %35
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %31

; <label>:59:                                     ; preds = %31
  %60 = getelementptr inbounds [12 x double], [12 x double]* %5, i32 0, i32 3
  %61 = load double, double* %60, align 8
  ret double %61
}

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #1

; Function Attrs: nounwind
define arm_aapcscc void @init(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
  %9 = alloca double*, align 4
  %10 = alloca double*, align 4
  %11 = alloca double*, align 4
  %12 = alloca double*, align 4
  %13 = alloca double*, align 4
  %14 = alloca [12 x double]*, align 4
  %15 = alloca [12 x double]*, align 4
  %16 = alloca [12 x double]*, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double* %0, double** %9, align 4
  store double* %1, double** %10, align 4
  store double* %2, double** %11, align 4
  store double* %3, double** %12, align 4
  store double* %4, double** %13, align 4
  store [12 x double]* %5, [12 x double]** %14, align 4
  store [12 x double]* %6, [12 x double]** %15, align 4
  store [12 x double]* %7, [12 x double]** %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %88, %8
  %20 = load i32, i32* %18, align 4
  %21 = icmp slt i32 %20, 12
  br i1 %21, label %22, label %91

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %18, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double 2.000000e-01, %24
  %26 = fdiv double %25, 1.200000e+01
  %27 = fadd double 1.900000e+00, %26
  %28 = load double*, double** %9, align 4
  %29 = load i32, i32* %18, align 4
  %30 = getelementptr inbounds double, double* %28, i32 %29
  store double %27, double* %30, align 8
  %31 = load double*, double** %9, align 4
  %32 = load i32, i32* %18, align 4
  %33 = getelementptr inbounds double, double* %31, i32 %32
  %34 = load double, double* %33, align 8
  %35 = fmul double %34, 1.000000e-03
  %36 = load double*, double** %10, align 4
  %37 = load i32, i32* %18, align 4
  %38 = getelementptr inbounds double, double* %36, i32 %37
  store double %35, double* %38, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, 2.000000e+00
  %42 = load double*, double** %11, align 4
  %43 = load i32, i32* %18, align 4
  %44 = getelementptr inbounds double, double* %42, i32 %43
  store double %41, double* %44, align 8
  %45 = load double*, double** %12, align 4
  %46 = load i32, i32* %18, align 4
  %47 = getelementptr inbounds double, double* %45, i32 %46
  store double 3.000000e+01, double* %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sitofp i32 %48 to double
  %50 = fadd double %49, 3.500000e+00
  %51 = load double*, double** %13, align 4
  %52 = load i32, i32* %18, align 4
  %53 = getelementptr inbounds double, double* %51, i32 %52
  store double %50, double* %53, align 8
  store i32 0, i32* %17, align 4
  br label %54

; <label>:54:                                     ; preds = %84, %22
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 12
  br i1 %56, label %57, label %87

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %17, align 4
  %59 = sitofp i32 %58 to double
  %60 = fmul double 1.000000e-05, %59
  %61 = load i32, i32* %18, align 4
  %62 = sitofp i32 %61 to double
  %63 = fmul double %60, %62
  %64 = fadd double 1.000000e-02, %63
  %65 = load [12 x double]*, [12 x double]** %14, align 4
  %66 = load i32, i32* %18, align 4
  %67 = getelementptr inbounds [12 x double], [12 x double]* %65, i32 %66
  %68 = load i32, i32* %17, align 4
  %69 = getelementptr inbounds [12 x double], [12 x double]* %67, i32 0, i32 %68
  store double %64, double* %69, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %70, %71
  %73 = sitofp i32 %72 to double
  %74 = load [12 x double]*, [12 x double]** %15, align 4
  %75 = load i32, i32* %18, align 4
  %76 = getelementptr inbounds [12 x double], [12 x double]* %74, i32 %75
  %77 = load i32, i32* %17, align 4
  %78 = getelementptr inbounds [12 x double], [12 x double]* %76, i32 0, i32 %77
  store double %73, double* %78, align 8
  %79 = load [12 x double]*, [12 x double]** %16, align 4
  %80 = load i32, i32* %18, align 4
  %81 = getelementptr inbounds [12 x double], [12 x double]* %79, i32 %80
  %82 = load i32, i32* %17, align 4
  %83 = getelementptr inbounds [12 x double], [12 x double]* %81, i32 0, i32 %82
  store double 0.000000e+00, double* %83, align 8
  br label %84

; <label>:84:                                     ; preds = %57
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %54

; <label>:87:                                     ; preds = %54
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %19

; <label>:91:                                     ; preds = %19
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [12 x double], align 8
  %7 = alloca [12 x double], align 8
  %8 = alloca [12 x double], align 8
  %9 = alloca [12 x double], align 8
  %10 = alloca [12 x double], align 8
  %11 = alloca [12 x [12 x double]], align 8
  %12 = alloca [12 x [12 x double]], align 8
  %13 = alloca [12 x [12 x double]], align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
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
  store i32 0, i32* %16, align 4
  br label %43

; <label>:43:                                     ; preds = %63, %0
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 12
  br i1 %45, label %46, label %66

; <label>:46:                                     ; preds = %43
  store i32 0, i32* %17, align 4
  br label %47

; <label>:47:                                     ; preds = %59, %46
  %48 = load i32, i32* %17, align 4
  %49 = icmp slt i32 %48, 12
  br i1 %49, label %50, label %62

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
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %17, align 4
  br label %47

; <label>:62:                                     ; preds = %47
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %16, align 4
  br label %43

; <label>:66:                                     ; preds = %43
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %68, %70
  %72 = sitofp i32 %71 to double
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %74, %76
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 1.000000e+06
  %80 = fadd double %72, %79
  store double %80, double* %14, align 8
  %81 = load double, double* %14, align 8
  %82 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %86, 1.000000e+06
  %88 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), double %87)
  ret i32 0
}

declare arm_aapcscc i32 @printf(i8*, ...) #2

declare arm_aapcscc i32 @gettimeofday(%struct.timeval*, i8*) #2

declare arm_aapcscc i32 @clock() #2

; Function Attrs: nounwind
define arm_aapcscc double @SPEdriver(double*, double*, double*, double*, double*, [12 x double]*, [12 x double]*, [12 x double]*) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store double* %0, double** %9, align 4
  store double* %1, double** %10, align 4
  store double* %2, double** %11, align 4
  store double* %3, double** %12, align 4
  store double* %4, double** %13, align 4
  store [12 x double]* %5, [12 x double]** %14, align 4
  store [12 x double]* %6, [12 x double]** %15, align 4
  store [12 x double]* %7, [12 x double]** %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store double 0.000000e+00, double* %21, align 8
  store i32 1000000, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %28 = call arm_aapcscc i32 @clock()
  store i32 %28, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %29

; <label>:29:                                     ; preds = %41, %8
  %30 = load i32, i32* %24, align 4
  %31 = icmp slt i32 %30, 1000000
  br i1 %31, label %32, label %44

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
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %24, align 4
  br label %29

; <label>:44:                                     ; preds = %29
  %45 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %46 = call arm_aapcscc i32 @clock()
  store i32 %46, i32* %20, align 4
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  %52 = sitofp i32 %51 to double
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %54, %56
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  %60 = fadd double %52, %59
  store double %60, double* %21, align 8
  %61 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  %62 = load double, double* %21, align 8
  %63 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.7, i32 0, i32 0), double %62)
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %19, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 1.000000e+06
  %69 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.8, i32 0, i32 0), double %68)
  %70 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %71 = call arm_aapcscc i32 @clock()
  store i32 %71, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %72

; <label>:72:                                     ; preds = %78, %44
  %73 = load i32, i32* %24, align 4
  %74 = icmp slt i32 %73, 1000000
  br i1 %74, label %75, label %81

; <label>:75:                                     ; preds = %72
  %76 = load double*, double** %9, align 4
  %77 = call arm_aapcscc double @Crystal_pow(i32 12, double* %76)
  store double %77, double* %22, align 8
  br label %78

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %24, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %24, align 4
  br label %72

; <label>:81:                                     ; preds = %72
  %82 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %83 = call arm_aapcscc i32 @clock()
  store i32 %83, i32* %20, align 4
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %85, %87
  %89 = sitofp i32 %88 to double
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %91, %93
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %95, 1.000000e+06
  %97 = fadd double %89, %96
  store double %97, double* %21, align 8
  %98 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.9, i32 0, i32 0))
  %99 = load double, double* %21, align 8
  %100 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.7, i32 0, i32 0), double %99)
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %19, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %104, 1.000000e+06
  %106 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.8, i32 0, i32 0), double %105)
  %107 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %17, i8* null)
  %108 = call arm_aapcscc i32 @clock()
  store i32 %108, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %109

; <label>:109:                                    ; preds = %132, %81
  %110 = load i32, i32* %24, align 4
  %111 = icmp slt i32 %110, 12
  br i1 %111, label %112, label %135

; <label>:112:                                    ; preds = %109
  store i32 0, i32* %25, align 4
  br label %113

; <label>:113:                                    ; preds = %128, %112
  %114 = load i32, i32* %25, align 4
  %115 = icmp slt i32 %114, 12
  br i1 %115, label %116, label %131

; <label>:116:                                    ; preds = %113
  %117 = load [12 x double]*, [12 x double]** %14, align 4
  %118 = load i32, i32* %24, align 4
  %119 = getelementptr inbounds [12 x double], [12 x double]* %117, i32 %118
  %120 = load i32, i32* %25, align 4
  %121 = getelementptr inbounds [12 x double], [12 x double]* %119, i32 0, i32 %120
  %122 = load double, double* %121, align 8
  %123 = load [12 x double]*, [12 x double]** %16, align 4
  %124 = load i32, i32* %24, align 4
  %125 = getelementptr inbounds [12 x double], [12 x double]* %123, i32 %124
  %126 = load i32, i32* %25, align 4
  %127 = getelementptr inbounds [12 x double], [12 x double]* %125, i32 0, i32 %126
  store double %122, double* %127, align 8
  br label %128

; <label>:128:                                    ; preds = %116
  %129 = load i32, i32* %25, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %25, align 4
  br label %113

; <label>:131:                                    ; preds = %113
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %24, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %24, align 4
  br label %109

; <label>:135:                                    ; preds = %109
  store i32 0, i32* %24, align 4
  br label %136

; <label>:136:                                    ; preds = %170, %135
  %137 = load i32, i32* %24, align 4
  %138 = icmp slt i32 %137, 1000000
  br i1 %138, label %139, label %173

; <label>:139:                                    ; preds = %136
  store i32 0, i32* %25, align 4
  br label %140

; <label>:140:                                    ; preds = %163, %139
  %141 = load i32, i32* %25, align 4
  %142 = icmp slt i32 %141, 12
  br i1 %142, label %143, label %166

; <label>:143:                                    ; preds = %140
  store i32 0, i32* %26, align 4
  br label %144

; <label>:144:                                    ; preds = %159, %143
  %145 = load i32, i32* %26, align 4
  %146 = icmp slt i32 %145, 12
  br i1 %146, label %147, label %162

; <label>:147:                                    ; preds = %144
  %148 = load [12 x double]*, [12 x double]** %16, align 4
  %149 = load i32, i32* %25, align 4
  %150 = getelementptr inbounds [12 x double], [12 x double]* %148, i32 %149
  %151 = load i32, i32* %26, align 4
  %152 = getelementptr inbounds [12 x double], [12 x double]* %150, i32 0, i32 %151
  %153 = load double, double* %152, align 8
  %154 = load [12 x double]*, [12 x double]** %14, align 4
  %155 = load i32, i32* %25, align 4
  %156 = getelementptr inbounds [12 x double], [12 x double]* %154, i32 %155
  %157 = load i32, i32* %26, align 4
  %158 = getelementptr inbounds [12 x double], [12 x double]* %156, i32 0, i32 %157
  store double %153, double* %158, align 8
  br label %159

; <label>:159:                                    ; preds = %147
  %160 = load i32, i32* %26, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %26, align 4
  br label %144

; <label>:162:                                    ; preds = %144
  br label %163

; <label>:163:                                    ; preds = %162
  %164 = load i32, i32* %25, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %25, align 4
  br label %140

; <label>:166:                                    ; preds = %140
  %167 = load [12 x double]*, [12 x double]** %14, align 4
  %168 = load double*, double** %11, align 4
  %169 = load double*, double** %13, align 4
  call arm_aapcscc void @Crystal_Cholesky(i32 12, [12 x double]* %167, double* %168, double* %169)
  br label %170

; <label>:170:                                    ; preds = %166
  %171 = load i32, i32* %24, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %24, align 4
  br label %136

; <label>:173:                                    ; preds = %136
  %174 = call arm_aapcscc i32 @gettimeofday(%struct.timeval* %18, i8* null)
  %175 = call arm_aapcscc i32 @clock()
  store i32 %175, i32* %20, align 4
  %176 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %177, %179
  %181 = sitofp i32 %180 to double
  %182 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %183, %185
  %187 = sitofp i32 %186 to double
  %188 = fdiv double %187, 1.000000e+06
  %189 = fadd double %181, %188
  store double %189, double* %21, align 8
  %190 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4.10, i32 0, i32 0))
  %191 = load double, double* %21, align 8
  %192 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.7, i32 0, i32 0), double %191)
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %19, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sitofp i32 %195 to double
  %197 = fdiv double %196, 1.000000e+06
  %198 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.8, i32 0, i32 0), double %197)
  %199 = load double, double* %22, align 8
  ret double %199
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
