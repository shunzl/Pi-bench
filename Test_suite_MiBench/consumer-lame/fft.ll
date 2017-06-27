; ModuleID = 'fft.c'
source_filename = "fft.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@rv_tbl = internal constant [128 x i16] [i16 0, i16 128, i16 64, i16 192, i16 32, i16 160, i16 96, i16 224, i16 16, i16 144, i16 80, i16 208, i16 48, i16 176, i16 112, i16 240, i16 8, i16 136, i16 72, i16 200, i16 40, i16 168, i16 104, i16 232, i16 24, i16 152, i16 88, i16 216, i16 56, i16 184, i16 120, i16 248, i16 4, i16 132, i16 68, i16 196, i16 36, i16 164, i16 100, i16 228, i16 20, i16 148, i16 84, i16 212, i16 52, i16 180, i16 116, i16 244, i16 12, i16 140, i16 76, i16 204, i16 44, i16 172, i16 108, i16 236, i16 28, i16 156, i16 92, i16 220, i16 60, i16 188, i16 124, i16 252, i16 2, i16 130, i16 66, i16 194, i16 34, i16 162, i16 98, i16 226, i16 18, i16 146, i16 82, i16 210, i16 50, i16 178, i16 114, i16 242, i16 10, i16 138, i16 74, i16 202, i16 42, i16 170, i16 106, i16 234, i16 26, i16 154, i16 90, i16 218, i16 58, i16 186, i16 122, i16 250, i16 6, i16 134, i16 70, i16 198, i16 38, i16 166, i16 102, i16 230, i16 22, i16 150, i16 86, i16 214, i16 54, i16 182, i16 118, i16 246, i16 14, i16 142, i16 78, i16 206, i16 46, i16 174, i16 110, i16 238, i16 30, i16 158, i16 94, i16 222, i16 62, i16 190, i16 126, i16 254], align 2
@window_s = internal global [128 x float] zeroinitializer, align 4
@window = internal global [512 x float] zeroinitializer, align 4
@costab = internal global [8 x float] zeroinitializer, align 4

; Function Attrs: nounwind
define arm_aapcscc void @fft_short([256 x float]*, i32, i16**) #0 {
  %4 = alloca [256 x float]*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16**, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca float*, align 4
  %11 = alloca i16, align 2
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  store [256 x float]* %0, [256 x float]** %4, align 4
  store i32 %1, i32* %5, align 4
  store i16** %2, i16*** %6, align 4
  store i16 0, i16* %9, align 2
  br label %27

; <label>:27:                                     ; preds = %967, %3
  %28 = load i16, i16* %9, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %970

; <label>:31:                                     ; preds = %27
  %32 = load [256 x float]*, [256 x float]** %4, align 4
  %33 = load i16, i16* %9, align 2
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds [256 x float], [256 x float]* %32, i32 %34
  %36 = getelementptr inbounds [256 x float], [256 x float]* %35, i32 0, i32 128
  store float* %36, float** %10, align 4
  %37 = load i16, i16* %9, align 2
  %38 = sext i16 %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 192, %39
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %11, align 2
  store i16 31, i16* %8, align 2
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %281

; <label>:44:                                     ; preds = %31
  br label %45

; <label>:45:                                     ; preds = %275, %44
  %46 = load i16, i16* %8, align 2
  %47 = sext i16 %46 to i32
  %48 = shl i32 %47, 2
  %49 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i32 %48
  %50 = load i16, i16* %49, align 2
  store i16 %50, i16* %7, align 2
  %51 = load i16, i16* %7, align 2
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %52
  %54 = load float, float* %53, align 4
  %55 = load i16**, i16*** %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = getelementptr inbounds i16*, i16** %55, i32 %56
  %58 = load i16*, i16** %57, align 4
  %59 = load i16, i16* %7, align 2
  %60 = sext i16 %59 to i32
  %61 = load i16, i16* %11, align 2
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = getelementptr inbounds i16, i16* %58, i32 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = sitofp i32 %66 to float
  %68 = fmul float %54, %67
  store float %68, float* %12, align 4
  %69 = load i16, i16* %7, align 2
  %70 = sext i16 %69 to i32
  %71 = sub nsw i32 127, %70
  %72 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %71
  %73 = load float, float* %72, align 4
  %74 = load i16**, i16*** %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = getelementptr inbounds i16*, i16** %74, i32 %75
  %77 = load i16*, i16** %76, align 4
  %78 = load i16, i16* %7, align 2
  %79 = sext i16 %78 to i32
  %80 = load i16, i16* %11, align 2
  %81 = sext i16 %80 to i32
  %82 = add nsw i32 %79, %81
  %83 = add nsw i32 %82, 128
  %84 = getelementptr inbounds i16, i16* %77, i32 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = sitofp i32 %86 to float
  %88 = fmul float %73, %87
  store float %88, float* %16, align 4
  %89 = load float, float* %12, align 4
  %90 = load float, float* %16, align 4
  %91 = fsub float %89, %90
  store float %91, float* %13, align 4
  %92 = load float, float* %12, align 4
  %93 = load float, float* %16, align 4
  %94 = fadd float %92, %93
  store float %94, float* %12, align 4
  %95 = load i16, i16* %7, align 2
  %96 = sext i16 %95 to i32
  %97 = add nsw i32 %96, 64
  %98 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %97
  %99 = load float, float* %98, align 4
  %100 = load i16**, i16*** %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = getelementptr inbounds i16*, i16** %100, i32 %101
  %103 = load i16*, i16** %102, align 4
  %104 = load i16, i16* %7, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* %11, align 2
  %107 = sext i16 %106 to i32
  %108 = add nsw i32 %105, %107
  %109 = add nsw i32 %108, 64
  %110 = getelementptr inbounds i16, i16* %103, i32 %109
  %111 = load i16, i16* %110, align 2
  %112 = sext i16 %111 to i32
  %113 = sitofp i32 %112 to float
  %114 = fmul float %99, %113
  store float %114, float* %14, align 4
  %115 = load i16, i16* %7, align 2
  %116 = sext i16 %115 to i32
  %117 = sub nsw i32 63, %116
  %118 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %117
  %119 = load float, float* %118, align 4
  %120 = load i16**, i16*** %6, align 4
  %121 = load i32, i32* %5, align 4
  %122 = getelementptr inbounds i16*, i16** %120, i32 %121
  %123 = load i16*, i16** %122, align 4
  %124 = load i16, i16* %7, align 2
  %125 = sext i16 %124 to i32
  %126 = load i16, i16* %11, align 2
  %127 = sext i16 %126 to i32
  %128 = add nsw i32 %125, %127
  %129 = add nsw i32 %128, 192
  %130 = getelementptr inbounds i16, i16* %123, i32 %129
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = sitofp i32 %132 to float
  %134 = fmul float %119, %133
  store float %134, float* %16, align 4
  %135 = load float, float* %14, align 4
  %136 = load float, float* %16, align 4
  %137 = fsub float %135, %136
  store float %137, float* %15, align 4
  %138 = load float, float* %14, align 4
  %139 = load float, float* %16, align 4
  %140 = fadd float %138, %139
  store float %140, float* %14, align 4
  %141 = load float*, float** %10, align 4
  %142 = getelementptr inbounds float, float* %141, i32 -4
  store float* %142, float** %10, align 4
  %143 = load float, float* %12, align 4
  %144 = load float, float* %14, align 4
  %145 = fadd float %143, %144
  %146 = load float*, float** %10, align 4
  %147 = getelementptr inbounds float, float* %146, i32 0
  store float %145, float* %147, align 4
  %148 = load float, float* %12, align 4
  %149 = load float, float* %14, align 4
  %150 = fsub float %148, %149
  %151 = load float*, float** %10, align 4
  %152 = getelementptr inbounds float, float* %151, i32 2
  store float %150, float* %152, align 4
  %153 = load float, float* %13, align 4
  %154 = load float, float* %15, align 4
  %155 = fadd float %153, %154
  %156 = load float*, float** %10, align 4
  %157 = getelementptr inbounds float, float* %156, i32 1
  store float %155, float* %157, align 4
  %158 = load float, float* %13, align 4
  %159 = load float, float* %15, align 4
  %160 = fsub float %158, %159
  %161 = load float*, float** %10, align 4
  %162 = getelementptr inbounds float, float* %161, i32 3
  store float %160, float* %162, align 4
  %163 = load i16, i16* %7, align 2
  %164 = sext i16 %163 to i32
  %165 = add nsw i32 %164, 1
  %166 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %165
  %167 = load float, float* %166, align 4
  %168 = load i16**, i16*** %6, align 4
  %169 = load i32, i32* %5, align 4
  %170 = getelementptr inbounds i16*, i16** %168, i32 %169
  %171 = load i16*, i16** %170, align 4
  %172 = load i16, i16* %7, align 2
  %173 = sext i16 %172 to i32
  %174 = load i16, i16* %11, align 2
  %175 = sext i16 %174 to i32
  %176 = add nsw i32 %173, %175
  %177 = add nsw i32 %176, 1
  %178 = getelementptr inbounds i16, i16* %171, i32 %177
  %179 = load i16, i16* %178, align 2
  %180 = sext i16 %179 to i32
  %181 = sitofp i32 %180 to float
  %182 = fmul float %167, %181
  store float %182, float* %12, align 4
  %183 = load i16, i16* %7, align 2
  %184 = sext i16 %183 to i32
  %185 = sub nsw i32 126, %184
  %186 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %185
  %187 = load float, float* %186, align 4
  %188 = load i16**, i16*** %6, align 4
  %189 = load i32, i32* %5, align 4
  %190 = getelementptr inbounds i16*, i16** %188, i32 %189
  %191 = load i16*, i16** %190, align 4
  %192 = load i16, i16* %7, align 2
  %193 = sext i16 %192 to i32
  %194 = load i16, i16* %11, align 2
  %195 = sext i16 %194 to i32
  %196 = add nsw i32 %193, %195
  %197 = add nsw i32 %196, 129
  %198 = getelementptr inbounds i16, i16* %191, i32 %197
  %199 = load i16, i16* %198, align 2
  %200 = sext i16 %199 to i32
  %201 = sitofp i32 %200 to float
  %202 = fmul float %187, %201
  store float %202, float* %16, align 4
  %203 = load float, float* %12, align 4
  %204 = load float, float* %16, align 4
  %205 = fsub float %203, %204
  store float %205, float* %13, align 4
  %206 = load float, float* %12, align 4
  %207 = load float, float* %16, align 4
  %208 = fadd float %206, %207
  store float %208, float* %12, align 4
  %209 = load i16, i16* %7, align 2
  %210 = sext i16 %209 to i32
  %211 = add nsw i32 %210, 65
  %212 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %211
  %213 = load float, float* %212, align 4
  %214 = load i16**, i16*** %6, align 4
  %215 = load i32, i32* %5, align 4
  %216 = getelementptr inbounds i16*, i16** %214, i32 %215
  %217 = load i16*, i16** %216, align 4
  %218 = load i16, i16* %7, align 2
  %219 = sext i16 %218 to i32
  %220 = load i16, i16* %11, align 2
  %221 = sext i16 %220 to i32
  %222 = add nsw i32 %219, %221
  %223 = add nsw i32 %222, 65
  %224 = getelementptr inbounds i16, i16* %217, i32 %223
  %225 = load i16, i16* %224, align 2
  %226 = sext i16 %225 to i32
  %227 = sitofp i32 %226 to float
  %228 = fmul float %213, %227
  store float %228, float* %14, align 4
  %229 = load i16, i16* %7, align 2
  %230 = sext i16 %229 to i32
  %231 = sub nsw i32 62, %230
  %232 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %231
  %233 = load float, float* %232, align 4
  %234 = load i16**, i16*** %6, align 4
  %235 = load i32, i32* %5, align 4
  %236 = getelementptr inbounds i16*, i16** %234, i32 %235
  %237 = load i16*, i16** %236, align 4
  %238 = load i16, i16* %7, align 2
  %239 = sext i16 %238 to i32
  %240 = load i16, i16* %11, align 2
  %241 = sext i16 %240 to i32
  %242 = add nsw i32 %239, %241
  %243 = add nsw i32 %242, 193
  %244 = getelementptr inbounds i16, i16* %237, i32 %243
  %245 = load i16, i16* %244, align 2
  %246 = sext i16 %245 to i32
  %247 = sitofp i32 %246 to float
  %248 = fmul float %233, %247
  store float %248, float* %16, align 4
  %249 = load float, float* %14, align 4
  %250 = load float, float* %16, align 4
  %251 = fsub float %249, %250
  store float %251, float* %15, align 4
  %252 = load float, float* %14, align 4
  %253 = load float, float* %16, align 4
  %254 = fadd float %252, %253
  store float %254, float* %14, align 4
  %255 = load float, float* %12, align 4
  %256 = load float, float* %14, align 4
  %257 = fadd float %255, %256
  %258 = load float*, float** %10, align 4
  %259 = getelementptr inbounds float, float* %258, i32 128
  store float %257, float* %259, align 4
  %260 = load float, float* %12, align 4
  %261 = load float, float* %14, align 4
  %262 = fsub float %260, %261
  %263 = load float*, float** %10, align 4
  %264 = getelementptr inbounds float, float* %263, i32 130
  store float %262, float* %264, align 4
  %265 = load float, float* %13, align 4
  %266 = load float, float* %15, align 4
  %267 = fadd float %265, %266
  %268 = load float*, float** %10, align 4
  %269 = getelementptr inbounds float, float* %268, i32 129
  store float %267, float* %269, align 4
  %270 = load float, float* %13, align 4
  %271 = load float, float* %15, align 4
  %272 = fsub float %270, %271
  %273 = load float*, float** %10, align 4
  %274 = getelementptr inbounds float, float* %273, i32 131
  store float %272, float* %274, align 4
  br label %275

; <label>:275:                                    ; preds = %45
  %276 = load i16, i16* %8, align 2
  %277 = add i16 %276, -1
  store i16 %277, i16* %8, align 2
  %278 = sext i16 %277 to i32
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %45, label %280

; <label>:280:                                    ; preds = %275
  br label %965

; <label>:281:                                    ; preds = %31
  %282 = load i32, i32* %5, align 4
  %283 = icmp eq i32 %282, 2
  br i1 %283, label %284, label %624

; <label>:284:                                    ; preds = %281
  br label %285

; <label>:285:                                    ; preds = %618, %284
  %286 = load i16, i16* %8, align 2
  %287 = sext i16 %286 to i32
  %288 = shl i32 %287, 2
  %289 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i32 %288
  %290 = load i16, i16* %289, align 2
  store i16 %290, i16* %7, align 2
  %291 = load i16, i16* %7, align 2
  %292 = sext i16 %291 to i32
  %293 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %292
  %294 = load float, float* %293, align 4
  %295 = load i16**, i16*** %6, align 4
  %296 = getelementptr inbounds i16*, i16** %295, i32 0
  %297 = load i16*, i16** %296, align 4
  %298 = load i16, i16* %7, align 2
  %299 = sext i16 %298 to i32
  %300 = load i16, i16* %11, align 2
  %301 = sext i16 %300 to i32
  %302 = add nsw i32 %299, %301
  %303 = getelementptr inbounds i16, i16* %297, i32 %302
  %304 = load i16, i16* %303, align 2
  %305 = sext i16 %304 to i32
  %306 = load i16**, i16*** %6, align 4
  %307 = getelementptr inbounds i16*, i16** %306, i32 1
  %308 = load i16*, i16** %307, align 4
  %309 = load i16, i16* %7, align 2
  %310 = sext i16 %309 to i32
  %311 = load i16, i16* %11, align 2
  %312 = sext i16 %311 to i32
  %313 = add nsw i32 %310, %312
  %314 = getelementptr inbounds i16, i16* %308, i32 %313
  %315 = load i16, i16* %314, align 2
  %316 = sext i16 %315 to i32
  %317 = add nsw i32 %305, %316
  %318 = sitofp i32 %317 to float
  %319 = fmul float 0x3FE6A09E60000000, %318
  %320 = fmul float %294, %319
  store float %320, float* %17, align 4
  %321 = load i16, i16* %7, align 2
  %322 = sext i16 %321 to i32
  %323 = sub nsw i32 127, %322
  %324 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %323
  %325 = load float, float* %324, align 4
  %326 = load i16**, i16*** %6, align 4
  %327 = getelementptr inbounds i16*, i16** %326, i32 0
  %328 = load i16*, i16** %327, align 4
  %329 = load i16, i16* %7, align 2
  %330 = sext i16 %329 to i32
  %331 = load i16, i16* %11, align 2
  %332 = sext i16 %331 to i32
  %333 = add nsw i32 %330, %332
  %334 = add nsw i32 %333, 128
  %335 = getelementptr inbounds i16, i16* %328, i32 %334
  %336 = load i16, i16* %335, align 2
  %337 = sext i16 %336 to i32
  %338 = load i16**, i16*** %6, align 4
  %339 = getelementptr inbounds i16*, i16** %338, i32 1
  %340 = load i16*, i16** %339, align 4
  %341 = load i16, i16* %7, align 2
  %342 = sext i16 %341 to i32
  %343 = load i16, i16* %11, align 2
  %344 = sext i16 %343 to i32
  %345 = add nsw i32 %342, %344
  %346 = add nsw i32 %345, 128
  %347 = getelementptr inbounds i16, i16* %340, i32 %346
  %348 = load i16, i16* %347, align 2
  %349 = sext i16 %348 to i32
  %350 = add nsw i32 %337, %349
  %351 = sitofp i32 %350 to float
  %352 = fmul float 0x3FE6A09E60000000, %351
  %353 = fmul float %325, %352
  store float %353, float* %21, align 4
  %354 = load float, float* %17, align 4
  %355 = load float, float* %21, align 4
  %356 = fsub float %354, %355
  store float %356, float* %18, align 4
  %357 = load float, float* %17, align 4
  %358 = load float, float* %21, align 4
  %359 = fadd float %357, %358
  store float %359, float* %17, align 4
  %360 = load i16, i16* %7, align 2
  %361 = sext i16 %360 to i32
  %362 = add nsw i32 %361, 64
  %363 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %362
  %364 = load float, float* %363, align 4
  %365 = load i16**, i16*** %6, align 4
  %366 = getelementptr inbounds i16*, i16** %365, i32 0
  %367 = load i16*, i16** %366, align 4
  %368 = load i16, i16* %7, align 2
  %369 = sext i16 %368 to i32
  %370 = load i16, i16* %11, align 2
  %371 = sext i16 %370 to i32
  %372 = add nsw i32 %369, %371
  %373 = add nsw i32 %372, 64
  %374 = getelementptr inbounds i16, i16* %367, i32 %373
  %375 = load i16, i16* %374, align 2
  %376 = sext i16 %375 to i32
  %377 = load i16**, i16*** %6, align 4
  %378 = getelementptr inbounds i16*, i16** %377, i32 1
  %379 = load i16*, i16** %378, align 4
  %380 = load i16, i16* %7, align 2
  %381 = sext i16 %380 to i32
  %382 = load i16, i16* %11, align 2
  %383 = sext i16 %382 to i32
  %384 = add nsw i32 %381, %383
  %385 = add nsw i32 %384, 64
  %386 = getelementptr inbounds i16, i16* %379, i32 %385
  %387 = load i16, i16* %386, align 2
  %388 = sext i16 %387 to i32
  %389 = add nsw i32 %376, %388
  %390 = sitofp i32 %389 to float
  %391 = fmul float 0x3FE6A09E60000000, %390
  %392 = fmul float %364, %391
  store float %392, float* %19, align 4
  %393 = load i16, i16* %7, align 2
  %394 = sext i16 %393 to i32
  %395 = sub nsw i32 63, %394
  %396 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %395
  %397 = load float, float* %396, align 4
  %398 = load i16**, i16*** %6, align 4
  %399 = getelementptr inbounds i16*, i16** %398, i32 0
  %400 = load i16*, i16** %399, align 4
  %401 = load i16, i16* %7, align 2
  %402 = sext i16 %401 to i32
  %403 = load i16, i16* %11, align 2
  %404 = sext i16 %403 to i32
  %405 = add nsw i32 %402, %404
  %406 = add nsw i32 %405, 192
  %407 = getelementptr inbounds i16, i16* %400, i32 %406
  %408 = load i16, i16* %407, align 2
  %409 = sext i16 %408 to i32
  %410 = load i16**, i16*** %6, align 4
  %411 = getelementptr inbounds i16*, i16** %410, i32 1
  %412 = load i16*, i16** %411, align 4
  %413 = load i16, i16* %7, align 2
  %414 = sext i16 %413 to i32
  %415 = load i16, i16* %11, align 2
  %416 = sext i16 %415 to i32
  %417 = add nsw i32 %414, %416
  %418 = add nsw i32 %417, 192
  %419 = getelementptr inbounds i16, i16* %412, i32 %418
  %420 = load i16, i16* %419, align 2
  %421 = sext i16 %420 to i32
  %422 = add nsw i32 %409, %421
  %423 = sitofp i32 %422 to float
  %424 = fmul float 0x3FE6A09E60000000, %423
  %425 = fmul float %397, %424
  store float %425, float* %21, align 4
  %426 = load float, float* %19, align 4
  %427 = load float, float* %21, align 4
  %428 = fsub float %426, %427
  store float %428, float* %20, align 4
  %429 = load float, float* %19, align 4
  %430 = load float, float* %21, align 4
  %431 = fadd float %429, %430
  store float %431, float* %19, align 4
  %432 = load float*, float** %10, align 4
  %433 = getelementptr inbounds float, float* %432, i32 -4
  store float* %433, float** %10, align 4
  %434 = load float, float* %17, align 4
  %435 = load float, float* %19, align 4
  %436 = fadd float %434, %435
  %437 = load float*, float** %10, align 4
  %438 = getelementptr inbounds float, float* %437, i32 0
  store float %436, float* %438, align 4
  %439 = load float, float* %17, align 4
  %440 = load float, float* %19, align 4
  %441 = fsub float %439, %440
  %442 = load float*, float** %10, align 4
  %443 = getelementptr inbounds float, float* %442, i32 2
  store float %441, float* %443, align 4
  %444 = load float, float* %18, align 4
  %445 = load float, float* %20, align 4
  %446 = fadd float %444, %445
  %447 = load float*, float** %10, align 4
  %448 = getelementptr inbounds float, float* %447, i32 1
  store float %446, float* %448, align 4
  %449 = load float, float* %18, align 4
  %450 = load float, float* %20, align 4
  %451 = fsub float %449, %450
  %452 = load float*, float** %10, align 4
  %453 = getelementptr inbounds float, float* %452, i32 3
  store float %451, float* %453, align 4
  %454 = load i16, i16* %7, align 2
  %455 = sext i16 %454 to i32
  %456 = add nsw i32 %455, 1
  %457 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %456
  %458 = load float, float* %457, align 4
  %459 = load i16**, i16*** %6, align 4
  %460 = getelementptr inbounds i16*, i16** %459, i32 0
  %461 = load i16*, i16** %460, align 4
  %462 = load i16, i16* %7, align 2
  %463 = sext i16 %462 to i32
  %464 = load i16, i16* %11, align 2
  %465 = sext i16 %464 to i32
  %466 = add nsw i32 %463, %465
  %467 = add nsw i32 %466, 1
  %468 = getelementptr inbounds i16, i16* %461, i32 %467
  %469 = load i16, i16* %468, align 2
  %470 = sext i16 %469 to i32
  %471 = load i16**, i16*** %6, align 4
  %472 = getelementptr inbounds i16*, i16** %471, i32 1
  %473 = load i16*, i16** %472, align 4
  %474 = load i16, i16* %7, align 2
  %475 = sext i16 %474 to i32
  %476 = load i16, i16* %11, align 2
  %477 = sext i16 %476 to i32
  %478 = add nsw i32 %475, %477
  %479 = add nsw i32 %478, 1
  %480 = getelementptr inbounds i16, i16* %473, i32 %479
  %481 = load i16, i16* %480, align 2
  %482 = sext i16 %481 to i32
  %483 = add nsw i32 %470, %482
  %484 = sitofp i32 %483 to float
  %485 = fmul float 0x3FE6A09E60000000, %484
  %486 = fmul float %458, %485
  store float %486, float* %17, align 4
  %487 = load i16, i16* %7, align 2
  %488 = sext i16 %487 to i32
  %489 = sub nsw i32 126, %488
  %490 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %489
  %491 = load float, float* %490, align 4
  %492 = load i16**, i16*** %6, align 4
  %493 = getelementptr inbounds i16*, i16** %492, i32 0
  %494 = load i16*, i16** %493, align 4
  %495 = load i16, i16* %7, align 2
  %496 = sext i16 %495 to i32
  %497 = load i16, i16* %11, align 2
  %498 = sext i16 %497 to i32
  %499 = add nsw i32 %496, %498
  %500 = add nsw i32 %499, 129
  %501 = getelementptr inbounds i16, i16* %494, i32 %500
  %502 = load i16, i16* %501, align 2
  %503 = sext i16 %502 to i32
  %504 = load i16**, i16*** %6, align 4
  %505 = getelementptr inbounds i16*, i16** %504, i32 1
  %506 = load i16*, i16** %505, align 4
  %507 = load i16, i16* %7, align 2
  %508 = sext i16 %507 to i32
  %509 = load i16, i16* %11, align 2
  %510 = sext i16 %509 to i32
  %511 = add nsw i32 %508, %510
  %512 = add nsw i32 %511, 129
  %513 = getelementptr inbounds i16, i16* %506, i32 %512
  %514 = load i16, i16* %513, align 2
  %515 = sext i16 %514 to i32
  %516 = add nsw i32 %503, %515
  %517 = sitofp i32 %516 to float
  %518 = fmul float 0x3FE6A09E60000000, %517
  %519 = fmul float %491, %518
  store float %519, float* %21, align 4
  %520 = load float, float* %17, align 4
  %521 = load float, float* %21, align 4
  %522 = fsub float %520, %521
  store float %522, float* %18, align 4
  %523 = load float, float* %17, align 4
  %524 = load float, float* %21, align 4
  %525 = fadd float %523, %524
  store float %525, float* %17, align 4
  %526 = load i16, i16* %7, align 2
  %527 = sext i16 %526 to i32
  %528 = add nsw i32 %527, 65
  %529 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %528
  %530 = load float, float* %529, align 4
  %531 = load i16**, i16*** %6, align 4
  %532 = getelementptr inbounds i16*, i16** %531, i32 0
  %533 = load i16*, i16** %532, align 4
  %534 = load i16, i16* %7, align 2
  %535 = sext i16 %534 to i32
  %536 = load i16, i16* %11, align 2
  %537 = sext i16 %536 to i32
  %538 = add nsw i32 %535, %537
  %539 = add nsw i32 %538, 65
  %540 = getelementptr inbounds i16, i16* %533, i32 %539
  %541 = load i16, i16* %540, align 2
  %542 = sext i16 %541 to i32
  %543 = load i16**, i16*** %6, align 4
  %544 = getelementptr inbounds i16*, i16** %543, i32 1
  %545 = load i16*, i16** %544, align 4
  %546 = load i16, i16* %7, align 2
  %547 = sext i16 %546 to i32
  %548 = load i16, i16* %11, align 2
  %549 = sext i16 %548 to i32
  %550 = add nsw i32 %547, %549
  %551 = add nsw i32 %550, 65
  %552 = getelementptr inbounds i16, i16* %545, i32 %551
  %553 = load i16, i16* %552, align 2
  %554 = sext i16 %553 to i32
  %555 = add nsw i32 %542, %554
  %556 = sitofp i32 %555 to float
  %557 = fmul float 0x3FE6A09E60000000, %556
  %558 = fmul float %530, %557
  store float %558, float* %19, align 4
  %559 = load i16, i16* %7, align 2
  %560 = sext i16 %559 to i32
  %561 = sub nsw i32 62, %560
  %562 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %561
  %563 = load float, float* %562, align 4
  %564 = load i16**, i16*** %6, align 4
  %565 = getelementptr inbounds i16*, i16** %564, i32 0
  %566 = load i16*, i16** %565, align 4
  %567 = load i16, i16* %7, align 2
  %568 = sext i16 %567 to i32
  %569 = load i16, i16* %11, align 2
  %570 = sext i16 %569 to i32
  %571 = add nsw i32 %568, %570
  %572 = add nsw i32 %571, 193
  %573 = getelementptr inbounds i16, i16* %566, i32 %572
  %574 = load i16, i16* %573, align 2
  %575 = sext i16 %574 to i32
  %576 = load i16**, i16*** %6, align 4
  %577 = getelementptr inbounds i16*, i16** %576, i32 1
  %578 = load i16*, i16** %577, align 4
  %579 = load i16, i16* %7, align 2
  %580 = sext i16 %579 to i32
  %581 = load i16, i16* %11, align 2
  %582 = sext i16 %581 to i32
  %583 = add nsw i32 %580, %582
  %584 = add nsw i32 %583, 193
  %585 = getelementptr inbounds i16, i16* %578, i32 %584
  %586 = load i16, i16* %585, align 2
  %587 = sext i16 %586 to i32
  %588 = add nsw i32 %575, %587
  %589 = sitofp i32 %588 to float
  %590 = fmul float 0x3FE6A09E60000000, %589
  %591 = fmul float %563, %590
  store float %591, float* %21, align 4
  %592 = load float, float* %19, align 4
  %593 = load float, float* %21, align 4
  %594 = fsub float %592, %593
  store float %594, float* %20, align 4
  %595 = load float, float* %19, align 4
  %596 = load float, float* %21, align 4
  %597 = fadd float %595, %596
  store float %597, float* %19, align 4
  %598 = load float, float* %17, align 4
  %599 = load float, float* %19, align 4
  %600 = fadd float %598, %599
  %601 = load float*, float** %10, align 4
  %602 = getelementptr inbounds float, float* %601, i32 128
  store float %600, float* %602, align 4
  %603 = load float, float* %17, align 4
  %604 = load float, float* %19, align 4
  %605 = fsub float %603, %604
  %606 = load float*, float** %10, align 4
  %607 = getelementptr inbounds float, float* %606, i32 130
  store float %605, float* %607, align 4
  %608 = load float, float* %18, align 4
  %609 = load float, float* %20, align 4
  %610 = fadd float %608, %609
  %611 = load float*, float** %10, align 4
  %612 = getelementptr inbounds float, float* %611, i32 129
  store float %610, float* %612, align 4
  %613 = load float, float* %18, align 4
  %614 = load float, float* %20, align 4
  %615 = fsub float %613, %614
  %616 = load float*, float** %10, align 4
  %617 = getelementptr inbounds float, float* %616, i32 131
  store float %615, float* %617, align 4
  br label %618

; <label>:618:                                    ; preds = %285
  %619 = load i16, i16* %8, align 2
  %620 = add i16 %619, -1
  store i16 %620, i16* %8, align 2
  %621 = sext i16 %620 to i32
  %622 = icmp sge i32 %621, 0
  br i1 %622, label %285, label %623

; <label>:623:                                    ; preds = %618
  br label %964

; <label>:624:                                    ; preds = %281
  br label %625

; <label>:625:                                    ; preds = %958, %624
  %626 = load i16, i16* %8, align 2
  %627 = sext i16 %626 to i32
  %628 = shl i32 %627, 2
  %629 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i32 %628
  %630 = load i16, i16* %629, align 2
  store i16 %630, i16* %7, align 2
  %631 = load i16, i16* %7, align 2
  %632 = sext i16 %631 to i32
  %633 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %632
  %634 = load float, float* %633, align 4
  %635 = load i16**, i16*** %6, align 4
  %636 = getelementptr inbounds i16*, i16** %635, i32 0
  %637 = load i16*, i16** %636, align 4
  %638 = load i16, i16* %7, align 2
  %639 = sext i16 %638 to i32
  %640 = load i16, i16* %11, align 2
  %641 = sext i16 %640 to i32
  %642 = add nsw i32 %639, %641
  %643 = getelementptr inbounds i16, i16* %637, i32 %642
  %644 = load i16, i16* %643, align 2
  %645 = sext i16 %644 to i32
  %646 = load i16**, i16*** %6, align 4
  %647 = getelementptr inbounds i16*, i16** %646, i32 1
  %648 = load i16*, i16** %647, align 4
  %649 = load i16, i16* %7, align 2
  %650 = sext i16 %649 to i32
  %651 = load i16, i16* %11, align 2
  %652 = sext i16 %651 to i32
  %653 = add nsw i32 %650, %652
  %654 = getelementptr inbounds i16, i16* %648, i32 %653
  %655 = load i16, i16* %654, align 2
  %656 = sext i16 %655 to i32
  %657 = sub nsw i32 %645, %656
  %658 = sitofp i32 %657 to float
  %659 = fmul float 0x3FE6A09E60000000, %658
  %660 = fmul float %634, %659
  store float %660, float* %22, align 4
  %661 = load i16, i16* %7, align 2
  %662 = sext i16 %661 to i32
  %663 = sub nsw i32 127, %662
  %664 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %663
  %665 = load float, float* %664, align 4
  %666 = load i16**, i16*** %6, align 4
  %667 = getelementptr inbounds i16*, i16** %666, i32 0
  %668 = load i16*, i16** %667, align 4
  %669 = load i16, i16* %7, align 2
  %670 = sext i16 %669 to i32
  %671 = load i16, i16* %11, align 2
  %672 = sext i16 %671 to i32
  %673 = add nsw i32 %670, %672
  %674 = add nsw i32 %673, 128
  %675 = getelementptr inbounds i16, i16* %668, i32 %674
  %676 = load i16, i16* %675, align 2
  %677 = sext i16 %676 to i32
  %678 = load i16**, i16*** %6, align 4
  %679 = getelementptr inbounds i16*, i16** %678, i32 1
  %680 = load i16*, i16** %679, align 4
  %681 = load i16, i16* %7, align 2
  %682 = sext i16 %681 to i32
  %683 = load i16, i16* %11, align 2
  %684 = sext i16 %683 to i32
  %685 = add nsw i32 %682, %684
  %686 = add nsw i32 %685, 128
  %687 = getelementptr inbounds i16, i16* %680, i32 %686
  %688 = load i16, i16* %687, align 2
  %689 = sext i16 %688 to i32
  %690 = sub nsw i32 %677, %689
  %691 = sitofp i32 %690 to float
  %692 = fmul float 0x3FE6A09E60000000, %691
  %693 = fmul float %665, %692
  store float %693, float* %26, align 4
  %694 = load float, float* %22, align 4
  %695 = load float, float* %26, align 4
  %696 = fsub float %694, %695
  store float %696, float* %23, align 4
  %697 = load float, float* %22, align 4
  %698 = load float, float* %26, align 4
  %699 = fadd float %697, %698
  store float %699, float* %22, align 4
  %700 = load i16, i16* %7, align 2
  %701 = sext i16 %700 to i32
  %702 = add nsw i32 %701, 64
  %703 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %702
  %704 = load float, float* %703, align 4
  %705 = load i16**, i16*** %6, align 4
  %706 = getelementptr inbounds i16*, i16** %705, i32 0
  %707 = load i16*, i16** %706, align 4
  %708 = load i16, i16* %7, align 2
  %709 = sext i16 %708 to i32
  %710 = load i16, i16* %11, align 2
  %711 = sext i16 %710 to i32
  %712 = add nsw i32 %709, %711
  %713 = add nsw i32 %712, 64
  %714 = getelementptr inbounds i16, i16* %707, i32 %713
  %715 = load i16, i16* %714, align 2
  %716 = sext i16 %715 to i32
  %717 = load i16**, i16*** %6, align 4
  %718 = getelementptr inbounds i16*, i16** %717, i32 1
  %719 = load i16*, i16** %718, align 4
  %720 = load i16, i16* %7, align 2
  %721 = sext i16 %720 to i32
  %722 = load i16, i16* %11, align 2
  %723 = sext i16 %722 to i32
  %724 = add nsw i32 %721, %723
  %725 = add nsw i32 %724, 64
  %726 = getelementptr inbounds i16, i16* %719, i32 %725
  %727 = load i16, i16* %726, align 2
  %728 = sext i16 %727 to i32
  %729 = sub nsw i32 %716, %728
  %730 = sitofp i32 %729 to float
  %731 = fmul float 0x3FE6A09E60000000, %730
  %732 = fmul float %704, %731
  store float %732, float* %24, align 4
  %733 = load i16, i16* %7, align 2
  %734 = sext i16 %733 to i32
  %735 = sub nsw i32 63, %734
  %736 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %735
  %737 = load float, float* %736, align 4
  %738 = load i16**, i16*** %6, align 4
  %739 = getelementptr inbounds i16*, i16** %738, i32 0
  %740 = load i16*, i16** %739, align 4
  %741 = load i16, i16* %7, align 2
  %742 = sext i16 %741 to i32
  %743 = load i16, i16* %11, align 2
  %744 = sext i16 %743 to i32
  %745 = add nsw i32 %742, %744
  %746 = add nsw i32 %745, 192
  %747 = getelementptr inbounds i16, i16* %740, i32 %746
  %748 = load i16, i16* %747, align 2
  %749 = sext i16 %748 to i32
  %750 = load i16**, i16*** %6, align 4
  %751 = getelementptr inbounds i16*, i16** %750, i32 1
  %752 = load i16*, i16** %751, align 4
  %753 = load i16, i16* %7, align 2
  %754 = sext i16 %753 to i32
  %755 = load i16, i16* %11, align 2
  %756 = sext i16 %755 to i32
  %757 = add nsw i32 %754, %756
  %758 = add nsw i32 %757, 192
  %759 = getelementptr inbounds i16, i16* %752, i32 %758
  %760 = load i16, i16* %759, align 2
  %761 = sext i16 %760 to i32
  %762 = sub nsw i32 %749, %761
  %763 = sitofp i32 %762 to float
  %764 = fmul float 0x3FE6A09E60000000, %763
  %765 = fmul float %737, %764
  store float %765, float* %26, align 4
  %766 = load float, float* %24, align 4
  %767 = load float, float* %26, align 4
  %768 = fsub float %766, %767
  store float %768, float* %25, align 4
  %769 = load float, float* %24, align 4
  %770 = load float, float* %26, align 4
  %771 = fadd float %769, %770
  store float %771, float* %24, align 4
  %772 = load float*, float** %10, align 4
  %773 = getelementptr inbounds float, float* %772, i32 -4
  store float* %773, float** %10, align 4
  %774 = load float, float* %22, align 4
  %775 = load float, float* %24, align 4
  %776 = fadd float %774, %775
  %777 = load float*, float** %10, align 4
  %778 = getelementptr inbounds float, float* %777, i32 0
  store float %776, float* %778, align 4
  %779 = load float, float* %22, align 4
  %780 = load float, float* %24, align 4
  %781 = fsub float %779, %780
  %782 = load float*, float** %10, align 4
  %783 = getelementptr inbounds float, float* %782, i32 2
  store float %781, float* %783, align 4
  %784 = load float, float* %23, align 4
  %785 = load float, float* %25, align 4
  %786 = fadd float %784, %785
  %787 = load float*, float** %10, align 4
  %788 = getelementptr inbounds float, float* %787, i32 1
  store float %786, float* %788, align 4
  %789 = load float, float* %23, align 4
  %790 = load float, float* %25, align 4
  %791 = fsub float %789, %790
  %792 = load float*, float** %10, align 4
  %793 = getelementptr inbounds float, float* %792, i32 3
  store float %791, float* %793, align 4
  %794 = load i16, i16* %7, align 2
  %795 = sext i16 %794 to i32
  %796 = add nsw i32 %795, 1
  %797 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %796
  %798 = load float, float* %797, align 4
  %799 = load i16**, i16*** %6, align 4
  %800 = getelementptr inbounds i16*, i16** %799, i32 0
  %801 = load i16*, i16** %800, align 4
  %802 = load i16, i16* %7, align 2
  %803 = sext i16 %802 to i32
  %804 = load i16, i16* %11, align 2
  %805 = sext i16 %804 to i32
  %806 = add nsw i32 %803, %805
  %807 = add nsw i32 %806, 1
  %808 = getelementptr inbounds i16, i16* %801, i32 %807
  %809 = load i16, i16* %808, align 2
  %810 = sext i16 %809 to i32
  %811 = load i16**, i16*** %6, align 4
  %812 = getelementptr inbounds i16*, i16** %811, i32 1
  %813 = load i16*, i16** %812, align 4
  %814 = load i16, i16* %7, align 2
  %815 = sext i16 %814 to i32
  %816 = load i16, i16* %11, align 2
  %817 = sext i16 %816 to i32
  %818 = add nsw i32 %815, %817
  %819 = add nsw i32 %818, 1
  %820 = getelementptr inbounds i16, i16* %813, i32 %819
  %821 = load i16, i16* %820, align 2
  %822 = sext i16 %821 to i32
  %823 = sub nsw i32 %810, %822
  %824 = sitofp i32 %823 to float
  %825 = fmul float 0x3FE6A09E60000000, %824
  %826 = fmul float %798, %825
  store float %826, float* %22, align 4
  %827 = load i16, i16* %7, align 2
  %828 = sext i16 %827 to i32
  %829 = sub nsw i32 126, %828
  %830 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %829
  %831 = load float, float* %830, align 4
  %832 = load i16**, i16*** %6, align 4
  %833 = getelementptr inbounds i16*, i16** %832, i32 0
  %834 = load i16*, i16** %833, align 4
  %835 = load i16, i16* %7, align 2
  %836 = sext i16 %835 to i32
  %837 = load i16, i16* %11, align 2
  %838 = sext i16 %837 to i32
  %839 = add nsw i32 %836, %838
  %840 = add nsw i32 %839, 129
  %841 = getelementptr inbounds i16, i16* %834, i32 %840
  %842 = load i16, i16* %841, align 2
  %843 = sext i16 %842 to i32
  %844 = load i16**, i16*** %6, align 4
  %845 = getelementptr inbounds i16*, i16** %844, i32 1
  %846 = load i16*, i16** %845, align 4
  %847 = load i16, i16* %7, align 2
  %848 = sext i16 %847 to i32
  %849 = load i16, i16* %11, align 2
  %850 = sext i16 %849 to i32
  %851 = add nsw i32 %848, %850
  %852 = add nsw i32 %851, 129
  %853 = getelementptr inbounds i16, i16* %846, i32 %852
  %854 = load i16, i16* %853, align 2
  %855 = sext i16 %854 to i32
  %856 = sub nsw i32 %843, %855
  %857 = sitofp i32 %856 to float
  %858 = fmul float 0x3FE6A09E60000000, %857
  %859 = fmul float %831, %858
  store float %859, float* %26, align 4
  %860 = load float, float* %22, align 4
  %861 = load float, float* %26, align 4
  %862 = fsub float %860, %861
  store float %862, float* %23, align 4
  %863 = load float, float* %22, align 4
  %864 = load float, float* %26, align 4
  %865 = fadd float %863, %864
  store float %865, float* %22, align 4
  %866 = load i16, i16* %7, align 2
  %867 = sext i16 %866 to i32
  %868 = add nsw i32 %867, 65
  %869 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %868
  %870 = load float, float* %869, align 4
  %871 = load i16**, i16*** %6, align 4
  %872 = getelementptr inbounds i16*, i16** %871, i32 0
  %873 = load i16*, i16** %872, align 4
  %874 = load i16, i16* %7, align 2
  %875 = sext i16 %874 to i32
  %876 = load i16, i16* %11, align 2
  %877 = sext i16 %876 to i32
  %878 = add nsw i32 %875, %877
  %879 = add nsw i32 %878, 65
  %880 = getelementptr inbounds i16, i16* %873, i32 %879
  %881 = load i16, i16* %880, align 2
  %882 = sext i16 %881 to i32
  %883 = load i16**, i16*** %6, align 4
  %884 = getelementptr inbounds i16*, i16** %883, i32 1
  %885 = load i16*, i16** %884, align 4
  %886 = load i16, i16* %7, align 2
  %887 = sext i16 %886 to i32
  %888 = load i16, i16* %11, align 2
  %889 = sext i16 %888 to i32
  %890 = add nsw i32 %887, %889
  %891 = add nsw i32 %890, 65
  %892 = getelementptr inbounds i16, i16* %885, i32 %891
  %893 = load i16, i16* %892, align 2
  %894 = sext i16 %893 to i32
  %895 = sub nsw i32 %882, %894
  %896 = sitofp i32 %895 to float
  %897 = fmul float 0x3FE6A09E60000000, %896
  %898 = fmul float %870, %897
  store float %898, float* %24, align 4
  %899 = load i16, i16* %7, align 2
  %900 = sext i16 %899 to i32
  %901 = sub nsw i32 62, %900
  %902 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %901
  %903 = load float, float* %902, align 4
  %904 = load i16**, i16*** %6, align 4
  %905 = getelementptr inbounds i16*, i16** %904, i32 0
  %906 = load i16*, i16** %905, align 4
  %907 = load i16, i16* %7, align 2
  %908 = sext i16 %907 to i32
  %909 = load i16, i16* %11, align 2
  %910 = sext i16 %909 to i32
  %911 = add nsw i32 %908, %910
  %912 = add nsw i32 %911, 193
  %913 = getelementptr inbounds i16, i16* %906, i32 %912
  %914 = load i16, i16* %913, align 2
  %915 = sext i16 %914 to i32
  %916 = load i16**, i16*** %6, align 4
  %917 = getelementptr inbounds i16*, i16** %916, i32 1
  %918 = load i16*, i16** %917, align 4
  %919 = load i16, i16* %7, align 2
  %920 = sext i16 %919 to i32
  %921 = load i16, i16* %11, align 2
  %922 = sext i16 %921 to i32
  %923 = add nsw i32 %920, %922
  %924 = add nsw i32 %923, 193
  %925 = getelementptr inbounds i16, i16* %918, i32 %924
  %926 = load i16, i16* %925, align 2
  %927 = sext i16 %926 to i32
  %928 = sub nsw i32 %915, %927
  %929 = sitofp i32 %928 to float
  %930 = fmul float 0x3FE6A09E60000000, %929
  %931 = fmul float %903, %930
  store float %931, float* %26, align 4
  %932 = load float, float* %24, align 4
  %933 = load float, float* %26, align 4
  %934 = fsub float %932, %933
  store float %934, float* %25, align 4
  %935 = load float, float* %24, align 4
  %936 = load float, float* %26, align 4
  %937 = fadd float %935, %936
  store float %937, float* %24, align 4
  %938 = load float, float* %22, align 4
  %939 = load float, float* %24, align 4
  %940 = fadd float %938, %939
  %941 = load float*, float** %10, align 4
  %942 = getelementptr inbounds float, float* %941, i32 128
  store float %940, float* %942, align 4
  %943 = load float, float* %22, align 4
  %944 = load float, float* %24, align 4
  %945 = fsub float %943, %944
  %946 = load float*, float** %10, align 4
  %947 = getelementptr inbounds float, float* %946, i32 130
  store float %945, float* %947, align 4
  %948 = load float, float* %23, align 4
  %949 = load float, float* %25, align 4
  %950 = fadd float %948, %949
  %951 = load float*, float** %10, align 4
  %952 = getelementptr inbounds float, float* %951, i32 129
  store float %950, float* %952, align 4
  %953 = load float, float* %23, align 4
  %954 = load float, float* %25, align 4
  %955 = fsub float %953, %954
  %956 = load float*, float** %10, align 4
  %957 = getelementptr inbounds float, float* %956, i32 131
  store float %955, float* %957, align 4
  br label %958

; <label>:958:                                    ; preds = %625
  %959 = load i16, i16* %8, align 2
  %960 = add i16 %959, -1
  store i16 %960, i16* %8, align 2
  %961 = sext i16 %960 to i32
  %962 = icmp sge i32 %961, 0
  br i1 %962, label %625, label %963

; <label>:963:                                    ; preds = %958
  br label %964

; <label>:964:                                    ; preds = %963, %623
  br label %965

; <label>:965:                                    ; preds = %964, %280
  %966 = load float*, float** %10, align 4
  call arm_aapcscc void @fht(float* %966, i16 signext 256)
  br label %967

; <label>:967:                                    ; preds = %965
  %968 = load i16, i16* %9, align 2
  %969 = add i16 %968, 1
  store i16 %969, i16* %9, align 2
  br label %27

; <label>:970:                                    ; preds = %27
  ret void
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @fht(float*, i16 signext) #1 {
  %3 = alloca float*, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca float*, align 4
  %7 = alloca float*, align 4
  %8 = alloca float*, align 4
  %9 = alloca float*, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  store float* %0, float** %3, align 4
  store i16 %1, i16* %4, align 2
  %33 = load float*, float** %3, align 4
  %34 = load i16, i16* %4, align 2
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds float, float* %33, i32 %35
  store float* %36, float** %7, align 4
  store float* getelementptr inbounds ([8 x float], [8 x float]* @costab, i32 0, i32 0), float** %9, align 4
  store i16 4, i16* %5, align 2
  br label %37

; <label>:37:                                     ; preds = %467, %2
  %38 = load i16, i16* %5, align 2
  %39 = sext i16 %38 to i32
  %40 = ashr i32 %39, 1
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %16, align 2
  %42 = load i16, i16* %5, align 2
  store i16 %42, i16* %13, align 2
  %43 = load i16, i16* %5, align 2
  %44 = sext i16 %43 to i32
  %45 = shl i32 %44, 1
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %14, align 2
  %47 = load i16, i16* %14, align 2
  %48 = sext i16 %47 to i32
  %49 = load i16, i16* %13, align 2
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %48, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %15, align 2
  %53 = load i16, i16* %14, align 2
  %54 = sext i16 %53 to i32
  %55 = shl i32 %54, 1
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %5, align 2
  %57 = load float*, float** %3, align 4
  store float* %57, float** %6, align 4
  %58 = load float*, float** %6, align 4
  %59 = load i16, i16* %16, align 2
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds float, float* %58, i32 %60
  store float* %61, float** %8, align 4
  br label %62

; <label>:62:                                     ; preds = %197, %37
  %63 = load float*, float** %6, align 4
  %64 = getelementptr inbounds float, float* %63, i32 0
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %6, align 4
  %67 = load i16, i16* %13, align 2
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds float, float* %66, i32 %68
  %70 = load float, float* %69, align 4
  %71 = fsub float %65, %70
  store float %71, float* %18, align 4
  %72 = load float*, float** %6, align 4
  %73 = getelementptr inbounds float, float* %72, i32 0
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %6, align 4
  %76 = load i16, i16* %13, align 2
  %77 = sext i16 %76 to i32
  %78 = getelementptr inbounds float, float* %75, i32 %77
  %79 = load float, float* %78, align 4
  %80 = fadd float %74, %79
  store float %80, float* %17, align 4
  %81 = load float*, float** %6, align 4
  %82 = load i16, i16* %14, align 2
  %83 = sext i16 %82 to i32
  %84 = getelementptr inbounds float, float* %81, i32 %83
  %85 = load float, float* %84, align 4
  %86 = load float*, float** %6, align 4
  %87 = load i16, i16* %15, align 2
  %88 = sext i16 %87 to i32
  %89 = getelementptr inbounds float, float* %86, i32 %88
  %90 = load float, float* %89, align 4
  %91 = fsub float %85, %90
  store float %91, float* %20, align 4
  %92 = load float*, float** %6, align 4
  %93 = load i16, i16* %14, align 2
  %94 = sext i16 %93 to i32
  %95 = getelementptr inbounds float, float* %92, i32 %94
  %96 = load float, float* %95, align 4
  %97 = load float*, float** %6, align 4
  %98 = load i16, i16* %15, align 2
  %99 = sext i16 %98 to i32
  %100 = getelementptr inbounds float, float* %97, i32 %99
  %101 = load float, float* %100, align 4
  %102 = fadd float %96, %101
  store float %102, float* %19, align 4
  %103 = load float, float* %17, align 4
  %104 = load float, float* %19, align 4
  %105 = fsub float %103, %104
  %106 = load float*, float** %6, align 4
  %107 = load i16, i16* %14, align 2
  %108 = sext i16 %107 to i32
  %109 = getelementptr inbounds float, float* %106, i32 %108
  store float %105, float* %109, align 4
  %110 = load float, float* %17, align 4
  %111 = load float, float* %19, align 4
  %112 = fadd float %110, %111
  %113 = load float*, float** %6, align 4
  %114 = getelementptr inbounds float, float* %113, i32 0
  store float %112, float* %114, align 4
  %115 = load float, float* %18, align 4
  %116 = load float, float* %20, align 4
  %117 = fsub float %115, %116
  %118 = load float*, float** %6, align 4
  %119 = load i16, i16* %15, align 2
  %120 = sext i16 %119 to i32
  %121 = getelementptr inbounds float, float* %118, i32 %120
  store float %117, float* %121, align 4
  %122 = load float, float* %18, align 4
  %123 = load float, float* %20, align 4
  %124 = fadd float %122, %123
  %125 = load float*, float** %6, align 4
  %126 = load i16, i16* %13, align 2
  %127 = sext i16 %126 to i32
  %128 = getelementptr inbounds float, float* %125, i32 %127
  store float %124, float* %128, align 4
  %129 = load float*, float** %8, align 4
  %130 = getelementptr inbounds float, float* %129, i32 0
  %131 = load float, float* %130, align 4
  %132 = load float*, float** %8, align 4
  %133 = load i16, i16* %13, align 2
  %134 = sext i16 %133 to i32
  %135 = getelementptr inbounds float, float* %132, i32 %134
  %136 = load float, float* %135, align 4
  %137 = fsub float %131, %136
  store float %137, float* %18, align 4
  %138 = load float*, float** %8, align 4
  %139 = getelementptr inbounds float, float* %138, i32 0
  %140 = load float, float* %139, align 4
  %141 = load float*, float** %8, align 4
  %142 = load i16, i16* %13, align 2
  %143 = sext i16 %142 to i32
  %144 = getelementptr inbounds float, float* %141, i32 %143
  %145 = load float, float* %144, align 4
  %146 = fadd float %140, %145
  store float %146, float* %17, align 4
  %147 = load float*, float** %8, align 4
  %148 = load i16, i16* %15, align 2
  %149 = sext i16 %148 to i32
  %150 = getelementptr inbounds float, float* %147, i32 %149
  %151 = load float, float* %150, align 4
  %152 = fpext float %151 to double
  %153 = fmul double 0x3FF6A09E667F3BCD, %152
  %154 = fptrunc double %153 to float
  store float %154, float* %20, align 4
  %155 = load float*, float** %8, align 4
  %156 = load i16, i16* %14, align 2
  %157 = sext i16 %156 to i32
  %158 = getelementptr inbounds float, float* %155, i32 %157
  %159 = load float, float* %158, align 4
  %160 = fpext float %159 to double
  %161 = fmul double 0x3FF6A09E667F3BCD, %160
  %162 = fptrunc double %161 to float
  store float %162, float* %19, align 4
  %163 = load float, float* %17, align 4
  %164 = load float, float* %19, align 4
  %165 = fsub float %163, %164
  %166 = load float*, float** %8, align 4
  %167 = load i16, i16* %14, align 2
  %168 = sext i16 %167 to i32
  %169 = getelementptr inbounds float, float* %166, i32 %168
  store float %165, float* %169, align 4
  %170 = load float, float* %17, align 4
  %171 = load float, float* %19, align 4
  %172 = fadd float %170, %171
  %173 = load float*, float** %8, align 4
  %174 = getelementptr inbounds float, float* %173, i32 0
  store float %172, float* %174, align 4
  %175 = load float, float* %18, align 4
  %176 = load float, float* %20, align 4
  %177 = fsub float %175, %176
  %178 = load float*, float** %8, align 4
  %179 = load i16, i16* %15, align 2
  %180 = sext i16 %179 to i32
  %181 = getelementptr inbounds float, float* %178, i32 %180
  store float %177, float* %181, align 4
  %182 = load float, float* %18, align 4
  %183 = load float, float* %20, align 4
  %184 = fadd float %182, %183
  %185 = load float*, float** %8, align 4
  %186 = load i16, i16* %13, align 2
  %187 = sext i16 %186 to i32
  %188 = getelementptr inbounds float, float* %185, i32 %187
  store float %184, float* %188, align 4
  %189 = load i16, i16* %5, align 2
  %190 = sext i16 %189 to i32
  %191 = load float*, float** %8, align 4
  %192 = getelementptr inbounds float, float* %191, i32 %190
  store float* %192, float** %8, align 4
  %193 = load i16, i16* %5, align 2
  %194 = sext i16 %193 to i32
  %195 = load float*, float** %6, align 4
  %196 = getelementptr inbounds float, float* %195, i32 %194
  store float* %196, float** %6, align 4
  br label %197

; <label>:197:                                    ; preds = %62
  %198 = load float*, float** %6, align 4
  %199 = load float*, float** %7, align 4
  %200 = icmp ult float* %198, %199
  br i1 %200, label %62, label %201

; <label>:201:                                    ; preds = %197
  %202 = load float*, float** %9, align 4
  %203 = getelementptr inbounds float, float* %202, i32 0
  %204 = load float, float* %203, align 4
  store float %204, float* %11, align 4
  %205 = load float*, float** %9, align 4
  %206 = getelementptr inbounds float, float* %205, i32 1
  %207 = load float, float* %206, align 4
  store float %207, float* %10, align 4
  store i16 1, i16* %12, align 2
  br label %208

; <label>:208:                                    ; preds = %461, %201
  %209 = load i16, i16* %12, align 2
  %210 = sext i16 %209 to i32
  %211 = load i16, i16* %16, align 2
  %212 = sext i16 %211 to i32
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %464

; <label>:214:                                    ; preds = %208
  %215 = load float, float* %10, align 4
  %216 = fmul float 2.000000e+00, %215
  %217 = load float, float* %10, align 4
  %218 = fmul float %216, %217
  %219 = fsub float 1.000000e+00, %218
  store float %219, float* %21, align 4
  %220 = load float, float* %10, align 4
  %221 = fmul float 2.000000e+00, %220
  %222 = load float, float* %11, align 4
  %223 = fmul float %221, %222
  store float %223, float* %22, align 4
  %224 = load float*, float** %3, align 4
  %225 = load i16, i16* %12, align 2
  %226 = sext i16 %225 to i32
  %227 = getelementptr inbounds float, float* %224, i32 %226
  store float* %227, float** %6, align 4
  %228 = load float*, float** %3, align 4
  %229 = load i16, i16* %13, align 2
  %230 = sext i16 %229 to i32
  %231 = getelementptr inbounds float, float* %228, i32 %230
  %232 = load i16, i16* %12, align 2
  %233 = sext i16 %232 to i32
  %234 = sub i32 0, %233
  %235 = getelementptr inbounds float, float* %231, i32 %234
  store float* %235, float** %8, align 4
  br label %236

; <label>:236:                                    ; preds = %433, %214
  %237 = load float, float* %22, align 4
  %238 = load float*, float** %6, align 4
  %239 = load i16, i16* %13, align 2
  %240 = sext i16 %239 to i32
  %241 = getelementptr inbounds float, float* %238, i32 %240
  %242 = load float, float* %241, align 4
  %243 = fmul float %237, %242
  %244 = load float, float* %21, align 4
  %245 = load float*, float** %8, align 4
  %246 = load i16, i16* %13, align 2
  %247 = sext i16 %246 to i32
  %248 = getelementptr inbounds float, float* %245, i32 %247
  %249 = load float, float* %248, align 4
  %250 = fmul float %244, %249
  %251 = fsub float %243, %250
  store float %251, float* %24, align 4
  %252 = load float, float* %21, align 4
  %253 = load float*, float** %6, align 4
  %254 = load i16, i16* %13, align 2
  %255 = sext i16 %254 to i32
  %256 = getelementptr inbounds float, float* %253, i32 %255
  %257 = load float, float* %256, align 4
  %258 = fmul float %252, %257
  %259 = load float, float* %22, align 4
  %260 = load float*, float** %8, align 4
  %261 = load i16, i16* %13, align 2
  %262 = sext i16 %261 to i32
  %263 = getelementptr inbounds float, float* %260, i32 %262
  %264 = load float, float* %263, align 4
  %265 = fmul float %259, %264
  %266 = fadd float %258, %265
  store float %266, float* %23, align 4
  %267 = load float*, float** %6, align 4
  %268 = getelementptr inbounds float, float* %267, i32 0
  %269 = load float, float* %268, align 4
  %270 = load float, float* %23, align 4
  %271 = fsub float %269, %270
  store float %271, float* %27, align 4
  %272 = load float*, float** %6, align 4
  %273 = getelementptr inbounds float, float* %272, i32 0
  %274 = load float, float* %273, align 4
  %275 = load float, float* %23, align 4
  %276 = fadd float %274, %275
  store float %276, float* %26, align 4
  %277 = load float*, float** %8, align 4
  %278 = getelementptr inbounds float, float* %277, i32 0
  %279 = load float, float* %278, align 4
  %280 = load float, float* %24, align 4
  %281 = fsub float %279, %280
  store float %281, float* %28, align 4
  %282 = load float*, float** %8, align 4
  %283 = getelementptr inbounds float, float* %282, i32 0
  %284 = load float, float* %283, align 4
  %285 = load float, float* %24, align 4
  %286 = fadd float %284, %285
  store float %286, float* %25, align 4
  %287 = load float, float* %22, align 4
  %288 = load float*, float** %6, align 4
  %289 = load i16, i16* %15, align 2
  %290 = sext i16 %289 to i32
  %291 = getelementptr inbounds float, float* %288, i32 %290
  %292 = load float, float* %291, align 4
  %293 = fmul float %287, %292
  %294 = load float, float* %21, align 4
  %295 = load float*, float** %8, align 4
  %296 = load i16, i16* %15, align 2
  %297 = sext i16 %296 to i32
  %298 = getelementptr inbounds float, float* %295, i32 %297
  %299 = load float, float* %298, align 4
  %300 = fmul float %294, %299
  %301 = fsub float %293, %300
  store float %301, float* %24, align 4
  %302 = load float, float* %21, align 4
  %303 = load float*, float** %6, align 4
  %304 = load i16, i16* %15, align 2
  %305 = sext i16 %304 to i32
  %306 = getelementptr inbounds float, float* %303, i32 %305
  %307 = load float, float* %306, align 4
  %308 = fmul float %302, %307
  %309 = load float, float* %22, align 4
  %310 = load float*, float** %8, align 4
  %311 = load i16, i16* %15, align 2
  %312 = sext i16 %311 to i32
  %313 = getelementptr inbounds float, float* %310, i32 %312
  %314 = load float, float* %313, align 4
  %315 = fmul float %309, %314
  %316 = fadd float %308, %315
  store float %316, float* %23, align 4
  %317 = load float*, float** %6, align 4
  %318 = load i16, i16* %14, align 2
  %319 = sext i16 %318 to i32
  %320 = getelementptr inbounds float, float* %317, i32 %319
  %321 = load float, float* %320, align 4
  %322 = load float, float* %23, align 4
  %323 = fsub float %321, %322
  store float %323, float* %31, align 4
  %324 = load float*, float** %6, align 4
  %325 = load i16, i16* %14, align 2
  %326 = sext i16 %325 to i32
  %327 = getelementptr inbounds float, float* %324, i32 %326
  %328 = load float, float* %327, align 4
  %329 = load float, float* %23, align 4
  %330 = fadd float %328, %329
  store float %330, float* %29, align 4
  %331 = load float*, float** %8, align 4
  %332 = load i16, i16* %14, align 2
  %333 = sext i16 %332 to i32
  %334 = getelementptr inbounds float, float* %331, i32 %333
  %335 = load float, float* %334, align 4
  %336 = load float, float* %24, align 4
  %337 = fsub float %335, %336
  store float %337, float* %32, align 4
  %338 = load float*, float** %8, align 4
  %339 = load i16, i16* %14, align 2
  %340 = sext i16 %339 to i32
  %341 = getelementptr inbounds float, float* %338, i32 %340
  %342 = load float, float* %341, align 4
  %343 = load float, float* %24, align 4
  %344 = fadd float %342, %343
  store float %344, float* %30, align 4
  %345 = load float, float* %10, align 4
  %346 = load float, float* %29, align 4
  %347 = fmul float %345, %346
  %348 = load float, float* %11, align 4
  %349 = load float, float* %32, align 4
  %350 = fmul float %348, %349
  %351 = fsub float %347, %350
  store float %351, float* %24, align 4
  %352 = load float, float* %11, align 4
  %353 = load float, float* %29, align 4
  %354 = fmul float %352, %353
  %355 = load float, float* %10, align 4
  %356 = load float, float* %32, align 4
  %357 = fmul float %355, %356
  %358 = fadd float %354, %357
  store float %358, float* %23, align 4
  %359 = load float, float* %26, align 4
  %360 = load float, float* %23, align 4
  %361 = fsub float %359, %360
  %362 = load float*, float** %6, align 4
  %363 = load i16, i16* %14, align 2
  %364 = sext i16 %363 to i32
  %365 = getelementptr inbounds float, float* %362, i32 %364
  store float %361, float* %365, align 4
  %366 = load float, float* %26, align 4
  %367 = load float, float* %23, align 4
  %368 = fadd float %366, %367
  %369 = load float*, float** %6, align 4
  %370 = getelementptr inbounds float, float* %369, i32 0
  store float %368, float* %370, align 4
  %371 = load float, float* %28, align 4
  %372 = load float, float* %24, align 4
  %373 = fsub float %371, %372
  %374 = load float*, float** %8, align 4
  %375 = load i16, i16* %15, align 2
  %376 = sext i16 %375 to i32
  %377 = getelementptr inbounds float, float* %374, i32 %376
  store float %373, float* %377, align 4
  %378 = load float, float* %28, align 4
  %379 = load float, float* %24, align 4
  %380 = fadd float %378, %379
  %381 = load float*, float** %8, align 4
  %382 = load i16, i16* %13, align 2
  %383 = sext i16 %382 to i32
  %384 = getelementptr inbounds float, float* %381, i32 %383
  store float %380, float* %384, align 4
  %385 = load float, float* %11, align 4
  %386 = load float, float* %30, align 4
  %387 = fmul float %385, %386
  %388 = load float, float* %10, align 4
  %389 = load float, float* %31, align 4
  %390 = fmul float %388, %389
  %391 = fsub float %387, %390
  store float %391, float* %24, align 4
  %392 = load float, float* %10, align 4
  %393 = load float, float* %30, align 4
  %394 = fmul float %392, %393
  %395 = load float, float* %11, align 4
  %396 = load float, float* %31, align 4
  %397 = fmul float %395, %396
  %398 = fadd float %394, %397
  store float %398, float* %23, align 4
  %399 = load float, float* %25, align 4
  %400 = load float, float* %23, align 4
  %401 = fsub float %399, %400
  %402 = load float*, float** %8, align 4
  %403 = load i16, i16* %14, align 2
  %404 = sext i16 %403 to i32
  %405 = getelementptr inbounds float, float* %402, i32 %404
  store float %401, float* %405, align 4
  %406 = load float, float* %25, align 4
  %407 = load float, float* %23, align 4
  %408 = fadd float %406, %407
  %409 = load float*, float** %8, align 4
  %410 = getelementptr inbounds float, float* %409, i32 0
  store float %408, float* %410, align 4
  %411 = load float, float* %27, align 4
  %412 = load float, float* %24, align 4
  %413 = fsub float %411, %412
  %414 = load float*, float** %6, align 4
  %415 = load i16, i16* %15, align 2
  %416 = sext i16 %415 to i32
  %417 = getelementptr inbounds float, float* %414, i32 %416
  store float %413, float* %417, align 4
  %418 = load float, float* %27, align 4
  %419 = load float, float* %24, align 4
  %420 = fadd float %418, %419
  %421 = load float*, float** %6, align 4
  %422 = load i16, i16* %13, align 2
  %423 = sext i16 %422 to i32
  %424 = getelementptr inbounds float, float* %421, i32 %423
  store float %420, float* %424, align 4
  %425 = load i16, i16* %5, align 2
  %426 = sext i16 %425 to i32
  %427 = load float*, float** %8, align 4
  %428 = getelementptr inbounds float, float* %427, i32 %426
  store float* %428, float** %8, align 4
  %429 = load i16, i16* %5, align 2
  %430 = sext i16 %429 to i32
  %431 = load float*, float** %6, align 4
  %432 = getelementptr inbounds float, float* %431, i32 %430
  store float* %432, float** %6, align 4
  br label %433

; <label>:433:                                    ; preds = %236
  %434 = load float*, float** %6, align 4
  %435 = load float*, float** %7, align 4
  %436 = icmp ult float* %434, %435
  br i1 %436, label %236, label %437

; <label>:437:                                    ; preds = %433
  %438 = load float, float* %11, align 4
  store float %438, float* %21, align 4
  %439 = load float, float* %21, align 4
  %440 = load float*, float** %9, align 4
  %441 = getelementptr inbounds float, float* %440, i32 0
  %442 = load float, float* %441, align 4
  %443 = fmul float %439, %442
  %444 = load float, float* %10, align 4
  %445 = load float*, float** %9, align 4
  %446 = getelementptr inbounds float, float* %445, i32 1
  %447 = load float, float* %446, align 4
  %448 = fmul float %444, %447
  %449 = fsub float %443, %448
  store float %449, float* %11, align 4
  %450 = load float, float* %21, align 4
  %451 = load float*, float** %9, align 4
  %452 = getelementptr inbounds float, float* %451, i32 1
  %453 = load float, float* %452, align 4
  %454 = fmul float %450, %453
  %455 = load float, float* %10, align 4
  %456 = load float*, float** %9, align 4
  %457 = getelementptr inbounds float, float* %456, i32 0
  %458 = load float, float* %457, align 4
  %459 = fmul float %455, %458
  %460 = fadd float %454, %459
  store float %460, float* %10, align 4
  br label %461

; <label>:461:                                    ; preds = %437
  %462 = load i16, i16* %12, align 2
  %463 = add i16 %462, 1
  store i16 %463, i16* %12, align 2
  br label %208

; <label>:464:                                    ; preds = %208
  %465 = load float*, float** %9, align 4
  %466 = getelementptr inbounds float, float* %465, i32 2
  store float* %466, float** %9, align 4
  br label %467

; <label>:467:                                    ; preds = %464
  %468 = load i16, i16* %5, align 2
  %469 = sext i16 %468 to i32
  %470 = load i16, i16* %4, align 2
  %471 = sext i16 %470 to i32
  %472 = icmp slt i32 %469, %471
  br i1 %472, label %37, label %473

; <label>:473:                                    ; preds = %467
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @fft_long(float*, i32, i16**) #0 {
  %4 = alloca float*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16**, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store float* %0, float** %4, align 4
  store i32 %1, i32* %5, align 4
  store i16** %2, i16*** %6, align 4
  store i16 127, i16* %8, align 2
  %24 = load float*, float** %4, align 4
  %25 = getelementptr inbounds float, float* %24, i32 512
  store float* %25, float** %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %240

; <label>:28:                                     ; preds = %3
  br label %29

; <label>:29:                                     ; preds = %234, %28
  %30 = load i16, i16* %8, align 2
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i32 %31
  %33 = load i16, i16* %32, align 2
  store i16 %33, i16* %7, align 2
  %34 = load i16, i16* %7, align 2
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %35
  %37 = load float, float* %36, align 4
  %38 = load i16**, i16*** %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds i16*, i16** %38, i32 %39
  %41 = load i16*, i16** %40, align 4
  %42 = load i16, i16* %7, align 2
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds i16, i16* %41, i32 %43
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  %47 = sitofp i32 %46 to float
  %48 = fmul float %37, %47
  store float %48, float* %9, align 4
  %49 = load i16, i16* %7, align 2
  %50 = sext i16 %49 to i32
  %51 = sub nsw i32 511, %50
  %52 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %51
  %53 = load float, float* %52, align 4
  %54 = load i16**, i16*** %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds i16*, i16** %54, i32 %55
  %57 = load i16*, i16** %56, align 4
  %58 = load i16, i16* %7, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %59, 512
  %61 = getelementptr inbounds i16, i16* %57, i32 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = sitofp i32 %63 to float
  %65 = fmul float %53, %64
  store float %65, float* %13, align 4
  %66 = load float, float* %9, align 4
  %67 = load float, float* %13, align 4
  %68 = fsub float %66, %67
  store float %68, float* %10, align 4
  %69 = load float, float* %9, align 4
  %70 = load float, float* %13, align 4
  %71 = fadd float %69, %70
  store float %71, float* %9, align 4
  %72 = load i16, i16* %7, align 2
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %73, 256
  %75 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %74
  %76 = load float, float* %75, align 4
  %77 = load i16**, i16*** %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = getelementptr inbounds i16*, i16** %77, i32 %78
  %80 = load i16*, i16** %79, align 4
  %81 = load i16, i16* %7, align 2
  %82 = sext i16 %81 to i32
  %83 = add nsw i32 %82, 256
  %84 = getelementptr inbounds i16, i16* %80, i32 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = sitofp i32 %86 to float
  %88 = fmul float %76, %87
  store float %88, float* %11, align 4
  %89 = load i16, i16* %7, align 2
  %90 = sext i16 %89 to i32
  %91 = sub nsw i32 255, %90
  %92 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %91
  %93 = load float, float* %92, align 4
  %94 = load i16**, i16*** %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = getelementptr inbounds i16*, i16** %94, i32 %95
  %97 = load i16*, i16** %96, align 4
  %98 = load i16, i16* %7, align 2
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %99, 768
  %101 = getelementptr inbounds i16, i16* %97, i32 %100
  %102 = load i16, i16* %101, align 2
  %103 = sext i16 %102 to i32
  %104 = sitofp i32 %103 to float
  %105 = fmul float %93, %104
  store float %105, float* %13, align 4
  %106 = load float, float* %11, align 4
  %107 = load float, float* %13, align 4
  %108 = fsub float %106, %107
  store float %108, float* %12, align 4
  %109 = load float, float* %11, align 4
  %110 = load float, float* %13, align 4
  %111 = fadd float %109, %110
  store float %111, float* %11, align 4
  %112 = load float*, float** %4, align 4
  %113 = getelementptr inbounds float, float* %112, i32 -4
  store float* %113, float** %4, align 4
  %114 = load float, float* %9, align 4
  %115 = load float, float* %11, align 4
  %116 = fadd float %114, %115
  %117 = load float*, float** %4, align 4
  %118 = getelementptr inbounds float, float* %117, i32 0
  store float %116, float* %118, align 4
  %119 = load float, float* %9, align 4
  %120 = load float, float* %11, align 4
  %121 = fsub float %119, %120
  %122 = load float*, float** %4, align 4
  %123 = getelementptr inbounds float, float* %122, i32 2
  store float %121, float* %123, align 4
  %124 = load float, float* %10, align 4
  %125 = load float, float* %12, align 4
  %126 = fadd float %124, %125
  %127 = load float*, float** %4, align 4
  %128 = getelementptr inbounds float, float* %127, i32 1
  store float %126, float* %128, align 4
  %129 = load float, float* %10, align 4
  %130 = load float, float* %12, align 4
  %131 = fsub float %129, %130
  %132 = load float*, float** %4, align 4
  %133 = getelementptr inbounds float, float* %132, i32 3
  store float %131, float* %133, align 4
  %134 = load i16, i16* %7, align 2
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %135, 1
  %137 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %136
  %138 = load float, float* %137, align 4
  %139 = load i16**, i16*** %6, align 4
  %140 = load i32, i32* %5, align 4
  %141 = getelementptr inbounds i16*, i16** %139, i32 %140
  %142 = load i16*, i16** %141, align 4
  %143 = load i16, i16* %7, align 2
  %144 = sext i16 %143 to i32
  %145 = add nsw i32 %144, 1
  %146 = getelementptr inbounds i16, i16* %142, i32 %145
  %147 = load i16, i16* %146, align 2
  %148 = sext i16 %147 to i32
  %149 = sitofp i32 %148 to float
  %150 = fmul float %138, %149
  store float %150, float* %9, align 4
  %151 = load i16, i16* %7, align 2
  %152 = sext i16 %151 to i32
  %153 = sub nsw i32 510, %152
  %154 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %153
  %155 = load float, float* %154, align 4
  %156 = load i16**, i16*** %6, align 4
  %157 = load i32, i32* %5, align 4
  %158 = getelementptr inbounds i16*, i16** %156, i32 %157
  %159 = load i16*, i16** %158, align 4
  %160 = load i16, i16* %7, align 2
  %161 = sext i16 %160 to i32
  %162 = add nsw i32 %161, 513
  %163 = getelementptr inbounds i16, i16* %159, i32 %162
  %164 = load i16, i16* %163, align 2
  %165 = sext i16 %164 to i32
  %166 = sitofp i32 %165 to float
  %167 = fmul float %155, %166
  store float %167, float* %13, align 4
  %168 = load float, float* %9, align 4
  %169 = load float, float* %13, align 4
  %170 = fsub float %168, %169
  store float %170, float* %10, align 4
  %171 = load float, float* %9, align 4
  %172 = load float, float* %13, align 4
  %173 = fadd float %171, %172
  store float %173, float* %9, align 4
  %174 = load i16, i16* %7, align 2
  %175 = sext i16 %174 to i32
  %176 = add nsw i32 %175, 257
  %177 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %176
  %178 = load float, float* %177, align 4
  %179 = load i16**, i16*** %6, align 4
  %180 = load i32, i32* %5, align 4
  %181 = getelementptr inbounds i16*, i16** %179, i32 %180
  %182 = load i16*, i16** %181, align 4
  %183 = load i16, i16* %7, align 2
  %184 = sext i16 %183 to i32
  %185 = add nsw i32 %184, 257
  %186 = getelementptr inbounds i16, i16* %182, i32 %185
  %187 = load i16, i16* %186, align 2
  %188 = sext i16 %187 to i32
  %189 = sitofp i32 %188 to float
  %190 = fmul float %178, %189
  store float %190, float* %11, align 4
  %191 = load i16, i16* %7, align 2
  %192 = sext i16 %191 to i32
  %193 = sub nsw i32 254, %192
  %194 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %193
  %195 = load float, float* %194, align 4
  %196 = load i16**, i16*** %6, align 4
  %197 = load i32, i32* %5, align 4
  %198 = getelementptr inbounds i16*, i16** %196, i32 %197
  %199 = load i16*, i16** %198, align 4
  %200 = load i16, i16* %7, align 2
  %201 = sext i16 %200 to i32
  %202 = add nsw i32 %201, 769
  %203 = getelementptr inbounds i16, i16* %199, i32 %202
  %204 = load i16, i16* %203, align 2
  %205 = sext i16 %204 to i32
  %206 = sitofp i32 %205 to float
  %207 = fmul float %195, %206
  store float %207, float* %13, align 4
  %208 = load float, float* %11, align 4
  %209 = load float, float* %13, align 4
  %210 = fsub float %208, %209
  store float %210, float* %12, align 4
  %211 = load float, float* %11, align 4
  %212 = load float, float* %13, align 4
  %213 = fadd float %211, %212
  store float %213, float* %11, align 4
  %214 = load float, float* %9, align 4
  %215 = load float, float* %11, align 4
  %216 = fadd float %214, %215
  %217 = load float*, float** %4, align 4
  %218 = getelementptr inbounds float, float* %217, i32 512
  store float %216, float* %218, align 4
  %219 = load float, float* %9, align 4
  %220 = load float, float* %11, align 4
  %221 = fsub float %219, %220
  %222 = load float*, float** %4, align 4
  %223 = getelementptr inbounds float, float* %222, i32 514
  store float %221, float* %223, align 4
  %224 = load float, float* %10, align 4
  %225 = load float, float* %12, align 4
  %226 = fadd float %224, %225
  %227 = load float*, float** %4, align 4
  %228 = getelementptr inbounds float, float* %227, i32 513
  store float %226, float* %228, align 4
  %229 = load float, float* %10, align 4
  %230 = load float, float* %12, align 4
  %231 = fsub float %229, %230
  %232 = load float*, float** %4, align 4
  %233 = getelementptr inbounds float, float* %232, i32 515
  store float %231, float* %233, align 4
  br label %234

; <label>:234:                                    ; preds = %29
  %235 = load i16, i16* %8, align 2
  %236 = add i16 %235, -1
  store i16 %236, i16* %8, align 2
  %237 = sext i16 %236 to i32
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %29, label %239

; <label>:239:                                    ; preds = %234
  br label %826

; <label>:240:                                    ; preds = %3
  %241 = load i32, i32* %5, align 4
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %243, label %534

; <label>:243:                                    ; preds = %240
  br label %244

; <label>:244:                                    ; preds = %528, %243
  %245 = load i16, i16* %8, align 2
  %246 = sext i16 %245 to i32
  %247 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i32 %246
  %248 = load i16, i16* %247, align 2
  store i16 %248, i16* %7, align 2
  %249 = load i16, i16* %7, align 2
  %250 = sext i16 %249 to i32
  %251 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %250
  %252 = load float, float* %251, align 4
  %253 = load i16**, i16*** %6, align 4
  %254 = getelementptr inbounds i16*, i16** %253, i32 0
  %255 = load i16*, i16** %254, align 4
  %256 = load i16, i16* %7, align 2
  %257 = sext i16 %256 to i32
  %258 = getelementptr inbounds i16, i16* %255, i32 %257
  %259 = load i16, i16* %258, align 2
  %260 = sext i16 %259 to i32
  %261 = load i16**, i16*** %6, align 4
  %262 = getelementptr inbounds i16*, i16** %261, i32 1
  %263 = load i16*, i16** %262, align 4
  %264 = load i16, i16* %7, align 2
  %265 = sext i16 %264 to i32
  %266 = getelementptr inbounds i16, i16* %263, i32 %265
  %267 = load i16, i16* %266, align 2
  %268 = sext i16 %267 to i32
  %269 = add nsw i32 %260, %268
  %270 = sitofp i32 %269 to float
  %271 = fmul float 0x3FE6A09E60000000, %270
  %272 = fmul float %252, %271
  store float %272, float* %14, align 4
  %273 = load i16, i16* %7, align 2
  %274 = sext i16 %273 to i32
  %275 = sub nsw i32 511, %274
  %276 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %275
  %277 = load float, float* %276, align 4
  %278 = load i16**, i16*** %6, align 4
  %279 = getelementptr inbounds i16*, i16** %278, i32 0
  %280 = load i16*, i16** %279, align 4
  %281 = load i16, i16* %7, align 2
  %282 = sext i16 %281 to i32
  %283 = add nsw i32 %282, 512
  %284 = getelementptr inbounds i16, i16* %280, i32 %283
  %285 = load i16, i16* %284, align 2
  %286 = sext i16 %285 to i32
  %287 = load i16**, i16*** %6, align 4
  %288 = getelementptr inbounds i16*, i16** %287, i32 1
  %289 = load i16*, i16** %288, align 4
  %290 = load i16, i16* %7, align 2
  %291 = sext i16 %290 to i32
  %292 = add nsw i32 %291, 512
  %293 = getelementptr inbounds i16, i16* %289, i32 %292
  %294 = load i16, i16* %293, align 2
  %295 = sext i16 %294 to i32
  %296 = add nsw i32 %286, %295
  %297 = sitofp i32 %296 to float
  %298 = fmul float 0x3FE6A09E60000000, %297
  %299 = fmul float %277, %298
  store float %299, float* %18, align 4
  %300 = load float, float* %14, align 4
  %301 = load float, float* %18, align 4
  %302 = fsub float %300, %301
  store float %302, float* %15, align 4
  %303 = load float, float* %14, align 4
  %304 = load float, float* %18, align 4
  %305 = fadd float %303, %304
  store float %305, float* %14, align 4
  %306 = load i16, i16* %7, align 2
  %307 = sext i16 %306 to i32
  %308 = add nsw i32 %307, 256
  %309 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %308
  %310 = load float, float* %309, align 4
  %311 = load i16**, i16*** %6, align 4
  %312 = getelementptr inbounds i16*, i16** %311, i32 0
  %313 = load i16*, i16** %312, align 4
  %314 = load i16, i16* %7, align 2
  %315 = sext i16 %314 to i32
  %316 = add nsw i32 %315, 256
  %317 = getelementptr inbounds i16, i16* %313, i32 %316
  %318 = load i16, i16* %317, align 2
  %319 = sext i16 %318 to i32
  %320 = load i16**, i16*** %6, align 4
  %321 = getelementptr inbounds i16*, i16** %320, i32 1
  %322 = load i16*, i16** %321, align 4
  %323 = load i16, i16* %7, align 2
  %324 = sext i16 %323 to i32
  %325 = add nsw i32 %324, 256
  %326 = getelementptr inbounds i16, i16* %322, i32 %325
  %327 = load i16, i16* %326, align 2
  %328 = sext i16 %327 to i32
  %329 = add nsw i32 %319, %328
  %330 = sitofp i32 %329 to float
  %331 = fmul float 0x3FE6A09E60000000, %330
  %332 = fmul float %310, %331
  store float %332, float* %16, align 4
  %333 = load i16, i16* %7, align 2
  %334 = sext i16 %333 to i32
  %335 = sub nsw i32 255, %334
  %336 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %335
  %337 = load float, float* %336, align 4
  %338 = load i16**, i16*** %6, align 4
  %339 = getelementptr inbounds i16*, i16** %338, i32 0
  %340 = load i16*, i16** %339, align 4
  %341 = load i16, i16* %7, align 2
  %342 = sext i16 %341 to i32
  %343 = add nsw i32 %342, 768
  %344 = getelementptr inbounds i16, i16* %340, i32 %343
  %345 = load i16, i16* %344, align 2
  %346 = sext i16 %345 to i32
  %347 = load i16**, i16*** %6, align 4
  %348 = getelementptr inbounds i16*, i16** %347, i32 1
  %349 = load i16*, i16** %348, align 4
  %350 = load i16, i16* %7, align 2
  %351 = sext i16 %350 to i32
  %352 = add nsw i32 %351, 768
  %353 = getelementptr inbounds i16, i16* %349, i32 %352
  %354 = load i16, i16* %353, align 2
  %355 = sext i16 %354 to i32
  %356 = add nsw i32 %346, %355
  %357 = sitofp i32 %356 to float
  %358 = fmul float 0x3FE6A09E60000000, %357
  %359 = fmul float %337, %358
  store float %359, float* %18, align 4
  %360 = load float, float* %16, align 4
  %361 = load float, float* %18, align 4
  %362 = fsub float %360, %361
  store float %362, float* %17, align 4
  %363 = load float, float* %16, align 4
  %364 = load float, float* %18, align 4
  %365 = fadd float %363, %364
  store float %365, float* %16, align 4
  %366 = load float*, float** %4, align 4
  %367 = getelementptr inbounds float, float* %366, i32 -4
  store float* %367, float** %4, align 4
  %368 = load float, float* %14, align 4
  %369 = load float, float* %16, align 4
  %370 = fadd float %368, %369
  %371 = load float*, float** %4, align 4
  %372 = getelementptr inbounds float, float* %371, i32 0
  store float %370, float* %372, align 4
  %373 = load float, float* %14, align 4
  %374 = load float, float* %16, align 4
  %375 = fsub float %373, %374
  %376 = load float*, float** %4, align 4
  %377 = getelementptr inbounds float, float* %376, i32 2
  store float %375, float* %377, align 4
  %378 = load float, float* %15, align 4
  %379 = load float, float* %17, align 4
  %380 = fadd float %378, %379
  %381 = load float*, float** %4, align 4
  %382 = getelementptr inbounds float, float* %381, i32 1
  store float %380, float* %382, align 4
  %383 = load float, float* %15, align 4
  %384 = load float, float* %17, align 4
  %385 = fsub float %383, %384
  %386 = load float*, float** %4, align 4
  %387 = getelementptr inbounds float, float* %386, i32 3
  store float %385, float* %387, align 4
  %388 = load i16, i16* %7, align 2
  %389 = sext i16 %388 to i32
  %390 = add nsw i32 %389, 1
  %391 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %390
  %392 = load float, float* %391, align 4
  %393 = load i16**, i16*** %6, align 4
  %394 = getelementptr inbounds i16*, i16** %393, i32 0
  %395 = load i16*, i16** %394, align 4
  %396 = load i16, i16* %7, align 2
  %397 = sext i16 %396 to i32
  %398 = add nsw i32 %397, 1
  %399 = getelementptr inbounds i16, i16* %395, i32 %398
  %400 = load i16, i16* %399, align 2
  %401 = sext i16 %400 to i32
  %402 = load i16**, i16*** %6, align 4
  %403 = getelementptr inbounds i16*, i16** %402, i32 1
  %404 = load i16*, i16** %403, align 4
  %405 = load i16, i16* %7, align 2
  %406 = sext i16 %405 to i32
  %407 = add nsw i32 %406, 1
  %408 = getelementptr inbounds i16, i16* %404, i32 %407
  %409 = load i16, i16* %408, align 2
  %410 = sext i16 %409 to i32
  %411 = add nsw i32 %401, %410
  %412 = sitofp i32 %411 to float
  %413 = fmul float 0x3FE6A09E60000000, %412
  %414 = fmul float %392, %413
  store float %414, float* %14, align 4
  %415 = load i16, i16* %7, align 2
  %416 = sext i16 %415 to i32
  %417 = sub nsw i32 510, %416
  %418 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %417
  %419 = load float, float* %418, align 4
  %420 = load i16**, i16*** %6, align 4
  %421 = getelementptr inbounds i16*, i16** %420, i32 0
  %422 = load i16*, i16** %421, align 4
  %423 = load i16, i16* %7, align 2
  %424 = sext i16 %423 to i32
  %425 = add nsw i32 %424, 513
  %426 = getelementptr inbounds i16, i16* %422, i32 %425
  %427 = load i16, i16* %426, align 2
  %428 = sext i16 %427 to i32
  %429 = load i16**, i16*** %6, align 4
  %430 = getelementptr inbounds i16*, i16** %429, i32 1
  %431 = load i16*, i16** %430, align 4
  %432 = load i16, i16* %7, align 2
  %433 = sext i16 %432 to i32
  %434 = add nsw i32 %433, 513
  %435 = getelementptr inbounds i16, i16* %431, i32 %434
  %436 = load i16, i16* %435, align 2
  %437 = sext i16 %436 to i32
  %438 = add nsw i32 %428, %437
  %439 = sitofp i32 %438 to float
  %440 = fmul float 0x3FE6A09E60000000, %439
  %441 = fmul float %419, %440
  store float %441, float* %18, align 4
  %442 = load float, float* %14, align 4
  %443 = load float, float* %18, align 4
  %444 = fsub float %442, %443
  store float %444, float* %15, align 4
  %445 = load float, float* %14, align 4
  %446 = load float, float* %18, align 4
  %447 = fadd float %445, %446
  store float %447, float* %14, align 4
  %448 = load i16, i16* %7, align 2
  %449 = sext i16 %448 to i32
  %450 = add nsw i32 %449, 257
  %451 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %450
  %452 = load float, float* %451, align 4
  %453 = load i16**, i16*** %6, align 4
  %454 = getelementptr inbounds i16*, i16** %453, i32 0
  %455 = load i16*, i16** %454, align 4
  %456 = load i16, i16* %7, align 2
  %457 = sext i16 %456 to i32
  %458 = add nsw i32 %457, 257
  %459 = getelementptr inbounds i16, i16* %455, i32 %458
  %460 = load i16, i16* %459, align 2
  %461 = sext i16 %460 to i32
  %462 = load i16**, i16*** %6, align 4
  %463 = getelementptr inbounds i16*, i16** %462, i32 1
  %464 = load i16*, i16** %463, align 4
  %465 = load i16, i16* %7, align 2
  %466 = sext i16 %465 to i32
  %467 = add nsw i32 %466, 257
  %468 = getelementptr inbounds i16, i16* %464, i32 %467
  %469 = load i16, i16* %468, align 2
  %470 = sext i16 %469 to i32
  %471 = add nsw i32 %461, %470
  %472 = sitofp i32 %471 to float
  %473 = fmul float 0x3FE6A09E60000000, %472
  %474 = fmul float %452, %473
  store float %474, float* %16, align 4
  %475 = load i16, i16* %7, align 2
  %476 = sext i16 %475 to i32
  %477 = sub nsw i32 254, %476
  %478 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %477
  %479 = load float, float* %478, align 4
  %480 = load i16**, i16*** %6, align 4
  %481 = getelementptr inbounds i16*, i16** %480, i32 0
  %482 = load i16*, i16** %481, align 4
  %483 = load i16, i16* %7, align 2
  %484 = sext i16 %483 to i32
  %485 = add nsw i32 %484, 769
  %486 = getelementptr inbounds i16, i16* %482, i32 %485
  %487 = load i16, i16* %486, align 2
  %488 = sext i16 %487 to i32
  %489 = load i16**, i16*** %6, align 4
  %490 = getelementptr inbounds i16*, i16** %489, i32 1
  %491 = load i16*, i16** %490, align 4
  %492 = load i16, i16* %7, align 2
  %493 = sext i16 %492 to i32
  %494 = add nsw i32 %493, 769
  %495 = getelementptr inbounds i16, i16* %491, i32 %494
  %496 = load i16, i16* %495, align 2
  %497 = sext i16 %496 to i32
  %498 = add nsw i32 %488, %497
  %499 = sitofp i32 %498 to float
  %500 = fmul float 0x3FE6A09E60000000, %499
  %501 = fmul float %479, %500
  store float %501, float* %18, align 4
  %502 = load float, float* %16, align 4
  %503 = load float, float* %18, align 4
  %504 = fsub float %502, %503
  store float %504, float* %17, align 4
  %505 = load float, float* %16, align 4
  %506 = load float, float* %18, align 4
  %507 = fadd float %505, %506
  store float %507, float* %16, align 4
  %508 = load float, float* %14, align 4
  %509 = load float, float* %16, align 4
  %510 = fadd float %508, %509
  %511 = load float*, float** %4, align 4
  %512 = getelementptr inbounds float, float* %511, i32 512
  store float %510, float* %512, align 4
  %513 = load float, float* %14, align 4
  %514 = load float, float* %16, align 4
  %515 = fsub float %513, %514
  %516 = load float*, float** %4, align 4
  %517 = getelementptr inbounds float, float* %516, i32 514
  store float %515, float* %517, align 4
  %518 = load float, float* %15, align 4
  %519 = load float, float* %17, align 4
  %520 = fadd float %518, %519
  %521 = load float*, float** %4, align 4
  %522 = getelementptr inbounds float, float* %521, i32 513
  store float %520, float* %522, align 4
  %523 = load float, float* %15, align 4
  %524 = load float, float* %17, align 4
  %525 = fsub float %523, %524
  %526 = load float*, float** %4, align 4
  %527 = getelementptr inbounds float, float* %526, i32 515
  store float %525, float* %527, align 4
  br label %528

; <label>:528:                                    ; preds = %244
  %529 = load i16, i16* %8, align 2
  %530 = add i16 %529, -1
  store i16 %530, i16* %8, align 2
  %531 = sext i16 %530 to i32
  %532 = icmp sge i32 %531, 0
  br i1 %532, label %244, label %533

; <label>:533:                                    ; preds = %528
  br label %825

; <label>:534:                                    ; preds = %240
  br label %535

; <label>:535:                                    ; preds = %819, %534
  %536 = load i16, i16* %8, align 2
  %537 = sext i16 %536 to i32
  %538 = getelementptr inbounds [128 x i16], [128 x i16]* @rv_tbl, i32 0, i32 %537
  %539 = load i16, i16* %538, align 2
  store i16 %539, i16* %7, align 2
  %540 = load i16, i16* %7, align 2
  %541 = sext i16 %540 to i32
  %542 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %541
  %543 = load float, float* %542, align 4
  %544 = load i16**, i16*** %6, align 4
  %545 = getelementptr inbounds i16*, i16** %544, i32 0
  %546 = load i16*, i16** %545, align 4
  %547 = load i16, i16* %7, align 2
  %548 = sext i16 %547 to i32
  %549 = getelementptr inbounds i16, i16* %546, i32 %548
  %550 = load i16, i16* %549, align 2
  %551 = sext i16 %550 to i32
  %552 = load i16**, i16*** %6, align 4
  %553 = getelementptr inbounds i16*, i16** %552, i32 1
  %554 = load i16*, i16** %553, align 4
  %555 = load i16, i16* %7, align 2
  %556 = sext i16 %555 to i32
  %557 = getelementptr inbounds i16, i16* %554, i32 %556
  %558 = load i16, i16* %557, align 2
  %559 = sext i16 %558 to i32
  %560 = sub nsw i32 %551, %559
  %561 = sitofp i32 %560 to float
  %562 = fmul float 0x3FE6A09E60000000, %561
  %563 = fmul float %543, %562
  store float %563, float* %19, align 4
  %564 = load i16, i16* %7, align 2
  %565 = sext i16 %564 to i32
  %566 = sub nsw i32 511, %565
  %567 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %566
  %568 = load float, float* %567, align 4
  %569 = load i16**, i16*** %6, align 4
  %570 = getelementptr inbounds i16*, i16** %569, i32 0
  %571 = load i16*, i16** %570, align 4
  %572 = load i16, i16* %7, align 2
  %573 = sext i16 %572 to i32
  %574 = add nsw i32 %573, 512
  %575 = getelementptr inbounds i16, i16* %571, i32 %574
  %576 = load i16, i16* %575, align 2
  %577 = sext i16 %576 to i32
  %578 = load i16**, i16*** %6, align 4
  %579 = getelementptr inbounds i16*, i16** %578, i32 1
  %580 = load i16*, i16** %579, align 4
  %581 = load i16, i16* %7, align 2
  %582 = sext i16 %581 to i32
  %583 = add nsw i32 %582, 512
  %584 = getelementptr inbounds i16, i16* %580, i32 %583
  %585 = load i16, i16* %584, align 2
  %586 = sext i16 %585 to i32
  %587 = sub nsw i32 %577, %586
  %588 = sitofp i32 %587 to float
  %589 = fmul float 0x3FE6A09E60000000, %588
  %590 = fmul float %568, %589
  store float %590, float* %23, align 4
  %591 = load float, float* %19, align 4
  %592 = load float, float* %23, align 4
  %593 = fsub float %591, %592
  store float %593, float* %20, align 4
  %594 = load float, float* %19, align 4
  %595 = load float, float* %23, align 4
  %596 = fadd float %594, %595
  store float %596, float* %19, align 4
  %597 = load i16, i16* %7, align 2
  %598 = sext i16 %597 to i32
  %599 = add nsw i32 %598, 256
  %600 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %599
  %601 = load float, float* %600, align 4
  %602 = load i16**, i16*** %6, align 4
  %603 = getelementptr inbounds i16*, i16** %602, i32 0
  %604 = load i16*, i16** %603, align 4
  %605 = load i16, i16* %7, align 2
  %606 = sext i16 %605 to i32
  %607 = add nsw i32 %606, 256
  %608 = getelementptr inbounds i16, i16* %604, i32 %607
  %609 = load i16, i16* %608, align 2
  %610 = sext i16 %609 to i32
  %611 = load i16**, i16*** %6, align 4
  %612 = getelementptr inbounds i16*, i16** %611, i32 1
  %613 = load i16*, i16** %612, align 4
  %614 = load i16, i16* %7, align 2
  %615 = sext i16 %614 to i32
  %616 = add nsw i32 %615, 256
  %617 = getelementptr inbounds i16, i16* %613, i32 %616
  %618 = load i16, i16* %617, align 2
  %619 = sext i16 %618 to i32
  %620 = sub nsw i32 %610, %619
  %621 = sitofp i32 %620 to float
  %622 = fmul float 0x3FE6A09E60000000, %621
  %623 = fmul float %601, %622
  store float %623, float* %21, align 4
  %624 = load i16, i16* %7, align 2
  %625 = sext i16 %624 to i32
  %626 = sub nsw i32 255, %625
  %627 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %626
  %628 = load float, float* %627, align 4
  %629 = load i16**, i16*** %6, align 4
  %630 = getelementptr inbounds i16*, i16** %629, i32 0
  %631 = load i16*, i16** %630, align 4
  %632 = load i16, i16* %7, align 2
  %633 = sext i16 %632 to i32
  %634 = add nsw i32 %633, 768
  %635 = getelementptr inbounds i16, i16* %631, i32 %634
  %636 = load i16, i16* %635, align 2
  %637 = sext i16 %636 to i32
  %638 = load i16**, i16*** %6, align 4
  %639 = getelementptr inbounds i16*, i16** %638, i32 1
  %640 = load i16*, i16** %639, align 4
  %641 = load i16, i16* %7, align 2
  %642 = sext i16 %641 to i32
  %643 = add nsw i32 %642, 768
  %644 = getelementptr inbounds i16, i16* %640, i32 %643
  %645 = load i16, i16* %644, align 2
  %646 = sext i16 %645 to i32
  %647 = sub nsw i32 %637, %646
  %648 = sitofp i32 %647 to float
  %649 = fmul float 0x3FE6A09E60000000, %648
  %650 = fmul float %628, %649
  store float %650, float* %23, align 4
  %651 = load float, float* %21, align 4
  %652 = load float, float* %23, align 4
  %653 = fsub float %651, %652
  store float %653, float* %22, align 4
  %654 = load float, float* %21, align 4
  %655 = load float, float* %23, align 4
  %656 = fadd float %654, %655
  store float %656, float* %21, align 4
  %657 = load float*, float** %4, align 4
  %658 = getelementptr inbounds float, float* %657, i32 -4
  store float* %658, float** %4, align 4
  %659 = load float, float* %19, align 4
  %660 = load float, float* %21, align 4
  %661 = fadd float %659, %660
  %662 = load float*, float** %4, align 4
  %663 = getelementptr inbounds float, float* %662, i32 0
  store float %661, float* %663, align 4
  %664 = load float, float* %19, align 4
  %665 = load float, float* %21, align 4
  %666 = fsub float %664, %665
  %667 = load float*, float** %4, align 4
  %668 = getelementptr inbounds float, float* %667, i32 2
  store float %666, float* %668, align 4
  %669 = load float, float* %20, align 4
  %670 = load float, float* %22, align 4
  %671 = fadd float %669, %670
  %672 = load float*, float** %4, align 4
  %673 = getelementptr inbounds float, float* %672, i32 1
  store float %671, float* %673, align 4
  %674 = load float, float* %20, align 4
  %675 = load float, float* %22, align 4
  %676 = fsub float %674, %675
  %677 = load float*, float** %4, align 4
  %678 = getelementptr inbounds float, float* %677, i32 3
  store float %676, float* %678, align 4
  %679 = load i16, i16* %7, align 2
  %680 = sext i16 %679 to i32
  %681 = add nsw i32 %680, 1
  %682 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %681
  %683 = load float, float* %682, align 4
  %684 = load i16**, i16*** %6, align 4
  %685 = getelementptr inbounds i16*, i16** %684, i32 0
  %686 = load i16*, i16** %685, align 4
  %687 = load i16, i16* %7, align 2
  %688 = sext i16 %687 to i32
  %689 = add nsw i32 %688, 1
  %690 = getelementptr inbounds i16, i16* %686, i32 %689
  %691 = load i16, i16* %690, align 2
  %692 = sext i16 %691 to i32
  %693 = load i16**, i16*** %6, align 4
  %694 = getelementptr inbounds i16*, i16** %693, i32 1
  %695 = load i16*, i16** %694, align 4
  %696 = load i16, i16* %7, align 2
  %697 = sext i16 %696 to i32
  %698 = add nsw i32 %697, 1
  %699 = getelementptr inbounds i16, i16* %695, i32 %698
  %700 = load i16, i16* %699, align 2
  %701 = sext i16 %700 to i32
  %702 = sub nsw i32 %692, %701
  %703 = sitofp i32 %702 to float
  %704 = fmul float 0x3FE6A09E60000000, %703
  %705 = fmul float %683, %704
  store float %705, float* %19, align 4
  %706 = load i16, i16* %7, align 2
  %707 = sext i16 %706 to i32
  %708 = sub nsw i32 510, %707
  %709 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %708
  %710 = load float, float* %709, align 4
  %711 = load i16**, i16*** %6, align 4
  %712 = getelementptr inbounds i16*, i16** %711, i32 0
  %713 = load i16*, i16** %712, align 4
  %714 = load i16, i16* %7, align 2
  %715 = sext i16 %714 to i32
  %716 = add nsw i32 %715, 513
  %717 = getelementptr inbounds i16, i16* %713, i32 %716
  %718 = load i16, i16* %717, align 2
  %719 = sext i16 %718 to i32
  %720 = load i16**, i16*** %6, align 4
  %721 = getelementptr inbounds i16*, i16** %720, i32 1
  %722 = load i16*, i16** %721, align 4
  %723 = load i16, i16* %7, align 2
  %724 = sext i16 %723 to i32
  %725 = add nsw i32 %724, 513
  %726 = getelementptr inbounds i16, i16* %722, i32 %725
  %727 = load i16, i16* %726, align 2
  %728 = sext i16 %727 to i32
  %729 = sub nsw i32 %719, %728
  %730 = sitofp i32 %729 to float
  %731 = fmul float 0x3FE6A09E60000000, %730
  %732 = fmul float %710, %731
  store float %732, float* %23, align 4
  %733 = load float, float* %19, align 4
  %734 = load float, float* %23, align 4
  %735 = fsub float %733, %734
  store float %735, float* %20, align 4
  %736 = load float, float* %19, align 4
  %737 = load float, float* %23, align 4
  %738 = fadd float %736, %737
  store float %738, float* %19, align 4
  %739 = load i16, i16* %7, align 2
  %740 = sext i16 %739 to i32
  %741 = add nsw i32 %740, 257
  %742 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %741
  %743 = load float, float* %742, align 4
  %744 = load i16**, i16*** %6, align 4
  %745 = getelementptr inbounds i16*, i16** %744, i32 0
  %746 = load i16*, i16** %745, align 4
  %747 = load i16, i16* %7, align 2
  %748 = sext i16 %747 to i32
  %749 = add nsw i32 %748, 257
  %750 = getelementptr inbounds i16, i16* %746, i32 %749
  %751 = load i16, i16* %750, align 2
  %752 = sext i16 %751 to i32
  %753 = load i16**, i16*** %6, align 4
  %754 = getelementptr inbounds i16*, i16** %753, i32 1
  %755 = load i16*, i16** %754, align 4
  %756 = load i16, i16* %7, align 2
  %757 = sext i16 %756 to i32
  %758 = add nsw i32 %757, 257
  %759 = getelementptr inbounds i16, i16* %755, i32 %758
  %760 = load i16, i16* %759, align 2
  %761 = sext i16 %760 to i32
  %762 = sub nsw i32 %752, %761
  %763 = sitofp i32 %762 to float
  %764 = fmul float 0x3FE6A09E60000000, %763
  %765 = fmul float %743, %764
  store float %765, float* %21, align 4
  %766 = load i16, i16* %7, align 2
  %767 = sext i16 %766 to i32
  %768 = sub nsw i32 254, %767
  %769 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %768
  %770 = load float, float* %769, align 4
  %771 = load i16**, i16*** %6, align 4
  %772 = getelementptr inbounds i16*, i16** %771, i32 0
  %773 = load i16*, i16** %772, align 4
  %774 = load i16, i16* %7, align 2
  %775 = sext i16 %774 to i32
  %776 = add nsw i32 %775, 769
  %777 = getelementptr inbounds i16, i16* %773, i32 %776
  %778 = load i16, i16* %777, align 2
  %779 = sext i16 %778 to i32
  %780 = load i16**, i16*** %6, align 4
  %781 = getelementptr inbounds i16*, i16** %780, i32 1
  %782 = load i16*, i16** %781, align 4
  %783 = load i16, i16* %7, align 2
  %784 = sext i16 %783 to i32
  %785 = add nsw i32 %784, 769
  %786 = getelementptr inbounds i16, i16* %782, i32 %785
  %787 = load i16, i16* %786, align 2
  %788 = sext i16 %787 to i32
  %789 = sub nsw i32 %779, %788
  %790 = sitofp i32 %789 to float
  %791 = fmul float 0x3FE6A09E60000000, %790
  %792 = fmul float %770, %791
  store float %792, float* %23, align 4
  %793 = load float, float* %21, align 4
  %794 = load float, float* %23, align 4
  %795 = fsub float %793, %794
  store float %795, float* %22, align 4
  %796 = load float, float* %21, align 4
  %797 = load float, float* %23, align 4
  %798 = fadd float %796, %797
  store float %798, float* %21, align 4
  %799 = load float, float* %19, align 4
  %800 = load float, float* %21, align 4
  %801 = fadd float %799, %800
  %802 = load float*, float** %4, align 4
  %803 = getelementptr inbounds float, float* %802, i32 512
  store float %801, float* %803, align 4
  %804 = load float, float* %19, align 4
  %805 = load float, float* %21, align 4
  %806 = fsub float %804, %805
  %807 = load float*, float** %4, align 4
  %808 = getelementptr inbounds float, float* %807, i32 514
  store float %806, float* %808, align 4
  %809 = load float, float* %20, align 4
  %810 = load float, float* %22, align 4
  %811 = fadd float %809, %810
  %812 = load float*, float** %4, align 4
  %813 = getelementptr inbounds float, float* %812, i32 513
  store float %811, float* %813, align 4
  %814 = load float, float* %20, align 4
  %815 = load float, float* %22, align 4
  %816 = fsub float %814, %815
  %817 = load float*, float** %4, align 4
  %818 = getelementptr inbounds float, float* %817, i32 515
  store float %816, float* %818, align 4
  br label %819

; <label>:819:                                    ; preds = %535
  %820 = load i16, i16* %8, align 2
  %821 = add i16 %820, -1
  store i16 %821, i16* %8, align 2
  %822 = sext i16 %821 to i32
  %823 = icmp sge i32 %822, 0
  br i1 %823, label %535, label %824

; <label>:824:                                    ; preds = %819
  br label %825

; <label>:825:                                    ; preds = %824, %533
  br label %826

; <label>:826:                                    ; preds = %825, %239
  %827 = load float*, float** %4, align 4
  call arm_aapcscc void @fht(float* %827, i16 signext 1024)
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @init_fft() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store float 0x3FD921FB60000000, float* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %26, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4
  br i1 %5, label %6, label %29

; <label>:6:                                      ; preds = %3
  %7 = load float, float* %2, align 4
  %8 = fpext float %7 to double
  %9 = call arm_aapcscc double @cos(double %8) #3
  %10 = fptrunc double %9 to float
  %11 = load i32, i32* %1, align 4
  %12 = mul nsw i32 %11, 2
  %13 = getelementptr inbounds [8 x float], [8 x float]* @costab, i32 0, i32 %12
  store float %10, float* %13, align 4
  %14 = load float, float* %2, align 4
  %15 = fpext float %14 to double
  %16 = call arm_aapcscc double @sin(double %15) #3
  %17 = fptrunc double %16 to float
  %18 = load i32, i32* %1, align 4
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 %19, 1
  %21 = getelementptr inbounds [8 x float], [8 x float]* @costab, i32 0, i32 %20
  store float %17, float* %21, align 4
  %22 = load float, float* %2, align 4
  %23 = fpext float %22 to double
  %24 = fmul double %23, 2.500000e-01
  %25 = fptrunc double %24 to float
  store float %25, float* %2, align 4
  br label %26

; <label>:26:                                     ; preds = %6
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %3

; <label>:29:                                     ; preds = %3
  store i32 0, i32* %1, align 4
  br label %30

; <label>:30:                                     ; preds = %45, %29
  %31 = load i32, i32* %1, align 4
  %32 = icmp slt i32 %31, 512
  br i1 %32, label %33, label %48

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = sitofp i32 %34 to double
  %36 = fadd double %35, 5.000000e-01
  %37 = fmul double 0x401921FB54442D18, %36
  %38 = fdiv double %37, 1.024000e+03
  %39 = call arm_aapcscc double @cos(double %38) #3
  %40 = fsub double 1.000000e+00, %39
  %41 = fmul double 5.000000e-01, %40
  %42 = fptrunc double %41 to float
  %43 = load i32, i32* %1, align 4
  %44 = getelementptr inbounds [512 x float], [512 x float]* @window, i32 0, i32 %43
  store float %42, float* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %33
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %30

; <label>:48:                                     ; preds = %30
  store i32 0, i32* %1, align 4
  br label %49

; <label>:49:                                     ; preds = %64, %48
  %50 = load i32, i32* %1, align 4
  %51 = icmp slt i32 %50, 128
  br i1 %51, label %52, label %67

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %1, align 4
  %54 = sitofp i32 %53 to double
  %55 = fadd double %54, 5.000000e-01
  %56 = fmul double 0x401921FB54442D18, %55
  %57 = fdiv double %56, 2.560000e+02
  %58 = call arm_aapcscc double @cos(double %57) #3
  %59 = fsub double 1.000000e+00, %58
  %60 = fmul double 5.000000e-01, %59
  %61 = fptrunc double %60 to float
  %62 = load i32, i32* %1, align 4
  %63 = getelementptr inbounds [128 x float], [128 x float]* @window_s, i32 0, i32 %62
  store float %61, float* %63, align 4
  br label %64

; <label>:64:                                     ; preds = %52
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %49

; <label>:67:                                     ; preds = %49
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #2

; Function Attrs: nounwind
declare arm_aapcscc double @sin(double) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
