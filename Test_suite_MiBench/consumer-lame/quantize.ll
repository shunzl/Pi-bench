; ModuleID = 'quantize.c'
source_filename = "quantize.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bitrate_table = external global [2 x [15 x i32]], align 4
@convert_mdct = external global i32, align 4
@reduce_sidechannel = external global i32, align 4
@masking_lower = external global float, align 4
@.str = private unnamed_addr constant [20 x i8] c"this_bits>=min_bits\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"quantize.c\00", align 1
@__func__.VBR_iteration_loop = private unnamed_addr constant [19 x i8] c"VBR_iteration_loop\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"this_bits<=max_bits\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"(int)cod_info->part2_3_length <= max_bits\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"used_bits <= bits\00", align 1
@nr_of_sfb_block = external global [6 x [3 x [4 x i32]]], align 4
@outer_loop.OldValue = internal global [2 x i32] [i32 180, i32 180], align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"iteration != 1\00", align 1
@__func__.outer_loop = private unnamed_addr constant [11 x i8] c"outer_loop\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cod_info->global_gain < 256\00", align 1
@pretab = external global [21 x i32], align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"s<Q_MAX\00", align 1
@__func__.calc_noise1 = private unnamed_addr constant [12 x i8] c"calc_noise1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"s>=0\00", align 1
@pow20 = external global [256 x double], align 8
@scalefac_band = external global %struct.scalefac_struct, align 4
@pow43 = external global [8208 x double], align 8

; Function Attrs: nounwind
define arm_aapcscc void @iteration_loop(%struct.lame_global_flags*, [2 x double]*, double*, [2 x [576 x double]]*, [2 x %struct.III_psy_ratio]*, %struct.III_side_info_t*, [2 x [576 x i32]]*, [2 x %struct.III_scalefac_t]*) #0 {
  %9 = alloca %struct.lame_global_flags*, align 4
  %10 = alloca [2 x double]*, align 4
  %11 = alloca double*, align 4
  %12 = alloca [2 x [576 x double]]*, align 4
  %13 = alloca [2 x %struct.III_psy_ratio]*, align 4
  %14 = alloca %struct.III_side_info_t*, align 4
  %15 = alloca [2 x [576 x i32]]*, align 4
  %16 = alloca [2 x %struct.III_scalefac_t]*, align 4
  %17 = alloca [4 x [21 x double]], align 8
  %18 = alloca [4 x double], align 8
  %19 = alloca [2 x %struct.III_psy_xmin], align 8
  %20 = alloca %struct.gr_info*, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [2 x i32], align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %9, align 4
  store [2 x double]* %1, [2 x double]** %10, align 4
  store double* %2, double** %11, align 4
  store [2 x [576 x double]]* %3, [2 x [576 x double]]** %12, align 4
  store [2 x %struct.III_psy_ratio]* %4, [2 x %struct.III_psy_ratio]** %13, align 4
  store %struct.III_side_info_t* %5, %struct.III_side_info_t** %14, align 4
  store [2 x [576 x i32]]* %6, [2 x [576 x i32]]** %15, align 4
  store [2 x %struct.III_scalefac_t]* %7, [2 x %struct.III_scalefac_t]** %16, align 4
  %28 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %29 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %30 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  call arm_aapcscc void @iteration_init(%struct.lame_global_flags* %28, %struct.III_side_info_t* %29, [2 x [576 x i32]]* %30)
  %31 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %32 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %31, i32 0, i32 43
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* @bitrate_table, i32 0, i32 %33
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %36 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 50
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [15 x i32], [15 x i32]* %34, i32 0, i32 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %26, align 4
  %40 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  call arm_aapcscc void @getframebits(%struct.lame_global_flags* %40, i32* %21, i32* %22)
  %41 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %42 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call arm_aapcscc i32 @ResvFrameBegin(%struct.lame_global_flags* %41, %struct.III_side_info_t* %42, i32 %43, i32 %44)
  store i32 0, i32* %24, align 4
  br label %46

; <label>:46:                                     ; preds = %231, %8
  %47 = load i32, i32* %24, align 4
  %48 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %49 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %48, i32 0, i32 45
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %234

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* @convert_mdct, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %52
  %56 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %57 = load i32, i32* %24, align 4
  %58 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %56, i32 %57
  %59 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %58, i32 0, i32 0
  %60 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %61 = load i32, i32* %24, align 4
  %62 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %60, i32 %61
  %63 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %62, i32 0, i32 0
  call arm_aapcscc void @ms_convert([576 x double]* %59, [576 x double]* %63)
  br label %64

; <label>:64:                                     ; preds = %55, %52
  %65 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %66 = load [2 x double]*, [2 x double]** %10, align 4
  %67 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i32 0, i32 0
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %24, align 4
  call arm_aapcscc void @on_pe(%struct.lame_global_flags* %65, [2 x double]* %66, %struct.III_side_info_t* %67, i32* %68, i32 %69, i32 %70)
  %71 = load i32, i32* @reduce_sidechannel, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

; <label>:73:                                     ; preds = %64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i32 0, i32 0
  %75 = load double*, double** %11, align 4
  %76 = load i32, i32* %24, align 4
  %77 = getelementptr inbounds double, double* %75, i32 %76
  %78 = load double, double* %77, align 8
  %79 = load i32, i32* %22, align 4
  call arm_aapcscc void @reduce_side(i32* %74, double %78, i32 %79)
  br label %80

; <label>:80:                                     ; preds = %73, %64
  store i32 0, i32* %23, align 4
  br label %81

; <label>:81:                                     ; preds = %227, %80
  %82 = load i32, i32* %23, align 4
  %83 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %84 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %83, i32 0, i32 46
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %230

; <label>:87:                                     ; preds = %81
  %88 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %89 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %88, i32 0, i32 4
  %90 = load i32, i32* %24, align 4
  %91 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %89, i32 0, i32 %90
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i32, i32* %23, align 4
  %94 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %92, i32 0, i32 %93
  %95 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %94, i32 0, i32 0
  store %struct.gr_info* %95, %struct.gr_info** %20, align 4
  %96 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %97 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %98 = load i32, i32* %24, align 4
  %99 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %97, i32 %98
  %100 = load i32, i32* %23, align 4
  %101 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %99, i32 0, i32 %100
  %102 = getelementptr inbounds [576 x double], [576 x double]* %101, i32 0, i32 0
  %103 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %104 = call arm_aapcscc i32 @init_outer_loop(%struct.lame_global_flags* %96, double* %102, %struct.gr_info* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %124, label %106

; <label>:106:                                    ; preds = %87
  %107 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %108 = load i32, i32* %24, align 4
  %109 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %107, i32 %108
  %110 = load i32, i32* %23, align 4
  %111 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %109, i32 0, i32 %110
  %112 = bitcast %struct.III_scalefac_t* %111 to i8*
  call void @llvm.memset.p0i8.i32(i8* %112, i8 0, i32 244, i32 4, i1 false)
  %113 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %114 = load i32, i32* %24, align 4
  %115 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %113, i32 %114
  %116 = load i32, i32* %23, align 4
  %117 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %115, i32 0, i32 %116
  %118 = getelementptr inbounds [576 x i32], [576 x i32]* %117, i32 0, i32 0
  %119 = bitcast i32* %118 to i8*
  call void @llvm.memset.p0i8.i32(i8* %119, i8 0, i32 2304, i32 4, i1 false)
  %120 = getelementptr inbounds [4 x double], [4 x double]* %18, i32 0, i32 3
  store double 0.000000e+00, double* %120, align 8
  %121 = getelementptr inbounds [4 x double], [4 x double]* %18, i32 0, i32 2
  store double 0.000000e+00, double* %121, align 8
  %122 = getelementptr inbounds [4 x double], [4 x double]* %18, i32 0, i32 1
  store double 0.000000e+00, double* %122, align 8
  %123 = getelementptr inbounds [4 x double], [4 x double]* %18, i32 0, i32 0
  store double 0.000000e+00, double* %123, align 8
  br label %168

; <label>:124:                                    ; preds = %87
  %125 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %126 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %127 = load i32, i32* %24, align 4
  %128 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %126, i32 %127
  %129 = load i32, i32* %23, align 4
  %130 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %128, i32 0, i32 %129
  %131 = getelementptr inbounds [576 x double], [576 x double]* %130, i32 0, i32 0
  %132 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %13, align 4
  %133 = load i32, i32* %24, align 4
  %134 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %132, i32 %133
  %135 = load i32, i32* %23, align 4
  %136 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %134, i32 0, i32 %135
  %137 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %138 = load i32, i32* %23, align 4
  %139 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %19, i32 0, i32 %138
  %140 = call arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags* %125, double* %131, %struct.III_psy_ratio* %136, %struct.gr_info* %137, %struct.III_psy_xmin* %139)
  %141 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %142 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %143 = load i32, i32* %24, align 4
  %144 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %142, i32 %143
  %145 = load i32, i32* %23, align 4
  %146 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %144, i32 0, i32 %145
  %147 = getelementptr inbounds [576 x double], [576 x double]* %146, i32 0, i32 0
  %148 = load i32, i32* %23, align 4
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i32 0, i32 %148
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [4 x double], [4 x double]* %18, i32 0, i32 0
  %152 = load i32, i32* %23, align 4
  %153 = getelementptr inbounds [2 x %struct.III_psy_xmin], [2 x %struct.III_psy_xmin]* %19, i32 0, i32 %152
  %154 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %155 = load i32, i32* %24, align 4
  %156 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %154, i32 %155
  %157 = load i32, i32* %23, align 4
  %158 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %156, i32 0, i32 %157
  %159 = getelementptr inbounds [576 x i32], [576 x i32]* %158, i32 0, i32 0
  %160 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %161 = load i32, i32* %24, align 4
  %162 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %160, i32 %161
  %163 = load i32, i32* %23, align 4
  %164 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %162, i32 0, i32 %163
  %165 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %166 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %17, i32 0, i32 0
  %167 = load i32, i32* %23, align 4
  call arm_aapcscc void @outer_loop(%struct.lame_global_flags* %141, double* %147, i32 %150, double* %151, %struct.III_psy_xmin* %153, i32* %159, %struct.III_scalefac_t* %164, %struct.gr_info* %165, [21 x double]* %166, i32 %167)
  br label %168

; <label>:168:                                    ; preds = %124, %106
  %169 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %173 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %174 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  call arm_aapcscc void @best_scalefac_store(%struct.lame_global_flags* %169, i32 %170, i32 %171, [2 x [576 x i32]]* %172, %struct.III_side_info_t* %173, [2 x %struct.III_scalefac_t]* %174)
  %175 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %176 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %175, i32 0, i32 64
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %194

; <label>:179:                                    ; preds = %168
  %180 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %181 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %194

; <label>:184:                                    ; preds = %179
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* %23, align 4
  %187 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %188 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %189 = load i32, i32* %24, align 4
  %190 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %188, i32 %189
  %191 = load i32, i32* %23, align 4
  %192 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %190, i32 0, i32 %191
  %193 = getelementptr inbounds [576 x i32], [576 x i32]* %192, i32 0, i32 0
  call arm_aapcscc void @best_huffman_divide(i32 %185, i32 %186, %struct.gr_info* %187, i32* %193)
  br label %194

; <label>:194:                                    ; preds = %184, %179, %168
  %195 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %196 = load %struct.gr_info*, %struct.gr_info** %20, align 4
  %197 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %198 = load i32, i32* %22, align 4
  call arm_aapcscc void @ResvAdjust(%struct.lame_global_flags* %195, %struct.gr_info* %196, %struct.III_side_info_t* %197, i32 %198)
  store i32 0, i32* %25, align 4
  br label %199

; <label>:199:                                    ; preds = %223, %194
  %200 = load i32, i32* %25, align 4
  %201 = icmp slt i32 %200, 576
  br i1 %201, label %202, label %226

; <label>:202:                                    ; preds = %199
  %203 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %204 = load i32, i32* %24, align 4
  %205 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %203, i32 %204
  %206 = load i32, i32* %23, align 4
  %207 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %205, i32 0, i32 %206
  %208 = load i32, i32* %25, align 4
  %209 = getelementptr inbounds [576 x double], [576 x double]* %207, i32 0, i32 %208
  %210 = load double, double* %209, align 8
  %211 = fcmp olt double %210, 0.000000e+00
  br i1 %211, label %212, label %222

; <label>:212:                                    ; preds = %202
  %213 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %214 = load i32, i32* %24, align 4
  %215 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %213, i32 %214
  %216 = load i32, i32* %23, align 4
  %217 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %215, i32 0, i32 %216
  %218 = load i32, i32* %25, align 4
  %219 = getelementptr inbounds [576 x i32], [576 x i32]* %217, i32 0, i32 %218
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %220, -1
  store i32 %221, i32* %219, align 4
  br label %222

; <label>:222:                                    ; preds = %212, %202
  br label %223

; <label>:223:                                    ; preds = %222
  %224 = load i32, i32* %25, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %25, align 4
  br label %199

; <label>:226:                                    ; preds = %199
  br label %227

; <label>:227:                                    ; preds = %226
  %228 = load i32, i32* %23, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %23, align 4
  br label %81

; <label>:230:                                    ; preds = %81
  br label %231

; <label>:231:                                    ; preds = %230
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  br label %46

; <label>:234:                                    ; preds = %46
  %235 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %236 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %237 = load i32, i32* %22, align 4
  call arm_aapcscc void @ResvFrameEnd(%struct.lame_global_flags* %235, %struct.III_side_info_t* %236, i32 %237)
  ret void
}

declare arm_aapcscc void @iteration_init(%struct.lame_global_flags*, %struct.III_side_info_t*, [2 x [576 x i32]]*) #1

declare arm_aapcscc void @getframebits(%struct.lame_global_flags*, i32*, i32*) #1

declare arm_aapcscc i32 @ResvFrameBegin(%struct.lame_global_flags*, %struct.III_side_info_t*, i32, i32) #1

declare arm_aapcscc void @ms_convert([576 x double]*, [576 x double]*) #1

declare arm_aapcscc void @on_pe(%struct.lame_global_flags*, [2 x double]*, %struct.III_side_info_t*, i32*, i32, i32) #1

declare arm_aapcscc void @reduce_side(i32*, double, i32) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @init_outer_loop(%struct.lame_global_flags*, double*, %struct.gr_info*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lame_global_flags*, align 4
  %6 = alloca double*, align 4
  %7 = alloca %struct.gr_info*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x double], align 8
  %12 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 4
  store double* %1, double** %6, align 4
  store %struct.gr_info* %2, %struct.gr_info** %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

; <label>:13:                                     ; preds = %21, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %13
  %17 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %18 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %17, i32 0, i32 20
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 %19
  store i32 0, i32* %20, align 4
  br label %21

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %13

; <label>:24:                                     ; preds = %13
  %25 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %26 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %25, i32 0, i32 19
  store i32* getelementptr inbounds ([6 x [3 x [4 x i32]]], [6 x [3 x [4 x i32]]]* @nr_of_sfb_block, i32 0, i32 0, i32 0, i32 0), i32** %26, align 4
  %27 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %28 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %30 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %32 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %34 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %33, i32 0, i32 4
  store i32 0, i32* %34, align 4
  %35 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %36 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %35, i32 0, i32 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %39 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %38, i32 0, i32 8
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %42 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %41, i32 0, i32 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %45 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %44, i32 0, i32 9
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %48 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %47, i32 0, i32 9
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %51 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %50, i32 0, i32 9
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %51, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %54 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %53, i32 0, i32 10
  store i32 0, i32* %54, align 4
  %55 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %56 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %55, i32 0, i32 11
  store i32 0, i32* %56, align 4
  %57 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %58 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %57, i32 0, i32 15
  store i32 0, i32* %58, align 4
  %59 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %60 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %59, i32 0, i32 12
  store i32 0, i32* %60, align 4
  %61 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %62 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %61, i32 0, i32 13
  store i32 0, i32* %62, align 4
  %63 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %64 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %63, i32 0, i32 3
  store i32 210, i32* %64, align 4
  %65 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %66 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %65, i32 0, i32 14
  store i32 0, i32* %66, align 4
  %67 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %68 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %67, i32 0, i32 18
  store i32 0, i32* %68, align 4
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 4
  %70 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 20
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %220

; <label>:73:                                     ; preds = %24
  %74 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %75 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %219

; <label>:78:                                     ; preds = %73
  store i32 0, i32* %10, align 4
  br label %79

; <label>:79:                                     ; preds = %85, %78
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %88

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %83
  store double 0.000000e+00, double* %84, align 8
  br label %85

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %79

; <label>:88:                                     ; preds = %79
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %89

; <label>:89:                                     ; preds = %116, %88
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 192
  br i1 %91, label %92, label %119

; <label>:92:                                     ; preds = %89
  store i32 0, i32* %10, align 4
  br label %93

; <label>:93:                                     ; preds = %112, %92
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 3
  br i1 %95, label %96, label %115

; <label>:96:                                     ; preds = %93
  %97 = load double*, double** %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds double, double* %97, i32 %98
  %100 = load double, double* %99, align 8
  %101 = load double*, double** %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = getelementptr inbounds double, double* %101, i32 %102
  %104 = load double, double* %103, align 8
  %105 = fmul double %100, %104
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %106
  %108 = load double, double* %107, align 8
  %109 = fadd double %108, %105
  store double %109, double* %107, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %112

; <label>:112:                                    ; preds = %96
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %93

; <label>:115:                                    ; preds = %93
  br label %116

; <label>:116:                                    ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %89

; <label>:119:                                    ; preds = %89
  store double 1.000000e-12, double* %12, align 8
  store i32 0, i32* %10, align 4
  br label %120

; <label>:120:                                    ; preds = %137, %119
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 3
  br i1 %122, label %123, label %140

; <label>:123:                                    ; preds = %120
  %124 = load double, double* %12, align 8
  %125 = load i32, i32* %10, align 4
  %126 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %125
  %127 = load double, double* %126, align 8
  %128 = fcmp ogt double %124, %127
  br i1 %128, label %129, label %131

; <label>:129:                                    ; preds = %123
  %130 = load double, double* %12, align 8
  br label %135

; <label>:131:                                    ; preds = %123
  %132 = load i32, i32* %10, align 4
  %133 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %132
  %134 = load double, double* %133, align 8
  br label %135

; <label>:135:                                    ; preds = %131, %129
  %136 = phi double [ %130, %129 ], [ %134, %131 ]
  store double %136, double* %12, align 8
  br label %137

; <label>:137:                                    ; preds = %135
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %120

; <label>:140:                                    ; preds = %120
  store i32 0, i32* %10, align 4
  br label %141

; <label>:141:                                    ; preds = %160, %140
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 3
  br i1 %143, label %144, label %163

; <label>:144:                                    ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %145
  %147 = load double, double* %146, align 8
  %148 = fcmp ogt double %147, 1.000000e-12
  br i1 %148, label %149, label %153

; <label>:149:                                    ; preds = %144
  %150 = load i32, i32* %10, align 4
  %151 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %150
  %152 = load double, double* %151, align 8
  br label %154

; <label>:153:                                    ; preds = %144
  br label %154

; <label>:154:                                    ; preds = %153, %149
  %155 = phi double [ %152, %149 ], [ 1.000000e-12, %153 ]
  %156 = load double, double* %12, align 8
  %157 = fdiv double %155, %156
  %158 = load i32, i32* %10, align 4
  %159 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %158
  store double %157, double* %159, align 8
  br label %160

; <label>:160:                                    ; preds = %154
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %141

; <label>:163:                                    ; preds = %141
  store i32 0, i32* %10, align 4
  br label %164

; <label>:164:                                    ; preds = %204, %163
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 3
  br i1 %166, label %167, label %207

; <label>:167:                                    ; preds = %164
  %168 = load i32, i32* %10, align 4
  %169 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 %168
  %170 = load double, double* %169, align 8
  %171 = call arm_aapcscc double @log(double %170) #5
  %172 = fmul double -5.000000e-01, %171
  %173 = fdiv double %172, 0x3FE62E42FEFA39EF
  %174 = fadd double %173, 5.000000e-01
  %175 = fptosi double %174 to i32
  %176 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %177 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %176, i32 0, i32 9
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %177, i32 0, i32 %178
  store i32 %175, i32* %179, align 4
  %180 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %181 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %180, i32 0, i32 9
  %182 = load i32, i32* %10, align 4
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %181, i32 0, i32 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %184, 2
  br i1 %185, label %186, label %191

; <label>:186:                                    ; preds = %167
  %187 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %188 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %187, i32 0, i32 9
  %189 = load i32, i32* %10, align 4
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %188, i32 0, i32 %189
  store i32 2, i32* %190, align 4
  br label %191

; <label>:191:                                    ; preds = %186, %167
  %192 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %193 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %192, i32 0, i32 9
  %194 = load i32, i32* %10, align 4
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %193, i32 0, i32 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %203

; <label>:198:                                    ; preds = %191
  %199 = load %struct.gr_info*, %struct.gr_info** %7, align 4
  %200 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %199, i32 0, i32 9
  %201 = load i32, i32* %10, align 4
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %200, i32 0, i32 %201
  store i32 0, i32* %202, align 4
  br label %203

; <label>:203:                                    ; preds = %198, %191
  br label %204

; <label>:204:                                    ; preds = %203
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %164

; <label>:207:                                    ; preds = %164
  %208 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  %209 = load double, double* %208, align 8
  %210 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 1
  %211 = load double, double* %210, align 8
  %212 = fadd double %209, %211
  %213 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 2
  %214 = load double, double* %213, align 8
  %215 = fadd double %212, %214
  %216 = fcmp olt double 1.000000e-99, %215
  br i1 %216, label %217, label %218

; <label>:217:                                    ; preds = %207
  store i32 1, i32* %4, align 4
  br label %237

; <label>:218:                                    ; preds = %207
  store i32 0, i32* %4, align 4
  br label %237

; <label>:219:                                    ; preds = %73
  br label %220

; <label>:220:                                    ; preds = %219, %24
  store i32 0, i32* %8, align 4
  br label %221

; <label>:221:                                    ; preds = %233, %220
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %222, 576
  br i1 %223, label %224, label %236

; <label>:224:                                    ; preds = %221
  %225 = load double*, double** %6, align 4
  %226 = load i32, i32* %8, align 4
  %227 = getelementptr inbounds double, double* %225, i32 %226
  %228 = load double, double* %227, align 8
  %229 = call arm_aapcscc double @fabs(double %228) #6
  %230 = fcmp olt double 1.000000e-99, %229
  br i1 %230, label %231, label %232

; <label>:231:                                    ; preds = %224
  store i32 1, i32* %4, align 4
  br label %237

; <label>:232:                                    ; preds = %224
  br label %233

; <label>:233:                                    ; preds = %232
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %221

; <label>:236:                                    ; preds = %221
  store i32 0, i32* %4, align 4
  br label %237

; <label>:237:                                    ; preds = %236, %231, %218, %217
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #2

declare arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags*, double*, %struct.III_psy_ratio*, %struct.gr_info*, %struct.III_psy_xmin*) #1

; Function Attrs: nounwind
define arm_aapcscc void @outer_loop(%struct.lame_global_flags*, double*, i32, double*, %struct.III_psy_xmin*, i32*, %struct.III_scalefac_t*, %struct.gr_info*, [21 x double]*, i32) #0 {
  %11 = alloca %struct.lame_global_flags*, align 4
  %12 = alloca double*, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 4
  %15 = alloca %struct.III_psy_xmin*, align 4
  %16 = alloca i32*, align 4
  %17 = alloca %struct.III_scalefac_t*, align 4
  %18 = alloca %struct.gr_info*, align 4
  %19 = alloca [21 x double]*, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.III_scalefac_t, align 4
  %22 = alloca %struct.gr_info, align 4
  %23 = alloca [576 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [576 x double], align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca i32, align 4
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca [4 x [21 x double]], align 8
  %41 = alloca [4 x [21 x double]], align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %11, align 4
  store double* %1, double** %12, align 4
  store i32 %2, i32* %13, align 4
  store double* %3, double** %14, align 4
  store %struct.III_psy_xmin* %4, %struct.III_psy_xmin** %15, align 4
  store i32* %5, i32** %16, align 4
  store %struct.III_scalefac_t* %6, %struct.III_scalefac_t** %17, align 4
  store %struct.gr_info* %7, %struct.gr_info** %18, align 4
  store [21 x double]* %8, [21 x double]** %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %32, align 4
  store i32 100, i32* %36, align 4
  store double 0.000000e+00, double* %37, align 8
  store double 0.000000e+00, double* %38, align 8
  store double 0.000000e+00, double* %39, align 8
  store i32 1, i32* %42, align 4
  store i32 1, i32* %43, align 4
  store i32 0, i32* %25, align 4
  br label %46

; <label>:46:                                     ; preds = %247, %10
  %47 = load i32, i32* %43, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %248

; <label>:49:                                     ; preds = %46
  store i32 0, i32* %44, align 4
  %50 = load i32, i32* %25, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %25, align 4
  %52 = load i32, i32* %42, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %90

; <label>:54:                                     ; preds = %49
  store i32 0, i32* %42, align 4
  %55 = bitcast %struct.III_scalefac_t* %21 to i8*
  call void @llvm.memset.p0i8.i32(i8* %55, i8 0, i32 244, i32 4, i1 false)
  store i32 0, i32* %24, align 4
  br label %56

; <label>:56:                                     ; preds = %72, %54
  %57 = load i32, i32* %24, align 4
  %58 = icmp slt i32 %57, 576
  br i1 %58, label %59, label %75

; <label>:59:                                     ; preds = %56
  %60 = load double*, double** %12, align 4
  %61 = load i32, i32* %24, align 4
  %62 = getelementptr inbounds double, double* %60, i32 %61
  %63 = load double, double* %62, align 8
  %64 = call arm_aapcscc double @fabs(double %63) #6
  store double %64, double* %30, align 8
  %65 = load double, double* %30, align 8
  %66 = call arm_aapcscc double @sqrt(double %65) #5
  %67 = load double, double* %30, align 8
  %68 = fmul double %66, %67
  %69 = call arm_aapcscc double @sqrt(double %68) #5
  %70 = load i32, i32* %24, align 4
  %71 = getelementptr inbounds [576 x double], [576 x double]* %29, i32 0, i32 %70
  store double %69, double* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %59
  %73 = load i32, i32* %24, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %24, align 4
  br label %56

; <label>:75:                                     ; preds = %56
  %76 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %20, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* @outer_loop.OldValue, i32 0, i32 %78
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [576 x i32], [576 x i32]* %23, i32 0, i32 0
  %82 = getelementptr inbounds [576 x double], [576 x double]* %29, i32 0, i32 0
  %83 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %84 = call arm_aapcscc i32 @bin_search_StepSize2(%struct.lame_global_flags* %76, i32 %77, i32 %80, i32* %81, double* %82, %struct.gr_info* %83)
  store i32 %84, i32* %27, align 4
  %85 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %86 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %20, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* @outer_loop.OldValue, i32 0, i32 %88
  store i32 %87, i32* %89, align 4
  br label %90

; <label>:90:                                     ; preds = %75, %49
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %93 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 4
  %95 = sub i32 %91, %94
  store i32 %95, i32* %28, align 4
  %96 = load i32, i32* %28, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* %25, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %102, label %101

; <label>:101:                                    ; preds = %98
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 805, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.outer_loop, i32 0, i32 0))
  br label %102

; <label>:102:                                    ; preds = %101, %98
  %103 = phi i1 [ true, %98 ], [ false, %101 ]
  %104 = zext i1 %103 to i32
  store i32 0, i32* %43, align 4
  br label %186

; <label>:105:                                    ; preds = %90
  %106 = load i32, i32* %25, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %126

; <label>:108:                                    ; preds = %105
  %109 = load i32, i32* %27, align 4
  %110 = load i32, i32* %28, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %123

; <label>:112:                                    ; preds = %108
  %113 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %114 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %118 = getelementptr inbounds [576 x double], [576 x double]* %29, i32 0, i32 0
  %119 = getelementptr inbounds [576 x i32], [576 x i32]* %23, i32 0, i32 0
  %120 = load i32, i32* %28, align 4
  %121 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %122 = call arm_aapcscc i32 @inner_loop(%struct.lame_global_flags* %117, double* %118, i32* %119, i32 %120, %struct.gr_info* %121)
  store i32 %122, i32* %45, align 4
  br label %125

; <label>:123:                                    ; preds = %108
  %124 = load i32, i32* %27, align 4
  store i32 %124, i32* %45, align 4
  br label %125

; <label>:125:                                    ; preds = %123, %112
  br label %133

; <label>:126:                                    ; preds = %105
  %127 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %128 = getelementptr inbounds [576 x double], [576 x double]* %29, i32 0, i32 0
  %129 = getelementptr inbounds [576 x i32], [576 x i32]* %23, i32 0, i32 0
  %130 = load i32, i32* %28, align 4
  %131 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %132 = call arm_aapcscc i32 @inner_loop(%struct.lame_global_flags* %127, double* %128, i32* %129, i32 %130, %struct.gr_info* %131)
  store i32 %132, i32* %45, align 4
  br label %133

; <label>:133:                                    ; preds = %126, %125
  %134 = load i32, i32* %45, align 4
  %135 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %136 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %138 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %137, i32 0, i32 61
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %133
  store i32 0, i32* %32, align 4
  br label %150

; <label>:142:                                    ; preds = %133
  %143 = load double*, double** %12, align 4
  %144 = getelementptr inbounds [576 x i32], [576 x i32]* %23, i32 0, i32 0
  %145 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %146 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %40, i32 0, i32 0
  %147 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %41, i32 0, i32 0
  %148 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %15, align 4
  %149 = call arm_aapcscc i32 @calc_noise1(double* %143, i32* %144, %struct.gr_info* %145, [21 x double]* %146, [21 x double]* %147, %struct.III_psy_xmin* %148, %struct.III_scalefac_t* %21, double* %34, double* %35, double* %33)
  store i32 %149, i32* %32, align 4
  br label %150

; <label>:150:                                    ; preds = %142, %141
  %151 = load i32, i32* %25, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %154

; <label>:153:                                    ; preds = %150
  store i32 1, i32* %31, align 4
  br label %167

; <label>:154:                                    ; preds = %150
  %155 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %156 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %155, i32 0, i32 18
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %36, align 4
  %159 = load double, double* %39, align 8
  %160 = load double, double* %38, align 8
  %161 = load double, double* %37, align 8
  %162 = load i32, i32* %32, align 4
  %163 = load double, double* %35, align 8
  %164 = load double, double* %34, align 8
  %165 = load double, double* %33, align 8
  %166 = call arm_aapcscc i32 @quant_compare(i32 %157, i32 %158, double %159, double %160, double %161, i32 %162, double %163, double %164, double %165)
  store i32 %166, i32* %31, align 4
  br label %167

; <label>:167:                                    ; preds = %154, %153
  %168 = load i32, i32* %31, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %185

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %32, align 4
  store i32 %171, i32* %36, align 4
  %172 = load double, double* %33, align 8
  store double %172, double* %37, align 8
  %173 = load double, double* %34, align 8
  store double %173, double* %38, align 8
  %174 = load double, double* %35, align 8
  store double %174, double* %39, align 8
  %175 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %17, align 4
  %176 = bitcast %struct.III_scalefac_t* %175 to i8*
  %177 = bitcast %struct.III_scalefac_t* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %176, i8* %177, i32 244, i32 4, i1 false)
  %178 = load i32*, i32** %16, align 4
  %179 = bitcast i32* %178 to i8*
  %180 = getelementptr inbounds [576 x i32], [576 x i32]* %23, i32 0, i32 0
  %181 = bitcast i32* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %179, i8* %181, i32 2304, i32 4, i1 false)
  %182 = bitcast %struct.gr_info* %22 to i8*
  %183 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %184 = bitcast %struct.gr_info* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %182, i8* %184, i32 112, i32 4, i1 false)
  br label %185

; <label>:185:                                    ; preds = %170, %167
  br label %186

; <label>:186:                                    ; preds = %185, %102
  %187 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %188 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %187, i32 0, i32 62
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

; <label>:191:                                    ; preds = %186
  %192 = load i32, i32* %32, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %191
  store i32 0, i32* %43, align 4
  br label %195

; <label>:195:                                    ; preds = %194, %191
  br label %196

; <label>:196:                                    ; preds = %195, %186
  %197 = load i32, i32* %43, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %232

; <label>:199:                                    ; preds = %196
  %200 = getelementptr inbounds [576 x double], [576 x double]* %29, i32 0, i32 0
  %201 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %202 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %41, i32 0, i32 0
  call arm_aapcscc void @amp_scalefac_bands(double* %200, %struct.gr_info* %201, %struct.III_scalefac_t* %21, [21 x double]* %202)
  %203 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %204 = call arm_aapcscc i32 @loop_break(%struct.III_scalefac_t* %21, %struct.gr_info* %203)
  store i32 %204, i32* %26, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %227

; <label>:206:                                    ; preds = %199
  %207 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %208 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %207, i32 0, i32 43
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %214

; <label>:211:                                    ; preds = %206
  %212 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %213 = call arm_aapcscc i32 @scale_bitcount(%struct.III_scalefac_t* %21, %struct.gr_info* %212)
  store i32 %213, i32* %26, align 4
  br label %217

; <label>:214:                                    ; preds = %206
  %215 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %216 = call arm_aapcscc i32 @scale_bitcount_lsf(%struct.III_scalefac_t* %21, %struct.gr_info* %215)
  store i32 %216, i32* %26, align 4
  br label %217

; <label>:217:                                    ; preds = %214, %211
  %218 = load i32, i32* %26, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

; <label>:220:                                    ; preds = %217
  %221 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %222 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %221, i32 0, i32 13
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

; <label>:225:                                    ; preds = %220
  store i32 1, i32* %44, align 4
  br label %226

; <label>:226:                                    ; preds = %225, %220, %217
  br label %227

; <label>:227:                                    ; preds = %226, %199
  %228 = load i32, i32* %26, align 4
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %43, align 4
  br label %232

; <label>:232:                                    ; preds = %227, %196
  %233 = load i32, i32* %44, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

; <label>:235:                                    ; preds = %232
  %236 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %237 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %236, i32 0, i32 19
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

; <label>:240:                                    ; preds = %235
  %241 = load %struct.lame_global_flags*, %struct.lame_global_flags** %11, align 4
  %242 = load double*, double** %12, align 4
  %243 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %244 = call arm_aapcscc i32 @init_outer_loop(%struct.lame_global_flags* %241, double* %242, %struct.gr_info* %243)
  store i32 1, i32* %42, align 4
  store i32 1, i32* %43, align 4
  %245 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %246 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %245, i32 0, i32 13
  store i32 1, i32* %246, align 4
  br label %247

; <label>:247:                                    ; preds = %240, %235, %232
  br label %46

; <label>:248:                                    ; preds = %46
  %249 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %250 = bitcast %struct.gr_info* %249 to i8*
  %251 = bitcast %struct.gr_info* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %250, i8* %251, i32 112, i32 4, i1 false)
  %252 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %253 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %252, i32 0, i32 15
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %256 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = add i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load %struct.gr_info*, %struct.gr_info** %18, align 4
  %260 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = icmp ult i32 %261, 256
  br i1 %262, label %264, label %263

; <label>:263:                                    ; preds = %248
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 891, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.outer_loop, i32 0, i32 0))
  br label %264

; <label>:264:                                    ; preds = %263, %248
  %265 = phi i1 [ true, %248 ], [ false, %263 ]
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %36, align 4
  %268 = sitofp i32 %267 to double
  %269 = load double*, double** %14, align 4
  %270 = getelementptr inbounds double, double* %269, i32 0
  store double %268, double* %270, align 8
  %271 = load double, double* %37, align 8
  %272 = load double*, double** %14, align 4
  %273 = getelementptr inbounds double, double* %272, i32 1
  store double %271, double* %273, align 8
  %274 = load double, double* %38, align 8
  %275 = load double*, double** %14, align 4
  %276 = getelementptr inbounds double, double* %275, i32 2
  store double %274, double* %276, align 8
  %277 = load double, double* %39, align 8
  %278 = load double*, double** %14, align 4
  %279 = getelementptr inbounds double, double* %278, i32 3
  store double %277, double* %279, align 8
  ret void
}

declare arm_aapcscc void @best_scalefac_store(%struct.lame_global_flags*, i32, i32, [2 x [576 x i32]]*, %struct.III_side_info_t*, [2 x %struct.III_scalefac_t]*) #1

declare arm_aapcscc void @best_huffman_divide(i32, i32, %struct.gr_info*, i32*) #1

declare arm_aapcscc void @ResvAdjust(%struct.lame_global_flags*, %struct.gr_info*, %struct.III_side_info_t*, i32) #1

declare arm_aapcscc void @ResvFrameEnd(%struct.lame_global_flags*, %struct.III_side_info_t*, i32) #1

; Function Attrs: nounwind
define arm_aapcscc void @set_masking_lower(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = mul nsw i32 2, %7
  %9 = add nsw i32 -6, %8
  %10 = sitofp i32 %9 to float
  store float %10, float* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 125
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %13, 2.375000e+03
  %15 = fptrunc double %14 to float
  store float %15, float* %6, align 4
  %16 = load float, float* %6, align 4
  %17 = fsub float %16, 1.000000e+00
  %18 = fmul float 4.000000e+00, %17
  store float %18, float* %6, align 4
  %19 = load float, float* %6, align 4
  %20 = load float, float* %5, align 4
  %21 = fadd float %20, %19
  store float %21, float* %5, align 4
  %22 = load float, float* %5, align 4
  %23 = fdiv float %22, 1.000000e+01
  %24 = fpext float %23 to double
  %25 = call arm_aapcscc double @pow(double 1.000000e+01, double %24) #5
  %26 = fptrunc double %25 to float
  store float %26, float* @masking_lower, align 4
  ret void
}

; Function Attrs: nounwind
declare arm_aapcscc double @pow(double, double) #3

; Function Attrs: nounwind
define arm_aapcscc void @VBR_iteration_loop(%struct.lame_global_flags*, [2 x double]*, double*, [2 x [576 x double]]*, [2 x %struct.III_psy_ratio]*, %struct.III_side_info_t*, [2 x [576 x i32]]*, [2 x %struct.III_scalefac_t]*) #0 {
  %9 = alloca %struct.lame_global_flags*, align 4
  %10 = alloca [2 x double]*, align 4
  %11 = alloca double*, align 4
  %12 = alloca [2 x [576 x double]]*, align 4
  %13 = alloca [2 x %struct.III_psy_ratio]*, align 4
  %14 = alloca %struct.III_side_info_t*, align 4
  %15 = alloca [2 x [576 x i32]]*, align 4
  %16 = alloca [2 x %struct.III_scalefac_t]*, align 4
  %17 = alloca %struct.gr_info, align 4
  %18 = alloca %struct.gr_info, align 4
  %19 = alloca %struct.III_scalefac_t, align 4
  %20 = alloca [576 x i32], align 4
  %21 = alloca %struct.III_psy_xmin, align 8
  %22 = alloca %struct.gr_info*, align 4
  %23 = alloca [2 x [2 x i32]], align 4
  %24 = alloca [4 x double], align 8
  %25 = alloca [4 x double], align 8
  %26 = alloca [4 x [21 x double]], align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [15 x i32], align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca double, align 8
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %9, align 4
  store [2 x double]* %1, [2 x double]** %10, align 4
  store double* %2, double** %11, align 4
  store [2 x [576 x double]]* %3, [2 x [576 x double]]** %12, align 4
  store [2 x %struct.III_psy_ratio]* %4, [2 x %struct.III_psy_ratio]** %13, align 4
  store %struct.III_side_info_t* %5, %struct.III_side_info_t** %14, align 4
  store [2 x [576 x i32]]* %6, [2 x [576 x i32]]** %15, align 4
  store [2 x %struct.III_scalefac_t]* %7, [2 x %struct.III_scalefac_t]** %16, align 4
  store %struct.gr_info* null, %struct.gr_info** %22, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %41, align 4
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %47 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %48 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  call arm_aapcscc void @iteration_init(%struct.lame_global_flags* %46, %struct.III_side_info_t* %47, [2 x [576 x i32]]* %48)
  %49 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %50 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %49, i32 0, i32 50
  store i32 1, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %84, %8
  %52 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %53 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %52, i32 0, i32 50
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %56 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 48
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %59, label %89

; <label>:59:                                     ; preds = %51
  %60 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  call arm_aapcscc void @getframebits(%struct.lame_global_flags* %60, i32* %34, i32* %36)
  %61 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %62 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %61, i32 0, i32 50
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %65 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %64, i32 0, i32 47
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %59
  %69 = load i32, i32* %36, align 4
  %70 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %71 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %70, i32 0, i32 46
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %69, %72
  store i32 %73, i32* %32, align 4
  br label %74

; <label>:74:                                     ; preds = %68, %59
  %75 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %76 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %77 = load i32, i32* %36, align 4
  %78 = load i32, i32* %34, align 4
  %79 = call arm_aapcscc i32 @ResvFrameBegin(%struct.lame_global_flags* %75, %struct.III_side_info_t* %76, i32 %77, i32 %78)
  %80 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %81 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %80, i32 0, i32 50
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [15 x i32], [15 x i32]* %33, i32 0, i32 %82
  store i32 %79, i32* %83, align 4
  br label %84

; <label>:84:                                     ; preds = %74
  %85 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %86 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %85, i32 0, i32 50
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %51

; <label>:89:                                     ; preds = %51
  %90 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %91 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %90, i32 0, i32 48
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %94 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %93, i32 0, i32 50
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %39, align 4
  br label %95

; <label>:95:                                     ; preds = %469, %89
  %96 = load i32, i32* %39, align 4
  %97 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %98 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %97, i32 0, i32 45
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %472

; <label>:101:                                    ; preds = %95
  %102 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %103 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %102, i32 0, i32 46
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %42, align 4
  %105 = load i32, i32* @reduce_sidechannel, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %101
  store i32 1, i32* %42, align 4
  br label %108

; <label>:108:                                    ; preds = %107, %101
  %109 = load i32, i32* @convert_mdct, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

; <label>:111:                                    ; preds = %108
  %112 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %113 = load i32, i32* %39, align 4
  %114 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %112, i32 %113
  %115 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %114, i32 0, i32 0
  %116 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %117 = load i32, i32* %39, align 4
  %118 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %116, i32 %117
  %119 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %118, i32 0, i32 0
  call arm_aapcscc void @ms_convert([576 x double]* %115, [576 x double]* %119)
  br label %120

; <label>:120:                                    ; preds = %111, %108
  store i32 0, i32* %38, align 4
  br label %121

; <label>:121:                                    ; preds = %465, %120
  %122 = load i32, i32* %38, align 4
  %123 = load i32, i32* %42, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %468

; <label>:125:                                    ; preds = %121
  %126 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %127 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %126, i32 0, i32 4
  %128 = load i32, i32* %39, align 4
  %129 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %127, i32 0, i32 %128
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %129, i32 0, i32 0
  %131 = load i32, i32* %38, align 4
  %132 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %130, i32 0, i32 %131
  %133 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %132, i32 0, i32 0
  store %struct.gr_info* %133, %struct.gr_info** %22, align 4
  %134 = load i32, i32* %32, align 4
  %135 = icmp sgt i32 125, %134
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %125
  br label %139

; <label>:137:                                    ; preds = %125
  %138 = load i32, i32* %32, align 4
  br label %139

; <label>:139:                                    ; preds = %137, %136
  %140 = phi i32 [ 125, %136 ], [ %138, %137 ]
  store i32 %140, i32* %30, align 4
  %141 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %142 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %143 = load i32, i32* %39, align 4
  %144 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %142, i32 %143
  %145 = load i32, i32* %38, align 4
  %146 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %144, i32 0, i32 %145
  %147 = getelementptr inbounds [576 x double], [576 x double]* %146, i32 0, i32 0
  %148 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %149 = call arm_aapcscc i32 @init_outer_loop(%struct.lame_global_flags* %141, double* %147, %struct.gr_info* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %169, label %151

; <label>:151:                                    ; preds = %139
  %152 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %153 = load i32, i32* %39, align 4
  %154 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %152, i32 %153
  %155 = load i32, i32* %38, align 4
  %156 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %154, i32 0, i32 %155
  %157 = bitcast %struct.III_scalefac_t* %156 to i8*
  call void @llvm.memset.p0i8.i32(i8* %157, i8 0, i32 244, i32 4, i1 false)
  %158 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %159 = load i32, i32* %39, align 4
  %160 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %158, i32 %159
  %161 = load i32, i32* %38, align 4
  %162 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %160, i32 0, i32 %161
  %163 = getelementptr inbounds [576 x i32], [576 x i32]* %162, i32 0, i32 0
  %164 = bitcast i32* %163 to i8*
  call void @llvm.memset.p0i8.i32(i8* %164, i8 0, i32 2304, i32 4, i1 false)
  %165 = load i32, i32* %39, align 4
  %166 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %165
  %167 = load i32, i32* %38, align 4
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i32 0, i32 %167
  store i32 0, i32* %168, align 4
  store i32 1, i32* %40, align 4
  br label %465

; <label>:169:                                    ; preds = %139
  %170 = bitcast %struct.gr_info* %18 to i8*
  %171 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %172 = bitcast %struct.gr_info* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %170, i8* %172, i32 112, i32 4, i1 false)
  %173 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %174 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %173, i32 0, i32 22
  %175 = load i32, i32* %174, align 4
  call arm_aapcscc void @set_masking_lower(i32 %175, i32 2500)
  %176 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %177 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %178 = load i32, i32* %39, align 4
  %179 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %177, i32 %178
  %180 = load i32, i32* %38, align 4
  %181 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %179, i32 0, i32 %180
  %182 = getelementptr inbounds [576 x double], [576 x double]* %181, i32 0, i32 0
  %183 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %13, align 4
  %184 = load i32, i32* %39, align 4
  %185 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %183, i32 %184
  %186 = load i32, i32* %38, align 4
  %187 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %185, i32 0, i32 %186
  %188 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %189 = call arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags* %176, double* %182, %struct.III_psy_ratio* %187, %struct.gr_info* %188, %struct.III_psy_xmin* %21)
  %190 = icmp eq i32 0, %189
  br i1 %190, label %191, label %192

; <label>:191:                                    ; preds = %169
  store i32 1, i32* %40, align 4
  store i32 125, i32* %30, align 4
  br label %192

; <label>:192:                                    ; preds = %191, %169
  %193 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %194 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %226

; <label>:197:                                    ; preds = %192
  %198 = load [2 x double]*, [2 x double]** %10, align 4
  %199 = load i32, i32* %39, align 4
  %200 = getelementptr inbounds [2 x double], [2 x double]* %198, i32 %199
  %201 = load i32, i32* %38, align 4
  %202 = getelementptr inbounds [2 x double], [2 x double]* %200, i32 0, i32 %201
  %203 = load double, double* %202, align 8
  %204 = fcmp ogt double 1.100000e+03, %203
  br i1 %204, label %205, label %206

; <label>:205:                                    ; preds = %197
  br label %213

; <label>:206:                                    ; preds = %197
  %207 = load [2 x double]*, [2 x double]** %10, align 4
  %208 = load i32, i32* %39, align 4
  %209 = getelementptr inbounds [2 x double], [2 x double]* %207, i32 %208
  %210 = load i32, i32* %38, align 4
  %211 = getelementptr inbounds [2 x double], [2 x double]* %209, i32 0, i32 %210
  %212 = load double, double* %211, align 8
  br label %213

; <label>:213:                                    ; preds = %206, %205
  %214 = phi double [ 1.100000e+03, %205 ], [ %212, %206 ]
  %215 = load i32, i32* %30, align 4
  %216 = sitofp i32 %215 to double
  %217 = fadd double %216, %214
  %218 = fptosi double %217 to i32
  store i32 %218, i32* %30, align 4
  %219 = load i32, i32* %30, align 4
  %220 = icmp slt i32 %219, 1800
  br i1 %220, label %221, label %223

; <label>:221:                                    ; preds = %213
  %222 = load i32, i32* %30, align 4
  br label %224

; <label>:223:                                    ; preds = %213
  br label %224

; <label>:224:                                    ; preds = %223, %221
  %225 = phi i32 [ %222, %221 ], [ 1800, %223 ]
  store i32 %225, i32* %30, align 4
  br label %226

; <label>:226:                                    ; preds = %224, %192
  %227 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %228 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %227, i32 0, i32 48
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds [15 x i32], [15 x i32]* %33, i32 0, i32 %229
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %233 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %232, i32 0, i32 46
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %236 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %235, i32 0, i32 45
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %234, %237
  %239 = sdiv i32 %231, %238
  %240 = add nsw i32 1200, %239
  store i32 %240, i32* %31, align 4
  %241 = load i32, i32* %31, align 4
  %242 = icmp slt i32 %241, 2500
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %226
  %244 = load i32, i32* %31, align 4
  br label %246

; <label>:245:                                    ; preds = %226
  br label %246

; <label>:246:                                    ; preds = %245, %243
  %247 = phi i32 [ %244, %243 ], [ 2500, %245 ]
  store i32 %247, i32* %31, align 4
  %248 = load i32, i32* %31, align 4
  %249 = load i32, i32* %30, align 4
  %250 = icmp sgt i32 %248, %249
  br i1 %250, label %251, label %253

; <label>:251:                                    ; preds = %246
  %252 = load i32, i32* %31, align 4
  br label %255

; <label>:253:                                    ; preds = %246
  %254 = load i32, i32* %30, align 4
  br label %255

; <label>:255:                                    ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  store i32 %256, i32* %31, align 4
  %257 = load i32, i32* %31, align 4
  %258 = load i32, i32* %30, align 4
  %259 = sub nsw i32 %257, %258
  %260 = sdiv i32 %259, 4
  store i32 %260, i32* %28, align 4
  %261 = load i32, i32* %31, align 4
  %262 = load i32, i32* %30, align 4
  %263 = add nsw i32 %261, %262
  %264 = sdiv i32 %263, 2
  store i32 %264, i32* %27, align 4
  %265 = load i32, i32* %31, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %43, align 4
  br label %267

; <label>:267:                                    ; preds = %414, %255
  %268 = load i32, i32* %27, align 4
  %269 = load i32, i32* %30, align 4
  %270 = icmp sge i32 %268, %269
  br i1 %270, label %272, label %271

; <label>:271:                                    ; preds = %267
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.VBR_iteration_loop, i32 0, i32 0))
  br label %272

; <label>:272:                                    ; preds = %271, %267
  %273 = phi i1 [ true, %267 ], [ false, %271 ]
  %274 = zext i1 %273 to i32
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %31, align 4
  %277 = icmp sle i32 %275, %276
  br i1 %277, label %279, label %278

; <label>:278:                                    ; preds = %272
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 401, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.VBR_iteration_loop, i32 0, i32 0))
  br label %279

; <label>:279:                                    ; preds = %278, %272
  %280 = phi i1 [ true, %272 ], [ false, %278 ]
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %27, align 4
  %283 = load i32, i32* %43, align 4
  %284 = icmp sge i32 %282, %283
  br i1 %284, label %285, label %291

; <label>:285:                                    ; preds = %279
  %286 = load i32, i32* %28, align 4
  %287 = load i32, i32* %27, align 4
  %288 = sub nsw i32 %287, %286
  store i32 %288, i32* %27, align 4
  %289 = load i32, i32* %28, align 4
  %290 = sdiv i32 %289, 2
  store i32 %290, i32* %28, align 4
  br label %414

; <label>:291:                                    ; preds = %279
  %292 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 0
  store double 0.000000e+00, double* %292, align 8
  %293 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 1
  store double 0.000000e+00, double* %293, align 8
  %294 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 2
  store double 0.000000e+00, double* %294, align 8
  %295 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 3
  store double 0.000000e+00, double* %295, align 8
  %296 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 0
  %297 = load double, double* %296, align 8
  %298 = fcmp ogt double 0.000000e+00, %297
  br i1 %298, label %299, label %300

; <label>:299:                                    ; preds = %291
  br label %303

; <label>:300:                                    ; preds = %291
  %301 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 0
  %302 = load double, double* %301, align 8
  br label %303

; <label>:303:                                    ; preds = %300, %299
  %304 = phi double [ 0.000000e+00, %299 ], [ %302, %300 ]
  %305 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 0
  store double %304, double* %305, align 8
  %306 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 2
  %307 = load double, double* %306, align 8
  %308 = fcmp ogt double 0.000000e+00, %307
  br i1 %308, label %309, label %310

; <label>:309:                                    ; preds = %303
  br label %313

; <label>:310:                                    ; preds = %303
  %311 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 2
  %312 = load double, double* %311, align 8
  br label %313

; <label>:313:                                    ; preds = %310, %309
  %314 = phi double [ 0.000000e+00, %309 ], [ %312, %310 ]
  %315 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 2
  store double %314, double* %315, align 8
  %316 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %317 = bitcast %struct.gr_info* %316 to i8*
  %318 = bitcast %struct.gr_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %317, i8* %318, i32 112, i32 4, i1 false)
  %319 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %320 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %319, i32 0, i32 22
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %27, align 4
  call arm_aapcscc void @set_masking_lower(i32 %321, i32 %322)
  %323 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %324 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %325 = load i32, i32* %39, align 4
  %326 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %324, i32 %325
  %327 = load i32, i32* %38, align 4
  %328 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %326, i32 0, i32 %327
  %329 = getelementptr inbounds [576 x double], [576 x double]* %328, i32 0, i32 0
  %330 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %13, align 4
  %331 = load i32, i32* %39, align 4
  %332 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %330, i32 %331
  %333 = load i32, i32* %38, align 4
  %334 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %332, i32 0, i32 %333
  %335 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %336 = call arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags* %323, double* %329, %struct.III_psy_ratio* %334, %struct.gr_info* %335, %struct.III_psy_xmin* %21)
  %337 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %338 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %339 = load i32, i32* %39, align 4
  %340 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %338, i32 %339
  %341 = load i32, i32* %38, align 4
  %342 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %340, i32 0, i32 %341
  %343 = getelementptr inbounds [576 x double], [576 x double]* %342, i32 0, i32 0
  %344 = load i32, i32* %27, align 4
  %345 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 0
  %346 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %347 = load i32, i32* %39, align 4
  %348 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %346, i32 %347
  %349 = load i32, i32* %38, align 4
  %350 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %348, i32 0, i32 %349
  %351 = getelementptr inbounds [576 x i32], [576 x i32]* %350, i32 0, i32 0
  %352 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %353 = load i32, i32* %39, align 4
  %354 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %352, i32 %353
  %355 = load i32, i32* %38, align 4
  %356 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %354, i32 0, i32 %355
  %357 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %358 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %26, i32 0, i32 0
  %359 = load i32, i32* %38, align 4
  call arm_aapcscc void @outer_loop(%struct.lame_global_flags* %337, double* %343, i32 %344, double* %345, %struct.III_psy_xmin* %21, i32* %351, %struct.III_scalefac_t* %356, %struct.gr_info* %357, [21 x double]* %358, i32 %359)
  %360 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 0
  %361 = load double, double* %360, align 8
  %362 = fptosi double %361 to i32
  %363 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 3
  %364 = load double, double* %363, align 8
  %365 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 2
  %366 = load double, double* %365, align 8
  %367 = getelementptr inbounds [4 x double], [4 x double]* %25, i32 0, i32 1
  %368 = load double, double* %367, align 8
  %369 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 0
  %370 = load double, double* %369, align 8
  %371 = fptosi double %370 to i32
  %372 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 3
  %373 = load double, double* %372, align 8
  %374 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 2
  %375 = load double, double* %374, align 8
  %376 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 1
  %377 = load double, double* %376, align 8
  %378 = call arm_aapcscc i32 @VBR_compare(i32 %362, double %364, double %366, double %368, i32 %371, double %373, double %375, double %377)
  store i32 %378, i32* %44, align 4
  %379 = load i32, i32* %44, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %407

; <label>:381:                                    ; preds = %313
  %382 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %383 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %43, align 4
  %385 = bitcast %struct.III_scalefac_t* %19 to i8*
  %386 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %387 = load i32, i32* %39, align 4
  %388 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %386, i32 %387
  %389 = load i32, i32* %38, align 4
  %390 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %388, i32 0, i32 %389
  %391 = bitcast %struct.III_scalefac_t* %390 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %385, i8* %391, i32 244, i32 4, i1 false)
  %392 = getelementptr inbounds [576 x i32], [576 x i32]* %20, i32 0, i32 0
  %393 = bitcast i32* %392 to i8*
  %394 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %395 = load i32, i32* %39, align 4
  %396 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %394, i32 %395
  %397 = load i32, i32* %38, align 4
  %398 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %396, i32 0, i32 %397
  %399 = getelementptr inbounds [576 x i32], [576 x i32]* %398, i32 0, i32 0
  %400 = bitcast i32* %399 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %393, i8* %400, i32 2304, i32 4, i1 false)
  %401 = bitcast %struct.gr_info* %17 to i8*
  %402 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %403 = bitcast %struct.gr_info* %402 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %401, i8* %403, i32 112, i32 4, i1 false)
  %404 = load i32, i32* %28, align 4
  %405 = load i32, i32* %27, align 4
  %406 = sub nsw i32 %405, %404
  store i32 %406, i32* %27, align 4
  br label %411

; <label>:407:                                    ; preds = %313
  %408 = load i32, i32* %28, align 4
  %409 = load i32, i32* %27, align 4
  %410 = add nsw i32 %409, %408
  store i32 %410, i32* %27, align 4
  br label %411

; <label>:411:                                    ; preds = %407, %381
  %412 = load i32, i32* %28, align 4
  %413 = sdiv i32 %412, 2
  store i32 %413, i32* %28, align 4
  br label %414

; <label>:414:                                    ; preds = %411, %285
  %415 = load i32, i32* %28, align 4
  %416 = icmp sgt i32 %415, 10
  br i1 %416, label %267, label %417

; <label>:417:                                    ; preds = %414
  %418 = load i32, i32* %43, align 4
  %419 = load i32, i32* %31, align 4
  %420 = icmp sle i32 %418, %419
  br i1 %420, label %421, label %441

; <label>:421:                                    ; preds = %417
  %422 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %423 = bitcast %struct.gr_info* %422 to i8*
  %424 = bitcast %struct.gr_info* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %423, i8* %424, i32 112, i32 4, i1 false)
  %425 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %426 = load i32, i32* %39, align 4
  %427 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %425, i32 %426
  %428 = load i32, i32* %38, align 4
  %429 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %427, i32 0, i32 %428
  %430 = bitcast %struct.III_scalefac_t* %429 to i8*
  %431 = bitcast %struct.III_scalefac_t* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %430, i8* %431, i32 244, i32 4, i1 false)
  %432 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %433 = load i32, i32* %39, align 4
  %434 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %432, i32 %433
  %435 = load i32, i32* %38, align 4
  %436 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %434, i32 0, i32 %435
  %437 = getelementptr inbounds [576 x i32], [576 x i32]* %436, i32 0, i32 0
  %438 = bitcast i32* %437 to i8*
  %439 = getelementptr inbounds [576 x i32], [576 x i32]* %20, i32 0, i32 0
  %440 = bitcast i32* %439 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %438, i8* %440, i32 2304, i32 4, i1 false)
  br label %441

; <label>:441:                                    ; preds = %421, %417
  %442 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %443 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %31, align 4
  %446 = icmp sle i32 %444, %445
  br i1 %446, label %448, label %447

; <label>:447:                                    ; preds = %441
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 497, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.VBR_iteration_loop, i32 0, i32 0))
  br label %448

; <label>:448:                                    ; preds = %447, %441
  %449 = phi i1 [ true, %441 ], [ false, %447 ]
  %450 = zext i1 %449 to i32
  %451 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %452 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* %39, align 4
  %455 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %454
  %456 = load i32, i32* %38, align 4
  %457 = getelementptr inbounds [2 x i32], [2 x i32]* %455, i32 0, i32 %456
  store i32 %453, i32* %457, align 4
  %458 = load i32, i32* %39, align 4
  %459 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %458
  %460 = load i32, i32* %38, align 4
  %461 = getelementptr inbounds [2 x i32], [2 x i32]* %459, i32 0, i32 %460
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* %29, align 4
  %464 = add nsw i32 %463, %462
  store i32 %464, i32* %29, align 4
  br label %465

; <label>:465:                                    ; preds = %448, %151
  %466 = load i32, i32* %38, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %38, align 4
  br label %121

; <label>:468:                                    ; preds = %121
  br label %469

; <label>:469:                                    ; preds = %468
  %470 = load i32, i32* %39, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %39, align 4
  br label %95

; <label>:472:                                    ; preds = %95
  %473 = load i32, i32* @reduce_sidechannel, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %531

; <label>:475:                                    ; preds = %472
  store i32 0, i32* %39, align 4
  br label %476

; <label>:476:                                    ; preds = %527, %475
  %477 = load i32, i32* %39, align 4
  %478 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %479 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %478, i32 0, i32 45
  %480 = load i32, i32* %479, align 4
  %481 = icmp slt i32 %477, %480
  br i1 %481, label %482, label %530

; <label>:482:                                    ; preds = %476
  %483 = load double*, double** %11, align 4
  %484 = load i32, i32* %39, align 4
  %485 = getelementptr inbounds double, double* %483, i32 %484
  %486 = load double, double* %485, align 8
  %487 = fsub double 5.000000e-01, %486
  %488 = fmul double 3.300000e-01, %487
  %489 = fdiv double %488, 5.000000e-01
  store double %489, double* %45, align 8
  %490 = load double, double* %45, align 8
  %491 = fsub double 1.000000e+00, %490
  %492 = load double, double* %45, align 8
  %493 = fadd double 1.000000e+00, %492
  %494 = fdiv double %491, %493
  %495 = load i32, i32* %39, align 4
  %496 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %495
  %497 = getelementptr inbounds [2 x i32], [2 x i32]* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = sitofp i32 %498 to double
  %500 = fmul double %494, %499
  %501 = fptosi double %500 to i32
  %502 = load i32, i32* %39, align 4
  %503 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %502
  %504 = getelementptr inbounds [2 x i32], [2 x i32]* %503, i32 0, i32 1
  store i32 %501, i32* %504, align 4
  %505 = load i32, i32* %39, align 4
  %506 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %505
  %507 = getelementptr inbounds [2 x i32], [2 x i32]* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = icmp sgt i32 125, %508
  br i1 %509, label %510, label %511

; <label>:510:                                    ; preds = %482
  br label %516

; <label>:511:                                    ; preds = %482
  %512 = load i32, i32* %39, align 4
  %513 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %512
  %514 = getelementptr inbounds [2 x i32], [2 x i32]* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  br label %516

; <label>:516:                                    ; preds = %511, %510
  %517 = phi i32 [ 125, %510 ], [ %515, %511 ]
  %518 = load i32, i32* %39, align 4
  %519 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %518
  %520 = getelementptr inbounds [2 x i32], [2 x i32]* %519, i32 0, i32 1
  store i32 %517, i32* %520, align 4
  %521 = load i32, i32* %39, align 4
  %522 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %521
  %523 = getelementptr inbounds [2 x i32], [2 x i32]* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* %29, align 4
  %526 = add nsw i32 %525, %524
  store i32 %526, i32* %29, align 4
  br label %527

; <label>:527:                                    ; preds = %516
  %528 = load i32, i32* %39, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %39, align 4
  br label %476

; <label>:530:                                    ; preds = %476
  br label %531

; <label>:531:                                    ; preds = %530, %472
  %532 = load i32, i32* %40, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %535

; <label>:534:                                    ; preds = %531
  br label %539

; <label>:535:                                    ; preds = %531
  %536 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %537 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %536, i32 0, i32 47
  %538 = load i32, i32* %537, align 4
  br label %539

; <label>:539:                                    ; preds = %535, %534
  %540 = phi i32 [ 1, %534 ], [ %538, %535 ]
  %541 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %542 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %541, i32 0, i32 50
  store i32 %540, i32* %542, align 4
  br label %543

; <label>:543:                                    ; preds = %561, %539
  %544 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %545 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %544, i32 0, i32 50
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %548 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %547, i32 0, i32 48
  %549 = load i32, i32* %548, align 4
  %550 = icmp slt i32 %546, %549
  br i1 %550, label %551, label %566

; <label>:551:                                    ; preds = %543
  %552 = load i32, i32* %29, align 4
  %553 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %554 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %553, i32 0, i32 50
  %555 = load i32, i32* %554, align 4
  %556 = getelementptr inbounds [15 x i32], [15 x i32]* %33, i32 0, i32 %555
  %557 = load i32, i32* %556, align 4
  %558 = icmp sle i32 %552, %557
  br i1 %558, label %559, label %560

; <label>:559:                                    ; preds = %551
  br label %566

; <label>:560:                                    ; preds = %551
  br label %561

; <label>:561:                                    ; preds = %560
  %562 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %563 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %562, i32 0, i32 50
  %564 = load i32, i32* %563, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %563, align 4
  br label %543

; <label>:566:                                    ; preds = %559, %543
  %567 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  call arm_aapcscc void @getframebits(%struct.lame_global_flags* %567, i32* %34, i32* %36)
  %568 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %569 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %570 = load i32, i32* %36, align 4
  %571 = load i32, i32* %34, align 4
  %572 = call arm_aapcscc i32 @ResvFrameBegin(%struct.lame_global_flags* %568, %struct.III_side_info_t* %569, i32 %570, i32 %571)
  store i32 %572, i32* %35, align 4
  %573 = load i32, i32* %29, align 4
  %574 = load i32, i32* %35, align 4
  %575 = icmp sgt i32 %573, %574
  br i1 %575, label %576, label %645

; <label>:576:                                    ; preds = %566
  store i32 1, i32* %41, align 4
  store i32 0, i32* %39, align 4
  br label %577

; <label>:577:                                    ; preds = %612, %576
  %578 = load i32, i32* %39, align 4
  %579 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %580 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %579, i32 0, i32 45
  %581 = load i32, i32* %580, align 4
  %582 = icmp slt i32 %578, %581
  br i1 %582, label %583, label %615

; <label>:583:                                    ; preds = %577
  store i32 0, i32* %38, align 4
  br label %584

; <label>:584:                                    ; preds = %608, %583
  %585 = load i32, i32* %38, align 4
  %586 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %587 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %586, i32 0, i32 46
  %588 = load i32, i32* %587, align 4
  %589 = icmp slt i32 %585, %588
  br i1 %589, label %590, label %611

; <label>:590:                                    ; preds = %584
  %591 = load i32, i32* %39, align 4
  %592 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %591
  %593 = load i32, i32* %38, align 4
  %594 = getelementptr inbounds [2 x i32], [2 x i32]* %592, i32 0, i32 %593
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %597 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %596, i32 0, i32 50
  %598 = load i32, i32* %597, align 4
  %599 = getelementptr inbounds [15 x i32], [15 x i32]* %33, i32 0, i32 %598
  %600 = load i32, i32* %599, align 4
  %601 = mul nsw i32 %595, %600
  %602 = load i32, i32* %29, align 4
  %603 = sdiv i32 %601, %602
  %604 = load i32, i32* %39, align 4
  %605 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %604
  %606 = load i32, i32* %38, align 4
  %607 = getelementptr inbounds [2 x i32], [2 x i32]* %605, i32 0, i32 %606
  store i32 %603, i32* %607, align 4
  br label %608

; <label>:608:                                    ; preds = %590
  %609 = load i32, i32* %38, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %38, align 4
  br label %584

; <label>:611:                                    ; preds = %584
  br label %612

; <label>:612:                                    ; preds = %611
  %613 = load i32, i32* %39, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %39, align 4
  br label %577

; <label>:615:                                    ; preds = %577
  store i32 0, i32* %29, align 4
  store i32 0, i32* %39, align 4
  br label %616

; <label>:616:                                    ; preds = %641, %615
  %617 = load i32, i32* %39, align 4
  %618 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %619 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %618, i32 0, i32 45
  %620 = load i32, i32* %619, align 4
  %621 = icmp slt i32 %617, %620
  br i1 %621, label %622, label %644

; <label>:622:                                    ; preds = %616
  store i32 0, i32* %38, align 4
  br label %623

; <label>:623:                                    ; preds = %637, %622
  %624 = load i32, i32* %38, align 4
  %625 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %626 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %625, i32 0, i32 46
  %627 = load i32, i32* %626, align 4
  %628 = icmp slt i32 %624, %627
  br i1 %628, label %629, label %640

; <label>:629:                                    ; preds = %623
  %630 = load i32, i32* %39, align 4
  %631 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %630
  %632 = load i32, i32* %38, align 4
  %633 = getelementptr inbounds [2 x i32], [2 x i32]* %631, i32 0, i32 %632
  %634 = load i32, i32* %633, align 4
  %635 = load i32, i32* %29, align 4
  %636 = add nsw i32 %635, %634
  store i32 %636, i32* %29, align 4
  br label %637

; <label>:637:                                    ; preds = %629
  %638 = load i32, i32* %38, align 4
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %38, align 4
  br label %623

; <label>:640:                                    ; preds = %623
  br label %641

; <label>:641:                                    ; preds = %640
  %642 = load i32, i32* %39, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %39, align 4
  br label %616

; <label>:644:                                    ; preds = %616
  br label %645

; <label>:645:                                    ; preds = %644, %566
  %646 = load i32, i32* %29, align 4
  %647 = load i32, i32* %35, align 4
  %648 = icmp sle i32 %646, %647
  br i1 %648, label %650, label %649

; <label>:649:                                    ; preds = %645
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.VBR_iteration_loop, i32 0, i32 0))
  br label %650

; <label>:650:                                    ; preds = %649, %645
  %651 = phi i1 [ true, %645 ], [ false, %649 ]
  %652 = zext i1 %651 to i32
  store i32 0, i32* %39, align 4
  br label %653

; <label>:653:                                    ; preds = %768, %650
  %654 = load i32, i32* %39, align 4
  %655 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %656 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %655, i32 0, i32 45
  %657 = load i32, i32* %656, align 4
  %658 = icmp slt i32 %654, %657
  br i1 %658, label %659, label %771

; <label>:659:                                    ; preds = %653
  store i32 0, i32* %38, align 4
  br label %660

; <label>:660:                                    ; preds = %764, %659
  %661 = load i32, i32* %38, align 4
  %662 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %663 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %662, i32 0, i32 46
  %664 = load i32, i32* %663, align 4
  %665 = icmp slt i32 %661, %664
  br i1 %665, label %666, label %767

; <label>:666:                                    ; preds = %660
  %667 = load i32, i32* %41, align 4
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %675, label %669

; <label>:669:                                    ; preds = %666
  %670 = load i32, i32* @reduce_sidechannel, align 4
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %763

; <label>:672:                                    ; preds = %669
  %673 = load i32, i32* %38, align 4
  %674 = icmp eq i32 %673, 1
  br i1 %674, label %675, label %763

; <label>:675:                                    ; preds = %672, %666
  %676 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %677 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %676, i32 0, i32 4
  %678 = load i32, i32* %39, align 4
  %679 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %677, i32 0, i32 %678
  %680 = getelementptr inbounds %struct.anon, %struct.anon* %679, i32 0, i32 0
  %681 = load i32, i32* %38, align 4
  %682 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %680, i32 0, i32 %681
  %683 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %682, i32 0, i32 0
  store %struct.gr_info* %683, %struct.gr_info** %22, align 4
  %684 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %685 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %686 = load i32, i32* %39, align 4
  %687 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %685, i32 %686
  %688 = load i32, i32* %38, align 4
  %689 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %687, i32 0, i32 %688
  %690 = getelementptr inbounds [576 x double], [576 x double]* %689, i32 0, i32 0
  %691 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %692 = call arm_aapcscc i32 @init_outer_loop(%struct.lame_global_flags* %684, double* %690, %struct.gr_info* %691)
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %712, label %694

; <label>:694:                                    ; preds = %675
  %695 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %696 = load i32, i32* %39, align 4
  %697 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %695, i32 %696
  %698 = load i32, i32* %38, align 4
  %699 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %697, i32 0, i32 %698
  %700 = bitcast %struct.III_scalefac_t* %699 to i8*
  call void @llvm.memset.p0i8.i32(i8* %700, i8 0, i32 244, i32 4, i1 false)
  %701 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %702 = load i32, i32* %39, align 4
  %703 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %701, i32 %702
  %704 = load i32, i32* %38, align 4
  %705 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %703, i32 0, i32 %704
  %706 = getelementptr inbounds [576 x i32], [576 x i32]* %705, i32 0, i32 0
  %707 = bitcast i32* %706 to i8*
  call void @llvm.memset.p0i8.i32(i8* %707, i8 0, i32 2304, i32 4, i1 false)
  %708 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 3
  store double 0.000000e+00, double* %708, align 8
  %709 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 2
  store double 0.000000e+00, double* %709, align 8
  %710 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 1
  store double 0.000000e+00, double* %710, align 8
  %711 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 0
  store double 0.000000e+00, double* %711, align 8
  br label %762

; <label>:712:                                    ; preds = %675
  %713 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %714 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %713, i32 0, i32 22
  %715 = load i32, i32* %714, align 4
  %716 = load i32, i32* %39, align 4
  %717 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %716
  %718 = load i32, i32* %38, align 4
  %719 = getelementptr inbounds [2 x i32], [2 x i32]* %717, i32 0, i32 %718
  %720 = load i32, i32* %719, align 4
  call arm_aapcscc void @set_masking_lower(i32 %715, i32 %720)
  %721 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %722 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %723 = load i32, i32* %39, align 4
  %724 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %722, i32 %723
  %725 = load i32, i32* %38, align 4
  %726 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %724, i32 0, i32 %725
  %727 = getelementptr inbounds [576 x double], [576 x double]* %726, i32 0, i32 0
  %728 = load [2 x %struct.III_psy_ratio]*, [2 x %struct.III_psy_ratio]** %13, align 4
  %729 = load i32, i32* %39, align 4
  %730 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %728, i32 %729
  %731 = load i32, i32* %38, align 4
  %732 = getelementptr inbounds [2 x %struct.III_psy_ratio], [2 x %struct.III_psy_ratio]* %730, i32 0, i32 %731
  %733 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %734 = call arm_aapcscc i32 @calc_xmin(%struct.lame_global_flags* %721, double* %727, %struct.III_psy_ratio* %732, %struct.gr_info* %733, %struct.III_psy_xmin* %21)
  %735 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %736 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %737 = load i32, i32* %39, align 4
  %738 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %736, i32 %737
  %739 = load i32, i32* %38, align 4
  %740 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %738, i32 0, i32 %739
  %741 = getelementptr inbounds [576 x double], [576 x double]* %740, i32 0, i32 0
  %742 = load i32, i32* %39, align 4
  %743 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i32 0, i32 %742
  %744 = load i32, i32* %38, align 4
  %745 = getelementptr inbounds [2 x i32], [2 x i32]* %743, i32 0, i32 %744
  %746 = load i32, i32* %745, align 4
  %747 = getelementptr inbounds [4 x double], [4 x double]* %24, i32 0, i32 0
  %748 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %749 = load i32, i32* %39, align 4
  %750 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %748, i32 %749
  %751 = load i32, i32* %38, align 4
  %752 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %750, i32 0, i32 %751
  %753 = getelementptr inbounds [576 x i32], [576 x i32]* %752, i32 0, i32 0
  %754 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  %755 = load i32, i32* %39, align 4
  %756 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %754, i32 %755
  %757 = load i32, i32* %38, align 4
  %758 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %756, i32 0, i32 %757
  %759 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %760 = getelementptr inbounds [4 x [21 x double]], [4 x [21 x double]]* %26, i32 0, i32 0
  %761 = load i32, i32* %38, align 4
  call arm_aapcscc void @outer_loop(%struct.lame_global_flags* %735, double* %741, i32 %746, double* %747, %struct.III_psy_xmin* %21, i32* %753, %struct.III_scalefac_t* %758, %struct.gr_info* %759, [21 x double]* %760, i32 %761)
  br label %762

; <label>:762:                                    ; preds = %712, %694
  br label %763

; <label>:763:                                    ; preds = %762, %672, %669
  br label %764

; <label>:764:                                    ; preds = %763
  %765 = load i32, i32* %38, align 4
  %766 = add nsw i32 %765, 1
  store i32 %766, i32* %38, align 4
  br label %660

; <label>:767:                                    ; preds = %660
  br label %768

; <label>:768:                                    ; preds = %767
  %769 = load i32, i32* %39, align 4
  %770 = add nsw i32 %769, 1
  store i32 %770, i32* %39, align 4
  br label %653

; <label>:771:                                    ; preds = %653
  store i32 0, i32* %39, align 4
  br label %772

; <label>:772:                                    ; preds = %823, %771
  %773 = load i32, i32* %39, align 4
  %774 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %775 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %774, i32 0, i32 45
  %776 = load i32, i32* %775, align 4
  %777 = icmp slt i32 %773, %776
  br i1 %777, label %778, label %826

; <label>:778:                                    ; preds = %772
  store i32 0, i32* %38, align 4
  br label %779

; <label>:779:                                    ; preds = %819, %778
  %780 = load i32, i32* %38, align 4
  %781 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %782 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %781, i32 0, i32 46
  %783 = load i32, i32* %782, align 4
  %784 = icmp slt i32 %780, %783
  br i1 %784, label %785, label %822

; <label>:785:                                    ; preds = %779
  %786 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %787 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %786, i32 0, i32 4
  %788 = load i32, i32* %39, align 4
  %789 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %787, i32 0, i32 %788
  %790 = getelementptr inbounds %struct.anon, %struct.anon* %789, i32 0, i32 0
  %791 = load i32, i32* %38, align 4
  %792 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %790, i32 0, i32 %791
  %793 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %792, i32 0, i32 0
  store %struct.gr_info* %793, %struct.gr_info** %22, align 4
  %794 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %795 = load i32, i32* %39, align 4
  %796 = load i32, i32* %38, align 4
  %797 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %798 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %799 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %16, align 4
  call arm_aapcscc void @best_scalefac_store(%struct.lame_global_flags* %794, i32 %795, i32 %796, [2 x [576 x i32]]* %797, %struct.III_side_info_t* %798, [2 x %struct.III_scalefac_t]* %799)
  %800 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %801 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %800, i32 0, i32 6
  %802 = load i32, i32* %801, align 4
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %814

; <label>:804:                                    ; preds = %785
  %805 = load i32, i32* %39, align 4
  %806 = load i32, i32* %38, align 4
  %807 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %808 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %809 = load i32, i32* %39, align 4
  %810 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %808, i32 %809
  %811 = load i32, i32* %38, align 4
  %812 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %810, i32 0, i32 %811
  %813 = getelementptr inbounds [576 x i32], [576 x i32]* %812, i32 0, i32 0
  call arm_aapcscc void @best_huffman_divide(i32 %805, i32 %806, %struct.gr_info* %807, i32* %813)
  br label %814

; <label>:814:                                    ; preds = %804, %785
  %815 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %816 = load %struct.gr_info*, %struct.gr_info** %22, align 4
  %817 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %818 = load i32, i32* %36, align 4
  call arm_aapcscc void @ResvAdjust(%struct.lame_global_flags* %815, %struct.gr_info* %816, %struct.III_side_info_t* %817, i32 %818)
  br label %819

; <label>:819:                                    ; preds = %814
  %820 = load i32, i32* %38, align 4
  %821 = add nsw i32 %820, 1
  store i32 %821, i32* %38, align 4
  br label %779

; <label>:822:                                    ; preds = %779
  br label %823

; <label>:823:                                    ; preds = %822
  %824 = load i32, i32* %39, align 4
  %825 = add nsw i32 %824, 1
  store i32 %825, i32* %39, align 4
  br label %772

; <label>:826:                                    ; preds = %772
  store i32 0, i32* %39, align 4
  br label %827

; <label>:827:                                    ; preds = %873, %826
  %828 = load i32, i32* %39, align 4
  %829 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %830 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %829, i32 0, i32 45
  %831 = load i32, i32* %830, align 4
  %832 = icmp slt i32 %828, %831
  br i1 %832, label %833, label %876

; <label>:833:                                    ; preds = %827
  store i32 0, i32* %38, align 4
  br label %834

; <label>:834:                                    ; preds = %869, %833
  %835 = load i32, i32* %38, align 4
  %836 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %837 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %836, i32 0, i32 46
  %838 = load i32, i32* %837, align 4
  %839 = icmp slt i32 %835, %838
  br i1 %839, label %840, label %872

; <label>:840:                                    ; preds = %834
  store i32 0, i32* %37, align 4
  br label %841

; <label>:841:                                    ; preds = %865, %840
  %842 = load i32, i32* %37, align 4
  %843 = icmp slt i32 %842, 576
  br i1 %843, label %844, label %868

; <label>:844:                                    ; preds = %841
  %845 = load [2 x [576 x double]]*, [2 x [576 x double]]** %12, align 4
  %846 = load i32, i32* %39, align 4
  %847 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %845, i32 %846
  %848 = load i32, i32* %38, align 4
  %849 = getelementptr inbounds [2 x [576 x double]], [2 x [576 x double]]* %847, i32 0, i32 %848
  %850 = load i32, i32* %37, align 4
  %851 = getelementptr inbounds [576 x double], [576 x double]* %849, i32 0, i32 %850
  %852 = load double, double* %851, align 8
  %853 = fcmp olt double %852, 0.000000e+00
  br i1 %853, label %854, label %864

; <label>:854:                                    ; preds = %844
  %855 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %15, align 4
  %856 = load i32, i32* %39, align 4
  %857 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %855, i32 %856
  %858 = load i32, i32* %38, align 4
  %859 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %857, i32 0, i32 %858
  %860 = load i32, i32* %37, align 4
  %861 = getelementptr inbounds [576 x i32], [576 x i32]* %859, i32 0, i32 %860
  %862 = load i32, i32* %861, align 4
  %863 = mul nsw i32 %862, -1
  store i32 %863, i32* %861, align 4
  br label %864

; <label>:864:                                    ; preds = %854, %844
  br label %865

; <label>:865:                                    ; preds = %864
  %866 = load i32, i32* %37, align 4
  %867 = add nsw i32 %866, 1
  store i32 %867, i32* %37, align 4
  br label %841

; <label>:868:                                    ; preds = %841
  br label %869

; <label>:869:                                    ; preds = %868
  %870 = load i32, i32* %38, align 4
  %871 = add nsw i32 %870, 1
  store i32 %871, i32* %38, align 4
  br label %834

; <label>:872:                                    ; preds = %834
  br label %873

; <label>:873:                                    ; preds = %872
  %874 = load i32, i32* %39, align 4
  %875 = add nsw i32 %874, 1
  store i32 %875, i32* %39, align 4
  br label %827

; <label>:876:                                    ; preds = %827
  %877 = load %struct.lame_global_flags*, %struct.lame_global_flags** %9, align 4
  %878 = load %struct.III_side_info_t*, %struct.III_side_info_t** %14, align 4
  %879 = load i32, i32* %36, align 4
  call arm_aapcscc void @ResvFrameEnd(%struct.lame_global_flags* %877, %struct.III_side_info_t* %878, i32 %879)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

declare arm_aapcscc void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @VBR_compare(i32, double, double, double, i32, double, double, double) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store i32 %4, i32* %13, align 4
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store double %7, double* %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %8
  %22 = load double, double* %15, align 8
  %23 = load double, double* %11, align 8
  %24 = fcmp ole double %22, %23
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %21
  %26 = load double, double* %14, align 8
  %27 = load double, double* %10, align 8
  %28 = fcmp ole double %26, %27
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %25
  %30 = load double, double* %16, align 8
  %31 = load double, double* %12, align 8
  %32 = fcmp ole double %30, %31
  br label %33

; <label>:33:                                     ; preds = %29, %25, %21, %8
  %34 = phi i1 [ false, %25 ], [ false, %21 ], [ false, %8 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare arm_aapcscc double @log(double) #3

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #4

; Function Attrs: nounwind
declare arm_aapcscc double @sqrt(double) #3

declare arm_aapcscc i32 @bin_search_StepSize2(%struct.lame_global_flags*, i32, i32, i32*, double*, %struct.gr_info*) #1

declare arm_aapcscc i32 @inner_loop(%struct.lame_global_flags*, double*, i32*, i32, %struct.gr_info*) #1

; Function Attrs: nounwind
define arm_aapcscc i32 @calc_noise1(double*, i32*, %struct.gr_info*, [21 x double]*, [21 x double]*, %struct.III_psy_xmin*, %struct.III_scalefac_t*, double*, double*, double*) #0 {
  %11 = alloca double*, align 4
  %12 = alloca i32*, align 4
  %13 = alloca %struct.gr_info*, align 4
  %14 = alloca [21 x double]*, align 4
  %15 = alloca [21 x double]*, align 4
  %16 = alloca %struct.III_psy_xmin*, align 4
  %17 = alloca %struct.III_scalefac_t*, align 4
  %18 = alloca double*, align 4
  %19 = alloca double*, align 4
  %20 = alloca double*, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  store double* %0, double** %11, align 4
  store i32* %1, i32** %12, align 4
  store %struct.gr_info* %2, %struct.gr_info** %13, align 4
  store [21 x double]* %3, [21 x double]** %14, align 4
  store [21 x double]* %4, [21 x double]** %15, align 4
  store %struct.III_psy_xmin* %5, %struct.III_psy_xmin** %16, align 4
  store %struct.III_scalefac_t* %6, %struct.III_scalefac_t** %17, align 4
  store double* %7, double** %18, align 4
  store double* %8, double** %19, align 4
  store double* %9, double** %20, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %30, align 4
  %37 = load double*, double** %18, align 4
  store double 0.000000e+00, double* %37, align 8
  %38 = load double*, double** %19, align 4
  store double 0.000000e+00, double* %38, align 8
  %39 = load double*, double** %20, align 4
  store double -9.990000e+02, double* %39, align 8
  store i32 0, i32* %26, align 4
  br label %40

; <label>:40:                                     ; preds = %197, %10
  %41 = load i32, i32* %26, align 4
  %42 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %43 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %200

; <label>:46:                                     ; preds = %40
  %47 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %17, align 4
  %48 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %47, i32 0, i32 0
  %49 = load i32, i32* %26, align 4
  %50 = getelementptr inbounds [22 x i32], [22 x i32]* %48, i32 0, i32 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %33, align 4
  %52 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %53 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

; <label>:56:                                     ; preds = %46
  %57 = load i32, i32* %26, align 4
  %58 = getelementptr inbounds [21 x i32], [21 x i32]* @pretab, i32 0, i32 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %33, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %33, align 4
  br label %62

; <label>:62:                                     ; preds = %56, %46
  %63 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %64 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %33, align 4
  %67 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %68 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  %71 = shl i32 %66, %70
  %72 = sub i32 %65, %71
  store i32 %72, i32* %33, align 4
  %73 = load i32, i32* %33, align 4
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %76, label %75

; <label>:75:                                     ; preds = %62
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 945, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.calc_noise1, i32 0, i32 0))
  br label %76

; <label>:76:                                     ; preds = %75, %62
  %77 = phi i1 [ true, %62 ], [ false, %75 ]
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %33, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %82, label %81

; <label>:81:                                     ; preds = %76
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 946, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.calc_noise1, i32 0, i32 0))
  br label %82

; <label>:82:                                     ; preds = %81, %76
  %83 = phi i1 [ true, %76 ], [ false, %81 ]
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %33, align 4
  %86 = getelementptr inbounds [256 x double], [256 x double]* @pow20, i32 0, i32 %85
  %87 = load double, double* %86, align 8
  store double %87, double* %32, align 8
  %88 = load i32, i32* %26, align 4
  %89 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %26, align 4
  %92 = add i32 %91, 1
  %93 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %21, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sitofp i32 %97 to double
  store double %98, double* %29, align 8
  store double 0.000000e+00, double* %27, align 8
  %99 = load i32, i32* %21, align 4
  store i32 %99, i32* %23, align 4
  br label %100

; <label>:100:                                    ; preds = %124, %82
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %22, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %127

; <label>:104:                                    ; preds = %100
  %105 = load double*, double** %11, align 4
  %106 = load i32, i32* %23, align 4
  %107 = getelementptr inbounds double, double* %105, i32 %106
  %108 = load double, double* %107, align 8
  %109 = call arm_aapcscc double @fabs(double %108) #6
  %110 = load i32*, i32** %12, align 4
  %111 = load i32, i32* %23, align 4
  %112 = getelementptr inbounds i32, i32* %110, i32 %111
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %113
  %115 = load double, double* %114, align 8
  %116 = load double, double* %32, align 8
  %117 = fmul double %115, %116
  %118 = fsub double %109, %117
  store double %118, double* %34, align 8
  %119 = load double, double* %34, align 8
  %120 = load double, double* %34, align 8
  %121 = fmul double %119, %120
  %122 = load double, double* %27, align 8
  %123 = fadd double %122, %121
  store double %123, double* %27, align 8
  br label %124

; <label>:124:                                    ; preds = %104
  %125 = load i32, i32* %23, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %23, align 4
  br label %100

; <label>:127:                                    ; preds = %100
  %128 = load double, double* %27, align 8
  %129 = load double, double* %29, align 8
  %130 = fdiv double %128, %129
  %131 = load [21 x double]*, [21 x double]** %14, align 4
  %132 = getelementptr inbounds [21 x double], [21 x double]* %131, i32 0
  %133 = load i32, i32* %26, align 4
  %134 = getelementptr inbounds [21 x double], [21 x double]* %132, i32 0, i32 %133
  store double %130, double* %134, align 8
  %135 = load [21 x double]*, [21 x double]** %14, align 4
  %136 = getelementptr inbounds [21 x double], [21 x double]* %135, i32 0
  %137 = load i32, i32* %26, align 4
  %138 = getelementptr inbounds [21 x double], [21 x double]* %136, i32 0, i32 %137
  %139 = load double, double* %138, align 8
  %140 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %16, align 4
  %141 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %140, i32 0, i32 0
  %142 = load i32, i32* %26, align 4
  %143 = getelementptr inbounds [22 x double], [22 x double]* %141, i32 0, i32 %142
  %144 = load double, double* %143, align 8
  %145 = fdiv double %139, %144
  %146 = fcmp ogt double 1.000000e-03, %145
  br i1 %146, label %147, label %148

; <label>:147:                                    ; preds = %127
  br label %160

; <label>:148:                                    ; preds = %127
  %149 = load [21 x double]*, [21 x double]** %14, align 4
  %150 = getelementptr inbounds [21 x double], [21 x double]* %149, i32 0
  %151 = load i32, i32* %26, align 4
  %152 = getelementptr inbounds [21 x double], [21 x double]* %150, i32 0, i32 %151
  %153 = load double, double* %152, align 8
  %154 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %16, align 4
  %155 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %154, i32 0, i32 0
  %156 = load i32, i32* %26, align 4
  %157 = getelementptr inbounds [22 x double], [22 x double]* %155, i32 0, i32 %156
  %158 = load double, double* %157, align 8
  %159 = fdiv double %153, %158
  br label %160

; <label>:160:                                    ; preds = %148, %147
  %161 = phi double [ 1.000000e-03, %147 ], [ %159, %148 ]
  %162 = call arm_aapcscc double @log10(double %161) #5
  %163 = fmul double 1.000000e+01, %162
  store double %163, double* %31, align 8
  %164 = load double, double* %31, align 8
  %165 = load [21 x double]*, [21 x double]** %15, align 4
  %166 = getelementptr inbounds [21 x double], [21 x double]* %165, i32 0
  %167 = load i32, i32* %26, align 4
  %168 = getelementptr inbounds [21 x double], [21 x double]* %166, i32 0, i32 %167
  store double %164, double* %168, align 8
  %169 = load double, double* %31, align 8
  %170 = fcmp ogt double %169, 0.000000e+00
  br i1 %170, label %171, label %178

; <label>:171:                                    ; preds = %160
  %172 = load i32, i32* %25, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %25, align 4
  %174 = load double, double* %31, align 8
  %175 = load double*, double** %18, align 4
  %176 = load double, double* %175, align 8
  %177 = fadd double %176, %174
  store double %177, double* %175, align 8
  br label %178

; <label>:178:                                    ; preds = %171, %160
  %179 = load double, double* %31, align 8
  %180 = load double*, double** %19, align 4
  %181 = load double, double* %180, align 8
  %182 = fadd double %181, %179
  store double %182, double* %180, align 8
  %183 = load double*, double** %20, align 4
  %184 = load double, double* %183, align 8
  %185 = load double, double* %31, align 8
  %186 = fcmp ogt double %184, %185
  br i1 %186, label %187, label %190

; <label>:187:                                    ; preds = %178
  %188 = load double*, double** %20, align 4
  %189 = load double, double* %188, align 8
  br label %192

; <label>:190:                                    ; preds = %178
  %191 = load double, double* %31, align 8
  br label %192

; <label>:192:                                    ; preds = %190, %187
  %193 = phi double [ %189, %187 ], [ %191, %190 ]
  %194 = load double*, double** %20, align 4
  store double %193, double* %194, align 8
  %195 = load i32, i32* %30, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %30, align 4
  br label %197

; <label>:197:                                    ; preds = %192
  %198 = load i32, i32* %26, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %26, align 4
  br label %40

; <label>:200:                                    ; preds = %40
  store i32 0, i32* %24, align 4
  br label %201

; <label>:201:                                    ; preds = %382, %200
  %202 = load i32, i32* %24, align 4
  %203 = icmp slt i32 %202, 3
  br i1 %203, label %204, label %385

; <label>:204:                                    ; preds = %201
  %205 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %206 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %205, i32 0, i32 17
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %26, align 4
  br label %208

; <label>:208:                                    ; preds = %378, %204
  %209 = load i32, i32* %26, align 4
  %210 = icmp ult i32 %209, 12
  br i1 %210, label %211, label %381

; <label>:211:                                    ; preds = %208
  %212 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %17, align 4
  %213 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %212, i32 0, i32 1
  %214 = load i32, i32* %26, align 4
  %215 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %213, i32 0, i32 %214
  %216 = load i32, i32* %24, align 4
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %215, i32 0, i32 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %220 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %219, i32 0, i32 13
  %221 = load i32, i32* %220, align 4
  %222 = add i32 %221, 1
  %223 = shl i32 %218, %222
  %224 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %225 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %224, i32 0, i32 9
  %226 = load i32, i32* %24, align 4
  %227 = getelementptr inbounds [3 x i32], [3 x i32]* %225, i32 0, i32 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %228, 8
  %230 = add nsw i32 %223, %229
  store i32 %230, i32* %35, align 4
  %231 = load %struct.gr_info*, %struct.gr_info** %13, align 4
  %232 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %35, align 4
  %235 = sub i32 %233, %234
  store i32 %235, i32* %35, align 4
  %236 = load i32, i32* %35, align 4
  %237 = icmp slt i32 %236, 256
  br i1 %237, label %239, label %238

; <label>:238:                                    ; preds = %211
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1000, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.calc_noise1, i32 0, i32 0))
  br label %239

; <label>:239:                                    ; preds = %238, %211
  %240 = phi i1 [ true, %211 ], [ false, %238 ]
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %35, align 4
  %243 = icmp sge i32 %242, 0
  br i1 %243, label %245, label %244

; <label>:244:                                    ; preds = %239
  call arm_aapcscc void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1001, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.calc_noise1, i32 0, i32 0))
  br label %245

; <label>:245:                                    ; preds = %244, %239
  %246 = phi i1 [ true, %239 ], [ false, %244 ]
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* %35, align 4
  %249 = getelementptr inbounds [256 x double], [256 x double]* @pow20, i32 0, i32 %248
  %250 = load double, double* %249, align 8
  store double %250, double* %28, align 8
  %251 = load i32, i32* %26, align 4
  %252 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %251
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %21, align 4
  %254 = load i32, i32* %26, align 4
  %255 = add i32 %254, 1
  %256 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %255
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %22, align 4
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* %21, align 4
  %260 = sub nsw i32 %258, %259
  %261 = sitofp i32 %260 to double
  store double %261, double* %29, align 8
  store double 0.000000e+00, double* %27, align 8
  %262 = load i32, i32* %21, align 4
  store i32 %262, i32* %23, align 4
  br label %263

; <label>:263:                                    ; preds = %293, %245
  %264 = load i32, i32* %23, align 4
  %265 = load i32, i32* %22, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %296

; <label>:267:                                    ; preds = %263
  %268 = load double*, double** %11, align 4
  %269 = load i32, i32* %23, align 4
  %270 = mul nsw i32 %269, 3
  %271 = load i32, i32* %24, align 4
  %272 = add nsw i32 %270, %271
  %273 = getelementptr inbounds double, double* %268, i32 %272
  %274 = load double, double* %273, align 8
  %275 = call arm_aapcscc double @fabs(double %274) #6
  %276 = load i32*, i32** %12, align 4
  %277 = load i32, i32* %23, align 4
  %278 = mul nsw i32 %277, 3
  %279 = load i32, i32* %24, align 4
  %280 = add nsw i32 %278, %279
  %281 = getelementptr inbounds i32, i32* %276, i32 %280
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds [8208 x double], [8208 x double]* @pow43, i32 0, i32 %282
  %284 = load double, double* %283, align 8
  %285 = load double, double* %28, align 8
  %286 = fmul double %284, %285
  %287 = fsub double %275, %286
  store double %287, double* %36, align 8
  %288 = load double, double* %36, align 8
  %289 = load double, double* %36, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %27, align 8
  %292 = fadd double %291, %290
  store double %292, double* %27, align 8
  br label %293

; <label>:293:                                    ; preds = %267
  %294 = load i32, i32* %23, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %23, align 4
  br label %263

; <label>:296:                                    ; preds = %263
  %297 = load double, double* %27, align 8
  %298 = load double, double* %29, align 8
  %299 = fdiv double %297, %298
  %300 = load [21 x double]*, [21 x double]** %14, align 4
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %301, 1
  %303 = getelementptr inbounds [21 x double], [21 x double]* %300, i32 %302
  %304 = load i32, i32* %26, align 4
  %305 = getelementptr inbounds [21 x double], [21 x double]* %303, i32 0, i32 %304
  store double %299, double* %305, align 8
  %306 = load [21 x double]*, [21 x double]** %14, align 4
  %307 = load i32, i32* %24, align 4
  %308 = add nsw i32 %307, 1
  %309 = getelementptr inbounds [21 x double], [21 x double]* %306, i32 %308
  %310 = load i32, i32* %26, align 4
  %311 = getelementptr inbounds [21 x double], [21 x double]* %309, i32 0, i32 %310
  %312 = load double, double* %311, align 8
  %313 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %16, align 4
  %314 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %313, i32 0, i32 1
  %315 = load i32, i32* %26, align 4
  %316 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %314, i32 0, i32 %315
  %317 = load i32, i32* %24, align 4
  %318 = getelementptr inbounds [3 x double], [3 x double]* %316, i32 0, i32 %317
  %319 = load double, double* %318, align 8
  %320 = fdiv double %312, %319
  %321 = fcmp ogt double 1.000000e-03, %320
  br i1 %321, label %322, label %323

; <label>:322:                                    ; preds = %296
  br label %339

; <label>:323:                                    ; preds = %296
  %324 = load [21 x double]*, [21 x double]** %14, align 4
  %325 = load i32, i32* %24, align 4
  %326 = add nsw i32 %325, 1
  %327 = getelementptr inbounds [21 x double], [21 x double]* %324, i32 %326
  %328 = load i32, i32* %26, align 4
  %329 = getelementptr inbounds [21 x double], [21 x double]* %327, i32 0, i32 %328
  %330 = load double, double* %329, align 8
  %331 = load %struct.III_psy_xmin*, %struct.III_psy_xmin** %16, align 4
  %332 = getelementptr inbounds %struct.III_psy_xmin, %struct.III_psy_xmin* %331, i32 0, i32 1
  %333 = load i32, i32* %26, align 4
  %334 = getelementptr inbounds [13 x [3 x double]], [13 x [3 x double]]* %332, i32 0, i32 %333
  %335 = load i32, i32* %24, align 4
  %336 = getelementptr inbounds [3 x double], [3 x double]* %334, i32 0, i32 %335
  %337 = load double, double* %336, align 8
  %338 = fdiv double %330, %337
  br label %339

; <label>:339:                                    ; preds = %323, %322
  %340 = phi double [ 1.000000e-03, %322 ], [ %338, %323 ]
  %341 = call arm_aapcscc double @log10(double %340) #5
  %342 = fmul double 1.000000e+01, %341
  store double %342, double* %31, align 8
  %343 = load double, double* %31, align 8
  %344 = load [21 x double]*, [21 x double]** %15, align 4
  %345 = load i32, i32* %24, align 4
  %346 = add nsw i32 %345, 1
  %347 = getelementptr inbounds [21 x double], [21 x double]* %344, i32 %346
  %348 = load i32, i32* %26, align 4
  %349 = getelementptr inbounds [21 x double], [21 x double]* %347, i32 0, i32 %348
  store double %343, double* %349, align 8
  %350 = load double, double* %31, align 8
  %351 = fcmp ogt double %350, 0.000000e+00
  br i1 %351, label %352, label %359

; <label>:352:                                    ; preds = %339
  %353 = load i32, i32* %25, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %25, align 4
  %355 = load double, double* %31, align 8
  %356 = load double*, double** %18, align 4
  %357 = load double, double* %356, align 8
  %358 = fadd double %357, %355
  store double %358, double* %356, align 8
  br label %359

; <label>:359:                                    ; preds = %352, %339
  %360 = load double, double* %31, align 8
  %361 = load double*, double** %19, align 4
  %362 = load double, double* %361, align 8
  %363 = fadd double %362, %360
  store double %363, double* %361, align 8
  %364 = load double*, double** %20, align 4
  %365 = load double, double* %364, align 8
  %366 = load double, double* %31, align 8
  %367 = fcmp ogt double %365, %366
  br i1 %367, label %368, label %371

; <label>:368:                                    ; preds = %359
  %369 = load double*, double** %20, align 4
  %370 = load double, double* %369, align 8
  br label %373

; <label>:371:                                    ; preds = %359
  %372 = load double, double* %31, align 8
  br label %373

; <label>:373:                                    ; preds = %371, %368
  %374 = phi double [ %370, %368 ], [ %372, %371 ]
  %375 = load double*, double** %20, align 4
  store double %374, double* %375, align 8
  %376 = load i32, i32* %30, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %30, align 4
  br label %378

; <label>:378:                                    ; preds = %373
  %379 = load i32, i32* %26, align 4
  %380 = add i32 %379, 1
  store i32 %380, i32* %26, align 4
  br label %208

; <label>:381:                                    ; preds = %208
  br label %382

; <label>:382:                                    ; preds = %381
  %383 = load i32, i32* %24, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %24, align 4
  br label %201

; <label>:385:                                    ; preds = %201
  %386 = load i32, i32* %30, align 4
  %387 = icmp sgt i32 %386, 1
  br i1 %387, label %388, label %394

; <label>:388:                                    ; preds = %385
  %389 = load i32, i32* %30, align 4
  %390 = sitofp i32 %389 to double
  %391 = load double*, double** %19, align 4
  %392 = load double, double* %391, align 8
  %393 = fdiv double %392, %390
  store double %393, double* %391, align 8
  br label %394

; <label>:394:                                    ; preds = %388, %385
  %395 = load i32, i32* %25, align 4
  %396 = icmp sgt i32 %395, 1
  br i1 %396, label %397, label %403

; <label>:397:                                    ; preds = %394
  %398 = load i32, i32* %25, align 4
  %399 = sitofp i32 %398 to double
  %400 = load double*, double** %18, align 4
  %401 = load double, double* %400, align 8
  %402 = fdiv double %401, %399
  store double %402, double* %400, align 8
  br label %403

; <label>:403:                                    ; preds = %397, %394
  %404 = load i32, i32* %25, align 4
  ret i32 %404
}

; Function Attrs: nounwind
define arm_aapcscc i32 @quant_compare(i32, i32, double, double, double, i32, double, double, double) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store i32 %5, i32* %15, align 4
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  store double %8, double* %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

; <label>:22:                                     ; preds = %9
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %36, label %26

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %26
  %31 = load double, double* %17, align 8
  %32 = load double, double* %13, align 8
  %33 = fcmp ole double %31, %32
  br label %34

; <label>:34:                                     ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br label %36

; <label>:36:                                     ; preds = %34, %22
  %37 = phi i1 [ true, %22 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %19, align 4
  br label %39

; <label>:39:                                     ; preds = %36, %9
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %39
  %43 = load double, double* %18, align 8
  %44 = load double, double* %14, align 8
  %45 = fcmp olt double %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %19, align 4
  br label %47

; <label>:47:                                     ; preds = %42, %39
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %55

; <label>:50:                                     ; preds = %47
  %51 = load double, double* %16, align 8
  %52 = load double, double* %12, align 8
  %53 = fcmp olt double %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %19, align 4
  br label %55

; <label>:55:                                     ; preds = %50, %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %70

; <label>:58:                                     ; preds = %55
  %59 = load double, double* %16, align 8
  %60 = load double, double* %12, align 8
  %61 = fcmp olt double %59, %60
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %58
  %63 = load double, double* %18, align 8
  %64 = load double, double* %14, align 8
  %65 = fadd double %64, 2.000000e+00
  %66 = fcmp olt double %63, %65
  br label %67

; <label>:67:                                     ; preds = %62, %58
  %68 = phi i1 [ false, %58 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %19, align 4
  br label %70

; <label>:70:                                     ; preds = %67, %55
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %158

; <label>:73:                                     ; preds = %70
  %74 = load double, double* %18, align 8
  %75 = fcmp oge double 0.000000e+00, %74
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %73
  %77 = load double, double* %14, align 8
  %78 = fcmp ogt double %77, 2.000000e+00
  br i1 %78, label %155, label %79

; <label>:79:                                     ; preds = %76, %73
  %80 = load double, double* %18, align 8
  %81 = fcmp oge double 0.000000e+00, %80
  br i1 %81, label %82, label %94

; <label>:82:                                     ; preds = %79
  %83 = load double, double* %14, align 8
  %84 = fcmp olt double %83, 0.000000e+00
  br i1 %84, label %85, label %94

; <label>:85:                                     ; preds = %82
  %86 = load double, double* %14, align 8
  %87 = fadd double %86, 2.000000e+00
  %88 = load double, double* %18, align 8
  %89 = fcmp ogt double %87, %88
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %85
  %91 = load double, double* %16, align 8
  %92 = load double, double* %12, align 8
  %93 = fcmp olt double %91, %92
  br i1 %93, label %155, label %94

; <label>:94:                                     ; preds = %90, %85, %82, %79
  %95 = load double, double* %18, align 8
  %96 = fcmp oge double 0.000000e+00, %95
  br i1 %96, label %97, label %111

; <label>:97:                                     ; preds = %94
  %98 = load double, double* %14, align 8
  %99 = fcmp ogt double %98, 0.000000e+00
  br i1 %99, label %100, label %111

; <label>:100:                                    ; preds = %97
  %101 = load double, double* %14, align 8
  %102 = fadd double %101, 2.000000e+00
  %103 = load double, double* %18, align 8
  %104 = fcmp ogt double %102, %103
  br i1 %104, label %105, label %111

; <label>:105:                                    ; preds = %100
  %106 = load double, double* %16, align 8
  %107 = load double, double* %12, align 8
  %108 = load double, double* %13, align 8
  %109 = fadd double %107, %108
  %110 = fcmp olt double %106, %109
  br i1 %110, label %155, label %111

; <label>:111:                                    ; preds = %105, %100, %97, %94
  %112 = load double, double* %18, align 8
  %113 = fcmp olt double 0.000000e+00, %112
  br i1 %113, label %114, label %130

; <label>:114:                                    ; preds = %111
  %115 = load double, double* %14, align 8
  %116 = fcmp ogt double %115, -5.000000e-01
  br i1 %116, label %117, label %130

; <label>:117:                                    ; preds = %114
  %118 = load double, double* %14, align 8
  %119 = fadd double %118, 1.000000e+00
  %120 = load double, double* %18, align 8
  %121 = fcmp ogt double %119, %120
  br i1 %121, label %122, label %130

; <label>:122:                                    ; preds = %117
  %123 = load double, double* %16, align 8
  %124 = load double, double* %17, align 8
  %125 = fadd double %123, %124
  %126 = load double, double* %12, align 8
  %127 = load double, double* %13, align 8
  %128 = fadd double %126, %127
  %129 = fcmp olt double %125, %128
  br i1 %129, label %155, label %130

; <label>:130:                                    ; preds = %122, %117, %114, %111
  %131 = load double, double* %18, align 8
  %132 = fcmp olt double 0.000000e+00, %131
  br i1 %132, label %133, label %153

; <label>:133:                                    ; preds = %130
  %134 = load double, double* %14, align 8
  %135 = fcmp ogt double %134, -1.000000e+00
  br i1 %135, label %136, label %153

; <label>:136:                                    ; preds = %133
  %137 = load double, double* %14, align 8
  %138 = fadd double %137, 1.500000e+00
  %139 = load double, double* %18, align 8
  %140 = fcmp ogt double %138, %139
  br i1 %140, label %141, label %153

; <label>:141:                                    ; preds = %136
  %142 = load double, double* %16, align 8
  %143 = load double, double* %17, align 8
  %144 = fadd double %142, %143
  %145 = load double, double* %17, align 8
  %146 = fadd double %144, %145
  %147 = load double, double* %12, align 8
  %148 = load double, double* %13, align 8
  %149 = fadd double %147, %148
  %150 = load double, double* %13, align 8
  %151 = fadd double %149, %150
  %152 = fcmp olt double %146, %151
  br label %153

; <label>:153:                                    ; preds = %141, %136, %133, %130
  %154 = phi i1 [ false, %136 ], [ false, %133 ], [ false, %130 ], [ %152, %141 ]
  br label %155

; <label>:155:                                    ; preds = %153, %122, %105, %90, %76
  %156 = phi i1 [ true, %122 ], [ true, %105 ], [ true, %90 ], [ true, %76 ], [ %154, %153 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %19, align 4
  br label %158

; <label>:158:                                    ; preds = %155, %70
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %159, 5
  br i1 %160, label %161, label %178

; <label>:161:                                    ; preds = %158
  %162 = load double, double* %17, align 8
  %163 = load double, double* %13, align 8
  %164 = fcmp olt double %162, %163
  br i1 %164, label %175, label %165

; <label>:165:                                    ; preds = %161
  %166 = load double, double* %17, align 8
  %167 = load double, double* %13, align 8
  %168 = fcmp oeq double %166, %167
  br i1 %168, label %169, label %173

; <label>:169:                                    ; preds = %165
  %170 = load double, double* %16, align 8
  %171 = load double, double* %12, align 8
  %172 = fcmp olt double %170, %171
  br label %173

; <label>:173:                                    ; preds = %169, %165
  %174 = phi i1 [ false, %165 ], [ %172, %169 ]
  br label %175

; <label>:175:                                    ; preds = %173, %161
  %176 = phi i1 [ true, %161 ], [ %174, %173 ]
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %19, align 4
  br label %178

; <label>:178:                                    ; preds = %175, %158
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 6
  br i1 %180, label %181, label %210

; <label>:181:                                    ; preds = %178
  %182 = load double, double* %17, align 8
  %183 = load double, double* %13, align 8
  %184 = fcmp olt double %182, %183
  br i1 %184, label %207, label %185

; <label>:185:                                    ; preds = %181
  %186 = load double, double* %17, align 8
  %187 = load double, double* %13, align 8
  %188 = fcmp oeq double %186, %187
  br i1 %188, label %189, label %205

; <label>:189:                                    ; preds = %185
  %190 = load double, double* %18, align 8
  %191 = load double, double* %14, align 8
  %192 = fcmp olt double %190, %191
  br i1 %192, label %203, label %193

; <label>:193:                                    ; preds = %189
  %194 = load double, double* %18, align 8
  %195 = load double, double* %14, align 8
  %196 = fcmp oeq double %194, %195
  br i1 %196, label %197, label %201

; <label>:197:                                    ; preds = %193
  %198 = load double, double* %16, align 8
  %199 = load double, double* %12, align 8
  %200 = fcmp ole double %198, %199
  br label %201

; <label>:201:                                    ; preds = %197, %193
  %202 = phi i1 [ false, %193 ], [ %200, %197 ]
  br label %203

; <label>:203:                                    ; preds = %201, %189
  %204 = phi i1 [ true, %189 ], [ %202, %201 ]
  br label %205

; <label>:205:                                    ; preds = %203, %185
  %206 = phi i1 [ false, %185 ], [ %204, %203 ]
  br label %207

; <label>:207:                                    ; preds = %205, %181
  %208 = phi i1 [ true, %181 ], [ %206, %205 ]
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %19, align 4
  br label %210

; <label>:210:                                    ; preds = %207, %178
  %211 = load i32, i32* %19, align 4
  ret i32 %211
}

; Function Attrs: nounwind
define arm_aapcscc void @amp_scalefac_bands(double*, %struct.gr_info*, %struct.III_scalefac_t*, [21 x double]*) #0 {
  %5 = alloca double*, align 4
  %6 = alloca %struct.gr_info*, align 4
  %7 = alloca %struct.III_scalefac_t*, align 4
  %8 = alloca [21 x double]*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double* %0, double** %5, align 4
  store %struct.gr_info* %1, %struct.gr_info** %6, align 4
  store %struct.III_scalefac_t* %2, %struct.III_scalefac_t** %7, align 4
  store [21 x double]* %3, [21 x double]** %8, align 4
  %16 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %17 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %4
  store double 0x3FF4BFDAD5362A27, double* %14, align 8
  br label %22

; <label>:21:                                     ; preds = %4
  store double 0x3FFAE89F995AD3AE, double* %14, align 8
  br label %22

; <label>:22:                                     ; preds = %21, %20
  store double -9.000000e+02, double* %15, align 8
  store i32 0, i32* %13, align 4
  br label %23

; <label>:23:                                     ; preds = %47, %22
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %26 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %50

; <label>:29:                                     ; preds = %23
  %30 = load [21 x double]*, [21 x double]** %8, align 4
  %31 = getelementptr inbounds [21 x double], [21 x double]* %30, i32 0
  %32 = load i32, i32* %13, align 4
  %33 = getelementptr inbounds [21 x double], [21 x double]* %31, i32 0, i32 %32
  %34 = load double, double* %33, align 8
  %35 = load double, double* %15, align 8
  %36 = fcmp ogt double %34, %35
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %29
  %38 = load [21 x double]*, [21 x double]** %8, align 4
  %39 = getelementptr inbounds [21 x double], [21 x double]* %38, i32 0
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds [21 x double], [21 x double]* %39, i32 0, i32 %40
  %42 = load double, double* %41, align 8
  br label %45

; <label>:43:                                     ; preds = %29
  %44 = load double, double* %15, align 8
  br label %45

; <label>:45:                                     ; preds = %43, %37
  %46 = phi double [ %42, %37 ], [ %44, %43 ]
  store double %46, double* %15, align 8
  br label %47

; <label>:47:                                     ; preds = %45
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %23

; <label>:50:                                     ; preds = %23
  %51 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %52 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %51, i32 0, i32 17
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  br label %54

; <label>:54:                                     ; preds = %87, %50
  %55 = load i32, i32* %13, align 4
  %56 = icmp ult i32 %55, 12
  br i1 %56, label %57, label %90

; <label>:57:                                     ; preds = %54
  store i32 0, i32* %12, align 4
  br label %58

; <label>:58:                                     ; preds = %83, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %86

; <label>:61:                                     ; preds = %58
  %62 = load [21 x double]*, [21 x double]** %8, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = getelementptr inbounds [21 x double], [21 x double]* %62, i32 %64
  %66 = load i32, i32* %13, align 4
  %67 = getelementptr inbounds [21 x double], [21 x double]* %65, i32 0, i32 %66
  %68 = load double, double* %67, align 8
  %69 = load double, double* %15, align 8
  %70 = fcmp ogt double %68, %69
  br i1 %70, label %71, label %79

; <label>:71:                                     ; preds = %61
  %72 = load [21 x double]*, [21 x double]** %8, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = getelementptr inbounds [21 x double], [21 x double]* %72, i32 %74
  %76 = load i32, i32* %13, align 4
  %77 = getelementptr inbounds [21 x double], [21 x double]* %75, i32 0, i32 %76
  %78 = load double, double* %77, align 8
  br label %81

; <label>:79:                                     ; preds = %61
  %80 = load double, double* %15, align 8
  br label %81

; <label>:81:                                     ; preds = %79, %71
  %82 = phi double [ %78, %71 ], [ %80, %79 ]
  store double %82, double* %15, align 8
  br label %83

; <label>:83:                                     ; preds = %81
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %58

; <label>:86:                                     ; preds = %58
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %54

; <label>:90:                                     ; preds = %54
  %91 = load double, double* %15, align 8
  %92 = fmul double %91, 1.050000e+00
  %93 = fcmp olt double %92, 0.000000e+00
  br i1 %93, label %94, label %97

; <label>:94:                                     ; preds = %90
  %95 = load double, double* %15, align 8
  %96 = fmul double %95, 1.050000e+00
  br label %98

; <label>:97:                                     ; preds = %90
  br label %98

; <label>:98:                                     ; preds = %97, %94
  %99 = phi double [ %96, %94 ], [ 0.000000e+00, %97 ]
  store double %99, double* %15, align 8
  store i32 0, i32* %13, align 4
  br label %100

; <label>:100:                                    ; preds = %145, %98
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %103 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %102, i32 0, i32 16
  %104 = load i32, i32* %103, align 4
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %148

; <label>:106:                                    ; preds = %100
  %107 = load [21 x double]*, [21 x double]** %8, align 4
  %108 = getelementptr inbounds [21 x double], [21 x double]* %107, i32 0
  %109 = load i32, i32* %13, align 4
  %110 = getelementptr inbounds [21 x double], [21 x double]* %108, i32 0, i32 %109
  %111 = load double, double* %110, align 8
  %112 = load double, double* %15, align 8
  %113 = fcmp ogt double %111, %112
  br i1 %113, label %114, label %144

; <label>:114:                                    ; preds = %106
  %115 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %7, align 4
  %116 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %115, i32 0, i32 0
  %117 = load i32, i32* %13, align 4
  %118 = getelementptr inbounds [22 x i32], [22 x i32]* %116, i32 0, i32 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %13, align 4
  %122 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add i32 %124, 1
  %126 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i32 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %11, align 4
  br label %129

; <label>:129:                                    ; preds = %140, %114
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %143

; <label>:133:                                    ; preds = %129
  %134 = load double, double* %14, align 8
  %135 = load double*, double** %5, align 4
  %136 = load i32, i32* %11, align 4
  %137 = getelementptr inbounds double, double* %135, i32 %136
  %138 = load double, double* %137, align 8
  %139 = fmul double %138, %134
  store double %139, double* %137, align 8
  br label %140

; <label>:140:                                    ; preds = %133
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %129

; <label>:143:                                    ; preds = %129
  br label %144

; <label>:144:                                    ; preds = %143, %106
  br label %145

; <label>:145:                                    ; preds = %144
  %146 = load i32, i32* %13, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %100

; <label>:148:                                    ; preds = %100
  store i32 0, i32* %12, align 4
  br label %149

; <label>:149:                                    ; preds = %209, %148
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %212

; <label>:152:                                    ; preds = %149
  %153 = load %struct.gr_info*, %struct.gr_info** %6, align 4
  %154 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %153, i32 0, i32 17
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %13, align 4
  br label %156

; <label>:156:                                    ; preds = %205, %152
  %157 = load i32, i32* %13, align 4
  %158 = icmp ult i32 %157, 12
  br i1 %158, label %159, label %208

; <label>:159:                                    ; preds = %156
  %160 = load [21 x double]*, [21 x double]** %8, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  %163 = getelementptr inbounds [21 x double], [21 x double]* %160, i32 %162
  %164 = load i32, i32* %13, align 4
  %165 = getelementptr inbounds [21 x double], [21 x double]* %163, i32 0, i32 %164
  %166 = load double, double* %165, align 8
  %167 = load double, double* %15, align 8
  %168 = fcmp ogt double %166, %167
  br i1 %168, label %169, label %204

; <label>:169:                                    ; preds = %159
  %170 = load %struct.III_scalefac_t*, %struct.III_scalefac_t** %7, align 4
  %171 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %170, i32 0, i32 1
  %172 = load i32, i32* %13, align 4
  %173 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %171, i32 0, i32 %172
  %174 = load i32, i32* %12, align 4
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %173, i32 0, i32 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %13, align 4
  %179 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %13, align 4
  %182 = add i32 %181, 1
  %183 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i32 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %11, align 4
  br label %186

; <label>:186:                                    ; preds = %200, %169
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %203

; <label>:190:                                    ; preds = %186
  %191 = load double, double* %14, align 8
  %192 = load double*, double** %5, align 4
  %193 = load i32, i32* %11, align 4
  %194 = mul nsw i32 %193, 3
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %194, %195
  %197 = getelementptr inbounds double, double* %192, i32 %196
  %198 = load double, double* %197, align 8
  %199 = fmul double %198, %191
  store double %199, double* %197, align 8
  br label %200

; <label>:200:                                    ; preds = %190
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %186

; <label>:203:                                    ; preds = %186
  br label %204

; <label>:204:                                    ; preds = %203, %159
  br label %205

; <label>:205:                                    ; preds = %204
  %206 = load i32, i32* %13, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %156

; <label>:208:                                    ; preds = %156
  br label %209

; <label>:209:                                    ; preds = %208
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %149

; <label>:212:                                    ; preds = %149
  ret void
}

declare arm_aapcscc i32 @loop_break(%struct.III_scalefac_t*, %struct.gr_info*) #1

declare arm_aapcscc i32 @scale_bitcount(%struct.III_scalefac_t*, %struct.gr_info*) #1

declare arm_aapcscc i32 @scale_bitcount_lsf(%struct.III_scalefac_t*, %struct.gr_info*) #1

; Function Attrs: nounwind
declare arm_aapcscc double @log10(double) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
