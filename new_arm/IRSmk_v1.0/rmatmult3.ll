; ModuleID = 'rmatmult3.c'
source_filename = "rmatmult3.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }

@.str = private unnamed_addr constant [10 x i8] c"rmatmult3\00", align 1
@kmin = common global i32 0, align 4
@kmax = common global i32 0, align 4
@jmin = common global i32 0, align 4
@jmax = common global i32 0, align 4
@imin = common global i32 0, align 4
@imax = common global i32 0, align 4
@kp = common global i32 0, align 4
@jp = common global i32 0, align 4
@i_lb = common global i32 0, align 4
@i_ub = common global i32 0, align 4
@x_size = common global i32 0, align 4

; Function Attrs: nounwind
define arm_aapcscc void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %5 = alloca %struct.Domain_s*, align 4
  %6 = alloca %struct.RadiationData_t*, align 4
  %7 = alloca double*, align 4
  %8 = alloca double*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double*, align 4
  %23 = alloca double*, align 4
  %24 = alloca double*, align 4
  %25 = alloca double*, align 4
  %26 = alloca double*, align 4
  %27 = alloca double*, align 4
  %28 = alloca double*, align 4
  %29 = alloca double*, align 4
  %30 = alloca double*, align 4
  %31 = alloca double*, align 4
  %32 = alloca double*, align 4
  %33 = alloca double*, align 4
  %34 = alloca double*, align 4
  %35 = alloca double*, align 4
  %36 = alloca double*, align 4
  %37 = alloca double*, align 4
  %38 = alloca double*, align 4
  %39 = alloca double*, align 4
  %40 = alloca double*, align 4
  %41 = alloca double*, align 4
  %42 = alloca double*, align 4
  %43 = alloca double*, align 4
  %44 = alloca double*, align 4
  %45 = alloca double*, align 4
  %46 = alloca double*, align 4
  %47 = alloca double*, align 4
  %48 = alloca double*, align 4
  %49 = alloca double*, align 4
  %50 = alloca double*, align 4
  %51 = alloca double*, align 4
  %52 = alloca double*, align 4
  %53 = alloca double*, align 4
  %54 = alloca double*, align 4
  %55 = alloca double*, align 4
  %56 = alloca double*, align 4
  %57 = alloca double*, align 4
  %58 = alloca double*, align 4
  %59 = alloca double*, align 4
  %60 = alloca double*, align 4
  %61 = alloca double*, align 4
  %62 = alloca double*, align 4
  %63 = alloca double*, align 4
  %64 = alloca double*, align 4
  %65 = alloca double*, align 4
  %66 = alloca double*, align 4
  %67 = alloca double*, align 4
  %68 = alloca double*, align 4
  %69 = alloca double*, align 4
  %70 = alloca double*, align 4
  %71 = alloca double*, align 4
  %72 = alloca double*, align 4
  %73 = alloca double*, align 4
  %74 = alloca double*, align 4
  %75 = alloca double*, align 4
  store %struct.Domain_s* %0, %struct.Domain_s** %5, align 4
  store %struct.RadiationData_t* %1, %struct.RadiationData_t** %6, align 4
  store double* %2, double** %7, align 4
  store double* %3, double** %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %9, align 4
  %76 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %77 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %80 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %83 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %86 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %89 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %18, align 4
  %91 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %92 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %19, align 4
  %94 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %95 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %94, i32 0, i32 17
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load %struct.Domain_s*, %struct.Domain_s** %5, align 4
  %98 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %97, i32 0, i32 18
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %21, align 4
  %100 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %101 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %100, i32 0, i32 0
  %102 = load double*, double** %101, align 4
  store double* %102, double** %22, align 4
  %103 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %104 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %103, i32 0, i32 1
  %105 = load double*, double** %104, align 4
  store double* %105, double** %23, align 4
  %106 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %107 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %106, i32 0, i32 2
  %108 = load double*, double** %107, align 4
  store double* %108, double** %24, align 4
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 3
  %111 = load double*, double** %110, align 4
  store double* %111, double** %25, align 4
  %112 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %113 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %112, i32 0, i32 4
  %114 = load double*, double** %113, align 4
  store double* %114, double** %26, align 4
  %115 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %116 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %115, i32 0, i32 5
  %117 = load double*, double** %116, align 4
  store double* %117, double** %27, align 4
  %118 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %119 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %118, i32 0, i32 6
  %120 = load double*, double** %119, align 4
  store double* %120, double** %28, align 4
  %121 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %122 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %121, i32 0, i32 7
  %123 = load double*, double** %122, align 4
  store double* %123, double** %29, align 4
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 8
  %126 = load double*, double** %125, align 4
  store double* %126, double** %30, align 4
  %127 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %128 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %127, i32 0, i32 9
  %129 = load double*, double** %128, align 4
  store double* %129, double** %31, align 4
  %130 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %131 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %130, i32 0, i32 10
  %132 = load double*, double** %131, align 4
  store double* %132, double** %32, align 4
  %133 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %134 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %133, i32 0, i32 11
  %135 = load double*, double** %134, align 4
  store double* %135, double** %33, align 4
  %136 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %137 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %136, i32 0, i32 12
  %138 = load double*, double** %137, align 4
  store double* %138, double** %34, align 4
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 13
  %141 = load double*, double** %140, align 4
  store double* %141, double** %35, align 4
  %142 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %143 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %142, i32 0, i32 14
  %144 = load double*, double** %143, align 4
  store double* %144, double** %36, align 4
  %145 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %146 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %145, i32 0, i32 15
  %147 = load double*, double** %146, align 4
  store double* %147, double** %37, align 4
  %148 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %149 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %148, i32 0, i32 16
  %150 = load double*, double** %149, align 4
  store double* %150, double** %38, align 4
  %151 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %152 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %151, i32 0, i32 17
  %153 = load double*, double** %152, align 4
  store double* %153, double** %39, align 4
  %154 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %155 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %154, i32 0, i32 18
  %156 = load double*, double** %155, align 4
  store double* %156, double** %40, align 4
  %157 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %158 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %157, i32 0, i32 19
  %159 = load double*, double** %158, align 4
  store double* %159, double** %41, align 4
  %160 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %161 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %160, i32 0, i32 20
  %162 = load double*, double** %161, align 4
  store double* %162, double** %42, align 4
  %163 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %164 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %163, i32 0, i32 21
  %165 = load double*, double** %164, align 4
  store double* %165, double** %43, align 4
  %166 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %167 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %166, i32 0, i32 22
  %168 = load double*, double** %167, align 4
  store double* %168, double** %44, align 4
  %169 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %170 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %169, i32 0, i32 23
  %171 = load double*, double** %170, align 4
  store double* %171, double** %45, align 4
  %172 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %173 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %172, i32 0, i32 24
  %174 = load double*, double** %173, align 4
  store double* %174, double** %46, align 4
  %175 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %176 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %175, i32 0, i32 25
  %177 = load double*, double** %176, align 4
  store double* %177, double** %47, align 4
  %178 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 4
  %179 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %178, i32 0, i32 26
  %180 = load double*, double** %179, align 4
  store double* %180, double** %48, align 4
  %181 = load double*, double** %7, align 4
  %182 = load i32, i32* %21, align 4
  %183 = sub i32 0, %182
  %184 = getelementptr inbounds double, double* %181, i32 %183
  %185 = load i32, i32* %20, align 4
  %186 = sub i32 0, %185
  %187 = getelementptr inbounds double, double* %184, i32 %186
  %188 = getelementptr inbounds double, double* %187, i32 -1
  store double* %188, double** %49, align 4
  %189 = load double*, double** %7, align 4
  %190 = load i32, i32* %21, align 4
  %191 = sub i32 0, %190
  %192 = getelementptr inbounds double, double* %189, i32 %191
  %193 = load i32, i32* %20, align 4
  %194 = sub i32 0, %193
  %195 = getelementptr inbounds double, double* %192, i32 %194
  store double* %195, double** %50, align 4
  %196 = load double*, double** %7, align 4
  %197 = load i32, i32* %21, align 4
  %198 = sub i32 0, %197
  %199 = getelementptr inbounds double, double* %196, i32 %198
  %200 = load i32, i32* %20, align 4
  %201 = sub i32 0, %200
  %202 = getelementptr inbounds double, double* %199, i32 %201
  %203 = getelementptr inbounds double, double* %202, i32 1
  store double* %203, double** %51, align 4
  %204 = load double*, double** %7, align 4
  %205 = load i32, i32* %21, align 4
  %206 = sub i32 0, %205
  %207 = getelementptr inbounds double, double* %204, i32 %206
  %208 = getelementptr inbounds double, double* %207, i32 -1
  store double* %208, double** %52, align 4
  %209 = load double*, double** %7, align 4
  %210 = load i32, i32* %21, align 4
  %211 = sub i32 0, %210
  %212 = getelementptr inbounds double, double* %209, i32 %211
  store double* %212, double** %53, align 4
  %213 = load double*, double** %7, align 4
  %214 = load i32, i32* %21, align 4
  %215 = sub i32 0, %214
  %216 = getelementptr inbounds double, double* %213, i32 %215
  %217 = getelementptr inbounds double, double* %216, i32 1
  store double* %217, double** %54, align 4
  %218 = load double*, double** %7, align 4
  %219 = load i32, i32* %21, align 4
  %220 = sub i32 0, %219
  %221 = getelementptr inbounds double, double* %218, i32 %220
  %222 = load i32, i32* %20, align 4
  %223 = getelementptr inbounds double, double* %221, i32 %222
  %224 = getelementptr inbounds double, double* %223, i32 -1
  store double* %224, double** %55, align 4
  %225 = load double*, double** %7, align 4
  %226 = load i32, i32* %21, align 4
  %227 = sub i32 0, %226
  %228 = getelementptr inbounds double, double* %225, i32 %227
  %229 = load i32, i32* %20, align 4
  %230 = getelementptr inbounds double, double* %228, i32 %229
  store double* %230, double** %56, align 4
  %231 = load double*, double** %7, align 4
  %232 = load i32, i32* %21, align 4
  %233 = sub i32 0, %232
  %234 = getelementptr inbounds double, double* %231, i32 %233
  %235 = load i32, i32* %20, align 4
  %236 = getelementptr inbounds double, double* %234, i32 %235
  %237 = getelementptr inbounds double, double* %236, i32 1
  store double* %237, double** %57, align 4
  %238 = load double*, double** %7, align 4
  %239 = load i32, i32* %20, align 4
  %240 = sub i32 0, %239
  %241 = getelementptr inbounds double, double* %238, i32 %240
  %242 = getelementptr inbounds double, double* %241, i32 -1
  store double* %242, double** %58, align 4
  %243 = load double*, double** %7, align 4
  %244 = load i32, i32* %20, align 4
  %245 = sub i32 0, %244
  %246 = getelementptr inbounds double, double* %243, i32 %245
  store double* %246, double** %59, align 4
  %247 = load double*, double** %7, align 4
  %248 = load i32, i32* %20, align 4
  %249 = sub i32 0, %248
  %250 = getelementptr inbounds double, double* %247, i32 %249
  %251 = getelementptr inbounds double, double* %250, i32 1
  store double* %251, double** %60, align 4
  %252 = load double*, double** %7, align 4
  %253 = getelementptr inbounds double, double* %252, i32 -1
  store double* %253, double** %61, align 4
  %254 = load double*, double** %7, align 4
  store double* %254, double** %62, align 4
  %255 = load double*, double** %7, align 4
  %256 = getelementptr inbounds double, double* %255, i32 1
  store double* %256, double** %63, align 4
  %257 = load double*, double** %7, align 4
  %258 = load i32, i32* %20, align 4
  %259 = getelementptr inbounds double, double* %257, i32 %258
  %260 = getelementptr inbounds double, double* %259, i32 -1
  store double* %260, double** %64, align 4
  %261 = load double*, double** %7, align 4
  %262 = load i32, i32* %20, align 4
  %263 = getelementptr inbounds double, double* %261, i32 %262
  store double* %263, double** %65, align 4
  %264 = load double*, double** %7, align 4
  %265 = load i32, i32* %20, align 4
  %266 = getelementptr inbounds double, double* %264, i32 %265
  %267 = getelementptr inbounds double, double* %266, i32 1
  store double* %267, double** %66, align 4
  %268 = load double*, double** %7, align 4
  %269 = load i32, i32* %21, align 4
  %270 = getelementptr inbounds double, double* %268, i32 %269
  %271 = load i32, i32* %20, align 4
  %272 = sub i32 0, %271
  %273 = getelementptr inbounds double, double* %270, i32 %272
  %274 = getelementptr inbounds double, double* %273, i32 -1
  store double* %274, double** %67, align 4
  %275 = load double*, double** %7, align 4
  %276 = load i32, i32* %21, align 4
  %277 = getelementptr inbounds double, double* %275, i32 %276
  %278 = load i32, i32* %20, align 4
  %279 = sub i32 0, %278
  %280 = getelementptr inbounds double, double* %277, i32 %279
  store double* %280, double** %68, align 4
  %281 = load double*, double** %7, align 4
  %282 = load i32, i32* %21, align 4
  %283 = getelementptr inbounds double, double* %281, i32 %282
  %284 = load i32, i32* %20, align 4
  %285 = sub i32 0, %284
  %286 = getelementptr inbounds double, double* %283, i32 %285
  %287 = getelementptr inbounds double, double* %286, i32 1
  store double* %287, double** %69, align 4
  %288 = load double*, double** %7, align 4
  %289 = load i32, i32* %21, align 4
  %290 = getelementptr inbounds double, double* %288, i32 %289
  %291 = getelementptr inbounds double, double* %290, i32 -1
  store double* %291, double** %70, align 4
  %292 = load double*, double** %7, align 4
  %293 = load i32, i32* %21, align 4
  %294 = getelementptr inbounds double, double* %292, i32 %293
  store double* %294, double** %71, align 4
  %295 = load double*, double** %7, align 4
  %296 = load i32, i32* %21, align 4
  %297 = getelementptr inbounds double, double* %295, i32 %296
  %298 = getelementptr inbounds double, double* %297, i32 1
  store double* %298, double** %72, align 4
  %299 = load double*, double** %7, align 4
  %300 = load i32, i32* %21, align 4
  %301 = getelementptr inbounds double, double* %299, i32 %300
  %302 = load i32, i32* %20, align 4
  %303 = getelementptr inbounds double, double* %301, i32 %302
  %304 = getelementptr inbounds double, double* %303, i32 -1
  store double* %304, double** %73, align 4
  %305 = load double*, double** %7, align 4
  %306 = load i32, i32* %21, align 4
  %307 = getelementptr inbounds double, double* %305, i32 %306
  %308 = load i32, i32* %20, align 4
  %309 = getelementptr inbounds double, double* %307, i32 %308
  store double* %309, double** %74, align 4
  %310 = load double*, double** %7, align 4
  %311 = load i32, i32* %21, align 4
  %312 = getelementptr inbounds double, double* %310, i32 %311
  %313 = load i32, i32* %20, align 4
  %314 = getelementptr inbounds double, double* %312, i32 %313
  %315 = getelementptr inbounds double, double* %314, i32 1
  store double* %315, double** %75, align 4
  %316 = load i32, i32* %18, align 4
  store i32 %316, i32* %13, align 4
  br label %317

; <label>:317:                                    ; preds = %623, %4
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %19, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %626

; <label>:321:                                    ; preds = %317
  %322 = load i32, i32* %16, align 4
  store i32 %322, i32* %12, align 4
  br label %323

; <label>:323:                                    ; preds = %619, %321
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* %17, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %622

; <label>:327:                                    ; preds = %323
  %328 = load i32, i32* %14, align 4
  store i32 %328, i32* %11, align 4
  br label %329

; <label>:329:                                    ; preds = %615, %327
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %15, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %618

; <label>:333:                                    ; preds = %329
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %12, align 4
  %336 = load i32, i32* %20, align 4
  %337 = mul nsw i32 %335, %336
  %338 = add nsw i32 %334, %337
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* %21, align 4
  %341 = mul nsw i32 %339, %340
  %342 = add nsw i32 %338, %341
  store i32 %342, i32* %10, align 4
  %343 = load double*, double** %22, align 4
  %344 = load i32, i32* %10, align 4
  %345 = getelementptr inbounds double, double* %343, i32 %344
  %346 = load double, double* %345, align 8
  %347 = load double*, double** %49, align 4
  %348 = load i32, i32* %10, align 4
  %349 = getelementptr inbounds double, double* %347, i32 %348
  %350 = load double, double* %349, align 8
  %351 = fmul double %346, %350
  %352 = load double*, double** %23, align 4
  %353 = load i32, i32* %10, align 4
  %354 = getelementptr inbounds double, double* %352, i32 %353
  %355 = load double, double* %354, align 8
  %356 = load double*, double** %50, align 4
  %357 = load i32, i32* %10, align 4
  %358 = getelementptr inbounds double, double* %356, i32 %357
  %359 = load double, double* %358, align 8
  %360 = fmul double %355, %359
  %361 = fadd double %351, %360
  %362 = load double*, double** %24, align 4
  %363 = load i32, i32* %10, align 4
  %364 = getelementptr inbounds double, double* %362, i32 %363
  %365 = load double, double* %364, align 8
  %366 = load double*, double** %51, align 4
  %367 = load i32, i32* %10, align 4
  %368 = getelementptr inbounds double, double* %366, i32 %367
  %369 = load double, double* %368, align 8
  %370 = fmul double %365, %369
  %371 = fadd double %361, %370
  %372 = load double*, double** %25, align 4
  %373 = load i32, i32* %10, align 4
  %374 = getelementptr inbounds double, double* %372, i32 %373
  %375 = load double, double* %374, align 8
  %376 = load double*, double** %52, align 4
  %377 = load i32, i32* %10, align 4
  %378 = getelementptr inbounds double, double* %376, i32 %377
  %379 = load double, double* %378, align 8
  %380 = fmul double %375, %379
  %381 = fadd double %371, %380
  %382 = load double*, double** %26, align 4
  %383 = load i32, i32* %10, align 4
  %384 = getelementptr inbounds double, double* %382, i32 %383
  %385 = load double, double* %384, align 8
  %386 = load double*, double** %53, align 4
  %387 = load i32, i32* %10, align 4
  %388 = getelementptr inbounds double, double* %386, i32 %387
  %389 = load double, double* %388, align 8
  %390 = fmul double %385, %389
  %391 = fadd double %381, %390
  %392 = load double*, double** %27, align 4
  %393 = load i32, i32* %10, align 4
  %394 = getelementptr inbounds double, double* %392, i32 %393
  %395 = load double, double* %394, align 8
  %396 = load double*, double** %54, align 4
  %397 = load i32, i32* %10, align 4
  %398 = getelementptr inbounds double, double* %396, i32 %397
  %399 = load double, double* %398, align 8
  %400 = fmul double %395, %399
  %401 = fadd double %391, %400
  %402 = load double*, double** %28, align 4
  %403 = load i32, i32* %10, align 4
  %404 = getelementptr inbounds double, double* %402, i32 %403
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %55, align 4
  %407 = load i32, i32* %10, align 4
  %408 = getelementptr inbounds double, double* %406, i32 %407
  %409 = load double, double* %408, align 8
  %410 = fmul double %405, %409
  %411 = fadd double %401, %410
  %412 = load double*, double** %29, align 4
  %413 = load i32, i32* %10, align 4
  %414 = getelementptr inbounds double, double* %412, i32 %413
  %415 = load double, double* %414, align 8
  %416 = load double*, double** %56, align 4
  %417 = load i32, i32* %10, align 4
  %418 = getelementptr inbounds double, double* %416, i32 %417
  %419 = load double, double* %418, align 8
  %420 = fmul double %415, %419
  %421 = fadd double %411, %420
  %422 = load double*, double** %30, align 4
  %423 = load i32, i32* %10, align 4
  %424 = getelementptr inbounds double, double* %422, i32 %423
  %425 = load double, double* %424, align 8
  %426 = load double*, double** %57, align 4
  %427 = load i32, i32* %10, align 4
  %428 = getelementptr inbounds double, double* %426, i32 %427
  %429 = load double, double* %428, align 8
  %430 = fmul double %425, %429
  %431 = fadd double %421, %430
  %432 = load double*, double** %31, align 4
  %433 = load i32, i32* %10, align 4
  %434 = getelementptr inbounds double, double* %432, i32 %433
  %435 = load double, double* %434, align 8
  %436 = load double*, double** %58, align 4
  %437 = load i32, i32* %10, align 4
  %438 = getelementptr inbounds double, double* %436, i32 %437
  %439 = load double, double* %438, align 8
  %440 = fmul double %435, %439
  %441 = fadd double %431, %440
  %442 = load double*, double** %32, align 4
  %443 = load i32, i32* %10, align 4
  %444 = getelementptr inbounds double, double* %442, i32 %443
  %445 = load double, double* %444, align 8
  %446 = load double*, double** %59, align 4
  %447 = load i32, i32* %10, align 4
  %448 = getelementptr inbounds double, double* %446, i32 %447
  %449 = load double, double* %448, align 8
  %450 = fmul double %445, %449
  %451 = fadd double %441, %450
  %452 = load double*, double** %33, align 4
  %453 = load i32, i32* %10, align 4
  %454 = getelementptr inbounds double, double* %452, i32 %453
  %455 = load double, double* %454, align 8
  %456 = load double*, double** %60, align 4
  %457 = load i32, i32* %10, align 4
  %458 = getelementptr inbounds double, double* %456, i32 %457
  %459 = load double, double* %458, align 8
  %460 = fmul double %455, %459
  %461 = fadd double %451, %460
  %462 = load double*, double** %34, align 4
  %463 = load i32, i32* %10, align 4
  %464 = getelementptr inbounds double, double* %462, i32 %463
  %465 = load double, double* %464, align 8
  %466 = load double*, double** %61, align 4
  %467 = load i32, i32* %10, align 4
  %468 = getelementptr inbounds double, double* %466, i32 %467
  %469 = load double, double* %468, align 8
  %470 = fmul double %465, %469
  %471 = fadd double %461, %470
  %472 = load double*, double** %35, align 4
  %473 = load i32, i32* %10, align 4
  %474 = getelementptr inbounds double, double* %472, i32 %473
  %475 = load double, double* %474, align 8
  %476 = load double*, double** %62, align 4
  %477 = load i32, i32* %10, align 4
  %478 = getelementptr inbounds double, double* %476, i32 %477
  %479 = load double, double* %478, align 8
  %480 = fmul double %475, %479
  %481 = fadd double %471, %480
  %482 = load double*, double** %36, align 4
  %483 = load i32, i32* %10, align 4
  %484 = getelementptr inbounds double, double* %482, i32 %483
  %485 = load double, double* %484, align 8
  %486 = load double*, double** %63, align 4
  %487 = load i32, i32* %10, align 4
  %488 = getelementptr inbounds double, double* %486, i32 %487
  %489 = load double, double* %488, align 8
  %490 = fmul double %485, %489
  %491 = fadd double %481, %490
  %492 = load double*, double** %37, align 4
  %493 = load i32, i32* %10, align 4
  %494 = getelementptr inbounds double, double* %492, i32 %493
  %495 = load double, double* %494, align 8
  %496 = load double*, double** %64, align 4
  %497 = load i32, i32* %10, align 4
  %498 = getelementptr inbounds double, double* %496, i32 %497
  %499 = load double, double* %498, align 8
  %500 = fmul double %495, %499
  %501 = fadd double %491, %500
  %502 = load double*, double** %38, align 4
  %503 = load i32, i32* %10, align 4
  %504 = getelementptr inbounds double, double* %502, i32 %503
  %505 = load double, double* %504, align 8
  %506 = load double*, double** %65, align 4
  %507 = load i32, i32* %10, align 4
  %508 = getelementptr inbounds double, double* %506, i32 %507
  %509 = load double, double* %508, align 8
  %510 = fmul double %505, %509
  %511 = fadd double %501, %510
  %512 = load double*, double** %39, align 4
  %513 = load i32, i32* %10, align 4
  %514 = getelementptr inbounds double, double* %512, i32 %513
  %515 = load double, double* %514, align 8
  %516 = load double*, double** %66, align 4
  %517 = load i32, i32* %10, align 4
  %518 = getelementptr inbounds double, double* %516, i32 %517
  %519 = load double, double* %518, align 8
  %520 = fmul double %515, %519
  %521 = fadd double %511, %520
  %522 = load double*, double** %40, align 4
  %523 = load i32, i32* %10, align 4
  %524 = getelementptr inbounds double, double* %522, i32 %523
  %525 = load double, double* %524, align 8
  %526 = load double*, double** %67, align 4
  %527 = load i32, i32* %10, align 4
  %528 = getelementptr inbounds double, double* %526, i32 %527
  %529 = load double, double* %528, align 8
  %530 = fmul double %525, %529
  %531 = fadd double %521, %530
  %532 = load double*, double** %41, align 4
  %533 = load i32, i32* %10, align 4
  %534 = getelementptr inbounds double, double* %532, i32 %533
  %535 = load double, double* %534, align 8
  %536 = load double*, double** %68, align 4
  %537 = load i32, i32* %10, align 4
  %538 = getelementptr inbounds double, double* %536, i32 %537
  %539 = load double, double* %538, align 8
  %540 = fmul double %535, %539
  %541 = fadd double %531, %540
  %542 = load double*, double** %42, align 4
  %543 = load i32, i32* %10, align 4
  %544 = getelementptr inbounds double, double* %542, i32 %543
  %545 = load double, double* %544, align 8
  %546 = load double*, double** %69, align 4
  %547 = load i32, i32* %10, align 4
  %548 = getelementptr inbounds double, double* %546, i32 %547
  %549 = load double, double* %548, align 8
  %550 = fmul double %545, %549
  %551 = fadd double %541, %550
  %552 = load double*, double** %43, align 4
  %553 = load i32, i32* %10, align 4
  %554 = getelementptr inbounds double, double* %552, i32 %553
  %555 = load double, double* %554, align 8
  %556 = load double*, double** %70, align 4
  %557 = load i32, i32* %10, align 4
  %558 = getelementptr inbounds double, double* %556, i32 %557
  %559 = load double, double* %558, align 8
  %560 = fmul double %555, %559
  %561 = fadd double %551, %560
  %562 = load double*, double** %44, align 4
  %563 = load i32, i32* %10, align 4
  %564 = getelementptr inbounds double, double* %562, i32 %563
  %565 = load double, double* %564, align 8
  %566 = load double*, double** %71, align 4
  %567 = load i32, i32* %10, align 4
  %568 = getelementptr inbounds double, double* %566, i32 %567
  %569 = load double, double* %568, align 8
  %570 = fmul double %565, %569
  %571 = fadd double %561, %570
  %572 = load double*, double** %45, align 4
  %573 = load i32, i32* %10, align 4
  %574 = getelementptr inbounds double, double* %572, i32 %573
  %575 = load double, double* %574, align 8
  %576 = load double*, double** %72, align 4
  %577 = load i32, i32* %10, align 4
  %578 = getelementptr inbounds double, double* %576, i32 %577
  %579 = load double, double* %578, align 8
  %580 = fmul double %575, %579
  %581 = fadd double %571, %580
  %582 = load double*, double** %46, align 4
  %583 = load i32, i32* %10, align 4
  %584 = getelementptr inbounds double, double* %582, i32 %583
  %585 = load double, double* %584, align 8
  %586 = load double*, double** %73, align 4
  %587 = load i32, i32* %10, align 4
  %588 = getelementptr inbounds double, double* %586, i32 %587
  %589 = load double, double* %588, align 8
  %590 = fmul double %585, %589
  %591 = fadd double %581, %590
  %592 = load double*, double** %47, align 4
  %593 = load i32, i32* %10, align 4
  %594 = getelementptr inbounds double, double* %592, i32 %593
  %595 = load double, double* %594, align 8
  %596 = load double*, double** %74, align 4
  %597 = load i32, i32* %10, align 4
  %598 = getelementptr inbounds double, double* %596, i32 %597
  %599 = load double, double* %598, align 8
  %600 = fmul double %595, %599
  %601 = fadd double %591, %600
  %602 = load double*, double** %48, align 4
  %603 = load i32, i32* %10, align 4
  %604 = getelementptr inbounds double, double* %602, i32 %603
  %605 = load double, double* %604, align 8
  %606 = load double*, double** %75, align 4
  %607 = load i32, i32* %10, align 4
  %608 = getelementptr inbounds double, double* %606, i32 %607
  %609 = load double, double* %608, align 8
  %610 = fmul double %605, %609
  %611 = fadd double %601, %610
  %612 = load double*, double** %8, align 4
  %613 = load i32, i32* %10, align 4
  %614 = getelementptr inbounds double, double* %612, i32 %613
  store double %611, double* %614, align 8
  br label %615

; <label>:615:                                    ; preds = %333
  %616 = load i32, i32* %11, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %11, align 4
  br label %329

; <label>:618:                                    ; preds = %329
  br label %619

; <label>:619:                                    ; preds = %618
  %620 = load i32, i32* %12, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %12, align 4
  br label %323

; <label>:622:                                    ; preds = %323
  br label %623

; <label>:623:                                    ; preds = %622
  %624 = load i32, i32* %13, align 4
  %625 = add nsw i32 %624, 1
  store i32 %625, i32* %13, align 4
  br label %317

; <label>:626:                                    ; preds = %317
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
