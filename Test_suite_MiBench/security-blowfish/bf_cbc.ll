; ModuleID = 'bf_cbc.c'
source_filename = "bf_cbc.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

; Function Attrs: nounwind
define arm_aapcscc void @BF_cbc_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32) #0 {
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bf_key_st*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  store i8* %0, i8** %7, align 4
  store i8* %1, i8** %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bf_key_st* %3, %struct.bf_key_st** %10, align 4
  store i8* %4, i8** %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %376

; <label>:24:                                     ; preds = %6
  %25 = load i8*, i8** %11, align 4
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %11, align 4
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 24
  store i32 %29, i32* %15, align 4
  %30 = load i8*, i8** %11, align 4
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %11, align 4
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %15, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %15, align 4
  %37 = load i8*, i8** %11, align 4
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 4
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %15, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %15, align 4
  %44 = load i8*, i8** %11, align 4
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %11, align 4
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %15, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %15, align 4
  %50 = load i8*, i8** %11, align 4
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 4
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 24
  store i32 %54, i32* %16, align 4
  %55 = load i8*, i8** %11, align 4
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 4
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %16, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %16, align 4
  %62 = load i8*, i8** %11, align 4
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 4
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %16, align 4
  %69 = load i8*, i8** %11, align 4
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 4
  %71 = load i8, i8* %69, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %16, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %16, align 4
  %75 = load i8*, i8** %11, align 4
  %76 = getelementptr inbounds i8, i8* %75, i32 -8
  store i8* %76, i8** %11, align 4
  %77 = load i32, i32* %19, align 4
  %78 = sub nsw i32 %77, 8
  store i32 %78, i32* %19, align 4
  br label %79

; <label>:79:                                     ; preds = %195, %24
  %80 = load i32, i32* %19, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %198

; <label>:82:                                     ; preds = %79
  %83 = load i8*, i8** %7, align 4
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 4
  %85 = load i8, i8* %83, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 24
  store i32 %87, i32* %13, align 4
  %88 = load i8*, i8** %7, align 4
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 4
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 16
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load i8*, i8** %7, align 4
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 4
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 8
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i8*, i8** %7, align 4
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 4
  %104 = load i8, i8* %102, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load i8*, i8** %7, align 4
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 4
  %110 = load i8, i8* %108, align 1
  %111 = zext i8 %110 to i32
  %112 = shl i32 %111, 24
  store i32 %112, i32* %14, align 4
  %113 = load i8*, i8** %7, align 4
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %7, align 4
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 16
  %118 = load i32, i32* %14, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %14, align 4
  %120 = load i8*, i8** %7, align 4
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %7, align 4
  %122 = load i8, i8* %120, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load i8*, i8** %7, align 4
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %7, align 4
  %129 = load i8, i8* %127, align 1
  %130 = zext i8 %129 to i32
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %13, align 4
  %135 = xor i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %14, align 4
  %138 = xor i32 %137, %136
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %144 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %143, %struct.bf_key_st* %144, i32 1)
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %15, align 4
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = lshr i32 %149, 24
  %151 = and i32 %150, 255
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %8, align 4
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 4
  store i8 %152, i8* %153, align 1
  %155 = load i32, i32* %15, align 4
  %156 = lshr i32 %155, 16
  %157 = and i32 %156, 255
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %8, align 4
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %8, align 4
  store i8 %158, i8* %159, align 1
  %161 = load i32, i32* %15, align 4
  %162 = lshr i32 %161, 8
  %163 = and i32 %162, 255
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %8, align 4
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %8, align 4
  store i8 %164, i8* %165, align 1
  %167 = load i32, i32* %15, align 4
  %168 = and i32 %167, 255
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %8, align 4
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 4
  store i8 %169, i8* %170, align 1
  %172 = load i32, i32* %16, align 4
  %173 = lshr i32 %172, 24
  %174 = and i32 %173, 255
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %8, align 4
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %8, align 4
  store i8 %175, i8* %176, align 1
  %178 = load i32, i32* %16, align 4
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %8, align 4
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %8, align 4
  store i8 %181, i8* %182, align 1
  %184 = load i32, i32* %16, align 4
  %185 = lshr i32 %184, 8
  %186 = and i32 %185, 255
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %8, align 4
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %8, align 4
  store i8 %187, i8* %188, align 1
  %190 = load i32, i32* %16, align 4
  %191 = and i32 %190, 255
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %8, align 4
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %8, align 4
  store i8 %192, i8* %193, align 1
  br label %195

; <label>:195:                                    ; preds = %82
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 %196, 8
  store i32 %197, i32* %19, align 4
  br label %79

; <label>:198:                                    ; preds = %79
  %199 = load i32, i32* %19, align 4
  %200 = icmp ne i32 %199, -8
  br i1 %200, label %201, label %329

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* %19, align 4
  %203 = add nsw i32 %202, 8
  %204 = load i8*, i8** %7, align 4
  %205 = getelementptr inbounds i8, i8* %204, i32 %203
  store i8* %205, i8** %7, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 8
  switch i32 %207, label %266 [
    i32 8, label %208
    i32 7, label %213
    i32 6, label %221
    i32 5, label %229
    i32 4, label %237
    i32 3, label %242
    i32 2, label %250
    i32 1, label %258
  ]

; <label>:208:                                    ; preds = %201
  %209 = load i8*, i8** %7, align 4
  %210 = getelementptr inbounds i8, i8* %209, i32 -1
  store i8* %210, i8** %7, align 4
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  store i32 %212, i32* %14, align 4
  br label %213

; <label>:213:                                    ; preds = %201, %208
  %214 = load i8*, i8** %7, align 4
  %215 = getelementptr inbounds i8, i8* %214, i32 -1
  store i8* %215, i8** %7, align 4
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = shl i32 %217, 8
  %219 = load i32, i32* %14, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %14, align 4
  br label %221

; <label>:221:                                    ; preds = %201, %213
  %222 = load i8*, i8** %7, align 4
  %223 = getelementptr inbounds i8, i8* %222, i32 -1
  store i8* %223, i8** %7, align 4
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %225, 16
  %227 = load i32, i32* %14, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %14, align 4
  br label %229

; <label>:229:                                    ; preds = %201, %221
  %230 = load i8*, i8** %7, align 4
  %231 = getelementptr inbounds i8, i8* %230, i32 -1
  store i8* %231, i8** %7, align 4
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = shl i32 %233, 24
  %235 = load i32, i32* %14, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %14, align 4
  br label %237

; <label>:237:                                    ; preds = %201, %229
  %238 = load i8*, i8** %7, align 4
  %239 = getelementptr inbounds i8, i8* %238, i32 -1
  store i8* %239, i8** %7, align 4
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  store i32 %241, i32* %13, align 4
  br label %242

; <label>:242:                                    ; preds = %201, %237
  %243 = load i8*, i8** %7, align 4
  %244 = getelementptr inbounds i8, i8* %243, i32 -1
  store i8* %244, i8** %7, align 4
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = shl i32 %246, 8
  %248 = load i32, i32* %13, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %13, align 4
  br label %250

; <label>:250:                                    ; preds = %201, %242
  %251 = load i8*, i8** %7, align 4
  %252 = getelementptr inbounds i8, i8* %251, i32 -1
  store i8* %252, i8** %7, align 4
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = shl i32 %254, 16
  %256 = load i32, i32* %13, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %13, align 4
  br label %258

; <label>:258:                                    ; preds = %201, %250
  %259 = load i8*, i8** %7, align 4
  %260 = getelementptr inbounds i8, i8* %259, i32 -1
  store i8* %260, i8** %7, align 4
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = shl i32 %262, 24
  %264 = load i32, i32* %13, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %13, align 4
  br label %266

; <label>:266:                                    ; preds = %258, %201
  %267 = load i32, i32* %15, align 4
  %268 = load i32, i32* %13, align 4
  %269 = xor i32 %268, %267
  store i32 %269, i32* %13, align 4
  %270 = load i32, i32* %16, align 4
  %271 = load i32, i32* %14, align 4
  %272 = xor i32 %271, %270
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %13, align 4
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* %14, align 4
  %276 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %275, i32* %276, align 4
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %278 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %277, %struct.bf_key_st* %278, i32 1)
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %15, align 4
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %16, align 4
  %283 = load i32, i32* %15, align 4
  %284 = lshr i32 %283, 24
  %285 = and i32 %284, 255
  %286 = trunc i32 %285 to i8
  %287 = load i8*, i8** %8, align 4
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %8, align 4
  store i8 %286, i8* %287, align 1
  %289 = load i32, i32* %15, align 4
  %290 = lshr i32 %289, 16
  %291 = and i32 %290, 255
  %292 = trunc i32 %291 to i8
  %293 = load i8*, i8** %8, align 4
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %8, align 4
  store i8 %292, i8* %293, align 1
  %295 = load i32, i32* %15, align 4
  %296 = lshr i32 %295, 8
  %297 = and i32 %296, 255
  %298 = trunc i32 %297 to i8
  %299 = load i8*, i8** %8, align 4
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %8, align 4
  store i8 %298, i8* %299, align 1
  %301 = load i32, i32* %15, align 4
  %302 = and i32 %301, 255
  %303 = trunc i32 %302 to i8
  %304 = load i8*, i8** %8, align 4
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %8, align 4
  store i8 %303, i8* %304, align 1
  %306 = load i32, i32* %16, align 4
  %307 = lshr i32 %306, 24
  %308 = and i32 %307, 255
  %309 = trunc i32 %308 to i8
  %310 = load i8*, i8** %8, align 4
  %311 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %311, i8** %8, align 4
  store i8 %309, i8* %310, align 1
  %312 = load i32, i32* %16, align 4
  %313 = lshr i32 %312, 16
  %314 = and i32 %313, 255
  %315 = trunc i32 %314 to i8
  %316 = load i8*, i8** %8, align 4
  %317 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %317, i8** %8, align 4
  store i8 %315, i8* %316, align 1
  %318 = load i32, i32* %16, align 4
  %319 = lshr i32 %318, 8
  %320 = and i32 %319, 255
  %321 = trunc i32 %320 to i8
  %322 = load i8*, i8** %8, align 4
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %8, align 4
  store i8 %321, i8* %322, align 1
  %324 = load i32, i32* %16, align 4
  %325 = and i32 %324, 255
  %326 = trunc i32 %325 to i8
  %327 = load i8*, i8** %8, align 4
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %8, align 4
  store i8 %326, i8* %327, align 1
  br label %329

; <label>:329:                                    ; preds = %266, %198
  %330 = load i32, i32* %15, align 4
  %331 = lshr i32 %330, 24
  %332 = and i32 %331, 255
  %333 = trunc i32 %332 to i8
  %334 = load i8*, i8** %11, align 4
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %11, align 4
  store i8 %333, i8* %334, align 1
  %336 = load i32, i32* %15, align 4
  %337 = lshr i32 %336, 16
  %338 = and i32 %337, 255
  %339 = trunc i32 %338 to i8
  %340 = load i8*, i8** %11, align 4
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %11, align 4
  store i8 %339, i8* %340, align 1
  %342 = load i32, i32* %15, align 4
  %343 = lshr i32 %342, 8
  %344 = and i32 %343, 255
  %345 = trunc i32 %344 to i8
  %346 = load i8*, i8** %11, align 4
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %11, align 4
  store i8 %345, i8* %346, align 1
  %348 = load i32, i32* %15, align 4
  %349 = and i32 %348, 255
  %350 = trunc i32 %349 to i8
  %351 = load i8*, i8** %11, align 4
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %11, align 4
  store i8 %350, i8* %351, align 1
  %353 = load i32, i32* %16, align 4
  %354 = lshr i32 %353, 24
  %355 = and i32 %354, 255
  %356 = trunc i32 %355 to i8
  %357 = load i8*, i8** %11, align 4
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %11, align 4
  store i8 %356, i8* %357, align 1
  %359 = load i32, i32* %16, align 4
  %360 = lshr i32 %359, 16
  %361 = and i32 %360, 255
  %362 = trunc i32 %361 to i8
  %363 = load i8*, i8** %11, align 4
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %11, align 4
  store i8 %362, i8* %363, align 1
  %365 = load i32, i32* %16, align 4
  %366 = lshr i32 %365, 8
  %367 = and i32 %366, 255
  %368 = trunc i32 %367 to i8
  %369 = load i8*, i8** %11, align 4
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %11, align 4
  store i8 %368, i8* %369, align 1
  %371 = load i32, i32* %16, align 4
  %372 = and i32 %371, 255
  %373 = trunc i32 %372 to i8
  %374 = load i8*, i8** %11, align 4
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %11, align 4
  store i8 %373, i8* %374, align 1
  br label %728

; <label>:376:                                    ; preds = %6
  %377 = load i8*, i8** %11, align 4
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %11, align 4
  %379 = load i8, i8* %377, align 1
  %380 = zext i8 %379 to i32
  %381 = shl i32 %380, 24
  store i32 %381, i32* %17, align 4
  %382 = load i8*, i8** %11, align 4
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %11, align 4
  %384 = load i8, i8* %382, align 1
  %385 = zext i8 %384 to i32
  %386 = shl i32 %385, 16
  %387 = load i32, i32* %17, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %17, align 4
  %389 = load i8*, i8** %11, align 4
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** %11, align 4
  %391 = load i8, i8* %389, align 1
  %392 = zext i8 %391 to i32
  %393 = shl i32 %392, 8
  %394 = load i32, i32* %17, align 4
  %395 = or i32 %394, %393
  store i32 %395, i32* %17, align 4
  %396 = load i8*, i8** %11, align 4
  %397 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %397, i8** %11, align 4
  %398 = load i8, i8* %396, align 1
  %399 = zext i8 %398 to i32
  %400 = load i32, i32* %17, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %17, align 4
  %402 = load i8*, i8** %11, align 4
  %403 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %403, i8** %11, align 4
  %404 = load i8, i8* %402, align 1
  %405 = zext i8 %404 to i32
  %406 = shl i32 %405, 24
  store i32 %406, i32* %18, align 4
  %407 = load i8*, i8** %11, align 4
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %11, align 4
  %409 = load i8, i8* %407, align 1
  %410 = zext i8 %409 to i32
  %411 = shl i32 %410, 16
  %412 = load i32, i32* %18, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %18, align 4
  %414 = load i8*, i8** %11, align 4
  %415 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %415, i8** %11, align 4
  %416 = load i8, i8* %414, align 1
  %417 = zext i8 %416 to i32
  %418 = shl i32 %417, 8
  %419 = load i32, i32* %18, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %18, align 4
  %421 = load i8*, i8** %11, align 4
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %11, align 4
  %423 = load i8, i8* %421, align 1
  %424 = zext i8 %423 to i32
  %425 = load i32, i32* %18, align 4
  %426 = or i32 %425, %424
  store i32 %426, i32* %18, align 4
  %427 = load i8*, i8** %11, align 4
  %428 = getelementptr inbounds i8, i8* %427, i32 -8
  store i8* %428, i8** %11, align 4
  %429 = load i32, i32* %19, align 4
  %430 = sub nsw i32 %429, 8
  store i32 %430, i32* %19, align 4
  br label %431

; <label>:431:                                    ; preds = %547, %376
  %432 = load i32, i32* %19, align 4
  %433 = icmp sge i32 %432, 0
  br i1 %433, label %434, label %550

; <label>:434:                                    ; preds = %431
  %435 = load i8*, i8** %7, align 4
  %436 = getelementptr inbounds i8, i8* %435, i32 1
  store i8* %436, i8** %7, align 4
  %437 = load i8, i8* %435, align 1
  %438 = zext i8 %437 to i32
  %439 = shl i32 %438, 24
  store i32 %439, i32* %13, align 4
  %440 = load i8*, i8** %7, align 4
  %441 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %441, i8** %7, align 4
  %442 = load i8, i8* %440, align 1
  %443 = zext i8 %442 to i32
  %444 = shl i32 %443, 16
  %445 = load i32, i32* %13, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %13, align 4
  %447 = load i8*, i8** %7, align 4
  %448 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %448, i8** %7, align 4
  %449 = load i8, i8* %447, align 1
  %450 = zext i8 %449 to i32
  %451 = shl i32 %450, 8
  %452 = load i32, i32* %13, align 4
  %453 = or i32 %452, %451
  store i32 %453, i32* %13, align 4
  %454 = load i8*, i8** %7, align 4
  %455 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %455, i8** %7, align 4
  %456 = load i8, i8* %454, align 1
  %457 = zext i8 %456 to i32
  %458 = load i32, i32* %13, align 4
  %459 = or i32 %458, %457
  store i32 %459, i32* %13, align 4
  %460 = load i8*, i8** %7, align 4
  %461 = getelementptr inbounds i8, i8* %460, i32 1
  store i8* %461, i8** %7, align 4
  %462 = load i8, i8* %460, align 1
  %463 = zext i8 %462 to i32
  %464 = shl i32 %463, 24
  store i32 %464, i32* %14, align 4
  %465 = load i8*, i8** %7, align 4
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %7, align 4
  %467 = load i8, i8* %465, align 1
  %468 = zext i8 %467 to i32
  %469 = shl i32 %468, 16
  %470 = load i32, i32* %14, align 4
  %471 = or i32 %470, %469
  store i32 %471, i32* %14, align 4
  %472 = load i8*, i8** %7, align 4
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %7, align 4
  %474 = load i8, i8* %472, align 1
  %475 = zext i8 %474 to i32
  %476 = shl i32 %475, 8
  %477 = load i32, i32* %14, align 4
  %478 = or i32 %477, %476
  store i32 %478, i32* %14, align 4
  %479 = load i8*, i8** %7, align 4
  %480 = getelementptr inbounds i8, i8* %479, i32 1
  store i8* %480, i8** %7, align 4
  %481 = load i8, i8* %479, align 1
  %482 = zext i8 %481 to i32
  %483 = load i32, i32* %14, align 4
  %484 = or i32 %483, %482
  store i32 %484, i32* %14, align 4
  %485 = load i32, i32* %13, align 4
  %486 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %485, i32* %486, align 4
  %487 = load i32, i32* %14, align 4
  %488 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %487, i32* %488, align 4
  %489 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %490 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %489, %struct.bf_key_st* %490, i32 0)
  %491 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %17, align 4
  %494 = xor i32 %492, %493
  store i32 %494, i32* %15, align 4
  %495 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* %18, align 4
  %498 = xor i32 %496, %497
  store i32 %498, i32* %16, align 4
  %499 = load i32, i32* %15, align 4
  %500 = lshr i32 %499, 24
  %501 = and i32 %500, 255
  %502 = trunc i32 %501 to i8
  %503 = load i8*, i8** %8, align 4
  %504 = getelementptr inbounds i8, i8* %503, i32 1
  store i8* %504, i8** %8, align 4
  store i8 %502, i8* %503, align 1
  %505 = load i32, i32* %15, align 4
  %506 = lshr i32 %505, 16
  %507 = and i32 %506, 255
  %508 = trunc i32 %507 to i8
  %509 = load i8*, i8** %8, align 4
  %510 = getelementptr inbounds i8, i8* %509, i32 1
  store i8* %510, i8** %8, align 4
  store i8 %508, i8* %509, align 1
  %511 = load i32, i32* %15, align 4
  %512 = lshr i32 %511, 8
  %513 = and i32 %512, 255
  %514 = trunc i32 %513 to i8
  %515 = load i8*, i8** %8, align 4
  %516 = getelementptr inbounds i8, i8* %515, i32 1
  store i8* %516, i8** %8, align 4
  store i8 %514, i8* %515, align 1
  %517 = load i32, i32* %15, align 4
  %518 = and i32 %517, 255
  %519 = trunc i32 %518 to i8
  %520 = load i8*, i8** %8, align 4
  %521 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %521, i8** %8, align 4
  store i8 %519, i8* %520, align 1
  %522 = load i32, i32* %16, align 4
  %523 = lshr i32 %522, 24
  %524 = and i32 %523, 255
  %525 = trunc i32 %524 to i8
  %526 = load i8*, i8** %8, align 4
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** %8, align 4
  store i8 %525, i8* %526, align 1
  %528 = load i32, i32* %16, align 4
  %529 = lshr i32 %528, 16
  %530 = and i32 %529, 255
  %531 = trunc i32 %530 to i8
  %532 = load i8*, i8** %8, align 4
  %533 = getelementptr inbounds i8, i8* %532, i32 1
  store i8* %533, i8** %8, align 4
  store i8 %531, i8* %532, align 1
  %534 = load i32, i32* %16, align 4
  %535 = lshr i32 %534, 8
  %536 = and i32 %535, 255
  %537 = trunc i32 %536 to i8
  %538 = load i8*, i8** %8, align 4
  %539 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %539, i8** %8, align 4
  store i8 %537, i8* %538, align 1
  %540 = load i32, i32* %16, align 4
  %541 = and i32 %540, 255
  %542 = trunc i32 %541 to i8
  %543 = load i8*, i8** %8, align 4
  %544 = getelementptr inbounds i8, i8* %543, i32 1
  store i8* %544, i8** %8, align 4
  store i8 %542, i8* %543, align 1
  %545 = load i32, i32* %13, align 4
  store i32 %545, i32* %17, align 4
  %546 = load i32, i32* %14, align 4
  store i32 %546, i32* %18, align 4
  br label %547

; <label>:547:                                    ; preds = %434
  %548 = load i32, i32* %19, align 4
  %549 = sub nsw i32 %548, 8
  store i32 %549, i32* %19, align 4
  br label %431

; <label>:550:                                    ; preds = %431
  %551 = load i32, i32* %19, align 4
  %552 = icmp ne i32 %551, -8
  br i1 %552, label %553, label %681

; <label>:553:                                    ; preds = %550
  %554 = load i8*, i8** %7, align 4
  %555 = getelementptr inbounds i8, i8* %554, i32 1
  store i8* %555, i8** %7, align 4
  %556 = load i8, i8* %554, align 1
  %557 = zext i8 %556 to i32
  %558 = shl i32 %557, 24
  store i32 %558, i32* %13, align 4
  %559 = load i8*, i8** %7, align 4
  %560 = getelementptr inbounds i8, i8* %559, i32 1
  store i8* %560, i8** %7, align 4
  %561 = load i8, i8* %559, align 1
  %562 = zext i8 %561 to i32
  %563 = shl i32 %562, 16
  %564 = load i32, i32* %13, align 4
  %565 = or i32 %564, %563
  store i32 %565, i32* %13, align 4
  %566 = load i8*, i8** %7, align 4
  %567 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %567, i8** %7, align 4
  %568 = load i8, i8* %566, align 1
  %569 = zext i8 %568 to i32
  %570 = shl i32 %569, 8
  %571 = load i32, i32* %13, align 4
  %572 = or i32 %571, %570
  store i32 %572, i32* %13, align 4
  %573 = load i8*, i8** %7, align 4
  %574 = getelementptr inbounds i8, i8* %573, i32 1
  store i8* %574, i8** %7, align 4
  %575 = load i8, i8* %573, align 1
  %576 = zext i8 %575 to i32
  %577 = load i32, i32* %13, align 4
  %578 = or i32 %577, %576
  store i32 %578, i32* %13, align 4
  %579 = load i8*, i8** %7, align 4
  %580 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %580, i8** %7, align 4
  %581 = load i8, i8* %579, align 1
  %582 = zext i8 %581 to i32
  %583 = shl i32 %582, 24
  store i32 %583, i32* %14, align 4
  %584 = load i8*, i8** %7, align 4
  %585 = getelementptr inbounds i8, i8* %584, i32 1
  store i8* %585, i8** %7, align 4
  %586 = load i8, i8* %584, align 1
  %587 = zext i8 %586 to i32
  %588 = shl i32 %587, 16
  %589 = load i32, i32* %14, align 4
  %590 = or i32 %589, %588
  store i32 %590, i32* %14, align 4
  %591 = load i8*, i8** %7, align 4
  %592 = getelementptr inbounds i8, i8* %591, i32 1
  store i8* %592, i8** %7, align 4
  %593 = load i8, i8* %591, align 1
  %594 = zext i8 %593 to i32
  %595 = shl i32 %594, 8
  %596 = load i32, i32* %14, align 4
  %597 = or i32 %596, %595
  store i32 %597, i32* %14, align 4
  %598 = load i8*, i8** %7, align 4
  %599 = getelementptr inbounds i8, i8* %598, i32 1
  store i8* %599, i8** %7, align 4
  %600 = load i8, i8* %598, align 1
  %601 = zext i8 %600 to i32
  %602 = load i32, i32* %14, align 4
  %603 = or i32 %602, %601
  store i32 %603, i32* %14, align 4
  %604 = load i32, i32* %13, align 4
  %605 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %604, i32* %605, align 4
  %606 = load i32, i32* %14, align 4
  %607 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %606, i32* %607, align 4
  %608 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %609 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %608, %struct.bf_key_st* %609, i32 0)
  %610 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = load i32, i32* %17, align 4
  %613 = xor i32 %611, %612
  store i32 %613, i32* %15, align 4
  %614 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* %18, align 4
  %617 = xor i32 %615, %616
  store i32 %617, i32* %16, align 4
  %618 = load i32, i32* %19, align 4
  %619 = add nsw i32 %618, 8
  %620 = load i8*, i8** %8, align 4
  %621 = getelementptr inbounds i8, i8* %620, i32 %619
  store i8* %621, i8** %8, align 4
  %622 = load i32, i32* %19, align 4
  %623 = add nsw i32 %622, 8
  switch i32 %623, label %678 [
    i32 8, label %624
    i32 7, label %630
    i32 6, label %637
    i32 5, label %644
    i32 4, label %651
    i32 3, label %657
    i32 2, label %664
    i32 1, label %671
  ]

; <label>:624:                                    ; preds = %553
  %625 = load i32, i32* %16, align 4
  %626 = and i32 %625, 255
  %627 = trunc i32 %626 to i8
  %628 = load i8*, i8** %8, align 4
  %629 = getelementptr inbounds i8, i8* %628, i32 -1
  store i8* %629, i8** %8, align 4
  store i8 %627, i8* %629, align 1
  br label %630

; <label>:630:                                    ; preds = %553, %624
  %631 = load i32, i32* %16, align 4
  %632 = lshr i32 %631, 8
  %633 = and i32 %632, 255
  %634 = trunc i32 %633 to i8
  %635 = load i8*, i8** %8, align 4
  %636 = getelementptr inbounds i8, i8* %635, i32 -1
  store i8* %636, i8** %8, align 4
  store i8 %634, i8* %636, align 1
  br label %637

; <label>:637:                                    ; preds = %553, %630
  %638 = load i32, i32* %16, align 4
  %639 = lshr i32 %638, 16
  %640 = and i32 %639, 255
  %641 = trunc i32 %640 to i8
  %642 = load i8*, i8** %8, align 4
  %643 = getelementptr inbounds i8, i8* %642, i32 -1
  store i8* %643, i8** %8, align 4
  store i8 %641, i8* %643, align 1
  br label %644

; <label>:644:                                    ; preds = %553, %637
  %645 = load i32, i32* %16, align 4
  %646 = lshr i32 %645, 24
  %647 = and i32 %646, 255
  %648 = trunc i32 %647 to i8
  %649 = load i8*, i8** %8, align 4
  %650 = getelementptr inbounds i8, i8* %649, i32 -1
  store i8* %650, i8** %8, align 4
  store i8 %648, i8* %650, align 1
  br label %651

; <label>:651:                                    ; preds = %553, %644
  %652 = load i32, i32* %15, align 4
  %653 = and i32 %652, 255
  %654 = trunc i32 %653 to i8
  %655 = load i8*, i8** %8, align 4
  %656 = getelementptr inbounds i8, i8* %655, i32 -1
  store i8* %656, i8** %8, align 4
  store i8 %654, i8* %656, align 1
  br label %657

; <label>:657:                                    ; preds = %553, %651
  %658 = load i32, i32* %15, align 4
  %659 = lshr i32 %658, 8
  %660 = and i32 %659, 255
  %661 = trunc i32 %660 to i8
  %662 = load i8*, i8** %8, align 4
  %663 = getelementptr inbounds i8, i8* %662, i32 -1
  store i8* %663, i8** %8, align 4
  store i8 %661, i8* %663, align 1
  br label %664

; <label>:664:                                    ; preds = %553, %657
  %665 = load i32, i32* %15, align 4
  %666 = lshr i32 %665, 16
  %667 = and i32 %666, 255
  %668 = trunc i32 %667 to i8
  %669 = load i8*, i8** %8, align 4
  %670 = getelementptr inbounds i8, i8* %669, i32 -1
  store i8* %670, i8** %8, align 4
  store i8 %668, i8* %670, align 1
  br label %671

; <label>:671:                                    ; preds = %553, %664
  %672 = load i32, i32* %15, align 4
  %673 = lshr i32 %672, 24
  %674 = and i32 %673, 255
  %675 = trunc i32 %674 to i8
  %676 = load i8*, i8** %8, align 4
  %677 = getelementptr inbounds i8, i8* %676, i32 -1
  store i8* %677, i8** %8, align 4
  store i8 %675, i8* %677, align 1
  br label %678

; <label>:678:                                    ; preds = %671, %553
  %679 = load i32, i32* %13, align 4
  store i32 %679, i32* %17, align 4
  %680 = load i32, i32* %14, align 4
  store i32 %680, i32* %18, align 4
  br label %681

; <label>:681:                                    ; preds = %678, %550
  %682 = load i32, i32* %17, align 4
  %683 = lshr i32 %682, 24
  %684 = and i32 %683, 255
  %685 = trunc i32 %684 to i8
  %686 = load i8*, i8** %11, align 4
  %687 = getelementptr inbounds i8, i8* %686, i32 1
  store i8* %687, i8** %11, align 4
  store i8 %685, i8* %686, align 1
  %688 = load i32, i32* %17, align 4
  %689 = lshr i32 %688, 16
  %690 = and i32 %689, 255
  %691 = trunc i32 %690 to i8
  %692 = load i8*, i8** %11, align 4
  %693 = getelementptr inbounds i8, i8* %692, i32 1
  store i8* %693, i8** %11, align 4
  store i8 %691, i8* %692, align 1
  %694 = load i32, i32* %17, align 4
  %695 = lshr i32 %694, 8
  %696 = and i32 %695, 255
  %697 = trunc i32 %696 to i8
  %698 = load i8*, i8** %11, align 4
  %699 = getelementptr inbounds i8, i8* %698, i32 1
  store i8* %699, i8** %11, align 4
  store i8 %697, i8* %698, align 1
  %700 = load i32, i32* %17, align 4
  %701 = and i32 %700, 255
  %702 = trunc i32 %701 to i8
  %703 = load i8*, i8** %11, align 4
  %704 = getelementptr inbounds i8, i8* %703, i32 1
  store i8* %704, i8** %11, align 4
  store i8 %702, i8* %703, align 1
  %705 = load i32, i32* %18, align 4
  %706 = lshr i32 %705, 24
  %707 = and i32 %706, 255
  %708 = trunc i32 %707 to i8
  %709 = load i8*, i8** %11, align 4
  %710 = getelementptr inbounds i8, i8* %709, i32 1
  store i8* %710, i8** %11, align 4
  store i8 %708, i8* %709, align 1
  %711 = load i32, i32* %18, align 4
  %712 = lshr i32 %711, 16
  %713 = and i32 %712, 255
  %714 = trunc i32 %713 to i8
  %715 = load i8*, i8** %11, align 4
  %716 = getelementptr inbounds i8, i8* %715, i32 1
  store i8* %716, i8** %11, align 4
  store i8 %714, i8* %715, align 1
  %717 = load i32, i32* %18, align 4
  %718 = lshr i32 %717, 8
  %719 = and i32 %718, 255
  %720 = trunc i32 %719 to i8
  %721 = load i8*, i8** %11, align 4
  %722 = getelementptr inbounds i8, i8* %721, i32 1
  store i8* %722, i8** %11, align 4
  store i8 %720, i8* %721, align 1
  %723 = load i32, i32* %18, align 4
  %724 = and i32 %723, 255
  %725 = trunc i32 %724 to i8
  %726 = load i8*, i8** %11, align 4
  %727 = getelementptr inbounds i8, i8* %726, i32 1
  store i8* %727, i8** %11, align 4
  store i8 %725, i8* %726, align 1
  br label %728

; <label>:728:                                    ; preds = %681, %329
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %729 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 0, i32* %729, align 4
  %730 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 0, i32* %730, align 4
  ret void
}

declare arm_aapcscc void @BF_encrypt(i32*, %struct.bf_key_st*, i32) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
