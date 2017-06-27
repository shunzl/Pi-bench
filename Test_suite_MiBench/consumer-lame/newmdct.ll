; ModuleID = 'newmdct.c'
source_filename = "newmdct.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }

@mdct_sub48.init = internal global i32 0, align 4
@sb_sample = internal global [2 x [2 x [18 x [32 x double]]]] zeroinitializer, align 8
@win = internal global [4 x [36 x double]] zeroinitializer, align 8
@ca = internal global [8 x double] zeroinitializer, align 8
@cs = internal global [8 x double] zeroinitializer, align 8
@mdct_init48.c = internal constant [8 x double] [double -6.000000e-01, double -5.350000e-01, double -3.300000e-01, double -1.850000e-01, double -9.500000e-02, double -4.100000e-02, double -1.420000e-02, double -3.700000e-03], align 8
@cos_l = internal global [244 x double] zeroinitializer, align 8
@mdct_init48.d3 = internal constant [4 x i32] [i32 1, i32 7, i32 10, i32 16], align 4
@mdct_init48.d9 = internal constant [2 x i32] [i32 4, i32 13], align 4
@all = internal constant [12 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 8, i32 9, i32 11, i32 12, i32 14, i32 15, i32 17], align 4
@enwindow = internal global [256 x double] [double 0x3FA251E002C5BE4C, double 0x3F924E1FFC2760F6, double 3.134727e-03, double 2.457142e-03, double 9.713170e-04, double 2.188680e-04, double 1.015660e-04, double 1.382800e-05, double 0x3FA24EFFFE8EA200, double 3.401756e-03, double 9.837150e-04, double 9.918200e-05, double -4.770000e-07, double 1.039510e-04, double 9.536740e-04, double 2.841473e-03, double 1.239800e-05, double 1.912120e-04, double 2.283096e-03, double 0x3F9166FFFA87D736, double 0x3F9334FFF82E8B95, double 2.630711e-03, double 2.474780e-04, double 1.478200e-05, double 0x3FA2467FFD4C82A1, double 3.643036e-03, double 9.918210e-04, double 9.632100e-05, double -4.770000e-07, double 1.058580e-04, double 9.307860e-04, double 2.521515e-03, double 1.144400e-05, double 1.654620e-04, double 2.110004e-03, double 0x3F907FDFF8E84D76, double 0x3F941B0002FC8112, double 2.803326e-03, double 2.770420e-04, double 1.668900e-05, double 0x3FA2385FFEFF602E, double 3.858566e-03, double 9.951590e-04, double 9.346000e-05, double -4.770000e-07, double 1.072880e-04, double 9.026530e-04, double 2.174854e-03, double 1.001400e-05, double 1.401900e-04, double 1.937389e-03, double 0x3F8F32C00A8B630F, double 0x3F94FFC002FEA6D3, double 2.974033e-03, double 3.075600e-04, double 1.812000e-05, double 3.543520e-02, double 4.049301e-03, double 9.942050e-04, double 9.059900e-05, double -4.770000e-07, double 1.082420e-04, double 8.687970e-04, double 1.800537e-03, double 9.060000e-06, double 1.163480e-04, double 1.766682e-03, double 0x3F8D680010E953B9, double 0x3F95E29FFB661AF0, double 3.141880e-03, double 3.390310e-04, double 1.955000e-05, double 0x3FA20B4002AD0C1B, double 4.215240e-03, double 9.894370e-04, double 8.726100e-05, double -4.770000e-07, double 1.087190e-04, double 8.292200e-04, double 1.399517e-03, double 8.106000e-06, double 9.393700e-05, double 1.597881e-03, double 0x3F8BA03FF357727A, double 0x3F96C320035E36F6, double 3.306866e-03, double 3.714560e-04, double 2.145800e-05, double 3.500700e-02, double 4.357815e-03, double 9.808540e-04, double 8.392300e-05, double -4.770000e-07, double 1.087190e-04, double 7.839200e-04, double 9.713170e-04, double 7.629000e-06, double 7.295600e-05, double 1.432419e-03, double 0x3F89DC800CEF6B77, double 2.307415e-02, double 3.467083e-03, double 4.043580e-04, double 2.336500e-05, double 0x3FA1C82FFC6969F3, double 4.477024e-03, double 9.689330e-04, double 8.058500e-05, double -9.540000e-07, double 1.082420e-04, double 7.319450e-04, double 5.159380e-04, double 6.676000e-06, double 5.292900e-05, double 1.269817e-03, double 0x3F881D80076614A1, double 0x3F987B2006DB9161, double 3.622532e-03, double 4.382130e-04, double 2.527200e-05, double 0x3FA19E90011D1416, double 4.573822e-03, double 9.541510e-04, double 7.677100e-05, double -9.540000e-07, double 1.068120e-04, double 6.742480e-04, double 3.337900e-05, double 6.199000e-06, double 3.433200e-05, double 1.111031e-03, double 0x3F86643FF91CEA7A, double 0x3F99519FFD2D5F2B, double 3.771782e-03, double 4.725460e-04, double 2.765700e-05, double 3.405571e-02, double 4.649162e-03, double 9.355550e-04, double 7.343300e-05, double -9.540000e-07, double 1.053810e-04, double 6.103520e-04, double -4.758830e-04, double 5.245000e-06, double 1.716600e-05, double 9.565350e-04, double 0x3F84B1400FA0C315, double 2.552700e-02, double 3.914356e-03, double 5.073550e-04, double 3.004100e-05, double 0x3FA13BE000055E64, double 4.703045e-03, double 9.150510e-04, double 7.009500e-05, double -9.540000e-07, double 1.025200e-04, double 5.393030e-04, double -1.011848e-03, double 4.768000e-06, double 9.540000e-07, double 8.068080e-04, double 9.287834e-03, double 0x3F9AF14004E3FBA4, double 4.048824e-03, double 5.421640e-04, double 3.242500e-05, double 0x3FA102EFFD062E20, double 4.737377e-03, double 8.916850e-04, double 6.628000e-05, double -1.431000e-06, double 9.918200e-05, double 4.625320e-04, double -1.573563e-03, double 4.292000e-06, double -1.382800e-05, double 6.618500e-04, double 8.487225e-03, double 2.707386e-02, double 4.174709e-03, double 5.769730e-04, double 3.480900e-05, double 0x3FA0C53FFF633BD3, double 4.752159e-03, double 8.664130e-04, double 6.294300e-05, double -1.431000e-06, double 9.536700e-05, double 3.786090e-04, double -2.161503e-03, double 3.815000e-06, double -2.718000e-05, double 5.221370e-04, double 7.703304e-03, double 0x3F9C7BA000DE43BA, double 4.290581e-03, double 6.117820e-04, double 3.767000e-05, double 3.224802e-02, double 4.748821e-03, double 8.387570e-04, double 5.960500e-05, double -1.907000e-06, double 9.012200e-05, double 2.884860e-04, double -2.774239e-03, double 3.338000e-06, double -3.957700e-05, double 3.881450e-04, double 6.937027e-03, double 0x3F9D37C002307E44, double 4.395962e-03, double 6.465910e-04, double 4.053100e-05, double 3.170681e-02, double 4.728317e-03, double 8.096690e-04, double 5.579000e-05, double -1.907000e-06, double 8.440000e-05, double 1.916890e-04, double -3.411293e-03, double 3.338000e-06, double -5.054500e-05, double 2.598760e-04, double 6.189346e-03, double 0x3F9DED20070F1B84, double 4.489899e-03, double 6.809230e-04, double 4.339200e-05, double 0x3F9FE13FFEFC278C, double 4.691124e-03, double 7.791520e-04, double 5.292900e-05, double -2.384000e-06, double 7.772400e-05, double 8.821500e-05, double -4.072189e-03, double 2.861000e-06, double -6.055800e-05, double 1.373290e-04, double 5.462170e-03, double 2.989006e-02, double 4.570484e-03, double 7.143020e-04, double 4.625300e-05, double 0x3F9F425FFF77A281, double 4.638195e-03, double 7.472040e-04, double 4.959100e-05, double 4.756451e-03, double 2.145800e-05, double -6.961800e-05, double 2.384000e-06], align 8
@mm = internal global [16 x [31 x double]] zeroinitializer, align 8
@cos_s = internal global [6 x [6 x double]] zeroinitializer, align 8

; Function Attrs: nounwind
define arm_aapcscc void @mdct_sub48(%struct.lame_global_flags*, i16*, i16*, [2 x [576 x double]]*, %struct.III_side_info_t*) #0 {
  %6 = alloca %struct.lame_global_flags*, align 4
  %7 = alloca i16*, align 4
  %8 = alloca i16*, align 4
  %9 = alloca [2 x [576 x double]]*, align 4
  %10 = alloca %struct.III_side_info_t*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16*, align 4
  %15 = alloca i32, align 4
  %16 = alloca double*, align 4
  %17 = alloca %struct.gr_info*, align 4
  %18 = alloca double*, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %6, align 4
  store i16* %1, i16** %7, align 4
  store i16* %2, i16** %8, align 4
  store [2 x [576 x double]]* %3, [2 x [576 x double]]** %9, align 4
  store %struct.III_side_info_t* %4, %struct.III_side_info_t** %10, align 4
  %25 = load i32, i32* @mdct_sub48.init, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %5
  call arm_aapcscc void @mdct_init48()
  %28 = load i32, i32* @mdct_sub48.init, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @mdct_sub48.init, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %5
  %31 = load i16*, i16** %7, align 4
  store i16* %31, i16** %14, align 4
  store i32 0, i32* %13, align 4
  br label %32

; <label>:32:                                     ; preds = %597, %30
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %35 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %34, i32 0, i32 46
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %600

; <label>:38:                                     ; preds = %32
  store i32 0, i32* %11, align 4
  br label %39

; <label>:39:                                     ; preds = %576, %38
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %42 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %41, i32 0, i32 45
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %579

; <label>:45:                                     ; preds = %39
  %46 = load [2 x [576 x double]]*, [2 x [576 x double]]** %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %46, i32 %47
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %48, i32 0, i32 %49
  %51 = getelementptr inbounds [576 x double], [576 x double]* %50, i32 0, i32 0
  store double* %51, double** %16, align 4
  %52 = load %struct.III_side_info_t*, %struct.III_side_info_t** %10, align 4
  %53 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %52, i32 0, i32 4
  %54 = load i32, i32* %11, align 4
  %55 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %53, i32 0, i32 %54
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %56, i32 0, i32 %57
  %59 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %58, i32 0, i32 0
  store %struct.gr_info* %59, %struct.gr_info** %17, align 4
  %60 = load i32, i32* %13, align 4
  %61 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %60
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 1, %62
  %64 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %61, i32 0, i32 %63
  %65 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %64, i32 0, i32 0
  %66 = getelementptr inbounds [32 x double], [32 x double]* %65, i32 0, i32 0
  store double* %66, double** %18, align 4
  store i32 0, i32* %12, align 4
  br label %67

; <label>:67:                                     ; preds = %95, %45
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 9
  br i1 %69, label %70, label %98

; <label>:70:                                     ; preds = %67
  %71 = load i16*, i16** %14, align 4
  %72 = load double*, double** %18, align 4
  call arm_aapcscc void @window_subband(i16* %71, double* %72, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4))
  %73 = load i16*, i16** %14, align 4
  %74 = getelementptr inbounds i16, i16* %73, i32 32
  %75 = load double*, double** %18, align 4
  %76 = getelementptr inbounds double, double* %75, i32 32
  call arm_aapcscc void @window_subband(i16* %74, double* %76, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4))
  store i32 1, i32* %15, align 4
  br label %77

; <label>:77:                                     ; preds = %87, %70
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 32
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %77
  %81 = load double*, double** %18, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 32
  %84 = getelementptr inbounds double, double* %81, i32 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %85, -1.000000e+00
  store double %86, double* %84, align 8
  br label %87

; <label>:87:                                     ; preds = %80
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %15, align 4
  br label %77

; <label>:90:                                     ; preds = %77
  %91 = load double*, double** %18, align 4
  %92 = getelementptr inbounds double, double* %91, i32 64
  store double* %92, double** %18, align 4
  %93 = load i16*, i16** %14, align 4
  %94 = getelementptr inbounds i16, i16* %93, i32 64
  store i16* %94, i16** %14, align 4
  br label %95

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %67

; <label>:98:                                     ; preds = %67
  %99 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %100 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %99, i32 0, i32 59
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %226

; <label>:103:                                    ; preds = %98
  %104 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %105 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %104, i32 0, i32 58
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %108

; <label>:108:                                    ; preds = %222, %103
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %111 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %110, i32 0, i32 57
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %225

; <label>:114:                                    ; preds = %108
  %115 = load i32, i32* %15, align 4
  %116 = sitofp i32 %115 to double
  %117 = fdiv double %116, 3.100000e+01
  store double %117, double* %20, align 8
  %118 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %119 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %118, i32 0, i32 53
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = load double, double* %20, align 8
  %123 = fcmp olt double %121, %122
  br i1 %123, label %124, label %169

; <label>:124:                                    ; preds = %114
  %125 = load double, double* %20, align 8
  %126 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %127 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %126, i32 0, i32 54
  %128 = load float, float* %127, align 4
  %129 = fpext float %128 to double
  %130 = fcmp olt double %125, %129
  br i1 %130, label %131, label %169

; <label>:131:                                    ; preds = %124
  %132 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %133 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %132, i32 0, i32 53
  %134 = load float, float* %133, align 4
  %135 = fpext float %134 to double
  %136 = load double, double* %20, align 8
  %137 = fsub double %135, %136
  %138 = fmul double 0x3FF921FB54442D18, %137
  %139 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %140 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %139, i32 0, i32 54
  %141 = load float, float* %140, align 4
  %142 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %143 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %142, i32 0, i32 53
  %144 = load float, float* %143, align 4
  %145 = fsub float %141, %144
  %146 = fpext float %145 to double
  %147 = fdiv double %138, %146
  %148 = call arm_aapcscc double @cos(double %147) #3
  store double %148, double* %19, align 8
  store i32 0, i32* %12, align 4
  br label %149

; <label>:149:                                    ; preds = %165, %131
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 18
  br i1 %151, label %152, label %168

; <label>:152:                                    ; preds = %149
  %153 = load double, double* %19, align 8
  %154 = load i32, i32* %13, align 4
  %155 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %154
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 1, %156
  %158 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %155, i32 0, i32 %157
  %159 = load i32, i32* %12, align 4
  %160 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %158, i32 0, i32 %159
  %161 = load i32, i32* %15, align 4
  %162 = getelementptr inbounds [32 x double], [32 x double]* %160, i32 0, i32 %161
  %163 = load double, double* %162, align 8
  %164 = fmul double %163, %153
  store double %164, double* %162, align 8
  br label %165

; <label>:165:                                    ; preds = %152
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %149

; <label>:168:                                    ; preds = %149
  br label %169

; <label>:169:                                    ; preds = %168, %124, %114
  %170 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %171 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %170, i32 0, i32 55
  %172 = load float, float* %171, align 4
  %173 = fpext float %172 to double
  %174 = load double, double* %20, align 8
  %175 = fcmp olt double %173, %174
  br i1 %175, label %176, label %221

; <label>:176:                                    ; preds = %169
  %177 = load double, double* %20, align 8
  %178 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %179 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %178, i32 0, i32 56
  %180 = load float, float* %179, align 4
  %181 = fpext float %180 to double
  %182 = fcmp olt double %177, %181
  br i1 %182, label %183, label %221

; <label>:183:                                    ; preds = %176
  %184 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %185 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %184, i32 0, i32 56
  %186 = load float, float* %185, align 4
  %187 = fpext float %186 to double
  %188 = load double, double* %20, align 8
  %189 = fsub double %187, %188
  %190 = fmul double 0x3FF921FB54442D18, %189
  %191 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %192 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %191, i32 0, i32 56
  %193 = load float, float* %192, align 4
  %194 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %195 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %194, i32 0, i32 55
  %196 = load float, float* %195, align 4
  %197 = fsub float %193, %196
  %198 = fpext float %197 to double
  %199 = fdiv double %190, %198
  %200 = call arm_aapcscc double @cos(double %199) #3
  store double %200, double* %19, align 8
  store i32 0, i32* %12, align 4
  br label %201

; <label>:201:                                    ; preds = %217, %183
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %202, 18
  br i1 %203, label %204, label %220

; <label>:204:                                    ; preds = %201
  %205 = load double, double* %19, align 8
  %206 = load i32, i32* %13, align 4
  %207 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %206
  %208 = load i32, i32* %11, align 4
  %209 = sub nsw i32 1, %208
  %210 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %207, i32 0, i32 %209
  %211 = load i32, i32* %12, align 4
  %212 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %210, i32 0, i32 %211
  %213 = load i32, i32* %15, align 4
  %214 = getelementptr inbounds [32 x double], [32 x double]* %212, i32 0, i32 %213
  %215 = load double, double* %214, align 8
  %216 = fmul double %215, %205
  store double %216, double* %214, align 8
  br label %217

; <label>:217:                                    ; preds = %204
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %201

; <label>:220:                                    ; preds = %201
  br label %221

; <label>:221:                                    ; preds = %220, %176, %169
  br label %222

; <label>:222:                                    ; preds = %221
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %108

; <label>:225:                                    ; preds = %108
  br label %226

; <label>:226:                                    ; preds = %225, %98
  store i32 0, i32* %15, align 4
  br label %227

; <label>:227:                                    ; preds = %570, %226
  %228 = load i32, i32* %15, align 4
  %229 = icmp slt i32 %228, 32
  br i1 %229, label %230, label %575

; <label>:230:                                    ; preds = %227
  %231 = load %struct.gr_info*, %struct.gr_info** %17, align 4
  %232 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %21, align 4
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %236 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %235, i32 0, i32 57
  %237 = load i32, i32* %236, align 4
  %238 = icmp sge i32 %234, %237
  br i1 %238, label %245, label %239

; <label>:239:                                    ; preds = %230
  %240 = load i32, i32* %15, align 4
  %241 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %242 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %241, i32 0, i32 58
  %243 = load i32, i32* %242, align 4
  %244 = icmp sle i32 %240, %243
  br i1 %244, label %245, label %248

; <label>:245:                                    ; preds = %239, %230
  %246 = load double*, double** %16, align 4
  %247 = bitcast double* %246 to i8*
  call void @llvm.memset.p0i8.i32(i8* %247, i8 0, i32 144, i32 1, i1 false)
  br label %508

; <label>:248:                                    ; preds = %239
  %249 = load i32, i32* %21, align 4
  %250 = icmp eq i32 %249, 2
  br i1 %250, label %251, label %423

; <label>:251:                                    ; preds = %248
  store i32 2, i32* %12, align 4
  br label %252

; <label>:252:                                    ; preds = %418, %251
  %253 = load i32, i32* %12, align 4
  %254 = icmp sge i32 %253, 0
  br i1 %254, label %255, label %421

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* %12, align 4
  %257 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2), i32 0, i32 %256
  %258 = load double, double* %257, align 8
  store double %258, double* %22, align 8
  %259 = load i32, i32* %13, align 4
  %260 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %259
  %261 = load i32, i32* %11, align 4
  %262 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %260, i32 0, i32 %261
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 6
  %265 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %262, i32 0, i32 %264
  %266 = load i32, i32* %15, align 4
  %267 = getelementptr inbounds [32 x double], [32 x double]* %265, i32 0, i32 %266
  %268 = load double, double* %267, align 8
  %269 = load double, double* %22, align 8
  %270 = fmul double %268, %269
  %271 = load i32, i32* %13, align 4
  %272 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %271
  %273 = load i32, i32* %11, align 4
  %274 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %272, i32 0, i32 %273
  %275 = load i32, i32* %12, align 4
  %276 = sub nsw i32 11, %275
  %277 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %274, i32 0, i32 %276
  %278 = load i32, i32* %15, align 4
  %279 = getelementptr inbounds [32 x double], [32 x double]* %277, i32 0, i32 %278
  %280 = load double, double* %279, align 8
  %281 = fsub double %270, %280
  %282 = load i32, i32* %12, align 4
  %283 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %282
  store double %281, double* %283, align 8
  %284 = load i32, i32* %13, align 4
  %285 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %284
  %286 = load i32, i32* %11, align 4
  %287 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %285, i32 0, i32 %286
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 12
  %290 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %287, i32 0, i32 %289
  %291 = load i32, i32* %15, align 4
  %292 = getelementptr inbounds [32 x double], [32 x double]* %290, i32 0, i32 %291
  %293 = load double, double* %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %294
  %296 = load i32, i32* %11, align 4
  %297 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %295, i32 0, i32 %296
  %298 = load i32, i32* %12, align 4
  %299 = sub nsw i32 17, %298
  %300 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %297, i32 0, i32 %299
  %301 = load i32, i32* %15, align 4
  %302 = getelementptr inbounds [32 x double], [32 x double]* %300, i32 0, i32 %301
  %303 = load double, double* %302, align 8
  %304 = load double, double* %22, align 8
  %305 = fmul double %303, %304
  %306 = fadd double %293, %305
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 3
  %309 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %308
  store double %306, double* %309, align 8
  %310 = load i32, i32* %13, align 4
  %311 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %310
  %312 = load i32, i32* %11, align 4
  %313 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %311, i32 0, i32 %312
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 12
  %316 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %313, i32 0, i32 %315
  %317 = load i32, i32* %15, align 4
  %318 = getelementptr inbounds [32 x double], [32 x double]* %316, i32 0, i32 %317
  %319 = load double, double* %318, align 8
  %320 = load double, double* %22, align 8
  %321 = fmul double %319, %320
  %322 = load i32, i32* %13, align 4
  %323 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %322
  %324 = load i32, i32* %11, align 4
  %325 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %323, i32 0, i32 %324
  %326 = load i32, i32* %12, align 4
  %327 = sub nsw i32 17, %326
  %328 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %325, i32 0, i32 %327
  %329 = load i32, i32* %15, align 4
  %330 = getelementptr inbounds [32 x double], [32 x double]* %328, i32 0, i32 %329
  %331 = load double, double* %330, align 8
  %332 = fsub double %321, %331
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %333, 6
  %335 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %334
  store double %332, double* %335, align 8
  %336 = load i32, i32* %13, align 4
  %337 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %336
  %338 = load i32, i32* %11, align 4
  %339 = sub nsw i32 1, %338
  %340 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %337, i32 0, i32 %339
  %341 = load i32, i32* %12, align 4
  %342 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %340, i32 0, i32 %341
  %343 = load i32, i32* %15, align 4
  %344 = getelementptr inbounds [32 x double], [32 x double]* %342, i32 0, i32 %343
  %345 = load double, double* %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %346
  %348 = load i32, i32* %11, align 4
  %349 = sub nsw i32 1, %348
  %350 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %347, i32 0, i32 %349
  %351 = load i32, i32* %12, align 4
  %352 = sub nsw i32 5, %351
  %353 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %350, i32 0, i32 %352
  %354 = load i32, i32* %15, align 4
  %355 = getelementptr inbounds [32 x double], [32 x double]* %353, i32 0, i32 %354
  %356 = load double, double* %355, align 8
  %357 = load double, double* %22, align 8
  %358 = fmul double %356, %357
  %359 = fadd double %345, %358
  %360 = load i32, i32* %12, align 4
  %361 = add nsw i32 %360, 9
  %362 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %361
  store double %359, double* %362, align 8
  %363 = load i32, i32* %13, align 4
  %364 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %363
  %365 = load i32, i32* %11, align 4
  %366 = sub nsw i32 1, %365
  %367 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %364, i32 0, i32 %366
  %368 = load i32, i32* %12, align 4
  %369 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %367, i32 0, i32 %368
  %370 = load i32, i32* %15, align 4
  %371 = getelementptr inbounds [32 x double], [32 x double]* %369, i32 0, i32 %370
  %372 = load double, double* %371, align 8
  %373 = load double, double* %22, align 8
  %374 = fmul double %372, %373
  %375 = load i32, i32* %13, align 4
  %376 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %375
  %377 = load i32, i32* %11, align 4
  %378 = sub nsw i32 1, %377
  %379 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %376, i32 0, i32 %378
  %380 = load i32, i32* %12, align 4
  %381 = sub nsw i32 5, %380
  %382 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %379, i32 0, i32 %381
  %383 = load i32, i32* %15, align 4
  %384 = getelementptr inbounds [32 x double], [32 x double]* %382, i32 0, i32 %383
  %385 = load double, double* %384, align 8
  %386 = fsub double %374, %385
  %387 = load i32, i32* %12, align 4
  %388 = add nsw i32 %387, 12
  %389 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %388
  store double %386, double* %389, align 8
  %390 = load i32, i32* %13, align 4
  %391 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %390
  %392 = load i32, i32* %11, align 4
  %393 = sub nsw i32 1, %392
  %394 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %391, i32 0, i32 %393
  %395 = load i32, i32* %12, align 4
  %396 = add nsw i32 %395, 6
  %397 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %394, i32 0, i32 %396
  %398 = load i32, i32* %15, align 4
  %399 = getelementptr inbounds [32 x double], [32 x double]* %397, i32 0, i32 %398
  %400 = load double, double* %399, align 8
  %401 = load i32, i32* %13, align 4
  %402 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %401
  %403 = load i32, i32* %11, align 4
  %404 = sub nsw i32 1, %403
  %405 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %402, i32 0, i32 %404
  %406 = load i32, i32* %12, align 4
  %407 = sub nsw i32 11, %406
  %408 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %405, i32 0, i32 %407
  %409 = load i32, i32* %15, align 4
  %410 = getelementptr inbounds [32 x double], [32 x double]* %408, i32 0, i32 %409
  %411 = load double, double* %410, align 8
  %412 = load double, double* %22, align 8
  %413 = fmul double %411, %412
  %414 = fadd double %400, %413
  %415 = load i32, i32* %12, align 4
  %416 = add nsw i32 %415, 15
  %417 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %416
  store double %414, double* %417, align 8
  br label %418

; <label>:418:                                    ; preds = %255
  %419 = load i32, i32* %12, align 4
  %420 = add nsw i32 %419, -1
  store i32 %420, i32* %12, align 4
  br label %252

; <label>:421:                                    ; preds = %252
  %422 = load double*, double** %16, align 4
  call arm_aapcscc void @mdct_short(double* %422, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4))
  br label %507

; <label>:423:                                    ; preds = %248
  store i32 8, i32* %12, align 4
  br label %424

; <label>:424:                                    ; preds = %502, %423
  %425 = load i32, i32* %12, align 4
  %426 = icmp sge i32 %425, 0
  br i1 %426, label %427, label %505

; <label>:427:                                    ; preds = %424
  %428 = load i32, i32* %21, align 4
  %429 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 %428
  %430 = load i32, i32* %12, align 4
  %431 = getelementptr inbounds [36 x double], [36 x double]* %429, i32 0, i32 %430
  %432 = load double, double* %431, align 8
  %433 = load i32, i32* %13, align 4
  %434 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %433
  %435 = load i32, i32* %11, align 4
  %436 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %434, i32 0, i32 %435
  %437 = load i32, i32* %12, align 4
  %438 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %436, i32 0, i32 %437
  %439 = load i32, i32* %15, align 4
  %440 = getelementptr inbounds [32 x double], [32 x double]* %438, i32 0, i32 %439
  %441 = load double, double* %440, align 8
  %442 = fmul double %432, %441
  %443 = load i32, i32* %21, align 4
  %444 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 %443
  %445 = load i32, i32* %12, align 4
  %446 = add nsw i32 %445, 9
  %447 = getelementptr inbounds [36 x double], [36 x double]* %444, i32 0, i32 %446
  %448 = load double, double* %447, align 8
  %449 = load i32, i32* %13, align 4
  %450 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %449
  %451 = load i32, i32* %11, align 4
  %452 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %450, i32 0, i32 %451
  %453 = load i32, i32* %12, align 4
  %454 = sub nsw i32 17, %453
  %455 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %452, i32 0, i32 %454
  %456 = load i32, i32* %15, align 4
  %457 = getelementptr inbounds [32 x double], [32 x double]* %455, i32 0, i32 %456
  %458 = load double, double* %457, align 8
  %459 = fmul double %448, %458
  %460 = fsub double %442, %459
  %461 = load i32, i32* %12, align 4
  %462 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %461
  store double %460, double* %462, align 8
  %463 = load i32, i32* %21, align 4
  %464 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 %463
  %465 = load i32, i32* %12, align 4
  %466 = add nsw i32 %465, 18
  %467 = getelementptr inbounds [36 x double], [36 x double]* %464, i32 0, i32 %466
  %468 = load double, double* %467, align 8
  %469 = load i32, i32* %13, align 4
  %470 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %469
  %471 = load i32, i32* %11, align 4
  %472 = sub nsw i32 1, %471
  %473 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %470, i32 0, i32 %472
  %474 = load i32, i32* %12, align 4
  %475 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %473, i32 0, i32 %474
  %476 = load i32, i32* %15, align 4
  %477 = getelementptr inbounds [32 x double], [32 x double]* %475, i32 0, i32 %476
  %478 = load double, double* %477, align 8
  %479 = fmul double %468, %478
  %480 = load i32, i32* %21, align 4
  %481 = getelementptr inbounds [4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 %480
  %482 = load i32, i32* %12, align 4
  %483 = add nsw i32 %482, 27
  %484 = getelementptr inbounds [36 x double], [36 x double]* %481, i32 0, i32 %483
  %485 = load double, double* %484, align 8
  %486 = load i32, i32* %13, align 4
  %487 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %486
  %488 = load i32, i32* %11, align 4
  %489 = sub nsw i32 1, %488
  %490 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %487, i32 0, i32 %489
  %491 = load i32, i32* %12, align 4
  %492 = sub nsw i32 17, %491
  %493 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %490, i32 0, i32 %492
  %494 = load i32, i32* %15, align 4
  %495 = getelementptr inbounds [32 x double], [32 x double]* %493, i32 0, i32 %494
  %496 = load double, double* %495, align 8
  %497 = fmul double %485, %496
  %498 = fadd double %479, %497
  %499 = load i32, i32* %12, align 4
  %500 = add nsw i32 9, %499
  %501 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4), i32 %500
  store double %498, double* %501, align 8
  br label %502

; <label>:502:                                    ; preds = %427
  %503 = load i32, i32* %12, align 4
  %504 = add nsw i32 %503, -1
  store i32 %504, i32* %12, align 4
  br label %424

; <label>:505:                                    ; preds = %424
  %506 = load double*, double** %16, align 4
  call arm_aapcscc void @mdct_long(double* %506, double* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2, i32 4))
  br label %507

; <label>:507:                                    ; preds = %505, %421
  br label %508

; <label>:508:                                    ; preds = %507, %245
  %509 = load i32, i32* %21, align 4
  %510 = icmp ne i32 %509, 2
  br i1 %510, label %511, label %569

; <label>:511:                                    ; preds = %508
  %512 = load i32, i32* %15, align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %515

; <label>:514:                                    ; preds = %511
  br label %570

; <label>:515:                                    ; preds = %511
  store i32 7, i32* %12, align 4
  br label %516

; <label>:516:                                    ; preds = %565, %515
  %517 = load i32, i32* %12, align 4
  %518 = icmp sge i32 %517, 0
  br i1 %518, label %519, label %568

; <label>:519:                                    ; preds = %516
  %520 = load double*, double** %16, align 4
  %521 = load i32, i32* %12, align 4
  %522 = getelementptr inbounds double, double* %520, i32 %521
  %523 = load double, double* %522, align 8
  %524 = load i32, i32* %12, align 4
  %525 = getelementptr inbounds [8 x double], [8 x double]* @ca, i32 0, i32 %524
  %526 = load double, double* %525, align 8
  %527 = fmul double %523, %526
  %528 = load double*, double** %16, align 4
  %529 = load i32, i32* %12, align 4
  %530 = sub nsw i32 -1, %529
  %531 = getelementptr inbounds double, double* %528, i32 %530
  %532 = load double, double* %531, align 8
  %533 = load i32, i32* %12, align 4
  %534 = getelementptr inbounds [8 x double], [8 x double]* @cs, i32 0, i32 %533
  %535 = load double, double* %534, align 8
  %536 = fmul double %532, %535
  %537 = fadd double %527, %536
  store double %537, double* %23, align 8
  %538 = load double*, double** %16, align 4
  %539 = load i32, i32* %12, align 4
  %540 = getelementptr inbounds double, double* %538, i32 %539
  %541 = load double, double* %540, align 8
  %542 = load i32, i32* %12, align 4
  %543 = getelementptr inbounds [8 x double], [8 x double]* @cs, i32 0, i32 %542
  %544 = load double, double* %543, align 8
  %545 = fmul double %541, %544
  %546 = load double*, double** %16, align 4
  %547 = load i32, i32* %12, align 4
  %548 = sub nsw i32 -1, %547
  %549 = getelementptr inbounds double, double* %546, i32 %548
  %550 = load double, double* %549, align 8
  %551 = load i32, i32* %12, align 4
  %552 = getelementptr inbounds [8 x double], [8 x double]* @ca, i32 0, i32 %551
  %553 = load double, double* %552, align 8
  %554 = fmul double %550, %553
  %555 = fsub double %545, %554
  store double %555, double* %24, align 8
  %556 = load double, double* %23, align 8
  %557 = load double*, double** %16, align 4
  %558 = load i32, i32* %12, align 4
  %559 = sub nsw i32 -1, %558
  %560 = getelementptr inbounds double, double* %557, i32 %559
  store double %556, double* %560, align 8
  %561 = load double, double* %24, align 8
  %562 = load double*, double** %16, align 4
  %563 = load i32, i32* %12, align 4
  %564 = getelementptr inbounds double, double* %562, i32 %563
  store double %561, double* %564, align 8
  br label %565

; <label>:565:                                    ; preds = %519
  %566 = load i32, i32* %12, align 4
  %567 = add nsw i32 %566, -1
  store i32 %567, i32* %12, align 4
  br label %516

; <label>:568:                                    ; preds = %516
  br label %569

; <label>:569:                                    ; preds = %568, %508
  br label %570

; <label>:570:                                    ; preds = %569, %514
  %571 = load i32, i32* %15, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %15, align 4
  %573 = load double*, double** %16, align 4
  %574 = getelementptr inbounds double, double* %573, i32 18
  store double* %574, double** %16, align 4
  br label %227

; <label>:575:                                    ; preds = %227
  br label %576

; <label>:576:                                    ; preds = %575
  %577 = load i32, i32* %11, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %11, align 4
  br label %39

; <label>:579:                                    ; preds = %39
  %580 = load i16*, i16** %8, align 4
  store i16* %580, i16** %14, align 4
  %581 = load %struct.lame_global_flags*, %struct.lame_global_flags** %6, align 4
  %582 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %581, i32 0, i32 45
  %583 = load i32, i32* %582, align 4
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %596

; <label>:585:                                    ; preds = %579
  %586 = load i32, i32* %13, align 4
  %587 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %586
  %588 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %587, i32 0, i32 0
  %589 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %588, i32 0, i32 0
  %590 = bitcast [32 x double]* %589 to i8*
  %591 = load i32, i32* %13, align 4
  %592 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], [2 x [2 x [18 x [32 x double]]]]* @sb_sample, i32 0, i32 %591
  %593 = getelementptr inbounds [2 x [18 x [32 x double]]], [2 x [18 x [32 x double]]]* %592, i32 0, i32 1
  %594 = getelementptr inbounds [18 x [32 x double]], [18 x [32 x double]]* %593, i32 0, i32 0
  %595 = bitcast [32 x double]* %594 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %590, i8* %595, i32 4608, i32 8, i1 false)
  br label %596

; <label>:596:                                    ; preds = %585, %579
  br label %597

; <label>:597:                                    ; preds = %596
  %598 = load i32, i32* %13, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %13, align 4
  br label %32

; <label>:600:                                    ; preds = %32
  ret void
}

; Function Attrs: nounwind
define arm_aapcscc void @mdct_init48() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 4
  %9 = alloca double*, align 4
  %10 = alloca [31 x double], align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32 0, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %40, %0
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %43

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = getelementptr inbounds [8 x double], [8 x double]* @mdct_init48.c, i32 0, i32 %19
  %21 = load double, double* %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = getelementptr inbounds [8 x double], [8 x double]* @mdct_init48.c, i32 0, i32 %22
  %24 = load double, double* %23, align 8
  %25 = fmul double %21, %24
  %26 = fadd double 1.000000e+00, %25
  store double %26, double* %4, align 8
  %27 = load double, double* %4, align 8
  %28 = call arm_aapcscc double @sqrt(double %27) #3
  store double %28, double* %4, align 8
  %29 = load i32, i32* %2, align 4
  %30 = getelementptr inbounds [8 x double], [8 x double]* @mdct_init48.c, i32 0, i32 %29
  %31 = load double, double* %30, align 8
  %32 = load double, double* %4, align 8
  %33 = fdiv double %31, %32
  %34 = load i32, i32* %2, align 4
  %35 = getelementptr inbounds [8 x double], [8 x double]* @ca, i32 0, i32 %34
  store double %33, double* %35, align 8
  %36 = load double, double* %4, align 8
  %37 = fdiv double 1.000000e+00, %36
  %38 = load i32, i32* %2, align 4
  %39 = getelementptr inbounds [8 x double], [8 x double]* @cs, i32 0, i32 %38
  store double %37, double* %39, align 8
  br label %40

; <label>:40:                                     ; preds = %18
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %15

; <label>:43:                                     ; preds = %15
  store i32 0, i32* %1, align 4
  br label %44

; <label>:44:                                     ; preds = %55, %43
  %45 = load i32, i32* %1, align 4
  %46 = icmp slt i32 %45, 36
  br i1 %46, label %47, label %58

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %1, align 4
  %49 = sitofp i32 %48 to double
  %50 = fadd double %49, 5.000000e-01
  %51 = fmul double 0x3FB657184AE74487, %50
  %52 = call arm_aapcscc double @sin(double %51) #3
  %53 = load i32, i32* %1, align 4
  %54 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %53
  store double %52, double* %54, align 8
  br label %55

; <label>:55:                                     ; preds = %47
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %44

; <label>:58:                                     ; preds = %44
  store i32 0, i32* %1, align 4
  br label %59

; <label>:59:                                     ; preds = %68, %58
  %60 = load i32, i32* %1, align 4
  %61 = icmp slt i32 %60, 18
  br i1 %61, label %62, label %71

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %1, align 4
  %64 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %63
  %65 = load double, double* %64, align 8
  %66 = load i32, i32* %1, align 4
  %67 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %66
  store double %65, double* %67, align 8
  br label %68

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %59

; <label>:71:                                     ; preds = %59
  br label %72

; <label>:72:                                     ; preds = %78, %71
  %73 = load i32, i32* %1, align 4
  %74 = icmp slt i32 %73, 24
  br i1 %74, label %75, label %81

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %1, align 4
  %77 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %76
  store double 1.000000e+00, double* %77, align 8
  br label %78

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %72

; <label>:81:                                     ; preds = %72
  br label %82

; <label>:82:                                     ; preds = %93, %81
  %83 = load i32, i32* %1, align 4
  %84 = icmp slt i32 %83, 30
  br i1 %84, label %85, label %96

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %1, align 4
  %87 = sitofp i32 %86 to double
  %88 = fadd double %87, 5.000000e-01
  %89 = fmul double 0x3FD0C152382D7365, %88
  %90 = call arm_aapcscc double @cos(double %89) #3
  %91 = load i32, i32* %1, align 4
  %92 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %91
  store double %90, double* %92, align 8
  br label %93

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %82

; <label>:96:                                     ; preds = %82
  br label %97

; <label>:97:                                     ; preds = %103, %96
  %98 = load i32, i32* %1, align 4
  %99 = icmp slt i32 %98, 36
  br i1 %99, label %100, label %106

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %1, align 4
  %102 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %101
  store double 0.000000e+00, double* %102, align 8
  br label %103

; <label>:103:                                    ; preds = %100
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %97

; <label>:106:                                    ; preds = %97
  store i32 0, i32* %1, align 4
  br label %107

; <label>:107:                                    ; preds = %117, %106
  %108 = load i32, i32* %1, align 4
  %109 = icmp slt i32 %108, 36
  br i1 %109, label %110, label %120

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %1, align 4
  %112 = sub nsw i32 35, %111
  %113 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %112
  %114 = load double, double* %113, align 8
  %115 = load i32, i32* %1, align 4
  %116 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %115
  store double %114, double* %116, align 8
  br label %117

; <label>:117:                                    ; preds = %110
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %107

; <label>:120:                                    ; preds = %107
  store double 0x3FBC71C71C71C71C, double* %4, align 8
  store double* getelementptr inbounds ([244 x double], [244 x double]* @cos_l, i32 0, i32 0), double** %6, align 4
  store i32 11, i32* %7, align 4
  br label %121

; <label>:121:                                    ; preds = %173, %120
  %122 = load i32, i32* %7, align 4
  %123 = getelementptr inbounds [12 x i32], [12 x i32]* @all, i32 0, i32 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %125

; <label>:125:                                    ; preds = %145, %121
  %126 = load i32, i32* %2, align 4
  %127 = icmp slt i32 %126, 9
  br i1 %127, label %128, label %148

; <label>:128:                                    ; preds = %125
  %129 = load double, double* %4, align 8
  %130 = load i32, i32* %3, align 4
  %131 = mul nsw i32 2, %130
  %132 = add nsw i32 %131, 1
  %133 = sitofp i32 %132 to double
  %134 = fmul double 0x3F9657184AE74487, %133
  %135 = load i32, i32* %2, align 4
  %136 = mul nsw i32 4, %135
  %137 = add nsw i32 %136, 2
  %138 = add nsw i32 %137, 36
  %139 = sitofp i32 %138 to double
  %140 = fmul double %134, %139
  %141 = call arm_aapcscc double @cos(double %140) #3
  %142 = fmul double %129, %141
  %143 = load double*, double** %6, align 4
  %144 = getelementptr inbounds double, double* %143, i32 1
  store double* %144, double** %6, align 4
  store double %142, double* %143, align 8
  br label %145

; <label>:145:                                    ; preds = %128
  %146 = load i32, i32* %2, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %2, align 4
  br label %125

; <label>:148:                                    ; preds = %125
  store i32 0, i32* %2, align 4
  br label %149

; <label>:149:                                    ; preds = %169, %148
  %150 = load i32, i32* %2, align 4
  %151 = icmp slt i32 %150, 9
  br i1 %151, label %152, label %172

; <label>:152:                                    ; preds = %149
  %153 = load double, double* %4, align 8
  %154 = load i32, i32* %3, align 4
  %155 = mul nsw i32 2, %154
  %156 = add nsw i32 %155, 1
  %157 = sitofp i32 %156 to double
  %158 = fmul double 0x3F9657184AE74487, %157
  %159 = load i32, i32* %2, align 4
  %160 = mul nsw i32 4, %159
  %161 = add nsw i32 %160, 2
  %162 = add nsw i32 %161, 108
  %163 = sitofp i32 %162 to double
  %164 = fmul double %158, %163
  %165 = call arm_aapcscc double @cos(double %164) #3
  %166 = fmul double %153, %165
  %167 = load double*, double** %6, align 4
  %168 = getelementptr inbounds double, double* %167, i32 1
  store double* %168, double** %6, align 4
  store double %166, double* %167, align 8
  br label %169

; <label>:169:                                    ; preds = %152
  %170 = load i32, i32* %2, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %2, align 4
  br label %149

; <label>:172:                                    ; preds = %149
  br label %173

; <label>:173:                                    ; preds = %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %7, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %121, label %177

; <label>:177:                                    ; preds = %173
  store i32 3, i32* %7, align 4
  br label %178

; <label>:178:                                    ; preds = %230, %177
  %179 = load i32, i32* %7, align 4
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* @mdct_init48.d3, i32 0, i32 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %182

; <label>:182:                                    ; preds = %202, %178
  %183 = load i32, i32* %2, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %185, label %205

; <label>:185:                                    ; preds = %182
  %186 = load double, double* %4, align 8
  %187 = load i32, i32* %3, align 4
  %188 = mul nsw i32 2, %187
  %189 = add nsw i32 %188, 1
  %190 = sitofp i32 %189 to double
  %191 = fmul double 0x3F9657184AE74487, %190
  %192 = load i32, i32* %2, align 4
  %193 = mul nsw i32 4, %192
  %194 = add nsw i32 %193, 2
  %195 = add nsw i32 %194, 36
  %196 = sitofp i32 %195 to double
  %197 = fmul double %191, %196
  %198 = call arm_aapcscc double @cos(double %197) #3
  %199 = fmul double %186, %198
  %200 = load double*, double** %6, align 4
  %201 = getelementptr inbounds double, double* %200, i32 1
  store double* %201, double** %6, align 4
  store double %199, double* %200, align 8
  br label %202

; <label>:202:                                    ; preds = %185
  %203 = load i32, i32* %2, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %2, align 4
  br label %182

; <label>:205:                                    ; preds = %182
  store i32 6, i32* %2, align 4
  br label %206

; <label>:206:                                    ; preds = %226, %205
  %207 = load i32, i32* %2, align 4
  %208 = icmp slt i32 %207, 9
  br i1 %208, label %209, label %229

; <label>:209:                                    ; preds = %206
  %210 = load double, double* %4, align 8
  %211 = load i32, i32* %3, align 4
  %212 = mul nsw i32 2, %211
  %213 = add nsw i32 %212, 1
  %214 = sitofp i32 %213 to double
  %215 = fmul double 0x3F9657184AE74487, %214
  %216 = load i32, i32* %2, align 4
  %217 = mul nsw i32 4, %216
  %218 = add nsw i32 %217, 2
  %219 = add nsw i32 %218, 36
  %220 = sitofp i32 %219 to double
  %221 = fmul double %215, %220
  %222 = call arm_aapcscc double @cos(double %221) #3
  %223 = fmul double %210, %222
  %224 = load double*, double** %6, align 4
  %225 = getelementptr inbounds double, double* %224, i32 1
  store double* %225, double** %6, align 4
  store double %223, double* %224, align 8
  br label %226

; <label>:226:                                    ; preds = %209
  %227 = load i32, i32* %2, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %2, align 4
  br label %206

; <label>:229:                                    ; preds = %206
  br label %230

; <label>:230:                                    ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %7, align 4
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %178, label %234

; <label>:234:                                    ; preds = %230
  store i32 1, i32* %7, align 4
  br label %235

; <label>:235:                                    ; preds = %261, %234
  %236 = load i32, i32* %7, align 4
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* @mdct_init48.d9, i32 0, i32 %236
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %3, align 4
  %239 = load double, double* %4, align 8
  %240 = load i32, i32* %3, align 4
  %241 = mul nsw i32 2, %240
  %242 = add nsw i32 %241, 1
  %243 = sitofp i32 %242 to double
  %244 = fmul double 0x3F9657184AE74487, %243
  %245 = fmul double %244, 3.800000e+01
  %246 = call arm_aapcscc double @cos(double %245) #3
  %247 = fmul double %239, %246
  %248 = load double*, double** %6, align 4
  %249 = getelementptr inbounds double, double* %248, i32 1
  store double* %249, double** %6, align 4
  store double %247, double* %248, align 8
  %250 = load double, double* %4, align 8
  %251 = load i32, i32* %3, align 4
  %252 = mul nsw i32 2, %251
  %253 = add nsw i32 %252, 1
  %254 = sitofp i32 %253 to double
  %255 = fmul double 0x3F9657184AE74487, %254
  %256 = fmul double %255, 4.600000e+01
  %257 = call arm_aapcscc double @cos(double %256) #3
  %258 = fmul double %250, %257
  %259 = load double*, double** %6, align 4
  %260 = getelementptr inbounds double, double* %259, i32 1
  store double* %260, double** %6, align 4
  store double %258, double* %259, align 8
  br label %261

; <label>:261:                                    ; preds = %235
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %7, align 4
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %235, label %265

; <label>:265:                                    ; preds = %261
  %266 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i32 248), align 8
  store double %266, double* %5, align 8
  store double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i32 0), double** %8, align 4
  store double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i32 0), double** %9, align 4
  %267 = load double*, double** %8, align 4
  %268 = getelementptr inbounds double, double* %267, i32 1
  store double* %268, double** %8, align 4
  %269 = load double, double* %267, align 8
  store double %269, double* %11, align 8
  %270 = load double, double* %11, align 8
  %271 = load double, double* %5, align 8
  %272 = fdiv double %270, %271
  %273 = getelementptr inbounds [31 x double], [31 x double]* %10, i32 0, i32 15
  store double %272, double* %273, align 8
  store i32 0, i32* %2, align 4
  br label %274

; <label>:274:                                    ; preds = %285, %265
  %275 = load i32, i32* %2, align 4
  %276 = icmp slt i32 %275, 7
  br i1 %276, label %277, label %288

; <label>:277:                                    ; preds = %274
  %278 = load double*, double** %8, align 4
  %279 = getelementptr inbounds double, double* %278, i32 1
  store double* %279, double** %8, align 4
  %280 = load double, double* %278, align 8
  %281 = load double, double* %11, align 8
  %282 = fdiv double %280, %281
  %283 = load double*, double** %9, align 4
  %284 = getelementptr inbounds double, double* %283, i32 1
  store double* %284, double** %9, align 4
  store double %282, double* %283, align 8
  br label %285

; <label>:285:                                    ; preds = %277
  %286 = load i32, i32* %2, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %2, align 4
  br label %274

; <label>:288:                                    ; preds = %274
  store i32 14, i32* %1, align 4
  br label %289

; <label>:289:                                    ; preds = %319, %288
  %290 = load i32, i32* %1, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %322

; <label>:292:                                    ; preds = %289
  %293 = load double*, double** %8, align 4
  %294 = getelementptr inbounds double, double* %293, i32 1
  store double* %294, double** %8, align 4
  %295 = load double, double* %293, align 8
  store double %295, double* %12, align 8
  %296 = load double, double* %12, align 8
  %297 = load double, double* %5, align 8
  %298 = fdiv double %296, %297
  %299 = load i32, i32* %1, align 4
  %300 = sub nsw i32 30, %299
  %301 = getelementptr inbounds [31 x double], [31 x double]* %10, i32 0, i32 %300
  store double %298, double* %301, align 8
  %302 = load i32, i32* %1, align 4
  %303 = getelementptr inbounds [31 x double], [31 x double]* %10, i32 0, i32 %302
  store double %298, double* %303, align 8
  store i32 0, i32* %2, align 4
  br label %304

; <label>:304:                                    ; preds = %315, %292
  %305 = load i32, i32* %2, align 4
  %306 = icmp slt i32 %305, 15
  br i1 %306, label %307, label %318

; <label>:307:                                    ; preds = %304
  %308 = load double*, double** %8, align 4
  %309 = getelementptr inbounds double, double* %308, i32 1
  store double* %309, double** %8, align 4
  %310 = load double, double* %308, align 8
  %311 = load double, double* %12, align 8
  %312 = fdiv double %310, %311
  %313 = load double*, double** %9, align 4
  %314 = getelementptr inbounds double, double* %313, i32 1
  store double* %314, double** %9, align 4
  store double %312, double* %313, align 8
  br label %315

; <label>:315:                                    ; preds = %307
  %316 = load i32, i32* %2, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %2, align 4
  br label %304

; <label>:318:                                    ; preds = %304
  br label %319

; <label>:319:                                    ; preds = %318
  %320 = load i32, i32* %1, align 4
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %1, align 4
  br label %289

; <label>:322:                                    ; preds = %289
  %323 = load double*, double** %8, align 4
  %324 = getelementptr inbounds double, double* %323, i32 1
  store double* %324, double** %8, align 4
  store i32 0, i32* %2, align 4
  br label %325

; <label>:325:                                    ; preds = %336, %322
  %326 = load i32, i32* %2, align 4
  %327 = icmp slt i32 %326, 7
  br i1 %327, label %328, label %339

; <label>:328:                                    ; preds = %325
  %329 = load double*, double** %8, align 4
  %330 = getelementptr inbounds double, double* %329, i32 1
  store double* %330, double** %8, align 4
  %331 = load double, double* %329, align 8
  %332 = load double, double* %5, align 8
  %333 = fdiv double %331, %332
  %334 = load double*, double** %9, align 4
  %335 = getelementptr inbounds double, double* %334, i32 1
  store double* %335, double** %9, align 4
  store double %333, double* %334, align 8
  br label %336

; <label>:336:                                    ; preds = %328
  %337 = load i32, i32* %2, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %2, align 4
  br label %325

; <label>:339:                                    ; preds = %325
  store double* getelementptr inbounds ([16 x [31 x double]], [16 x [31 x double]]* @mm, i32 0, i32 0, i32 0), double** %8, align 4
  store i32 15, i32* %1, align 4
  br label %340

; <label>:340:                                    ; preds = %368, %339
  %341 = load i32, i32* %1, align 4
  %342 = icmp sge i32 %341, 0
  br i1 %342, label %343, label %371

; <label>:343:                                    ; preds = %340
  store i32 1, i32* %2, align 4
  br label %344

; <label>:344:                                    ; preds = %364, %343
  %345 = load i32, i32* %2, align 4
  %346 = icmp slt i32 %345, 32
  br i1 %346, label %347, label %367

; <label>:347:                                    ; preds = %344
  %348 = load i32, i32* %1, align 4
  %349 = mul nsw i32 2, %348
  %350 = add nsw i32 %349, 1
  %351 = load i32, i32* %2, align 4
  %352 = mul nsw i32 %350, %351
  %353 = sitofp i32 %352 to double
  %354 = fmul double %353, 0x400921FB54442D18
  %355 = fdiv double %354, 6.400000e+01
  %356 = call arm_aapcscc double @cos(double %355) #3
  %357 = load i32, i32* %2, align 4
  %358 = sub nsw i32 %357, 1
  %359 = getelementptr inbounds [31 x double], [31 x double]* %10, i32 0, i32 %358
  %360 = load double, double* %359, align 8
  %361 = fmul double %356, %360
  %362 = load double*, double** %8, align 4
  %363 = getelementptr inbounds double, double* %362, i32 1
  store double* %363, double** %8, align 4
  store double %361, double* %362, align 8
  br label %364

; <label>:364:                                    ; preds = %347
  %365 = load i32, i32* %2, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %2, align 4
  br label %344

; <label>:367:                                    ; preds = %344
  br label %368

; <label>:368:                                    ; preds = %367
  %369 = load i32, i32* %1, align 4
  %370 = add nsw i32 %369, -1
  store i32 %370, i32* %1, align 4
  br label %340

; <label>:371:                                    ; preds = %340
  store i32 0, i32* %2, align 4
  br label %372

; <label>:372:                                    ; preds = %466, %371
  %373 = load i32, i32* %2, align 4
  %374 = icmp slt i32 %373, 4
  br i1 %374, label %375, label %469

; <label>:375:                                    ; preds = %372
  %376 = load i32, i32* %2, align 4
  %377 = sub nsw i32 17, %376
  %378 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %377
  %379 = load double, double* %378, align 8
  store double %379, double* %13, align 8
  %380 = load i32, i32* %2, align 4
  %381 = add nsw i32 9, %380
  %382 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %381
  %383 = load double, double* %382, align 8
  %384 = load i32, i32* %2, align 4
  %385 = sub nsw i32 17, %384
  %386 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %385
  store double %383, double* %386, align 8
  %387 = load double, double* %13, align 8
  %388 = load i32, i32* %2, align 4
  %389 = add nsw i32 9, %388
  %390 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %389
  store double %387, double* %390, align 8
  %391 = load i32, i32* %2, align 4
  %392 = sub nsw i32 35, %391
  %393 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %392
  %394 = load double, double* %393, align 8
  store double %394, double* %13, align 8
  %395 = load i32, i32* %2, align 4
  %396 = add nsw i32 27, %395
  %397 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %396
  %398 = load double, double* %397, align 8
  %399 = load i32, i32* %2, align 4
  %400 = sub nsw i32 35, %399
  %401 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %400
  store double %398, double* %401, align 8
  %402 = load double, double* %13, align 8
  %403 = load i32, i32* %2, align 4
  %404 = add nsw i32 27, %403
  %405 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %404
  store double %402, double* %405, align 8
  %406 = load i32, i32* %2, align 4
  %407 = sub nsw i32 17, %406
  %408 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %407
  %409 = load double, double* %408, align 8
  store double %409, double* %13, align 8
  %410 = load i32, i32* %2, align 4
  %411 = add nsw i32 9, %410
  %412 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %411
  %413 = load double, double* %412, align 8
  %414 = load i32, i32* %2, align 4
  %415 = sub nsw i32 17, %414
  %416 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %415
  store double %413, double* %416, align 8
  %417 = load double, double* %13, align 8
  %418 = load i32, i32* %2, align 4
  %419 = add nsw i32 9, %418
  %420 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %419
  store double %417, double* %420, align 8
  %421 = load i32, i32* %2, align 4
  %422 = sub nsw i32 35, %421
  %423 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %422
  %424 = load double, double* %423, align 8
  store double %424, double* %13, align 8
  %425 = load i32, i32* %2, align 4
  %426 = add nsw i32 27, %425
  %427 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %426
  %428 = load double, double* %427, align 8
  %429 = load i32, i32* %2, align 4
  %430 = sub nsw i32 35, %429
  %431 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %430
  store double %428, double* %431, align 8
  %432 = load double, double* %13, align 8
  %433 = load i32, i32* %2, align 4
  %434 = add nsw i32 27, %433
  %435 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %434
  store double %432, double* %435, align 8
  %436 = load i32, i32* %2, align 4
  %437 = sub nsw i32 17, %436
  %438 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %437
  %439 = load double, double* %438, align 8
  store double %439, double* %13, align 8
  %440 = load i32, i32* %2, align 4
  %441 = add nsw i32 9, %440
  %442 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %441
  %443 = load double, double* %442, align 8
  %444 = load i32, i32* %2, align 4
  %445 = sub nsw i32 17, %444
  %446 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %445
  store double %443, double* %446, align 8
  %447 = load double, double* %13, align 8
  %448 = load i32, i32* %2, align 4
  %449 = add nsw i32 9, %448
  %450 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %449
  store double %447, double* %450, align 8
  %451 = load i32, i32* %2, align 4
  %452 = sub nsw i32 35, %451
  %453 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %452
  %454 = load double, double* %453, align 8
  store double %454, double* %13, align 8
  %455 = load i32, i32* %2, align 4
  %456 = add nsw i32 27, %455
  %457 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %456
  %458 = load double, double* %457, align 8
  %459 = load i32, i32* %2, align 4
  %460 = sub nsw i32 35, %459
  %461 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %460
  store double %458, double* %461, align 8
  %462 = load double, double* %13, align 8
  %463 = load i32, i32* %2, align 4
  %464 = add nsw i32 27, %463
  %465 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %464
  store double %462, double* %465, align 8
  br label %466

; <label>:466:                                    ; preds = %375
  %467 = load i32, i32* %2, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %2, align 4
  br label %372

; <label>:469:                                    ; preds = %372
  store i32 0, i32* %1, align 4
  br label %470

; <label>:470:                                    ; preds = %492, %469
  %471 = load i32, i32* %1, align 4
  %472 = icmp slt i32 %471, 36
  br i1 %472, label %473, label %495

; <label>:473:                                    ; preds = %470
  %474 = load double, double* %5, align 8
  %475 = fdiv double %474, 3.276800e+04
  %476 = load i32, i32* %1, align 4
  %477 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 0), i32 0, i32 %476
  %478 = load double, double* %477, align 8
  %479 = fmul double %478, %475
  store double %479, double* %477, align 8
  %480 = load double, double* %5, align 8
  %481 = fdiv double %480, 3.276800e+04
  %482 = load i32, i32* %1, align 4
  %483 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 1), i32 0, i32 %482
  %484 = load double, double* %483, align 8
  %485 = fmul double %484, %481
  store double %485, double* %483, align 8
  %486 = load double, double* %5, align 8
  %487 = fdiv double %486, 3.276800e+04
  %488 = load i32, i32* %1, align 4
  %489 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 3), i32 0, i32 %488
  %490 = load double, double* %489, align 8
  %491 = fmul double %490, %487
  store double %491, double* %489, align 8
  br label %492

; <label>:492:                                    ; preds = %473
  %493 = load i32, i32* %1, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %1, align 4
  br label %470

; <label>:495:                                    ; preds = %470
  store double 0x3FD5555555555555, double* %4, align 8
  store i32 0, i32* %1, align 4
  br label %496

; <label>:496:                                    ; preds = %562, %495
  %497 = load i32, i32* %1, align 4
  %498 = icmp slt i32 %497, 3
  br i1 %498, label %499, label %565

; <label>:499:                                    ; preds = %496
  %500 = load i32, i32* %1, align 4
  %501 = sitofp i32 %500 to double
  %502 = fadd double %501, 5.000000e-01
  %503 = fmul double 0x3FD0C152382D7365, %502
  %504 = call arm_aapcscc double @cos(double %503) #3
  %505 = load double, double* %5, align 8
  %506 = fmul double %504, %505
  %507 = fdiv double %506, 3.276800e+04
  %508 = load double, double* %4, align 8
  %509 = fmul double %507, %508
  store double %509, double* %14, align 8
  %510 = load i32, i32* %1, align 4
  %511 = sitofp i32 %510 to double
  %512 = fadd double %511, 5.000000e-01
  %513 = fmul double 0x3FD0C152382D7365, %512
  %514 = call arm_aapcscc double @tan(double %513) #3
  %515 = load i32, i32* %1, align 4
  %516 = getelementptr inbounds [36 x double], [36 x double]* getelementptr inbounds ([4 x [36 x double]], [4 x [36 x double]]* @win, i32 0, i32 2), i32 0, i32 %515
  store double %514, double* %516, align 8
  store i32 0, i32* %3, align 4
  br label %517

; <label>:517:                                    ; preds = %558, %499
  %518 = load i32, i32* %3, align 4
  %519 = icmp slt i32 %518, 6
  br i1 %519, label %520, label %561

; <label>:520:                                    ; preds = %517
  %521 = load double, double* %14, align 8
  %522 = load i32, i32* %3, align 4
  %523 = mul nsw i32 2, %522
  %524 = add nsw i32 %523, 1
  %525 = sitofp i32 %524 to double
  %526 = fmul double 0x3FB0C152382D7365, %525
  %527 = load i32, i32* %1, align 4
  %528 = mul nsw i32 4, %527
  %529 = add nsw i32 %528, 2
  %530 = add nsw i32 %529, 12
  %531 = sitofp i32 %530 to double
  %532 = fmul double %526, %531
  %533 = call arm_aapcscc double @cos(double %532) #3
  %534 = fmul double %521, %533
  %535 = load i32, i32* %3, align 4
  %536 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %535
  %537 = load i32, i32* %1, align 4
  %538 = getelementptr inbounds [6 x double], [6 x double]* %536, i32 0, i32 %537
  store double %534, double* %538, align 8
  %539 = load double, double* %14, align 8
  %540 = load i32, i32* %3, align 4
  %541 = mul nsw i32 2, %540
  %542 = add nsw i32 %541, 1
  %543 = sitofp i32 %542 to double
  %544 = fmul double 0x3FB0C152382D7365, %543
  %545 = load i32, i32* %1, align 4
  %546 = mul nsw i32 4, %545
  %547 = add nsw i32 %546, 2
  %548 = add nsw i32 %547, 36
  %549 = sitofp i32 %548 to double
  %550 = fmul double %544, %549
  %551 = call arm_aapcscc double @cos(double %550) #3
  %552 = fmul double %539, %551
  %553 = load i32, i32* %3, align 4
  %554 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %553
  %555 = load i32, i32* %1, align 4
  %556 = add nsw i32 %555, 3
  %557 = getelementptr inbounds [6 x double], [6 x double]* %554, i32 0, i32 %556
  store double %552, double* %557, align 8
  br label %558

; <label>:558:                                    ; preds = %520
  %559 = load i32, i32* %3, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %3, align 4
  br label %517

; <label>:561:                                    ; preds = %517
  br label %562

; <label>:562:                                    ; preds = %561
  %563 = load i32, i32* %1, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %1, align 4
  br label %496

; <label>:565:                                    ; preds = %496
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc void @window_subband(i16*, double*, double*) #0 {
  %4 = alloca i16*, align 4
  %5 = alloca double*, align 4
  %6 = alloca double*, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 4
  %11 = alloca i16*, align 4
  %12 = alloca i16*, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i16* %0, i16** %4, align 4
  store double* %1, double** %5, align 4
  store double* %2, double** %6, align 4
  store double* getelementptr inbounds ([256 x double], [256 x double]* @enwindow, i32 0, i32 0), double** %10, align 4
  %17 = load i16*, i16** %4, align 4
  %18 = getelementptr inbounds i16, i16* %17, i32 255
  %19 = load i16, i16* %18, align 2
  %20 = sitofp i16 %19 to double
  store double %20, double* %9, align 8
  %21 = load i16*, i16** %4, align 4
  %22 = getelementptr inbounds i16, i16* %21, i32 223
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16*, i16** %4, align 4
  %26 = getelementptr inbounds i16, i16* %25, i32 287
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = sub nsw i32 %24, %28
  %30 = sitofp i32 %29 to double
  %31 = load double*, double** %10, align 4
  %32 = getelementptr inbounds double, double* %31, i32 1
  store double* %32, double** %10, align 4
  %33 = load double, double* %31, align 8
  %34 = fmul double %30, %33
  %35 = load double, double* %9, align 8
  %36 = fadd double %35, %34
  store double %36, double* %9, align 8
  %37 = load i16*, i16** %4, align 4
  %38 = getelementptr inbounds i16, i16* %37, i32 191
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = load i16*, i16** %4, align 4
  %42 = getelementptr inbounds i16, i16* %41, i32 319
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %40, %44
  %46 = sitofp i32 %45 to double
  %47 = load double*, double** %10, align 4
  %48 = getelementptr inbounds double, double* %47, i32 1
  store double* %48, double** %10, align 4
  %49 = load double, double* %47, align 8
  %50 = fmul double %46, %49
  %51 = load double, double* %9, align 8
  %52 = fadd double %51, %50
  store double %52, double* %9, align 8
  %53 = load i16*, i16** %4, align 4
  %54 = getelementptr inbounds i16, i16* %53, i32 159
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = load i16*, i16** %4, align 4
  %58 = getelementptr inbounds i16, i16* %57, i32 351
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %61 = sub nsw i32 %56, %60
  %62 = sitofp i32 %61 to double
  %63 = load double*, double** %10, align 4
  %64 = getelementptr inbounds double, double* %63, i32 1
  store double* %64, double** %10, align 4
  %65 = load double, double* %63, align 8
  %66 = fmul double %62, %65
  %67 = load double, double* %9, align 8
  %68 = fadd double %67, %66
  store double %68, double* %9, align 8
  %69 = load i16*, i16** %4, align 4
  %70 = getelementptr inbounds i16, i16* %69, i32 127
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16*, i16** %4, align 4
  %74 = getelementptr inbounds i16, i16* %73, i32 383
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = add nsw i32 %72, %76
  %78 = sitofp i32 %77 to double
  %79 = load double*, double** %10, align 4
  %80 = getelementptr inbounds double, double* %79, i32 1
  store double* %80, double** %10, align 4
  %81 = load double, double* %79, align 8
  %82 = fmul double %78, %81
  %83 = load double, double* %9, align 8
  %84 = fadd double %83, %82
  store double %84, double* %9, align 8
  %85 = load i16*, i16** %4, align 4
  %86 = getelementptr inbounds i16, i16* %85, i32 95
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  %89 = load i16*, i16** %4, align 4
  %90 = getelementptr inbounds i16, i16* %89, i32 415
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = sub nsw i32 %88, %92
  %94 = sitofp i32 %93 to double
  %95 = load double*, double** %10, align 4
  %96 = getelementptr inbounds double, double* %95, i32 1
  store double* %96, double** %10, align 4
  %97 = load double, double* %95, align 8
  %98 = fmul double %94, %97
  %99 = load double, double* %9, align 8
  %100 = fadd double %99, %98
  store double %100, double* %9, align 8
  %101 = load i16*, i16** %4, align 4
  %102 = getelementptr inbounds i16, i16* %101, i32 63
  %103 = load i16, i16* %102, align 2
  %104 = sext i16 %103 to i32
  %105 = load i16*, i16** %4, align 4
  %106 = getelementptr inbounds i16, i16* %105, i32 447
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %104, %108
  %110 = sitofp i32 %109 to double
  %111 = load double*, double** %10, align 4
  %112 = getelementptr inbounds double, double* %111, i32 1
  store double* %112, double** %10, align 4
  %113 = load double, double* %111, align 8
  %114 = fmul double %110, %113
  %115 = load double, double* %9, align 8
  %116 = fadd double %115, %114
  store double %116, double* %9, align 8
  %117 = load i16*, i16** %4, align 4
  %118 = getelementptr inbounds i16, i16* %117, i32 31
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  %121 = load i16*, i16** %4, align 4
  %122 = getelementptr inbounds i16, i16* %121, i32 479
  %123 = load i16, i16* %122, align 2
  %124 = sext i16 %123 to i32
  %125 = sub nsw i32 %120, %124
  %126 = sitofp i32 %125 to double
  %127 = load double*, double** %10, align 4
  %128 = getelementptr inbounds double, double* %127, i32 1
  store double* %128, double** %10, align 4
  %129 = load double, double* %127, align 8
  %130 = fmul double %126, %129
  %131 = load double, double* %9, align 8
  %132 = fadd double %131, %130
  store double %132, double* %9, align 8
  %133 = load double, double* %9, align 8
  %134 = load double*, double** %6, align 4
  %135 = getelementptr inbounds double, double* %134, i32 15
  store double %133, double* %135, align 8
  store i32 14, i32* %7, align 4
  br label %136

; <label>:136:                                    ; preds = %479, %3
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %482

; <label>:139:                                    ; preds = %136
  %140 = load i16*, i16** %4, align 4
  %141 = load i32, i32* %7, align 4
  %142 = getelementptr inbounds i16, i16* %140, i32 %141
  store i16* %142, i16** %11, align 4
  %143 = load i16*, i16** %4, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 0, %144
  %146 = getelementptr inbounds i16, i16* %143, i32 %145
  store i16* %146, i16** %12, align 4
  %147 = load i16*, i16** %12, align 4
  %148 = getelementptr inbounds i16, i16* %147, i32 270
  %149 = load i16, i16* %148, align 2
  %150 = sitofp i16 %149 to double
  store double %150, double* %8, align 8
  %151 = load i16*, i16** %11, align 4
  %152 = getelementptr inbounds i16, i16* %151, i32 240
  %153 = load i16, i16* %152, align 2
  %154 = sitofp i16 %153 to double
  store double %154, double* %9, align 8
  %155 = load double*, double** %10, align 4
  %156 = getelementptr inbounds double, double* %155, i32 1
  store double* %156, double** %10, align 4
  %157 = load double, double* %155, align 8
  store double %157, double* %13, align 8
  %158 = load i16*, i16** %12, align 4
  %159 = getelementptr inbounds i16, i16* %158, i32 334
  %160 = load i16, i16* %159, align 2
  %161 = sext i16 %160 to i32
  %162 = sitofp i32 %161 to double
  %163 = load double, double* %13, align 8
  %164 = fmul double %162, %163
  %165 = load double, double* %8, align 8
  %166 = fadd double %165, %164
  store double %166, double* %8, align 8
  %167 = load i16*, i16** %11, align 4
  %168 = getelementptr inbounds i16, i16* %167, i32 176
  %169 = load i16, i16* %168, align 2
  %170 = sext i16 %169 to i32
  %171 = sitofp i32 %170 to double
  %172 = load double, double* %13, align 8
  %173 = fmul double %171, %172
  %174 = load double, double* %9, align 8
  %175 = fadd double %174, %173
  store double %175, double* %9, align 8
  %176 = load double*, double** %10, align 4
  %177 = getelementptr inbounds double, double* %176, i32 1
  store double* %177, double** %10, align 4
  %178 = load double, double* %176, align 8
  store double %178, double* %13, align 8
  %179 = load i16*, i16** %12, align 4
  %180 = getelementptr inbounds i16, i16* %179, i32 398
  %181 = load i16, i16* %180, align 2
  %182 = sext i16 %181 to i32
  %183 = sitofp i32 %182 to double
  %184 = load double, double* %13, align 8
  %185 = fmul double %183, %184
  %186 = load double, double* %8, align 8
  %187 = fadd double %186, %185
  store double %187, double* %8, align 8
  %188 = load i16*, i16** %11, align 4
  %189 = getelementptr inbounds i16, i16* %188, i32 112
  %190 = load i16, i16* %189, align 2
  %191 = sext i16 %190 to i32
  %192 = sitofp i32 %191 to double
  %193 = load double, double* %13, align 8
  %194 = fmul double %192, %193
  %195 = load double, double* %9, align 8
  %196 = fadd double %195, %194
  store double %196, double* %9, align 8
  %197 = load double*, double** %10, align 4
  %198 = getelementptr inbounds double, double* %197, i32 1
  store double* %198, double** %10, align 4
  %199 = load double, double* %197, align 8
  store double %199, double* %13, align 8
  %200 = load i16*, i16** %12, align 4
  %201 = getelementptr inbounds i16, i16* %200, i32 462
  %202 = load i16, i16* %201, align 2
  %203 = sext i16 %202 to i32
  %204 = sitofp i32 %203 to double
  %205 = load double, double* %13, align 8
  %206 = fmul double %204, %205
  %207 = load double, double* %8, align 8
  %208 = fadd double %207, %206
  store double %208, double* %8, align 8
  %209 = load i16*, i16** %11, align 4
  %210 = getelementptr inbounds i16, i16* %209, i32 48
  %211 = load i16, i16* %210, align 2
  %212 = sext i16 %211 to i32
  %213 = sitofp i32 %212 to double
  %214 = load double, double* %13, align 8
  %215 = fmul double %213, %214
  %216 = load double, double* %9, align 8
  %217 = fadd double %216, %215
  store double %217, double* %9, align 8
  %218 = load double*, double** %10, align 4
  %219 = getelementptr inbounds double, double* %218, i32 1
  store double* %219, double** %10, align 4
  %220 = load double, double* %218, align 8
  store double %220, double* %13, align 8
  %221 = load i16*, i16** %12, align 4
  %222 = getelementptr inbounds i16, i16* %221, i32 14
  %223 = load i16, i16* %222, align 2
  %224 = sext i16 %223 to i32
  %225 = sitofp i32 %224 to double
  %226 = load double, double* %13, align 8
  %227 = fmul double %225, %226
  %228 = load double, double* %8, align 8
  %229 = fadd double %228, %227
  store double %229, double* %8, align 8
  %230 = load i16*, i16** %11, align 4
  %231 = getelementptr inbounds i16, i16* %230, i32 496
  %232 = load i16, i16* %231, align 2
  %233 = sext i16 %232 to i32
  %234 = sitofp i32 %233 to double
  %235 = load double, double* %13, align 8
  %236 = fmul double %234, %235
  %237 = load double, double* %9, align 8
  %238 = fadd double %237, %236
  store double %238, double* %9, align 8
  %239 = load double*, double** %10, align 4
  %240 = getelementptr inbounds double, double* %239, i32 1
  store double* %240, double** %10, align 4
  %241 = load double, double* %239, align 8
  store double %241, double* %13, align 8
  %242 = load i16*, i16** %12, align 4
  %243 = getelementptr inbounds i16, i16* %242, i32 78
  %244 = load i16, i16* %243, align 2
  %245 = sext i16 %244 to i32
  %246 = sitofp i32 %245 to double
  %247 = load double, double* %13, align 8
  %248 = fmul double %246, %247
  %249 = load double, double* %8, align 8
  %250 = fadd double %249, %248
  store double %250, double* %8, align 8
  %251 = load i16*, i16** %11, align 4
  %252 = getelementptr inbounds i16, i16* %251, i32 432
  %253 = load i16, i16* %252, align 2
  %254 = sext i16 %253 to i32
  %255 = sitofp i32 %254 to double
  %256 = load double, double* %13, align 8
  %257 = fmul double %255, %256
  %258 = load double, double* %9, align 8
  %259 = fadd double %258, %257
  store double %259, double* %9, align 8
  %260 = load double*, double** %10, align 4
  %261 = getelementptr inbounds double, double* %260, i32 1
  store double* %261, double** %10, align 4
  %262 = load double, double* %260, align 8
  store double %262, double* %13, align 8
  %263 = load i16*, i16** %12, align 4
  %264 = getelementptr inbounds i16, i16* %263, i32 142
  %265 = load i16, i16* %264, align 2
  %266 = sext i16 %265 to i32
  %267 = sitofp i32 %266 to double
  %268 = load double, double* %13, align 8
  %269 = fmul double %267, %268
  %270 = load double, double* %8, align 8
  %271 = fadd double %270, %269
  store double %271, double* %8, align 8
  %272 = load i16*, i16** %11, align 4
  %273 = getelementptr inbounds i16, i16* %272, i32 368
  %274 = load i16, i16* %273, align 2
  %275 = sext i16 %274 to i32
  %276 = sitofp i32 %275 to double
  %277 = load double, double* %13, align 8
  %278 = fmul double %276, %277
  %279 = load double, double* %9, align 8
  %280 = fadd double %279, %278
  store double %280, double* %9, align 8
  %281 = load double*, double** %10, align 4
  %282 = getelementptr inbounds double, double* %281, i32 1
  store double* %282, double** %10, align 4
  %283 = load double, double* %281, align 8
  store double %283, double* %13, align 8
  %284 = load i16*, i16** %12, align 4
  %285 = getelementptr inbounds i16, i16* %284, i32 206
  %286 = load i16, i16* %285, align 2
  %287 = sext i16 %286 to i32
  %288 = sitofp i32 %287 to double
  %289 = load double, double* %13, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %8, align 8
  %292 = fadd double %291, %290
  store double %292, double* %8, align 8
  %293 = load i16*, i16** %11, align 4
  %294 = getelementptr inbounds i16, i16* %293, i32 304
  %295 = load i16, i16* %294, align 2
  %296 = sext i16 %295 to i32
  %297 = sitofp i32 %296 to double
  %298 = load double, double* %13, align 8
  %299 = fmul double %297, %298
  %300 = load double, double* %9, align 8
  %301 = fadd double %300, %299
  store double %301, double* %9, align 8
  %302 = load double*, double** %10, align 4
  %303 = getelementptr inbounds double, double* %302, i32 1
  store double* %303, double** %10, align 4
  %304 = load double, double* %302, align 8
  store double %304, double* %13, align 8
  %305 = load i16*, i16** %11, align 4
  %306 = getelementptr inbounds i16, i16* %305, i32 16
  %307 = load i16, i16* %306, align 2
  %308 = sext i16 %307 to i32
  %309 = sitofp i32 %308 to double
  %310 = load double, double* %13, align 8
  %311 = fmul double %309, %310
  %312 = load double, double* %8, align 8
  %313 = fadd double %312, %311
  store double %313, double* %8, align 8
  %314 = load i16*, i16** %12, align 4
  %315 = getelementptr inbounds i16, i16* %314, i32 494
  %316 = load i16, i16* %315, align 2
  %317 = sext i16 %316 to i32
  %318 = sitofp i32 %317 to double
  %319 = load double, double* %13, align 8
  %320 = fmul double %318, %319
  %321 = load double, double* %9, align 8
  %322 = fsub double %321, %320
  store double %322, double* %9, align 8
  %323 = load double*, double** %10, align 4
  %324 = getelementptr inbounds double, double* %323, i32 1
  store double* %324, double** %10, align 4
  %325 = load double, double* %323, align 8
  store double %325, double* %13, align 8
  %326 = load i16*, i16** %11, align 4
  %327 = getelementptr inbounds i16, i16* %326, i32 80
  %328 = load i16, i16* %327, align 2
  %329 = sext i16 %328 to i32
  %330 = sitofp i32 %329 to double
  %331 = load double, double* %13, align 8
  %332 = fmul double %330, %331
  %333 = load double, double* %8, align 8
  %334 = fadd double %333, %332
  store double %334, double* %8, align 8
  %335 = load i16*, i16** %12, align 4
  %336 = getelementptr inbounds i16, i16* %335, i32 430
  %337 = load i16, i16* %336, align 2
  %338 = sext i16 %337 to i32
  %339 = sitofp i32 %338 to double
  %340 = load double, double* %13, align 8
  %341 = fmul double %339, %340
  %342 = load double, double* %9, align 8
  %343 = fsub double %342, %341
  store double %343, double* %9, align 8
  %344 = load double*, double** %10, align 4
  %345 = getelementptr inbounds double, double* %344, i32 1
  store double* %345, double** %10, align 4
  %346 = load double, double* %344, align 8
  store double %346, double* %13, align 8
  %347 = load i16*, i16** %11, align 4
  %348 = getelementptr inbounds i16, i16* %347, i32 144
  %349 = load i16, i16* %348, align 2
  %350 = sext i16 %349 to i32
  %351 = sitofp i32 %350 to double
  %352 = load double, double* %13, align 8
  %353 = fmul double %351, %352
  %354 = load double, double* %8, align 8
  %355 = fadd double %354, %353
  store double %355, double* %8, align 8
  %356 = load i16*, i16** %12, align 4
  %357 = getelementptr inbounds i16, i16* %356, i32 366
  %358 = load i16, i16* %357, align 2
  %359 = sext i16 %358 to i32
  %360 = sitofp i32 %359 to double
  %361 = load double, double* %13, align 8
  %362 = fmul double %360, %361
  %363 = load double, double* %9, align 8
  %364 = fsub double %363, %362
  store double %364, double* %9, align 8
  %365 = load double*, double** %10, align 4
  %366 = getelementptr inbounds double, double* %365, i32 1
  store double* %366, double** %10, align 4
  %367 = load double, double* %365, align 8
  store double %367, double* %13, align 8
  %368 = load i16*, i16** %11, align 4
  %369 = getelementptr inbounds i16, i16* %368, i32 208
  %370 = load i16, i16* %369, align 2
  %371 = sext i16 %370 to i32
  %372 = sitofp i32 %371 to double
  %373 = load double, double* %13, align 8
  %374 = fmul double %372, %373
  %375 = load double, double* %8, align 8
  %376 = fadd double %375, %374
  store double %376, double* %8, align 8
  %377 = load i16*, i16** %12, align 4
  %378 = getelementptr inbounds i16, i16* %377, i32 302
  %379 = load i16, i16* %378, align 2
  %380 = sext i16 %379 to i32
  %381 = sitofp i32 %380 to double
  %382 = load double, double* %13, align 8
  %383 = fmul double %381, %382
  %384 = load double, double* %9, align 8
  %385 = fsub double %384, %383
  store double %385, double* %9, align 8
  %386 = load double*, double** %10, align 4
  %387 = getelementptr inbounds double, double* %386, i32 1
  store double* %387, double** %10, align 4
  %388 = load double, double* %386, align 8
  store double %388, double* %13, align 8
  %389 = load i16*, i16** %11, align 4
  %390 = getelementptr inbounds i16, i16* %389, i32 272
  %391 = load i16, i16* %390, align 2
  %392 = sext i16 %391 to i32
  %393 = sitofp i32 %392 to double
  %394 = load double, double* %13, align 8
  %395 = fmul double %393, %394
  %396 = load double, double* %8, align 8
  %397 = fsub double %396, %395
  store double %397, double* %8, align 8
  %398 = load i16*, i16** %12, align 4
  %399 = getelementptr inbounds i16, i16* %398, i32 238
  %400 = load i16, i16* %399, align 2
  %401 = sext i16 %400 to i32
  %402 = sitofp i32 %401 to double
  %403 = load double, double* %13, align 8
  %404 = fmul double %402, %403
  %405 = load double, double* %9, align 8
  %406 = fadd double %405, %404
  store double %406, double* %9, align 8
  %407 = load double*, double** %10, align 4
  %408 = getelementptr inbounds double, double* %407, i32 1
  store double* %408, double** %10, align 4
  %409 = load double, double* %407, align 8
  store double %409, double* %13, align 8
  %410 = load i16*, i16** %11, align 4
  %411 = getelementptr inbounds i16, i16* %410, i32 336
  %412 = load i16, i16* %411, align 2
  %413 = sext i16 %412 to i32
  %414 = sitofp i32 %413 to double
  %415 = load double, double* %13, align 8
  %416 = fmul double %414, %415
  %417 = load double, double* %8, align 8
  %418 = fsub double %417, %416
  store double %418, double* %8, align 8
  %419 = load i16*, i16** %12, align 4
  %420 = getelementptr inbounds i16, i16* %419, i32 174
  %421 = load i16, i16* %420, align 2
  %422 = sext i16 %421 to i32
  %423 = sitofp i32 %422 to double
  %424 = load double, double* %13, align 8
  %425 = fmul double %423, %424
  %426 = load double, double* %9, align 8
  %427 = fadd double %426, %425
  store double %427, double* %9, align 8
  %428 = load double*, double** %10, align 4
  %429 = getelementptr inbounds double, double* %428, i32 1
  store double* %429, double** %10, align 4
  %430 = load double, double* %428, align 8
  store double %430, double* %13, align 8
  %431 = load i16*, i16** %11, align 4
  %432 = getelementptr inbounds i16, i16* %431, i32 400
  %433 = load i16, i16* %432, align 2
  %434 = sext i16 %433 to i32
  %435 = sitofp i32 %434 to double
  %436 = load double, double* %13, align 8
  %437 = fmul double %435, %436
  %438 = load double, double* %8, align 8
  %439 = fsub double %438, %437
  store double %439, double* %8, align 8
  %440 = load i16*, i16** %12, align 4
  %441 = getelementptr inbounds i16, i16* %440, i32 110
  %442 = load i16, i16* %441, align 2
  %443 = sext i16 %442 to i32
  %444 = sitofp i32 %443 to double
  %445 = load double, double* %13, align 8
  %446 = fmul double %444, %445
  %447 = load double, double* %9, align 8
  %448 = fadd double %447, %446
  store double %448, double* %9, align 8
  %449 = load double*, double** %10, align 4
  %450 = getelementptr inbounds double, double* %449, i32 1
  store double* %450, double** %10, align 4
  %451 = load double, double* %449, align 8
  store double %451, double* %13, align 8
  %452 = load i16*, i16** %11, align 4
  %453 = getelementptr inbounds i16, i16* %452, i32 464
  %454 = load i16, i16* %453, align 2
  %455 = sext i16 %454 to i32
  %456 = sitofp i32 %455 to double
  %457 = load double, double* %13, align 8
  %458 = fmul double %456, %457
  %459 = load double, double* %8, align 8
  %460 = fsub double %459, %458
  store double %460, double* %8, align 8
  %461 = load i16*, i16** %12, align 4
  %462 = getelementptr inbounds i16, i16* %461, i32 46
  %463 = load i16, i16* %462, align 2
  %464 = sext i16 %463 to i32
  %465 = sitofp i32 %464 to double
  %466 = load double, double* %13, align 8
  %467 = fmul double %465, %466
  %468 = load double, double* %9, align 8
  %469 = fadd double %468, %467
  store double %469, double* %9, align 8
  %470 = load double, double* %8, align 8
  %471 = load double*, double** %6, align 4
  %472 = load i32, i32* %7, align 4
  %473 = sub nsw i32 30, %472
  %474 = getelementptr inbounds double, double* %471, i32 %473
  store double %470, double* %474, align 8
  %475 = load double, double* %9, align 8
  %476 = load double*, double** %6, align 4
  %477 = load i32, i32* %7, align 4
  %478 = getelementptr inbounds double, double* %476, i32 %477
  store double %475, double* %478, align 8
  br label %479

; <label>:479:                                    ; preds = %139
  %480 = load i32, i32* %7, align 4
  %481 = add nsw i32 %480, -1
  store i32 %481, i32* %7, align 4
  br label %136

; <label>:482:                                    ; preds = %136
  %483 = load i16*, i16** %4, align 4
  %484 = getelementptr inbounds i16, i16* %483, i32 239
  %485 = load i16, i16* %484, align 2
  %486 = sitofp i16 %485 to double
  store double %486, double* %8, align 8
  %487 = load i16*, i16** %4, align 4
  %488 = getelementptr inbounds i16, i16* %487, i32 175
  %489 = load i16, i16* %488, align 2
  %490 = sext i16 %489 to i32
  %491 = sitofp i32 %490 to double
  %492 = load double*, double** %10, align 4
  %493 = getelementptr inbounds double, double* %492, i32 1
  store double* %493, double** %10, align 4
  %494 = load double, double* %492, align 8
  %495 = fmul double %491, %494
  %496 = load double, double* %8, align 8
  %497 = fadd double %496, %495
  store double %497, double* %8, align 8
  %498 = load i16*, i16** %4, align 4
  %499 = getelementptr inbounds i16, i16* %498, i32 111
  %500 = load i16, i16* %499, align 2
  %501 = sext i16 %500 to i32
  %502 = sitofp i32 %501 to double
  %503 = load double*, double** %10, align 4
  %504 = getelementptr inbounds double, double* %503, i32 1
  store double* %504, double** %10, align 4
  %505 = load double, double* %503, align 8
  %506 = fmul double %502, %505
  %507 = load double, double* %8, align 8
  %508 = fadd double %507, %506
  store double %508, double* %8, align 8
  %509 = load i16*, i16** %4, align 4
  %510 = getelementptr inbounds i16, i16* %509, i32 47
  %511 = load i16, i16* %510, align 2
  %512 = sext i16 %511 to i32
  %513 = sitofp i32 %512 to double
  %514 = load double*, double** %10, align 4
  %515 = getelementptr inbounds double, double* %514, i32 1
  store double* %515, double** %10, align 4
  %516 = load double, double* %514, align 8
  %517 = fmul double %513, %516
  %518 = load double, double* %8, align 8
  %519 = fadd double %518, %517
  store double %519, double* %8, align 8
  %520 = load i16*, i16** %4, align 4
  %521 = getelementptr inbounds i16, i16* %520, i32 303
  %522 = load i16, i16* %521, align 2
  %523 = sext i16 %522 to i32
  %524 = sitofp i32 %523 to double
  %525 = load double*, double** %10, align 4
  %526 = getelementptr inbounds double, double* %525, i32 1
  store double* %526, double** %10, align 4
  %527 = load double, double* %525, align 8
  %528 = fmul double %524, %527
  %529 = load double, double* %8, align 8
  %530 = fsub double %529, %528
  store double %530, double* %8, align 8
  %531 = load i16*, i16** %4, align 4
  %532 = getelementptr inbounds i16, i16* %531, i32 367
  %533 = load i16, i16* %532, align 2
  %534 = sext i16 %533 to i32
  %535 = sitofp i32 %534 to double
  %536 = load double*, double** %10, align 4
  %537 = getelementptr inbounds double, double* %536, i32 1
  store double* %537, double** %10, align 4
  %538 = load double, double* %536, align 8
  %539 = fmul double %535, %538
  %540 = load double, double* %8, align 8
  %541 = fsub double %540, %539
  store double %541, double* %8, align 8
  %542 = load i16*, i16** %4, align 4
  %543 = getelementptr inbounds i16, i16* %542, i32 431
  %544 = load i16, i16* %543, align 2
  %545 = sext i16 %544 to i32
  %546 = sitofp i32 %545 to double
  %547 = load double*, double** %10, align 4
  %548 = getelementptr inbounds double, double* %547, i32 1
  store double* %548, double** %10, align 4
  %549 = load double, double* %547, align 8
  %550 = fmul double %546, %549
  %551 = load double, double* %8, align 8
  %552 = fsub double %551, %550
  store double %552, double* %8, align 8
  %553 = load i16*, i16** %4, align 4
  %554 = getelementptr inbounds i16, i16* %553, i32 495
  %555 = load i16, i16* %554, align 2
  %556 = sext i16 %555 to i32
  %557 = sitofp i32 %556 to double
  %558 = load double*, double** %10, align 4
  %559 = getelementptr inbounds double, double* %558, i32 1
  store double* %559, double** %10, align 4
  %560 = load double, double* %558, align 8
  %561 = fmul double %557, %560
  %562 = load double, double* %8, align 8
  %563 = fsub double %562, %561
  store double %563, double* %8, align 8
  %564 = load double*, double** %6, align 4
  %565 = getelementptr inbounds double, double* %564, i32 1
  store double* %565, double** %6, align 4
  store double* getelementptr inbounds ([16 x [31 x double]], [16 x [31 x double]]* @mm, i32 0, i32 0, i32 0), double** %10, align 4
  store i32 15, i32* %7, align 4
  br label %566

; <label>:566:                                    ; preds = %617, %482
  %567 = load i32, i32* %7, align 4
  %568 = icmp sge i32 %567, 0
  br i1 %568, label %569, label %620

; <label>:569:                                    ; preds = %566
  %570 = load double, double* %8, align 8
  store double %570, double* %15, align 8
  %571 = load double, double* %9, align 8
  %572 = load double*, double** %10, align 4
  %573 = getelementptr inbounds double, double* %572, i32 1
  store double* %573, double** %10, align 4
  %574 = load double, double* %572, align 8
  %575 = fmul double %571, %574
  store double %575, double* %16, align 8
  store i32 14, i32* %14, align 4
  br label %576

; <label>:576:                                    ; preds = %598, %569
  %577 = load i32, i32* %14, align 4
  %578 = icmp sge i32 %577, 0
  br i1 %578, label %579, label %601

; <label>:579:                                    ; preds = %576
  %580 = load double*, double** %10, align 4
  %581 = getelementptr inbounds double, double* %580, i32 1
  store double* %581, double** %10, align 4
  %582 = load double, double* %580, align 8
  %583 = load double*, double** %6, align 4
  %584 = getelementptr inbounds double, double* %583, i32 1
  store double* %584, double** %6, align 4
  %585 = load double, double* %583, align 8
  %586 = fmul double %582, %585
  %587 = load double, double* %15, align 8
  %588 = fadd double %587, %586
  store double %588, double* %15, align 8
  %589 = load double*, double** %10, align 4
  %590 = getelementptr inbounds double, double* %589, i32 1
  store double* %590, double** %10, align 4
  %591 = load double, double* %589, align 8
  %592 = load double*, double** %6, align 4
  %593 = getelementptr inbounds double, double* %592, i32 1
  store double* %593, double** %6, align 4
  %594 = load double, double* %592, align 8
  %595 = fmul double %591, %594
  %596 = load double, double* %16, align 8
  %597 = fadd double %596, %595
  store double %597, double* %16, align 8
  br label %598

; <label>:598:                                    ; preds = %579
  %599 = load i32, i32* %14, align 4
  %600 = add nsw i32 %599, -1
  store i32 %600, i32* %14, align 4
  br label %576

; <label>:601:                                    ; preds = %576
  %602 = load double*, double** %6, align 4
  %603 = getelementptr inbounds double, double* %602, i32 -30
  store double* %603, double** %6, align 4
  %604 = load double, double* %15, align 8
  %605 = load double, double* %16, align 8
  %606 = fadd double %604, %605
  %607 = load double*, double** %5, align 4
  %608 = load i32, i32* %7, align 4
  %609 = getelementptr inbounds double, double* %607, i32 %608
  store double %606, double* %609, align 8
  %610 = load double, double* %15, align 8
  %611 = load double, double* %16, align 8
  %612 = fsub double %610, %611
  %613 = load double*, double** %5, align 4
  %614 = load i32, i32* %7, align 4
  %615 = sub nsw i32 31, %614
  %616 = getelementptr inbounds double, double* %613, i32 %615
  store double %612, double* %616, align 8
  br label %617

; <label>:617:                                    ; preds = %601
  %618 = load i32, i32* %7, align 4
  %619 = add nsw i32 %618, -1
  store i32 %619, i32* %7, align 4
  br label %566

; <label>:620:                                    ; preds = %566
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @cos(double) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

; Function Attrs: nounwind
define internal arm_aapcscc void @mdct_short(double*, double*) #0 {
  %3 = alloca double*, align 4
  %4 = alloca double*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double* %0, double** %3, align 4
  store double* %1, double** %4, align 4
  store i32 5, i32* %5, align 4
  br label %13

; <label>:13:                                     ; preds = %107, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %110

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %17
  %19 = getelementptr inbounds [6 x double], [6 x double]* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %21
  %23 = getelementptr inbounds [6 x double], [6 x double]* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  store double %24, double* %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %25
  %27 = getelementptr inbounds [6 x double], [6 x double]* %26, i32 0, i32 2
  %28 = load double, double* %27, align 8
  store double %28, double* %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %29
  %31 = getelementptr inbounds [6 x double], [6 x double]* %30, i32 0, i32 3
  %32 = load double, double* %31, align 8
  store double %32, double* %10, align 8
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %33
  %35 = getelementptr inbounds [6 x double], [6 x double]* %34, i32 0, i32 4
  %36 = load double, double* %35, align 8
  store double %36, double* %11, align 8
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds [6 x [6 x double]], [6 x [6 x double]]* @cos_s, i32 0, i32 %37
  %39 = getelementptr inbounds [6 x double], [6 x double]* %38, i32 0, i32 5
  %40 = load double, double* %39, align 8
  store double %40, double* %12, align 8
  store i32 2, i32* %6, align 4
  br label %41

; <label>:41:                                     ; preds = %103, %16
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %106

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %7, align 8
  %46 = load double*, double** %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 6, %47
  %49 = getelementptr inbounds double, double* %46, i32 %48
  %50 = load double, double* %49, align 8
  %51 = fmul double %45, %50
  %52 = load double, double* %8, align 8
  %53 = load double*, double** %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 6, %54
  %56 = add nsw i32 %55, 1
  %57 = getelementptr inbounds double, double* %53, i32 %56
  %58 = load double, double* %57, align 8
  %59 = fmul double %52, %58
  %60 = fadd double %51, %59
  %61 = load double, double* %9, align 8
  %62 = load double*, double** %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 6, %63
  %65 = add nsw i32 %64, 2
  %66 = getelementptr inbounds double, double* %62, i32 %65
  %67 = load double, double* %66, align 8
  %68 = fmul double %61, %67
  %69 = fadd double %60, %68
  %70 = load double, double* %10, align 8
  %71 = load double*, double** %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 6, %72
  %74 = add nsw i32 %73, 3
  %75 = getelementptr inbounds double, double* %71, i32 %74
  %76 = load double, double* %75, align 8
  %77 = fmul double %70, %76
  %78 = fadd double %69, %77
  %79 = load double, double* %11, align 8
  %80 = load double*, double** %4, align 4
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 6, %81
  %83 = add nsw i32 %82, 4
  %84 = getelementptr inbounds double, double* %80, i32 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %79, %85
  %87 = fadd double %78, %86
  %88 = load double, double* %12, align 8
  %89 = load double*, double** %4, align 4
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 6, %90
  %92 = add nsw i32 %91, 5
  %93 = getelementptr inbounds double, double* %89, i32 %92
  %94 = load double, double* %93, align 8
  %95 = fmul double %88, %94
  %96 = fadd double %87, %95
  %97 = load double*, double** %3, align 4
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 3, %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %99, %100
  %102 = getelementptr inbounds double, double* %97, i32 %101
  store double %96, double* %102, align 8
  br label %103

; <label>:103:                                    ; preds = %44
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %6, align 4
  br label %41

; <label>:106:                                    ; preds = %41
  br label %107

; <label>:107:                                    ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %5, align 4
  br label %13

; <label>:110:                                    ; preds = %13
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc void @mdct_long(double*, double*) #0 {
  %3 = alloca double*, align 4
  %4 = alloca double*, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double*, align 4
  store double* %0, double** %3, align 4
  store double* %1, double** %4, align 4
  store i32 11, i32* %11, align 4
  store double* getelementptr inbounds ([244 x double], [244 x double]* @cos_l, i32 0, i32 0), double** %12, align 4
  br label %13

; <label>:13:                                     ; preds = %164, %2
  %14 = load double*, double** %4, align 4
  %15 = getelementptr inbounds double, double* %14, i32 0
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %12, align 4
  %18 = getelementptr inbounds double, double* %17, i32 0
  %19 = load double, double* %18, align 8
  %20 = fmul double %16, %19
  %21 = load double*, double** %4, align 4
  %22 = getelementptr inbounds double, double* %21, i32 1
  %23 = load double, double* %22, align 8
  %24 = load double*, double** %12, align 4
  %25 = getelementptr inbounds double, double* %24, i32 1
  %26 = load double, double* %25, align 8
  %27 = fmul double %23, %26
  %28 = fadd double %20, %27
  %29 = load double*, double** %4, align 4
  %30 = getelementptr inbounds double, double* %29, i32 2
  %31 = load double, double* %30, align 8
  %32 = load double*, double** %12, align 4
  %33 = getelementptr inbounds double, double* %32, i32 2
  %34 = load double, double* %33, align 8
  %35 = fmul double %31, %34
  %36 = fadd double %28, %35
  %37 = load double*, double** %4, align 4
  %38 = getelementptr inbounds double, double* %37, i32 3
  %39 = load double, double* %38, align 8
  %40 = load double*, double** %12, align 4
  %41 = getelementptr inbounds double, double* %40, i32 3
  %42 = load double, double* %41, align 8
  %43 = fmul double %39, %42
  %44 = fadd double %36, %43
  %45 = load double*, double** %4, align 4
  %46 = getelementptr inbounds double, double* %45, i32 4
  %47 = load double, double* %46, align 8
  %48 = load double*, double** %12, align 4
  %49 = getelementptr inbounds double, double* %48, i32 4
  %50 = load double, double* %49, align 8
  %51 = fmul double %47, %50
  %52 = fadd double %44, %51
  %53 = load double*, double** %4, align 4
  %54 = getelementptr inbounds double, double* %53, i32 5
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %12, align 4
  %57 = getelementptr inbounds double, double* %56, i32 5
  %58 = load double, double* %57, align 8
  %59 = fmul double %55, %58
  %60 = fadd double %52, %59
  %61 = load double*, double** %4, align 4
  %62 = getelementptr inbounds double, double* %61, i32 6
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %12, align 4
  %65 = getelementptr inbounds double, double* %64, i32 6
  %66 = load double, double* %65, align 8
  %67 = fmul double %63, %66
  %68 = fadd double %60, %67
  %69 = load double*, double** %4, align 4
  %70 = getelementptr inbounds double, double* %69, i32 7
  %71 = load double, double* %70, align 8
  %72 = load double*, double** %12, align 4
  %73 = getelementptr inbounds double, double* %72, i32 7
  %74 = load double, double* %73, align 8
  %75 = fmul double %71, %74
  %76 = fadd double %68, %75
  %77 = load double*, double** %4, align 4
  %78 = getelementptr inbounds double, double* %77, i32 8
  %79 = load double, double* %78, align 8
  %80 = load double*, double** %12, align 4
  %81 = getelementptr inbounds double, double* %80, i32 8
  %82 = load double, double* %81, align 8
  %83 = fmul double %79, %82
  %84 = fadd double %76, %83
  %85 = load double*, double** %4, align 4
  %86 = getelementptr inbounds double, double* %85, i32 9
  %87 = load double, double* %86, align 8
  %88 = load double*, double** %12, align 4
  %89 = getelementptr inbounds double, double* %88, i32 9
  %90 = load double, double* %89, align 8
  %91 = fmul double %87, %90
  %92 = fadd double %84, %91
  %93 = load double*, double** %4, align 4
  %94 = getelementptr inbounds double, double* %93, i32 10
  %95 = load double, double* %94, align 8
  %96 = load double*, double** %12, align 4
  %97 = getelementptr inbounds double, double* %96, i32 10
  %98 = load double, double* %97, align 8
  %99 = fmul double %95, %98
  %100 = fadd double %92, %99
  %101 = load double*, double** %4, align 4
  %102 = getelementptr inbounds double, double* %101, i32 11
  %103 = load double, double* %102, align 8
  %104 = load double*, double** %12, align 4
  %105 = getelementptr inbounds double, double* %104, i32 11
  %106 = load double, double* %105, align 8
  %107 = fmul double %103, %106
  %108 = fadd double %100, %107
  %109 = load double*, double** %4, align 4
  %110 = getelementptr inbounds double, double* %109, i32 12
  %111 = load double, double* %110, align 8
  %112 = load double*, double** %12, align 4
  %113 = getelementptr inbounds double, double* %112, i32 12
  %114 = load double, double* %113, align 8
  %115 = fmul double %111, %114
  %116 = fadd double %108, %115
  %117 = load double*, double** %4, align 4
  %118 = getelementptr inbounds double, double* %117, i32 13
  %119 = load double, double* %118, align 8
  %120 = load double*, double** %12, align 4
  %121 = getelementptr inbounds double, double* %120, i32 13
  %122 = load double, double* %121, align 8
  %123 = fmul double %119, %122
  %124 = fadd double %116, %123
  %125 = load double*, double** %4, align 4
  %126 = getelementptr inbounds double, double* %125, i32 14
  %127 = load double, double* %126, align 8
  %128 = load double*, double** %12, align 4
  %129 = getelementptr inbounds double, double* %128, i32 14
  %130 = load double, double* %129, align 8
  %131 = fmul double %127, %130
  %132 = fadd double %124, %131
  %133 = load double*, double** %4, align 4
  %134 = getelementptr inbounds double, double* %133, i32 15
  %135 = load double, double* %134, align 8
  %136 = load double*, double** %12, align 4
  %137 = getelementptr inbounds double, double* %136, i32 15
  %138 = load double, double* %137, align 8
  %139 = fmul double %135, %138
  %140 = fadd double %132, %139
  %141 = load double*, double** %4, align 4
  %142 = getelementptr inbounds double, double* %141, i32 16
  %143 = load double, double* %142, align 8
  %144 = load double*, double** %12, align 4
  %145 = getelementptr inbounds double, double* %144, i32 16
  %146 = load double, double* %145, align 8
  %147 = fmul double %143, %146
  %148 = fadd double %140, %147
  %149 = load double*, double** %4, align 4
  %150 = getelementptr inbounds double, double* %149, i32 17
  %151 = load double, double* %150, align 8
  %152 = load double*, double** %12, align 4
  %153 = getelementptr inbounds double, double* %152, i32 17
  %154 = load double, double* %153, align 8
  %155 = fmul double %151, %154
  %156 = fadd double %148, %155
  %157 = load double*, double** %3, align 4
  %158 = load i32, i32* %11, align 4
  %159 = getelementptr inbounds [12 x i32], [12 x i32]* @all, i32 0, i32 %158
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds double, double* %157, i32 %160
  store double %156, double* %161, align 8
  %162 = load double*, double** %12, align 4
  %163 = getelementptr inbounds double, double* %162, i32 18
  store double* %163, double** %12, align 4
  br label %164

; <label>:164:                                    ; preds = %13
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %11, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %13, label %168

; <label>:168:                                    ; preds = %164
  %169 = load double*, double** %4, align 4
  %170 = getelementptr inbounds double, double* %169, i32 0
  %171 = load double, double* %170, align 8
  %172 = load double*, double** %4, align 4
  %173 = getelementptr inbounds double, double* %172, i32 5
  %174 = load double, double* %173, align 8
  %175 = fadd double %171, %174
  %176 = load double*, double** %4, align 4
  %177 = getelementptr inbounds double, double* %176, i32 15
  %178 = load double, double* %177, align 8
  %179 = fadd double %175, %178
  store double %179, double* %5, align 8
  %180 = load double*, double** %4, align 4
  %181 = getelementptr inbounds double, double* %180, i32 1
  %182 = load double, double* %181, align 8
  %183 = load double*, double** %4, align 4
  %184 = getelementptr inbounds double, double* %183, i32 4
  %185 = load double, double* %184, align 8
  %186 = fadd double %182, %185
  %187 = load double*, double** %4, align 4
  %188 = getelementptr inbounds double, double* %187, i32 16
  %189 = load double, double* %188, align 8
  %190 = fadd double %186, %189
  store double %190, double* %6, align 8
  %191 = load double*, double** %4, align 4
  %192 = getelementptr inbounds double, double* %191, i32 2
  %193 = load double, double* %192, align 8
  %194 = load double*, double** %4, align 4
  %195 = getelementptr inbounds double, double* %194, i32 3
  %196 = load double, double* %195, align 8
  %197 = fadd double %193, %196
  %198 = load double*, double** %4, align 4
  %199 = getelementptr inbounds double, double* %198, i32 17
  %200 = load double, double* %199, align 8
  %201 = fadd double %197, %200
  store double %201, double* %7, align 8
  %202 = load double*, double** %4, align 4
  %203 = getelementptr inbounds double, double* %202, i32 6
  %204 = load double, double* %203, align 8
  %205 = load double*, double** %4, align 4
  %206 = getelementptr inbounds double, double* %205, i32 9
  %207 = load double, double* %206, align 8
  %208 = fsub double %204, %207
  %209 = load double*, double** %4, align 4
  %210 = getelementptr inbounds double, double* %209, i32 14
  %211 = load double, double* %210, align 8
  %212 = fadd double %208, %211
  store double %212, double* %8, align 8
  %213 = load double*, double** %4, align 4
  %214 = getelementptr inbounds double, double* %213, i32 7
  %215 = load double, double* %214, align 8
  %216 = load double*, double** %4, align 4
  %217 = getelementptr inbounds double, double* %216, i32 10
  %218 = load double, double* %217, align 8
  %219 = fsub double %215, %218
  %220 = load double*, double** %4, align 4
  %221 = getelementptr inbounds double, double* %220, i32 13
  %222 = load double, double* %221, align 8
  %223 = fadd double %219, %222
  store double %223, double* %9, align 8
  %224 = load double*, double** %4, align 4
  %225 = getelementptr inbounds double, double* %224, i32 8
  %226 = load double, double* %225, align 8
  %227 = load double*, double** %4, align 4
  %228 = getelementptr inbounds double, double* %227, i32 11
  %229 = load double, double* %228, align 8
  %230 = fsub double %226, %229
  %231 = load double*, double** %4, align 4
  %232 = getelementptr inbounds double, double* %231, i32 12
  %233 = load double, double* %232, align 8
  %234 = fadd double %230, %233
  store double %234, double* %10, align 8
  %235 = load double, double* %5, align 8
  %236 = load double*, double** %12, align 4
  %237 = getelementptr inbounds double, double* %236, i32 0
  %238 = load double, double* %237, align 8
  %239 = fmul double %235, %238
  %240 = load double, double* %6, align 8
  %241 = load double*, double** %12, align 4
  %242 = getelementptr inbounds double, double* %241, i32 1
  %243 = load double, double* %242, align 8
  %244 = fmul double %240, %243
  %245 = fadd double %239, %244
  %246 = load double, double* %7, align 8
  %247 = load double*, double** %12, align 4
  %248 = getelementptr inbounds double, double* %247, i32 2
  %249 = load double, double* %248, align 8
  %250 = fmul double %246, %249
  %251 = fadd double %245, %250
  %252 = load double, double* %8, align 8
  %253 = load double*, double** %12, align 4
  %254 = getelementptr inbounds double, double* %253, i32 3
  %255 = load double, double* %254, align 8
  %256 = fmul double %252, %255
  %257 = fadd double %251, %256
  %258 = load double, double* %9, align 8
  %259 = load double*, double** %12, align 4
  %260 = getelementptr inbounds double, double* %259, i32 4
  %261 = load double, double* %260, align 8
  %262 = fmul double %258, %261
  %263 = fadd double %257, %262
  %264 = load double, double* %10, align 8
  %265 = load double*, double** %12, align 4
  %266 = getelementptr inbounds double, double* %265, i32 5
  %267 = load double, double* %266, align 8
  %268 = fmul double %264, %267
  %269 = fadd double %263, %268
  %270 = load double*, double** %3, align 4
  %271 = getelementptr inbounds double, double* %270, i32 16
  store double %269, double* %271, align 8
  %272 = load double*, double** %12, align 4
  %273 = getelementptr inbounds double, double* %272, i32 6
  store double* %273, double** %12, align 4
  %274 = load double, double* %5, align 8
  %275 = load double*, double** %12, align 4
  %276 = getelementptr inbounds double, double* %275, i32 0
  %277 = load double, double* %276, align 8
  %278 = fmul double %274, %277
  %279 = load double, double* %6, align 8
  %280 = load double*, double** %12, align 4
  %281 = getelementptr inbounds double, double* %280, i32 1
  %282 = load double, double* %281, align 8
  %283 = fmul double %279, %282
  %284 = fadd double %278, %283
  %285 = load double, double* %7, align 8
  %286 = load double*, double** %12, align 4
  %287 = getelementptr inbounds double, double* %286, i32 2
  %288 = load double, double* %287, align 8
  %289 = fmul double %285, %288
  %290 = fadd double %284, %289
  %291 = load double, double* %8, align 8
  %292 = load double*, double** %12, align 4
  %293 = getelementptr inbounds double, double* %292, i32 3
  %294 = load double, double* %293, align 8
  %295 = fmul double %291, %294
  %296 = fadd double %290, %295
  %297 = load double, double* %9, align 8
  %298 = load double*, double** %12, align 4
  %299 = getelementptr inbounds double, double* %298, i32 4
  %300 = load double, double* %299, align 8
  %301 = fmul double %297, %300
  %302 = fadd double %296, %301
  %303 = load double, double* %10, align 8
  %304 = load double*, double** %12, align 4
  %305 = getelementptr inbounds double, double* %304, i32 5
  %306 = load double, double* %305, align 8
  %307 = fmul double %303, %306
  %308 = fadd double %302, %307
  %309 = load double*, double** %3, align 4
  %310 = getelementptr inbounds double, double* %309, i32 10
  store double %308, double* %310, align 8
  %311 = load double*, double** %12, align 4
  %312 = getelementptr inbounds double, double* %311, i32 6
  store double* %312, double** %12, align 4
  %313 = load double, double* %5, align 8
  %314 = load double*, double** %12, align 4
  %315 = getelementptr inbounds double, double* %314, i32 0
  %316 = load double, double* %315, align 8
  %317 = fmul double %313, %316
  %318 = load double, double* %6, align 8
  %319 = load double*, double** %12, align 4
  %320 = getelementptr inbounds double, double* %319, i32 1
  %321 = load double, double* %320, align 8
  %322 = fmul double %318, %321
  %323 = fadd double %317, %322
  %324 = load double, double* %7, align 8
  %325 = load double*, double** %12, align 4
  %326 = getelementptr inbounds double, double* %325, i32 2
  %327 = load double, double* %326, align 8
  %328 = fmul double %324, %327
  %329 = fadd double %323, %328
  %330 = load double, double* %8, align 8
  %331 = load double*, double** %12, align 4
  %332 = getelementptr inbounds double, double* %331, i32 3
  %333 = load double, double* %332, align 8
  %334 = fmul double %330, %333
  %335 = fadd double %329, %334
  %336 = load double, double* %9, align 8
  %337 = load double*, double** %12, align 4
  %338 = getelementptr inbounds double, double* %337, i32 4
  %339 = load double, double* %338, align 8
  %340 = fmul double %336, %339
  %341 = fadd double %335, %340
  %342 = load double, double* %10, align 8
  %343 = load double*, double** %12, align 4
  %344 = getelementptr inbounds double, double* %343, i32 5
  %345 = load double, double* %344, align 8
  %346 = fmul double %342, %345
  %347 = fadd double %341, %346
  %348 = load double*, double** %3, align 4
  %349 = getelementptr inbounds double, double* %348, i32 7
  store double %347, double* %349, align 8
  %350 = load double*, double** %12, align 4
  %351 = getelementptr inbounds double, double* %350, i32 6
  store double* %351, double** %12, align 4
  %352 = load double, double* %5, align 8
  %353 = load double*, double** %12, align 4
  %354 = getelementptr inbounds double, double* %353, i32 0
  %355 = load double, double* %354, align 8
  %356 = fmul double %352, %355
  %357 = load double, double* %6, align 8
  %358 = load double*, double** %12, align 4
  %359 = getelementptr inbounds double, double* %358, i32 1
  %360 = load double, double* %359, align 8
  %361 = fmul double %357, %360
  %362 = fadd double %356, %361
  %363 = load double, double* %7, align 8
  %364 = load double*, double** %12, align 4
  %365 = getelementptr inbounds double, double* %364, i32 2
  %366 = load double, double* %365, align 8
  %367 = fmul double %363, %366
  %368 = fadd double %362, %367
  %369 = load double, double* %8, align 8
  %370 = load double*, double** %12, align 4
  %371 = getelementptr inbounds double, double* %370, i32 3
  %372 = load double, double* %371, align 8
  %373 = fmul double %369, %372
  %374 = fadd double %368, %373
  %375 = load double, double* %9, align 8
  %376 = load double*, double** %12, align 4
  %377 = getelementptr inbounds double, double* %376, i32 4
  %378 = load double, double* %377, align 8
  %379 = fmul double %375, %378
  %380 = fadd double %374, %379
  %381 = load double, double* %10, align 8
  %382 = load double*, double** %12, align 4
  %383 = getelementptr inbounds double, double* %382, i32 5
  %384 = load double, double* %383, align 8
  %385 = fmul double %381, %384
  %386 = fadd double %380, %385
  %387 = load double*, double** %3, align 4
  %388 = getelementptr inbounds double, double* %387, i32 1
  store double %386, double* %388, align 8
  %389 = load double*, double** %12, align 4
  %390 = getelementptr inbounds double, double* %389, i32 6
  store double* %390, double** %12, align 4
  %391 = load double, double* %5, align 8
  %392 = load double, double* %6, align 8
  %393 = fsub double %391, %392
  %394 = load double, double* %10, align 8
  %395 = fadd double %393, %394
  store double %395, double* %5, align 8
  %396 = load double, double* %7, align 8
  %397 = load double, double* %8, align 8
  %398 = fsub double %396, %397
  %399 = load double, double* %9, align 8
  %400 = fsub double %398, %399
  store double %400, double* %7, align 8
  %401 = load double, double* %5, align 8
  %402 = load double*, double** %12, align 4
  %403 = getelementptr inbounds double, double* %402, i32 0
  %404 = load double, double* %403, align 8
  %405 = fmul double %401, %404
  %406 = load double, double* %7, align 8
  %407 = load double*, double** %12, align 4
  %408 = getelementptr inbounds double, double* %407, i32 1
  %409 = load double, double* %408, align 8
  %410 = fmul double %406, %409
  %411 = fadd double %405, %410
  %412 = load double*, double** %3, align 4
  %413 = getelementptr inbounds double, double* %412, i32 13
  store double %411, double* %413, align 8
  %414 = load double, double* %5, align 8
  %415 = load double*, double** %12, align 4
  %416 = getelementptr inbounds double, double* %415, i32 2
  %417 = load double, double* %416, align 8
  %418 = fmul double %414, %417
  %419 = load double, double* %7, align 8
  %420 = load double*, double** %12, align 4
  %421 = getelementptr inbounds double, double* %420, i32 3
  %422 = load double, double* %421, align 8
  %423 = fmul double %419, %422
  %424 = fadd double %418, %423
  %425 = load double*, double** %3, align 4
  %426 = getelementptr inbounds double, double* %425, i32 4
  store double %424, double* %426, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #1

; Function Attrs: nounwind
declare arm_aapcscc double @sin(double) #1

; Function Attrs: nounwind
declare arm_aapcscc double @tan(double) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
