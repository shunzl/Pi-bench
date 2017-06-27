; ModuleID = 'bf_ofb64.c'
source_filename = "bf_ofb64.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

; Function Attrs: nounwind
define arm_aapcscc void @BF_ofb64_encrypt(i8*, i8*, i32, %struct.bf_key_st*, i8*, i32*) #0 {
  %7 = alloca i8*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bf_key_st*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [8 x i8], align 1
  %19 = alloca i8*, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i8*, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 4
  store i8* %1, i8** %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bf_key_st* %3, %struct.bf_key_st** %10, align 4
  store i8* %4, i8** %11, align 4
  store i32* %5, i32** %12, align 4
  %23 = load i32*, i32** %12, align 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %17, align 4
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %11, align 4
  store i8* %26, i8** %21, align 4
  %27 = load i8*, i8** %21, align 4
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %21, align 4
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 24
  store i32 %31, i32* %13, align 4
  %32 = load i8*, i8** %21, align 4
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %21, align 4
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i8*, i8** %21, align 4
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %21, align 4
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load i8*, i8** %21, align 4
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %21, align 4
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i8*, i8** %21, align 4
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %21, align 4
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 24
  store i32 %56, i32* %14, align 4
  %57 = load i8*, i8** %21, align 4
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %21, align 4
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load i8*, i8** %21, align 4
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %21, align 4
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i8*, i8** %21, align 4
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %21, align 4
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i32 0, i32 0
  store i8* %81, i8** %19, align 4
  %82 = load i32, i32* %13, align 4
  %83 = lshr i32 %82, 24
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %19, align 4
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %19, align 4
  store i8 %85, i8* %86, align 1
  %88 = load i32, i32* %13, align 4
  %89 = lshr i32 %88, 16
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %19, align 4
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %19, align 4
  store i8 %91, i8* %92, align 1
  %94 = load i32, i32* %13, align 4
  %95 = lshr i32 %94, 8
  %96 = and i32 %95, 255
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %19, align 4
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %19, align 4
  store i8 %97, i8* %98, align 1
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, 255
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %19, align 4
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %19, align 4
  store i8 %102, i8* %103, align 1
  %105 = load i32, i32* %14, align 4
  %106 = lshr i32 %105, 24
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %19, align 4
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %19, align 4
  store i8 %108, i8* %109, align 1
  %111 = load i32, i32* %14, align 4
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %19, align 4
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %19, align 4
  store i8 %114, i8* %115, align 1
  %117 = load i32, i32* %14, align 4
  %118 = lshr i32 %117, 8
  %119 = and i32 %118, 255
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %19, align 4
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %19, align 4
  store i8 %120, i8* %121, align 1
  %123 = load i32, i32* %14, align 4
  %124 = and i32 %123, 255
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %19, align 4
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %19, align 4
  store i8 %125, i8* %126, align 1
  br label %128

; <label>:128:                                    ; preds = %191, %6
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %17, align 4
  %131 = icmp ne i32 %129, 0
  br i1 %131, label %132, label %207

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* %16, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %191

; <label>:135:                                    ; preds = %132
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %137 = load %struct.bf_key_st*, %struct.bf_key_st** %10, align 4
  call arm_aapcscc void @BF_encrypt(i32* %136, %struct.bf_key_st* %137, i32 1)
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i32 0, i32 0
  store i8* %138, i8** %19, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = lshr i32 %141, 24
  %143 = and i32 %142, 255
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %19, align 4
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %19, align 4
  store i8 %144, i8* %145, align 1
  %147 = load i32, i32* %15, align 4
  %148 = lshr i32 %147, 16
  %149 = and i32 %148, 255
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %19, align 4
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %19, align 4
  store i8 %150, i8* %151, align 1
  %153 = load i32, i32* %15, align 4
  %154 = lshr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %19, align 4
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %19, align 4
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* %15, align 4
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %19, align 4
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %19, align 4
  store i8 %161, i8* %162, align 1
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = lshr i32 %166, 24
  %168 = and i32 %167, 255
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %19, align 4
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %19, align 4
  store i8 %169, i8* %170, align 1
  %172 = load i32, i32* %15, align 4
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 255
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %19, align 4
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %19, align 4
  store i8 %175, i8* %176, align 1
  %178 = load i32, i32* %15, align 4
  %179 = lshr i32 %178, 8
  %180 = and i32 %179, 255
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %19, align 4
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %19, align 4
  store i8 %181, i8* %182, align 1
  %184 = load i32, i32* %15, align 4
  %185 = and i32 %184, 255
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %19, align 4
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %19, align 4
  store i8 %186, i8* %187, align 1
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %22, align 4
  br label %191

; <label>:191:                                    ; preds = %135, %132
  %192 = load i8*, i8** %7, align 4
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %7, align 4
  %194 = load i8, i8* %192, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %16, align 4
  %197 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i32 0, i32 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = xor i32 %195, %199
  %201 = trunc i32 %200 to i8
  %202 = load i8*, i8** %8, align 4
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %8, align 4
  store i8 %201, i8* %202, align 1
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %204, 1
  %206 = and i32 %205, 7
  store i32 %206, i32* %16, align 4
  br label %128

; <label>:207:                                    ; preds = %128
  %208 = load i32, i32* %22, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %262

; <label>:210:                                    ; preds = %207
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %13, align 4
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  %215 = load i8*, i8** %11, align 4
  store i8* %215, i8** %21, align 4
  %216 = load i32, i32* %13, align 4
  %217 = lshr i32 %216, 24
  %218 = and i32 %217, 255
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %21, align 4
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %21, align 4
  store i8 %219, i8* %220, align 1
  %222 = load i32, i32* %13, align 4
  %223 = lshr i32 %222, 16
  %224 = and i32 %223, 255
  %225 = trunc i32 %224 to i8
  %226 = load i8*, i8** %21, align 4
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %21, align 4
  store i8 %225, i8* %226, align 1
  %228 = load i32, i32* %13, align 4
  %229 = lshr i32 %228, 8
  %230 = and i32 %229, 255
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %21, align 4
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %21, align 4
  store i8 %231, i8* %232, align 1
  %234 = load i32, i32* %13, align 4
  %235 = and i32 %234, 255
  %236 = trunc i32 %235 to i8
  %237 = load i8*, i8** %21, align 4
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %21, align 4
  store i8 %236, i8* %237, align 1
  %239 = load i32, i32* %14, align 4
  %240 = lshr i32 %239, 24
  %241 = and i32 %240, 255
  %242 = trunc i32 %241 to i8
  %243 = load i8*, i8** %21, align 4
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %21, align 4
  store i8 %242, i8* %243, align 1
  %245 = load i32, i32* %14, align 4
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  %248 = trunc i32 %247 to i8
  %249 = load i8*, i8** %21, align 4
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %21, align 4
  store i8 %248, i8* %249, align 1
  %251 = load i32, i32* %14, align 4
  %252 = lshr i32 %251, 8
  %253 = and i32 %252, 255
  %254 = trunc i32 %253 to i8
  %255 = load i8*, i8** %21, align 4
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %21, align 4
  store i8 %254, i8* %255, align 1
  %257 = load i32, i32* %14, align 4
  %258 = and i32 %257, 255
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %21, align 4
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %21, align 4
  store i8 %259, i8* %260, align 1
  br label %262

; <label>:262:                                    ; preds = %210, %207
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 0, i32* %263, align 4
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 0, i32* %264, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %265 = load i32, i32* %16, align 4
  %266 = load i32*, i32** %12, align 4
  store i32 %265, i32* %266, align 4
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
