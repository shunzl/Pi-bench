; ModuleID = 'bf_cfb64.c'
source_filename = "bf_cfb64.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

; Function Attrs: nounwind
define arm_aapcscc void @BF_cfb64_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32*, i32) #0 {
  %8 = alloca i8*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bf_key_st*, align 4
  %12 = alloca i8*, align 4
  %13 = alloca i32*, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i8*, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i8* %0, i8** %8, align 4
  store i8* %1, i8** %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.bf_key_st* %3, %struct.bf_key_st** %11, align 4
  store i8* %4, i8** %12, align 4
  store i32* %5, i32** %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load i32*, i32** %13, align 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %19, align 4
  %27 = load i8*, i8** %12, align 4
  store i8* %27, i8** %21, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %170

; <label>:30:                                     ; preds = %7
  br label %31

; <label>:31:                                     ; preds = %147, %30
  %32 = load i32, i32* %19, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %19, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %169

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %147

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** %21, align 4
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %21, align 4
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 24
  store i32 %43, i32* %15, align 4
  %44 = load i8*, i8** %21, align 4
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %21, align 4
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load i8*, i8** %21, align 4
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %21, align 4
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %15, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load i8*, i8** %21, align 4
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %21, align 4
  %60 = load i8, i8* %58, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i8*, i8** %21, align 4
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %21, align 4
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 24
  store i32 %70, i32* %16, align 4
  %71 = load i8*, i8** %21, align 4
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %21, align 4
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load i8*, i8** %21, align 4
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %21, align 4
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 8
  %83 = load i32, i32* %16, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %16, align 4
  %85 = load i8*, i8** %21, align 4
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %21, align 4
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %16, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %94 = load %struct.bf_key_st*, %struct.bf_key_st** %11, align 4
  call arm_aapcscc void @BF_encrypt(i32* %93, %struct.bf_key_st* %94, i32 1)
  %95 = load i8*, i8** %12, align 4
  store i8* %95, i8** %21, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = lshr i32 %98, 24
  %100 = and i32 %99, 255
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %21, align 4
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %21, align 4
  store i8 %101, i8* %102, align 1
  %104 = load i32, i32* %17, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %21, align 4
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %21, align 4
  store i8 %107, i8* %108, align 1
  %110 = load i32, i32* %17, align 4
  %111 = lshr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %21, align 4
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %21, align 4
  store i8 %113, i8* %114, align 1
  %116 = load i32, i32* %17, align 4
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %21, align 4
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %21, align 4
  store i8 %118, i8* %119, align 1
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = lshr i32 %123, 24
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %21, align 4
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %21, align 4
  store i8 %126, i8* %127, align 1
  %129 = load i32, i32* %17, align 4
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %21, align 4
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %21, align 4
  store i8 %132, i8* %133, align 1
  %135 = load i32, i32* %17, align 4
  %136 = lshr i32 %135, 8
  %137 = and i32 %136, 255
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %21, align 4
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %21, align 4
  store i8 %138, i8* %139, align 1
  %141 = load i32, i32* %17, align 4
  %142 = and i32 %141, 255
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %21, align 4
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %21, align 4
  store i8 %143, i8* %144, align 1
  %146 = load i8*, i8** %12, align 4
  store i8* %146, i8** %21, align 4
  br label %147

; <label>:147:                                    ; preds = %38, %35
  %148 = load i8*, i8** %8, align 4
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %8, align 4
  %150 = load i8, i8* %148, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8*, i8** %21, align 4
  %153 = load i32, i32* %18, align 4
  %154 = getelementptr inbounds i8, i8* %152, i32 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = xor i32 %151, %156
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %22, align 1
  %159 = load i8, i8* %22, align 1
  %160 = load i8*, i8** %9, align 4
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %9, align 4
  store i8 %159, i8* %160, align 1
  %162 = load i8, i8* %22, align 1
  %163 = load i8*, i8** %21, align 4
  %164 = load i32, i32* %18, align 4
  %165 = getelementptr inbounds i8, i8* %163, i32 %164
  store i8 %162, i8* %165, align 1
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  %168 = and i32 %167, 7
  store i32 %168, i32* %18, align 4
  br label %31

; <label>:169:                                    ; preds = %31
  br label %311

; <label>:170:                                    ; preds = %7
  br label %171

; <label>:171:                                    ; preds = %287, %170
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %19, align 4
  %174 = icmp ne i32 %172, 0
  br i1 %174, label %175, label %310

; <label>:175:                                    ; preds = %171
  %176 = load i32, i32* %18, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %287

; <label>:178:                                    ; preds = %175
  %179 = load i8*, i8** %21, align 4
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %21, align 4
  %181 = load i8, i8* %179, align 1
  %182 = zext i8 %181 to i32
  %183 = shl i32 %182, 24
  store i32 %183, i32* %15, align 4
  %184 = load i8*, i8** %21, align 4
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %21, align 4
  %186 = load i8, i8* %184, align 1
  %187 = zext i8 %186 to i32
  %188 = shl i32 %187, 16
  %189 = load i32, i32* %15, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %15, align 4
  %191 = load i8*, i8** %21, align 4
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %21, align 4
  %193 = load i8, i8* %191, align 1
  %194 = zext i8 %193 to i32
  %195 = shl i32 %194, 8
  %196 = load i32, i32* %15, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %15, align 4
  %198 = load i8*, i8** %21, align 4
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %21, align 4
  %200 = load i8, i8* %198, align 1
  %201 = zext i8 %200 to i32
  %202 = load i32, i32* %15, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  %206 = load i8*, i8** %21, align 4
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %21, align 4
  %208 = load i8, i8* %206, align 1
  %209 = zext i8 %208 to i32
  %210 = shl i32 %209, 24
  store i32 %210, i32* %16, align 4
  %211 = load i8*, i8** %21, align 4
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %21, align 4
  %213 = load i8, i8* %211, align 1
  %214 = zext i8 %213 to i32
  %215 = shl i32 %214, 16
  %216 = load i32, i32* %16, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %16, align 4
  %218 = load i8*, i8** %21, align 4
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %21, align 4
  %220 = load i8, i8* %218, align 1
  %221 = zext i8 %220 to i32
  %222 = shl i32 %221, 8
  %223 = load i32, i32* %16, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %16, align 4
  %225 = load i8*, i8** %21, align 4
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %21, align 4
  %227 = load i8, i8* %225, align 1
  %228 = zext i8 %227 to i32
  %229 = load i32, i32* %16, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %16, align 4
  %231 = load i32, i32* %16, align 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %231, i32* %232, align 4
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %234 = load %struct.bf_key_st*, %struct.bf_key_st** %11, align 4
  call arm_aapcscc void @BF_encrypt(i32* %233, %struct.bf_key_st* %234, i32 1)
  %235 = load i8*, i8** %12, align 4
  store i8* %235, i8** %21, align 4
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %17, align 4
  %238 = load i32, i32* %17, align 4
  %239 = lshr i32 %238, 24
  %240 = and i32 %239, 255
  %241 = trunc i32 %240 to i8
  %242 = load i8*, i8** %21, align 4
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %21, align 4
  store i8 %241, i8* %242, align 1
  %244 = load i32, i32* %17, align 4
  %245 = lshr i32 %244, 16
  %246 = and i32 %245, 255
  %247 = trunc i32 %246 to i8
  %248 = load i8*, i8** %21, align 4
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %21, align 4
  store i8 %247, i8* %248, align 1
  %250 = load i32, i32* %17, align 4
  %251 = lshr i32 %250, 8
  %252 = and i32 %251, 255
  %253 = trunc i32 %252 to i8
  %254 = load i8*, i8** %21, align 4
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %21, align 4
  store i8 %253, i8* %254, align 1
  %256 = load i32, i32* %17, align 4
  %257 = and i32 %256, 255
  %258 = trunc i32 %257 to i8
  %259 = load i8*, i8** %21, align 4
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %21, align 4
  store i8 %258, i8* %259, align 1
  %261 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %17, align 4
  %264 = lshr i32 %263, 24
  %265 = and i32 %264, 255
  %266 = trunc i32 %265 to i8
  %267 = load i8*, i8** %21, align 4
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %21, align 4
  store i8 %266, i8* %267, align 1
  %269 = load i32, i32* %17, align 4
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  %272 = trunc i32 %271 to i8
  %273 = load i8*, i8** %21, align 4
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %21, align 4
  store i8 %272, i8* %273, align 1
  %275 = load i32, i32* %17, align 4
  %276 = lshr i32 %275, 8
  %277 = and i32 %276, 255
  %278 = trunc i32 %277 to i8
  %279 = load i8*, i8** %21, align 4
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %21, align 4
  store i8 %278, i8* %279, align 1
  %281 = load i32, i32* %17, align 4
  %282 = and i32 %281, 255
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %21, align 4
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %21, align 4
  store i8 %283, i8* %284, align 1
  %286 = load i8*, i8** %12, align 4
  store i8* %286, i8** %21, align 4
  br label %287

; <label>:287:                                    ; preds = %178, %175
  %288 = load i8*, i8** %8, align 4
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %8, align 4
  %290 = load i8, i8* %288, align 1
  store i8 %290, i8* %23, align 1
  %291 = load i8*, i8** %21, align 4
  %292 = load i32, i32* %18, align 4
  %293 = getelementptr inbounds i8, i8* %291, i32 %292
  %294 = load i8, i8* %293, align 1
  store i8 %294, i8* %22, align 1
  %295 = load i8, i8* %23, align 1
  %296 = load i8*, i8** %21, align 4
  %297 = load i32, i32* %18, align 4
  %298 = getelementptr inbounds i8, i8* %296, i32 %297
  store i8 %295, i8* %298, align 1
  %299 = load i8, i8* %22, align 1
  %300 = zext i8 %299 to i32
  %301 = load i8, i8* %23, align 1
  %302 = zext i8 %301 to i32
  %303 = xor i32 %300, %302
  %304 = trunc i32 %303 to i8
  %305 = load i8*, i8** %9, align 4
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %9, align 4
  store i8 %304, i8* %305, align 1
  %307 = load i32, i32* %18, align 4
  %308 = add nsw i32 %307, 1
  %309 = and i32 %308, 7
  store i32 %309, i32* %18, align 4
  br label %171

; <label>:310:                                    ; preds = %171
  br label %311

; <label>:311:                                    ; preds = %310, %169
  store i8 0, i8* %23, align 1
  store i8 0, i8* %22, align 1
  store i32 0, i32* %17, align 4
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 0, i32* %312, align 4
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 0, i32* %313, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %314 = load i32, i32* %18, align 4
  %315 = load i32*, i32** %13, align 4
  store i32 %314, i32* %315, align 4
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
