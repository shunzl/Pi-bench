; ModuleID = 'Crystal_Cholesky.c'
source_filename = "Crystal_Cholesky.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

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

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
