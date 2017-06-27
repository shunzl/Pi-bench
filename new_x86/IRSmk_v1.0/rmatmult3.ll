; ModuleID = 'rmatmult3.c'
source_filename = "rmatmult3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-ellcc-linux"

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
define void @rmatmult3(%struct.Domain_s*, %struct.RadiationData_t*, double*, double*) #0 {
  %5 = alloca %struct.Domain_s*, align 8
  %6 = alloca %struct.RadiationData_t*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
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
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double*, align 8
  %36 = alloca double*, align 8
  %37 = alloca double*, align 8
  %38 = alloca double*, align 8
  %39 = alloca double*, align 8
  %40 = alloca double*, align 8
  %41 = alloca double*, align 8
  %42 = alloca double*, align 8
  %43 = alloca double*, align 8
  %44 = alloca double*, align 8
  %45 = alloca double*, align 8
  %46 = alloca double*, align 8
  %47 = alloca double*, align 8
  %48 = alloca double*, align 8
  %49 = alloca double*, align 8
  %50 = alloca double*, align 8
  %51 = alloca double*, align 8
  %52 = alloca double*, align 8
  %53 = alloca double*, align 8
  %54 = alloca double*, align 8
  %55 = alloca double*, align 8
  %56 = alloca double*, align 8
  %57 = alloca double*, align 8
  %58 = alloca double*, align 8
  %59 = alloca double*, align 8
  %60 = alloca double*, align 8
  %61 = alloca double*, align 8
  %62 = alloca double*, align 8
  %63 = alloca double*, align 8
  %64 = alloca double*, align 8
  %65 = alloca double*, align 8
  %66 = alloca double*, align 8
  %67 = alloca double*, align 8
  %68 = alloca double*, align 8
  %69 = alloca double*, align 8
  %70 = alloca double*, align 8
  %71 = alloca double*, align 8
  %72 = alloca double*, align 8
  %73 = alloca double*, align 8
  %74 = alloca double*, align 8
  %75 = alloca double*, align 8
  store %struct.Domain_s* %0, %struct.Domain_s** %5, align 8
  store %struct.RadiationData_t* %1, %struct.RadiationData_t** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %9, align 8
  %76 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %77 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %80 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %83 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %86 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %89 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %18, align 4
  %91 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %92 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %19, align 4
  %94 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %95 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %94, i32 0, i32 17
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  %97 = load %struct.Domain_s*, %struct.Domain_s** %5, align 8
  %98 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %97, i32 0, i32 18
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %21, align 4
  %100 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %101 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %100, i32 0, i32 0
  %102 = load double*, double** %101, align 8
  store double* %102, double** %22, align 8
  %103 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %104 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %103, i32 0, i32 1
  %105 = load double*, double** %104, align 8
  store double* %105, double** %23, align 8
  %106 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %107 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %106, i32 0, i32 2
  %108 = load double*, double** %107, align 8
  store double* %108, double** %24, align 8
  %109 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %110 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %109, i32 0, i32 3
  %111 = load double*, double** %110, align 8
  store double* %111, double** %25, align 8
  %112 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %113 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %112, i32 0, i32 4
  %114 = load double*, double** %113, align 8
  store double* %114, double** %26, align 8
  %115 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %116 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %115, i32 0, i32 5
  %117 = load double*, double** %116, align 8
  store double* %117, double** %27, align 8
  %118 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %119 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %118, i32 0, i32 6
  %120 = load double*, double** %119, align 8
  store double* %120, double** %28, align 8
  %121 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %122 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %121, i32 0, i32 7
  %123 = load double*, double** %122, align 8
  store double* %123, double** %29, align 8
  %124 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %125 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %124, i32 0, i32 8
  %126 = load double*, double** %125, align 8
  store double* %126, double** %30, align 8
  %127 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %128 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %127, i32 0, i32 9
  %129 = load double*, double** %128, align 8
  store double* %129, double** %31, align 8
  %130 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %131 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %130, i32 0, i32 10
  %132 = load double*, double** %131, align 8
  store double* %132, double** %32, align 8
  %133 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %134 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %133, i32 0, i32 11
  %135 = load double*, double** %134, align 8
  store double* %135, double** %33, align 8
  %136 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %137 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %136, i32 0, i32 12
  %138 = load double*, double** %137, align 8
  store double* %138, double** %34, align 8
  %139 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %140 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %139, i32 0, i32 13
  %141 = load double*, double** %140, align 8
  store double* %141, double** %35, align 8
  %142 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %143 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %142, i32 0, i32 14
  %144 = load double*, double** %143, align 8
  store double* %144, double** %36, align 8
  %145 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %146 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %145, i32 0, i32 15
  %147 = load double*, double** %146, align 8
  store double* %147, double** %37, align 8
  %148 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %149 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %148, i32 0, i32 16
  %150 = load double*, double** %149, align 8
  store double* %150, double** %38, align 8
  %151 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %152 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %151, i32 0, i32 17
  %153 = load double*, double** %152, align 8
  store double* %153, double** %39, align 8
  %154 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %155 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %154, i32 0, i32 18
  %156 = load double*, double** %155, align 8
  store double* %156, double** %40, align 8
  %157 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %158 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %157, i32 0, i32 19
  %159 = load double*, double** %158, align 8
  store double* %159, double** %41, align 8
  %160 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %161 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %160, i32 0, i32 20
  %162 = load double*, double** %161, align 8
  store double* %162, double** %42, align 8
  %163 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %164 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %163, i32 0, i32 21
  %165 = load double*, double** %164, align 8
  store double* %165, double** %43, align 8
  %166 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %167 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %166, i32 0, i32 22
  %168 = load double*, double** %167, align 8
  store double* %168, double** %44, align 8
  %169 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %170 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %169, i32 0, i32 23
  %171 = load double*, double** %170, align 8
  store double* %171, double** %45, align 8
  %172 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %173 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %172, i32 0, i32 24
  %174 = load double*, double** %173, align 8
  store double* %174, double** %46, align 8
  %175 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %176 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %175, i32 0, i32 25
  %177 = load double*, double** %176, align 8
  store double* %177, double** %47, align 8
  %178 = load %struct.RadiationData_t*, %struct.RadiationData_t** %6, align 8
  %179 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %178, i32 0, i32 26
  %180 = load double*, double** %179, align 8
  store double* %180, double** %48, align 8
  %181 = load double*, double** %7, align 8
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = sub i64 0, %183
  %185 = getelementptr inbounds double, double* %181, i64 %184
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = sub i64 0, %187
  %189 = getelementptr inbounds double, double* %185, i64 %188
  %190 = getelementptr inbounds double, double* %189, i64 -1
  store double* %190, double** %49, align 8
  %191 = load double*, double** %7, align 8
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = sub i64 0, %193
  %195 = getelementptr inbounds double, double* %191, i64 %194
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = sub i64 0, %197
  %199 = getelementptr inbounds double, double* %195, i64 %198
  store double* %199, double** %50, align 8
  %200 = load double*, double** %7, align 8
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds double, double* %200, i64 %203
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 0, %206
  %208 = getelementptr inbounds double, double* %204, i64 %207
  %209 = getelementptr inbounds double, double* %208, i64 1
  store double* %209, double** %51, align 8
  %210 = load double*, double** %7, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = sub i64 0, %212
  %214 = getelementptr inbounds double, double* %210, i64 %213
  %215 = getelementptr inbounds double, double* %214, i64 -1
  store double* %215, double** %52, align 8
  %216 = load double*, double** %7, align 8
  %217 = load i32, i32* %21, align 4
  %218 = sext i32 %217 to i64
  %219 = sub i64 0, %218
  %220 = getelementptr inbounds double, double* %216, i64 %219
  store double* %220, double** %53, align 8
  %221 = load double*, double** %7, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = sub i64 0, %223
  %225 = getelementptr inbounds double, double* %221, i64 %224
  %226 = getelementptr inbounds double, double* %225, i64 1
  store double* %226, double** %54, align 8
  %227 = load double*, double** %7, align 8
  %228 = load i32, i32* %21, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds double, double* %227, i64 %230
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %231, i64 %233
  %235 = getelementptr inbounds double, double* %234, i64 -1
  store double* %235, double** %55, align 8
  %236 = load double*, double** %7, align 8
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = sub i64 0, %238
  %240 = getelementptr inbounds double, double* %236, i64 %239
  %241 = load i32, i32* %20, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double, double* %240, i64 %242
  store double* %243, double** %56, align 8
  %244 = load double*, double** %7, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = sub i64 0, %246
  %248 = getelementptr inbounds double, double* %244, i64 %247
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double, double* %248, i64 %250
  %252 = getelementptr inbounds double, double* %251, i64 1
  store double* %252, double** %57, align 8
  %253 = load double*, double** %7, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = sub i64 0, %255
  %257 = getelementptr inbounds double, double* %253, i64 %256
  %258 = getelementptr inbounds double, double* %257, i64 -1
  store double* %258, double** %58, align 8
  %259 = load double*, double** %7, align 8
  %260 = load i32, i32* %20, align 4
  %261 = sext i32 %260 to i64
  %262 = sub i64 0, %261
  %263 = getelementptr inbounds double, double* %259, i64 %262
  store double* %263, double** %59, align 8
  %264 = load double*, double** %7, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = sub i64 0, %266
  %268 = getelementptr inbounds double, double* %264, i64 %267
  %269 = getelementptr inbounds double, double* %268, i64 1
  store double* %269, double** %60, align 8
  %270 = load double*, double** %7, align 8
  %271 = getelementptr inbounds double, double* %270, i64 -1
  store double* %271, double** %61, align 8
  %272 = load double*, double** %7, align 8
  store double* %272, double** %62, align 8
  %273 = load double*, double** %7, align 8
  %274 = getelementptr inbounds double, double* %273, i64 1
  store double* %274, double** %63, align 8
  %275 = load double*, double** %7, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = getelementptr inbounds double, double* %278, i64 -1
  store double* %279, double** %64, align 8
  %280 = load double*, double** %7, align 8
  %281 = load i32, i32* %20, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %280, i64 %282
  store double* %283, double** %65, align 8
  %284 = load double*, double** %7, align 8
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds double, double* %284, i64 %286
  %288 = getelementptr inbounds double, double* %287, i64 1
  store double* %288, double** %66, align 8
  %289 = load double*, double** %7, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %289, i64 %291
  %293 = load i32, i32* %20, align 4
  %294 = sext i32 %293 to i64
  %295 = sub i64 0, %294
  %296 = getelementptr inbounds double, double* %292, i64 %295
  %297 = getelementptr inbounds double, double* %296, i64 -1
  store double* %297, double** %67, align 8
  %298 = load double*, double** %7, align 8
  %299 = load i32, i32* %21, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %298, i64 %300
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = sub i64 0, %303
  %305 = getelementptr inbounds double, double* %301, i64 %304
  store double* %305, double** %68, align 8
  %306 = load double*, double** %7, align 8
  %307 = load i32, i32* %21, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, double* %306, i64 %308
  %310 = load i32, i32* %20, align 4
  %311 = sext i32 %310 to i64
  %312 = sub i64 0, %311
  %313 = getelementptr inbounds double, double* %309, i64 %312
  %314 = getelementptr inbounds double, double* %313, i64 1
  store double* %314, double** %69, align 8
  %315 = load double*, double** %7, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, double* %315, i64 %317
  %319 = getelementptr inbounds double, double* %318, i64 -1
  store double* %319, double** %70, align 8
  %320 = load double*, double** %7, align 8
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds double, double* %320, i64 %322
  store double* %323, double** %71, align 8
  %324 = load double*, double** %7, align 8
  %325 = load i32, i32* %21, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds double, double* %324, i64 %326
  %328 = getelementptr inbounds double, double* %327, i64 1
  store double* %328, double** %72, align 8
  %329 = load double*, double** %7, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds double, double* %329, i64 %331
  %333 = load i32, i32* %20, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %332, i64 %334
  %336 = getelementptr inbounds double, double* %335, i64 -1
  store double* %336, double** %73, align 8
  %337 = load double*, double** %7, align 8
  %338 = load i32, i32* %21, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double, double* %337, i64 %339
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds double, double* %340, i64 %342
  store double* %343, double** %74, align 8
  %344 = load double*, double** %7, align 8
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds double, double* %344, i64 %346
  %348 = load i32, i32* %20, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %347, i64 %349
  %351 = getelementptr inbounds double, double* %350, i64 1
  store double* %351, double** %75, align 8
  %352 = load i32, i32* %18, align 4
  store i32 %352, i32* %13, align 4
  br label %353

; <label>:353:                                    ; preds = %714, %4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %19, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %717

; <label>:357:                                    ; preds = %353
  %358 = load i32, i32* %16, align 4
  store i32 %358, i32* %12, align 4
  br label %359

; <label>:359:                                    ; preds = %710, %357
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* %17, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %713

; <label>:363:                                    ; preds = %359
  %364 = load i32, i32* %14, align 4
  store i32 %364, i32* %11, align 4
  br label %365

; <label>:365:                                    ; preds = %706, %363
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %15, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %709

; <label>:369:                                    ; preds = %365
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %20, align 4
  %373 = mul nsw i32 %371, %372
  %374 = add nsw i32 %370, %373
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* %21, align 4
  %377 = mul nsw i32 %375, %376
  %378 = add nsw i32 %374, %377
  store i32 %378, i32* %10, align 4
  %379 = load double*, double** %22, align 8
  %380 = load i32, i32* %10, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds double, double* %379, i64 %381
  %383 = load double, double* %382, align 8
  %384 = load double*, double** %49, align 8
  %385 = load i32, i32* %10, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %384, i64 %386
  %388 = load double, double* %387, align 8
  %389 = fmul double %383, %388
  %390 = load double*, double** %23, align 8
  %391 = load i32, i32* %10, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, double* %390, i64 %392
  %394 = load double, double* %393, align 8
  %395 = load double*, double** %50, align 8
  %396 = load i32, i32* %10, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds double, double* %395, i64 %397
  %399 = load double, double* %398, align 8
  %400 = fmul double %394, %399
  %401 = fadd double %389, %400
  %402 = load double*, double** %24, align 8
  %403 = load i32, i32* %10, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds double, double* %402, i64 %404
  %406 = load double, double* %405, align 8
  %407 = load double*, double** %51, align 8
  %408 = load i32, i32* %10, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds double, double* %407, i64 %409
  %411 = load double, double* %410, align 8
  %412 = fmul double %406, %411
  %413 = fadd double %401, %412
  %414 = load double*, double** %25, align 8
  %415 = load i32, i32* %10, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds double, double* %414, i64 %416
  %418 = load double, double* %417, align 8
  %419 = load double*, double** %52, align 8
  %420 = load i32, i32* %10, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds double, double* %419, i64 %421
  %423 = load double, double* %422, align 8
  %424 = fmul double %418, %423
  %425 = fadd double %413, %424
  %426 = load double*, double** %26, align 8
  %427 = load i32, i32* %10, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds double, double* %426, i64 %428
  %430 = load double, double* %429, align 8
  %431 = load double*, double** %53, align 8
  %432 = load i32, i32* %10, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %431, i64 %433
  %435 = load double, double* %434, align 8
  %436 = fmul double %430, %435
  %437 = fadd double %425, %436
  %438 = load double*, double** %27, align 8
  %439 = load i32, i32* %10, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, double* %438, i64 %440
  %442 = load double, double* %441, align 8
  %443 = load double*, double** %54, align 8
  %444 = load i32, i32* %10, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %443, i64 %445
  %447 = load double, double* %446, align 8
  %448 = fmul double %442, %447
  %449 = fadd double %437, %448
  %450 = load double*, double** %28, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds double, double* %450, i64 %452
  %454 = load double, double* %453, align 8
  %455 = load double*, double** %55, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds double, double* %455, i64 %457
  %459 = load double, double* %458, align 8
  %460 = fmul double %454, %459
  %461 = fadd double %449, %460
  %462 = load double*, double** %29, align 8
  %463 = load i32, i32* %10, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds double, double* %462, i64 %464
  %466 = load double, double* %465, align 8
  %467 = load double*, double** %56, align 8
  %468 = load i32, i32* %10, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds double, double* %467, i64 %469
  %471 = load double, double* %470, align 8
  %472 = fmul double %466, %471
  %473 = fadd double %461, %472
  %474 = load double*, double** %30, align 8
  %475 = load i32, i32* %10, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds double, double* %474, i64 %476
  %478 = load double, double* %477, align 8
  %479 = load double*, double** %57, align 8
  %480 = load i32, i32* %10, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds double, double* %479, i64 %481
  %483 = load double, double* %482, align 8
  %484 = fmul double %478, %483
  %485 = fadd double %473, %484
  %486 = load double*, double** %31, align 8
  %487 = load i32, i32* %10, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds double, double* %486, i64 %488
  %490 = load double, double* %489, align 8
  %491 = load double*, double** %58, align 8
  %492 = load i32, i32* %10, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds double, double* %491, i64 %493
  %495 = load double, double* %494, align 8
  %496 = fmul double %490, %495
  %497 = fadd double %485, %496
  %498 = load double*, double** %32, align 8
  %499 = load i32, i32* %10, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds double, double* %498, i64 %500
  %502 = load double, double* %501, align 8
  %503 = load double*, double** %59, align 8
  %504 = load i32, i32* %10, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds double, double* %503, i64 %505
  %507 = load double, double* %506, align 8
  %508 = fmul double %502, %507
  %509 = fadd double %497, %508
  %510 = load double*, double** %33, align 8
  %511 = load i32, i32* %10, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds double, double* %510, i64 %512
  %514 = load double, double* %513, align 8
  %515 = load double*, double** %60, align 8
  %516 = load i32, i32* %10, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds double, double* %515, i64 %517
  %519 = load double, double* %518, align 8
  %520 = fmul double %514, %519
  %521 = fadd double %509, %520
  %522 = load double*, double** %34, align 8
  %523 = load i32, i32* %10, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds double, double* %522, i64 %524
  %526 = load double, double* %525, align 8
  %527 = load double*, double** %61, align 8
  %528 = load i32, i32* %10, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds double, double* %527, i64 %529
  %531 = load double, double* %530, align 8
  %532 = fmul double %526, %531
  %533 = fadd double %521, %532
  %534 = load double*, double** %35, align 8
  %535 = load i32, i32* %10, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds double, double* %534, i64 %536
  %538 = load double, double* %537, align 8
  %539 = load double*, double** %62, align 8
  %540 = load i32, i32* %10, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds double, double* %539, i64 %541
  %543 = load double, double* %542, align 8
  %544 = fmul double %538, %543
  %545 = fadd double %533, %544
  %546 = load double*, double** %36, align 8
  %547 = load i32, i32* %10, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds double, double* %546, i64 %548
  %550 = load double, double* %549, align 8
  %551 = load double*, double** %63, align 8
  %552 = load i32, i32* %10, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds double, double* %551, i64 %553
  %555 = load double, double* %554, align 8
  %556 = fmul double %550, %555
  %557 = fadd double %545, %556
  %558 = load double*, double** %37, align 8
  %559 = load i32, i32* %10, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds double, double* %558, i64 %560
  %562 = load double, double* %561, align 8
  %563 = load double*, double** %64, align 8
  %564 = load i32, i32* %10, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds double, double* %563, i64 %565
  %567 = load double, double* %566, align 8
  %568 = fmul double %562, %567
  %569 = fadd double %557, %568
  %570 = load double*, double** %38, align 8
  %571 = load i32, i32* %10, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %570, i64 %572
  %574 = load double, double* %573, align 8
  %575 = load double*, double** %65, align 8
  %576 = load i32, i32* %10, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds double, double* %575, i64 %577
  %579 = load double, double* %578, align 8
  %580 = fmul double %574, %579
  %581 = fadd double %569, %580
  %582 = load double*, double** %39, align 8
  %583 = load i32, i32* %10, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %582, i64 %584
  %586 = load double, double* %585, align 8
  %587 = load double*, double** %66, align 8
  %588 = load i32, i32* %10, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds double, double* %587, i64 %589
  %591 = load double, double* %590, align 8
  %592 = fmul double %586, %591
  %593 = fadd double %581, %592
  %594 = load double*, double** %40, align 8
  %595 = load i32, i32* %10, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds double, double* %594, i64 %596
  %598 = load double, double* %597, align 8
  %599 = load double*, double** %67, align 8
  %600 = load i32, i32* %10, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds double, double* %599, i64 %601
  %603 = load double, double* %602, align 8
  %604 = fmul double %598, %603
  %605 = fadd double %593, %604
  %606 = load double*, double** %41, align 8
  %607 = load i32, i32* %10, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds double, double* %606, i64 %608
  %610 = load double, double* %609, align 8
  %611 = load double*, double** %68, align 8
  %612 = load i32, i32* %10, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds double, double* %611, i64 %613
  %615 = load double, double* %614, align 8
  %616 = fmul double %610, %615
  %617 = fadd double %605, %616
  %618 = load double*, double** %42, align 8
  %619 = load i32, i32* %10, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds double, double* %618, i64 %620
  %622 = load double, double* %621, align 8
  %623 = load double*, double** %69, align 8
  %624 = load i32, i32* %10, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds double, double* %623, i64 %625
  %627 = load double, double* %626, align 8
  %628 = fmul double %622, %627
  %629 = fadd double %617, %628
  %630 = load double*, double** %43, align 8
  %631 = load i32, i32* %10, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds double, double* %630, i64 %632
  %634 = load double, double* %633, align 8
  %635 = load double*, double** %70, align 8
  %636 = load i32, i32* %10, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds double, double* %635, i64 %637
  %639 = load double, double* %638, align 8
  %640 = fmul double %634, %639
  %641 = fadd double %629, %640
  %642 = load double*, double** %44, align 8
  %643 = load i32, i32* %10, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds double, double* %642, i64 %644
  %646 = load double, double* %645, align 8
  %647 = load double*, double** %71, align 8
  %648 = load i32, i32* %10, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds double, double* %647, i64 %649
  %651 = load double, double* %650, align 8
  %652 = fmul double %646, %651
  %653 = fadd double %641, %652
  %654 = load double*, double** %45, align 8
  %655 = load i32, i32* %10, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds double, double* %654, i64 %656
  %658 = load double, double* %657, align 8
  %659 = load double*, double** %72, align 8
  %660 = load i32, i32* %10, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds double, double* %659, i64 %661
  %663 = load double, double* %662, align 8
  %664 = fmul double %658, %663
  %665 = fadd double %653, %664
  %666 = load double*, double** %46, align 8
  %667 = load i32, i32* %10, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds double, double* %666, i64 %668
  %670 = load double, double* %669, align 8
  %671 = load double*, double** %73, align 8
  %672 = load i32, i32* %10, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds double, double* %671, i64 %673
  %675 = load double, double* %674, align 8
  %676 = fmul double %670, %675
  %677 = fadd double %665, %676
  %678 = load double*, double** %47, align 8
  %679 = load i32, i32* %10, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds double, double* %678, i64 %680
  %682 = load double, double* %681, align 8
  %683 = load double*, double** %74, align 8
  %684 = load i32, i32* %10, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds double, double* %683, i64 %685
  %687 = load double, double* %686, align 8
  %688 = fmul double %682, %687
  %689 = fadd double %677, %688
  %690 = load double*, double** %48, align 8
  %691 = load i32, i32* %10, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds double, double* %690, i64 %692
  %694 = load double, double* %693, align 8
  %695 = load double*, double** %75, align 8
  %696 = load i32, i32* %10, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds double, double* %695, i64 %697
  %699 = load double, double* %698, align 8
  %700 = fmul double %694, %699
  %701 = fadd double %689, %700
  %702 = load double*, double** %8, align 8
  %703 = load i32, i32* %10, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds double, double* %702, i64 %704
  store double %701, double* %705, align 8
  br label %706

; <label>:706:                                    ; preds = %369
  %707 = load i32, i32* %11, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %11, align 4
  br label %365

; <label>:709:                                    ; preds = %365
  br label %710

; <label>:710:                                    ; preds = %709
  %711 = load i32, i32* %12, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %12, align 4
  br label %359

; <label>:713:                                    ; preds = %359
  br label %714

; <label>:714:                                    ; preds = %713
  %715 = load i32, i32* %13, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %13, align 4
  br label %353

; <label>:717:                                    ; preds = %353
  ret void
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (trunk)"}
